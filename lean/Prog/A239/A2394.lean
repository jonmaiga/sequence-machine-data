import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C033
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
import Seq.B010.C000
import Seq.B012.C000
import Seq.B013.C000
import Seq.Opaque.C000
import Seq.Opaque.C001
import Seq.Opaque.C002
import Seq.Opaque.C003
import Seq.Opaque.C004
import Seq.Opaque.C005
import Seq.Opaque.C006
import Seq.Opaque.C007
import Seq.Opaque.C008
import Seq.Opaque.C009
import Seq.Opaque.C010
import Seq.Opaque.C011
import Seq.Opaque.C012
import Seq.Opaque.C013
import Seq.Opaque.C014
import Seq.Opaque.C015
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C025

/-!
# A239400: Number of nX3 0..3 arrays with no element equal to one plus the sum of elements to its left or two plus the sum of elements above it, modulo 4.

The programs for A239400, there is no canonical definition to state claims against.
-/

/-! ## A239400.P4802917076783146354

`A239405(∑[n+3]+1)`
-/

namespace A239400.P4802917076783146354
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239405 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A239400.P4802917076783146354

/-!
# A239401: Number of nX4 0..3 arrays with no element equal to one plus the sum of elements to its left or two plus the sum of elements above it, modulo 4.

The programs for A239401, there is no canonical definition to state claims against.
-/

/-! ## A239401.P5626037594938659874

`A239405(A141214(n+1))`
-/

namespace A239401.P5626037594938659874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239405 (A141214 (n + 1)).toNat

end

end A239401.P5626037594938659874

/-! ## A239401.P12368768129435032121

`A239405(A027379(n+2))`
-/

namespace A239401.P12368768129435032121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239405 (A027379 (n + 2)).toNat

end

end A239401.P12368768129435032121

/-! ## A239401.P11825357550786091161

`A239405(A155212(n)+5)`
-/

namespace A239401.P11825357550786091161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239405 (A155212 n + 5).toNat

end

end A239401.P11825357550786091161

/-! ## A239401.P12558980817950055566

`A239405(A056000(n)+7)`
-/

namespace A239401.P12558980817950055566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239405 (A056000 n + 7).toNat

end

end A239401.P12558980817950055566

/-! ## A239401.P4440650520705446322

`A239405(A052905(n+1)+2)`
-/

namespace A239401.P4440650520705446322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239405 (A052905 (n + 1) + 2).toNat

end

end A239401.P4440650520705446322

/-!
# A239402: Number of nX5 0..3 arrays with no element equal to one plus the sum of elements to its left or two plus the sum of elements above it, modulo 4.

The programs for A239402, there is no canonical definition to state claims against.
-/

/-! ## A239402.P1951014889358685860

`A239405(A046691(n+3))`
-/

namespace A239402.P1951014889358685860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239405 (A046691 (n + 3)).toNat

end

end A239402.P1951014889358685860

/-! ## A239402.P11719537221000217971

`A239405(eq[4, A193592(n)])`
-/

namespace A239402.P11719537221000217971
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239405 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A239402.P11719537221000217971

/-! ## A239402.P492524810658974393

`A239405(eq[8, A140996(n)])`
-/

namespace A239402.P492524810658974393
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140996 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239405 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A239402.P492524810658974393

/-! ## A239402.P12183467251649552308

`A239405(Δ[A023545(n+1)])`
-/

namespace A239402.P12183467251649552308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239405 (f1 (n + 1) - f1 n).toNat

end

end A239402.P12183467251649552308

/-! ## A239402.P9414183922080835747

`A239405(eq[5, A200370(n+1)])`
-/

namespace A239402.P9414183922080835747
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239405 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A239402.P9414183922080835747

/-!
# A239403: Number of nX6 0..3 arrays with no element equal to one plus the sum of elements to its left or two plus the sum of elements above it, modulo 4.

The programs for A239403, there is no canonical definition to state claims against.
-/

/-! ## A239403.P14242122566811823384

`A239405(A052905(n+3))`
-/

namespace A239403.P14242122566811823384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239405 (A052905 (n + 3)).toNat

end

end A239403.P14242122566811823384

/-! ## A239403.P8628684656499715029

`A239405(eq[5, A193592(n)])`
-/

namespace A239403.P8628684656499715029
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239405 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A239403.P8628684656499715029

/-! ## A239403.P7060410210475599665

`A239405(eq[8, A258709(n)])`
-/

namespace A239403.P7060410210475599665
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258709 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239405 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A239403.P7060410210475599665

/-! ## A239403.P7304335364764803107

`A239405(eq[6, A200370(n+1)])`
-/

namespace A239403.P7304335364764803107
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239405 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A239403.P7304335364764803107

/-! ## A239403.P16925247735820434303

`A239405(Δ[Δ[A006504(n+1)]])`
-/

namespace A239403.P16925247735820434303
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239405 (f1 (n + 1) - f1 n).toNat

end

end A239403.P16925247735820434303

/-!
# A239404: Number of nX7 0..3 arrays with no element equal to one plus the sum of elements to its left or two plus the sum of elements above it, modulo 4.

The programs for A239404, there is no canonical definition to state claims against.
-/

/-! ## A239404.P9251753024091511722

`A239405(A055999(n+4))`
-/

namespace A239404.P9251753024091511722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239405 (A055999 (n + 4)).toNat

end

end A239404.P9251753024091511722

/-! ## A239404.P2697219411093790538

`A239405(A000217(n+6)+n+1)`
-/

namespace A239404.P2697219411093790538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239405 (A000217 (n + 6) + (n + 1 : ℤ)).toNat

end

end A239404.P2697219411093790538

/-!
# A239406: Number of 2 X n 0..3 arrays with no element equal to one plus the sum of elements to its left or two plus the sum of the elements above it, modulo 4.

The programs for A239406, there is no canonical definition to state claims against.
-/

/-! ## A239406.P5813578538664420160

`A239405(∑[n+1]+2)`
-/

namespace A239406.P5813578538664420160
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239405 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A239406.P5813578538664420160

/-! ## A239406.P211534058199785123

`A239405(A002579(n+1))%A204955(n+1)`
-/

namespace A239406.P211534058199785123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A239405 (A002579 (n + 1)).toNat) (A204955 (n + 1))

end

end A239406.P211534058199785123

/-!
# A239407: Number of 3Xn 0..3 arrays with no element equal to one plus the sum of elements to its left or two plus the sum of the elements above it, modulo 4.

The programs for A239407, there is no canonical definition to state claims against.
-/

/-! ## A239407.P15912353085787176947

`A239405(∑[n+2]+4)`
-/

namespace A239407.P15912353085787176947
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239405 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A239407.P15912353085787176947

/-! ## A239407.P16498310156663034046

`A239405(A167614(n+1))+A011732(n)`
-/

namespace A239407.P16498310156663034046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239405 (A167614 (n + 1)).toNat + A011732 n

end

end A239407.P16498310156663034046

/-! ## A239407.P497227038825234388

`A239405(A167614(n+1))+A025443(n)`
-/

namespace A239407.P497227038825234388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239405 (A167614 (n + 1)).toNat + A025443 n

end

end A239407.P497227038825234388

/-! ## A239407.P1924474171557589887

`A239405(A167614(n+1))+A025444(n)`
-/

namespace A239407.P1924474171557589887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239405 (A167614 (n + 1)).toNat + A025444 n

end

end A239407.P1924474171557589887

/-! ## A239407.P7831499617686398102

`A016272(n)*A239405(A167614(n+1))`
-/

namespace A239407.P7831499617686398102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016272 n * A239405 (A167614 (n + 1)).toNat

end

end A239407.P7831499617686398102

/-!
# A239408: Number of 4Xn 0..3 arrays with no element equal to one plus the sum of elements to its left or two plus the sum of the elements above it, modulo 4.

The programs for A239408, there is no canonical definition to state claims against.
-/

/-! ## A239408.P18059347019742371620

`A239405(A141214(n)+7)`
-/

namespace A239408.P18059347019742371620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239405 (A141214 n + 7).toNat

end

end A239408.P18059347019742371620

/-! ## A239408.P11906554397418347327

`A239405(A052905(n)+9)`
-/

namespace A239408.P11906554397418347327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239405 (A052905 n + 9).toNat

end

end A239408.P11906554397418347327

/-! ## A239408.P2085938049977630635

`A239405(A055999(n)+10)`
-/

namespace A239408.P2085938049977630635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239405 (A055999 n + 10).toNat

end

end A239408.P2085938049977630635

/-! ## A239408.P16049625774075642046

`A239405(∑[A141213(n)]+7)`
-/

namespace A239408.P16049625774075642046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141213 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239405 (∑ j ∈ Finset.range (n + 1), f1 j + 7).toNat

end

end A239408.P16049625774075642046

/-! ## A239408.P2255721705938105567

`A239405(A167614(n+2)+1)`
-/

namespace A239408.P2255721705938105567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239405 (A167614 (n + 2) + 1).toNat

end

end A239408.P2255721705938105567

/-!
# A239409: Number of 5Xn 0..3 arrays with no element equal to one plus the sum of elements to its left or two plus the sum of the elements above it, modulo 4.

The programs for A239409, there is no canonical definition to state claims against.
-/

/-! ## A239409.P13846346712750269546

`A239405(A167499(n+3))`
-/

namespace A239409.P13846346712750269546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239405 (A167499 (n + 3)).toNat

end

end A239409.P13846346712750269546

/-! ## A239409.P8558100389887299492

`A239405(A155212(n)+13)`
-/

namespace A239409.P8558100389887299492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239405 (A155212 n + 13).toNat

end

end A239409.P8558100389887299492

/-! ## A239409.P15140748276870408865

`A239405(A056000(n)+15)`
-/

namespace A239409.P15140748276870408865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239405 (A056000 n + 15).toNat

end

end A239409.P15140748276870408865

/-! ## A239409.P6023605490440281219

`A239405(eq[7, A066657(n)])`
-/

namespace A239409.P6023605490440281219
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239405 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A239409.P6023605490440281219

/-! ## A239409.P10588893068225803337

`A239405(eq[6, A131818(n+1)])`
-/

namespace A239409.P10588893068225803337
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239405 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A239409.P10588893068225803337

/-!
# A239410: Number of 6Xn 0..3 arrays with no element equal to one plus the sum of elements to its left or two plus the sum of the elements above it, modulo 4.

The programs for A239410, there is no canonical definition to state claims against.
-/

/-! ## A239410.P3421071869495890799

`A239405(A166136(n+4))`
-/

namespace A239410.P3421071869495890799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239405 (A166136 (n + 4)).toNat

end

end A239410.P3421071869495890799

/-! ## A239410.P5336208898445578642

`A239405(A167614(n+4)+3)`
-/

namespace A239410.P5336208898445578642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239405 (A167614 (n + 4) + 3).toNat

end

end A239410.P5336208898445578642

/-! ## A239410.P14890067400558612974

`A239405(A000124(n+5)+5)`
-/

namespace A239410.P14890067400558612974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239405 (A000124 (n + 5) + 5).toNat

end

end A239410.P14890067400558612974

/-! ## A239410.P10899625970851225963

`A239405(A000217(n+5)+6)`
-/

namespace A239410.P10899625970851225963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239405 (A000217 (n + 5) + 6).toNat

end

end A239410.P10899625970851225963

/-! ## A239410.P10132156902453517025

`A239405(eq[7, A131818(n+1)])`
-/

namespace A239410.P10132156902453517025
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239405 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A239410.P10132156902453517025

/-!
# A239411: Number of 7 X n 0..3 arrays with no element equal to one plus the sum of elements to its left or two plus the sum of the elements above it, modulo 4.

The programs for A239411, there is no canonical definition to state claims against.
-/

/-! ## A239411.P158758155256394138

`A239405(A000217(n+6)+7)`
-/

namespace A239411.P158758155256394138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239405 (A000217 (n + 6) + 7).toNat

end

end A239411.P158758155256394138

/-! ## A239411.P2822308498918440447

`A239405(eq[8, A131818(n+1)])`
-/

namespace A239411.P2822308498918440447
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239405 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A239411.P2822308498918440447

/-!
# A239413: Numbers n such that n^5-5 is prime.

The programs for A239413, there is no canonical definition to state claims against.
-/

/-! ## A239413.P15566318478072438490

`A057700(A104779(n+1))`
-/

namespace A239413.P15566318478072438490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057700 (A104779 (n + 1)).toNat

end

end A239413.P15566318478072438490

/-!
# A239414: Numbers k such that k^6 - 6 is prime.

The programs for A239414, there is no canonical definition to state claims against.
-/

/-! ## A239414.P7739214397148642490

`A163570(A004903(n+2))`
-/

namespace A239414.P7739214397148642490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163570 (A004903 (n + 2)).toNat

end

end A239414.P7739214397148642490

/-! ## A239414.P4594695090690779727

`A163570(A004914(n+2))`
-/

namespace A239414.P4594695090690779727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163570 (A004914 (n + 2)).toNat

end

end A239414.P4594695090690779727

/-! ## A239414.P5503297675149298859

`A163570(n+1)%A235228(n!)`
-/

namespace A239414.P5503297675149298859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A163570 (n + 1)) (A235228 (Nat.factorial n))

end

end A239414.P5503297675149298859

/-! ## A239414.P16027174754489473227

`∩[A014261(n+1), A157755(n+1)]`
-/

namespace A239414.P16027174754489473227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014261 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157755 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A239414.P16027174754489473227

/-!
# A239420: Number of nX2 0..3 arrays with no element equal to the sum of elements to its left or the sum of elements above it or the sum of the elements diagonally to its northwest, modulo 4.

The programs for A239420, there is no canonical definition to state claims against.
-/

/-! ## A239420.P16767348816648560143

`A239424(∑[n+1]+2)`
-/

namespace A239420.P16767348816648560143
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239424 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A239420.P16767348816648560143

/-! ## A239420.P4897180517367226634

`lcm(2, A239424(A000096(n)+3))`
-/

namespace A239420.P4897180517367226634
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A239424 (A000096 n + 3).toNat)

end

end A239420.P4897180517367226634

/-! ## A239420.P6792402450747670799

`record[root(A239424(n+3), A004736(n+1))]`
-/

namespace A239420.P6792402450747670799
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A239424 (n + 3) : ℝ) ^ (1 / (A004736 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A239420.P6792402450747670799

/-! ## A239420.P10661779388200016890

`record[A239424(Δ[A003453(n+5)])]`
-/

namespace A239420.P10661779388200016890
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239424 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A239420.P10661779388200016890

/-! ## A239420.P5673350953480525166

`record[root(A239424(n+2), A194543(n+1))]`
-/

namespace A239420.P5673350953480525166
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A239424 (n + 2) : ℝ) ^ (1 / (A194543 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A239420.P5673350953480525166

/-!
# A239421: Number of nX3 0..3 arrays with no element equal to the sum of elements to its left or the sum of elements above it or the sum of the elements diagonally to its northwest, modulo 4.

The programs for A239421, there is no canonical definition to state claims against.
-/

/-! ## A239421.P4866449481549541269

`A239424(∑[n+2]+4)`
-/

namespace A239421.P4866449481549541269
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239424 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A239421.P4866449481549541269

/-! ## A239421.P17362571924477650501

`lcm(2, A239424(A167614(n+1)))`
-/

namespace A239421.P17362571924477650501
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A239424 (A167614 (n + 1)).toNat)

end

end A239421.P17362571924477650501

/-! ## A239421.P8590313753450251137

`record[A010054(n+1)*A239424(n+4)]`
-/

namespace A239421.P8590313753450251137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (n + 1) * A239424 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A239421.P8590313753450251137

/-! ## A239421.P8508030103648459186

`floor(atan(n+1))!*A239424(A055998(n)+6)`
-/

namespace A239421.P8508030103648459186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial ⌊Real.arctan (n + 1 : ℝ)⌋.toNat : ℤ) * A239424 (A055998 n + 6).toNat

end

end A239421.P8508030103648459186

/-! ## A239421.P4677864447554044030

`floor(atan(n+1))!*A239424(A046691(n)+7)`
-/

namespace A239421.P4677864447554044030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial ⌊Real.arctan (n + 1 : ℝ)⌋.toNat : ℤ) * A239424 (A046691 n + 7).toNat

end

end A239421.P4677864447554044030

/-!
# A239422: Number of nX4 0..3 arrays with no element equal to the sum of elements to its left or the sum of elements above it or the sum of the elements diagonally to its northwest, modulo 4.

The programs for A239422, there is no canonical definition to state claims against.
-/

/-! ## A239422.P11695751051696978980

`A239424(A374004(n+1))`
-/

namespace A239422.P11695751051696978980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239424 (A374004 (n + 1)).toNat

end

end A239422.P11695751051696978980

/-! ## A239422.P3601590067947106505

`A239424(A141214(n)+7)`
-/

namespace A239422.P3601590067947106505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239424 (A141214 n + 7).toNat

end

end A239422.P3601590067947106505

/-! ## A239422.P2087815678135687533

`A239424(A052905(n)+9)`
-/

namespace A239422.P2087815678135687533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239424 (A052905 n + 9).toNat

end

end A239422.P2087815678135687533

/-! ## A239422.P12723306255821844118

`A239424(A055999(n)+10)`
-/

namespace A239422.P12723306255821844118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239424 (A055999 n + 10).toNat

end

end A239422.P12723306255821844118

/-! ## A239422.P5936653209648230523

`A239424(eq[5, A066657(n)])`
-/

namespace A239422.P5936653209648230523
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239424 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A239422.P5936653209648230523

