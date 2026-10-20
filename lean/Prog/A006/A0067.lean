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
import Seq.B000.C010
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C036
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C001
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
import Seq.B008.C000
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
import Seq.Opaque.C024
import Seq.Opaque.C025

/-!
# A006701: Exponentiation of g.f. for Fibonacci numbers.

The programs for A006701, there is no canonical definition to state claims against.
-/

/-! ## A006701.P11393597630542857129

`A022290(Δ[round(n!/3)])+floor(n/8)`
-/

namespace A006701.P11393597630542857129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.factorial n : ℚ) / 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022290 (f1 (n + 1) - f1 n).toNat + ⌊(n : ℚ) / 8⌋

end

end A006701.P11393597630542857129

/-! ## A006701.P17306137904784814722

`A348193(A114553(n)+A000110(n))`
-/

namespace A006701.P17306137904784814722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348193 (A114553 n + A000110 n).toNat

end

end A006701.P17306137904784814722

/-! ## A006701.P18434958928156899006

`A027870(A331785(3*n+4)+A278547(n+1))`
-/

namespace A006701.P18434958928156899006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027870 (A331785 (3 * n + 4) + A278547 (n + 1)).toNat

end

end A006701.P18434958928156899006

/-!
# A006702: Solution to a Pellian equation: least x such that x^2 - n*y^2 = +- 1.

The programs for A006702, there is no canonical definition to state claims against.
-/

/-! ## A006702.P12870420509313919562

`(abs(A341862(n+1)-1)+1)/2`
-/

namespace A006702.P12870420509313919562
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (|A341862 (n + 1) - 1| + 1 : ℚ) / 2

end

end A006702.P12870420509313919562

/-! ## A006702.P11232123206846347475

`(A341862(n+1)+A000122(n+1))/2`
-/

namespace A006702.P11232123206846347475
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A341862 (n + 1) + A000122 (n + 1) : ℚ) / 2

end

end A006702.P11232123206846347475

/-! ## A006702.P15836433361544808175

`lcm(2, A006704(4*(n+1)))/2`
-/

namespace A006702.P15836433361544808175
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A006704 (4 * (n + 1))) : ℚ) / 2

end

end A006702.P15836433361544808175

/-! ## A006702.P11590780412240272308

`A305897(A341862(n+1)+A000122(n+1))-1`
-/

namespace A006702.P11590780412240272308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305897 (A341862 (n + 1) + A000122 (n + 1)).toNat - 1

end

end A006702.P11590780412240272308

/-! ## A006702.P12402821586902706609

`A065033(A341862(n+1))`
-/

namespace A006702.P12402821586902706609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A341862 (n + 1)).toNat

end

end A006702.P12402821586902706609

/-!
# A006703: Solution to Pellian: y such that x^2 - n*y^2 = +-1.

The programs for A006703, there is no canonical definition to state claims against.
-/

/-! ## A006703.P7639358033666968387

`A068716(n+1)+A010341(A187829(n+1))`
-/

namespace A006703.P7639358033666968387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068716 (n + 1) + A010341 (A187829 (n + 1)).toNat

end

end A006703.P7639358033666968387

/-! ## A006703.P12785223672856454405

`or(A010341(n+1), A332219(A076977(n+1)))`
-/

namespace A006703.P12785223672856454405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010341 (n + 1)) (A332219 (A076977 (n + 1)).toNat)

end

end A006703.P12785223672856454405

/-! ## A006703.P15408558653104962541

`A010341(A187829(n+1))+A003285(n+1)%2`
-/

namespace A006703.P15408558653104962541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010341 (A187829 (n + 1)).toNat + Int.tmod (A003285 (n + 1)) 2

end

end A006703.P15408558653104962541

/-! ## A006703.P12563601802071424550

`A010341(A187829(n+1))+char[A003814(n+1)-1]`
-/

namespace A006703.P12563601802071424550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003814 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010341 (A187829 (n + 1)).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A006703.P12563601802071424550

/-! ## A006703.P17667431272933886405

`A010341(A187829(n+1))+A000035(A003285(n+1))`
-/

namespace A006703.P17667431272933886405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010341 (A187829 (n + 1)).toNat + A000035 (A003285 (n + 1)).toNat

end

end A006703.P17667431272933886405

/-!
# A006705: Solution to Pellian: y such that x^2 - n y^2 = +- 1, +- 4.

The programs for A006705, there is no canonical definition to state claims against.
-/

/-! ## A006705.P1807512101229500845

`A006703(n+1)^A259829(n+1)^A259825(n)`
-/

namespace A006705.P1807512101229500845
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A006703 (n + 1) : ℝ) ^ ((A259829 (n + 1) : ℚ) ^ (A259825 n : ℤ) : ℝ)

end

end A006705.P1807512101229500845

/-! ## A006705.P11069896804201423774

`A006703(n+1)^A137828(A137828(n+5))`
-/

namespace A006705.P11069896804201423774
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006703 (n + 1) : ℚ) ^ (A137828 (A137828 (n + 5)).toNat : ℤ)

end

end A006705.P11069896804201423774

/-! ## A006705.P4334879254716984971

`A006703(n+1)^A238341(A123627(n+1))`
-/

namespace A006705.P4334879254716984971
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006703 (n + 1) : ℚ) ^ (A238341 (A123627 (n + 1)).toNat : ℤ)

end

end A006705.P4334879254716984971

/-! ## A006705.P14267947326023768116

`A006703(n+1)^A351155(A351142(n+1))`
-/

namespace A006705.P14267947326023768116
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006703 (n + 1) : ℚ) ^ (A351155 (A351142 (n + 1)).toNat : ℤ)

end

end A006705.P14267947326023768116

/-! ## A006705.P5540228963367520578

`and(A001222(A051914(n+1)), A362927(n+1))`
-/

namespace A006705.P5540228963367520578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001222 (A051914 (n + 1)).toNat) (A362927 (n + 1))

end

end A006705.P5540228963367520578

/-!
# A006706: Self-convolution of numbers of trees on n nodes.

The programs for A006706, there is no canonical definition to state claims against.
-/

/-! ## A006706.P7415679717519013318

`A274936(n)+A274935(n)`
-/

namespace A006706.P7415679717519013318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274936 n + A274935 n

end

end A006706.P7415679717519013318

/-! ## A006706.P16479695511811331878

`A000055(n)+A274937(n)+A274936(n)`
-/

namespace A006706.P16479695511811331878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000055 n + (A274937 n + A274936 n)

end

end A006706.P16479695511811331878

/-! ## A006706.P13839402131054127304

`A274935(n)-A057428(n)*A274936(n)`
-/

namespace A006706.P13839402131054127304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274935 n - A057428 n * A274936 n

end

end A006706.P13839402131054127304

/-! ## A006706.P15238010859383299765

`A095133(C(n, 2)+1)+A274937(n)+A274936(n)`
-/

namespace A006706.P15238010859383299765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095133 (Nat.choose n 2 + 1) + (A274937 n + A274936 n)

end

end A006706.P15238010859383299765

/-! ## A006706.P253277421151206142

`A106237(∑[n-1]+2)+A274937(n)+A274936(n)`
-/

namespace A006706.P253277421151206142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106237 (∑ j ∈ Finset.range (n + 1), f1 j + 2).toNat + (A274937 n + A274936 n)

end

end A006706.P253277421151206142

/-! ## A006706.P10948843605075176541

`A095133(A161680(n)+1)+A274937(n)+A274936(n)`
-/

namespace A006706.P10948843605075176541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095133 (A161680 n + 1).toNat + (A274937 n + A274936 n)

end

end A006706.P10948843605075176541

/-! ## A006706.P12878558017329322544

`A095133(2-A080956(n))+A274937(n)+A274936(n)`
-/

namespace A006706.P12878558017329322544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095133 (2 - A080956 n).toNat + (A274937 n + A274936 n)

end

end A006706.P12878558017329322544

/-!
# A006711: Describe previous term from the right (method A - initial term is 1).

The programs for A006711, there is no canonical definition to state claims against.
-/

/-! ## A006711.P16143869317156396766

`A045918(A004086(a(n-1)))` with `a(0)=1`
-/

namespace A006711.P16143869317156396766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A045918 (A004086 (a (n - 1)).toNat).toNat

end

end A006711.P16143869317156396766

/-!
# A006715: Describe the previous term! (method A - initial term is 3).

The programs for A006715, there is no canonical definition to state claims against.
-/

/-! ## A006715.P17788578831986757304

`A006751(n+1)+1`
-/

namespace A006715.P17788578831986757304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006751 (n + 1) + 1

end

end A006715.P17788578831986757304

/-! ## A006715.P2727239315688883923

`A001140(n+1)-1`
-/

namespace A006715.P2727239315688883923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001140 (n + 1) - 1

end

end A006715.P2727239315688883923

/-! ## A006715.P13423985599773080331

`A001141(n+1)-2`
-/

namespace A006715.P13423985599773080331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001141 (n + 1) - 2

end

end A006715.P13423985599773080331

/-! ## A006715.P653495953738465083

`A001155(n+1)+3`
-/

namespace A006715.P653495953738465083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001155 (n + 1) + 3

end

end A006715.P653495953738465083

/-! ## A006715.P12544918738248500367

`A001143(n+1)-3`
-/

namespace A006715.P12544918738248500367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001143 (n + 1) - 3

end

end A006715.P12544918738248500367

/-!
# A006716: Squares with digits 1, 4, 9.

The programs for A006716, there is no canonical definition to state claims against.
-/

/-! ## A006716.P12718537658363528334

`A027675(n+1)²`
-/

namespace A006716.P12718537658363528334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027675 (n + 1) ^ 2

end

end A006716.P12718537658363528334

/-! ## A006716.P10033583167101759760

`A027675(n+1)^A020639(A273315(n))`
-/

namespace A006716.P10033583167101759760
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027675 (n + 1) : ℚ) ^ (A020639 (A273315 n).toNat : ℤ)

end

end A006716.P10033583167101759760

/-! ## A006716.P9727922244543014150

`A027675(n+1)^A000005(A032605(n+1))`
-/

namespace A006716.P9727922244543014150
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027675 (n + 1) : ℚ) ^ (A000005 (A032605 (n + 1)).toNat : ℤ)

end

end A006716.P9727922244543014150

/-! ## A006716.P5601486022902656743

`A027675(n+1)^A000005(A117835(n+1))`
-/

namespace A006716.P5601486022902656743
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027675 (n + 1) : ℚ) ^ (A000005 (A117835 (n + 1)).toNat : ℤ)

end

end A006716.P5601486022902656743

/-! ## A006716.P3613097992948989083

`A027675(n+1)^A014963(A000079(n))`
-/

namespace A006716.P3613097992948989083
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027675 (n + 1) : ℚ) ^ (A014963 (A000079 n).toNat : ℤ)

end

end A006716.P3613097992948989083

/-!
# A006717: Number of ways of arranging 2n+1 nonattacking semi-queens on a (2n+1) X (2n+1) toroidal board.

The programs for A006717, there is no canonical definition to state claims against.
-/

/-! ## A006717.P2658118687662983830

`(2*n+1)*A003111(n)`
-/

namespace A006717.P2658118687662983830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * A003111 n

end

end A006717.P2658118687662983830

/-! ## A006717.P1647100698944500694

`A003111(n)*A005408(n)`
-/

namespace A006717.P1647100698944500694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003111 n * A005408 n

end

end A006717.P1647100698944500694

/-! ## A006717.P17170330526283284553

`A003111(n)*A283002(n+1)`
-/

namespace A006717.P17170330526283284553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003111 n * A283002 (n + 1)

end

end A006717.P17170330526283284553

/-!
# A006718: Number of golygons of length 8n.

The programs for A006718, there is no canonical definition to state claims against.
-/

/-! ## A006718.P11141761015930718056

`A060468(n)*A292476(2*n)`
-/

namespace A006718.P11141761015930718056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060468 n * A292476 (2 * n)

end

end A006718.P11141761015930718056

/-! ## A006718.P2825051179155500194

`A063865(4*n)*A292476(2*n)`
-/

namespace A006718.P2825051179155500194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063865 (4 * n) * A292476 (2 * n)

end

end A006718.P2825051179155500194

