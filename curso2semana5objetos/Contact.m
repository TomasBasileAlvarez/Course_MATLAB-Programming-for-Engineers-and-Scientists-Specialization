classdef Contact
    properties
        FirstName
        LastName
        PhoneNumber
    end
    methods
        function obj = Contact(lname,fname,phone)
            obj.LastName = string(lname);
            obj.FirstName = string(fname);
            obj.PhoneNumber = string(phone);
        end
        
        %esta funcion set access, da una funcion
        %sobre como debe de ser la inicializacion
        %del atributo lastname
        %en este caso, se asegura que sea un string
        function obj = set.LastName(obj,lname)
            obj.LastName = string(lname);
        end
    end    
end

