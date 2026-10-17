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
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C032
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
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
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
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
import Seq.Opaque.C023
import Seq.Opaque.C024
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A276201: Largest prime < A019518(n).

The programs for A276201, there is no canonical definition to state claims against.
-/

/-! ## A276201.P3529035166257372484

`A074366(n+2)-A104645(n+2)`
-/

namespace A276201.P3529035166257372484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074366 (n + 2) - A104645 (n + 2)

end

end A276201.P3529035166257372484

/-!
# A276204: a(0) = a(1) = 0. For n>1 a(n) is the smallest nonnegative integer such that there is no arithmetic progression k,m,n (of length 3) such that a(k)+a(m) = a(n).

The programs for A276204, there is no canonical definition to state claims against.
-/

/-! ## A276204.P10787601908240353964

`A001222(2^A173722(A343026(n+1)))`
-/

namespace A276204.P10787601908240353964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A173722 (A343026 (n + 1)).toNat : ℤ))).toNat

end

end A276204.P10787601908240353964

/-! ## A276204.P2131142181576127541

`∑{e}[A122553(n)^A173722(A343026(n+1)), #]`
-/

namespace A276204.P2131142181576127541
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A122553 n : ℚ) ^ (A173722 (A343026 (n + 1)).toNat : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, Nat.factorization (SequenceMachineLib.roundAway (f1 n)).natAbs p

end

end A276204.P2131142181576127541

/-! ## A276204.P5355082325209157195

`A323162(A323177(2*n+3))+A173722(A343026(n+1))`
-/

namespace A276204.P5355082325209157195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323162 (A323177 (2 * n + 3)).toNat + A173722 (A343026 (n + 1)).toNat

end

end A276204.P5355082325209157195

/-! ## A276204.P4025790476909177441

`A173722(A343026(n+1))%A023193(A244207(n+1)+1)`
-/

namespace A276204.P4025790476909177441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A173722 (A343026 (n + 1)).toNat) (A023193 (A244207 (n + 1) + 1).toNat)

end

end A276204.P4025790476909177441

/-! ## A276204.P5454249570786912755

`A173722(A343026(n+1))%A196456(n+1)`
-/

namespace A276204.P5454249570786912755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A173722 (A343026 (n + 1)).toNat) (A196456 (n + 1))

end

end A276204.P5454249570786912755

/-! ## A276204.P1324906034837291008

`A173722(A343026(n+1))%A167499(A072405(n))`
-/

namespace A276204.P1324906034837291008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A173722 (A343026 (n + 1)).toNat) (A167499 (A072405 n).toNat)

end

end A276204.P1324906034837291008

/-! ## A276204.P2865031250166955613

`A304273(A152865(n+1)+1)!*A173722(A343026(n+1))`
-/

namespace A276204.P2865031250166955613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A304273 (A152865 (n + 1) + 1).toNat).toNat : ℤ) * A173722 (A343026 (n + 1)).toNat

end

end A276204.P2865031250166955613

/-! ## A276204.P16511250752823932722

`A046951(A154551(n+1))*A173722(A343026(n+1))`
-/

namespace A276204.P16511250752823932722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046951 (A154551 (n + 1)).toNat * A173722 (A343026 (n + 1)).toNat

end

end A276204.P16511250752823932722

/-! ## A276204.P6684074146383838519

`A014963(A181924(n+1))*A173722(A343026(n+1))`
-/

namespace A276204.P6684074146383838519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A181924 (n + 1)).toNat * A173722 (A343026 (n + 1)).toNat

end

end A276204.P6684074146383838519

/-! ## A276204.P5728243879549519762

`A173722(A343026(n+1)%A005408(A000217(n)))`
-/

namespace A276204.P5728243879549519762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173722 (Int.tmod (A343026 (n + 1)) (A005408 (A000217 n).toNat)).toNat

end

end A276204.P5728243879549519762

/-! ## A276204.P13034130016098336602

`A173722(A343026(n+1))+A000038(A075346(n+1))`
-/

namespace A276204.P13034130016098336602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173722 (A343026 (n + 1)).toNat + A000038 (A075346 (n + 1)).toNat

end

end A276204.P13034130016098336602

/-! ## A276204.P3890009393050458211

`A173722(A343026(n+1))+A000038(A075347(n+1))`
-/

namespace A276204.P3890009393050458211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173722 (A343026 (n + 1)).toNat + A000038 (A075347 (n + 1)).toNat

end

end A276204.P3890009393050458211

/-! ## A276204.P2624552594477372073

`A173722(A343026(n+1))+A000038(A046691(n)+7)`
-/

namespace A276204.P2624552594477372073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173722 (A343026 (n + 1)).toNat + A000038 (A046691 n + 7).toNat

end

end A276204.P2624552594477372073

/-! ## A276204.P13801069486779772497

`A173722(A343026(n+1))+A000038(A055998(n+4))`
-/

namespace A276204.P13801069486779772497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173722 (A343026 (n + 1)).toNat + A000038 (A055998 (n + 4)).toNat

end

end A276204.P13801069486779772497

/-!
# A276205: a(0) = a(2) = a(3) = 0. For n>2 a(n) is the smallest nonnegative integer such that there is no arithmetic progression j,k,m,n (of length 4) such that a(j)+a(k)+a(m) = a(n).

The programs for A276205, there is no canonical definition to state claims against.
-/

/-! ## A276205.P13951047318210859740

`A301999(n+1)%A117673(A240313(2*n+3))`
-/

namespace A276205.P13951047318210859740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A301999 (n + 1)) (A117673 (A240313 (2 * n + 3)).toNat)

end

end A276205.P13951047318210859740

/-! ## A276205.P9249339697675867440

`val(∑{d}[A061509(n+1), A007953(#)²], 2)`
-/

namespace A276205.P9249339697675867440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061509 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (∑ d ∈ Nat.divisors (f1 n).natAbs, A007953 d ^ 2).toNat 2

end

end A276205.P9249339697675867440

/-! ## A276205.P14700024206015297507

`A248639(n)+A003849(A000579(n))`
-/

namespace A276205.P14700024206015297507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248639 n + A003849 (A000579 n).toNat

end

end A276205.P14700024206015297507

/-! ## A276205.P7235351867583572426

`A211225(A213344(n+2)+A022423(n))`
-/

namespace A276205.P7235351867583572426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211225 (A213344 (n + 2) + A022423 n).toNat

end

end A276205.P7235351867583572426

/-! ## A276205.P18416883501464773641

`and(A002260(A045605(n+1)), A053188(n))`
-/

namespace A276205.P18416883501464773641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A002260 (A045605 (n + 1)).toNat) (A053188 n)

end

end A276205.P18416883501464773641

/-!
# A276206: a(0) = a(1) = a(2) = a(3) = 0. For n>3 a(n) is the smallest nonnegative integer such that there is no arithmetic progression i,j,k,m,n (of length 5) such that a(i)+a(j)+a(k)+a(m) = a(n).

The programs for A276206, there is no canonical definition to state claims against.
-/

/-! ## A276206.P8055099427879503092

`C(2, A133880(A046092(n+3)))`
-/

namespace A276206.P8055099427879503092
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A133880 (A046092 (n + 3)).toNat).toNat

end

end A276206.P8055099427879503092

/-! ## A276206.P11177860107188768129

`A067742(A194374(n+5)-A194374(n+1))`
-/

namespace A276206.P11177860107188768129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067742 (A194374 (n + 5) - A194374 (n + 1)).toNat

end

end A276206.P11177860107188768129

/-! ## A276206.P9812102542225688940

`and(A146447(n+1), A217619(n+1))`
-/

namespace A276206.P9812102542225688940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A146447 (n + 1)) (A217619 (n + 1))

end

end A276206.P9812102542225688940

/-!
# A276207: a(0) = a(1) = 0. For n>1 a(n) is the smallest nonnegative integer such that there is no arithmetic progression m_1,m_2,...,m_i,n (2<=i

The programs for A276207, there is no canonical definition to state claims against.
-/

/-! ## A276207.P12794673746081883128

`A083710(3*n+4)%A000030(A331452(2*n+5))`
-/

namespace A276207.P12794673746081883128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083710 (3 * n + 4)) (A000030 (A331452 (2 * n + 5)).toNat)

end

end A276207.P12794673746081883128

/-!
# A276208: Position of n! in the joint ranking of {2^h} and {k!}, where h >= 0, k >= 0.

The programs for A276208, the canonical program `A276208.P11970610108144692030` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A276208 has offset 1).

The definition of A276208 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A276208.P11970610108144692030

