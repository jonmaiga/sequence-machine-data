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
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
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
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
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
import Seq.Opaque.C023
import Seq.Opaque.C024

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A096704: Balanced primes of order twelve.

The programs for A096704, there is no canonical definition to state claims against.
-/

/-! ## A096704.P2363646566051147978

`p?[A060791(A176571(n+1))%A176571(n+1)]`
-/

namespace A096704.P2363646566051147978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A060791 (A176571 (n + 1)).toNat) (A176571 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A096704.P2363646566051147978

/-!
# A096705: Balanced primes of index 1.

The programs for A096705, there is no canonical definition to state claims against.
-/

/-! ## A096705.P10835792795065947789

`A045344(eq[1, A096693(n+1)])`
-/

namespace A096705.P10835792795065947789
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096693 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A096705.P10835792795065947789

/-! ## A096705.P11451527716771442690

`A065091(eq[1, A096693(n+1)])`
-/

namespace A096705.P11451527716771442690
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096693 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A096705.P11451527716771442690

/-! ## A096705.P6074317371727172780

`A000040(eq[1, A096693(n+1)]+1)`
-/

namespace A096705.P6074317371727172780
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096693 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A096705.P6074317371727172780

/-! ## A096705.P2606851176865500494

`A006005(eq[1, A096693(n+1)]+1)`
-/

namespace A096705.P2606851176865500494
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096693 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A096705.P2606851176865500494

/-! ## A096705.P10367380824559823791

`A008578(eq[1, A096693(n+1)]+2)`
-/

namespace A096705.P10367380824559823791
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096693 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2)

end

end A096705.P10367380824559823791

/-! ## A096705.P15463568818652255955

`p?[A000040(n+1)*A096693(n+1)]`
-/

namespace A096705.P15463568818652255955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A096693 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A096705.P15463568818652255955

/-! ## A096705.P395562859706419630

`p?[A006005(n+1)*A096693(n+1)]`
-/

namespace A096705.P395562859706419630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1) * A096693 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A096705.P395562859706419630

/-! ## A096705.P3983576082983357578

`p?[A008578(n+2)*A096693(n+1)]`
-/

namespace A096705.P3983576082983357578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 2) * A096693 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A096705.P3983576082983357578

/-! ## A096705.P12250581187175640005

`p?[A065091(n+1)*A096693(n+2)]`
-/

namespace A096705.P12250581187175640005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1) * A096693 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A096705.P12250581187175640005

/-!
# A096706: Balanced primes (A090403) of index 2.

The programs for A096706, there is no canonical definition to state claims against.
-/

/-! ## A096706.P7956507668361035752

`A045344(eq[2, A096693(n+1)])`
-/

namespace A096706.P7956507668361035752
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096693 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A096706.P7956507668361035752

/-! ## A096706.P13028257935468739900

`A065091(eq[2, A096693(n+1)])`
-/

namespace A096706.P13028257935468739900
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096693 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A096706.P13028257935468739900

/-! ## A096706.P5358977906401380748

`A000040(eq[2, A096693(n+1)]+1)`
-/

namespace A096706.P5358977906401380748
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096693 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A096706.P5358977906401380748

/-! ## A096706.P16000366334887805616

`A006005(eq[2, A096693(n+1)]+1)`
-/

namespace A096706.P16000366334887805616
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096693 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A096706.P16000366334887805616

/-! ## A096706.P9228024472590683693

`p?[(A096693(n+1)-1)*A000040(n+1)]`
-/

namespace A096706.P9228024472590683693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A096693 (n + 1) - 1) * A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A096706.P9228024472590683693

/-!
# A096707: Balanced primes (A090403) of index 3.

The programs for A096707, there is no canonical definition to state claims against.
-/

/-! ## A096707.P10438742234652099590

`p?[(A096693(n+1)-2)*A000040(n+1)]`
-/

namespace A096707.P10438742234652099590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A096693 (n + 1) - 2) * A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A096707.P10438742234652099590

/-! ## A096707.P14849812112395141064

`p?[(A096693(n+1)-2)*A006005(n+1)]`
-/

namespace A096707.P14849812112395141064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A096693 (n + 1) - 2) * A006005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A096707.P14849812112395141064

/-!
# A096712: Numerators of terms in series expansion of tan(sin(x)).

The programs for A096712, there is no canonical definition to state claims against.
-/

/-! ## A096712.P18041657482896095646

`A003705(n)/gcd(A001147(n), A003705(n))`
-/

namespace A096712.P18041657482896095646
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003705 n : ℚ) / (Int.gcd (A001147 n) (A003705 n) : ℚ)

end

end A096712.P18041657482896095646

/-! ## A096712.P15261932100263701719

`A003705(n)/gcd(A024225(n+1)/(n+1), A001818(n))`
-/

namespace A096712.P15261932100263701719
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003705 n : ℚ) / (Int.gcd (SequenceMachineLib.roundAway ((A024225 (n + 1) : ℚ) / (n + 1 : ℚ))) (A001818 n) : ℚ)

end

end A096712.P15261932100263701719

/-!
# A096713: Irregular triangle T(n,k) of nonzero coefficients of the modified Hermite polynomials (n >= 0 and 0 <= k <= floor(n/2)).

The programs for A096713, the canonical program `A096713.P528370935851722280` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A096713 has offset 0).

The definition of A096713 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3543 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A096713.P528370935851722280

`A066325(record[n-A025581(n)])`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A096713

/-- `A066325(record[n-A025581(n)])` -/
def P528370935851722280.Spec : Prop :=
  ∀ n, P528370935851722280.a n = A096713 n

theorem P528370935851722280.correct : P528370935851722280.Spec := by
  intro n
  simp only [A096713]

end A096713

/-! ## A096713.P12125280109281286114

`A066325(2*n-A259361(n))`
-/

namespace A096713.P12125280109281286114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066325 ((2 * n : ℤ) - A259361 n).toNat

end

end A096713.P12125280109281286114

namespace A096713

/-- `A066325(2*n-A259361(n))` -/
def P12125280109281286114.Spec : Prop :=
  ∀ n, P12125280109281286114.a n = A096713 n

end A096713

/-! ## A096713.P6911414116395203354

`A066325(n-A259361(n)+n)`
-/

namespace A096713.P6911414116395203354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066325 ((n : ℤ) - A259361 n + (n : ℤ)).toNat

end

end A096713.P6911414116395203354

namespace A096713

/-- `A066325(n-A259361(n)+n)` -/
def P6911414116395203354.Spec : Prop :=
  ∀ n, P6911414116395203354.a n = A096713 n

end A096713

/-! ## A096713.P11732557886379803776

`A066325(n-(A259361(n)-n))`
-/

namespace A096713.P11732557886379803776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066325 ((n : ℤ) - (A259361 n - (n : ℤ))).toNat

end

end A096713.P11732557886379803776

namespace A096713

/-- `A066325(n-(A259361(n)-n))` -/
def P11732557886379803776.Spec : Prop :=
  ∀ n, P11732557886379803776.a n = A096713 n

end A096713

/-! ## A096713.P3248102455725794821

`A066325(eq[1, A152140(n+1)+1])`
-/

namespace A096713.P3248102455725794821
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152140 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066325 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A096713.P3248102455725794821

namespace A096713

/-- `A066325(eq[1, A152140(n+1)+1])` -/
def P3248102455725794821.Spec : Prop :=
  ∀ n, P3248102455725794821.a n = A096713 n

end A096713

/-! ## A096713.P8081599116276830833

`A066325(A016789(n)-A000037(n+1))`
-/

namespace A096713.P8081599116276830833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066325 (A016789 n - A000037 (n + 1)).toNat

end

end A096713.P8081599116276830833

namespace A096713

/-- `A066325(A016789(n)-A000037(n+1))` -/
def P8081599116276830833.Spec : Prop :=
  ∀ n, P8081599116276830833.a n = A096713 n

end A096713

/-! ## A096713.P624786460512679742

`A066325(lt[1, A066325(n)²+1])`
-/

namespace A096713.P624786460512679742
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066325 n ^ 2 + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066325 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A096713.P624786460512679742

namespace A096713

/-- `A066325(lt[1, A066325(n)²+1])` -/
def P624786460512679742.Spec : Prop :=
  ∀ n, P624786460512679742.a n = A096713 n

end A096713

/-! ## A096713.P7587432395993527812

`A066325(lt[1/3, A066325(n)²])`
-/

namespace A096713.P7587432395993527812
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066325 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066325 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n)

end

end A096713.P7587432395993527812

namespace A096713

/-- `A066325(lt[1/3, A066325(n)²])` -/
def P7587432395993527812.Spec : Prop :=
  ∀ n, P7587432395993527812.a n = A096713 n

end A096713

/-!
# A096716: Denominators of terms in series expansion of tan(sin(x)).

The programs for A096716, there is no canonical definition to state claims against.
-/

/-! ## A096716.P17354231376767263513

`A009445(n)/gcd(A001147(n), A003705(n))`
-/

namespace A096716.P17354231376767263513
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009445 n : ℚ) / (Int.gcd (A001147 n) (A003705 n) : ℚ)

end

end A096716.P17354231376767263513

/-! ## A096716.P14659035205556891479

`A009445(n)/gcd(A024225(n+1)/(n+1), A001818(n))`
-/

namespace A096716.P14659035205556891479
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009445 n : ℚ) / (Int.gcd (SequenceMachineLib.roundAway ((A024225 (n + 1) : ℚ) / (n + 1 : ℚ))) (A001818 n) : ℚ)

end

end A096716.P14659035205556891479

/-! ## A096716.P17504043416596667243

`lcm(A006530(A045689(n)), A096671(n))`
-/

namespace A096716.P17504043416596667243
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A006530 (A045689 n).toNat) (A096671 n)

end

end A096716.P17504043416596667243

/-!
# A096717: Numerators of terms in series expansion of arcsin(arctan(x)).

The programs for A096717, there is no canonical definition to state claims against.
-/

/-! ## A096717.P15441037716391890105

`A000265(A296679(n))*A033999(n)`
-/

namespace A096717.P15441037716391890105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A296679 n).toNat * A033999 n

end

end A096717.P15441037716391890105

/-!
# A096718: Denominators of terms in series expansion of arcsin(arctan(x)).

The programs for A096718, there is no canonical definition to state claims against.
-/

/-! ## A096718.P17027227457315571242

`A009445(n)/gcd(A009445(n), A296679(n))`
-/

namespace A096718.P17027227457315571242
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009445 n : ℚ) / (Int.gcd (A009445 n) (A296679 n) : ℚ)

end

end A096718.P17027227457315571242

/-! ## A096718.P9447083379898301230

`lcm(A000142(2*n+1), A296679(n))/A296679(n)`
-/

namespace A096718.P9447083379898301230
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A000142 (2 * n + 1)) (A296679 n) : ℚ) / (A296679 n : ℚ)

end

end A096718.P9447083379898301230

/-! ## A096718.P9298772367655602256

`A009445(n)/A348501(A075735(n+1))`
-/

namespace A096718.P9298772367655602256
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009445 n : ℚ) / (A348501 (A075735 (n + 1)).toNat : ℚ)

end

end A096718.P9298772367655602256

/-!
# A096719: Numerators of terms in series expansion of arctan(arcsin(x)).

The programs for A096719, there is no canonical definition to state claims against.
-/

/-! ## A096719.P8104250075309542097

`A296677(n)/gcd(A000680(n), A296677(n))`
-/

namespace A096719.P8104250075309542097
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A296677 n : ℚ) / (Int.gcd (A000680 n) (A296677 n) : ℚ)

end

end A096719.P8104250075309542097

/-! ## A096719.P5202826279673156873

`A296677(n)/A301333(A259386(n+1))`
-/

namespace A096719.P5202826279673156873
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A296677 n : ℚ) / (A301333 (A259386 (n + 1)).toNat : ℚ)

end

end A096719.P5202826279673156873

/-! ## A096719.P16205135810658776266

`A296677(n)/A175506(A000041(2*n))`
-/

namespace A096719.P16205135810658776266
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A296677 n : ℚ) / (A175506 (A000041 (2 * n)).toNat : ℚ)

end

end A096719.P16205135810658776266

/-!
# A096720: Denominators of terms in series expansion of arctan(arcsin(x)).

The programs for A096720, there is no canonical definition to state claims against.
-/

/-! ## A096720.P6244163338829022506

`A000142(2*n+1)/gcd(A000680(n), A296677(n))`
-/

namespace A096720.P6244163338829022506
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 (2 * n + 1) : ℚ) / (Int.gcd (A000680 n) (A296677 n) : ℚ)

end

end A096720.P6244163338829022506

/-! ## A096720.P15608448548768670047

`(2*n+1)!/gcd(3, A000005((n+1)!))`
-/

namespace A096720.P15608448548768670047
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (2 * n + 1) : ℚ) / (Int.gcd 3 (A000005 (Nat.factorial (n + 1))) : ℚ)

end

end A096720.P15608448548768670047

/-! ## A096720.P7767027753542234504

`(2*n+1)!/∏{p}[(n+2)!, A007318(#)]`
-/

namespace A096720.P7767027753542234504
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (n + 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (2 * n + 1) : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), A007318 p : ℤ) : ℚ)

end

end A096720.P7767027753542234504

/-! ## A096720.P8490331419241585781

`record[A303675(n+1)]/A130497(n)`
-/

namespace A096720.P8490331419241585781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303675 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / (A130497 n : ℚ)

end

end A096720.P8490331419241585781

/-!
# A096722: Denominators of terms in series expansion of arcsin(arctan(x)) - arctan(arcsin(x)).

The programs for A096722, there is no canonical definition to state claims against.
-/

/-! ## A096722.P2585411666361525584

`A045689(n)*A146434(A045690(n+1))`
-/

namespace A096722.P2585411666361525584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045689 n * A146434 (A045690 (n + 1)).toNat

end

end A096722.P2585411666361525584

/-!
# A096723: Numbers n such that 3^n has the form 2p-+1 where p is prime.

The programs for A096723, there is no canonical definition to state claims against.
-/

/-! ## A096723.P14790540772468524804

`ceil(A018283(n+1)/log2(3))`
-/

namespace A096723.P14790540772468524804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A018283 (n + 1) : ℝ) / Real.logb 2 (3 : ℝ)⌉

end

end A096723.P14790540772468524804

/-! ## A096723.P5785293856186133708

`A000983(n+1)+val(n+1, 3)`
-/

namespace A096723.P5785293856186133708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000983 (n + 1) + (SequenceMachineLib.valuation (n + 1) 3 : ℤ)

end

end A096723.P5785293856186133708

/-! ## A096723.P8330517496063689241

`A279521(A018283(n+1))+1`
-/

namespace A096723.P8330517496063689241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279521 (A018283 (n + 1)).toNat + 1

end

end A096723.P8330517496063689241

/-! ## A096723.P17502533094687952525

`record[gcd(A168282(n+1), A314356(n))]`
-/

namespace A096723.P17502533094687952525
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A168282 (n + 1)) (A314356 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A096723.P17502533094687952525

/-! ## A096723.P7640899591385707515

`A007949(n+1)+A000983(n+1)`
-/

namespace A096723.P7640899591385707515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007949 (n + 1) + A000983 (n + 1)

end

end A096723.P7640899591385707515

/-!
# A096726: Expansion of eta(q^3)^10 / (eta(q) * eta(q^9))^3 in powers of q.

The programs for A096726, there is no canonical definition to state claims against.
-/

/-! ## A096726.P18275390221493164782

`A263773(n)/A057079(n)`
-/

namespace A096726.P18275390221493164782
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A263773 n : ℚ) / (A057079 n : ℚ)

end

end A096726.P18275390221493164782

/-! ## A096726.P1826937838618195640

`A242874(n)/A131713(n)`
-/

namespace A096726.P1826937838618195640
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A242874 n : ℚ) / (A131713 n : ℚ)

end

end A096726.P1826937838618195640

/-! ## A096726.P564983452161489967

`gcd(A242874(n), A281722(n))`
-/

namespace A096726.P564983452161489967
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A242874 n) (A281722 n)

end

end A096726.P564983452161489967

/-! ## A096726.P13180635665671351243

`gcd(abs(A281722(n)), A263773(n))`
-/

namespace A096726.P13180635665671351243
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd |A281722 n| (A263773 n)

end

end A096726.P13180635665671351243

/-! ## A096726.P12369475617418542903

`A008653(n)/dr(A056107(n))`
-/

namespace A096726.P12369475617418542903
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008653 n : ℚ) / (SequenceMachineLib.digitalRoot (A056107 n) : ℚ)

end

end A096726.P12369475617418542903

/-! ## A096726.P10002164658358178898

`A281722(n)/A061347(n+1)`
-/

namespace A096726.P10002164658358178898
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A281722 n : ℚ) / (A061347 (n + 1) : ℚ)

end

end A096726.P10002164658358178898

/-! ## A096726.P3564042836833048895

`A008653(n)/A010685(A283977(n))`
-/

namespace A096726.P3564042836833048895
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008653 n : ℚ) / (A010685 (A283977 n).toNat : ℚ)

end

end A096726.P3564042836833048895

/-! ## A096726.P18361190446876313503

`A008653(n)/A132954(n²)²`
-/

namespace A096726.P18361190446876313503
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008653 n : ℚ) / (A132954 (n ^ 2) ^ 2 : ℚ)

end

end A096726.P18361190446876313503

/-!
# A096727: Expansion of eta(q)^8 / eta(q^2)^4 in powers of q.

The programs for A096727, there is no canonical definition to state claims against.
-/

/-! ## A096727.P3757029240743212441

`(-1)^n*A000118(n)`
-/

namespace A096727.P3757029240743212441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A000118 n

end

end A096727.P3757029240743212441

/-! ## A096727.P10838370199152041558

`A000118(n)*A033999(n)`
-/

namespace A096727.P10838370199152041558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000118 n * A033999 n

end

end A096727.P10838370199152041558

/-! ## A096727.P3170102817544136809

`A068073(n)*A133690(n)`
-/

namespace A096727.P3170102817544136809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068073 n * A133690 n

end

end A096727.P3170102817544136809

/-! ## A096727.P5479204676305113827

`A103640(n)/A010684(n)`
-/

