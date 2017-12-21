env = Environment()
env.Append(LINKFLAGS = ["-march=native"])
env.Append(CPPFLAGS = ["-march=native"])
env.Append(LINKFLAGS = ["-simd"])
env.Append(CPPFLAGS = ["-simd"])
env.Append(LINKFLAGS = ["-qopt-report2"])
env.Append(CPPFLAGS = ["-qopt-report2"]) 
env.Append(LINKFLAGS = ["-qopt-report-phase=vec"])
env.Append(CPPFLAGS = ["-qopt-report-phase=vec"])
env.Append(LINKFLAGS = ["-qopt-report-file=stderr"])
env.Append(CPPFLAGS = ["-qopt-report-file=stderr"])
env['CXX'] = '/apps/pkg/intel-2016/bin/icpc'
env.Program(target = 'hello', source = ["main.cpp"])