/-!
# A239423: Number of nX5 0..3 arrays with no element equal to the sum of elements to its left or the sum of elements above it or the sum of the elements diagonally to its northwest, modulo 4.

The programs for A239423, there is no canonical definition to state claims against.
-/

/-! ## A239423.P9978114078202278858

`A239424(A374005(n+1))`
-/

namespace A239423.P9978114078202278858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239424 (A374005 (n + 1)).toNat

end

end A239423.P9978114078202278858

/-! ## A239423.P14712963723138620257

`A239424(A167499(n+3))`
-/

namespace A239423.P14712963723138620257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239424 (A167499 (n + 3)).toNat

end

end A239423.P14712963723138620257

/-! ## A239423.P15750293168629355701

`A239424(A155212(n)+13)`
-/

namespace A239423.P15750293168629355701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239424 (A155212 n + 13).toNat

end

end A239423.P15750293168629355701

/-! ## A239423.P10397484636704180536

`A239424(A056000(n)+15)`
-/

namespace A239423.P10397484636704180536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239424 (A056000 n + 15).toNat

end

end A239423.P10397484636704180536

/-! ## A239423.P5969741710945353678

`A239424(eq[7, A066657(n)])`
-/

namespace A239423.P5969741710945353678
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239424 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A239423.P5969741710945353678

/-!
# A239425: Expansion of -16/(sqrt(12*x+2*sqrt(1-4*x)+2)-sqrt(1-4*x)-1)^2+1/x^2-1.

The programs for A239425, there is no canonical definition to state claims against.
-/

/-! ## A239425.P4806008820899079514

`A187430(n)+record[A126120(n+3)]`
-/

namespace A239425.P4806008820899079514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126120 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187430 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A239425.P4806008820899079514

/-! ## A239425.P12549678824864304832

`A187430(n)+A126120(A103517(n))`
-/

namespace A239425.P12549678824864304832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187430 n + A126120 (A103517 n).toNat

end

end A239425.P12549678824864304832

/-! ## A239425.P11584808923314051703

`A187430(A028310(n))+A000108(n+1)`
-/

namespace A239425.P11584808923314051703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187430 (A028310 n).toNat + A000108 (n + 1)

end

end A239425.P11584808923314051703

/-! ## A239425.P10564644197982640449

`A000108(n+1)+A187430(n)%A000108(n+1)`
-/

namespace A239425.P10564644197982640449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (n + 1) + Int.tmod (A187430 n) (A000108 (n + 1))

end

end A239425.P10564644197982640449

/-! ## A239425.P3915095963090437861

`A000108(n+1)+A187430(n)%A000302(n)`
-/

namespace A239425.P3915095963090437861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (n + 1) + Int.tmod (A187430 n) (A000302 n)

end

end A239425.P3915095963090437861

/-!
# A239426: a(n) = 21*n^4 - 36*n^3 + 25*n^2 - 8*n + 1.

The programs for A239426, the canonical program `A239426.P1331477604514406133` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A239426 has offset 0).

The definition of A239426 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A239426.P1331477604514406133

`(((21*n-36)*n+25)*n-8)*n+1`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A239426

/-- `(((21*n-36)*n+25)*n-8)*n+1` -/
def P1331477604514406133.Spec : Prop :=
  ∀ n, P1331477604514406133.a n = A239426 n

theorem P1331477604514406133.correct : P1331477604514406133.Spec := by
  intro n
  simp only [A239426]

end A239426

/-! ## A239426.P15542823473587969185

`lcm(∑[14*n-12]+13, A298125(n+1))`
-/

namespace A239426.P15542823473587969185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (14 * n : ℤ) - 12

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (∑ j ∈ Finset.range (n + 1), f1 j + 13) (A298125 (n + 1))

end

end A239426.P15542823473587969185

namespace A239426

/-- `lcm(∑[14*n-12]+13, A298125(n+1))` -/
def P15542823473587969185.Spec : Prop :=
  ∀ n, (P15542823473587969185.a n : ℤ) = A239426 n

end A239426

/-! ## A239426.P11695503685851343352

`lcm(A239449(n)², A298125(n+1))/A239449(n)`
-/

namespace A239426.P11695503685851343352
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A239449 n ^ 2) (A298125 (n + 1)) : ℚ) / (A239449 n : ℚ)

end

end A239426.P11695503685851343352

namespace A239426

/-- `lcm(A239449(n)², A298125(n+1))/A239449(n)` -/
def P11695503685851343352.Spec : Prop :=
  ∀ n, P11695503685851343352.a n = (A239426 n : ℚ)

end A239426

/-! ## A239426.P10470149654761412933

`lcm(∑[14*n-12]+13, A016921(A161680(n)))`
-/

namespace A239426.P10470149654761412933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (14 * n : ℤ) - 12

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (∑ j ∈ Finset.range (n + 1), f1 j + 13) (A016921 (A161680 n).toNat)

end

end A239426.P10470149654761412933

namespace A239426

/-- `lcm(∑[14*n-12]+13, A016921(A161680(n)))` -/
def P10470149654761412933.Spec : Prop :=
  ∀ n, (P10470149654761412933.a n : ℤ) = A239426 n

end A239426

/-! ## A239426.P14820170333493989029

`lcm(A016921(A161680(n)), A239449(n))`
-/

namespace A239426.P14820170333493989029
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A016921 (A161680 n).toNat) (A239449 n)

end

end A239426.P14820170333493989029

namespace A239426

/-- `lcm(A016921(A161680(n)), A239449(n))` -/
def P14820170333493989029.Spec : Prop :=
  ∀ n, (P14820170333493989029.a n : ℤ) = A239426 n

end A239426

/-!
# A239427: Numbers such that additive and multiplicative persistences coincide.

The programs for A239427, there is no canonical definition to state claims against.
-/

/-! ## A239427.P6955413389764660294

`eq[A031286(n), A031346(n)]`
-/

namespace A239427.P6955413389764660294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031286 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031346 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A239427.P6955413389764660294

/-! ## A239427.P18268327310044177510

`lt[A330635(n), A000040(A199246(n+2))]`
-/

namespace A239427.P18268327310044177510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330635 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A199246 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A239427.P18268327310044177510

/-! ## A239427.P1478604231717180637

`lt[A286815(n+4), A321332(A286815(n))]`
-/

