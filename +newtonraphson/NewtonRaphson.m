classdef NewtonRaphson
    %UNTITLED2 Summary of this class goes here
    %   Detailed explanation goes here
    
    properties
        initCondition;
        numberMaxOfIterations;
        error;
    end
    
    methods
        function obj = NewtonRaphson(initCondition,numberMaxOfIterations, error)
            obj.initCondition = initCondition;
            obj.numberMaxOfIterations = numberMaxOfIterations;
            obj.error = error;
        end
        
        function solution = solve(obj)
            %NewtonRaphson Class
            %Solve First Homework
            solution = 1;
        end
        function solution = solveHomework(obj, verbose)
            x0 = obj.initCondition;
            xk = x0;
            xk1 = 10 * x0;
            k = 0;
            for k = 1:obj.numberMaxOfIterations
                if(verbose)
                    obj.log('iteration', k);
                end
                sol = obj.solveSingleIteration( xk );
                xk1 = sol;
                if(verbose)
                    obj.log('xk1', xk1);
                end
                if(obj.shouldTerminateIterations(xk1, xk, k))
                    solution = xk1;
                    break;
                end
                xk = xk1;
                k = k + 1;
            end
        end
        function xk1 = solveSingleIteration(obj,xk)
                A = [(2*xk(1,1)) (2*xk(2,1));3 2];
                S = [-(xk(1,1)^2)-(xk(2,1)^2)+25;-(3*xk(1,1))-(2*xk(2,1))+12];
                sol = inv(A) * S;
                xk1 = sol + xk;
        end
        function isCompleted = shouldTerminateIterations(obj, xk1, xk, k)
            isCompleted = (( sqrt( ((xk1(1,1)-xk(1,1))^2) + ((xk1(2,1)-xk(2,1))^2) ) ) < obj.error) || (k >= obj.numberMaxOfIterations);
        end
        function log(obj, label, value)
            disp(label);
            disp(value);
        end
    end
end

