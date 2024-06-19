function plan = buildfile
import matlab.buildtool.tasks.CleanTask
import matlab.buildtool.tasks.TestTask

plan = buildplan(localfunctions);

plan("clean") = CleanTask;
plan("test") = TestTask;

plan.DefaultTasks = ["clean" "test"];
end