namespace A096727.P5479204676305113827
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A103640 n : ℚ) / (A010684 n : ℚ)

end

end A096727.P5479204676305113827

/-! ## A096727.P14309988716476301548

`A000118(n)*A062157(n+1)`
-/

namespace A096727.P14309988716476301548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000118 n * A062157 (n + 1)

end

end A096727.P14309988716476301548

/-! ## A096727.P7813151355824811919

`2*A000118(n)-A004011(n)`
-/

namespace A096727.P7813151355824811919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000118 n - A004011 n

end

end A096727.P7813151355824811919

/-! ## A096727.P5917609918400683578

`(A103640(n)+A000118(n))/2`
-/

namespace A096727.P5917609918400683578
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A103640 n + A000118 n : ℚ) / 2

end

end A096727.P5917609918400683578

/-! ## A096727.P9162346792280598670

`A004011(n)/(2-A010686(n))`
-/

namespace A096727.P9162346792280598670
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004011 n : ℚ) / (2 - A010686 n : ℚ)

end

end A096727.P9162346792280598670

/-! ## A096727.P2982540646028405786

`A103640(n)/(2-A033999(n))`
-/

namespace A096727.P2982540646028405786
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A103640 n : ℚ) / (2 - A033999 n : ℚ)

end

end A096727.P2982540646028405786

/-! ## A096727.P15243157321417601483

`2*A000118(n)-A000118(A005843(n))`
-/

namespace A096727.P15243157321417601483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000118 n - A000118 (A005843 n).toNat

end

end A096727.P15243157321417601483

/-! ## A096727.P13393907572186445093

`2*A000118(n)-A000118(A008586(n))`
-/

namespace A096727.P13393907572186445093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000118 n - A000118 (A008586 n).toNat

end

end A096727.P13393907572186445093

/-! ## A096727.P12904019562216713769

`2*A000118(n)-A000118(A109043(n))`
-/

namespace A096727.P12904019562216713769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000118 n - A000118 (A109043 n).toNat

end

end A096727.P12904019562216713769

/-! ## A096727.P72202762938624229

`2*A000118(n)-A000118(A109045(n))`
-/

namespace A096727.P72202762938624229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000118 n - A000118 (A109045 n).toNat

end

end A096727.P72202762938624229

/-! ## A096727.P15332751457766066837

`A033999(n)*A097057(2*n)`
-/

namespace A096727.P15332751457766066837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A097057 (2 * n)

end

end A096727.P15332751457766066837

/-! ## A096727.P16252381165627369855

`2*A097057(2*n)-A004011(n)`
-/

namespace A096727.P16252381165627369855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A097057 (2 * n) - A004011 n

end

end A096727.P16252381165627369855

/-! ## A096727.P2180768802054177855

`2*A097057(2*n)-A000118(2*n)`
-/

namespace A096727.P2180768802054177855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A097057 (2 * n) - A000118 (2 * n)

end

end A096727.P2180768802054177855

/-! ## A096727.P6539514508212991591

`A033999(n)*A133690(2*n)`
-/

namespace A096727.P6539514508212991591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A133690 (2 * n)

end

end A096727.P6539514508212991591

/-! ## A096727.P3630231786335472262

`2*A133690(2*n)-A004011(n)`
-/

namespace A096727.P3630231786335472262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A133690 (2 * n) - A004011 n

end

end A096727.P3630231786335472262

/-! ## A096727.P11535500991985250608

`2*A133690(2*n)-A000118(2*n)`
-/

namespace A096727.P11535500991985250608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A133690 (2 * n) - A000118 (2 * n)

end

end A096727.P11535500991985250608

/-! ## A096727.P1518882343775449944

`A207541(4*n)`
-/

namespace A096727.P1518882343775449944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207541 (4 * n)

end

end A096727.P1518882343775449944

/-!
# A096728: Records in A096287.

The programs for A096728, there is no canonical definition to state claims against.
-/

/-! ## A096728.P10774390221290303428

`record[A096287(n+1)]`
-/

namespace A096728.P10774390221290303428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096287 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A096728.P10774390221290303428

/-! ## A096728.P16876706786585154395

`A096287(A096729(n+1))`
-/

namespace A096728.P16876706786585154395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096287 (A096729 (n + 1)).toNat

end

end A096728.P16876706786585154395

/-! ## A096728.P16419720064715193510

`record[A096287(A028310(n))]-A025437(n)`
-/

namespace A096728.P16419720064715193510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096287 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A025437 n

end

end A096728.P16419720064715193510

/-! ## A096728.P1294278952187282548

`record[A096287(A028310(n))]-A326683(n)`
-/

namespace A096728.P1294278952187282548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096287 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A326683 n

end

end A096728.P1294278952187282548

/-! ## A096728.P12227545845624076195

`record[A096287(A028310(n))]*A054977(n)`
-/

namespace A096728.P12227545845624076195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096287 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A054977 n

end

end A096728.P12227545845624076195

/-!
# A096731: Values of continued fraction for Pi/2 associated with the records in A096464.

The programs for A096731, there is no canonical definition to state claims against.
-/

/-! ## A096731.P4230821820603866258

`A053300(A096464(n+1))`
-/

namespace A096731.P4230821820603866258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053300 (A096464 (n + 1)).toNat

end

end A096731.P4230821820603866258

/-!
# A096736: a(1) = 2; for n>1: a(n) = integer part of x-value when y=0 in (y-tau(n))/(x-1)=(1-tau(n))/(n-1), tau=A000005.

The programs for A096736, there is no canonical definition to state claims against.
-/

/-! ## A096736.P9294858797881168274

`A138009(n+1)+record[A169819(n+1)]`
-/

namespace A096736.P9294858797881168274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169819 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138009 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A096736.P9294858797881168274

/-! ## A096736.P8588532060887295200

`A169819(A178539(n+1))+A138009(n+1)`
-/

namespace A096736.P8588532060887295200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169819 (A178539 (n + 1)).toNat + A138009 (n + 1)

end

end A096736.P8588532060887295200

/-!
# A096737: a(1) = 2; for n>1: a(n) = integer part of y-value when x=0 in (y-tau(n))/(x-1)=(1-tau(n))/(n-1), tau=A000005.

The programs for A096737, the canonical program `A096737.P12937358250781418513` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A096737 has offset 1).

The definition of A096737 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A096737.P12937358250781418513

`∏{e}[abs(2-n)+3, #+1]`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A096737

/-- `∏{e}[abs(2-n)+3, #+1]` -/
def P12937358250781418513.Spec : Prop :=
  ∀ n, (P12937358250781418513.a n : ℤ) = A096737 (n + 1)

theorem P12937358250781418513.correct : P12937358250781418513.Spec := by
  intro n
  simp only [A096737, Nat.add_sub_cancel]

end A096737

/-! ## A096737.P12249421969768651395

`∑{d}[n+1, C(2, C(#, n²))]`
-/

namespace A096737.P12249421969768651395
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Nat.choose 2 (Nat.choose d (n ^ 2))

end

end A096737.P12249421969768651395

namespace A096737

/-- `∑{d}[n+1, C(2, C(#, n²))]` -/
def P12249421969768651395.Spec : Prop :=
  ∀ n, (P12249421969768651395.a n : ℤ) = A096737 (n + 1)

end A096737

/-! ## A096737.P16283020659961870996

`∑{d}[n+1, C(#, 2*n)+1]`
-/

namespace A096737.P16283020659961870996
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (Nat.choose d (2 * n) + 1)

end

end A096737.P16283020659961870996

namespace A096737

/-- `∑{d}[n+1, C(#, 2*n)+1]` -/
def P16283020659961870996.Spec : Prop :=
  ∀ n, (P16283020659961870996.a n : ℤ) = A096737 (n + 1)

end A096737

/-! ## A096737.P6269654212036232849

`∑{d}[n+1, ceil(4/(n+1+#))]`
-/

namespace A096737.P6269654212036232849
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), ⌈4 / (n + 1 + d : ℚ)⌉

end

end A096737.P6269654212036232849

namespace A096737

/-- `∑{d}[n+1, ceil(4/(n+1+#))]` -/
def P6269654212036232849.Spec : Prop :=
  ∀ n, P6269654212036232849.a n = A096737 (n + 1)

end A096737

/-! ## A096737.P11468262192010831695

`∏{e}[n+1, #+1]+char[n^17]`
-/

namespace A096737.P11468262192010831695
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 17

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) + (if ∃ j, f2 j = n then 1 else 0)

end

end A096737.P11468262192010831695

namespace A096737

/-- `∏{e}[n+1, #+1]+char[n^17]` -/
def P11468262192010831695.Spec : Prop :=
  ∀ n, (P11468262192010831695.a n : ℤ) = A096737 (n + 1)

end A096737

/-! ## A096737.P18350438330009623400

`A000005(abs(2-n)+3)`
-/

namespace A096737.P18350438330009623400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (|2 - (n : ℤ)| + 3).toNat

end

end A096737.P18350438330009623400

namespace A096737

/-- `A000005(abs(2-n)+3)` -/
def P18350438330009623400.Spec : Prop :=
  ∀ n, P18350438330009623400.a n = A096737 (n + 1)

end A096737

/-! ## A096737.P7940841496271960053

`A000005(n+1)+C(n, n²)`
-/

namespace A096737.P7940841496271960053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) + (Nat.choose n (n ^ 2) : ℤ)

end

end A096737.P7940841496271960053

namespace A096737

/-- `A000005(n+1)+C(n, n²)` -/
def P7940841496271960053.Spec : Prop :=
  ∀ n, P7940841496271960053.a n = A096737 (n + 1)

end A096737

/-! ## A096737.P11796253036894879808

`A373565(n)+A325765(n)`
-/

namespace A096737.P11796253036894879808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373565 n + A325765 n

end

end A096737.P11796253036894879808

namespace A096737

/-- `A373565(n)+A325765(n)` -/
def P11796253036894879808.Spec : Prop :=
  ∀ n, P11796253036894879808.a n = A096737 (n + 1)

end A096737

/-! ## A096737.P8350412965963357508

`A141044(n)+A032741(n+1)`
-/

namespace A096737.P8350412965963357508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141044 n + A032741 (n + 1)

end

end A096737.P8350412965963357508

namespace A096737

/-- `A141044(n)+A032741(n+1)` -/
def P8350412965963357508.Spec : Prop :=
  ∀ n, P8350412965963357508.a n = A096737 (n + 1)

end A096737

/-! ## A096737.P16555278060769799386

`A334954(n+1)-A157928(n)`
-/

namespace A096737.P16555278060769799386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334954 (n + 1) - A157928 n

end

end A096737.P16555278060769799386

namespace A096737

/-- `A334954(n+1)-A157928(n)` -/
def P16555278060769799386.Spec : Prop :=
  ∀ n, P16555278060769799386.a n = A096737 (n + 1)

end A096737

/-! ## A096737.P4145934959153789010

`A019590(n+1)+A000005(n+1)`
-/

namespace A096737.P4145934959153789010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019590 (n + 1) + A000005 (n + 1)

end

end A096737.P4145934959153789010

namespace A096737

/-- `A019590(n+1)+A000005(n+1)` -/
def P4145934959153789010.Spec : Prop :=
  ∀ n, P4145934959153789010.a n = A096737 (n + 1)

end A096737

/-! ## A096737.P4420926109342246622

`A000005(n+1)+1-A157928(n)`
-/

namespace A096737.P4420926109342246622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) + (1 - A157928 n)

end

end A096737.P4420926109342246622

namespace A096737

/-- `A000005(n+1)+1-A157928(n)` -/
def P4420926109342246622.Spec : Prop :=
  ∀ n, P4420926109342246622.a n = A096737 (n + 1)

end A096737

/-! ## A096737.P7225420629570664540

`A062249(n+1)-A184985(n+1)`
-/

namespace A096737.P7225420629570664540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062249 (n + 1) - A184985 (n + 1)

end

end A096737.P7225420629570664540

namespace A096737

/-- `A062249(n+1)-A184985(n+1)` -/
def P7225420629570664540.Spec : Prop :=
  ∀ n, P7225420629570664540.a n = A096737 (n + 1)

end A096737

/-! ## A096737.P15087492970540656415

`A348776(n+1)-A049820(n+1)`
-/

namespace A096737.P15087492970540656415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348776 (n + 1) - A049820 (n + 1)

end

end A096737.P15087492970540656415

namespace A096737

/-- `A348776(n+1)-A049820(n+1)` -/
def P15087492970540656415.Spec : Prop :=
  ∀ n, P15087492970540656415.a n = A096737 (n + 1)

end A096737

/-! ## A096737.P16911137137508399607

`A361000(n+1)-A321014(n+1)`
-/

namespace A096737.P16911137137508399607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361000 (n + 1) - A321014 (n + 1)

end

end A096737.P16911137137508399607

namespace A096737

/-- `A361000(n+1)-A321014(n+1)` -/
def P16911137137508399607.Spec : Prop :=
  ∀ n, P16911137137508399607.a n = A096737 (n + 1)

end A096737

/-! ## A096737.P12833849076050957678

`A263013(2*n)+A000005(n+1)`
-/

namespace A096737.P12833849076050957678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263013 (2 * n) + A000005 (n + 1)

end

end A096737.P12833849076050957678

namespace A096737

/-- `A263013(2*n)+A000005(n+1)` -/
def P12833849076050957678.Spec : Prop :=
  ∀ n, P12833849076050957678.a n = A096737 (n + 1)

end A096737

/-! ## A096737.P2849002309016567620

`A000005(n+1)+val(A151800(n), 2)`
-/

namespace A096737.P2849002309016567620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) + (SequenceMachineLib.valuation (A151800 n).toNat 2 : ℤ)

end

end A096737.P2849002309016567620

namespace A096737

/-- `A000005(n+1)+val(A151800(n), 2)` -/
def P2849002309016567620.Spec : Prop :=
  ∀ n, P2849002309016567620.a n = A096737 (n + 1)

end A096737

/-! ## A096737.P558569196252422080

`xor(A169812(n+1), A348776(n+1))`
-/

namespace A096737.P558569196252422080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A169812 (n + 1)) (A348776 (n + 1))

end

end A096737.P558569196252422080

namespace A096737

/-- `xor(A169812(n+1), A348776(n+1))` -/
def P558569196252422080.Spec : Prop :=
  ∀ n, P558569196252422080.a n = A096737 (n + 1)

end A096737

/-! ## A096737.P13271576909890420507

`char[1-A000045(n)]+A000005(n+1)`
-/

namespace A096737.P13271576909890420507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A000045 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) + A000005 (n + 1)

end

end A096737.P13271576909890420507

namespace A096737

/-- `char[1-A000045(n)]+A000005(n+1)` -/
def P13271576909890420507.Spec : Prop :=
  ∀ n, P13271576909890420507.a n = A096737 (n + 1)

end A096737

/-!
# A096738: Numbers n such that A096736(n) = (n*tau(n)-1)/(tau(n)-1).

The programs for A096738, the canonical program `A096738.P612081876185050098` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A096738 has offset 1).

The definition of A096738 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A096738.P612081876185050098

`lt[lcm(1-n, A032741(n))/2+1, n]`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A096738

/-- `lt[lcm(1-n, A032741(n))/2+1, n]` -/
def P612081876185050098.Spec : Prop :=
  ∀ n, (P612081876185050098.a n : ℤ) = A096738 (n + 1)

theorem P612081876185050098.correct : P612081876185050098.Spec := by
  intro n
  simp only [A096738, Nat.add_sub_cancel]

end A096738

/-! ## A096738.P17467665321834619853

`eq[n+1, lcm(n+1, A032741(n+2))]+2`
-/

namespace A096738.P17467665321834619853
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 1 : ℤ) (A032741 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A096738.P17467665321834619853

namespace A096738

/-- `eq[n+1, lcm(n+1, A032741(n+2))]+2` -/
def P17467665321834619853.Spec : Prop :=
  ∀ n, (P17467665321834619853.a n : ℤ) = A096738 (n + 1)

end A096738

/-! ## A096738.P10907327140191745416

`A097449(A167857(n+2))`
-/

namespace A096738.P10907327140191745416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097449 (A167857 (n + 2)).toNat

end

end A096738.P10907327140191745416

namespace A096738

/-- `A097449(A167857(n+2))` -/
def P10907327140191745416.Spec : Prop :=
  ∀ n, P10907327140191745416.a n = A096738 (n + 1)

end A096738

/-! ## A096738.P3655230476560050219

`A167857(n+2)%A051962(n+1)`
-/

namespace A096738.P3655230476560050219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A167857 (n + 2)) (A051962 (n + 1))

end

end A096738.P3655230476560050219

namespace A096738

/-- `A167857(n+2)%A051962(n+1)` -/
def P3655230476560050219.Spec : Prop :=
  ∀ n, P3655230476560050219.a n = A096738 (n + 1)

end A096738

/-! ## A096738.P3940188114373077641

`∩[A167857(n+1), A360305(n+1)]`
-/

namespace A096738.P3940188114373077641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167857 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360305 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A096738.P3940188114373077641

namespace A096738

/-- `∩[A167857(n+1), A360305(n+1)]` -/
def P3940188114373077641.Spec : Prop :=
  ∀ n, (P3940188114373077641.a n : ℤ) = A096738 (n + 1)

end A096738

/-!
# A096739: Numbers k such that k^4 can be written as a sum of four distinct positive 4th powers.

The programs for A096739, there is no canonical definition to state claims against.
-/

/-! ## A096739.P7386328749737148378

`A003294(n+1)+char[42]`
-/

namespace A096739.P7386328749737148378
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  42

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003294 (n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A096739.P7386328749737148378

/-! ## A096739.P12476670324592412763

`A003294(3^C(n, 68)+n)`
-/

namespace A096739.P12476670324592412763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003294 (3 ^ Nat.choose n 68 + n)

end

end A096739.P12476670324592412763

/-! ## A096739.P8214318402325977453

`A003294(∑[∑{digits}[n, val(#+2, 6)]!])`
-/

namespace A096739.P8214318402325977453
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => SequenceMachineLib.valuation (x + 2) 6).sum

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003294 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A096739.P8214318402325977453

/-! ## A096739.P7719286036905375523

`A003294(A044923(n+1))`
-/