/-! ## A006718.P12929324114537047607

`A060468(n)*A350504(4*n)`
-/

namespace A006718.P12929324114537047607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060468 n * A350504 (4 * n)

end

end A006718.P12929324114537047607

/-! ## A006718.P3540710474081058318

`A025591(A008574(n))*A292476(2*n)`
-/

namespace A006718.P3540710474081058318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025591 (A008574 n).toNat * A292476 (2 * n)

end

end A006718.P3540710474081058318

/-! ## A006718.P953378042541072830

`A025591(4*n)*A292476(A005843(n))`
-/

namespace A006718.P953378042541072830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025591 (4 * n) * A292476 (A005843 n).toNat

end

end A006718.P953378042541072830

/-!
# A006719: a(n) = A000905(n) + 1.

The programs for A006719, there is no canonical definition to state claims against.
-/

/-! ## A006719.P18185729314110065027

`A000905(n+1)+1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A006719.P18185729314110065027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000905 (n + 1) + 1

end

end A006719.P18185729314110065027

/-! ## A006719.P12052297807221146337

`∑[A001660(n)]+2`
-/

namespace A006719.P12052297807221146337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001660 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A006719.P12052297807221146337

/-! ## A006719.P11134908406548117685

`∑[xor(A000038(n), A001660(n))]`
-/

namespace A006719.P11134908406548117685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000038 n) (A001660 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006719.P11134908406548117685

/-! ## A006719.P16062696462108773425

`∑[or(A000038(n²), A001660(n))]`
-/

namespace A006719.P16062696462108773425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000038 (n ^ 2)) (A001660 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006719.P16062696462108773425

/-!
# A006720: Somos-4 sequence: a(0)=a(1)=a(2)=a(3)=1; for n >= 4, a(n) = (a(n-1) * a(n-3) + a(n-2)^2) / a(n-4).

The programs for A006720, the canonical program `A006720.P8178216761220668954` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A006720 has offset 0).

The definition of A006720 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A006720.P8178216761220668954

`(a(n-1)*a(n-3)+a(n-2)²)/a(n-4)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A006720

/-- `(a(n-1)*a(n-3)+a(n-2)²)/a(n-4)` -/
def P8178216761220668954.Spec : Prop :=
  ∀ n, P8178216761220668954.a n = (A006720 n : ℚ)

end A006720

/-! ## A006720.P17965869335789944155

`abs(A006769(A004281(n)))`
-/

namespace A006720.P17965869335789944155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A006769 (A004281 n).toNat|

end

end A006720.P17965869335789944155

namespace A006720

/-- `abs(A006769(A004281(n)))` -/
def P17965869335789944155.Spec : Prop :=
  ∀ n, P17965869335789944155.a n = A006720 n

end A006720

/-! ## A006720.P11942199354169345582

`gcd(A006769(A004281(n)), A025439(n))`
-/

namespace A006720.P11942199354169345582
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A006769 (A004281 n).toNat) (A025439 n)

end

end A006720.P11942199354169345582

namespace A006720

/-- `gcd(A006769(A004281(n)), A025439(n))` -/
def P11942199354169345582.Spec : Prop :=
  ∀ n, (P11942199354169345582.a n : ℤ) = A006720 n

end A006720

/-! ## A006720.P9589261422437249514

`A165904(n)/2^n`
-/

namespace A006720.P9589261422437249514
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A165904 n : ℚ) / (2 ^ n : ℚ)

end

end A006720.P9589261422437249514

namespace A006720

/-- `A165904(n)/2^n` -/
def P9589261422437249514.Spec : Prop :=
  ∀ n, P9589261422437249514.a n = (A006720 n : ℚ)

end A006720

/-! ## A006720.P3445697009179109048

