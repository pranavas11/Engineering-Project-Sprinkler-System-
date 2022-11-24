clc
clear

radius = input("Enter the radius the sprinkler will sprinkle (in feet): ");

geometry(radius);
collect_data();

function geometry(radius)
    %radius = input("Enter the radius the sprinkler will sprinkle (in feet): ");
    diameter = 2 * radius;
    circumference = diameter * pi;
    area = pi * radius^2;
    disp("Radius: " + radius);
    disp("Diameter: " + diameter);
    disp("Area: " + area);

    %return circumference;
end

function collect_data()
    angle = input("Enter the angle of rotation: ");
    objects = input("Enter the number of inanimate objects: ");
    %circle_angle = 360;

    %while temperature <= 32 && temperature >= -6
    while true
        temperature = input("Enter the temperature (in F): ");
        people = string(input("Are there people within the angle of rotation? (Y/N) ", "s"));

        if temperature > 32 || temperature < -6
            break
        end

        %circle_angle = 360;
        %rotations = (angle + circle_angle) - circle_angle;
        people = lower(people);

        if people == "yes" || people == "y"
            pause(30);
        end

        if objects == 1
            rotations = 360 - 270;
            disp("Angle of rotation: " + rotations);
        else
            rotations = 360 - 180;
            disp("Angle of rotation: " + rotations);
        end

        disp("Sprinkling salt/water at " + angle + "°.");
    end  
end