`A028310(A067850(n+1)+n)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A276208

/-- `A028310(A067850(n+1)+n)` -/
def P11970610108144692030.Spec : Prop :=
  ∀ n, P11970610108144692030.a n = A276208 (n + 1)

theorem P11970610108144692030.correct : P11970610108144692030.Spec := by
  intro n
  simp only [A276208, Nat.add_sub_cancel]

end A276208

/-! ## A276208.P1857252441236680325

`A123108(2*n)+A067850(n+1)`
-/

namespace A276208.P1857252441236680325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (2 * n) + A067850 (n + 1)

end

end A276208.P1857252441236680325

namespace A276208

/-- `A123108(2*n)+A067850(n+1)` -/
def P1857252441236680325.Spec : Prop :=
  ∀ n, P1857252441236680325.a n = A276208 (n + 1)

end A276208

/-! ## A276208.P16280027922332947232

`A000007(n)+A067850(n+1)+n`
-/

namespace A276208.P16280027922332947232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (A067850 (n + 1) + (n : ℤ))

end

end A276208.P16280027922332947232

namespace A276208

/-- `A000007(n)+A067850(n+1)+n` -/
def P16280027922332947232.Spec : Prop :=
  ∀ n, P16280027922332947232.a n = A276208 (n + 1)

end A276208

/-! ## A276208.P15322736132576514023

`∑[A003070(n+1)%A072831(n)+1]`
-/

namespace A276208.P15322736132576514023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003070 (n + 1)) (A072831 n) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A276208.P15322736132576514023

namespace A276208

/-- `∑[A003070(n+1)%A072831(n)+1]` -/
def P15322736132576514023.Spec : Prop :=
  ∀ n, P15322736132576514023.a n = A276208 (n + 1)

end A276208

/-! ## A276208.P6265737659150225462

`∑[A072831(n+1)%A072831(n)+1]`
-/

namespace A276208.P6265737659150225462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A072831 (n + 1)) (A072831 n) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A276208.P6265737659150225462

namespace A276208

/-- `∑[A072831(n+1)%A072831(n)+1]` -/
def P6265737659150225462.Spec : Prop :=
  ∀ n, P6265737659150225462.a n = A276208 (n + 1)

end A276208

/-! ## A276208.P8110359694346599292

`A065033(2*n)+A072831(n+1)-1`
-/

namespace A276208.P8110359694346599292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (2 * n) + (A072831 (n + 1) - 1)

end

end A276208.P8110359694346599292

namespace A276208

/-- `A065033(2*n)+A072831(n+1)-1` -/
def P8110359694346599292.Spec : Prop :=
  ∀ n, P8110359694346599292.a n = A276208 (n + 1)

end A276208

/-! ## A276208.P2513319835474781364

`A123108(2*n)+A072831(n+1)-1`
-/

namespace A276208.P2513319835474781364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (2 * n) + (A072831 (n + 1) - 1)

end

end A276208.P2513319835474781364

namespace A276208

/-- `A123108(2*n)+A072831(n+1)-1` -/
def P2513319835474781364.Spec : Prop :=
  ∀ n, P2513319835474781364.a n = A276208 (n + 1)

end A276208

/-! ## A276208.P3394735996198582715

`A028310(2*n)+A072831(n+1)-(n+1)`
-/

namespace A276208.P3394735996198582715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (2 * n) + (A072831 (n + 1) - (n + 1 : ℤ))

end

end A276208.P3394735996198582715

namespace A276208

/-- `A028310(2*n)+A072831(n+1)-(n+1)` -/
def P3394735996198582715.Spec : Prop :=
  ∀ n, P3394735996198582715.a n = A276208 (n + 1)

end A276208

/-! ## A276208.P10069515158859526797

`A003070(n+1)-(A067850(n)-a(n-1))` with `a(0)=1`
-/

namespace A276208.P10069515158859526797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A003070 (n + 1) - (A067850 n - a (n - 1))

end

end A276208.P10069515158859526797

namespace A276208

/-- `A003070(n+1)-(A067850(n)-a(n-1))` -/
def P10069515158859526797.Spec : Prop :=
  ∀ n, P10069515158859526797.a n = A276208 (n + 1)

end A276208

/-! ## A276208.P516873018705734132

`A067850(A269225(A003070(n)))+n`
-/

namespace A276208.P516873018705734132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067850 (A269225 (A003070 n).toNat).toNat + (n : ℤ)

end

end A276208.P516873018705734132

namespace A276208

/-- `A067850(A269225(A003070(n)))+n` -/
def P516873018705734132.Spec : Prop :=
  ∀ n, P516873018705734132.a n = A276208 (n + 1)

end A276208

/-! ## A276208.P11069459646343698565

`A067850(n+1)+A008683(A004011(n))+n`
-/

namespace A276208.P11069459646343698565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067850 (n + 1) + (A008683 (A004011 n).toNat + (n : ℤ))

end

end A276208.P11069459646343698565

namespace A276208

/-- `A067850(n+1)+A008683(A004011(n))+n` -/
def P11069459646343698565.Spec : Prop :=
  ∀ n, P11069459646343698565.a n = A276208 (n + 1)

end A276208

/-!
# A276209: Position of n^s in the joint ranking of {h^r} and {k^s}, where r = sqrt(2), s = sqrt(3), h > 1, k > 1.

The programs for A276209, the canonical program `A276209.P18077373947549744823` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A276209 has offset 1).

The definition of A276209 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A276209.P18077373947549744823

`floor((n+2)^sqrt(3/2)+n)`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A276209

/-- `floor((n+2)^sqrt(3/2)+n)` -/
def P18077373947549744823.Spec : Prop :=
  ∀ n, P18077373947549744823.a n = A276209 (n + 1)

theorem P18077373947549744823.correct : P18077373947549744823.Spec := by
  intro n
  simp only [A276209, Nat.add_sub_cancel]

end A276209

/-! ## A276209.P15782338733325750037

`record[Δ[(A276210(n+1)/2)²]]`
-/

namespace A276209.P15782338733325750037
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A276210 (n + 1) : ℚ) / 2) ^ 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A276209.P15782338733325750037

namespace A276209

/-- `record[Δ[(A276210(n+1)/2)²]]` -/
def P15782338733325750037.Spec : Prop :=
  ∀ n, P15782338733325750037.a n = (A276209 (n + 1) : ℚ)

end A276209

/-! ## A276209.P7289534171005660234

`record[Δ[A002620(A276210(n+1))]]`
-/

namespace A276209.P7289534171005660234
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (A276210 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A276209.P7289534171005660234

namespace A276209

/-- `record[Δ[A002620(A276210(n+1))]]` -/
def P7289534171005660234.Spec : Prop :=
  ∀ n, P7289534171005660234.a n = A276209 (n + 1)

end A276209

/-! ## A276209.P5322782969092437751

`eq[char[A276210(n+1)], A000007(n)]`
-/

namespace A276209.P5322782969092437751
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276210 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A276209.P5322782969092437751

namespace A276209

/-- `eq[char[A276210(n+1)], A000007(n)]` -/
def P5322782969092437751.Spec : Prop :=
  ∀ n, (P5322782969092437751.a n : ℤ) = A276209 (n + 1)

end A276209

/-! ## A276209.P11685888974903885439

`eq[char[A276210(n+1)], A000038(n)]`
-/

namespace A276209.P11685888974903885439
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276210 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A276209.P11685888974903885439

namespace A276209

/-- `eq[char[A276210(n+1)], A000038(n)]` -/
def P11685888974903885439.Spec : Prop :=
  ∀ n, (P11685888974903885439.a n : ℤ) = A276209 (n + 1)

end A276209

/-!
# A276210: Position of n^r in the joint ranking of {h^r} and {k^s}, where r = sqrt(2), s = sqrt(3), h > 1, k > 1.

The programs for A276210, the canonical program `A276210.P11801850852272296593` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A276210 has offset 1).

The definition of A276210 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A276210.P11801850852272296593

`floor((n+2)^sqrt(2/3)+n)`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A276210

/-- `floor((n+2)^sqrt(2/3)+n)` -/
def P11801850852272296593.Spec : Prop :=
  ∀ n, P11801850852272296593.a n = A276210 (n + 1)

theorem P11801850852272296593.correct : P11801850852272296593.Spec := by
  intro n
  simp only [A276210, Nat.add_sub_cancel]

end A276210

/-! ## A276210.P5518909883490120139

`lt[n*char[A276209(n+1)], n]`
-/

namespace A276210.P5518909883490120139
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276209 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (if ∃ j, f2 j = (n : ℤ) then 1 else 0)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A276210.P5518909883490120139

namespace A276210

/-- `lt[n*char[A276209(n+1)], n]` -/
def P5518909883490120139.Spec : Prop :=
  ∀ n, (P5518909883490120139.a n : ℤ) = A276210 (n + 1)

end A276210

/-! ## A276210.P11362625587400978847

`eq[char[A276209(n+1)], A000007(n)]`
-/

namespace A276210.P11362625587400978847
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276209 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A276210.P11362625587400978847

namespace A276210

/-- `eq[char[A276209(n+1)], A000007(n)]` -/
def P11362625587400978847.Spec : Prop :=
  ∀ n, (P11362625587400978847.a n : ℤ) = A276210 (n + 1)

end A276210

/-! ## A276210.P6888895810180313632

`eq[char[A276209(n+1)], A000038(n)]`
-/

namespace A276210.P6888895810180313632
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276209 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A276210.P6888895810180313632

namespace A276210

/-- `eq[char[A276209(n+1)], A000038(n)]` -/
def P6888895810180313632.Spec : Prop :=
  ∀ n, (P6888895810180313632.a n : ℤ) = A276210 (n + 1)

end A276210

/-! ## A276210.P13453793474819607833

`A048766(∑[A256343(n+1)])+n`
-/

namespace A276210.P13453793474819607833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256343 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + (n : ℤ)

end

end A276210.P13453793474819607833

namespace A276210

/-- `A048766(∑[A256343(n+1)])+n` -/
def P13453793474819607833.Spec : Prop :=
  ∀ n, P13453793474819607833.a n = A276210 (n + 1)

end A276210

/-!
# A276211: Position of n^s in the joint ranking of {h^r} and {k^s}, where r = sqrt(2), s = sqrt(5), h > 1, k > 1.

The programs for A276211, the canonical program `A276211.P2284536178720081386` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A276211 has offset 1).

The definition of A276211 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A276211.P2284536178720081386

`floor((n+2)^sqrt(1/2+2)+n)`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A276211

/-- `floor((n+2)^sqrt(1/2+2)+n)` -/
def P2284536178720081386.Spec : Prop :=
  ∀ n, P2284536178720081386.a n = A276211 (n + 1)

theorem P2284536178720081386.correct : P2284536178720081386.Spec := by
  intro n
  simp only [A276211, Nat.add_sub_cancel]

end A276211

/-! ## A276211.P6801017599882382118

`∑[round(sqrt(A360374(2*n+3)))]`
-/

namespace A276211.P6801017599882382118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A360374 (2 * n + 3) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A276211.P6801017599882382118

namespace A276211

/-- `∑[round(sqrt(A360374(2*n+3)))]` -/
def P6801017599882382118.Spec : Prop :=
  ∀ n, P6801017599882382118.a n = A276211 (n + 1)

end A276211

/-! ## A276211.P18393177495363241369

`∑[A034463(A286991(n+2)+A097065(n+1)+1)]`
-/

namespace A276211.P18393177495363241369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034463 (A286991 (n + 2) + A097065 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A276211.P18393177495363241369

namespace A276211

/-- `∑[A034463(A286991(n+2)+A097065(n+1)+1)]` -/
def P18393177495363241369.Spec : Prop :=
  ∀ n, P18393177495363241369.a n = A276211 (n + 1)

end A276211

/-! ## A276211.P5655770896825154625

`∑[A067693(A168410(n+1))]`
-/

namespace A276211.P5655770896825154625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067693 (A168410 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A276211.P5655770896825154625

namespace A276211

/-- `∑[A067693(A168410(n+1))]` -/
def P5655770896825154625.Spec : Prop :=
  ∀ n, P5655770896825154625.a n = A276211 (n + 1)

end A276211

/-! ## A276211.P11583085626697535444

`A027434(∑[A249595((n+1)²)])`
-/

namespace A276211.P11583085626697535444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249595 ((n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027434 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A276211.P11583085626697535444

namespace A276211

/-- `A027434(∑[A249595((n+1)²)])` -/
def P11583085626697535444.Spec : Prop :=
  ∀ n, P11583085626697535444.a n = A276211 (n + 1)

end A276211

/-!
# A276212: Position of n^r in the joint ranking of {h^r} and {k^s}, where r = sqrt(2), s = sqrt(5), h > 1, k > 1.

The programs for A276212, the canonical program `A276212.P11724484842553908528` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A276212 has offset 1).

The definition of A276212 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A276212.P11724484842553908528

`comp[floor((n+2)^sqrt(1/2+2)+n)-1]+1`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A276212

/-- `comp[floor((n+2)^sqrt(1/2+2)+n)-1]+1` -/
def P11724484842553908528.Spec : Prop :=
  ∀ n, (P11724484842553908528.a n : ℤ) = A276212 (n + 1)

theorem P11724484842553908528.correct : P11724484842553908528.Spec := by
  intro n
  simp only [A276212, Nat.add_sub_cancel]

end A276212

/-! ## A276212.P1326498740771815407

`comp[∪[1-A000079(n), A276211(n+1)]]`
-/

namespace A276212.P1326498740771815407
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A000079 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276211 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A276212.P1326498740771815407

namespace A276212

/-- `comp[∪[1-A000079(n), A276211(n+1)]]` -/
def P1326498740771815407.Spec : Prop :=
  ∀ n, (P1326498740771815407.a n : ℤ) = A276212 (n + 1)

end A276212

/-! ## A276212.P2588163901275751296

`comp[∪[1-A250120(n), A276211(n+1)]]`
-/

namespace A276212.P2588163901275751296
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A250120 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276211 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A276212.P2588163901275751296

namespace A276212

/-- `comp[∪[1-A250120(n), A276211(n+1)]]` -/
def P2588163901275751296.Spec : Prop :=
  ∀ n, (P2588163901275751296.a n : ℤ) = A276212 (n + 1)

end A276212

/-! ## A276212.P2649457049100396488

`comp[∪[n-A147614(n), A276211(n+1)]]`
-/

namespace A276212.P2649457049100396488
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A147614 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276211 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A276212.P2649457049100396488

namespace A276212

/-- `comp[∪[n-A147614(n), A276211(n+1)]]` -/
def P2649457049100396488.Spec : Prop :=
  ∀ n, (P2649457049100396488.a n : ℤ) = A276212 (n + 1)

end A276212

/-! ## A276212.P3790835283867806837

`A003056(∑[A198466(n+1)+A023443(n)])`
-/

namespace A276212.P3790835283867806837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198466 (n + 1) + A023443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A276212.P3790835283867806837

namespace A276212

/-- `A003056(∑[A198466(n+1)+A023443(n)])` -/
def P3790835283867806837.Spec : Prop :=
  ∀ n, P3790835283867806837.a n = A276212 (n + 1)

end A276212

/-! ## A276212.P722819425370560092

`A003056(∑[A198454(n+1)+n])`
-/

namespace A276212.P722819425370560092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198454 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A276212.P722819425370560092

namespace A276212

/-- `A003056(∑[A198454(n+1)+n])` -/
def P722819425370560092.Spec : Prop :=
  ∀ n, P722819425370560092.a n = A276212 (n + 1)

end A276212

/-! ## A276212.P4811036933913985110

`∑[A000034(A100071(A219659(n)))]`
-/

namespace A276212.P4811036933913985110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A100071 (A219659 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A276212.P4811036933913985110

namespace A276212

/-- `∑[A000034(A100071(A219659(n)))]` -/
def P4811036933913985110.Spec : Prop :=
  ∀ n, P4811036933913985110.a n = A276212 (n + 1)

end A276212

/-!
# A276213: Position of n^s in the joint ranking of {h^r} and {k^s}, where r = sqrt(3), s = sqrt(5), h > 1, k > 1.

The programs for A276213, the canonical program `A276213.P6916311759912122123` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A276213 has offset 1).

The definition of A276213 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A276213.P6916311759912122123

`floor((n+2)^sqrt(2/3+1)+n)`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A276213

/-- `floor((n+2)^sqrt(2/3+1)+n)` -/
def P6916311759912122123.Spec : Prop :=
  ∀ n, P6916311759912122123.a n = A276213 (n + 1)

theorem P6916311759912122123.correct : P6916311759912122123.Spec := by
  intro n
  simp only [A276213, Nat.add_sub_cancel]

end A276213

/-! ## A276213.P1046609464201889677

`record[Δ[(A276214(n+1)/2)²]]`
-/

namespace A276213.P1046609464201889677
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A276214 (n + 1) : ℚ) / 2) ^ 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A276213.P1046609464201889677

namespace A276213

/-- `record[Δ[(A276214(n+1)/2)²]]` -/
def P1046609464201889677.Spec : Prop :=
  ∀ n, P1046609464201889677.a n = (A276213 (n + 1) : ℚ)

end A276213

/-! ## A276213.P9895124903928789355

`record[Δ[A033638(A276214(n+1))]]`
-/

namespace A276213.P9895124903928789355
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033638 (A276214 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A276213.P9895124903928789355

namespace A276213

/-- `record[Δ[A033638(A276214(n+1))]]` -/
def P9895124903928789355.Spec : Prop :=
  ∀ n, P9895124903928789355.a n = A276213 (n + 1)

end A276213

/-! ## A276213.P9490781918524572794

`eq[char[A276214(n+1)], A151909(n)]`
-/

namespace A276213.P9490781918524572794
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276214 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151909 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A276213.P9490781918524572794

namespace A276213

/-- `eq[char[A276214(n+1)], A151909(n)]` -/
def P9490781918524572794.Spec : Prop :=
  ∀ n, (P9490781918524572794.a n : ℤ) = A276213 (n + 1)

end A276213

/-! ## A276213.P14396114635159207342

`A136002(3*n+1)+A010054(A038754(n+2))`
-/

namespace A276213.P14396114635159207342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136002 (3 * n + 1) + A010054 (A038754 (n + 2)).toNat

end

end A276213.P14396114635159207342

namespace A276213

/-- `A136002(3*n+1)+A010054(A038754(n+2))` -/
def P14396114635159207342.Spec : Prop :=
  ∀ n, P14396114635159207342.a n = A276213 (n + 1)

end A276213

/-!
# A276214: Position of n^r in the joint ranking of {h^r} and {k^s}, where r = sqrt(3), s = sqrt(5), h > 1, k > 1.

The programs for A276214, the canonical program `A276214.P18298263664098779686` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A276214 has offset 1).

The definition of A276214 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A276214.P18298263664098779686

`eq[char[A276213(n+1)], A000007(n)]`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A276214

/-- `eq[char[A276213(n+1)], A000007(n)]` -/
def P18298263664098779686.Spec : Prop :=
  ∀ n, (P18298263664098779686.a n : ℤ) = A276214 (n + 1)

theorem P18298263664098779686.correct : P18298263664098779686.Spec := by
  intro n
  simp only [A276214, Nat.add_sub_cancel]

end A276214

/-! ## A276214.P16646050374706680184

`eq[char[A276213(n+1)], A000038(n)]`
-/

namespace A276214.P16646050374706680184
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276213 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A276214.P16646050374706680184

namespace A276214

/-- `eq[char[A276213(n+1)], A000038(n)]` -/
def P16646050374706680184.Spec : Prop :=
  ∀ n, (P16646050374706680184.a n : ℤ) = A276214 (n + 1)

end A276214

/-! ## A276214.P3024778528862331697

`eq[char[A276213(n+1)], A084099(2*n)]`
-/

namespace A276214.P3024778528862331697
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276213 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084099 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A276214.P3024778528862331697

namespace A276214

/-- `eq[char[A276213(n+1)], A084099(2*n)]` -/
def P3024778528862331697.Spec : Prop :=
  ∀ n, (P3024778528862331697.a n : ℤ) = A276214 (n + 1)

end A276214

/-! ## A276214.P2593381670659534765

`eq[char[A276213(n+1)], A341629(2*n+1)]`
-/

namespace A276214.P2593381670659534765
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276213 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341629 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A276214.P2593381670659534765

namespace A276214

/-- `eq[char[A276213(n+1)], A341629(2*n+1)]` -/
def P2593381670659534765.Spec : Prop :=
  ∀ n, (P2593381670659534765.a n : ℤ) = A276214 (n + 1)

end A276214

/-!
# A276215: Position of n^s in the joint ranking of {h^r} and {k^s}, where r = sqrt(2), s = sqrt(6), h > 1, k > 1.

The programs for A276215, the canonical program `A276215.P14108898554922476101` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A276215 has offset 1).

The definition of A276215 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A276215.P14108898554922476101

`floor((n+2)^sqrt(3)+n)`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A276215

/-- `floor((n+2)^sqrt(3)+n)` -/
def P14108898554922476101.Spec : Prop :=
  ∀ n, P14108898554922476101.a n = A276215 (n + 1)

theorem P14108898554922476101.correct : P14108898554922476101.Spec := by
  intro n
  simp only [A276215, Nat.add_sub_cancel]

end A276215

/-! ## A276215.P689727162195109766

`A276221(n+1)-1`
-/

namespace A276215.P689727162195109766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276221 (n + 1) - 1

end

end A276215.P689727162195109766

namespace A276215

/-- `A276221(n+1)-1` -/
def P689727162195109766.Spec : Prop :=
  ∀ n, P689727162195109766.a n = A276215 (n + 1)

end A276215

/-! ## A276215.P5991784157624270721

`abs(A276221(n+1)+A033999(2*n+1))`
-/

namespace A276215.P5991784157624270721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A276221 (n + 1) + A033999 (2 * n + 1)|

end

end A276215.P5991784157624270721

namespace A276215

/-- `abs(A276221(n+1)+A033999(2*n+1))` -/
def P5991784157624270721.Spec : Prop :=
  ∀ n, P5991784157624270721.a n = A276215 (n + 1)

end A276215

/-! ## A276215.P13957140217027639015

`abs(A276221(n+1)+A133574(A001316(n)))`
-/

namespace A276215.P13957140217027639015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A276221 (n + 1) + A133574 (A001316 n).toNat|

end

end A276215.P13957140217027639015

namespace A276215

/-- `abs(A276221(n+1)+A133574(A001316(n)))` -/
def P13957140217027639015.Spec : Prop :=
  ∀ n, P13957140217027639015.a n = A276215 (n + 1)

end A276215

/-! ## A276215.P8427042963322137418

`A321800(A003434(n+1))+A276221(n+1)`
-/

namespace A276215.P8427042963322137418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321800 (A003434 (n + 1)).toNat + A276221 (n + 1)

end

end A276215.P8427042963322137418

namespace A276215

/-- `A321800(A003434(n+1))+A276221(n+1)` -/
def P8427042963322137418.Spec : Prop :=
  ∀ n, P8427042963322137418.a n = A276215 (n + 1)

end A276215

/-! ## A276215.P8121766057250761566

`A023443(A276221(n+1))`
-/

namespace A276215.P8121766057250761566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A276221 (n + 1)).toNat

end

end A276215.P8121766057250761566

namespace A276215

/-- `A023443(A276221(n+1))` -/
def P8121766057250761566.Spec : Prop :=
  ∀ n, P8121766057250761566.a n = A276215 (n + 1)

end A276215

/-! ## A276215.P16809533283683892223

`A023444(A276221(n+1)+1)`
-/

namespace A276215.P16809533283683892223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A276221 (n + 1) + 1).toNat

end

end A276215.P16809533283683892223

namespace A276215

/-- `A023444(A276221(n+1)+1)` -/
def P16809533283683892223.Spec : Prop :=
  ∀ n, P16809533283683892223.a n = A276215 (n + 1)

end A276215

/-! ## A276215.P2657192824176140839

`A289207(A276221(n+1)+1)`
-/

namespace A276215.P2657192824176140839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A276221 (n + 1) + 1).toNat

end

end A276215.P2657192824176140839

namespace A276215

/-- `A289207(A276221(n+1)+1)` -/
def P2657192824176140839.Spec : Prop :=
  ∀ n, P2657192824176140839.a n = A276215 (n + 1)

end A276215

/-! ## A276215.P18095373290860172785

`A325142(A151878(n))+A276221(n+1)`
-/

namespace A276215.P18095373290860172785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325142 (A151878 n).toNat + A276221 (n + 1)

end

end A276215.P18095373290860172785

namespace A276215

/-- `A325142(A151878(n))+A276221(n+1)` -/
def P18095373290860172785.Spec : Prop :=
  ∀ n, P18095373290860172785.a n = A276215 (n + 1)

end A276215

/-! ## A276215.P4347169247814723388

`A233583(A033999(n)²*A276221(n+1))`
-/

namespace A276215.P4347169247814723388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A033999 n ^ 2 * A276221 (n + 1)).toNat

end

end A276215.P4347169247814723388

namespace A276215

/-- `A233583(A033999(n)²*A276221(n+1))` -/
def P4347169247814723388.Spec : Prop :=
  ∀ n, P4347169247814723388.a n = A276215 (n + 1)

end A276215

/-!
# A276216: Position of n^r in the joint ranking of {h^r} and {k^s}, where r = sqrt(2), s = sqrt(6), h > 1, k > 1.

The programs for A276216, the canonical program `A276216.P16087154296551586033` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A276216 has offset 1).

The definition of A276216 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A276216.P16087154296551586033

`floor(root(n+2, root(3, 2))+n)`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A276216

/-- `floor(root(n+2, root(3, 2))+n)` -/
def P16087154296551586033.Spec : Prop :=
  ∀ n, P16087154296551586033.a n = A276216 (n + 1)

theorem P16087154296551586033.correct : P16087154296551586033.Spec := by
  intro n
  simp only [A276216, Nat.add_sub_cancel]

end A276216

/-! ## A276216.P1962597667008717760

`comp[A276215(n+1)-1]+1`
-/

namespace A276216.P1962597667008717760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276215 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A276216.P1962597667008717760

namespace A276216

/-- `comp[A276215(n+1)-1]+1` -/
def P1962597667008717760.Spec : Prop :=
  ∀ n, (P1962597667008717760.a n : ℤ) = A276216 (n + 1)

end A276216

/-! ## A276216.P14866413338221966324

`comp[A276221(n+1)-2]+1`
-/

namespace A276216.P14866413338221966324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276221 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A276216.P14866413338221966324

namespace A276216

/-- `comp[A276221(n+1)-2]+1` -/
def P14866413338221966324.Spec : Prop :=
  ∀ n, (P14866413338221966324.a n : ℤ) = A276216 (n + 1)

end A276216

/-! ## A276216.P11490345121287463403

`eq[char[A276215(n+1)], A000007(n)]`
-/

namespace A276216.P11490345121287463403
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276215 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A276216.P11490345121287463403

namespace A276216

/-- `eq[char[A276215(n+1)], A000007(n)]` -/
def P11490345121287463403.Spec : Prop :=
  ∀ n, (P11490345121287463403.a n : ℤ) = A276216 (n + 1)

end A276216

/-! ## A276216.P17763922055329450250

`eq[char[A276215(n+1)], A000038(n)]`
-/

namespace A276216.P17763922055329450250
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276215 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A276216.P17763922055329450250

namespace A276216

/-- `eq[char[A276215(n+1)], A000038(n)]` -/
def P17763922055329450250.Spec : Prop :=
  ∀ n, (P17763922055329450250.a n : ℤ) = A276216 (n + 1)

end A276216

/-! ## A276216.P8103217402688642379

`Δ[n²]-A003056(A154255(n+2))`
-/

namespace A276216.P8103217402688642379
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - A003056 (A154255 (n + 2)).toNat

end

end A276216.P8103217402688642379

namespace A276216

/-- `Δ[n²]-A003056(A154255(n+2))` -/
def P8103217402688642379.Spec : Prop :=
  ∀ n, P8103217402688642379.a n = A276216 (n + 1)

end A276216

/-! ## A276216.P16040326419597812187

`abs(A003056(A154255(n+2))-A005408(n))`
-/

namespace A276216.P16040326419597812187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A003056 (A154255 (n + 2)).toNat - A005408 n|

end

end A276216.P16040326419597812187

namespace A276216

/-- `abs(A003056(A154255(n+2))-A005408(n))` -/
def P16040326419597812187.Spec : Prop :=
  ∀ n, P16040326419597812187.a n = A276216 (n + 1)

end A276216

/-! ## A276216.P17810317089353695102

`A005843(n)+1-A003056(A154255(n+2))`
-/

namespace A276216.P17810317089353695102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n + (1 - A003056 (A154255 (n + 2)).toNat)

end

end A276216.P17810317089353695102

namespace A276216

/-- `A005843(n)+1-A003056(A154255(n+2))` -/
def P17810317089353695102.Spec : Prop :=
  ∀ n, P17810317089353695102.a n = A276216 (n + 1)

end A276216

/-!
# A276217: Position of n^s in the joint ranking of {h^r} and {k^s}, where r = sqrt(3), s = sqrt(6), h > 1, k > 1.

The programs for A276217, the canonical program `A276217.P2515267171898096994` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A276217 has offset 1).

The definition of A276217 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A276217.P7653395805387772945

`floor((n+2)^sqrt(2)+n)`
-/

namespace A276217.P7653395805387772945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 2 : ℝ) ^ (Real.sqrt (2 : ℝ)) + (n : ℝ)⌋

end

end A276217.P7653395805387772945

namespace A276217

/-- `floor((n+2)^sqrt(2)+n)` -/
def P7653395805387772945.Spec : Prop :=
  ∀ n, P7653395805387772945.a n = A276217 (n + 1)

end A276217

/-! ## A276217.P16270510163444463974

`A276219(n+2)-1`
-/

namespace A276217.P16270510163444463974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276219 (n + 2) - 1

end

end A276217.P16270510163444463974

namespace A276217

/-- `A276219(n+2)-1` -/
def P16270510163444463974.Spec : Prop :=
  ∀ n, P16270510163444463974.a n = A276217 (n + 1)

end A276217

/-! ## A276217.P2515267171898096994

`A134886(n+2)+n`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A276217

/-- `A134886(n+2)+n` -/
def P2515267171898096994.Spec : Prop :=
  ∀ n, P2515267171898096994.a n = A276217 (n + 1)

theorem P2515267171898096994.correct : P2515267171898096994.Spec := by
  intro n
  simp only [A276217, Nat.add_sub_cancel]

end A276217

/-! ## A276217.P5282772175679195878

`A276220(A134886(n+2))`
-/

namespace A276217.P5282772175679195878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276220 (A134886 (n + 2)).toNat

end

end A276217.P5282772175679195878

namespace A276217

/-- `A276220(A134886(n+2))` -/
def P5282772175679195878.Spec : Prop :=
  ∀ n, P5282772175679195878.a n = A276217 (n + 1)

end A276217

/-! ## A276217.P12389408144098230035

`A023443(A276219(n+2))`
-/

namespace A276217.P12389408144098230035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A276219 (n + 2)).toNat

end

end A276217.P12389408144098230035

namespace A276217

/-- `A023443(A276219(n+2))` -/
def P12389408144098230035.Spec : Prop :=
  ∀ n, P12389408144098230035.a n = A276217 (n + 1)

end A276217

/-!
# A276218: Position of n^r in the joint ranking of {h^r} and {k^s}, where r = sqrt(3), s = sqrt(6), h > 1, k > 1.

The programs for A276218, the canonical program `A276218.P7829091822625182265` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A276218 has offset 1).

The definition of A276218 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A276218.P7829091822625182265

`A276220(n+2)-1`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A276218

/-- `A276220(n+2)-1` -/
def P7829091822625182265.Spec : Prop :=
  ∀ n, P7829091822625182265.a n = A276218 (n + 1)

theorem P7829091822625182265.correct : P7829091822625182265.Spec := by
  intro n
  simp only [A276218, Nat.add_sub_cancel]

end A276218

/-! ## A276218.P1851378252829436433

`∑[abs(Δ[A276220(n+1)])]`
-/

namespace A276218.P1851378252829436433
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276220 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A276218.P1851378252829436433

namespace A276218

/-- `∑[abs(Δ[A276220(n+1)])]` -/
def P1851378252829436433.Spec : Prop :=
  ∀ n, P1851378252829436433.a n = A276218 (n + 1)

end A276218

/-! ## A276218.P17346200844880057650

`A023443(A276220(n+2))`
-/

namespace A276218.P17346200844880057650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A276220 (n + 2)).toNat

end

end A276218.P17346200844880057650

namespace A276218

/-- `A023443(A276220(n+2))` -/
def P17346200844880057650.Spec : Prop :=
  ∀ n, P17346200844880057650.a n = A276218 (n + 1)

end A276218

/-! ## A276218.P15827797019260278467

`∑[A000027(Δ[A276220(n+1)])]`
-/

namespace A276218.P15827797019260278467
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276220 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A276218.P15827797019260278467

namespace A276218

/-- `∑[A000027(Δ[A276220(n+1)])]` -/
def P15827797019260278467.Spec : Prop :=
  ∀ n, P15827797019260278467.a n = A276218 (n + 1)

end A276218

/-! ## A276218.P12734963902875055417

`∑[A000110(Δ[A276220(n+1)])]`
-/

namespace A276218.P12734963902875055417
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276220 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A276218.P12734963902875055417

namespace A276218

/-- `∑[A000110(Δ[A276220(n+1)])]` -/
def P12734963902875055417.Spec : Prop :=
  ∀ n, P12734963902875055417.a n = A276218 (n + 1)

end A276218

/-! ## A276218.P2887282828092802237

`∑[A276220(Δ[A276220(n+1)])]`
-/

namespace A276218.P2887282828092802237
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276220 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276220 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A276218.P2887282828092802237

namespace A276218

/-- `∑[A276220(Δ[A276220(n+1)])]` -/
def P2887282828092802237.Spec : Prop :=
  ∀ n, P2887282828092802237.a n = A276218 (n + 1)

end A276218

/-!
# A276219: Position of n^s in the joint ranking of {h} and {k^s}, where s = sqrt(2), h >= 1, k >= 2.

The programs for A276219, the canonical program `A276219.P16153097786553005454` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A276219 has offset 2).

The definition of A276219 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A276219.P16153097786553005454

`ceil((n+2)^sqrt(2)+n)`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A276219

/-- `ceil((n+2)^sqrt(2)+n)` -/
def P16153097786553005454.Spec : Prop :=
  ∀ n, P16153097786553005454.a n = A276219 (n + 2)

theorem P16153097786553005454.correct : P16153097786553005454.Spec := by
  intro n
  simp only [A276219, Nat.add_sub_cancel]

end A276219

/-! ## A276219.P8694538195998960910

`A134886(n+2)+1+n`
-/

namespace A276219.P8694538195998960910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134886 (n + 2) + 1 + (n : ℤ)

end

end A276219.P8694538195998960910

namespace A276219

/-- `A134886(n+2)+1+n` -/
def P8694538195998960910.Spec : Prop :=
  ∀ n, P8694538195998960910.a n = A276219 (n + 2)

end A276219

/-! ## A276219.P1068649548034279910

`A276217(n+1)+1`
-/

namespace A276219.P1068649548034279910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276217 (n + 1) + 1

end

end A276219.P1068649548034279910

namespace A276219

/-- `A276217(n+1)+1` -/
def P1068649548034279910.Spec : Prop :=
  ∀ n, P1068649548034279910.a n = A276219 (n + 2)

end A276219

/-! ## A276219.P9334023374469402442

`A276220(A134886(n+2))+1`
-/

namespace A276219.P9334023374469402442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276220 (A134886 (n + 2)).toNat + 1

end

end A276219.P9334023374469402442

namespace A276219

/-- `A276220(A134886(n+2))+1` -/
def P9334023374469402442.Spec : Prop :=
  ∀ n, P9334023374469402442.a n = A276219 (n + 2)

end A276219

/-! ## A276219.P5348988547667925737

`A020725(A276217(n+1))`
-/

namespace A276219.P5348988547667925737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A276217 (n + 1)).toNat

end

end A276219.P5348988547667925737

namespace A276219

/-- `A020725(A276217(n+1))` -/
def P5348988547667925737.Spec : Prop :=
  ∀ n, P5348988547667925737.a n = A276219 (n + 2)

end A276219

/-! ## A276219.P15727908292863989468

`A276218(A134886(n+2))`
-/

namespace A276219.P15727908292863989468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276218 (A134886 (n + 2)).toNat

end

end A276219.P15727908292863989468

namespace A276219

/-- `A276218(A134886(n+2))` -/
def P15727908292863989468.Spec : Prop :=
  ∀ n, P15727908292863989468.a n = A276219 (n + 2)

end A276219

/-!
# A276220: Position of n^s in the joint ranking of {h} and {k^s}, where s = sqrt(2), h >= 1, k >= 2.

The programs for A276220, the canonical program `A276220.P16432132631228087670` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A276220 has offset 1).

The definition of A276220 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A276220.P16432132631228087670

`floor(root(n+1, sqrt(2))+n)`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A276220

/-- `floor(root(n+1, sqrt(2))+n)` -/
def P16432132631228087670.Spec : Prop :=
  ∀ n, P16432132631228087670.a n = A276220 (n + 1)

theorem P16432132631228087670.correct : P16432132631228087670.Spec := by
  intro n
  simp only [A276220, Nat.add_sub_cancel]

end A276220

/-! ## A276220.P2280966384069222251

`floor((n+1)^cos(atan(1)))+n`
-/

namespace A276220.P2280966384069222251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) ^ (Real.cos (Real.arctan (1 : ℝ)))⌋ + (n : ℤ)

end

end A276220.P2280966384069222251

namespace A276220

/-- `floor((n+1)^cos(atan(1)))+n` -/
def P2280966384069222251.Spec : Prop :=
  ∀ n, P2280966384069222251.a n = A276220 (n + 1)

end A276220

/-! ## A276220.P2785639306584751603

`floor((n+1)^sin(atan(1)))+n`
-/

namespace A276220.P2785639306584751603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) ^ (Real.sin (Real.arctan (1 : ℝ)))⌋ + (n : ℤ)

end

end A276220.P2785639306584751603

namespace A276220

/-- `floor((n+1)^sin(atan(1)))+n` -/
def P2785639306584751603.Spec : Prop :=
  ∀ n, P2785639306584751603.a n = A276220 (n + 1)

end A276220

/-! ## A276220.P17825908220659088715

`A276218(n)+a(A337171(A001222(n+1)))` with `a(0)=1`
-/

namespace A276220.P17825908220659088715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A276218 n + a (A337171 (A001222 (n + 1)).toNat).toNat

end

end A276220.P17825908220659088715

namespace A276220

/-- `A276218(n)+a(A337171(A001222(n+1)))` -/
def P17825908220659088715.Spec : Prop :=
  ∀ n, P17825908220659088715.a n = A276220 (n + 1)

end A276220

/-! ## A276220.P7504075815578346483

`A276218(n+1)-char[A276217(n+1)-(n+1)]`
-/

namespace A276220.P7504075815578346483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276217 (n + 1) - (n + 1 : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276218 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A276220.P7504075815578346483

namespace A276220

/-- `A276218(n+1)-char[A276217(n+1)-(n+1)]` -/
def P7504075815578346483.Spec : Prop :=
  ∀ n, P7504075815578346483.a n = A276220 (n + 1)

end A276220

/-!
# A276221: Position of n^s in the joint ranking of {h} and {k^s}, s = sqrt(3), h >= 1, k >= 2.

The programs for A276221, the canonical program `A276221.P5617290000184054163` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A276221 has offset 1).

The definition of A276221 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A276221.P12008892927932259284

`ceil((n+2)^sqrt(3)+n)`
-/

namespace A276221.P12008892927932259284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 2 : ℝ) ^ (Real.sqrt (3 : ℝ)) + (n : ℝ)⌉

end

end A276221.P12008892927932259284

namespace A276221

/-- `ceil((n+2)^sqrt(3)+n)` -/
def P12008892927932259284.Spec : Prop :=
  ∀ n, P12008892927932259284.a n = A276221 (n + 1)

end A276221

/-! ## A276221.P353862569224601721

`abs(xor(floor((n+2)^sqrt(3)+n), -1))`
-/

namespace A276221.P353862569224601721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor ⌊(n + 2 : ℝ) ^ (Real.sqrt (3 : ℝ)) + (n : ℝ)⌋ (-1)|

end

end A276221.P353862569224601721

namespace A276221

/-- `abs(xor(floor((n+2)^sqrt(3)+n), -1))` -/
def P353862569224601721.Spec : Prop :=
  ∀ n, P353862569224601721.a n = A276221 (n + 1)

end A276221

/-! ## A276221.P10100234080397936147

`floor(C(n+1, n)+(n+2)^sqrt(3))`
-/

namespace A276221.P10100234080397936147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.choose (n + 1) n : ℝ) + (n + 2 : ℝ) ^ (Real.sqrt (3 : ℝ))⌋

end

end A276221.P10100234080397936147

namespace A276221

/-- `floor(C(n+1, n)+(n+2)^sqrt(3))` -/
def P10100234080397936147.Spec : Prop :=
  ∀ n, P10100234080397936147.a n = A276221 (n + 1)

end A276221

/-! ## A276221.P5617290000184054163

`A276215(n+1)+1`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A276221

/-- `A276215(n+1)+1` -/
def P5617290000184054163.Spec : Prop :=
  ∀ n, P5617290000184054163.a n = A276221 (n + 1)

theorem P5617290000184054163.correct : P5617290000184054163.Spec := by
  intro n
  simp only [A276221, Nat.add_sub_cancel]

end A276221

/-! ## A276221.P9980377762522868951

`floor((n+2)^sqrt(3)-A001478(n+1))`
-/

namespace A276221.P9980377762522868951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 2 : ℝ) ^ (Real.sqrt (3 : ℝ)) - (A001478 (n + 1) : ℝ)⌋

end

end A276221.P9980377762522868951

namespace A276221

/-- `floor((n+2)^sqrt(3)-A001478(n+1))` -/
def P9980377762522868951.Spec : Prop :=
  ∀ n, P9980377762522868951.a n = A276221 (n + 1)

end A276221

/-! ## A276221.P1642658242118189435

`floor(A028242(2*n)+(n+2)^sqrt(3))`
-/

namespace A276221.P1642658242118189435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A028242 (2 * n) : ℝ) + (n + 2 : ℝ) ^ (Real.sqrt (3 : ℝ))⌋

end

end A276221.P1642658242118189435

namespace A276221

/-- `floor(A028242(2*n)+(n+2)^sqrt(3))` -/
def P1642658242118189435.Spec : Prop :=
  ∀ n, P1642658242118189435.a n = A276221 (n + 1)

end A276221

/-! ## A276221.P15491482703778008394

`A020725(A276215(n+1))`
-/

namespace A276221.P15491482703778008394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A276215 (n + 1)).toNat

end

end A276221.P15491482703778008394

namespace A276221

/-- `A020725(A276215(n+1))` -/
def P15491482703778008394.Spec : Prop :=
  ∀ n, P15491482703778008394.a n = A276221 (n + 1)

end A276221

/-!
# A276222: Position of n^s in the joint ranking of {h} and {k^s}, h >= 1, k >= 2, s = golden ratio = (1+sqrt(5))/2.

The programs for A276222, the canonical program `A276222.P15539970363786319867` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A276222 has offset 1).

The definition of A276222 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A276222.P11696488051865022305

`ceil((n+2)^ϕ+n)`
-/

namespace A276222.P11696488051865022305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 2 : ℝ) ^ Real.goldenRatio + (n : ℝ)⌉

end

end A276222.P11696488051865022305

namespace A276222

/-- `ceil((n+2)^ϕ+n)` -/
def P11696488051865022305.Spec : Prop :=
  ∀ n, P11696488051865022305.a n = A276222 (n + 1)

end A276222

/-! ## A276222.P6896584269325898786

`floor(C(n+1, n)+(n+2)^ϕ)`
-/

namespace A276222.P6896584269325898786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.choose (n + 1) n : ℝ) + (n + 2 : ℝ) ^ Real.goldenRatio⌋

end

end A276222.P6896584269325898786

namespace A276222

/-- `floor(C(n+1, n)+(n+2)^ϕ)` -/
def P6896584269325898786.Spec : Prop :=
  ∀ n, P6896584269325898786.a n = A276222 (n + 1)

end A276222

/-! ## A276222.P15539970363786319867

`A152737(n+2)+n+1`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A276222

/-- `A152737(n+2)+n+1` -/
def P15539970363786319867.Spec : Prop :=
  ∀ n, P15539970363786319867.a n = A276222 (n + 1)

theorem P15539970363786319867.correct : P15539970363786319867.Spec := by
  intro n
  simp only [A276222, Nat.add_sub_cancel]

end A276222

/-! ## A276222.P4889959093742878487

`∑[A152850(n+1)+1]+1`
-/

namespace A276222.P4889959093742878487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152850 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A276222.P4889959093742878487

namespace A276222

/-- `∑[A152850(n+1)+1]+1` -/
def P4889959093742878487.Spec : Prop :=
  ∀ n, P4889959093742878487.a n = A276222 (n + 1)

end A276222

/-! ## A276222.P8938591206030189587

`floor(A000027(n+1)+(n+2)^ϕ)`
-/

namespace A276222.P8938591206030189587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000027 (n + 1) : ℝ) + (n + 2 : ℝ) ^ Real.goldenRatio⌋

end

end A276222.P8938591206030189587

namespace A276222

/-- `floor(A000027(n+1)+(n+2)^ϕ)` -/
def P8938591206030189587.Spec : Prop :=
  ∀ n, P8938591206030189587.a n = A276222 (n + 1)

end A276222

/-! ## A276222.P12745263979886038917

`floor(A052938(2*n)+(n+2)^ϕ)`
-/

namespace A276222.P12745263979886038917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A052938 (2 * n) : ℝ) + (n + 2 : ℝ) ^ Real.goldenRatio⌋

end

end A276222.P12745263979886038917

namespace A276222

/-- `floor(A052938(2*n)+(n+2)^ϕ)` -/
def P12745263979886038917.Spec : Prop :=
  ∀ n, P12745263979886038917.a n = A276222 (n + 1)

end A276222

/-! ## A276222.P7242002047876285824

`floor(A141672(∑[n+1])^ϕ+n+1)`
-/

namespace A276222.P7242002047876285824
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A141672 (∑ j ∈ Finset.range (n + 1), f1 j) : ℝ) ^ Real.goldenRatio + (n + 1 : ℝ)⌋

end

end A276222.P7242002047876285824

namespace A276222

/-- `floor(A141672(∑[n+1])^ϕ+n+1)` -/
def P7242002047876285824.Spec : Prop :=
  ∀ n, P7242002047876285824.a n = A276222 (n + 1)

end A276222

/-!
# A276223: Position of n^Pi in the joint ranking of {h^e} and {k^Pi}, h > 1, k > 1.

The programs for A276223, there is no canonical definition to state claims against.
-/

/-! ## A276223.P12338616868198994475

`∑[A165070(A022371(n))+1]`
-/

namespace A276223.P12338616868198994475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165070 (A022371 n).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A276223.P12338616868198994475

/-! ## A276223.P17211278378101999901

`∑[A097509(∑[A373400(n+4)])]`
-/

namespace A276223.P17211278378101999901
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373400 (n + 4)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097509 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A276223.P17211278378101999901

/-! ## A276223.P16479853445275518089

`∑[A276862(∑[A373400(n+4)])]`
-/

namespace A276223.P16479853445275518089
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373400 (n + 4)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276862 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A276223.P16479853445275518089

/-! ## A276223.P15467302285323351486

`A286999(n+1)+A070939(A092483(n+1))`
-/

namespace A276223.P15467302285323351486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286999 (n + 1) + A070939 (A092483 (n + 1)).toNat

end

end A276223.P15467302285323351486

/-! ## A276223.P10992199610131984551

`A000194(A181947(3*(n+1))+A037012(n))`
-/

namespace A276223.P10992199610131984551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A181947 (3 * (n + 1)) + A037012 n).toNat

end

end A276223.P10992199610131984551

/-!
# A276224: Position of n^e in the joint ranking of {h^e} and {k^Pi}, h > 1, k > 1.

The programs for A276224, there is no canonical definition to state claims against.
-/

/-! ## A276224.P1311558593698822080

`eq[char[A276223(n+1)], A000007(n)]`
-/

namespace A276224.P1311558593698822080
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276223 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A276224.P1311558593698822080

/-! ## A276224.P12839597282545470914

`eq[char[A276223(n+1)], A000038(n)]`
-/

namespace A276224.P12839597282545470914
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276223 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A276224.P12839597282545470914

/-! ## A276224.P7590649020338961608

`eq[A008683(2*(n+1)²)², char[A276223(n+1)]]`
-/

namespace A276224.P7590649020338961608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (2 * (n + 1) ^ 2) ^ 2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276223 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℤ)) n

end

end A276224.P7590649020338961608

/-! ## A276224.P5539728397876004598

`eq[char[A276223(n+1)], A151933(n)]`
-/

namespace A276224.P5539728397876004598
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276223 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A276224.P5539728397876004598

/-!
# A276225: a(n+3) = 2*a(n+2) + a(n+1) + a(n) with a(0)=3, a(1)=2, a(2)=6.

The programs for A276225, the canonical program `A276225.P11273039750225549638` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A276225 has offset 0).

The definition of A276225 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 247 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A276225.P11273039750225549638

`2*a(n-1)+a(n-2)+a(n-3)` with `a(0)=3, a(1)=2, a(2)=6`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A276225

/-- `2*a(n-1)+a(n-2)+a(n-3)` -/
def P11273039750225549638.Spec : Prop :=
  ∀ n, (P11273039750225549638.a n : ℤ) = A276225 n

theorem P11273039750225549638.correct : P11273039750225549638.Spec := by
  intro n
  simp only [A276225]

end A276225

/-! ## A276225.P14103127445449518637

`a(n-1)+a(n-1)+a(n-2)+a(n-3)` with `a(0)=3, a(1)=2, a(2)=6`
-/

namespace A276225.P14103127445449518637
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3, 2, 6] fun n a =>
  a (n - 1) + (a (n - 1) + (a (n - 2) + a (n - 3)))

end

end A276225.P14103127445449518637

namespace A276225

/-- `a(n-1)+a(n-1)+a(n-2)+a(n-3)` -/
def P14103127445449518637.Spec : Prop :=
  ∀ n, (P14103127445449518637.a n : ℤ) = A276225 n

theorem P14103127445449518637.correct : P14103127445449518637.Spec := by
  intro n
  simp only [A276225, Nat.add_sub_cancel, A276225.P14103127445449518637.a, A276225.P11273039750225549638.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A276225

/-! ## A276225.P9418618980443143344

`A276226(n+1)-(A077997(n)+A077939(n+1))`
-/

namespace A276225.P9418618980443143344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276226 (n + 1) - (A077997 n + A077939 (n + 1))

end

end A276225.P9418618980443143344

namespace A276225

/-- `A276226(n+1)-(A077997(n)+A077939(n+1))` -/
def P9418618980443143344.Spec : Prop :=
  ∀ n, P9418618980443143344.a n = A276225 n

end A276225

/-! ## A276225.P8635531984968774538

`A077939(n+2)-A077997(n+6)%A077997(n+3)`
-/

namespace A276225.P8635531984968774538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077939 (n + 2) - Int.tmod (A077997 (n + 6)) (A077997 (n + 3))

end

end A276225.P8635531984968774538

namespace A276225

/-- `A077939(n+2)-A077997(n+6)%A077997(n+3)` -/
def P8635531984968774538.Spec : Prop :=
  ∀ n, P8635531984968774538.a n = A276225 n

end A276225

/-! ## A276225.P13637829351451803641

`(A077978(n+3)+A077939(2*n+1))/A077939(n+1)`
-/

namespace A276225.P13637829351451803641
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077978 (n + 3) + A077939 (2 * n + 1) : ℚ) / (A077939 (n + 1) : ℚ)

end

end A276225.P13637829351451803641

namespace A276225

/-- `(A077978(n+3)+A077939(2*n+1))/A077939(n+1)` -/
def P13637829351451803641.Spec : Prop :=
  ∀ n, P13637829351451803641.a n = (A276225 n : ℚ)

end A276225

/-!
# A276226: a(n+3) = 2*a(n+2) + a(n+1) + a(n) with a(0)=0, a(1)=6, a(2)=8.

The programs for A276226, the canonical program `A276226.P2903596441584460075` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A276226 has offset 0).

The definition of A276226 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 246 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A276226.P2903596441584460075

`2*a(n-1)+a(n-2)+a(n-3)` with `a(0)=0, a(1)=6, a(2)=8`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A276226

/-- `2*a(n-1)+a(n-2)+a(n-3)` -/
def P2903596441584460075.Spec : Prop :=
  ∀ n, (P2903596441584460075.a n : ℤ) = A276226 n

theorem P2903596441584460075.correct : P2903596441584460075.Spec := by
  intro n
  simp only [A276226]

end A276226

/-! ## A276226.P15660449516055902943

`a(n-1)+a(n-1)+a(n-2)+a(n-3)` with `a(0)=0, a(1)=6, a(2)=8`
-/

namespace A276226.P15660449516055902943
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 6, 8] fun n a =>
  a (n - 1) + (a (n - 1) + (a (n - 2) + a (n - 3)))

end

end A276226.P15660449516055902943

namespace A276226

/-- `a(n-1)+a(n-1)+a(n-2)+a(n-3)` -/
def P15660449516055902943.Spec : Prop :=
  ∀ n, (P15660449516055902943.a n : ℤ) = A276226 n

theorem P15660449516055902943.correct : P15660449516055902943.Spec := by
  intro n
  simp only [A276226, Nat.add_sub_cancel, A276226.P15660449516055902943.a, A276226.P2903596441584460075.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A276226

/-!
# A276228: a(n+3) = -a(n+2) - 2*a(n+1) + a(n) with a(0)=3, a(1)=-1, a(2)=-3.

The programs for A276228, the canonical program `A276228.P13249813382779265578` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A276228 has offset 0).

The definition of A276228 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A276229, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A276228.P13249813382779265578

`2*A276229(n)+2*A276229(n+1)+3*A276229(n+2)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A276228