`4^(a(n-1)*a(n-3)+a(n-2))` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=2, a(5)=3, a(6)=7, a(7)=23, a(8)=59`
-/

namespace A006720.P3445697009179109048
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1, 1, 2, 3, 7, 23, 59] fun n a =>
  4 ^ (a (n - 1) * a (n - 3) + a (n - 2))

end

end A006720.P3445697009179109048

namespace A006720

/-- `4^(a(n-1)*a(n-3)+a(n-2))` -/
def P3445697009179109048.Spec : Prop :=
  ∀ n, (P3445697009179109048.a n : ℤ) = A006720 n

end A006720

/-!
# A006721: Somos-5 sequence: a(n) = (a(n-1) * a(n-4) + a(n-2) * a(n-3)) / a(n-5), with a(0) = a(1) = a(2) = a(3) = a(4) = 1.

The programs for A006721, the canonical program `A006721.P15108222404826080915` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A006721 has offset 0).

The definition of A006721 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A006721.P15108222404826080915

`(a(n-1)*a(n-4)+a(n-2)*a(n-3))/a(n-5)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=1`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A006721

/-- `(a(n-1)*a(n-4)+a(n-2)*a(n-3))/a(n-5)` -/
def P15108222404826080915.Spec : Prop :=
  ∀ n, P15108222404826080915.a n = (A006721 n : ℚ)

end A006721

/-! ## A006721.P10228508445290945774

`A051125(A215703(∑[round(8*n/7)]))`
-/

namespace A006721.P10228508445290945774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051125 (A215703 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A006721.P10228508445290945774

namespace A006721

/-- `A051125(A215703(∑[round(8*n/7)]))` -/
def P10228508445290945774.Spec : Prop :=
  ∀ n, P10228508445290945774.a n = A006721 n

end A006721

/-! ## A006721.P10824894409520267776

`A055178(abs(2-n)!)`
-/

namespace A006721.P10824894409520267776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055178 (Nat.factorial |2 - (n : ℤ)|.toNat)

end

end A006721.P10824894409520267776

namespace A006721

/-- `A055178(abs(2-n)!)` -/
def P10824894409520267776.Spec : Prop :=
  ∀ n, P10824894409520267776.a n = A006721 n

end A006721

/-! ## A006721.P17028193113917690493

`A322900(∏[(2*floor(n/5))!])`
-/

namespace A006721.P17028193113917690493
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (2 * ⌊(n : ℚ) / 5⌋).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322900 (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A006721.P17028193113917690493

namespace A006721

/-- `A322900(∏[(2*floor(n/5))!])` -/
def P17028193113917690493.Spec : Prop :=
  ∀ n, P17028193113917690493.a n = A006721 n

end A006721

/-! ## A006721.P9490260369425759186

`A032562(A090412(n))`
-/

namespace A006721.P9490260369425759186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032562 (A090412 n).toNat

end

end A006721.P9490260369425759186

namespace A006721

/-- `A032562(A090412(n))` -/
def P9490260369425759186.Spec : Prop :=
  ∀ n, P9490260369425759186.a n = A006721 n

end A006721

/-!
# A006722: Somos-6 sequence: a(n) = (a(n-1) * a(n-5) + a(n-2) * a(n-4) + a(n-3)^2) / a(n-6), a(0) = ... = a(5) = 1.

The programs for A006722, the canonical program `A006722.P15187021035536342367` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A006722 has offset 0).

The definition of A006722 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A006722.P15187021035536342367

`(a(n-1)*a(n-5)+a(n-2)*a(n-4)+a(n-3)²)/a(n-6)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=1, a(5)=1`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A006722

/-- `(a(n-1)*a(n-5)+a(n-2)*a(n-4)+a(n-3)²)/a(n-6)` -/
def P15187021035536342367.Spec : Prop :=
  ∀ n, P15187021035536342367.a n = (A006722 n : ℚ)

end A006722

/-! ## A006722.P4165650945211653117

`or(1, A325353(A264701(n+1)))`
-/

namespace A006722.P4165650945211653117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A325353 (A264701 (n + 1)).toNat)

end

end A006722.P4165650945211653117

namespace A006722

/-- `or(1, A325353(A264701(n+1)))` -/
def P4165650945211653117.Spec : Prop :=
  ∀ n, P4165650945211653117.a n = A006722 n

end A006722

/-! ## A006722.P10585343993749487147

`or(A265527(A276531(n)), A365661(n))`
-/

namespace A006722.P10585343993749487147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A265527 (A276531 n).toNat) (A365661 n)

end

end A006722.P10585343993749487147

namespace A006722

/-- `or(A265527(A276531(n)), A365661(n))` -/
def P10585343993749487147.Spec : Prop :=
  ∀ n, P10585343993749487147.a n = A006722 n

end A006722

/-! ## A006722.P13820943594359249631

`or(A022478(n+1), A265527(A276531(n)))`
-/

namespace A006722.P13820943594359249631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A022478 (n + 1)) (A265527 (A276531 n).toNat)

end

end A006722.P13820943594359249631

namespace A006722

/-- `or(A022478(n+1), A265527(A276531(n)))` -/
def P13820943594359249631.Spec : Prop :=
  ∀ n, P13820943594359249631.a n = A006722 n

end A006722

/-! ## A006722.P17958495592877336652

`or(1, A265527(A276531(n))+A143287(n))`
-/

namespace A006722.P17958495592877336652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A265527 (A276531 n).toNat + A143287 n)

end

end A006722.P17958495592877336652

namespace A006722

/-- `or(1, A265527(A276531(n))+A143287(n))` -/
def P17958495592877336652.Spec : Prop :=
  ∀ n, P17958495592877336652.a n = A006722 n

end A006722

/-!
# A006723: Somos-7 sequence: a(n) = (a(n-1) * a(n-6) + a(n-2) * a(n-5) + a(n-3) * a(n-4)) / a(n-7), a(0) = ... = a(6) = 1.

The programs for A006723, the canonical program `A006723.P16874382738524748818` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A006723 has offset 0).

The definition of A006723 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A006723.P16874382738524748818

`((8-2*(-1)^n)*a(n-5)*a(n-3)-a(n-4)²)/a(n-8)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=1, a(5)=1, a(6)=1, a(7)=3`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A006723

/-- `((8-2*(-1)^n)*a(n-5)*a(n-3)-a(n-4)²)/a(n-8)` -/
def P16874382738524748818.Spec : Prop :=
  ∀ n, P16874382738524748818.a n = (A006723 n : ℚ)

end A006723

/-! ## A006723.P12907863308479256836

`A078822(A211540(n)!)`
-/

namespace A006723.P12907863308479256836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078822 (Nat.factorial (A211540 n).toNat)

end

end A006723.P12907863308479256836

namespace A006723

/-- `A078822(A211540(n)!)` -/
def P12907863308479256836.Spec : Prop :=
  ∀ n, P12907863308479256836.a n = A006723 n

end A006723

/-! ## A006723.P13252581121180790477

`A112632(∏[A286305(n)])`
-/

namespace A006723.P13252581121180790477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286305 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112632 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A006723.P13252581121180790477

namespace A006723

/-- `A112632(∏[A286305(n)])` -/
def P13252581121180790477.Spec : Prop :=
  ∀ n, P13252581121180790477.a n = A006723 n

end A006723

/-! ## A006723.P3160144938328327257

`A143091(A146606(n+2))`
-/

namespace A006723.P3160144938328327257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143091 (A146606 (n + 2)).toNat

end

end A006723.P3160144938328327257

namespace A006723

/-- `A143091(A146606(n+2))` -/
def P3160144938328327257.Spec : Prop :=
  ∀ n, P3160144938328327257.a n = A006723 n

end A006723

/-! ## A006723.P11451169887406117479

`or(1, A180493(A275073(n)))`
-/

namespace A006723.P11451169887406117479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A180493 (A275073 n).toNat)

end

end A006723.P11451169887406117479

namespace A006723

/-- `or(1, A180493(A275073(n)))` -/
def P11451169887406117479.Spec : Prop :=
  ∀ n, P11451169887406117479.a n = A006723 n

end A006723

/-!
# A006724: Number of fixed n-celled self-avoiding polygons on square lattice.

The programs for A006724, there is no canonical definition to state claims against.
-/

/-! ## A006724.P15778043026870686333

`A001168(n+1)-A389193(n+1)`
-/

namespace A006724.P15778043026870686333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001168 (n + 1) - A389193 (n + 1)

end

end A006724.P15778043026870686333

/-! ## A006724.P9382794274527728835

`A057409(n+1)+A014025(A000984(n))`
-/

namespace A006724.P9382794274527728835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057409 (n + 1) + A014025 (A000984 n).toNat

end

end A006724.P9382794274527728835

/-! ## A006724.P13386871677455396216

`A057409(n+1)-A025456(A037481(n))`
-/

namespace A006724.P13386871677455396216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057409 (n + 1) - A025456 (A037481 n).toNat

end

end A006724.P13386871677455396216

/-! ## A006724.P16280421015933507953

`A057409(n+1)-A070109(A000142(n))`
-/

namespace A006724.P16280421015933507953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057409 (n + 1) - A070109 (A000142 n).toNat

end

end A006724.P16280421015933507953

/-!
# A006725: Number of n-celled polygons with perimeter 2n+2 on square lattice.

The programs for A006725, there is no canonical definition to state claims against.
-/

/-! ## A006725.P10714585273668437422

`A008855(lt[A008855(n+1), A016777(n)])`
-/

namespace A006725.P10714585273668437422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008855 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008855 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A006725.P10714585273668437422

/-! ## A006725.P16438814742547820543

`A008855(lt[A008855(n+1), A056991(n+1)])`
-/

namespace A006725.P16438814742547820543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008855 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056991 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008855 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A006725.P16438814742547820543

/-! ## A006725.P17592646108339043240

`A008855(lt[A008855(n+1), A088134(n+1)])`
-/

namespace A006725.P17592646108339043240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008855 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088134 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008855 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A006725.P17592646108339043240

/-! ## A006725.P3890251635733601789

`A259857(∑[n+1])`
-/

namespace A006725.P3890251635733601789
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259857 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A006725.P3890251635733601789

/-! ## A006725.P7232910770505156143

`A259857(A165007(2*n+5))%A215575(n)`
-/

namespace A006725.P7232910770505156143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A259857 (A165007 (2 * n + 5)).toNat) (A215575 n)

end

end A006725.P7232910770505156143

/-!
# A006726: Number of n-celled polygons with perimeter 2n on square lattice.

The programs for A006726, there is no canonical definition to state claims against.
-/

/-! ## A006726.P7432584486753159004

`A259857(A000096(n+3))`
-/

namespace A006726.P7432584486753159004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259857 (A000096 (n + 3)).toNat

end

end A006726.P7432584486753159004

/-! ## A006726.P8718475616838194481

`A259857(A134189(n+4))`
-/

namespace A006726.P8718475616838194481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259857 (A134189 (n + 4)).toNat

end

end A006726.P8718475616838194481

/-! ## A006726.P2108473528042510049

`A259857(A155212(n)+7)`
-/

namespace A006726.P2108473528042510049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259857 (A155212 n + 7).toNat

end

end A006726.P2108473528042510049

/-! ## A006726.P3381906416501121331

`A259857(A056000(n)+9)`
-/

namespace A006726.P3381906416501121331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259857 (A056000 n + 9).toNat

end

end A006726.P3381906416501121331

/-! ## A006726.P5757645815963349438

`A259857(A000217(n+4)-1)`
-/

namespace A006726.P5757645815963349438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259857 (A000217 (n + 4) - 1).toNat

end

end A006726.P5757645815963349438

/-!
# A006727: Bond percolation series for square lattice.

The programs for A006727, there is no canonical definition to state claims against.
-/

/-! ## A006727.P17650780545390549449

`∑[A254007(A004895(n+1))]`
-/

namespace A006727.P17650780545390549449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254007 (A004895 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006727.P17650780545390549449

/-! ## A006727.P8387407140685022580

`∑[A254007(n)]%A006810(n+2)`
-/

namespace A006727.P8387407140685022580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254007 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A006810 (n + 2))

end

end A006727.P8387407140685022580

/-! ## A006727.P17752491898131993806

`∑[A026713(n)+A011739(A240610(n))]`
-/

namespace A006727.P17752491898131993806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026713 n + A011739 (A240610 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006727.P17752491898131993806

/-! ## A006727.P5652609010945212231

`∑[A374632(n)-A178651(A374632(n))]`
-/

namespace A006727.P5652609010945212231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374632 n - A178651 (A374632 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006727.P5652609010945212231

/-!
# A006728: Series for first parallel moment of square lattice.

The programs for A006728, there is no canonical definition to state claims against.
-/

/-! ## A006728.P7382438079957921994

`A080606(2*A022730(n))`
-/

namespace A006728.P7382438079957921994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080606 (2 * A022730 n).toNat

end

end A006728.P7382438079957921994

/-!
# A006729: Series for second parallel moment of square lattice (eventually changes sign).

The programs for A006729, there is no canonical definition to state claims against.
-/

/-! ## A006729.P8249627671474378225

`A000005(n+1)*A204898(A281355(n+1))`
-/

namespace A006729.P8249627671474378225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) * A204898 (A281355 (n + 1)).toNat

end

end A006729.P8249627671474378225

/-!
# A006730: Series for second perpendicular moment of square lattice (eventually changes sign).

The programs for A006730, there is no canonical definition to state claims against.
-/

/-! ## A006730.P3280947530898892728

`record[A054842(n)-A015128(n)]`
-/

namespace A006730.P3280947530898892728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054842 n - A015128 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A006730.P3280947530898892728

/-! ## A006730.P11758887995880885911

`record[A069877(n)-A015128(n)]`
-/

namespace A006730.P11758887995880885911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069877 n - A015128 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A006730.P11758887995880885911

/-! ## A006730.P16621118351249607259

`record[A086066(n)-A015128(n)]`
-/

namespace A006730.P16621118351249607259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086066 n - A015128 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A006730.P16621118351249607259

/-!
# A006731: Site percolation series for square lattice.

The programs for A006731, there is no canonical definition to state claims against.
-/

/-! ## A006731.P1782592353284941872

`A104135(A098790(n))-A000006(n+1)`
-/

namespace A006731.P1782592353284941872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104135 (A098790 n).toNat - A000006 (n + 1)

end

end A006731.P1782592353284941872

/-! ## A006731.P6715188988880746687

`A225687(A073372(n))`
-/

namespace A006731.P6715188988880746687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225687 (A073372 n).toNat

end

end A006731.P6715188988880746687

/-! ## A006731.P15611257872163319388

`∑[A302505(A241727(n))]`
-/

namespace A006731.P15611257872163319388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302505 (A241727 (n + 45)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006731.P15611257872163319388

/-! ## A006731.P16241927578666439685

`record[A129705(A029177(n))]`
-/

namespace A006731.P16241927578666439685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129705 (A029177 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A006731.P16241927578666439685

/-! ## A006731.P11357963996061609472

`A217038(A349276(n+2))`
-/

namespace A006731.P11357963996061609472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217038 (A349276 (n + 2)).toNat

end

end A006731.P11357963996061609472

/-!
# A006732: Series for first parallel moment of square lattice.

The programs for A006732, there is no canonical definition to state claims against.
-/

/-! ## A006732.P12634266774310241605

`∑[A057703(n+1)]-A195944(n+2)`
-/

namespace A006732.P12634266774310241605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057703 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A195944 (n + 2)

end

end A006732.P12634266774310241605

/-! ## A006732.P8932799322158806171

`∑[∑[A000194(floor(3^(n-1)*Δ[n²]))]]`
-/

namespace A006732.P8932799322158806171
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 ⌊(3 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * ((f3 (n + 1) : ℤ) - (f3 n : ℤ) : ℚ)⌋.toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006732.P8932799322158806171

/-! ## A006732.P12321556712279846225

`∑[∑[A352520(A164204(n))]]`
-/

namespace A006732.P12321556712279846225
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352520 (A164204 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006732.P12321556712279846225

/-!
# A006733: Series for second parallel moment of square lattice (eventually changes sign).

The programs for A006733, there is no canonical definition to state claims against.
-/

/-! ## A006733.P5544291051653045963

`A095057(A105262(n+1))`
-/

namespace A006733.P5544291051653045963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095057 (A105262 (n + 1)).toNat

end

end A006733.P5544291051653045963

/-!
# A006734: Series for second perpendicular moment of square lattice.

The programs for A006734, there is no canonical definition to state claims against.
-/

/-! ## A006734.P16923293286340956745

`∑[A178523(∑[A290556(n)])]`
-/

namespace A006734.P16923293286340956745
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290556 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178523 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006734.P16923293286340956745

/-! ## A006734.P12406893420579246953

`∑[A325753(Δ[A008778(n)])]`
-/

namespace A006734.P12406893420579246953
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325753 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006734.P12406893420579246953

/-! ## A006734.P441487262266896631

`∑[A325753(eq[0, A347351(n)])]`
-/

namespace A006734.P441487262266896631
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347351 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325753 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006734.P441487262266896631

/-! ## A006734.P6669585370862993528

`∑[A325753(lt[A347351(n), 1])]`
-/

namespace A006734.P6669585370862993528
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347351 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325753 (SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006734.P6669585370862993528

/-!
# A006735: Bond percolation series for hexagonal net.

The programs for A006735, there is no canonical definition to state claims against.
-/

/-! ## A006735.P8546961785099910195

`A224898(n)-A165190(A303391(n))`
-/

namespace A006735.P8546961785099910195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224898 n - A165190 (A303391 n).toNat

end

end A006735.P8546961785099910195

/-!
# A006736: Series for first parallel moment of hexagonal lattice.

The programs for A006736, there is no canonical definition to state claims against.
-/

/-! ## A006736.P3936447800915999626

`A174725(Δ[Δ[floor(5^(n-1))]])`
-/

namespace A006736.P3936447800915999626
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(5 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174725 (f1 (n + 1) - f1 n).toNat

end

end A006736.P3936447800915999626

/-! ## A006736.P16715366140791877259

`A002265(16*A055589(n))`
-/

namespace A006736.P16715366140791877259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (16 * A055589 n).toNat

end

end A006736.P16715366140791877259

/-!
# A006738: Series for second perpendicular moment of hexagonal lattice.

The programs for A006738, there is no canonical definition to state claims against.
-/

/-! ## A006738.P17926132600114805273

`record[Δ[A051176(A325925(n))]]`
-/

namespace A006738.P17926132600114805273
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051176 (A325925 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A006738.P17926132600114805273

/-! ## A006738.P3503271637878860247

`A089883(n)-A000005(A129890(n))`
-/

namespace A006738.P3503271637878860247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089883 n - A000005 (A129890 n).toNat

end

end A006738.P3503271637878860247

/-!
# A006739: Site percolation series for hexagonal lattice.

The programs for A006739, there is no canonical definition to state claims against.
-/

/-! ## A006739.P5367319819613515701

`∑[∑[A005041(A148584(n))]]`
-/

namespace A006739.P5367319819613515701
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005041 (A148584 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006739.P5367319819613515701

/-! ## A006739.P7242388507635618269

`∑[∑[A257639(A059738(n))]]`
-/

namespace A006739.P7242388507635618269
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257639 (A059738 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006739.P7242388507635618269

/-! ## A006739.P17015534770321413162

`A005041(Δ[A093131(n)])`
-/

namespace A006739.P17015534770321413162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093131 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005041 (f1 (n + 1) - f1 n).toNat

end

end A006739.P17015534770321413162

/-! ## A006739.P9671305221849257540

`A005041(Δ[A112091(n)])`
-/

namespace A006739.P9671305221849257540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112091 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005041 (f1 (n + 1) - f1 n).toNat

end

end A006739.P9671305221849257540

/-!
# A006740: Series for first parallel moment of hexagonal lattice.

The programs for A006740, there is no canonical definition to state claims against.
-/

/-! ## A006740.P5439760328457099173

`2*A279891(A036973(n))`
-/

namespace A006740.P5439760328457099173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A279891 (A036973 n).toNat

end

end A006740.P5439760328457099173

/-!
# A006742: Series for second perpendicular moment of hexagonal lattice.

The programs for A006742, there is no canonical definition to state claims against.
-/

/-! ## A006742.P12191979153142466968

`∑[A332891(2^(n+2))]`
-/

namespace A006742.P12191979153142466968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332891 (2 ^ (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006742.P12191979153142466968

/-!
# A006744: Number of n-step self-avoiding walks on a Manhattan lattice.

The programs for A006744, there is no canonical definition to state claims against.
-/

/-! ## A006744.P17431240464190502163

`A117633(n+1)/2`
-/

namespace A006744.P17431240464190502163
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A117633 (n + 1) : ℚ) / 2

end

end A006744.P17431240464190502163

/-! ## A006744.P2507625353382300291

`Δ[∑[A117633(n)]/2]`
-/

namespace A006744.P2507625353382300291
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117633 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A006744.P2507625353382300291

/-! ## A006744.P7365586943200041553

`ceil(A117633(ceil(Δ[n²]/2))/2)`
-/

namespace A006744.P7365586943200041553
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A117633 ⌈((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℚ) / 2⌉.toNat : ℚ) / 2⌉

end

end A006744.P7365586943200041553

/-! ## A006744.P17313119442126190832

`record[A117633(A154958(n))/2]`
-/

namespace A006744.P17313119442126190832
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A117633 (A154958 n).toNat : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A006744.P17313119442126190832

/-! ## A006744.P669316808181309148

`record[A117633(A193592(n))/2]`
-/

namespace A006744.P669316808181309148
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A117633 (A193592 n).toNat : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A006744.P669316808181309148

/-!
# A006745: Number of indefinitely growing n-step self-avoiding walks on Manhattan lattice.

The programs for A006745, there is no canonical definition to state claims against.
-/

/-! ## A006745.P15605467052861812249

`A100196(A217194(n))+A077774(n+1)`
-/

namespace A006745.P15605467052861812249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 (A217194 n).toNat + A077774 (n + 1)

end

end A006745.P15605467052861812249

/-! ## A006745.P5089405587154027719

`∑[A257639(A187276(n+1))]`
-/

namespace A006745.P5089405587154027719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257639 (A187276 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006745.P5089405587154027719

/-! ## A006745.P4013631579128837243

`A249728(or(2*n, A117189(n)))`
-/

namespace A006745.P4013631579128837243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249728 (Int.lor (2 * n : ℤ) (A117189 n)).toNat

end

end A006745.P4013631579128837243

/-! ## A006745.P50043538635879732

`A249728(or(2*n, A303833(n+2)))`
-/

namespace A006745.P50043538635879732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249728 (Int.lor (2 * n : ℤ) (A303833 (n + 2))).toNat

end

end A006745.P50043538635879732

/-! ## A006745.P14418435212578842357

`A172471(A090426(n))+A079976(n)`
-/

namespace A006745.P14418435212578842357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172471 (A090426 n).toNat + A079976 n

end

end A006745.P14418435212578842357

/-!
# A006746: Number of axially symmetric polyominoes with n cells.

The programs for A006746, there is no canonical definition to state claims against.
-/

/-! ## A006746.P7580046223542509814

`A349329(gcd(n+1, ceil(n/2)))+A349328(n+1)`
-/

namespace A006746.P7580046223542509814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349329 (Int.gcd (n + 1 : ℤ) ⌈(n : ℚ) / 2⌉) + A349328 (n + 1)

end

end A006746.P7580046223542509814

/-! ## A006746.P5472291780064531594

`A349329(A152271(n))+A349328(n+1)`
-/

namespace A006746.P5472291780064531594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349329 (A152271 n).toNat + A349328 (n + 1)

end

end A006746.P5472291780064531594

/-! ## A006746.P3576408417548981393

`A259090(n+1)-(A144554(n+1)+A006748(n+1))`
-/

namespace A006746.P3576408417548981393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259090 (n + 1) - (A144554 (n + 1) + A006748 (n + 1))

end

end A006746.P3576408417548981393

/-! ## A006746.P1025530455269013136

`A343562(n+1)-(A142886(n+1)+A056877(n+1))`
-/

namespace A006746.P1025530455269013136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343562 (n + 1) - (A142886 (n + 1) + A056877 (n + 1))

end

end A006746.P1025530455269013136

/-! ## A006746.P8417899575016841336

`A006765(n+1)+1-A006749(n+1)-(A144554(n+1)+A006748(n+1))`
-/

namespace A006746.P8417899575016841336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006765 (n + 1) + (1 - A006749 (n + 1)) - (A144554 (n + 1) + A006748 (n + 1))

end

end A006746.P8417899575016841336

/-!
# A006747: Number of rotationally symmetric polyominoes with n cells (that is, polyominoes with exactly the symmetry group C_2 generated by a 180-degree rotation).

The programs for A006747, there is no canonical definition to state claims against.
-/

/-! ## A006747.P1772464878946751943

`A030228(n+1)-(A144553(n+1)+A006749(n+1))`
-/

namespace A006747.P1772464878946751943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030228 (n + 1) - (A144553 (n + 1) + A006749 (n + 1))

end

end A006747.P1772464878946751943

/-! ## A006747.P4664662516188532961

`A341936(A056883(n+1))`
-/

namespace A006747.P4664662516188532961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341936 (A056883 (n + 1)).toNat

end

end A006747.P4664662516188532961

/-! ## A006747.P6880880102818489819

`A102683(A033995(n))+A056883(n+1)`
-/

namespace A006747.P6880880102818489819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102683 (A033995 n).toNat + A056883 (n + 1)

end

end A006747.P6880880102818489819

/-! ## A006747.P15310176293560255980

`A102681(A061993(n))+A056883(n+1)`
-/

namespace A006747.P15310176293560255980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102681 (A061993 n).toNat + A056883 (n + 1)

end

end A006747.P15310176293560255980

/-! ## A006747.P11459070743726313519

`A056883(n+1)+A011691(A305753(n))`
-/

namespace A006747.P11459070743726313519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056883 (n + 1) + A011691 (A305753 n).toNat

end

end A006747.P11459070743726313519

/-!
# A006748: Number of diagonally symmetric polyominoes with n cells.

The programs for A006748, there is no canonical definition to state claims against.
-/

/-! ## A006748.P10030588580363214775

`(A346800(n+1)-A142886(n+1))/2-A056878(n+1)`
-/

namespace A006748.P10030588580363214775
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A346800 (n + 1) - A142886 (n + 1) : ℚ) / 2 - (A056878 (n + 1) : ℚ)

end

end A006748.P10030588580363214775

/-! ## A006748.P2114965948443486453

`A259090(n+1)-(A144554(n+1)+A006746(n+1))`
-/

namespace A006748.P2114965948443486453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259090 (n + 1) - (A144554 (n + 1) + A006746 (n + 1))

end

end A006748.P2114965948443486453

/-! ## A006748.P1270014579586091295

`A030227(n+1)-(A343562(n+1)+A056878(n+1))`
-/

namespace A006748.P1270014579586091295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030227 (n + 1) - (A343562 (n + 1) + A056878 (n + 1))

end

end A006748.P1270014579586091295

/-!
# A006749: Number of asymmetric polyominoes with n cells.

The programs for A006749, there is no canonical definition to state claims against.
-/

/-! ## A006749.P15851674333140657471

`A000105(n+1)-A006746(n+1)-A006748(n+1)-A006747(n+1)-A056877(n+1)-A056878(n+1)-A144553(n+1)-A142886(n+1)`
-/

namespace A006749.P15851674333140657471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000105 (n + 1) - A006746 (n + 1) - A006748 (n + 1) - A006747 (n + 1) - A056877 (n + 1) - A056878 (n + 1) - A144553 (n + 1) - A142886 (n + 1)

end

end A006749.P15851674333140657471

/-! ## A006749.P4517624357520044281

`A030228(n+1)-(A144553(n+1)+A006747(n+1))`
-/

namespace A006749.P4517624357520044281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030228 (n + 1) - (A144553 (n + 1) + A006747 (n + 1))

end

end A006749.P4517624357520044281

/-! ## A006749.P15664771667925490476

`Δ[A173271(n)]-A259090(n+1)`
-/

namespace A006749.P15664771667925490476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173271 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A259090 (n + 1)

end

end A006749.P15664771667925490476

/-! ## A006749.P8800754407817650593

`A000105(n+1)-A259090(n+1)`
-/

namespace A006749.P8800754407817650593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000105 (n + 1) - A259090 (n + 1)

end

end A006749.P8800754407817650593

/-! ## A006749.P2699015613455522342

`A006765(n+1)+1-A259090(n+1)`
-/

namespace A006749.P2699015613455522342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006765 (n + 1) + (1 - A259090 (n + 1))

end

end A006749.P2699015613455522342

/-! ## A006749.P6570027883185470559

`A000988(n+1)-(A259090(n+1)+A030228(n+1))`
-/

namespace A006749.P6570027883185470559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000988 (n + 1) - (A259090 (n + 1) + A030228 (n + 1))

end

end A006749.P6570027883185470559

/-! ## A006749.P10810577361446780381

`A006765(n+1)+1-(A006746(n+1)+A144554(n+1)+A006748(n+1))`
-/

namespace A006749.P10810577361446780381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006765 (n + 1) + (1 - (A006746 (n + 1) + (A144554 (n + 1) + A006748 (n + 1))))

end

end A006749.P10810577361446780381

/-!
# A006750: Coefficients of Legendre polynomials.

The programs for A006750, there is no canonical definition to state claims against.
-/

/-! ## A006750.P6479502390438514581

`A008317((n+3)²+2)`
-/

namespace A006750.P6479502390438514581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008317 ((n + 3) ^ 2 + 2)

end

end A006750.P6479502390438514581

/-!
# A006751: Describe the previous term! (method A - initial term is 2).

The programs for A006751, there is no canonical definition to state claims against.
-/

/-! ## A006751.P17857876785121197586

`A001155(n+1)+2`
-/

namespace A006751.P17857876785121197586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001155 (n + 1) + 2

end

end A006751.P17857876785121197586

/-! ## A006751.P8670708808349701900

`A006715(n+1)-1`
-/

namespace A006751.P8670708808349701900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006715 (n + 1) - 1

end

end A006751.P8670708808349701900

/-! ## A006751.P10514039944228569878

`A001140(n+1)-2`
-/

namespace A006751.P10514039944228569878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001140 (n + 1) - 2

end

end A006751.P10514039944228569878

/-! ## A006751.P3098217689380572486

`A001141(n+1)-3`
-/

namespace A006751.P3098217689380572486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001141 (n + 1) - 3

end

end A006751.P3098217689380572486

/-! ## A006751.P8992962181763424082

`A001143(n+1)-4`
-/

namespace A006751.P8992962181763424082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001143 (n + 1) - 4

end

end A006751.P8992962181763424082

/-!
# A006752: Decimal expansion of Catalan's constant 1 - 1/9 + 1/25 - 1/49 + 1/81 - ...

The programs for A006752, there is no canonical definition to state claims against.
-/

/-! ## A006752.P4266728589229688307

`9-A364945(n)`
-/

namespace A006752.P4266728589229688307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A364945 n

end

end A006752.P4266728589229688307

/-!
# A006753: Smith (or joke) numbers: composite numbers k such that sum of digits of k = sum of digits of prime factors of k (counted with multiplicity).

The programs for A006753, there is no canonical definition to state claims against.
-/

/-! ## A006753.P14041911233064409408

`∪[A036924(n+1), A036925(n+1)]`
-/

namespace A006753.P14041911233064409408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036924 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036925 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A006753.P14041911233064409408

/-! ## A006753.P7308548963745627639

`∪[A098835(n+1), A098836(n+1)]`
-/

namespace A006753.P7308548963745627639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098835 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098836 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A006753.P7308548963745627639

/-! ## A006753.P5340650677500160281

`A098836(n+1)-A082858(A011856(n))`
-/

namespace A006753.P5340650677500160281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098836 (n + 1) - A082858 (A011856 n).toNat

end

end A006753.P5340650677500160281

/-! ## A006753.P14402574702722026327

`A098836(n+1)-A098841(A050322(n+1))`
-/

namespace A006753.P14402574702722026327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098836 (n + 1) - A098841 (A050322 (n + 1)).toNat

end

end A006753.P14402574702722026327

/-! ## A006753.P4000332913926093735

`A098836(A077168(n))`
-/

namespace A006753.P4000332913926093735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098836 (A077168 n).toNat

end

end A006753.P4000332913926093735

/-!
# A006755: The generalized Conway-Guy sequence w^{1}.

The programs for A006755, there is no canonical definition to state claims against.
-/

/-! ## A006755.P4376535094255040130

`A135034(A389292(n+1))`
-/

namespace A006755.P4376535094255040130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135034 (A389292 (n + 1)).toNat

end

end A006755.P4376535094255040130

/-! ## A006755.P14077538379517198303

`A000194(xor(1, A151282(n)))`
-/

namespace A006755.P14077538379517198303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (Int.xor 1 (A151282 n)).toNat

end

end A006755.P14077538379517198303

/-! ## A006755.P214345394785053111

`A097285(A151282(n)+2)-1`
-/

namespace A006755.P214345394785053111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097285 (A151282 n + 2).toNat - 1

end

end A006755.P214345394785053111

/-! ## A006755.P4649702291343994743

`A247367(or(∑[2*n], A120747(n+1)))`
-/

namespace A006755.P4649702291343994743
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247367 (Int.lor ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A120747 (n + 1))).toNat

end

end A006755.P4649702291343994743

/-! ## A006755.P15070548670085032468

`A000194(A151282(n)-A260196(n))`
-/

namespace A006755.P15070548670085032468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A151282 n - A260196 n).toNat

end

end A006755.P15070548670085032468

/-!
# A006758: Number of strictly 2-dimensional one-sided polyominoes with n cells.

The programs for A006758, there is no canonical definition to state claims against.
-/

/-! ## A006758.P14372545432819335458

`A000988(n)-1`
-/

namespace A006758.P14372545432819335458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000988 n - 1

end

end A006758.P14372545432819335458

/-! ## A006758.P14139130674508691129

`A057428(n+1)+A000988(n)`
-/

namespace A006758.P14139130674508691129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (n + 1) + A000988 n

end

end A006758.P14139130674508691129

/-! ## A006758.P13187110419187356505

`A000105(n)+A030228(n)-1`
-/

namespace A006758.P13187110419187356505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000105 n + (A030228 n - 1)

end

end A006758.P13187110419187356505

/-! ## A006758.P16712489660827283172

`A030228(n)+A006765(A028310(n))`
-/

namespace A006758.P16712489660827283172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030228 n + A006765 (A028310 n).toNat

end

end A006758.P16712489660827283172

/-! ## A006758.P5541468554034130220

`A334743(A006530(n+2))+A000988(n)`
-/

namespace A006758.P5541468554034130220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334743 (A006530 (n + 2)).toNat + A000988 n

end

end A006758.P5541468554034130220

/-!
# A006759: Number of one-sided strictly 3-dimensional polyominoes with n cells.

The programs for A006759, there is no canonical definition to state claims against.
-/

/-! ## A006759.P14565161804320060600

`A000162(n+1)-A000105(n+1)`
-/

namespace A006759.P14565161804320060600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000162 (n + 1) - A000105 (n + 1)

end

end A006759.P14565161804320060600

/-! ## A006759.P2794967968662818022

`A000162(n+1)-Δ[A173271(n)]`
-/

namespace A006759.P2794967968662818022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173271 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000162 (n + 1) - (f1 (n + 1) - f1 n)

end

end A006759.P2794967968662818022

/-! ## A006759.P8568283402844769025

`A000162(n+1)-(A006765(n+1)+1)`
-/

namespace A006759.P8568283402844769025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000162 (n + 1) - (A006765 (n + 1) + 1)

end

end A006759.P8568283402844769025

/-! ## A006759.P10546356079779264471

`A371397(n+1)+A038119(n+1)-Δ[A173271(n)]`
-/

namespace A006759.P10546356079779264471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173271 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371397 (n + 1) + A038119 (n + 1) - (f1 (n + 1) - f1 n)

end

end A006759.P10546356079779264471

/-! ## A006759.P10025345748997574278

`A007743(n+1)+2*A371397(n+1)-Δ[A173271(n)]`
-/

namespace A006759.P10025345748997574278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173271 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007743 (n + 1) + 2 * A371397 (n + 1) - (f1 (n + 1) - f1 n)

end

end A006759.P10025345748997574278

/-!
# A006760: Number of one-sided 4-dimensional polyominoes with n cells.

The programs for A006760, there is no canonical definition to state claims against.
-/

/-! ## A006760.P44380407530559636

`A255487(n+1)-A038119(n+1)`
-/

namespace A006760.P44380407530559636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255487 (n + 1) - A038119 (n + 1)

end

end A006760.P44380407530559636

/-! ## A006760.P12641617228534539453

`A255487(n+1)-(A006766(n+1)+A000105(n+1))`
-/

namespace A006760.P12641617228534539453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255487 (n + 1) - (A006766 (n + 1) + A000105 (n + 1))

end

end A006760.P12641617228534539453

/-! ## A006760.P13907712287954831033

`A195738(A025696(n+1))`
-/

namespace A006760.P13907712287954831033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195738 (A025696 (n + 1)).toNat

end

end A006760.P13907712287954831033

/-! ## A006760.P10538570289593005185

`A195738(A025703(n+1))`
-/

namespace A006760.P10538570289593005185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195738 (A025703 (n + 1)).toNat

end

end A006760.P10538570289593005185

/-!
# A006761: Number of one-sided, properly 5-dimensional polyominoes with n cells.

The programs for A006761, there is no canonical definition to state claims against.
-/

/-! ## A006761.P4397557199768482244

`A290305(n+1)-A068870(n+1)`
-/

namespace A006761.P4397557199768482244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290305 (n + 1) - A068870 (n + 1)

end

end A006761.P4397557199768482244

/-! ## A006761.P16041676045267612923

`A290305(A111706(n+1))%A068870(n+1)`
-/

namespace A006761.P16041676045267612923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A290305 (A111706 (n + 1)).toNat) (A068870 (n + 1))

end

end A006761.P16041676045267612923

/-! ## A006761.P1622633357906336483

`A195738(A025708(n+1))`
-/

namespace A006761.P1622633357906336483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195738 (A025708 (n + 1)).toNat

end

end A006761.P1622633357906336483

/-! ## A006761.P5145287842301646114

`A195738(A025718(n+1))`
-/

namespace A006761.P5145287842301646114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195738 (A025718 (n + 1)).toNat

end

end A006761.P5145287842301646114

/-!
# A006762: Number of strictly 2-dimensional fixed polyominoes with n cells.

The programs for A006762, there is no canonical definition to state claims against.
-/

/-! ## A006762.P9603921864256002683

`∑[Δ[A001168(n)]-char[1]]`
-/

namespace A006762.P9603921864256002683
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001168 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - ((if ∃ j, f3 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006762.P9603921864256002683

/-! ## A006762.P17155837396927516269

`A001168(n+1)-(ceil(abs(sin(n)))+1)`
-/

namespace A006762.P17155837396927516269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001168 (n + 1) - (⌈|Real.sin (n : ℝ)|⌉ + 1)

end

end A006762.P17155837396927516269

/-! ## A006762.P8396796375186073464

`A001168(A028310(n)+1)-2`
-/

namespace A006762.P8396796375186073464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001168 (A028310 n + 1).toNat - 2

end

end A006762.P8396796375186073464

/-! ## A006762.P11915017508917813751

`A001168(A233583(n+2))-2`
-/

namespace A006762.P11915017508917813751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001168 (A233583 (n + 2)).toNat - 2

end

end A006762.P11915017508917813751

/-! ## A006762.P7575886406641676932

`A001168(n+1)-A036453(n+1)`
-/

namespace A006762.P7575886406641676932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001168 (n + 1) - A036453 (n + 1)

end

end A006762.P7575886406641676932

/-! ## A006762.P4770986982475337261

`A001168(n+1)-(A057427(n)+1)`
-/

namespace A006762.P4770986982475337261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001168 (n + 1) - (A057427 n + 1)

end

end A006762.P4770986982475337261

/-! ## A006762.P3734949029256314543

`A001168(n+1)-gcd(2, A008425(n))`
-/

namespace A006762.P3734949029256314543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001168 (n + 1) - (Int.gcd 2 (A008425 n) : ℤ)

end

end A006762.P3734949029256314543

/-! ## A006762.P14532201520431702423

`A001168(n+1)-A020639(A008458(n))`
-/

namespace A006762.P14532201520431702423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001168 (n + 1) - A020639 (A008458 n).toNat

end

end A006762.P14532201520431702423

/-! ## A006762.P622581574987736733

`A001168(n+1)-A000005(A060442(n+2))`
-/

namespace A006762.P622581574987736733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001168 (n + 1) - A000005 (A060442 (n + 2)).toNat

end

end A006762.P622581574987736733

/-!
# A006763: Number of fixed properly-3-dimensional polyominoes with n cells.

The programs for A006763, there is no canonical definition to state claims against.
-/

/-! ## A006763.P5420343788687005280

`A195739(∑[A237119(n+3)])`
-/

namespace A006763.P5420343788687005280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237119 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195739 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A006763.P5420343788687005280

/-!
# A006764: Number of fixed properly-4-dimensional polyominoes with n cells.

The programs for A006764, there is no canonical definition to state claims against.
-/

/-! ## A006764.P15314545628217653086

`A195739(∑[n]+5-C(2, n))`
-/

namespace A006764.P15314545628217653086
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195739 (∑ j ∈ Finset.range (n + 1), f1 j + 5 - Nat.choose 2 n)

end

end A006764.P15314545628217653086

/-! ## A006764.P5924294601641075046

`A195739(A077169(n+1))`
-/

namespace A006764.P5924294601641075046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195739 (A077169 (n + 1)).toNat

end

end A006764.P5924294601641075046

/-!
# A006765: Number of strictly 2-dimensional polyominoes with n cells.

The programs for A006765, there is no canonical definition to state claims against.
-/

/-! ## A006765.P2570503451126849320

`∑[A283109(n)]`
-/

namespace A006765.P2570503451126849320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283109 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006765.P2570503451126849320

/-! ## A006765.P6747671225978763436

`Δ[A173271(n)]-1`
-/

namespace A006765.P6747671225978763436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173271 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A006765.P6747671225978763436

/-! ## A006765.P6293762033592657870

`∑[abs(Δ[A000105(n)])]`
-/

namespace A006765.P6293762033592657870
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000105 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006765.P6293762033592657870

/-! ## A006765.P3320755618701106960

`A000105(n+1)-1`
-/

namespace A006765.P3320755618701106960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000105 (n + 1) - 1

end

end A006765.P3320755618701106960

/-! ## A006765.P7956079401820167126

`A057766(n+1)/(n+1)-1`
-/

namespace A006765.P7956079401820167126
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057766 (n + 1) : ℚ) / (n + 1 : ℚ) - 1

end

end A006765.P7956079401820167126

/-! ## A006765.P8343948228712652442

`A130866(n+1)-A173271(n)`
-/

namespace A006765.P8343948228712652442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130866 (n + 1) - A173271 n

end

end A006765.P8343948228712652442

/-! ## A006765.P4451989762090412812

`∑[Δ[A000105(n)]%A001168(n)]`
-/

namespace A006765.P4451989762090412812
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000105 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (n + 1) - f2 n) (A001168 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006765.P4451989762090412812

/-! ## A006765.P10189848722368250177

`A006749(n+1)+A259090(n+1)-1`
-/

namespace A006765.P10189848722368250177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006749 (n + 1) + (A259090 (n + 1) - 1)

end

end A006765.P10189848722368250177

/-! ## A006765.P5533997452783259745

`A106743(A000040(n+1))+A000105(n+1)`
-/

namespace A006765.P5533997452783259745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106743 (A000040 (n + 1)).toNat + A000105 (n + 1)

end

end A006765.P5533997452783259745

/-!
# A006766: Number of 3-dimensional polyominoes with n cells.

The programs for A006766, there is no canonical definition to state claims against.
-/

/-! ## A006766.P2271356819991610315

`A038119(n+1)-Δ[A173271(n)]`
-/

namespace A006766.P2271356819991610315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173271 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038119 (n + 1) - (f1 (n + 1) - f1 n)

end

end A006766.P2271356819991610315

/-! ## A006766.P9607433366153896756

`A038119(n+1)-A000105(n+1)`
-/

namespace A006766.P9607433366153896756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038119 (n + 1) - A000105 (n + 1)

end

end A006766.P9607433366153896756

/-! ## A006766.P9368200651625095411

`A006759(n+1)-A371397(n+1)`
-/

namespace A006766.P9368200651625095411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006759 (n + 1) - A371397 (n + 1)

end

end A006766.P9368200651625095411

/-! ## A006766.P18091675592462785212

`A038119(n+1)-(A006765(n+1)+1)`
-/

namespace A006766.P18091675592462785212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038119 (n + 1) - (A006765 (n + 1) + 1)

end

end A006766.P18091675592462785212

/-! ## A006766.P6152577696955715116

`A371397(n+1)+A007743(n+1)-Δ[A173271(n)]`
-/

namespace A006766.P6152577696955715116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173271 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371397 (n + 1) + A007743 (n + 1) - (f1 (n + 1) - f1 n)

end

end A006766.P6152577696955715116

/-!
# A006767: Number of 4-dimensional polyominoes with n cells.

The programs for A006767, there is no canonical definition to state claims against.
-/

/-! ## A006767.P13806728573702106704

`A049430(A077169(n+1))`
-/

namespace A006767.P13806728573702106704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049430 (A077169 (n + 1)).toNat

end

end A006767.P13806728573702106704

/-! ## A006767.P14430429075179362715

`A068870(n+1)-A038119(n+1)`
-/

namespace A006767.P14430429075179362715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068870 (n + 1) - A038119 (n + 1)

end

end A006767.P14430429075179362715

/-! ## A006767.P15884888758507435055

`A049430(∑[Δ[A024536(n+4)]+1])`
-/

namespace A006767.P15884888758507435055
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024536 (n + 4)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049430 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A006767.P15884888758507435055

/-! ## A006767.P18053874674978622392

`A068870(n+1)-(A007743(n+1)+A000162(n+1))/2`
-/

namespace A006767.P18053874674978622392
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A068870 (n + 1) : ℚ) - (A007743 (n + 1) + A000162 (n + 1) : ℚ) / 2

end

end A006767.P18053874674978622392

/-!
# A006768: Number of 5-dimensional polyominoes with n cells.

The programs for A006768, there is no canonical definition to state claims against.
-/

/-! ## A006768.P10059715255050735829

`A049430(A025708(n+1))`
-/

namespace A006768.P10059715255050735829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049430 (A025708 (n + 1)).toNat

end

end A006768.P10059715255050735829

/-! ## A006768.P16602525454668168646

`A049430(A077169(n)+1+n)`
-/

namespace A006768.P16602525454668168646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049430 (A077169 n + 1 + (n : ℤ)).toNat

end

end A006768.P16602525454668168646

/-! ## A006768.P4172652993653045107

`A057893(lcm(A161950(n+1), A185652(n)))`
-/

namespace A006768.P4172652993653045107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057893 (Int.lcm (A161950 (n + 1)) (A185652 n))

end

end A006768.P4172652993653045107

/-!
# A006769: Elliptic divisibility sequence associated with elliptic curve "37a1": y^2 + y = x^3 - x and multiples of the point (0,0).

The programs for A006769, the canonical program `A006769.P12861503497755460721` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A006769 has offset 0).

The definition of A006769 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A006769.P12861503497755460721

`(a(n-1)*a(n-3)+a(n-2)²)/a(n-4)` with `a(0)=0, a(1)=1, a(2)=1, a(3)=-1, a(4)=1`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A006769

/-- `(a(n-1)*a(n-3)+a(n-2)²)/a(n-4)` -/
def P12861503497755460721.Spec : Prop :=
  ∀ n, P12861503497755460721.a n = (A006769 n : ℚ)

end A006769

/-!
# A006770: Number of fixed n-celled polyominoes which need only touch at corners.

The programs for A006770, there is no canonical definition to state claims against.
-/

/-! ## A006770.P15025463330495108982

`A380684(n)+A222807(A380679(n))`
-/

namespace A006770.P15025463330495108982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380684 n + A222807 (A380679 n).toNat

end

end A006770.P15025463330495108982

/-! ## A006770.P15452272893032427258

`A081335(n)-A065714(A000172(n))`
-/

namespace A006770.P15452272893032427258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081335 n - A065714 (A000172 n).toNat

end

end A006770.P15452272893032427258

/-!
# A006771: Exponential self-convolution of numbers of trees on n nodes.

The programs for A006771, there is no canonical definition to state claims against.
-/

/-! ## A006771.P10047855347626505478

`round(3^n/∏{p}[6^n, #])+n`
-/

namespace A006771.P10047855347626505478
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((3 ^ n : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ)) + (n : ℤ)

end

end A006771.P10047855347626505478

/-! ## A006771.P17190413716146237670

`∑[A008618(Δ[3^n])]`
-/

namespace A006771.P17190413716146237670
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008618 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006771.P17190413716146237670

/-! ## A006771.P2653138503306569910

`∑[A033183(4*3^n)]`
-/

namespace A006771.P2653138503306569910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033183 (4 * 3 ^ n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006771.P2653138503306569910

/-! ## A006771.P1293299981348560715

`A253092(3^n)+n+1`
-/

namespace A006771.P1293299981348560715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253092 (3 ^ n) + (n + 1 : ℤ)

end

end A006771.P1293299981348560715

/-!
# A006772: Sum of spans of 2n-step polygons on square lattice.

The programs for A006772, there is no canonical definition to state claims against.
-/

/-! ## A006772.P5989561613905048820

`A302336(n+1)/2`
-/

namespace A006772.P5989561613905048820
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A302336 (n + 1) : ℚ) / 2

end

end A006772.P5989561613905048820

/-! ## A006772.P5219214896041732654

`A014682(A302336(n+1))`
-/

namespace A006772.P5219214896041732654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A302336 (n + 1)).toNat

end

end A006772.P5219214896041732654

/-! ## A006772.P17194442086263438160

`A110963(2*A302336(n+1)+1)-1`
-/

namespace A006772.P17194442086263438160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110963 (2 * A302336 (n + 1) + 1).toNat - 1

end

end A006772.P17194442086263438160

/-!
# A006773: Sum of squared spans of 2n-step polygons on square lattice.

The programs for A006773, there is no canonical definition to state claims against.
-/

/-! ## A006773.P7008167844240461971

`A057355(A198629(n)+A000142(n))`
-/

namespace A006773.P7008167844240461971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057355 (A198629 n + A000142 n).toNat

end

end A006773.P7008167844240461971

/-! ## A006773.P677302566184999885

`A170890(A001906(n))+A013940(2*n+1)`
-/

namespace A006773.P677302566184999885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170890 (A001906 n).toNat + A013940 (2 * n + 1)

end

end A006773.P677302566184999885

/-!
# A006774: Number of 2n-step polygons on honeycomb.

The programs for A006774, there is no canonical definition to state claims against.
-/

/-! ## A006774.P1458858320286720404

`A005396(n+2)/floor(2/acot(n))`
-/

namespace A006774.P1458858320286720404
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005396 (n + 2) : ℚ) / (⌊2 / SequenceMachineLib.acot (n : ℝ)⌋ : ℚ)