namespace A239427.P1478604231717180637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286815 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321332 (A286815 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A239427.P1478604231717180637

/-! ## A239427.P10867440066849124227

`lt[A281976(A000292(n)), A304481(n+5)]`
-/

namespace A239427.P10867440066849124227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281976 (A000292 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304481 (n + 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A239427.P10867440066849124227

/-!
# A239432: Number of permutations of length n with longest increasing subsequence of length 8.

The programs for A239432, there is no canonical definition to state claims against.
-/

/-! ## A239432.P4232535497525710564

`A047874(eq[9, A131818(n+1)])`
-/

namespace A239432.P4232535497525710564
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047874 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A239432.P4232535497525710564

/-! ## A239432.P9269264116391089480

`A126065(eq[5, A219347(n)])`
-/

namespace A239432.P9269264116391089480
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126065 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A239432.P9269264116391089480

/-! ## A239432.P16302661364651506636

`A126065(eq[7, A193592(n)])`
-/

namespace A239432.P16302661364651506636
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126065 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A239432.P16302661364651506636

/-! ## A239432.P16196850874963291382

`A126065(eq[12, A185782(n+1)])`
-/

namespace A239432.P16196850874963291382
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126065 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A239432.P16196850874963291382

/-! ## A239432.P15155754894369128401

`A126065(eq[64, A057728(n+1)])`
-/

namespace A239432.P15155754894369128401
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  64

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057728 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126065 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A239432.P15155754894369128401

/-!
# A239433: Numbers m with at least one integer solution for x' = m, where x' is the arithmetic derivative of x (cf. A003415).

The programs for A239433, there is no canonical definition to state claims against.
-/

/-! ## A239433.P13716219768376138075

`lt[2, A098699(n)]`
-/

namespace A239433.P13716219768376138075
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098699 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A239433.P13716219768376138075

/-! ## A239433.P16829897585967221805

`record[A003415(A098699(n+4))]`
-/

namespace A239433.P16829897585967221805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A098699 (n + 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A239433.P16829897585967221805

/-! ## A239433.P3301295625258234986

`eq[A134824(A098699(n)), A134824(n)]`
-/

namespace A239433.P3301295625258234986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134824 (A098699 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134824 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A239433.P3301295625258234986

/-! ## A239433.P18133760966795996314

`eq[A260196(A098699(n)), A260196(n)]`
-/

namespace A239433.P18133760966795996314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 (A098699 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A239433.P18133760966795996314

/-! ## A239433.P4550913010013642319

`eq[A003415(A098699(n)), A233583(n+1)]`
-/

namespace A239433.P4550913010013642319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A098699 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A239433.P4550913010013642319

/-! ## A239433.P12790206178891219887

`record[A003415(A099303(n+4))]`
-/

namespace A239433.P12790206178891219887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A099303 (n + 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A239433.P12790206178891219887

/-!
# A239434: Number of nonnegative integer solutions to the equation x^2 - 25*y^2 = n.

The programs for A239434, there is no canonical definition to state claims against.
-/

/-! ## A239434.P2497043018620830168

`A217096(A068333(n+1)%A348067(n+2))`
-/

namespace A239434.P2497043018620830168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217096 (Int.tmod (A068333 (n + 1)) (A348067 (n + 2))).toNat

end

end A239434.P2497043018620830168

/-! ## A239434.P8811175328743730282

`A055641(A326055(n+1))^A005875(A326323(n))`
-/

namespace A239434.P8811175328743730282
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055641 (A326055 (n + 1)).toNat : ℚ) ^ (A005875 (A326323 n).toNat : ℤ)

end

end A239434.P8811175328743730282

/-! ## A239434.P10550669052974782106

`A217096(A068333(n+1))`
-/

namespace A239434.P10550669052974782106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217096 (A068333 (n + 1)).toNat

end

end A239434.P10550669052974782106

/-! ## A239434.P11312043615181923839

`gcd(A055641(n), A067898(A068333(n+1)))`
-/

namespace A239434.P11312043615181923839
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A055641 n) (A067898 (A068333 (n + 1)).toNat)

end

end A239434.P11312043615181923839

/-! ## A239434.P4574678098801177426

`A067898((1-A055641(n))*A068333(n+1))`
-/

namespace A239434.P4574678098801177426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067898 ((1 - A055641 n) * A068333 (n + 1)).toNat

end

end A239434.P4574678098801177426

/-!
# A239435: Values of k for which the equation x^2 - 25*y^2 = k has integer solutions.

The programs for A239435, there is no canonical definition to state claims against.
-/

/-! ## A239435.P1450074083963156832

`lt[0, A239434(A028310(n))]`
-/

namespace A239435.P1450074083963156832
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239434 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A239435.P1450074083963156832

/-! ## A239435.P869711058912495785

`eq[1, A239434(A151935(n)+n)]`
-/

namespace A239435.P869711058912495785
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239434 (A151935 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A239435.P869711058912495785

/-! ## A239435.P13517779293154244785

`record[and(-A227070(3*n+1), A072496(n+1))]`
-/

namespace A239435.P13517779293154244785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A227070 (3 * n + 1)) (A072496 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A239435.P13517779293154244785

/-! ## A239435.P2415058443228541602

`lt[A048745(n), A048754(A048748(n+1))]`
-/

namespace A239435.P2415058443228541602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048745 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048754 (A048748 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A239435.P2415058443228541602

/-! ## A239435.P4235003606411754490

`lt[A048776(n), A048754(A048748(n+1))]`
-/

namespace A239435.P4235003606411754490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048776 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048754 (A048748 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A239435.P4235003606411754490

/-!
# A239436: Members of a pair (m,k) such that sigma(m) = sigma(k) = sigma(m+k), m < k where sigma = A000203.

The programs for A239436, there is no canonical definition to state claims against.
-/

/-! ## A239436.P13888985349441751594

`A239939(Δ[n²])`
-/

namespace A239436.P13888985349441751594
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239939 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A239436.P13888985349441751594

/-! ## A239436.P6575331736187846033

`A239939(2*n+1)+char[20]`
-/

namespace A239436.P6575331736187846033
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  20

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239939 (2 * n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A239436.P6575331736187846033

/-! ## A239436.P13784885309809900913

`lcm(A087960(n), A239939(2*n+1))`
-/

namespace A239436.P13784885309809900913
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A087960 n) (A239939 (2 * n + 1))

end

end A239436.P13784885309809900913

/-! ## A239436.P14659168498432988508

`or(A011741(n), A239939(2*n+1))`
-/

namespace A239436.P14659168498432988508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A011741 n) (A239939 (2 * n + 1))

end

end A239436.P14659168498432988508

/-! ## A239436.P10231886247601997675

`filter[A239939(2*n+1), A005171(#)]`
-/

namespace A239436.P10231886247601997675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239939 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A239436.P10231886247601997675

/-!
# A239438: Maximal number of points that can be placed on a triangular grid of side n so that there is no pair of adjacent points.

The programs for A239438, the canonical program `A239438.P9771006155411572266` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A239438 has offset 1).

The definition of A239438 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A239438.P9771006155411572266

`A008750(n)+A107750(n)-A274616(n)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A239438

/-- `A008750(n)+A107750(n)-A274616(n)` -/
def P9771006155411572266.Spec : Prop :=
  ∀ n, P9771006155411572266.a n = A239438 (n + 1)

theorem P9771006155411572266.correct : P9771006155411572266.Spec := by
  intro n
  simp only [A239438, Nat.add_sub_cancel]

end A239438

/-! ## A239438.P16480290287129400711

`A049084(A049200(n+1))+∑[A008611(n)]`
-/

namespace A239438.P16480290287129400711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (A049200 (n + 1)).toNat + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A239438.P16480290287129400711

namespace A239438

/-- `A049084(A049200(n+1))+∑[A008611(n)]` -/
def P16480290287129400711.Spec : Prop :=
  ∀ n, P16480290287129400711.a n = A239438 (n + 1)

end A239438

/-! ## A239438.P3296574813295243907

`A010054(A175225(n+1))+∑[A008611(n)]`
-/

namespace A239438.P3296574813295243907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (A175225 (n + 1)).toNat + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A239438.P3296574813295243907

namespace A239438

/-- `A010054(A175225(n+1))+∑[A008611(n)]` -/
def P3296574813295243907.Spec : Prop :=
  ∀ n, P3296574813295243907.a n = A239438 (n + 1)

end A239438

/-! ## A239438.P3676560450979033412

`A178333(A086520(n))+∑[A008611(n)]`
-/

namespace A239438.P3676560450979033412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178333 (A086520 n).toNat + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A239438.P3676560450979033412

namespace A239438

/-- `A178333(A086520(n))+∑[A008611(n)]` -/
def P3676560450979033412.Spec : Prop :=
  ∀ n, P3676560450979033412.a n = A239438 (n + 1)

end A239438

/-! ## A239438.P14342407937323780256

`A001399(n)+A069905(A178333(A086520(n))+n)`
-/

namespace A239438.P14342407937323780256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001399 n + A069905 (A178333 (A086520 n).toNat + (n : ℤ)).toNat

end

end A239438.P14342407937323780256

namespace A239438

/-- `A001399(n)+A069905(A178333(A086520(n))+n)` -/
def P14342407937323780256.Spec : Prop :=
  ∀ n, P14342407937323780256.a n = A239438 (n + 1)

end A239438

/-! ## A239438.P7212539137180682132

`A185012(A135873(n+1))+∑[A008611(n)]`
-/

namespace A239438.P7212539137180682132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185012 (A135873 (n + 1)).toNat + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A239438.P7212539137180682132

namespace A239438

/-- `A185012(A135873(n+1))+∑[A008611(n)]` -/
def P7212539137180682132.Spec : Prop :=
  ∀ n, P7212539137180682132.a n = A239438 (n + 1)

end A239438

/-! ## A239438.P6297149512515135199

`ceil(A299232(∑[A008611(n)])/2)`
-/

namespace A239438.P6297149512515135199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A299232 (∑ j ∈ Finset.range (n + 1), f1 j).toNat : ℚ) / 2⌉

end

end A239438.P6297149512515135199

namespace A239438

/-- `ceil(A299232(∑[A008611(n)])/2)` -/
def P6297149512515135199.Spec : Prop :=
  ∀ n, P6297149512515135199.a n = A239438 (n + 1)

end A239438

/-! ## A239438.P11726316066900779765

`A110654(A299232(∑[A008611(n)]))`
-/

namespace A239438.P11726316066900779765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A299232 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A239438.P11726316066900779765

namespace A239438

/-- `A110654(A299232(∑[A008611(n)]))` -/
def P11726316066900779765.Spec : Prop :=
  ∀ n, P11726316066900779765.a n = A239438 (n + 1)

end A239438

/-! ## A239438.P2318037473477471592

`A008611(A253145(n)+A060576(A008611(n)))`
-/

namespace A239438.P2318037473477471592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (A253145 n + A060576 (A008611 n).toNat).toNat

end

end A239438.P2318037473477471592

namespace A239438

/-- `A008611(A253145(n)+A060576(A008611(n)))` -/
def P2318037473477471592.Spec : Prop :=
  ∀ n, P2318037473477471592.a n = A239438 (n + 1)

end A239438

/-!
# A239439: Smallest number between consecutive odd primes whose sum of prime factors is a minimum.

The programs for A239439, there is no canonical definition to state claims against.
-/

/-! ## A239439.P2527286405584461181

`A193073(A072100(n+1))+A077390(n+2)`
-/

namespace A239439.P2527286405584461181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193073 (A072100 (n + 1)).toNat + A077390 (n + 2)

end

end A239439.P2527286405584461181

/-! ## A239439.P8586640496601789027

`A091090(A106150(n))+p?[A004273(n)]`
-/

namespace A239439.P8586640496601789027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091090 (A106150 n).toNat + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A239439.P8586640496601789027

/-! ## A239439.P4126402996751303751

`A055396(A106439(3*n+2)*A119899(n+1))+A000040(n+2)`
-/

namespace A239439.P4126402996751303751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (A106439 (3 * n + 2) * A119899 (n + 1)).toNat + A000040 (n + 2)

end

end A239439.P4126402996751303751

/-! ## A239439.P8617531949881806593

`A339047(A118732(3*n+5))+A000040(n+2)`
-/

namespace A239439.P8617531949881806593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339047 (A118732 (3 * n + 5)).toNat + A000040 (n + 2)

end

end A239439.P8617531949881806593

/-! ## A239439.P1580124594396298396

`A306261(A165815(n+1))+A065091(n+1)`
-/

namespace A239439.P1580124594396298396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306261 (A165815 (n + 1)).toNat + A065091 (n + 1)

end

end A239439.P1580124594396298396

/-!
# A239440: The minimal value of A001414(i) where prime(n) < i < prime(n+1).

The programs for A239440, there is no canonical definition to state claims against.
-/

/-! ## A239440.P5733928464003017655

`A001414(A239439(n+1))`
-/

namespace A239440.P5733928464003017655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A239439 (n + 1)).toNat

end

end A239440.P5733928464003017655

/-! ## A239440.P12326542993945036782

`A107463(A239439(n+1)%A001043(n+1))`
-/

namespace A239440.P12326542993945036782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107463 (Int.tmod (A239439 (n + 1)) (A001043 (n + 1))).toNat

end

end A239440.P12326542993945036782

/-! ## A239440.P13711981733243613958

`A107463(A239439(n+1))%A001748(n+1)`
-/

namespace A239440.P13711981733243613958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A107463 (A239439 (n + 1)).toNat) (A001748 (n + 1))

end

end A239440.P13711981733243613958

/-! ## A239440.P15253143481420222645

`A000108(∑[(-1)^n])*A107463(A239439(n+1))`
-/

namespace A239440.P15253143481420222645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (∑ j ∈ Finset.range (n + 1), f1 j).toNat * A107463 (A239439 (n + 1)).toNat

end

end A239440.P15253143481420222645

/-! ## A239440.P10999098945440389861

`∑{d}[A239439(n+1), A120007(#)]`
-/

namespace A239440.P10999098945440389861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239439 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A120007 d

end

end A239440.P10999098945440389861

/-!
# A239442: a(n) = phi(n^7).

The programs for A239442, the canonical program `A239442.P5456459887707133884` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A239442 has offset 1).

The definition of A239442 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A239442.P11897974713473909271

`(n+1)*A306411(n+1)`
-/

namespace A239442.P11897974713473909271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A306411 (n + 1)

end

end A239442.P11897974713473909271

namespace A239442

/-- `(n+1)*A306411(n+1)` -/
def P11897974713473909271.Spec : Prop :=
  ∀ n, P11897974713473909271.a n = A239442 (n + 1)

end A239442

/-! ## A239442.P13215025285593017610

`A306412(n+1)/(n+1)`
-/

namespace A239442.P13215025285593017610
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A306412 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A239442.P13215025285593017610

namespace A239442

/-- `A306412(n+1)/(n+1)` -/
def P13215025285593017610.Spec : Prop :=
  ∀ n, P13215025285593017610.a n = (A239442 (n + 1) : ℚ)

end A239442

/-! ## A239442.P5456459887707133884

`(n+1)²*A238533(n+1)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A239442

/-- `(n+1)²*A238533(n+1)` -/
def P5456459887707133884.Spec : Prop :=
  ∀ n, P5456459887707133884.a n = A239442 (n + 1)

theorem P5456459887707133884.correct : P5456459887707133884.Spec := by
  intro n
  simp only [A239442, Nat.add_sub_cancel]

end A239442

/-! ## A239442.P6629254534898934014

`A239443(n+1)/(n+1)²`
-/

namespace A239442.P6629254534898934014
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A239443 (n + 1) : ℚ) / ((n + 1) ^ 2 : ℚ)

end

end A239442.P6629254534898934014

namespace A239442

/-- `A239443(n+1)/(n+1)²` -/
def P6629254534898934014.Spec : Prop :=
  ∀ n, P6629254534898934014.a n = (A239442 (n + 1) : ℚ)

end A239442

/-! ## A239442.P7483059972433625945

`(n+1)^3*A189393(n+1)`
-/

namespace A239442.P7483059972433625945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 3 : ℤ) * A189393 (n + 1)

end

end A239442.P7483059972433625945

namespace A239442

/-- `(n+1)^3*A189393(n+1)` -/
def P7483059972433625945.Spec : Prop :=
  ∀ n, P7483059972433625945.a n = A239442 (n + 1)

end A239442

/-! ## A239442.P7327537513211240217

`(n+1)^6*A000010(n+1)`
-/

namespace A239442.P7327537513211240217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 6 : ℤ) * A000010 (n + 1)

end

end A239442.P7327537513211240217

namespace A239442

/-- `(n+1)^6*A000010(n+1)` -/
def P7327537513211240217.Spec : Prop :=
  ∀ n, P7327537513211240217.a n = A239442 (n + 1)

end A239442

/-! ## A239442.P6185566035669180083

`(n+1)²²*A053191(n+1)`
-/

namespace A239442.P6185566035669180083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n + 1) ^ 2) ^ 2 : ℤ) * A053191 (n + 1)

end

end A239442.P6185566035669180083

namespace A239442

/-- `(n+1)²²*A053191(n+1)` -/
def P6185566035669180083.Spec : Prop :=
  ∀ n, P6185566035669180083.a n = A239442 (n + 1)

end A239442

/-! ## A239442.P1992377269861244745

`(A109606(n+1)+1)*(n+1)^6`
-/

namespace A239442.P1992377269861244745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A109606 (n + 1) + 1) * ((n + 1) ^ 6 : ℤ)

end

end A239442.P1992377269861244745

namespace A239442

/-- `(A109606(n+1)+1)*(n+1)^6` -/
def P1992377269861244745.Spec : Prop :=
  ∀ n, P1992377269861244745.a n = A239442 (n + 1)

end A239442

/-! ## A239442.P15088594817163747971

`A189393(n+1)²/A000010(n+1)`
-/

namespace A239442.P15088594817163747971
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A189393 (n + 1) ^ 2 : ℚ) / (A000010 (n + 1) : ℚ)

end

end A239442.P15088594817163747971

namespace A239442

/-- `A189393(n+1)²/A000010(n+1)` -/
def P15088594817163747971.Spec : Prop :=
  ∀ n, P15088594817163747971.a n = (A239442 (n + 1) : ℚ)

end A239442

/-! ## A239442.P5229973278277664146

`A238533(n+1)²/A053191(n+1)`
-/

namespace A239442.P5229973278277664146
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A238533 (n + 1) ^ 2 : ℚ) / (A053191 (n + 1) : ℚ)

end

end A239442.P5229973278277664146

namespace A239442

/-- `A238533(n+1)²/A053191(n+1)` -/
def P5229973278277664146.Spec : Prop :=
  ∀ n, P5229973278277664146.a n = (A239442 (n + 1) : ℚ)

end A239442

/-! ## A239442.P5332267003633818972

`A306411(n+1)²/A238533(n+1)`
-/

namespace A239442.P5332267003633818972
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A306411 (n + 1) ^ 2 : ℚ) / (A238533 (n + 1) : ℚ)

end

end A239442.P5332267003633818972

namespace A239442

/-- `A306411(n+1)²/A238533(n+1)` -/
def P5332267003633818972.Spec : Prop :=
  ∀ n, P5332267003633818972.a n = (A239442 (n + 1) : ℚ)

end A239442

/-! ## A239442.P16449770780138658961

`A000010(n+1)*A000578(n+1)*A000578(n+1)`
-/

namespace A239442.P16449770780138658961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) * A000578 (n + 1) * A000578 (n + 1)

end

end A239442.P16449770780138658961

namespace A239442

/-- `A000010(n+1)*A000578(n+1)*A000578(n+1)` -/
def P16449770780138658961.Spec : Prop :=
  ∀ n, P16449770780138658961.a n = A239442 (n + 1)

end A239442

/-! ## A239442.P13993611255865974115

`A000010(n+1)/A053191(n+1)*A239443(n+1)`
-/

namespace A239442.P13993611255865974115
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 1) : ℚ) / (A053191 (n + 1) : ℚ) * (A239443 (n + 1) : ℚ)

end

end A239442.P13993611255865974115

namespace A239442

/-- `A000010(n+1)/A053191(n+1)*A239443(n+1)` -/
def P13993611255865974115.Spec : Prop :=
  ∀ n, P13993611255865974115.a n = (A239442 (n + 1) : ℚ)

end A239442

/-! ## A239442.P2200289590145619596

`A002618(n+1)/A189393(n+1)*A239443(n+1)`
-/

namespace A239442.P2200289590145619596
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002618 (n + 1) : ℚ) / (A189393 (n + 1) : ℚ) * (A239443 (n + 1) : ℚ)

end

end A239442.P2200289590145619596

namespace A239442

/-- `A002618(n+1)/A189393(n+1)*A239443(n+1)` -/
def P2200289590145619596.Spec : Prop :=
  ∀ n, P2200289590145619596.a n = (A239442 (n + 1) : ℚ)

end A239442

/-! ## A239442.P9307586558515837278

`A053191(n+1)/A238533(n+1)*A239443(n+1)`
-/

namespace A239442.P9307586558515837278
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053191 (n + 1) : ℚ) / (A238533 (n + 1) : ℚ) * (A239443 (n + 1) : ℚ)

end

end A239442.P9307586558515837278

namespace A239442

/-- `A053191(n+1)/A238533(n+1)*A239443(n+1)` -/
def P9307586558515837278.Spec : Prop :=
  ∀ n, P9307586558515837278.a n = (A239442 (n + 1) : ℚ)

end A239442

/-! ## A239442.P1673593629094053727

`A000010(n+1)/(A053191(n+1)/A306411(n+1))²`
-/

namespace A239442.P1673593629094053727
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 1) : ℚ) / ((A053191 (n + 1) : ℚ) / (A306411 (n + 1) : ℚ)) ^ 2

end

end A239442.P1673593629094053727

namespace A239442

/-- `A000010(n+1)/(A053191(n+1)/A306411(n+1))²` -/
def P1673593629094053727.Spec : Prop :=
  ∀ n, P1673593629094053727.a n = (A239442 (n + 1) : ℚ)

end A239442

/-! ## A239442.P16171066291627183386

`A000010(n+1)*A001014(n+1)`
-/

namespace A239442.P16171066291627183386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) * A001014 (n + 1)

end

end A239442.P16171066291627183386

namespace A239442

/-- `A000010(n+1)*A001014(n+1)` -/
def P16171066291627183386.Spec : Prop :=
  ∀ n, P16171066291627183386.a n = A239442 (n + 1)

end A239442

/-! ## A239442.P16693548389461521003

`A000584(n+1)*A002618(n+1)`
-/

namespace A239442.P16693548389461521003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000584 (n + 1) * A002618 (n + 1)

end

end A239442.P16693548389461521003

namespace A239442

/-- `A000584(n+1)*A002618(n+1)` -/
def P16693548389461521003.Spec : Prop :=
  ∀ n, P16693548389461521003.a n = A239442 (n + 1)

end A239442

/-! ## A239442.P14616825378149958857

`A000010((n+1)²)/(n+1)^-5`
-/

namespace A239442.P14616825378149958857
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 ((n + 1) ^ 2) : ℚ) / (n + 1 : ℚ) ^ (-5 : ℤ)

end

end A239442.P14616825378149958857

namespace A239442

/-- `A000010((n+1)²)/(n+1)^-5` -/
def P14616825378149958857.Spec : Prop :=
  ∀ n, P14616825378149958857.a n = (A239442 (n + 1) : ℚ)

end A239442

/-! ## A239442.P4378082230647180910

`(n+1)*A000010(∑[2*n+1])*(n+1)²²`
-/

namespace A239442.P4378082230647180910
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000010 (∑ j ∈ Finset.range (n + 1), f1 j) * (((n + 1) ^ 2) ^ 2 : ℤ)

end

end A239442.P4378082230647180910

namespace A239442

/-- `(n+1)*A000010(∑[2*n+1])*(n+1)²²` -/
def P4378082230647180910.Spec : Prop :=
  ∀ n, P4378082230647180910.a n = A239442 (n + 1)

end A239442

/-!
# A239443: a(n) = phi(n^9), where phi = A000010.

The programs for A239443, the canonical program `A239443.P3035333711791582592` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A239443 has offset 1).

The definition of A239443 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A239443.P15360680938598542014

`(n+1)*A306412(n+1)`
-/

namespace A239443.P15360680938598542014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A306412 (n + 1)

end

end A239443.P15360680938598542014

namespace A239443

/-- `(n+1)*A306412(n+1)` -/
def P15360680938598542014.Spec : Prop :=
  ∀ n, P15360680938598542014.a n = A239443 (n + 1)

end A239443

/-! ## A239443.P3035333711791582592

`(n+1)²*A239442(n+1)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A239443

/-- `(n+1)²*A239442(n+1)` -/
def P3035333711791582592.Spec : Prop :=
  ∀ n, P3035333711791582592.a n = A239443 (n + 1)

theorem P3035333711791582592.correct : P3035333711791582592.Spec := by
  intro n
  simp only [A239443, Nat.add_sub_cancel]

end A239443

/-! ## A239443.P4406269194024644982

`(n+1)^3*A306411(n+1)`
-/

namespace A239443.P4406269194024644982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 3 : ℤ) * A306411 (n + 1)

end

end A239443.P4406269194024644982

namespace A239443

/-- `(n+1)^3*A306411(n+1)` -/
def P4406269194024644982.Spec : Prop :=
  ∀ n, P4406269194024644982.a n = A239443 (n + 1)

end A239443

/-! ## A239443.P10336153813408353762

`(n+1)^8*A000010(n+1)`
-/

namespace A239443.P10336153813408353762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 8 : ℤ) * A000010 (n + 1)

end

end A239443.P10336153813408353762

namespace A239443

/-- `(n+1)^8*A000010(n+1)` -/
def P10336153813408353762.Spec : Prop :=
  ∀ n, P10336153813408353762.a n = A239443 (n + 1)

end A239443

/-! ## A239443.P2256259565049543713

`(n+1)²²*A238533(n+1)`
-/

namespace A239443.P2256259565049543713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n + 1) ^ 2) ^ 2 : ℤ) * A238533 (n + 1)

end

end A239443.P2256259565049543713

namespace A239443

/-- `(n+1)²²*A238533(n+1)` -/
def P2256259565049543713.Spec : Prop :=
  ∀ n, P2256259565049543713.a n = A239443 (n + 1)

end A239443

/-! ## A239443.P5241232538246884350

`(A109606(n+1)+1)*(n+1)^8`
-/

namespace A239443.P5241232538246884350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A109606 (n + 1) + 1) * ((n + 1) ^ 8 : ℤ)

end

end A239443.P5241232538246884350

namespace A239443

/-- `(A109606(n+1)+1)*(n+1)^8` -/
def P5241232538246884350.Spec : Prop :=
  ∀ n, P5241232538246884350.a n = A239443 (n + 1)

end A239443

/-! ## A239443.P5313516049261595668

`(A039649(n+1)-1)*(n+1)²²²`
-/

namespace A239443.P5313516049261595668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A039649 (n + 1) - 1) * ((((n + 1) ^ 2) ^ 2) ^ 2 : ℤ)

end

end A239443.P5313516049261595668

namespace A239443

/-- `(A039649(n+1)-1)*(n+1)²²²` -/
def P5313516049261595668.Spec : Prop :=
  ∀ n, P5313516049261595668.a n = A239443 (n + 1)

end A239443

/-! ## A239443.P14869881789893716920

`(1-A051953(n+1)+n)*(n+1)^8`
-/

namespace A239443.P14869881789893716920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A051953 (n + 1) + (n : ℤ)) * ((n + 1) ^ 8 : ℤ)

end

end A239443.P14869881789893716920

namespace A239443

/-- `(1-A051953(n+1)+n)*(n+1)^8` -/
def P14869881789893716920.Spec : Prop :=
  ∀ n, P14869881789893716920.a n = A239443 (n + 1)

end A239443

/-! ## A239443.P15048702886906702539

`(n+1)/∏{p}[n+1, #]*A173557(n+1)*(n+1)^8`
-/

namespace A239443.P15048702886906702539
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * (A173557 (n + 1) : ℚ) * ((n + 1) ^ 8 : ℚ)

end

end A239443.P15048702886906702539

namespace A239443

/-- `(n+1)/∏{p}[n+1, #]*A173557(n+1)*(n+1)^8` -/
def P15048702886906702539.Spec : Prop :=
  ∀ n, P15048702886906702539.a n = (A239443 (n + 1) : ℚ)

end A239443

/-! ## A239443.P12729613885754853751

`A238533(n+1)²/A000010(n+1)`
-/

namespace A239443.P12729613885754853751
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A238533 (n + 1) ^ 2 : ℚ) / (A000010 (n + 1) : ℚ)

end

end A239443.P12729613885754853751

namespace A239443

/-- `A238533(n+1)²/A000010(n+1)` -/
def P12729613885754853751.Spec : Prop :=
  ∀ n, P12729613885754853751.a n = (A239443 (n + 1) : ℚ)

end A239443