/-- `2*A276229(n)+2*A276229(n+1)+3*A276229(n+2)` -/
def P13249813382779265578.Spec : Prop :=
  ∀ n, P13249813382779265578.a n = A276228 n

theorem P13249813382779265578.correct : P13249813382779265578.Spec := by
  intro n
  simp only [A276228]

end A276228

/-! ## A276228.P3468211157789227073

`a(n-3)-(a(n-1)+2*a(n-2))` with `a(0)=3, a(1)=-1, a(2)=-3`
-/

namespace A276228.P3468211157789227073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, -1, -3] fun n a =>
  a (n - 3) - (a (n - 1) + 2 * a (n - 2))

end

end A276228.P3468211157789227073

namespace A276228

/-- `a(n-3)-(a(n-1)+2*a(n-2))` -/
def P3468211157789227073.Spec : Prop :=
  ∀ n, P3468211157789227073.a n = A276228 n

end A276228

/-! ## A276228.P2630918747868576040

`a(n-3)-2*a(n-2)-a(n-1)` with `a(0)=3, a(1)=-1, a(2)=-3`
-/

namespace A276228.P2630918747868576040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, -1, -3] fun n a =>
  a (n - 3) - 2 * a (n - 2) - a (n - 1)

end

end A276228.P2630918747868576040

namespace A276228

/-- `a(n-3)-2*a(n-2)-a(n-1)` -/
def P2630918747868576040.Spec : Prop :=
  ∀ n, P2630918747868576040.a n = A276228 n

end A276228

/-! ## A276228.P10504133725506701976

`a(n-3)-a(n-1)-a(n-2)-a(n-2)` with `a(0)=3, a(1)=-1, a(2)=-3`
-/

namespace A276228.P10504133725506701976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, -1, -3] fun n a =>
  a (n - 3) - a (n - 1) - a (n - 2) - a (n - 2)

end

end A276228.P10504133725506701976

namespace A276228

/-- `a(n-3)-a(n-1)-a(n-2)-a(n-2)` -/
def P10504133725506701976.Spec : Prop :=
  ∀ n, P10504133725506701976.a n = A276228 n

end A276228

/-!
# A276229: a(n+3) = -a(n+2) - 2*a(n+1) + a(n) with a(0)=0, a(1)=0, a(2)=1.

The programs for A276229, the canonical program `A276229.P12409514630201487658` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A276229 has offset 0).

The definition of A276229 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 492 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A276229.P12409514630201487658

`a(n-3)-(a(n-1)+2*a(n-2))` with `a(0)=0, a(1)=0, a(2)=1`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A276229

/-- `a(n-3)-(a(n-1)+2*a(n-2))` -/
def P12409514630201487658.Spec : Prop :=
  ∀ n, P12409514630201487658.a n = A276229 n

theorem P12409514630201487658.correct : P12409514630201487658.Spec := by
  intro n
  simp only [A276229]

end A276229

/-! ## A276229.P1650051560970790576

`a(n-3)-2*a(n-2)-a(n-1)` with `a(0)=0, a(1)=0, a(2)=1`
-/

namespace A276229.P1650051560970790576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1] fun n a =>
  a (n - 3) - 2 * a (n - 2) - a (n - 1)

end

end A276229.P1650051560970790576

namespace A276229

/-- `a(n-3)-2*a(n-2)-a(n-1)` -/
def P1650051560970790576.Spec : Prop :=
  ∀ n, P1650051560970790576.a n = A276229 n

end A276229

/-! ## A276229.P4405079838746627731

`a(n-3)-(a(n-1)+a(n-2)+a(n-2))` with `a(0)=0, a(1)=0, a(2)=1`
-/

namespace A276229.P4405079838746627731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1] fun n a =>
  a (n - 3) - (a (n - 1) + (a (n - 2) + a (n - 2)))

end

end A276229.P4405079838746627731

namespace A276229

/-- `a(n-3)-(a(n-1)+a(n-2)+a(n-2))` -/
def P4405079838746627731.Spec : Prop :=
  ∀ n, P4405079838746627731.a n = A276229 n

theorem P4405079838746627731.correct : P4405079838746627731.Spec := by
  intro n
  simp only [A276229, Nat.add_sub_cancel, A276229.P4405079838746627731.a, A276229.P12409514630201487658.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A276229

/-! ## A276229.P16661039554887491509

`a(n-3)-a(n-1)-a(n-2)-a(n-2)` with `a(0)=0, a(1)=0, a(2)=1`
-/

namespace A276229.P16661039554887491509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1] fun n a =>
  a (n - 3) - a (n - 1) - a (n - 2) - a (n - 2)

end

end A276229.P16661039554887491509

namespace A276229

/-- `a(n-3)-a(n-1)-a(n-2)-a(n-2)` -/
def P16661039554887491509.Spec : Prop :=
  ∀ n, P16661039554887491509.a n = A276229 n

theorem P16661039554887491509.correct : P16661039554887491509.Spec := by
  intro n
  simp only [A276229, Nat.add_sub_cancel, A276229.P16661039554887491509.a, A276229.P12409514630201487658.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A276229

/-! ## A276229.P15973554811076295077

`A077978(A289207(n))%A000325(n)`
-/

namespace A276229.P15973554811076295077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A077978 (A289207 n).toNat) (A000325 n)

end

end A276229.P15973554811076295077

namespace A276229

/-- `A077978(A289207(n))%A000325(n)` -/
def P15973554811076295077.Spec : Prop :=
  ∀ n, P15973554811076295077.a n = A276229 n

end A276229

/-! ## A276229.P14044860849100872690

`A077978(abs(2-n))%A077970(n)`
-/

namespace A276229.P14044860849100872690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A077978 |2 - (n : ℤ)|.toNat) (A077970 n)

end

end A276229.P14044860849100872690

namespace A276229

/-- `A077978(abs(2-n))%A077970(n)` -/
def P14044860849100872690.Spec : Prop :=
  ∀ n, P14044860849100872690.a n = A276229 n

end A276229

/-!
# A276230: a(n) is the A106490 index where n first occurs.

The programs for A276230, there is no canonical definition to state claims against.
-/

/-! ## A276230.P18119883405911273232

`∏[∑[A131851(A005648(n))]]`
-/

namespace A276230.P18119883405911273232
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131851 (A005648 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A276230.P18119883405911273232

/-! ## A276230.P2765084953565803722

`∏[A134021(∑[A110138(n)])]`
-/

namespace A276230.P2765084953565803722
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110138 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134021 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A276230.P2765084953565803722

/-! ## A276230.P13407792992557532034

`∏[A134021(A247911(n+1)!)]`
-/

namespace A276230.P13407792992557532034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134021 (Nat.factorial (A247911 (n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A276230.P13407792992557532034

/-! ## A276230.P7056188889525376825

`∏[A255270(record[A244185(n+1)])]`
-/

namespace A276230.P7056188889525376825
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244185 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255270 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A276230.P7056188889525376825

/-! ## A276230.P13471319577072662477

`∏[∑[A301652(A249562(n))]]`
-/

namespace A276230.P13471319577072662477
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301652 (A249562 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A276230.P13471319577072662477

/-!
# A276231: E.g.f. A(x) satisfies: A(x)^A(x) = LambertW(-x)/(-x).

The programs for A276231, there is no canonical definition to state claims against.
-/

/-! ## A276231.P17694003680005695708

`A005408(A000274(n+1)*A069905(n))`
-/

namespace A276231.P17694003680005695708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A000274 (n + 1) * A069905 n).toNat

end

end A276231.P17694003680005695708

/-! ## A276231.P18341744143473388256

`A076110(ceil((n+5)^(n-2))+1)`
-/

namespace A276231.P18341744143473388256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076110 (⌈(n + 5 : ℚ) ^ ((n : ℤ) - 2 : ℤ)⌉ + 1).toNat

end

end A276231.P18341744143473388256

/-!
# A276232: E.g.f. W(x)^W(x), where W(x) = LambertW(-x)/(-x) and satisfies W(x)^(1/W(x)) = exp(x).

The programs for A276232, there is no canonical definition to state claims against.
-/

/-! ## A276232.P15194672589996168922

`A133310(2*A128318(n))`
-/

namespace A276232.P15194672589996168922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133310 (2 * A128318 n).toNat

end

end A276232.P15194672589996168922

/-! ## A276232.P9810768689475717525

`A341311(2*A128318(n))`
-/

namespace A276232.P9810768689475717525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341311 (2 * A128318 n).toNat

end

end A276232.P9810768689475717525

/-!
# A276233: a(n) = (n+256)/gcd(n,256).

The programs for A276233, there is no canonical definition to state claims against.
-/

/-! ## A276233.P17300075330592878223

`A145341(A160638(n+1)+1)`
-/

namespace A276233.P17300075330592878223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145341 (A160638 (n + 1) + 1).toNat

end

end A276233.P17300075330592878223

/-! ## A276233.P9155330481380166013

`A030101(A160638(n+1)+A160638(n+1)+1)`
-/

namespace A276233.P9155330481380166013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (A160638 (n + 1) + (A160638 (n + 1) + 1)).toNat

end

end A276233.P9155330481380166013

/-!
# A276234: 

The programs for A276234, there is no canonical definition to state claims against.
-/

/-! ## A276234.P17616221938344637312

`(n+1)/gcd(n+1, Δ[(2*n)²²²])`
-/

namespace A276234.P17616221938344637312
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (((2 * n) ^ 2) ^ 2) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Int.gcd (n + 1 : ℤ) ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) : ℚ)

end

end A276234.P17616221938344637312

/-! ## A276234.P7432856176462490325

`A106617(A106617(n+1))`
-/

namespace A276234.P7432856176462490325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106617 (A106617 (n + 1)).toNat

end

end A276234.P7432856176462490325

/-! ## A276234.P4087645109604618746

`A227140(2*A227140(2*(n+1)))`
-/

namespace A276234.P4087645109604618746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227140 (2 * A227140 (2 * (n + 1))).toNat

end

end A276234.P4087645109604618746

/-!
# A276235: Number of triangular partitions of n of order 6.

The programs for A276235, there is no canonical definition to state claims against.
-/

/-! ## A276235.P9009120991980068036

`∑[A132985(n*A053497(n))]`
-/

namespace A276235.P9009120991980068036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132985 ((n : ℤ) * A053497 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A276235.P9009120991980068036

/-! ## A276235.P9877541935401025622

`∑[A132985(n^A053497(n))]`
-/

namespace A276235.P9877541935401025622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132985 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A053497 n : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A276235.P9877541935401025622

/-! ## A276235.P1213520331808169943

`∑[A132985(n)%A323857(2*(n+2))]`
-/

namespace A276235.P1213520331808169943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A132985 n) (A323857 (2 * (n + 2)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A276235.P1213520331808169943

/-!
# A276236: Number of triangular partitions of n of order 7.

The programs for A276236, there is no canonical definition to state claims against.
-/

/-! ## A276236.P6986959599690759791

`A002941(n+1)-A003002(A002912(n+1))`
-/

namespace A276236.P6986959599690759791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002941 (n + 1) - A003002 (A002912 (n + 1)).toNat

end

end A276236.P6986959599690759791

/-! ## A276236.P4902634737797072597

`A090620(A038111(n+1))+A038092(n+9)`
-/

namespace A276236.P4902634737797072597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090620 (A038111 (n + 1)).toNat + A038092 (n + 9)

end

end A276236.P4902634737797072597

/-!
# A276237: Table read by antidiagonals: row n consists of k>=1 such that all primes dividing k divide n.

The programs for A276237, there is no canonical definition to state claims against.
-/

/-! ## A276237.P14361876190214661573

`A020639(A229417(n+1))^A002262(n)`
-/

namespace A276237.P14361876190214661573
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020639 (A229417 (n + 1)).toNat : ℚ) ^ (A002262 n : ℤ)

end

end A276237.P14361876190214661573

/-! ## A276237.P4287188847939532272

`A020639(A229417(n+1))^A166352(n)`
-/

namespace A276237.P4287188847939532272
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020639 (A229417 (n + 1)).toNat : ℚ) ^ (A166352 n : ℤ)

end

end A276237.P4287188847939532272

/-! ## A276237.P8796317478455789420

`A020639(A229417(n+1))^A144328(n+1)`
-/

namespace A276237.P8796317478455789420
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020639 (A229417 (n + 1)).toNat : ℚ) ^ (A144328 (n + 1) : ℤ)

end

end A276237.P8796317478455789420

/-! ## A276237.P9253152482033528956

`A020639(A229417(n+1))^A001222(A059268(n))`
-/

namespace A276237.P9253152482033528956
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020639 (A229417 (n + 1)).toNat : ℚ) ^ (A001222 (A059268 n).toNat : ℤ)

end

end A276237.P9253152482033528956

/-! ## A276237.P16004847507951992778

`A020639(A229417(n+1))^A166274(A002260(n+1))`
-/

namespace A276237.P16004847507951992778
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020639 (A229417 (n + 1)).toNat : ℚ) ^ (A166274 (A002260 (n + 1)).toNat : ℤ)

end

end A276237.P16004847507951992778

/-!
# A276238: Numbers k such that 2^sigma(k) == -1 (mod k).

The programs for A276238, there is no canonical definition to state claims against.
-/

/-! ## A276238.P12028247737330497765

`A329168(n+1)%A055686(A038592(n))`
-/

namespace A276238.P12028247737330497765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A329168 (n + 1)) (A055686 (A038592 n).toNat)

end

end A276238.P12028247737330497765

/-! ## A276238.P11997193015229848158

`record[∏{p}[A291164(n+1), #]]`
-/

namespace A276238.P11997193015229848158
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291164 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A276238.P11997193015229848158

/-!
# A276239: a(n) = numerator of rational fraction of function (Gamma[5/4]^2 Gamma[n + 3/4]^2)/(Gamma[3/4]^2 Gamma[n + 5/4]^2).

The programs for A276239, there is no canonical definition to state claims against.
-/

/-! ## A276239.P16478189923420006577

`A158206(∑{d}[∏{p}[n+1, #], (n+1)/#]²)²`
-/

namespace A276239.P16478189923420006577
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158206 (SequenceMachineLib.roundAway ((∑ d ∈ Nat.divisors (f1 n), (n + 1 : ℚ) / (d : ℚ)) ^ 2)).toNat ^ 2

end

end A276239.P16478189923420006577

/-!
# A276240: a(n) = denominator of rational fraction of function Gamma[5/4]^2 Gamma[n + 3/4]^2/(Gamma[3/4]^2 Gamma[n + 5/4]^2).

The programs for A276240, there is no canonical definition to state claims against.
-/

/-! ## A276240.P3855134041454250194

`(∏[A000005((4^n)²)]/A025549(2*n+1))²`
-/

namespace A276240.P3855134041454250194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 ((4 ^ n) ^ 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A025549 (2 * n + 1) : ℚ)) ^ 2

end

end A276240.P3855134041454250194

/-!
# A276242: Number of n X n 0..2 arrays with no element equal to any value at offset (-2,-1), (-1,1) or (0,-2) and new values introduced in order 0..2.

The programs for A276242, there is no canonical definition to state claims against.
-/

/-! ## A276242.P9602687088199577422

`A276248(∑[4*n]+1)`
-/

namespace A276242.P9602687088199577422
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276248 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A276242.P9602687088199577422

/-! ## A276242.P15069573844017589762

`gcd(A000038(n), A276248(A001844(n)))`
-/

namespace A276242.P15069573844017589762
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A276248 (A001844 n).toNat)

end

end A276242.P15069573844017589762

/-! ## A276242.P15533038988052379288

`or(A000007(n), A276248(A001844(n)))`
-/

namespace A276242.P15533038988052379288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A276248 (A001844 n).toNat)

end

end A276242.P15533038988052379288

/-! ## A276242.P9783910913287887149

`lcm(A008836(n+1), A276248(A001844(n)))`
-/

namespace A276242.P9783910913287887149
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A008836 (n + 1)) (A276248 (A001844 n).toNat)

end

end A276242.P9783910913287887149

/-! ## A276242.P2573103170761786185

`or(A019590(n+1), A276248(A001844(n)))`
-/

namespace A276242.P2573103170761786185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A019590 (n + 1)) (A276248 (A001844 n).toNat)

end

end A276242.P2573103170761786185

/-!
# A276243: Number of n X 3 0..2 arrays with no element equal to any value at offset (-2,-1) (-1,1) or (0,-2) and new values introduced in order 0..2.

The programs for A276243, there is no canonical definition to state claims against.
-/

/-! ## A276243.P16303725877250939014

`A276248(∑[n+3]+1)`
-/

namespace A276243.P16303725877250939014
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276248 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A276243.P16303725877250939014

/-! ## A276243.P1495843085593043271

`record[A276248(A198464(n+1))]`
-/

namespace A276243.P1495843085593043271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276248 (A198464 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A276243.P1495843085593043271

/-!
# A276244: Number of nX4 0..2 arrays with no element equal to any value at offset (-2,-1) (-1,1) or (0,-2) and new values introduced in order 0..2.

The programs for A276244, there is no canonical definition to state claims against.
-/

/-! ## A276244.P9833457041107128212

`A276248(∑[n+3]+n+4)`
-/

namespace A276244.P9833457041107128212
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276248 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 4))

end

end A276244.P9833457041107128212

/-! ## A276244.P151854339727031391

`A276248(A056000(n)+7)+char[18]`
-/

namespace A276244.P151854339727031391
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  18

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276248 (A056000 n + 7).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A276244.P151854339727031391

/-! ## A276244.P13143949069937848959

`abs(A033999(n)*A276248(A056000(n)+7))`
-/

namespace A276244.P13143949069937848959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A033999 n * A276248 (A056000 n + 7).toNat|

end

end A276244.P13143949069937848959

/-! ## A276244.P15995729553607973853

`A276248(A056000(n)+7)%A030464(n+1)`
-/

namespace A276244.P15995729553607973853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A276248 (A056000 n + 7).toNat) (A030464 (n + 1))

end

end A276244.P15995729553607973853

/-! ## A276244.P17990836662248416453

`A000010(A014963(2*(n+1)))*A276248(A056000(n)+7)`
-/

namespace A276244.P17990836662248416453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A014963 (2 * (n + 1))).toNat * A276248 (A056000 n + 7).toNat

end

end A276244.P17990836662248416453

/-!
# A276245: Number of nX5 0..2 arrays with no element equal to any value at offset (-2,-1) (-1,1) or (0,-2) and new values introduced in order 0..2.

The programs for A276245, there is no canonical definition to state claims against.
-/

/-! ## A276245.P1510298482168660340

`A276248(∑[n+5]+5-log2(1/2))`
-/

namespace A276245.P1510298482168660340
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276248 (SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f1 j + 5 : ℕ) : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ))).toNat

end

end A276245.P1510298482168660340

/-!
# A276246: Number of nX6 0..2 arrays with no element equal to any value at offset (-2,-1) (-1,1) or (0,-2) and new values introduced in order 0..2.

The programs for A276246, there is no canonical definition to state claims against.
-/

/-! ## A276246.P12505561360325022626

`A276248(A052905(n+3))`
-/

namespace A276246.P12505561360325022626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276248 (A052905 (n + 3)).toNat

end

end A276246.P12505561360325022626

/-! ## A276246.P3457659883757281242

`A276248(eq[3, A219347(n)])`
-/

namespace A276246.P3457659883757281242
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276248 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A276246.P3457659883757281242

/-! ## A276246.P7666232436556629477

`A276248(eq[5, A193592(n)])`
-/

namespace A276246.P7666232436556629477
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276248 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A276246.P7666232436556629477

/-! ## A276246.P10386022807077997657

`A276248(eq[8, A185782(n+1)])`
-/

namespace A276246.P10386022807077997657
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276248 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A276246.P10386022807077997657

/-! ## A276246.P10869733793074448864

`A276248(eq[16, A057728(n+1)])`
-/

namespace A276246.P10869733793074448864
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057728 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276248 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A276246.P10869733793074448864

/-!
# A276247: Number of nX7 0..2 arrays with no element equal to any value at offset (-2,-1) (-1,1) or (0,-2) and new values introduced in order 0..2.

The programs for A276247, there is no canonical definition to state claims against.
-/

/-! ## A276247.P11586344933876339946

`A276248(eq[4, A219347(n)])`
-/

namespace A276247.P11586344933876339946
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276248 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A276247.P11586344933876339946

/-! ## A276247.P1687498110133824302

`A276248(eq[6, A193592(n)])`
-/

namespace A276247.P1687498110133824302
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276248 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A276247.P1687498110133824302

/-! ## A276247.P2405361399816284159

`A276248(eq[7, A200370(n+1)])`
-/

namespace A276247.P2405361399816284159
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276248 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A276247.P2405361399816284159

/-! ## A276247.P12225656153361874295

`A276248(eq[10, A185782(n+1)])`
-/

namespace A276247.P12225656153361874295
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276248 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A276247.P12225656153361874295

/-! ## A276247.P5892254587674329399

`A276248(eq[32, A057728(n+1)])`
-/

namespace A276247.P5892254587674329399
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  32

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057728 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276248 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A276247.P5892254587674329399

/-!
# A276249: Number of 3 X n 0..2 arrays with no element equal to any value at offset (-2,-1) (-1,1) or (0,-2) and new values introduced in order 0..2.

The programs for A276249, there is no canonical definition to state claims against.
-/

/-! ## A276249.P2168942094023320066

`A276248(∑[n+2]+4)`
-/

namespace A276249.P2168942094023320066
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276248 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A276249.P2168942094023320066

/-! ## A276249.P7730994448180728464

`lcm(1-and(2, n), A276248(A167614(n+1)))`
-/

namespace A276249.P7730994448180728464
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (1 - (Nat.land 2 n : ℤ)) (A276248 (A167614 (n + 1)).toNat)

end

end A276249.P7730994448180728464

/-! ## A276249.P1173719125605256843

`A276248(A167614(n+1))+A011741(n)`
-/

