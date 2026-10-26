import SequenceMachineLib
import Mathlib.Tactic
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
import Seq.B000.C010
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
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C036
import Seq.B000.C040
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
import Seq.B013.C000
import Seq.B014.C000
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
import Seq.Opaque.C024

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A091600: Expansion of solution to xA(x)(A(x)-x+1)=A(xA(x)).

The programs for A091600, there is no canonical definition to state claims against.
-/

/-! ## A091600.P7849297736116410419

`A165190(A000642(n+4)+n)`
-/

namespace A091600.P7849297736116410419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165190 (A000642 (n + 4) + (n : ℤ)).toNat

end

end A091600.P7849297736116410419

/-! ## A091600.P16633698450852920101

`ceil(A307820(n+1)/A307813(n+4))`
-/

namespace A091600.P16633698450852920101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A307820 (n + 1) : ℚ) / (A307813 (n + 4) : ℚ)⌉

end

end A091600.P16633698450852920101

/-! ## A091600.P6519840021760587506

`∑[A059571(∑[A006252(n)])]`
-/

namespace A091600.P6519840021760587506
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006252 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059571 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A091600.P6519840021760587506

/-! ## A091600.P14548051890416499857

`A318008(round(sqrt(n²+1)))%A318017(n+1)`
-/

namespace A091600.P14548051890416499857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A318008 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat) (A318017 (n + 1))

end

end A091600.P14548051890416499857

/-! ## A091600.P11174099514380537662

`A353852(A335464(n)+A030190(n))`
-/

namespace A091600.P11174099514380537662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353852 (A335464 n + A030190 n).toNat

end

end A091600.P11174099514380537662

/-!
# A091601: Number of compositions (ordered partitions) of n with designated summands.

The programs for A091601, there is no canonical definition to state claims against.
-/

/-! ## A091601.P13005384264327834411

`A243283(A336990(n)+A268419(n+1))`
-/

namespace A091601.P13005384264327834411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243283 (A336990 n + A268419 (n + 1)).toNat

end

end A091601.P13005384264327834411

/-! ## A091601.P7393579724338135616

`A249728(A149381(n))`
-/

namespace A091601.P7393579724338135616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249728 (A149381 n).toNat

end

end A091601.P7393579724338135616

/-! ## A091601.P2144133728741274760

`A185283(A062367(n!))`
-/

namespace A091601.P2144133728741274760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185283 (A062367 (Nat.factorial n)).toNat

end

end A091601.P2144133728741274760

/-! ## A091601.P13357853368903028086

`A051742(xor(2, A006134(n)))`
-/

namespace A091601.P13357853368903028086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051742 (Int.xor 2 (A006134 n)).toNat

end

end A091601.P13357853368903028086

/-!
# A091602: Triangle: T(n,k) is the number of partitions of n such that some part is repeated k times and no part is repeated more than k times.

The programs for A091602, there is no canonical definition to state claims against.
-/

/-! ## A091602.P17195000381646879703

`A287272(3*A091604(n+1))`
-/

namespace A091602.P17195000381646879703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287272 (3 * A091604 (n + 1)).toNat

end

end A091602.P17195000381646879703

/-! ## A091602.P3718287452166958876

`A167439(A316273(n+1)+A105820(n+1))`
-/

namespace A091602.P3718287452166958876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167439 (A316273 (n + 1) + A105820 (n + 1)).toNat

end

end A091602.P3718287452166958876

/-! ## A091602.P9555897142797969751

`A167439(A336087(n+1)+A316273(n+1))`
-/

namespace A091602.P9555897142797969751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167439 (A336087 (n + 1) + A316273 (n + 1)).toNat

end

end A091602.P9555897142797969751

/-! ## A091602.P18078497867191209214

`A167439(or(A316273(n+1), A335162(n+1)))`
-/

namespace A091602.P18078497867191209214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167439 (Int.lor (A316273 (n + 1)) (A335162 (n + 1))).toNat

end

end A091602.P18078497867191209214

/-! ## A091602.P6530534269167888317

`A124769(A091615(n+1))`
-/

namespace A091602.P6530534269167888317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124769 (A091615 (n + 1)).toNat

end

end A091602.P6530534269167888317

/-!
# A091603: Matrix inverse of triangle A091602.

The programs for A091603, there is no canonical definition to state claims against.
-/

/-! ## A091603.P10616303398855857080

`Δ[A008683(A026150(n))-A029337(n)]`
-/

namespace A091603.P10616303398855857080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A026150 n).toNat - A029337 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A091603.P10616303398855857080

/-! ## A091603.P1348423102287100777

`A117165(lt[A002183(n+1), A299970(n)])`
-/

namespace A091603.P1348423102287100777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002183 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299970 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117165 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A091603.P1348423102287100777

/-!
# A091604: Matrix square of triangle A091602.

The programs for A091604, there is no canonical definition to state claims against.
-/

/-! ## A091604.P16022508766732462598

`A232335(n+1)%Δ[A136678(A187829(n+1))]`
-/

namespace A091604.P16022508766732462598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136678 (A187829 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A232335 (n + 1)) (f1 (n + 1) - f1 n)

end

end A091604.P16022508766732462598

/-!
# A091605: Column 2 of triangle A091602.

The programs for A091605, there is no canonical definition to state claims against.
-/

/-! ## A091605.P13492448393174318558

`A000726(n+2)-A000009(n+2)`
-/

namespace A091605.P13492448393174318558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000726 (n + 2) - A000009 (n + 2)

end

end A091605.P13492448393174318558

/-! ## A091605.P5386293990309728119

`A000726(n+2)-Δ[A026906(n+1)]`
-/

namespace A091605.P5386293990309728119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026906 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000726 (n + 2) - (f1 (n + 1) - f1 n)

end

end A091605.P5386293990309728119

/-! ## A091605.P11808744181903031302

`A000726(n+2)-Δ[A036469(n+1)]`
-/

namespace A091605.P11808744181903031302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036469 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000726 (n + 2) - (f1 (n + 1) - f1 n)

end

end A091605.P11808744181903031302

/-! ## A091605.P11677213078192827593

`A036469(n+1)+A000726(n+2)-A036469(n+2)`
-/

namespace A091605.P11677213078192827593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036469 (n + 1) + (A000726 (n + 2) - A036469 (n + 2))

end

end A091605.P11677213078192827593

/-! ## A091605.P16038435621848041617

`A047967(n+2)-A295341(n+2)`
-/

namespace A091605.P16038435621848041617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047967 (n + 2) - A295341 (n + 2)

end

end A091605.P16038435621848041617

/-! ## A091605.P1592950036060743331

`A000726(n+2)-A035457(2*(n+2))`
-/

namespace A091605.P1592950036060743331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000726 (n + 2) - A035457 (2 * (n + 2))

end

end A091605.P1592950036060743331

/-! ## A091605.P17807821282616382589

`A091602(∑[n+1]+2)`
-/

namespace A091605.P17807821282616382589
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091602 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A091605.P17807821282616382589

/-!
# A091606: Column 3 of triangle A091602.

The programs for A091606, there is no canonical definition to state claims against.
-/

/-! ## A091606.P4898743774894482525

`A001935(n+3)-A000726(n+3)`
-/

namespace A091606.P4898743774894482525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001935 (n + 3) - A000726 (n + 3)

end

end A091606.P4898743774894482525

/-! ## A091606.P10035392129176809743

`A295341(n+3)-A295342(n+3)`
-/

namespace A091606.P10035392129176809743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295341 (n + 3) - A295342 (n + 3)

end

end A091606.P10035392129176809743

/-! ## A091606.P12347724074383288562

`A091602(∑[n+2]+4)`
-/

namespace A091606.P12347724074383288562
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091602 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A091606.P12347724074383288562

/-! ## A091606.P11572003492949658155

`or(char[2], A091602(A167614(n+1)))`
-/

namespace A091606.P11572003492949658155
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A091602 (A167614 (n + 1)).toNat)

end

end A091606.P11572003492949658155

/-! ## A091606.P3000435416866494853

`(A091602(A167499(n)+n)^(1/2))²`
-/

namespace A091606.P3000435416866494853
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((A091602 (A167499 n + (n : ℤ)).toNat : ℝ) ^ ((1 : ℚ) / 2 : ℝ)) ^ 2

end

end A091606.P3000435416866494853

/-! ## A091606.P4169954241285896623

`A091602(A167499(n)+n)%A056469(n)`
-/

namespace A091606.P4169954241285896623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A091602 (A167499 n + (n : ℤ)).toNat) (A056469 n)

end

end A091606.P4169954241285896623

/-! ## A091606.P13324631418088566577

`A091602(A167614(n+1))+A000007(n+1)`
-/

namespace A091606.P13324631418088566577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091602 (A167614 (n + 1)).toNat + A000007 (n + 1)

end

end A091606.P13324631418088566577

/-! ## A091606.P18209088299341376953

`A014963(18*n+6)*A091602(A167499(n)+n)`
-/

namespace A091606.P18209088299341376953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (18 * n + 6) * A091602 (A167499 n + (n : ℤ)).toNat

end

end A091606.P18209088299341376953

/-! ## A091606.P7806205754134691937

`val(A005117(n+2), 3)!*A091602(A167614(n+1))`
-/

namespace A091606.P7806205754134691937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (SequenceMachineLib.valuation (A005117 (n + 2)).toNat 3) : ℤ) * A091602 (A167614 (n + 1)).toNat

end

end A091606.P7806205754134691937

/-!
# A091607: Column 4 of triangle A091602.

The programs for A091607, there is no canonical definition to state claims against.
-/

/-! ## A091607.P16645123831718933980

`A035959(n+4)-A001935(n+4)`
-/

namespace A091607.P16645123831718933980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035959 (n + 4) - A001935 (n + 4)

end

end A091607.P16645123831718933980

/-! ## A091607.P7318676211489708224

`A091602(∑[n+3]+7)`
-/

namespace A091607.P7318676211489708224
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091602 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A091607.P7318676211489708224

/-! ## A091607.P15306572478496217304

`or(char[2], A091602(A052905(n)+9))`
-/

namespace A091607.P15306572478496217304
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A091602 (A052905 n + 9).toNat)

end

end A091607.P15306572478496217304

/-! ## A091607.P9881686117721432641

`or(char[2], A091602(A167614(n+2)+1))`
-/

namespace A091607.P9881686117721432641
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A091602 (A167614 (n + 2) + 1).toNat)

end

end A091607.P9881686117721432641

/-! ## A091607.P2266589373080201124

`lcm(log2(1/2), A091602(A055998(n+1)+7))`
-/

namespace A091607.P2266589373080201124
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (SequenceMachineLib.roundAway (Real.logb 2 ((1 : ℚ) / 2 : ℝ))) (A091602 (A055998 (n + 1) + 7).toNat)

end

end A091607.P2266589373080201124

/-! ## A091607.P8168780788819393307

`A091602(A167614(n+2)+1)%A156279(n)`
-/

namespace A091607.P8168780788819393307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A091602 (A167614 (n + 2) + 1).toNat) (A156279 n)

end

end A091607.P8168780788819393307

/-! ## A091607.P1744370378846083085

`A091602(A052905(n)+9)%A000041(n+2)`
-/

namespace A091607.P1744370378846083085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A091602 (A052905 n + 9).toNat) (A000041 (n + 2))

end

end A091607.P1744370378846083085

/-! ## A091607.P13087060825545894968

`A091602(A167614(n+2)+1)+A000035(4*n)`
-/

namespace A091607.P13087060825545894968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091602 (A167614 (n + 2) + 1).toNat + A000035 (4 * n)

end

end A091607.P13087060825545894968

/-! ## A091607.P7347921637761388615

`A091602(A000096(n+2)+5)%A000041(n+2)`
-/

namespace A091607.P7347921637761388615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A091602 (A000096 (n + 2) + 5).toNat) (A000041 (n + 2))

end

end A091607.P7347921637761388615

/-! ## A091607.P8092183938785069107

`A091602(A055998(n+1)+7)%A000041(n+2)`
-/

namespace A091607.P8092183938785069107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A091602 (A055998 (n + 1) + 7).toNat) (A000041 (n + 2))

end

end A091607.P8092183938785069107

/-! ## A091607.P11000573038217016565

`A020639(2*(n+1))+A091602(A167614(n+2)+1)-2`
-/

namespace A091607.P11000573038217016565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (2 * (n + 1)) + (A091602 (A167614 (n + 2) + 1).toNat - 2)

end

end A091607.P11000573038217016565

/-! ## A091607.P17811787820008550893

`A081373(A145015(n))*A091602(A167614(n+2)+1)`
-/

namespace A091607.P17811787820008550893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081373 (A145015 n).toNat * A091602 (A167614 (n + 2) + 1).toNat

end

end A091607.P17811787820008550893

/-!
# A091608: Column 5 of triangle A091602.

The programs for A091608, there is no canonical definition to state claims against.
-/

/-! ## A091608.P14999163790794377008

`A219601(n+5)-A035959(n+5)`
-/

namespace A091608.P14999163790794377008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219601 (n + 5) - A035959 (n + 5)

end

end A091608.P14999163790794377008

/-! ## A091608.P16411184233453251033

`A091602(∑[n+4]+11)`
-/

namespace A091608.P16411184233453251033
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091602 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A091608.P16411184233453251033

/-! ## A091608.P8507518254992068925

`or(char[2], A091602(A167499(n+3)))`
-/

namespace A091608.P8507518254992068925
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A091602 (A167499 (n + 3)).toNat)

end

end A091608.P8507518254992068925

/-! ## A091608.P15884700285692935638

`or(char[2], A091602(A000217(n+4)+5))`
-/

namespace A091608.P15884700285692935638
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A091602 (A000217 (n + 4) + 5).toNat)

end

end A091608.P15884700285692935638

/-! ## A091608.P4491076938925642853

`A091602(A167499(n+3))+A000007(n+1)`
-/

namespace A091608.P4491076938925642853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091602 (A167499 (n + 3)).toNat + A000007 (n + 1)

end

end A091608.P4491076938925642853

/-! ## A091608.P11579610480691392539

`A091602(A167499(n+3))%A000041(n+2)`
-/

namespace A091608.P11579610480691392539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A091602 (A167499 (n + 3)).toNat) (A000041 (n + 2))

end

end A091608.P11579610480691392539

/-! ## A091608.P5845907662797364978

`lcm(A056594(2*n), A091602(A167499(n+3)))`
-/

namespace A091608.P5845907662797364978
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A056594 (2 * n)) (A091602 (A167499 (n + 3)).toNat)

end

end A091608.P5845907662797364978

/-! ## A091608.P16087890369847430857

`A007318(C(2, n))*A091602(A167499(n+3))`
-/

namespace A091608.P16087890369847430857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A091602 (A167499 (n + 3)).toNat

end

end A091608.P16087890369847430857

/-! ## A091608.P18276455639179213534

`A091602(A000217(n+4)+5)%A000041(n+2)`
-/

namespace A091608.P18276455639179213534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A091602 (A000217 (n + 4) + 5).toNat) (A000041 (n + 2))

end

end A091608.P18276455639179213534

/-! ## A091608.P8157765617652787566

`A007318(C(3, n))+A091602(A167499(n+3))-1`
-/

namespace A091608.P8157765617652787566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 3 n) + (A091602 (A167499 (n + 3)).toNat - 1)

end

end A091608.P8157765617652787566

/-! ## A091608.P13831142441491033599

`A000041(C(2, n+2))*A091602(A167499(n+3))`
-/

namespace A091608.P13831142441491033599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 (n + 2)) * A091602 (A167499 (n + 3)).toNat

end

end A091608.P13831142441491033599

/-! ## A091608.P17021303335603111281

`A010892(3*n)²*A091602(A000217(n+4)+5)`
-/

namespace A091608.P17021303335603111281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 (3 * n) ^ 2 * A091602 (A000217 (n + 4) + 5).toNat

end

end A091608.P17021303335603111281

/-! ## A091608.P1315172849525446285

`A091602(Δ[A006503(n+1)]+8)%A206610(n+1)`
-/

namespace A091608.P1315172849525446285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006503 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A091602 (f1 (n + 1) - f1 n + 8).toNat) (A206610 (n + 1))

end

end A091608.P1315172849525446285

/-! ## A091608.P5519805063963993469

`A008683(-or(n, -2))²*A091602(A167499(n+3))`
-/

namespace A091608.P5519805063963993469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (-Int.lor (n : ℤ) (-2)).toNat ^ 2 * A091602 (A167499 (n + 3)).toNat

end

end A091608.P5519805063963993469

/-! ## A091608.P3336203017458564825

`A014963(C(n+2, 2))*A091602(A000217(n+4)+5)`
-/

namespace A091608.P3336203017458564825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (Nat.choose (n + 2) 2) * A091602 (A000217 (n + 4) + 5).toNat

end

end A091608.P3336203017458564825

/-! ## A091608.P858772555652724824

`A091602(A167499(n+3))+A008683(A270299(n+1))`
-/

namespace A091608.P858772555652724824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091602 (A167499 (n + 3)).toNat + A008683 (A270299 (n + 1)).toNat

end

end A091608.P858772555652724824

/-! ## A091608.P6863714697725649136

`A008683(A001748(n+1))*A091602(A167499(n+3))`
-/

namespace A091608.P6863714697725649136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A001748 (n + 1)).toNat * A091602 (A167499 (n + 3)).toNat

end

end A091608.P6863714697725649136

/-! ## A091608.P3649970408791672995

`A091602(A000217(n+4)+5)/A001222(A002313(n+2))`
-/

namespace A091608.P3649970408791672995
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A091602 (A000217 (n + 4) + 5).toNat : ℚ) / (A001222 (A002313 (n + 2)).toNat : ℚ)

end

end A091608.P3649970408791672995

/-! ## A091608.P10824012259712976607

`A000045(A020639(2*(n+1)))*A091602(A000217(n+4)+5)`
-/

namespace A091608.P10824012259712976607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A020639 (2 * (n + 1))).toNat * A091602 (A000217 (n + 4) + 5).toNat

end

end A091608.P10824012259712976607

/-!
# A091609: Column 6 of triangle A091602.

The programs for A091609, there is no canonical definition to state claims against.
-/

/-! ## A091609.P13770402881641779371

`A035985(n+6)-A219601(n+6)`
-/

namespace A091609.P13770402881641779371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035985 (n + 6) - A219601 (n + 6)

end

end A091609.P13770402881641779371

/-! ## A091609.P14235278513650940919

`A091602(∑[n+5]+16)`
-/

namespace A091609.P14235278513650940919
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091602 (∑ j ∈ Finset.range (n + 1), f1 j + 16)

end

end A091609.P14235278513650940919

/-! ## A091609.P14136600331126649837

`or(char[2], A091602(A133263(n+5)+4))`
-/

namespace A091609.P14136600331126649837
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A091602 (A133263 (n + 5) + 4).toNat)

end

end A091609.P14136600331126649837

/-! ## A091609.P9259300992752508192

`A091602(A166136(n+4))+A000007(n+1)`
-/

namespace A091609.P9259300992752508192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091602 (A166136 (n + 4)).toNat + A000007 (n + 1)

end

end A091609.P9259300992752508192

/-! ## A091609.P10088145830396151721

`A091602(A166136(n+4))%A000041(n+2)`
-/

namespace A091609.P10088145830396151721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A091602 (A166136 (n + 4)).toNat) (A000041 (n + 2))

end

end A091609.P10088145830396151721

/-! ## A091609.P12957409283530133904

`A000041(C(2, n))*A091602(A166136(n+4))`
-/

namespace A091609.P12957409283530133904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 n) * A091602 (A166136 (n + 4)).toNat

end

end A091609.P12957409283530133904

/-! ## A091609.P7375751658376468941

`A007318(C(2, n))*A091602(A166136(n+4))`
-/

namespace A091609.P7375751658376468941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A091602 (A166136 (n + 4)).toNat

end

end A091609.P7375751658376468941

/-! ## A091609.P10470064261451862656

`char[A004475(n)]*A091602(A133263(n+5)+4)`
-/

namespace A091609.P10470064261451862656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004475 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A091602 (A133263 (n + 5) + 4).toNat

end

end A091609.P10470064261451862656

/-! ## A091609.P10369628784828578286

`A091602(A133263(n+5)+4)+val(A005408(n), 4)`
-/

namespace A091609.P10369628784828578286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091602 (A133263 (n + 5) + 4).toNat + (SequenceMachineLib.valuation (A005408 n).toNat 4 : ℤ)

end

end A091609.P10369628784828578286

/-! ## A091609.P4353993955093934294

`A091602(A133263(n+5)+4)%A018900(n+1)²`
-/

namespace A091609.P4353993955093934294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A091602 (A133263 (n + 5) + 4).toNat) (A018900 (n + 1) ^ 2)

end

end A091609.P4353993955093934294

/-! ## A091609.P8024722517460242722

`ceil(A091602(A133263(n+5)+4)-A057427(n)/2)`
-/

namespace A091609.P8024722517460242722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A091602 (A133263 (n + 5) + 4).toNat : ℚ) - (A057427 n : ℚ) / 2⌉

end

end A091609.P8024722517460242722

/-! ## A091609.P11431380297975813754

`A000203(gcd(n, n+1))*A091602(A133263(n+5)+4)`
-/

namespace A091609.P11431380297975813754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (Nat.gcd n (n + 1)) * A091602 (A133263 (n + 5) + 4).toNat

end

end A091609.P11431380297975813754

/-! ## A091609.P16836358979506378165

`(1-A007877(2*n))²*A091602(A133263(n+5)+4)`
-/

namespace A091609.P16836358979506378165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A007877 (2 * n)) ^ 2 * A091602 (A133263 (n + 5) + 4).toNat

end

end A091609.P16836358979506378165

/-! ## A091609.P11585442082367399707

`A091602(A166136(n+4))+A008683(4*A007318(n))`
-/

namespace A091609.P11585442082367399707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091602 (A166136 (n + 4)).toNat + A008683 (4 * A007318 n).toNat

end

end A091609.P11585442082367399707

/-!
# A091610: Row sums of triangle A091604.

The programs for A091610, there is no canonical definition to state claims against.
-/

/-! ## A091610.P1477121920010078287

`A331383(A022166(2*n))+A006169(n+1)`
-/

namespace A091610.P1477121920010078287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331383 (A022166 (2 * n)).toNat + A006169 (n + 1)

end

end A091610.P1477121920010078287

/-! ## A091610.P12969840160495879151