/-! ## A239443.P8688465270299883811

`A306411(n+1)²/A053191(n+1)`
-/

namespace A239443.P8688465270299883811
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A306411 (n + 1) ^ 2 : ℚ) / (A053191 (n + 1) : ℚ)

end

end A239443.P8688465270299883811

namespace A239443

/-- `A306411(n+1)²/A053191(n+1)` -/
def P8688465270299883811.Spec : Prop :=
  ∀ n, P8688465270299883811.a n = (A239443 (n + 1) : ℚ)

end A239443

/-! ## A239443.P3973353055494270001

`A239442(n+1)²/A238533(n+1)`
-/

namespace A239443.P3973353055494270001
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A239442 (n + 1) ^ 2 : ℚ) / (A238533 (n + 1) : ℚ)

end

end A239443.P3973353055494270001

namespace A239443

/-- `A239442(n+1)²/A238533(n+1)` -/
def P3973353055494270001.Spec : Prop :=
  ∀ n, P3973353055494270001.a n = (A239443 (n + 1) : ℚ)

end A239443

/-! ## A239443.P14699414007630684030

`(A003968(n+1)-A348971(n+1))*(n+1)^8`
-/

namespace A239443.P14699414007630684030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A003968 (n + 1) - A348971 (n + 1)) * ((n + 1) ^ 8 : ℤ)

end

end A239443.P14699414007630684030

namespace A239443

/-- `(A003968(n+1)-A348971(n+1))*(n+1)^8` -/
def P14699414007630684030.Spec : Prop :=
  ∀ n, P14699414007630684030.a n = A239443 (n + 1)

end A239443

/-! ## A239443.P912112146863699549

`A000578(n+1)*A000578(n+1)*A053191(n+1)`
-/

namespace A239443.P912112146863699549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (n + 1) * A000578 (n + 1) * A053191 (n + 1)

end

end A239443.P912112146863699549

namespace A239443

/-- `A000578(n+1)*A000578(n+1)*A053191(n+1)` -/
def P912112146863699549.Spec : Prop :=
  ∀ n, P912112146863699549.a n = A239443 (n + 1)

end A239443

/-! ## A239443.P3413194521043056930

`A053191(n+1)*A239442(n+1)/A000010(n+1)`
-/

namespace A239443.P3413194521043056930
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053191 (n + 1) * A239442 (n + 1) : ℚ) / (A000010 (n + 1) : ℚ)

end

end A239443.P3413194521043056930

namespace A239443

/-- `A053191(n+1)*A239442(n+1)/A000010(n+1)` -/
def P3413194521043056930.Spec : Prop :=
  ∀ n, P3413194521043056930.a n = (A239443 (n + 1) : ℚ)

end A239443

/-! ## A239443.P14955944807120084463

`A189393(n+1)*A239442(n+1)/A002618(n+1)`
-/

namespace A239443.P14955944807120084463
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A189393 (n + 1) * A239442 (n + 1) : ℚ) / (A002618 (n + 1) : ℚ)

end

end A239443.P14955944807120084463

namespace A239443

/-- `A189393(n+1)*A239442(n+1)/A002618(n+1)` -/
def P14955944807120084463.Spec : Prop :=
  ∀ n, P14955944807120084463.a n = (A239443 (n + 1) : ℚ)

end A239443

/-! ## A239443.P6538864573119959490

`A189393(n+1)*A306411(n+1)/A000010(n+1)`
-/

namespace A239443.P6538864573119959490
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A189393 (n + 1) * A306411 (n + 1) : ℚ) / (A000010 (n + 1) : ℚ)

end

end A239443.P6538864573119959490

namespace A239443

/-- `A189393(n+1)*A306411(n+1)/A000010(n+1)` -/
def P6538864573119959490.Spec : Prop :=
  ∀ n, P6538864573119959490.a n = (A239443 (n + 1) : ℚ)

end A239443

/-! ## A239443.P15564541165109511994

`A238533(n+1)*A239442(n+1)/A053191(n+1)`
-/

namespace A239443.P15564541165109511994
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A238533 (n + 1) * A239442 (n + 1) : ℚ) / (A053191 (n + 1) : ℚ)

end

end A239443.P15564541165109511994

namespace A239443

/-- `A238533(n+1)*A239442(n+1)/A053191(n+1)` -/
def P15564541165109511994.Spec : Prop :=
  ∀ n, P15564541165109511994.a n = (A239443 (n + 1) : ℚ)

end A239443

/-! ## A239443.P16013767558601716248

`A238533(n+1)*A306411(n+1)/A002618(n+1)`
-/

namespace A239443.P16013767558601716248
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A238533 (n + 1) * A306411 (n + 1) : ℚ) / (A002618 (n + 1) : ℚ)

end

end A239443.P16013767558601716248

namespace A239443

/-- `A238533(n+1)*A306411(n+1)/A002618(n+1)` -/
def P16013767558601716248.Spec : Prop :=
  ∀ n, P16013767558601716248.a n = (A239443 (n + 1) : ℚ)

end A239443

/-! ## A239443.P18153202629290223572

`A239442(n+1)*A306411(n+1)/A189393(n+1)`
-/

namespace A239443.P18153202629290223572
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A239442 (n + 1) * A306411 (n + 1) : ℚ) / (A189393 (n + 1) : ℚ)

end

end A239443.P18153202629290223572

namespace A239443

/-- `A239442(n+1)*A306411(n+1)/A189393(n+1)` -/
def P18153202629290223572.Spec : Prop :=
  ∀ n, P18153202629290223572.a n = (A239443 (n + 1) : ℚ)

end A239443

/-!
# A239445: Values n at which ratios of successive partition numbers approach 1 closer than the reciprocal of a whole number.

The programs for A239445, there is no canonical definition to state claims against.
-/

/-! ## A239445.P16710678321962245011

`A336957(n+1)+A002487(A000746(n))`
-/

namespace A239445.P16710678321962245011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336957 (n + 1) + A002487 (A000746 n).toNat

end

end A239445.P16710678321962245011

/-! ## A239445.P11006298372636366871

`A002487(A000746(n))+A338051(n+1)+1+n`
-/

namespace A239445.P11006298372636366871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A000746 n).toNat + (A338051 (n + 1) + 1 + (n : ℤ))

end

end A239445.P11006298372636366871

/-!
# A239446: Triangle read by rows: T(n,k), n>=1, k>=1, in which column k lists the elements of A004273 interleaved with k zeros, and the first element of column k is in row k*(k+1)/2.

The programs for A239446, there is no canonical definition to state claims against.
-/

/-! ## A239446.P14246886734467307578

`round(sqrt((A271344(n+2)-1)²+1))-1`
-/

namespace A239446.P14246886734467307578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt ((A271344 (n + 2) - 1) ^ 2 + 1 : ℝ)) - 1

end

end A239446.P14246886734467307578

/-! ## A239446.P14063598852697284339

`A028310(1-A271344(n+2))-1`
-/

namespace A239446.P14063598852697284339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (1 - A271344 (n + 2)).toNat - 1

end

end A239446.P14063598852697284339

/-! ## A239446.P861757595171413738

`A196020(n+2)%A131632(n+2)`
-/

namespace A239446.P861757595171413738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A196020 (n + 2)) (A131632 (n + 2))

end

end A239446.P861757595171413738

/-! ## A239446.P9974746941940683279

`A057427(A236112(n+1))*A196020(n+2)`
-/

namespace A239446.P9974746941940683279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A236112 (n + 1)).toNat * A196020 (n + 2)

end

end A239446.P9974746941940683279

/-! ## A239446.P15094965148216244897

`A003056(A236112(n+1)*A339275(n+2))`
-/

namespace A239446.P15094965148216244897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A236112 (n + 1) * A339275 (n + 2)).toNat

end

end A239446.P15094965148216244897

/-! ## A239446.P44959053015193742

`A002265(A239662(n+2))%A131632(n+2)`
-/

namespace A239446.P44959053015193742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002265 (A239662 (n + 2)).toNat) (A131632 (n + 2))

end

end A239446.P44959053015193742

/-! ## A239446.P6946961539834119176

`A239313(n+2)%A315018(A236112(n+1))`
-/

namespace A239446.P6946961539834119176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A239313 (n + 2)) (A315018 (A236112 (n + 1)).toNat)

end

end A239446.P6946961539834119176

/-! ## A239446.P15158722409726797472

`A053186(A231345(n+2)+A231345(n+2)²)`
-/

namespace A239446.P15158722409726797472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053186 (A231345 (n + 2) + A231345 (n + 2) ^ 2).toNat

end

end A239446.P15158722409726797472

/-! ## A239446.P6684185776980380259

`A236112(n+1)/A236540(n+2)*A196020(n+2)`
-/

namespace A239446.P6684185776980380259
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A236112 (n + 1) : ℚ) / (A236540 (n + 2) : ℚ) * (A196020 (n + 2) : ℚ)

end

end A239446.P6684185776980380259

/-!
# A239447: Partial sums of A030101.

The programs for A239447, the canonical program `A239447.P4299851072612919937` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A239447 has offset 0).

The definition of A239447 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A239447.P18375277631474692403

`∑[A030101(n)]`
-/

namespace A239447.P18375277631474692403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A239447.P18375277631474692403

namespace A239447

/-- `∑[A030101(n)]` -/
def P18375277631474692403.Spec : Prop :=
  ∀ n, P18375277631474692403.a n = A239447 n

end A239447

/-! ## A239447.P4299851072612919937

`∑[n-A055945(n)]`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A239447

/-- `∑[n-A055945(n)]` -/
def P4299851072612919937.Spec : Prop :=
  ∀ n, P4299851072612919937.a n = A239447 n

theorem P4299851072612919937.correct : P4299851072612919937.Spec := by
  intro n
  simp only [A239447]

end A239447

/-! ## A239447.P4483936121187590584

`∑[A055944(n)-n]`
-/

namespace A239447.P4483936121187590584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055944 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A239447.P4483936121187590584

namespace A239447

/-- `∑[A055944(n)-n]` -/
def P4483936121187590584.Spec : Prop :=
  ∀ n, P4483936121187590584.a n = A239447 n

end A239447

/-! ## A239447.P18138673838107688307

`∑[xor(n, A175919(n))]`
-/

namespace A239447.P18138673838107688307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A175919 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A239447.P18138673838107688307

namespace A239447

/-- `∑[xor(n, A175919(n))]` -/
def P18138673838107688307.Spec : Prop :=
  ∀ n, P18138673838107688307.a n = A239447 n

end A239447

/-! ## A239447.P2670537576220503934

`∑[A264619(n)%(2*n+1)]`
-/

namespace A239447.P2670537576220503934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A264619 n) (2 * n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A239447.P2670537576220503934

namespace A239447

/-- `∑[A264619(n)%(2*n+1)]` -/
def P2670537576220503934.Spec : Prop :=
  ∀ n, P2670537576220503934.a n = A239447 n

end A239447

/-! ## A239447.P11024336216423343345

`∑[A280995(A006068(n))]`
-/

namespace A239447.P11024336216423343345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280995 (A006068 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A239447.P11024336216423343345

namespace A239447

/-- `∑[A280995(A006068(n))]` -/
def P11024336216423343345.Spec : Prop :=
  ∀ n, P11024336216423343345.a n = A239447 n

end A239447

/-! ## A239447.P4859995104380733495

`∑[A006257(A145342(n+1)-1)]`
-/

namespace A239447.P4859995104380733495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006257 (A145342 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A239447.P4859995104380733495

namespace A239447

/-- `∑[A006257(A145342(n+1)-1)]` -/
def P4859995104380733495.Spec : Prop :=
  ∀ n, P4859995104380733495.a n = A239447 n

end A239447

/-! ## A239447.P11904845437796114659

`∑[and(A145341(n+1), A175298(n))]`
-/

namespace A239447.P11904845437796114659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A145341 (n + 1)) (A175298 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A239447.P11904845437796114659

namespace A239447

/-- `∑[and(A145341(n+1), A175298(n))]` -/
def P11904845437796114659.Spec : Prop :=
  ∀ n, P11904845437796114659.a n = A239447 n

end A239447

/-! ## A239447.P15793829757370755189

`∑[A035327(n)+n-A036044(n)]`
-/

namespace A239447.P15793829757370755189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035327 n + ((n : ℤ) - A036044 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A239447.P15793829757370755189

namespace A239447

/-- `∑[A035327(n)+n-A036044(n)]` -/
def P15793829757370755189.Spec : Prop :=
  ∀ n, P15793829757370755189.a n = A239447 n

end A239447

/-! ## A239447.P6001893578319910663

`∑[A325401(2*n)]`
-/

namespace A239447.P6001893578319910663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325401 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A239447.P6001893578319910663

namespace A239447

/-- `∑[A325401(2*n)]` -/
def P6001893578319910663.Spec : Prop :=
  ∀ n, P6001893578319910663.a n = A239447 n

end A239447

/-! ## A239447.P12805660699910141975

`A325401(n+n)+a(n-1)` with `a(0)=0`
-/

namespace A239447.P12805660699910141975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A325401 (n + n) + a (n - 1)

end

end A239447.P12805660699910141975

namespace A239447

/-- `A325401(n+n)+a(n-1)` -/
def P12805660699910141975.Spec : Prop :=
  ∀ n, P12805660699910141975.a n = A239447 n

end A239447

/-! ## A239447.P716796690654623628

`∑[A119608(2*n+1)]`
-/

namespace A239447.P716796690654623628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119608 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A239447.P716796690654623628

namespace A239447

/-- `∑[A119608(2*n+1)]` -/
def P716796690654623628.Spec : Prop :=
  ∀ n, P716796690654623628.a n = A239447 n

end A239447

/-! ## A239447.P14107104621403048713

`∑[A281589(2*(n+1))]-A281589(2*(n+1))`
-/

namespace A239447.P14107104621403048713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281589 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A281589 (2 * (n + 1))

end

end A239447.P14107104621403048713

namespace A239447

/-- `∑[A281589(2*(n+1))]-A281589(2*(n+1))` -/
def P14107104621403048713.Spec : Prop :=
  ∀ n, P14107104621403048713.a n = A239447 n

end A239447

/-! ## A239447.P3414264296513935440

`A342122(2*n)+a(n-1)` with `a(0)=0`
-/

namespace A239447.P3414264296513935440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A342122 (2 * n) + a (n - 1)

end

end A239447.P3414264296513935440

namespace A239447

/-- `A342122(2*n)+a(n-1)` -/
def P3414264296513935440.Spec : Prop :=
  ∀ n, P3414264296513935440.a n = A239447 n

end A239447

/-! ## A239447.P876509730025851224

`∑[A048700(2*n+1)%(2*n+1)]`
-/

namespace A239447.P876509730025851224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A048700 (2 * n + 1)) (2 * n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A239447.P876509730025851224

namespace A239447

/-- `∑[A048700(2*n+1)%(2*n+1)]` -/
def P876509730025851224.Spec : Prop :=
  ∀ n, P876509730025851224.a n = A239447 n

end A239447

/-! ## A239447.P13972913162812618891

`∑[A145341(n+1)-A053644(Δ[n²])]`
-/

namespace A239447.P13972913162812618891
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145341 (n + 1) - A053644 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A239447.P13972913162812618891

namespace A239447

/-- `∑[A145341(n+1)-A053644(Δ[n²])]` -/
def P13972913162812618891.Spec : Prop :=
  ∀ n, P13972913162812618891.a n = A239447 n

end A239447

/-! ## A239447.P17680649918197072502

`∑[A053644(2*n+1)-A109613(A036044(2*n+1))]`
-/

namespace A239447.P17680649918197072502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053644 (2 * n + 1) - A109613 (A036044 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A239447.P17680649918197072502

namespace A239447

/-- `∑[A053644(2*n+1)-A109613(A036044(2*n+1))]` -/
def P17680649918197072502.Spec : Prop :=
  ∀ n, P17680649918197072502.a n = A239447 n

end A239447

/-! ## A239447.P14768538877422486490

`∑[A053645(A145341(n+1))]`
-/

namespace A239447.P14768538877422486490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053645 (A145341 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A239447.P14768538877422486490

namespace A239447

/-- `∑[A053645(A145341(n+1))]` -/
def P14768538877422486490.Spec : Prop :=
  ∀ n, P14768538877422486490.a n = A239447 n

end A239447

/-! ## A239447.P332146167924206546

`∑[A053645(A057889(2*n+1))]`
-/

namespace A239447.P332146167924206546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053645 (A057889 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A239447.P332146167924206546

namespace A239447

/-- `∑[A053645(A057889(2*n+1))]` -/
def P332146167924206546.Spec : Prop :=
  ∀ n, P332146167924206546.a n = A239447 n

end A239447

/-! ## A239447.P11177183321138302123

`∑[A030109(A004760(n+2))]`
-/

namespace A239447.P11177183321138302123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030109 (A004760 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A239447.P11177183321138302123

namespace A239447

/-- `∑[A030109(A004760(n+2))]` -/
def P11177183321138302123.Spec : Prop :=
  ∀ n, P11177183321138302123.a n = A239447 n

end A239447

/-!
# A239449: a(n) = 7*n^2 - 5*n + 1.

The programs for A239449, the canonical program `A239449.P12172143814811373178` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A239449 has offset 0).

The definition of A239449 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A239449.P12172143814811373178

`(7*n-5)*n+1`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A239449

/-- `(7*n-5)*n+1` -/
def P12172143814811373178.Spec : Prop :=
  ∀ n, P12172143814811373178.a n = A239449 n

theorem P12172143814811373178.correct : P12172143814811373178.Spec := by
  intro n
  simp only [A239449]

end A239449

/-! ## A239449.P3391414559683289002

`∑[a(n-1)+14]` with `a(0)=1, a(1)=2`
-/

namespace A239449.P3391414559683289002
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  f1 (n - 1) + 14

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A239449.P3391414559683289002

namespace A239449

/-- `∑[a(n-1)+14]` -/
def P3391414559683289002.Spec : Prop :=
  ∀ n, (P3391414559683289002.a n : ℤ) = A239449 n

end A239449

/-! ## A239449.P16233684737185154962

`or(1, n*(7*n-5))`
-/

namespace A239449.P16233684737185154962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ((n : ℤ) * ((7 * n : ℤ) - 5))

end

end A239449.P16233684737185154962

namespace A239449

/-- `or(1, n*(7*n-5))` -/
def P16233684737185154962.Spec : Prop :=
  ∀ n, P16233684737185154962.a n = A239449 n

end A239449

/-! ## A239449.P3479883647252714283

`xor(1, n*(7*n-5))`
-/

namespace A239449.P3479883647252714283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 ((n : ℤ) * ((7 * n : ℤ) - 5))

end

end A239449.P3479883647252714283

namespace A239449

/-- `xor(1, n*(7*n-5))` -/
def P3479883647252714283.Spec : Prop :=
  ∀ n, P3479883647252714283.a n = A239449 n

end A239449

/-! ## A239449.P821582267363808976

`abs(xor(-1, A139268(n)))`
-/

namespace A239449.P821582267363808976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (-1) (A139268 n)|

end

end A239449.P821582267363808976

namespace A239449

/-- `abs(xor(-1, A139268(n)))` -/
def P821582267363808976.Spec : Prop :=
  ∀ n, P821582267363808976.a n = A239449 n

end A239449

/-! ## A239449.P5143938928101152287

`(A152760(n)+2)/2`
-/

namespace A239449.P5143938928101152287
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A152760 n + 2 : ℚ) / 2

end

end A239449.P5143938928101152287

namespace A239449

/-- `(A152760(n)+2)/2` -/
def P5143938928101152287.Spec : Prop :=
  ∀ n, P5143938928101152287.a n = (A239449 n : ℚ)

end A239449

/-! ## A239449.P6875214329420515179

`(A195021(n)+2+n)/2`
-/

namespace A239449.P6875214329420515179
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A195021 n + 2 + (n : ℤ) : ℚ) / 2

end

end A239449.P6875214329420515179

namespace A239449

/-- `(A195021(n)+2+n)/2` -/
def P6875214329420515179.Spec : Prop :=
  ∀ n, P6875214329420515179.a n = (A239449 n : ℚ)

end A239449

/-! ## A239449.P6046120626562737937

`(A051868(n)/(n+1)+1)*(n+1)`
-/

namespace A239449.P6046120626562737937
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A051868 n : ℚ) / (n + 1 : ℚ) + 1) * (n + 1 : ℚ)

end

end A239449.P6046120626562737937

namespace A239449

/-- `(A051868(n)/(n+1)+1)*(n+1)` -/
def P6046120626562737937.Spec : Prop :=
  ∀ n, P6046120626562737937.a n = (A239449 n : ℚ)

end A239449

/-! ## A239449.P16647940838303587609

`(10*(A000217(n)+Δ[A007531(n)])+5)/5`
-/

namespace A239449.P16647940838303587609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007531 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (10 * (A000217 n + (f1 (n + 1) - f1 n)) + 5 : ℚ) / 5

end

end A239449.P16647940838303587609

namespace A239449

/-- `(10*(A000217(n)+Δ[A007531(n)])+5)/5` -/
def P16647940838303587609.Spec : Prop :=
  ∀ n, P16647940838303587609.a n = (A239449 n : ℚ)

end A239449

/-! ## A239449.P10407056768222664310

`record[A266981(n)²-∑[n]]`
-/

namespace A239449.P10407056768222664310
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266981 n ^ 2 - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A239449.P10407056768222664310

namespace A239449

/-- `record[A266981(n)²-∑[n]]` -/
def P10407056768222664310.Spec : Prop :=
  ∀ n, P10407056768222664310.a n = A239449 n

end A239449

/-! ## A239449.P6034984359505190503

`abs(A002061(3*n)-∑[4*n])`
-/

namespace A239449.P6034984359505190503
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A002061 (3 * n) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)|

end

end A239449.P6034984359505190503

namespace A239449

/-- `abs(A002061(3*n)-∑[4*n])` -/
def P6034984359505190503.Spec : Prop :=
  ∀ n, P6034984359505190503.a n = A239449 n

end A239449

/-! ## A239449.P3267744347756269647

`record[(A269876(n)+1)/2]`
-/

namespace A239449.P3267744347756269647
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A269876 n + 1 : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A239449.P3267744347756269647

namespace A239449

/-- `record[(A269876(n)+1)/2]` -/
def P3267744347756269647.Spec : Prop :=
  ∀ n, P3267744347756269647.a n = (A239449 n : ℚ)

end A239449

/-! ## A239449.P4677267863714520735

`A211438(A004273(n))`
-/

namespace A239449.P4677267863714520735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211438 (A004273 n).toNat

end

end A239449.P4677267863714520735

namespace A239449

/-- `A211438(A004273(n))` -/
def P4677267863714520735.Spec : Prop :=
  ∀ n, P4677267863714520735.a n = A239449 n

end A239449

/-! ## A239449.P17971993547553403664

`A000027(A051868(n)+1+n)`
-/

namespace A239449.P17971993547553403664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A051868 n + 1 + (n : ℤ)).toNat

end

end A239449.P17971993547553403664

namespace A239449

/-- `A000027(A051868(n)+1+n)` -/
def P17971993547553403664.Spec : Prop :=
  ∀ n, P17971993547553403664.a n = A239449 n

end A239449

/-!
# A239450: Numbers m such that T(m)^2 + T(m^2) is a perfect square, where T = A000217.

The programs for A239450, the canonical program `A239450.P13853442307730766420` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A239450 has offset 1).

