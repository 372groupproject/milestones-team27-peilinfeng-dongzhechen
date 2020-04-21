classdef p4_BasicClass
    properties
        Value
    end
    methods
        function obj = p4_BasicClass(val)
            if nargin == 1
                obj.Value = val;
            end
        end
        function a = get.Value(obj)
        	a = obj.Value;
        end
    end
end