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
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C037
import Seq.B000.C039
import Seq.B000.C041
import Seq.B000.C042
import Seq.B000.C043
import Seq.B000.C048
import Seq.B000.C049
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C010
import Seq.B001.C012
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C005
import Seq.B004.C001
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B007.C000
import Seq.B008.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
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
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A138800: Number of monomials in discriminant of polynomial x^n + a_{n-2} x^{n-2} + ... + a_0.

The programs for A138800, there is no canonical definition to state claims against.
-/

/-! ## A138800.P15232836774580403502

`A268569(n+3)+A123721(A000040(n+1))`
-/

namespace A138800.P15232836774580403502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268569 (n + 3) + A123721 (A000040 (n + 1)).toNat

end

end A138800.P15232836774580403502

/-! ## A138800.P7081064833954227742

`A352967(A060052(n+2))+A268569(n+3)`
-/

namespace A138800.P7081064833954227742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352967 (A060052 (n + 2)).toNat + A268569 (n + 3)

end

end A138800.P7081064833954227742

/-! ## A138800.P16616657390589986918

`A268569(n+3)+A000122(A004277(3*(n+1)))`
-/

namespace A138800.P16616657390589986918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268569 (n + 3) + A000122 (A004277 (3 * (n + 1))).toNat

end

end A138800.P16616657390589986918

/-! ## A138800.P3293630720780641907

`A268569(n+3)+A000122(A005153(2*(n+2)))`
-/

namespace A138800.P3293630720780641907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268569 (n + 3) + A000122 (A005153 (2 * (n + 2))).toNat

end

end A138800.P3293630720780641907

/-!
# A138802: Number of monomials in discriminant of symbolic Tschirnhausen polynomial of degree n (with three zero coefficients at x^(n-1), x^(n-2) and x^(n-3)).

The programs for A138802, there is no canonical definition to state claims against.
-/

/-! ## A138802.P13158812426869589173

`A318895(n)-A091247(n)`
-/

namespace A138802.P13158812426869589173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318895 n - A091247 n

end

end A138802.P13158812426869589173

/-! ## A138802.P2899868866522220513

`A318895(n)-char[A067652(n)]`
-/

namespace A138802.P2899868866522220513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067652 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318895 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A138802.P2899868866522220513

/-! ## A138802.P14928015669933836307

`A006373(A134816(n+1)-1)`
-/

namespace A138802.P14928015669933836307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006373 (A134816 (n + 1) - 1).toNat

end

end A138802.P14928015669933836307

/-!
# A138803: Imaginary parts of terms (1,1), (2,2) of matrix [1,(1+I); 1,1]^n.

The programs for A138803, the canonical program `A138803.P10664654165890850169` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A138803 has offset 1).

The definition of A138803 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A138803.P6161885630306991978

`ogf((x-x^2)/(1-4x+4x^2+x^4))`
-/

namespace A138803.P6161885630306991978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, -1] [1, -4, 4, 0, 1] n

end

end A138803.P6161885630306991978

namespace A138803

/-- `ogf((x-x^2)/(1-4x+4x^2+x^4))` -/
def P6161885630306991978.Spec : Prop :=
  ∀ n, P6161885630306991978.a n = A138803 (n + 1)

end A138803

/-! ## A138803.P10664654165890850169

`4*a(n-1)-4*a(n-2)-a(n-4)` with `a(0)=0, a(1)=1, a(2)=3, a(3)=8`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A138803

/-- `4*a(n-1)-4*a(n-2)-a(n-4)` -/
def P10664654165890850169.Spec : Prop :=
  ∀ n, P10664654165890850169.a n = A138803 (n + 1)

theorem P10664654165890850169.correct : P10664654165890850169.Spec := by
  intro n
  simp only [A138803, Nat.add_sub_cancel]

end A138803

/-! ## A138803.P17270384039458257869

`A138766(n+2)-Δ[A138766(n+2)]`
-/

namespace A138803.P17270384039458257869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138766 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138766 (n + 2) - (f1 (n + 1) - f1 n)

end

end A138803.P17270384039458257869

namespace A138803

/-- `A138766(n+2)-Δ[A138766(n+2)]` -/
def P17270384039458257869.Spec : Prop :=
  ∀ n, P17270384039458257869.a n = A138803 (n + 1)

end A138803

/-! ## A138803.P8265431958061866577

`A084634(n)-A333381(A084636(n))`
-/

namespace A138803.P8265431958061866577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084634 n - A333381 (A084636 n).toNat

end

end A138803.P8265431958061866577

namespace A138803

/-- `A084634(n)-A333381(A084636(n))` -/
def P8265431958061866577.Spec : Prop :=
  ∀ n, P8265431958061866577.a n = A138803 (n + 1)

end A138803

/-!
# A138804: Let X denote the 2 X 2 matrix [0,1; 1,exp(1)], let Y = X^n; a(n) = floor(Y[1,1]).

The programs for A138804, there is no canonical definition to state claims against.
-/

/-! ## A138804.P149081088361525238

`A002266(A105262(n+1))`
-/

namespace A138804.P149081088361525238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002266 (A105262 (n + 1)).toNat

end

end A138804.P149081088361525238

/-! ## A138804.P9865809591534362892

`A002266(record[A105262(∑{digits}[n, #])])`
-/

namespace A138804.P9865809591534362892
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105262 ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x).sum

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002266 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A138804.P9865809591534362892

/-! ## A138804.P4485452227371475670

`A126257(A059398(n))`
-/

namespace A138804.P4485452227371475670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126257 (A059398 n).toNat

end

end A138804.P4485452227371475670

/-!
# A138805: Theta series of quadratic form x^2 + x*y + 7*y^2.

The programs for A138805, there is no canonical definition to state claims against.
-/

/-! ## A138805.P2649653912857662801

`(2-A000007(n))*A138806(A028310(n))`
-/

namespace A138805.P2649653912857662801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A000007 n) * A138806 (A028310 n).toNat

end

end A138805.P2649653912857662801

/-! ## A138805.P17776158170555381302

`gcd(2, A002445(n))*A138806(A028310(n))`
-/

namespace A138805.P17776158170555381302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 2 (A002445 n) : ℤ) * A138806 (A028310 n).toNat

end

end A138805.P17776158170555381302

/-! ## A138805.P4896774667585694445

`A020639(A008574(n))*A138806(A008574(n))`
-/

namespace A138805.P4896774667585694445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A008574 n).toNat * A138806 (A008574 n).toNat

end

end A138805.P4896774667585694445

/-! ## A138805.P6958178144015262675

`A014963(A001316(n))*A138806(A028310(n))`
-/

namespace A138805.P6958178144015262675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A001316 n).toNat * A138806 (A028310 n).toNat

end

end A138805.P6958178144015262675

/-! ## A138805.P14251124973800731994

`A020639(A008458(n))*A138806(A028310(n))`
-/

namespace A138805.P14251124973800731994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A008458 n).toNat * A138806 (A028310 n).toNat

end

end A138805.P14251124973800731994

/-! ## A138805.P652647043250977335

`A020639(A008579(n))*A138806(A028310(n))`
-/

namespace A138805.P652647043250977335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A008579 n).toNat * A138806 (A028310 n).toNat

end

end A138805.P652647043250977335

/-! ## A138805.P5592151572468069019

`A020639(A022144(n))*A138806(A028310(n))`
-/

namespace A138805.P5592151572468069019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A022144 n).toNat * A138806 (A028310 n).toNat

end

end A138805.P5592151572468069019

/-! ## A138805.P6460420977111670249

`A020639(A103517(n))*A138806(A028310(n))`
-/

namespace A138805.P6460420977111670249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A103517 n).toNat * A138806 (A028310 n).toNat

end

end A138805.P6460420977111670249

/-! ## A138805.P17699903915156289115

`A020639(A022144(n))*A138806(A022144(2*n))`
-/

namespace A138805.P17699903915156289115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A022144 n).toNat * A138806 (A022144 (2 * n)).toNat

end

end A138805.P17699903915156289115

/-! ## A138805.P12127997188361864633

`A020639(A005893(n))*A138806(A028310(n))`
-/

namespace A138805.P12127997188361864633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A005893 n).toNat * A138806 (A028310 n).toNat

end

end A138805.P12127997188361864633

/-! ## A138805.P8339435514184207148

`A020639(A008204(n))*A138806(A028310(n))`
-/

namespace A138805.P8339435514184207148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A008204 n).toNat * A138806 (A028310 n).toNat

end

end A138805.P8339435514184207148

/-! ## A138805.P6316461730325979285

`A020639(A005899(n))*A138806(A028310(n))`
-/

namespace A138805.P6316461730325979285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A005899 n).toNat * A138806 (A028310 n).toNat

end

end A138805.P6316461730325979285

/-! ## A138805.P14049259053245232433

`A020639(A005897(n))*A138806(A028310(n))`
-/

namespace A138805.P14049259053245232433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A005897 n).toNat * A138806 (A028310 n).toNat

end

end A138805.P14049259053245232433

/-! ## A138805.P4381949767797878775

`A020639(A005901(n))*A138806(A028310(n))`
-/

namespace A138805.P4381949767797878775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A005901 n).toNat * A138806 (A028310 n).toNat

end

end A138805.P4381949767797878775

/-!
# A138806: Expansion of (theta_3(q) * theta_3(q^27) + theta_2(q) * theta_2(q^27) - 1) / 2 in powers of q.

The programs for A138806, there is no canonical definition to state claims against.
-/

/-! ## A138806.P1326100863121607151

`A138805(n+1)/2`
-/

namespace A138806.P1326100863121607151
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138805 (n + 1) : ℚ) / 2

end

end A138806.P1326100863121607151

/-! ## A138806.P14976183815839034707

`A001281(A138805(n+1))`
-/

namespace A138806.P14976183815839034707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A138805 (n + 1)).toNat

end

end A138806.P14976183815839034707

/-! ## A138806.P9405317769521537070

`A004524(A138805(n+1)+1)`
-/

namespace A138806.P9405317769521537070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A138805 (n + 1) + 1).toNat

end

end A138806.P9405317769521537070

/-! ## A138806.P62613532594188245

`A028242(A138805(n+1)+1)`
-/

namespace A138806.P62613532594188245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (A138805 (n + 1) + 1).toNat

end

end A138806.P62613532594188245

/-! ## A138806.P13299090876159443596

`A057979(A138805(n+1)+1)`
-/

namespace A138806.P13299090876159443596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (A138805 (n + 1) + 1).toNat

end

end A138806.P13299090876159443596

/-! ## A138806.P7389338062917767764

`A001057(A138805(n+1)+1)-1`
-/

namespace A138806.P7389338062917767764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A138805 (n + 1) + 1).toNat - 1

end

end A138806.P7389338062917767764

/-! ## A138806.P4817330056797897833

`A138805(A001057(2*n+1))+A001057(A138805(n+1))`
-/

namespace A138806.P4817330056797897833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138805 (A001057 (2 * n + 1)).toNat + A001057 (A138805 (n + 1)).toNat

end

end A138806.P4817330056797897833

/-! ## A138806.P15312914517772485813

`A004525(A138805(4*(n+1)))`
-/

namespace A138806.P15312914517772485813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A138805 (4 * (n + 1))).toNat

end

end A138806.P15312914517772485813

/-! ## A138806.P12353669992435342156

`A001221(A138805(n+1)!)`
-/

namespace A138806.P12353669992435342156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Nat.factorial (A138805 (n + 1)).toNat)

end

end A138806.P12353669992435342156

/-!
# A138807: Let M = 2 X 2 matrix [0, 1; 1, Pi]; then a(n) = 0 if n=0, 1 if n=1; and otherwise a(n) = floor(M^(n-1)[2,2]).

The programs for A138807, there is no canonical definition to state claims against.
-/

/-! ## A138807.P14594192756539207736

`A004525(A303882(n+1)-A102726(n))`
-/

namespace A138807.P14594192756539207736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A303882 (n + 1) - A102726 n).toNat

end

end A138807.P14594192756539207736

/-! ## A138807.P5555397418894002333

`A271484(A164298(n))`
-/

namespace A138807.P5555397418894002333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271484 (A164298 n).toNat

end

end A138807.P5555397418894002333

/-! ## A138807.P9068749006686898206

`A063277(A180168(n+1))`
-/

namespace A138807.P9068749006686898206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063277 (A180168 (n + 1)).toNat

end

end A138807.P9068749006686898206

/-!
# A138808: Number of integer pairs (x,y), x > 0, y > 0, such that x <= p, y <= q for any factorization n = p*q.

The programs for A138808, there is no canonical definition to state claims against.
-/

/-! ## A138808.P540585938832186005

`(n+1)²-A398812(n+1)`
-/

namespace A138808.P540585938832186005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - A398812 (n + 1)

end

end A138808.P540585938832186005

/-!
# A138810: Expansion of (8 / 7) * (1 - eta(q)^7 / eta(q^7)) - 7 * (eta(q) * eta(q^7))^3 in powers of q.

The programs for A138810, the canonical program `A138810.P12069746356700581126` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A138810 has offset 1).

The definition of A138810 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A138810.P18333628999568590776

`-(A138809(n+1)/7)`
-/

namespace A138810.P18333628999568590776
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  -((A138809 (n + 1) : ℚ) / 7)

end

end A138810.P18333628999568590776

namespace A138810

/-- `-(A138809(n+1)/7)` -/
def P18333628999568590776.Spec : Prop :=
  ∀ n, P18333628999568590776.a n = (A138810 (n + 1) : ℚ)

end A138810

/-! ## A138810.P7130535930445281291

`a(n-1)*ratio[A138809(n)]` with `a(0)=1`
-/

namespace A138810.P7130535930445281291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138809 n

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * ((f1 (n + 1) : ℚ) / (f1 n : ℚ))

end

end A138810.P7130535930445281291

namespace A138810

/-- `a(n-1)*ratio[A138809(n)]` -/
def P7130535930445281291.Spec : Prop :=
  ∀ n, P7130535930445281291.a n = (A138810 (n + 1) : ℚ)

end A138810

/-! ## A138810.P12069746356700581126

`∑{d}[n+1, #²*A175629(#)]`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A138810

/-- `∑{d}[n+1, #²*A175629(#)]` -/
def P12069746356700581126.Spec : Prop :=
  ∀ n, P12069746356700581126.a n = A138810 (n + 1)

theorem P12069746356700581126.correct : P12069746356700581126.Spec := by
  intro n
  simp only [A138810, Nat.add_sub_cancel]

end A138810

/-! ## A138810.P14740153596716335084

`A138809(n+1)/A138809(A124625(2*n))`
-/

namespace A138810.P14740153596716335084
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138809 (n + 1) : ℚ) / (A138809 (A124625 (2 * n)).toNat : ℚ)

end

end A138810.P14740153596716335084

namespace A138810

/-- `A138809(n+1)/A138809(A124625(2*n))` -/
def P14740153596716335084.Spec : Prop :=
  ∀ n, P14740153596716335084.a n = (A138810 (n + 1) : ℚ)

end A138810

/-! ## A138810.P15129468141344079741

`A138809(n+1)/A138809(A006519(2*n+1))`
-/

namespace A138810.P15129468141344079741
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138809 (n + 1) : ℚ) / (A138809 (A006519 (2 * n + 1)).toNat : ℚ)

end

end A138810.P15129468141344079741

namespace A138810

/-- `A138809(n+1)/A138809(A006519(2*n+1))` -/
def P15129468141344079741.Spec : Prop :=
  ∀ n, P15129468141344079741.a n = (A138810 (n + 1) : ℚ)

end A138810

/-!
# A138811: Theta series of quadratic form x^2 + x*y + 11*y^2.

The programs for A138811, there is no canonical definition to state claims against.
-/

/-! ## A138811.P18391915488103361263

`A033755(4*n)`
-/

namespace A138811.P18391915488103361263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033755 (4 * n)

end

end A138811.P18391915488103361263

/-! ## A138811.P18243295067991171981

`A033755(A008574(n))-A000007(n)`
-/

namespace A138811.P18243295067991171981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033755 (A008574 n).toNat - A000007 n

end

end A138811.P18243295067991171981

/-! ## A138811.P10348915414380429707

`A033755(A008574(n))/A132126(n+6)`
-/

namespace A138811.P10348915414380429707
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033755 (A008574 n).toNat : ℚ) / (A132126 (n + 6) : ℚ)

end

end A138811.P10348915414380429707

/-! ## A138811.P694250725572813591

`A033755(A008574(n)+A000007(n))+A000007(n)`
-/

namespace A138811.P694250725572813591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033755 (A008574 n + A000007 n).toNat + A000007 n

end

end A138811.P694250725572813591

/-!
# A138812: a(0)=1; for n > 0, a(n) = Sum_{k=0..n-1} floor(n/a(k)).

The programs for A138812, there is no canonical definition to state claims against.
-/

/-! ## A138812.P11969479589992132

`C(2, n+2)+3*n-A064097(A279083(n+1))`
-/

namespace A138812.P11969479589992132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose 2 (n + 2) : ℤ) + ((3 * n : ℤ) - A064097 (A279083 (n + 1)).toNat)

end

end A138812.P11969479589992132

/-! ## A138812.P756036852205154396

`A008486(n)-A064097(A279083(n+1))`
-/

namespace A138812.P756036852205154396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 n - A064097 (A279083 (n + 1)).toNat

end

end A138812.P756036852205154396

/-! ## A138812.P2385579580140789707

`A008574(n)-(A064097(A279083(n+1))+n)`
-/

namespace A138812.P2385579580140789707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n - (A064097 (A279083 (n + 1)).toNat + (n : ℤ))

end

end A138812.P2385579580140789707

/-! ## A138812.P7999818882333727615

`record[A080512(n+1)]-A064097(A279083(n+1))`
-/