`A035936(A035951(n+1)*A035979(3*n+1))`
-/

namespace A091610.P12969840160495879151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035936 (A035951 (n + 1) * A035979 (3 * n + 1)).toNat

end

end A091610.P12969840160495879151

/-! ## A091610.P10663885823784679201

`A035936(A035957(n+1)*A035979(3*n+1))`
-/

namespace A091610.P10663885823784679201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035936 (A035957 (n + 1) * A035979 (3 * n + 1)).toNat

end

end A091610.P10663885823784679201

/-! ## A091610.P1395509014287831732

`A035936(A035964(n+1)*A035979(3*n+1))`
-/

namespace A091610.P1395509014287831732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035936 (A035964 (n + 1) * A035979 (3 * n + 1)).toNat

end

end A091610.P1395509014287831732

/-! ## A091610.P18347144502496976192

`A035936(A035979(3*n+1)*A035981(n+1))`
-/

namespace A091610.P18347144502496976192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035936 (A035979 (3 * n + 1) * A035981 (n + 1)).toNat

end

end A091610.P18347144502496976192

/-!
# A091611: Column 1 of triangle A091604.

The programs for A091611, there is no canonical definition to state claims against.
-/

/-! ## A091611.P1279098581960308814

`A091604(∑[n]+1)`
-/

namespace A091611.P1279098581960308814
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091604 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A091611.P1279098581960308814

/-! ## A091611.P4747881290017012481

`record[A091604(n+1)]`
-/

namespace A091611.P4747881290017012481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091604 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A091611.P4747881290017012481

/-! ## A091611.P6879913401878417475

`A091604(A000124(n))+char[20]`
-/

namespace A091611.P6879913401878417475
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  20

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091604 (A000124 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A091611.P6879913401878417475

/-! ## A091611.P17995894613763690187

`A091604(A000124(n))%A245128(n)`
-/

namespace A091611.P17995894613763690187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A091604 (A000124 n).toNat) (A245128 (n + 37))

end

end A091611.P17995894613763690187

/-! ## A091611.P12703823693199253223

`A091604(A000124(n))/A178334(2*n+1)`
-/

namespace A091611.P12703823693199253223
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A091604 (A000124 n).toNat : ℚ) / (A178334 (2 * n + 1) : ℚ)

end

end A091611.P12703823693199253223

/-!
# A091612: Column 1 of triangle A091603.

The programs for A091612, there is no canonical definition to state claims against.
-/

/-! ## A091612.P11635805982718775533

`A091603(∑[n]+1)`
-/

namespace A091612.P11635805982718775533
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091603 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A091612.P11635805982718775533

/-! ## A091612.P5049376923477580874

`A091603(A000124(n))%19`
-/

namespace A091612.P5049376923477580874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A091603 (A000124 n).toNat) 19

end

end A091612.P5049376923477580874

/-! ## A091612.P17323045750555078120

`A007318(∑[n])*A091603(A000124(n))`
-/

namespace A091612.P17323045750555078120
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A091603 (A000124 n).toNat

end

end A091612.P17323045750555078120

/-! ## A091612.P17753912374437503062

`A091603(A000124(n))/A007318(C(2, n))`
-/

namespace A091612.P17753912374437503062
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A091603 (A000124 n).toNat : ℚ) / (A007318 (Nat.choose 2 n) : ℚ)

end

end A091612.P17753912374437503062

/-! ## A091612.P13334119793002615183

`A007318(C(n, 2))²*A091603(A000124(n))`
-/

namespace A091612.P13334119793002615183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose n 2) ^ 2 * A091603 (A000124 n).toNat

end

end A091612.P13334119793002615183

/-! ## A091612.P18439874611489017320

`A091603(A000124(n))/and(1, A007318(n))!`
-/

namespace A091612.P18439874611489017320
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A091603 (A000124 n).toNat : ℚ) / (Nat.factorial (Int.land 1 (A007318 n)).toNat : ℚ)

end

end A091612.P18439874611489017320

/-! ## A091612.P16605082103233672399

`A091603(A000124(n))+A008683(4*(n+1))`
-/

namespace A091612.P16605082103233672399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091603 (A000124 n).toNat + A008683 (4 * (n + 1))

end

end A091612.P16605082103233672399

/-! ## A091612.P3864466854848941319

`and(1, A000040(n+2))*A091603(A000124(n))`
-/

namespace A091612.P3864466854848941319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A000040 (n + 2)) * A091603 (A000124 n).toNat

end

end A091612.P3864466854848941319

/-! ## A091612.P18052086160826814358

`A018252(gcd(n, n+1))*A091603(A000124(n))`
-/

namespace A091612.P18052086160826814358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (Nat.gcd n (n + 1)) * A091603 (A000124 n).toNat

end

end A091612.P18052086160826814358

/-!
# A091613: Triangle: T(n,k) = number of compositions (ordered partitions) of n such that some part is repeated consecutively k times and no part is repeated consecutively more than k times.

The programs for A091613, there is no canonical definition to state claims against.
-/

/-! ## A091613.P757134602370288960

`A137579(A251761(n))+A106356(n+1)`
-/

namespace A091613.P757134602370288960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137579 (A251761 n).toNat + A106356 (n + 1)

end

end A091613.P757134602370288960

/-! ## A091613.P12718642928601841655

`A335520(A051613(3*n+4))+A106356(n+1)`
-/

namespace A091613.P12718642928601841655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335520 (A051613 (3 * n + 4)).toNat + A106356 (n + 1)

end

end A091613.P12718642928601841655

/-!
# A091616: Number of compositions (ordered partitions) of n such that some part is repeated consecutively 2 times and no part is repeated consecutively more than 2 times.

The programs for A091616, there is no canonical definition to state claims against.
-/

/-! ## A091616.P9138788075277916886

`A128695(n+2)-A003242(n+2)`
-/

namespace A091616.P9138788075277916886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128695 (n + 2) - A003242 (n + 2)

end

end A091616.P9138788075277916886

/-! ## A091616.P12634525723175474818

`A091613(∑[n+1]+2)`
-/

namespace A091616.P12634525723175474818
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091613 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A091616.P12634525723175474818

/-! ## A091616.P13765524057346282869

`lcm(A010892(n²), A091613(A000217(n+1)+2))`
-/

namespace A091616.P13765524057346282869
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A010892 (n ^ 2)) (A091613 (A000217 (n + 1) + 2).toNat)

end

end A091616.P13765524057346282869

/-! ## A091616.P13495891321307561133

`A091613(A000217(n+1)+2)+A000007(n+1)`
-/

namespace A091616.P13495891321307561133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091613 (A000217 (n + 1) + 2).toNat + A000007 (n + 1)

end

end A091616.P13495891321307561133

/-! ## A091616.P10842493112866049081

`A008836((n+1)²)*A091613(A000217(n+1)+2)`
-/

namespace A091616.P10842493112866049081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 ((n + 1) ^ 2) * A091613 (A000217 (n + 1) + 2).toNat

end

end A091616.P10842493112866049081

/-! ## A091616.P1024023931286758100

`A091613(A000217(n+1)+2)/A008836(n+1)²`
-/

namespace A091616.P1024023931286758100
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A091613 (A000217 (n + 1) + 2).toNat : ℚ) / (A008836 (n + 1) ^ 2 : ℚ)

end

end A091616.P1024023931286758100

/-! ## A091616.P1411635671057530730

`A010892(6*(n+1))*A091613(A000217(n+1)+2)`
-/

namespace A091616.P1411635671057530730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 (6 * (n + 1)) * A091613 (A000217 (n + 1) + 2).toNat

end

end A091616.P1411635671057530730

/-! ## A091616.P6674614735108943978

`A003415(A020639(n+2))*A091613(A000217(n+1)+2)`
-/

namespace A091616.P6674614735108943978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A020639 (n + 2)).toNat * A091613 (A000217 (n + 1) + 2).toNat

end

end A091616.P6674614735108943978

/-! ## A091616.P11869765048453104435

`A014963(A005893(n))*A091613(A000217(n+1)+2)`
-/

namespace A091616.P11869765048453104435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A005893 n).toNat * A091613 (A000217 (n + 1) + 2).toNat

end

end A091616.P11869765048453104435

/-!
# A091617: Number of compositions (ordered partitions) of n such that some part is repeated consecutively 3 times and no part is repeated consecutively more than 3 times.

The programs for A091617, there is no canonical definition to state claims against.
-/

/-! ## A091617.P5456765256158763417

`A232394(n+3)-A128695(n+3)`
-/

namespace A091617.P5456765256158763417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232394 (n + 3) - A128695 (n + 3)

end

end A091617.P5456765256158763417

/-! ## A091617.P14334522269928097892

`A091613(∑[n+2]+4)`
-/

namespace A091617.P14334522269928097892
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091613 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A091617.P14334522269928097892

/-! ## A091617.P16265527666650649678

`or(char[3], A091613(A167614(n+1)))`
-/

namespace A091617.P16265527666650649678
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A091613 (A167614 (n + 1)).toNat)

end

end A091617.P16265527666650649678

/-! ## A091617.P3532939455818488400

`A091613(A167614(n+1))%A008776(n)`
-/

namespace A091617.P3532939455818488400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A091613 (A167614 (n + 1)).toNat) (A008776 n)

end

end A091617.P3532939455818488400

/-! ## A091617.P3177049478197164877

`lcm(A020985(n), A091613(A055998(n)+6))`
-/

namespace A091617.P3177049478197164877
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A091613 (A055998 n + 6).toNat)

end

end A091617.P3177049478197164877

/-! ## A091617.P8797408146689887276

`or(A000007(n), A091613(A152950(n+3)))`
-/

namespace A091617.P8797408146689887276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A091613 (A152950 (n + 3)).toNat)

end

end A091617.P8797408146689887276

/-! ## A091617.P9409647582325527039

`and(A000225(n+1), A091613(A167614(n+1)))`
-/

namespace A091617.P9409647582325527039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000225 (n + 1)) (A091613 (A167614 (n + 1)).toNat)

end

end A091617.P9409647582325527039

/-! ## A091617.P4988566354193357030

`A055874(2*n+1)*A091613(A167614(n+1))`
-/

namespace A091617.P4988566354193357030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055874 (2 * n + 1) * A091613 (A167614 (n + 1)).toNat

end

end A091617.P4988566354193357030

/-! ## A091617.P6589213177262590876

`A008683(A001748(n+1))*A091613(A167614(n+1))`
-/

namespace A091617.P6589213177262590876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A001748 (n + 1)).toNat * A091613 (A167614 (n + 1)).toNat

end

end A091617.P6589213177262590876

/-!
# A091618: Number of compositions (ordered partitions) of n such that some part is repeated consecutively 4 times and no part is repeated consecutively more than 4 times.

The programs for A091618, there is no canonical definition to state claims against.
-/

/-! ## A091618.P1155732842662793118

`A091613(A052905(n)+9)`
-/

namespace A091618.P1155732842662793118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091613 (A052905 n + 9).toNat

end

end A091618.P1155732842662793118

/-! ## A091618.P9927698829924556159

`A091613(A055999(n)+10)`
-/

namespace A091618.P9927698829924556159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091613 (A055999 n + 10).toNat

end

end A091618.P9927698829924556159

/-! ## A091618.P8844702125411667889

`A091613(A167614(n+2)+1)`
-/

namespace A091618.P8844702125411667889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091613 (A167614 (n + 2) + 1).toNat

end

end A091618.P8844702125411667889

/-! ## A091618.P6713310766793008454

`A091613(Δ[A023545(n+1)-n²])`
-/

namespace A091618.P6713310766793008454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1) - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091613 (f1 (n + 1) - f1 n).toNat

end

end A091618.P6713310766793008454

/-! ## A091618.P16534034559441526135

`A091613(A038722(Δ[A034857(n+1)]))`
-/

namespace A091618.P16534034559441526135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034857 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091613 (A038722 (f1 (n + 1) - f1 n).toNat).toNat

end

end A091618.P16534034559441526135

/-! ## A091618.P11143530261314081478

`A091613(A038722(Δ[A006416(n+2)]))`
-/

namespace A091618.P11143530261314081478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006416 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091613 (A038722 (f1 (n + 1) - f1 n).toNat).toNat

end

end A091618.P11143530261314081478

/-!
# A091619: Number of compositions (ordered partitions) of n such that some part is repeated consecutively 5 times and no part is repeated consecutively more than 5 times.

The programs for A091619, there is no canonical definition to state claims against.
-/

/-! ## A091619.P9729395160206111281

`A091613(A167499(n+3))`
-/

namespace A091619.P9729395160206111281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091613 (A167499 (n + 3)).toNat

end

end A091619.P9729395160206111281

/-! ## A091619.P11429714740011977058

`A091613(A056000(n)+15)`
-/

namespace A091619.P11429714740011977058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091613 (A056000 n + 15).toNat

end

end A091619.P11429714740011977058

/-! ## A091619.P6635652882314231710

`A091613(A000096(n+3)+6)`
-/

namespace A091619.P6635652882314231710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091613 (A000096 (n + 3) + 6).toNat

end

end A091619.P6635652882314231710

/-! ## A091619.P10749059599718504748

`A091613(A000217(n+4)+5)`
-/

namespace A091619.P10749059599718504748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091613 (A000217 (n + 4) + 5).toNat

end

end A091619.P10749059599718504748

/-! ## A091619.P2211754712401929527

`A091613(A052905(n+1)+10)`
-/

namespace A091619.P2211754712401929527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091613 (A052905 (n + 1) + 10).toNat

end

end A091619.P2211754712401929527

/-! ## A091619.P11758523244307026700

`A091613(A038722(Δ[A023545(n+1)]))`
-/

namespace A091619.P11758523244307026700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091613 (A038722 (f1 (n + 1) - f1 n).toNat).toNat

end

end A091619.P11758523244307026700

/-!
# A091620: Number of compositions (ordered partitions) of n such that some part is repeated consecutively 6 times and no part is repeated consecutively more than 6 times.

The programs for A091620, there is no canonical definition to state claims against.
-/

/-! ## A091620.P10372715318743146926

`A091613(A167499(n+4)+1)`
-/

namespace A091620.P10372715318743146926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091613 (A167499 (n + 4) + 1).toNat

end

end A091620.P10372715318743146926

/-! ## A091620.P12068614897588409915

`A091613(A167614(n+4)+3)`
-/

namespace A091620.P12068614897588409915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091613 (A167614 (n + 4) + 3).toNat

end

end A091620.P12068614897588409915

/-! ## A091620.P10331345176625087104

`A091613(A000217(n+5)+6)`
-/

namespace A091620.P10331345176625087104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091613 (A000217 (n + 5) + 6).toNat

end

end A091620.P10331345176625087104

/-! ## A091620.P18248970411563016288

`A091613(A000124(n+6)-(n+1))`
-/

namespace A091620.P18248970411563016288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091613 (A000124 (n + 6) - (n + 1 : ℤ)).toNat

end

end A091620.P18248970411563016288

/-! ## A091620.P7115178823473749760

`A091613(A000096(n+6)-A005843(n+3))`
-/

namespace A091620.P7115178823473749760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091613 (A000096 (n + 6) - A005843 (n + 3)).toNat

end

end A091620.P7115178823473749760

/-! ## A091620.P15476472226910164814

`A091613(A005843(n+8)+A000096(n+2))`
-/

namespace A091620.P15476472226910164814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091613 (A005843 (n + 8) + A000096 (n + 2)).toNat

end

end A091620.P15476472226910164814

/-! ## A091620.P18146788136520941043

`A091613(A002620(n+2)+A002620(n+9))`
-/

namespace A091620.P18146788136520941043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091613 (A002620 (n + 2) + A002620 (n + 9)).toNat

end

end A091620.P18146788136520941043

/-!
# A091621: Row sums of triangle A091615.

The programs for A091621, there is no canonical definition to state claims against.
-/

/-! ## A091621.P14103219911716171416

`A038567(n*A150859(n))`
-/

namespace A091621.P14103219911716171416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038567 ((n : ℤ) * A150859 n).toNat

end

end A091621.P14103219911716171416

/-! ## A091621.P13695748710690327156

`Δ[floor(sqrt(A324979(2*n+3)))]`
-/

namespace A091621.P13695748710690327156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A324979 (2 * n + 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A091621.P13695748710690327156

/-! ## A091621.P16544145341082061940

`∑[A055086(A166229(n))]`
-/

namespace A091621.P16544145341082061940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055086 (A166229 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A091621.P16544145341082061940

/-!
# A091622: Column 1 of triangle A091615.

The programs for A091622, there is no canonical definition to state claims against.
-/

/-! ## A091622.P11737446023067678251

`A091615(∑[n]+1)`
-/

namespace A091622.P11737446023067678251
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091615 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A091622.P11737446023067678251

/-! ## A091622.P8691582538315467361

`record[A091615(n+1)]`
-/

namespace A091622.P8691582538315467361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091615 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A091622.P8691582538315467361

/-! ## A091622.P464011351967573878

`A091615(A000124(n))+char[12]`
-/

namespace A091622.P464011351967573878
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091615 (A000124 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A091622.P464011351967573878

/-! ## A091622.P6630302725869485093

`A091615(A000124(n))*A347621(n)`
-/

namespace A091622.P6630302725869485093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091615 (A000124 n).toNat * A347621 n

end

end A091622.P6630302725869485093

/-! ## A091622.P11904011120804941707

`A091615(A000124(n))%A017090(n)`
-/

namespace A091622.P11904011120804941707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A091615 (A000124 n).toNat) (A017090 n)

end

end A091622.P11904011120804941707

/-!
# A091623: Column 1 of triangle A091614.

The programs for A091623, there is no canonical definition to state claims against.
-/

/-! ## A091623.P11673732201438138684

`A091614(∑[n]+1)`
-/

namespace A091623.P11673732201438138684
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091614 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A091623.P11673732201438138684

/-! ## A091623.P16074267875303669332

`or(1, A091614(A000124(n)))`
-/

namespace A091623.P16074267875303669332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A091614 (A000124 n).toNat)

end

end A091623.P16074267875303669332

/-! ## A091623.P8139297963044942528

`A091614(A000124(n))^A033999(n)²`
-/

namespace A091623.P8139297963044942528
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A091614 (A000124 n).toNat : ℚ) ^ (A033999 n ^ 2 : ℤ)

end

end A091623.P8139297963044942528

/-! ## A091623.P17538524536564201700

`A007318(∑[n])*A091614(A000124(n))`
-/

namespace A091623.P17538524536564201700
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A091614 (A000124 n).toNat

end

end A091623.P17538524536564201700

/-! ## A091623.P17969142082176948600

`A091614(A000124(n))/A007318(C(2, n))`
-/

namespace A091623.P17969142082176948600
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A091614 (A000124 n).toNat : ℚ) / (A007318 (Nat.choose 2 n) : ℚ)

end

end A091623.P17969142082176948600

/-! ## A091623.P3459130788680858924

`A091614(A000124(n))%A000045(n+17)`
-/

namespace A091623.P3459130788680858924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A091614 (A000124 n).toNat) (A000045 (n + 17))

end

end A091623.P3459130788680858924

/-! ## A091623.P10151498445570888929

`A091614(A000124(n))+A008683(4*(n+1))`
-/

namespace A091623.P10151498445570888929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091614 (A000124 n).toNat + A008683 (4 * (n + 1))

end

end A091623.P10151498445570888929

/-!
# A091624: Lesser of consecutive primes whose sum is a perfect power (A001597).

The programs for A091624, there is no canonical definition to state claims against.
-/

/-! ## A091624.P9918682851914269896

`A055670(A132746(n+1))-1`
-/

namespace A091624.P9918682851914269896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055670 (A132746 (n + 1)).toNat - 1

end

end A091624.P9918682851914269896

/-! ## A091624.P16798173063334907275

`A000040(A132746(n+1))`
-/

namespace A091624.P16798173063334907275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A132746 (n + 1)).toNat

end

end A091624.P16798173063334907275

/-! ## A091624.P3264276637458580841

`A008578(A132746(n+1)+1)`
-/

namespace A091624.P3264276637458580841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A132746 (n + 1) + 1).toNat

end

end A091624.P3264276637458580841

/-! ## A091624.P8942356631332819596

`A040001(2*n+1)+A006093(A132746(n+1))`
-/

namespace A091624.P8942356631332819596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (2 * n + 1) + A006093 (A132746 (n + 1)).toNat

end

end A091624.P8942356631332819596

/-! ## A091624.P7863782117226133155

`A331634(A245360(n+1))`
-/

namespace A091624.P7863782117226133155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331634 (A245360 (n + 1)).toNat

end

end A091624.P7863782117226133155

/-!
# A091626: Number of ordered integer pairs (b,c) with 0 <= b, c <= n such that both roots of x^2+bx+c=0 are integers.

The programs for A091626, the canonical program `A091626.P11682952649921451722` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A091626 has offset 0).

The definition of A091626 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A091626.P11682952649921451722

`a(n-1)+ceil(A000005(n)/2)+1` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A091626

/-- `a(n-1)+ceil(A000005(n)/2)+1` -/
def P11682952649921451722.Spec : Prop :=
  ∀ n, P11682952649921451722.a n = A091626 n

theorem P11682952649921451722.correct : P11682952649921451722.Spec := by
  intro n
  simp only [A091626]

end A091626

/-! ## A091626.P6670992490512508426

`A091627(n)+1+n`
-/

namespace A091626.P6670992490512508426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091627 n + 1 + (n : ℤ)

end

end A091626.P6670992490512508426

namespace A091626

/-- `A091627(n)+1+n` -/
def P6670992490512508426.Spec : Prop :=
  ∀ n, P6670992490512508426.a n = A091626 n