end

end A006774.P1458858320286720404

/-! ## A006774.P13251642538020691042

`A005396(n+2)/A004277(n)`
-/

namespace A006774.P13251642538020691042
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005396 (n + 2) : ℚ) / (A004277 n : ℚ)

end

end A006774.P13251642538020691042

/-! ## A006774.P3680322147390052087

`A005396(n+2)/A000267(n²)`
-/

namespace A006774.P3680322147390052087
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005396 (n + 2) : ℚ) / (A000267 (n ^ 2) : ℚ)

end

end A006774.P3680322147390052087

/-! ## A006774.P12183858641566413787

`A005396(n+2)/record[A005131(n)]`
-/

namespace A006774.P12183858641566413787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005131 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005396 (n + 2) : ℚ) / (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ)

end

end A006774.P12183858641566413787

/-! ## A006774.P9498662796587177099

`A005396(n+2)/A004275(n+1)`
-/

namespace A006774.P9498662796587177099
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005396 (n + 2) : ℚ) / (A004275 (n + 1) : ℚ)

end

end A006774.P9498662796587177099

/-!
# A006776: Number of n-step spirals on hexagonal lattice.

The programs for A006776, there is no canonical definition to state claims against.
-/

/-! ## A006776.P3368319664412210628

`∑[A126646(n)-A060129(A262862(n))+2]`
-/