namespace A138812.P7999818882333727615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080512 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A064097 (A279083 (n + 1)).toNat

end

end A138812.P7999818882333727615

/-! ## A138812.P14240438473708894863

`A004273(n)+n+1-A064097(A279083(n+1))`
-/

namespace A138812.P14240438473708894863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n + ((n + 1 : ℤ) - A064097 (A279083 (n + 1)).toNat)

end

end A138812.P14240438473708894863

/-!
# A138813: a(0) = 1; thereafter, a(n) = Sum_{k=0..n-1} ceiling(n/a(k)).

The programs for A138813, there is no canonical definition to state claims against.
-/

/-! ## A138813.P7883408854336295179

`A000196(∑[A325761(A325761(n+1))])`
-/

namespace A138813.P7883408854336295179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325761 (A325761 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A138813.P7883408854336295179

/-! ## A138813.P11731936759213209937

`floor(log2(A291313(n+1)/A291296(n+2)+1))`
-/

namespace A138813.P11731936759213209937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.logb 2 ((A291313 (n + 1) : ℚ) / (A291296 (n + 2) : ℚ) + 1 : ℝ)⌋

end

end A138813.P11731936759213209937

/-! ## A138813.P16325178969195401144

`A340203(xor(A000122(n), A100484(n+1)))`
-/

namespace A138813.P16325178969195401144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340203 (Int.xor (A000122 n) (A100484 (n + 1))).toNat

end

end A138813.P16325178969195401144

/-! ## A138813.P5153903870986431405

`A188970(A107316(n+1))+A127035(3*n+2)`
-/

namespace A138813.P5153903870986431405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188970 (A107316 (n + 1)).toNat + A127035 (3 * n + 2)

end

end A138813.P5153903870986431405

/-!
# A138814: Divisors of 4064 (half the 4th perfect number).

The programs for A138814, there is no canonical definition to state claims against.
-/

/-! ## A138814.P6717277928777641867

`∩[ceil(2^(n-1/88)), Δ[ceil(2^(n-1/88))]]`
-/

namespace A138814.P6717277928777641867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 : ℝ) ^ ((n : ℚ) - (1 : ℚ) / 88 : ℝ)⌉

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 : ℝ) ^ ((n : ℚ) - (1 : ℚ) / 88 : ℝ)⌉

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A138814.P6717277928777641867

/-! ## A138814.P2228356585137915769

`A133024(comp[7*n])`
-/

namespace A138814.P2228356585137915769
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133024 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A138814.P2228356585137915769

/-! ## A138814.P11518763402440508313

`or(2^n, A140134(n))`
-/

namespace A138814.P11518763402440508313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (2 ^ n : ℤ) (A140134 n)

end

end A138814.P11518763402440508313

/-! ## A138814.P605593969125746289

`A000079(n+1)-2^(n%6)`
-/

namespace A138814.P605593969125746289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (n + 1) - (2 ^ (n % 6) : ℤ)

end

end A138814.P605593969125746289

/-! ## A138814.P6271151492534027610

`A065629(A140134(n))`
-/

namespace A138814.P6271151492534027610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065629 (A140134 n).toNat

end

end A138814.P6271151492534027610

/-!
# A138815: Divisors of 16775168 (half the 5th perfect number).

The programs for A138815, there is no canonical definition to state claims against.
-/

/-! ## A138815.P17791838960727382330

`2^(n+1)-2^(n%12)`
-/

namespace A138815.P17791838960727382330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℤ) - (2 ^ (n % 12) : ℤ)

end

end A138815.P17791838960727382330

/-! ## A138815.P14376552724241653329

`A133025(comp[A132755(n)])`
-/

namespace A138815.P14376552724241653329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132755 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133025 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A138815.P14376552724241653329

/-! ## A138815.P4359293044626256513

`A133025(A011760(n+1))`
-/

namespace A138815.P4359293044626256513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133025 (A011760 (n + 1)).toNat

end

end A138815.P4359293044626256513

/-! ## A138815.P17764150407546657337

`A133025(A113763(n+1))`
-/

namespace A138815.P17764150407546657337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133025 (A113763 (n + 1)).toNat

end

end A138815.P17764150407546657337

/-! ## A138815.P13989528979645183713

`A133025(A172270(n+1))`
-/

namespace A138815.P13989528979645183713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133025 (A172270 (n + 1)).toNat

end

end A138815.P13989528979645183713

/-!
# A138819: Concatenation of final digit of n-th even superperfect number A061652(n), final digit of n-th Mersenne prime A000668(n) and final digit of n-th perfect number A000396(n).

The programs for A138819, there is no canonical definition to state claims against.
-/

/-! ## A138819.P5006179701067234575

`A354049(A138817(n+1))`
-/

namespace A138819.P5006179701067234575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354049 (A138817 (n + 1)).toNat

end

end A138819.P5006179701067234575

/-!
# A138821: Concatenation of n-th Fibonacci number and n-th prime.

The programs for A138821, there is no canonical definition to state claims against.
-/

/-! ## A138821.P6259342407170157034

`A109372(n+2)+A003602(A233534(n+1))`
-/

namespace A138821.P6259342407170157034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109372 (n + 2) + A003602 (A233534 (n + 1)).toNat

end

end A138821.P6259342407170157034

/-!
# A138822: Concatenation of n-th prime and n-th Fibonacci number.

The programs for A138822, there is no canonical definition to state claims against.
-/

/-! ## A138822.P13311319624550881342

`A142342(n+1)+A000045(A292125(n+1))`
-/

namespace A138822.P13311319624550881342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142342 (n + 1) + A000045 (A292125 (n + 1)).toNat

end

end A138822.P13311319624550881342

/-! ## A138822.P9002728023202926363

`A000045(A004911(n+1)+1)+10*A000040(n+1)`
-/

namespace A138822.P9002728023202926363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A004911 (n + 1) + 1).toNat + 10 * A000040 (n + 1)

end

end A138822.P9002728023202926363

/-!
# A138823: Divisors of 248 (the 3rd perfect number divided by 2), written in base 2.

The programs for A138823, there is no canonical definition to state claims against.
-/

/-! ## A138823.P9912196056201452743

`A135653(∑[∏{e}[n, #]])`
-/

namespace A138823.P9912196056201452743
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135653 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A138823.P9912196056201452743

/-! ## A138823.P11634596950377332225

`A135653(comp[∑[n-4]])`
-/

namespace A138823.P11634596950377332225
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 4

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135653 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A138823.P11634596950377332225

/-! ## A138823.P137527130941304941

`record[Δ[A135653(n+1)/9]]`
-/

namespace A138823.P137527130941304941
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A135653 (n + 1) : ℚ) / 9

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A138823.P137527130941304941

/-! ## A138823.P14572143806953261239

`and(-1, A135653(record[lcm(55, n+1)/55]))`
-/

namespace A138823.P14572143806953261239
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 55 (n + 1) : ℚ) / 55

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A135653 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat)

end

end A138823.P14572143806953261239

/-!
# A138824: Divisors of 4064 (the 4th perfect number divided by 2), written in base 2.

The programs for A138824, there is no canonical definition to state claims against.
-/

/-! ## A138824.P8264408149035815283

`A135654(comp[7*n])`
-/

namespace A138824.P8264408149035815283
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135654 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A138824.P8264408149035815283

/-! ## A138824.P6424077130456575101

`record[Δ[A135654(n+1)/9]]`
-/

namespace A138824.P6424077130456575101
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A135654 (n + 1) : ℚ) / 9

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A138824.P6424077130456575101

/-! ## A138824.P3017506939220412356

`A007088(A138814(n+1))`
-/

namespace A138824.P3017506939220412356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A138814 (n + 1)).toNat

end

end A138824.P3017506939220412356

/-! ## A138824.P14139318409231572019

`A185544(2*A138814(n+1))`
-/

namespace A138824.P14139318409231572019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A138814 (n + 1)).toNat

end

end A138824.P14139318409231572019

/-! ## A138824.P12194874329546820461

`record[A135654(n+1)%A074580(n)]`
-/

namespace A138824.P12194874329546820461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A135654 (n + 1)) (A074580 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A138824.P12194874329546820461

/-!
# A138825: Divisors of 16775168 (the 5th perfect number divided by 2), written in base 2.

The programs for A138825, there is no canonical definition to state claims against.
-/

/-! ## A138825.P17950853988739171981

`record[Δ[A135655(n+1)/9]]`
-/

namespace A138825.P17950853988739171981
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A135655 (n + 1) : ℚ) / 9

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A138825.P17950853988739171981

/-! ## A138825.P10473681234466827495

`A135655(A011760(n+1))`
-/

namespace A138825.P10473681234466827495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135655 (A011760 (n + 1)).toNat

end

end A138825.P10473681234466827495

/-! ## A138825.P12372872141500604996

`A135655(A113763(n+1))`
-/

namespace A138825.P12372872141500604996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135655 (A113763 (n + 1)).toNat

end

end A138825.P12372872141500604996

/-! ## A138825.P4529179019359757642

`A135655(A023754(n+2))`
-/

namespace A138825.P4529179019359757642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135655 (A023754 (n + 2)).toNat

end

end A138825.P4529179019359757642

/-! ## A138825.P2808337345787539363

`A135655(A064459(12*n)+1)`
-/

namespace A138825.P2808337345787539363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135655 (A064459 (12 * n) + 1).toNat

end

end A138825.P2808337345787539363

/-!
# A138827: Sum of digits of n-th even superperfect number A061652(n).

The programs for A138827, there is no canonical definition to state claims against.
-/

/-! ## A138827.P14183621494391234445

`A001370(A090748(n+1))`
-/

namespace A138827.P14183621494391234445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001370 (A090748 (n + 1)).toNat

end

end A138827.P14183621494391234445

/-! ## A138827.P6424966729830561447

`A001370(A153798(n+1)+1)`
-/

namespace A138827.P6424966729830561447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001370 (A153798 (n + 1) + 1).toNat

end

end A138827.P6424966729830561447

/-! ## A138827.P7712261278279351230

`A001370(A000043(n+1)-1)`
-/

namespace A138827.P7712261278279351230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001370 (A000043 (n + 1) - 1).toNat

end

end A138827.P7712261278279351230

/-! ## A138827.P9368213012439146679

`A001370(A050475(n+1)-2)`
-/

namespace A138827.P9368213012439146679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001370 (A050475 (n + 1) - 2).toNat

end

end A138827.P9368213012439146679

/-! ## A138827.P2209238610503015197

`A001370(A134713(n+1)+n)`
-/

namespace A138827.P2209238610503015197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001370 (A134713 (n + 1) + (n : ℤ)).toNat

end

end A138827.P2209238610503015197

/-!
# A138828: Sum of digits of n-th even perfect number.

The programs for A138828, there is no canonical definition to state claims against.
-/

/-! ## A138828.P15876011042980918225

`∑{digits}[A000396(n+1), #]`
-/

namespace A138828.P15876011042980918225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000396 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A138828.P15876011042980918225

/-! ## A138828.P2205245603718799316

`A020725(∑{digits}[A135627(n+1), #])`
-/

namespace A138828.P2205245603718799316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135627 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A138828.P2205245603718799316

/-! ## A138828.P10020640228047289060

`∑{digits}[A135624(n+1), #]`
-/

namespace A138828.P10020640228047289060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135624 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A138828.P10020640228047289060

/-!
# A138829: Bisection of imperfect numbers A132999.

The programs for A138829, the canonical program `A138829.P4321679794052673938` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A138829 has offset 1).

The definition of A138829 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A138829.P4321679794052673938

`ogf((1+x+x^3-x^4+x^13-x^14)/(1-2x+x^2))`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A138829

/-- `ogf((1+x+x^3-x^4+x^13-x^14)/(1-2x+x^2))` -/
def P4321679794052673938.Spec : Prop :=
  ∀ n, P4321679794052673938.a n = A138829 (n + 1)

theorem P4321679794052673938.correct : P4321679794052673938.Spec := by
  intro n
  simp only [A138829, Nat.add_sub_cancel]

end A138829

/-!
# A138830: Bisection of imperfect numbers A132999.

The programs for A138830, the canonical program `A138830.P7169071661950621730` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A138830 has offset 1).

The definition of A138830 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A138830.P7169071661950621730

`A132999(2*(n+1))`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A138830

/-- `A132999(2*(n+1))` -/
def P7169071661950621730.Spec : Prop :=
  ∀ n, P7169071661950621730.a n = A138830 (n + 1)

theorem P7169071661950621730.correct : P7169071661950621730.Spec := by
  intro n
  simp only [A138830, Nat.add_sub_cancel]

end A138830

/-! ## A138830.P2151711905488789209

`record[A132999(xor(1, n)+1)]`
-/

namespace A138830.P2151711905488789209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132999 (Nat.xor 1 n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A138830.P2151711905488789209

namespace A138830

/-- `record[A132999(xor(1, n)+1)]` -/
def P2151711905488789209.Spec : Prop :=
  ∀ n, P2151711905488789209.a n = A138830 (n + 1)

end A138830

/-! ## A138830.P9927074966540331426

`record[A132999(A230424(n)+1)]`
-/

namespace A138830.P9927074966540331426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132999 (A230424 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A138830.P9927074966540331426

namespace A138830

/-- `record[A132999(A230424(n)+1)]` -/
def P9927074966540331426.Spec : Prop :=
  ∀ n, P9927074966540331426.a n = A138830 (n + 1)

end A138830

/-! ## A138830.P6663286654081115209

`record[A132999(A029578(n+3))]`
-/

namespace A138830.P6663286654081115209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132999 (A029578 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A138830.P6663286654081115209

namespace A138830

/-- `record[A132999(A029578(n+3))]` -/
def P6663286654081115209.Spec : Prop :=
  ∀ n, P6663286654081115209.a n = A138830 (n + 1)

end A138830

/-! ## A138830.P12228710169065679397

`record[A132999(A028234(n+1)+1)]`
-/

namespace A138830.P12228710169065679397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132999 (A028234 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A138830.P12228710169065679397

namespace A138830

/-- `record[A132999(A028234(n+1)+1)]` -/
def P12228710169065679397.Spec : Prop :=
  ∀ n, P12228710169065679397.a n = A138830 (n + 1)

end A138830

/-! ## A138830.P13472068088428979245

`A010054(A157346(n))+a(n-1)+2` with `a(0)=2`
-/

namespace A138830.P13472068088428979245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A010054 (A157346 n).toNat + (a (n - 1) + 2)

end

end A138830.P13472068088428979245

namespace A138830

/-- `A010054(A157346(n))+a(n-1)+2` -/
def P13472068088428979245.Spec : Prop :=
  ∀ n, P13472068088428979245.a n = A138830 (n + 1)

end A138830

/-! ## A138830.P9633892233869110862

`A055642(A135110(n+1))+2*n`
-/

namespace A138830.P9633892233869110862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A135110 (n + 1)).toNat + (2 * n : ℤ)

end

end A138830.P9633892233869110862

namespace A138830

/-- `A055642(A135110(n+1))+2*n` -/
def P9633892233869110862.Spec : Prop :=
  ∀ n, P9633892233869110862.a n = A138830 (n + 1)

end A138830

/-! ## A138830.P16837763599683126730

`A055642(A247272(n+1))+2*n`
-/

namespace A138830.P16837763599683126730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A247272 (n + 1)).toNat + (2 * n : ℤ)

end

end A138830.P16837763599683126730

namespace A138830

/-- `A055642(A247272(n+1))+2*n` -/
def P16837763599683126730.Spec : Prop :=
  ∀ n, P16837763599683126730.a n = A138830 (n + 1)

end A138830

/-! ## A138830.P3404176397198171740

`floor(log(A280230(2*(n+1))))`
-/

namespace A138830.P3404176397198171740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.log (A280230 (2 * (n + 1)) : ℝ)⌋

end

end A138830.P3404176397198171740

namespace A138830

/-- `floor(log(A280230(2*(n+1))))` -/
def P3404176397198171740.Spec : Prop :=
  ∀ n, P3404176397198171740.a n = A138830 (n + 1)

end A138830

/-! ## A138830.P554262720547627967

`A055642(A187205(3*n+1))+n+n`
-/

namespace A138830.P554262720547627967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A187205 (3 * n + 1)).toNat + (n : ℤ) + (n : ℤ)

end

end A138830.P554262720547627967

namespace A138830

/-- `A055642(A187205(3*n+1))+n+n` -/
def P554262720547627967.Spec : Prop :=
  ∀ n, P554262720547627967.a n = A138830 (n + 1)

end A138830

/-! ## A138830.P17471633151965653061

`A004216(A107132(comp[n^3]))+2*n+1`
-/

namespace A138830.P17471633151965653061
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004216 (A107132 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)).toNat + (2 * n + 1 : ℤ)

end

end A138830.P17471633151965653061

namespace A138830

/-- `A004216(A107132(comp[n^3]))+2*n+1` -/
def P17471633151965653061.Spec : Prop :=
  ∀ n, P17471633151965653061.a n = A138830 (n + 1)

end A138830

/-!
# A138831: 

The programs for A138831, there is no canonical definition to state claims against.
-/

/-! ## A138831.P6286107226442587462

`A138148(A090748(n+1))`
-/

namespace A138831.P6286107226442587462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138148 (A090748 (n + 1)).toNat

end

end A138831.P6286107226442587462

/-! ## A138831.P6683299949785772464

`A000042(A133033(n+1))-A135651(n+1)`
-/

namespace A138831.P6683299949785772464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000042 (A133033 (n + 1)).toNat - A135651 (n + 1)

end

end A138831.P6683299949785772464

/-! ## A138831.P8572052109614472937

`A000042(A061645(n+1)-1)-A135651(n+1)`
-/

namespace A138831.P8572052109614472937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000042 (A061645 (n + 1) - 1).toNat - A135651 (n + 1)

end

end A138831.P8572052109614472937