theorem P6670992490512508426.correct : P6670992490512508426.Spec := by
  intro n
  simp only [A091626, Nat.add_sub_cancel, A091626.P6670992490512508426.a, A091626.P11682952649921451722.a, A000005, A000005.P16091521709108585461.a, A091627, A091627.P13368407397155401185.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A091626

/-! ## A091626.P7932652778927836856

`∑[A266977(∑{d}[n, (n+1)%#])]`
-/

namespace A091626.P7932652778927836856
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266977 (∑ d ∈ Nat.divisors (f2 n), (n + 1) % d)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A091626.P7932652778927836856

namespace A091626

/-- `∑[A266977(∑{d}[n, (n+1)%#])]` -/
def P7932652778927836856.Spec : Prop :=
  ∀ n, P7932652778927836856.a n = A091626 n

end A091626

/-! ## A091626.P7485939404282574614

`∑[A266977(A032741(n))]`
-/

namespace A091626.P7485939404282574614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266977 (A032741 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A091626.P7485939404282574614

namespace A091626

/-- `∑[A266977(A032741(n))]` -/
def P7485939404282574614.Spec : Prop :=
  ∀ n, P7485939404282574614.a n = A091626 n

end A091626

/-! ## A091626.P10187169272460821374

`A094820(A028310(n))+n`
-/

namespace A091626.P10187169272460821374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094820 (A028310 n).toNat + (n : ℤ)

end

end A091626.P10187169272460821374

namespace A091626

/-- `A094820(A028310(n))+n` -/
def P10187169272460821374.Spec : Prop :=
  ∀ n, P10187169272460821374.a n = A091626 n

end A091626

/-! ## A091626.P5377567785962159218

`A094820(A004277(n)-n)+n`
-/

namespace A091626.P5377567785962159218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094820 (A004277 n - (n : ℤ)).toNat + (n : ℤ)

end

end A091626.P5377567785962159218

namespace A091626

/-- `A094820(A004277(n)-n)+n` -/
def P5377567785962159218.Spec : Prop :=
  ∀ n, P5377567785962159218.a n = A091626 n

end A091626

/-! ## A091626.P9307240352524621398

`∑[A080513(∑{d}[n, 2-A007423(#)])]`
-/

namespace A091626.P9307240352524621398
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080513 (∑ d ∈ Nat.divisors (f2 n), (2 - A007423 d)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A091626.P9307240352524621398

namespace A091626

/-- `∑[A080513(∑{d}[n, 2-A007423(#)])]` -/
def P9307240352524621398.Spec : Prop :=
  ∀ n, P9307240352524621398.a n = A091626 n

end A091626

/-! ## A091626.P11223552615588664790

`A140106(A132106(n))+1+n`
-/

namespace A091626.P11223552615588664790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140106 (A132106 n).toNat + 1 + (n : ℤ)

end

end A091626.P11223552615588664790

namespace A091626

/-- `A140106(A132106(n))+1+n` -/
def P11223552615588664790.Spec : Prop :=
  ∀ n, P11223552615588664790.a n = A091626 n

end A091626

/-! ## A091626.P17416113358958241889

`A065033(A132106(n)-1)+n`
-/

namespace A091626.P17416113358958241889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A132106 n - 1).toNat + (n : ℤ)

end

end A091626.P17416113358958241889

namespace A091626

/-- `A065033(A132106(n)-1)+n` -/
def P17416113358958241889.Spec : Prop :=
  ∀ n, P17416113358958241889.a n = A091626 n

end A091626

/-! ## A091626.P3794611963938380707

`A028310(n)+A004526(A132106(n))`
-/

namespace A091626.P3794611963938380707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n + A004526 (A132106 n).toNat

end

end A091626.P3794611963938380707

namespace A091626

/-- `A028310(n)+A004526(A132106(n))` -/
def P3794611963938380707.Spec : Prop :=
  ∀ n, P3794611963938380707.a n = A091626 n

end A091626

/-! ## A091626.P2236448516797708434

`A065033(2*n)+A004526(A132106(n))`
-/

namespace A091626.P2236448516797708434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (2 * n) + A004526 (A132106 n).toNat

end

end A091626.P2236448516797708434

namespace A091626

/-- `A065033(2*n)+A004526(A132106(n))` -/
def P2236448516797708434.Spec : Prop :=
  ∀ n, P2236448516797708434.a n = A091626 n

end A091626

/-! ## A091626.P8551245512628693980

`A004273(n)+A110654(A132106(n))-n`
-/

namespace A091626.P8551245512628693980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n + (A110654 (A132106 n).toNat - (n : ℤ))

end

end A091626.P8551245512628693980

namespace A091626

/-- `A004273(n)+A110654(A132106(n))-n` -/
def P8551245512628693980.Spec : Prop :=
  ∀ n, P8551245512628693980.a n = A091626 n

end A091626

/-! ## A091626.P15107407319082819753

`A004526(n)+A065033(n)+A004526(A132106(n))`
-/

namespace A091626.P15107407319082819753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n + (A065033 n + A004526 (A132106 n).toNat)

end

end A091626.P15107407319082819753

namespace A091626

/-- `A004526(n)+A065033(n)+A004526(A132106(n))` -/
def P15107407319082819753.Spec : Prop :=
  ∀ n, P15107407319082819753.a n = A091626 n

end A091626

/-! ## A091626.P7815454787125266027

`A110654(A132106(n)+A004273(n))`
-/

namespace A091626.P7815454787125266027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A132106 n + A004273 n).toNat

end

end A091626.P7815454787125266027

namespace A091626

/-- `A110654(A132106(n)+A004273(n))` -/
def P7815454787125266027.Spec : Prop :=
  ∀ n, P7815454787125266027.a n = A091626 n

end A091626

/-! ## A091626.P12194671290325424716

`A110654(A067274(n)-A006218(n))`
-/

namespace A091626.P12194671290325424716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A067274 n - A006218 n).toNat

end

end A091626.P12194671290325424716

namespace A091626

/-- `A110654(A067274(n)-A006218(n))` -/
def P12194671290325424716.Spec : Prop :=
  ∀ n, P12194671290325424716.a n = A091626 n

end A091626

/-! ## A091626.P9699662987247837432

`A094820(A051597(∑[n]-n))+n`
-/

namespace A091626.P9699662987247837432
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094820 (A051597 (∑ j ∈ Finset.range (n + 1), f1 j - n)).toNat + (n : ℤ)

end

end A091626.P9699662987247837432

namespace A091626

/-- `A094820(A051597(∑[n]-n))+n` -/
def P9699662987247837432.Spec : Prop :=
  ∀ n, P9699662987247837432.a n = A091626 n

end A091626

/-! ## A091626.P10341726979043420551

`A094820(A000196(n²+1))+n`
-/

namespace A091626.P10341726979043420551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094820 (A000196 (n ^ 2 + 1)).toNat + (n : ℤ)

end

end A091626.P10341726979043420551

namespace A091626

/-- `A094820(A000196(n²+1))+n` -/
def P10341726979043420551.Spec : Prop :=
  ∀ n, P10341726979043420551.a n = A091626 n

end A091626

/-! ## A091626.P18439287254202128930

`∑[A080513(∑{d}[n, A007423(#*(n+1))])]`
-/

namespace A091626.P18439287254202128930
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080513 (∑ d ∈ Nat.divisors (f2 n), A007423 (d * (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A091626.P18439287254202128930

namespace A091626

/-- `∑[A080513(∑{d}[n, A007423(#*(n+1))])]` -/
def P18439287254202128930.Spec : Prop :=
  ∀ n, P18439287254202128930.a n = A091626 n

end A091626

/-!
# A091627: Number of ordered integer pairs (b,c) with 1 <= b,c <= n such that both roots of x^2+bx+c=0 are integers.

The programs for A091627, the canonical program `A091627.P13368407397155401185` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A091627 has offset 0).

The definition of A091627 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A091627.P13368407397155401185

`A091626(n)-n-1`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A091627

/-- `A091626(n)-n-1` -/
def P13368407397155401185.Spec : Prop :=
  ∀ n, P13368407397155401185.a n = A091627 n

theorem P13368407397155401185.correct : P13368407397155401185.Spec := by
  intro n
  simp only [A091627]

end A091627

/-! ## A091627.P4924749863183263298

`a(n-1)+ceil(A000005(n)/2)` with `a(0)=0, a(1)=0`
-/

namespace A091627.P4924749863183263298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  a (n - 1) + ⌈(A000005 n : ℚ) / 2⌉

end

end A091627.P4924749863183263298

namespace A091627

/-- `a(n-1)+ceil(A000005(n)/2)` -/
def P4924749863183263298.Spec : Prop :=
  ∀ n, P4924749863183263298.a n = A091627 n

end A091627

/-! ## A091627.P17647899736806892260

`A038548(n)+a(n-1)` with `a(0)=0, a(1)=0`
-/

namespace A091627.P17647899736806892260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  A038548 n + a (n - 1)

end

end A091627.P17647899736806892260

namespace A091627

/-- `A038548(n)+a(n-1)` -/
def P17647899736806892260.Spec : Prop :=
  ∀ n, P17647899736806892260.a n = A091627 n

end A091627

/-! ## A091627.P18232405522599646481

`A094820(A028310(n))-1`
-/

namespace A091627.P18232405522599646481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094820 (A028310 n).toNat - 1

end

end A091627.P18232405522599646481

namespace A091627

/-- `A094820(A028310(n))-1` -/
def P18232405522599646481.Spec : Prop :=
  ∀ n, P18232405522599646481.a n = A091627 n

end A091627

/-! ## A091627.P13306479494836020327

`∑[A266977(A032741(n))-1]`
-/

namespace A091627.P13306479494836020327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266977 (A032741 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A091627.P13306479494836020327

namespace A091627

/-- `∑[A266977(A032741(n))-1]` -/
def P13306479494836020327.Spec : Prop :=
  ∀ n, P13306479494836020327.a n = A091627 n

end A091627

/-! ## A091627.P6487876642516017312

`A091626(n)+A001478(n+1)`
-/

namespace A091627.P6487876642516017312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091626 n + A001478 (n + 1)

end

end A091627.P6487876642516017312

namespace A091627

/-- `A091626(n)+A001478(n+1)` -/
def P6487876642516017312.Spec : Prop :=
  ∀ n, P6487876642516017312.a n = A091627 n

theorem P6487876642516017312.correct : P6487876642516017312.Spec := by
  intro n
  simp only [A091627, Nat.add_sub_cancel, A091627.P6487876642516017312.a, A091627.P13368407397155401185.a, A001478, A001478.P11279598861711037921.a, A091626, A091626.P11682952649921451722.a, A000005, A000005.P16091521709108585461.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A091627

/-! ## A091627.P4510470846463965686

`A094820(A004277(n)-n)-1`
-/

namespace A091627.P4510470846463965686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094820 (A004277 n - (n : ℤ)).toNat - 1

end

end A091627.P4510470846463965686

namespace A091627

/-- `A094820(A004277(n)-n)-1` -/
def P4510470846463965686.Spec : Prop :=
  ∀ n, P4510470846463965686.a n = A091627 n

end A091627

/-! ## A091627.P2410557323255696035

`∑[A004526(A032741(n)+2%(n+1))]`
-/

namespace A091627.P2410557323255696035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A032741 n + ((2 % (n + 1) : ℕ) : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A091627.P2410557323255696035

namespace A091627

/-- `∑[A004526(A032741(n)+2%(n+1))]` -/
def P2410557323255696035.Spec : Prop :=
  ∀ n, P2410557323255696035.a n = A091627 n

end A091627

/-! ## A091627.P646456954087399978

`∑[A038548(n+1)]-(A057427(n)+A038548(n+1))`
-/

namespace A091627.P646456954087399978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038548 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (A057427 n + A038548 (n + 1))

end

end A091627.P646456954087399978

namespace A091627

/-- `∑[A038548(n+1)]-(A057427(n)+A038548(n+1))` -/
def P646456954087399978.Spec : Prop :=
  ∀ n, P646456954087399978.a n = A091627 n

end A091627

/-! ## A091627.P18233573609026074082

`∑[A211272(2*n+1)-char[1]]`
-/

namespace A091627.P18233573609026074082
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211272 (2 * n + 1) - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A091627.P18233573609026074082

namespace A091627

/-- `∑[A211272(2*n+1)-char[1]]` -/
def P18233573609026074082.Spec : Prop :=
  ∀ n, P18233573609026074082.a n = A091627 n

end A091627

/-! ## A091627.P1058082910612727897

`eq[1, A161906(n+1)]-A057427(n)`
-/

namespace A091627.P1058082910612727897
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161906 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - A057427 n

end

end A091627.P1058082910612727897

namespace A091627

/-- `eq[1, A161906(n+1)]-A057427(n)` -/
def P1058082910612727897.Spec : Prop :=
  ∀ n, P1058082910612727897.a n = A091627 n

end A091627

/-! ## A091627.P5521716225450792200

`A140106(A132106(n))`
-/

namespace A091627.P5521716225450792200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140106 (A132106 n).toNat

end

end A091627.P5521716225450792200

namespace A091627

/-- `A140106(A132106(n))` -/
def P5521716225450792200.Spec : Prop :=
  ∀ n, P5521716225450792200.a n = A091627 n

end A091627

/-! ## A091627.P18165397347450335015

`A065033(A132106(n)-1)-1`
-/

namespace A091627.P18165397347450335015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A132106 n - 1).toNat - 1

end

end A091627.P18165397347450335015

namespace A091627

/-- `A065033(A132106(n)-1)-1` -/
def P18165397347450335015.Spec : Prop :=
  ∀ n, P18165397347450335015.a n = A091627 n

end A091627

/-! ## A091627.P18399491962751799687

`A004526(A132106(n))-n/A028310(n)`
-/

namespace A091627.P18399491962751799687
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004526 (A132106 n).toNat : ℚ) - (n : ℚ) / (A028310 n : ℚ)

end

end A091627.P18399491962751799687

namespace A091627

/-- `A004526(A132106(n))-n/A028310(n)` -/
def P18399491962751799687.Spec : Prop :=
  ∀ n, P18399491962751799687.a n = (A091627 n : ℚ)

end A091627

/-!
# A091628: Concatenation of n 2's followed by 3.

The programs for A091628, the canonical program `A091628.P11946100997362206382` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A091628 has offset 1).

The definition of A091628 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A091628.P11946100997362206382

`10*a(n-1)-7` with `a(0)=23`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A091628

/-- `10*a(n-1)-7` -/
def P11946100997362206382.Spec : Prop :=
  ∀ n, P11946100997362206382.a n = A091628 (n + 1)

theorem P11946100997362206382.correct : P11946100997362206382.Spec := by
  intro n
  simp only [A091628, Nat.add_sub_cancel]

end A091628

/-! ## A091628.P18275342516537119563

`(10^(n+2)-1)/9*2+1`
-/

namespace A091628.P18275342516537119563
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((10 ^ (n + 2) : ℤ) - 1 : ℚ) / 9 * 2 + 1

end

end A091628.P18275342516537119563

namespace A091628

/-- `(10^(n+2)-1)/9*2+1` -/
def P18275342516537119563.Spec : Prop :=
  ∀ n, P18275342516537119563.a n = (A091628 (n + 1) : ℚ)

theorem P18275342516537119563.correct : P18275342516537119563.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A091628, Nat.add_sub_cancel, A091628.P18275342516537119563.a, A091628.P11946100997362206382.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A091628, Nat.add_sub_cancel, A091628.P18275342516537119563.a, A091628.P11946100997362206382.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A091628

/-! ## A091628.P9087497732320862016

`or(3, ∑[20*10^n])`
-/

namespace A091628.P9087497732320862016
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  20 * 10 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 3 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A091628.P9087497732320862016

namespace A091628

/-- `or(3, ∑[20*10^n])` -/
def P9087497732320862016.Spec : Prop :=
  ∀ n, (P9087497732320862016.a n : ℤ) = A091628 (n + 1)

end A091628

/-! ## A091628.P6417205597834228224

`xor(3, ∑[20*10^n])`
-/

namespace A091628.P6417205597834228224
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  20 * 10 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A091628.P6417205597834228224

namespace A091628

/-- `xor(3, ∑[20*10^n])` -/
def P6417205597834228224.Spec : Prop :=
  ∀ n, (P6417205597834228224.a n : ℤ) = A091628 (n + 1)

end A091628

/-! ## A091628.P2402740784175023251

`A093135(n+2)`
-/

namespace A091628.P2402740784175023251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093135 (n + 2)

end

end A091628.P2402740784175023251

namespace A091628

/-- `A093135(n+2)` -/
def P2402740784175023251.Spec : Prop :=
  ∀ n, P2402740784175023251.a n = A091628 (n + 1)

end A091628

/-! ## A091628.P11290902934693484701

`A081857(2*n+5)`
-/

namespace A091628.P11290902934693484701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081857 (2 * n + 5)

end

end A091628.P11290902934693484701

namespace A091628

/-- `A081857(2*n+5)` -/
def P11290902934693484701.Spec : Prop :=
  ∀ n, P11290902934693484701.a n = A091628 (n + 1)

end A091628

/-! ## A091628.P14771450004235542915

`A237341(9*n+12)`
-/

namespace A091628.P14771450004235542915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237341 (9 * n + 12)

end

end A091628.P14771450004235542915

namespace A091628

/-- `A237341(9*n+12)` -/
def P14771450004235542915.Spec : Prop :=
  ∀ n, P14771450004235542915.a n = A091628 (n + 1)

end A091628

/-! ## A091628.P1794216296734610280

`record[A093135(abs(2-n))]`
-/

namespace A091628.P1794216296734610280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093135 |2 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A091628.P1794216296734610280

namespace A091628

/-- `record[A093135(abs(2-n))]` -/
def P1794216296734610280.Spec : Prop :=
  ∀ n, P1794216296734610280.a n = A091628 (n + 1)

end A091628

/-! ## A091628.P16086933277359503022

`(A173772(n+2)-1)/2`
-/

namespace A091628.P16086933277359503022
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A173772 (n + 2) - 1 : ℚ) / 2

end

end A091628.P16086933277359503022

namespace A091628

/-- `(A173772(n+2)-1)/2` -/
def P16086933277359503022.Spec : Prop :=
  ∀ n, P16086933277359503022.a n = (A091628 (n + 1) : ℚ)

end A091628

/-! ## A091628.P17167828721268237652

`Δ[∑[A002276(n+1)]+n]`
-/

namespace A091628.P17167828721268237652
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002276 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A091628.P17167828721268237652

namespace A091628

/-- `Δ[∑[A002276(n+1)]+n]` -/
def P17167828721268237652.Spec : Prop :=
  ∀ n, P17167828721268237652.a n = A091628 (n + 1)

end A091628

/-!
# A091629: Product of digits associated with A091628(n). Essentially the same as A007283.

The programs for A091629, the canonical program `A091629.P15422059899758948286` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A091629 has offset 1).

The definition of A091629 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A091629.P15422059899758948286

`6*2^n`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A091629

/-- `6*2^n` -/
def P15422059899758948286.Spec : Prop :=
  ∀ n, (P15422059899758948286.a n : ℤ) = A091629 (n + 1)

theorem P15422059899758948286.correct : P15422059899758948286.Spec := by
  intro n
  simp only [A091629, Nat.add_sub_cancel]

end A091629

/-!
# A091630: a(n) = A091628(n) + product of digits of A091628(n).

The programs for A091630, the canonical program `A091630.P2747439425747159375` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A091630 has offset 1).

The definition of A091630 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A091630.P2747439425747159375