namespace A096739.P7719286036905375523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003294 (A044923 (n + 1)).toNat

end

end A096739.P7719286036905375523

/-! ## A096739.P7825010345377125843

`A003294(A167976(n+1))`
-/

namespace A096739.P7825010345377125843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003294 (A167976 (n + 1)).toNat

end

end A096739.P7825010345377125843

/-!
# A096740: Number of partitions of n into distinct parts >= 11.

The programs for A096740, there is no canonical definition to state claims against.
-/

/-! ## A096740.P17980281629738968188

`A026831(n+10)`
-/

namespace A096740.P17980281629738968188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026831 (n + 10)

end

end A096740.P17980281629738968188

/-! ## A096740.P979546635967616525

`A025155(n)-A026831(n)`
-/

namespace A096740.P979546635967616525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025155 n - A026831 n

end

end A096740.P979546635967616525

/-! ## A096740.P13042338041444052576

`A026830(A020723(n))-A026831(n)`
-/

namespace A096740.P13042338041444052576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026830 (A020723 n).toNat - A026831 n

end

end A096740.P13042338041444052576

/-! ## A096740.P4767415940341851518

`A025154(n)-A026830(n)-A026831(n)`
-/

namespace A096740.P4767415940341851518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025154 n - A026830 n - A026831 n

end

end A096740.P4767415940341851518

/-! ## A096740.P8729113272556223959

`A025153(n)-A026829(n)-A026830(n)-A026831(n)`
-/

namespace A096740.P8729113272556223959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025153 n - A026829 n - A026830 n - A026831 n

end

end A096740.P8729113272556223959

/-! ## A096740.P2891354440367759243

`A026821(A000217(n+9)+10)`
-/

namespace A096740.P2891354440367759243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026821 (A000217 (n + 9) + 10).toNat

end

end A096740.P2891354440367759243

/-! ## A096740.P9114506794912539817

`A026821(A000124(n+11)-12-2*n)`
-/

namespace A096740.P9114506794912539817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026821 (A000124 (n + 11) - 12 - (2 * n : ℤ)).toNat

end

end A096740.P9114506794912539817

/-!
# A096742: Numerator of a(n)/2^A005187(n-1), the n-th row sums of A096651^(1/2), with a(0)=1.

The programs for A096742, there is no canonical definition to state claims against.
-/

/-! ## A096742.P11928629081974950921

`or(1, A166098(A279271(n)))`
-/

namespace A096742.P11928629081974950921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A166098 (A279271 n).toNat)

end

end A096742.P11928629081974950921

/-! ## A096742.P1297584254543010967

`A307446(∑{d}[A059849(n), #])`
-/

namespace A096742.P1297584254543010967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059849 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307446 (∑ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A096742.P1297584254543010967

/-!
# A096743: Numerator of a(n)/2^A005187(n-1), the n-th row sums of A096651^(3/2), with a(0)=1.

The programs for A096743, there is no canonical definition to state claims against.
-/

/-! ## A096743.P11082613633643109052

`A008611(A242798(n)*A253885(n))`
-/

namespace A096743.P11082613633643109052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (A242798 n * A253885 n).toNat

end

end A096743.P11082613633643109052

/-! ## A096743.P10566562025103861397

`A288417(C(A227564(n), A119016(n)))`
-/

namespace A096743.P10566562025103861397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288417 (Nat.choose (A227564 (n + 37)).toNat (A119016 n).toNat)

end

end A096743.P10566562025103861397

/-!
# A096744: Triangle T, read by rows, such that the matrix cube shifts T one place diagonally left and upward, with T(n, 0) = T(n, n) = 1 for n>=0.

The programs for A096744, there is no canonical definition to state claims against.
-/

/-! ## A096744.P4408945564174474297

`A153112(A178249(n+1))`
-/

namespace A096744.P4408945564174474297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153112 (A178249 (n + 1)).toNat

end

end A096744.P4408945564174474297

/-! ## A096744.P8382275609539255456

`A097561(A256268(n)+A047888(n+1))`
-/

namespace A096744.P8382275609539255456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097561 (A256268 n + A047888 (n + 1)).toNat

end

end A096744.P8382275609539255456

/-!
# A096745: Column with index 1 of triangle A096744, which shifts one place diagonally left and upward under the matrix cube operation.

The programs for A096745, there is no canonical definition to state claims against.
-/

/-! ## A096745.P2816632767596026583

`A096744(∑[n+1]+1)`
-/

namespace A096745.P2816632767596026583
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096744 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A096745.P2816632767596026583

/-! ## A096745.P12139469160361169121

`A096744(A134869(n+1))+char[11]`
-/

namespace A096745.P12139469160361169121
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096744 (A134869 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A096745.P12139469160361169121

/-! ## A096745.P1470370544818264332

`A185036(n)+A096744(A134869(n+1))`
-/

namespace A096745.P1470370544818264332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185036 n + A096744 (A134869 (n + 1)).toNat

end

end A096745.P1470370544818264332

/-! ## A096745.P7853101910483505282

`A185236(n)+A096744(A134869(n+1))`
-/

namespace A096745.P7853101910483505282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185236 n + A096744 (A134869 (n + 1)).toNat

end

end A096745.P7853101910483505282

/-! ## A096745.P8790782168963516984

`A210631(n)+A096744(A134869(n+1))`
-/

namespace A096745.P8790782168963516984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210631 n + A096744 (A134869 (n + 1)).toNat

end

end A096745.P8790782168963516984

/-!
# A096747: Triangle read by rows: T(n,1) = 1, T(n,k) = T(n-1,k)+(n-1)*T(n-1,k-1) for 1<=k<=n+1.

The programs for A096747, there is no canonical definition to state claims against.
-/

/-! ## A096747.P10679697601327785990

`A109822(A103517(n)%A181133(n+1))`
-/

namespace A096747.P10679697601327785990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109822 (Int.tmod (A103517 n) (A181133 (n + 1))).toNat

end

end A096747.P10679697601327785990

/-! ## A096747.P8539547972824551014

`A299504(n)-A055641(A022115(n))`
-/

namespace A096747.P8539547972824551014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299504 n - A055641 (A022115 n).toNat

end

end A096747.P8539547972824551014

/-! ## A096747.P4199967716927514845

`A299504(n)-A010894(A089944(n))`
-/

namespace A096747.P4199967716927514845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299504 n - A010894 ((A089944 n).toNat + 21)

end

end A096747.P4199967716927514845

/-! ## A096747.P9541450801652846978

`A299504(n)-A111429(A238123(n))`
-/

namespace A096747.P9541450801652846978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299504 n - A111429 (A238123 n).toNat

end

end A096747.P9541450801652846978

/-!
# A096748: Expansion of (1+x)^2/(1-x^2-x^4).

The programs for A096748, the canonical program `A096748.P15167232399693333404` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A096748 has offset 0).

The definition of A096748 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+2x+x^2)/(1-x^2-x^4))` (program `A096748.P15167232399693333404`, by `A096748.P15167232399693333404.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A096748.P15167232399693333404

`ogf((1+2x+x^2)/(1-x^2-x^4))`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A096748

/-- `ogf((1+2x+x^2)/(1-x^2-x^4))` -/
def P15167232399693333404.Spec : Prop :=
  ∀ n, P15167232399693333404.a n = A096748 n

theorem P15167232399693333404.correct : P15167232399693333404.Spec := by
  intro n
  simp only [A096748]

end A096748

/-! ## A096748.P10533604733840576793

`a(n-2)+a(n-4)` with `a(0)=1, a(1)=2, a(2)=2, a(3)=2`
-/

namespace A096748.P10533604733840576793
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 2, 2] fun n a =>
  a (n - 2) + a (n - 4)

end

end A096748.P10533604733840576793

namespace A096748

/-- `a(n-2)+a(n-4)` -/
def P10533604733840576793.Spec : Prop :=
  ∀ n, (P10533604733840576793.a n : ℤ) = A096748 n

end A096748

/-! ## A096748.P10276178732861570478

`∑[A212804(floor(n/2))]`
-/

namespace A096748.P10276178732861570478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 ⌊(n : ℚ) / 2⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A096748.P10276178732861570478

namespace A096748

/-- `∑[A212804(floor(n/2))]` -/
def P10276178732861570478.Spec : Prop :=
  ∀ n, P10276178732861570478.a n = A096748 n

end A096748

/-! ## A096748.P2378136642842049996

`∑[A000045(abs(1-floor(n/2)))]`
-/

namespace A096748.P2378136642842049996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 |1 - ⌊(n : ℚ) / 2⌋|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A096748.P2378136642842049996

namespace A096748

/-- `∑[A000045(abs(1-floor(n/2)))]` -/
def P2378136642842049996.Spec : Prop :=
  ∀ n, P2378136642842049996.a n = A096748 n

end A096748

/-! ## A096748.P17778324589623692022

`gcd(2, n+1)*A053602(n+1)`
-/

namespace A096748.P17778324589623692022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 2 (n + 1) : ℤ) * A053602 (n + 1)

end

end A096748.P17778324589623692022

namespace A096748

/-- `gcd(2, n+1)*A053602(n+1)` -/
def P17778324589623692022.Spec : Prop :=
  ∀ n, P17778324589623692022.a n = A096748 n

end A096748

/-! ## A096748.P11409247389786869851

`A103609(n-2)+a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A096748.P11409247389786869851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A103609 (n - 2) + a (n - 1)

end

end A096748.P11409247389786869851

namespace A096748

/-- `A103609(n-2)+a(n-1)` -/
def P11409247389786869851.Spec : Prop :=
  ∀ n, P11409247389786869851.a n = A096748 n

end A096748

/-! ## A096748.P6775412733464317941

`∑[A118658(A004526(n))/2]`
-/

namespace A096748.P6775412733464317941
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A118658 (A004526 n).toNat : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A096748.P6775412733464317941

namespace A096748

/-- `∑[A118658(A004526(n))/2]` -/
def P6775412733464317941.Spec : Prop :=
  ∀ n, P6775412733464317941.a n = (A096748 n : ℚ)

end A096748

/-! ## A096748.P16254340954665975405

`∑[A103609(n+2)-A103609(n)]`
-/

namespace A096748.P16254340954665975405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103609 (n + 2) - A103609 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A096748.P16254340954665975405

namespace A096748

/-- `∑[A103609(n+2)-A103609(n)]` -/
def P16254340954665975405.Spec : Prop :=
  ∀ n, P16254340954665975405.a n = A096748 n

end A096748

/-! ## A096748.P16080033139177036627

`A103609(n+4)+Δ[A103609(n)]`
-/

namespace A096748.P16080033139177036627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103609 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103609 (n + 4) + (f1 (n + 1) - f1 n)

end

end A096748.P16080033139177036627

namespace A096748

/-- `A103609(n+4)+Δ[A103609(n)]` -/
def P16080033139177036627.Spec : Prop :=
  ∀ n, P16080033139177036627.a n = A096748 n

end A096748

/-! ## A096748.P11446667663086798595

`A103609(n+1)+A103609(n+2)`
-/

namespace A096748.P11446667663086798595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103609 (n + 1) + A103609 (n + 2)

end

end A096748.P11446667663086798595

namespace A096748

/-- `A103609(n+1)+A103609(n+2)` -/
def P11446667663086798595.Spec : Prop :=
  ∀ n, P11446667663086798595.a n = A096748 n

end A096748

/-! ## A096748.P248018705501743226

`(A000035(n)+1)*A053602(n+1)`
-/

namespace A096748.P248018705501743226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000035 n + 1) * A053602 (n + 1)

end

end A096748.P248018705501743226

namespace A096748

/-- `(A000035(n)+1)*A053602(n+1)` -/
def P248018705501743226.Spec : Prop :=
  ∀ n, P248018705501743226.a n = A096748 n

end A096748

/-! ## A096748.P14442498120795585365

`A053602(n+1)+A053602(n+1)*A059841(n+1)`
-/

namespace A096748.P14442498120795585365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053602 (n + 1) + A053602 (n + 1) * A059841 (n + 1)

end

end A096748.P14442498120795585365

namespace A096748

/-- `A053602(n+1)+A053602(n+1)*A059841(n+1)` -/
def P14442498120795585365.Spec : Prop :=
  ∀ n, P14442498120795585365.a n = A096748 n

end A096748

/-! ## A096748.P10113864730287365624

`(A046034(2*(n+1))-A046034(2*n+1))*A053602(n+1)`
-/

namespace A096748.P10113864730287365624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A046034 (2 * (n + 1)) - A046034 (2 * n + 1)) * A053602 (n + 1)

end

end A096748.P10113864730287365624

namespace A096748

/-- `(A046034(2*(n+1))-A046034(2*n+1))*A053602(n+1)` -/
def P10113864730287365624.Spec : Prop :=
  ∀ n, P10113864730287365624.a n = A096748 n

end A096748

/-! ## A096748.P16268070532097281426

`A000045(A008619(n))+A000045(A110654(n))`
-/

namespace A096748.P16268070532097281426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A008619 n).toNat + A000045 (A110654 n).toNat

end

end A096748.P16268070532097281426

namespace A096748

/-- `A000045(A008619(n))+A000045(A110654(n))` -/
def P16268070532097281426.Spec : Prop :=
  ∀ n, P16268070532097281426.a n = A096748 n

end A096748

/-! ## A096748.P9248549959006525817

`A000045(A004526(n+1))+A000045(A110654(n+1))`
-/

namespace A096748.P9248549959006525817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A004526 (n + 1)).toNat + A000045 (A110654 (n + 1)).toNat

end

end A096748.P9248549959006525817

namespace A096748

/-- `A000045(A004526(n+1))+A000045(A110654(n+1))` -/
def P9248549959006525817.Spec : Prop :=
  ∀ n, P9248549959006525817.a n = A096748 n

end A096748

/-! ## A096748.P6234083848095698782

`A000045(A065033(n+1))+A000045(A123108(n+1))`
-/

namespace A096748.P6234083848095698782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A065033 (n + 1)).toNat + A000045 (A123108 (n + 1)).toNat

end

end A096748.P6234083848095698782

namespace A096748

/-- `A000045(A065033(n+1))+A000045(A123108(n+1))` -/
def P6234083848095698782.Spec : Prop :=
  ∀ n, P6234083848095698782.a n = A096748 n

end A096748

/-! ## A096748.P11286974615298065494

`A000045(A110654(n+1))+A000045(A123108(n+1))`
-/

namespace A096748.P11286974615298065494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A110654 (n + 1)).toNat + A000045 (A123108 (n + 1)).toNat

end

end A096748.P11286974615298065494

namespace A096748

/-- `A000045(A110654(n+1))+A000045(A123108(n+1))` -/
def P11286974615298065494.Spec : Prop :=
  ∀ n, P11286974615298065494.a n = A096748 n

end A096748

/-! ## A096748.P14091103431506577844

`A000045(A026922(2*(n+1)))+A000045(A004526(n+1))`
-/

namespace A096748.P14091103431506577844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A026922 (2 * (n + 1))).toNat + A000045 (A004526 (n + 1)).toNat

end

end A096748.P14091103431506577844

namespace A096748

/-- `A000045(A026922(2*(n+1)))+A000045(A004526(n+1))` -/
def P14091103431506577844.Spec : Prop :=
  ∀ n, P14091103431506577844.a n = A096748 n

end A096748

/-! ## A096748.P4772074694775088452

`A000045(A008624(2*n+1))+A000045(A008624(2*n))`
-/

namespace A096748.P4772074694775088452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A008624 (2 * n + 1)).toNat + A000045 (A008624 (2 * n)).toNat

end

end A096748.P4772074694775088452

namespace A096748

/-- `A000045(A008624(2*n+1))+A000045(A008624(2*n))` -/
def P4772074694775088452.Spec : Prop :=
  ∀ n, P4772074694775088452.a n = A096748 n

end A096748

/-! ## A096748.P11666212771156259971

`A000045(A110655(2*(n+1)))+A000045(A110655(2*n))`
-/

namespace A096748.P11666212771156259971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A110655 (2 * (n + 1))).toNat + A000045 (A110655 (2 * n)).toNat

end

end A096748.P11666212771156259971

namespace A096748

/-- `A000045(A110655(2*(n+1)))+A000045(A110655(2*n))` -/
def P11666212771156259971.Spec : Prop :=
  ∀ n, P11666212771156259971.a n = A096748 n

end A096748

/-!
# A096749: Number of partitions of n into distinct parts, the least being 2.

The programs for A096749, there is no canonical definition to state claims against.
-/

/-! ## A096749.P17209183535470362985

`A025148(abs(2-n))`
-/

namespace A096749.P17209183535470362985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025148 |2 - (n : ℤ)|.toNat

end

end A096749.P17209183535470362985

/-! ## A096749.P3567238091322361333

`A025147(n)-A025148(n)`
-/

namespace A096749.P3567238091322361333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025147 n - A025148 n

end

end A096749.P3567238091322361333

/-! ## A096749.P12697602355183171443

`A096765(n+1)-A025148(n)`
-/

namespace A096749.P12697602355183171443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096765 (n + 1) - A025148 n

end

end A096749.P12697602355183171443

/-! ## A096749.P17307823339635302395

`A025148(n+2)-A087897(n+2)`
-/

namespace A096749.P17307823339635302395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025148 (n + 2) - A087897 (n + 2)

end

end A096749.P17307823339635302395

/-! ## A096749.P678821398004062667

`A025147(n)-(A026824(n)+A025149(n))`
-/

namespace A096749.P678821398004062667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025147 n - (A026824 n + A025149 n)

end

end A096749.P678821398004062667

/-! ## A096749.P2774893570406519933

`A096765(n+1)-(A026824(n)+A025149(n))`
-/

namespace A096749.P2774893570406519933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096765 (n + 1) - (A026824 n + A025149 n)

end

end A096749.P2774893570406519933

/-! ## A096749.P14662655063401547569

`A238217(n+1)+A238217(n)-A238215(n)`
-/

namespace A096749.P14662655063401547569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238217 (n + 1) + (A238217 n - A238215 n)

end

end A096749.P14662655063401547569

/-! ## A096749.P15731800756372995838

`A238209(n+1)+A238209(n)-A238208(n)`
-/

namespace A096749.P15731800756372995838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238209 (n + 1) + (A238209 n - A238208 n)

end

end A096749.P15731800756372995838

/-! ## A096749.P16044729880150335836

`A026821(∑[n-1]+3)`
-/

namespace A096749.P16044729880150335836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026821 (∑ j ∈ Finset.range (n + 1), f1 j + 3).toNat

end

end A096749.P16044729880150335836

/-!
# A096750: Expansion of (1-x+x^2)/(1-2x+2x^2-x^3-x^4).

The programs for A096750, the canonical program `A096750.P4900546569691323681` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A096750 has offset 0).

The definition of A096750 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x+x^2)/(1-2x+2x^2-x^3-x^4))` (program `A096750.P4900546569691323681`, by `A096750.P4900546569691323681.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A096750.P4900546569691323681

`ogf((1-x+x^2)/(1-2x+2x^2-x^3-x^4))`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A096750

/-- `ogf((1-x+x^2)/(1-2x+2x^2-x^3-x^4))` -/
def P4900546569691323681.Spec : Prop :=
  ∀ n, P4900546569691323681.a n = A096750 n

theorem P4900546569691323681.correct : P4900546569691323681.Spec := by
  intro n
  simp only [A096750]

end A096750

/-! ## A096750.P16885289269671987248

`2*a(n-1)-2*a(n-2)+a(n-3)+a(n-4)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1`
-/

namespace A096750.P16885289269671987248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 1] fun n a =>
  2 * a (n - 1) - 2 * a (n - 2) + a (n - 3) + a (n - 4)

end

end A096750.P16885289269671987248

namespace A096750

/-- `2*a(n-1)-2*a(n-2)+a(n-3)+a(n-4)` -/
def P16885289269671987248.Spec : Prop :=
  ∀ n, P16885289269671987248.a n = A096750 n

end A096750

/-! ## A096750.P330545380020445320

`∑[A113021(abs(2-n))]`
-/

namespace A096750.P330545380020445320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113021 |2 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A096750.P330545380020445320

namespace A096750

/-- `∑[A113021(abs(2-n))]` -/
def P330545380020445320.Spec : Prop :=
  ∀ n, P330545380020445320.a n = A096750 n

end A096750

/-! ## A096750.P16837222613446212025

`A113021(n-2)+a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A096750.P16837222613446212025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A113021 (n - 2) + a (n - 1)

end

end A096750.P16837222613446212025

namespace A096750

/-- `A113021(n-2)+a(n-1)` -/
def P16837222613446212025.Spec : Prop :=
  ∀ n, P16837222613446212025.a n = A096750 n

end A096750

/-! ## A096750.P6030511841526110859

`A113021(n)+Δ[A113021(n+1)]`
-/

namespace A096750.P6030511841526110859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113021 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113021 n + (f1 (n + 1) - f1 n)

end

end A096750.P6030511841526110859

namespace A096750

/-- `A113021(n)+Δ[A113021(n+1)]` -/
def P6030511841526110859.Spec : Prop :=
  ∀ n, P6030511841526110859.a n = A096750 n

end A096750

/-!
# A096751: Square table, read by antidiagonals, where T(n,k) equals the number of n-dimensional partitions of k.

The programs for A096751, there is no canonical definition to state claims against.
-/

/-! ## A096751.P5512087460920196713

`A293551(n)%A306114(n)`
-/

namespace A096751.P5512087460920196713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A293551 n) (A306114 n)

