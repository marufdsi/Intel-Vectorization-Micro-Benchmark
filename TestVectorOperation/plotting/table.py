import csv

def printvals (type, maxedgepersecond, unit, threads, degrees, latexfileout):
    print ('=========================================')
    print ('================='+ type +'===================')
    print ('=========================================')

    degreemap = {16:"16", 32:"32", 64: "64", 128:"128", 256:"256", 512:"512", 1024:"1k", 2048:"2k", 4096:"4k", 8192:"8k", 16384:"16k", 32768:"32k", 65536:"64k"}
    
    print ('\\begin{tabular}{r |', end='', file=latexfileout)
    for degree in degrees:
        print (' r', end='', file=latexfileout)
    print ('}', file=latexfileout)
    
    print ('', end='\t')
    print (' ', end='\t', file=latexfileout)
    for degree in degrees:
        print (degree, end='\t')
        print (' &' + degreemap[degree] , end='\t', file=latexfileout)
    print ('\\\\ \\hline', file=latexfileout)
    print ('')
        
    for thread in threads:
        print (thread, end='\t')
        print (thread, end='\t', file=latexfileout)
        for degree in degrees:
            print ("%2.1f"% float(maxedgepersecond[thread][degree][type]/unit), end='\t')
            print ("& %2.1f"% float(maxedgepersecond[thread][degree][type]/unit), end='\t', file=latexfileout)
        print ('')
        print ('\\\\', file=latexfileout)
    
    print ('\\end{tabular}', file=latexfileout)

def process(threads, degrees, dir):

    timings = {}

    for thread in threads:
        timings[thread] = {}
        with open(dir+'BenchMarkLogFile_'+str(thread)+'.csv', newline='') as csvfile:
            reader = csv.DictReader(csvfile)
            for row in reader:
                degree = int(row['Degree'])
                iteration = int(row['Iteration'])
                if (degree not in timings[thread].keys()):
                    timings[thread][degree] = {}
                
                timings[thread][degree][iteration] = {}
                #timings should be in seconds, but the file is in milliseconds
                timings[thread][degree][iteration]['VecTime'] = float(row['VecTime'])/1000.
                timings[thread][degree][iteration]['OMPTime'] = float(row['OMPTime'])/1000.
                timings[thread][degree][iteration]['Auto Vec Time'] = float(row['Auto Vec Time'])/1000.

    maxedgepersecond = {}


    for thread in threads:
        maxedgepersecond[thread] = {}

        for degree in timings[thread].keys():
            maxedgepersecond[thread][degree] = {}
            maxedgepersecond[thread][degree]['VecTime'] = 0
            maxedgepersecond[thread][degree]['OMPTime'] = 0
            maxedgepersecond[thread][degree]['Auto Vec Time'] = 0
            for iteration in timings[thread][degree].keys():
                edges = int(degree*iteration)
                edgepersecond = edges/timings[thread][degree][iteration]['VecTime']
                maxedgepersecond[thread][degree]['VecTime'] = max (maxedgepersecond[thread][degree]['VecTime'], edgepersecond)
                edgepersecond = edges/timings[thread][degree][iteration]['OMPTime']
                maxedgepersecond[thread][degree]['OMPTime'] = max (maxedgepersecond[thread][degree]['OMPTime'], edgepersecond)
                edgepersecond = edges/timings[thread][degree][iteration]['Auto Vec Time']
                maxedgepersecond[thread][degree]['Auto Vec Time'] = max (maxedgepersecond[thread][degree]['Auto Vec Time'], edgepersecond)
            
            maxedgepersecond[thread][degree]['RatioV'] =  maxedgepersecond[thread][degree]['VecTime'] / maxedgepersecond[thread][degree]['OMPTime']
            maxedgepersecond[thread][degree]['RatioAV'] =  maxedgepersecond[thread][degree]['Auto Vec Time'] / maxedgepersecond[thread][degree]['OMPTime']

    return maxedgepersecond


##KNL values
# threads = [1, 64, 128, 192, 256 ]
# #degrees = [16, 32, 64, 128, 256, 512, 1024, 2048, 4096, 8192, 16384, 32768, 65536]
# degrees = [16, 32, 128, 512, 1024, 2048, 4096, 8192, 16384, 32768]
# resultdir = '../results_KNL/'

##SkylakeX values
threads = [1, 18]
degrees = [16, 32, 128, 512, 1024, 2048, 4096, 8192, 16384, 32768]
resultdir = '../results_SkylakeX/'


maxedgepersecond = process (threads, degrees, resultdir)

#print (maxedgepersecond)

unit = 1000.*1000.*1000.

latfile = open ('table-scalar.tex', 'w')

printvals('OMPTime', maxedgepersecond, unit, threads, degrees, latfile)

#print ('')
#print ('')

#printvals('VecTime', unit)

#print ('')
#print ('')

latfile = open ('table-vector.tex', 'w')

printvals('Auto Vec Time', maxedgepersecond, unit, threads, degrees, latfile)

#print ('')
#print ('')


#printvals('RatioV', 1.)

#print ('')
#print ('')


latfile = open ('table-ratio.tex', 'w')

printvals('RatioAV', maxedgepersecond, 1., threads, degrees, latfile)