`A091628(n+1)+A091629(n+1)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A091630

/-- `A091628(n+1)+A091629(n+1)` -/
def P2747439425747159375.Spec : Prop :=
  ∀ n, P2747439425747159375.a n = A091630 (n + 1)

theorem P2747439425747159375.correct : P2747439425747159375.Spec := by
  intro n
  simp only [A091630, Nat.add_sub_cancel]

end A091630

/-! ## A091630.P30168406733258773

`2*(10^(n+2)-1)/9+3*2^(n+1)+1`
-/

namespace A091630.P30168406733258773
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * ((10 ^ (n + 2) : ℤ) - 1) : ℚ) / 9 + (3 * 2 ^ (n + 1) : ℚ) + 1

end

end A091630.P30168406733258773

namespace A091630

/-- `2*(10^(n+2)-1)/9+3*2^(n+1)+1` -/
def P30168406733258773.Spec : Prop :=
  ∀ n, P30168406733258773.a n = (A091630 (n + 1) : ℚ)

end A091630

/-! ## A091630.P13814211324971561028

`or(1, A091632(n+1)+A091631(n+1))`
-/

namespace A091630.P13814211324971561028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A091632 (n + 1) + A091631 (n + 1))

end

end A091630.P13814211324971561028

namespace A091630

/-- `or(1, A091632(n+1)+A091631(n+1))` -/
def P13814211324971561028.Spec : Prop :=
  ∀ n, P13814211324971561028.a n = A091630 (n + 1)

end A091630

/-! ## A091630.P2081594560494369029

`floor(A007283(n+1)+A173736(n+3)/5)`
-/

namespace A091630.P2081594560494369029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A007283 (n + 1) : ℚ) + (A173736 (n + 3) : ℚ) / 5⌋

end

end A091630.P2081594560494369029

namespace A091630

/-- `floor(A007283(n+1)+A173736(n+3)/5)` -/
def P2081594560494369029.Spec : Prop :=
  ∀ n, P2081594560494369029.a n = A091630 (n + 1)

end A091630

/-! ## A091630.P8691602195711895716

`floor(A091629(n+1)+A173736(n+3)/5)`
-/

namespace A091630.P8691602195711895716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A091629 (n + 1) : ℚ) + (A173736 (n + 3) : ℚ) / 5⌋

end

end A091630.P8691602195711895716

namespace A091630

/-- `floor(A091629(n+1)+A173736(n+3)/5)` -/
def P8691602195711895716.Spec : Prop :=
  ∀ n, P8691602195711895716.a n = A091630 (n + 1)

end A091630

/-!
# A091631: Next prime associated with A091628.

The programs for A091631, there is no canonical definition to state claims against.
-/

/-! ## A091631.P17759881548976716727

`A091630(n+1)-A091632(n+1)`
-/

namespace A091631.P17759881548976716727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091630 (n + 1) - A091632 (n + 1)

end

end A091631.P17759881548976716727

/-! ## A091631.P11662206373864851275

`A007283(n+1)+A091628(n+1)-A091632(n+1)`
-/

namespace A091631.P11662206373864851275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007283 (n + 1) + (A091628 (n + 1) - A091632 (n + 1))

end

end A091631.P11662206373864851275

/-! ## A091631.P9845159306882520357

`A091628(n+1)+A091629(n+1)-A091632(n+1)`
-/

namespace A091631.P9845159306882520357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091628 (n + 1) + (A091629 (n + 1) - A091632 (n + 1))

end

end A091631.P9845159306882520357

/-! ## A091631.P2653320892830095950

`A091628(n+1)+A003945(n+2)-A091632(n+1)`
-/

namespace A091631.P2653320892830095950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091628 (n + 1) + A003945 (n + 2) - A091632 (n + 1)

end

end A091631.P2653320892830095950

/-! ## A091631.P8359986876013156527

`A111286(n+3)+A091628(n+1)-A091632(n+1)`
-/

namespace A091631.P8359986876013156527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111286 (n + 3) + A091628 (n + 1) - A091632 (n + 1)

end

end A091631.P8359986876013156527

/-!
# A091632: Excess of n + product of digits over next prime associated with A091628.

The programs for A091632, there is no canonical definition to state claims against.
-/

/-! ## A091632.P9512285191626876938

`A091630(n+1)-A091631(n+1)`
-/

namespace A091632.P9512285191626876938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091630 (n + 1) - A091631 (n + 1)

end

end A091632.P9512285191626876938

/-! ## A091632.P293456491502098933

`A091630(A000027(n+1))%A091631(n+1)`
-/

namespace A091632.P293456491502098933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A091630 (A000027 (n + 1)).toNat) (A091631 (n + 1))

end

end A091632.P293456491502098933

/-! ## A091632.P9238578840352798358

`A091630(A029579(2*n))%A091631(n+1)`
-/

namespace A091632.P9238578840352798358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A091630 (A029579 (2 * n)).toNat) (A091631 (n + 1))

end

end A091632.P9238578840352798358

/-! ## A091632.P16961935760692140923

`A007283(n+1)+A091628(n+1)-A091631(n+1)`
-/

namespace A091632.P16961935760692140923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007283 (n + 1) + (A091628 (n + 1) - A091631 (n + 1))

end

end A091632.P16961935760692140923

/-! ## A091632.P17165990716996638625

`A091628(n+1)+A091629(n+1)-A091631(n+1)`
-/

namespace A091632.P17165990716996638625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091628 (n + 1) + (A091629 (n + 1) - A091631 (n + 1))

end

end A091632.P17165990716996638625

/-!
# A091633: Primes having only {1, 3, 7, 9} as digits.

The programs for A091633, the canonical program `A091633.P12351698367247899697` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A091633 has offset 1).

The definition of A091633 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1915 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A091633.P8661969116354433544

`A000040(A091871(n+1))`
-/

namespace A091633.P8661969116354433544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A091871 (n + 1)).toNat

end

end A091633.P8661969116354433544

namespace A091633

/-- `A000040(A091871(n+1))` -/
def P8661969116354433544.Spec : Prop :=
  ∀ n, P8661969116354433544.a n = A091633 (n + 1)

end A091633

/-! ## A091633.P12351698367247899697

`∩[A030096(n+1), A136333(n+1)]`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A091633

/-- `∩[A030096(n+1), A136333(n+1)]` -/
def P12351698367247899697.Spec : Prop :=
  ∀ n, (P12351698367247899697.a n : ℤ) = A091633 (n + 1)

theorem P12351698367247899697.correct : P12351698367247899697.Spec := by
  intro n
  simp only [A091633, Nat.add_sub_cancel]

end A091633

/-! ## A091633.P1868160980537100489

`∩[A136333(n+1), A155055(n+1)]`
-/

namespace A091633.P1868160980537100489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136333 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155055 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A091633.P1868160980537100489

namespace A091633

/-- `∩[A136333(n+1), A155055(n+1)]` -/
def P1868160980537100489.Spec : Prop :=
  ∀ n, (P1868160980537100489.a n : ℤ) = A091633 (n + 1)

end A091633

/-! ## A091633.P4317512021355827993

`p?[A136333(n+1)]`
-/

namespace A091633.P4317512021355827993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136333 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A091633.P4317512021355827993

namespace A091633

/-- `p?[A136333(n+1)]` -/
def P4317512021355827993.Spec : Prop :=
  ∀ n, P4317512021355827993.a n = A091633 (n + 1)

end A091633

/-! ## A091633.P6057584098192819458

`∩[A038604(n+1), A136333(n+1)]`
-/

namespace A091633.P6057584098192819458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038604 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136333 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A091633.P6057584098192819458

namespace A091633

/-- `∩[A038604(n+1), A136333(n+1)]` -/
def P6057584098192819458.Spec : Prop :=
  ∀ n, (P6057584098192819458.a n : ℤ) = A091633 (n + 1)

end A091633

/-! ## A091633.P5855068985996213891

`∩[A038616(n+1), A136333(n+1)]`
-/

namespace A091633.P5855068985996213891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038616 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136333 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A091633.P5855068985996213891

namespace A091633

/-- `∩[A038616(n+1), A136333(n+1)]` -/
def P5855068985996213891.Spec : Prop :=
  ∀ n, (P5855068985996213891.a n : ℤ) = A091633 (n + 1)

end A091633

/-! ## A091633.P13508389431810510847

`∩[A030475(n+1), A136333(n+1)]`
-/

namespace A091633.P13508389431810510847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030475 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136333 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A091633.P13508389431810510847

namespace A091633

/-- `∩[A030475(n+1), A136333(n+1)]` -/
def P13508389431810510847.Spec : Prop :=
  ∀ n, (P13508389431810510847.a n : ℤ) = A091633 (n + 1)

end A091633

/-! ## A091633.P13244132437134334946

`∩[A014261(n+1), A361822(n+1)]`
-/

namespace A091633.P13244132437134334946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014261 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361822 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A091633.P13244132437134334946

namespace A091633

/-- `∩[A014261(n+1), A361822(n+1)]` -/
def P13244132437134334946.Spec : Prop :=
  ∀ n, (P13244132437134334946.a n : ℤ) = A091633 (n + 1)

end A091633

/-! ## A091633.P10849972802155760068

`∩[A030096(n+1), A361822(n+1)]`
-/

namespace A091633.P10849972802155760068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030096 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361822 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A091633.P10849972802155760068

namespace A091633

/-- `∩[A030096(n+1), A361822(n+1)]` -/
def P10849972802155760068.Spec : Prop :=
  ∀ n, (P10849972802155760068.a n : ℤ) = A091633 (n + 1)

end A091633

/-! ## A091633.P15588418494051825170

`∩[A386336(n+1), A136333(n+1)]`
-/

namespace A091633.P15588418494051825170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386336 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136333 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A091633.P15588418494051825170

namespace A091633

/-- `∩[A386336(n+1), A136333(n+1)]` -/
def P15588418494051825170.Spec : Prop :=
  ∀ n, (P15588418494051825170.a n : ℤ) = A091633 (n + 1)

end A091633

/-! ## A091633.P358417575500563825

`∩[A014261(n+1), A386323(n+1)]`
-/

namespace A091633.P358417575500563825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014261 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386323 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A091633.P358417575500563825

namespace A091633

/-- `∩[A014261(n+1), A386323(n+1)]` -/
def P358417575500563825.Spec : Prop :=
  ∀ n, (P358417575500563825.a n : ℤ) = A091633 (n + 1)

end A091633

/-! ## A091633.P16420650977935139

`∩[A059708(n+1), A361822(n+1)]`
-/

namespace A091633.P16420650977935139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059708 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361822 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A091633.P16420650977935139

namespace A091633

/-- `∩[A059708(n+1), A361822(n+1)]` -/
def P16420650977935139.Spec : Prop :=
  ∀ n, (P16420650977935139.a n : ℤ) = A091633 (n + 1)

end A091633

/-! ## A091633.P2631426995981405765

`∩[A136333(n+1), A155026(n+1)]`
-/

namespace A091633.P2631426995981405765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136333 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155026 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A091633.P2631426995981405765

namespace A091633

/-- `∩[A136333(n+1), A155026(n+1)]` -/
def P2631426995981405765.Spec : Prop :=
  ∀ n, (P2631426995981405765.a n : ℤ) = A091633 (n + 1)

end A091633

/-! ## A091633.P4475720493815082874

`∩[A014261(n+1), A038613(n+1)]`
-/

namespace A091633.P4475720493815082874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014261 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038613 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A091633.P4475720493815082874

namespace A091633

/-- `∩[A014261(n+1), A038613(n+1)]` -/
def P4475720493815082874.Spec : Prop :=
  ∀ n, (P4475720493815082874.a n : ℤ) = A091633 (n + 1)

end A091633

/-! ## A091633.P15486052024650725667

`∩[A030096(n+1), A038613(n+1)]`
-/

namespace A091633.P15486052024650725667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030096 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038613 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A091633.P15486052024650725667

namespace A091633

/-- `∩[A030096(n+1), A038613(n+1)]` -/
def P15486052024650725667.Spec : Prop :=
  ∀ n, (P15486052024650725667.a n : ℤ) = A091633 (n + 1)

end A091633

/-! ## A091633.P12842160550862976308

`∩[A038613(n+1), A062086(n+1)]`
-/

namespace A091633.P12842160550862976308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038613 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062086 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A091633.P12842160550862976308

namespace A091633

/-- `∩[A038613(n+1), A062086(n+1)]` -/
def P12842160550862976308.Spec : Prop :=
  ∀ n, (P12842160550862976308.a n : ℤ) = A091633 (n + 1)

end A091633

/-! ## A091633.P12899429862124122294

`∩[A038613(n+1), A066640(n+1)]`
-/

namespace A091633.P12899429862124122294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038613 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066640 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A091633.P12899429862124122294

namespace A091633

/-- `∩[A038613(n+1), A066640(n+1)]` -/
def P12899429862124122294.Spec : Prop :=
  ∀ n, (P12899429862124122294.a n : ℤ) = A091633 (n + 1)

end A091633

/-! ## A091633.P15663023499657823506

`∩[A038612(n+1), A136333(n+1)]`
-/

namespace A091633.P15663023499657823506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038612 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136333 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A091633.P15663023499657823506

namespace A091633

/-- `∩[A038612(n+1), A136333(n+1)]` -/
def P15663023499657823506.Spec : Prop :=
  ∀ n, (P15663023499657823506.a n : ℤ) = A091633 (n + 1)

end A091633

/-! ## A091633.P6604773314758183676

`∩[A038613(n+1), A136333(n+1)]`
-/

namespace A091633.P6604773314758183676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038613 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136333 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A091633.P6604773314758183676

namespace A091633

/-- `∩[A038613(n+1), A136333(n+1)]` -/
def P6604773314758183676.Spec : Prop :=
  ∀ n, (P6604773314758183676.a n : ℤ) = A091633 (n + 1)

end A091633

/-! ## A091633.P1193977207837747276

`∩[A038614(n+1), A136333(n+1)]`
-/

namespace A091633.P1193977207837747276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038614 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136333 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A091633.P1193977207837747276

namespace A091633

/-- `∩[A038614(n+1), A136333(n+1)]` -/
def P1193977207837747276.Spec : Prop :=
  ∀ n, (P1193977207837747276.a n : ℤ) = A091633 (n + 1)

end A091633

/-!
# A091634: Number of primes less than 10^n which do not contain the digit 0.

The programs for A091634, there is no canonical definition to state claims against.
-/

/-! ## A091634.P14363848353876712356

`A006880(n+1)-A091644(n+1)`
-/

namespace A091634.P14363848353876712356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006880 (n + 1) - A091644 (n + 1)

end

end A091634.P14363848353876712356

/-! ## A091634.P17549934338912995499

`∑[A006879(n+1)]-A091644(n+1)`
-/

namespace A091634.P17549934338912995499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006879 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A091644 (n + 1)

end

end A091634.P17549934338912995499

/-! ## A091634.P9873118093944751294

`A090226(n+2)-1-A091644(n+1)`
-/

namespace A091634.P9873118093944751294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090226 (n + 2) - 1 - A091644 (n + 1)

end

end A091634.P9873118093944751294

/-! ## A091634.P7395501546581840797

`A122121(2*(n+1))-A091644(n+1)`
-/

namespace A091634.P7395501546581840797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122121 (2 * (n + 1)) - A091644 (n + 1)

end

end A091634.P7395501546581840797

/-! ## A091634.P1182728375635026466

`A164054(2*(n+1))-A091644(n+1)`
-/

namespace A091634.P1182728375635026466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164054 (2 * (n + 1)) - A091644 (n + 1)

end

end A091634.P1182728375635026466

/-!
# A091635: Number of primes less than 10^n which do not contain the digit 1.

The programs for A091635, there is no canonical definition to state claims against.
-/

/-! ## A091635.P2062078133487545755

`A006880(n+1)-A091645(n+1)`
-/

namespace A091635.P2062078133487545755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006880 (n + 1) - A091645 (n + 1)

end

end A091635.P2062078133487545755

/-! ## A091635.P18330273295022078986

`∑[A006879(n+1)]-A091645(n+1)`
-/

namespace A091635.P18330273295022078986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006879 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A091645 (n + 1)

end

end A091635.P18330273295022078986

/-! ## A091635.P6500060960776587850

`A090226(n+2)-1-A091645(n+1)`
-/

namespace A091635.P6500060960776587850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090226 (n + 2) - 1 - A091645 (n + 1)

end

end A091635.P6500060960776587850

/-! ## A091635.P14795529572218881261

`A122121(2*(n+1))-A091645(n+1)`
-/

namespace A091635.P14795529572218881261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122121 (2 * (n + 1)) - A091645 (n + 1)

end

end A091635.P14795529572218881261

/-! ## A091635.P9889429160695858628

`A164054(2*(n+1))-A091645(n+1)`
-/

namespace A091635.P9889429160695858628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164054 (2 * (n + 1)) - A091645 (n + 1)

end

end A091635.P9889429160695858628

/-!
# A091636: Number of primes less than 10^n which do not contain the digit 2.

The programs for A091636, there is no canonical definition to state claims against.
-/

/-! ## A091636.P4370688739161922715

`A006880(n+1)-A091646(n+1)`
-/

namespace A091636.P4370688739161922715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006880 (n + 1) - A091646 (n + 1)

end

end A091636.P4370688739161922715

/-! ## A091636.P1873530943243675346

`∑[A006879(n+1)]-A091646(n+1)`
-/

namespace A091636.P1873530943243675346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006879 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A091646 (n + 1)

end

end A091636.P1873530943243675346

/-! ## A091636.P15665151691454094090

`A122121(2*(n+1))-A091646(n+1)`
-/

namespace A091636.P15665151691454094090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122121 (2 * (n + 1)) - A091646 (n + 1)

end

end A091636.P15665151691454094090

/-! ## A091636.P5782177069592729781

`A091634(n+1)+A091644(n+1)-A091646(n+1)`
-/

namespace A091636.P5782177069592729781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091634 (n + 1) + (A091644 (n + 1) - A091646 (n + 1))

end

end A091636.P5782177069592729781

/-! ## A091636.P6598779291809640807

`A164054(A004277(n+1))-A091646(n+1)`
-/

namespace A091636.P6598779291809640807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164054 (A004277 (n + 1)).toNat - A091646 (n + 1)

end

end A091636.P6598779291809640807

/-!
# A091637: Number of primes less than 10^n which do not contain the digit 3.

The programs for A091637, there is no canonical definition to state claims against.
-/

/-! ## A091637.P11944611270341586164

`A006880(n+1)-A091647(n+1)`
-/

namespace A091637.P11944611270341586164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006880 (n + 1) - A091647 (n + 1)

end

end A091637.P11944611270341586164

/-! ## A091637.P13026998932772568119

`∑[A006879(n+1)]-A091647(n+1)`
-/

namespace A091637.P13026998932772568119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006879 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A091647 (n + 1)

end

end A091637.P13026998932772568119

/-! ## A091637.P1841366691938255958

`A122121(2*(n+1))-A091647(n+1)`
-/

namespace A091637.P1841366691938255958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122121 (2 * (n + 1)) - A091647 (n + 1)

end

end A091637.P1841366691938255958

/-! ## A091637.P1619027892334708801

`A091635(n+1)+A091645(n+1)-A091647(n+1)`
-/

namespace A091637.P1619027892334708801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091635 (n + 1) + (A091645 (n + 1) - A091647 (n + 1))

end

end A091637.P1619027892334708801

/-! ## A091637.P14311088727168391747

`A164054(2*(n+1))-A091647(n+1)`
-/

namespace A091637.P14311088727168391747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164054 (2 * (n + 1)) - A091647 (n + 1)

end

end A091637.P14311088727168391747

/-!
# A091638: Number of primes less than 10^n which do not contain the digit 4.

The programs for A091638, there is no canonical definition to state claims against.
-/

/-! ## A091638.P6280434806080986804

`A006880(n+1)-A091705(n+1)`
-/

namespace A091638.P6280434806080986804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006880 (n + 1) - A091705 (n + 1)

end

end A091638.P6280434806080986804

/-! ## A091638.P1800801505481241589

`∑[A006879(n+1)]-A091705(n+1)`
-/

namespace A091638.P1800801505481241589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006879 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A091705 (n + 1)

end

end A091638.P1800801505481241589

/-! ## A091638.P294423747725041138

`A122121(2*(n+1))-A091705(n+1)`
-/

namespace A091638.P294423747725041138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122121 (2 * (n + 1)) - A091705 (n + 1)

end

end A091638.P294423747725041138

/-! ## A091638.P5789782188345160026

`A091635(n+1)+A091645(n+1)-A091705(n+1)`
-/

namespace A091638.P5789782188345160026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091635 (n + 1) + (A091645 (n + 1) - A091705 (n + 1))

end

end A091638.P5789782188345160026

/-! ## A091638.P3895158976006885828

`A164054(A004277(n+1))-A091705(n+1)`
-/

namespace A091638.P3895158976006885828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164054 (A004277 (n + 1)).toNat - A091705 (n + 1)

end

end A091638.P3895158976006885828

/-!
# A091639: Number of primes less than 10^n which do not contain the digit 5.

The programs for A091639, there is no canonical definition to state claims against.
-/

/-! ## A091639.P11271104784983619307

`A006880(n+1)-A091706(n+1)`
-/

namespace A091639.P11271104784983619307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006880 (n + 1) - A091706 (n + 1)

end

end A091639.P11271104784983619307

/-! ## A091639.P60638735307292184

`∑[A006879(n+1)]-A091706(n+1)`
-/

namespace A091639.P60638735307292184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006879 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A091706 (n + 1)

end

end A091639.P60638735307292184

/-! ## A091639.P13980415936090955478

`A122121(2*(n+1))-A091706(n+1)`
-/

namespace A091639.P13980415936090955478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122121 (2 * (n + 1)) - A091706 (n + 1)

end

end A091639.P13980415936090955478

/-! ## A091639.P12248772638340678535

`abs(A122121(A005843(n+1))-A091706(n+1))`
-/

namespace A091639.P12248772638340678535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A122121 (A005843 (n + 1)).toNat - A091706 (n + 1)|

end

end A091639.P12248772638340678535

/-! ## A091639.P17294220916943201089

`A091634(n+1)+A091644(n+1)-A091706(n+1)`
-/

namespace A091639.P17294220916943201089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091634 (n + 1) + (A091644 (n + 1) - A091706 (n + 1))

end

end A091639.P17294220916943201089

/-!
# A091640: Number of primes less than 10^n which do not contain the digit 6.

The programs for A091640, there is no canonical definition to state claims against.
-/

/-! ## A091640.P12593526349051443194

`A006880(n+1)-A091707(n+1)`
-/

namespace A091640.P12593526349051443194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006880 (n + 1) - A091707 (n + 1)

end

end A091640.P12593526349051443194

/-! ## A091640.P1340200064189455143

`∑[A006879(n+1)]-A091707(n+1)`
-/

namespace A091640.P1340200064189455143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006879 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A091707 (n + 1)

end

end A091640.P1340200064189455143

/-! ## A091640.P10583985823918175285

`A090226(n+2)-1-A091707(n+1)`
-/

namespace A091640.P10583985823918175285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090226 (n + 2) - 1 - A091707 (n + 1)

end

end A091640.P10583985823918175285

/-! ## A091640.P11043264835524193331

`A122121(2*(n+1))-A091707(n+1)`
-/

namespace A091640.P11043264835524193331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122121 (2 * (n + 1)) - A091707 (n + 1)

end

end A091640.P11043264835524193331

/-! ## A091640.P12917105393579611762

`A164054(A004277(n+1))-A091707(n+1)`
-/

namespace A091640.P12917105393579611762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164054 (A004277 (n + 1)).toNat - A091707 (n + 1)

end

end A091640.P12917105393579611762

/-!
# A091641: Number of primes less than 10^n which do not contain the digit 7.

The programs for A091641, there is no canonical definition to state claims against.
-/

/-! ## A091641.P7379786590554337264

`A006880(n+1)-A091708(n+1)`
-/

namespace A091641.P7379786590554337264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006880 (n + 1) - A091708 (n + 1)

end

end A091641.P7379786590554337264

/-! ## A091641.P14736705036063175990

`∑[A006879(n+1)]-A091708(n+1)`
-/

namespace A091641.P14736705036063175990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006879 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A091708 (n + 1)

end

end A091641.P14736705036063175990

/-! ## A091641.P288000100972658171

`A122121(2*(n+1))-A091708(n+1)`
-/

namespace A091641.P288000100972658171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122121 (2 * (n + 1)) - A091708 (n + 1)

end

end A091641.P288000100972658171

/-! ## A091641.P12763615443969385582

`A091634(n+1)+A091644(n+1)-A091708(n+1)`
-/

namespace A091641.P12763615443969385582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091634 (n + 1) + (A091644 (n + 1) - A091708 (n + 1))

end

end A091641.P12763615443969385582

/-! ## A091641.P8963842654279007823

`A164054(A004277(n+1))-A091708(n+1)`
-/

namespace A091641.P8963842654279007823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164054 (A004277 (n + 1)).toNat - A091708 (n + 1)

end

end A091641.P8963842654279007823

/-!
# A091642: Number of primes less than 10^n which do not contain the digit 8.

The programs for A091642, there is no canonical definition to state claims against.
-/

/-! ## A091642.P8518678725946482400

`A006880(n+1)-A091709(n+1)`
-/

namespace A091642.P8518678725946482400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006880 (n + 1) - A091709 (n + 1)

end

end A091642.P8518678725946482400

/-! ## A091642.P11474909862222689567

`∑[A006879(n+1)]-A091709(n+1)`
-/

namespace A091642.P11474909862222689567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006879 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A091709 (n + 1)

end

end A091642.P11474909862222689567

/-! ## A091642.P15611636085724689931

`A122121(2*(n+1))-A091709(n+1)`
-/

namespace A091642.P15611636085724689931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122121 (2 * (n + 1)) - A091709 (n + 1)

end

end A091642.P15611636085724689931

/-! ## A091642.P14684329185862300905

`A091634(n+1)+A091644(n+1)-A091709(n+1)`
-/

namespace A091642.P14684329185862300905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091634 (n + 1) + (A091644 (n + 1) - A091709 (n + 1))

end

end A091642.P14684329185862300905

/-! ## A091642.P4352692233750111951

`A164054(A004277(n+1))-A091709(n+1)`
-/

namespace A091642.P4352692233750111951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164054 (A004277 (n + 1)).toNat - A091709 (n + 1)

end

end A091642.P4352692233750111951

/-!
# A091643: Number of primes less than 10^n which do not contain the digit 9.

The programs for A091643, there is no canonical definition to state claims against.
-/

/-! ## A091643.P9879742579411021247

`A006880(n+1)-A091710(n+1)`
-/

namespace A091643.P9879742579411021247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006880 (n + 1) - A091710 (n + 1)

end

end A091643.P9879742579411021247

/-! ## A091643.P2899044841011600376

`A122121(2*(n+1))-A091710(n+1)`
-/

namespace A091643.P2899044841011600376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122121 (2 * (n + 1)) - A091710 (n + 1)

end

end A091643.P2899044841011600376

/-! ## A091643.P4294063289840390773

`A091634(n+1)+A091644(n+1)-A091710(n+1)`
-/

namespace A091643.P4294063289840390773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091634 (n + 1) + (A091644 (n + 1) - A091710 (n + 1))

end

end A091643.P4294063289840390773

/-! ## A091643.P9379781273318730155

`A164054(2*(n+1))-A091710(n+1)`
-/

namespace A091643.P9379781273318730155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164054 (2 * (n + 1)) - A091710 (n + 1)

end

end A091643.P9379781273318730155

/-! ## A091643.P16639852951576602516

`abs(A164054(A004277(n+1))-A091710(n+1))`
-/

namespace A091643.P16639852951576602516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A164054 (A004277 (n + 1)).toNat - A091710 (n + 1)|

end

end A091643.P16639852951576602516

/-!
# A091644: Number of primes less than 10^n which have at least one digit 0.

The programs for A091644, there is no canonical definition to state claims against.
-/

/-! ## A091644.P1303438610098192698

`A006880(n+1)-A091634(n+1)`
-/

namespace A091644.P1303438610098192698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006880 (n + 1) - A091634 (n + 1)

end

end A091644.P1303438610098192698

/-! ## A091644.P17198795896943104183

`∑[A006879(n+1)]-A091634(n+1)`
-/

namespace A091644.P17198795896943104183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006879 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A091634 (n + 1)

end

end A091644.P17198795896943104183

/-! ## A091644.P1218728521359156974

`A122121(2*(n+1))-A091634(n+1)`
-/

namespace A091644.P1218728521359156974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122121 (2 * (n + 1)) - A091634 (n + 1)

end

end A091644.P1218728521359156974

/-! ## A091644.P15949825707910458613

`A164054(2*(n+1))-A091634(n+1)`
-/

namespace A091644.P15949825707910458613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164054 (2 * (n + 1)) - A091634 (n + 1)

end

end A091644.P15949825707910458613

/-! ## A091644.P6590428595697938447

`∑[A373294(n+1)]`
-/

namespace A091644.P6590428595697938447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373294 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A091644.P6590428595697938447

/-!
# A091645: Number of primes less than 10^n having at least one digit 1.

The programs for A091645, there is no canonical definition to state claims against.
-/

/-! ## A091645.P10902359169637655491

`A006880(n+1)-A091635(n+1)`
-/

namespace A091645.P10902359169637655491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006880 (n + 1) - A091635 (n + 1)

end

end A091645.P10902359169637655491

/-! ## A091645.P6593548150666790604

`∑[A006879(n+1)]-A091635(n+1)`
-/

namespace A091645.P6593548150666790604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006879 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A091635 (n + 1)

end

end A091645.P6593548150666790604

/-! ## A091645.P7214420482658802151

`A122121(2*(n+1))-A091635(n+1)`
-/

namespace A091645.P7214420482658802151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122121 (2 * (n + 1)) - A091635 (n + 1)

end

end A091645.P7214420482658802151

/-! ## A091645.P8707261444265319880

`A091634(n+1)+A091644(n+1)-A091635(n+1)`
-/

namespace A091645.P8707261444265319880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091634 (n + 1) + (A091644 (n + 1) - A091635 (n + 1))

end

end A091645.P8707261444265319880

/-! ## A091645.P6411712253151169798

`A164054(2*(n+1))-A091635(n+1)`
-/

namespace A091645.P6411712253151169798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164054 (2 * (n + 1)) - A091635 (n + 1)

end

end A091645.P6411712253151169798

/-!
# A091646: Number of primes less than 10^n having at least one digit 2.

The programs for A091646, there is no canonical definition to state claims against.
-/

/-! ## A091646.P6790014667663141411

`A006880(n+1)-A091636(n+1)`
-/

namespace A091646.P6790014667663141411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006880 (n + 1) - A091636 (n + 1)

end

end A091646.P6790014667663141411

/-! ## A091646.P14077674357126546672

`∑[A006879(n+1)]-A091636(n+1)`
-/

namespace A091646.P14077674357126546672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006879 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A091636 (n + 1)

end

end A091646.P14077674357126546672

/-! ## A091646.P16750725509110651359

`A090226(n+2)-1-A091636(n+1)`
-/

namespace A091646.P16750725509110651359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090226 (n + 2) - 1 - A091636 (n + 1)

end

end A091646.P16750725509110651359

/-! ## A091646.P1391469875966442545

`A122121(2*(n+1))-A091636(n+1)`
-/

namespace A091646.P1391469875966442545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122121 (2 * (n + 1)) - A091636 (n + 1)

end

end A091646.P1391469875966442545

/-! ## A091646.P3982620328123659803

`A164054(A004277(n+1))-A091636(n+1)`
-/

namespace A091646.P3982620328123659803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164054 (A004277 (n + 1)).toNat - A091636 (n + 1)

end

end A091646.P3982620328123659803

/-!
# A091647: Number of primes less than 10^n having at least one digit 3.

The programs for A091647, there is no canonical definition to state claims against.
-/

/-! ## A091647.P2170508344935543733

`A006880(n+1)-A091637(n+1)`
-/

namespace A091647.P2170508344935543733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006880 (n + 1) - A091637 (n + 1)

end

end A091647.P2170508344935543733

/-! ## A091647.P17329508093807633683

`∑[A006879(n+1)]-A091637(n+1)`
-/

namespace A091647.P17329508093807633683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006879 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A091637 (n + 1)

end

end A091647.P17329508093807633683

/-! ## A091647.P5437697255943990519

`A090226(n+2)-1-A091637(n+1)`
-/

namespace A091647.P5437697255943990519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090226 (n + 2) - 1 - A091637 (n + 1)

end

end A091647.P5437697255943990519

/-! ## A091647.P7767228285368362035

`A122121(2*(n+1))-A091637(n+1)`
-/

namespace A091647.P7767228285368362035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122121 (2 * (n + 1)) - A091637 (n + 1)

end

end A091647.P7767228285368362035

/-! ## A091647.P1701748092606910851

`A164054(2*(n+1))-A091637(n+1)`
-/

namespace A091647.P1701748092606910851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164054 (2 * (n + 1)) - A091637 (n + 1)

end

end A091647.P1701748092606910851

/-!
# A091649: Base-60 (Babylonian or sexagesimal) expansion of 2 Pi.

The programs for A091649, there is no canonical definition to state claims against.
-/

/-! ## A091649.P161381340261308685

`A125628(n+1)-char[9]`
-/

namespace A091649.P161381340261308685
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125628 (n + 1) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A091649.P161381340261308685

/-! ## A091649.P16150772143787026137

`xor(A125628(n+1), A208848(n))`
-/

namespace A091649.P16150772143787026137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A125628 (n + 1)) (A208848 n)

end

end A091649.P16150772143787026137

/-! ## A091649.P14981718030371685199

`abs(A125628(n+1)-A036633(n))`
-/

namespace A091649.P14981718030371685199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A125628 (n + 1) - A036633 n|

end

end A091649.P14981718030371685199

/-! ## A091649.P2664447079277786561

`abs(A125628(n+1)-A102683(n))`
-/

namespace A091649.P2664447079277786561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A125628 (n + 1) - A102683 n|

end

end A091649.P2664447079277786561

/-! ## A091649.P2866852981344358917

`abs(A125628(n+1)-A120041(n))`
-/

namespace A091649.P2866852981344358917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A125628 (n + 1) - A120041 n|

end

end A091649.P2866852981344358917

/-!
# A091650: Let M = the 4 X 4 matrix [0 1 0 0 / 0 0 1 0 / 0 0 0 1 / -1 -1 3 2]. Set seed vector = [1 1 1 1] = first row, then take M*[1 1 1 1] = [1 1 1 3] then M * [1 1 1 3], etc. Sequence gives terms in rightmost column.

The programs for A091650, the canonical program `A091650.P14871562926263687047` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A091650 has offset 1).

The definition of A091650 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A091650.P14871562926263687047

`2*a(n-1)+3*a(n-2)-a(n-3)-a(n-4)` with `a(0)=1, a(1)=3, a(2)=7, a(3)=21`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A091650

/-- `2*a(n-1)+3*a(n-2)-a(n-3)-a(n-4)` -/
def P14871562926263687047.Spec : Prop :=
  ∀ n, P14871562926263687047.a n = A091650 (n + 1)

theorem P14871562926263687047.correct : P14871562926263687047.Spec := by
  intro n
  simp only [A091650, Nat.add_sub_cancel]

end A091650

/-! ## A091650.P3630637742175171693

`ogf((1+x-2x^2-x^3)/(1-2x-3x^2+x^3+x^4))`
-/

namespace A091650.P3630637742175171693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, -2, -1] [1, -2, -3, 1, 1] n

end

end A091650.P3630637742175171693

namespace A091650

/-- `ogf((1+x-2x^2-x^3)/(1-2x-3x^2+x^3+x^4))` -/
def P3630637742175171693.Spec : Prop :=
  ∀ n, P3630637742175171693.a n = A091650 (n + 1)

end A091650

/-! ## A091650.P8872868715238716204

`∑[2*A091024(n)]+1`
-/

namespace A091650.P8872868715238716204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A091024 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A091650.P8872868715238716204

namespace A091650

/-- `∑[2*A091024(n)]+1` -/
def P8872868715238716204.Spec : Prop :=
  ∀ n, P8872868715238716204.a n = A091650 (n + 1)

end A091650

/-! ## A091650.P3953192341239916154

`2*A052963(n)-a(n-1)` with `a(0)=1`
-/

namespace A091650.P3953192341239916154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * A052963 n - a (n - 1)

end

end A091650.P3953192341239916154

namespace A091650

/-- `2*A052963(n)-a(n-1)` -/
def P3953192341239916154.Spec : Prop :=
  ∀ n, P3953192341239916154.a n = A091650 (n + 1)

end A091650

/-! ## A091650.P5414093481058703072

`A091024(n)+A052963(n)`
-/

namespace A091650.P5414093481058703072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091024 n + A052963 n

end

end A091650.P5414093481058703072

namespace A091650

/-- `A091024(n)+A052963(n)` -/
def P5414093481058703072.Spec : Prop :=
  ∀ n, P5414093481058703072.a n = A091650 (n + 1)

end A091650

/-! ## A091650.P3472970222841215111

`A006357(n)-A123941(n)`
-/

namespace A091650.P3472970222841215111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006357 n - A123941 n

end

end A091650.P3472970222841215111

namespace A091650

/-- `A006357(n)-A123941(n)` -/
def P3472970222841215111.Spec : Prop :=
  ∀ n, P3472970222841215111.a n = A091650 (n + 1)

end A091650

/-! ## A091650.P11457373874814334065

`A060823(n+2)-A033999(n)`
-/

namespace A091650.P11457373874814334065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060823 (n + 2) - A033999 n

end

end A091650.P11457373874814334065

namespace A091650

/-- `A060823(n+2)-A033999(n)` -/
def P11457373874814334065.Spec : Prop :=
  ∀ n, P11457373874814334065.a n = A091650 (n + 1)

end A091650

/-! ## A091650.P11267975266205002542

`A060823(n+2)-A062157(n+1)`
-/

namespace A091650.P11267975266205002542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060823 (n + 2) - A062157 (n + 1)

end

end A091650.P11267975266205002542

namespace A091650

/-- `A060823(n+2)-A062157(n+1)` -/
def P11267975266205002542.Spec : Prop :=
  ∀ n, P11267975266205002542.a n = A091650 (n + 1)

end A091650

/-! ## A091650.P11934886400436743370

`A062157(n+2)+A060823(n+2)`
-/

namespace A091650.P11934886400436743370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (n + 2) + A060823 (n + 2)

end

end A091650.P11934886400436743370

namespace A091650

/-- `A062157(n+2)+A060823(n+2)` -/
def P11934886400436743370.Spec : Prop :=
  ∀ n, P11934886400436743370.a n = A091650 (n + 1)

end A091650

/-! ## A091650.P8397617939449474190

`A060823(n+2)+n-A004442(n)`
-/

namespace A091650.P8397617939449474190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060823 (n + 2) + ((n : ℤ) - A004442 n)

end

end A091650.P8397617939449474190

namespace A091650

/-- `A060823(n+2)+n-A004442(n)` -/
def P8397617939449474190.Spec : Prop :=
  ∀ n, P8397617939449474190.a n = A091650 (n + 1)

end A091650

/-! ## A091650.P4521507947423716061

`A006357(n)+A052536(n)-A076264(n)`
-/

namespace A091650.P4521507947423716061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006357 n + (A052536 n - A076264 n)

end

end A091650.P4521507947423716061

namespace A091650

/-- `A006357(n)+A052536(n)-A076264(n)` -/
def P4521507947423716061.Spec : Prop :=
  ∀ n, P4521507947423716061.a n = A091650 (n + 1)

end A091650

/-! ## A091650.P5992348004139310554

`A006357(n+2)%A018919(n)`
-/

namespace A091650.P5992348004139310554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006357 (n + 2)) (A018919 n)

end

end A091650.P5992348004139310554

namespace A091650

/-- `A006357(n+2)%A018919(n)` -/
def P5992348004139310554.Spec : Prop :=
  ∀ n, P5992348004139310554.a n = A091650 (n + 1)

end A091650

/-!
# A091652: A stable set of primes created by a greedy algorithm.

The programs for A091652, there is no canonical definition to state claims against.
-/

/-! ## A091652.P2024291813586145241

`record[A273282(3*A017401(n))]`
-/

namespace A091652.P2024291813586145241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273282 (3 * A017401 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A091652.P2024291813586145241

/-! ## A091652.P3651727100533276034

`record[A273282(lcm(3, A017401(n)))]`
-/

namespace A091652.P3651727100533276034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273282 (Int.lcm 3 (A017401 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A091652.P3651727100533276034

/-! ## A091652.P740146775653658644

`p?[A256508(A133387(n+1)²)]`
-/

namespace A091652.P740146775653658644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256508 (A133387 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A091652.P740146775653658644

/-! ## A091652.P13388670914725294996

`record[A273282(A008486(A017401(n)))]`
-/

namespace A091652.P13388670914725294996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273282 (A008486 (A017401 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A091652.P13388670914725294996

/-! ## A091652.P7055887803031063355

`∩[A028798(n+1), A105399(n+1)]`
-/

namespace A091652.P7055887803031063355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028798 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105399 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A091652.P7055887803031063355

/-!
# A091653: Complement of the set of primes in A091652.

The programs for A091653, there is no canonical definition to state claims against.
-/

/-! ## A091653.P10991652110456560927

`filter[A063535(n), A334465(#)]`
-/

namespace A091653.P10991652110456560927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063535 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A334465 (f1 j).toNat = 1) n)