end

end A096751.P5512087460920196713

/-! ## A096751.P2099317565009066965

`A293551(n)*A294582(∑[n])`
-/

namespace A096751.P2099317565009066965
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293551 n * A294582 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A096751.P2099317565009066965

/-! ## A096751.P5404469152401710633

`and(A141311(n+1), A293551(n))`
-/

namespace A096751.P5404469152401710633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A141311 (n + 1)) (A293551 n)

end

end A096751.P5404469152401710633

/-! ## A096751.P10704711479150687305

`A003056(A000124(A293551(n)))`
-/

namespace A096751.P10704711479150687305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A000124 (A293551 n).toNat).toNat

end

end A096751.P10704711479150687305

/-! ## A096751.P17160128061277828634

`A293551(A034856(A293551(n))+4)`
-/

namespace A096751.P17160128061277828634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293551 (A034856 (A293551 n).toNat + 4).toNat

end

end A096751.P17160128061277828634

/-!
# A096752: Number of n-dimensional partitions of n.

The programs for A096752, there is no canonical definition to state claims against.
-/

/-! ## A096752.P14728914806315822124

`A096751(∑[4*n])`
-/

namespace A096752.P14728914806315822124
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096751 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A096752.P14728914806315822124

/-! ## A096752.P13058586299780916447

`A036225(n)*A096751(A046092(n))`
-/

namespace A096752.P13058586299780916447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036225 n * A096751 (A046092 n).toNat

end

end A096752.P13058586299780916447

/-! ## A096752.P13794731777093360225

`A096751(A046092(n))*A291168(n)`
-/

namespace A096752.P13794731777093360225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096751 (A046092 n).toNat * A291168 n

end

end A096752.P13794731777093360225

/-! ## A096752.P4096338891120442429

`A096751(A046092(n))%A017488(n)`
-/

namespace A096752.P4096338891120442429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A096751 (A046092 n).toNat) (A017488 n)

end

end A096752.P4096338891120442429

/-! ## A096752.P15318680908509888570

`A096751(A046092(n))+A072769(n+1)`
-/

namespace A096752.P15318680908509888570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096751 (A046092 n).toNat + A072769 (n + 1)

end

end A096752.P15318680908509888570

/-!
# A096753: Antidiagonal sums of table A096751.

The programs for A096753, there is no canonical definition to state claims against.
-/

/-! ## A096753.P17050054940258949700

`A205842(a(n-1)²)-(n+1)` with `a(0)=1`
-/

namespace A096753.P17050054940258949700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A205842 (a (n - 1) ^ 2).toNat - (n + 1 : ℤ)

end

end A096753.P17050054940258949700

/-! ## A096753.P171910131510829296

`∑[A105223(A125655(n))]`
-/

namespace A096753.P171910131510829296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105223 (A125655 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A096753.P171910131510829296

/-! ## A096753.P3597948247460577631

`∑[A257639(A012584(n))]`
-/

namespace A096753.P3597948247460577631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257639 (A012584 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A096753.P3597948247460577631

/-! ## A096753.P5996081313460869728

`∑[A002024(A325289(n))]`
-/

namespace A096753.P5996081313460869728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A325289 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A096753.P5996081313460869728

/-! ## A096753.P8008441320854745560

`∑[A262689(A263852(n))]`
-/

namespace A096753.P8008441320854745560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262689 (A263852 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A096753.P8008441320854745560

/-!
# A096754: Triangle read by rows giving coefficients of the trigonometric expansion of Cos(n*x).

The programs for A096754, there is no canonical definition to state claims against.
-/

/-! ## A096754.P12809750696374405680

`A141665(comp[(n+1)*comp[2*(n+1)]])`
-/

namespace A096754.P12809750696374405680
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141665 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A096754.P12809750696374405680

/-!
# A096758: Index of first occurrence of exactly n consecutive fours in a row in the decimal expansion of Pi.

The programs for A096758, there is no canonical definition to state claims against.
-/

/-! ## A096758.P7589837972391185643

`A050283(A062504(n))`
-/

namespace A096758.P7589837972391185643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050283 (A062504 n).toNat

end

end A096758.P7589837972391185643

/-! ## A096758.P11977374948544032624

`A050283(A034710(n+1))`
-/

namespace A096758.P11977374948544032624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050283 (A034710 (n + 1)).toNat

end

end A096758.P11977374948544032624

/-! ## A096758.P17350198450415883061

`A050283(A051885(n+1))`
-/

namespace A096758.P17350198450415883061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050283 (A051885 (n + 1)).toNat

end

end A096758.P17350198450415883061

/-! ## A096758.P17333693158776830619

`A050283(A061479(n+1))`
-/

namespace A096758.P17333693158776830619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050283 (A061479 (n + 1)).toNat

end

end A096758.P17333693158776830619

/-!
# A096760: a(n) is the starting position of the first occurrence of a string of exactly n 6's in the decimal expansion of Pi.

The programs for A096760, there is no canonical definition to state claims against.
-/

/-! ## A096760.P1919097811575299174

`A050285(A062943(n+1)+1)`
-/

namespace A096760.P1919097811575299174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050285 (A062943 (n + 1) + 1).toNat

end

end A096760.P1919097811575299174

/-! ## A096760.P5087763753419823647

`A050285(n+1)%A050285(2*(n+2))`
-/

namespace A096760.P5087763753419823647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A050285 (n + 1)) (A050285 (2 * (n + 2)))

end

end A096760.P5087763753419823647

/-! ## A096760.P5353909870926541317

`A050285(n+1)+A007814(A000255(n))`
-/

namespace A096760.P5353909870926541317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050285 (n + 1) + A007814 (A000255 n).toNat

end

end A096760.P5353909870926541317

/-!
# A096763: Position of the first occurrence of exactly n consecutive '9's in a row in the decimal expansion of Pi.

The programs for A096763, there is no canonical definition to state claims against.
-/

/-! ## A096763.P17199298722400074591

`A256160(n+1)-(n+1)`
-/

namespace A096763.P17199298722400074591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256160 (n + 1) - (n + 1 : ℤ)

end

end A096763.P17199298722400074591

/-! ## A096763.P8710233617158294185

`A256160(A291769(n))-n-1`
-/

namespace A096763.P8710233617158294185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256160 (A291769 n).toNat - (n : ℤ) - 1

end

end A096763.P8710233617158294185

/-! ## A096763.P16003222085111572542

`abs(A256160(n+1)+A001478(n+1))`
-/

namespace A096763.P16003222085111572542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A256160 (n + 1) + A001478 (n + 1)|

end

end A096763.P16003222085111572542

/-!
# A096765: Number of partitions of n into distinct parts, the least being 1.

The programs for A096765, there is no canonical definition to state claims against.
-/

/-! ## A096765.P16586280353120813458

`A025147(abs(1-n))`
-/

namespace A096765.P16586280353120813458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025147 |1 - (n : ℤ)|.toNat

end

end A096765.P16586280353120813458

/-! ## A096765.P6634341530294134263

`A000009(n)-A025147(n)`
-/

namespace A096765.P6634341530294134263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n - A025147 n

end

end A096765.P6634341530294134263

/-! ## A096765.P4276554258277424320

`Δ[A265251(n)+A090858(n)]`
-/

namespace A096765.P4276554258277424320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265251 n + A090858 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A096765.P4276554258277424320

/-! ## A096765.P810267245017291244

`A067661(n)-Δ[A238208(n)]`
-/

namespace A096765.P810267245017291244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238208 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067661 n - (f1 (n + 1) - f1 n)

end

end A096765.P810267245017291244

/-! ## A096765.P3084435697964235903

`A111133(n)+1-A025147(n)`
-/

namespace A096765.P3084435697964235903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111133 n + (1 - A025147 n)

end

end A096765.P3084435697964235903

/-! ## A096765.P10033248499066835041

`abs(A081360(n)-∑[A081360(n)])`
-/

namespace A096765.P10033248499066835041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081360 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A081360 n - ∑ j ∈ Finset.range (n + 1), f1 j|

end

end A096765.P10033248499066835041

/-! ## A096765.P6260458683413529047

`A025147(n+1)-A087897(n+1)`
-/

namespace A096765.P6260458683413529047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025147 (n + 1) - A087897 (n + 1)

end

end A096765.P6260458683413529047

/-! ## A096765.P7068870283297142256

`A025147(n-A057427(n))*A057427(n)`
-/

namespace A096765.P7068870283297142256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025147 ((n : ℤ) - A057427 n).toNat * A057427 n

end

end A096765.P7068870283297142256

/-! ## A096765.P5877150636648695817

`A067661(n)+A238208(n)-A238208(n+1)`
-/

namespace A096765.P5877150636648695817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067661 n + (A238208 n - A238208 (n + 1))

end

end A096765.P5877150636648695817

/-! ## A096765.P12561726172989500014

`Δ[A038348(n)-A000009(n)]`
-/

namespace A096765.P12561726172989500014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038348 n - A000009 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A096765.P12561726172989500014

/-! ## A096765.P4219421639827339362

`A000009(n)-(A270144(n+1)+A270144(n))`
-/

namespace A096765.P4219421639827339362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n - (A270144 (n + 1) + A270144 n)

end

end A096765.P4219421639827339362

/-! ## A096765.P16004439021046682239

`A000009(n)-(A096749(n)+A025148(n))`
-/

namespace A096765.P16004439021046682239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n - (A096749 n + A025148 n)

end

end A096765.P16004439021046682239

/-! ## A096765.P1271526205713162734

`A025148(n+1)+A096749(n+1)-A087897(n+1)`
-/

namespace A096765.P1271526205713162734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025148 (n + 1) + (A096749 (n + 1) - A087897 (n + 1))

end

end A096765.P1271526205713162734

/-! ## A096765.P16602576310459369955

`A035457(2*n)-A025147(n)`
-/

namespace A096765.P16602576310459369955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035457 (2 * n) - A025147 n

end

end A096765.P16602576310459369955

/-! ## A096765.P16872860442830504932

`A238215(n)+A238208(n)`
-/

namespace A096765.P16872860442830504932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238215 n + A238208 n

end

end A096765.P16872860442830504932

/-! ## A096765.P15977273537006538186

`A000009(n)-(A067661(n)+Δ[A238215(n)])`
-/

namespace A096765.P15977273537006538186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238215 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n - (A067661 n + (f1 (n + 1) - f1 n))

end

end A096765.P15977273537006538186

/-! ## A096765.P15960878195819901958

`A067661(n)-(A010815(n)+Δ[A238215(n)])`
-/

namespace A096765.P15960878195819901958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238215 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067661 n - (A010815 n + (f1 (n + 1) - f1 n))

end

end A096765.P15960878195819901958

/-! ## A096765.P3911820700139883127

`A067659(n)-Δ[A238215(n)]`
-/

namespace A096765.P3911820700139883127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238215 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067659 n - (f1 (n + 1) - f1 n)

end

end A096765.P3911820700139883127

/-! ## A096765.P15266698562218466372

`A067659(n)+A238215(n)-A238215(n+1)`
-/

namespace A096765.P15266698562218466372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067659 n + (A238215 n - A238215 (n + 1))

end

end A096765.P15266698562218466372

/-! ## A096765.P15123919455886376001

`A032303(n)-A000009(n)`
-/

namespace A096765.P15123919455886376001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032303 n - A000009 n

end

end A096765.P15123919455886376001

/-!
# A096766: Difference between ceiling(e^(n/2 - 1)) (A005181) and the n-th Fibonacci number (A000045).

The programs for A096766, the canonical program `A096766.P12794279211445644240` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A096766 has offset 0).

The definition of A096766 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 463 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A096766.P12794279211445644240

`A005181(abs(1-n))-A000045(n)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A096766

/-- `A005181(abs(1-n))-A000045(n)` -/
def P12794279211445644240.Spec : Prop :=
  ∀ n, P12794279211445644240.a n = A096766 n

theorem P12794279211445644240.correct : P12794279211445644240.Spec := by
  intro n
  simp only [A096766]

end A096766

/-!
# A096768: Numbers n of the form k + reverse(k) for two or more values of k.

The programs for A096768, there is no canonical definition to state claims against.
-/

/-! ## A096768.P13183826006711478231

`A067030(lt[1, A067032(n)])`
-/

namespace A096768.P13183826006711478231
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067032 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067030 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A096768.P13183826006711478231

/-! ## A096768.P618466748298274834

`A067030(comp[eq[1, A067032(n)]])`
-/

namespace A096768.P618466748298274834
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067032 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067030 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A096768.P618466748298274834

/-! ## A096768.P14581549941847049183

`A067030(lt[A067033(n), A067034(n)])`
-/

namespace A096768.P14581549941847049183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067033 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067034 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067030 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A096768.P14581549941847049183

/-! ## A096768.P12579362989477672483

`A067030(lt[A067033(n), A067286(n)])`
-/

namespace A096768.P12579362989477672483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067033 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067286 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067030 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A096768.P12579362989477672483

/-!
# A096769: a(n)=Max{ (i+j)!/i!^2 | 0<=i,j<=n }.

The programs for A096769, there is no canonical definition to state claims against.
-/

/-! ## A096769.P13315447721197842876

`∏[comp[(char[1]+n)²]]`
-/

namespace A096769.P13315447721197842876
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f3 j = n then 1 else 0) + n) ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A096769.P13315447721197842876

/-! ## A096769.P4676927995524066342

`a(n-1)*comp[(n+1)²]` with `a(0)=1`
-/

namespace A096769.P4676927995524066342
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A096769.P4676927995524066342

/-! ## A096769.P7728328960837613145

`round(sqrt(n)+n)*a(n-1)` with `a(0)=1`
-/

namespace A096769.P7728328960837613145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.roundAway (Real.sqrt (n : ℝ) + (n : ℝ)) * a (n - 1)

end

end A096769.P7728328960837613145

/-! ## A096769.P14741061581385526761

`floor(a(n-1)*A000037(n))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A096769.P14741061581385526761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A000037 n

end

end A096769.P14741061581385526761

/-! ## A096769.P18422771668503821304

`-∏[record[∏{d}[n+1, -A014963(#)]]]`
-/

namespace A096769.P18422771668503821304
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f3 n), (-A014963 d)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∏ j ∈ Finset.range (n + 1), f1 j)

end

end A096769.P18422771668503821304

/-! ## A096769.P14041663741852054216

`∏[A000037(n+1)]/comp[n²]`
-/

namespace A096769.P14041663741852054216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000037 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℚ)

end

end A096769.P14041663741852054216

/-! ## A096769.P6524813242176761663

`∏[A164514(n+2)]/A164514(n+2)`
-/

namespace A096769.P6524813242176761663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164514 (n + 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A164514 (n + 2) : ℚ)

end

end A096769.P6524813242176761663

/-!
# A096770: a(1) = 1; for n >= 1, replace each part, with repetitions, of every part k in each partition of n with a(k), then take the sum to get a(n+1).

The programs for A096770, there is no canonical definition to state claims against.
-/

/-! ## A096770.P6568494276370523083