namespace A276249.P1173719125605256843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276248 (A167614 (n + 1)).toNat + A011741 n

end

end A276249.P1173719125605256843

/-! ## A276249.P12966513620102996832

`A276248(A167614(n+1))+A011742(n)`
-/

namespace A276249.P12966513620102996832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276248 (A167614 (n + 1)).toNat + A011742 n

end

end A276249.P12966513620102996832

/-! ## A276249.P2791277298402165220

`A276248(A167614(n+1))+A061858(n)`
-/

namespace A276249.P2791277298402165220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276248 (A167614 (n + 1)).toNat + A061858 n

end

end A276249.P2791277298402165220

/-!
# A276250: Number of 4Xn 0..2 arrays with no element equal to any value at offset (-2,-1) (-1,1) or (0,-2) and new values introduced in order 0..2.

The programs for A276250, there is no canonical definition to state claims against.
-/

/-! ## A276250.P16384376790817219594

`A276248(A141214(n)+7)`
-/

namespace A276250.P16384376790817219594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276248 (A141214 n + 7).toNat

end

end A276250.P16384376790817219594

/-! ## A276250.P18083332160412915051

`A276248(A052905(n)+9)`
-/

namespace A276250.P18083332160412915051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276248 (A052905 n + 9).toNat

end

end A276250.P18083332160412915051

/-! ## A276250.P8702071321822821298

`A276248(A055999(n)+10)`
-/

namespace A276250.P8702071321822821298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276248 (A055999 n + 10).toNat

end

end A276250.P8702071321822821298

/-! ## A276250.P8387520016698871198

`A276248(A167614(n+2)+1)`
-/

namespace A276250.P8387520016698871198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276248 (A167614 (n + 2) + 1).toNat

end

end A276250.P8387520016698871198

/-! ## A276250.P15784291315061112646

`A276248(A133263(n+3)+2)`
-/

namespace A276250.P15784291315061112646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276248 (A133263 (n + 3) + 2).toNat

end

end A276250.P15784291315061112646

/-!
# A276251: Number of 5Xn 0..2 arrays with no element equal to any value at offset (-2,-1) (-1,1) or (0,-2) and new values introduced in order 0..2.

The programs for A276251, there is no canonical definition to state claims against.
-/

/-! ## A276251.P7637551121512186828

`A276248(A133263(n+4)+3)`
-/

namespace A276251.P7637551121512186828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276248 (A133263 (n + 4) + 3).toNat

end

end A276251.P7637551121512186828

/-! ## A276251.P9654187117355226802

`A276248(A000217(n+4)+5)`
-/

namespace A276251.P9654187117355226802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276248 (A000217 (n + 4) + 5).toNat

end

end A276251.P9654187117355226802

/-! ## A276251.P18362424902618601034

`A276248(A055998(n+2)+8)`
-/

namespace A276251.P18362424902618601034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276248 (A055998 (n + 2) + 8).toNat

end

end A276251.P18362424902618601034

/-! ## A276251.P15264447317585750035

`A276248(A000096(n+4)-(n-1))`
-/

namespace A276251.P15264447317585750035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276248 (A000096 (n + 4) - ((n : ℤ) - 1)).toNat

end

end A276251.P15264447317585750035

/-! ## A276251.P11063727796705407238

`A276248(A027379(n+4)-(2*n+3))`
-/

namespace A276251.P11063727796705407238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276248 (A027379 (n + 4) - (2 * n + 3 : ℤ)).toNat

end

end A276251.P11063727796705407238

/-!
# A276252: Number of 6Xn 0..2 arrays with no element equal to any value at offset (-2,-1) (-1,1) or (0,-2) and new values introduced in order 0..2.

The programs for A276252, there is no canonical definition to state claims against.
-/

/-! ## A276252.P16139317275247592444

`A276248(A167614(n+4)+3)`
-/

namespace A276252.P16139317275247592444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276248 (A167614 (n + 4) + 3).toNat

end

end A276252.P16139317275247592444

/-! ## A276252.P3657298559021251389

`A276248(A000124(n+5)+5)`
-/

namespace A276252.P3657298559021251389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276248 (A000124 (n + 5) + 5).toNat

end

end A276252.P3657298559021251389

/-! ## A276252.P7876485291509969570

`A276248(A000217(n+5)+6)`
-/

namespace A276252.P7876485291509969570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276248 (A000217 (n + 5) + 6).toNat

end

end A276252.P7876485291509969570

/-! ## A276252.P14869487785054459577

`A276248(A027379(n+3)+9)`
-/

namespace A276252.P14869487785054459577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276248 (A027379 (n + 3) + 9).toNat

end

end A276252.P14869487785054459577

/-! ## A276252.P4220496766696301156

`A276248(A052905(n+2)+11)`
-/

namespace A276252.P4220496766696301156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276248 (A052905 (n + 2) + 11).toNat

end

end A276252.P4220496766696301156

/-!
# A276253: Number of 7Xn 0..2 arrays with no element equal to any value at offset (-2,-1) (-1,1) or (0,-2) and new values introduced in order 0..2.

The programs for A276253, there is no canonical definition to state claims against.
-/

/-! ## A276253.P17866109792302662189

`A276248(eq[11, A066657(n)])`
-/

namespace A276253.P17866109792302662189
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276248 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A276253.P17866109792302662189

/-! ## A276253.P12406051363556379978

`A276248(A000217(n+6)+7)`
-/

namespace A276253.P12406051363556379978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276248 (A000217 (n + 6) + 7).toNat

end

end A276253.P12406051363556379978

/-! ## A276253.P380114993757285214

`A276248(A056115(n+1)+22)`
-/

namespace A276253.P380114993757285214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276248 (A056115 (n + 1) + 22).toNat

end

end A276253.P380114993757285214

/-! ## A276253.P18349740317656168632

`A276248(eq[8, A131818(n+1)])`
-/

namespace A276253.P18349740317656168632
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276248 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A276253.P18349740317656168632

/-! ## A276253.P11611600140204839248

`A276248(A000124(n+7)-1-n)`
-/

namespace A276253.P11611600140204839248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276248 (A000124 (n + 7) - 1 - (n : ℤ)).toNat

end

end A276253.P11611600140204839248

/-!
# A276254: With respect to the dictionary ordering of words over the alphabet {a,b}, i.e., e,a,b,aa,ab,ba,bb,aaa,..., the sequence is the characteristic function of the language of words that have no consecutive b's.

The programs for A276254, the canonical program `A276254.P9589331955149899379` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A276254 has offset 0).

The definition of A276254 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A276254.P5669110881587455029

`A085357(A030109(n+1))`
-/

namespace A276254.P5669110881587455029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085357 (A030109 (n + 1)).toNat

end

end A276254.P5669110881587455029

namespace A276254

/-- `A085357(A030109(n+1))` -/
def P5669110881587455029.Spec : Prop :=
  ∀ n, P5669110881587455029.a n = A276254 n

end A276254

/-! ## A276254.P13788466935920034126

`A085357(A053645(n+1))`
-/

namespace A276254.P13788466935920034126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085357 (A053645 (n + 1)).toNat

end

end A276254.P13788466935920034126

namespace A276254

/-- `A085357(A053645(n+1))` -/
def P13788466935920034126.Spec : Prop :=
  ∀ n, P13788466935920034126.a n = A276254 n

end A276254

/-! ## A276254.P13588023184586193481

`A085405(2*A053645(n+1))`
-/

namespace A276254.P13588023184586193481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085405 (2 * A053645 (n + 1)).toNat

end

end A276254.P13588023184586193481

namespace A276254

/-- `A085405(2*A053645(n+1))` -/
def P13588023184586193481.Spec : Prop :=
  ∀ n, P13588023184586193481.a n = A276254 n

end A276254

/-! ## A276254.P9589331955149899379

`A069513(2*A292264(n+1))`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A276254

/-- `A069513(2*A292264(n+1))` -/
def P9589331955149899379.Spec : Prop :=
  ∀ n, P9589331955149899379.a n = A276254 n

theorem P9589331955149899379.correct : P9589331955149899379.Spec := by
  intro n
  simp only [A276254]

end A276254

/-! ## A276254.P12036631094281348210

`A132971(n-A035327(n+1))²`
-/

namespace A276254.P12036631094281348210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132971 ((n : ℤ) - A035327 (n + 1)).toNat ^ 2

end

end A276254.P12036631094281348210

namespace A276254

/-- `A132971(n-A035327(n+1))²` -/
def P12036631094281348210.Spec : Prop :=
  ∀ n, P12036631094281348210.a n = A276254 n

end A276254

/-! ## A276254.P10204117821667879978

`A085357(n+1-A292264(A292272(n)))`
-/

namespace A276254.P10204117821667879978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085357 ((n + 1 : ℤ) - A292264 (A292272 n).toNat).toNat

end

end A276254.P10204117821667879978

namespace A276254

/-- `A085357(n+1-A292264(A292272(n)))` -/
def P10204117821667879978.Spec : Prop :=
  ∀ n, P10204117821667879978.a n = A276254 n

end A276254

/-! ## A276254.P6303034999331963523

`A085357(n+1-A292264(A292264(n+1)))`
-/

namespace A276254.P6303034999331963523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085357 ((n + 1 : ℤ) - A292264 (A292264 (n + 1)).toNat).toNat

end

end A276254.P6303034999331963523

namespace A276254

/-- `A085357(n+1-A292264(A292264(n+1)))` -/
def P6303034999331963523.Spec : Prop :=
  ∀ n, P6303034999331963523.a n = A276254 n

end A276254

/-! ## A276254.P9700877837987787329

`A085357(A152423(n+1))`
-/

namespace A276254.P9700877837987787329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085357 (A152423 (n + 1)).toNat

end

end A276254.P9700877837987787329

namespace A276254

/-- `A085357(A152423(n+1))` -/
def P9700877837987787329.Spec : Prop :=
  ∀ n, P9700877837987787329.a n = A276254 n

end A276254

/-! ## A276254.P12652679621183551319

`A295896(A003188(A004760(n+3)+n+1))`
-/

namespace A276254.P12652679621183551319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295896 (A003188 (A004760 (n + 3) + (n + 1 : ℤ)).toNat).toNat

end

end A276254.P12652679621183551319

namespace A276254

/-- `A295896(A003188(A004760(n+3)+n+1))` -/
def P12652679621183551319.Spec : Prop :=
  ∀ n, P12652679621183551319.a n = A276254 n

end A276254

/-! ## A276254.P12837353950709609117

`A023416(A000225(A107782(A059894(n+1))))`
-/

namespace A276254.P12837353950709609117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 (A000225 (A107782 (A059894 (n + 1)).toNat).toNat).toNat

end

end A276254.P12837353950709609117

namespace A276254

/-- `A023416(A000225(A107782(A059894(n+1))))` -/
def P12837353950709609117.Spec : Prop :=
  ∀ n, P12837353950709609117.a n = A276254 n

end A276254

/-! ## A276254.P15279813392162483434

`A036987(n*A014081(A053645(n+1)))`
-/

namespace A276254.P15279813392162483434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 ((n : ℤ) * A014081 (A053645 (n + 1)).toNat).toNat

end

end A276254.P15279813392162483434

namespace A276254

/-- `A036987(n*A014081(A053645(n+1)))` -/
def P15279813392162483434.Spec : Prop :=
  ∀ n, P15279813392162483434.a n = A276254 n

end A276254

/-! ## A276254.P10595910024910471046

`A085357(A004754(n+1))`
-/

namespace A276254.P10595910024910471046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085357 (A004754 (n + 1)).toNat

end

end A276254.P10595910024910471046

namespace A276254

/-- `A085357(A004754(n+1))` -/
def P10595910024910471046.Spec : Prop :=
  ∀ n, P10595910024910471046.a n = A276254 n

end A276254

/-! ## A276254.P3106430792201670345

`A085357(A171757(n+2)/2)`
-/

namespace A276254.P3106430792201670345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085357 (SequenceMachineLib.roundAway ((A171757 (n + 2) : ℚ) / 2)).toNat

end

end A276254.P3106430792201670345

namespace A276254

/-- `A085357(A171757(n+2)/2)` -/
def P3106430792201670345.Spec : Prop :=
  ∀ n, P3106430792201670345.a n = A276254 n

end A276254

/-! ## A276254.P16702695673904263523

`A085357(A292264(A292272(n+1))+n+1)`
-/

namespace A276254.P16702695673904263523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085357 (A292264 (A292272 (n + 1)).toNat + (n + 1 : ℤ)).toNat

end

end A276254.P16702695673904263523

namespace A276254

/-- `A085357(A292264(A292272(n+1))+n+1)` -/
def P16702695673904263523.Spec : Prop :=
  ∀ n, P16702695673904263523.a n = A276254 n

end A276254

/-! ## A276254.P14258889303694408000

`A132971(A160588(2*n))²`
-/

namespace A276254.P14258889303694408000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132971 (A160588 (2 * n)).toNat ^ 2

end

end A276254.P14258889303694408000

namespace A276254

/-- `A132971(A160588(2*n))²` -/
def P14258889303694408000.Spec : Prop :=
  ∀ n, P14258889303694408000.a n = A276254 n

end A276254

/-! ## A276254.P6957346420934971518

`A132971(A062050(2*n+1))²`
-/

namespace A276254.P6957346420934971518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132971 (A062050 (2 * n + 1)).toNat ^ 2

end

end A276254.P6957346420934971518

namespace A276254

/-- `A132971(A062050(2*n+1))²` -/
def P6957346420934971518.Spec : Prop :=
  ∀ n, P6957346420934971518.a n = A276254 n

end A276254

/-! ## A276254.P11576855792626971124

`A085357(A004756(n+1))`
-/

namespace A276254.P11576855792626971124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085357 (A004756 (n + 1)).toNat

end

end A276254.P11576855792626971124

namespace A276254

/-- `A085357(A004756(n+1))` -/
def P11576855792626971124.Spec : Prop :=
  ∀ n, P11576855792626971124.a n = A276254 n

end A276254

/-! ## A276254.P5392698723555581619

`A037011(A256255(n))`
-/

namespace A276254.P5392698723555581619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037011 (A256255 n).toNat

end

end A276254.P5392698723555581619

namespace A276254

/-- `A037011(A256255(n))` -/
def P5392698723555581619.Spec : Prop :=
  ∀ n, P5392698723555581619.a n = A276254 n

end A276254

/-! ## A276254.P3014366380400536677

`A085357(A171757(n+2))`
-/

namespace A276254.P3014366380400536677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085357 (A171757 (n + 2)).toNat

end

end A276254.P3014366380400536677

namespace A276254

/-- `A085357(A171757(n+2))` -/
def P3014366380400536677.Spec : Prop :=
  ∀ n, P3014366380400536677.a n = A276254 n

end A276254

/-! ## A276254.P18426638284495745428

`A102210(A278535(2*(n+1)))`
-/

namespace A276254.P18426638284495745428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102210 (A278535 (2 * (n + 1))).toNat

end

end A276254.P18426638284495745428

namespace A276254

/-- `A102210(A278535(2*(n+1)))` -/
def P18426638284495745428.Spec : Prop :=
  ∀ n, P18426638284495745428.a n = A276254 n

end A276254

/-!
# A276255: Sum of first n Honaker primes.

The programs for A276255, the canonical program `A276255.P14719271894009360201` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A276255 has offset 1).

The definition of A276255 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A276255.P14719271894009360201

`∑[A033548(n+1)]`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A276255

/-- `∑[A033548(n+1)]` -/
def P14719271894009360201.Spec : Prop :=
  ∀ n, P14719271894009360201.a n = A276255 (n + 1)

theorem P14719271894009360201.correct : P14719271894009360201.Spec := by
  intro n
  simp only [A276255, Nat.add_sub_cancel]

end A276255

/-! ## A276255.P3452926193357932291

`∑[record[A033548(A344180(n))]]`
-/