namespace A006776.P3368319664412210628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 n - A060129 (A262862 n).toNat + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006776.P3368319664412210628

/-! ## A006776.P438160488673823252

`∑[A257639(A081901(n))]`
-/

namespace A006776.P438160488673823252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257639 (A081901 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006776.P438160488673823252

/-! ## A006776.P7251235149527595251

`A362882(A000691(n+1))`
-/

namespace A006776.P7251235149527595251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362882 (A000691 (n + 1)).toNat

end

end A006776.P7251235149527595251

/-!
# A006777: Number of n-step spirals on hexagonal lattice.

The programs for A006777, there is no canonical definition to state claims against.
-/

/-! ## A006777.P5553034874859259115

`A342339(∑[A342094(n+1)])-n`
-/

namespace A006777.P5553034874859259115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342094 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342339 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - (n : ℤ)

end

end A006777.P5553034874859259115

/-! ## A006777.P8933313271427959746

`A116939(A052481(n))-A026799(n)`
-/

namespace A006777.P8933313271427959746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116939 (A052481 n).toNat - A026799 n

end

end A006777.P8933313271427959746

/-! ## A006777.P15391515720631388942

`A108611(A052952(n))+A096573(n+1)`
-/

namespace A006777.P15391515720631388942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108611 (A052952 n).toNat + A096573 (n + 1)

end

end A006777.P15391515720631388942

/-! ## A006777.P2883595948421649285

`A006330(A077739(n+1))-A014968(n)`
-/

namespace A006777.P2883595948421649285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006330 (A077739 (n + 1)).toNat - A014968 n

end

end A006777.P2883595948421649285

/-! ## A006777.P8323301964137384250

`A003056(A014217(n+2)*A061255(n))`
-/

namespace A006777.P8323301964137384250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A014217 (n + 2) * A061255 n).toNat