`A087817(A217233(n))`
-/

namespace A096770.P6568494276370523083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087817 (A217233 n).toNat

end

end A096770.P6568494276370523083

/-! ## A096770.P3061038038118767808

`A324766(or(1, 2^n-1))`
-/

namespace A096770.P3061038038118767808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324766 (Int.lor 1 ((2 ^ n : ℤ) - 1)).toNat

end

end A096770.P3061038038118767808

/-! ## A096770.P16878403285643472645

`A067086(A149976(n))`
-/

namespace A096770.P16878403285643472645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067086 (A149976 n).toNat

end

end A096770.P16878403285643472645

/-!
# A096771: Triangle read by rows: T(n,m) is the number of partitions of n that (just) fit inside an m X m box, but not in an (m-1) X (m-1) box. Partitions of n with Max(max part, length) = m.

The programs for A096771, there is no canonical definition to state claims against.
-/

/-! ## A096771.P13112116373107549753

`A124765(A120987(n)*A237821(n+3))`
-/

namespace A096771.P13112116373107549753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124765 (A120987 n * A237821 (n + 3)).toNat

end

end A096771.P13112116373107549753

/-! ## A096771.P13831751176487592132

`A000002(A242783(n))*A357638(n)`
-/

namespace A096771.P13831751176487592132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000002 (A242783 n).toNat * A357638 n

end

end A096771.P13831751176487592132

/-! ## A096771.P5492480389151396973

`and(A099627(n), A105446(A122111(n+1)))`
-/

namespace A096771.P5492480389151396973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A099627 n) (A105446 (A122111 (n + 1)).toNat)

end

end A096771.P5492480389151396973

/-! ## A096771.P4893538241814398681

`and(A099627(n), A105446(A278221(n+1)))`
-/

namespace A096771.P4893538241814398681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A099627 n) (A105446 (A278221 (n + 1)).toNat)

end

end A096771.P4893538241814398681

/-! ## A096771.P9371646344802627947

`and(A094077(A247570(n+2)), A160384(n+2))`
-/

namespace A096771.P9371646344802627947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A094077 (A247570 (n + 2)).toNat) (A160384 (n + 2))

end

end A096771.P9371646344802627947

/-!
# A096772: A B3-sequence: a(1) = 1; for n>1, a(n) = smallest number > a(n-1) such that the sums of any three terms are all distinct.

The programs for A096772, there is no canonical definition to state claims against.
-/

/-! ## A096772.P10406213950459177847

`A051912(n)+1`
-/

namespace A096772.P10406213950459177847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051912 n + 1

end

end A096772.P10406213950459177847

/-! ## A096772.P2684205181181763228

`1-A051912(n)*A057428(n)`
-/

namespace A096772.P2684205181181763228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A051912 n * A057428 n

end

end A096772.P2684205181181763228

/-! ## A096772.P12807008147110785092

`n-(A023443(n)-A051912(n))`
-/

namespace A096772.P12807008147110785092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A023443 n - A051912 n)

end

end A096772.P12807008147110785092

/-! ## A096772.P12363845762982695234

`A000124(n)-(∑[n]-A051912(n))`
-/

namespace A096772.P12363845762982695234
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 n - (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A051912 n)

end

end A096772.P12363845762982695234

/-! ## A096772.P9619585991010389849

`1-(A000035(2*n)-A051912(n))`
-/

namespace A096772.P9619585991010389849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A000035 (2 * n) - A051912 n)

end

end A096772.P9619585991010389849

/-!
# A096773: a(n) = 4*a(n-2) + 1 with a(1) = 0, a(2) = 3.

The programs for A096773, the canonical program `A096773.P3411081320724829076` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A096773 has offset 1).

The definition of A096773 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*a(n-2)+1` (program `A096773.P3411081320724829076`, by `A096773.P3411081320724829076.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A096773.P3411081320724829076

`4*a(n-2)+1` with `a(0)=0, a(1)=3`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A096773

/-- `4*a(n-2)+1` -/
def P3411081320724829076.Spec : Prop :=
  ∀ n, (P3411081320724829076.a n : ℤ) = A096773 (n + 1)

theorem P3411081320724829076.correct : P3411081320724829076.Spec := by
  intro n
  simp only [A096773, Nat.add_sub_cancel]

end A096773

/-! ## A096773.P12389064267072945681

`(2^n*(3+2*(-1)^(n+1))-1)/3`
-/

namespace A096773.P12389064267072945681
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 ^ n : ℤ) * (3 + 2 * (-1) ^ (n + 1)) - 1 : ℚ) / 3

end

end A096773.P12389064267072945681

namespace A096773

/-- `(2^n*(3+2*(-1)^(n+1))-1)/3` -/
def P12389064267072945681.Spec : Prop :=
  ∀ n, P12389064267072945681.a n = (A096773 (n + 1) : ℚ)

theorem P12389064267072945681.correct : P12389064267072945681.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A096773, Nat.add_sub_cancel, A096773.P12389064267072945681.a, A096773.P3411081320724829076.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h2 := ih m (by omega)
      simp only [A096773, Nat.add_sub_cancel, A096773.P12389064267072945681.a, A096773.P3411081320724829076.a, SequenceMachineLib.memo_apply] at h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 2 = m by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h2 ⊢
      rw [← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A096773

/-! ## A096773.P17464134323115837068

`∑[ogf((3x-2x^2)/(1-4x^2))]`
-/

namespace A096773.P17464134323115837068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 3, -2] [1, 0, -4] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A096773.P17464134323115837068

namespace A096773

/-- `∑[ogf((3x-2x^2)/(1-4x^2))]` -/
def P17464134323115837068.Spec : Prop :=
  ∀ n, P17464134323115837068.a n = A096773 (n + 1)

end A096773

/-! ## A096773.P8543683599382151917

`ogf((3x-2x^2)/(1-x-4x^2+4x^3))`
-/

namespace A096773.P8543683599382151917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 3, -2] [1, -1, -4, 4] n

end

end A096773.P8543683599382151917

namespace A096773

/-- `ogf((3x-2x^2)/(1-x-4x^2+4x^3))` -/
def P8543683599382151917.Spec : Prop :=
  ∀ n, P8543683599382151917.a n = A096773 (n + 1)

end A096773

/-! ## A096773.P10981990880830330689

`lcm(4, a(n-2))+1` with `a(0)=0, a(1)=3`
-/

namespace A096773.P10981990880830330689
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 3] fun n a =>
  Nat.lcm 4 (a (n - 2)) + 1

end

end A096773.P10981990880830330689

namespace A096773

/-- `lcm(4, a(n-2))+1` -/
def P10981990880830330689.Spec : Prop :=
  ∀ n, (P10981990880830330689.a n : ℤ) = A096773 (n + 1)

end A096773

/-! ## A096773.P6978824568150112674

`or(1, 4*a(n-2))` with `a(0)=0, a(1)=3`
-/

namespace A096773.P6978824568150112674
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 3] fun n a =>
  Nat.lor 1 (4 * a (n - 2))

end

end A096773.P6978824568150112674

namespace A096773

/-- `or(1, 4*a(n-2))` -/
def P6978824568150112674.Spec : Prop :=
  ∀ n, (P6978824568150112674.a n : ℤ) = A096773 (n + 1)

end A096773

/-! ## A096773.P12543070229247224743

`xor(1, 4*a(n-2))` with `a(0)=0, a(1)=3`
-/

namespace A096773.P12543070229247224743
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 3] fun n a =>
  Nat.xor 1 (4 * a (n - 2))

end

end A096773.P12543070229247224743

namespace A096773

/-- `xor(1, 4*a(n-2))` -/
def P12543070229247224743.Spec : Prop :=
  ∀ n, (P12543070229247224743.a n : ℤ) = A096773 (n + 1)

end A096773

/-! ## A096773.P11110297134215544058

`∑[4*a(n-2)]` with `a(0)=0, a(1)=3, a(2)=-2`
-/

namespace A096773.P11110297134215544058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 3, -2] fun n f1 =>
  4 * f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A096773.P11110297134215544058

namespace A096773

/-- `∑[4*a(n-2)]` -/
def P11110297134215544058.Spec : Prop :=
  ∀ n, P11110297134215544058.a n = A096773 (n + 1)

end A096773

/-! ## A096773.P2522326928625142534

`∑[a(n-2)/(1/2)²]` with `a(0)=0, a(1)=3, a(2)=-2`
-/

namespace A096773.P2522326928625142534
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [0, 3, -2] fun n f1 =>
  f1 (n - 2) / ((1 : ℚ) / 2) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A096773.P2522326928625142534

namespace A096773

/-- `∑[a(n-2)/(1/2)²]` -/
def P2522326928625142534.Spec : Prop :=
  ∀ n, P2522326928625142534.a n = (A096773 (n + 1) : ℚ)

end A096773

/-! ## A096773.P15227541182200676023

`4*(1-(3/4-a(n-2)))` with `a(0)=0, a(1)=3`
-/

namespace A096773.P15227541182200676023
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 3] fun n a =>
  4 * (1 - ((3 : ℚ) / 4 - a (n - 2)))

end

end A096773.P15227541182200676023

namespace A096773

/-- `4*(1-(3/4-a(n-2)))` -/
def P15227541182200676023.Spec : Prop :=
  ∀ n, P15227541182200676023.a n = (A096773 (n + 1) : ℚ)

end A096773

/-! ## A096773.P13797576010716195592

`2^n-A077925(n)`
-/

namespace A096773.P13797576010716195592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A077925 n

end

end A096773.P13797576010716195592

namespace A096773

/-- `2^n-A077925(n)` -/
def P13797576010716195592.Spec : Prop :=
  ∀ n, P13797576010716195592.a n = A096773 (n + 1)

end A096773

/-! ## A096773.P18187661065507196281

`abs(A001045(n+1)-(-2)^n)`
-/

namespace A096773.P18187661065507196281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001045 (n + 1) - (-2) ^ n|

end

end A096773.P18187661065507196281

namespace A096773

/-- `abs(A001045(n+1)-(-2)^n)` -/
def P18187661065507196281.Spec : Prop :=
  ∀ n, P18187661065507196281.a n = A096773 (n + 1)

end A096773

/-! ## A096773.P10096007508817834024

`A282124(n)-A078008(n)`
-/

namespace A096773.P10096007508817834024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282124 n - A078008 n

end

end A096773.P10096007508817834024

namespace A096773

/-- `A282124(n)-A078008(n)` -/
def P10096007508817834024.Spec : Prop :=
  ∀ n, P10096007508817834024.a n = A096773 (n + 1)

end A096773

/-! ## A096773.P16505383231976659507

`xor(A000975(n), A166920(n))`
-/

namespace A096773.P16505383231976659507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000975 n) (A166920 n)

end

end A096773.P16505383231976659507

namespace A096773

/-- `xor(A000975(n), A166920(n))` -/
def P16505383231976659507.Spec : Prop :=
  ∀ n, P16505383231976659507.a n = A096773 (n + 1)

end A096773

/-! ## A096773.P9828141621081669839

`xor(A005578(n), A282004(n))`
-/

namespace A096773.P9828141621081669839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A005578 n) (A282004 n)

end

end A096773.P9828141621081669839

namespace A096773

/-- `xor(A005578(n), A282004(n))` -/
def P9828141621081669839.Spec : Prop :=
  ∀ n, P9828141621081669839.a n = A096773 (n + 1)

end A096773

/-! ## A096773.P424320833391055663

`xor(A140253(n)+1, A000975(n))`
-/

namespace A096773.P424320833391055663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A140253 n + 1) (A000975 n)

end

end A096773.P424320833391055663

namespace A096773

/-- `xor(A140253(n)+1, A000975(n))` -/
def P424320833391055663.Spec : Prop :=
  ∀ n, P424320833391055663.a n = A096773 (n + 1)

end A096773

/-! ## A096773.P1990529721689730077

`∑[Δ[A131577(n)]-A122803(n)]`
-/

namespace A096773.P1990529721689730077
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - A122803 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A096773.P1990529721689730077

namespace A096773

/-- `∑[Δ[A131577(n)]-A122803(n)]` -/
def P1990529721689730077.Spec : Prop :=
  ∀ n, P1990529721689730077.a n = A096773 (n + 1)

end A096773

/-! ## A096773.P1213880935694641773

`A282124(n)+A141416(2*n+1)`
-/

namespace A096773.P1213880935694641773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282124 n + A141416 (2 * n + 1)

end

end A096773.P1213880935694641773

namespace A096773

/-- `A282124(n)+A141416(2*n+1)` -/
def P1213880935694641773.Spec : Prop :=
  ∀ n, P1213880935694641773.a n = A096773 (n + 1)

end A096773

/-! ## A096773.P12055943294195068224

`xor(A239024(n+1)-1, A084184(n))`
-/

namespace A096773.P12055943294195068224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A239024 (n + 1) - 1) (A084184 n)

end

end A096773.P12055943294195068224

namespace A096773

/-- `xor(A239024(n+1)-1, A084184(n))` -/
def P12055943294195068224.Spec : Prop :=
  ∀ n, P12055943294195068224.a n = A096773 (n + 1)

end A096773

/-! ## A096773.P526807575360570599

`A135318(2*n+1)-A077953(2*n)`
-/

namespace A096773.P526807575360570599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135318 (2 * n + 1) - A077953 (2 * n)

end

end A096773.P526807575360570599

namespace A096773

/-- `A135318(2*n+1)-A077953(2*n)` -/
def P526807575360570599.Spec : Prop :=
  ∀ n, P526807575360570599.a n = A096773 (n + 1)

end A096773

/-!
# A096774: Numbers k such that 9*10^k + 7 is prime.

The programs for A096774, there is no canonical definition to state claims against.
-/

/-! ## A096774.P2210035536623698921

`A100998(n+1)+1`
-/

namespace A096774.P2210035536623698921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100998 (n + 1) + 1

end

end A096774.P2210035536623698921

/-! ## A096774.P2590759515790662091

`record[gcd(A256468(n+1), A340106(n))]`
-/

namespace A096774.P2590759515790662091
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A256468 (n + 1)) (A340106 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A096774.P2590759515790662091

/-! ## A096774.P3816002868045436260

`∑[A160182(∑[A247350(n+1)])]`
-/

namespace A096774.P3816002868045436260
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247350 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160182 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A096774.P3816002868045436260

/-! ## A096774.P17097990317157152622

`∑[A343378(A256117(∑{d}[n+1, #]))]`
-/

namespace A096774.P17097990317157152622
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343378 (A256117 (∑ d ∈ Nat.divisors (f2 n), d)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A096774.P17097990317157152622

/-! ## A096774.P5621258492456221827

`∑[A286302((A286274(n+2)+1)²)]`
-/

namespace A096774.P5621258492456221827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286302 ((A286274 (n + 2) + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A096774.P5621258492456221827

/-!
# A096775: Least common multiple of first n partition numbers (A000041).

The programs for A096775, there is no canonical definition to state claims against.
-/

/-! ## A096775.P8168123243719712434

`lcm(a(n-1), A272340(n))` with `a(0)=1`
-/

namespace A096775.P8168123243719712434
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Int.lcm (a (n - 1) : ℤ) (A272340 n)

end

end A096775.P8168123243719712434

/-! ## A096775.P7323750175142506654

`lcm(-a(n-1), record[A035444(n)])` with `a(0)=1`
-/

namespace A096775.P7323750175142506654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035444 n

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Int.lcm (-(a (n - 1) : ℤ)) (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A096775.P7323750175142506654

/-! ## A096775.P2192421500967695572

`lcm(abs(a(n-1)), A000041(n+1))` with `a(0)=1`
-/

namespace A096775.P2192421500967695572
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Int.lcm (a (n - 1) : ℤ) (A000041 (n + 1))

end

end A096775.P2192421500967695572

/-! ## A096775.P1874512189544671174

`lcm(a(A023443(n)), A000041(n+1))` with `a(0)=1`
-/

namespace A096775.P1874512189544671174
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Int.lcm (a (A023443 n).toNat : ℤ) (A000041 (n + 1))

end

end A096775.P1874512189544671174

/-! ## A096775.P14537973349299967433

`A260188(A063739(n+1))`
-/

namespace A096775.P14537973349299967433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260188 (A063739 (n + 1)).toNat

end

end A096775.P14537973349299967433

/-!
# A096776: n / Max{a(k): 1<=k

The programs for A096776, there is no canonical definition to state claims against.
-/

/-! ## A096776.P1678871774385849603

`A347043(n+1)+A014954(A271269(n+1))`
-/

namespace A096776.P1678871774385849603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347043 (n + 1) + A014954 (A271269 (n + 1)).toNat

end

end A096776.P1678871774385849603

/-! ## A096776.P4003163633828060511

`A347043(n+1)-A277160(A290480(n+1))`
-/

namespace A096776.P4003163633828060511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347043 (n + 1) - A277160 (A290480 (n + 1)).toNat

end

end A096776.P4003163633828060511

/-! ## A096776.P14483461334812643779

`lcm(A033676(n+1), A072505(A064446(n+1)))`
-/

namespace A096776.P14483461334812643779
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033676 (n + 1)) (A072505 (A064446 (n + 1)).toNat)

end

end A096776.P14483461334812643779

/-! ## A096776.P2394995086848209313

`A347043(n+1)-A185124(A260070(n+2))`
-/

namespace A096776.P2394995086848209313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347043 (n + 1) - A185124 (A260070 (n + 2)).toNat

end

end A096776.P2394995086848209313

/-! ## A096776.P4806329081994009248

`A347043(n+1)-A121373(A228383(2*(n+1)))`
-/

namespace A096776.P4806329081994009248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347043 (n + 1) - A121373 (A228383 (2 * (n + 1))).toNat

end

end A096776.P4806329081994009248

/-!
# A096777: a(n) = a(n-1) + Sum_{k=1..n-1}(a(k) mod 2), a(1) = 1.

The programs for A096777, the canonical program `A096777.P16449078236924683293` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A096777 has offset 1).

The definition of A096777 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A096777.P16449078236924683293

`n+1+floor((n-1)²/3)`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A096777

/-- `n+1+floor((n-1)²/3)` -/
def P16449078236924683293.Spec : Prop :=
  ∀ n, P16449078236924683293.a n = A096777 (n + 1)

theorem P16449078236924683293.correct : P16449078236924683293.Spec := by
  intro n
  simp only [A096777, Nat.add_sub_cancel]

end A096777

/-! ## A096777.P9605118643476749079

`(10+3*(n+1)*n-A061347(n+2))/9`
-/

namespace A096777.P9605118643476749079
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((10 + 3 * (n + 1) * n : ℤ) - A061347 (n + 2) : ℚ) / 9

end

end A096777.P9605118643476749079

namespace A096777

/-- `(10+3*(n+1)*n-A061347(n+2))/9` -/
def P9605118643476749079.Spec : Prop :=
  ∀ n, P9605118643476749079.a n = (A096777 (n + 1) : ℚ)

end A096777

/-! ## A096777.P9677199011092433385

`round((n+1)/acot(n/3))`
-/

namespace A096777.P9677199011092433385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n + 1 : ℝ) / SequenceMachineLib.acot ((n : ℚ) / 3 : ℝ))

end

end A096777.P9677199011092433385

namespace A096777

/-- `round((n+1)/acot(n/3))` -/
def P9677199011092433385.Spec : Prop :=
  ∀ n, P9677199011092433385.a n = A096777 (n + 1)

end A096777

/-! ## A096777.P17579596654997494033

`ceil((lcm(n, n+1)+2)/3)`
-/

namespace A096777.P17579596654997494033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.lcm n (n + 1) + 2 : ℚ) / 3⌉