/-!
# A138836: 

The programs for A138836, there is no canonical definition to state claims against.
-/

/-! ## A138836.P60669668293094707

`lt[A257000(n), A090077(n)]`
-/

namespace A138836.P60669668293094707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257000 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090077 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A138836.P60669668293094707

/-!
# A138837: Non-Mersenne primes: A000040 \ A000668.

The programs for A138837, the canonical program `A138837.P13204643735566073635` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A138837 has offset 1).

The definition of A138837 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3507 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A138837.P13204643735566073635

`p?[A379218(p?[2*n+1])]`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A138837

/-- `p?[A379218(p?[2*n+1])]` -/
def P13204643735566073635.Spec : Prop :=
  ∀ n, P13204643735566073635.a n = A138837 (n + 1)

theorem P13204643735566073635.correct : P13204643735566073635.Spec := by
  intro n
  simp only [A138837, Nat.add_sub_cancel]

end A138837

/-! ## A138837.P10198619507752686176

`p?[A161790(n+1)]`
-/

namespace A138837.P10198619507752686176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161790 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A138837.P10198619507752686176

namespace A138837

/-- `p?[A161790(n+1)]` -/
def P10198619507752686176.Spec : Prop :=
  ∀ n, P10198619507752686176.a n = A138837 (n + 1)

end A138837

/-! ## A138837.P16710842985711114153

`filter[A161790(n+1), A010051(#)]`
-/

namespace A138837.P16710842985711114153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161790 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A138837.P16710842985711114153

namespace A138837

/-- `filter[A161790(n+1), A010051(#)]` -/
def P16710842985711114153.Spec : Prop :=
  ∀ n, P16710842985711114153.a n = A138837 (n + 1)

end A138837

/-! ## A138837.P6527545396019886475

`filter[A161790(n+1), A323153(#)]`
-/

namespace A138837.P6527545396019886475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161790 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A138837.P6527545396019886475

namespace A138837

/-- `filter[A161790(n+1), A323153(#)]` -/
def P6527545396019886475.Spec : Prop :=
  ∀ n, P6527545396019886475.a n = A138837 (n + 1)

end A138837

/-! ## A138837.P10200069702951805487

`filter[A161790(n+2), A323152(#)]`
-/

namespace A138837.P10200069702951805487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161790 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323152 (f1 j).toNat = 1) n)

end

end A138837.P10200069702951805487

namespace A138837

/-- `filter[A161790(n+2), A323152(#)]` -/
def P10200069702951805487.Spec : Prop :=
  ∀ n, P10200069702951805487.a n = A138837 (n + 1)

end A138837

/-! ## A138837.P17924275539470874721

`record[p?[A379219(n+1)]]`
-/

namespace A138837.P17924275539470874721
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379219 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A138837.P17924275539470874721

namespace A138837

/-- `record[p?[A379219(n+1)]]` -/
def P17924275539470874721.Spec : Prop :=
  ∀ n, P17924275539470874721.a n = A138837 (n + 1)

end A138837

/-! ## A138837.P11586702878448935811

`eq[A036987(n), A082023(n)]`
-/

namespace A138837.P11586702878448935811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082023 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A138837.P11586702878448935811

namespace A138837

/-- `eq[A036987(n), A082023(n)]` -/
def P11586702878448935811.Spec : Prop :=
  ∀ n, (P11586702878448935811.a n : ℤ) = A138837 (n + 1)

end A138837

/-! ## A138837.P13970033165618940626

`p?[A143263(n+1)]`
-/

namespace A138837.P13970033165618940626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143263 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A138837.P13970033165618940626

namespace A138837

/-- `p?[A143263(n+1)]` -/
def P13970033165618940626.Spec : Prop :=
  ∀ n, P13970033165618940626.a n = A138837 (n + 1)

end A138837

/-! ## A138837.P434260596927610159

`filter[A143263(n+1), A010051(#)]`
-/

namespace A138837.P434260596927610159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143263 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A138837.P434260596927610159

namespace A138837

/-- `filter[A143263(n+1), A010051(#)]` -/
def P434260596927610159.Spec : Prop :=
  ∀ n, P434260596927610159.a n = A138837 (n + 1)

end A138837

/-! ## A138837.P7851026827544502267

`∩[A000040(n+1), A143263(n+1)]`
-/

namespace A138837.P7851026827544502267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143263 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A138837.P7851026827544502267

namespace A138837

/-- `∩[A000040(n+1), A143263(n+1)]` -/
def P7851026827544502267.Spec : Prop :=
  ∀ n, (P7851026827544502267.a n : ℤ) = A138837 (n + 1)

end A138837

/-! ## A138837.P14354805360118675627

`p?[comp[∑{d}[2*n, #]]]`
-/

namespace A138837.P14354805360118675627
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f3 n), d

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A138837.P14354805360118675627

namespace A138837

/-- `p?[comp[∑{d}[2*n, #]]]` -/
def P14354805360118675627.Spec : Prop :=
  ∀ n, (P14354805360118675627.a n : ℤ) = A138837 (n + 1)

end A138837

/-! ## A138837.P13768263556125307617

`p?[A175431(n+1)]`
-/

namespace A138837.P13768263556125307617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175431 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A138837.P13768263556125307617

namespace A138837

/-- `p?[A175431(n+1)]` -/
def P13768263556125307617.Spec : Prop :=
  ∀ n, P13768263556125307617.a n = A138837 (n + 1)

end A138837

/-! ## A138837.P10311823140222324702

`filter[A175431(n+1), A010051(#)]`
-/

namespace A138837.P10311823140222324702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175431 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A138837.P10311823140222324702

namespace A138837

/-- `filter[A175431(n+1), A010051(#)]` -/
def P10311823140222324702.Spec : Prop :=
  ∀ n, P10311823140222324702.a n = A138837 (n + 1)

end A138837

/-! ## A138837.P12880415851801559196

`p?[comp[∑[2^n]]]`
-/

namespace A138837.P12880415851801559196
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A138837.P12880415851801559196

namespace A138837

/-- `p?[comp[∑[2^n]]]` -/
def P12880415851801559196.Spec : Prop :=
  ∀ n, (P12880415851801559196.a n : ℤ) = A138837 (n + 1)

end A138837

/-! ## A138837.P14287182670847347947

`filter[A062289(n+1), A010051(#)]`
-/

namespace A138837.P14287182670847347947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062289 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A138837.P14287182670847347947

namespace A138837

/-- `filter[A062289(n+1), A010051(#)]` -/
def P14287182670847347947.Spec : Prop :=
  ∀ n, P14287182670847347947.a n = A138837 (n + 1)

end A138837

/-! ## A138837.P8122996497532499088

`∩[A000040(n+1), A062289(n+1)]`
-/

namespace A138837.P8122996497532499088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062289 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A138837.P8122996497532499088

namespace A138837

/-- `∩[A000040(n+1), A062289(n+1)]` -/
def P8122996497532499088.Spec : Prop :=
  ∀ n, (P8122996497532499088.a n : ℤ) = A138837 (n + 1)

end A138837

/-! ## A138837.P14231071160173654202

`∩[A008578(n+1), A062289(n+1)]`
-/

namespace A138837.P14231071160173654202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062289 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A138837.P14231071160173654202

namespace A138837

/-- `∩[A008578(n+1), A062289(n+1)]` -/
def P14231071160173654202.Spec : Prop :=
  ∀ n, (P14231071160173654202.a n : ℤ) = A138837 (n + 1)

end A138837

/-! ## A138837.P4118125674782032494

`∩[A045344(n+1), A062289(n+1)]`
-/

namespace A138837.P4118125674782032494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062289 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A138837.P4118125674782032494

namespace A138837

/-- `∩[A045344(n+1), A062289(n+1)]` -/
def P4118125674782032494.Spec : Prop :=
  ∀ n, (P4118125674782032494.a n : ℤ) = A138837 (n + 1)

end A138837

/-! ## A138837.P5793713343792462834

`∩[A062289(n+1), A158611(n+1)]`
-/

namespace A138837.P5793713343792462834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062289 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A138837.P5793713343792462834

namespace A138837

/-- `∩[A062289(n+1), A158611(n+1)]` -/
def P5793713343792462834.Spec : Prop :=
  ∀ n, (P5793713343792462834.a n : ℤ) = A138837 (n + 1)

end A138837

/-! ## A138837.P5493634017340648656

`record[p?[A161399(n+1)]]`
-/

namespace A138837.P5493634017340648656
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161399 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A138837.P5493634017340648656

namespace A138837

/-- `record[p?[A161399(n+1)]]` -/
def P5493634017340648656.Spec : Prop :=
  ∀ n, P5493634017340648656.a n = A138837 (n + 1)

end A138837

/-!
# A138838: Concatenation of initial and final digits of n-th even superperfect number A061652(n), divided by 2.

The programs for A138838, there is no canonical definition to state claims against.
-/

/-! ## A138838.P1167157194887101210

`A138842(n+1)/2`
-/

namespace A138838.P1167157194887101210
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138842 (n + 1) : ℚ) / 2

end

end A138838.P1167157194887101210

/-! ## A138838.P7086274061009570728

`ceil(A138842(ceil(or(1, 2*n)/2))/2)`
-/

namespace A138838.P7086274061009570728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A138842 ⌈(Nat.lor 1 (2 * n) : ℚ) / 2⌉.toNat : ℚ) / 2⌉

end

end A138838.P7086274061009570728

/-! ## A138838.P11345956825050277097

`A001281(A138842(n+1))`
-/

namespace A138838.P11345956825050277097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A138842 (n + 1)).toNat

end

end A138838.P11345956825050277097

/-! ## A138838.P5045530574301622919

`A057554(A138842(n+1)²)`
-/

namespace A138838.P5045530574301622919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057554 (A138842 (n + 1) ^ 2).toNat

end

end A138838.P5045530574301622919

/-! ## A138838.P13489874695336975581

`A274923(A138842(n+1)²)`
-/

namespace A138838.P13489874695336975581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274923 (A138842 (n + 1) ^ 2).toNat

end

end A138838.P13489874695336975581

/-!
# A138839: Concatenation of initial and final digits of n-th perfect number, divided by 2.

The programs for A138839, there is no canonical definition to state claims against.
-/

/-! ## A138839.P4540512141935022182

`A138843(n+1)/2`
-/

namespace A138839.P4540512141935022182
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138843 (n + 1) : ℚ) / 2

end

end A138839.P4540512141935022182

/-! ## A138839.P6972938588921951325

`A001281(A138843(n+1))`
-/

namespace A138839.P6972938588921951325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A138843 (n + 1)).toNat

end

end A138839.P6972938588921951325

/-! ## A138839.P11607667258573605600

`A319571(A138843(n+1)²)`
-/

namespace A138839.P11607667258573605600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319571 (A138843 (n + 1) ^ 2).toNat

end

end A138839.P11607667258573605600

/-! ## A138839.P1572369869639708921

`A337101(A138843(n+1)²)`
-/

namespace A138839.P1572369869639708921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337101 (A138843 (n + 1) ^ 2).toNat

end

end A138839.P1572369869639708921

/-! ## A138839.P395731390830238676

`A004524(A138843(n+1)+1)`
-/

namespace A138839.P395731390830238676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A138843 (n + 1) + 1).toNat

end

end A138839.P395731390830238676

/-!
# A138840: Concatenation of initial and final digits of n-th prime.

The programs for A138840, the canonical program `A138840.P8735630634193650490` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A138840 has offset 1).

The definition of A138840 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A138840.P4320782210417852334

`A073729(p?[comp[n²]])`
-/

namespace A138840.P4320782210417852334
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073729 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A138840.P4320782210417852334

namespace A138840

/-- `A073729(p?[comp[n²]])` -/
def P4320782210417852334.Spec : Prop :=
  ∀ n, P4320782210417852334.a n = A138840 (n + 1)

end A138840

/-! ## A138840.P1204036931501465222

`A073729(Δ[A007504(n)])`
-/

namespace A138840.P1204036931501465222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073729 (f1 (n + 1) - f1 n).toNat

end

end A138840.P1204036931501465222

namespace A138840

/-- `A073729(Δ[A007504(n)])` -/
def P1204036931501465222.Spec : Prop :=
  ∀ n, P1204036931501465222.a n = A138840 (n + 1)

end A138840

/-! ## A138840.P8735630634193650490

`A073729(A000040(n+1))`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A138840

/-- `A073729(A000040(n+1))` -/
def P8735630634193650490.Spec : Prop :=
  ∀ n, P8735630634193650490.a n = A138840 (n + 1)

theorem P8735630634193650490.correct : P8735630634193650490.Spec := by
  intro n
  simp only [A138840, Nat.add_sub_cancel]

end A138840

/-! ## A138840.P7141752659168232936

`A073729(A137589(n+1))`
-/

namespace A138840.P7141752659168232936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073729 (A137589 (n + 1)).toNat

end

end A138840.P7141752659168232936

namespace A138840

/-- `A073729(A137589(n+1))` -/
def P7141752659168232936.Spec : Prop :=
  ∀ n, P7141752659168232936.a n = A138840 (n + 1)

end A138840

/-! ## A138840.P14016850091875034751

`A073729(A008578(n+2))`
-/

namespace A138840.P14016850091875034751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073729 (A008578 (n + 2)).toNat

end

end A138840.P14016850091875034751

namespace A138840

/-- `A073729(A008578(n+2))` -/
def P14016850091875034751.Spec : Prop :=
  ∀ n, P14016850091875034751.a n = A138840 (n + 1)

end A138840

/-! ## A138840.P1152797726319387510

`A073729(A182986(n+2))`
-/

namespace A138840.P1152797726319387510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073729 (A182986 (n + 2)).toNat

end

end A138840.P1152797726319387510

namespace A138840

/-- `A073729(A182986(n+2))` -/
def P1152797726319387510.Spec : Prop :=
  ∀ n, P1152797726319387510.a n = A138840 (n + 1)

end A138840

/-! ## A138840.P782109419555361742

`A073729(record[A073751(n+1)])`
-/

namespace A138840.P782109419555361742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073751 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073729 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A138840.P782109419555361742

namespace A138840

/-- `A073729(record[A073751(n+1)])` -/
def P782109419555361742.Spec : Prop :=
  ∀ n, P782109419555361742.a n = A138840 (n + 1)

end A138840

/-! ## A138840.P5721831304660002552

`A073729(record[A006530(n+2)])`
-/

namespace A138840.P5721831304660002552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073729 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A138840.P5721831304660002552

namespace A138840

/-- `A073729(record[A006530(n+2)])` -/
def P5721831304660002552.Spec : Prop :=
  ∀ n, P5721831304660002552.a n = A138840 (n + 1)

end A138840

/-! ## A138840.P7263216072434103108

`A073729(record[A014963(n+2)])`
-/

namespace A138840.P7263216072434103108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073729 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A138840.P7263216072434103108

namespace A138840

/-- `A073729(record[A014963(n+2)])` -/
def P7263216072434103108.Spec : Prop :=
  ∀ n, P7263216072434103108.a n = A138840 (n + 1)

end A138840

/-! ## A138840.P14251255516060749443

`A073729(record[A020639(n+2)])`
-/

namespace A138840.P14251255516060749443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073729 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A138840.P14251255516060749443

namespace A138840

/-- `A073729(record[A020639(n+2)])` -/
def P14251255516060749443.Spec : Prop :=
  ∀ n, P14251255516060749443.a n = A138840 (n + 1)

end A138840

/-! ## A138840.P18249651113919877323

`A073729(A006093(n+1)+1)`
-/

namespace A138840.P18249651113919877323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073729 (A006093 (n + 1) + 1).toNat

end

end A138840.P18249651113919877323

namespace A138840

/-- `A073729(A006093(n+1)+1)` -/
def P18249651113919877323.Spec : Prop :=
  ∀ n, P18249651113919877323.a n = A138840 (n + 1)

theorem P18249651113919877323.correct : P18249651113919877323.Spec := by
  intro n
  simp only [A138840, Nat.add_sub_cancel, A138840.P18249651113919877323.a, A138840.P8735630634193650490.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A006093, A006093.P2906174024863549003.a, A073729, A073729.P3471242560532339437.a, A000030, A000030.P4990867543733972260.a, A010879, A010879.P10561743211919002802.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A138840

/-! ## A138840.P14179647157043327696

`A073729(record[p?[A073757(n+1)]])`
-/

namespace A138840.P14179647157043327696
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073757 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073729 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A138840.P14179647157043327696

namespace A138840

/-- `A073729(record[p?[A073757(n+1)]])` -/
def P14179647157043327696.Spec : Prop :=
  ∀ n, P14179647157043327696.a n = A138840 (n + 1)

end A138840

/-! ## A138840.P6479452538045195360

`A073729(A007504(n+1)-A007504(n))`
-/

namespace A138840.P6479452538045195360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073729 (A007504 (n + 1) - A007504 n).toNat

end

end A138840.P6479452538045195360

namespace A138840

/-- `A073729(A007504(n+1)-A007504(n))` -/
def P6479452538045195360.Spec : Prop :=
  ∀ n, P6479452538045195360.a n = A138840 (n + 1)

end A138840

/-!
# A138841: Concatenation of initial and final digit of n-th Mersenne prime A000668(n).

The programs for A138841, there is no canonical definition to state claims against.
-/

/-! ## A138841.P5383128082875947067

`A004086(A134037(n+1))`
-/

namespace A138841.P5383128082875947067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (A134037 (n + 1)).toNat

end

end A138841.P5383128082875947067

/-! ## A138841.P8085579747861457785

`A073729(A138863(n+1))`
-/

namespace A138841.P8085579747861457785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073729 (A138863 (n + 1)).toNat

end

end A138841.P8085579747861457785

/-! ## A138841.P5800580992287588590

`A135020(2*A134037(n+1))`
-/

namespace A138841.P5800580992287588590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135020 (2 * A134037 (n + 1)).toNat

end

end A138841.P5800580992287588590

/-! ## A138841.P5627461102166081155

`A103168(10*A134037(n+1))`
-/

namespace A138841.P5627461102166081155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103168 (10 * A134037 (n + 1)).toNat

end

end A138841.P5627461102166081155

/-! ## A138841.P10374280283566204691

`A135020(A134037(n+1)+A134037(n+1))`
-/

namespace A138841.P10374280283566204691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135020 (A134037 (n + 1) + A134037 (n + 1)).toNat

end

end A138841.P10374280283566204691

/-!
# A138842: Concatenation of initial and final digits of n-th even superperfect number A061652(n).

The programs for A138842, there is no canonical definition to state claims against.
-/

/-! ## A138842.P1783050840142104691

`2*A138838(n+1)`
-/

namespace A138842.P1783050840142104691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A138838 (n + 1)

end

end A138842.P1783050840142104691

/-! ## A138842.P9513379666156219371

`A004277(A138838(n+1))`
-/

namespace A138842.P9513379666156219371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A138838 (n + 1)).toNat