namespace A276255.P3452926193357932291
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033548 (A344180 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A276255.P3452926193357932291

namespace A276255

/-- `∑[record[A033548(A344180(n))]]` -/
def P3452926193357932291.Spec : Prop :=
  ∀ n, P3452926193357932291.a n = A276255 (n + 1)

end A276255

/-! ## A276255.P4561093402129175697

`∑[record[A033548(A152271(n))]]`
-/

namespace A276255.P4561093402129175697
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033548 (A152271 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A276255.P4561093402129175697

namespace A276255

/-- `∑[record[A033548(A152271(n))]]` -/
def P4561093402129175697.Spec : Prop :=
  ∀ n, P4561093402129175697.a n = A276255 (n + 1)

end A276255

/-! ## A276255.P9525258288656608261

`∑[p?[A343139(n+1)]]`
-/

namespace A276255.P9525258288656608261
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343139 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A276255.P9525258288656608261

namespace A276255

/-- `∑[p?[A343139(n+1)]]` -/
def P9525258288656608261.Spec : Prop :=
  ∀ n, P9525258288656608261.a n = A276255 (n + 1)

end A276255

/-! ## A276255.P7219137297151752848

`∑[A000040(A033549(n+1))]`
-/

namespace A276255.P7219137297151752848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A033549 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A276255.P7219137297151752848

namespace A276255

/-- `∑[A000040(A033549(n+1))]` -/
def P7219137297151752848.Spec : Prop :=
  ∀ n, P7219137297151752848.a n = A276255 (n + 1)

end A276255

/-! ## A276255.P14783191099065089625

`∑[A046022(A033549(n+1)+2)]`
-/

namespace A276255.P14783191099065089625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (A033549 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A276255.P14783191099065089625

namespace A276255

/-- `∑[A046022(A033549(n+1)+2)]` -/
def P14783191099065089625.Spec : Prop :=
  ∀ n, P14783191099065089625.a n = A276255 (n + 1)

end A276255

/-! ## A276255.P8137649620941841724

`∑[record[A033548(A137735(n))]]`
-/

namespace A276255.P8137649620941841724
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033548 (A137735 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A276255.P8137649620941841724

namespace A276255

/-- `∑[record[A033548(A137735(n))]]` -/
def P8137649620941841724.Spec : Prop :=
  ∀ n, P8137649620941841724.a n = A276255 (n + 1)

end A276255

/-!
# A276256: A nonlinear recurrence of order 3: a(1)=a(2)=a(3)=1; a(n)=(a(n-1)+a(n-2)+1)^2/a(n-3).

The programs for A276256, the canonical program `A276256.P16495692336009215844` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A276256 has offset 1).

The definition of A276256 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A276256.P16495692336009215844

`A276258(n+1)²`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A276256

/-- `A276258(n+1)²` -/
def P16495692336009215844.Spec : Prop :=
  ∀ n, P16495692336009215844.a n = A276256 (n + 1)

theorem P16495692336009215844.correct : P16495692336009215844.Spec := by
  intro n
  simp only [A276256, Nat.add_sub_cancel]

end A276256

/-! ## A276256.P3537687243540313939

`(a(n-1)+a(n-2)+1)²/a(n-3)` with `a(0)=1, a(1)=1, a(2)=1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A276256.P3537687243540313939
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  (a (n - 1) + a (n - 2) + 1) ^ 2 / a (n - 3)

end

end A276256.P3537687243540313939

namespace A276256

/-- `(a(n-1)+a(n-2)+1)²/a(n-3)` -/
def P3537687243540313939.Spec : Prop :=
  ∀ n, P3537687243540313939.a n = (A276256 (n + 1) : ℚ)

end A276256

/-! ## A276256.P6726596419985517352

`A276258(n+1)^A020639(A001043(n+1))`
-/

namespace A276256.P6726596419985517352
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A276258 (n + 1) : ℚ) ^ (A020639 (A001043 (n + 1)).toNat : ℤ)

end

end A276256.P6726596419985517352

namespace A276256

/-- `A276258(n+1)^A020639(A001043(n+1))` -/
def P6726596419985517352.Spec : Prop :=
  ∀ n, P6726596419985517352.a n = (A276256 (n + 1) : ℚ)

end A276256

/-! ## A276256.P16623895773619907114

`A276258(n+1)^A000005(A098415(n+1))`
-/

namespace A276256.P16623895773619907114
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A276258 (n + 1) : ℚ) ^ (A000005 (A098415 (n + 1)).toNat : ℤ)

end

end A276256.P16623895773619907114

namespace A276256

/-- `A276258(n+1)^A000005(A098415(n+1))` -/
def P16623895773619907114.Spec : Prop :=
  ∀ n, P16623895773619907114.a n = (A276256 (n + 1) : ℚ)

end A276256

/-! ## A276256.P14873134729493185094

`A276258(n+1)^A000005(A276262(n+1))`
-/

namespace A276256.P14873134729493185094
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A276258 (n + 1) : ℚ) ^ (A000005 (A276262 (n + 1)).toNat : ℤ)

end

end A276256.P14873134729493185094

namespace A276256

/-- `A276258(n+1)^A000005(A276262(n+1))` -/
def P14873134729493185094.Spec : Prop :=
  ∀ n, P14873134729493185094.a n = (A276256 (n + 1) : ℚ)

end A276256

/-!
# A276257: a(1) = a(2) = a(3) = a(4) = 1; for n>4, a(n) = ( a(n-1)+a(n-2)+a(n-3)+1 )^2 / a(n-4).

The programs for A276257, the canonical program `A276257.P7331088886659733407` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A276257 has offset 1).

The definition of A276257 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A276257.P7331088886659733407

`A276259(n+1)²`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A276257

/-- `A276259(n+1)²` -/
def P7331088886659733407.Spec : Prop :=
  ∀ n, P7331088886659733407.a n = A276257 (n + 1)

theorem P7331088886659733407.correct : P7331088886659733407.Spec := by
  intro n
  simp only [A276257, Nat.add_sub_cancel]

end A276257

/-! ## A276257.P15141958012347103316

`4^(a(n-1)+a(n-2)+a(n-3)+1)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=16, a(5)=361`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A276257.P15141958012347103316
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1, 1, 16, 361] fun n a =>
  4 ^ (a (n - 1) + a (n - 2) + a (n - 3) + 1)

end

end A276257.P15141958012347103316

namespace A276257

/-- `4^(a(n-1)+a(n-2)+a(n-3)+1)` -/
def P15141958012347103316.Spec : Prop :=
  ∀ n, (P15141958012347103316.a n : ℤ) = A276257 (n + 1)

end A276257

/-! ## A276257.P948183512319137271

`(a(n-1)+a(n-2)+a(n-3)+1)²/a(n-4)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1`
-/

namespace A276257.P948183512319137271
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1, 1, 1] fun n a =>
  (a (n - 1) + (a (n - 2) + (a (n - 3) + 1))) ^ 2 / a (n - 4)

end

end A276257.P948183512319137271

namespace A276257

/-- `(a(n-1)+a(n-2)+a(n-3)+1)²/a(n-4)` -/
def P948183512319137271.Spec : Prop :=
  ∀ n, P948183512319137271.a n = (A276257 (n + 1) : ℚ)

end A276257

/-! ## A276257.P8724351903835929460

`A276259(n+1)^A020639(A001043(n+1))`
-/

namespace A276257.P8724351903835929460
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A276259 (n + 1) : ℚ) ^ (A020639 (A001043 (n + 1)).toNat : ℤ)

end

end A276257.P8724351903835929460

namespace A276257

/-- `A276259(n+1)^A020639(A001043(n+1))` -/
def P8724351903835929460.Spec : Prop :=
  ∀ n, P8724351903835929460.a n = (A276257 (n + 1) : ℚ)

end A276257

/-! ## A276257.P16576515860209162073

`A276259(n+1)^A000005(A098415(n+1))`
-/

namespace A276257.P16576515860209162073
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A276259 (n + 1) : ℚ) ^ (A000005 (A098415 (n + 1)).toNat : ℤ)

end

end A276257.P16576515860209162073

namespace A276257

/-- `A276259(n+1)^A000005(A098415(n+1))` -/
def P16576515860209162073.Spec : Prop :=
  ∀ n, P16576515860209162073.a n = (A276257 (n + 1) : ℚ)

end A276257

/-!
# A276258: a(n) = 4*a(n-1)*a(n-2) - a(n-3), with a(1) = a(2) = a(3) = 1.

The programs for A276258, the canonical program `A276258.P14359328759027062155` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A276258 has offset 1).

The definition of A276258 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*a(n-1)*a(n-2)-a(n-3)` (program `A276258.P14359328759027062155`, by `A276258.P14359328759027062155.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A276258.P14359328759027062155

`4*a(n-1)*a(n-2)-a(n-3)` with `a(0)=1, a(1)=1, a(2)=1`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A276258

/-- `4*a(n-1)*a(n-2)-a(n-3)` -/
def P14359328759027062155.Spec : Prop :=
  ∀ n, P14359328759027062155.a n = A276258 (n + 1)

theorem P14359328759027062155.correct : P14359328759027062155.Spec := by
  intro n
  simp only [A276258, Nat.add_sub_cancel]

end A276258

/-! ## A276258.P5092312050643856791

`(a(n-1)²+a(n-2)²+1)/a(n-3)` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A276258.P5092312050643856791
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  (a (n - 1) ^ 2 + a (n - 2) ^ 2 + 1) / a (n - 3)

end

end A276258.P5092312050643856791

namespace A276258

/-- `(a(n-1)²+a(n-2)²+1)/a(n-3)` -/
def P5092312050643856791.Spec : Prop :=
  ∀ n, P5092312050643856791.a n = (A276258 (n + 1) : ℚ)

end A276258

/-! ## A276258.P3487126526348487780

`sqrt(A276256(n+1))`
-/

namespace A276258.P3487126526348487780
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A276256 (n + 1) : ℝ)

end

end A276258.P3487126526348487780

namespace A276258

/-- `sqrt(A276256(n+1))` -/
def P3487126526348487780.Spec : Prop :=
  ∀ n, P3487126526348487780.a n = (A276258 (n + 1) : ℝ)

end A276258

/-! ## A276258.P18386168688346494790

`root(A276256(n+1), A035250(A035250(n+1)))`
-/

namespace A276258.P18386168688346494790
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A276256 (n + 1) : ℝ) ^ (1 / (A035250 (A035250 (n + 1)).toNat : ℝ))

end

end A276258.P18386168688346494790

namespace A276258

/-- `root(A276256(n+1), A035250(A035250(n+1)))` -/
def P18386168688346494790.Spec : Prop :=
  ∀ n, P18386168688346494790.a n = (A276258 (n + 1) : ℝ)

end A276258

/-!
# A276259: a(n) = 5*a(n-1)*a(n-2)*a(n-3) - a(n-4) with n>4, a(1) = a(2) = a(3) = a(4) = 1.

The programs for A276259, the canonical program `A276259.P18440348485762920970` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A276259 has offset 1).

The definition of A276259 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5*a(n-1)*a(n-2)*a(n-3)-a(n-4)` (program `A276259.P18440348485762920970`, by `A276259.P18440348485762920970.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A276259.P18440348485762920970

`5*a(n-1)*a(n-2)*a(n-3)-a(n-4)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A276259

/-- `5*a(n-1)*a(n-2)*a(n-3)-a(n-4)` -/
def P18440348485762920970.Spec : Prop :=
  ∀ n, P18440348485762920970.a n = A276259 (n + 1)

theorem P18440348485762920970.correct : P18440348485762920970.Spec := by
  intro n
  simp only [A276259, Nat.add_sub_cancel]

end A276259

/-! ## A276259.P16688681986191025125

`(a(n-1)²+a(n-2)²+a(n-3)²+1)/a(n-4)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1`
-/

namespace A276259.P16688681986191025125
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1, 1, 1] fun n a =>
  (a (n - 1) ^ 2 + a (n - 2) ^ 2 + a (n - 3) ^ 2 + 1) / a (n - 4)

end

end A276259.P16688681986191025125

namespace A276259

/-- `(a(n-1)²+a(n-2)²+a(n-3)²+1)/a(n-4)` -/
def P16688681986191025125.Spec : Prop :=
  ∀ n, P16688681986191025125.a n = (A276259 (n + 1) : ℚ)

end A276259

/-! ## A276259.P5512204993026388717

`sqrt(A276257(n+1))`
-/

namespace A276259.P5512204993026388717
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A276257 (n + 1) : ℝ)

end

end A276259.P5512204993026388717

namespace A276259

/-- `sqrt(A276257(n+1))` -/
def P5512204993026388717.Spec : Prop :=
  ∀ n, P5512204993026388717.a n = (A276259 (n + 1) : ℝ)

end A276259

/-! ## A276259.P14132977854362096470

`root(A276257(n+1), A035250(A035250(n+1)))`
-/

namespace A276259.P14132977854362096470
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A276257 (n + 1) : ℝ) ^ (1 / (A035250 (A035250 (n + 1)).toNat : ℝ))

end

end A276259.P14132977854362096470

namespace A276259

/-- `root(A276257(n+1), A035250(A035250(n+1)))` -/
def P14132977854362096470.Spec : Prop :=
  ∀ n, P14132977854362096470.a n = (A276259 (n + 1) : ℝ)

end A276259

/-!
# A276260: Odd primes p such that p is in the trajectory of p+1 under the Collatz 3x+1 map (A014682).

The programs for A276260, there is no canonical definition to state claims against.
-/

/-! ## A276260.P4880109095769955969

`p?[A355569(n+1)]`
-/

namespace A276260.P4880109095769955969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355569 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A276260.P4880109095769955969

/-! ## A276260.P14082841444339384440

`p?[A070991(n+3)-1]`
-/

namespace A276260.P14082841444339384440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070991 (n + 3) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A276260.P14082841444339384440

/-! ## A276260.P8301195247746571231

`eq[A055672(n), A187831(n)]`
-/

namespace A276260.P8301195247746571231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055672 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187831 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A276260.P8301195247746571231

/-! ## A276260.P1625974628846247131

`p?[A014681(A070991(n+1))]`
-/

namespace A276260.P1625974628846247131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (A070991 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A276260.P1625974628846247131

/-! ## A276260.P239760945178483475

`p?[eq[A014681(n), A187831(n)]]`
-/

namespace A276260.P239760945178483475
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187831 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A276260.P239760945178483475

/-!
# A276261: Centered 21-gonal primes.

The programs for A276261, there is no canonical definition to state claims against.
-/

/-! ## A276261.P437116614629498174

`∩[A069178(n+1), A124826(n+1)]`
-/

namespace A276261.P437116614629498174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069178 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124826 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A276261.P437116614629498174

/-! ## A276261.P775142433317516788

`p?[21*C(n, 2)+1]`
-/

namespace A276261.P775142433317516788
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  21 * Nat.choose n 2 + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A276261.P775142433317516788

/-! ## A276261.P8066281495361037294

`p?[or(1, 21*C(n, 2))]`
-/

namespace A276261.P8066281495361037294
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (21 * Nat.choose n 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A276261.P8066281495361037294

/-! ## A276261.P17535775064824425170

`p?[xor(1, 21*C(n, 2))]`
-/

namespace A276261.P17535775064824425170
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (21 * Nat.choose n 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A276261.P17535775064824425170

/-! ## A276261.P9140330851405693925

`p?[∑[21*(n+1)]+1]`
-/

namespace A276261.P9140330851405693925
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  21 * (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A276261.P9140330851405693925

/-! ## A276261.P14762886232840955775

`or(1, p?[A069178(n+1)])`
-/

namespace A276261.P14762886232840955775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069178 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A276261.P14762886232840955775

/-! ## A276261.P4563237969591706607

`record[p?[21*A000217(A028242(n))+1]]`
-/

namespace A276261.P4563237969591706607
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  21 * A000217 (A028242 n).toNat + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A276261.P4563237969591706607

/-! ## A276261.P16864387905031577563

`∩[A045465(n+1), A069178(n+1)]`
-/

namespace A276261.P16864387905031577563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045465 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069178 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A276261.P16864387905031577563

/-! ## A276261.P3082570626188710961

`∩[A069178(n+1), A140444(n+1)]`
-/

namespace A276261.P3082570626188710961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069178 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140444 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A276261.P3082570626188710961

/-!
# A276262: Centered 22-gonal primes.

The programs for A276262, the canonical program `A276262.P9385478510724947906` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A276262 has offset 1).

The definition of A276262 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 106 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A276262.P9385478510724947906

`∩[A141849(n+1), A195043(n)]`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A276262

/-- `∩[A141849(n+1), A195043(n)]` -/
def P9385478510724947906.Spec : Prop :=
  ∀ n, (P9385478510724947906.a n : ℤ) = A276262 (n + 1)

theorem P9385478510724947906.correct : P9385478510724947906.Spec := by
  intro n
  simp only [A276262, Nat.add_sub_cancel]

end A276262

/-! ## A276262.P8284922639216806557

`∩[A069173(n+1), A141849(n+1)]`
-/

namespace A276262.P8284922639216806557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069173 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141849 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A276262.P8284922639216806557

namespace A276262

/-- `∩[A069173(n+1), A141849(n+1)]` -/
def P8284922639216806557.Spec : Prop :=
  ∀ n, (P8284922639216806557.a n : ℤ) = A276262 (n + 1)

end A276262

/-! ## A276262.P10972632688291839757

`p?[∑[22*n]+1]`
-/

namespace A276262.P10972632688291839757
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  22 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A276262.P10972632688291839757

namespace A276262

/-- `p?[∑[22*n]+1]` -/
def P10972632688291839757.Spec : Prop :=
  ∀ n, (P10972632688291839757.a n : ℤ) = A276262 (n + 1)

end A276262

/-! ## A276262.P15927981640262782829

`or(1, p?[11*(n²+n)+1])`
-/

namespace A276262.P15927981640262782829
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11 * (n ^ 2 + n) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A276262.P15927981640262782829

namespace A276262

/-- `or(1, p?[11*(n²+n)+1])` -/
def P15927981640262782829.Spec : Prop :=
  ∀ n, (P15927981640262782829.a n : ℤ) = A276262 (n + 1)

end A276262

/-! ## A276262.P16096588205132217391

`∑{p}[p?[(n+1)*11*n+1], #]`
-/

namespace A276262.P16096588205132217391
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (11 * n) + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), p

end

end A276262.P16096588205132217391

namespace A276262

/-- `∑{p}[p?[(n+1)*11*n+1], #]` -/
def P16096588205132217391.Spec : Prop :=
  ∀ n, (P16096588205132217391.a n : ℤ) = A276262 (n + 1)

end A276262

/-! ## A276262.P6787282162872481277

`∏{p}[p?[(n+1)*11*n+1], #]`
-/

namespace A276262.P6787282162872481277
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (11 * n) + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), p

end

end A276262.P6787282162872481277

namespace A276262

/-- `∏{p}[p?[(n+1)*11*n+1], #]` -/
def P6787282162872481277.Spec : Prop :=
  ∀ n, (P6787282162872481277.a n : ℤ) = A276262 (n + 1)

end A276262

/-! ## A276262.P3014777186309390223

`record[p?[A195043(xor(1, n))]]`
-/

namespace A276262.P3014777186309390223
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195043 (Nat.xor 1 n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A276262.P3014777186309390223

namespace A276262

/-- `record[p?[A195043(xor(1, n))]]` -/
def P3014777186309390223.Spec : Prop :=
  ∀ n, P3014777186309390223.a n = A276262 (n + 1)

end A276262

/-! ## A276262.P15509150727399634370

`∏{d}[p?[A069173(n+1)], #]`
-/

namespace A276262.P15509150727399634370
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069173 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A276262.P15509150727399634370

namespace A276262

/-- `∏{d}[p?[A069173(n+1)], #]` -/
def P15509150727399634370.Spec : Prop :=
  ∀ n, (P15509150727399634370.a n : ℤ) = A276262 (n + 1)

end A276262

/-! ## A276262.P15578020407566828770

`∩[A215163(n+1), A195043(n)]`
-/

namespace A276262.P15578020407566828770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215163 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195043 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A276262.P15578020407566828770

namespace A276262

/-- `∩[A215163(n+1), A195043(n)]` -/
def P15578020407566828770.Spec : Prop :=
  ∀ n, (P15578020407566828770.a n : ℤ) = A276262 (n + 1)

end A276262

/-! ## A276262.P14388752917677740353

`∩[A215390(n+1), A195043(n)]`
-/

namespace A276262.P14388752917677740353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215390 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195043 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A276262.P14388752917677740353

namespace A276262

/-- `∩[A215390(n+1), A195043(n)]` -/
def P14388752917677740353.Spec : Prop :=
  ∀ n, (P14388752917677740353.a n : ℤ) = A276262 (n + 1)

end A276262

/-!
# A276263: Centered 23-gonal primes.

The programs for A276263, there is no canonical definition to state claims against.
-/

/-! ## A276263.P12480004186629816303

`p?[23*C(n, 2)+1]`
-/

namespace A276263.P12480004186629816303
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  23 * Nat.choose n 2 + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A276263.P12480004186629816303

/-! ## A276263.P7968360463424696360

`p?[a(n-1)+23*n]` with `a(0)=1`
-/

namespace A276263.P7968360463424696360
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) + 23 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A276263.P7968360463424696360

/-! ## A276263.P10671263703481348724

`or(1, p?[A069174(n+1)])`
-/

namespace A276263.P10671263703481348724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069174 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A276263.P10671263703481348724

/-! ## A276263.P4580731403696475539

`∏{p}[p?[A069174(n+2)], #]`
-/

namespace A276263.P4580731403696475539
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069174 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A276263.P4580731403696475539

/-!
# A276264: Centered 25-gonal primes.

The programs for A276264, there is no canonical definition to state claims against.
-/

/-! ## A276264.P15601274397900354914

`∩[A124199(n+1), A262221(n)]`
-/

namespace A276264.P15601274397900354914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124199 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262221 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A276264.P15601274397900354914

/-! ## A276264.P9756213594120964307

`∩[A124199(n+1), A061793(n)-2]`
-/

namespace A276264.P9756213594120964307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124199 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061793 n - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A276264.P9756213594120964307

/-! ## A276264.P7048448937484209064

`∩[A124199(n+1), A001545(n)%A061793(n)]`
-/

namespace A276264.P7048448937484209064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124199 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001545 n) (A061793 n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A276264.P7048448937484209064

/-! ## A276264.P13325965053169951133

`∩[A065384(n+2), A262221(n)]`
-/

namespace A276264.P13325965053169951133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065384 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262221 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A276264.P13325965053169951133

/-! ## A276264.P7375526479867666232

`∩[A034856(5*n+1), A124199(n+1)]`
-/

namespace A276264.P7375526479867666232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034856 (5 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124199 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A276264.P7375526479867666232

/-! ## A276264.P9488046493500191957

`∩[A141927(n+1), A054254(n)]`
-/

namespace A276264.P9488046493500191957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141927 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054254 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A276264.P9488046493500191957

/-! ## A276264.P2068349528510053204

`∩[A141927(n+1), A262221(n)]`
-/

namespace A276264.P2068349528510053204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141927 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262221 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A276264.P2068349528510053204

/-! ## A276264.P1172718947925282969

`∩[A034856(n+1), A141927(n+1)]`
-/

namespace A276264.P1172718947925282969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034856 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141927 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A276264.P1172718947925282969

/-! ## A276264.P17415697390786445747

`∩[A124199(n+1), A141927(n+1)]`
-/

namespace A276264.P17415697390786445747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124199 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141927 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A276264.P17415697390786445747

/-!
# A276265: Expansion of (1 + 2*x)/(1 - 6*x + 6*x^2).

The programs for A276265, the canonical program `A276265.P3874102708499601652` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A276265 has offset 0).

The definition of A276265 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A276265.P3874102708499601652

`6*a(n-1)-6*a(n-2)` with `a(0)=1, a(1)=8`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A276265

/-- `6*a(n-1)-6*a(n-2)` -/
def P3874102708499601652.Spec : Prop :=
  ∀ n, P3874102708499601652.a n = A276265 n

theorem P3874102708499601652.correct : P3874102708499601652.Spec := by
  intro n
  simp only [A276265]

end A276265

/-! ## A276265.P7972514796147189675

`6*(a(n-1)-a(n-2))` with `a(0)=1, a(1)=8`
-/

namespace A276265.P7972514796147189675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 8] fun n a =>
  6 * (a (n - 1) - a (n - 2))

end

end A276265.P7972514796147189675

namespace A276265

/-- `6*(a(n-1)-a(n-2))` -/
def P7972514796147189675.Spec : Prop :=
  ∀ n, P7972514796147189675.a n = A276265 n

theorem P7972514796147189675.correct : P7972514796147189675.Spec := by
  intro n
  simp only [A276265, Nat.add_sub_cancel, A276265.P7972514796147189675.a, A276265.P3874102708499601652.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A276265

/-! ## A276265.P9766127432915532878

`A094434(n+1)+A030192(n)`
-/

namespace A276265.P9766127432915532878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094434 (n + 1) + A030192 n

end

end A276265.P9766127432915532878

namespace A276265

/-- `A094434(n+1)+A030192(n)` -/
def P9766127432915532878.Spec : Prop :=
  ∀ n, P9766127432915532878.a n = A276265 n

end A276265

/-! ## A276265.P14039818822907872878

`A094434(n+2)-A086405(n)`
-/

namespace A276265.P14039818822907872878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094434 (n + 2) - A086405 n

end

end A276265.P14039818822907872878

namespace A276265

/-- `A094434(n+2)-A086405(n)` -/
def P14039818822907872878.Spec : Prop :=
  ∀ n, P14039818822907872878.a n = A276265 n

end A276265

/-! ## A276265.P8724434927419231470

`2*A030192(n)-A086405(n)`
-/

namespace A276265.P8724434927419231470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A030192 n - A086405 n

end

end A276265.P8724434927419231470

namespace A276265

/-- `2*A030192(n)-A086405(n)` -/
def P8724434927419231470.Spec : Prop :=
  ∀ n, P8724434927419231470.a n = A276265 n

end A276265

/-! ## A276265.P12736340496167807138

`∑[A030192(n)+Δ[A094433(n)]]`
-/

namespace A276265.P12736340496167807138
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094433 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030192 n + (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A276265.P12736340496167807138

namespace A276265

/-- `∑[A030192(n)+Δ[A094433(n)]]` -/
def P12736340496167807138.Spec : Prop :=
  ∀ n, P12736340496167807138.a n = A276265 n

end A276265

/-! ## A276265.P3897829864696578371

`Δ[A086405(n)]-2*A083881(n)`
-/

namespace A276265.P3897829864696578371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086405 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 2 * A083881 n

end

end A276265.P3897829864696578371

namespace A276265

/-- `Δ[A086405(n)]-2*A083881(n)` -/
def P3897829864696578371.Spec : Prop :=
  ∀ n, P3897829864696578371.a n = A276265 n

end A276265

/-! ## A276265.P14074938739051487164

`A086405(n)+2*A094434(n+1)`
-/

namespace A276265.P14074938739051487164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086405 n + 2 * A094434 (n + 1)

end

end A276265.P14074938739051487164

namespace A276265

/-- `A086405(n)+2*A094434(n+1)` -/
def P14074938739051487164.Spec : Prop :=
  ∀ n, P14074938739051487164.a n = A276265 n

end A276265

/-! ## A276265.P11307880190889276880

`A083881(n+1)-2*A094433(n+1)`
-/

namespace A276265.P11307880190889276880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083881 (n + 1) - 2 * A094433 (n + 1)

end

end A276265.P11307880190889276880

namespace A276265

/-- `A083881(n+1)-2*A094433(n+1)` -/
def P11307880190889276880.Spec : Prop :=
  ∀ n, P11307880190889276880.a n = A276265 n

end A276265

/-! ## A276265.P18126024195389335297

`Δ[Δ[A094433(n+1)]]-A094433(n+2)`
-/

namespace A276265.P18126024195389335297
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094433 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A094433 (n + 2)

end

end A276265.P18126024195389335297

namespace A276265

/-- `Δ[Δ[A094433(n+1)]]-A094433(n+2)` -/
def P18126024195389335297.Spec : Prop :=
  ∀ n, P18126024195389335297.a n = A276265 n

end A276265

/-! ## A276265.P17551300122528292962

`A094434(n+1)+∑[A094434(n+1)+A083881(n)]`
-/

namespace A276265.P17551300122528292962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094434 (n + 1) + A083881 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094434 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A276265.P17551300122528292962

namespace A276265

/-- `A094434(n+1)+∑[A094434(n+1)+A083881(n)]` -/
def P17551300122528292962.Spec : Prop :=
  ∀ n, P17551300122528292962.a n = A276265 n

end A276265

/-! ## A276265.P5710320283057346349

`A094434(n+2)-(A094434(n+1)+A094433(n+1))`
-/

namespace A276265.P5710320283057346349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094434 (n + 2) - (A094434 (n + 1) + A094433 (n + 1))

end

end A276265.P5710320283057346349

namespace A276265

/-- `A094434(n+2)-(A094434(n+1)+A094433(n+1))` -/
def P5710320283057346349.Spec : Prop :=
  ∀ n, P5710320283057346349.a n = A276265 n

end A276265

/-!
# A276266: a(0) = a(1) = a(2) = 1; for n>2, a(n) = ( a(n-1)*a(n-2) + 1 )^2 / a(n-3).

The programs for A276266, the canonical program `A276266.P5571962797625677283` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A276266 has offset 0).

The definition of A276266 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A276266.P5571962797625677283

`(a(n-1)*a(n-2)+1)²/a(n-3)` with `a(0)=1, a(1)=1, a(2)=1`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A276266

/-- `(a(n-1)*a(n-2)+1)²/a(n-3)` -/
def P5571962797625677283.Spec : Prop :=
  ∀ n, P5571962797625677283.a n = (A276266 n : ℚ)

end A276266

/-! ## A276266.P16438073739453293056

`A208209(n)²`
-/

namespace A276266.P16438073739453293056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208209 n ^ 2

end

end A276266.P16438073739453293056

namespace A276266

/-- `A208209(n)²` -/
def P16438073739453293056.Spec : Prop :=
  ∀ n, P16438073739453293056.a n = A276266 n

end A276266

/-! ## A276266.P409088703916050333

`A208209(n)^A000032(A023927(n))`
-/

namespace A276266.P409088703916050333
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208209 n : ℚ) ^ (A000032 (A023927 n).toNat : ℤ)

end

end A276266.P409088703916050333

namespace A276266

/-- `A208209(n)^A000032(A023927(n))` -/
def P409088703916050333.Spec : Prop :=
  ∀ n, P409088703916050333.a n = (A276266 n : ℚ)

end A276266

/-! ## A276266.P18006260804525708240

`A208209(n)^A000005(A051698(n))`
-/

namespace A276266.P18006260804525708240
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208209 n : ℚ) ^ (A000005 (A051698 n).toNat : ℤ)

end

end A276266.P18006260804525708240

namespace A276266

/-- `A208209(n)^A000005(A051698(n))` -/
def P18006260804525708240.Spec : Prop :=
  ∀ n, P18006260804525708240.a n = (A276266 n : ℚ)

end A276266

/-! ## A276266.P11896446373483883643

`A208209(n)^A000040(A208183(n))`
-/

namespace A276266.P11896446373483883643
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208209 n : ℚ) ^ (A000040 (A208183 n).toNat : ℤ)

end

end A276266.P11896446373483883643

namespace A276266

/-- `A208209(n)^A000040(A208183(n))` -/
def P11896446373483883643.Spec : Prop :=
  ∀ n, P11896446373483883643.a n = (A276266 n : ℚ)

end A276266

/-!
# A276267: a(n) = ( a(n-1)^2*a(n-2)^2*a(n-3)^2 + 1 ) / a(n-4), with a(0)=a(1)=a(2)=a(3)=1.

The programs for A276267, there is no canonical definition to state claims against.
-/

/-! ## A276267.P5935385941700325830

`(a(n-1)²*a(n-2)²*a(n-3)²+1)/a(n-4)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1`
-/

namespace A276267.P5935385941700325830
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1, 1, 1] fun n a =>
  (a (n - 1) ^ 2 * a (n - 2) ^ 2 * a (n - 3) ^ 2 + 1) / a (n - 4)

end

end A276267.P5935385941700325830

/-! ## A276267.P7348238486040370536

`sqrt(A276268(n))`
-/

namespace A276267.P7348238486040370536
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A276268 n : ℝ)

end

end A276267.P7348238486040370536

/-! ## A276267.P2437453946602048811

`root(A276268(n), p?[A261122(n)])`
-/

namespace A276267.P2437453946602048811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261122 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A276268 n : ℝ) ^ (1 / (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℝ))

end

end A276267.P2437453946602048811

/-! ## A276267.P3413211755885276387

`root(A276268(n), A257639(n+1))`
-/

namespace A276267.P3413211755885276387
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A276268 n : ℝ) ^ (1 / (A257639 (n + 1) : ℝ))

end

end A276267.P3413211755885276387

/-!
# A276268: a(0) = a(1) = a(2) = a(3) = 1; for n>3, a(n) = ( a(n-1)*a(n-2)*a(n-3) + 1 )^2 / a(n-4).

The programs for A276268, there is no canonical definition to state claims against.
-/

/-! ## A276268.P3832215897934294218

`A276267(n)²`
-/

namespace A276268.P3832215897934294218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276267 n ^ 2

end

end A276268.P3832215897934294218

/-! ## A276268.P13712226708173442203

`A276267(n)^sqrt(A040002(n))`
-/

namespace A276268.P13712226708173442203
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A276267 n : ℝ) ^ (Real.sqrt (A040002 n : ℝ))

end

end A276268.P13712226708173442203

/-! ## A276268.P6143266862427627220

`A276267(n)^p?[A261122(n)]`
-/

namespace A276268.P6143266862427627220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261122 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A276267 n : ℚ) ^ (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℤ)

end

end A276268.P6143266862427627220

/-! ## A276268.P5961040571737402775

`A276267(n)^A014963(A000079(n))`
-/

namespace A276268.P5961040571737402775
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A276267 n : ℚ) ^ (A014963 (A000079 n).toNat : ℤ)

end

end A276268.P5961040571737402775

/-! ## A276268.P11394790079456768504

`A276267(n)^A020639(A276230(n))`
-/

namespace A276268.P11394790079456768504
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A276267 n : ℚ) ^ (A020639 (A276230 n).toNat : ℤ)

end

end A276268.P11394790079456768504

/-!
# A276269: a(n) = n + the largest (if n is even), or the smallest (if n is odd) prime factor of n if n > 1; and a(1)=1.

The programs for A276269, there is no canonical definition to state claims against.
-/

/-! ## A276269.P18437358240542139437

`A159475(n+1)+A046665(A133265(n))`
-/

namespace A276269.P18437358240542139437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159475 (n + 1) + A046665 (A133265 n).toNat

end

end A276269.P18437358240542139437

/-! ## A276269.P7785240311652545654

`A159475(n+1)+A004442(n)%A085392(n+1)`
-/

namespace A276269.P7785240311652545654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159475 (n + 1) + Int.tmod (A004442 n) (A085392 (n + 1))

end

end A276269.P7785240311652545654

/-! ## A276269.P13787961450566268857

`A086131(2^(n+1))+n+1`
-/

namespace A276269.P13787961450566268857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086131 (2 ^ (n + 1)) + (n + 1 : ℤ)

end

end A276269.P13787961450566268857

/-! ## A276269.P17033381105015388867

`A324371(n+1)+A029837(∑{d}[n+1, 2^(#-1)])`
-/

namespace A276269.P17033381105015388867
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324371 (n + 1) + A029837 (SequenceMachineLib.roundAway (∑ d ∈ Nat.divisors (f1 n), (2 : ℚ) ^ ((d : ℤ) - 1 : ℤ))).toNat

end

end A276269.P17033381105015388867

/-! ## A276269.P18216138043127541232

`A080256(A000079(n))+A006530(n+1)`
-/

namespace A276269.P18216138043127541232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080256 (A000079 n).toNat + A006530 (n + 1)

end

end A276269.P18216138043127541232

/-!
# A276270: Number of solutions to the congruence x^3 + y^2 + 1 == 0 (mod n).

The programs for A276270, there is no canonical definition to state claims against.
-/

/-! ## A276270.P3949692897911260984

`A169618(∑[n+1])`
-/

namespace A276270.P3949692897911260984
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169618 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A276270.P3949692897911260984

/-! ## A276270.P7341903881348753767

`A169618(A025747(n))%16`
-/

namespace A276270.P7341903881348753767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A169618 (A025747 n).toNat) 16

end

end A276270.P7341903881348753767

/-! ## A276270.P12174284288011211222

`A169618(A000217(n+1))%16`
-/

namespace A276270.P12174284288011211222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A169618 (A000217 (n + 1)).toNat) 16

end

end A276270.P12174284288011211222

/-! ## A276270.P15750525597763308783

`A169618(record[A130270(n+1)])%21`
-/

namespace A276270.P15750525597763308783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130270 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A169618 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat) 21

end

end A276270.P15750525597763308783

/-! ## A276270.P11455956456020596833

`A185238(n)+A169618(A025747(n))`
-/

namespace A276270.P11455956456020596833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185238 n + A169618 (A025747 n).toNat

end

end A276270.P11455956456020596833

/-!
# A276271: a(0) = a(1) = a(2) = a(3) = 1; for n > 3, a(n) = (a(n-1)^2+a(n-2)^2+a(n-3)^2+a(n-1)+a(n-2)+a(n-3))/a(n-4).

The programs for A276271, the canonical program `A276271.P5937555385656053741` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A276271 has offset 0).

The definition of A276271 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A276271.P5937555385656053741

`8*a(n-1)*a(n-2)*a(n-3)-a(n-4)-1` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A276271

/-- `8*a(n-1)*a(n-2)*a(n-3)-a(n-4)-1` -/
def P5937555385656053741.Spec : Prop :=
  ∀ n, P5937555385656053741.a n = A276271 n

theorem P5937555385656053741.correct : P5937555385656053741.Spec := by
  intro n
  simp only [A276271]

end A276271

/-! ## A276271.P17298858619582147283

`(a(n-1)²+a(n-2)²+a(n-3)²+a(n-1)+a(n-2)+a(n-3))/a(n-4)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1`
-/

namespace A276271.P17298858619582147283
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1, 1, 1] fun n a =>
  (a (n - 1) ^ 2 + a (n - 2) ^ 2 + a (n - 3) ^ 2 + (a (n - 1) + (a (n - 2) + a (n - 3)))) / a (n - 4)

end

end A276271.P17298858619582147283

namespace A276271

/-- `(a(n-1)²+a(n-2)²+a(n-3)²+a(n-1)+a(n-2)+a(n-3))/a(n-4)` -/
def P17298858619582147283.Spec : Prop :=
  ∀ n, P17298858619582147283.a n = (A276271 n : ℚ)

end A276271

/-! ## A276271.P9200682337688240952

