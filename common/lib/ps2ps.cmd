/* $Id: ps2ps.cmd 6300 2005-12-28 19:56:24Z giles $ */
/*
 * This file is maintained by a user: if you have any questions about it,
 * please contact Mark Hale (mark.hale@physics.org).
 */

/* "Distill" PostScript. */

parse arg params

gs='@gsos2'

if params='' then call usage

options='-dNOPAUSE -dBATCH'

/* extract options from command line */
i=1
param=word(params,i)
do while substr(param,1,1)='-'
	options=options param
	i=i+1
	param=word(params,i)
end

infile=param
if infile='' then call usage
outfile=word(params,i+1)
if outfile='' then call usage

gs '-q -sDEVICE=pswrite -sOutputFile='outfile options infile
exit

usage:
say 'Usage: ps2ps ...switches... input.ps output.ps'
exit