end

end A096777.P17579596654997494033

namespace A096777

/-- `ceil((lcm(n, n+1)+2)/3)` -/
def P17579596654997494033.Spec : Prop :=
  ∀ n, P17579596654997494033.a n = A096777 (n + 1)

end A096777

/-! ## A096777.P11775963200160565110

`floor(record[(n-2)²]/3-n)`
-/

namespace A096777.P11775963200160565110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / 3 - (n : ℚ)⌋

end

end A096777.P11775963200160565110

namespace A096777

/-- `floor(record[(n-2)²]/3-n)` -/
def P11775963200160565110.Spec : Prop :=
  ∀ n, P11775963200160565110.a n = A096777 (n + 1)

end A096777

/-! ## A096777.P14892699472468559587

`round(record[(2-n)²/3]-n)`
-/

namespace A096777.P14892699472468559587
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 - (n : ℤ)) ^ 2 : ℚ) / 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (n : ℚ))

end

end A096777.P14892699472468559587

namespace A096777

/-- `round(record[(2-n)²/3]-n)` -/
def P14892699472468559587.Spec : Prop :=
  ∀ n, P14892699472468559587.a n = A096777 (n + 1)

end A096777

/-! ## A096777.P4949114631212356870

`∑[a(n-3)+2]` with `a(0)=1, a(1)=1, a(2)=1, a(3)=2`
-/

namespace A096777.P4949114631212356870
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1, 2] fun n f1 =>
  f1 (n - 3) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A096777.P4949114631212356870

namespace A096777

/-- `∑[a(n-3)+2]` -/
def P4949114631212356870.Spec : Prop :=
  ∀ n, (P4949114631212356870.a n : ℤ) = A096777 (n + 1)

end A096777

/-! ## A096777.P17191734947388164901

`∑[∑[a(n-3)²]]` with `a(0)=1, a(1)=0, a(2)=0, a(3)=1, a(4)=1`
-/

namespace A096777.P17191734947388164901
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 0, 1, 1] fun n f2 =>
  f2 (n - 3) ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A096777.P17191734947388164901

namespace A096777

/-- `∑[∑[a(n-3)²]]` -/
def P17191734947388164901.Spec : Prop :=
  ∀ n, (P17191734947388164901.a n : ℤ) = A096777 (n + 1)

end A096777

/-! ## A096777.P14581018148150030967

`∑[∑[floor(a(n-3))]]` with `a(0)=1, a(1)=0, a(2)=0, a(3)=1, a(4)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A096777.P14581018148150030967
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 0, 1, 1] fun n f2 =>
  f2 (n - 3)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A096777.P14581018148150030967

namespace A096777

/-- `∑[∑[floor(a(n-3))]]` -/
def P14581018148150030967.Spec : Prop :=
  ∀ n, (P14581018148150030967.a n : ℤ) = A096777 (n + 1)

end A096777

/-! ## A096777.P11963083884518216876

`round(a(n-1)+2*n/3)` with `a(0)=1`
-/

namespace A096777.P11963083884518216876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.roundAway ((a (n - 1) : ℚ) + (2 * n : ℚ) / 3)

end

end A096777.P11963083884518216876

namespace A096777

/-- `round(a(n-1)+2*n/3)` -/
def P11963083884518216876.Spec : Prop :=
  ∀ n, P11963083884518216876.a n = A096777 (n + 1)

end A096777

/-! ## A096777.P9287266909394728380

`ceil((record[(n-1)²]-(n-1))/3)`
-/

namespace A096777.P9287266909394728380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - ((n : ℤ) - 1) : ℚ) / 3⌉

end

end A096777.P9287266909394728380

namespace A096777

/-- `ceil((record[(n-1)²]-(n-1))/3)` -/
def P9287266909394728380.Spec : Prop :=
  ∀ n, P9287266909394728380.a n = A096777 (n + 1)

end A096777

/-! ## A096777.P3406784424678358812

`∑[∑[a(n-3)^3]]` with `a(0)=1, a(1)=0, a(2)=0, a(3)=1, a(4)=1`
-/

namespace A096777.P3406784424678358812
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 0, 1, 1] fun n f2 =>
  f2 (n - 3) ^ 3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A096777.P3406784424678358812

namespace A096777

/-- `∑[∑[a(n-3)^3]]` -/
def P3406784424678358812.Spec : Prop :=
  ∀ n, (P3406784424678358812.a n : ℤ) = A096777 (n + 1)

end A096777

/-! ## A096777.P494962197525321090

`floor(a(n-1)+(2*n+1)/3)` with `a(0)=1`
-/

namespace A096777.P494962197525321090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊(a (n - 1) : ℚ) + (2 * n + 1 : ℚ) / 3⌋

end

end A096777.P494962197525321090

namespace A096777

/-- `floor(a(n-1)+(2*n+1)/3)` -/
def P494962197525321090.Spec : Prop :=
  ∀ n, P494962197525321090.a n = A096777 (n + 1)

end A096777

/-! ## A096777.P11247508441515706719

`∑[A008576(n)-2*n]`
-/

namespace A096777.P11247508441515706719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008576 n - (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A096777.P11247508441515706719

namespace A096777

/-- `∑[A008576(n)-2*n]` -/
def P11247508441515706719.Spec : Prop :=
  ∀ n, P11247508441515706719.a n = A096777 (n + 1)

end A096777

/-! ## A096777.P7856181539252998692

`round(A001846(n)/A001844(n))`
-/

namespace A096777.P7856181539252998692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A001846 n : ℚ) / (A001844 n : ℚ))

end

end A096777.P7856181539252998692

namespace A096777

/-- `round(A001846(n)/A001844(n))` -/
def P7856181539252998692.Spec : Prop :=
  ∀ n, P7856181539252998692.a n = A096777 (n + 1)

end A096777

/-! ## A096777.P13582562803736003952

`A365418(n)%A060798(n+1)`
-/

namespace A096777.P13582562803736003952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A365418 n) (A060798 (n + 1))

end

end A096777.P13582562803736003952

namespace A096777

/-- `A365418(n)%A060798(n+1)` -/
def P13582562803736003952.Spec : Prop :=
  ∀ n, P13582562803736003952.a n = A096777 (n + 1)

end A096777

/-! ## A096777.P15744591725049880037

`A183199(n+1)%A030503(n+3)`
-/

namespace A096777.P15744591725049880037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A183199 (n + 1)) (A030503 (n + 3))

end

end A096777.P15744591725049880037

namespace A096777

/-- `A183199(n+1)%A030503(n+3)` -/
def P15744591725049880037.Spec : Prop :=
  ∀ n, P15744591725049880037.a n = A096777 (n + 1)

end A096777

/-! ## A096777.P4487366782558898059

`∑[A131737(n+1)]`
-/

namespace A096777.P4487366782558898059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131737 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A096777.P4487366782558898059

namespace A096777

/-- `∑[A131737(n+1)]` -/
def P4487366782558898059.Spec : Prop :=
  ∀ n, P4487366782558898059.a n = A096777 (n + 1)

end A096777

/-! ## A096777.P238813167919810356

`A014591(Δ[n²])`
-/

namespace A096777.P238813167919810356
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014591 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A096777.P238813167919810356

namespace A096777

/-- `A014591(Δ[n²])` -/
def P238813167919810356.Spec : Prop :=
  ∀ n, P238813167919810356.a n = A096777 (n + 1)

end A096777

/-! ## A096777.P14330267351570719111

`record[A325690(n)+1]`
-/

namespace A096777.P14330267351570719111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325690 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A096777.P14330267351570719111

namespace A096777

/-- `record[A325690(n)+1]` -/
def P14330267351570719111.Spec : Prop :=
  ∀ n, P14330267351570719111.a n = A096777 (n + 1)

end A096777

/-!
# A096778: Number of partitions of n with at most two even parts.

The programs for A096778, there is no canonical definition to state claims against.
-/

/-! ## A096778.P12563558310797706292

`∑[A026824(n+3)+∑[A026824(n+1)]]`
-/

namespace A096778.P12563558310797706292
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026824 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026824 (n + 3) + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A096778.P12563558310797706292

/-! ## A096778.P9156668015029378273

`∑[A025148(n)]+a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A096778.P9156668015029378273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025148 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + a (n - 2)

end

end A096778.P9156668015029378273

/-! ## A096778.P15111698004316082313

`∑[A025149(n)+∑[A026824(n+1)]]`
-/

namespace A096778.P15111698004316082313
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026824 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025149 n + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A096778.P15111698004316082313

/-! ## A096778.P7601313670545471609

`A116482(eq[2, A055087(n)])`
-/

namespace A096778.P7601313670545471609
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055087 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116482 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A096778.P7601313670545471609

/-! ## A096778.P715698490101581770

`A116482(eq[3, A122197(n+1)])`
-/

namespace A096778.P715698490101581770
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122197 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116482 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A096778.P715698490101581770

/-!
# A096779: Smallest positive integer not occurring earlier having no common digits with n in its decimal representation.

The programs for A096779, there is no canonical definition to state claims against.
-/

/-! ## A096779.P13483915247761486114

`A375759(A375757(n+1))%A334334(n+3)`
-/

namespace A096779.P13483915247761486114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A375759 (A375757 (n + 1)).toNat) (A334334 (n + 3))

end

end A096779.P13483915247761486114

/-! ## A096779.P15118336267685556160

`A221890(A208510(3*n+5))+A163501(n+1)`
-/

namespace A096779.P15118336267685556160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221890 (A208510 (3 * n + 5)).toNat + A163501 (n + 1)

end

end A096779.P15118336267685556160

/-!
# A096780: Inverse of A075383.

The programs for A096780, there is no canonical definition to state claims against.
-/

/-! ## A096780.P13068247077006240196

`A075383(A096782(n+1))`
-/

namespace A096780.P13068247077006240196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075383 (A096782 (n + 1)).toNat

end

end A096780.P13068247077006240196

/-! ## A096780.P13293910998509731732

`A096782(A075383(abs(1-4/2-n)))`
-/

namespace A096780.P13293910998509731732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096782 (A075383 (SequenceMachineLib.roundAway |1 - (4 : ℚ) / 2 - (n : ℚ)|).toNat).toNat

end

end A096780.P13293910998509731732

/-!
# A096781: a(n) = A075383(A075383(n)).

The programs for A096781, there is no canonical definition to state claims against.
-/

/-! ## A096781.P1190753347463046294

`A075383(A075383(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A096781.P1190753347463046294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075383 (A075383 (n + 1)).toNat

end

end A096781.P1190753347463046294

/-!
# A096782: A096780(A096780(n)).

The programs for A096782, there is no canonical definition to state claims against.
-/

/-! ## A096782.P1812594915374831240

`A096780(A096780(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A096782.P1812594915374831240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096780 (A096780 (n + 1)).toNat

end

end A096782.P1812594915374831240

/-!
# A096784: Numbers k such that both k and k+1 are composite numbers that sum up to a prime.

The programs for A096784, the canonical program `A096784.P17728823887735339806` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A096784 has offset 1).

The definition of A096784 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A096784.P17728823887735339806

`floor(A060254(n+1)/2)`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A096784

/-- `floor(A060254(n+1)/2)` -/
def P17728823887735339806.Spec : Prop :=
  ∀ n, P17728823887735339806.a n = A096784 (n + 1)

theorem P17728823887735339806.correct : P17728823887735339806.Spec := by
  intro n
  simp only [A096784, Nat.add_sub_cancel]

end A096784

/-! ## A096784.P10932240481202367088

`filter[A034784(n+1), A005171(#)]`
-/

namespace A096784.P10932240481202367088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034784 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A096784.P10932240481202367088

namespace A096784

/-- `filter[A034784(n+1), A005171(#)]` -/
def P10932240481202367088.Spec : Prop :=
  ∀ n, P10932240481202367088.a n = A096784 (n + 1)

end A096784

/-! ## A096784.P2284780835639306449

`filter[A034784(n+1), A066247(#)]`
-/

namespace A096784.P2284780835639306449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034784 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A096784.P2284780835639306449

namespace A096784

/-- `filter[A034784(n+1), A066247(#)]` -/
def P2284780835639306449.Spec : Prop :=
  ∀ n, P2284780835639306449.a n = A096784 (n + 1)

end A096784

/-! ## A096784.P458090197649364074

`filter[A034784(n+1), A292438(#)]`
-/

namespace A096784.P458090197649364074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034784 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A292438 (f1 j).toNat = 1) n)

end

end A096784.P458090197649364074

namespace A096784

/-- `filter[A034784(n+1), A292438(#)]` -/
def P458090197649364074.Spec : Prop :=
  ∀ n, P458090197649364074.a n = A096784 (n + 1)

end A096784

/-! ## A096784.P9300404059291781844

`∩[A034784(n+1), A067812(n+1)]`
-/

namespace A096784.P9300404059291781844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034784 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067812 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A096784.P9300404059291781844

namespace A096784

/-- `∩[A034784(n+1), A067812(n+1)]` -/
def P9300404059291781844.Spec : Prop :=
  ∀ n, (P9300404059291781844.a n : ℤ) = A096784 (n + 1)

end A096784

/-! ## A096784.P5279682327267686411

`A102781(A096677(n+1))`
-/

namespace A096784.P5279682327267686411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102781 (A096677 (n + 1)).toNat

end

end A096784.P5279682327267686411

namespace A096784

/-- `A102781(A096677(n+1))` -/
def P5279682327267686411.Spec : Prop :=
  ∀ n, P5279682327267686411.a n = A096784 (n + 1)

end A096784

/-! ## A096784.P10085024821701602679

`eq[A323162(n+1), A340101(n)]`
-/

namespace A096784.P10085024821701602679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323162 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340101 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A096784.P10085024821701602679

namespace A096784

/-- `eq[A323162(n+1), A340101(n)]` -/
def P10085024821701602679.Spec : Prop :=
  ∀ n, (P10085024821701602679.a n : ℤ) = A096784 (n + 1)

end A096784

/-! ## A096784.P9070588962676225172

`eq[A323162(n+1), A352063(n)]`
-/

namespace A096784.P9070588962676225172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323162 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352063 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A096784.P9070588962676225172

namespace A096784

/-- `eq[A323162(n+1), A352063(n)]` -/
def P9070588962676225172.Spec : Prop :=
  ∀ n, (P9070588962676225172.a n : ℤ) = A096784 (n + 1)

end A096784

/-! ## A096784.P9114068933258322004

`∩[A002808(n+1), A034784(n+1)]`
-/

namespace A096784.P9114068933258322004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034784 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A096784.P9114068933258322004

namespace A096784

/-- `∩[A002808(n+1), A034784(n+1)]` -/
def P9114068933258322004.Spec : Prop :=
  ∀ n, (P9114068933258322004.a n : ℤ) = A096784 (n + 1)

end A096784

/-! ## A096784.P10926031095954209114

`∩[A018252(n+1), A034784(n+1)]`
-/

namespace A096784.P10926031095954209114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034784 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A096784.P10926031095954209114

namespace A096784

/-- `∩[A018252(n+1), A034784(n+1)]` -/
def P10926031095954209114.Spec : Prop :=
  ∀ n, (P10926031095954209114.a n : ℤ) = A096784 (n + 1)

end A096784

/-! ## A096784.P4873988274279549558

`∩[A034784(n+1), A141468(n+1)]`
-/

namespace A096784.P4873988274279549558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034784 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A096784.P4873988274279549558

namespace A096784

/-- `∩[A034784(n+1), A141468(n+1)]` -/
def P4873988274279549558.Spec : Prop :=
  ∀ n, (P4873988274279549558.a n : ℤ) = A096784 (n + 1)

end A096784

/-! ## A096784.P3824723607490441020

`∩[A034784(n+1), A117096(n+1)]`
-/

namespace A096784.P3824723607490441020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034784 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117096 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A096784.P3824723607490441020

namespace A096784

/-- `∩[A034784(n+1), A117096(n+1)]` -/
def P3824723607490441020.Spec : Prop :=
  ∀ n, (P3824723607490441020.a n : ℤ) = A096784 (n + 1)

end A096784

/-! ## A096784.P6885501349623024468

`filter[A068780(n+1), A101264(#)]`
-/

namespace A096784.P6885501349623024468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068780 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101264 (f1 j).toNat = 1) n)

end

end A096784.P6885501349623024468

namespace A096784

/-- `filter[A068780(n+1), A101264(#)]` -/
def P6885501349623024468.Spec : Prop :=
  ∀ n, P6885501349623024468.a n = A096784 (n + 1)

end A096784

/-! ## A096784.P6034347968033951372

`∩[A005097(n+1), A068780(n+1)]`
-/

namespace A096784.P6034347968033951372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005097 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068780 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A096784.P6034347968033951372

namespace A096784