end

end A006777.P8323301964137384250

/-!
# A006778: Number of n-step spirals on hexagonal lattice.

The programs for A006778, there is no canonical definition to state claims against.
-/

/-! ## A006778.P6958397395938306301

`A054404(A182818(n+1)+1)`
-/

namespace A006778.P6958397395938306301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054404 (A182818 (n + 1) + 1).toNat

end

end A006778.P6958397395938306301

/-! ## A006778.P13128244070192040972

`∑[A101888(∑[A351018(n)])]`
-/

namespace A006778.P13128244070192040972
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351018 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101888 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006778.P13128244070192040972

/-! ## A006778.P2791057491436037258

`∑[∑[A346129(A266925(n+1))]]`
-/

namespace A006778.P2791057491436037258
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346129 (A266925 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006778.P2791057491436037258

/-! ## A006778.P5949485197353818488

`∑[A132018(A100835(2*n+1)+1)-2]`
-/

namespace A006778.P5949485197353818488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132018 (A100835 (2 * n + 1) + 1).toNat - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006778.P5949485197353818488

/-!
# A006779: Number of n-step spirals on cubic lattice.

The programs for A006779, there is no canonical definition to state claims against.
-/

/-! ## A006779.P13617495887414366600

`A079843(n)+A075102(A118932(n))`
-/

namespace A006779.P13617495887414366600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079843 n + A075102 (A118932 n).toNat

end

end A006779.P13617495887414366600

/-! ## A006779.P3746322857898257209

`A175386(A330079(n))`
-/

namespace A006779.P3746322857898257209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175386 (A330079 n).toNat

end

end A006779.P3746322857898257209

/-!
# A006780: Number of n-step anisotropic spirals on cubic lattice.

The programs for A006780, there is no canonical definition to state claims against.
-/

/-! ## A006780.P15996310834360965475

`A247001(n)+comp[2*(n+1)]`
-/

namespace A006780.P15996310834360965475
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247001 n + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ)

end

end A006780.P15996310834360965475

/-! ## A006780.P2518595752514580327

`A006995(n+1)+A247001(n)`
-/

namespace A006780.P2518595752514580327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006995 (n + 1) + A247001 n

end

end A006780.P2518595752514580327

/-!
# A006781: Number of polygons of length 4n on Manhattan lattice.

The programs for A006781, there is no canonical definition to state claims against.
-/