end

end A138842.P9513379666156219371

/-! ## A138842.P12048703175481556407

`A073729(A138869(n+1))`
-/

namespace A138842.P12048703175481556407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073729 (A138869 (n + 1)).toNat

end

end A138842.P12048703175481556407

/-! ## A138842.P13617167080057973558

`A000267(A138838(n+1)²)`
-/

namespace A138842.P13617167080057973558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000267 (A138838 (n + 1) ^ 2).toNat

end

end A138842.P13617167080057973558

/-! ## A138842.P15011700158183735421

`A063655(A138838(n+1)²)`
-/

namespace A138842.P15011700158183735421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063655 (A138838 (n + 1) ^ 2).toNat

end

end A138842.P15011700158183735421

/-!
# A138843: Concatenation of initial and final digits of n-th perfect number.

The programs for A138843, there is no canonical definition to state claims against.
-/

/-! ## A138843.P16476583248433409412

`2*A138839(n+1)`
-/

namespace A138843.P16476583248433409412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A138839 (n + 1)

end

end A138843.P16476583248433409412

/-! ## A138843.P8385333422925743901

`A004277(A138839(n+1))`
-/

namespace A138843.P8385333422925743901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A138839 (n + 1)).toNat

end

end A138843.P8385333422925743901

/-! ## A138843.P17453416895871628946

`A073729(A138875(n+1))`
-/

namespace A138843.P17453416895871628946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073729 (A138875 (n + 1)).toNat

end

end A138843.P17453416895871628946

/-! ## A138843.P12447477593117656923

`A000267(A138839(n+1)²)`
-/

namespace A138843.P12447477593117656923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000267 (A138839 (n + 1) ^ 2).toNat

end

end A138843.P12447477593117656923

/-! ## A138843.P7319063629461369742

`A063655(A138839(n+1)²)`
-/

namespace A138843.P7319063629461369742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063655 (A138839 (n + 1) ^ 2).toNat

end

end A138843.P7319063629461369742

/-!
# A138844: Concatenation of initial and final digits of n-th positive Fibonacci number.

The programs for A138844, there is no canonical definition to state claims against.
-/

/-! ## A138844.P3603878536070973987

`A073729(Δ[round(ϕ*a(n-1))])` with `a(0)=1`
-/

namespace A138844.P3603878536070973987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (f1 (n - 1) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073729 (f1 (n + 1) - f1 n).toNat

end

end A138844.P3603878536070973987

/-! ## A138844.P10961028652481341128

`A073729(A037027(∑[n]))`
-/

namespace A138844.P10961028652481341128
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073729 (A037027 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A138844.P10961028652481341128

/-! ## A138844.P9171987987693836696

`A073729(A055830(∑[n]))`
-/

namespace A138844.P9171987987693836696
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073729 (A055830 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A138844.P9171987987693836696

/-! ## A138844.P10357276782452528717

`A073729(∑[A212804(n)])`
-/

namespace A138844.P10357276782452528717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073729 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A138844.P10357276782452528717

/-!
# A138847: Row sums of a Collatz triangle.

The programs for A138847, there is no canonical definition to state claims against.
-/

/-! ## A138847.P5022481036199298273

`∑[A092892(n)]`
-/

namespace A138847.P5022481036199298273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092892 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A138847.P5022481036199298273

/-! ## A138847.P3883599192775710352

`A092892(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A138847.P3883599192775710352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A092892 n + a (A023443 n).toNat

end

end A138847.P3883599192775710352

/-! ## A138847.P18245020926497090926

`∑[A033491(lt[A033491(n), A033491(n+1)])]`
-/

namespace A138847.P18245020926497090926
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033491 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033491 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033491 (SequenceMachineLib.nth (fun j => f2 j < f3 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A138847.P18245020926497090926

/-! ## A138847.P15731151901406292286

`∑[A138895(∑[n])]`
-/

namespace A138847.P15731151901406292286
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138895 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A138847.P15731151901406292286

/-! ## A138847.P11049323844008185366

`A138895(A000217(n))+a(n-1)` with `a(0)=1`
-/

namespace A138847.P11049323844008185366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A138895 (A000217 n).toNat + a (n - 1)

end

end A138847.P11049323844008185366

/-!
# A138848: Diagonal sums of a Collatz triangle.

The programs for A138848, there is no canonical definition to state claims against.
-/

/-! ## A138848.P7847792885762607945

`A138847(n)-a(n-1)` with `a(0)=1`
-/

namespace A138848.P7847792885762607945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A138847 n - a (n - 1)

end

end A138848.P7847792885762607945

/-! ## A138848.P16792438541763208573

`A092892(n)+a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A138848.P16792438541763208573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A092892 n + a (n - 2)

end

end A138848.P16792438541763208573

/-! ## A138848.P2598552753146213664

`∑[A138895(∑[n])]-a(n-1)` with `a(0)=1`
-/

namespace A138848.P2598552753146213664
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138895 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j - a (n - 1)

end

end A138848.P2598552753146213664

/-! ## A138848.P17723733746424679860

`∑[A092892(n)-a(A023443(n))]` with `a(0)=1`
-/

namespace A138848.P17723733746424679860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A092892 n - f1 (A023443 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A138848.P17723733746424679860

/-!
# A138849: a(n) = AlexanderPolynomial[n] defined as Det[Transpose[S]-n S] where S is Kronecker Product of two 2 X 2 Seifert matrices {{-1, 1}, {0, -1}} [X] {{-1, 1}, {0, -1}} = {{1, -1, -1, 1}, {0, 1, 0, -1}, {0, 0, 1, -1}, {0, 0, 0, 1}}.

The programs for A138849, the canonical program `A138849.P7030903616134871999` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A138849 has offset 1).

The definition of A138849 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A138849.P5366789598230649010

`ogf((1-5x+17x^2+7x^3+4x^4)/(1-5x+10x^2-10x^3+5x^4-x^5))`
-/

namespace A138849.P5366789598230649010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -5, 17, 7, 4] [1, -5, 10, -10, 5, -1] n

end

end A138849.P5366789598230649010

namespace A138849

/-- `ogf((1-5x+17x^2+7x^3+4x^4)/(1-5x+10x^2-10x^3+5x^4-x^5))` -/
def P5366789598230649010.Spec : Prop :=
  ∀ n, P5366789598230649010.a n = A138849 (n + 1)

end A138849

/-! ## A138849.P7030903616134871999

`((n+1)²-(n+1)+1)*(n-1)²`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A138849

/-- `((n+1)²-(n+1)+1)*(n-1)²` -/
def P7030903616134871999.Spec : Prop :=
  ∀ n, P7030903616134871999.a n = A138849 (n + 1)

theorem P7030903616134871999.correct : P7030903616134871999.Spec := by
  intro n
  simp only [A138849, Nat.add_sub_cancel]

end A138849

/-! ## A138849.P6910696243596297731

`floor((1-n)²/Δ[atan(n)])`
-/

namespace A138849.P6910696243596297731
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((1 - (n : ℤ)) ^ 2 : ℝ) / (f1 (n + 1) - f1 n)⌋

end

end A138849.P6910696243596297731

namespace A138849

/-- `floor((1-n)²/Δ[atan(n)])` -/
def P6910696243596297731.Spec : Prop :=
  ∀ n, P6910696243596297731.a n = A138849 (n + 1)

end A138849

/-! ## A138849.P9311177098214804561

`round((1-n)²/Δ[atan(n)])`
-/

namespace A138849.P9311177098214804561
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((1 - (n : ℤ)) ^ 2 : ℝ) / (f1 (n + 1) - f1 n))

end

end A138849.P9311177098214804561

namespace A138849

/-- `round((1-n)²/Δ[atan(n)])` -/
def P9311177098214804561.Spec : Prop :=
  ∀ n, P9311177098214804561.a n = A138849 (n + 1)

end A138849

/-! ## A138849.P10316480502371234766

`lcm(n-1, n^3)-(n-1)`
-/

namespace A138849.P10316480502371234766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.lcm ((n : ℤ) - 1) (n ^ 3 : ℤ) : ℤ) - ((n : ℤ) - 1)

end

end A138849.P10316480502371234766

namespace A138849

/-- `lcm(n-1, n^3)-(n-1)` -/
def P10316480502371234766.Spec : Prop :=
  ∀ n, P10316480502371234766.a n = A138849 (n + 1)

end A138849

/-! ## A138849.P1051963609400953459

`2*n*n*C(n, 2)-(n-1)`
-/

namespace A138849.P1051963609400953459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n * (n * Nat.choose n 2) : ℤ) - ((n : ℤ) - 1)

end

end A138849.P1051963609400953459

namespace A138849

/-- `2*n*n*C(n, 2)-(n-1)` -/
def P1051963609400953459.Spec : Prop :=
  ∀ n, P1051963609400953459.a n = A138849 (n + 1)

theorem P1051963609400953459.correct : P1051963609400953459.Spec := by
  intro n
  simp only [A138849, Nat.add_sub_cancel, A138849.P1051963609400953459.a, A138849.P7030903616134871999.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A138849

/-! ## A138849.P13697481914808970424

`A060884(n)-n²`
-/

namespace A138849.P13697481914808970424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060884 n - (n ^ 2 : ℤ)

end

end A138849.P13697481914808970424

namespace A138849

/-- `A060884(n)-n²` -/
def P13697481914808970424.Spec : Prop :=
  ∀ n, P13697481914808970424.a n = A138849 (n + 1)

theorem P13697481914808970424.correct : P13697481914808970424.Spec := by
  intro n
  simp only [A138849, Nat.add_sub_cancel, A138849.P13697481914808970424.a, A138849.P7030903616134871999.a, A060884, A060884.P17835107360669808419.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A138849

/-! ## A138849.P13962688767988972684

`A085537(n)+1-n`
-/

namespace A138849.P13962688767988972684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085537 n + (1 - (n : ℤ))

end

end A138849.P13962688767988972684

namespace A138849

/-- `A085537(n)+1-n` -/
def P13962688767988972684.Spec : Prop :=
  ∀ n, P13962688767988972684.a n = A138849 (n + 1)

theorem P13962688767988972684.correct : P13962688767988972684.Spec := by
  intro n
  simp only [A138849, Nat.add_sub_cancel, A138849.P13962688767988972684.a, A138849.P7030903616134871999.a, A085537, A085537.P16655703013365461026.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A138849

/-! ## A138849.P5056863589678469326

`(A133070(n)+1)/(n+1)`
-/

namespace A138849.P5056863589678469326
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A133070 n + 1 : ℚ) / (n + 1 : ℚ)

end

end A138849.P5056863589678469326

namespace A138849

/-- `(A133070(n)+1)/(n+1)` -/
def P5056863589678469326.Spec : Prop :=
  ∀ n, P5056863589678469326.a n = (A138849 (n + 1) : ℚ)

theorem P5056863589678469326.correct : P5056863589678469326.Spec := by
  intro n
  simp only [A138849, Nat.add_sub_cancel, A138849.P5056863589678469326.a, A138849.P7030903616134871999.a, A133070, A133070.P9643557693333248287.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A138849

/-! ## A138849.P2255966066884369784

`A058895(n)+A024001(n)`
-/

namespace A138849.P2255966066884369784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058895 n + A024001 n

end

end A138849.P2255966066884369784

namespace A138849

/-- `A058895(n)+A024001(n)` -/
def P2255966066884369784.Spec : Prop :=
  ∀ n, P2255966066884369784.a n = A138849 (n + 1)

theorem P2255966066884369784.correct : P2255966066884369784.Spec := by
  intro n
  simp only [A138849, Nat.add_sub_cancel, A138849.P2255966066884369784.a, A138849.P7030903616134871999.a, A024001, A024001.P5407789940977000596.a, A058895, A058895.P10446550936280251212.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A138849

/-! ## A138849.P3498362010757032771

`A132998(n)+A002061(n)`
-/

namespace A138849.P3498362010757032771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132998 n + A002061 n

end

end A138849.P3498362010757032771

namespace A138849

/-- `A132998(n)+A002061(n)` -/
def P3498362010757032771.Spec : Prop :=
  ∀ n, P3498362010757032771.a n = A138849 (n + 1)

theorem P3498362010757032771.correct : P3498362010757032771.Spec := by
  intro n
  simp only [A138849, Nat.add_sub_cancel, A138849.P3498362010757032771.a, A138849.P7030903616134871999.a, A002061, A002061.P13016590216674735232.a, A132998, A132998.P18407272093021045904.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A138849

/-! ## A138849.P11804359174425189125

`A152016(n)+A002522(n)`
-/

namespace A138849.P11804359174425189125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152016 n + A002522 n

end

end A138849.P11804359174425189125

namespace A138849

/-- `A152016(n)+A002522(n)` -/
def P11804359174425189125.Spec : Prop :=
  ∀ n, P11804359174425189125.a n = A138849 (n + 1)

theorem P11804359174425189125.correct : P11804359174425189125.Spec := by
  intro n
  simp only [A138849, Nat.add_sub_cancel, A138849.P11804359174425189125.a, A138849.P7030903616134871999.a, A002522, A002522.P3778392011853271743.a, A152016, A152016.P12945735254171868270.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A138849

/-! ## A138849.P15253246445446114554

`A125082(n)+A059100(n)`
-/

namespace A138849.P15253246445446114554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125082 n + A059100 n

end

end A138849.P15253246445446114554

namespace A138849

/-- `A125082(n)+A059100(n)` -/
def P15253246445446114554.Spec : Prop :=
  ∀ n, P15253246445446114554.a n = A138849 (n + 1)

theorem P15253246445446114554.correct : P15253246445446114554.Spec := by
  intro n
  simp only [A138849, Nat.add_sub_cancel, A138849.P15253246445446114554.a, A138849.P7030903616134871999.a, A059100, A059100.P4969484960020007252.a, A125082, A125082.P5330453548459982498.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A138849

/-! ## A138849.P18144581670325948162

`A309372(n)+A110331(n)`
-/

namespace A138849.P18144581670325948162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309372 n + A110331 n

end

end A138849.P18144581670325948162

namespace A138849

/-- `A309372(n)+A110331(n)` -/
def P18144581670325948162.Spec : Prop :=
  ∀ n, P18144581670325948162.a n = A138849 (n + 1)

theorem P18144581670325948162.correct : P18144581670325948162.Spec := by
  intro n
  simp only [A138849, Nat.add_sub_cancel, A138849.P18144581670325948162.a, A138849.P7030903616134871999.a, A110331, A110331.P10888058911026582070.a, A309372, A309372.P14598993035271615198.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A138849

/-! ## A138849.P10149820751507198277

`A002523(n)-A034262(n)`
-/

namespace A138849.P10149820751507198277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002523 n - A034262 n

end

end A138849.P10149820751507198277

namespace A138849

/-- `A002523(n)-A034262(n)` -/
def P10149820751507198277.Spec : Prop :=
  ∀ n, P10149820751507198277.a n = A138849 (n + 1)

theorem P10149820751507198277.correct : P10149820751507198277.Spec := by
  intro n
  simp only [A138849, Nat.add_sub_cancel, A138849.P10149820751507198277.a, A138849.P7030903616134871999.a, A002523, A002523.P178649398705969946.a, A034262, A034262.P1986901683698587680.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A138849

/-! ## A138849.P14484270278099539278

`A059826(n)-A027444(n)`
-/

namespace A138849.P14484270278099539278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059826 n - A027444 n

end

end A138849.P14484270278099539278

namespace A138849

/-- `A059826(n)-A027444(n)` -/
def P14484270278099539278.Spec : Prop :=
  ∀ n, P14484270278099539278.a n = A138849 (n + 1)

theorem P14484270278099539278.correct : P14484270278099539278.Spec := by
  intro n
  simp only [A138849, Nat.add_sub_cancel, A138849.P14484270278099539278.a, A138849.P7030903616134871999.a, A027444, A027444.P13486811862535796769.a, A059826, A059826.P10107357562865888263.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A138849

/-! ## A138849.P2919185223069067538

`A135497(n)-A062159(n)`
-/

namespace A138849.P2919185223069067538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135497 n - A062159 n

end

end A138849.P2919185223069067538

namespace A138849

/-- `A135497(n)-A062159(n)` -/
def P2919185223069067538.Spec : Prop :=
  ∀ n, P2919185223069067538.a n = A138849 (n + 1)

theorem P2919185223069067538.correct : P2919185223069067538.Spec := by
  intro n
  simp only [A138849, Nat.add_sub_cancel, A138849.P2919185223069067538.a, A138849.P7030903616134871999.a, A062159, A062159.P693128724581151823.a, A135497, A135497.P15522374803762714202.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A138849

/-! ## A138849.P2495420976536537354

`A272162(n)-A382612(n)`
-/

namespace A138849.P2495420976536537354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272162 n - A382612 n

end

end A138849.P2495420976536537354

namespace A138849

/-- `A272162(n)-A382612(n)` -/
def P2495420976536537354.Spec : Prop :=
  ∀ n, P2495420976536537354.a n = A138849 (n + 1)

theorem P2495420976536537354.correct : P2495420976536537354.Spec := by
  intro n
  simp only [A138849, Nat.add_sub_cancel, A138849.P2495420976536537354.a, A138849.P7030903616134871999.a, A272162, A272162.P3521161050144454669.a, A382612, A382612.P15305136820978696030.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A138849

/-! ## A138849.P13570992319277280605

`A178617(n)+A141631(n+1)`
-/

namespace A138849.P13570992319277280605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178617 n + A141631 (n + 1)

end

end A138849.P13570992319277280605

namespace A138849

/-- `A178617(n)+A141631(n+1)` -/
def P13570992319277280605.Spec : Prop :=
  ∀ n, P13570992319277280605.a n = A138849 (n + 1)

theorem P13570992319277280605.correct : P13570992319277280605.Spec := by
  intro n
  simp only [A138849, Nat.add_sub_cancel, A138849.P13570992319277280605.a, A138849.P7030903616134871999.a, A141631, A141631.P7887751271673767978.a, A178617, A178617.P4739096274739236676.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A138849

/-! ## A138849.P133645745353786873

`A058895(n)+3-A084380(n)`
-/

namespace A138849.P133645745353786873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058895 n + (3 - A084380 n)

end

end A138849.P133645745353786873

namespace A138849

/-- `A058895(n)+3-A084380(n)` -/
def P133645745353786873.Spec : Prop :=
  ∀ n, P133645745353786873.a n = A138849 (n + 1)

theorem P133645745353786873.correct : P133645745353786873.Spec := by
  intro n
  simp only [A138849, Nat.add_sub_cancel, A138849.P133645745353786873.a, A138849.P7030903616134871999.a, A058895, A058895.P10446550936280251212.a, A084380, A084380.P6829574100812521440.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A138849

/-!
# A138850: Weird numbers (A006037) not divisible by 5.

The programs for A138850, there is no canonical definition to state claims against.
-/

/-! ## A138850.P4465080415693617893

`filter[A002975(n+1), A187074(#)]`
-/

namespace A138850.P4465080415693617893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002975 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A187074 (f1 j).toNat = 1) n)

end

end A138850.P4465080415693617893

/-! ## A138850.P17609801415701825051

`filter[A006037(n+1), A187074(#)]`
-/

namespace A138850.P17609801415701825051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006037 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A187074 (f1 j).toNat = 1) n)

end

end A138850.P17609801415701825051

/-! ## A138850.P16250779462409084749

`filter[A002975(n+1), A355447(#)]`
-/

namespace A138850.P16250779462409084749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002975 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355447 (f1 j).toNat = 1) n)

end

end A138850.P16250779462409084749

/-! ## A138850.P1260831917693408284

`filter[A002975(n+1), A355453(#)]`
-/

namespace A138850.P1260831917693408284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002975 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355453 (f1 j).toNat = 1) n)

end

end A138850.P1260831917693408284

/-! ## A138850.P15723282200698027574

`filter[A006037(n+1), A355447(#)]`
-/

namespace A138850.P15723282200698027574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006037 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355447 (f1 j).toNat = 1) n)

end

end A138850.P15723282200698027574

/-!
# A138853: Numbers which are the sum of 3 cubes of distinct odd primes.

The programs for A138853, there is no canonical definition to state claims against.
-/

/-! ## A138853.P4061826397671350852

`∩[or(1, A138854(n+1)), A138854(n+1)]`
-/

namespace A138853.P4061826397671350852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A138854 (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138854 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A138853.P4061826397671350852

/-! ## A138853.P9798018788026960929

`∩[A024975(A024978(n+1)), A138854(n+1)]`
-/

namespace A138853.P9798018788026960929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024975 (A024978 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138854 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A138853.P9798018788026960929

/-! ## A138853.P11296136109111621990

`filter[A138854(n+1), A379952(#)]`
-/

namespace A138853.P11296136109111621990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138854 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379952 (f1 j).toNat = 1) n)

end

end A138853.P11296136109111621990

/-! ## A138853.P339145386023898685

`filter[A138854(n+1), A323158(#)]`
-/

namespace A138853.P339145386023898685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138854 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323158 (f1 j).toNat = 1) n)

end

end A138853.P339145386023898685

/-! ## A138853.P7880846085532862840

`filter[A138854(n+1), A324908(#)]`
-/

namespace A138853.P7880846085532862840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138854 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A324908 (f1 j).toNat = 1) n)