end

end A091653.P10991652110456560927

/-! ## A091653.P13794660749801391840

`A063535(lt[n, A031131(2*n+5)])`
-/

namespace A091653.P13794660749801391840
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031131 (2 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063535 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A091653.P13794660749801391840

/-! ## A091653.P14830789493811958264

`p?[A016789(n)-A126660(A165998(n))]`
-/

namespace A091653.P14830789493811958264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 n - A126660 (A165998 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A091653.P14830789493811958264

/-! ## A091653.P6982358260360517739

`A341661(A241091(n)+A001651(n+1))`
-/

namespace A091653.P6982358260360517739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341661 (A241091 n + A001651 (n + 1)).toNat

end

end A091653.P6982358260360517739

/-! ## A091653.P8718734941249957884

`A063535(lt[A002113(n+1), A299969(3*n+1)])`
-/

namespace A091653.P8718734941249957884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299969 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063535 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A091653.P8718734941249957884

/-!
# A091654: Frequency of primes produced by the greedy algorithm of A091652.

The programs for A091654, there is no canonical definition to state claims against.
-/

/-! ## A091654.P18077607698100343842

`A327524(A341993(n+1))`
-/

namespace A091654.P18077607698100343842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327524 (A341993 (n + 1)).toNat

end

end A091654.P18077607698100343842

/-! ## A091654.P9549321644439755492

`A182595(A004480(n)+16)`
-/

namespace A091654.P9549321644439755492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182595 (A004480 n + 16).toNat

end

end A091654.P9549321644439755492

/-! ## A091654.P3715084753335238347

`A050603(A292445(n))%4`
-/

namespace A091654.P3715084753335238347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A050603 (A292445 n).toNat) 4

end

end A091654.P3715084753335238347

/-! ## A091654.P13265553634886174111

`A214640(xor(6, A080136(n+1)))`
-/

namespace A091654.P13265553634886174111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214640 (Int.xor 6 (A080136 (n + 1))).toNat

end

end A091654.P13265553634886174111

/-! ## A091654.P9314777168931666298

`A154402(∑[A120243(n+1)]²)`
-/

namespace A091654.P9314777168931666298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120243 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154402 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2).toNat

end

end A091654.P9314777168931666298

/-!
# A091658: When A032523 is a maximum; or, A091657 less duplicates.

The programs for A091658, there is no canonical definition to state claims against.
-/

/-! ## A091658.P5704090594985779254

`record[A032523(n+1)]`
-/

namespace A091658.P5704090594985779254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032523 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A091658.P5704090594985779254

/-! ## A091658.P144739068152620961

`record[A225802(n+1)+1]`
-/

namespace A091658.P144739068152620961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225802 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A091658.P144739068152620961

/-! ## A091658.P4665997456755057975

`record[A225802(A028310(n))]+1`
-/

namespace A091658.P4665997456755057975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225802 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1

end

end A091658.P4665997456755057975

/-! ## A091658.P7780429107845947981

`record[A225802(A304740(n))]+1`
-/

