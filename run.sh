#!/bin/bash
# Test all code, each one runs for 5 times.

# print date and hostname
echo -e "\ndate: \c" ; date
echo -e "hostname: \c" ; hostname
echo ""

# the function for run the command for 5 times
run()
{
    for i in $(seq 1 5)
    do
        $*
        echo ""
    done
}


# Caculating PI using MPI with Trapezoid rule 1
echo "Caculating PI using MPI with Trapezoid rule 1"
cd Trapezoid1

run ./run.sh

# Caculating PI using sequential method with Trapezoid rule 1
echo "Caculating PI using sequential method with Trapezoid rule 1"
cd sequential
gcc -o pi pi.c -lm
./pi ; ./pi ; ./pi ; ./pi ; ./pi
echo ""


# Caculating PI using MPI with Trapezoid rule 2
echo "Caculating PI using MPI with Trapezoid rule 2"
cd ..
cd ../Trapezoid2
run ./run.sh

# Caculating PI using sequential method with Trapezoid rule 2
echo "Caculating PI using sequential method with Trapezoid rule 2"
cd sequential
gcc -o pi pi.c -lm
./pi ; ./pi ; ./pi ; ./pi ; ./pi
echo ""


# Caculating PI using MPI with Monte Carlo method
echo "Caculating PI using MPI with Monte Carlo method"
cd ..
cd ../Montecarlo
run ./run.sh

# Caculating PI using sequential method with Monte Carlo method
echo "Caculating PI using sequential method with Monte Carlo method"
cd sequential
gcc -o pi pi.c -lm
./pi ; ./pi ; ./pi ; ./pi ; ./pi
echo ""