end

end A138853.P7880846085532862840

/-! ## A138853.P7243231599094097123

`record[A093178(A138854(n+4))]`
-/

namespace A138853.P7243231599094097123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 (A138854 (n + 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A138853.P7243231599094097123

/-! ## A138853.P1022103402012138724

`∩[A138854(n+1), A005408(n)]`
-/

namespace A138853.P1022103402012138724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138854 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A138853.P1022103402012138724

/-!
# A138854: Numbers which are the sum of three cubes of distinct primes.

The programs for A138854, there is no canonical definition to state claims against.
-/

/-! ## A138854.P5271806390328892683

`∩[A192926(n+1), A258865(n+1)]`
-/

namespace A138854.P5271806390328892683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192926 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258865 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A138854.P5271806390328892683

/-! ## A138854.P14708562686573377005

`∩[A192926(n+1), A334964(n+1)]`
-/

namespace A138854.P14708562686573377005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192926 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334964 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A138854.P14708562686573377005

/-!
# A138855: Half-sum (or average) of cubes of two distinct odd primes.

The programs for A138855, there is no canonical definition to state claims against.
-/

/-! ## A138855.P11063828469558157169

`record[A318518(A138854(n+1))-4]`
-/

namespace A138855.P11063828469558157169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318518 (A138854 (n + 1)).toNat - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A138855.P11063828469558157169

/-! ## A138855.P1279766095337986146

`∩[A024670(A024671(n+1)), A120398(n+1)]/2`
-/

namespace A138855.P1279766095337986146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024670 (A024671 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120398 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A138855.P1279766095337986146

/-! ## A138855.P176473649657375669

`A137632(n+1)/2`
-/

namespace A138855.P176473649657375669
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A137632 (n + 1) : ℚ) / 2

end

end A138855.P176473649657375669

/-! ## A138855.P3430378813907919077

`A014682(A137632(n+1))`
-/

namespace A138855.P3430378813907919077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A137632 (n + 1)).toNat

end

end A138855.P3430378813907919077

/-! ## A138855.P9371445920280864838

`record[A137632(A028920(n))/2]`
-/

namespace A138855.P9371445920280864838
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A137632 (A028920 n).toNat : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A138855.P9371445920280864838

/-!
# A138856: Numbers such that all subsets of {prime(a(1)), ..., prime(a(n))} have a different sum.

The programs for A138856, there is no canonical definition to state claims against.
-/

/-! ## A138856.P17774901685219590865

`A000720(A138000(n+1))`
-/

namespace A138856.P17774901685219590865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A138000 (n + 1)).toNat

end

end A138856.P17774901685219590865

/-! ## A138856.P6876134497039538448

`∑{d}[A138000(n+1), A061395(#)]`
-/

namespace A138856.P6876134497039538448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138000 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A061395 d

end

end A138856.P6876134497039538448

/-! ## A138856.P16480464903166686738

`∑{d}[A138000(n+1), A066328(#)]`
-/

namespace A138856.P16480464903166686738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138000 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A066328 d

end

end A138856.P16480464903166686738

/-! ## A138856.P16563685301809364874

`A226164(A389124(n))`
-/

namespace A138856.P16563685301809364874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226164 (A389124 n).toNat

end

end A138856.P16563685301809364874

/-!
# A138857: Numbers such that all subsets of {a(1)^2,...,a(n)^2} have a different sum.

The programs for A138857, there is no canonical definition to state claims against.
-/

/-! ## A138857.P9220242154304171370

`sqrt(A138858(n+1))`
-/

namespace A138857.P9220242154304171370
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A138858 (n + 1) : ℝ)

end

end A138857.P9220242154304171370

/-! ## A138857.P11070989153909219973

`root(A138858(n+1), 2)%A000032(n+2)`
-/

namespace A138857.P11070989153909219973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A138858 (n + 1) : ℝ) ^ (1 / (2 : ℝ)))) (A000032 (n + 2))

end

end A138857.P11070989153909219973

/-! ## A138857.P9022500471813669937

`A138858(n+1)^(A027642(2*n+3)/2)`
-/

namespace A138857.P9022500471813669937
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A138858 (n + 1) : ℝ) ^ ((A027642 (2 * n + 3) : ℚ) / 2 : ℝ)

end

end A138857.P9022500471813669937

/-! ## A138857.P10564597082276325148

`root(A138858(n+1), A000005(2-C(2, n+2)))`
-/

namespace A138857.P10564597082276325148
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A138858 (n + 1) : ℝ) ^ (1 / (A000005 (2 - Nat.choose 2 (n + 2)) : ℝ))

end

end A138857.P10564597082276325148

/-!
# A138858: a(n) = least square such that the subsets of {a(1),...,a(n)} sum to 2^n different values.

The programs for A138858, there is no canonical definition to state claims against.
-/

/-! ## A138858.P586936073165633871

`A138857(n+1)²`
-/

namespace A138858.P586936073165633871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138857 (n + 1) ^ 2

end

end A138858.P586936073165633871

/-! ## A138858.P8515983979308847397

`record[A138857(ceil(C(or(1, n), n)/2))²]`
-/

namespace A138858.P8515983979308847397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138857 ⌈(Nat.choose (Nat.lor 1 n) n : ℚ) / 2⌉.toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A138858.P8515983979308847397

/-! ## A138858.P13259350234295098647

`record[A138857(A328388(n))²]`
-/

namespace A138858.P13259350234295098647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138857 (A328388 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A138858.P13259350234295098647

/-! ## A138858.P15825971851575700034

`A138857(A000027(n+1))^2`
-/

namespace A138858.P15825971851575700034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138857 (A000027 (n + 1)).toNat ^ 2

end

end A138858.P15825971851575700034

/-! ## A138858.P11040129681647871898

`A138857(n+1)^A117444(A017353(n))`
-/

namespace A138858.P11040129681647871898
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138857 (n + 1) : ℚ) ^ (A117444 (A017353 n).toNat : ℤ)

end

end A138858.P11040129681647871898

/-!
# A138859: Smallest prime factor of Fibonacci(3n)-1, i.e., A020639(A000071(3n)).

The programs for A138859, the canonical program `A138859.P9866240351945907283` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A138859 has offset 2).

The definition of A138859 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A020639, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A138859.P9866240351945907283

`A020639(A000071(3*(n+2)))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A138859

/-- `A020639(A000071(3*(n+2)))` -/
def P9866240351945907283.Spec : Prop :=
  ∀ n, P9866240351945907283.a n = A138859 (n + 2)

theorem P9866240351945907283.correct : P9866240351945907283.Spec := by
  intro n
  simp only [A138859, Nat.add_sub_cancel]

end A138859

/-! ## A138859.P6005760500012029119

`A337008(or(5, A249925(n)))`
-/

namespace A138859.P6005760500012029119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337008 (Int.lor 5 (A249925 n)).toNat

end

end A138859.P6005760500012029119

namespace A138859

/-- `A337008(or(5, A249925(n)))` -/
def P6005760500012029119.Spec : Prop :=
  ∀ n, P6005760500012029119.a n = A138859 (n + 2)

end A138859

/-! ## A138859.P2477037236025728052

`A020639(A014445(n+2)-1)`
-/

namespace A138859.P2477037236025728052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A014445 (n + 2) - 1).toNat

end

end A138859.P2477037236025728052

namespace A138859

/-- `A020639(A014445(n+2)-1)` -/
def P2477037236025728052.Spec : Prop :=
  ∀ n, P2477037236025728052.a n = A138859 (n + 2)

end A138859

/-!
# A138860: E.g.f. satisfies: A(x) = exp( x*(A(x) + A(x)^2)/2 ).

The programs for A138860, the canonical program `A138860.P15714390826561470911` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A138860 has offset 0).

The definition of A138860 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A138860.P15714390826561470911

`1/2^n*∑{#}[n, C(n, #)*(n+#+1)^(n-1)]`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A138860

/-- `1/2^n*∑{#}[n, C(n, #)*(n+#+1)^(n-1)]` -/
def P15714390826561470911.Spec : Prop :=
  ∀ n, P15714390826561470911.a n = (A138860 n : ℚ)

end A138860

/-! ## A138860.P9367712775636861244

`A138764(n)/2^n`
-/

namespace A138860.P9367712775636861244
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138764 n : ℚ) / (2 ^ n : ℚ)

end

end A138860.P9367712775636861244

namespace A138860

/-- `A138764(n)/2^n` -/
def P9367712775636861244.Spec : Prop :=
  ∀ n, P9367712775636861244.a n = (A138860 n : ℚ)

end A138860

/-! ## A138860.P1221083846216303989

`floor(A138764(n)/A000079(n))`
-/

namespace A138860.P1221083846216303989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A138764 n : ℚ) / (A000079 n : ℚ)⌋

end

end A138860.P1221083846216303989

namespace A138860

/-- `floor(A138764(n)/A000079(n))` -/
def P1221083846216303989.Spec : Prop :=
  ∀ n, P1221083846216303989.a n = A138860 n

end A138860

/-! ## A138860.P12697697370064848071

`floor(A138764(n)/A034008(n+2))`
-/

namespace A138860.P12697697370064848071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A138764 n : ℚ) / (A034008 (n + 2) : ℚ)⌋

end

end A138860.P12697697370064848071

namespace A138860

/-- `floor(A138764(n)/A034008(n+2))` -/
def P12697697370064848071.Spec : Prop :=
  ∀ n, P12697697370064848071.a n = A138860 n

end A138860

/-!
# A138864: First 3 digits of n-th Mersenne prime A000668(n).

The programs for A138864, there is no canonical definition to state claims against.
-/

/-! ## A138864.P13475610592026360868

`A133797(A008041(n+1))`
-/

namespace A138864.P13475610592026360868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133797 (A008041 (n + 1)).toNat

end

end A138864.P13475610592026360868

/-!
# A138865: Last 3 digits of n-th Mersenne prime A000668(n).

The programs for A138865, there is no canonical definition to state claims against.
-/

/-! ## A138865.P12009618688903450585

`A138866(n+1)%(10*A138864(n+1))`
-/

namespace A138865.P12009618688903450585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A138866 (n + 1)) (10 * A138864 (n + 1))

end

end A138865.P12009618688903450585

/-! ## A138865.P10938530394332442371

`A138866(n+1)%A008592(A138864(n+1))`
-/

namespace A138865.P10938530394332442371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A138866 (n + 1)) (A008592 (A138864 (n + 1)).toNat)

end

end A138865.P10938530394332442371

/-! ## A138865.P501902880595495723

`A126605(A000043(n+1))-1`
-/

namespace A138865.P501902880595495723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126605 (A000043 (n + 1)).toNat - 1

end

end A138865.P501902880595495723

/-! ## A138865.P2371905909442272805

`A126605(p?[A270427(n+1)])-1`
-/

namespace A138865.P2371905909442272805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270427 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126605 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat - 1

end

end A138865.P2371905909442272805

/-! ## A138865.P14037380332167859200

`A126605(A090748(n+1)+1)-1`
-/

namespace A138865.P14037380332167859200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126605 (A090748 (n + 1) + 1).toNat - 1

end

end A138865.P14037380332167859200

/-!
# A138868: Last two digits of n-th even superperfect number A061652(n).

The programs for A138868, there is no canonical definition to state claims against.
-/

/-! ## A138868.P9550066196431203096

`A138869(n+1)%(10*A138867(n+1))`
-/

namespace A138868.P9550066196431203096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A138869 (n + 1)) (10 * A138867 (n + 1))

end

end A138868.P9550066196431203096

/-! ## A138868.P5109519840043024646

`A138871(n+1)%A017090(A178334(n))`
-/

namespace A138868.P5109519840043024646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A138871 (n + 1)) (A017090 (A178334 n).toNat)

end

end A138868.P5109519840043024646

/-! ## A138868.P7140248679748848791

`A138869(n+1)%A008592(A138867(n+1))`
-/

namespace A138868.P7140248679748848791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A138869 (n + 1)) (A008592 (A138867 (n + 1)).toNat)

end

end A138868.P7140248679748848791

/-! ## A138868.P8283956486081800551

`A000855(A019280(n+1))`
-/

namespace A138868.P8283956486081800551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000855 (A019280 (n + 1)).toNat

end

end A138868.P8283956486081800551

/-! ## A138868.P121199062780443816

`A000855(A090748(n+1))`
-/

namespace A138868.P121199062780443816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000855 (A090748 (n + 1)).toNat

end

end A138868.P121199062780443816

/-!
# A138870: First 3 digits of n-th even superperfect number A061652(n).

The programs for A138870, there is no canonical definition to state claims against.
-/

/-! ## A138870.P356996110240358196

`A065361(A080877(3*n)+2)`
-/

namespace A138870.P356996110240358196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065361 (A080877 (3 * n) + 2).toNat

end

end A138870.P356996110240358196

/-!
# A138871: Last 3 digits of n-th even superperfect number A061652(n).

The programs for A138871, there is no canonical definition to state claims against.
-/

/-! ## A138871.P1848411009116101032

`(2^(A000043(n+1)-1))%1000`
-/

namespace A138871.P1848411009116101032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A000043 (n + 1) - 1 : ℤ))) 1000

end

end A138871.P1848411009116101032

/-! ## A138871.P5093735266550184356