The definition of A239450 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A239450.P13853442307730766420

`15*(a(n-1)-a(n-2))+a(n-3)` with `a(0)=0, a(1)=3, a(2)=47, a(3)=659`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A239450

/-- `15*(a(n-1)-a(n-2))+a(n-3)` -/
def P13853442307730766420.Spec : Prop :=
  ∀ n, P13853442307730766420.a n = A239450 (n + 1)

theorem P13853442307730766420.correct : P13853442307730766420.Spec := by
  intro n
  simp only [A239450, Nat.add_sub_cancel]

end A239450

/-! ## A239450.P1718142598727120041

`or(3, floor((sqrt(3)+2)²*a(n-1))+3)` with `a(0)=0`
-/

namespace A239450.P1718142598727120041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  Int.lor 3 (⌊(Real.sqrt (3 : ℝ) + 2) ^ 2 * (a (n - 1) : ℝ)⌋ + 3)

end

end A239450.P1718142598727120041

namespace A239450

/-- `or(3, floor((sqrt(3)+2)²*a(n-1))+3)` -/
def P1718142598727120041.Spec : Prop :=
  ∀ n, P1718142598727120041.a n = A239450 (n + 1)

end A239450

/-! ## A239450.P17838979417121474196

`or(3, 14*a(n-1)-a(n-2)+2)` with `a(0)=0, a(1)=3`
-/

namespace A239450.P17838979417121474196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 3] fun n a =>
  Int.lor 3 (14 * a (n - 1) - a (n - 2) + 2)

end

end A239450.P17838979417121474196

namespace A239450

/-- `or(3, 14*a(n-1)-a(n-2)+2)` -/
def P17838979417121474196.Spec : Prop :=
  ∀ n, P17838979417121474196.a n = A239450 (n + 1)

end A239450

/-! ## A239450.P7999185121081186946

`A005320(2*n)%A001835(n+1)²`
-/

namespace A239450.P7999185121081186946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005320 (2 * n)) (A001835 (n + 1) ^ 2)

end

end A239450.P7999185121081186946

namespace A239450

/-- `A005320(2*n)%A001835(n+1)²` -/
def P7999185121081186946.Spec : Prop :=
  ∀ n, P7999185121081186946.a n = A239450 (n + 1)

end A239450

/-! ## A239450.P12602526511531493111

`(A103772(n+1)+1)%A103974(n+1)`
-/

namespace A239450.P12602526511531493111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A103772 (n + 1) + 1) (A103974 (n + 1))

end

end A239450.P12602526511531493111

namespace A239450

/-- `(A103772(n+1)+1)%A103974(n+1)` -/
def P12602526511531493111.Spec : Prop :=
  ∀ n, P12602526511531493111.a n = A239450 (n + 1)

end A239450

/-! ## A239450.P14021706771991281502

`A046174(n)+A001571(A004273(n))`
-/

namespace A239450.P14021706771991281502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046174 n + A001571 (A004273 n).toNat

end

end A239450.P14021706771991281502

namespace A239450

/-- `A046174(n)+A001571(A004273(n))` -/
def P14021706771991281502.Spec : Prop :=
  ∀ n, P14021706771991281502.a n = A239450 (n + 1)

end A239450

/-! ## A239450.P11712324121539771515

`A067900(n)%A120893(A005843(n))`
-/

namespace A239450.P11712324121539771515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A067900 n) (A120893 (A005843 n).toNat)

end

end A239450.P11712324121539771515

namespace A239450

/-- `A067900(n)%A120893(A005843(n))` -/
def P11712324121539771515.Spec : Prop :=
  ∀ n, P11712324121539771515.a n = A239450 (n + 1)

end A239450

/-! ## A239450.P11034187136474064674

`A001353(A004277(n))-A001835(n)²`
-/

namespace A239450.P11034187136474064674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001353 (A004277 n).toNat - A001835 n ^ 2

end

end A239450.P11034187136474064674

namespace A239450

/-- `A001353(A004277(n))-A001835(n)²` -/
def P11034187136474064674.Spec : Prop :=
  ∀ n, P11034187136474064674.a n = A239450 (n + 1)

end A239450

/-! ## A239450.P16443456781616456079

`A249578(A008458(n))-A001835(n)²`
-/

namespace A239450.P16443456781616456079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249578 (A008458 n).toNat - A001835 n ^ 2

end

end A239450.P16443456781616456079

namespace A239450

/-- `A249578(A008458(n))-A001835(n)²` -/
def P16443456781616456079.Spec : Prop :=
  ∀ n, P16443456781616456079.a n = A239450 (n + 1)

end A239450

/-!
# A239453: Convolution of the generalized Catalan numbers A057977 with themselves.

The programs for A239453, the canonical program `A239453.P10419208607055236630` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A239453 has offset 0).

The definition of A239453 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 334 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A239453.P10419208607055236630

`Δ[A057977(n+1)]+A077957(n)²`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A239453

/-- `Δ[A057977(n+1)]+A077957(n)²` -/
def P10419208607055236630.Spec : Prop :=
  ∀ n, P10419208607055236630.a n = A239453 n

theorem P10419208607055236630.correct : P10419208607055236630.Spec := by
  intro n
  simp only [A239453]

end A239453

/-! ## A239453.P1136156110617852755

`∑[A275738(∑[A047086(n+1)])]`
-/

namespace A239453.P1136156110617852755
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047086 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275738 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A239453.P1136156110617852755

namespace A239453

/-- `∑[A275738(∑[A047086(n+1)])]` -/
def P1136156110617852755.Spec : Prop :=
  ∀ n, P1136156110617852755.a n = A239453 n

end A239453

/-! ## A239453.P686778601263535606

`floor(A090572(n+2)/A094540(2*n+3))`
-/

namespace A239453.P686778601263535606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A090572 (n + 2) : ℚ) / (A094540 (2 * n + 3) : ℚ)⌋

end

end A239453.P686778601263535606

namespace A239453

/-- `floor(A090572(n+2)/A094540(2*n+3))` -/
def P686778601263535606.Spec : Prop :=
  ∀ n, P686778601263535606.a n = A239453 n

end A239453

/-! ## A239453.P11121979635237165160

`A130599(A004913(n+1))+A000975(n)`
-/

namespace A239453.P11121979635237165160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130599 (A004913 (n + 1)).toNat + A000975 n

end

end A239453.P11121979635237165160

namespace A239453

/-- `A130599(A004913(n+1))+A000975(n)` -/
def P11121979635237165160.Spec : Prop :=
  ∀ n, P11121979635237165160.a n = A239453 n

end A239453

/-!
# A239454: Array: row n shows the Look-and-Say partitions of n >= 1, in Mathematica order.

The programs for A239454, there is no canonical definition to state claims against.
-/

/-! ## A239454.P7325319449971755951

`A089309(A240406(n+2)+A014545(n+1))`
-/

namespace A239454.P7325319449971755951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089309 (A240406 (n + 2) + A014545 (n + 1)).toNat

end

end A239454.P7325319449971755951

/-!
# A239455: Number of Look-and-Say partitions of n; see Comments.

The programs for A239455, there is no canonical definition to state claims against.
-/

/-! ## A239455.P13062271097735011700

`A255903(A000124(n))-A351293(n)`
-/

namespace A239455.P13062271097735011700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255903 (A000124 n).toNat - A351293 n

end

end A239455.P13062271097735011700

/-! ## A239455.P11246619094804231658

`A240303(n)+A240304(n)-A351293(n)`
-/

namespace A239455.P11246619094804231658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240303 n + (A240304 n - A351293 n)

end

end A239455.P11246619094804231658

/-! ## A239455.P9601794262016484739

`A000041(n)%A095944(n+1)-A351293(n)`
-/

namespace A239455.P9601794262016484739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000041 n) (A095944 (n + 1)) - A351293 n

end

end A239455.P9601794262016484739

/-! ## A239455.P1792768914490637021

`(A000041(n)-A351293(n))%A327381(n+3)`
-/

namespace A239455.P1792768914490637021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000041 n - A351293 n) (A327381 (n + 3))

end

end A239455.P1792768914490637021

/-! ## A239455.P5148060735622153679

`A351592(n)+A098859(n)%A351016(n)`
-/

namespace A239455.P5148060735622153679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351592 n + Int.tmod (A098859 n) (A351016 n)

end

end A239455.P5148060735622153679

/-!
# A239456: Number of partitions p of n such that if h = max(p), then h is an (h,2)-separator of p; see Comments.

The programs for A239456, there is no canonical definition to state claims against.
-/

/-! ## A239456.P558334075103145516

`A237829(n+1)-1`
-/

namespace A239456.P558334075103145516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237829 (n + 1) - 1

end

end A239456.P558334075103145516

/-! ## A239456.P7030111082241691557

`A023443(A237829(n+1))`
-/

namespace A239456.P7030111082241691557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A237829 (n + 1)).toNat

end

end A239456.P7030111082241691557

/-! ## A239456.P6387321360981993238

`abs(A237829(n+1)+A057428(n+1))`
-/

namespace A239456.P6387321360981993238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A237829 (n + 1) + A057428 (n + 1)|

end

end A239456.P6387321360981993238

/-! ## A239456.P17490917003091132076

`A053263(abs(1-n)+1)-A053262(n)-1`
-/

namespace A239456.P17490917003091132076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053263 (|1 - (n : ℤ)| + 1).toNat - A053262 n - 1

end

end A239456.P17490917003091132076

/-! ## A239456.P1833443175305032132

`floor(sqrt((A053262(n)-A053263(n))²+1))-1`
-/

namespace A239456.P1833443175305032132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt ((A053262 n - A053263 n) ^ 2 + 1) - 1

end

end A239456.P1833443175305032132

/-! ## A239456.P8462418660517583704

`A053263(A028310(n))-(A053262(n)+1)`
-/

namespace A239456.P8462418660517583704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053263 (A028310 n).toNat - (A053262 n + 1)

end

end A239456.P8462418660517583704

/-! ## A239456.P12878752734956874511

`A254667(A053263(n))-(A053262(n)+1)`
-/

namespace A239456.P12878752734956874511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254667 (A053263 n).toNat - (A053262 n + 1)

end

end A239456.P12878752734956874511

/-! ## A239456.P16516752737277958075

`A000007(n)+A053263(n)-(A053262(n)+1)`
-/

namespace A239456.P16516752737277958075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (A053263 n - (A053262 n + 1))

end

end A239456.P16516752737277958075

/-! ## A239456.P15094112409704955058

`A105348(2*n)-1+A053263(n)-A053262(n)`
-/

namespace A239456.P15094112409704955058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105348 (2 * n) - 1 + (A053263 n - A053262 n)

end

end A239456.P15094112409704955058

/-!
# A239457: Numbers n such that n + prime(n), n + 1 + prime(n+1) and n + 2 + prime(n+2) are divisible by 7.

The programs for A239457, there is no canonical definition to state claims against.
-/

/-! ## A239457.P5685173543419793440

`∩[A107425(n+1)-1, A107425(n+1)]`
-/

namespace A239457.P5685173543419793440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107425 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107425 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A239457.P5685173543419793440

/-! ## A239457.P7933833533164825548

`A107425(eq[1, A107425(n+2)-A107425(n+1)]+1)`
-/

namespace A239457.P7933833533164825548
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107425 (n + 2) - A107425 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107425 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A239457.P7933833533164825548

/-! ## A239457.P16654071833088518965

`∩[A289207(A107425(n+1)+1), A107425(n+1)]`
-/

namespace A239457.P16654071833088518965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A107425 (n + 1) + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107425 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A239457.P16654071833088518965

/-!
# A239459: Concatenation of n^3 and n.

The programs for A239459, the canonical program `A239459.P5241054701522062125` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A239459 has offset 1).

The definition of A239459 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A239459.P13788268750018459103

`(n+1)*A239462(n+1)`
-/