/-! ## A006781.P12811918753159834129

`A065033(A343351(n)+A000227(n))`
-/

namespace A006781.P12811918753159834129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A343351 n + A000227 n).toNat

end

end A006781.P12811918753159834129

/-! ## A006781.P5436333181139629322

`A276796(A081125(n)+A052171(n))`
-/

namespace A006781.P5436333181139629322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276796 (A081125 n + A052171 n).toNat

end

end A006781.P5436333181139629322

/-!
# A006782: Number of polygons of length 4n on L-lattice.

The programs for A006782, there is no canonical definition to state claims against.
-/

/-! ## A006782.P63908838536418400

`A337550(n+1)/(8*(n+1))`
-/

namespace A006782.P63908838536418400
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A337550 (n + 1) : ℚ) / (8 * (n + 1) : ℚ)

end

end A006782.P63908838536418400

/-! ## A006782.P458876547349023743

`A105519(4^n+1-3^n)+C(Δ[round(((n+3)/2)²/5)]+1, 2)`
-/

namespace A006782.P458876547349023743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((n + 3 : ℚ) / 2) ^ 2 / 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105519 ((4 ^ n : ℤ) + (1 - (3 ^ n : ℤ))).toNat + (Nat.choose (f1 (n + 1) - f1 n + 1).toNat 2 : ℤ)

end

end A006782.P458876547349023743

/-! ## A006782.P14955342429572275162

`A121769(A392618(n+1))`
-/

namespace A006782.P14955342429572275162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121769 (A392618 (n + 1)).toNat

end

end A006782.P14955342429572275162

/-!
# A006785: Number of triangle-free graphs on n vertices.

The programs for A006785, there is no canonical definition to state claims against.
-/

/-! ## A006785.P7354064793527119832

`1+A052450(n+1)`
-/

namespace A006785.P7354064793527119832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A052450 (n + 1)

end

end A006785.P7354064793527119832

/-! ## A006785.P6344603934758106229

`∑[A372169(n+1)]+1`
-/

namespace A006785.P6344603934758106229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372169 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A006785.P6344603934758106229

/-! ## A006785.P18073909386291528266

`∑[A372169(comp[98*2^n-12*n²-60*n-97])]`
-/

namespace A006785.P18073909386291528266
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (98 * 2 ^ n : ℤ) - (12 * n ^ 2 : ℤ) - (60 * n : ℤ) - 97

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372169 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006785.P18073909386291528266

/-! ## A006785.P6879821772193594077

`A052450(A291769(n))+1`
-/

namespace A006785.P6879821772193594077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052450 (A291769 n).toNat + 1

end

end A006785.P6879821772193594077

/-! ## A006785.P11656970231145483252

`A052450(A348553(n))+1`
-/

namespace A006785.P11656970231145483252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052450 (A348553 n).toNat + 1

end

end A006785.P11656970231145483252

/-!
# A006786: Number of squarefree graphs on n vertices.

The programs for A006786, there is no canonical definition to state claims against.
-/

/-! ## A006786.P3765450865363752653

`A000088(n+1)-A039751(n+1)`
-/

namespace A006786.P3765450865363752653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000088 (n + 1) - A039751 (n + 1)

end

end A006786.P3765450865363752653

/-! ## A006786.P7183380661138717412

`A006897(n+1)-(A039751(n+1)+A006897(n))`
-/

namespace A006786.P7183380661138717412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006897 (n + 1) - (A039751 (n + 1) + A006897 n)

end

end A006786.P7183380661138717412

/-! ## A006786.P2247823872416674761

`record[A000088(A076314(n))-A039751(n)]`
-/

namespace A006786.P2247823872416674761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000088 (A076314 n).toNat - A039751 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A006786.P2247823872416674761

/-! ## A006786.P15071323322512300626

`floor(sqrt(∑[A243785(n+3)]))`
-/

namespace A006786.P15071323322512300626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243785 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A006786.P15071323322512300626

/-!
# A006787: Number of n-node graphs with no cycles of length less than 5.

The programs for A006787, there is no canonical definition to state claims against.
-/

/-! ## A006787.P9612326787934064984

`A247911(A327180(n)+A034343(n+1))`
-/

namespace A006787.P9612326787934064984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247911 (A327180 n + A034343 (n + 1)).toNat

end

end A006787.P9612326787934064984

/-! ## A006787.P8313767511248795053

`A235963(A351050(n))+n`
-/

namespace A006787.P8313767511248795053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235963 (A351050 n).toNat + (n : ℤ)

end

end A006787.P8313767511248795053

/-! ## A006787.P7009779575425596890

`A202304(∑[∑[A009121(n)]])`
-/

namespace A006787.P7009779575425596890
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009121 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202304 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A006787.P7009779575425596890

/-! ## A006787.P9435224461434185936

`A003056(A323299(n)+A000984(n))`
-/

namespace A006787.P9435224461434185936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A323299 n + A000984 n).toNat

end

end A006787.P9435224461434185936

/-!
# A006788: a(n) = floor(2^(n-1)/n).

The programs for A006788, the canonical program `A006788.P8677042134316406324` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A006788 has offset 1).

The definition of A006788 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(2^n/(n+1))` (program `A006788.P8677042134316406324`, by `A006788.P8677042134316406324.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A006788.P8677042134316406324

`floor(2^n/(n+1))`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A006788

/-- `floor(2^n/(n+1))` -/
def P8677042134316406324.Spec : Prop :=
  ∀ n, P8677042134316406324.a n = A006788 (n + 1)

theorem P8677042134316406324.correct : P8677042134316406324.Spec := by
  intro n
  simp only [A006788, Nat.add_sub_cancel]

end A006788

/-! ## A006788.P7891372439938910234

`A053637(n+1)-A043545(n)`
-/

namespace A006788.P7891372439938910234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053637 (n + 1) - A043545 n

end

end A006788.P7891372439938910234

namespace A006788

/-- `A053637(n+1)-A043545(n)` -/
def P7891372439938910234.Spec : Prop :=
  ∀ n, P7891372439938910234.a n = A006788 (n + 1)

end A006788

/-! ## A006788.P17628094807299860451

`A054650(n+1)-A323547(n+1)`
-/

namespace A006788.P17628094807299860451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054650 (n + 1) - A323547 (n + 1)

end

end A006788.P17628094807299860451

namespace A006788

/-- `A054650(n+1)-A323547(n+1)` -/
def P17628094807299860451.Spec : Prop :=
  ∀ n, P17628094807299860451.a n = A006788 (n + 1)

end A006788

/-! ## A006788.P6228544289869290411

`A000799(n+1)-A054650(n+1)`
-/

namespace A006788.P6228544289869290411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000799 (n + 1) - A054650 (n + 1)

end

end A006788.P6228544289869290411

namespace A006788

/-- `A000799(n+1)-A054650(n+1)` -/
def P6228544289869290411.Spec : Prop :=
  ∀ n, P6228544289869290411.a n = A006788 (n + 1)

end A006788

/-! ## A006788.P12890423311148234372

`A000799(n+1)+A053637(n+1)-A053638(n+1)`
-/

namespace A006788.P12890423311148234372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000799 (n + 1) + (A053637 (n + 1) - A053638 (n + 1))

end

end A006788.P12890423311148234372

namespace A006788

/-- `A000799(n+1)+A053637(n+1)-A053638(n+1)` -/
def P12890423311148234372.Spec : Prop :=
  ∀ n, P12890423311148234372.a n = A006788 (n + 1)

end A006788

/-! ## A006788.P654347963476758008

`A053637(n+1)+A281375(n+1)-A053639(n+1)`
-/

namespace A006788.P654347963476758008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053637 (n + 1) + (A281375 (n + 1) - A053639 (n + 1))

end

end A006788.P654347963476758008

namespace A006788

/-- `A053637(n+1)+A281375(n+1)-A053639(n+1)` -/
def P654347963476758008.Spec : Prop :=
  ∀ n, P654347963476758008.a n = A006788 (n + 1)

end A006788

/-! ## A006788.P834907106900897141

`ceil(A000325(n)/(n+1))`
-/

namespace A006788.P834907106900897141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A000325 n : ℚ) / (n + 1 : ℚ)⌉

end

end A006788.P834907106900897141

namespace A006788

/-- `ceil(A000325(n)/(n+1))` -/
def P834907106900897141.Spec : Prop :=
  ∀ n, P834907106900897141.a n = A006788 (n + 1)

end A006788

/-! ## A006788.P11787784235871488359

`ceil(A132045(n)/(n+1))`
-/

namespace A006788.P11787784235871488359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A132045 n : ℚ) / (n + 1 : ℚ)⌉

end

end A006788.P11787784235871488359

namespace A006788

/-- `ceil(A132045(n)/(n+1))` -/
def P11787784235871488359.Spec : Prop :=
  ∀ n, P11787784235871488359.a n = A006788 (n + 1)

end A006788

/-! ## A006788.P641832654316807

`round(A084174(n)/(n+1))`
-/

namespace A006788.P641832654316807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A084174 n : ℚ) / (n + 1 : ℚ))

end

end A006788.P641832654316807

namespace A006788

/-- `round(A084174(n)/(n+1))` -/
def P641832654316807.Spec : Prop :=
  ∀ n, P641832654316807.a n = A006788 (n + 1)

end A006788

/-! ## A006788.P10928239331000714847

`ceil(A000051(n)/(n+1))-1`
-/

namespace A006788.P10928239331000714847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A000051 n : ℚ) / (n + 1 : ℚ)⌉ - 1

end

end A006788.P10928239331000714847

namespace A006788

/-- `ceil(A000051(n)/(n+1))-1` -/
def P10928239331000714847.Spec : Prop :=
  ∀ n, P10928239331000714847.a n = A006788 (n + 1)

end A006788

/-! ## A006788.P17427052401216534105

`ceil((A000079(n)-n)/(n+1))`
-/

namespace A006788.P17427052401216534105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A000079 n - (n : ℤ) : ℚ) / (n + 1 : ℚ)⌉

end

end A006788.P17427052401216534105

namespace A006788

/-- `ceil((A000079(n)-n)/(n+1))` -/
def P17427052401216534105.Spec : Prop :=
  ∀ n, P17427052401216534105.a n = A006788 (n + 1)

end A006788

/-! ## A006788.P15339977007284290138

`ceil((∑[A011782(n)]-n)/(n+1))`
-/

namespace A006788.P15339977007284290138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ) : ℤ) : ℚ) / (n + 1 : ℚ)⌉

end

end A006788.P15339977007284290138

namespace A006788

/-- `ceil((∑[A011782(n)]-n)/(n+1))` -/
def P15339977007284290138.Spec : Prop :=
  ∀ n, P15339977007284290138.a n = A006788 (n + 1)

end A006788

/-! ## A006788.P14089519034387361267

`ceil((A000225(n)+1-n)/(n+1))`
-/

namespace A006788.P14089519034387361267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A000225 n + (1 - (n : ℤ)) : ℚ) / (n + 1 : ℚ)⌉

end

end A006788.P14089519034387361267

namespace A006788

/-- `ceil((A000225(n)+1-n)/(n+1))` -/
def P14089519034387361267.Spec : Prop :=
  ∀ n, P14089519034387361267.a n = A006788 (n + 1)

end A006788

/-! ## A006788.P8591405833151235655

`ceil((A155559(n)+1-n)/(n+1))`
-/

namespace A006788.P8591405833151235655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A155559 n + (1 - (n : ℤ)) : ℚ) / (n + 1 : ℚ)⌉

end

end A006788.P8591405833151235655

namespace A006788

/-- `ceil((A155559(n)+1-n)/(n+1))` -/
def P8591405833151235655.Spec : Prop :=
  ∀ n, P8591405833151235655.a n = A006788 (n + 1)

end A006788

/-! ## A006788.P4685984466018272519

`floor(A132732(n)/(2*(n+1)))+1`
-/

namespace A006788.P4685984466018272519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A132732 n : ℚ) / (2 * (n + 1) : ℚ)⌋ + 1

end

end A006788.P4685984466018272519

namespace A006788

/-- `floor(A132732(n)/(2*(n+1)))+1` -/
def P4685984466018272519.Spec : Prop :=
  ∀ n, P4685984466018272519.a n = A006788 (n + 1)