`A138872(n+1)%(10*A138870(n+1))`
-/

namespace A138871.P5093735266550184356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A138872 (n + 1)) (10 * A138870 (n + 1))

end

end A138871.P5093735266550184356

/-! ## A138871.P5055782587610134817

`A138872(n+1)%A008592(A138870(n+1))`
-/

namespace A138871.P5055782587610134817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A138872 (n + 1)) (A008592 (A138870 (n + 1)).toNat)

end

end A138871.P5055782587610134817

/-! ## A138871.P2720583357874226292

`A126605(A019280(n+1))`
-/

namespace A138871.P2720583357874226292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126605 (A019280 (n + 1)).toNat

end

end A138871.P2720583357874226292

/-! ## A138871.P15988896289333908969

`A126605(A090748(n+1))`
-/

namespace A138871.P15988896289333908969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126605 (A090748 (n + 1)).toNat

end

end A138871.P15988896289333908969

/-!
# A138874: Last two digits of the n-th even perfect number.

The programs for A138874, there is no canonical definition to state claims against.
-/

/-! ## A138874.P8165942436630307385

`A104511(n+1)%A040020(n)²`
-/

namespace A138874.P8165942436630307385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A104511 (n + 1)) (A040020 n ^ 2)

end

end A138874.P8165942436630307385

/-! ## A138874.P2669910375318985175

`A138875(n+1)%(10*A138873(n+1))`
-/

namespace A138874.P2669910375318985175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A138875 (n + 1)) (10 * A138873 (n + 1))

end

end A138874.P2669910375318985175

/-! ## A138874.P9574559798294946554

`A138875(n+1)%A008592(A138873(n+1))`
-/

namespace A138874.P9574559798294946554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A138875 (n + 1)) (A008592 (A138873 (n + 1)).toNat)

end

end A138874.P9574559798294946554

/-! ## A138874.P10438809626758290640

`(A138877(n+1)%(5*A138876(n+1)))%A040020(n)²`
-/

namespace A138874.P10438809626758290640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod (A138877 (n + 1)) (5 * A138876 (n + 1))) (A040020 n ^ 2)

end

end A138874.P10438809626758290640

/-! ## A138874.P10550947341186483371

`(A138877(n+1)%A008587(A138876(n+1)))%A040020(n)²`
-/

namespace A138874.P10550947341186483371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod (A138877 (n + 1)) (A008587 (A138876 (n + 1)).toNat)) (A040020 n ^ 2)

end

end A138874.P10550947341186483371

/-!
# A138879: Sum of all parts of the last section of the set of partitions of n.

The programs for A138879, there is no canonical definition to state claims against.
-/

/-! ## A138879.P16507647235401654012

`A138880(n+1)+A000041(n)`
-/

namespace A138879.P16507647235401654012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138880 (n + 1) + A000041 n

end

end A138879.P16507647235401654012

/-! ## A138879.P7393256798981062309

`A066186(n+1)-A066186(n)`
-/

namespace A138879.P7393256798981062309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066186 (n + 1) - A066186 n

end

end A138879.P7393256798981062309

/-! ## A138879.P13262688563551097816

`A000041(n+1)*(n+1)-A000041(n)*n`
-/

namespace A138879.P13262688563551097816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) * (n + 1 : ℤ) - A000041 n * (n : ℤ)

end

end A138879.P13262688563551097816

/-! ## A138879.P9680471661269416064

`A182709(n+1)+A046746(n+1)`
-/

namespace A138879.P9680471661269416064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182709 (n + 1) + A046746 (n + 1)

end

end A138879.P9680471661269416064

/-! ## A138879.P17992027700602299780

`A207035(n+1)+A138137(n+1)`
-/

namespace A138879.P17992027700602299780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207035 (n + 1) + A138137 (n + 1)

end

end A138879.P17992027700602299780

/-! ## A138879.P5068035315249250514

`A206436(n+1)+A206435(n+1)`
-/

namespace A138879.P5068035315249250514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206436 (n + 1) + A206435 (n + 1)

end

end A138879.P5068035315249250514

/-! ## A138879.P13446793853010466565

`A000041(n+1)+n*A002865(n+1)`
-/

namespace A138879.P13446793853010466565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) + (n : ℤ) * A002865 (n + 1)

end

end A138879.P13446793853010466565

/-! ## A138879.P7283923675505512628

`∑[A187219(n+1)]+n*A187219(n+1)`
-/

namespace A138879.P7283923675505512628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187219 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ) * A187219 (n + 1)

end

end A138879.P7283923675505512628

/-! ## A138879.P11996027817372745289

`A182708(n+1)+A182709(n+1)+A000041(n)`
-/

namespace A138879.P11996027817372745289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182708 (n + 1) + (A182709 (n + 1) + A000041 n)

end

end A138879.P11996027817372745289

/-! ## A138879.P8941960034098543587

`A182709(n+1)+A196039(n+1)-A196039(n)`
-/

namespace A138879.P8941960034098543587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182709 (n + 1) + (A196039 (n + 1) - A196039 n)

end

end A138879.P8941960034098543587

/-! ## A138879.P3841816841589959658

`A138137(n+1)+A138880(n+1)-A138135(n+1)`
-/

namespace A138879.P3841816841589959658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138137 (n + 1) + (A138880 (n + 1) - A138135 (n + 1))

end

end A138879.P3841816841589959658

/-! ## A138879.P3215828666174958478

`A138880(n+1)+A093694(n)-A006128(n)`
-/

namespace A138879.P3215828666174958478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138880 (n + 1) + (A093694 n - A006128 n)

end

end A138879.P3215828666174958478

/-! ## A138879.P2263675391900089932

`A006128(n+1)+A207035(n+1)-A006128(n)`
-/

namespace A138879.P2263675391900089932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006128 (n + 1) + (A207035 (n + 1) - A006128 n)

end

end A138879.P2263675391900089932

/-! ## A138879.P5927615611295656322

`A183006(n+1)/(A008606(n+1)-A008606(n))`
-/

namespace A138879.P5927615611295656322
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A183006 (n + 1) : ℚ) / (A008606 (n + 1) - A008606 n : ℚ)

end

end A138879.P5927615611295656322

/-! ## A138879.P13198918923130280792

`Δ[A066186(n)]`
-/

namespace A138879.P13198918923130280792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066186 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A138879.P13198918923130280792

/-! ## A138879.P13834397941686279135

`Δ[n*A000041(n)]`
-/

namespace A138879.P13834397941686279135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000041 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A138879.P13834397941686279135

/-! ## A138879.P2348390470486624791

`Δ[n*∑[A002865(n)]]`
-/

namespace A138879.P2348390470486624791
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A138879.P2348390470486624791

/-! ## A138879.P15131789648179470407

`Δ[n*(A000065(n)+1)]`
-/

namespace A138879.P15131789648179470407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A000065 n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A138879.P15131789648179470407

/-! ## A138879.P11429677350402305122

`Δ[n*(A052810(n)-1)]`
-/

namespace A138879.P11429677350402305122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A052810 n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A138879.P11429677350402305122

/-! ## A138879.P18171021189730652009

`Δ[n/2*A139582(n)]`
-/

namespace A138879.P18171021189730652009
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2 * (A139582 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A138879.P18171021189730652009

/-!
# A138880: Sum of all parts of all partitions of n that do not contain 1 as a part.

The programs for A138880, there is no canonical definition to state claims against.
-/

/-! ## A138880.P7894326299554413577

`A002865(n+1)*(n+1)`
-/

namespace A138880.P7894326299554413577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 (n + 1) * (n + 1 : ℤ)

end

end A138880.P7894326299554413577

/-! ## A138880.P26447761698046777

`A138879(n+1)-A000041(n)`
-/

namespace A138880.P26447761698046777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138879 (n + 1) - A000041 n

end

end A138880.P26447761698046777

/-! ## A138880.P14258889034219126910

`(A000041(n+1)-A000041(n))*(n+1)`
-/

namespace A138880.P14258889034219126910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000041 (n + 1) - A000041 n) * (n + 1 : ℤ)

end

end A138880.P14258889034219126910

/-! ## A138880.P16411933447148917045

`(n+1)*Δ[A000041(n)]`
-/

namespace A138880.P16411933447148917045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (f1 (n + 1) - f1 n)

end

end A138880.P16411933447148917045

/-! ## A138880.P7893861191673124108

`(n+1)*Δ[A000065(n)]`
-/

namespace A138880.P7893861191673124108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000065 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (f1 (n + 1) - f1 n)

end

end A138880.P7893861191673124108

/-! ## A138880.P13669962197059582011

`(n+1)*A002865(n+1)`
-/

namespace A138880.P13669962197059582011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A002865 (n + 1)

end

end A138880.P13669962197059582011

/-! ## A138880.P12513809060220369145

`(n+1)*A085811(n+4)`
-/

namespace A138880.P12513809060220369145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A085811 (n + 4)

end

end A138880.P12513809060220369145

/-! ## A138880.P16930280477685898784

`(n+1)*(A232697(n+1)-1)`
-/

namespace A138880.P16930280477685898784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A232697 (n + 1) - 1)

end

end A138880.P16930280477685898784

/-! ## A138880.P3177386493177370418

`A207035(n+1)+A138135(n+1)`
-/

namespace A138880.P3177386493177370418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207035 (n + 1) + A138135 (n + 1)

end

end A138880.P3177386493177370418

/-! ## A138880.P4422857647768457495

`A182709(n+1)+A182708(n+1)`
-/

namespace A138880.P4422857647768457495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182709 (n + 1) + A182708 (n + 1)

end

end A138880.P4422857647768457495

/-! ## A138880.P11567478538670995891

`A087156(n+1)*A187219(n+1)`
-/

namespace A138880.P11567478538670995891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087156 (n + 1) * A187219 (n + 1)

end

end A138880.P11567478538670995891

/-! ## A138880.P17335889087858852843

`(n+1)*Δ[A295341(n)+A000726(n)]`
-/

namespace A138880.P17335889087858852843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295341 n + A000726 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (f1 (n + 1) - f1 n)

end

end A138880.P17335889087858852843

/-! ## A138880.P14380477590374945339

`A046746(n+1)+A182709(n+1)-A000041(n)`
-/

namespace A138880.P14380477590374945339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046746 (n + 1) + (A182709 (n + 1) - A000041 n)

end

end A138880.P14380477590374945339

/-! ## A138880.P369342600314553782

`A138135(n+1)+A138879(n+1)-A138137(n+1)`
-/

namespace A138880.P369342600314553782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138135 (n + 1) + (A138879 (n + 1) - A138137 (n + 1))

end

end A138880.P369342600314553782

/-! ## A138880.P2952734715012531019

`∪[A182736(n), A182737(n)]`
-/

namespace A138880.P2952734715012531019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182736 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182737 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A138880.P2952734715012531019

/-! ## A138880.P8549063734889701087

`Δ[A066186(n)]-A000041(n)`
-/

namespace A138880.P8549063734889701087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066186 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A000041 n

end

end A138880.P8549063734889701087

/-! ## A138880.P1573282932508584007

`Δ[A066186(n)]-∑[A002865(n)]`
-/

namespace A138880.P1573282932508584007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066186 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - ∑ j ∈ Finset.range (n + 1), f2 j

end

end A138880.P1573282932508584007

/-! ## A138880.P16886496900504055260

`Δ[A066186(n)]-A139582(n)/2`
-/

namespace A138880.P16886496900504055260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066186 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) - (A139582 n : ℚ) / 2

end

end A138880.P16886496900504055260

/-! ## A138880.P3663653281145364378

`A066186(n+1)-A228816(n+1)`
-/

namespace A138880.P3663653281145364378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066186 (n + 1) - A228816 (n + 1)

end

end A138880.P3663653281145364378

/-! ## A138880.P6674016846347331976

`Δ[n*A000041(n)]-∑[A002865(n)]`
-/

namespace A138880.P6674016846347331976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000041 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - ∑ j ∈ Finset.range (n + 1), f2 j

end

end A138880.P6674016846347331976

/-!
# A138882: Triangle read by rows: row n lists divisors of n-th even superperfect number A061652(n).

The programs for A138882, there is no canonical definition to state claims against.
-/

/-! ## A138882.P8609300608068456124

`ceil(sqrt(A133031(2*n+1)))`
-/

namespace A138882.P8609300608068456124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A133031 (2 * n + 1) : ℝ)⌉

end

end A138882.P8609300608068456124

/-! ## A138882.P12818172406818186294

`A053644(floor(sqrt(A133031(2*(n+1)))))`
-/

namespace A138882.P12818172406818186294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053644 (Int.sqrt (A133031 (2 * (n + 1)))).toNat

end

end A138882.P12818172406818186294

/-! ## A138882.P2906939815933243058

`A053644(round(sqrt(A133031(2*(n+1)))))`
-/

namespace A138882.P2906939815933243058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053644 (SequenceMachineLib.roundAway (Real.sqrt (A133031 (2 * (n + 1)) : ℝ))).toNat

end

end A138882.P2906939815933243058

/-! ## A138882.P10051795875820372403

`gcd(2*a(n-1), A139247(n+1))` with `a(0)=1`
-/

namespace A138882.P10051795875820372403
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Int.gcd (2 * a (n - 1) : ℤ) (A139247 (n + 1))

end

end A138882.P10051795875820372403

/-! ## A138882.P11253125119645398710

`gcd(A005843(a(n-1)), A139247(n+1))` with `a(0)=1`
-/

namespace A138882.P11253125119645398710
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Int.gcd (A005843 (a (n - 1))) (A139247 (n + 1))

end

end A138882.P11253125119645398710

/-!
# A138883: Number of digits in n-th even superperfect number A061652(n).

The programs for A138883, there is no canonical definition to state claims against.
-/

/-! ## A138883.P16217215848860919602

`ceil(A090748(n+1)/log2(10))`
-/

namespace A138883.P16217215848860919602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A090748 (n + 1) : ℝ) / Real.logb 2 (10 : ℝ)⌉

end

end A138883.P16217215848860919602

/-! ## A138883.P11585790752827241579

`ceil((A000043(n+1)-1)/log2(10))`
-/

namespace A138883.P11585790752827241579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A000043 (n + 1) - 1 : ℝ) / Real.logb 2 (10 : ℝ)⌉

end

end A138883.P11585790752827241579

/-!
# A138884: Numbers that are not even superperfect numbers.

The programs for A138884, there is no canonical definition to state claims against.
-/

/-! ## A138884.P5407597233707237966

`comp[and(2^n, -42)]`
-/

namespace A138884.P5407597233707237966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (2 ^ n : ℤ) (-42)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A138884.P5407597233707237966

/-! ## A138884.P1148179783049743170

`comp[Δ[or(41, ∑[2^n])]]`
-/

namespace A138884.P1148179783049743170
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 41 (∑ j ∈ Finset.range (n + 1), f3 j)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A138884.P1148179783049743170

/-! ## A138884.P18339523025942177903

`comp[lcm(2, and(n, -n)²)]`
-/

namespace A138884.P18339523025942177903
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (Int.land (n : ℤ) (-(n : ℤ)) ^ 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A138884.P18339523025942177903

/-! ## A138884.P11414893537003471986

`comp[2*Δ[or(1, n)]^n]`
-/

namespace A138884.P11414893537003471986
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((f2 (n + 1) : ℤ) - (f2 n : ℤ)) ^ n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A138884.P11414893537003471986

/-! ## A138884.P10927043977311176986

`comp[∑{e}[(n+1)², #^n]]`
-/

namespace A138884.P10927043977311176986
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p ^ n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A138884.P10927043977311176986

/-! ## A138884.P7971619992776830820

`comp[2^n*∑{e}[n+1, #]]`
-/

namespace A138884.P7971619992776830820
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n * (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A138884.P7971619992776830820

/-! ## A138884.P12102814842954643649

`comp[A135569(n)]`
-/

namespace A138884.P12102814842954643649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135569 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A138884.P12102814842954643649

/-! ## A138884.P5129611400623924948

`comp[A151371(n+1)]`
-/

namespace A138884.P5129611400623924948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151371 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A138884.P5129611400623924948

/-! ## A138884.P3089382337525345288

`∪[2*n+1, A163162(n+1)]`
-/

namespace A138884.P3089382337525345288
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163162 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A138884.P3089382337525345288

/-! ## A138884.P15289472658075927406

`∪[2*n+1, A325435(n+1)]`
-/

namespace A138884.P15289472658075927406
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325435 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A138884.P15289472658075927406

/-!
# A138885: n-th run has length n-th nonprime number, with digits 0 and 1 only, starting with 1.

The programs for A138885, there is no canonical definition to state claims against.
-/

/-! ## A138885.P17824813795182134391

`(comp[∑[comp[∏{p}[n+1, #+1]]]]-n)%2`
-/

namespace A138885.P17824813795182134391
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f4 n), (p + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)) 2

end

end A138885.P17824813795182134391

/-! ## A138885.P10363810385152474802

`1-∑[char[∑[∪[(n+1)², 2*(n-1)]]]]%2`
-/

namespace A138885.P10363810385152474802
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def f5 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n : ℤ) - 1)

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f4 j = x) ∨ ∃ j, f5 j = (x : ℤ)) n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (((∑ j ∈ Finset.range (n + 1), f1 j) % 2 : ℕ) : ℤ)

end

end A138885.P10363810385152474802

/-! ## A138885.P15924246380490472566

`1-A138886(n+1)`
-/

namespace A138885.P15924246380490472566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A138886 (n + 1)

end

end A138885.P15924246380490472566

/-! ## A138885.P7122579941444495028

`A168255(n+1)%2`
-/

namespace A138885.P7122579941444495028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A168255 (n + 1)) 2

end

end A138885.P7122579941444495028

/-! ## A138885.P8480830381620730997

`∑[char[A051349(n)]]%2`
-/