namespace A091658.P7780429107845947981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225802 (A304740 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1

end

end A091658.P7780429107845947981

/-! ## A091658.P2566371395006850954

`record[A225802(A305297(n))]+1`
-/

namespace A091658.P2566371395006850954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225802 (A305297 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1

end

end A091658.P2566371395006850954

/-!
# A091661: Coefficients in a 10-adic square root of 1.

The programs for A091661, there is no canonical definition to state claims against.
-/

/-! ## A091661.P6134757052301632068

`A018247(n)+A091663(n)-A063006(n)`
-/

namespace A091661.P6134757052301632068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018247 n + (A091663 n - A063006 n)

end

end A091661.P6134757052301632068

/-! ## A091661.P5069554051288283261

`A018248(n)+A091664(n)-A063006(n)`
-/

namespace A091661.P5069554051288283261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018248 n + (A091664 n - A063006 n)

end

end A091661.P5069554051288283261

/-! ## A091661.P2449221090197401499

`A120817(n)+A120818(n)-A063006(n)`
-/

namespace A091661.P2449221090197401499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120817 n + (A120818 n - A063006 n)

end

end A091661.P2449221090197401499

/-! ## A091661.P9736883840203932125

`A225405(n)+A225408(n)-A063006(n)`
-/

namespace A091661.P9736883840203932125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225405 n + (A225408 n - A063006 n)

end

end A091661.P9736883840203932125

/-! ## A091661.P4515666470002470713

`A225457(n)+A225460(n)-A063006(n)`
-/

namespace A091661.P4515666470002470713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225457 n + (A225460 n - A063006 n)

end

end A091661.P4515666470002470713

/-! ## A091661.P3597305674539023622

`A216102(n+1)+A216103(n+1)-A063006(n)`
-/

namespace A091661.P3597305674539023622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216102 (n + 1) + (A216103 (n + 1) - A063006 n)

end

end A091661.P3597305674539023622

/-!
# A091663: 10-adic integer x=.....93380022607743740081787109375 satisfying x^3 = x.

The programs for A091663, there is no canonical definition to state claims against.
-/

/-! ## A091663.P7375825023425439144

`9-A091664(n)`
-/

namespace A091663.P7375825023425439144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A091664 n

end

end A091663.P7375825023425439144

/-! ## A091663.P1871988981914078438

`A091664(n)+A075693(n)`
-/

namespace A091663.P1871988981914078438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091664 n + A075693 n

end

end A091663.P1871988981914078438

/-! ## A091663.P14617517243559154388

`A018248(n)-A000007(n)`
-/

namespace A091663.P14617517243559154388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018248 n - A000007 n

end

end A091663.P14617517243559154388

/-! ## A091663.P4897635967260903708

`A018248(n)-A010051(2*(n+1))`
-/

namespace A091663.P4897635967260903708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018248 n - A010051 (2 * (n + 1))

end

end A091663.P4897635967260903708

/-! ## A091663.P15794926368705710904

`A018248(n)-char[A347233(3*(n+1))]`
-/

namespace A091663.P15794926368705710904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347233 (3 * (n + 1))

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018248 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A091663.P15794926368705710904

/-! ## A091663.P2307715519365741362

`A018248(n)-char[A060069(3*n+2)]`
-/

namespace A091663.P2307715519365741362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060069 (3 * n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018248 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A091663.P2307715519365741362

/-! ## A091663.P17803114208623079353

`A018248(n)-char[A007814(2*n+5)]`
-/

namespace A091663.P17803114208623079353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (2 * n + 5)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018248 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A091663.P17803114208623079353

/-! ## A091663.P7228045139932352612

`A018248(n)-A112315(A112310(n))`
-/

namespace A091663.P7228045139932352612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018248 n - A112315 (A112310 n).toNat

end

end A091663.P7228045139932352612

/-! ## A091663.P4542635033401267420

`A018248(n)-A112314(A001222(n+1))`
-/

namespace A091663.P4542635033401267420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018248 n - A112314 (A001222 (n + 1)).toNat

end

end A091663.P4542635033401267420

/-! ## A091663.P7436425017305233196

`A018248(n)-A019590(A101597(n+1))`
-/

namespace A091663.P7436425017305233196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018248 n - A019590 (A101597 (n + 1)).toNat

end

end A091663.P7436425017305233196

/-! ## A091663.P426660240645642097

`A018248(n)-A307424(A007947(n+1))`
-/

namespace A091663.P426660240645642097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018248 n - A307424 (A007947 (n + 1)).toNat

end

end A091663.P426660240645642097

/-! ## A091663.P17792548264657414310

`A018248(n)-A019590(A341830(n+1))`
-/

namespace A091663.P17792548264657414310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018248 n - A019590 (A341830 (n + 1)).toNat

end

end A091663.P17792548264657414310

/-! ## A091663.P11764198877038408871

`A063006(n)+A091661(n)-A018247(n)`
-/

namespace A091663.P11764198877038408871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063006 n + (A091661 n - A018247 n)

end

end A091663.P11764198877038408871

/-! ## A091663.P10903783815478484658

`A120817(n)+A120818(n)-A018247(n)`
-/

namespace A091663.P10903783815478484658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120817 n + (A120818 n - A018247 n)

end

end A091663.P10903783815478484658

/-! ## A091663.P3167240444060423036

`A225405(n)+A225408(n)-A018247(n)`
-/

namespace A091663.P3167240444060423036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225405 n + (A225408 n - A018247 n)

end

end A091663.P3167240444060423036

/-! ## A091663.P11551509623827876377

`A225457(n)+A225460(n)-A018247(n)`
-/

namespace A091663.P11551509623827876377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225457 n + (A225460 n - A018247 n)

end

end A091663.P11551509623827876377

/-! ## A091663.P1284119965391272189

`A290372(n)+A290375(n)-A018247(n)`
-/

namespace A091663.P1284119965391272189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290372 n + (A290375 n - A018247 n)

end

end A091663.P1284119965391272189

/-! ## A091663.P2694024028221262258

`A290373(n)+A290374(n)-A018247(n)`
-/

namespace A091663.P2694024028221262258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290373 n + (A290374 n - A018247 n)

end

end A091663.P2694024028221262258

/-! ## A091663.P11064768958950849499

`A018248(n)-A019590(n+2)`
-/

namespace A091663.P11064768958950849499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018248 n - A019590 (n + 2)

end

end A091663.P11064768958950849499

/-! ## A091663.P7021469272801409294

`A216104(n+1)+A216105(n+1)-A018247(n)`
-/

namespace A091663.P7021469272801409294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216104 (n + 1) + (A216105 (n + 1) - A018247 n)

end

end A091663.P7021469272801409294

/-!
# A091664: 10-adic integer x=.....06619977392256259918212890624 satisfying x^3 = x.

The programs for A091664, there is no canonical definition to state claims against.
-/

/-! ## A091664.P3136694505421495402

`9-A091663(n)`
-/

namespace A091664.P3136694505421495402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A091663 n

end

end A091664.P3136694505421495402

/-! ## A091664.P17870304833321956288

`A018247(n)-A000007(n)`
-/

namespace A091664.P17870304833321956288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018247 n - A000007 n

end

end A091664.P17870304833321956288

/-! ## A091664.P6377976575131626035

`and(A018247(n), A135179(n+1))`
-/

namespace A091664.P6377976575131626035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A018247 n) (A135179 (n + 1))

end

end A091664.P6377976575131626035

/-! ## A091664.P12005922085976157386

`A018247(n)-C(A259361(n), n)`
-/

namespace A091664.P12005922085976157386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018247 n - (Nat.choose (A259361 n).toNat n : ℤ)

end

end A091664.P12005922085976157386

/-! ## A091664.P6784947885010949666

`A018247(n)-A010051(2*(n+1))`
-/

namespace A091664.P6784947885010949666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018247 n - A010051 (2 * (n + 1))

end

end A091664.P6784947885010949666

/-! ## A091664.P16663800388016304079

`A018247(n)-char[A018235(3*n+4)]`
-/

namespace A091664.P16663800388016304079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018235 (3 * n + 4)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018247 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A091664.P16663800388016304079

/-! ## A091664.P8052271411326415481

`xor(char[A320659(3*n+2)], A018247(n))`
-/

namespace A091664.P8052271411326415481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320659 (3 * n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A018247 n)

end

end A091664.P8052271411326415481

/-! ## A091664.P9369111167668527510

`A018247(n)-A339059(A243129(n+1))`
-/

namespace A091664.P9369111167668527510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018247 n - A339059 (A243129 (n + 1)).toNat

end

end A091664.P9369111167668527510

/-! ## A091664.P4332923977621430262

`A063006(n)+A091661(n)-A018248(n)`
-/

namespace A091664.P4332923977621430262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063006 n + (A091661 n - A018248 n)

end

end A091664.P4332923977621430262

/-! ## A091664.P7671352417369259316

`A120817(n)+A120818(n)-A018248(n)`
-/

namespace A091664.P7671352417369259316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120817 n + (A120818 n - A018248 n)

end

end A091664.P7671352417369259316

/-! ## A091664.P12169990960206837409

`A225405(n)+A225408(n)-A018248(n)`
-/

namespace A091664.P12169990960206837409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225405 n + (A225408 n - A018248 n)

end

end A091664.P12169990960206837409

/-! ## A091664.P18091742942852139844

`A290372(n)+A290375(n)-A018248(n)`
-/

namespace A091664.P18091742942852139844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290372 n + (A290375 n - A018248 n)

end

end A091664.P18091742942852139844

/-! ## A091664.P15621484018514823972

`A290373(n)+A290374(n)-A018248(n)`
-/

namespace A091664.P15621484018514823972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290373 n + (A290374 n - A018248 n)

end

end A091664.P15621484018514823972

/-! ## A091664.P3611325046624883539

`and(A018247(n), A389172(n+1))`
-/

namespace A091664.P3611325046624883539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A018247 n) (A389172 (n + 1))

end

end A091664.P3611325046624883539

/-! ## A091664.P17142589189484597123

`and(A018247(n), A156760(n))`
-/

namespace A091664.P17142589189484597123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A018247 n) (A156760 n)

end

end A091664.P17142589189484597123

/-! ## A091664.P1014487026827163020

`and(A018247(n), A198694(n))`
-/

namespace A091664.P1014487026827163020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A018247 n) (A198694 n)

end

end A091664.P1014487026827163020

/-! ## A091664.P707921658907381947

`A216104(n+1)+A216105(n+1)-A018248(n)`
-/

namespace A091664.P707921658907381947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216104 (n + 1) + (A216105 (n + 1) - A018248 n)

end

end A091664.P707921658907381947

/-! ## A091664.P15793705549538172153

`A216159(n+1)+A216161(n+1)-A018248(n)`
-/

namespace A091664.P15793705549538172153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216159 (n + 1) + (A216161 (n + 1) - A018248 n)

end

end A091664.P15793705549538172153

/-!
# A091665: Triangle read by rows: T(n,k) is the number of nonseparable planar maps with 2*n+1 edges and a fixed outer face of 2*k edges which are invariant under a rotation of a 1/2 turn.

The programs for A091665, there is no canonical definition to state claims against.
-/

/-! ## A091665.P4981928107292949426

`A046652(A061579(n))`
-/

namespace A091665.P4981928107292949426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046652 (A061579 n).toNat

end

end A091665.P4981928107292949426

/-! ## A091665.P3763336141299021168

`A046652(A114327(n)+n)`
-/

namespace A091665.P3763336141299021168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046652 (A114327 n + (n : ℤ)).toNat

end

end A091665.P3763336141299021168

/-! ## A091665.P10822224588752933044

`A046652(∑[A198954(n)-1])`
-/

namespace A091665.P10822224588752933044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198954 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046652 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A091665.P10822224588752933044

/-! ## A091665.P1751591502899072584

`A046652(A038722(n+1)-1)`
-/

namespace A091665.P1751591502899072584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046652 (A038722 (n + 1) - 1).toNat

end

end A091665.P1751591502899072584

/-! ## A091665.P2565526482612505660

`A046652(A056943(∑[A035214(n)]))`
-/

namespace A091665.P2565526482612505660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035214 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046652 (A056943 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A091665.P2565526482612505660

/-! ## A091665.P2421591700877999426

`A046652(abs(A024000(A038722(n+1))))`
-/

namespace A091665.P2421591700877999426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046652 |A024000 (A038722 (n + 1)).toNat|.toNat

end

end A091665.P2421591700877999426

/-! ## A091665.P10875620112512546545

`A046652(A002378(n)%A014132(n+1))`
-/

namespace A091665.P10875620112512546545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046652 (Int.tmod (A002378 n) (A014132 (n + 1))).toNat

end

end A091665.P10875620112512546545

/-!
# A091666: Difference between prime(n)^2 and the next prime.

The programs for A091666, the canonical program `A091666.P2525373801874084828` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A091666 has offset 1).

The definition of A091666 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A091666.P2525373801874084828

`A062772(n+1)-A001248(n+1)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A091666

/-- `A062772(n+1)-A001248(n+1)` -/
def P2525373801874084828.Spec : Prop :=
  ∀ n, P2525373801874084828.a n = A091666 (n + 1)

theorem P2525373801874084828.correct : P2525373801874084828.Spec := by
  intro n
  simp only [A091666, Nat.add_sub_cancel]

end A091666

/-! ## A091666.P8733575316417708971

`A062772(n+1)%A000040(n+1)`
-/

namespace A091666.P8733575316417708971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A062772 (n + 1)) (A000040 (n + 1))

end

end A091666.P8733575316417708971

namespace A091666

/-- `A062772(n+1)%A000040(n+1)` -/
def P8733575316417708971.Spec : Prop :=
  ∀ n, P8733575316417708971.a n = A091666 (n + 1)

end A091666

/-! ## A091666.P2779506961435379822

`A054271(n+1)+2*A339640(n+1)`
-/

namespace A091666.P2779506961435379822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054271 (n + 1) + 2 * A339640 (n + 1)

end

end A091666.P2779506961435379822

namespace A091666

/-- `A054271(n+1)+2*A339640(n+1)` -/
def P2779506961435379822.Spec : Prop :=
  ∀ n, P2779506961435379822.a n = A091666 (n + 1)

end A091666

/-! ## A091666.P17491858562573276191

`A062772(n+1)-(A054271(n+1)+A054270(n+1))`
-/

namespace A091666.P17491858562573276191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062772 (n + 1) - (A054271 (n + 1) + A054270 (n + 1))

end

end A091666.P17491858562573276191

namespace A091666

/-- `A062772(n+1)-(A054271(n+1)+A054270(n+1))` -/
def P17491858562573276191.Spec : Prop :=
  ∀ n, P17491858562573276191.a n = A091666 (n + 1)

end A091666

/-! ## A091666.P11246227818995515783

`A053000(Δ[A007504(n)])`
-/

namespace A091666.P11246227818995515783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053000 (f1 (n + 1) - f1 n).toNat

end

end A091666.P11246227818995515783

namespace A091666

/-- `A053000(Δ[A007504(n)])` -/
def P11246227818995515783.Spec : Prop :=
  ∀ n, P11246227818995515783.a n = A091666 (n + 1)

end A091666

/-! ## A091666.P4099791417710886884

`A053000(A000040(n+1))`
-/

namespace A091666.P4099791417710886884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053000 (A000040 (n + 1)).toNat

end

end A091666.P4099791417710886884

namespace A091666

/-- `A053000(A000040(n+1))` -/
def P4099791417710886884.Spec : Prop :=
  ∀ n, P4099791417710886884.a n = A091666 (n + 1)

end A091666

/-! ## A091666.P14282807143610369937

`A053000(A006005(n+1))`
-/

namespace A091666.P14282807143610369937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053000 (A006005 (n + 1)).toNat

end

end A091666.P14282807143610369937

namespace A091666

/-- `A053000(A006005(n+1))` -/
def P14282807143610369937.Spec : Prop :=
  ∀ n, P14282807143610369937.a n = A091666 (n + 1)

end A091666

/-! ## A091666.P15191503628373180753

`A053000(A318871(n+1))`
-/

namespace A091666.P15191503628373180753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053000 (A318871 (n + 1)).toNat

end

end A091666.P15191503628373180753

namespace A091666

/-- `A053000(A318871(n+1))` -/
def P15191503628373180753.Spec : Prop :=
  ∀ n, P15191503628373180753.a n = A091666 (n + 1)

end A091666

/-! ## A091666.P3849457951254735308

`A053000(A008578(n+2))`
-/

namespace A091666.P3849457951254735308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053000 (A008578 (n + 2)).toNat

end

end A091666.P3849457951254735308

namespace A091666

/-- `A053000(A008578(n+2))` -/
def P3849457951254735308.Spec : Prop :=
  ∀ n, P3849457951254735308.a n = A091666 (n + 1)

end A091666

/-! ## A091666.P3369815663203118080

`A053000(A075643(n+2))`
-/

namespace A091666.P3369815663203118080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053000 (A075643 (n + 2)).toNat

end

end A091666.P3369815663203118080

namespace A091666

/-- `A053000(A075643(n+2))` -/
def P3369815663203118080.Spec : Prop :=
  ∀ n, P3369815663203118080.a n = A091666 (n + 1)

end A091666

/-! ## A091666.P11707636082335814241

`A053000(A182986(n+2))`
-/

namespace A091666.P11707636082335814241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053000 (A182986 (n + 2)).toNat

end

end A091666.P11707636082335814241

namespace A091666

/-- `A053000(A182986(n+2))` -/
def P11707636082335814241.Spec : Prop :=
  ∀ n, P11707636082335814241.a n = A091666 (n + 1)

end A091666

/-! ## A091666.P2807095759067040400

`A053000(eq[1, A003415(n)])`
-/

namespace A091666.P2807095759067040400
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053000 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A091666.P2807095759067040400

namespace A091666

/-- `A053000(eq[1, A003415(n)])` -/
def P2807095759067040400.Spec : Prop :=
  ∀ n, P2807095759067040400.a n = A091666 (n + 1)

end A091666

/-! ## A091666.P15316493100981236705

`A053000(eq[1, A018783(n)])`
-/

namespace A091666.P15316493100981236705
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018783 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053000 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A091666.P15316493100981236705

namespace A091666

/-- `A053000(eq[1, A018783(n)])` -/
def P15316493100981236705.Spec : Prop :=
  ∀ n, P15316493100981236705.a n = A091666 (n + 1)

end A091666

/-! ## A091666.P16731181990942332458

`A053000(lt[A051699(n), 1])`
-/

namespace A091666.P16731181990942332458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051699 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053000 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A091666.P16731181990942332458

namespace A091666

/-- `A053000(lt[A051699(n), 1])` -/
def P16731181990942332458.Spec : Prop :=
  ∀ n, P16731181990942332458.a n = A091666 (n + 1)

end A091666

/-! ## A091666.P14819313220409075002

`A053000(sqrt(A001248(n+1)))`
-/

namespace A091666.P14819313220409075002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053000 (SequenceMachineLib.roundAway (Real.sqrt (A001248 (n + 1) : ℝ))).toNat

end

end A091666.P14819313220409075002

namespace A091666

/-- `A053000(sqrt(A001248(n+1)))` -/
def P14819313220409075002.Spec : Prop :=
  ∀ n, P14819313220409075002.a n = A091666 (n + 1)

end A091666

/-! ## A091666.P8786934282749482506

`A053000(record[A006530(n+2)])`
-/

namespace A091666.P8786934282749482506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053000 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A091666.P8786934282749482506

namespace A091666

/-- `A053000(record[A006530(n+2)])` -/
def P8786934282749482506.Spec : Prop :=
  ∀ n, P8786934282749482506.a n = A091666 (n + 1)

end A091666

/-! ## A091666.P12630044083141476234

`A053000(record[A014963(n+2)])`
-/

namespace A091666.P12630044083141476234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053000 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A091666.P12630044083141476234

namespace A091666

/-- `A053000(record[A014963(n+2)])` -/
def P12630044083141476234.Spec : Prop :=
  ∀ n, P12630044083141476234.a n = A091666 (n + 1)

end A091666

/-! ## A091666.P9239136085946354982

`A053000(record[A020639(n+2)])`
-/

namespace A091666.P9239136085946354982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053000 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A091666.P9239136085946354982

namespace A091666

/-- `A053000(record[A020639(n+2)])` -/
def P9239136085946354982.Spec : Prop :=
  ∀ n, P9239136085946354982.a n = A091666 (n + 1)

end A091666

/-! ## A091666.P10094437457562080113

`A053000(A006093(n+1)+1)`
-/

namespace A091666.P10094437457562080113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053000 (A006093 (n + 1) + 1).toNat

end

end A091666.P10094437457562080113

namespace A091666

/-- `A053000(A006093(n+1)+1)` -/
def P10094437457562080113.Spec : Prop :=
  ∀ n, P10094437457562080113.a n = A091666 (n + 1)

end A091666

/-! ## A091666.P10413589064381893271

`A053000(eq[1, A013632(n)]+1)`
-/

namespace A091666.P10413589064381893271
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013632 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053000 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A091666.P10413589064381893271

namespace A091666

/-- `A053000(eq[1, A013632(n)]+1)` -/
def P10413589064381893271.Spec : Prop :=
  ∀ n, P10413589064381893271.a n = A091666 (n + 1)

end A091666

/-!
# A091669: a(n) = (2^(n-1)/n!) * Product_{k=1..n-1} (2^k-1).

The programs for A091669, the canonical program `A091669.P15272928843470739162` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A091669 has offset 1).

The definition of A091669 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A091669.P15272928843470739162

`2^n*A005329(n)/(n+1)!`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A091669

/-- `2^n*A005329(n)/(n+1)!` -/
def P15272928843470739162.Spec : Prop :=
  ∀ n, P15272928843470739162.a n = (A091669 (n + 1) : ℚ)

end A091669

/-! ## A091669.P8395452146275534742

`(2^(n+1)-2)/(n+1)*a(n-1)` with `a(0)=1`
-/

namespace A091669.P8395452146275534742
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  ((2 ^ (n + 1) : ℤ) - 2 : ℚ) / (n + 1 : ℚ) * a (n - 1)

end

end A091669.P8395452146275534742

namespace A091669

/-- `(2^(n+1)-2)/(n+1)*a(n-1)` -/
def P8395452146275534742.Spec : Prop :=
  ∀ n, P8395452146275534742.a n = (A091669 (n + 1) : ℚ)

end A091669

/-! ## A091669.P8559878556858156151

`∏[A095121(n)/(n+1)]`
-/

namespace A091669.P8559878556858156151
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A095121 n : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A091669.P8559878556858156151

namespace A091669

/-- `∏[A095121(n)/(n+1)]` -/
def P8559878556858156151.Spec : Prop :=
  ∀ n, P8559878556858156151.a n = (A091669 (n + 1) : ℚ)

end A091669

/-! ## A091669.P3152365321511466322

`A305627(n)/(n+1)`
-/

namespace A091669.P3152365321511466322
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A305627 n : ℚ) / (n + 1 : ℚ)

end

end A091669.P3152365321511466322

namespace A091669

/-- `A305627(n)/(n+1)` -/
def P3152365321511466322.Spec : Prop :=
  ∀ n, P3152365321511466322.a n = (A091669 (n + 1) : ℚ)

end A091669

/-! ## A091669.P8930175732520026382

`a(n-1)*A255047(n)*2/(n+1)` with `a(0)=1`
-/

namespace A091669.P8930175732520026382
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * (A255047 n : ℚ) * (2 / (n + 1 : ℚ))

end

end A091669.P8930175732520026382

namespace A091669

/-- `a(n-1)*A255047(n)*2/(n+1)` -/
def P8930175732520026382.Spec : Prop :=
  ∀ n, P8930175732520026382.a n = (A091669 (n + 1) : ℚ)

end A091669

/-!
# A091678: In base 4, numbers n of the form k + reverse(k) for at least one k.

The programs for A091678, there is no canonical definition to state claims against.
-/

/-! ## A091678.P5114413599523737162

`eq[1, char[A055948(n)]]`
-/

namespace A091678.P5114413599523737162
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055948 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A091678.P5114413599523737162

/-! ## A091678.P7754596646734942563

`eq[1, char[A030103(n)+n]]`
-/

namespace A091678.P7754596646734942563
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030103 n + (n : ℤ)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A091678.P7754596646734942563

/-! ## A091678.P10952569655875822396

`record[char[A055948(n)]*A254667(n)]`
-/

namespace A091678.P10952569655875822396
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055948 n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A254667 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A091678.P10952569655875822396

/-! ## A091678.P14279613424756861607

`record[A002378(n)/(n+1)*char[A055948(n)]]`
-/

namespace A091678.P14279613424756861607
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055948 n

open Classical in
def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002378 n : ℚ) / (n + 1 : ℚ) * ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A091678.P14279613424756861607

/-! ## A091678.P17048093095611095019

`comp[A091679(n)]`
-/

namespace A091678.P17048093095611095019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091679 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A091678.P17048093095611095019

/-!
# A091679: In base 4, numbers n not of the form k + reverse(k) for any k.

The programs for A091679, there is no canonical definition to state claims against.
-/

/-! ## A091679.P13059417750844662461

`comp[A055948(n)]`
-/

namespace A091679.P13059417750844662461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055948 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A091679.P13059417750844662461

/-! ## A091679.P1197674349754041060

`comp[A091678(n)]`
-/

namespace A091679.P1197674349754041060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091678 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A091679.P1197674349754041060

/-! ## A091679.P2490859885711420274

`comp[A030103(n)+n]`
-/

namespace A091679.P2490859885711420274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030103 n + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A091679.P2490859885711420274

/-! ## A091679.P4871245650307521158

`comp[2*n-A055949(n)]`
-/

namespace A091679.P4871245650307521158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - A055949 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A091679.P4871245650307521158

/-! ## A091679.P18100719663630518662

`comp[n-A055949(n%(n+1))+n]`
-/

namespace A091679.P18100719663630518662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A055949 (n % (n + 1)) + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A091679.P18100719663630518662

/-! ## A091679.P13773823148507305200

`comp[n+1-A055949(n+1)+n]+1`
-/

namespace A091679.P13773823148507305200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A055949 (n + 1) + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A091679.P13773823148507305200

/-! ## A091679.P1201951318035499890

`comp[n-A055949(n)-A001489(n)]`
-/

namespace A091679.P1201951318035499890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A055949 n - A001489 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A091679.P1201951318035499890

/-! ## A091679.P17785628345653134529

`comp[A048703(n)%A008574(n)+n]`
-/

namespace A091679.P17785628345653134529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A048703 n) (A008574 n) + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A091679.P17785628345653134529

/-! ## A091679.P6580918154846081494

`eq[char[A055948(n)], A007814(2*n+1)]`
-/

namespace A091679.P6580918154846081494
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055948 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A091679.P6580918154846081494

/-! ## A091679.P15386443884518598491

`eq[1, A297253((n+1)*char[A055948(n)]+1)]`
-/

namespace A091679.P15386443884518598491
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055948 n

open Classical in
def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297253 ((n + 1) * (if ∃ j, f3 j = (n : ℤ) then 1 else 0) + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A091679.P15386443884518598491

/-!
# A091684: a(n) = 0 if n is divisible by 3, otherwise a(n) = n.

The programs for A091684, the canonical program `A091684.P4172566819234303247` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A091684 has offset 0).

The definition of A091684 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A091684.P4172566819234303247

`n*A011655(n)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A091684