`A267874(a(n-1))` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=6`
-/

namespace A276271.P9200682337688240952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 1, 6] fun n a =>
  A267874 (a (n - 1)).toNat

end

end A276271.P9200682337688240952

namespace A276271

/-- `A267874(a(n-1))` -/
def P9200682337688240952.Spec : Prop :=
  ∀ n, P9200682337688240952.a n = A276271 n

end A276271

/-! ## A276271.P7528003964847663323

`floor(ϕ^A034008(n)^A002265(n))`
-/

namespace A276271.P7528003964847663323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio ^ ((A034008 n : ℚ) ^ (A002265 n : ℤ) : ℝ)⌋

end

end A276271.P7528003964847663323

namespace A276271

/-- `floor(ϕ^A034008(n)^A002265(n))` -/
def P7528003964847663323.Spec : Prop :=
  ∀ n, P7528003964847663323.a n = A276271 n

end A276271

/-!
# A276272: Number of polytets with n cells, distinguishing mirror images.

The programs for A276272, there is no canonical definition to state claims against.
-/

/-! ## A276272.P902509414252667175

`A281965(A024311(n+1))`
-/

namespace A276272.P902509414252667175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281965 (A024311 (n + 1)).toNat

end

end A276272.P902509414252667175

/-! ## A276272.P13214957813175791567

`A184305(A306332(n+1))`
-/

namespace A276272.P13214957813175791567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184305 (A306332 (n + 1)).toNat

end

end A276272.P13214957813175791567

/-! ## A276272.P11325624471191516684

`A352129(A224214(n+1))`
-/

namespace A276272.P11325624471191516684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352129 (A224214 (n + 1)).toNat

end

end A276272.P11325624471191516684

/-!
# A276273: Replacing every "mixed pair" of integers (as defined in the comments) with the smaller integer of the pair rebuilds the sequence.

The programs for A276273, the canonical program `A276273.P16785661812156744009` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A276273 has offset 1).

The definition of A276273 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A276273.P16785661812156744009

`A088748(A003188(n))`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A276273

/-- `A088748(A003188(n))` -/
def P16785661812156744009.Spec : Prop :=
  ∀ n, P16785661812156744009.a n = A276273 (n + 1)

theorem P16785661812156744009.correct : P16785661812156744009.Spec := by
  intro n
  simp only [A276273, Nat.add_sub_cancel]

end A276273

/-! ## A276273.P8860715261136704415

`A309709(n)+A102560(n)`
-/

namespace A276273.P8860715261136704415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309709 n + A102560 n

end

end A276273.P8860715261136704415

namespace A276273

/-- `A309709(n)+A102560(n)` -/
def P8860715261136704415.Spec : Prop :=
  ∀ n, P8860715261136704415.a n = A276273 (n + 1)

end A276273

/-! ## A276273.P6647662143000575269

`A005811(xor(n, floor(n/2)))+1`
-/

namespace A276273.P6647662143000575269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 (Int.xor (n : ℤ) ⌊(n : ℚ) / 2⌋).toNat + 1

end

end A276273.P6647662143000575269

namespace A276273

/-- `A005811(xor(n, floor(n/2)))+1` -/
def P6647662143000575269.Spec : Prop :=
  ∀ n, P6647662143000575269.a n = A276273 (n + 1)

end A276273

/-! ## A276273.P6974273558815980323

`A000120(xor(n, floor(n/4)))+1`
-/

namespace A276273.P6974273558815980323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (Int.xor (n : ℤ) ⌊(n : ℚ) / 4⌋).toNat + 1

end

end A276273.P6974273558815980323

namespace A276273

/-- `A000120(xor(n, floor(n/4)))+1` -/
def P6974273558815980323.Spec : Prop :=
  ∀ n, P6974273558815980323.a n = A276273 (n + 1)

end A276273

/-! ## A276273.P13831339370869153658

`A000120(A064706(n))+1`
-/

namespace A276273.P13831339370869153658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A064706 n).toNat + 1

end

end A276273.P13831339370869153658

namespace A276273

/-- `A000120(A064706(n))+1` -/
def P13831339370869153658.Spec : Prop :=
  ∀ n, P13831339370869153658.a n = A276273 (n + 1)

end A276273

/-! ## A276273.P2341022563123281993

`A057427(n+1)+A005811(A003188(n))`
-/

namespace A276273.P2341022563123281993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (n + 1) + A005811 (A003188 n).toNat

end

end A276273.P2341022563123281993

namespace A276273

/-- `A057427(n+1)+A005811(A003188(n))` -/
def P2341022563123281993.Spec : Prop :=
  ∀ n, P2341022563123281993.a n = A276273 (n + 1)

end A276273

/-! ## A276273.P15262497730798952815

`A136004(A003188(n))-A157532(n+2)`
-/

namespace A276273.P15262497730798952815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136004 (A003188 n).toNat - A157532 (n + 2)

end

end A276273.P15262497730798952815

namespace A276273

/-- `A136004(A003188(n))-A157532(n+2)` -/
def P15262497730798952815.Spec : Prop :=
  ∀ n, P15262497730798952815.a n = A276273 (n + 1)

end A276273

/-! ## A276273.P2727736297637115521

`A069010(A003188(2*n+1))+A069010(A003188(2*n))`
-/

namespace A276273.P2727736297637115521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069010 (A003188 (2 * n + 1)).toNat + A069010 (A003188 (2 * n)).toNat

end

end A276273.P2727736297637115521

namespace A276273

/-- `A069010(A003188(2*n+1))+A069010(A003188(2*n))` -/
def P2727736297637115521.Spec : Prop :=
  ∀ n, P2727736297637115521.a n = A276273 (n + 1)

end A276273

/-! ## A276273.P7458628365938143516

`A005811(A281553(2*n))+1`
-/

namespace A276273.P7458628365938143516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 (A281553 (2 * n)).toNat + 1

end

end A276273.P7458628365938143516

namespace A276273

/-- `A005811(A281553(2*n))+1` -/
def P7458628365938143516.Spec : Prop :=
  ∀ n, P7458628365938143516.a n = A276273 (n + 1)

end A276273

/-! ## A276273.P16684909099733447904

`A072339(A073122(2*n+1)+1)`
-/

namespace A276273.P16684909099733447904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072339 (A073122 (2 * n + 1) + 1).toNat

end

end A276273.P16684909099733447904

namespace A276273

/-- `A072339(A073122(2*n+1)+1)` -/
def P16684909099733447904.Spec : Prop :=
  ∀ n, P16684909099733447904.a n = A276273 (n + 1)

end A276273

/-! ## A276273.P8591169271025894502

`A000120((A048725(n)-n%4)/2+1)`
-/

namespace A276273.P8591169271025894502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (SequenceMachineLib.roundAway ((A048725 n - ((n % 4 : ℕ) : ℤ) : ℚ) / 2 + 1)).toNat

end

end A276273.P8591169271025894502

namespace A276273

/-- `A000120((A048725(n)-n%4)/2+1)` -/
def P8591169271025894502.Spec : Prop :=
  ∀ n, P8591169271025894502.a n = A276273 (n + 1)

end A276273

/-! ## A276273.P12751612298722520527

`A001221(A278219(2*n+1))+A001221(A278219(2*n))`
-/

namespace A276273.P12751612298722520527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A278219 (2 * n + 1)).toNat + A001221 (A278219 (2 * n)).toNat

end

end A276273.P12751612298722520527

namespace A276273

/-- `A001221(A278219(2*n+1))+A001221(A278219(2*n))` -/
def P12751612298722520527.Spec : Prop :=
  ∀ n, P12751612298722520527.a n = A276273 (n + 1)

end A276273

/-! ## A276273.P5579610652775056988

`A072339(A114389(2*n+1)+A114389(2*(n+1)))`
-/

namespace A276273.P5579610652775056988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072339 (A114389 (2 * n + 1) + A114389 (2 * (n + 1))).toNat

end

end A276273.P5579610652775056988

namespace A276273

/-- `A072339(A114389(2*n+1)+A114389(2*(n+1)))` -/
def P5579610652775056988.Spec : Prop :=
  ∀ n, P5579610652775056988.a n = A276273 (n + 1)

end A276273

/-! ## A276273.P15695530537172423388

`A005811(A003188(n))+A014963(12*(n+1))`
-/

namespace A276273.P15695530537172423388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 (A003188 n).toNat + A014963 (12 * (n + 1))

end

end A276273.P15695530537172423388

namespace A276273

/-- `A005811(A003188(n))+A014963(12*(n+1))` -/
def P15695530537172423388.Spec : Prop :=
  ∀ n, P15695530537172423388.a n = A276273 (n + 1)

end A276273

/-! ## A276273.P15473022108843890027

`∑{p}[A243353(n), A004736(A158416(#)+1)]+1`
-/

namespace A276273.P15473022108843890027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243353 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A004736 (A158416 p + 1).toNat + 1

end

end A276273.P15473022108843890027

namespace A276273

/-- `∑{p}[A243353(n), A004736(A158416(#)+1)]+1` -/
def P15473022108843890027.Spec : Prop :=
  ∀ n, P15473022108843890027.a n = A276273 (n + 1)

end A276273

/-! ## A276273.P10218480101587745480

`A072339(A256701(2*n+1)-n)`
-/

namespace A276273.P10218480101587745480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072339 (A256701 (2 * n + 1) - (n : ℤ)).toNat

end

end A276273.P10218480101587745480

namespace A276273

/-- `A072339(A256701(2*n+1)-n)` -/
def P10218480101587745480.Spec : Prop :=
  ∀ n, P10218480101587745480.a n = A276273 (n + 1)

end A276273

/-! ## A276273.P4617005041506629697

`A072339(A256702(2*n+1)+n+1)`
-/

namespace A276273.P4617005041506629697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072339 (A256702 (2 * n + 1) + (n + 1 : ℤ)).toNat

end

end A276273.P4617005041506629697

namespace A276273

/-- `A072339(A256702(2*n+1)+n+1)` -/
def P4617005041506629697.Spec : Prop :=
  ∀ n, P4617005041506629697.a n = A276273 (n + 1)

end A276273

/-!
# A276275: Padovan like sequence: a(n) = a(n-2) + a(n-3) for n>3, a(1)=2, a(2)=2, a(3)=0.

The programs for A276275, the canonical program `A276275.P10841503835307384402` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A276275 has offset 1).

The definition of A276275 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-2)+a(n-3)` (program `A276275.P10841503835307384402`, by `A276275.P10841503835307384402.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A276275.P10841503835307384402

`a(n-2)+a(n-3)` with `a(0)=2, a(1)=2, a(2)=0`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A276275

/-- `a(n-2)+a(n-3)` -/
def P10841503835307384402.Spec : Prop :=
  ∀ n, (P10841503835307384402.a n : ℤ) = A276275 (n + 1)

theorem P10841503835307384402.correct : P10841503835307384402.Spec := by
  intro n
  simp only [A276275, Nat.add_sub_cancel]

end A276275

/-! ## A276275.P2595733060963828094

`a(n-2)-floor(-a(n-3))` with `a(0)=2, a(1)=2, a(2)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A276275.P2595733060963828094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 2, 0] fun n a =>
  a (n - 2) - (-a (n - 3))

end

end A276275.P2595733060963828094

namespace A276275

/-- `a(n-2)-floor(-a(n-3))` -/
def P2595733060963828094.Spec : Prop :=
  ∀ n, P2595733060963828094.a n = A276275 (n + 1)

end A276275

/-! ## A276275.P18391282926355353893

`a(n-2)-ceil(-a(n-3))` with `a(0)=2, a(1)=2, a(2)=0`

`ceil` is left out, it is the identity on integers.
-/

namespace A276275.P18391282926355353893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 2, 0] fun n a =>
  a (n - 2) - (-a (n - 3))

end

end A276275.P18391282926355353893

namespace A276275

/-- `a(n-2)-ceil(-a(n-3))` -/
def P18391282926355353893.Spec : Prop :=
  ∀ n, P18391282926355353893.a n = A276275 (n + 1)

end A276275

/-! ## A276275.P11614576421943466257

`abs(Δ[a(n-2)-a(n-3)])` with `a(0)=2, a(1)=4, a(2)=2`
-/

namespace A276275.P11614576421943466257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 4, 2] fun n f1 =>
  f1 (n - 2) - f1 (n - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A276275.P11614576421943466257

namespace A276275

/-- `abs(Δ[a(n-2)-a(n-3)])` -/
def P11614576421943466257.Spec : Prop :=
  ∀ n, P11614576421943466257.a n = A276275 (n + 1)

end A276275

/-! ## A276275.P15241949760171269370

`or(1, a(n-2))-(1-a(n-3))` with `a(0)=2, a(1)=2, a(2)=0`
-/

namespace A276275.P15241949760171269370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 2, 0] fun n a =>
  Int.lor 1 (a (n - 2)) - (1 - a (n - 3))

end

end A276275.P15241949760171269370

namespace A276275

/-- `or(1, a(n-2))-(1-a(n-3))` -/
def P15241949760171269370.Spec : Prop :=
  ∀ n, P15241949760171269370.a n = A276275 (n + 1)

end A276275

/-! ## A276275.P3925889540432113066

`xor(1, a(n-2))-(1-a(n-3))` with `a(0)=2, a(1)=2, a(2)=0`
-/

namespace A276275.P3925889540432113066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 2, 0] fun n a =>
  Int.xor 1 (a (n - 2)) - (1 - a (n - 3))

end

end A276275.P3925889540432113066

namespace A276275

/-- `xor(1, a(n-2))-(1-a(n-3))` -/
def P3925889540432113066.Spec : Prop :=
  ∀ n, P3925889540432113066.a n = A276275 (n + 1)

end A276275

/-! ## A276275.P12417407595965800511

`a(n-1)-(a(n-4)-a(n-2))` with `a(0)=2, a(1)=2, a(2)=0, a(3)=4`
-/

namespace A276275.P12417407595965800511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 2, 0, 4] fun n a =>
  a (n - 1) - (a (n - 4) - a (n - 2))

end

end A276275.P12417407595965800511

namespace A276275

/-- `a(n-1)-(a(n-4)-a(n-2))` -/
def P12417407595965800511.Spec : Prop :=
  ∀ n, P12417407595965800511.a n = A276275 (n + 1)

end A276275

/-! ## A276275.P10568109677324097313

`A141038(n)+A133034(n+1)`
-/

namespace A276275.P10568109677324097313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141038 n + A133034 (n + 1)

end

end A276275.P10568109677324097313

namespace A276275

/-- `A141038(n)+A133034(n+1)` -/
def P10568109677324097313.Spec : Prop :=
  ∀ n, P10568109677324097313.a n = A276275 (n + 1)

end A276275

/-! ## A276275.P7852427824356350817

`A007307(n+1)-A133034(n)`
-/

namespace A276275.P7852427824356350817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007307 (n + 1) - A133034 n

end

end A276275.P7852427824356350817

namespace A276275

/-- `A007307(n+1)-A133034(n)` -/
def P7852427824356350817.Spec : Prop :=
  ∀ n, P7852427824356350817.a n = A276275 (n + 1)

end A276275

/-! ## A276275.P17845887791194120835

`A276477(n)-A000931(n+1)`
-/

namespace A276275.P17845887791194120835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276477 n - A000931 (n + 1)

end

end A276275.P17845887791194120835

namespace A276275

/-- `A276477(n)-A000931(n+1)` -/
def P17845887791194120835.Spec : Prop :=
  ∀ n, P17845887791194120835.a n = A276275 (n + 1)

end A276275

/-! ## A276275.P9173400812444585804

`A291289(n+2)+A291289(n)`
-/

namespace A276275.P9173400812444585804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291289 (n + 2) + A291289 n

end

end A276275.P9173400812444585804

namespace A276275

/-- `A291289(n+2)+A291289(n)` -/
def P9173400812444585804.Spec : Prop :=
  ∀ n, P9173400812444585804.a n = A276275 (n + 1)

end A276275

/-! ## A276275.P14796278401329157069

`2*(A141038(n)-A182097(n))`
-/

namespace A276275.P14796278401329157069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A141038 n - A182097 n)

end

end A276275.P14796278401329157069

namespace A276275

/-- `2*(A141038(n)-A182097(n))` -/
def P14796278401329157069.Spec : Prop :=
  ∀ n, P14796278401329157069.a n = A276275 (n + 1)

end A276275

/-! ## A276275.P11866480474048589016

`A276276(n+1)+A000931(n+2)`
-/

namespace A276275.P11866480474048589016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276276 (n + 1) + A000931 (n + 2)

end

end A276275.P11866480474048589016

namespace A276275

/-- `A276276(n+1)+A000931(n+2)` -/
def P11866480474048589016.Spec : Prop :=
  ∀ n, P11866480474048589016.a n = A276275 (n + 1)

end A276275

/-! ## A276275.P6868558650182668423

`2*(A276477(n)-A134816(n+1))`
-/

namespace A276275.P6868558650182668423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A276477 n - A134816 (n + 1))

end

end A276275.P6868558650182668423

namespace A276275

/-- `2*(A276477(n)-A134816(n+1))` -/
def P6868558650182668423.Spec : Prop :=
  ∀ n, P6868558650182668423.a n = A276275 (n + 1)

end A276275

/-! ## A276275.P1187453444688403857

`2*(A007307(n+1)-A182097(n+1))`
-/

namespace A276275.P1187453444688403857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A007307 (n + 1) - A182097 (n + 1))

end

end A276275.P1187453444688403857

namespace A276275

/-- `2*(A007307(n+1)-A182097(n+1))` -/
def P1187453444688403857.Spec : Prop :=
  ∀ n, P1187453444688403857.a n = A276275 (n + 1)

end A276275

/-! ## A276275.P4444063936901203337

`A000931(n)+A141038(n)-A078027(n)`
-/

namespace A276275.P4444063936901203337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000931 n + (A141038 n - A078027 n)

end

end A276275.P4444063936901203337

namespace A276275

/-- `A000931(n)+A141038(n)-A078027(n)` -/
def P4444063936901203337.Spec : Prop :=
  ∀ n, P4444063936901203337.a n = A276275 (n + 1)

end A276275

/-! ## A276275.P9408627227392687035

`A133034(n+1)+A134816(n+1)+A000931(n)`
-/

namespace A276275.P9408627227392687035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133034 (n + 1) + (A134816 (n + 1) + A000931 n)

end

end A276275.P9408627227392687035

namespace A276275

/-- `A133034(n+1)+A134816(n+1)+A000931(n)` -/
def P9408627227392687035.Spec : Prop :=
  ∀ n, P9408627227392687035.a n = A276275 (n + 1)

end A276275

/-! ## A276275.P18010903737446980972

`A007307(n+1)+A000931(n)-A000931(n+1)`
-/

namespace A276275.P18010903737446980972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007307 (n + 1) + (A000931 n - A000931 (n + 1))

end

end A276275.P18010903737446980972

namespace A276275

/-- `A007307(n+1)+A000931(n)-A000931(n+1)` -/
def P18010903737446980972.Spec : Prop :=
  ∀ n, P18010903737446980972.a n = A276275 (n + 1)

end A276275

/-! ## A276275.P14017212725560202252

`A007307(n+1)+A134816(n+1)-A007307(n)`
-/

namespace A276275.P14017212725560202252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007307 (n + 1) + (A134816 (n + 1) - A007307 n)

end

end A276275.P14017212725560202252

namespace A276275

/-- `A007307(n+1)+A134816(n+1)-A007307(n)` -/
def P14017212725560202252.Spec : Prop :=
  ∀ n, P14017212725560202252.a n = A276275 (n + 1)

end A276275

/-!
# A276276: a(n) = a(n-2)+a(n-3) with a(1)=2 a(2)=1 a(3)=0.

The programs for A276276, the canonical program `A276276.P4327462748192803369` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A276276 has offset 1).

The definition of A276276 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-2)+a(n-3)` (program `A276276.P4327462748192803369`, by `A276276.P4327462748192803369.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A276276.P4327462748192803369

`a(n-2)+a(n-3)` with `a(0)=2, a(1)=1, a(2)=0`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A276276

/-- `a(n-2)+a(n-3)` -/
def P4327462748192803369.Spec : Prop :=
  ∀ n, (P4327462748192803369.a n : ℤ) = A276276 (n + 1)

theorem P4327462748192803369.correct : P4327462748192803369.Spec := by
  intro n
  simp only [A276276, Nat.add_sub_cancel]

end A276276

/-! ## A276276.P6739525837678969512

`a(n-2)-floor(-a(n-3))` with `a(0)=2, a(1)=1, a(2)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A276276.P6739525837678969512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 1, 0] fun n a =>
  a (n - 2) - (-a (n - 3))

end

end A276276.P6739525837678969512

namespace A276276

/-- `a(n-2)-floor(-a(n-3))` -/
def P6739525837678969512.Spec : Prop :=
  ∀ n, P6739525837678969512.a n = A276276 (n + 1)

end A276276

/-! ## A276276.P3533354387729005390

`a(n-2)-ceil(-a(n-3))` with `a(0)=2, a(1)=1, a(2)=0`

`ceil` is left out, it is the identity on integers.
-/

namespace A276276.P3533354387729005390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 1, 0] fun n a =>
  a (n - 2) - (-a (n - 3))

end

end A276276.P3533354387729005390

namespace A276276

/-- `a(n-2)-ceil(-a(n-3))` -/
def P3533354387729005390.Spec : Prop :=
  ∀ n, P3533354387729005390.a n = A276276 (n + 1)

end A276276

/-! ## A276276.P5268671828540329731

`abs(Δ[a(n-2)-a(n-3)])` with `a(0)=1, a(1)=3, a(2)=2`
-/