namespace A138885.P8480830381620730997
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051349 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) % 2

end

end A138885.P8480830381620730997

/-! ## A138885.P4287140427079516547

`∑[char[A101203(n)]]%2`
-/

namespace A138885.P4287140427079516547
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101203 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) % 2

end

end A138885.P4287140427079516547

/-! ## A138885.P18443222577211727798

`(∑[char[∑[A018252(n+1)]]]+1)%2`
-/

namespace A138885.P18443222577211727798
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j + 1) % 2

end

end A138885.P18443222577211727798

/-! ## A138885.P14763632105357074132

`((comp[∑[A018252(n+2)+1]]+n)%2)^n`
-/

namespace A138885.P14763632105357074132
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 2) + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + n) % 2) ^ n

end

end A138885.P14763632105357074132

/-! ## A138885.P1538217907079532363

`(comp[∑[comp[A006530(n+1)]+1]]-(n-1))%2`
-/

namespace A138885.P1538217907079532363
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - ((n : ℤ) - 1)) 2

end

end A138885.P1538217907079532363

/-! ## A138885.P4431109803889139815

`comp[comp[∑[A018252(2*n+1-n)]]+n]%2`
-/

namespace A138885.P4431109803889139815
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (2 * n + 1 - n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n % 2

end

end A138885.P4431109803889139815

/-!
# A138886: n-th run has length n-th nonprime number A018252, with digits 0 and 1 only, starting with 0.

The programs for A138886, there is no canonical definition to state claims against.
-/

/-! ## A138886.P983966832780549143

`∑[char[∑[∪[(n+1)², 2*(n-1)]]]]%2`
-/

namespace A138886.P983966832780549143
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def f5 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n : ℤ) - 1)

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f4 j = x) ∨ ∃ j, f5 j = (x : ℤ)) n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) % 2

end

end A138886.P983966832780549143

/-! ## A138886.P16171243053573648982

`1-(comp[∑[comp[∏{p}[n+1, #+1]]]]-n)%2`
-/

namespace A138886.P16171243053573648982
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f4 n), (p + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - Int.tmod ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)) 2

end

end A138886.P16171243053573648982

/-! ## A138886.P3104969835482843155

`1-A138885(n+1)`
-/

namespace A138886.P3104969835482843155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A138885 (n + 1)

end

end A138886.P3104969835482843155

/-! ## A138886.P7571137378002523607

`a(A111654(n)%2)` with `a(0)=0, a(1)=1`
-/

namespace A138886.P7571137378002523607
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (Int.tmod (A111654 n) 2).toNat

end

end A138886.P7571137378002523607

/-! ## A138886.P13856048223526967723

`log2(gcd(2, A168255(n+1)))`
-/

namespace A138886.P13856048223526967723
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Int.gcd 2 (A168255 (n + 1)) : ℝ)

end

end A138886.P13856048223526967723

/-! ## A138886.P18171528091039779094

`∑[char[A051349(n+1)]]%2`
-/

namespace A138886.P18171528091039779094
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051349 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) % 2

end

end A138886.P18171528091039779094

/-! ## A138886.P4174310731844462296

`(∑[char[A101203(n)]]+1)%2`
-/

namespace A138886.P4174310731844462296
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101203 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j + 1) % 2

end

end A138886.P4174310731844462296

/-! ## A138886.P8734333776334075091

`∑[char[∑[A018252(n+1)]]]%2`
-/

namespace A138886.P8734333776334075091
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) % 2

end

end A138886.P8734333776334075091

/-! ## A138886.P12531754404813848606

`(comp[∑[comp[A000040(n+1)+1]]]+n)%2`
-/

namespace A138886.P12531754404813848606
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + 1

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + n) % 2

end

end A138886.P12531754404813848606

/-! ## A138886.P10685165242033223482

`(comp[∑[comp[A006530(n+1)]+1]]-n)%2`
-/

namespace A138886.P10685165242033223482
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)) 2

end

end A138886.P10685165242033223482

/-!
# A138887: Numbers that are not Sophie Germain primes.

The programs for A138887, there is no canonical definition to state claims against.
-/

/-! ## A138887.P10086259453953260340

`comp[p?[floor(p?[2*n+1]/2)]]`
-/

namespace A138887.P10086259453953260340
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f3 (SequenceMachineLib.nth (fun j => (f3 j).Prime) n) : ℚ) / 2⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A138887.P10086259453953260340

/-! ## A138887.P74417183336448133

`eq[0, A156660(n)]`
-/

namespace A138887.P74417183336448133
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156660 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A138887.P74417183336448133

/-! ## A138887.P10084144295382861706

`comp[A005384(n+1)]`
-/

namespace A138887.P10084144295382861706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005384 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A138887.P10084144295382861706

/-! ## A138887.P2636383482790736305

`comp[A166985(n+1)]`
-/

namespace A138887.P2636383482790736305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166985 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A138887.P2636383482790736305

/-! ## A138887.P16456697428719892439

`comp[A246857(n+1)]`
-/

namespace A138887.P16456697428719892439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246857 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A138887.P16456697428719892439

/-! ## A138887.P4815395816662645541

`comp[A055769(n+2)]`
-/

namespace A138887.P4815395816662645541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055769 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A138887.P4815395816662645541

/-! ## A138887.P3990180248944022863

`comp[p?[A005097(n+1)]]`
-/

namespace A138887.P3990180248944022863
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005097 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A138887.P3990180248944022863

/-! ## A138887.P15800591122674310448

`comp[p?[A054639(n+1)]]`
-/

namespace A138887.P15800591122674310448
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054639 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A138887.P15800591122674310448

/-! ## A138887.P18211164646206102801

`comp[p?[A055034(n+1)]]`
-/

namespace A138887.P18211164646206102801
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055034 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A138887.P18211164646206102801

/-! ## A138887.P14015891730097796750

`comp[p?[A074821(n+1)]]`
-/

namespace A138887.P14015891730097796750
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074821 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A138887.P14015891730097796750

/-!
# A138889: Primes that are not Fermat primes.

The programs for A138889, there is no canonical definition to state claims against.
-/

/-! ## A138889.P16060335826854691790

`p?[xor(1, comp[2^n])]`
-/

namespace A138889.P16060335826854691790
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A138889.P16060335826854691790

/-! ## A138889.P7076468819892447369

`p?[lt[0, and(n, n-3)]]`
-/

namespace A138889.P7076468819892447369
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) ((n : ℤ) - 3)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A138889.P7076468819892447369

/-! ## A138889.P9932617435058095184

`p?[comp[∑[2^n]+2]]`
-/

namespace A138889.P9932617435058095184
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j + 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A138889.P9932617435058095184

/-! ## A138889.P440726100173187768

`and(p?[A064000(n+1)], -1)`
-/

namespace A138889.P440726100173187768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064000 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (-1)

end

end A138889.P440726100173187768

/-! ## A138889.P5705055117116649461

`record[∏{p}[A000015(2*(n+1)), #]]`
-/

namespace A138889.P5705055117116649461
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000015 (2 * (n + 1))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A138889.P5705055117116649461

/-! ## A138889.P12080475658271249691

`eq[A054251(n), A140080(n)]`
-/

namespace A138889.P12080475658271249691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054251 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140080 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A138889.P12080475658271249691

/-! ## A138889.P10035015356144815853

`eq[A072721(n), A140080(n)]`
-/

namespace A138889.P10035015356144815853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072721 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140080 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A138889.P10035015356144815853

/-! ## A138889.P5919679537049044040

`eq[A140080(n), A210442(n)]`
-/

namespace A138889.P5919679537049044040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140080 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210442 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A138889.P5919679537049044040

/-! ## A138889.P10647048194152121534

`eq[A140080(n), A211110(n)]`
-/

namespace A138889.P10647048194152121534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140080 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211110 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A138889.P10647048194152121534

/-! ## A138889.P12160261490422606269

`eq[A140080(n), A294138(n)]`
-/

namespace A138889.P12160261490422606269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140080 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294138 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A138889.P12160261490422606269

/-!
# A138890: Non-Padovan numbers.

The programs for A138890, the canonical program `A138890.P7159037581952829881` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A138890 has offset 1).

The definition of A138890 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A138890.P7159037581952829881

`comp[a(n-2)+a(n-3)]` with `a(0)=0, a(1)=0, a(2)=1`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A138890

/-- `comp[a(n-2)+a(n-3)]` -/
def P7159037581952829881.Spec : Prop :=
  ∀ n, (P7159037581952829881.a n : ℤ) = A138890 (n + 1)

theorem P7159037581952829881.correct : P7159037581952829881.Spec := by
  intro n
  simp only [A138890, Nat.add_sub_cancel]

end A138890

/-! ## A138890.P17996472970940180718

`comp[A000931(n)]`
-/

namespace A138890.P17996472970940180718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000931 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A138890.P17996472970940180718

namespace A138890

/-- `comp[A000931(n)]` -/
def P17996472970940180718.Spec : Prop :=
  ∀ n, (P17996472970940180718.a n : ℤ) = A138890 (n + 1)

end A138890

/-! ## A138890.P2658549479239265149

`comp[A078027(n)]`
-/

namespace A138890.P2658549479239265149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078027 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A138890.P2658549479239265149

namespace A138890

/-- `comp[A078027(n)]` -/
def P2658549479239265149.Spec : Prop :=
  ∀ n, (P2658549479239265149.a n : ℤ) = A138890 (n + 1)

end A138890

/-! ## A138890.P1591220625345978152

`comp[A114775(n)]`
-/

namespace A138890.P1591220625345978152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114775 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A138890.P1591220625345978152

namespace A138890

/-- `comp[A114775(n)]` -/
def P1591220625345978152.Spec : Prop :=
  ∀ n, (P1591220625345978152.a n : ℤ) = A138890 (n + 1)

end A138890

/-! ## A138890.P11190098499614696459

`comp[A133034(n)]`
-/

namespace A138890.P11190098499614696459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133034 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A138890.P11190098499614696459

namespace A138890

/-- `comp[A133034(n)]` -/
def P11190098499614696459.Spec : Prop :=
  ∀ n, (P11190098499614696459.a n : ℤ) = A138890 (n + 1)

end A138890

/-! ## A138890.P16781270166899927516

`comp[A182097(n)]`
-/

namespace A138890.P16781270166899927516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182097 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A138890.P16781270166899927516

namespace A138890

/-- `comp[A182097(n)]` -/
def P16781270166899927516.Spec : Prop :=
  ∀ n, (P16781270166899927516.a n : ℤ) = A138890 (n + 1)

end A138890

/-! ## A138890.P17588472774823648479

`comp[A228361(n)]`
-/

namespace A138890.P17588472774823648479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228361 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A138890.P17588472774823648479

namespace A138890

/-- `comp[A228361(n)]` -/
def P17588472774823648479.Spec : Prop :=
  ∀ n, (P17588472774823648479.a n : ℤ) = A138890 (n + 1)

end A138890

/-! ## A138890.P10080889789038832705

`comp[A023434(n)]+1`
-/

namespace A138890.P10080889789038832705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023434 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A138890.P10080889789038832705

namespace A138890

/-- `comp[A023434(n)]+1` -/
def P10080889789038832705.Spec : Prop :=
  ∀ n, (P10080889789038832705.a n : ℤ) = A138890 (n + 1)

end A138890

/-! ## A138890.P38195197935664188

`comp[A127682(n+1)]`
-/

namespace A138890.P38195197935664188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127682 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A138890.P38195197935664188

namespace A138890

/-- `comp[A127682(n+1)]` -/
def P38195197935664188.Spec : Prop :=
  ∀ n, (P38195197935664188.a n : ℤ) = A138890 (n + 1)

end A138890

/-! ## A138890.P15798182406453765900

`comp[A052954(n)-1]`
-/

namespace A138890.P15798182406453765900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052954 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A138890.P15798182406453765900

namespace A138890

/-- `comp[A052954(n)-1]` -/
def P15798182406453765900.Spec : Prop :=
  ∀ n, (P15798182406453765900.a n : ℤ) = A138890 (n + 1)

end A138890

/-!
# A138891: Non-Motzkin numbers.

The programs for A138891, there is no canonical definition to state claims against.
-/

/-! ## A138891.P1431787933882989315

`comp[floor(∏[n/5+1])]`
-/

namespace A138891.P1431787933882989315
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 5 + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∏ j ∈ Finset.range (n + 1), f2 j⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A138891.P1431787933882989315

/-! ## A138891.P1694746885303394521

`floor(∑[a(n-1)^(1/a(n-1))])` with `a(0)=0, a(1)=3, a(2)=2`
-/

namespace A138891.P1694746885303394521
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.rec [0, 3, 2] fun n f1 =>
  f1 (n - 1) ^ (1 / f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A138891.P1694746885303394521

/-! ## A138891.P3365757533703002424

`floor(∑[a(n-1)^a(n-1)^(-1)])` with `a(0)=0, a(1)=3, a(2)=2`
-/

namespace A138891.P3365757533703002424
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.rec [0, 3, 2] fun n f1 =>
  f1 (n - 1) ^ (f1 (n - 1) ^ (-1 : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A138891.P3365757533703002424

/-! ## A138891.P15386257218184345898

`eq[0, char[A001006(n)]]`
-/

namespace A138891.P15386257218184345898
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001006 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A138891.P15386257218184345898

/-! ## A138891.P5504256197834617501

`lt[char[A176334(n)], 1]`
-/

namespace A138891.P5504256197834617501
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176334 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A138891.P5504256197834617501

/-! ## A138891.P15282082324391946203

`comp[A247100(n)]%77`
-/

namespace A138891.P15282082324391946203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247100 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n % 77

end

end A138891.P15282082324391946203

/-! ## A138891.P7935788472025077057

`comp[A257387(n)]%81`
-/

namespace A138891.P7935788472025077057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257387 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n % 81

end

end A138891.P7935788472025077057

/-! ## A138891.P16741629301891415398

`comp[A048285(n)]%91`
-/

namespace A138891.P16741629301891415398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048285 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n % 91

end

end A138891.P16741629301891415398

/-! ## A138891.P1407541050984820489

`or(char[1], comp[A230554(n)])`
-/

namespace A138891.P1407541050984820489
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230554 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor (if ∃ j, f1 j = n then 1 else 0) (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n)

end

end A138891.P1407541050984820489

/-! ## A138891.P876230408114811976

`∑[char[A000032(2*n)-1]+1]-C(2, n+2)`
-/

namespace A138891.P876230408114811976
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (2 * n) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = (n : ℤ) then 1 else 0) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (Nat.choose 2 (n + 2) : ℤ)

end

end A138891.P876230408114811976

/-!
# A138892: Non-Ulam numbers.

The programs for A138892, there is no canonical definition to state claims against.
-/

/-! ## A138892.P10583831031426740844

`comp[A002858(n+1)]`
-/

namespace A138892.P10583831031426740844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002858 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A138892.P10583831031426740844

/-! ## A138892.P2872327183730470179

`comp[A183534(∑[n+1])]`
-/

namespace A138892.P2872327183730470179
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183534 (∑ j ∈ Finset.range (n + 1), f2 j)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A138892.P2872327183730470179

/-! ## A138892.P10093161293463858113

`comp[A072832(n)+a(n-1)]` with `a(0)=1`
-/

namespace A138892.P10093161293463858113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A072832 n + f1 (n - 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A138892.P10093161293463858113

/-! ## A138892.P17650996392263600454

`comp[∑[A072832(abs(1-n)+1)]]`
-/

namespace A138892.P17650996392263600454
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072832 (|1 - (n : ℤ)| + 1).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A138892.P17650996392263600454

/-! ## A138892.P6900028448927002826

`comp[record[A002858(A022446(n))]]`
-/

namespace A138892.P6900028448927002826
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002858 (A022446 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A138892.P6900028448927002826

/-! ## A138892.P7017793318403602932

`comp[record[A002858(A028920(n))]]`
-/

namespace A138892.P7017793318403602932
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002858 (A028920 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A138892.P7017793318403602932

/-! ## A138892.P9760824139222313048

`comp[record[A002858(A059127(n))]]`
-/

namespace A138892.P9760824139222313048
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002858 (A059127 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A138892.P9760824139222313048

/-! ## A138892.P8586453535372672420

`comp[record[A002858(A101504(n))]]`
-/

namespace A138892.P8586453535372672420
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002858 (A101504 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A138892.P8586453535372672420

/-! ## A138892.P8374220952536162975

`comp[record[A002858(A158416(n))]]`
-/

namespace A138892.P8374220952536162975
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002858 (A158416 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A138892.P8374220952536162975

/-!
# A138893: A generalized Chamberland function.

The programs for A138893, the canonical program `A138893.P16437266480232324808` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A138893 has offset 0).

The definition of A138893 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A138893.P16437266480232324808

`ogf((11x+14x^2-10x^3+14x^4+7x^5)/(1-2x+3x^2-4x^3+3x^4-2x^5+x^6))`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A138893

/-- `ogf((11x+14x^2-10x^3+14x^4+7x^5)/(1-2x+3x^2-4x^3+3x^4-2x^5+x^6))` -/
def P16437266480232324808.Spec : Prop :=
  ∀ n, P16437266480232324808.a n = A138893 n

theorem P16437266480232324808.correct : P16437266480232324808.Spec := by
  intro n
  simp only [A138893]

end A138893

/-!
# A138894: Expansion of (1+x)/(1-10*x+9*x^2).

The programs for A138894, the canonical program `A138894.P12448390314756401407` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A138894 has offset 0).

The definition of A138894 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+x)/(1-10x+9x^2))` (program `A138894.P12448390314756401407`, by `A138894.P12448390314756401407.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A138894.P12448390314756401407

`ogf((1+x)/(1-10x+9x^2))`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A138894

/-- `ogf((1+x)/(1-10x+9x^2))` -/
def P12448390314756401407.Spec : Prop :=
  ∀ n, P12448390314756401407.a n = A138894 n

theorem P12448390314756401407.correct : P12448390314756401407.Spec := by
  intro n
  simp only [A138894]

end A138894

/-! ## A138894.P3585481719186541838

`5/4*9^n-1/4`
-/

namespace A138894.P3585481719186541838
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 : ℚ) / 4 * (9 ^ n : ℚ) - (1 : ℚ) / 4

end

end A138894.P3585481719186541838

namespace A138894

/-- `5/4*9^n-1/4` -/
def P3585481719186541838.Spec : Prop :=
  ∀ n, P3585481719186541838.a n = (A138894 n : ℚ)

end A138894

/-! ## A138894.P9679540057451261252

`9*a(n-1)+2` with `a(0)=1`
-/

namespace A138894.P9679540057451261252
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  9 * a (n - 1) + 2

end

end A138894.P9679540057451261252

namespace A138894

/-- `9*a(n-1)+2` -/
def P9679540057451261252.Spec : Prop :=
  ∀ n, (P9679540057451261252.a n : ℤ) = A138894 n

end A138894

/-! ## A138894.P2057798369284399836

`lcm(9, a(n-1))+2` with `a(0)=1`
-/

namespace A138894.P2057798369284399836
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.lcm 9 (a (n - 1)) + 2

end

end A138894.P2057798369284399836

namespace A138894

/-- `lcm(9, a(n-1))+2` -/
def P2057798369284399836.Spec : Prop :=
  ∀ n, (P2057798369284399836.a n : ℤ) = A138894 n

end A138894

/-! ## A138894.P750969575230894208

`∑[9*a(n-1)]` with `a(0)=1, a(1)=10`
-/

namespace A138894.P750969575230894208
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 10] fun n f1 =>
  9 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A138894.P750969575230894208

namespace A138894

/-- `∑[9*a(n-1)]` -/
def P750969575230894208.Spec : Prop :=
  ∀ n, (P750969575230894208.a n : ℤ) = A138894 n

end A138894

/-! ## A138894.P15065696679065355792

`round(lcm(5, 3^(2*n))/4)`
-/

namespace A138894.P15065696679065355792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.lcm 5 (3 ^ (2 * n)) : ℚ) / 4)