namespace A239459.P13788268750018459103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A239462 (n + 1)

end

end A239459.P13788268750018459103

namespace A239459

/-- `(n+1)*A239462(n+1)` -/
def P13788268750018459103.Spec : Prop :=
  ∀ n, P13788268750018459103.a n = A239459 (n + 1)

end A239459

/-! ## A239459.P5241054701522062125

`(n+1)*(A055436(n+1)-n)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A239459

/-- `(n+1)*(A055436(n+1)-n)` -/
def P5241054701522062125.Spec : Prop :=
  ∀ n, P5241054701522062125.a n = A239459 (n + 1)

theorem P5241054701522062125.correct : P5241054701522062125.Spec := by
  intro n
  simp only [A239459, Nat.add_sub_cancel]

end A239459

/-! ## A239459.P1427452048627314021

`lcm(n+1, A239462(gcd(n, n+1)+n))`
-/

namespace A239459.P1427452048627314021
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 1 : ℤ) (A239462 (Nat.gcd n (n + 1) + n))

end

end A239459.P1427452048627314021

namespace A239459

/-- `lcm(n+1, A239462(gcd(n, n+1)+n))` -/
def P1427452048627314021.Spec : Prop :=
  ∀ n, (P1427452048627314021.a n : ℤ) = A239459 (n + 1)

end A239459

/-! ## A239459.P14945667409017915951

`(A020338(n+1)-(n+1))*(n+1)²+n+1`
-/

namespace A239459.P14945667409017915951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A020338 (n + 1) - (n + 1 : ℤ)) * ((n + 1) ^ 2 : ℤ) + (n + 1 : ℤ)

end

end A239459.P14945667409017915951

namespace A239459

/-- `(A020338(n+1)-(n+1))*(n+1)²+n+1` -/
def P14945667409017915951.Spec : Prop :=
  ∀ n, P14945667409017915951.a n = A239459 (n + 1)

end A239459

/-! ## A239459.P5915015126720653638

`lcm(A000027(n+1), A239462(n+1))`
-/

namespace A239459.P5915015126720653638
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000027 (n + 1)) (A239462 (n + 1))

end

end A239459.P5915015126720653638

namespace A239459

/-- `lcm(A000027(n+1), A239462(n+1))` -/
def P5915015126720653638.Spec : Prop :=
  ∀ n, (P5915015126720653638.a n : ℤ) = A239459 (n + 1)

end A239459

/-! ## A239459.P14903200735411866635

`A239462(n+1)/sqrt(A239463(n+1)/A239460(n+1))`
-/

namespace A239459.P14903200735411866635
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A239462 (n + 1) : ℝ) / Real.sqrt ((A239463 (n + 1) : ℚ) / (A239460 (n + 1) : ℚ) : ℝ)

end

end A239459.P14903200735411866635

namespace A239459

/-- `A239462(n+1)/sqrt(A239463(n+1)/A239460(n+1))` -/
def P14903200735411866635.Spec : Prop :=
  ∀ n, P14903200735411866635.a n = (A239459 (n + 1) : ℝ)

end A239459

/-!
# A239460: Concatenation of n^2 and n^3.

The programs for A239460, there is no canonical definition to state claims against.
-/

/-! ## A239460.P17033860683688306736

`(n+1)²*A239463(n+1)`
-/

namespace A239460.P17033860683688306736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) * A239463 (n + 1)

end

end A239460.P17033860683688306736

/-! ## A239460.P16192511481946654410

`(A061087(n+1)-A002378(n))*(n+1)²`
-/

namespace A239460.P16192511481946654410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A061087 (n + 1) - A002378 n) * ((n + 1) ^ 2 : ℤ)

end

end A239460.P16192511481946654410

/-! ## A239460.P14492230974424852871

`A239463(n+1)%A017451(n)*∑[2*n+1]`
-/

namespace A239460.P14492230974424852871
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A239463 (n + 1)) (A017451 n) * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A239460.P14492230974424852871

/-! ## A239460.P18420106917182287315

`A239443(n+1)*A239463(n+1)/A239442(n+1)`
-/

namespace A239460.P18420106917182287315
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A239443 (n + 1) * A239463 (n + 1) : ℚ) / (A239442 (n + 1) : ℚ)

end

end A239460.P18420106917182287315

/-! ## A239460.P12915203098073762874

`A239461(n+1)*A239463(n+1)/A239464(n+1)`
-/

namespace A239460.P12915203098073762874
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A239461 (n + 1) * A239463 (n + 1) : ℚ) / (A239464 (n + 1) : ℚ)

end

end A239460.P12915203098073762874

/-!
# A239461: Concatenation of n^3 and n^2.

The programs for A239461, the canonical program `A239461.P12041808004721065073` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A239461 has offset 1).

The definition of A239461 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A239461.P12041808004721065073

`(n+1)*(A253445(n+1)-(n²+n))`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A239461

/-- `(n+1)*(A253445(n+1)-(n²+n))` -/
def P12041808004721065073.Spec : Prop :=
  ∀ n, P12041808004721065073.a n = A239461 (n + 1)

theorem P12041808004721065073.correct : P12041808004721065073.Spec := by
  intro n
  simp only [A239461, Nat.add_sub_cancel]

end A239461

/-! ## A239461.P10803815971035216555

`(n+1)²*A239464(n+1)`
-/

namespace A239461.P10803815971035216555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) * A239464 (n + 1)

end

end A239461.P10803815971035216555

namespace A239461

/-- `(n+1)²*A239464(n+1)` -/
def P10803815971035216555.Spec : Prop :=
  ∀ n, P10803815971035216555.a n = A239461 (n + 1)

end A239461

/-! ## A239461.P5875890168074333395

`lcm(∑[A005408(n)], A239464(n+1))`
-/

namespace A239461.P5875890168074333395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (∑ j ∈ Finset.range (n + 1), f1 j) (A239464 (n + 1))

end

end A239461.P5875890168074333395

namespace A239461

/-- `lcm(∑[A005408(n)], A239464(n+1))` -/
def P5875890168074333395.Spec : Prop :=
  ∀ n, (P5875890168074333395.a n : ℤ) = A239461 (n + 1)

end A239461

/-! ## A239461.P1759820880836200242

`lcm((n+1)², A239464(A000027(n+1)))`
-/

namespace A239461.P1759820880836200242
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((n + 1) ^ 2 : ℤ) (A239464 (A000027 (n + 1)).toNat)

end

end A239461.P1759820880836200242

namespace A239461

/-- `lcm((n+1)², A239464(A000027(n+1)))` -/
def P1759820880836200242.Spec : Prop :=
  ∀ n, (P1759820880836200242.a n : ℤ) = A239461 (n + 1)

end A239461

/-! ## A239461.P3301711480071846287

`A239464(n+1)+A005563(n)*A239464(n+1)`
-/

namespace A239461.P3301711480071846287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239464 (n + 1) + A005563 n * A239464 (n + 1)

end

end A239461.P3301711480071846287

namespace A239461

/-- `A239464(n+1)+A005563(n)*A239464(n+1)` -/
def P3301711480071846287.Spec : Prop :=
  ∀ n, P3301711480071846287.a n = A239461 (n + 1)

end A239461

/-! ## A239461.P1358359244628042217

`lcm(A162395(n+1)*A239464(n+1), A162395(n+1))`
-/

namespace A239461.P1358359244628042217
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A162395 (n + 1) * A239464 (n + 1)) (A162395 (n + 1))

end

end A239461.P1358359244628042217

namespace A239461

/-- `lcm(A162395(n+1)*A239464(n+1), A162395(n+1))` -/
def P1358359244628042217.Spec : Prop :=
  ∀ n, (P1358359244628042217.a n : ℤ) = A239461 (n + 1)

end A239461

/-! ## A239461.P13493521205956663107

`A239464(n+1)*A335821(A000124(n)+n)`
-/

namespace A239461.P13493521205956663107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239464 (n + 1) * A335821 (A000124 n + (n : ℤ)).toNat

end

end A239461.P13493521205956663107

namespace A239461

/-- `A239464(n+1)*A335821(A000124(n)+n)` -/
def P13493521205956663107.Spec : Prop :=
  ∀ n, P13493521205956663107.a n = A239461 (n + 1)

end A239461

/-! ## A239461.P14072551848550195550

`(n+1)*(A020338((n+1)²)-(n²+n))`
-/

namespace A239461.P14072551848550195550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A020338 ((n + 1) ^ 2) - (n ^ 2 + n : ℤ))

end

end A239461.P14072551848550195550

namespace A239461

/-- `(n+1)*(A020338((n+1)²)-(n²+n))` -/
def P14072551848550195550.Spec : Prop :=
  ∀ n, P14072551848550195550.a n = A239461 (n + 1)

end A239461

/-!
# A239462: A239459(n) / n.

The programs for A239462, the canonical program `A239462.P13720970013237140629` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A239462 has offset 1).

The definition of A239462 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A239462.P13720970013237140629

`A055436(n+1)-n`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A239462

/-- `A055436(n+1)-n` -/
def P13720970013237140629.Spec : Prop :=
  ∀ n, P13720970013237140629.a n = A239462 (n + 1)

theorem P13720970013237140629.correct : P13720970013237140629.Spec := by
  intro n
  simp only [A239462, Nat.add_sub_cancel]

end A239462

/-! ## A239462.P1481297013341155621

`A239459(n+1)/(n+1)`
-/

namespace A239462.P1481297013341155621
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A239459 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A239462.P1481297013341155621

namespace A239462

/-- `A239459(n+1)/(n+1)` -/
def P1481297013341155621.Spec : Prop :=
  ∀ n, P1481297013341155621.a n = (A239462 (n + 1) : ℚ)

end A239462

/-! ## A239462.P2042258649817248059

`(n+1)*(A020338(n+1)-n)-n`
-/

namespace A239462.P2042258649817248059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A020338 (n + 1) - (n : ℤ)) - (n : ℤ)

end

end A239462.P2042258649817248059

namespace A239462

/-- `(n+1)*(A020338(n+1)-n)-n` -/
def P2042258649817248059.Spec : Prop :=
  ∀ n, P2042258649817248059.a n = A239462 (n + 1)

end A239462

/-! ## A239462.P29377133976315736

`(n+1)*A020338(n+1)-A005563(n)`
-/

namespace A239462.P29377133976315736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A020338 (n + 1) - A005563 n

end

end A239462.P29377133976315736

namespace A239462

/-- `(n+1)*A020338(n+1)-A005563(n)` -/
def P29377133976315736.Spec : Prop :=
  ∀ n, P29377133976315736.a n = A239462 (n + 1)

end A239462

/-! ## A239462.P6948446742581755227

`record[A239459(A008619(n))/A080513(n)]`
-/

namespace A239462.P6948446742581755227
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A239459 (A008619 n).toNat : ℚ) / (A080513 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A239462.P6948446742581755227

namespace A239462

/-- `record[A239459(A008619(n))/A080513(n)]` -/
def P6948446742581755227.Spec : Prop :=
  ∀ n, P6948446742581755227.a n = (A239462 (n + 1) : ℚ)

end A239462

/-! ## A239462.P5335397510981991691

`record[A239459(A126759(n))/A126759(n)]`
-/

namespace A239462.P5335397510981991691
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A239459 (A126759 n).toNat : ℚ) / (A126759 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A239462.P5335397510981991691

namespace A239462

/-- `record[A239459(A126759(n))/A126759(n)]` -/
def P5335397510981991691.Spec : Prop :=
  ∀ n, P5335397510981991691.a n = (A239462 (n + 1) : ℚ)

end A239462

/-! ## A239462.P1850796411743968475

`(n+1)*(A084855(∑[n+1])-n)-n`
-/

namespace A239462.P1850796411743968475
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A084855 (∑ j ∈ Finset.range (n + 1), f1 j) - (n : ℤ)) - (n : ℤ)

end

end A239462.P1850796411743968475

namespace A239462

/-- `(n+1)*(A084855(∑[n+1])-n)-n` -/
def P1850796411743968475.Spec : Prop :=
  ∀ n, P1850796411743968475.a n = A239462 (n + 1)

end A239462

/-!
# A239463: a(n) = A239460(n) / n^2.

The programs for A239463, there is no canonical definition to state claims against.
-/

/-! ## A239463.P868596081018290186

`A239460(n+1)/(n+1)²`
-/

namespace A239463.P868596081018290186
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A239460 (n + 1) : ℚ) / ((n + 1) ^ 2 : ℚ)

end

end A239463.P868596081018290186

/-! ## A239463.P16828064700730029489

`A061087(n+1)-∑[2*n]`
-/

namespace A239463.P16828064700730029489
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061087 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A239463.P16828064700730029489

/-! ## A239463.P4762873982315731697

`abs(A061087(n+1)-A002378(n))`
-/

namespace A239463.P4762873982315731697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A061087 (n + 1) - A002378 n|

end

end A239463.P4762873982315731697

/-! ## A239463.P1426189051034103741

`A061086(n+1)%(A061087(n+1)+n+1)`
-/

namespace A239463.P1426189051034103741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A061086 (n + 1)) (A061087 (n + 1) + (n + 1 : ℤ))

end

end A239463.P1426189051034103741

/-! ## A239463.P14399356638553017456

`A175605(n+1)/(n+1)^3+n`
-/

namespace A239463.P14399356638553017456
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A175605 (n + 1) : ℚ) / ((n + 1) ^ 3 : ℚ) + (n : ℚ)

end

end A239463.P14399356638553017456

/-! ## A239463.P16926995325377875624

`A239460(n+1)/A239461(n+1)*A239464(n+1)`
-/

namespace A239463.P16926995325377875624
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A239460 (n + 1) : ℚ) / (A239461 (n + 1) : ℚ) * (A239464 (n + 1) : ℚ)

end

end A239463.P16926995325377875624

/-!
# A239464: A239461(n) / n^2.

The programs for A239464, the canonical program `A239464.P9482972523603461155` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A239464 has offset 1).

The definition of A239464 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A239464.P9977699933994257397

`A239461(n+1)/(n+1)²`
-/

namespace A239464.P9977699933994257397
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A239461 (n + 1) : ℚ) / ((n + 1) ^ 2 : ℚ)

end

end A239464.P9977699933994257397

namespace A239464

/-- `A239461(n+1)/(n+1)²` -/
def P9977699933994257397.Spec : Prop :=
  ∀ n, P9977699933994257397.a n = (A239464 (n + 1) : ℚ)

end A239464

/-! ## A239464.P9482972523603461155

`A053061(n+1)-n*(n+2)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A239464

/-- `A053061(n+1)-n*(n+2)` -/
def P9482972523603461155.Spec : Prop :=
  ∀ n, P9482972523603461155.a n = A239464 (n + 1)

theorem P9482972523603461155.correct : P9482972523603461155.Spec := by
  intro n
  simp only [A239464, Nat.add_sub_cancel]

end A239464

/-! ## A239464.P720539537601390205

`A253445(n+1)/(n+1)-n`
-/

namespace A239464.P720539537601390205
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A253445 (n + 1) : ℚ) / (n + 1 : ℚ) - (n : ℚ)

end

end A239464.P720539537601390205

namespace A239464

/-- `A253445(n+1)/(n+1)-n` -/
def P720539537601390205.Spec : Prop :=
  ∀ n, P720539537601390205.a n = (A239464 (n + 1) : ℚ)

end A239464

/-! ## A239464.P8718076121121897486

`abs(A053061(n+1)-A005563(n))`
-/

namespace A239464.P8718076121121897486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A053061 (n + 1) - A005563 n|

end

end A239464.P8718076121121897486

namespace A239464

/-- `abs(A053061(n+1)-A005563(n))` -/
def P8718076121121897486.Spec : Prop :=
  ∀ n, P8718076121121897486.a n = A239464 (n + 1)

end A239464

/-! ## A239464.P17677809781719938560

`A258837(n+1)+A053061(n+1)`
-/

namespace A239464.P17677809781719938560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258837 (n + 1) + A053061 (n + 1)

end

end A239464.P17677809781719938560

namespace A239464

/-- `A258837(n+1)+A053061(n+1)` -/
def P17677809781719938560.Spec : Prop :=
  ∀ n, P17677809781719938560.a n = A239464 (n + 1)

end A239464

/-! ## A239464.P9892193709731176659

`1/A000290(n+1)*A239461(n+1)`
-/

namespace A239464.P9892193709731176659
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (A000290 (n + 1) : ℚ) * (A239461 (n + 1) : ℚ)

end

end A239464.P9892193709731176659

namespace A239464

/-- `1/A000290(n+1)*A239461(n+1)` -/
def P9892193709731176659.Spec : Prop :=
  ∀ n, P9892193709731176659.a n = (A239464 (n + 1) : ℚ)

end A239464

/-! ## A239464.P5319389440769080006

`A239461(n+1)/A239460(n+1)*A239463(n+1)`
-/

namespace A239464.P5319389440769080006
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A239461 (n + 1) : ℚ) / (A239460 (n + 1) : ℚ) * (A239463 (n + 1) : ℚ)

end

end A239464.P5319389440769080006

namespace A239464

/-- `A239461(n+1)/A239460(n+1)*A239463(n+1)` -/
def P5319389440769080006.Spec : Prop :=
  ∀ n, P5319389440769080006.a n = (A239464 (n + 1) : ℚ)

end A239464

/-! ## A239464.P4611934849278884411

`A020338((n+1)²)/(n+1)-n`
-/

namespace A239464.P4611934849278884411
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020338 ((n + 1) ^ 2) : ℚ) / (n + 1 : ℚ) - (n : ℚ)

end

end A239464.P4611934849278884411

namespace A239464

