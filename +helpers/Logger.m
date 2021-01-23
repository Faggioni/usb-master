classdef Logger
    %Logger Class
    %Debug or Logging 
    
    properties
    end
    
    methods
    end
    methods(Static)
       function log(label, value)
           disp(label);
           disp(value);
       end
   end
end