namespace A276276.P5268671828540329731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 2] fun n f1 =>
  f1 (n - 2) - f1 (n - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A276276.P5268671828540329731

namespace A276276

/-- `abs(Δ[a(n-2)-a(n-3)])` -/
def P5268671828540329731.Spec : Prop :=
  ∀ n, P5268671828540329731.a n = A276276 (n + 1)

end A276276

/-! ## A276276.P16493783149329793534

`1-floor(1-a(n-2)-a(n-3))` with `a(0)=2, a(1)=1, a(2)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A276276.P16493783149329793534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 1, 0] fun n a =>
  1 - (1 - a (n - 2) - a (n - 3))

end

end A276276.P16493783149329793534

namespace A276276

/-- `1-floor(1-a(n-2)-a(n-3))` -/
def P16493783149329793534.Spec : Prop :=
  ∀ n, P16493783149329793534.a n = A276276 (n + 1)

end A276276

/-! ## A276276.P17239432863760301925

`a(n-1)-(a(n-4)-a(n-2))` with `a(0)=2, a(1)=1, a(2)=0, a(3)=3`
-/

namespace A276276.P17239432863760301925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 1, 0, 3] fun n a =>
  a (n - 1) - (a (n - 4) - a (n - 2))

end

end A276276.P17239432863760301925

namespace A276276

/-- `a(n-1)-(a(n-4)-a(n-2))` -/
def P17239432863760301925.Spec : Prop :=
  ∀ n, P17239432863760301925.a n = A276276 (n + 1)

end A276276

/-! ## A276276.P11706639091942206583

`∑[A000931(n)]-A133034(n)`
-/

namespace A276276.P11706639091942206583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000931 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A133034 n

end

end A276276.P11706639091942206583

namespace A276276

/-- `∑[A000931(n)]-A133034(n)` -/
def P11706639091942206583.Spec : Prop :=
  ∀ n, P11706639091942206583.a n = A276276 (n + 1)

end A276276

/-! ## A276276.P1076105597199109634

`A134816(n+1)-A133034(n)`
-/

namespace A276276.P1076105597199109634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134816 (n + 1) - A133034 n

end

end A276276.P1076105597199109634

namespace A276276

/-- `A134816(n+1)-A133034(n)` -/
def P1076105597199109634.Spec : Prop :=
  ∀ n, P1076105597199109634.a n = A276276 (n + 1)

end A276276

/-! ## A276276.P17502748341521193938

`A291289(n)+A000931(n+2)`
-/

namespace A276276.P17502748341521193938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291289 n + A000931 (n + 2)

end

end A276276.P17502748341521193938

namespace A276276

/-- `A291289(n)+A000931(n+2)` -/
def P17502748341521193938.Spec : Prop :=
  ∀ n, P17502748341521193938.a n = A276276 (n + 1)

end A276276

/-! ## A276276.P7750228713316179975

`A182097(n+2)-A133034(n)`
-/

namespace A276276.P7750228713316179975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182097 (n + 2) - A133034 n

end

end A276276.P7750228713316179975

namespace A276276

/-- `A182097(n+2)-A133034(n)` -/
def P7750228713316179975.Spec : Prop :=
  ∀ n, P7750228713316179975.a n = A276276 (n + 1)

end A276276

/-! ## A276276.P13774781307326501257

`A133034(n+9)-A133034(n)`
-/

namespace A276276.P13774781307326501257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133034 (n + 9) - A133034 n

end

end A276276.P13774781307326501257

namespace A276276

/-- `A133034(n+9)-A133034(n)` -/
def P13774781307326501257.Spec : Prop :=
  ∀ n, P13774781307326501257.a n = A276276 (n + 1)

end A276276

/-! ## A276276.P15555599123365230270

`A133034(n+1)+A182097(n)+A000931(n)`
-/

namespace A276276.P15555599123365230270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133034 (n + 1) + (A182097 n + A000931 n)

end

end A276276.P15555599123365230270

namespace A276276

/-- `A133034(n+1)+A182097(n)+A000931(n)` -/
def P15555599123365230270.Spec : Prop :=
  ∀ n, P15555599123365230270.a n = A276276 (n + 1)

end A276276

/-! ## A276276.P14288518771556504069

`A134816(n+1)+A000931(n)-A000931(n+1)`
-/

namespace A276276.P14288518771556504069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134816 (n + 1) + (A000931 n - A000931 (n + 1))

end

end A276276.P14288518771556504069

namespace A276276

/-- `A134816(n+1)+A000931(n)-A000931(n+1)` -/
def P14288518771556504069.Spec : Prop :=
  ∀ n, P14288518771556504069.a n = A276276 (n + 1)

end A276276

/-! ## A276276.P11429319926631231873

`A141038(n)-A000931(n+1)`
-/

namespace A276276.P11429319926631231873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141038 n - A000931 (n + 1)

end

end A276276.P11429319926631231873

namespace A276276

/-- `A141038(n)-A000931(n+1)` -/
def P11429319926631231873.Spec : Prop :=
  ∀ n, P11429319926631231873.a n = A276276 (n + 1)

end A276276

/-! ## A276276.P14251945139820508701

`A007307(n)-2*A133034(n)`
-/

namespace A276276.P14251945139820508701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007307 n - 2 * A133034 n

end

end A276276.P14251945139820508701

namespace A276276

/-- `A007307(n)-2*A133034(n)` -/
def P14251945139820508701.Spec : Prop :=
  ∀ n, P14251945139820508701.a n = A276276 (n + 1)

end A276276

/-! ## A276276.P2838541463508916996

`A141038(n)-(A078027(n+1)+A078027(n))`
-/

namespace A276276.P2838541463508916996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141038 n - (A078027 (n + 1) + A078027 n)

end

end A276276.P2838541463508916996

namespace A276276

/-- `A141038(n)-(A078027(n+1)+A078027(n))` -/
def P2838541463508916996.Spec : Prop :=
  ∀ n, P2838541463508916996.a n = A276276 (n + 1)

end A276276

/-! ## A276276.P1001924226120922952

`A134816(n+1)+A134816(n+1)-A007307(n)`
-/

namespace A276276.P1001924226120922952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134816 (n + 1) + (A134816 (n + 1) - A007307 n)

end

end A276276.P1001924226120922952

namespace A276276

/-- `A134816(n+1)+A134816(n+1)-A007307(n)` -/
def P1001924226120922952.Spec : Prop :=
  ∀ n, P1001924226120922952.a n = A276276 (n + 1)

end A276276

/-! ## A276276.P10909012544362161341

`A276477(n)-A182097(n+1)`
-/

namespace A276276.P10909012544362161341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276477 n - A182097 (n + 1)

end

end A276276.P10909012544362161341

namespace A276276

/-- `A276477(n)-A182097(n+1)` -/
def P10909012544362161341.Spec : Prop :=
  ∀ n, P10909012544362161341.a n = A276276 (n + 1)

end A276276

/-! ## A276276.P16217791062634759146

`A276275(n+1)-A000931(n+2)`
-/

namespace A276276.P16217791062634759146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276275 (n + 1) - A000931 (n + 2)

end

end A276276.P16217791062634759146

namespace A276276

/-- `A276275(n+1)-A000931(n+2)` -/
def P16217791062634759146.Spec : Prop :=
  ∀ n, P16217791062634759146.a n = A276276 (n + 1)

end A276276

/-!
# A276277: Association types for monomials with n arguments in an algebra with two binary operations, one commutative, one noncommutative.

The programs for A276277, there is no canonical definition to state claims against.
-/

/-! ## A276277.P378464384216779894

`A220816(n+1)/3`
-/

namespace A276277.P378464384216779894
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A220816 (n + 1) : ℚ) / 3

end

end A276277.P378464384216779894

/-! ## A276277.P12818614394448406775

`A319539(∑[n+3]+1)/3`
-/

namespace A276277.P12818614394448406775
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A319539 (∑ j ∈ Finset.range (n + 1), f1 j + 1) : ℚ) / 3

end

end A276277.P12818614394448406775

/-! ## A276277.P5711269112935109046

`record[ratio[A220816(A193592(n))]]`
-/

namespace A276277.P5711269112935109046
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220816 (A193592 n).toNat

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A276277.P5711269112935109046

/-! ## A276277.P9903460151484876981

`floor(A319539(A052905(n)+3)/3)`
-/

namespace A276277.P9903460151484876981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A319539 (A052905 n + 3).toNat : ℚ) / 3⌋

end

end A276277.P9903460151484876981

/-! ## A276277.P218153069311103262

`A001222(A094343(n+1))*A319539(A052905(n)+3)/3`
-/

namespace A276277.P218153069311103262
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001222 (A094343 (n + 1)).toNat * A319539 (A052905 n + 3).toNat : ℚ) / 3

end

end A276277.P218153069311103262

/-!
# A276278: Complement of A026474.

The programs for A276278, the canonical program `A276278.P3276393784912432115` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A276278 has offset 1).

The definition of A276278 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A276278.P3276393784912432115

`a(n-6)+7` with `a(0)=3, a(1)=5, a(2)=6, a(3)=7, a(4)=9, a(5)=10, a(6)=11`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A276278

/-- `a(n-6)+7` -/
def P3276393784912432115.Spec : Prop :=
  ∀ n, (P3276393784912432115.a n : ℤ) = A276278 (n + 1)

theorem P3276393784912432115.correct : P3276393784912432115.Spec := by
  intro n
  simp only [A276278, Nat.add_sub_cancel]

end A276278

/-! ## A276278.P8445395857299689147

`comp[a(n-1)+7]` with `a(0)=2, a(1)=0, a(2)=4, a(3)=1`
-/

namespace A276278.P8445395857299689147
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 0, 4, 1] fun n f1 =>
  f1 (n - 1) + 7

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A276278.P8445395857299689147

namespace A276278

/-- `comp[a(n-1)+7]` -/
def P8445395857299689147.Spec : Prop :=
  ∀ n, (P8445395857299689147.a n : ℤ) = A276278 (n + 1)

end A276278

/-! ## A276278.P15626393490565669726

`lt[6, lcm(n+2, (n-1)%7)]`
-/

namespace A276278.P15626393490565669726
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 2 : ℤ) (Int.tmod ((n : ℤ) - 1) 7)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A276278.P15626393490565669726

namespace A276278

/-- `lt[6, lcm(n+2, (n-1)%7)]` -/
def P15626393490565669726.Spec : Prop :=
  ∀ n, (P15626393490565669726.a n : ℤ) = A276278 (n + 1)

end A276278

/-! ## A276278.P10921762659206473036

`∑[gcd(n, a(2-n%3))]` with `a(0)=3, a(1)=2`
-/

namespace A276278.P10921762659206473036
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 2] fun n f1 =>
  Nat.gcd n (f1 (2 - n % 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A276278.P10921762659206473036

namespace A276278

/-- `∑[gcd(n, a(2-n%3))]` -/
def P10921762659206473036.Spec : Prop :=
  ∀ n, (P10921762659206473036.a n : ℤ) = A276278 (n + 1)

end A276278

/-! ## A276278.P16511904433037579108

`floor(a(n-1)/7+4+n)` with `a(0)=3`
-/

namespace A276278.P16511904433037579108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  ⌊(a (n - 1) : ℚ) / 7 + 4 + (n : ℚ)⌋

end

end A276278.P16511904433037579108

namespace A276278

/-- `floor(a(n-1)/7+4+n)` -/
def P16511904433037579108.Spec : Prop :=
  ∀ n, P16511904433037579108.a n = A276278 (n + 1)

end A276278

/-! ## A276278.P10837257311967274698

`comp[abs(A228935(n))+n+1]+3`
-/

namespace A276278.P10837257311967274698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A228935 n| + (n + 1 : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 3

end

end A276278.P10837257311967274698

namespace A276278

/-- `comp[abs(A228935(n))+n+1]+3` -/
def P10837257311967274698.Spec : Prop :=
  ∀ n, (P10837257311967274698.a n : ℤ) = A276278 (n + 1)

end A276278

/-! ## A276278.P12754068186934879565

`(A032775(n+1)+1)%(2*n+1)+3`
-/

namespace A276278.P12754068186934879565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A032775 (n + 1) + 1) (2 * n + 1 : ℤ) + 3

end

end A276278.P12754068186934879565

namespace A276278

/-- `(A032775(n+1)+1)%(2*n+1)+3` -/
def P12754068186934879565.Spec : Prop :=
  ∀ n, P12754068186934879565.a n = A276278 (n + 1)

end A276278

/-! ## A276278.P10590438923171055495

`∑[char[2*A064680(n)+1-n]+1]+2`
-/

namespace A276278.P10590438923171055495
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A064680 n + (1 - (n : ℤ))

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = (n : ℤ) then 1 else 0) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A276278.P10590438923171055495

namespace A276278

/-- `∑[char[2*A064680(n)+1-n]+1]+2` -/
def P10590438923171055495.Spec : Prop :=
  ∀ n, (P10590438923171055495.a n : ℤ) = A276278 (n + 1)

end A276278

/-! ## A276278.P15890057594820269204

`abs(2-ceil((n-comp[A266258(n)])/2))+1+n`
-/

namespace A276278.P15890057594820269204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266258 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - ⌈((n : ℤ) - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) : ℚ) / 2⌉| + 1 + (n : ℤ)

end

end A276278.P15890057594820269204

namespace A276278

/-- `abs(2-ceil((n-comp[A266258(n)])/2))+1+n` -/
def P15890057594820269204.Spec : Prop :=
  ∀ n, P15890057594820269204.a n = A276278 (n + 1)

end A276278

/-! ## A276278.P11061869789732662831

`A255176(n)+A032775(n+1)`
-/

namespace A276278.P11061869789732662831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255176 n + A032775 (n + 1)

end

end A276278.P11061869789732662831

namespace A276278

/-- `A255176(n)+A032775(n+1)` -/
def P11061869789732662831.Spec : Prop :=
  ∀ n, P11061869789732662831.a n = A276278 (n + 1)

end A276278

/-! ## A276278.P341876469374175396

`∑[char[A016777(A004277(n)-1)]]%(n+1)+n+3`
-/

namespace A276278.P341876469374175396
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 (A004277 n - 1).toNat

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) % (n + 1) + n + 3

end

end A276278.P341876469374175396

namespace A276278

/-- `∑[char[A016777(A004277(n)-1)]]%(n+1)+n+3` -/
def P341876469374175396.Spec : Prop :=
  ∀ n, (P341876469374175396.a n : ℤ) = A276278 (n + 1)

end A276278

/-! ## A276278.P5019889930287093350

`∑[A093718(a(n-1)+n)!]` with `a(0)=3, a(1)=2`
-/

namespace A276278.P5019889930287093350
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 2] fun n f1 =>
  Nat.factorial (A093718 (f1 (n - 1) + n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A276278.P5019889930287093350

namespace A276278

/-- `∑[A093718(a(n-1)+n)!]` -/
def P5019889930287093350.Spec : Prop :=
  ∀ n, (P5019889930287093350.a n : ℤ) = A276278 (n + 1)

end A276278

/-! ## A276278.P17915806741431826597

`A266977(A002264(n+2))+n+2`
-/

namespace A276278.P17915806741431826597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266977 (A002264 (n + 2)).toNat + (n + 2 : ℤ)

end

end A276278.P17915806741431826597

namespace A276278

/-- `A266977(A002264(n+2))+n+2` -/
def P17915806741431826597.Spec : Prop :=
  ∀ n, P17915806741431826597.a n = A276278 (n + 1)

end A276278

/-! ## A276278.P6564416100175896570

`ceil(A298022(n+3)/4)`
-/

namespace A276278.P6564416100175896570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A298022 (n + 3) : ℚ) / 4⌉

end

end A276278.P6564416100175896570

namespace A276278

/-- `ceil(A298022(n+3)/4)` -/
def P6564416100175896570.Spec : Prop :=
  ∀ n, P6564416100175896570.a n = A276278 (n + 1)

end A276278

/-! ## A276278.P6103156311389299291

`A047306(A009005(n+1))`
-/

namespace A276278.P6103156311389299291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047306 (A009005 (n + 1)).toNat

end

end A276278.P6103156311389299291

namespace A276278

/-- `A047306(A009005(n+1))` -/
def P6103156311389299291.Spec : Prop :=
  ∀ n, P6103156311389299291.a n = A276278 (n + 1)

end A276278

/-! ## A276278.P7683218006692231309

`A047306(A000032(C(2, n+2))+n+2)`
-/

namespace A276278.P7683218006692231309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047306 (A000032 (Nat.choose 2 (n + 2)) + (n + 2 : ℤ)).toNat

end

end A276278.P7683218006692231309

namespace A276278

/-- `A047306(A000032(C(2, n+2))+n+2)` -/
def P7683218006692231309.Spec : Prop :=
  ∀ n, P7683218006692231309.a n = A276278 (n + 1)

end A276278

/-! ## A276278.P6523284129173736562

`A009005(A047303(n+2))`
-/

namespace A276278.P6523284129173736562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009005 (A047303 (n + 2)).toNat

end

end A276278.P6523284129173736562

namespace A276278

/-- `A009005(A047303(n+2))` -/
def P6523284129173736562.Spec : Prop :=
  ∀ n, P6523284129173736562.a n = A276278 (n + 1)

end A276278

/-! ## A276278.P973326788741573706

`A266977(2*n)+A266977(n+1)-A285870(n+1)`
-/

namespace A276278.P973326788741573706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266977 (2 * n) + (A266977 (n + 1) - A285870 (n + 1))

end

end A276278.P973326788741573706

namespace A276278

/-- `A266977(2*n)+A266977(n+1)-A285870(n+1)` -/
def P973326788741573706.Spec : Prop :=
  ∀ n, P973326788741573706.a n = A276278 (n + 1)

end A276278

/-! ## A276278.P13020442825260711656

`A267530(A267530(2*n+1)+A004523(2*n+1))`
-/

namespace A276278.P13020442825260711656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267530 (A267530 (2 * n + 1) + A004523 (2 * n + 1)).toNat

end

end A276278.P13020442825260711656

namespace A276278

/-- `A267530(A267530(2*n+1)+A004523(2*n+1))` -/
def P13020442825260711656.Spec : Prop :=
  ∀ n, P13020442825260711656.a n = A276278 (n + 1)

end A276278

/-! ## A276278.P16603717530205628812

`record[A194526(2*n+5)-A194522(n+2)]`
-/

namespace A276278.P16603717530205628812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194526 (2 * n + 5) - A194522 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A276278.P16603717530205628812

namespace A276278

/-- `record[A194526(2*n+5)-A194522(n+2)]` -/
def P16603717530205628812.Spec : Prop :=
  ∀ n, P16603717530205628812.a n = A276278 (n + 1)

end A276278

/-!
# A276279: Number of triangular partitions of n of order 8.

The programs for A276279, there is no canonical definition to state claims against.
-/

/-! ## A276279.P1957185959782799781

`A055910(n+4)-A307598(A293658(n+1))`
-/

namespace A276279.P1957185959782799781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055910 (n + 4) - A307598 (A293658 (n + 1)).toNat

end

end A276279.P1957185959782799781

/-!
# A276280: Number of triangular partitions of n of order 9.

The programs for A276280, there is no canonical definition to state claims against.
-/

/-! ## A276280.P9825539426608088489

`∑[A339340(A000420(n))]`
-/

namespace A276280.P9825539426608088489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339340 (A000420 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A276280.P9825539426608088489

/-!
# A276281: Numbers of the form Bell(i)*Bell(j).

The programs for A276281, there is no canonical definition to state claims against.
-/

/-! ## A276281.P13258164300881266156

`∑[A037027(p?[A156387(n)])]`
-/

namespace A276281.P13258164300881266156
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156387 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037027 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A276281.P13258164300881266156

/-! ## A276281.P12530132630793599238

`∑[A241545(A174342(xor(1, n)))]`
-/

namespace A276281.P12530132630793599238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241545 (A174342 (Nat.xor 1 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A276281.P12530132630793599238

/-! ## A276281.P7948571473061042044

`A029931(A379436(n+1))+A005245(n+1)`
-/

namespace A276281.P7948571473061042044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029931 (A379436 (n + 1)).toNat + A005245 (n + 1)

end

end A276281.P7948571473061042044

/-!
# A276282: Perfect powers of nonprimes (m^k where m is a nonprime and k >= 2) in more than one way.

The programs for A276282, there is no canonical definition to state claims against.
-/

/-! ## A276282.P2108470529812892930

`A131605(n+1)²`
-/

namespace A276282.P2108470529812892930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131605 (n + 1) ^ 2

end

end A276282.P2108470529812892930

/-! ## A276282.P7502577482183118919

`record[A157985(n+1)]²`
-/

namespace A276282.P7502577482183118919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157985 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) ^ 2

end

end A276282.P7502577482183118919

/-! ## A276282.P1729797426349786135

`record[A131605(A028920(n))²]`
-/

namespace A276282.P1729797426349786135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131605 (A028920 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A276282.P1729797426349786135

/-! ## A276282.P11730185917703341121

`record[A131605(A141256(n))²]`
-/

namespace A276282.P11730185917703341121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131605 (A141256 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A276282.P11730185917703341121

/-! ## A276282.P2905015802648864584

`record[A131605(A152271(n))²]`
-/

namespace A276282.P2905015802648864584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131605 (A152271 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A276282.P2905015802648864584

/-!
# A276283: Expansion of (1 + x + 3*x^2 + x^3)/((1 - x)^2*(1 + x^2)).

The programs for A276283, the canonical program `A276283.P14447599427823449976` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A276283 has offset 0).

The definition of A276283 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A276283.P4136301514837679125

`3*n-sin(π*n/2)+1`
-/

namespace A276283.P4136301514837679125
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (3 * n : ℝ) - Real.sin (Real.pi * ((n : ℚ) / 2 : ℝ)) + 1

end

end A276283.P4136301514837679125

namespace A276283

/-- `3*n-sin(π*n/2)+1` -/
def P4136301514837679125.Spec : Prop :=
  ∀ n, P4136301514837679125.a n = (A276283 n : ℝ)

end A276283

/-! ## A276283.P14447599427823449976

`2*a(n-1)-2*a(n-2)+2*a(n-3)-a(n-4)` with `a(0)=1, a(1)=3, a(2)=7, a(3)=11`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A276283

/-- `2*a(n-1)-2*a(n-2)+2*a(n-3)-a(n-4)` -/
def P14447599427823449976.Spec : Prop :=
  ∀ n, P14447599427823449976.a n = A276283 n

theorem P14447599427823449976.correct : P14447599427823449976.Spec := by
  intro n
  simp only [A276283]

end A276283

/-! ## A276283.P5733666485167151793

`∑[and(2, n)+2]-1`
-/

namespace A276283.P5733666485167151793
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 2 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A276283.P5733666485167151793

namespace A276283

/-- `∑[and(2, n)+2]-1` -/
def P5733666485167151793.Spec : Prop :=
  ∀ n, P5733666485167151793.a n = A276283 n

end A276283

/-! ## A276283.P16447907516708006589

`∑[or(1, n%4)]+n`
-/

namespace A276283.P16447907516708006589
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (n % 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n

end

end A276283.P16447907516708006589

namespace A276283

/-- `∑[or(1, n%4)]+n` -/
def P16447907516708006589.Spec : Prop :=
  ∀ n, (P16447907516708006589.a n : ℤ) = A276283 n

end A276283

/-! ## A276283.P15984491918886533303

`∑[or(1, and(2, n))]+n`
-/

namespace A276283.P15984491918886533303
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (Nat.land 2 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n

end

end A276283.P15984491918886533303

namespace A276283

/-- `∑[or(1, and(2, n))]+n` -/
def P15984491918886533303.Spec : Prop :=
  ∀ n, (P15984491918886533303.a n : ℤ) = A276283 n

end A276283

/-! ## A276283.P13904408066015853799

`∑[C(3, and(2, n))]+n`
-/

namespace A276283.P13904408066015853799
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 3 (Nat.land 2 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n

end

end A276283.P13904408066015853799

namespace A276283

/-- `∑[C(3, and(2, n))]+n` -/
def P13904408066015853799.Spec : Prop :=
  ∀ n, (P13904408066015853799.a n : ℤ) = A276283 n

end A276283

/-! ## A276283.P12531844264829334021

`∑[xor(1, and(2, n))]+n`
-/

namespace A276283.P12531844264829334021
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (Nat.land 2 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n

end

end A276283.P12531844264829334021

namespace A276283

/-- `∑[xor(1, and(2, n))]+n` -/
def P12531844264829334021.Spec : Prop :=
  ∀ n, (P12531844264829334021.a n : ℤ) = A276283 n

end A276283

/-! ## A276283.P15388901212002443073

`record[or(n, 4-gcd(3, n))]`
-/

namespace A276283.P15388901212002443073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (4 - (Nat.gcd 3 n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A276283.P15388901212002443073

namespace A276283

/-- `record[or(n, 4-gcd(3, n))]` -/
def P15388901212002443073.Spec : Prop :=
  ∀ n, P15388901212002443073.a n = A276283 n

end A276283

/-! ## A276283.P10637434322568575566

`Δ[n²]+∑[and(2, n)]`
-/

namespace A276283.P10637434322568575566
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) + ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A276283.P10637434322568575566

namespace A276283

/-- `Δ[n²]+∑[and(2, n)]` -/
def P10637434322568575566.Spec : Prop :=
  ∀ n, P10637434322568575566.a n = A276283 n

end A276283

/-! ## A276283.P8416237289438628169

`or(3*n, gcd(2, n+1))`
-/

namespace A276283.P8416237289438628169
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor (3 * n) (Nat.gcd 2 (n + 1))

end

end A276283.P8416237289438628169

namespace A276283

/-- `or(3*n, gcd(2, n+1))` -/
def P8416237289438628169.Spec : Prop :=
  ∀ n, (P8416237289438628169.a n : ℤ) = A276283 n

end A276283

/-! ## A276283.P7443979264688427304

`or(3*n, and(1, n)+1)`
-/

namespace A276283.P7443979264688427304
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor (3 * n) (Nat.land 1 n + 1)

end

end A276283.P7443979264688427304

namespace A276283

/-- `or(3*n, and(1, n)+1)` -/
def P7443979264688427304.Spec : Prop :=
  ∀ n, (P7443979264688427304.a n : ℤ) = A276283 n

end A276283

/-! ## A276283.P14523384828633744209

`n-∑[or(n+2, -3)]`
-/

namespace A276283.P14523384828633744209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n + 2 : ℤ) (-3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A276283.P14523384828633744209

namespace A276283

/-- `n-∑[or(n+2, -3)]` -/
def P14523384828633744209.Spec : Prop :=
  ∀ n, P14523384828633744209.a n = A276283 n

end A276283

/-! ## A276283.P7750734045124659664

`a(n-4)+12` with `a(0)=1, a(1)=3, a(2)=7, a(3)=11`
-/

namespace A276283.P7750734045124659664
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 7, 11] fun n a =>
  a (n - 4) + 12

end

end A276283.P7750734045124659664

namespace A276283

/-- `a(n-4)+12` -/
def P7750734045124659664.Spec : Prop :=
  ∀ n, (P7750734045124659664.a n : ℤ) = A276283 n

end A276283

/-! ## A276283.P2931690099565237603

`∑[6-a(n-2)]` with `a(0)=1, a(1)=2, a(2)=4`
-/

namespace A276283.P2931690099565237603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 4] fun n f1 =>
  6 - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A276283.P2931690099565237603

namespace A276283

/-- `∑[6-a(n-2)]` -/
def P2931690099565237603.Spec : Prop :=
  ∀ n, P2931690099565237603.a n = A276283 n

end A276283

/-! ## A276283.P16037428357088634057

`∑[4-and(2, n-2)]-1`
-/

namespace A276283.P16037428357088634057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 - Int.land 2 ((n : ℤ) - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A276283.P16037428357088634057

namespace A276283

/-- `∑[4-and(2, n-2)]-1` -/
def P16037428357088634057.Spec : Prop :=
  ∀ n, P16037428357088634057.a n = A276283 n

end A276283

/-! ## A276283.P8578645372360538075

`2*n+∑[and(2, n)]+1`
-/

namespace A276283.P8578645372360538075
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 2 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A276283.P8578645372360538075

namespace A276283

/-- `2*n+∑[and(2, n)]+1` -/
def P8578645372360538075.Spec : Prop :=
  ∀ n, (P8578645372360538075.a n : ℤ) = A276283 n

end A276283

/-! ## A276283.P17425946268896966842

`∑[or(2, n+2)-n]-1`
-/

namespace A276283.P17425946268896966842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 2 (n + 2) : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A276283.P17425946268896966842

namespace A276283

/-- `∑[or(2, n+2)-n]-1` -/
def P17425946268896966842.Spec : Prop :=
  ∀ n, P17425946268896966842.a n = A276283 n

end A276283

/-! ## A276283.P8424890016003027229

`or(3*n, (2*and(1, n))!)`
-/

namespace A276283.P8424890016003027229
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor (3 * n) (Nat.factorial (2 * Nat.land 1 n))

end

end A276283.P8424890016003027229

namespace A276283

/-- `or(3*n, (2*and(1, n))!)` -/
def P8424890016003027229.Spec : Prop :=
  ∀ n, (P8424890016003027229.a n : ℤ) = A276283 n

end A276283

/-! ## A276283.P9643376639337025959

`∑[and(2, n)]+n+1+n`
-/

namespace A276283.P9643376639337025959
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 2 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n + 1 + n)

end

end A276283.P9643376639337025959

namespace A276283

/-- `∑[and(2, n)]+n+1+n` -/
def P9643376639337025959.Spec : Prop :=
  ∀ n, (P9643376639337025959.a n : ℤ) = A276283 n

end A276283

/-! ## A276283.P15405002325979478954

`∑[-or(n+2, -3)]+n`
-/

namespace A276283.P15405002325979478954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.lor (n + 2 : ℤ) (-3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A276283.P15405002325979478954

namespace A276283

/-- `∑[-or(n+2, -3)]+n` -/
def P15405002325979478954.Spec : Prop :=
  ∀ n, P15405002325979478954.a n = A276283 n

end A276283

/-!
# A276284: a(0) = a(1) = a(2) = a(3) = a(4) = 1; for n > 4, a(n) = ( a(n-1)+a(n-3)+1 )*( a(n-2)+a(n-4)+1 ) / a(n-5).

The programs for A276284, the canonical program `A276284.P4336702539476871293` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A276284 has offset 0).

The definition of A276284 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A276284.P16223247919697917092

`(a(n-1)+a(n-3)+1)*(a(n-2)+a(n-4)+1)/a(n-5)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A276284.P16223247919697917092
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1, 1, 1, 1] fun n a =>
  (a (n - 1) + a (n - 3) + 1) * ((a (n - 2) + a (n - 4) + 1) / a (n - 5))

end

end A276284.P16223247919697917092

namespace A276284

/-- `(a(n-1)+a(n-3)+1)*(a(n-2)+a(n-4)+1)/a(n-5)` -/
def P16223247919697917092.Spec : Prop :=
  ∀ n, P16223247919697917092.a n = (A276284 n : ℚ)

end A276284

/-! ## A276284.P4336702539476871293

`(8-4*(-1)^n)*a(n-1)*a(n-3)-a(n-2)-a(n-4)-1` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A276284

/-- `(8-4*(-1)^n)*a(n-1)*a(n-3)-a(n-2)-a(n-4)-1` -/
def P4336702539476871293.Spec : Prop :=
  ∀ n, P4336702539476871293.a n = A276284 n

theorem P4336702539476871293.correct : P4336702539476871293.Spec := by
  intro n
  simp only [A276284]

end A276284

/-! ## A276284.P4531097371600572188

`A275695(a(floor(n/2))+n+1)` with `a(0)=1`
-/

namespace A276284.P4531097371600572188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A275695 (a ⌊(n : ℚ) / 2⌋.toNat + (n : ℤ) + 1).toNat

end

end A276284.P4531097371600572188

namespace A276284

/-- `A275695(a(floor(n/2))+n+1)` -/
def P4531097371600572188.Spec : Prop :=
  ∀ n, P4531097371600572188.a n = A276284 n

end A276284

/-! ## A276284.P10520155595792374511

`A275695(A091834(∑[n]))`
-/

namespace A276284.P10520155595792374511
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275695 (A091834 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A276284.P10520155595792374511

namespace A276284

/-- `A275695(A091834(∑[n]))` -/
def P10520155595792374511.Spec : Prop :=
  ∀ n, P10520155595792374511.a n = A276284 n

end A276284

/-! ## A276284.P14915134534338066084

`A275695(A039156(n+1))`
-/

namespace A276284.P14915134534338066084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275695 (A039156 (n + 1)).toNat

end

end A276284.P14915134534338066084

namespace A276284

/-- `A275695(A039156(n+1))` -/
def P14915134534338066084.Spec : Prop :=
  ∀ n, P14915134534338066084.a n = A276284 n

end A276284

/-!
# A276285: Number of ways of writing n as a sum of 13 squares.

The programs for A276285, there is no canonical definition to state claims against.
-/

/-! ## A276285.P12724575037463306367

`A022066(4*n)`
-/

namespace A276285.P12724575037463306367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022066 (4 * n)

end

end A276285.P12724575037463306367

/-! ## A276285.P8410604184858513812

`A022066(A008574(n))+A000007(n)`
-/

namespace A276285.P8410604184858513812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022066 (A008574 n).toNat + A000007 n

end

end A276285.P8410604184858513812

/-! ## A276285.P17580698487567989458

`A060054(A020483(n))+A022066(A008574(n))`
-/

namespace A276285.P17580698487567989458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060054 (A020483 n).toNat + A022066 (A008574 n).toNat

end

end A276285.P17580698487567989458

/-! ## A276285.P6573807378238683098

`A005408(n)+A022066(A008574(n))-A103517(n)+1`
-/

namespace A276285.P6573807378238683098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n + (A022066 (A008574 n).toNat - A103517 n + 1)

end

end A276285.P6573807378238683098

/-! ## A276285.P16573185909750501291

`A005843(n+1)+A022066(A008574(n))-A103517(n)`
-/

namespace A276285.P16573185909750501291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (n + 1) + (A022066 (A008574 n).toNat - A103517 n)

end

end A276285.P16573185909750501291

/-! ## A276285.P13338465823681951758

`A022066(A008574(n))+A000045(A151909(n))`
-/

namespace A276285.P13338465823681951758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022066 (A008574 n).toNat + A000045 (A151909 n).toNat

end

end A276285.P13338465823681951758

/-!
# A276286: Number of ways of writing n as a sum of 14 squares.

The programs for A276286, there is no canonical definition to state claims against.
-/

/-! ## A276286.P15579482746579490751

`A022067(2*n)`
-/

namespace A276286.P15579482746579490751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022067 (2 * n)

end

end A276286.P15579482746579490751

/-! ## A276286.P2610129899408278713

`A022067(n+n)+and(1, A040030(n))`
-/

namespace A276286.P2610129899408278713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022067 (n + n) + Int.land 1 (A040030 n)

end

end A276286.P2610129899408278713

/-! ## A276286.P9152421117837040124

`A022067(n+n)+and(1, A001034(n+1))`
-/

namespace A276286.P9152421117837040124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022067 (n + n) + Int.land 1 (A001034 (n + 1))

end

end A276286.P9152421117837040124

/-! ## A276286.P10434678636609175328

`lcm(A014695(n), A022067(A005843(n)))`
-/

namespace A276286.P10434678636609175328
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A014695 n) (A022067 (A005843 n).toNat)

end

end A276286.P10434678636609175328

/-! ## A276286.P195108820450547113

`or(A000007(n), A022067(A005843(n)))`
-/

namespace A276286.P195108820450547113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A022067 (A005843 n).toNat)

end

end A276286.P195108820450547113

/-! ## A276286.P8658029496280334149

`A022067(n+n)/A066839(A006530(n+1))`
-/

namespace A276286.P8658029496280334149
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A022067 (n + n) : ℚ) / (A066839 (A006530 (n + 1)).toNat : ℚ)

end

end A276286.P8658029496280334149

/-! ## A276286.P16367685307239204422

`and(A073871(n+1)+A022067(n+n), A022067(n+n))`
-/

namespace A276286.P16367685307239204422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A073871 (n + 1) + A022067 (n + n)) (A022067 (n + n))

end

end A276286.P16367685307239204422

/-! ## A276286.P9386366495063666969

`A022067(n+n)+A002262(∑[n])`
-/

namespace A276286.P9386366495063666969
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022067 (n + n) + A002262 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A276286.P9386366495063666969

