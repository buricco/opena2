==============================================================================
NOTE:  This code is very much still under construction.
       BASIC is derived from the Laser 128 ROM and has not yet been fully
       reverse-engineered.  Parts of the code related to high-resolution
       graphics support spilled off the BASIC ROM space in the Laser 128 ROM
       and the current code has to be reorganized to fix that.  There are many
       bugs in the F8 ROM code here that also have to be ironed out.  And that
       is only to get the code to the initial release state where it can be
       used as an Apple ][+ ROM, never mind where it might substitute for the
       somewhat more complex ROMs of the //e and //c!
==============================================================================

OpenA2 - an open-source replacement for Apple ][ ROMs
=====================================================

  This is a project to provide open-source Apple ][-compatible firmware mainly
  for use in emulators, so that it becomes no longer necessary to provide the
  actual Apple-copyrighted code or force users to supply their own.  It is
  based on a rewritten F8 Monitor ROM, sources to Microsoft 6502 BASIC which
  were recently re-released under a permissive license, Microsoft's own (as I
  understand) re-adaptation of BASIC for Apple compatibility on the Franklin
  Ace 500 (post-lawsuit) and Laser 128, and other small bits of code gleaned
  from the Laser 128 ROMs.
  
  It is currently unusable.  With a captive FPBASIC from an Apple ][+ or from
  the DOS 3.3 system disks, it more or less works for many programs but is
  still very fragile.  Work is currently underway to reorganize the Laser code
  so that the currently-missing elements can be reinstated, and the current
  requirement for a 65C02 processor eliminated.
  
  Assembly requires the utilities included with the "cc65" compiler (cc65
  itself is not used).

Current State
=============

  "Gameware", an existing reimplementation of the Apple ][+ firmware, has been
  exhumed and its license modified to be identical to that of Microsoft 6502
  BASIC.
  
  An incomplete disassembly of Laser 128 BASIC is included, to the point that
  it builds, but still needs some work to make it actually usable.  The BASIC
  mostly works but will crash if graphics commands are utilized (tested in
  AppleWin).

Future Plans
============

  It will be necessary to reorganize, optimize, de-65C02-ize, and complete the
  BASIC and Monitor code before it can be properly released.
  
  Milestone 0.20 - finish reverse-engineering BASIC.
  Milestone 0.50 - get the ROM to at least work in an Apple ][+ with a 65C02.
  Milestone 1.00 - needs to have ][+ and either an //e or //c version
                   (preferably both).