/-- `A020338((n+1)²)/(n+1)-n` -/
def P4611934849278884411.Spec : Prop :=
  ∀ n, P4611934849278884411.a n = (A239464 (n + 1) : ℚ)

end A239464

/-!
# A239466: Expansion of (1 - x + x^2 + sqrt(1 + 2*x + 3*x^2 - 2*x^3 + x^4)) / 2 in powers of x.

The programs for A239466, there is no canonical definition to state claims against.
-/

/-! ## A239466.P16735825708333608379

`A154272(n+1)-A129509(n)`
-/

namespace A239466.P16735825708333608379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154272 (n + 1) - A129509 n

end

end A239466.P16735825708333608379

/-! ## A239466.P13264005995650289777

`A019590(A052938(n))-A129509(n)`
-/

namespace A239466.P13264005995650289777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019590 (A052938 n).toNat - A129509 n

end

end A239466.P13264005995650289777

/-! ## A239466.P14204420229990983129

`A036987(A007891(n+1))-A129509(n)`
-/

namespace A239466.P14204420229990983129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 (A007891 (n + 1)).toNat - A129509 n

end

end A239466.P14204420229990983129

/-! ## A239466.P8969008021155576860

`A010054(A067126(n+1))-A129509(n)`
-/

namespace A239466.P8969008021155576860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (A067126 (n + 1)).toNat - A129509 n

end

end A239466.P8969008021155576860

/-! ## A239466.P2349931939823717777

`A036987(A195170(3*n))-A129509(n)`
-/

namespace A239466.P2349931939823717777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 (A195170 (3 * n)).toNat - A129509 n

end

end A239466.P2349931939823717777

/-! ## A239466.P3394076224098566281

`A036987(n²+3)-A129509(n)`
-/

namespace A239466.P3394076224098566281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 (n ^ 2 + 3) - A129509 n

end

end A239466.P3394076224098566281

/-! ## A239466.P10578309312731400578

`A010054(A052905(n))-A129509(n)`
-/

namespace A239466.P10578309312731400578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (A052905 n).toNat - A129509 n

end

end A239466.P10578309312731400578

/-!
# A239467: Number of 1-separable partitions of n; see Comments.

The programs for A239467, there is no canonical definition to state claims against.
-/

/-! ## A239467.P3223655720155966757

`∑[A008484(n+2)]`
-/

namespace A239467.P3223655720155966757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008484 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A239467.P3223655720155966757

/-! ## A239467.P17710444397934784122

`∑[A026797(n+6)]`
-/

namespace A239467.P17710444397934784122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026797 (n + 6)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A239467.P17710444397934784122

/-! ## A239467.P3762457202778900190

`A121659(n+2)-1`
-/

namespace A239467.P3762457202778900190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121659 (n + 2) - 1

end

end A239467.P3762457202778900190

/-! ## A239467.P3773268635181409261

`∑[abs(Δ[A121659(n+1)])]`
-/

namespace A239467.P3773268635181409261
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121659 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A239467.P3773268635181409261

/-! ## A239467.P8629208254768486832

`∑[A026794(A145018(n+6))]`
-/

namespace A239467.P8629208254768486832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026794 (A145018 (n + 6)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A239467.P8629208254768486832

/-! ## A239467.P15080132355483366888

`∑[Δ[A121659(n+1)]%A000031(n)]`
-/

namespace A239467.P15080132355483366888
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121659 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (n + 1) - f2 n) (A000031 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A239467.P15080132355483366888

/-! ## A239467.P15882754506860362052

`A330794(A005169(C(2, n+2)))+A121659(n+2)`
-/

namespace A239467.P15882754506860362052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330794 (A005169 (Nat.choose 2 (n + 2))).toNat + A121659 (n + 2)

end

end A239467.P15882754506860362052

/-! ## A239467.P10853317864964504146

`A330794(A005727(C(2, n+2)))+A121659(n+2)`
-/

namespace A239467.P10853317864964504146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330794 (A005727 (Nat.choose 2 (n + 2))).toNat + A121659 (n + 2)

end

end A239467.P10853317864964504146

/-! ## A239467.P13216442273509716677

`Δ[A000094(n+2)]-(A027337(n)-A027336(n+1))`
-/

namespace A239467.P13216442273509716677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000094 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (A027337 n - A027336 (n + 1))

end

end A239467.P13216442273509716677

/-!
# A239468: Number of 2-separable partitions of n; see Comments.

The programs for A239468, there is no canonical definition to state claims against.
-/

/-! ## A239468.P12990340829830725402

`A185325(n+3)+∑[A185325(n+1)]`
-/

namespace A239468.P12990340829830725402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185325 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185325 (n + 3) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A239468.P12990340829830725402

/-! ## A239468.P5939884213562608132

`A026798(n+8)+∑[A026798(n+6)]`
-/

namespace A239468.P5939884213562608132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026798 (n + 6)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026798 (n + 8) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A239468.P5939884213562608132

/-! ## A239468.P9786714358752359707

`A121902(A376712(n+1))`
-/

namespace A239468.P9786714358752359707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121902 (A376712 (n + 1)).toNat

end

end A239468.P9786714358752359707

/-! ## A239468.P8130474615468491739

`round(A002024(A164617(n))/3)`
-/

namespace A239468.P8130474615468491739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A002024 (A164617 n).toNat : ℚ) / 3)

end

end A239468.P8130474615468491739

/-! ## A239468.P2283049289165825239

`A121902(A182994(n+1)/2)`
-/

namespace A239468.P2283049289165825239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121902 (SequenceMachineLib.roundAway ((A182994 (n + 1) : ℚ) / 2)).toNat

end

end A239468.P2283049289165825239

/-!
# A239470: Number of 4-separable partitions of n; see Comments.

The programs for A239470, there is no canonical definition to state claims against.
-/

/-! ## A239470.P5911180777808953956

`A275891(A112192(n+1))`
-/

namespace A239470.P5911180777808953956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275891 (A112192 (n + 1)).toNat

end

end A239470.P5911180777808953956

/-!
# A239473: Triangle read by rows: signed version of A059260: coefficients for expansion of partial sums of sequences a(n,x) in terms of their binomial transforms (1+a(.,x))^n ; Laguerre polynomial expansion of the truncated exponential.

The programs for A239473, there is no canonical definition to state claims against.
-/

/-! ## A239473.P3872405313628550809

`∑[A341091(n)]-n`
-/

namespace A239473.P3872405313628550809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341091 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A239473.P3872405313628550809

/-! ## A239473.P16956702498820886198

`A059260(n)*A097807(n)`
-/

namespace A239473.P16956702498820886198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059260 n * A097807 n

end

end A239473.P16956702498820886198

/-! ## A239473.P8191079915474693639

`A131047(n+1)+A131054(n)-A131053(n+1)`
-/

namespace A239473.P8191079915474693639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131047 (n + 1) + (A131054 n - A131053 (n + 1))

end

end A239473.P8191079915474693639

/-! ## A239473.P13696862436507739982

`A131054(n+1)+A131054(n)-A131053(n+2)`
-/

namespace A239473.P13696862436507739982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131054 (n + 1) + (A131054 n - A131053 (n + 2))

end

end A239473.P13696862436507739982

/-! ## A239473.P3056424344360495240

`A210233(n+1)+A210233(n+2)-A210234(n+2)`
-/

namespace A239473.P3056424344360495240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210233 (n + 1) + (A210233 (n + 2) - A210234 (n + 2))

end

end A239473.P3056424344360495240

/-! ## A239473.P10345303417501959336

`A220074(A061579(n))`
-/

namespace A239473.P10345303417501959336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220074 (A061579 n).toNat

end

end A239473.P10345303417501959336

/-! ## A239473.P346489260855600024

`A220074(A038722(n+1)-1)`
-/

namespace A239473.P346489260855600024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220074 (A038722 (n + 1) - 1).toNat

end

end A239473.P346489260855600024

/-! ## A239473.P11717604957606496358

`A220074(A002024(n+1)²-(n+1))`
-/

namespace A239473.P11717604957606496358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220074 (A002024 (n + 1) ^ 2 - (n + 1 : ℤ)).toNat

end

end A239473.P11717604957606496358

/-! ## A239473.P11591952538197344833

`A220074(A038722(n+2))`
-/

namespace A239473.P11591952538197344833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220074 (A038722 (n + 2)).toNat

end

end A239473.P11591952538197344833

/-! ## A239473.P9207227944083513580

`A112468(comp[∑[n]])`
-/

namespace A239473.P9207227944083513580
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112468 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A239473.P9207227944083513580

/-! ## A239473.P7210441082611614832

`A113310(A014132(A014132(n+2)))`
-/

namespace A239473.P7210441082611614832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113310 (A014132 (A014132 (n + 2)).toNat).toNat

end

end A239473.P7210441082611614832

/-!
# A239479: Integer solutions of the arithmetic differential equation m' = m - sqrt(m).

The programs for A239479, there is no canonical definition to state claims against.
-/

/-! ## A239479.P5124186694233886494

`A000265(A054377(n+1))^2`
-/

namespace A239479.P5124186694233886494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A054377 (n + 1)).toNat ^ 2

end

end A239479.P5124186694233886494

/-!
# A239480: Palindromes such that additive and multiplicative persistences coincide.

The programs for A239480, there is no canonical definition to state claims against.
-/

/-! ## A239480.P6387948552377937213

`∩[A002113(n+1), A239427(n+1)]`
-/

namespace A239480.P6387948552377937213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239427 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A239480.P6387948552377937213

/-! ## A239480.P18045769468655983179

`eq[A056965(n), A151934(2*n+1)]`
-/

namespace A239480.P18045769468655983179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056965 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151934 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A239480.P18045769468655983179

/-! ## A239480.P9305475292196265924

`∩[A030285(n+1), A239427(n+1)]`
-/

namespace A239480.P9305475292196265924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030285 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239427 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A239480.P9305475292196265924

/-! ## A239480.P9683613496207894112

`filter[A099165(n+1), A102609(#)]`
-/

namespace A239480.P9683613496207894112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099165 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A102609 (f1 j).toNat = 1) n)

end

end A239480.P9683613496207894112

/-! ## A239480.P5477513623279340183

`∩[A099165(n+1), A032513(n)]`
-/

namespace A239480.P5477513623279340183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099165 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032513 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A239480.P5477513623279340183

/-!
# A239481: Number of partitions p of n such that if h = 2*min(p), then h is an (h,2)-separator of p; see Comments.

The programs for A239481, there is no canonical definition to state claims against.
-/

/-! ## A239481.P18136016592633556357

`A111208(A326076(n))%A034887(n)`
-/

namespace A239481.P18136016592633556357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A111208 (A326076 n).toNat) (A034887 n)

end

end A239481.P18136016592633556357

/-! ## A239481.P15603874651442629545

`A184964(n)+A089310(A153687(n+1))`
-/

namespace A239481.P15603874651442629545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184964 n + A089310 (A153687 (n + 1)).toNat

end

end A239481.P15603874651442629545

/-! ## A239481.P15414905511028521625

`and(A004525(A018789(n)), A130270(n+1))`
-/

namespace A239481.P15414905511028521625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A004525 (A018789 n).toNat) (A130270 (n + 1))

end

end A239481.P15414905511028521625

/-! ## A239481.P9396224500114526581

`A083896(or(A112352(n+1), A296122(n)))`
-/

namespace A239481.P9396224500114526581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083896 (Int.lor (A112352 (n + 1)) (A296122 n)).toNat

end

end A239481.P9396224500114526581

/-! ## A239481.P11918762318337238937

`A037816(A233585(n+1))+A037801(n+1)`
-/

namespace A239481.P11918762318337238937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037816 (A233585 (n + 1)).toNat + A037801 (n + 1)

end

end A239481.P11918762318337238937

/-!
# A239482: Number of (2,0)-separable partitions of n; see Comments.

The programs for A239482, there is no canonical definition to state claims against.
-/

/-! ## A239482.P9350605978832330366

`A165652(n+5)-A008483(n+1)`
-/

namespace A239482.P9350605978832330366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165652 (n + 5) - A008483 (n + 1)

end

end A239482.P9350605978832330366

/-! ## A239482.P1614471694344996745

`A165652(n+5)-A026796(n+4)`
-/

namespace A239482.P1614471694344996745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165652 (n + 5) - A026796 (n + 4)

end

end A239482.P1614471694344996745

/-! ## A239482.P11720032516498645770

`A185224(n+5)+Δ[A008483(n+1)]`
-/

namespace A239482.P11720032516498645770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008483 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185224 (n + 5) + (f1 (n + 1) - f1 n)

end

end A239482.P11720032516498645770

/-! ## A239482.P8257233545707509632

`A185224(n+5)+Δ[A026796(n+4)]`
-/

namespace A239482.P8257233545707509632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026796 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185224 (n + 5) + (f1 (n + 1) - f1 n)

end

end A239482.P8257233545707509632

/-! ## A239482.P747088977833945709

`A008483(n+5)-(A008483(n+1)+1)`
-/

namespace A239482.P747088977833945709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008483 (n + 5) - (A008483 (n + 1) + 1)

end

end A239482.P747088977833945709

/-! ## A239482.P577595379214387706

`A026796(n+8)-(A026796(n+4)+1)`
-/

namespace A239482.P577595379214387706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026796 (n + 8) - (A026796 (n + 4) + 1)

end

end A239482.P577595379214387706

/-! ## A239482.P12822124677767925349

`A239493(n+5)-1`
-/

namespace A239482.P12822124677767925349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239493 (n + 5) - 1

end

end A239482.P12822124677767925349

/-!
# A239483: Number of (3,0)-separable partitions of n; see Comments.

The programs for A239483, there is no canonical definition to state claims against.
-/

/-! ## A239483.P6829801601916101444

`A185224(n+7)-A008484(n+1)`
-/

namespace A239483.P6829801601916101444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185224 (n + 7) - A008484 (n + 1)

end

end A239483.P6829801601916101444

/-! ## A239483.P7198559055546588190

`A008484(n+7)-(A008484(n+1)+1)`
-/

namespace A239483.P7198559055546588190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008484 (n + 7) - (A008484 (n + 1) + 1)

end

end A239483.P7198559055546588190

/-! ## A239483.P12856041320617762817

`A026797(n+11)-(A026797(n+5)+1)`
-/

namespace A239483.P12856041320617762817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026797 (n + 11) - (A026797 (n + 5) + 1)

end

end A239483.P12856041320617762817

/-! ## A239483.P12643561715979496984

`A239494(n+7)-1`
-/

namespace A239483.P12643561715979496984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239494 (n + 7) - 1

end

end A239483.P12643561715979496984

/-! ## A239483.P10481854477147056544

`A305974(A005384(n+1))+A239494(n+7)`
-/

namespace A239483.P10481854477147056544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305974 (A005384 (n + 1)).toNat + A239494 (n + 7)

end

end A239483.P10481854477147056544

/-!
# A239484: Number of (4,0)-separable partitions of n; see Comments.

The programs for A239484, there is no canonical definition to state claims against.
-/

/-! ## A239484.P12931472919529193146

`A185325(n+9)-(A185325(n+1)+1)`
-/

namespace A239484.P12931472919529193146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185325 (n + 9) - (A185325 (n + 1) + 1)

end

end A239484.P12931472919529193146

/-! ## A239484.P8468342341521136385

`A239495(n+9)-1`
-/

namespace A239484.P8468342341521136385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239495 (n + 9) - 1

end

end A239484.P8468342341521136385

/-! ## A239484.P8629485761798006764

`A140106(2*A239495(n+9))`
-/

namespace A239484.P8629485761798006764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140106 (2 * A239495 (n + 9)).toNat

end

end A239484.P8629485761798006764

/-! ## A239484.P17962444989499755250

`xor(A001478(A239495(n+9)+1)+1, -1)`
-/

namespace A239484.P17962444989499755250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A001478 (A239495 (n + 9) + 1).toNat + 1) (-1)

end

end A239484.P17962444989499755250

/-! ## A239484.P9410157565129622533

`A268173(A304042(n))+A239495(n+9)`
-/

namespace A239484.P9410157565129622533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268173 (A304042 n).toNat + A239495 (n + 9)

end

end A239484.P9410157565129622533

/-! ## A239484.P10988131396661031671

`abs(A239495(n+9)+A008683(A101772(n+1)))`
-/

namespace A239484.P10988131396661031671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A239495 (n + 9) + A008683 (A101772 (n + 1)).toNat|

end

end A239484.P10988131396661031671

/-! ## A239484.P11144378968705358734

`abs(A239495(n+9)+A057428(A162430(n+1)))`
-/

namespace A239484.P11144378968705358734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A239495 (n + 9) + A057428 (A162430 (n + 1)).toNat|

end

end A239484.P11144378968705358734

/-!
# A239485: Number of (5,0)-separable partitions of n; see Comments.

The programs for A239485, there is no canonical definition to state claims against.
-/

/-! ## A239485.P2305339503273295185

`A185326(n+11)-(A185326(n+1)+1)`
-/

namespace A239485.P2305339503273295185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185326 (n + 11) - (A185326 (n + 1) + 1)

end

end A239485.P2305339503273295185

/-! ## A239485.P489348698632710655

`A239496(n+11)-1`
-/

namespace A239485.P489348698632710655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239496 (n + 11) - 1

end

end A239485.P489348698632710655

/-! ## A239485.P17178791637470961175

`A023445(A239496(n+11)+2)`
-/

namespace A239485.P17178791637470961175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023445 (A239496 (n + 11) + 2).toNat

end

end A239485.P17178791637470961175

/-! ## A239485.P6763287270920017501

`A239496(n+11)+A001489(n+1)+n`
-/

