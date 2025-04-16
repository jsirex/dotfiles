if status is-interactive && test $TERM != "dumb"
    # Commands to run in interactive sessions can go here
    starship init fish | source
end