end

end A138894.P15065696679065355792

namespace A138894

/-- `round(lcm(5, 3^(2*n))/4)` -/
def P15065696679065355792.Spec : Prop :=
  ∀ n, P15065696679065355792.a n = A138894 n

end A138894

/-! ## A138894.P12073644888113044918

`∑[A003952(n)]`
-/

namespace A138894.P12073644888113044918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003952 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A138894.P12073644888113044918

namespace A138894

/-- `∑[A003952(n)]` -/
def P12073644888113044918.Spec : Prop :=
  ∀ n, P12073644888113044918.a n = A138894 n

end A138894

/-! ## A138894.P18236989352384504232

`A060925(2*n)`
-/

namespace A138894.P18236989352384504232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060925 (2 * n)

end

end A138894.P18236989352384504232

namespace A138894

/-- `A060925(2*n)` -/
def P18236989352384504232.Spec : Prop :=
  ∀ n, P18236989352384504232.a n = A138894 n

end A138894

/-! ## A138894.P15142441945559628375

`A081250(2*n)`
-/

namespace A138894.P15142441945559628375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081250 (2 * n)

end

end A138894.P15142441945559628375

namespace A138894

/-- `A081250(2*n)` -/
def P15142441945559628375.Spec : Prop :=
  ∀ n, P15142441945559628375.a n = A138894 n

end A138894

/-! ## A138894.P458586256907061736

`A297445(2*n)`
-/

namespace A138894.P458586256907061736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297445 (2 * n)

end

end A138894.P458586256907061736

namespace A138894

/-- `A297445(2*n)` -/
def P458586256907061736.Spec : Prop :=
  ∀ n, P458586256907061736.a n = A138894 n

end A138894

/-! ## A138894.P3606323952908822016

`A255043(n)/2`
-/

namespace A138894.P3606323952908822016
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A255043 n : ℚ) / 2

end

end A138894.P3606323952908822016

namespace A138894

/-- `A255043(n)/2` -/
def P3606323952908822016.Spec : Prop :=
  ∀ n, P3606323952908822016.a n = (A138894 n : ℚ)

end A138894

/-! ## A138894.P17952204183009411154

`A198962(n)/4`
-/

namespace A138894.P17952204183009411154
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A198962 n : ℚ) / 4

end

end A138894.P17952204183009411154

namespace A138894

/-- `A198962(n)/4` -/
def P17952204183009411154.Spec : Prop :=
  ∀ n, P17952204183009411154.a n = (A138894 n : ℚ)

end A138894

/-! ## A138894.P16169147973368863272

`(A135423(n)-1)/2`
-/

namespace A138894.P16169147973368863272
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A135423 n - 1 : ℚ) / 2

end

end A138894.P16169147973368863272

namespace A138894

/-- `(A135423(n)-1)/2` -/
def P16169147973368863272.Spec : Prop :=
  ∀ n, P16169147973368863272.a n = (A138894 n : ℚ)

end A138894

/-! ## A138894.P11018779687026921779

`(A199563(n)-2)/4`
-/

namespace A138894.P11018779687026921779
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A199563 n - 2 : ℚ) / 4

end

end A138894.P11018779687026921779

namespace A138894

/-- `(A199563(n)-2)/4` -/
def P11018779687026921779.Spec : Prop :=
  ∀ n, P11018779687026921779.a n = (A138894 n : ℚ)

end A138894

/-! ## A138894.P7908572886061322236

`A198643(2*n)/4`
-/

namespace A138894.P7908572886061322236
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A198643 (2 * n) : ℚ) / 4

end

end A138894.P7908572886061322236

namespace A138894

/-- `A198643(2*n)/4` -/
def P7908572886061322236.Spec : Prop :=
  ∀ n, P7908572886061322236.a n = (A138894 n : ℚ)

end A138894

/-! ## A138894.P3580441935985953322

`A060816(Δ[n²])/2`
-/

namespace A138894.P3580441935985953322
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060816 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 2

end

end A138894.P3580441935985953322

namespace A138894

/-- `A060816(Δ[n²])/2` -/
def P3580441935985953322.Spec : Prop :=
  ∀ n, P3580441935985953322.a n = (A138894 n : ℚ)

end A138894

/-! ## A138894.P293992477377236559

`A321573(Δ[n²])/2`
-/

namespace A138894.P293992477377236559
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A321573 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 2

end

end A138894.P293992477377236559

namespace A138894

/-- `A321573(Δ[n²])/2` -/
def P293992477377236559.Spec : Prop :=
  ∀ n, P293992477377236559.a n = (A138894 n : ℚ)

end A138894

/-! ## A138894.P9084511288179320593

`A081250(Δ[n²])/3`
-/

namespace A138894.P9084511288179320593
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A081250 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 3

end

end A138894.P9084511288179320593

namespace A138894

/-- `A081250(Δ[n²])/3` -/
def P9084511288179320593.Spec : Prop :=
  ∀ n, P9084511288179320593.a n = (A138894 n : ℚ)

end A138894

/-! ## A138894.P8320969029719538723

`A135522(Δ[n²])/3`
-/

namespace A138894.P8320969029719538723
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A135522 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 3

end

end A138894.P8320969029719538723

namespace A138894

/-- `A135522(Δ[n²])/3` -/
def P8320969029719538723.Spec : Prop :=
  ∀ n, P8320969029719538723.a n = (A138894 n : ℚ)

end A138894

/-! ## A138894.P10697945235456375701

`A297444(Δ[n²])/3`
-/

namespace A138894.P10697945235456375701
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A297444 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 3

end

end A138894.P10697945235456375701

namespace A138894

/-- `A297444(Δ[n²])/3` -/
def P10697945235456375701.Spec : Prop :=
  ∀ n, P10697945235456375701.a n = (A138894 n : ℚ)

end A138894

/-!
# A138895: Triangle read by rows: T(n,k) = A092892(n-k) for 0 <= k <= n.

The programs for A138895, there is no canonical definition to state claims against.
-/

/-! ## A138895.P6263948129505686027

`A092892(row(n)-col(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A138895.P6263948129505686027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092892 (SequenceMachineLib.triRow n - SequenceMachineLib.triCol n)

end

end A138895.P6263948129505686027

/-! ## A138895.P3159806590893864786

`A092892(row(n)+1-(col(n)+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A138895.P3159806590893864786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092892 (SequenceMachineLib.triRow n + 1 - (SequenceMachineLib.triCol n + 1))

end

end A138895.P3159806590893864786

/-! ## A138895.P12142224266501969731

`A092892(C(comp[∑[n]]-n, 2)-(n+1))`
-/

namespace A138895.P12142224266501969731
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092892 (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 - (n + 1))

end

end A138895.P12142224266501969731

/-! ## A138895.P4664879787284627310

`A092892(C(comp[∑[n]]-n, 2)-n-1)`
-/

namespace A138895.P4664879787284627310
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092892 ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ) - 1).toNat

end

end A138895.P4664879787284627310

/-! ## A138895.P9097053383232588962

`A092892(A025581(n))`
-/

namespace A138895.P9097053383232588962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092892 (A025581 n).toNat

end

end A138895.P9097053383232588962

/-! ## A138895.P18218930110432243025

`A092892(log2(A130321(n)))`
-/

namespace A138895.P18218930110432243025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092892 (SequenceMachineLib.roundAway (Real.logb 2 (A130321 n : ℝ))).toNat

end

end A138895.P18218930110432243025

/-! ## A138895.P1129822051216180052

`A092892(val(A036561(n), 2))`
-/

namespace A138895.P1129822051216180052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092892 (SequenceMachineLib.valuation (A036561 n).toNat 2)

end

end A138895.P1129822051216180052

/-! ## A138895.P6280599323769474748

`A092892(A004736(n+1)-1)`
-/

namespace A138895.P6280599323769474748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092892 (A004736 (n + 1) - 1).toNat

end

end A138895.P6280599323769474748

/-! ## A138895.P15594623872762563857

`A092892(A006667(A354236(n+1)))`
-/

namespace A138895.P15594623872762563857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092892 (A006667 (A354236 (n + 1)).toNat).toNat

end

end A138895.P15594623872762563857

/-!
# A138896: Ratio of (2n-1)! to number of zeros in Sylvester matrix of polynomial of n degree with all nonzero coefficients.

The programs for A138896, the canonical program `A138896.P2186995827099234816` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A138896 has offset 2).

The definition of A138896 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A138896.P2186995827099234816

`(2*(n+2)-1)!/(2*(n+1)²)`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A138896

/-- `(2*(n+2)-1)!/(2*(n+1)²)` -/
def P2186995827099234816.Spec : Prop :=
  ∀ n, P2186995827099234816.a n = (A138896 (n + 2) : ℚ)

end A138896

/-! ## A138896.P9496973314910235840

`(1/(n+1)+2)*(2*n+1)!`
-/

namespace A138896.P9496973314910235840
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 / (n + 1 : ℚ) + 2) * (Nat.factorial (2 * n + 1) : ℚ)

end

end A138896.P9496973314910235840

namespace A138896

/-- `(1/(n+1)+2)*(2*n+1)!` -/
def P9496973314910235840.Spec : Prop :=
  ∀ n, P9496973314910235840.a n = (A138896 (n + 2) : ℚ)

end A138896

/-! ## A138896.P10610241327340394080

`(2*n+3)*A110468(n)`
-/

namespace A138896.P10610241327340394080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 3 : ℤ) * A110468 n

end

end A138896.P10610241327340394080

namespace A138896

/-- `(2*n+3)*A110468(n)` -/
def P10610241327340394080.Spec : Prop :=
  ∀ n, P10610241327340394080.a n = A138896 (n + 2)

end A138896

/-! ## A138896.P2231840520361770622

`(2*n+3)*A107991(2*(n+1))`
-/

namespace A138896.P2231840520361770622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 3 : ℤ) * A107991 (2 * (n + 1))

end

end A138896.P2231840520361770622

namespace A138896

/-- `(2*n+3)*A107991(2*(n+1))` -/
def P2231840520361770622.Spec : Prop :=
  ∀ n, P2231840520361770622.a n = A138896 (n + 2)

end A138896

/-! ## A138896.P12568571296123783730

`(2*n+3)*A256881(2*n+1)`
-/

namespace A138896.P12568571296123783730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 3 : ℤ) * A256881 (2 * n + 1)

end

end A138896.P12568571296123783730

namespace A138896

/-- `(2*n+3)*A256881(2*n+1)` -/
def P12568571296123783730.Spec : Prop :=
  ∀ n, P12568571296123783730.a n = A138896 (n + 2)

end A138896

/-!
# A138897: Ratio of (2n-1)! to number of zeros in upper part of Sylvester matrix of polynomial of degree n with all nonzero coefficients.

The programs for A138897, the canonical program `A138897.P17711271565174467471` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A138897 has offset 2).

The definition of A138897 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A138897.P17711271565174467471

`(2*(n+2)-1)!/((n+2)*(n+1))`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A138897

/-- `(2*(n+2)-1)!/((n+2)*(n+1))` -/
def P17711271565174467471.Spec : Prop :=
  ∀ n, P17711271565174467471.a n = (A138897 (n + 2) : ℚ)

end A138897

/-! ## A138897.P7453271879739416160

`(4-2/(n+2))*(2*n+1)!`
-/

namespace A138897.P7453271879739416160
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 - 2 / (n + 2 : ℚ)) * (Nat.factorial (2 * n + 1) : ℚ)

end

end A138897.P7453271879739416160

namespace A138897

/-- `(4-2/(n+2))*(2*n+1)!` -/
def P7453271879739416160.Spec : Prop :=
  ∀ n, P7453271879739416160.a n = (A138897 (n + 2) : ℚ)

end A138897

/-! ## A138897.P17666730544634193721

`A277876(2*n+3)`
-/

namespace A138897.P17666730544634193721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277876 (2 * n + 3)

end

end A138897.P17666730544634193721

namespace A138897

/-- `A277876(2*n+3)` -/
def P17666730544634193721.Spec : Prop :=
  ∀ n, P17666730544634193721.a n = A138897 (n + 2)

end A138897

/-! ## A138897.P9967433584147763452

`A001700(n+1)*A010790(n)`
-/

namespace A138897.P9967433584147763452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001700 (n + 1) * A010790 n

end

end A138897.P9967433584147763452

namespace A138897

/-- `A001700(n+1)*A010790(n)` -/
def P9967433584147763452.Spec : Prop :=
  ∀ n, P9967433584147763452.a n = A138897 (n + 2)

end A138897

/-! ## A138897.P1416105648725638255

`A000142(n)*A006963(n+3)`
-/

namespace A138897.P1416105648725638255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A006963 (n + 3)

end

end A138897.P1416105648725638255

namespace A138897

/-- `A000142(n)*A006963(n+3)` -/
def P1416105648725638255.Spec : Prop :=
  ∀ n, P1416105648725638255.a n = A138897 (n + 2)

end A138897

/-!
# A138898: Ratio of (2*n-1)! to number of zeros in lower part of Sylvester matrix for polynomial of degree n with all nonzero coefficients.

The programs for A138898, the canonical program `A138898.P16647028324049678695` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A138898 has offset 3).

The definition of A138898 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A138898.P16647028324049678695

`(2*(n+3)-1)!/((n+2)*(n+1))`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A138898

/-- `(2*(n+3)-1)!/((n+2)*(n+1))` -/
def P16647028324049678695.Spec : Prop :=
  ∀ n, P16647028324049678695.a n = (A138898 (n + 3) : ℚ)

end A138898

/-! ## A138898.P15685340130927817359

`n!*A000407(n+2)`
-/

namespace A138898.P15685340130927817359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A000407 (n + 2)

end

end A138898.P15685340130927817359

namespace A138898

/-- `n!*A000407(n+2)` -/
def P15685340130927817359.Spec : Prop :=
  ∀ n, P15685340130927817359.a n = A138898 (n + 3)

end A138898

/-! ## A138898.P5706027199746911220

`(2*(n+2)+1)*A004277(n)*a(n-1)` with `a(0)=60`
-/

namespace A138898.P5706027199746911220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [60] fun n a =>
  (2 * (n + 2) + 1 : ℤ) * A004277 n * a (n - 1)

end

end A138898.P5706027199746911220

namespace A138898

/-- `(2*(n+2)+1)*A004277(n)*a(n-1)` -/
def P5706027199746911220.Spec : Prop :=
  ∀ n, P5706027199746911220.a n = A138898 (n + 3)

end A138898

/-! ## A138898.P6211402629607762223

`A000142(n)*A000407(n+2)`
-/

namespace A138898.P6211402629607762223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A000407 (n + 2)

end

end A138898.P6211402629607762223

namespace A138898

/-- `A000142(n)*A000407(n+2)` -/
def P6211402629607762223.Spec : Prop :=
  ∀ n, P6211402629607762223.a n = A138898 (n + 3)

end A138898

/-! ## A138898.P5517360113135677809

`A000407(n+2)*A072346(2*n)`
-/

namespace A138898.P5517360113135677809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000407 (n + 2) * A072346 (2 * n)

end

end A138898.P5517360113135677809

namespace A138898

/-- `A000407(n+2)*A072346(2*n)` -/
def P5517360113135677809.Spec : Prop :=
  ∀ n, P5517360113135677809.a n = A138898 (n + 3)

end A138898

/-!
# A138899: First term of the first run of at least n consecutive numbers in A136110.

The programs for A138899, there is no canonical definition to state claims against.
-/

/-! ## A138899.P17779812551172192505

`A146309(A172030(n))`
-/

namespace A138899.P17779812551172192505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146309 (A172030 n).toNat

end

end A138899.P17779812551172192505