/-- `∩[A005097(n+1), A068780(n+1)]` -/
def P6034347968033951372.Spec : Prop :=
  ∀ n, (P6034347968033951372.a n : ℤ) = A096784 (n + 1)

end A096784

/-! ## A096784.P12193906429648697720

`∩[A034784(n+1), A068780(n+1)]`
-/

namespace A096784.P12193906429648697720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034784 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068780 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A096784.P12193906429648697720

namespace A096784

/-- `∩[A034784(n+1), A068780(n+1)]` -/
def P12193906429648697720.Spec : Prop :=
  ∀ n, (P12193906429648697720.a n : ℤ) = A096784 (n + 1)

end A096784

/-! ## A096784.P4395586939197232028

`∩[A067812(n+1), A068780(n+1)]`
-/

namespace A096784.P4395586939197232028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067812 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068780 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A096784.P4395586939197232028

namespace A096784

/-- `∩[A067812(n+1), A068780(n+1)]` -/
def P4395586939197232028.Spec : Prop :=
  ∀ n, (P4395586939197232028.a n : ℤ) = A096784 (n + 1)

end A096784

/-! ## A096784.P393357878208455026

`∩[A068780(n+1), A079111(n+1)]`
-/

namespace A096784.P393357878208455026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068780 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079111 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A096784.P393357878208455026

namespace A096784

/-- `∩[A068780(n+1), A079111(n+1)]` -/
def P393357878208455026.Spec : Prop :=
  ∀ n, (P393357878208455026.a n : ℤ) = A096784 (n + 1)

end A096784

/-! ## A096784.P14217629566832421979

`∩[A068780(n+1), A102781(n+1)]`
-/

namespace A096784.P14217629566832421979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068780 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102781 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A096784.P14217629566832421979

namespace A096784

/-- `∩[A068780(n+1), A102781(n+1)]` -/
def P14217629566832421979.Spec : Prop :=
  ∀ n, (P14217629566832421979.a n : ℤ) = A096784 (n + 1)

end A096784

/-! ## A096784.P14740672099327687454

`∩[A034784(n+1), A164276(n+1)]`
-/

namespace A096784.P14740672099327687454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034784 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164276 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A096784.P14740672099327687454

namespace A096784

/-- `∩[A034784(n+1), A164276(n+1)]` -/
def P14740672099327687454.Spec : Prop :=
  ∀ n, (P14740672099327687454.a n : ℤ) = A096784 (n + 1)

end A096784

/-! ## A096784.P12833490952899146206

`floor(p?[A163602(n+1)]/2)`
-/

namespace A096784.P12833490952899146206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163602 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / 2⌋

end

end A096784.P12833490952899146206

namespace A096784

/-- `floor(p?[A163602(n+1)]/2)` -/
def P12833490952899146206.Spec : Prop :=
  ∀ n, P12833490952899146206.a n = A096784 (n + 1)

end A096784

/-!
# A096785: Primes of form 4k+1 which are the sum of two consecutive composite numbers.

The programs for A096785, there is no canonical definition to state claims against.
-/

/-! ## A096785.P6741029620372898010

`2*A096786(n+1)+1`
-/

namespace A096785.P6741029620372898010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A096786 (n + 1) + 1

end

end A096785.P6741029620372898010

/-! ## A096785.P1154779672909728780

`∩[A002144(n+1), A034849(n+1)]`
-/

namespace A096785.P1154779672909728780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034849 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A096785.P1154779672909728780

/-! ## A096785.P3469140571771122804

`∩[A002313(n+1), A034849(n+1)]`
-/

namespace A096785.P3469140571771122804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034849 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A096785.P3469140571771122804

/-! ## A096785.P12335941351011653374

`∩[A003653(n+1), A034849(n+1)]`
-/

namespace A096785.P12335941351011653374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003653 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034849 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A096785.P12335941351011653374

/-! ## A096785.P17138929843546916857

`∩[A008846(n+1), A034849(n+1)]`
-/

namespace A096785.P17138929843546916857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008846 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034849 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A096785.P17138929843546916857

/-! ## A096785.P8295146352293329455

`∩[A004613(n+1), A034849(n+1)]`
-/

namespace A096785.P8295146352293329455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004613 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034849 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A096785.P8295146352293329455

/-! ## A096785.P7164836441831950595

`filter[A034849(n+1), A353812(#)]`
-/

namespace A096785.P7164836441831950595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034849 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353812 (f1 j).toNat = 1) n)

end

end A096785.P7164836441831950595

/-! ## A096785.P7856941841392816808

`filter[A034849(n+1), A353814(#)]`
-/

namespace A096785.P7856941841392816808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034849 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353814 (f1 j).toNat = 1) n)

end

end A096785.P7856941841392816808

/-! ## A096785.P11657030335365000572

`filter[A034849(n+1), A358678(#)]`
-/

namespace A096785.P11657030335365000572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034849 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358678 (f1 j).toNat = 1) n)

end

end A096785.P11657030335365000572

/-! ## A096785.P1721995410036182723

`filter[A034849(n+1), A359150(#)]`
-/

namespace A096785.P1721995410036182723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034849 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359150 (f1 j).toNat = 1) n)

end

end A096785.P1721995410036182723

/-! ## A096785.P10640794032035588009

`filter[A060254(n+1), A353812(#)]`
-/

namespace A096785.P10640794032035588009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060254 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353812 (f1 j).toNat = 1) n)

end

end A096785.P10640794032035588009

/-! ## A096785.P13446290762645546704

`filter[A060254(n+1), A353814(#)]`
-/

namespace A096785.P13446290762645546704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060254 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353814 (f1 j).toNat = 1) n)

end

end A096785.P13446290762645546704

/-! ## A096785.P200459996247933606

`filter[A060254(n+1), A358678(#)]`
-/

namespace A096785.P200459996247933606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060254 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358678 (f1 j).toNat = 1) n)

end

end A096785.P200459996247933606

/-! ## A096785.P2860657311128930606

`filter[A060254(n+1), A359150(#)]`
-/

namespace A096785.P2860657311128930606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060254 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359150 (f1 j).toNat = 1) n)

end

end A096785.P2860657311128930606

/-! ## A096785.P9156965757898103958

`filter[A176897(n+1), A353812(#)]`
-/

namespace A096785.P9156965757898103958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176897 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353812 (f1 j).toNat = 1) n)

end

end A096785.P9156965757898103958

/-! ## A096785.P725652239869331034

`filter[A176897(n+1), A353814(#)]`
-/

namespace A096785.P725652239869331034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176897 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353814 (f1 j).toNat = 1) n)

end

end A096785.P725652239869331034

/-! ## A096785.P15736784528533016881

`filter[A176902(n+1), A353812(#)]`
-/

namespace A096785.P15736784528533016881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176902 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353812 (f1 j).toNat = 1) n)

end

end A096785.P15736784528533016881

/-!
# A096786: Numbers n such that both n and n+1 are composite numbers that sum up to a Pythagorean prime (i.e., of the form 4k+1).

The programs for A096786, there is no canonical definition to state claims against.
-/

/-! ## A096786.P2267298877765116261

`(A096785(n+1)-1)/2`
-/

namespace A096786.P2267298877765116261
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A096785 (n + 1) - 1 : ℚ) / 2

end

end A096786.P2267298877765116261

/-! ## A096786.P16160015315396496975

`∩[2*n, A096784(n+1)]`
-/

namespace A096786.P16160015315396496975
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096784 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A096786.P16160015315396496975

/-! ## A096786.P14482587452666778430

`∩[2*n, A034784(n+1)]`
-/

namespace A096786.P14482587452666778430
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034784 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A096786.P14482587452666778430

/-! ## A096786.P18176402843936963771

`∩[A034784(n+1), A047238(n+1)]`
-/

namespace A096786.P18176402843936963771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034784 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047238 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A096786.P18176402843936963771

/-! ## A096786.P6484631844639758770

`∩[A034784(n+1), A064466(n)]`
-/

namespace A096786.P6484631844639758770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034784 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064466 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A096786.P6484631844639758770

/-! ## A096786.P9842781006068670397

`∩[A096784(n+1), A064466(n)]`
-/

namespace A096786.P9842781006068670397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096784 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064466 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A096786.P9842781006068670397

/-! ## A096786.P13285654800122232153

`filter[A309355(n+1), A101264(#)]`
-/

namespace A096786.P13285654800122232153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309355 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101264 (f1 j).toNat = 1) n)

end

end A096786.P13285654800122232153

/-! ## A096786.P2137589091754406637

`∩[A034784(n+1), A020744(n)]`
-/

namespace A096786.P2137589091754406637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034784 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020744 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A096786.P2137589091754406637

/-! ## A096786.P5577660370277616552

`∩[A096784(n+1), A020744(n)]`
-/

namespace A096786.P5577660370277616552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096784 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020744 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A096786.P5577660370277616552

/-! ## A096786.P1195202160477172135

`∩[A034784(n+1), A020739(n)]`
-/

namespace A096786.P1195202160477172135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034784 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020739 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A096786.P1195202160477172135

/-! ## A096786.P7789796366786793758

`∩[A096784(n+1), A020739(n)]`
-/

namespace A096786.P7789796366786793758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096784 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020739 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A096786.P7789796366786793758

/-! ## A096786.P401020110155392324

`2*(eq[2, A016014(n+1)]+1)`
-/

namespace A096786.P401020110155392324
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016014 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A096786.P401020110155392324

/-! ## A096786.P6632411853972428521

`∩[A034784(n+1), A004275(n)]`
-/

namespace A096786.P6632411853972428521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034784 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A096786.P6632411853972428521

/-! ## A096786.P9806169053201403112

`∩[A034784(n+1), A004277(n)]`
-/

namespace A096786.P9806169053201403112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034784 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A096786.P9806169053201403112

/-! ## A096786.P18051599167772692652

`∩[A034784(n+1), A005843(n)]`
-/

namespace A096786.P18051599167772692652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034784 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A096786.P18051599167772692652

/-! ## A096786.P13111351393258875699

`∩[A096784(n+1), A004271(n)]`
-/

namespace A096786.P13111351393258875699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096784 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004271 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A096786.P13111351393258875699

/-! ## A096786.P7221035540769841957

`∩[A096784(n+1), A004275(n)]`
-/

namespace A096786.P7221035540769841957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096784 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A096786.P7221035540769841957

/-! ## A096786.P17021906055346046871

`∩[A096784(n+1), A004277(n)]`
-/

namespace A096786.P17021906055346046871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096784 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A096786.P17021906055346046871

/-! ## A096786.P3167607648417841763

`∩[A096784(n+1), A004279(n)]`
-/

namespace A096786.P3167607648417841763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096784 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004279 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A096786.P3167607648417841763

/-! ## A096786.P17962729224930822637

`∩[A096784(n+1), A005843(n)]`
-/

namespace A096786.P17962729224930822637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096784 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A096786.P17962729224930822637

/-!
# A096787: Primes of form 4n+3 that are the sum of two consecutive composite numbers.

The programs for A096787, the canonical program `A096787.P14938742021689819963` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A096787 has offset 1).

The definition of A096787 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A096787.P15019265519868369399

`p?[2*A071904(n+1)+1]`
-/

namespace A096787.P15019265519868369399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A071904 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A096787.P15019265519868369399

namespace A096787

/-- `p?[2*A071904(n+1)+1]` -/
def P15019265519868369399.Spec : Prop :=
  ∀ n, P15019265519868369399.a n = A096787 (n + 1)

end A096787

/-! ## A096787.P13975281391233773044

`p?[2*A014076(n+2)+1]`
-/

namespace A096787.P13975281391233773044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A014076 (n + 2) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A096787.P13975281391233773044

namespace A096787

/-- `p?[2*A014076(n+2)+1]` -/
def P13975281391233773044.Spec : Prop :=
  ∀ n, P13975281391233773044.a n = A096787 (n + 1)

end A096787

/-! ## A096787.P7323764487378922179

`p?[lcm(2, A079364(n+1))+1]`
-/

namespace A096787.P7323764487378922179
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A079364 (n + 1)) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A096787.P7323764487378922179

namespace A096787

/-- `p?[lcm(2, A079364(n+1))+1]` -/
def P7323764487378922179.Spec : Prop :=
  ∀ n, (P7323764487378922179.a n : ℤ) = A096787 (n + 1)

end A096787

/-! ## A096787.P14938742021689819963

`p?[4*(n+1)-A066247(2*n+1)]`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A096787

/-- `p?[4*(n+1)-A066247(2*n+1)]` -/
def P14938742021689819963.Spec : Prop :=
  ∀ n, P14938742021689819963.a n = A096787 (n + 1)

theorem P14938742021689819963.correct : P14938742021689819963.Spec := by
  intro n
  simp only [A096787, Nat.add_sub_cancel]

end A096787

/-! ## A096787.P4821473727537629147

`p?[4*(n+1)-A323162(2*(n+1))]`
-/

namespace A096787.P4821473727537629147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * (n + 1) : ℤ) - A323162 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A096787.P4821473727537629147

namespace A096787

/-- `p?[4*(n+1)-A323162(2*(n+1))]` -/
def P4821473727537629147.Spec : Prop :=
  ∀ n, P4821473727537629147.a n = A096787 (n + 1)

end A096787

/-! ## A096787.P2371889838245411669

`filter[A060254(n+1), A347871(#)]`
-/

namespace A096787.P2371889838245411669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060254 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A347871 (f1 j).toNat = 1) n)

end

end A096787.P2371889838245411669

namespace A096787

/-- `filter[A060254(n+1), A347871(#)]` -/
def P2371889838245411669.Spec : Prop :=
  ∀ n, P2371889838245411669.a n = A096787 (n + 1)

end A096787

/-! ## A096787.P7322889791688552432

`filter[A060254(n+1), A354028(#)]`
-/

namespace A096787.P7322889791688552432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060254 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354028 (f1 j).toNat = 1) n)

end

end A096787.P7322889791688552432

namespace A096787

/-- `filter[A060254(n+1), A354028(#)]` -/
def P7322889791688552432.Spec : Prop :=
  ∀ n, P7322889791688552432.a n = A096787 (n + 1)

end A096787

/-! ## A096787.P1864466319116004030

`filter[A060254(n+1), A354029(#)]`
-/

namespace A096787.P1864466319116004030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060254 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354029 (f1 j).toNat = 1) n)

end

end A096787.P1864466319116004030

namespace A096787

/-- `filter[A060254(n+1), A354029(#)]` -/
def P1864466319116004030.Spec : Prop :=
  ∀ n, P1864466319116004030.a n = A096787 (n + 1)

end A096787

/-! ## A096787.P12862048586193656186

`filter[A060254(n+1), A354033(#)]`
-/

namespace A096787.P12862048586193656186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060254 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354033 (f1 j).toNat = 1) n)

end

end A096787.P12862048586193656186

namespace A096787

/-- `filter[A060254(n+1), A354033(#)]` -/
def P12862048586193656186.Spec : Prop :=
  ∀ n, P12862048586193656186.a n = A096787 (n + 1)

end A096787

/-! ## A096787.P3070478485218859610

`filter[A060254(n+1), A354036(#)]`
-/

namespace A096787.P3070478485218859610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060254 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354036 (f1 j).toNat = 1) n)

end

end A096787.P3070478485218859610

namespace A096787

/-- `filter[A060254(n+1), A354036(#)]` -/
def P3070478485218859610.Spec : Prop :=
  ∀ n, P3070478485218859610.a n = A096787 (n + 1)

end A096787

/-! ## A096787.P14153269097223570535

`filter[A060254(n+1), A359152(#)]`
-/

namespace A096787.P14153269097223570535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060254 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359152 (f1 j).toNat = 1) n)

end

end A096787.P14153269097223570535

namespace A096787

/-- `filter[A060254(n+1), A359152(#)]` -/
def P14153269097223570535.Spec : Prop :=
  ∀ n, P14153269097223570535.a n = A096787 (n + 1)

end A096787

/-! ## A096787.P4514232390884725476

`filter[A339912(n+1), A354028(#)]`
-/

namespace A096787.P4514232390884725476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339912 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354028 (f1 j).toNat = 1) n)

end

end A096787.P4514232390884725476

namespace A096787

/-- `filter[A339912(n+1), A354028(#)]` -/
def P4514232390884725476.Spec : Prop :=
  ∀ n, P4514232390884725476.a n = A096787 (n + 1)

end A096787

/-! ## A096787.P17766834375787566348

`filter[A099184(n+2), A347871(#)]`
-/

namespace A096787.P17766834375787566348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099184 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A347871 (f1 j).toNat = 1) n)

end

end A096787.P17766834375787566348

namespace A096787

/-- `filter[A099184(n+2), A347871(#)]` -/
def P17766834375787566348.Spec : Prop :=
  ∀ n, P17766834375787566348.a n = A096787 (n + 1)

end A096787

/-! ## A096787.P8861984885499981612

`filter[A099184(n+2), A354028(#)]`
-/

namespace A096787.P8861984885499981612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099184 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354028 (f1 j).toNat = 1) n)

end

end A096787.P8861984885499981612

namespace A096787

/-- `filter[A099184(n+2), A354028(#)]` -/
def P8861984885499981612.Spec : Prop :=
  ∀ n, P8861984885499981612.a n = A096787 (n + 1)

end A096787

/-! ## A096787.P5843717405498368796

`filter[A099184(n+2), A354029(#)]`
-/

namespace A096787.P5843717405498368796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099184 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354029 (f1 j).toNat = 1) n)

end

end A096787.P5843717405498368796

namespace A096787

/-- `filter[A099184(n+2), A354029(#)]` -/
def P5843717405498368796.Spec : Prop :=
  ∀ n, P5843717405498368796.a n = A096787 (n + 1)

end A096787

/-! ## A096787.P10430641310201455075

`filter[A099184(n+2), A354033(#)]`
-/

namespace A096787.P10430641310201455075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099184 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354033 (f1 j).toNat = 1) n)

end

end A096787.P10430641310201455075

namespace A096787

/-- `filter[A099184(n+2), A354033(#)]` -/
def P10430641310201455075.Spec : Prop :=
  ∀ n, P10430641310201455075.a n = A096787 (n + 1)

end A096787

/-! ## A096787.P374989812780292466

`filter[A099184(n+2), A354036(#)]`
-/