/-- `n*A011655(n)` -/
def P4172566819234303247.Spec : Prop :=
  ∀ n, P4172566819234303247.a n = A091684 n

theorem P4172566819234303247.correct : P4172566819234303247.Spec := by
  intro n
  simp only [A091684]

end A091684

/-! ## A091684.P4624849340206858621

`n*(A000045(n)-2*floor(A000045(n)/2))`
-/

namespace A091684.P4624849340206858621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A000045 n - 2 * ⌊(A000045 n : ℚ) / 2⌋)

end

end A091684.P4624849340206858621

namespace A091684

/-- `n*(A000045(n)-2*floor(A000045(n)/2))` -/
def P4624849340206858621.Spec : Prop :=
  ∀ n, P4624849340206858621.a n = A091684 n

end A091684

/-! ## A091684.P16660988368968461731

`n*n²%3`
-/

namespace A091684.P16660988368968461731
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (n ^ 2 % 3)

end

end A091684.P16660988368968461731

namespace A091684

/-- `n*n²%3` -/
def P16660988368968461731.Spec : Prop :=
  ∀ n, (P16660988368968461731.a n : ℤ) = A091684 n

theorem P16660988368968461731.correct : P16660988368968461731.Spec := by
  intro n
  simp only [A091684, Nat.add_sub_cancel, A091684.P16660988368968461731.a, A091684.P4172566819234303247.a, A011655, A011655.P15232422005463079339.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A091684

/-! ## A091684.P583027428253129414

`lcm(n, round(sin(dr(n))))`
-/

namespace A091684.P583027428253129414
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (SequenceMachineLib.roundAway (Real.sin (SequenceMachineLib.digitalRoot (n : ℤ) : ℝ)))

end

end A091684.P583027428253129414

namespace A091684

/-- `lcm(n, round(sin(dr(n))))` -/
def P583027428253129414.Spec : Prop :=
  ∀ n, (P583027428253129414.a n : ℤ) = A091684 n

end A091684

/-! ## A091684.P260610249798692684

`and(n, -n²%3)`
-/

namespace A091684.P260610249798692684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (Int.tmod (-(n ^ 2 : ℤ)) 3)

end

end A091684.P260610249798692684

namespace A091684

/-- `and(n, -n²%3)` -/
def P260610249798692684.Spec : Prop :=
  ∀ n, P260610249798692684.a n = A091684 n

end A091684

/-! ## A091684.P13879042094111674245

`n*floor(sqrt(n%3))`
-/

namespace A091684.P13879042094111674245
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.sqrt (n % 3)

end

end A091684.P13879042094111674245

namespace A091684

/-- `n*floor(sqrt(n%3))` -/
def P13879042094111674245.Spec : Prop :=
  ∀ n, (P13879042094111674245.a n : ℤ) = A091684 n

end A091684

/-! ## A091684.P18427721767033064775

`C(n, dr(n^6)!)`
-/

namespace A091684.P18427721767033064775
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (Nat.factorial (SequenceMachineLib.digitalRoot (n ^ 6 : ℤ)))

end

end A091684.P18427721767033064775

namespace A091684

/-- `C(n, dr(n^6)!)` -/
def P18427721767033064775.Spec : Prop :=
  ∀ n, (P18427721767033064775.a n : ℤ) = A091684 n

end A091684

/-! ## A091684.P10969968797136675209

`n*char[comp[3*n]]`
-/

namespace A091684.P10969968797136675209
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (if ∃ j, f1 j = n then 1 else 0)

end

end A091684.P10969968797136675209

namespace A091684

/-- `n*char[comp[3*n]]` -/
def P10969968797136675209.Spec : Prop :=
  ∀ n, (P10969968797136675209.a n : ℤ) = A091684 n

end A091684

/-! ## A091684.P13763205101525654022

`and(n, char[3*n]-1)`
-/

namespace A091684.P13763205101525654022
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) - 1)

end

end A091684.P13763205101525654022

namespace A091684

/-- `and(n, char[3*n]-1)` -/
def P13763205101525654022.Spec : Prop :=
  ∀ n, P13763205101525654022.a n = A091684 n

end A091684

/-! ## A091684.P4229726711175277026

`xor(n, n*char[3*n])`
-/

namespace A091684.P4229726711175277026
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (n * (if ∃ j, f1 j = n then 1 else 0))

end

end A091684.P4229726711175277026

namespace A091684

/-- `xor(n, n*char[3*n])` -/
def P4229726711175277026.Spec : Prop :=
  ∀ n, (P4229726711175277026.a n : ℤ) = A091684 n

end A091684

/-! ## A091684.P14109776755406260575

`abs(n*(1-(n+1)%3))`
-/

namespace A091684.P14109776755406260575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) * (1 - (((n + 1) % 3 : ℕ) : ℤ))|

end

end A091684.P14109776755406260575

namespace A091684

/-- `abs(n*(1-(n+1)%3))` -/
def P14109776755406260575.Spec : Prop :=
  ∀ n, P14109776755406260575.a n = A091684 n

end A091684

/-! ## A091684.P229364254443968856

`n-n*val(n²+3, 3)`
-/

namespace A091684.P229364254443968856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (n * SequenceMachineLib.valuation (n ^ 2 + 3) 3 : ℤ)

end

end A091684.P229364254443968856

namespace A091684

/-- `n-n*val(n²+3, 3)` -/
def P229364254443968856.Spec : Prop :=
  ∀ n, P229364254443968856.a n = A091684 n

end A091684

/-! ## A091684.P6312152763855447252

`n-n*∑[n+1]%3`
-/

namespace A091684.P6312152763855447252
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((n * ((∑ j ∈ Finset.range (n + 1), f1 j) % 3) : ℕ) : ℤ)

end

end A091684.P6312152763855447252

namespace A091684

/-- `n-n*∑[n+1]%3` -/
def P6312152763855447252.Spec : Prop :=
  ∀ n, P6312152763855447252.a n = A091684 n

end A091684

/-! ## A091684.P14846535499308464241

`(char[3*n]+n)%(n+1)`
-/

namespace A091684.P14846535499308464241
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0) + n) % (n + 1)

end

end A091684.P14846535499308464241

namespace A091684

/-- `(char[3*n]+n)%(n+1)` -/
def P14846535499308464241.Spec : Prop :=
  ∀ n, (P14846535499308464241.a n : ℤ) = A091684 n

end A091684

/-! ## A091684.P16537747295779871789

`(lcm(3, 2*n)-2*n)/4`
-/

namespace A091684.P16537747295779871789
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.lcm 3 (2 * n) : ℤ) - (2 * n : ℤ) : ℚ) / 4

end

end A091684.P16537747295779871789

namespace A091684

/-- `(lcm(3, 2*n)-2*n)/4` -/
def P16537747295779871789.Spec : Prop :=
  ∀ n, P16537747295779871789.a n = (A091684 n : ℚ)

end A091684

/-! ## A091684.P397782752438849495

`C(n, 2*gcd(3, n)+n-3)`
-/

namespace A091684.P397782752438849495
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n ((2 * Nat.gcd 3 n : ℤ) + ((n : ℤ) - 3)).toNat

end

end A091684.P397782752438849495

namespace A091684

/-- `C(n, 2*gcd(3, n)+n-3)` -/
def P397782752438849495.Spec : Prop :=
  ∀ n, (P397782752438849495.a n : ℤ) = A091684 n

end A091684

/-! ## A091684.P615795919521253407

`C(n, (n-1)^((n+2)%3))`
-/

namespace A091684.P615795919521253407
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (((n : ℤ) - 1) ^ ((n + 2) % 3)).toNat

end

end A091684.P615795919521253407

namespace A091684

/-- `C(n, (n-1)^((n+2)%3))` -/
def P615795919521253407.Spec : Prop :=
  ∀ n, (P615795919521253407.a n : ℤ) = A091684 n

end A091684

/-! ## A091684.P12802141455764181884

`C(n, (n+1)^val(n+3, 3))`
-/

namespace A091684.P12802141455764181884
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n ((n + 1) ^ SequenceMachineLib.valuation (n + 3) 3)

end

end A091684.P12802141455764181884

namespace A091684

/-- `C(n, (n+1)^val(n+3, 3))` -/
def P12802141455764181884.Spec : Prop :=
  ∀ n, (P12802141455764181884.a n : ℤ) = A091684 n

end A091684

/-! ## A091684.P530286560814603817

`C(n, val((n+3)², 3)+n-1)`
-/

namespace A091684.P530286560814603817
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n ((SequenceMachineLib.valuation ((n + 3) ^ 2) 3 : ℤ) + ((n : ℤ) - 1)).toNat

end

end A091684.P530286560814603817

namespace A091684

/-- `C(n, val((n+3)², 3)+n-1)` -/
def P530286560814603817.Spec : Prop :=
  ∀ n, (P530286560814603817.a n : ℤ) = A091684 n

end A091684

/-! ## A091684.P14448706956639575917

`floor(n/(n+1)^val(n+3, 3))`
-/

namespace A091684.P14448706956639575917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / ((n + 1) ^ SequenceMachineLib.valuation (n + 3) 3 : ℚ)⌋

end

end A091684.P14448706956639575917

namespace A091684

/-- `floor(n/(n+1)^val(n+3, 3))` -/
def P14448706956639575917.Spec : Prop :=
  ∀ n, P14448706956639575917.a n = A091684 n

end A091684

/-!
# A091685: Sieve out 6n+1 and 6n-1.

The programs for A091685, the canonical program `A091685.P15343924558257190429` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A091685 has offset 0).

The definition of A091685 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A091685.P15343924558257190429

`n*val(n²+5, 6)`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A091685

/-- `n*val(n²+5, 6)` -/
def P15343924558257190429.Spec : Prop :=
  ∀ n, (P15343924558257190429.a n : ℤ) = A091685 n

theorem P15343924558257190429.correct : P15343924558257190429.Spec := by
  intro n
  simp only [A091685]

end A091685

/-! ## A091685.P11513550195580625733

`lcm(n, val(n²+5, 6))`
-/

namespace A091685.P11513550195580625733
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm n (SequenceMachineLib.valuation (n ^ 2 + 5) 6)

end

end A091685.P11513550195580625733

namespace A091685

/-- `lcm(n, val(n²+5, 6))` -/
def P11513550195580625733.Spec : Prop :=
  ∀ n, (P11513550195580625733.a n : ℤ) = A091685 n

end A091685

/-! ## A091685.P10518112581866082449

`n*floor(1/gcd(6, n))`
-/

namespace A091685.P10518112581866082449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ⌊1 / (Nat.gcd 6 n : ℚ)⌋

end

end A091685.P10518112581866082449

namespace A091685

/-- `n*floor(1/gcd(6, n))` -/
def P10518112581866082449.Spec : Prop :=
  ∀ n, P10518112581866082449.a n = A091685 n

end A091685

/-! ## A091685.P4762162430952339613

`n*and(n, n²%3)`
-/

namespace A091685.P4762162430952339613
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.land n (n ^ 2 % 3)

end

end A091685.P4762162430952339613

namespace A091685

/-- `n*and(n, n²%3)` -/
def P4762162430952339613.Spec : Prop :=
  ∀ n, (P4762162430952339613.a n : ℤ) = A091685 n

end A091685

/-! ## A091685.P5325033907490545865

`and(n, -val(n²+5, 6))`
-/

namespace A091685.P5325033907490545865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-(SequenceMachineLib.valuation (n ^ 2 + 5) 6 : ℤ))

end

end A091685.P5325033907490545865

namespace A091685

/-- `and(n, -val(n²+5, 6))` -/
def P5325033907490545865.Spec : Prop :=
  ∀ n, P5325033907490545865.a n = A091685 n

end A091685

/-! ## A091685.P13574867896020899975

`n*char[or(1, 3*n+1)]`
-/

namespace A091685.P13574867896020899975
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (3 * n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (if ∃ j, f1 j = n then 1 else 0)

end

end A091685.P13574867896020899975

namespace A091685

/-- `n*char[or(1, 3*n+1)]` -/
def P13574867896020899975.Spec : Prop :=
  ∀ n, (P13574867896020899975.a n : ℤ) = A091685 n

end A091685

/-! ## A091685.P17232867345147818846

`n*(1-char[∑[gcd(2, ∑[n])]])`
-/

namespace A091685.P17232867345147818846
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 (∑ j ∈ Finset.range (n + 1), f3 j)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (1 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ))

end

end A091685.P17232867345147818846

namespace A091685

/-- `n*(1-char[∑[gcd(2, ∑[n])]])` -/
def P17232867345147818846.Spec : Prop :=
  ∀ n, P17232867345147818846.a n = A091685 n

end A091685

/-! ## A091685.P9426956803764962693

`n*char[a(n-2)+6]` with `a(0)=1, a(1)=5`
-/

namespace A091685.P9426956803764962693
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 5] fun n f1 =>
  f1 (n - 2) + 6

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (if ∃ j, f1 j = n then 1 else 0)

end

end A091685.P9426956803764962693

namespace A091685

/-- `n*char[a(n-2)+6]` -/
def P9426956803764962693.Spec : Prop :=
  ∀ n, (P9426956803764962693.a n : ℤ) = A091685 n

end A091685

/-! ## A091685.P12016085545417582491

`n*(n*(n*n)%3)%2`
-/

namespace A091685.P12016085545417582491
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (n * (n * n % 3) % 2)

end

end A091685.P12016085545417582491

namespace A091685

/-- `n*(n*(n*n)%3)%2` -/
def P12016085545417582491.Spec : Prop :=
  ∀ n, (P12016085545417582491.a n : ℤ) = A091685 n

end A091685

/-! ## A091685.P14656417630925750501

`n*char[∑[3-(-1)^n]-1]`
-/

namespace A091685.P14656417630925750501
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - (-1) ^ n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (if ∃ j, f1 j = (n : ℤ) then 1 else 0)

end

end A091685.P14656417630925750501

namespace A091685

/-- `n*char[∑[3-(-1)^n]-1]` -/
def P14656417630925750501.Spec : Prop :=
  ∀ n, (P14656417630925750501.a n : ℤ) = A091685 n

end A091685

/-! ## A091685.P17819400492659663326

`lcm(n, A109017(n))`
-/

namespace A091685.P17819400492659663326
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (A109017 n)

end

end A091685.P17819400492659663326

namespace A091685

/-- `lcm(n, A109017(n))` -/
def P17819400492659663326.Spec : Prop :=
  ∀ n, (P17819400492659663326.a n : ℤ) = A091685 n

end A091685

/-! ## A091685.P10649684134577496806

`abs(n*A110161(n))`
-/

namespace A091685.P10649684134577496806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) * A110161 n|

end

end A091685.P10649684134577496806

namespace A091685

/-- `abs(n*A110161(n))` -/
def P10649684134577496806.Spec : Prop :=
  ∀ n, P10649684134577496806.a n = A091685 n

end A091685

/-! ## A091685.P4656672493778699896

`abs(n*A134667(n))`
-/

namespace A091685.P4656672493778699896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) * A134667 n|

end

end A091685.P4656672493778699896

namespace A091685

/-- `abs(n*A134667(n))` -/
def P4656672493778699896.Spec : Prop :=
  ∀ n, P4656672493778699896.a n = A091685 n

end A091685

/-! ## A091685.P14576699349350459890

`abs(n*A163811(n))`
-/

namespace A091685.P14576699349350459890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) * A163811 n|

end

end A091685.P14576699349350459890

namespace A091685

/-- `abs(n*A163811(n))` -/
def P14576699349350459890.Spec : Prop :=
  ∀ n, P14576699349350459890.a n = A091685 n

end A091685

/-! ## A091685.P3673163792541386383

`abs(n*A163817(n))`
-/

namespace A091685.P3673163792541386383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) * A163817 n|

end

end A091685.P3673163792541386383

namespace A091685

/-- `abs(n*A163817(n))` -/
def P3673163792541386383.Spec : Prop :=
  ∀ n, P3673163792541386383.a n = A091685 n

end A091685

/-! ## A091685.P2151041990804197302

`A091684(n-a(n-3))` with `a(0)=0, a(1)=1, a(2)=0`
-/

namespace A091685.P2151041990804197302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 0] fun n a =>
  A091684 ((n : ℤ) - a (n - 3)).toNat

end

end A091685.P2151041990804197302

namespace A091685

/-- `A091684(n-a(n-3))` -/
def P2151041990804197302.Spec : Prop :=
  ∀ n, P2151041990804197302.a n = A091685 n

end A091685

/-! ## A091685.P4040205037042583485

`and(n, A008683(gcd(2*n², (n+3)²)))`
-/

namespace A091685.P4040205037042583485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (A008683 (Nat.gcd (2 * n ^ 2) ((n + 3) ^ 2)))

end

end A091685.P4040205037042583485

namespace A091685

/-- `and(n, A008683(gcd(2*n², (n+3)²)))` -/
def P4040205037042583485.Spec : Prop :=
  ∀ n, P4040205037042583485.a n = A091685 n

end A091685

/-! ## A091685.P12043893210999722542

`A091684(n*A000035(n))`
-/

namespace A091685.P12043893210999722542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091684 ((n : ℤ) * A000035 n).toNat

end

end A091685.P12043893210999722542

namespace A091685

/-- `A091684(n*A000035(n))` -/
def P12043893210999722542.Spec : Prop :=
  ∀ n, P12043893210999722542.a n = A091685 n

end A091685

/-! ## A091685.P1208581846763225445

`A091684(n*A093719(n))`
-/

namespace A091685.P1208581846763225445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091684 ((n : ℤ) * A093719 n).toNat

end

end A091685.P1208581846763225445

namespace A091685

/-- `A091684(n*A093719(n))` -/
def P1208581846763225445.Spec : Prop :=
  ∀ n, P1208581846763225445.a n = A091685 n

end A091685

/-! ## A091685.P13496419473418275791

`A020875(n)%A066393(n)`
-/

namespace A091685.P13496419473418275791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A020875 n) (A066393 n)

end

end A091685.P13496419473418275791

namespace A091685

/-- `A020875(n)%A066393(n)` -/
def P13496419473418275791.Spec : Prop :=
  ∀ n, P13496419473418275791.a n = A091685 n

end A091685

/-!
# A091686: a(n) = 0^n + ((n-9)/9)*(1-10^n).

The programs for A091686, the canonical program `A091686.P8169437394337413360` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A091686 has offset 0).

The definition of A091686 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A091686.P8169437394337413360

`0^n+(n-9)/9*(1-10^n)`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A091686

/-- `0^n+(n-9)/9*(1-10^n)` -/
def P8169437394337413360.Spec : Prop :=
  ∀ n, P8169437394337413360.a n = (A091686 n : ℚ)

end A091686

/-!
# A091687: Number of lattice congruences of the weak order on the Coxeter group S_n (the symmetric group).

The programs for A091687, there is no canonical definition to state claims against.
-/

/-! ## A091687.P129809253716516086

`A287724(A055621(n))+A004111(n)`
-/

namespace A091687.P129809253716516086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287724 (A055621 n).toNat + A004111 n

end

end A091687.P129809253716516086

/-!
# A091689: Smallest partition number with n-th prime as factor.

The programs for A091689, there is no canonical definition to state claims against.
-/

/-! ## A091689.P8320628683456418754

`A000041(A091690(n+1))`
-/

namespace A091689.P8320628683456418754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A091690 (n + 1)).toNat

end

end A091689.P8320628683456418754

/-! ## A091689.P4006685267136853211

`A072871(eq[1, ∏{p}[n+1, (n+1)/#]%(n+1)]+1)`
-/

namespace A091689.P4006685267136853211
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (∏ p ∈ Nat.primeFactors (f3 n), (n + 1 : ℚ) / (p : ℚ))) (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072871 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A091689.P4006685267136853211

/-! ## A091689.P9034151799184594019

`A072871(Δ[A007504(n)])`
-/

namespace A091689.P9034151799184594019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072871 (f1 (n + 1) - f1 n).toNat

end

end A091689.P9034151799184594019

/-! ## A091689.P5181176358385520967

`A072871(A000040(n+1))`
-/

namespace A091689.P5181176358385520967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072871 (A000040 (n + 1)).toNat

end

end A091689.P5181176358385520967

/-! ## A091689.P10842104834831094362

`A072871(record[A074399(n+1)])`
-/

namespace A091689.P10842104834831094362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074399 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072871 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A091689.P10842104834831094362

/-! ## A091689.P7915414859511512767

`A072871(A006093(n+1)+1)`
-/

namespace A091689.P7915414859511512767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072871 (A006093 (n + 1) + 1).toNat

end

end A091689.P7915414859511512767

/-!
# A091690: Smallest integer m such that the n-th prime A000040(n) divides partition number A000041(m).

The programs for A091690, there is no canonical definition to state claims against.
-/

/-! ## A091690.P5079403324215969065

`A046641(A000040(n+1))`
-/

namespace A091690.P5079403324215969065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046641 (A000040 (n + 1)).toNat

end

end A091690.P5079403324215969065

/-! ## A091690.P5665981980684382964

`A046641(A008578(n+2))`
-/

namespace A091690.P5665981980684382964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046641 (A008578 (n + 2)).toNat

end

end A091690.P5665981980684382964

/-! ## A091690.P16046477924926366878

`A046641(A182986(n+2))`
-/

namespace A091690.P16046477924926366878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046641 (A182986 (n + 2)).toNat

end

end A091690.P16046477924926366878

/-! ## A091690.P10889334110342308573

`A046641(record[A006530(n+2)])`
-/

namespace A091690.P10889334110342308573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046641 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A091690.P10889334110342308573

/-! ## A091690.P8111500154154010094

`A046641(record[A020639(n+2)])`
-/

namespace A091690.P8111500154154010094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046641 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A091690.P8111500154154010094

/-! ## A091690.P15606690315142677750

`A046641(A207790(2*(n+1)))`
-/

namespace A091690.P15606690315142677750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046641 (A207790 (2 * (n + 1))).toNat

end

end A091690.P15606690315142677750

/-! ## A091690.P12053101571578993287

`A046641(record[A014963(n+2)])`
-/

namespace A091690.P12053101571578993287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046641 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A091690.P12053101571578993287

/-! ## A091690.P6250097791786122760

`A046641(record[Δ[A046669(n+1)]])`
-/

namespace A091690.P6250097791786122760
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046669 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046641 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A091690.P6250097791786122760

/-!
# A091691: a(n) = (10^(n-1)-1) * (n-10) / 9.

The programs for A091691, the canonical program `A091691.P12521606497209795470` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A091691 has offset 0).

