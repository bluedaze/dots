for monitor in $(xrandr | grep ' connected' | cut -f1 -d ' ')
do
xrandr --output $monitor --brightness $1
done