namespace A096787.P374989812780292466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099184 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354036 (f1 j).toNat = 1) n)

end

end A096787.P374989812780292466

namespace A096787

/-- `filter[A099184(n+2), A354036(#)]` -/
def P374989812780292466.Spec : Prop :=
  ∀ n, P374989812780292466.a n = A096787 (n + 1)

end A096787

/-! ## A096787.P18298722476576368621

`filter[A099184(n+2), A359152(#)]`
-/

namespace A096787.P18298722476576368621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099184 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359152 (f1 j).toNat = 1) n)

end

end A096787.P18298722476576368621

namespace A096787

/-- `filter[A099184(n+2), A359152(#)]` -/
def P18298722476576368621.Spec : Prop :=
  ∀ n, P18298722476576368621.a n = A096787 (n + 1)

end A096787

/-! ## A096787.P650985498769287394

`filter[A058501(n+3), A347871(#)]`
-/

namespace A096787.P650985498769287394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058501 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A347871 (f1 j).toNat = 1) n)

end

end A096787.P650985498769287394

namespace A096787

/-- `filter[A058501(n+3), A347871(#)]` -/
def P650985498769287394.Spec : Prop :=
  ∀ n, P650985498769287394.a n = A096787 (n + 1)

end A096787

/-! ## A096787.P17056665618152385503

`filter[A059456(n+3), A347871(#)]`
-/

namespace A096787.P17056665618152385503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059456 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A347871 (f1 j).toNat = 1) n)

end

end A096787.P17056665618152385503

namespace A096787

/-- `filter[A059456(n+3), A347871(#)]` -/
def P17056665618152385503.Spec : Prop :=
  ∀ n, P17056665618152385503.a n = A096787 (n + 1)

end A096787

/-!
# A096788: Numbers m such that both m and m+1 are composite numbers whose sum is a prime of the form 4k+3.

The programs for A096788, there is no canonical definition to state claims against.
-/

/-! ## A096788.P2082676087472086054

`floor(A096787(n+1)/2)`
-/

namespace A096788.P2082676087472086054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A096787 (n + 1) : ℚ) / 2⌋

end

end A096788.P2082676087472086054

/-! ## A096788.P10767901210783277210

`2*A096676(n+1)+1`
-/

namespace A096788.P10767901210783277210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A096676 (n + 1) + 1

end

end A096788.P10767901210783277210

/-! ## A096788.P16180866634114706145

`∩[2*n+1, A096784(n+1)]`
-/

namespace A096788.P16180866634114706145
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096784 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A096788.P16180866634114706145

/-! ## A096788.P147483092530983351

`∩[2*n+1, A067812(n+2)]`
-/

namespace A096788.P147483092530983351
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067812 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A096788.P147483092530983351

/-! ## A096788.P6006439232905544271

`floor(p?[Δ[A286901(2*(n+3))]]/2)`
-/

namespace A096788.P6006439232905544271
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286901 (2 * (n + 3))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / 2⌋

end

end A096788.P6006439232905544271

/-! ## A096788.P1476947294530257154

`2*(eq[2, A103961(n+2)]+1)+1`
-/

namespace A096788.P1476947294530257154
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103961 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) + 1

end

end A096788.P1476947294530257154

/-! ## A096788.P6110632490316504168

`floor(p?[2*A014076(n+2)+1]/2)`
-/

namespace A096788.P6110632490316504168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A014076 (n + 2) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / 2⌋

end

end A096788.P6110632490316504168

/-! ## A096788.P17226695423656181390

`A002616(A096787(n+1))`
-/

namespace A096788.P17226695423656181390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002616 (A096787 (n + 1)).toNat

end

end A096788.P17226695423656181390

/-! ## A096788.P874559652569884271

`A057023(A096679(n+1))`
-/

namespace A096788.P874559652569884271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057023 (A096679 (n + 1)).toNat

end

end A096788.P874559652569884271

/-! ## A096788.P16060157086713411093

`A103991(A096676(n+1))`
-/

namespace A096788.P16060157086713411093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103991 (A096676 (n + 1)).toNat

end

end A096788.P16060157086713411093

/-!
# A096791: Number of partitions of n into distinct parts with even number of even parts.

The programs for A096791, there is no canonical definition to state claims against.
-/

/-! ## A096791.P461819290557082013

`(A000009(n)+(-1)^n*A010815(n))/2`
-/

namespace A096791.P461819290557082013
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000009 n + (-1) ^ n * A010815 n : ℚ) / 2

end

end A096791.P461819290557082013

/-! ## A096791.P10815242916697514245

`(A121373(n)+A000009(n))/2`
-/

namespace A096791.P10815242916697514245
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A121373 n + A000009 n : ℚ) / 2

end

end A096791.P10815242916697514245

/-! ## A096791.P17089704718567397963

`and(1, n)*A257628(n)+A067661(n)`
-/

namespace A096791.P17089704718567397963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.land 1 n : ℤ) * A257628 n + A067661 n

end

end A096791.P17089704718567397963

/-! ## A096791.P17555377582161340659

`A067661(n)-A274719(A266303(n))`
-/

namespace A096791.P17555377582161340659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067661 n - A274719 (A266303 n).toNat

end

end A096791.P17555377582161340659

/-! ## A096791.P15251734777601949689

`A067661(n)+A121373(n)%A000034(n)`
-/

namespace A096791.P15251734777601949689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067661 n + Int.tmod (A121373 n) (A000034 n)

end

end A096791.P15251734777601949689

/-! ## A096791.P14696186027018408414

`A067661(n)-A134756(n)%A000034(n)`
-/

namespace A096791.P14696186027018408414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067661 n - Int.tmod (A134756 n) (A000034 n)

end

end A096791.P14696186027018408414

/-! ## A096791.P292172475367552517

`A273943(A121373(n)+A000009(n))`
-/

namespace A096791.P292172475367552517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A121373 n + A000009 n).toNat

end

end A096791.P292172475367552517

/-! ## A096791.P18112599862772958999

`A014682(A121373(n)+A000009(n))`
-/

namespace A096791.P18112599862772958999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A121373 n + A000009 n).toNat

end

end A096791.P18112599862772958999

/-! ## A096791.P15937886763893447500

`A038572(A121373(n)+A000009(n))`
-/

namespace A096791.P15937886763893447500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038572 (A121373 n + A000009 n).toNat

end

end A096791.P15937886763893447500

/-! ## A096791.P16673622598963458367

`A001281(A121373(n)+A000009(n))`
-/

namespace A096791.P16673622598963458367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A121373 n + A000009 n).toNat

end

end A096791.P16673622598963458367

/-!
# A096792: Number of partitions of n into distinct parts with odd number of even parts.

The programs for A096792, there is no canonical definition to state claims against.
-/

/-! ## A096792.P1536765245057620777

`(A000009(n+1)-(-1)^(n+1)*A010815(n+1))/2`
-/

namespace A096792.P1536765245057620777
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000009 (n + 1) - (-1) ^ (n + 1) * A010815 (n + 1) : ℚ) / 2

end

end A096792.P1536765245057620777

/-! ## A096792.P8278016000062504222

`A000009(n+1)-A096791(n+1)`
-/

namespace A096792.P8278016000062504222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 (n + 1) - A096791 (n + 1)

end

end A096792.P8278016000062504222

/-! ## A096792.P16432730721340352625

`A096791(n+1)-A121373(n+1)`
-/

namespace A096792.P16432730721340352625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096791 (n + 1) - A121373 (n + 1)

end

end A096792.P16432730721340352625

/-! ## A096792.P17761469336697566204

`(Δ[A036469(n)]-A121373(n+1))/2`
-/

namespace A096792.P17761469336697566204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036469 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n - A121373 (n + 1) : ℚ) / 2

end

end A096792.P17761469336697566204

/-! ## A096792.P9105534469601346842

`(A000009(n+1)-A121373(n+1))/2`
-/

namespace A096792.P9105534469601346842
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000009 (n + 1) - A121373 (n + 1) : ℚ) / 2

end

end A096792.P9105534469601346842

/-! ## A096792.P665843498800145472

`A067659(n+1)+A067661(n+1)-A096791(n+1)`
-/

namespace A096792.P665843498800145472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067659 (n + 1) + (A067661 (n + 1) - A096791 (n + 1))

end

end A096792.P665843498800145472

/-! ## A096792.P2175764636771520591

`A014682(A000009(n+1)-A121373(n+1))`
-/

namespace A096792.P2175764636771520591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A000009 (n + 1) - A121373 (n + 1)).toNat

end

end A096792.P2175764636771520591

/-! ## A096792.P8536382547057809161

`A001281(A000009(n+1)-A121373(n+1))`
-/

namespace A096792.P8536382547057809161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A000009 (n + 1) - A121373 (n + 1)).toNat

end

end A096792.P8536382547057809161

/-! ## A096792.P13842497685048531793

`A004525(A000009(n+1)-A121373(n+1))`
-/

namespace A096792.P13842497685048531793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A000009 (n + 1) - A121373 (n + 1)).toNat

end

end A096792.P13842497685048531793

/-! ## A096792.P13254378219245893195

`A025480(A000009(n+1)-A121373(n+1))`
-/

namespace A096792.P13254378219245893195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A000009 (n + 1) - A121373 (n + 1)).toNat

end

end A096792.P13254378219245893195

/-!
# A096793: Triangle read by rows: a(n,k) is the number of Dyck n-paths containing k odd-length ascents.

The programs for A096793, there is no canonical definition to state claims against.
-/

/-! ## A096793.P11565196029866400513

`A155491(n)/A142458(n+1)*A172026(n)`
-/

namespace A096793.P11565196029866400513
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A155491 n : ℚ) / (A142458 (n + 1) : ℚ) * (A172026 n : ℚ)

end

end A096793.P11565196029866400513

/-! ## A096793.P6583935065595808734

`A152148(A097591(n)+1)`
-/

namespace A096793.P6583935065595808734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152148 (A097591 n + 1).toNat

end

end A096793.P6583935065595808734

/-! ## A096793.P2332653004760749572

`A317946(4^A097610(n))`
-/

namespace A096793.P2332653004760749572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317946 (SequenceMachineLib.roundAway ((4 : ℚ) ^ (A097610 n : ℤ))).toNat

end

end A096793.P2332653004760749572

/-! ## A096793.P12976998293100294185

`A046645(5^A097610(n))`
-/

namespace A096793.P12976998293100294185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046645 (SequenceMachineLib.roundAway ((5 : ℚ) ^ (A097610 n : ℤ))).toNat

end

end A096793.P12976998293100294185

/-! ## A096793.P10349706602257049304

`A156723(A185951(n+1)+3)`
-/

namespace A096793.P10349706602257049304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156723 (A185951 (n + 1) + 3).toNat

end

end A096793.P10349706602257049304

/-!
# A096794: Triangle read by rows: a(n,k) = number of Dyck n-paths such that number of DUs at level 1 plus number of UDs at level 2 is k, 0<=k<=n-1.

The programs for A096794, there is no canonical definition to state claims against.
-/

/-! ## A096794.P143235849579616556

`2^(n-C(∑[char[∑[n]]], 2))*A065600(n)`
-/

namespace A096794.P143235849579616556
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) : ℤ) * (A065600 n : ℚ)

end

end A096794.P143235849579616556

/-! ## A096794.P600933688017831042

`A059268(n)*A065600(n)`
-/

namespace A096794.P600933688017831042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n * A065600 n

end

end A096794.P600933688017831042

/-! ## A096794.P5440257219496054162

`2^A002262(n)*A065600(n)`
-/

namespace A096794.P5440257219496054162
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A002262 n : ℤ) * (A065600 n : ℚ)

end

end A096794.P5440257219496054162

/-! ## A096794.P3644701146214020266

`A000079(A002262(n))*A065600(n)`
-/

namespace A096794.P3644701146214020266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A002262 n).toNat * A065600 n

end

end A096794.P3644701146214020266

/-! ## A096794.P6692046159455419693

`A003958(A036561(n))*A065600(n)`
-/

namespace A096794.P6692046159455419693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003958 (A036561 n).toNat * A065600 n

end

end A096794.P6692046159455419693

/-! ## A096794.P695673447591404060

`A003958(A099884(n))*A065600(n)`
-/

namespace A096794.P695673447591404060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003958 (A099884 n).toNat * A065600 n

end

end A096794.P695673447591404060

/-! ## A096794.P16548865262254046757

`A036561(A112367(n))*A065600(n)`
-/

namespace A096794.P16548865262254046757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036561 (A112367 n).toNat * A065600 n

end

end A096794.P16548865262254046757

/-! ## A096794.P9234895000153544289

`A065600(n)*A130321(A061579(n))`
-/

namespace A096794.P9234895000153544289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065600 n * A130321 (A061579 n).toNat

end

end A096794.P9234895000153544289

/-! ## A096794.P11845904725191307977

`A011782(A002260(n+1))*A065600(n)`
-/

namespace A096794.P11845904725191307977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A002260 (n + 1)).toNat * A065600 n

end

end A096794.P11845904725191307977

/-! ## A096794.P69832508815066035

`A000079(A025668(n+1))*A065600(n)`
-/

namespace A096794.P69832508815066035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A025668 (n + 1)).toNat * A065600 n

end

end A096794.P69832508815066035

/-!
# A096795: Numerator of sum of reciprocals of first n prime powers; denominator=A051451(n).

The programs for A096795, there is no canonical definition to state claims against.
-/

/-! ## A096795.P13443549313767415729

`A294208(A000961(n+1))+A051451(n+1)`
-/

namespace A096795.P13443549313767415729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294208 (A000961 (n + 1)).toNat + A051451 (n + 1)

end

end A096795.P13443549313767415729

/-! ## A096795.P4915730027921890457

`A294208(lt[A001221(n+1), 2]+1)+A051451(n+1)`
-/

namespace A096795.P4915730027921890457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294208 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1) + A051451 (n + 1)

end

end A096795.P4915730027921890457

/-! ## A096795.P15536468898761050808

`A294208(lt[A001221(n+1), 2]+1)+A208768(n+1)+1`
-/

namespace A096795.P15536468898761050808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294208 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1) + (A208768 (n + 1) + 1)

end

end A096795.P15536468898761050808

/-! ## A096795.P1866313383213071188

`A294208(lt[A001221(n+1), 2]+1)+A051452(n+1)-1`
-/

namespace A096795.P1866313383213071188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294208 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1) + (A051452 (n + 1) - 1)

end

end A096795.P1866313383213071188

/-! ## A096795.P14774629517742735783

`A294208(record[(n+1)/A001221(n+1)!])+A051451(n+1)`
-/

namespace A096795.P14774629517742735783
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Nat.factorial (A001221 (n + 1)).toNat : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294208 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat + A051451 (n + 1)

end

end A096795.P14774629517742735783

/-!
# A096796: a(n) = n for n <= 2; for n > 2, a(n) = 2a(n-1) - a(n - floor( 1/2 + sqrt(2n) )).

The programs for A096796, the canonical program `A096796.P1817790255395828018` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A096796 has offset 0).

The definition of A096796 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*a(n-1)-a(n-floor(1/2+sqrt(2*n)))` (program `A096796.P1817790255395828018`, by `A096796.P1817790255395828018.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A096796.P1817790255395828018

`2*a(n-1)-a(n-floor(1/2+sqrt(2*n)))` with `a(0)=0, a(1)=1, a(2)=2`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A096796

/-- `2*a(n-1)-a(n-floor(1/2+sqrt(2*n)))` -/
def P1817790255395828018.Spec : Prop :=
  ∀ n, P1817790255395828018.a n = A096796 n

theorem P1817790255395828018.correct : P1817790255395828018.Spec := by
  intro n
  simp only [A096796]

end A096796

/-! ## A096796.P13660477855371120317

`A096824(n+1)-1`
-/

namespace A096796.P13660477855371120317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096824 (n + 1) - 1

end

end A096796.P13660477855371120317

namespace A096796

/-- `A096824(n+1)-1` -/
def P13660477855371120317.Spec : Prop :=
  ∀ n, P13660477855371120317.a n = A096796 n

end A096796

/-! ## A096796.P16133127698572446889

`n-∑[1-Δ[A096824(n)]]`
-/

namespace A096796.P16133127698572446889
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096824 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A096796.P16133127698572446889

namespace A096796

/-- `n-∑[1-Δ[A096824(n)]]` -/
def P16133127698572446889.Spec : Prop :=
  ∀ n, P16133127698572446889.a n = A096796 n

end A096796

/-! ## A096796.P2755750833076409663

`A131797(Δ[A001951(n)])+A096824(n+1)`
-/

namespace A096796.P2755750833076409663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131797 (f1 (n + 1) - f1 n).toNat + A096824 (n + 1)

end

end A096796.P2755750833076409663

namespace A096796

/-- `A131797(Δ[A001951(n)])+A096824(n+1)` -/
def P2755750833076409663.Spec : Prop :=
  ∀ n, P2755750833076409663.a n = A096796 n

end A096796

/-! ## A096796.P8490586340087605820

`Δ[∑[A096824(n)]-n]`
-/

namespace A096796.P8490586340087605820
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096824 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A096796.P8490586340087605820

namespace A096796

/-- `Δ[∑[A096824(n)]-n]` -/
def P8490586340087605820.Spec : Prop :=
  ∀ n, P8490586340087605820.a n = A096796 n

end A096796

/-! ## A096796.P6189515462261614868

`∑[Δ[A096824(n)]%A034943(n+2)]`
-/

namespace A096796.P6189515462261614868
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096824 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (n + 1) - f2 n) (A034943 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A096796.P6189515462261614868

namespace A096796

/-- `∑[Δ[A096824(n)]%A034943(n+2)]` -/
def P6189515462261614868.Spec : Prop :=
  ∀ n, P6189515462261614868.a n = A096796 n

end A096796

/-! ## A096796.P18294437624263132842

`∑[Δ[A096824(n)]%A078343(n)]`
-/

namespace A096796.P18294437624263132842
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096824 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (n + 1) - f2 n) (A078343 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A096796.P18294437624263132842

namespace A096796

/-- `∑[Δ[A096824(n)]%A078343(n)]` -/
def P18294437624263132842.Spec : Prop :=
  ∀ n, P18294437624263132842.a n = A096796 n

end A096796

