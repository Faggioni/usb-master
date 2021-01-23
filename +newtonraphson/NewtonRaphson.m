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
            %UNTITLED2 Construct an instance of this class
            %   Detailed explanation goes here
            solution = 1;
        end
        function solution = solveHomework()
            x0 = obj.initCondition;
            xk = x0;
            xk1 = 10 * x0;
            k = 0;
            for k = 1:maxInterations
                sol = obj.solveSingleIteration( xk1, xk );
                if(obj.shouldTerminateIterations(xk1, xk))
                
                end
                xk = xk1;
            end
        end
        function xk1 = solveSingleIteration(xk1, xk)
                A = [(2*xk1(1,1)) (2*xk1(2,1));3 2];
                S = [-(xk1(1,1)^2)-(xk1(2,1)^2)+25;-(3*xk1(1,1))-(2*xk1(2,1))+12];
                sol = inv(A) * S;
                xk1 = sol + xk;
            end
        function isCompleted = shouldTerminateIterations(xk1, xk)
            isCompleted = ( sqrt( ((xk1(1,1)-xk(1,1))^2) + ((xk1(2,1)-xk(2,1))^2) ) ) < obj.error;
        end
    end
end