/-! ## A276286.P9509410718965846882

`A022067(n+n)%A069039(A182404(n+1))`
-/

namespace A276286.P9509410718965846882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A022067 (n + n)) (A069039 (A182404 (n + 1)).toNat)

end

end A276286.P9509410718965846882

/-!
# A276287: Number of ways of writing n as a sum of 15 squares.

The programs for A276287, there is no canonical definition to state claims against.
-/

/-! ## A276287.P9162139833370730974

`A022068(4*n)`
-/

namespace A276287.P9162139833370730974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022068 (4 * n)

end

end A276287.P9162139833370730974

/-! ## A276287.P4571203044175735182

`A022068(A008574(n))+A000007(n)`
-/

namespace A276287.P4571203044175735182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022068 (A008574 n).toNat + A000007 n

end

end A276287.P4571203044175735182

/-! ## A276287.P15965333710641872397

`A022068(A008574(n))^A001222(A307746(n+1))`
-/

namespace A276287.P15965333710641872397
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A022068 (A008574 n).toNat : ℚ) ^ (A001222 (A307746 (n + 1)).toNat : ℤ)

end

end A276287.P15965333710641872397

/-! ## A276287.P2129438390340995340

`A323169(A089019(n+1))+A022068(A008574(n))`
-/

namespace A276287.P2129438390340995340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323169 (A089019 (n + 1)).toNat + A022068 (A008574 n).toNat

end

end A276287.P2129438390340995340

/-! ## A276287.P1640805989054920599

`A323169(A061026(n+1))+A022068(A008574(n))`
-/

namespace A276287.P1640805989054920599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323169 (A061026 (n + 1)).toNat + A022068 (A008574 n).toNat

end

end A276287.P1640805989054920599

/-! ## A276287.P1171975628131420062

`A303709(A002522(n))+A022068(A008574(n))`
-/

namespace A276287.P1171975628131420062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303709 (A002522 n).toNat + A022068 (A008574 n).toNat

end

end A276287.P1171975628131420062

/-! ## A276287.P15019138387235327290

`A022068(A008574(n))^A001221(A137688(n))`
-/

namespace A276287.P15019138387235327290
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A022068 (A008574 n).toNat : ℚ) ^ (A001221 (A137688 n).toNat : ℤ)

end

end A276287.P15019138387235327290

/-! ## A276287.P7374154762422091657

`A286815(A000217(n+15)+n)`
-/

namespace A276287.P7374154762422091657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286815 (A000217 (n + 15) + (n : ℤ)).toNat

end

end A276287.P7374154762422091657

/-!
# A276288: a(n) = a(n-1) + 3*a(n-2) if n is even, otherwise a(n) = 3*a(n-1) + a(n-2), a(0)=0, a(1)=1.

The programs for A276288, the canonical program `A276288.P6624185542733394073` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A276288 has offset 0).

The definition of A276288 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A276288.P6624185542733394073

`7*a(n-2)-3*a(n-4)` with `a(0)=0, a(1)=1, a(2)=1, a(3)=4`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A276288

/-- `7*a(n-2)-3*a(n-4)` -/
def P6624185542733394073.Spec : Prop :=
  ∀ n, P6624185542733394073.a n = A276288 n

theorem P6624185542733394073.correct : P6624185542733394073.Spec := by
  intro n
  simp only [A276288]

end A276288

/-! ## A276288.P15683412105846747048

`A342633(round(7*2^n/3)%(2^n))`
-/

namespace A276288.P15683412105846747048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342633 (Int.tmod (SequenceMachineLib.roundAway (7 * ((2 ^ n : ℚ) / 3))) (2 ^ n : ℤ)).toNat

end

end A276288.P15683412105846747048

namespace A276288

/-- `A342633(round(7*2^n/3)%(2^n))` -/
def P15683412105846747048.Spec : Prop :=
  ∀ n, P15683412105846747048.a n = A276288 n

end A276288

/-! ## A276288.P8461189061577178770

`A342633(A001045(n))`
-/

namespace A276288.P8461189061577178770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342633 (A001045 n).toNat

end

end A276288.P8461189061577178770

namespace A276288

/-- `A342633(A001045(n))` -/
def P8461189061577178770.Spec : Prop :=
  ∀ n, P8461189061577178770.a n = A276288 n

end A276288

/-! ## A276288.P2875527124589314218

`A342633(A193652(n))`
-/

namespace A276288.P2875527124589314218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342633 (A193652 n).toNat

end

end A276288.P2875527124589314218

namespace A276288

/-- `A342633(A193652(n))` -/
def P2875527124589314218.Spec : Prop :=
  ∀ n, P2875527124589314218.a n = A276288 n

end A276288

/-! ## A276288.P15643663840862547997

`A342633(A155118(∑[n]))`
-/

namespace A276288.P15643663840862547997
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342633 (A155118 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A276288.P15643663840862547997

namespace A276288

/-- `A342633(A155118(∑[n]))` -/
def P15643663840862547997.Spec : Prop :=
  ∀ n, P15643663840862547997.a n = A276288 n

end A276288

/-!
# A276289: Expansion of x*(1 + x)/(1 - 2*x)^3.

The programs for A276289, the canonical program `A276289.P6405081567624374314` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A276289 has offset 0).

The definition of A276289 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A276289.P18324169930075284451

`2^(n-3)*n*(3*n+1)`
-/

namespace A276289.P18324169930075284451
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 3 : ℤ) * (n * (3 * n + 1) : ℚ)

end

end A276289.P18324169930075284451

namespace A276289

/-- `2^(n-3)*n*(3*n+1)` -/
def P18324169930075284451.Spec : Prop :=
  ∀ n, P18324169930075284451.a n = (A276289 n : ℚ)

end A276289

/-! ## A276289.P6405081567624374314

`6*a(n-1)-12*a(n-2)+8*a(n-3)` with `a(0)=0, a(1)=1, a(2)=7`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A276289

/-- `6*a(n-1)-12*a(n-2)+8*a(n-3)` -/
def P6405081567624374314.Spec : Prop :=
  ∀ n, P6405081567624374314.a n = A276289 n

theorem P6405081567624374314.correct : P6405081567624374314.Spec := by
  intro n
  simp only [A276289]

end A276289

/-! ## A276289.P11510195196580854256

`A084899(n)-A001815(n)`
-/

namespace A276289.P11510195196580854256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084899 n - A001815 n

end

end A276289.P11510195196580854256

namespace A276289

/-- `A084899(n)-A001815(n)` -/
def P11510195196580854256.Spec : Prop :=
  ∀ n, P11510195196580854256.a n = A276289 n

end A276289

/-! ## A276289.P15044761112587922277

`A089658(n)-A001787(n)`
-/

namespace A276289.P15044761112587922277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089658 n - A001787 n

end

end A276289.P15044761112587922277

namespace A276289

/-- `A089658(n)-A001787(n)` -/
def P15044761112587922277.Spec : Prop :=
  ∀ n, P15044761112587922277.a n = A276289 n

end A276289

/-! ## A276289.P4703763688105565962

`A084850(n)-A084851(n)`
-/

namespace A276289.P4703763688105565962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084850 n - A084851 n

end

end A276289.P4703763688105565962

namespace A276289

/-- `A084850(n)-A084851(n)` -/
def P4703763688105565962.Spec : Prop :=
  ∀ n, P4703763688105565962.a n = A276289 n

end A276289

/-! ## A276289.P17287848115128070764

`A081908(n)-A127276(n)`
-/

namespace A276289.P17287848115128070764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081908 n - A127276 n

end

end A276289.P17287848115128070764

namespace A276289

/-- `A081908(n)-A127276(n)` -/
def P17287848115128070764.Spec : Prop :=
  ∀ n, P17287848115128070764.a n = A276289 n

end A276289

/-! ## A276289.P15425742212514631041

`A340257(n)-A072863(n)`
-/

namespace A276289.P15425742212514631041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340257 n - A072863 n

end

end A276289.P15425742212514631041

namespace A276289

/-- `A340257(n)-A072863(n)` -/
def P15425742212514631041.Spec : Prop :=
  ∀ n, P15425742212514631041.a n = A276289 n

end A276289

/-! ## A276289.P11059179741685127052

`A136530(n)-A053220(n+1)`
-/

namespace A276289.P11059179741685127052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136530 n - A053220 (n + 1)

end

end A276289.P11059179741685127052

namespace A276289

/-- `A136530(n)-A053220(n+1)` -/
def P11059179741685127052.Spec : Prop :=
  ∀ n, P11059179741685127052.a n = A276289 n

end A276289

/-! ## A276289.P8914090658371982870

`A295288(n)-A001787(n+1)`
-/

namespace A276289.P8914090658371982870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295288 n - A001787 (n + 1)

end

end A276289.P8914090658371982870

namespace A276289

/-- `A295288(n)-A001787(n+1)` -/
def P8914090658371982870.Spec : Prop :=
  ∀ n, P8914090658371982870.a n = A276289 n

end A276289

/-! ## A276289.P7183064570569267218

`A356888(n+1)-A081908(n)`
-/

namespace A276289.P7183064570569267218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356888 (n + 1) - A081908 n

end

end A276289.P7183064570569267218

namespace A276289

/-- `A356888(n+1)-A081908(n)` -/
def P7183064570569267218.Spec : Prop :=
  ∀ n, P7183064570569267218.a n = A276289 n

end A276289

/-! ## A276289.P5249512874909342113

`A001788(n)+A001815(n)/2`
-/

namespace A276289.P5249512874909342113
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001788 n : ℚ) + (A001815 n : ℚ) / 2

end

end A276289.P5249512874909342113

namespace A276289

/-- `A001788(n)+A001815(n)/2` -/
def P5249512874909342113.Spec : Prop :=
  ∀ n, P5249512874909342113.a n = (A276289 n : ℚ)

end A276289

/-! ## A276289.P4952226525722860021

`A001788(n)+A081908(n)-A000079(n)`
-/

namespace A276289.P4952226525722860021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001788 n + (A081908 n - A000079 n)

end

end A276289.P4952226525722860021

namespace A276289

/-- `A001788(n)+A081908(n)-A000079(n)` -/
def P4952226525722860021.Spec : Prop :=
  ∀ n, P4952226525722860021.a n = A276289 n

end A276289

/-! ## A276289.P10876292188629076428

`A001787(n)+A052481(n)-A081908(n)`
-/

namespace A276289.P10876292188629076428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001787 n + (A052481 n - A081908 n)

end

end A276289.P10876292188629076428

namespace A276289

/-- `A001787(n)+A052481(n)-A081908(n)` -/
def P10876292188629076428.Spec : Prop :=
  ∀ n, P10876292188629076428.a n = A276289 n

end A276289

/-! ## A276289.P17503709858901662213

`A001787(n)+A300451(n)-A000079(n)`
-/

namespace A276289.P17503709858901662213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001787 n + (A300451 n - A000079 n)

end

end A276289.P17503709858901662213

namespace A276289

/-- `A001787(n)+A300451(n)-A000079(n)` -/
def P17503709858901662213.Spec : Prop :=
  ∀ n, P17503709858901662213.a n = A276289 n

end A276289

/-! ## A276289.P17348941585226055938

`A001788(n)+A052481(n)-A300451(n)`
-/

namespace A276289.P17348941585226055938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001788 n + (A052481 n - A300451 n)

end

end A276289.P17348941585226055938

namespace A276289

/-- `A001788(n)+A052481(n)-A300451(n)` -/
def P17348941585226055938.Spec : Prop :=
  ∀ n, P17348941585226055938.a n = A276289 n

end A276289

/-! ## A276289.P1751997704616123302

`A001788(n)+A300451(n)-A053730(n)`
-/

namespace A276289.P1751997704616123302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001788 n + (A300451 n - A053730 n)

end

end A276289.P1751997704616123302

namespace A276289

/-- `A001788(n)+A300451(n)-A053730(n)` -/
def P1751997704616123302.Spec : Prop :=
  ∀ n, P1751997704616123302.a n = A276289 n

end A276289

/-! ## A276289.P10065080399108959501

`A295288(n)-A001787(n)-A001792(n)`
-/

namespace A276289.P10065080399108959501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295288 n - A001787 n - A001792 n

end

end A276289.P10065080399108959501

namespace A276289

/-- `A295288(n)-A001787(n)-A001792(n)` -/
def P10065080399108959501.Spec : Prop :=
  ∀ n, P10065080399108959501.a n = A276289 n

end A276289

/-! ## A276289.P13101858786448672882

`A081908(n+1)+A081908(n)-A007283(n)`
-/

namespace A276289.P13101858786448672882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081908 (n + 1) + (A081908 n - A007283 n)

end

end A276289.P13101858786448672882

namespace A276289

/-- `A081908(n+1)+A081908(n)-A007283(n)` -/
def P13101858786448672882.Spec : Prop :=
  ∀ n, P13101858786448672882.a n = A276289 n

end A276289

/-! ## A276289.P1530770002915593073

`A104270(n+1)+A001788(n)-A072863(n)`
-/

namespace A276289.P1530770002915593073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104270 (n + 1) + (A001788 n - A072863 n)

end

end A276289.P1530770002915593073

namespace A276289

/-- `A104270(n+1)+A001788(n)-A072863(n)` -/
def P1530770002915593073.Spec : Prop :=
  ∀ n, P1530770002915593073.a n = A276289 n

end A276289

/-!
# A276290: Products of odd primes p and q such that either p or q is in the trajectory of (p*q)+1 under the Collatz 3x+1 map (A014682).

The programs for A276290, there is no canonical definition to state claims against.
-/

/-! ## A276290.P9342913217903090028

`A038509(record[A097154(n+1)])`
-/

namespace A276290.P9342913217903090028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097154 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038509 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A276290.P9342913217903090028

/-! ## A276290.P16019509415345899304

`A054550(record[A097154(n+1)])`
-/

namespace A276290.P16019509415345899304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097154 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054550 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A276290.P16019509415345899304

/-! ## A276290.P10820380864037701035

`A038509(round(log(A081160(2*(n+2)))))`
-/

namespace A276290.P10820380864037701035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038509 (SequenceMachineLib.roundAway (Real.log (A081160 (2 * (n + 2)) : ℝ))).toNat

end

end A276290.P10820380864037701035

/-! ## A276290.P864020207742511252

`∩[A038509(n+1), A384735(n+1)]`
-/

namespace A276290.P864020207742511252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038509 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384735 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A276290.P864020207742511252

/-!
# A276291: Number of directed Hamiltonian paths on the n X n torus grid graph.

The programs for A276291, there is no canonical definition to state claims against.
-/

/-! ## A276291.P6509968389174047971

`2*A268838(n+3)`
-/

namespace A276291.P6509968389174047971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A268838 (n + 3)

end

end A276291.P6509968389174047971

/-!
# A276292: Number of n X n 0..2 arrays with no element equal to any value at offset (-2,-1), (-1,1) or (0,-1) and new values introduced in order 0..2.

The programs for A276292, there is no canonical definition to state claims against.
-/

/-! ## A276292.P5928900259808297546

`A276299(∑[4*n]+1)`
-/

namespace A276292.P5928900259808297546
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276299 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A276292.P5928900259808297546

/-! ## A276292.P6626265848021286187

`A276299(A001844(n))+A025439(n)`
-/

namespace A276292.P6626265848021286187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276299 (A001844 n).toNat + A025439 n

end

end A276292.P6626265848021286187

/-! ## A276292.P18007618909749968013

`or(A000007(n), A276299(A001844(n)))`
-/

namespace A276292.P18007618909749968013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A276299 (A001844 n).toNat)

end

end A276292.P18007618909749968013

/-! ## A276292.P4290913183640872825

`A276299(A001844(n))+A048013(n+2)`
-/

namespace A276292.P4290913183640872825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276299 (A001844 n).toNat + A048013 (n + 2)

end

end A276292.P4290913183640872825

/-! ## A276292.P16465820146689698124

`A276299(A001844(n))+char[A045859(n+1)]`
-/

namespace A276292.P16465820146689698124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045859 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276299 (A001844 n).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A276292.P16465820146689698124

/-!
# A276293: Number of n X 2 0..2 arrays with no element equal to any value at offset (-2,-1) (-1,1) or (0,-1) and new values introduced in order 0..2.

The programs for A276293, the canonical program `A276293.P10409692845064652196` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A276293 has offset 1).

The definition of A276293 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 221 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A276293.P10409692845064652196

`4*a(n-1)-4*a(n-2)+2*a(n-3)` with `a(0)=1, a(1)=4, a(2)=11, a(3)=31`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A276293

/-- `4*a(n-1)-4*a(n-2)+2*a(n-3)` -/
def P10409692845064652196.Spec : Prop :=
  ∀ n, P10409692845064652196.a n = A276293 (n + 1)

theorem P10409692845064652196.correct : P10409692845064652196.Spec := by
  intro n
  simp only [A276293, Nat.add_sub_cancel]

end A276293

/-! ## A276293.P9883487564994352182

`∑[round(A117189(n+1)/2)]`
-/

namespace A276293.P9883487564994352182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A117189 (n + 1) : ℚ) / 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A276293.P9883487564994352182

namespace A276293

/-- `∑[round(A117189(n+1)/2)]` -/
def P9883487564994352182.Spec : Prop :=
  ∀ n, P9883487564994352182.a n = A276293 (n + 1)

end A276293

/-! ## A276293.P11689956602507172310

`A078484(n)+Δ[A159036(n)]`
-/

namespace A276293.P11689956602507172310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159036 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078484 n + (f1 (n + 1) - f1 n)

end

end A276293.P11689956602507172310

namespace A276293

/-- `A078484(n)+Δ[A159036(n)]` -/
def P11689956602507172310.Spec : Prop :=
  ∀ n, P11689956602507172310.a n = A276293 (n + 1)

end A276293

/-! ## A276293.P3601787070420290973

`A117189(n)+∑[A117189(n)]-A159035(n)`
-/

namespace A276293.P3601787070420290973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117189 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117189 n + (∑ j ∈ Finset.range (n + 1), f1 j - A159035 n)

end

end A276293.P3601787070420290973

namespace A276293

/-- `A117189(n)+∑[A117189(n)]-A159035(n)` -/
def P3601787070420290973.Spec : Prop :=
  ∀ n, P3601787070420290973.a n = A276293 (n + 1)

end A276293

/-! ## A276293.P2893198771268960916

`A073357(n+1)+A117189(n)-A159035(n)`
-/

namespace A276293.P2893198771268960916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073357 (n + 1) + (A117189 n - A159035 n)

end

end A276293.P2893198771268960916

namespace A276293

/-- `A073357(n+1)+A117189(n)-A159035(n)` -/
def P2893198771268960916.Spec : Prop :=
  ∀ n, P2893198771268960916.a n = A276293 (n + 1)

end A276293

/-! ## A276293.P3946119968331973303

`A117189(n+1)-(A159035(n)+A115390(n))`
-/

namespace A276293.P3946119968331973303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117189 (n + 1) - (A159035 n + A115390 n)

end

end A276293.P3946119968331973303

namespace A276293

/-- `A117189(n+1)-(A159035(n)+A115390(n))` -/
def P3946119968331973303.Spec : Prop :=
  ∀ n, P3946119968331973303.a n = A276293 (n + 1)

end A276293

/-! ## A276293.P13778841355013062432

`A159036(n+1)+A078484(n)-A159036(n)`
-/

namespace A276293.P13778841355013062432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159036 (n + 1) + (A078484 n - A159036 n)

end

end A276293.P13778841355013062432

namespace A276293

/-- `A159036(n+1)+A078484(n)-A159036(n)` -/
def P13778841355013062432.Spec : Prop :=
  ∀ n, P13778841355013062432.a n = A276293 (n + 1)

end A276293

/-! ## A276293.P10257293538274529846

`A073357(n+1)+A159035(n+1)-A159035(n)`
-/

namespace A276293.P10257293538274529846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073357 (n + 1) + (A159035 (n + 1) - A159035 n)

end

end A276293.P10257293538274529846

namespace A276293

/-- `A073357(n+1)+A159035(n+1)-A159035(n)` -/
def P10257293538274529846.Spec : Prop :=
  ∀ n, P10257293538274529846.a n = A276293 (n + 1)

end A276293

/-! ## A276293.P2554250655626548987

`Δ[Δ[Δ[A159035(n)]]]`
-/

namespace A276293.P2554250655626548987
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159035 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A276293.P2554250655626548987

namespace A276293

/-- `Δ[Δ[Δ[A159035(n)]]]` -/
def P2554250655626548987.Spec : Prop :=
  ∀ n, P2554250655626548987.a n = A276293 (n + 1)

end A276293

/-! ## A276293.P12434968597977410281

`floor(A073357(n+2)/2)`
-/

namespace A276293.P12434968597977410281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A073357 (n + 2) : ℚ) / 2⌋

end

end A276293.P12434968597977410281

namespace A276293

/-- `floor(A073357(n+2)/2)` -/
def P12434968597977410281.Spec : Prop :=
  ∀ n, P12434968597977410281.a n = A276293 (n + 1)

end A276293

/-! ## A276293.P2798822223506314580

`floor((∑[A159035(n+2)]+1)/2)`
-/

namespace A276293.P2798822223506314580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159035 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℤ) : ℚ) / 2⌋

end

end A276293.P2798822223506314580

namespace A276293

/-- `floor((∑[A159035(n+2)]+1)/2)` -/
def P2798822223506314580.Spec : Prop :=
  ∀ n, P2798822223506314580.a n = A276293 (n + 1)

end A276293

/-! ## A276293.P8018460805093571944

`ceil(A073357(A065475(n+1))/2)`
-/

namespace A276293.P8018460805093571944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A073357 (A065475 (n + 1)).toNat : ℚ) / 2⌉

end

end A276293.P8018460805093571944

namespace A276293

/-- `ceil(A073357(A065475(n+1))/2)` -/
def P8018460805093571944.Spec : Prop :=
  ∀ n, P8018460805093571944.a n = A276293 (n + 1)

end A276293

/-! ## A276293.P13625414867444518577

`A073357(n+2)/(n+4-A065475(n+1))`
-/

namespace A276293.P13625414867444518577
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073357 (n + 2) : ℚ) / ((n + 4 : ℤ) - A065475 (n + 1) : ℚ)

end

end A276293.P13625414867444518577

namespace A276293

/-- `A073357(n+2)/(n+4-A065475(n+1))` -/
def P13625414867444518577.Spec : Prop :=
  ∀ n, P13625414867444518577.a n = (A276293 (n + 1) : ℚ)

end A276293

/-!
# A276294: Number of n X 3 0..2 arrays with no element equal to any value at offset (-2,-1) (-1,1) or (0,-1) and new values introduced in order 0..2.

The programs for A276294, there is no canonical definition to state claims against.
-/

/-! ## A276294.P9034321559952266862

`A276299(∑[n+3]+1)`
-/

namespace A276294.P9034321559952266862
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276299 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A276294.P9034321559952266862

/-! ## A276294.P9347112354017984333

`A033999(2*n)*A276299(A034856(n+2))`
-/

namespace A276294.P9347112354017984333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (2 * n) * A276299 (A034856 (n + 2)).toNat

end

end A276294.P9347112354017984333

/-!
# A276295: Number of nX4 0..2 arrays with no element equal to any value at offset (-2,-1) (-1,1) or (0,-1) and new values introduced in order 0..2.

The programs for A276295, there is no canonical definition to state claims against.
-/

/-! ## A276295.P14401039709409816974

`A276299(A141214(n+1))`
-/

namespace A276295.P14401039709409816974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276299 (A141214 (n + 1)).toNat

end

end A276295.P14401039709409816974

/-! ## A276295.P14885471521841021176

`A276299(A055998(n+2))`
-/

namespace A276295.P14885471521841021176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276299 (A055998 (n + 2)).toNat

end

end A276295.P14885471521841021176

/-! ## A276295.P10684993837008113104

`A276299(eq[3, A193592(n)])`
-/

namespace A276295.P10684993837008113104
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276299 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A276295.P10684993837008113104

/-! ## A276295.P4115994303155370637

`A276299(A052905(n+1)+2)`
-/

namespace A276295.P4115994303155370637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276299 (A052905 (n + 1) + 2).toNat

end

end A276295.P4115994303155370637

/-! ## A276295.P1687147491082768404

`A276299(A055999(n+1)+3)`
-/

namespace A276295.P1687147491082768404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276299 (A055999 (n + 1) + 3).toNat

end

end A276295.P1687147491082768404

/-!
# A276296: Number of nX5 0..2 arrays with no element equal to any value at offset (-2,-1) (-1,1) or (0,-1) and new values introduced in order 0..2.

The programs for A276296, there is no canonical definition to state claims against.
-/

/-! ## A276296.P2875948270148229597

`A276299(Δ[A264443(n)])`
-/

namespace A276296.P2875948270148229597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276299 (f1 (n + 1) - f1 n).toNat

end

end A276296.P2875948270148229597

/-! ## A276296.P17240164862335738137

`A276299(A046691(n+3))`
-/

namespace A276296.P17240164862335738137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276299 (A046691 (n + 3)).toNat

end

end A276296.P17240164862335738137

/-! ## A276296.P25164233211389100

`A276299(eq[4, A193592(n)])`
-/

namespace A276296.P25164233211389100
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276299 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A276296.P25164233211389100

/-! ## A276296.P16603381195311338920

`A276299(Δ[A023545(n+1)])`
-/

namespace A276296.P16603381195311338920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276299 (f1 (n + 1) - f1 n).toNat

end

end A276296.P16603381195311338920

/-! ## A276296.P2907922793948224917

`A276299(eq[5, A200370(n+1)])`
-/

namespace A276296.P2907922793948224917
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276299 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A276296.P2907922793948224917

/-!
# A276297: Number of nX6 0..2 arrays with no element equal to any value at offset (-2,-1) (-1,1) or (0,-1) and new values introduced in order 0..2.

The programs for A276297, there is no canonical definition to state claims against.
-/

/-! ## A276297.P297980885740305157

`A276299(A052905(n+3))`
-/

namespace A276297.P297980885740305157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276299 (A052905 (n + 3)).toNat

end

end A276297.P297980885740305157

/-! ## A276297.P6049857063576180989

`A276299(eq[5, A193592(n)])`
-/

namespace A276297.P6049857063576180989
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276299 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A276297.P6049857063576180989

/-! ## A276297.P770091187592092883

`A276299(eq[6, A200370(n+1)])`
-/

namespace A276297.P770091187592092883
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276299 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A276297.P770091187592092883

/-! ## A276297.P14534555283077352284

`A276299(eq[16, A057728(n+1)])`
-/

namespace A276297.P14534555283077352284
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057728 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276299 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A276297.P14534555283077352284

/-! ## A276297.P12823522749414908263

`A276299(Δ[A264443(n+1)]-1)`
-/

namespace A276297.P12823522749414908263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276299 (f1 (n + 1) - f1 n - 1).toNat

end

end A276297.P12823522749414908263

/-!
# A276298: Number of nX7 0..2 arrays with no element equal to any value at offset (-2,-1) (-1,1) or (0,-1) and new values introduced in order 0..2.

The programs for A276298, there is no canonical definition to state claims against.
-/

/-! ## A276298.P1002066443516927521

`A276299(A055999(n+4))`
-/

namespace A276298.P1002066443516927521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276299 (A055999 (n + 4)).toNat

end

end A276298.P1002066443516927521

/-! ## A276298.P870911436191000012

`A276299(eq[6, A193592(n)])`
-/

namespace A276298.P870911436191000012
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276299 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A276298.P870911436191000012

/-! ## A276298.P15962315221316254290

`A276299(eq[7, A200370(n+1)])`
-/

namespace A276298.P15962315221316254290
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276299 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A276298.P15962315221316254290

/-! ## A276298.P16598851712434999004

`A276299(eq[5, log2(A057728(n+1))])`
-/

namespace A276298.P16598851712434999004
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A057728 (n + 1) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276299 (SequenceMachineLib.nth (fun j => (f1 j : ℝ) = f2 j) n)

end

end A276298.P16598851712434999004

/-! ## A276298.P5326660313301033511

`A276299(eq[6, A004736(n+1)]+n+7)`
-/

namespace A276298.P5326660313301033511
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276299 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + (n + 7))

end

end A276298.P5326660313301033511