end A006788

/-!
# A006789: Bessel numbers: the number of nonoverlapping partitions of an n-set into equivalence classes.

The programs for A006789, there is no canonical definition to state claims against.
-/

/-! ## A006789.P11755413786519481209

`A153198(∑[n]+n)`
-/

namespace A006789.P11755413786519481209
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153198 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A006789.P11755413786519481209

/-! ## A006789.P14777789108539280540

`A153199(∑[n]+n)`
-/

namespace A006789.P14777789108539280540
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153199 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A006789.P14777789108539280540

/-! ## A006789.P17926431211941150358

`A000110(n)-A153820(n)`
-/

namespace A006789.P17926431211941150358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 n - A153820 n

end

end A006789.P17926431211941150358

/-! ## A006789.P8597799074649666960

`abs(A292935(n))-A153820(n)`
-/

namespace A006789.P8597799074649666960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A292935 n| - A153820 n

end

end A006789.P8597799074649666960

/-! ## A006789.P17630938659726530277

`Δ[A005001(n)]-A153820(n)`
-/

namespace A006789.P17630938659726530277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005001 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A153820 n

end

end A006789.P17630938659726530277

/-! ## A006789.P12977350693373942401

`A011971(A000217(n))-A153820(n)`
-/

namespace A006789.P12977350693373942401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011971 (A000217 n).toNat - A153820 n

end

end A006789.P12977350693373942401

/-! ## A006789.P12581890931897552667

`A056857(A000124(n))-A153820(n)`
-/

namespace A006789.P12581890931897552667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056857 (A000124 n).toNat - A153820 n

end

end A006789.P12581890931897552667

/-! ## A006789.P4833693881364838769

`A106436(A000096(n))-A153820(n)`
-/

namespace A006789.P4833693881364838769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106436 (A000096 n).toNat - A153820 n

end

end A006789.P4833693881364838769

/-!
# A006790: Exponentiation of e.g.f. for trees A000055(n-1).

The programs for A006790, there is no canonical definition to state claims against.
-/

/-! ## A006790.P9334890020458101381

`A229301(A059216(n+1))`
-/

namespace A006790.P9334890020458101381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229301 (A059216 (n + 1)).toNat

end

end A006790.P9334890020458101381

/-! ## A006790.P10335368610552266314

`∑[A101402(A024429(n+2))]`
-/

namespace A006790.P10335368610552266314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101402 (A024429 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006790.P10335368610552266314

/-! ## A006790.P3023221263878441200

`A271272(n)+A002266(A000110(n+2))`
-/

namespace A006790.P3023221263878441200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271272 n + A002266 (A000110 (n + 2)).toNat

end

end A006790.P3023221263878441200

/-!
# A006791: Number of cyclically-5-connected planar trivalent graphs with 2n nodes.

The programs for A006791, there is no canonical definition to state claims against.
-/

/-! ## A006791.P16586087068634975260

`A329201(A164934(n+1))+A200976(n)`
-/

namespace A006791.P16586087068634975260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329201 (A164934 (n + 1)).toNat + A200976 n

end

end A006791.P16586087068634975260

/-! ## A006791.P2832275173696585306

`A111357(n)-A181340(A007021(n+3))`
-/

namespace A006791.P2832275173696585306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111357 (n + 12) - A181340 (A007021 (n + 3)).toNat

end

end A006791.P2832275173696585306

/-! ## A006791.P12602998025141769734

`A010361(n+1)-A060050(n+2)%A202592(n)`
-/

namespace A006791.P12602998025141769734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010361 (n + 1) - Int.tmod (A060050 (n + 2)) (A202592 n)

end

end A006791.P12602998025141769734

/-! ## A006791.P1042448307989811415

`A081621(A047842(n+1)+1)-A112765(A018039(n))`
-/

namespace A006791.P1042448307989811415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081621 (A047842 (n + 1) + 1).toNat - A112765 (A018039 n).toNat

end

end A006791.P1042448307989811415

/-!
# A006792: Number of n-node vertex-transitive graphs which are not Cayley graphs.

The programs for A006792, there is no canonical definition to state claims against.
-/

/-! ## A006792.P13871404485896493242

`A006799(n+10)-A185959(n+10)`
-/

namespace A006792.P13871404485896493242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006799 (n + 10) - A185959 (n + 10)

end

end A006792.P13871404485896493242

/-! ## A006792.P4509273370696145632

`2*A045872(n)`
-/

namespace A006792.P4509273370696145632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A045872 (n + 10)

end

end A006792.P4509273370696145632

/-! ## A006792.P1840911123203176716

`A005843(A045872(n))`
-/

namespace A006792.P1840911123203176716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A045872 (n + 10)).toNat

end

end A006792.P1840911123203176716

/-! ## A006792.P657790623711364068

`A057354(lcm(5, A045872(n)))`
-/

namespace A006792.P657790623711364068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057354 (Int.lcm 5 (A045872 (n + 10)))

end

end A006792.P657790623711364068

/-! ## A006792.P14281554182172245866

`A004277(A045872(n)+3)-6`
-/

namespace A006792.P14281554182172245866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A045872 (n + 10) + 3).toNat - 6

end

end A006792.P14281554182172245866

/-!
# A006793: Orders of vertex-transitive graphs which are not Cayley graphs.

The programs for A006793, there is no canonical definition to state claims against.
-/

/-! ## A006793.P1359659921443874712

`record[A228363(A089229(n+1)+A000005(n+1))]`
-/

namespace A006793.P1359659921443874712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228363 (A089229 (n + 1) + A000005 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A006793.P1359659921443874712

/-! ## A006793.P7154039674493122630

`A289509(lt[A194277(n+3), A257740(n+3)])`
-/

namespace A006793.P7154039674493122630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194277 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257740 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289509 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A006793.P7154039674493122630

/-! ## A006793.P3249273174929897433

`A070807(lt[A070792(3*n+4), A070827(2*n+1)])`
-/

namespace A006793.P3249273174929897433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070792 (3 * n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070827 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070807 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A006793.P3249273174929897433

/-! ## A006793.P7032732719001056112

`A324697(n+5)+A115579(A122111(n+5))`
-/

namespace A006793.P7032732719001056112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324697 (n + 5) + A115579 (A122111 (n + 5)).toNat

end

end A006793.P7032732719001056112

/-!
# A006794: Primorial -1 primes: primes p such that -1 + product of primes up to p is prime.

The programs for A006794, there is no canonical definition to state claims against.
-/

/-! ## A006794.P18316686949350477366

`A000040(A057704(n+1))`
-/

namespace A006794.P18316686949350477366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A057704 (n + 1)).toNat

end

end A006794.P18316686949350477366

/-! ## A006794.P12970421801428216908

`A008578(A057704(n+1)+1)`
-/

namespace A006794.P12970421801428216908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A057704 (n + 1) + 1).toNat

end

end A006794.P12970421801428216908

/-! ## A006794.P11538223823158311775

`A182986(A057704(n+1)+1)`
-/

namespace A006794.P11538223823158311775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (A057704 (n + 1) + 1).toNat

end

end A006794.P11538223823158311775

/-! ## A006794.P10399874884405855038

`A065091(A057704(n+1)-1)`
-/

namespace A006794.P10399874884405855038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (A057704 (n + 1) - 1).toNat

end

end A006794.P10399874884405855038

/-! ## A006794.P10019247729098797775

`A158611(A057704(n+1)+2)`
-/

namespace A006794.P10019247729098797775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (A057704 (n + 1) + 2).toNat

end

end A006794.P10019247729098797775

/-!
# A006795: A subclass of 2n-node trivalent planar graphs without triangles.

The programs for A006795, there is no canonical definition to state claims against.
-/

/-! ## A006795.P11675868418748337933

`A110654(A135030(n)+A077829(n))`
-/

namespace A006795.P11675868418748337933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A135030 n + A077829 n).toNat

end

end A006795.P11675868418748337933

/-! ## A006795.P1007719960111769589

`A195255(n)-A127286(A014138(n))`
-/

namespace A006795.P1007719960111769589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195255 n - A127286 (A014138 n).toNat

end

end A006795.P1007719960111769589

/-!
# A006796: A subclass of 2n-node trivalent planar graphs without triangles.

The programs for A006796, there is no canonical definition to state claims against.
-/

/-! ## A006796.P10295990607103156166

`A122347(A014137(n))+A000142(n)`
-/

namespace A006796.P10295990607103156166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122347 (A014137 n).toNat + A000142 n

end

end A006796.P10295990607103156166

/-! ## A006796.P5214999278666015555

`A150161(n)+A010872(A000354(n))`
-/

namespace A006796.P5214999278666015555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150161 n + A010872 (A000354 n).toNat

end

end A006796.P5214999278666015555

/-!
# A006797: A subclass of 2n-node trivalent planar graphs without triangles.

The programs for A006797, there is no canonical definition to state claims against.
-/

/-! ## A006797.P11420887451896294778

`A103221(A103221(∏[n/a(n-1)+1]-1))` with `a(0)=2, a(1)=1`
-/

namespace A006797.P11420887451896294778
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [2, 1] fun n f1 =>
  (n : ℚ) / f1 (n - 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (A103221 (SequenceMachineLib.roundAway (∏ j ∈ Finset.range (n + 1), f1 j - 1)).toNat).toNat

end

end A006797.P11420887451896294778

/-! ## A006797.P11305519879270404567

`A108602(A335700(n)+A008441(n))`
-/

namespace A006797.P11305519879270404567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108602 (A335700 n + A008441 n).toNat

end

end A006797.P11305519879270404567

/-! ## A006797.P17937860137688090987

`A003056(A119501(n+1)+A000122(n))`
-/

namespace A006797.P17937860137688090987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A119501 (n + 1) + A000122 n).toNat

end

end A006797.P17937860137688090987

/-! ## A006797.P2953510968667758088

`A003056(A119501(n+1)+A079559(n))`
-/

namespace A006797.P2953510968667758088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A119501 (n + 1) + A079559 n).toNat

end

end A006797.P2953510968667758088

/-! ## A006797.P17549819401591627420

`A003056(A286180(n)+A119501(n+1))`
-/

namespace A006797.P17549819401591627420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A286180 n + A119501 (n + 1)).toNat

end

end A006797.P17549819401591627420

/-!
# A006798: A subclass of 2n-node trivalent planar graphs without triangles.

The programs for A006798, there is no canonical definition to state claims against.
-/

/-! ## A006798.P1170866128562323393

`A241093(A206246(n+1))+A126796(n+1)`
-/

namespace A006798.P1170866128562323393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241093 (A206246 (n + 1)).toNat + A126796 (n + 1)

end

end A006798.P1170866128562323393

/-! ## A006798.P17463151243527219145

`A023193(A114589(n)²)`
-/

namespace A006798.P17463151243527219145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023193 (A114589 n ^ 2).toNat

end

end A006798.P17463151243527219145

/-!
# A006799: Number of vertex-transitive graphs with n nodes.

The programs for A006799, there is no canonical definition to state claims against.
-/

/-! ## A006799.P12293197780786500330

`∑{d}[n+1, A006800(#)]`
-/

namespace A006799.P12293197780786500330
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A006800 d

end

end A006799.P12293197780786500330

/-! ## A006799.P12061965826468712592

`A389815(n+1)+A049287(n+1)`
-/

namespace A006799.P12061965826468712592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389815 (n + 1) + A049287 (n + 1)

end

end A006799.P12061965826468712592

/-! ## A006799.P3984972164124397817

`2*A006800(n+1)-A054917(n+1)`
-/

namespace A006799.P3984972164124397817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A006800 (n + 1) - A054917 (n + 1)

end

end A006799.P3984972164124397817

/-! ## A006799.P11572186127888319185

`A004277(A006800(n+1))-A054917(n+1)`
-/

namespace A006799.P11572186127888319185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A006800 (n + 1)).toNat - A054917 (n + 1)

end

end A006799.P11572186127888319185

/-! ## A006799.P14064957160745582288

`or(A185959(n+1), A318983(A227133(n+1)))`
-/

namespace A006799.P14064957160745582288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A185959 (n + 1)) (A318983 (A227133 (n + 1)).toNat)

end

end A006799.P14064957160745582288