The definition of A091691 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A091691.P12521606497209795470

`(10^(n-1)-1)*(n-10)/9`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A091691

/-- `(10^(n-1)-1)*(n-10)/9` -/
def P12521606497209795470.Spec : Prop :=
  ∀ n, P12521606497209795470.a n = (A091691 n : ℚ)

end A091691

/-! ## A091691.P13877990497630383347

`A244173(A244112(n))-A056967(A008591(n))`
-/

namespace A091691.P13877990497630383347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244173 ((A244112 n).toNat + 10) - A056967 (A008591 n).toNat

end

end A091691.P13877990497630383347

namespace A091691

/-- `A244173(A244112(n))-A056967(A008591(n))` -/
def P13877990497630383347.Spec : Prop :=
  ∀ n, P13877990497630383347.a n = A091691 n

end A091691

/-!
# A091692: a(n) = (10^n-1) * (n+9) / 9.

The programs for A091692, the canonical program `A091692.P6763474380622233412` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A091692 has offset 0).

The definition of A091692 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A091692.P6763474380622233412

`(10^n-1)*(n+9)/9`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A091692

/-- `(10^n-1)*(n+9)/9` -/
def P6763474380622233412.Spec : Prop :=
  ∀ n, P6763474380622233412.a n = (A091692 n : ℚ)

end A091692

/-! ## A091692.P12898332084454242516

`lcm(n+9, (n+9)*A002275(n))`
-/

namespace A091692.P12898332084454242516
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 9 : ℤ) ((n + 9 : ℤ) * A002275 n)

end

end A091692.P12898332084454242516

namespace A091692

/-- `lcm(n+9, (n+9)*A002275(n))` -/
def P12898332084454242516.Spec : Prop :=
  ∀ n, (P12898332084454242516.a n : ℤ) = A091692 n

end A091692

/-! ## A091692.P2468065079004949023

`A053422(n)+A002283(n)`
-/

namespace A091692.P2468065079004949023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053422 n + A002283 n

end

end A091692.P2468065079004949023

namespace A091692

/-- `A053422(n)+A002283(n)` -/
def P2468065079004949023.Spec : Prop :=
  ∀ n, P2468065079004949023.a n = A091692 n

end A091692

/-! ## A091692.P1197656774268876440

`A002283(n)+n*A002275(n)`
-/

namespace A091692.P1197656774268876440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002283 n + (n : ℤ) * A002275 n

end

end A091692.P1197656774268876440

namespace A091692

/-- `A002283(n)+n*A002275(n)` -/
def P1197656774268876440.Spec : Prop :=
  ∀ n, P1197656774268876440.a n = A091692 n

end A091692

/-! ## A091692.P7267649624874765929

`A002282(n)+(n+1)*A002275(n)`
-/

namespace A091692.P7267649624874765929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002282 n + (n + 1 : ℤ) * A002275 n

end

end A091692.P7267649624874765929

namespace A091692

/-- `A002282(n)+(n+1)*A002275(n)` -/
def P7267649624874765929.Spec : Prop :=
  ∀ n, P7267649624874765929.a n = A091692 n

end A091692

/-! ## A091692.P15597412988531533995

`A002281(n)+(n+2)*A002275(n)`
-/

namespace A091692.P15597412988531533995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002281 n + (n + 2 : ℤ) * A002275 n

end

end A091692.P15597412988531533995

namespace A091692

/-- `A002281(n)+(n+2)*A002275(n)` -/
def P15597412988531533995.Spec : Prop :=
  ∀ n, P15597412988531533995.a n = A091692 n

end A091692

/-! ## A091692.P1370916903887635346

`A002276(n)+(n+7)*A002275(n)`
-/

namespace A091692.P1370916903887635346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002276 n + (n + 7 : ℤ) * A002275 n

end

end A091692.P1370916903887635346

namespace A091692

/-- `A002276(n)+(n+7)*A002275(n)` -/
def P1370916903887635346.Spec : Prop :=
  ∀ n, P1370916903887635346.a n = A091692 n

end A091692

/-!
# A091693: a(n) = (n*10^n - n + 9)/9.

The programs for A091693, the canonical program `A091693.P2021413510228669694` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A091693 has offset 0).

The definition of A091693 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n*10^n-n+9)/9` (program `A091693.P11441324709712795646`, by `A091693.P11441324709712795646.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A091693.P11441324709712795646

`(n*10^n-n+9)/9`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A091693.P11441324709712795646
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n * 10 ^ n : ℤ) - (n : ℤ) + 9 : ℚ) / 9

end

end A091693.P11441324709712795646

namespace A091693

/-- `(n*10^n-n+9)/9` -/
def P11441324709712795646.Spec : Prop :=
  ∀ n, P11441324709712795646.a n = (A091693 n : ℚ)

theorem P11441324709712795646.correct : P11441324709712795646.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A091693, Nat.add_sub_cancel, A091693.P11441324709712795646.a, A091693.P2021413510228669694.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A091693, Nat.add_sub_cancel, A091693.P11441324709712795646.a, A091693.P2021413510228669694.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A091693

/-! ## A091693.P2021413510228669694

`22*a(n-1)-141*a(n-2)+220*a(n-3)-100*a(n-4)` with `a(0)=1, a(1)=2, a(2)=23, a(3)=334`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A091693

/-- `22*a(n-1)-141*a(n-2)+220*a(n-3)-100*a(n-4)` -/
def P2021413510228669694.Spec : Prop :=
  ∀ n, P2021413510228669694.a n = A091693 n

theorem P2021413510228669694.correct : P2021413510228669694.Spec := by
  intro n
  simp only [A091693]

end A091693

/-! ## A091693.P1247325838354458706

`A053422(n)+1`
-/

namespace A091693.P1247325838354458706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053422 n + 1

end

end A091693.P1247325838354458706

namespace A091693

/-- `A053422(n)+1` -/
def P1247325838354458706.Spec : Prop :=
  ∀ n, P1247325838354458706.a n = A091693 n

end A091693

/-! ## A091693.P4082167787232368683

`n*A002275(n)+1`
-/

namespace A091693.P4082167787232368683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A002275 n + 1

end

end A091693.P4082167787232368683

namespace A091693

/-- `n*A002275(n)+1` -/
def P4082167787232368683.Spec : Prop :=
  ∀ n, P4082167787232368683.a n = A091693 n

end A091693

/-! ## A091693.P1326367314191809609

`floor((n*A002277(n)+4)/3)`
-/

namespace A091693.P1326367314191809609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n : ℤ) * A002277 n + 4 : ℚ) / 3⌋

end

end A091693.P1326367314191809609

namespace A091693

/-- `floor((n*A002277(n)+4)/3)` -/
def P1326367314191809609.Spec : Prop :=
  ∀ n, P1326367314191809609.a n = A091693 n

end A091693

/-! ## A091693.P14103955680236170067

`abs(n-1-n*A047855(n))`
-/

namespace A091693.P14103955680236170067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) - 1 - (n : ℤ) * A047855 n|

end

end A091693.P14103955680236170067

namespace A091693

/-- `abs(n-1-n*A047855(n))` -/
def P14103955680236170067.Spec : Prop :=
  ∀ n, P14103955680236170067.a n = A091693 n

end A091693

/-! ## A091693.P6749198091196370532

`abs(n*(A011557(n)-1)/9+1)`
-/

namespace A091693.P6749198091196370532
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(n : ℚ) * ((A011557 n - 1 : ℚ) / 9) + 1|

end

end A091693.P6749198091196370532

namespace A091693

/-- `abs(n*(A011557(n)-1)/9+1)` -/
def P6749198091196370532.Spec : Prop :=
  ∀ n, P6749198091196370532.a n = (A091693 n : ℚ)

end A091693

/-!
# A091695: Expansion of e.g.f. exp(x/(1-x)^3).

The programs for A091695, there is no canonical definition to state claims against.
-/

/-! ## A091695.P520204674896013462

`A293012(∑[n+3]+n+3)`
-/

namespace A091695.P520204674896013462
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293012 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A091695.P520204674896013462

/-! ## A091695.P804515494841473688

`A293012(A000217(n+4)-4)%A335178(n+2)`
-/

namespace A091695.P804515494841473688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A293012 (A000217 (n + 4) - 4).toNat) (A335178 (n + 2))

end

end A091695.P804515494841473688

/-!
# A091696: Number of classes of compositions of n equivalent under reflection or cycling.

The programs for A091696, the canonical program `A091696.P12943437932525177728` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A091696 has offset 1).

The definition of A091696 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056342, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A091696.P12943437932525177728

`A056342(n+1)+1`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A091696

/-- `A056342(n+1)+1` -/
def P12943437932525177728.Spec : Prop :=
  ∀ n, P12943437932525177728.a n = A091696 (n + 1)

theorem P12943437932525177728.correct : P12943437932525177728.Spec := by
  intro n
  simp only [A091696, Nat.add_sub_cancel]

end A091696

/-! ## A091696.P2924364458085989680

`A000029(n+1)-1`
-/

namespace A091696.P2924364458085989680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000029 (n + 1) - 1

end

end A091696.P2924364458085989680

namespace A091696

/-- `A000029(n+1)-1` -/
def P2924364458085989680.Spec : Prop :=
  ∀ n, P2924364458085989680.a n = A091696 (n + 1)

theorem P2924364458085989680.correct : P2924364458085989680.Spec := by
  intro n
  simp only [A091696, Nat.add_sub_cancel, A091696.P2924364458085989680.a, A091696.P12943437932525177728.a, A000029, A000029.P13945956715463538310.a, A056342, A056342.P16520513500978853199.a, A029744, A029744.P1115822501332250061.a, A059076, A059076.P1559801332482280449.a, A000031, A000031.P16543801865445953573.f1, A000031.P16543801865445953573.a, A059966, A059966.P16360813507758205577.f1, A059966.P16360813507758205577.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A091696

/-! ## A091696.P15783717822881436494

`∑[abs(Δ[A000029(n)])]`
-/

namespace A091696.P15783717822881436494
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000029 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A091696.P15783717822881436494

namespace A091696

/-- `∑[abs(Δ[A000029(n)])]` -/
def P15783717822881436494.Spec : Prop :=
  ∀ n, P15783717822881436494.a n = A091696 (n + 1)

end A091696

/-! ## A091696.P489980825638931010

`A059076(n+1)+A052955(n)`
-/

namespace A091696.P489980825638931010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059076 (n + 1) + A052955 n

end

end A091696.P489980825638931010

namespace A091696

/-- `A059076(n+1)+A052955(n)` -/
def P489980825638931010.Spec : Prop :=
  ∀ n, P489980825638931010.a n = A091696 (n + 1)

end A091696

/-! ## A091696.P5546586299016519838

`A057428(n+1)+A000029(n+1)`
-/

namespace A091696.P5546586299016519838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (n + 1) + A000029 (n + 1)

end

end A091696.P5546586299016519838

namespace A091696

/-- `A057428(n+1)+A000029(n+1)` -/
def P5546586299016519838.Spec : Prop :=
  ∀ n, P5546586299016519838.a n = A091696 (n + 1)

theorem P5546586299016519838.correct : P5546586299016519838.Spec := by
  intro n
  simp only [A091696, Nat.add_sub_cancel, A091696.P5546586299016519838.a, A091696.P12943437932525177728.a, A000029, A000029.P13945956715463538310.a, A056342, A056342.P16520513500978853199.a, A057428, A057428.P2999489532230392221.a, A029744, A029744.P1115822501332250061.a, A057427, A057427.P3058147525557661423.a, A059076, A059076.P1559801332482280449.a, A000007, A000007.P6599383543502402472.a, A000031, A000031.P16543801865445953573.f1, A000031.P16543801865445953573.a, A059966, A059966.P16360813507758205577.f1, A059966.P16360813507758205577.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A091696

/-! ## A091696.P6886340819718670653

`A056357(n+1)+A007147(n+1)`
-/

namespace A091696.P6886340819718670653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056357 (n + 1) + A007147 (n + 1)

end

end A091696.P6886340819718670653

namespace A091696

/-- `A056357(n+1)+A007147(n+1)` -/
def P6886340819718670653.Spec : Prop :=
  ∀ n, P6886340819718670653.a n = A091696 (n + 1)

end A091696

/-! ## A091696.P18389052284358268173

`∑[A000029(n+1)%A000029(n)]+1`
-/

namespace A091696.P18389052284358268173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000029 (n + 1)) (A000029 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A091696.P18389052284358268173

namespace A091696

/-- `∑[A000029(n+1)%A000029(n)]+1` -/
def P18389052284358268173.Spec : Prop :=
  ∀ n, P18389052284358268173.a n = A091696 (n + 1)

end A091696

/-! ## A091696.P5137935163691029199

`A001371(n+1)+A115119(n+1)-1`
-/

namespace A091696.P5137935163691029199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001371 (n + 1) + (A115119 (n + 1) - 1)

end

end A091696.P5137935163691029199

namespace A091696

/-- `A001371(n+1)+A115119(n+1)-1` -/
def P5137935163691029199.Spec : Prop :=
  ∀ n, P5137935163691029199.a n = A091696 (n + 1)

end A091696

/-! ## A091696.P15239510296441022472

`A059076(n+1)+A029744(n+2)-1`
-/

namespace A091696.P15239510296441022472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059076 (n + 1) + (A029744 (n + 2) - 1)

end

end A091696.P15239510296441022472

namespace A091696

/-- `A059076(n+1)+A029744(n+2)-1` -/
def P15239510296441022472.Spec : Prop :=
  ∀ n, P15239510296441022472.a n = A091696 (n + 1)

theorem P15239510296441022472.correct : P15239510296441022472.Spec := by
  intro n
  simp only [A091696, Nat.add_sub_cancel, A091696.P15239510296441022472.a, A091696.P12943437932525177728.a, A029744, A029744.P1115822501332250061.a, A056342, A056342.P16520513500978853199.a, A059076, A059076.P1559801332482280449.a, A000029, A000029.P13945956715463538310.a, A000031, A000031.P16543801865445953573.f1, A000031.P16543801865445953573.a, A059966, A059966.P16360813507758205577.f1, A059966.P16360813507758205577.a, A008683, A008683.P18254306604665478110.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A091696

/-! ## A091696.P4618804195814909706

`A059076(n+1)+A027383(n+1)/2`
-/

namespace A091696.P4618804195814909706
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059076 (n + 1) : ℚ) + (A027383 (n + 1) : ℚ) / 2

end

end A091696.P4618804195814909706

namespace A091696

/-- `A059076(n+1)+A027383(n+1)/2` -/
def P4618804195814909706.Spec : Prop :=
  ∀ n, P4618804195814909706.a n = (A091696 (n + 1) : ℚ)

end A091696

/-! ## A091696.P4991574008633568205

`A008965(n+1)-A059076(n+1)`
-/

namespace A091696.P4991574008633568205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008965 (n + 1) - A059076 (n + 1)

end

end A091696.P4991574008633568205

namespace A091696

/-- `A008965(n+1)-A059076(n+1)` -/
def P4991574008633568205.Spec : Prop :=
  ∀ n, P4991574008633568205.a n = A091696 (n + 1)

end A091696

/-! ## A091696.P9325314299628395268

`A000031(n+1)-(A059076(n+1)+1)`
-/

namespace A091696.P9325314299628395268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000031 (n + 1) - (A059076 (n + 1) + 1)

end

end A091696.P9325314299628395268

namespace A091696

/-- `A000031(n+1)-(A059076(n+1)+1)` -/
def P9325314299628395268.Spec : Prop :=
  ∀ n, P9325314299628395268.a n = A091696 (n + 1)

end A091696

/-! ## A091696.P13154377907049821225

`A052823(n+1)+1-A059076(n+1)`
-/

namespace A091696.P13154377907049821225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052823 (n + 1) + (1 - A059076 (n + 1))

end

end A091696.P13154377907049821225

namespace A091696

/-- `A052823(n+1)+1-A059076(n+1)` -/
def P13154377907049821225.Spec : Prop :=
  ∀ n, P13154377907049821225.a n = A091696 (n + 1)

end A091696

/-! ## A091696.P16390496370691697306

`A052310(∑[n+1]+1)`
-/

namespace A091696.P16390496370691697306
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052310 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A091696.P16390496370691697306

namespace A091696

/-- `A052310(∑[n+1]+1)` -/
def P16390496370691697306.Spec : Prop :=
  ∀ n, P16390496370691697306.a n = A091696 (n + 1)

end A091696

/-!
# A091697: Values of m corresponding to members of A088966.

The programs for A091697, there is no canonical definition to state claims against.
-/

/-! ## A091697.P16620609772417290253

`∪[A000051(n), A081567(A316369(n))]`
-/

namespace A091697.P16620609772417290253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081567 (A316369 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A091697.P16620609772417290253

/-! ## A091697.P9703197365855879288

`A353747(A272985(n+2))`
-/

namespace A091697.P9703197365855879288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353747 (A272985 (n + 2)).toNat

end

end A091697.P9703197365855879288

/-! ## A091697.P8320181617386083368

`eq[A003016(n), A151703(n)]`
-/

namespace A091697.P8320181617386083368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003016 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151703 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A091697.P8320181617386083368

/-! ## A091697.P5866836623767422956

`A028310(∪[A062699(3*n+2), A000051(n)])`
-/

namespace A091697.P5866836623767422956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062699 (3 * n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A091697.P5866836623767422956

/-! ## A091697.P8816428517587957058

`eq[A003016(n), A342463(n)]`
-/

namespace A091697.P8816428517587957058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003016 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342463 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A091697.P8816428517587957058

/-!
# A091698: Matrix inverse of triangle A063967.

The programs for A091698, there is no canonical definition to state claims against.
-/

/-! ## A091698.P7402743495956330452

`(and(2, comp[∑[n]]+n)-1)*A168216(n)`
-/

namespace A091698.P7402743495956330452
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.land 2 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + n) : ℤ) - 1) * A168216 n

end

end A091698.P7402743495956330452

/-! ## A091698.P1898126663089943785

`A097807(n)*A168216(n)`
-/

namespace A091698.P1898126663089943785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097807 n * A168216 n

end

end A091698.P1898126663089943785

/-! ## A091698.P12874075463424129098

`A033999(A025581(n))*A168216(n)`
-/

namespace A091698.P12874075463424129098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A025581 n).toNat * A168216 n

end

end A091698.P12874075463424129098

/-! ## A091698.P18264433124089759522

`A062157(A004736(n+1))*A168216(n)`
-/

namespace A091698.P18264433124089759522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (A004736 (n + 1)).toNat * A168216 n

end

end A091698.P18264433124089759522

/-! ## A091698.P1654787761785093814

`A168216(n)/A033999(A025581(n)+2)`
-/

namespace A091698.P1654787761785093814
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A168216 n : ℚ) / (A033999 (A025581 n + 2).toNat : ℚ)

end

end A091698.P1654787761785093814

/-! ## A091698.P5910463203714003964

`A168216(n)/A033999(A025581(n)²)`
-/

namespace A091698.P5910463203714003964
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A168216 n : ℚ) / (A033999 (A025581 n ^ 2).toNat : ℚ)

end

end A091698.P5910463203714003964

/-! ## A091698.P8653834323985439971

`A093829(A130321(n))*A168216(n)`
-/

namespace A091698.P8653834323985439971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093829 (A130321 n).toNat * A168216 n

end

end A091698.P8653834323985439971

/-!
# A091699: Row sums of triangle A091698.

The programs for A091699, the canonical program `A091699.P9918362873456629507` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A091699 has offset 0).

The definition of A091699 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 150 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A091699.P9918362873456629507

`xor(-A138415(n), A033999(n))`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A091699

/-- `xor(-A138415(n), A033999(n))` -/
def P9918362873456629507.Spec : Prop :=
  ∀ n, P9918362873456629507.a n = A091699 n

theorem P9918362873456629507.correct : P9918362873456629507.Spec := by
  intro n
  simp only [A091699]

end A091699

/-! ## A091699.P16531611195572752073

`(A033321(n)-A129167(n))*A033999(n)`
-/

namespace A091699.P16531611195572752073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A033321 n - A129167 n) * A033999 n

end

end A091699.P16531611195572752073

namespace A091699

/-- `(A033321(n)-A129167(n))*A033999(n)` -/
def P16531611195572752073.Spec : Prop :=
  ∀ n, P16531611195572752073.a n = A091699 n

end A091699

/-! ## A091699.P5379806438842387680

`A023443(A138415(n))*A033999(3*(n+1))`
-/

namespace A091699.P5379806438842387680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A138415 n).toNat * A033999 (3 * (n + 1))

end

end A091699.P5379806438842387680

namespace A091699

/-- `A023443(A138415(n))*A033999(3*(n+1))` -/
def P5379806438842387680.Spec : Prop :=
  ∀ n, P5379806438842387680.a n = A091699 n

end A091699

/-! ## A091699.P12656037180751905998

`A023443(A303952(n)-A262664(n))*A033999(3*(n+1))`
-/

namespace A091699.P12656037180751905998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A303952 n - A262664 n).toNat * A033999 (3 * (n + 1))

end

end A091699.P12656037180751905998

namespace A091699

/-- `A023443(A303952(n)-A262664(n))*A033999(3*(n+1))` -/
def P12656037180751905998.Spec : Prop :=
  ∀ n, P12656037180751905998.a n = A091699 n

end A091699