namespace A239485.P6763287270920017501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239496 (n + 11) + A001489 (n + 1) + (n : ℤ)

end

end A239485.P6763287270920017501

/-! ## A239485.P6929963049673428635

`A289741(A045798(n+1))+A239496(n+11)`
-/

namespace A239485.P6929963049673428635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289741 (A045798 (n + 1)).toNat + A239496 (n + 11)

end

end A239485.P6929963049673428635

/-! ## A239485.P6944966318118397114

`abs(A239496(n+11)+A112198(A266303(2*n)²))`
-/

namespace A239485.P6944966318118397114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A239496 (n + 11) + A112198 (A266303 (2 * n) ^ 2).toNat|

end

end A239485.P6944966318118397114

/-!
# A239488: Expansion of 1/x-4/(-sqrt(x^2-10*x+1)-x+1)-3.

The programs for A239488, there is no canonical definition to state claims against.
-/

/-! ## A239488.P498078937639624909

`record[lcm(6, A297704(n))]`
-/

namespace A239488.P498078937639624909
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 6 (A297704 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A239488.P498078937639624909

/-! ## A239488.P137839912622365509

`2*A103210(n+1)`
-/

namespace A239488.P137839912622365509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A103210 (n + 1)

end

end A239488.P137839912622365509

/-! ## A239488.P1730637965061412382

`3*A107841(n+1)`
-/

namespace A239488.P1730637965061412382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A107841 (n + 1)

end

end A239488.P1730637965061412382

/-! ## A239488.P6395589668949547

`6*A269730(n+1)`
-/

namespace A239488.P6395589668949547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A269730 (n + 1)

end

end A239488.P6395589668949547

/-! ## A239488.P7477294784260609736

`2*A297704(∑[n+1])`
-/

namespace A239488.P7477294784260609736
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A297704 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A239488.P7477294784260609736

/-! ## A239488.P15279728754119185816

`record[2*A297704(n+1)]`
-/

namespace A239488.P15279728754119185816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A297704 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A239488.P15279728754119185816

/-!
# A239490: Numbers n such that Sum_{i=1..j} 1/pn(i) + Sum_{i=1..k} 1/pd(i) is an integer, where pn are the prime factors of n and pd the prime factors of the arithmetic derivative of n, both counted with multiplicity.

The programs for A239490, there is no canonical definition to state claims against.
-/

/-! ## A239490.P13531719715691168903

`A270652(A193722(2^n))^A270652(n+1)`
-/

namespace A239490.P13531719715691168903
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A270652 (A193722 (2 ^ n)).toNat : ℚ) ^ (A270652 (n + 1) : ℤ)

end

end A239490.P13531719715691168903

/-!
# A239491: Numbers n such that Sum_{i=1..j} 1/pn(i) - Sum_{i=1..k} 1/pd(i) is an integer, where pn are the prime factors of n and pd the prime factors of the arithmetic derivative of n, both counted with multiplicity.

The programs for A239491, there is no canonical definition to state claims against.
-/

/-! ## A239491.P13400105137185736798

`A239490(∑[A000001(n)!])`
-/

namespace A239491.P13400105137185736798
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A000001 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239490 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A239491.P13400105137185736798

/-! ## A239491.P12509451452423200221

`A239490(record[A005447(n)+n])`
-/

namespace A239491.P12509451452423200221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005447 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239490 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A239491.P12509451452423200221

/-! ## A239491.P14179823582985198720

`filter[A239490(n+1), A359552(#)]`
-/

namespace A239491.P14179823582985198720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239490 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359552 (f1 j).toNat = 1) n)

end

end A239491.P14179823582985198720

/-!
# A239492: The fifth bicycle lock sequence: a(n) is the maximum value of min{x*y, (5-x)*(n-y)} over 0 <= x <= 5, 0 <= y <= n for integers x, y.

The programs for A239492, the canonical program `A239492.P11492938459902158017` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A239492 has offset 0).

The definition of A239492 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A239492.P11492938459902158017

`Δ[floor(3/5*(1-n)²)]`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A239492

/-- `Δ[floor(3/5*(1-n)²)]` -/
def P11492938459902158017.Spec : Prop :=
  ∀ n, P11492938459902158017.a n = A239492 n

theorem P11492938459902158017.correct : P11492938459902158017.Spec := by
  intro n
  simp only [A239492]

end A239492

/-! ## A239492.P12444082740187523710

`a(n-5)+6` with `a(0)=0, a(1)=0, a(2)=2, a(3)=3, a(4)=4`
-/

namespace A239492.P12444082740187523710
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 2, 3, 4] fun n a =>
  a (n - 5) + 6

end

end A239492.P12444082740187523710

namespace A239492

/-- `a(n-5)+6` -/
def P12444082740187523710.Spec : Prop :=
  ∀ n, (P12444082740187523710.a n : ℤ) = A239492 n

end A239492

/-! ## A239492.P12811653838167959653

`∑[floor(a(n-5))]` with `a(0)=0, a(1)=0, a(2)=2, a(3)=1, a(4)=1, a(5)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A239492.P12811653838167959653
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 2, 1, 1, 2] fun n f1 =>
  f1 (n - 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A239492.P12811653838167959653

namespace A239492

/-- `∑[floor(a(n-5))]` -/
def P12811653838167959653.Spec : Prop :=
  ∀ n, (P12811653838167959653.a n : ℤ) = A239492 n

end A239492

/-! ## A239492.P989219158801719511

`∑[(∑[n+1]²+1)%5]-2`
-/

namespace A239492.P989219158801719511
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j) ^ 2 + 1) % 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 2

end

end A239492.P989219158801719511

namespace A239492

/-- `∑[(∑[n+1]²+1)%5]-2` -/
def P989219158801719511.Spec : Prop :=
  ∀ n, P989219158801719511.a n = A239492 n

end A239492

/-! ## A239492.P13188609658513423053

`∑[a(n-5)%3]` with `a(0)=0, a(1)=0, a(2)=2, a(3)=1, a(4)=1, a(5)=2`
-/

namespace A239492.P13188609658513423053
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 2, 1, 1, 2] fun n f1 =>
  f1 (n - 5) % 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A239492.P13188609658513423053

namespace A239492

/-- `∑[a(n-5)%3]` -/
def P13188609658513423053.Spec : Prop :=
  ∀ n, (P13188609658513423053.a n : ℤ) = A239492 n

end A239492

/-! ## A239492.P5333014239021409662

`∑[2-C(a(n-1), a(n-3))]` with `a(0)=0, a(1)=0, a(2)=2`
-/

namespace A239492.P5333014239021409662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 2] fun n f1 =>
  2 - (Nat.choose (f1 (n - 1)).toNat (f1 (n - 3)).toNat : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A239492.P5333014239021409662

namespace A239492

/-- `∑[2-C(a(n-1), a(n-3))]` -/
def P5333014239021409662.Spec : Prop :=
  ∀ n, P5333014239021409662.a n = A239492 n

end A239492

/-! ## A239492.P18381069768903932813

`∑[gcd(a(a(n-3)), a(n-5))]` with `a(0)=0, a(1)=0, a(2)=2, a(3)=1, a(4)=1`
-/

namespace A239492.P18381069768903932813
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 2, 1, 1] fun n f1 =>
  Nat.gcd (f1 (f1 (n - 3))) (f1 (n - 5))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A239492.P18381069768903932813

namespace A239492

/-- `∑[gcd(a(a(n-3)), a(n-5))]` -/
def P18381069768903932813.Spec : Prop :=
  ∀ n, (P18381069768903932813.a n : ℤ) = A239492 n

end A239492

/-! ## A239492.P12094687032735192823

`3-(4%gcd(3, a(n-1))-a(n-2))` with `a(0)=0, a(1)=0`
-/

namespace A239492.P12094687032735192823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  3 - (((4 % Int.gcd 3 (a (n - 1)) : ℕ) : ℤ) - a (n - 2))

end

end A239492.P12094687032735192823

namespace A239492

/-- `3-(4%gcd(3, a(n-1))-a(n-2))` -/
def P12094687032735192823.Spec : Prop :=
  ∀ n, P12094687032735192823.a n = A239492 n

end A239492

/-! ## A239492.P17393060351374983277

`A288156(n)+A090223(n)`
-/

namespace A239492.P17393060351374983277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288156 n + A090223 n

end

end A239492.P17393060351374983277

namespace A239492

/-- `A288156(n)+A090223(n)` -/
def P17393060351374983277.Spec : Prop :=
  ∀ n, P17393060351374983277.a n = A239492 n

end A239492

/-! ## A239492.P1541618501462200358

`A047252(n+1)-A011558(n)`
-/

namespace A239492.P1541618501462200358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047252 (n + 1) - A011558 n

end

end A239492.P1541618501462200358

namespace A239492

/-- `A047252(n+1)-A011558(n)` -/
def P1541618501462200358.Spec : Prop :=
  ∀ n, P1541618501462200358.a n = A239492 n

end A239492

/-! ## A239492.P14385675593459103437

`A187318(n)+A288156(n)-n`
-/

namespace A239492.P14385675593459103437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187318 n + (A288156 n - (n : ℤ))

end

end A239492.P14385675593459103437

namespace A239492

/-- `A187318(n)+A288156(n)-n` -/
def P14385675593459103437.Spec : Prop :=
  ∀ n, P14385675593459103437.a n = A239492 n

end A239492

/-! ## A239492.P18141717805245977888

`2*A249013(n+1)-A011858(n)`
-/

namespace A239492.P18141717805245977888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A249013 (n + 1) - A011858 n

end

end A239492.P18141717805245977888

namespace A239492

/-- `2*A249013(n+1)-A011858(n)` -/
def P18141717805245977888.Spec : Prop :=
  ∀ n, P18141717805245977888.a n = A239492 n

end A239492

/-! ## A239492.P12418177415784860105

`A213635(A047253(n+1))`
-/

namespace A239492.P12418177415784860105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213635 (A047253 (n + 1)).toNat

end

end A239492.P12418177415784860105

namespace A239492

/-- `A213635(A047253(n+1))` -/
def P12418177415784860105.Spec : Prop :=
  ∀ n, P12418177415784860105.a n = A239492 n

end A239492

/-! ## A239492.P12551701241931066153

`A103221(A047263(n+1))-1+n`
-/

namespace A239492.P12551701241931066153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (A047263 (n + 1)).toNat - 1 + (n : ℤ)

end

end A239492.P12551701241931066153

namespace A239492

/-- `A103221(A047263(n+1))-1+n` -/
def P12551701241931066153.Spec : Prop :=
  ∀ n, P12551701241931066153.a n = A239492 n

end A239492

/-! ## A239492.P14708214008563156575

`A057353(A047416(n+1))`
-/

namespace A239492.P14708214008563156575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057353 (A047416 (n + 1)).toNat

end

end A239492.P14708214008563156575

namespace A239492

/-- `A057353(A047416(n+1))` -/
def P14708214008563156575.Spec : Prop :=
  ∀ n, P14708214008563156575.a n = A239492 n

end A239492

/-! ## A239492.P16416226256372224160

`A057353(A047446(n+1))`
-/

namespace A239492.P16416226256372224160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057353 (A047446 (n + 1)).toNat

end

end A239492.P16416226256372224160

namespace A239492

/-- `A057353(A047446(n+1))` -/
def P16416226256372224160.Spec : Prop :=
  ∀ n, P16416226256372224160.a n = A239492 n

end A239492

/-! ## A239492.P9721842684828806805

`A057353(A057355(n)+n)`
-/

namespace A239492.P9721842684828806805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057353 (A057355 n + (n : ℤ)).toNat

end

end A239492.P9721842684828806805

namespace A239492

/-- `A057353(A057355(n)+n)` -/
def P9721842684828806805.Spec : Prop :=
  ∀ n, P9721842684828806805.a n = A239492 n

end A239492

/-! ## A239492.P1212181086784079444

`A057353(A057357(A047301(n+1))+n)`
-/

namespace A239492.P1212181086784079444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057353 (A057357 (A047301 (n + 1)).toNat + (n : ℤ)).toNat

end

end A239492.P1212181086784079444

namespace A239492

/-- `A057353(A057357(A047301(n+1))+n)` -/
def P1212181086784079444.Spec : Prop :=
  ∀ n, P1212181086784079444.a n = A239492 n

end A239492

/-! ## A239492.P12558243573595762283

`A004523(A187318(n))`
-/

namespace A239492.P12558243573595762283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004523 (A187318 n).toNat

end

end A239492.P12558243573595762283

namespace A239492

/-- `A004523(A187318(n))` -/
def P12558243573595762283.Spec : Prop :=
  ∀ n, P12558243573595762283.a n = A239492 n

end A239492

/-! ## A239492.P1034801935506951907

`A004523(A090223(n)+n)`
-/

namespace A239492.P1034801935506951907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004523 (A090223 n + (n : ℤ)).toNat

end

end A239492.P1034801935506951907

namespace A239492

/-- `A004523(A090223(n)+n)` -/
def P1034801935506951907.Spec : Prop :=
  ∀ n, P1034801935506951907.a n = A239492 n

end A239492

/-!
# A239493: Number of (2,1)-separable partitions of n; see Comments.

The programs for A239493, there is no canonical definition to state claims against.
-/

/-! ## A239493.P17699009278316879432

`A008484(n)+Δ[A008483(n)]`
-/

namespace A239493.P17699009278316879432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008483 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008484 n + (f1 (n + 1) - f1 n)

end

end A239493.P17699009278316879432

/-! ## A239493.P13316763769858536967

`Δ[A027336(n)]-A026796(n)`
-/

namespace A239493.P13316763769858536967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027336 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A026796 n

end

end A239493.P13316763769858536967

/-! ## A239493.P16454617875834384101

`A008483(n+1)-A026796(n)`
-/

namespace A239493.P16454617875834384101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008483 (n + 1) - A026796 n

end

end A239493.P16454617875834384101

/-! ## A239493.P6727548850023729364

`A026796(n+4)-A026796(n)`
-/

namespace A239493.P6727548850023729364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026796 (n + 4) - A026796 n

end

end A239493.P6727548850023729364

/-! ## A239493.P11514587479173468975

`A008484(n)+Δ[A179184(n)+A165652(n)]`
-/

namespace A239493.P11514587479173468975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179184 n + A165652 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008484 n + (f1 (n + 1) - f1 n)

end

end A239493.P11514587479173468975

/-! ## A239493.P15942392817474414744

`A121081(n+1)-A121081(A233583(n+1))`
-/

namespace A239493.P15942392817474414744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121081 (n + 1) - A121081 (A233583 (n + 1)).toNat

end

end A239493.P15942392817474414744

/-! ## A239493.P7960320758174397146

`A008483(n+1)+A008484(n)-A008483(n)`
-/

namespace A239493.P7960320758174397146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008483 (n + 1) + (A008484 n - A008483 n)

end

end A239493.P7960320758174397146

/-! ## A239493.P12238481860320323108

`Δ[A008483(n)]+A185224(n)+A185118(2*n)`
-/

namespace A239493.P12238481860320323108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008483 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (A185224 n + A185118 (2 * n))

end

end A239493.P12238481860320323108

/-!
# A239494: Number of (3,1)-separable partitions of n; see Comments.

The programs for A239494, there is no canonical definition to state claims against.
-/

/-! ## A239494.P738330998964320679

`A008679(A003056(record[A038207(n)]))`
-/

namespace A239494.P738330998964320679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038207 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008679 (A003056 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat).toNat

end

end A239494.P738330998964320679

/-! ## A239494.P17612104393650976312

`A008679(A103128(record[A038207(n)]))`
-/

namespace A239494.P17612104393650976312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038207 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008679 (A103128 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat).toNat

end

end A239494.P17612104393650976312

/-!
# A239497: Number of partitions p of n such that if h = min(p), then h is an (h,1)-separator of p; see Comments.

The programs for A239497, there is no canonical definition to state claims against.
-/

/-! ## A239497.P16009125553308423372

`A341519(A007679(n+1))+A339382(A111284(n+1))`
-/

namespace A239497.P16009125553308423372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341519 (A007679 (n + 1)).toNat + A339382 (A111284 (n + 1)).toNat

end

end A239497.P16009125553308423372

/-!
# A239498: Number of partitions p of n such that if h = 2*min(p), then h is an (h,1)-separator of p; see Comments.

The programs for A239498, there is no canonical definition to state claims against.
-/

/-! ## A239498.P2577410620466293075

`A376560(A320054(n))%A324744(n)`
-/

namespace A239498.P2577410620466293075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A376560 (A320054 n).toNat) (A324744 n)

end

end A239498.P2577410620466293075

/-! ## A239498.P9266070183315834216

`A035468(A054406(n+1))%A008982(n)`
-/

namespace A239498.P9266070183315834216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A035468 (A054406 (n + 1)).toNat) (A008982 n)

end

end A239498.P9266070183315834216

/-! ## A239498.P5357521420277056224

`A282494(3*n+2)%A000120(A360241(3*(n+1)))`
-/

namespace A239498.P5357521420277056224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A282494 (3 * n + 2)) (A000120 (A360241 (3 * (n + 1))).toNat)

end

end A239498.P5357521420277056224

/-! ## A239498.P1042362856048681503

`A306383(A101822(n))`
-/

namespace A239498.P1042362856048681503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306383 (A101822 n).toNat

end

end A239498.P1042362856048681503

/-! ## A239498.P9942402717850474019

`A220659(or(∑{d}[n+1, #], A049962(n+1)))`
-/

namespace A239498.P9942402717850474019
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220659 (Int.lor ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) (A049962 (n + 1))).toNat

end

end A239498.P9942402717850474019

