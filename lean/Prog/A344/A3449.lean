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
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C035
import Seq.B000.C037
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C042
import Seq.B000.C045
import Seq.B000.C050
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C013
import Seq.B001.C014
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import Seq.B002.C008
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
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
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A344901: Triangle read by rows: T(n,k) is the number of permutations of length n that have k same elements at the same positions with its inverse permutation for 0 <= k <= n.

The programs for A344901, the canonical program `A344901.P7014127166679660573` is in `Seq.B001.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A344901 has offset 0).

The definition of A344901 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A344901.P7014127166679660573

`C(row(n), col(n))*A000085(col(n))*A038205(row(n)-col(n))`

The canonical program, it is in `Seq.B001.C013`.
-/

namespace A344901

/-- `C(row(n), col(n))*A000085(col(n))*A038205(row(n)-col(n))` -/
def P7014127166679660573.Spec : Prop :=
  ∀ n, P7014127166679660573.a n = A344901 n

theorem P7014127166679660573.correct : P7014127166679660573.Spec := by
  intro n
  simp only [A344901]

end A344901

/-! ## A344901.P16680526122376686333

`lcm(A097876(A000124(n)), A134832(n))`
-/

namespace A344901.P16680526122376686333
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A097876 (A000124 n).toNat) (A134832 n)

end

end A344901.P16680526122376686333

namespace A344901

/-- `lcm(A097876(A000124(n)), A134832(n))` -/
def P16680526122376686333.Spec : Prop :=
  ∀ n, (P16680526122376686333.a n : ℤ) = A344901 n

end A344901

/-! ## A344901.P2721693152321207868

`and(A000010(A275972(n)), A152279(n+1))`
-/

namespace A344901.P2721693152321207868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000010 (A275972 n).toNat) (A152279 (n + 1))

end

end A344901.P2721693152321207868

namespace A344901

/-- `and(A000010(A275972(n)), A152279(n+1))` -/
def P2721693152321207868.Spec : Prop :=
  ∀ n, P2721693152321207868.a n = A344901 n

end A344901

/-! ## A344901.P14529624459349577249

`A265744(abs(A174297(n+2))*A145224(n))`
-/

namespace A344901.P14529624459349577249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265744 (|A174297 (n + 2)| * A145224 n).toNat

end

end A344901.P14529624459349577249

namespace A344901

/-- `A265744(abs(A174297(n+2))*A145224(n))` -/
def P14529624459349577249.Spec : Prop :=
  ∀ n, P14529624459349577249.a n = A344901 n

end A344901

/-! ## A344901.P8651337130370404748

`and(A001917(A000051(n)), A292768(3*n+5))`
-/

namespace A344901.P8651337130370404748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001917 (A000051 n).toNat) (A292768 (3 * n + 5))

end

end A344901.P8651337130370404748

namespace A344901

/-- `and(A001917(A000051(n)), A292768(3*n+5))` -/
def P8651337130370404748.Spec : Prop :=
  ∀ n, P8651337130370404748.a n = A344901 n

end A344901

/-!
# A344902: Number of open tours by a biased rook on a specific f(n) X 1 board, where f(n) = A070941(n) and cells are colored white or black according to the binary representation of 2n.

The programs for A344902, the canonical program `A344902.P10574121006049351700` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A344902 has offset 0).

The definition of A344902 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A344902.P10574121006049351700

`A000120(n)!*(1+A000120(n))^(A023416(n)+1)`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A344902

/-- `A000120(n)!*(1+A000120(n))^(A023416(n)+1)` -/
def P10574121006049351700.Spec : Prop :=
  ∀ n, P10574121006049351700.a n = (A344902 n : ℚ)

end A344902

/-! ## A344902.P11604610681761454377

`A284005(A073138(n))`
-/

namespace A344902.P11604610681761454377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284005 (A073138 n).toNat

end

end A344902.P11604610681761454377

namespace A344902

/-- `A284005(A073138(n))` -/
def P11604610681761454377.Spec : Prop :=
  ∀ n, P11604610681761454377.a n = A344902 n

end A344902

/-! ## A344902.P9321008587874018974

`A284005(A319650(n)+n)`
-/

namespace A344902.P9321008587874018974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284005 (A319650 n + (n : ℤ)).toNat

end

end A344902.P9321008587874018974

namespace A344902

/-- `A284005(A319650(n)+n)` -/
def P9321008587874018974.Spec : Prop :=
  ∀ n, P9321008587874018974.a n = A344902 n

end A344902

/-! ## A344902.P4912304216267570387

`A284005(A073139(n)+A073137(n))`
-/

namespace A344902.P4912304216267570387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284005 (A073139 n + A073137 n).toNat

end

end A344902.P4912304216267570387

namespace A344902

/-- `A284005(A073139(n)+A073137(n))` -/
def P4912304216267570387.Spec : Prop :=
  ∀ n, P4912304216267570387.a n = A344902 n

end A344902

/-! ## A344902.P8098039388461436720

`A284005(A164884(n)+A038573(n))`
-/

namespace A344902.P8098039388461436720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284005 (A164884 n + A038573 n).toNat

end

end A344902.P8098039388461436720

namespace A344902

/-- `A284005(A164884(n)+A038573(n))` -/
def P8098039388461436720.Spec : Prop :=
  ∀ n, P8098039388461436720.a n = A344902 n

end A344902

/-! ## A344902.P5568944471431894528

`A284005(A062383(n)-A080100(n))`
-/

namespace A344902.P5568944471431894528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284005 (A062383 n - A080100 n).toNat

end

end A344902.P5568944471431894528

namespace A344902

/-- `A284005(A062383(n)-A080100(n))` -/
def P5568944471431894528.Spec : Prop :=
  ∀ n, P5568944471431894528.a n = A344902 n

end A344902

/-! ## A344902.P10892848652174390795

`A284005(A038573(n)*A080100(n))`
-/

namespace A344902.P10892848652174390795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284005 (A038573 n * A080100 n).toNat

end

end A344902.P10892848652174390795

namespace A344902

/-- `A284005(A038573(n)*A080100(n))` -/
def P10892848652174390795.Spec : Prop :=
  ∀ n, P10892848652174390795.a n = A344902 n

end A344902

/-! ## A344902.P6902414256086835997

`A284005(A164884(2*n)-A164884(n))`
-/

namespace A344902.P6902414256086835997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284005 (A164884 (2 * n) - A164884 n).toNat

end

end A344902.P6902414256086835997

namespace A344902

/-- `A284005(A164884(2*n)-A164884(n))` -/
def P6902414256086835997.Spec : Prop :=
  ∀ n, P6902414256086835997.a n = A344902 n

end A344902

/-! ## A344902.P7703253472203243926

`A284001(A073138(2*n+1))`
-/

namespace A344902.P7703253472203243926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284001 (A073138 (2 * n + 1)).toNat

end

end A344902.P7703253472203243926

namespace A344902

/-- `A284001(A073138(2*n+1))` -/
def P7703253472203243926.Spec : Prop :=
  ∀ n, P7703253472203243926.a n = A344902 n

end A344902

/-! ## A344902.P9522770113643138146

`A284001(A073138(n)+A062383(n))`
-/

namespace A344902.P9522770113643138146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284001 (A073138 n + A062383 n).toNat

end

end A344902.P9522770113643138146

namespace A344902

/-- `A284001(A073138(n)+A062383(n))` -/
def P9522770113643138146.Spec : Prop :=
  ∀ n, P9522770113643138146.a n = A344902 n

end A344902

/-! ## A344902.P11014523060959769591

`A284001(xor(A062383(n), A073138(n)))`
-/

namespace A344902.P11014523060959769591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284001 (Int.xor (A062383 n) (A073138 n)).toNat

end

end A344902.P11014523060959769591

namespace A344902

/-- `A284001(xor(A062383(n), A073138(n)))` -/
def P11014523060959769591.Spec : Prop :=
  ∀ n, P11014523060959769591.a n = A344902 n

end A344902

/-!
# A344903: a(n) is the number of optimal strategies for Player I in the Penney-Ante game with strings of length n.

The programs for A344903, the canonical program `A344903.P9374189029757906793` is in `Seq.B000.C045`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A344903 has offset 3).

The definition of A344903 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A344903.P9374189029757906793

`2*a(n-1)-(-1)^(n+3)*a(floor((n+3)/2)-2)` with `a(0)=4, a(1)=2, a(2)=2`

The canonical program, it is in `Seq.B000.C045`.
-/

namespace A344903

/-- `2*a(n-1)-(-1)^(n+3)*a(floor((n+3)/2)-2)` -/
def P9374189029757906793.Spec : Prop :=
  ∀ n, P9374189029757906793.a n = A344903 (n + 3)

theorem P9374189029757906793.correct : P9374189029757906793.Spec := by
  intro n
  simp only [A344903, Nat.add_sub_cancel]

end A344903

/-! ## A344903.P3708579223473971944

`A152046(n)-A009001(A001550(n))`
-/

namespace A344903.P3708579223473971944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152046 n - A009001 (A001550 n).toNat

end

end A344903.P3708579223473971944

namespace A344903

/-- `A152046(n)-A009001(A001550(n))` -/
def P3708579223473971944.Spec : Prop :=
  ∀ n, P3708579223473971944.a n = A344903 (n + 3)

end A344903

/-! ## A344903.P18410149240784129780

`A349448(A073457(n+1))+A078008(n)`
-/

namespace A344903.P18410149240784129780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349448 (A073457 (n + 1)).toNat + A078008 n

end

end A344903.P18410149240784129780

namespace A344903

/-- `A349448(A073457(n+1))+A078008(n)` -/
def P18410149240784129780.Spec : Prop :=
  ∀ n, P18410149240784129780.a n = A344903 (n + 3)

end A344903

/-! ## A344903.P11644050896534273558

`A339579(A337109(n+1))+A078008(n)`
-/

namespace A344903.P11644050896534273558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339579 (A337109 (n + 1)).toNat + A078008 n

end

end A344903.P11644050896534273558

namespace A344903

/-- `A339579(A337109(n+1))+A078008(n)` -/
def P11644050896534273558.Spec : Prop :=
  ∀ n, P11644050896534273558.a n = A344903 (n + 3)

end A344903

/-! ## A344903.P6658804769064367849

`A359514(A052551(3*(n+1)))+A078008(n)`
-/

namespace A344903.P6658804769064367849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359514 (A052551 (3 * (n + 1))).toNat + A078008 n

end

end A344903.P6658804769064367849

namespace A344903

/-- `A359514(A052551(3*(n+1)))+A078008(n)` -/
def P6658804769064367849.Spec : Prop :=
  ∀ n, P6658804769064367849.a n = A344903 (n + 3)

end A344903

/-!
# A344904: Numbers that are the sum of four fourth powers in six or more ways.

The programs for A344904, there is no canonical definition to state claims against.
-/

/-! ## A344904.P14213623848892656017

`∪[A344921(n+1), A344922(n+1)]`
-/

namespace A344904.P14213623848892656017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344921 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344922 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A344904.P14213623848892656017

/-!
# A344907: Number of polygon edges formed when every pair of vertices of a regular (2n-1)-gon is joined by an infinite line.

The programs for A344907, the canonical program `A344907.P3907674573932501621` is in `Seq.B000.C045`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A344907 has offset 1).

The definition of A344907 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A344907.P585910811351834387

`ogf((3x+15x^2+69x^3+9x^4)/(1-5x+10x^2-10x^3+5x^4-x^5))`
-/

namespace A344907.P585910811351834387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 3, 15, 69, 9] [1, -5, 10, -10, 5, -1] n

end

end A344907.P585910811351834387

namespace A344907

/-- `ogf((3x+15x^2+69x^3+9x^4)/(1-5x+10x^2-10x^3+5x^4-x^5))` -/
def P585910811351834387.Spec : Prop :=
  ∀ n, P585910811351834387.a n = A344907 (n + 1)

end A344907

/-! ## A344907.P3907674573932501621

`n*(2*(n+1)-1)*(2*(n-3)*(n+1)+9)`

The canonical program, it is in `Seq.B000.C045`.
-/

namespace A344907

/-- `n*(2*(n+1)-1)*(2*(n-3)*(n+1)+9)` -/
def P3907674573932501621.Spec : Prop :=
  ∀ n, P3907674573932501621.a n = A344907 (n + 1)

theorem P3907674573932501621.correct : P3907674573932501621.Spec := by
  intro n
  simp only [A344907, Nat.add_sub_cancel]

end A344907

/-! ## A344907.P6990516723635157836

`A046092(n)+n*A141530(n)`
-/

namespace A344907.P6990516723635157836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046092 n + (n : ℤ) * A141530 n

end

end A344907.P6990516723635157836

namespace A344907

/-- `A046092(n)+n*A141530(n)` -/
def P6990516723635157836.Spec : Prop :=
  ∀ n, P6990516723635157836.a n = A344907 (n + 1)

theorem P6990516723635157836.correct : P6990516723635157836.Spec := by
  intro n
  simp only [A344907, Nat.add_sub_cancel, A344907.P6990516723635157836.a, A344907.P3907674573932501621.a, A046092, A046092.P16411658895297056450.a, A141530, A141530.P17727032395850956273.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A344907

/-! ## A344907.P9145672406120357472

`∑{#}[2*n, 2*n*(n-1)²+#]`
-/

namespace A344907.P9145672406120357472
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), ((2 * n : ℤ) * ((n : ℤ) - 1) ^ 2 + (k : ℤ))

end

end A344907.P9145672406120357472

namespace A344907

/-- `∑{#}[2*n, 2*n*(n-1)²+#]` -/
def P9145672406120357472.Spec : Prop :=
  ∀ n, P9145672406120357472.a n = A344907 (n + 1)

end A344907

/-! ## A344907.P14151506455370361149

`A344899(Δ[n²])`
-/

namespace A344907.P14151506455370361149
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344899 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A344907.P14151506455370361149

namespace A344907

/-- `A344899(Δ[n²])` -/
def P14151506455370361149.Spec : Prop :=
  ∀ n, P14151506455370361149.a n = A344907 (n + 1)

end A344907

/-!
# A344908: Sum of the distinct odd-indexed prime divisors, p_{2k-1}, of n.

The programs for A344908, the canonical program `A344908.P16333151321393478862` is in `Seq.B001.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A344908 has offset 1).

The definition of A344908 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A344908.P16333151321393478862

`∑{p}[n+1, #*A000720(#)%2]`

The canonical program, it is in `Seq.B001.C013`.
-/

namespace A344908

/-- `∑{p}[n+1, #*A000720(#)%2]` -/
def P16333151321393478862.Spec : Prop :=
  ∀ n, P16333151321393478862.a n = A344908 (n + 1)

theorem P16333151321393478862.correct : P16333151321393478862.Spec := by
  intro n
  simp only [A344908, Nat.add_sub_cancel]

end A344908

/-! ## A344908.P7969214444414232712

`A008472(n+1)-A344931(n+1)`
-/

namespace A344908.P7969214444414232712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (n + 1) - A344931 (n + 1)

end

end A344908.P7969214444414232712

namespace A344908

/-- `A008472(n+1)-A344931(n+1)` -/
def P7969214444414232712.Spec : Prop :=
  ∀ n, P7969214444414232712.a n = A344908 (n + 1)

end A344908

/-! ## A344908.P5013333264489861533

`∑{p}[A247503(n+1), #]`
-/

namespace A344908.P5013333264489861533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247503 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A344908.P5013333264489861533

namespace A344908

/-- `∑{p}[A247503(n+1), #]` -/
def P5013333264489861533.Spec : Prop :=
  ∀ n, (P5013333264489861533.a n : ℤ) = A344908 (n + 1)

end A344908

/-! ## A344908.P5043020849654374694

`∑{p}[A351517(n+1), #]`
-/

namespace A344908.P5043020849654374694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351517 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A344908.P5043020849654374694

namespace A344908

/-- `∑{p}[A351517(n+1), #]` -/
def P5043020849654374694.Spec : Prop :=
  ∀ n, (P5043020849654374694.a n : ℤ) = A344908 (n + 1)

end A344908

/-! ## A344908.P11905380437657121300

`∑{p}[n+1, A385625(#)]`
-/

namespace A344908.P11905380437657121300
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A385625 p

end

end A344908.P11905380437657121300

namespace A344908

/-- `∑{p}[n+1, A385625(#)]` -/
def P11905380437657121300.Spec : Prop :=
  ∀ n, P11905380437657121300.a n = A344908 (n + 1)

end A344908

/-! ## A344908.P7773285099346039389

`∑{p}[n+1, #*A324966(#)]`
-/

namespace A344908.P7773285099346039389
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), (p : ℤ) * A324966 p

end

end A344908.P7773285099346039389

namespace A344908

/-- `∑{p}[n+1, #*A324966(#)]` -/
def P7773285099346039389.Spec : Prop :=
  ∀ n, P7773285099346039389.a n = A344908 (n + 1)

end A344908

/-! ## A344908.P3701059945435786358

`∑{p}[n+1, #]-A344931(n+1)`
-/

namespace A344908.P3701059945435786358
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℤ) - A344931 (n + 1)

end

end A344908.P3701059945435786358

namespace A344908

/-- `∑{p}[n+1, #]-A344931(n+1)` -/
def P3701059945435786358.Spec : Prop :=
  ∀ n, P3701059945435786358.a n = A344908 (n + 1)

end A344908

/-! ## A344908.P3110840227237326318

`∑{p}[(n+1)/A248101(n+1), #]`
-/

namespace A344908.P3110840227237326318
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A248101 (n + 1) : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, p

end

end A344908.P3110840227237326318

namespace A344908

/-- `∑{p}[(n+1)/A248101(n+1), #]` -/
def P3110840227237326318.Spec : Prop :=
  ∀ n, (P3110840227237326318.a n : ℤ) = A344908 (n + 1)

end A344908

/-! ## A344908.P312760267613165224

`∑{p}[n+1, #*A087712(#)%2]`
-/

namespace A344908.P312760267613165224
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), (p : ℤ) * Int.tmod (A087712 p) 2

end

end A344908.P312760267613165224

namespace A344908

/-- `∑{p}[n+1, #*A087712(#)%2]` -/
def P312760267613165224.Spec : Prop :=
  ∀ n, P312760267613165224.a n = A344908 (n + 1)

end A344908

/-! ## A344908.P3213101927245539712

`A008472(A247503(n+1))`
-/

namespace A344908.P3213101927245539712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (A247503 (n + 1)).toNat

end

end A344908.P3213101927245539712

namespace A344908

/-- `A008472(A247503(n+1))` -/
def P3213101927245539712.Spec : Prop :=
  ∀ n, P3213101927245539712.a n = A344908 (n + 1)

end A344908

/-! ## A344908.P8495773309392044689

`A001414(A351517(n+1))`
-/

namespace A344908.P8495773309392044689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A351517 (n + 1)).toNat

end

end A344908.P8495773309392044689

namespace A344908

/-- `A001414(A351517(n+1))` -/
def P8495773309392044689.Spec : Prop :=
  ∀ n, P8495773309392044689.a n = A344908 (n + 1)

end A344908

/-! ## A344908.P9448306402423178473

`A344931(n+1)+A332424(n+1)`
-/

namespace A344908.P9448306402423178473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344931 (n + 1) + A332424 (n + 1)

end

end A344908.P9448306402423178473

namespace A344908

/-- `A344931(n+1)+A332424(n+1)` -/
def P9448306402423178473.Spec : Prop :=
  ∀ n, P9448306402423178473.a n = A344908 (n + 1)

end A344908

/-! ## A344908.P9620624679531294579

`A345278(n+1)-A324967(n+1)`
-/

namespace A344908.P9620624679531294579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345278 (n + 1) - A324967 (n + 1)

end

end A344908.P9620624679531294579

namespace A344908

/-- `A345278(n+1)-A324967(n+1)` -/
def P9620624679531294579.Spec : Prop :=
  ∀ n, P9620624679531294579.a n = A344908 (n + 1)

end A344908

/-! ## A344908.P16856946401329540501

`A008472((n+1)/A248101(n+1))`
-/

namespace A344908.P16856946401329540501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A248101 (n + 1) : ℚ))).toNat

end

end A344908.P16856946401329540501

namespace A344908

/-- `A008472((n+1)/A248101(n+1))` -/
def P16856946401329540501.Spec : Prop :=
  ∀ n, P16856946401329540501.a n = A344908 (n + 1)

end A344908

/-! ## A344908.P7068901380143418445

`∑{d}[n+1, A061397(#)]-A344931(n+1)`
-/

namespace A344908.P7068901380143418445
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A061397 d - A344931 (n + 1)

end

end A344908.P7068901380143418445

namespace A344908

/-- `∑{d}[n+1, A061397(#)]-A344931(n+1)` -/
def P7068901380143418445.Spec : Prop :=
  ∀ n, P7068901380143418445.a n = A344908 (n + 1)

end A344908

/-! ## A344908.P1315731965504197598

`A001414(∏{p}[n+1, #])-A344931(n+1)`
-/

namespace A344908.P1315731965504197598
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (∏ p ∈ Nat.primeFactors (f1 n), p) - A344931 (n + 1)

end

end A344908.P1315731965504197598

namespace A344908

/-- `A001414(∏{p}[n+1, #])-A344931(n+1)` -/
def P1315731965504197598.Spec : Prop :=
  ∀ n, P1315731965504197598.a n = A344908 (n + 1)

end A344908

/-! ## A344908.P16674612088630859899

`A023889(∏{p}[n+1, #])-A344931(n+1)`
-/

namespace A344908.P16674612088630859899
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023889 (∏ p ∈ Nat.primeFactors (f1 n), p) - A344931 (n + 1)

end

end A344908.P16674612088630859899

namespace A344908

/-- `A023889(∏{p}[n+1, #])-A344931(n+1)` -/
def P16674612088630859899.Spec : Prop :=
  ∀ n, P16674612088630859899.a n = A344908 (n + 1)

end A344908

/-! ## A344908.P15931706767729144773

`A008472(n+1)-A008472(A248101(n+1))`
-/

namespace A344908.P15931706767729144773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (n + 1) - A008472 (A248101 (n + 1)).toNat

end

end A344908.P15931706767729144773

namespace A344908

/-- `A008472(n+1)-A008472(A248101(n+1))` -/
def P15931706767729144773.Spec : Prop :=
  ∀ n, P15931706767729144773.a n = A344908 (n + 1)

end A344908

/-! ## A344908.P790153859153396382

`A181894(A007947(n+1))-A344931(n+1)`
-/

namespace A344908.P790153859153396382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181894 (A007947 (n + 1)).toNat - A344931 (n + 1)

end

end A344908.P790153859153396382

namespace A344908

/-- `A181894(A007947(n+1))-A344931(n+1)` -/
def P790153859153396382.Spec : Prop :=
  ∀ n, P790153859153396382.a n = A344908 (n + 1)

end A344908

/-! ## A344908.P7990195372665254872

`A055631(A247503(n+1)²)+A001221(A247503(n+1))`
-/

namespace A344908.P7990195372665254872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055631 (A247503 (n + 1) ^ 2).toNat + A001221 (A247503 (n + 1)).toNat

end

end A344908.P7990195372665254872

namespace A344908

/-- `A055631(A247503(n+1)²)+A001221(A247503(n+1))` -/
def P7990195372665254872.Spec : Prop :=
  ∀ n, P7990195372665254872.a n = A344908 (n + 1)

end A344908

/-!
# A344910: T(n, k) = denominator([x^k] [z^n] ((1 - i*z)/(1 + i*z))^(i*x)*(1 + z^2)^(-3/4)). Denominators of the coefficients of the symmetric Meixner-Pollaczek polynomials P^(3/4)_{n}(x, Pi/2). Triangle read by rows, T(n, k) for 0 <= k <= n.

The programs for A344910, there is no canonical definition to state claims against.
-/

/-! ## A344910.P18194414210907573077

`A017911(A322117(n)%A377898(n+1))`
-/

namespace A344910.P18194414210907573077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017911 (Int.tmod (A322117 n) (A377898 (n + 1))).toNat

end

end A344910.P18194414210907573077

/-! ## A344910.P15315708200962918027

`gcd(A121373(n+1), A346875(A341790(n+1)))`
-/

namespace A344910.P15315708200962918027
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A121373 (n + 1)) (A346875 (A341790 (n + 1)).toNat)

end

end A344910.P15315708200962918027

/-! ## A344910.P7784454870795422825

`gcd(A078898(A095264(n+1)), A346397(n+2))`
-/

namespace A344910.P7784454870795422825
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A078898 (A095264 (n + 1)).toNat) (A346397 (n + 2))

end

end A344910.P7784454870795422825

/-! ## A344910.P17578945403540271972

`gcd(A085313(A003418(n)), A179016(2*(n+1)))`
-/

namespace A344910.P17578945403540271972
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A085313 (A003418 n).toNat) (A179016 (2 * (n + 1)))

end

end A344910.P17578945403540271972

/-! ## A344910.P10922751591873434140

`A000203(gcd(A000041(n), A362995(3*n+4)))`
-/

namespace A344910.P10922751591873434140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (Int.gcd (A000041 n) (A362995 (3 * n + 4)))

end

end A344910.P10922751591873434140

/-!
# A344911: Concatenated Bessel-scaled Pascal triangles. Irregular triangle read by rows, T(n,k) with n >= 0 and 0 <= k <= (2*n*(n + 4) - 1 + (-1)^n)/8.

The programs for A344911, there is no canonical definition to state claims against.
-/

/-! ## A344911.P1426179153593089221

`A152198(lt[A374700(3*(n+1)), A060187(n+1)])`
-/

namespace A344911.P1426179153593089221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374700 (3 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060187 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152198 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A344911.P1426179153593089221

/-! ## A344911.P2384410798730324863

`A007318(A291166(4*(n+1))%A291166(n+1))`
-/

namespace A344911.P2384410798730324863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Int.tmod (A291166 (4 * (n + 1))) (A291166 (n + 1))).toNat

end

end A344911.P2384410798730324863

/-!
# A344912: Irregular triangle read by rows, Trow(n) = Seq_{k=0..n/3} Seq_{j=0..n-3*k} (n! * binomial(n - 3*k, j)) / (k!*(n - 3*k)!*3^k).

The programs for A344912, there is no canonical definition to state claims against.
-/

/-! ## A344912.P7932798255560652700

`A326291(A318155(n))+A067924(n+1)`
-/

namespace A344912.P7932798255560652700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326291 (A318155 n).toNat + A067924 (n + 1)

end

end A344912.P7932798255560652700

/-!
# A344913: Table read by rows, T(n, k) (for 0 <= k <= n) = (-2)^(n - k)*k!*Stirling2(n, k).

The programs for A344913, there is no canonical definition to state claims against.
-/

/-! ## A344913.P12630245382852469125

`(T(n-1,k-1)-2*T(n-1,k))*col(n)` with `a(0)=1`
-/

namespace A344913.P12630245382852469125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (SequenceMachineLib.triUpLeft a n - 2 * SequenceMachineLib.triUp a n) * (SequenceMachineLib.triCol n : ℤ)

end

end A344913.P12630245382852469125

/-! ## A344913.P16630170663786753023

`2^(C(comp[∑[n]]-n, 2)-(n+1))*A278075(n)`
-/

namespace A344913.P16630170663786753023
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n + 1 : ℤ) : ℤ) * (A278075 n : ℚ)

end

end A344913.P16630170663786753023

/-! ## A344913.P826018927296544628

`A130321(n)*A278075(n)`
-/

namespace A344913.P826018927296544628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 n * A278075 n

end

end A344913.P826018927296544628

/-! ## A344913.P14853951805844168343

`sqrt(A262616(n))*A278075(n)`
-/

namespace A344913.P14853951805844168343
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A262616 n : ℝ) * (A278075 n : ℝ)

end

end A344913.P14853951805844168343

/-! ## A344913.P16447378423373297815

`A057728(n+1)*A278075(n)`
-/

namespace A344913.P16447378423373297815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057728 (n + 1) * A278075 n

end

end A344913.P16447378423373297815

/-!
# A344914: T(n, k) = 2^(3*k)*(n - 3*k)!, for n >= 0 and 0 <= k <= floor(n/3). Triangle read by rows.

The programs for A344914, there is no canonical definition to state claims against.
-/

/-! ## A344914.P9833773839970892461

`∏{e}[1-A223911(n), #+1]`
-/

namespace A344914.P9833773839970892461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A223911 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1)

end

end A344914.P9833773839970892461

/-! ## A344914.P17736986176007418845

`gcd(A004869(n+1)!, A159741(n+1))`
-/

namespace A344914.P17736986176007418845
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Nat.factorial (A004869 (n + 1)).toNat : ℤ) (A159741 (n + 1))

end

end A344914.P17736986176007418845

/-! ## A344914.P16215742935567654192

`gcd(A067824(A060727(n)), A152286(n))`
-/

namespace A344914.P16215742935567654192
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A067824 (A060727 n).toNat) (A152286 n)

end

end A344914.P16215742935567654192

/-! ## A344914.P646939329375839810

`gcd(A033581(A137955(n)), A279258(n))`
-/

namespace A344914.P646939329375839810
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A033581 (A137955 n).toNat) (A279258 n)

end

end A344914.P646939329375839810

/-!
# A344915: T(n, k) = (3^(-k)*n!*2^(n - 3*k))/(k!*(n - 3*k)!), for n >= 0 and 0 <= k <= floor(n/3). Triangle read by rows.

The programs for A344915, there is no canonical definition to state claims against.
-/

/-! ## A344915.P16495634063209137782

`A004175(lt[A362633(n+1), A004175(n)])`
-/

namespace A344915.P16495634063209137782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362633 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004175 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004175 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A344915.P16495634063209137782

/-! ## A344915.P2881942903744377286

`A004175(lt[A185264(n+4), A004175(n)])`
-/

namespace A344915.P2881942903744377286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185264 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004175 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004175 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A344915.P2881942903744377286

/-! ## A344915.P669602217773483167

`A004175(lt[n*A185264(n), A004175(n)])`
-/

namespace A344915.P669602217773483167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A185264 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004175 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004175 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A344915.P669602217773483167

/-! ## A344915.P15535627144058344956

`A004175(lt[A185264(n)²², A004175(n)])`
-/

namespace A344915.P15535627144058344956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A185264 n ^ 2) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004175 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004175 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A344915.P15535627144058344956

/-! ## A344915.P8371532425819804475

`A004175(lt[A355536(3*n+5), A004175(n)])`
-/

namespace A344915.P8371532425819804475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355536 (3 * n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004175 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004175 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A344915.P8371532425819804475

/-!
# A344918: a(n) = denominator(4^(n + 1)*zeta(-n, 1/4)).

The programs for A344918, there is no canonical definition to state claims against.
-/

/-! ## A344918.P3972279763646755892

`ceil(A075180(n)/2)`
-/

namespace A344918.P3972279763646755892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A075180 n : ℚ) / 2⌉

end

end A344918.P3972279763646755892

/-! ## A344918.P11616988228214708551

`A185633(n+1)/2`
-/

namespace A344918.P11616988228214708551
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A185633 (n + 1) : ℚ) / 2

end

end A344918.P11616988228214708551

/-! ## A344918.P2577991865145400039

`ceil(A079612(1+n)/4)`
-/

namespace A344918.P2577991865145400039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A079612 (1 + n) : ℚ) / 4⌉

end

end A344918.P2577991865145400039

/-! ## A344918.P13573331620771578431

`A075180(n*n%2)/2`
-/

namespace A344918.P13573331620771578431
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075180 (n * (n % 2)) : ℚ) / 2

end

end A344918.P13573331620771578431

/-! ## A344918.P8909111609023491948

`A075180(lcm(2, n)-n)/2`
-/

namespace A344918.P8909111609023491948
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075180 (Nat.lcm 2 n - n) : ℚ) / 2

end

end A344918.P8909111609023491948

/-! ## A344918.P12502083024450372001

`A075180(n*and(1, n))/2`
-/

namespace A344918.P12502083024450372001
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075180 (n * Nat.land 1 n) : ℚ) / 2

end

end A344918.P12502083024450372001

/-! ## A344918.P10150492427854607342

`A075180(Δ[A008794(n)])/2`
-/

namespace A344918.P10150492427854607342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008794 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075180 (f1 (n + 1) - f1 n).toNat : ℚ) / 2

end

end A344918.P10150492427854607342

/-! ## A344918.P2057854773838019355

`A079612(n+1)/A010694(n)`
-/

namespace A344918.P2057854773838019355
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A079612 (n + 1) : ℚ) / (A010694 n : ℚ)

end

end A344918.P2057854773838019355

/-! ## A344918.P7204975186025584914

`A075180(n*A000035(n))/2`
-/

namespace A344918.P7204975186025584914
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075180 ((n : ℤ) * A000035 n).toNat : ℚ) / 2

end

end A344918.P7204975186025584914

/-! ## A344918.P10417117995781950129

`A040001(n)/2*A075180(n)`
-/

namespace A344918.P10417117995781950129
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A040001 n : ℚ) / 2 * (A075180 n : ℚ)

end

end A344918.P10417117995781950129

/-!
# A344919: a(n) = n^n - n*(n + 1) / 2.

The programs for A344919, the canonical program `A344919.P16693293743686075354` is in `Seq.B000.C045`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A344919 has offset 0).

The definition of A344919 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^n-n*(n+1)/2` (program `A344919.P9704165857536410933`, by `A344919.P9704165857536410933.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A344919.P9704165857536410933

`n^n-n*(n+1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A344919.P9704165857536410933
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n ^ n : ℚ) - (n * (n + 1) : ℚ) / 2

end

end A344919.P9704165857536410933

namespace A344919

/-- `n^n-n*(n+1)/2` -/
def P9704165857536410933.Spec : Prop :=
  ∀ n, P9704165857536410933.a n = (A344919 n : ℚ)

theorem P9704165857536410933.correct : P9704165857536410933.Spec := by
  intro n
  simp only [A344919, Nat.add_sub_cancel, A344919.P9704165857536410933.a, A344919.P16693293743686075354.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A344919

/-! ## A344919.P15444412222158139105

`n^n-∑[gcd(n, n)]`
-/

namespace A344919.P15444412222158139105
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd n n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A344919.P15444412222158139105

namespace A344919

/-- `n^n-∑[gcd(n, n)]` -/
def P15444412222158139105.Spec : Prop :=
  ∀ n, P15444412222158139105.a n = A344919 n

end A344919

/-! ## A344919.P2854306287417302445

`n^n-∑[lcm(n, n)]`
-/

namespace A344919.P2854306287417302445
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm n n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A344919.P2854306287417302445

namespace A344919

/-- `n^n-∑[lcm(n, n)]` -/
def P2854306287417302445.Spec : Prop :=
  ∀ n, P2854306287417302445.a n = A344919 n

end A344919

/-! ## A344919.P8648696599317327512

`n^n-∑[or(n, n)]`
-/

namespace A344919.P8648696599317327512
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor n n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A344919.P8648696599317327512

namespace A344919

/-- `n^n-∑[or(n, n)]` -/
def P8648696599317327512.Spec : Prop :=
  ∀ n, P8648696599317327512.a n = A344919 n

end A344919

/-! ## A344919.P14645320663855008289

`n^n-C(n+1, 2)`
-/

namespace A344919.P14645320663855008289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ n : ℤ) - (Nat.choose (n + 1) 2 : ℤ)

end

end A344919.P14645320663855008289

namespace A344919

/-- `n^n-C(n+1, 2)` -/
def P14645320663855008289.Spec : Prop :=
  ∀ n, P14645320663855008289.a n = A344919 n

theorem P14645320663855008289.correct : P14645320663855008289.Spec := by
  intro n
  simp only [A344919, Nat.add_sub_cancel, A344919.P14645320663855008289.a, A344919.P16693293743686075354.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A344919

/-! ## A344919.P16693293743686075354

`n^n-C(n, 2)-n`

The canonical program, it is in `Seq.B000.C045`.
-/

namespace A344919

/-- `n^n-C(n, 2)-n` -/
def P16693293743686075354.Spec : Prop :=
  ∀ n, P16693293743686075354.a n = A344919 n

theorem P16693293743686075354.correct : P16693293743686075354.Spec := by
  intro n
  simp only [A344919]

end A344919

/-! ## A344919.P7972795190113904516

`abs(∑[n]-A000312(n))`
-/

namespace A344919.P7972795190113904516
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A000312 n|

end

end A344919.P7972795190113904516

namespace A344919

/-- `abs(∑[n]-A000312(n))` -/
def P7972795190113904516.Spec : Prop :=
  ∀ n, P7972795190113904516.a n = A344919 n

end A344919

/-! ## A344919.P9802451313409666008

`abs(n^n-A000217(n))`
-/

namespace A344919.P9802451313409666008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n ^ n : ℤ) - A000217 n|

end

end A344919.P9802451313409666008

namespace A344919

/-- `abs(n^n-A000217(n))` -/
def P9802451313409666008.Spec : Prop :=
  ∀ n, P9802451313409666008.a n = A344919 n

end A344919

/-! ## A344919.P2434736903875888989

`abs(sqrt(A000537(n))-n^n)`
-/

namespace A344919.P2434736903875888989
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  |Real.sqrt (A000537 n : ℝ) - (n ^ n : ℝ)|

end

end A344919.P2434736903875888989

namespace A344919

/-- `abs(sqrt(A000537(n))-n^n)` -/
def P2434736903875888989.Spec : Prop :=
  ∀ n, P2434736903875888989.a n = (A344919 n : ℝ)

end A344919

/-! ## A344919.P623758553329982291

`abs(A000096(n)-n-n^n)`
-/

namespace A344919.P623758553329982291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000096 n - (n : ℤ) - (n ^ n : ℤ)|

end

end A344919.P623758553329982291

namespace A344919

/-- `abs(A000096(n)-n-n^n)` -/
def P623758553329982291.Spec : Prop :=
  ∀ n, P623758553329982291.a n = A344919 n

end A344919

/-!
# A344920: The Worpitzky transform of the squares.

The programs for A344920, the canonical program `A344920.P854948164133172604` is in `Seq.B000.C045`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A344920 has offset 0).

The definition of A344920 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 330 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A344920.P10859104205062182106

`ogf((-x+2x^2)/(1+3x+2x^2))`
-/

namespace A344920.P10859104205062182106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, -1, 2] [1, 3, 2] n

end

end A344920.P10859104205062182106

namespace A344920

/-- `ogf((-x+2x^2)/(1+3x+2x^2))` -/
def P10859104205062182106.Spec : Prop :=
  ∀ n, P10859104205062182106.a n = A344920 n

end A344920

/-! ## A344920.P854948164133172604

`(-2)^n-a(n-1)` with `a(0)=0, a(1)=-1`

The canonical program, it is in `Seq.B000.C045`.
-/

namespace A344920

/-- `(-2)^n-a(n-1)` -/
def P854948164133172604.Spec : Prop :=
  ∀ n, P854948164133172604.a n = A344920 n

theorem P854948164133172604.correct : P854948164133172604.Spec := by
  intro n
  simp only [A344920]

end A344920

/-! ## A344920.P2671353094336361216

`(A095121(n)-1)*(-1)^(n+2)`
-/

namespace A344920.P2671353094336361216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A095121 n - 1) * (-1) ^ (n + 2)

end

end A344920.P2671353094336361216

namespace A344920

/-- `(A095121(n)-1)*(-1)^(n+2)` -/
def P2671353094336361216.Spec : Prop :=
  ∀ n, P2671353094336361216.a n = A344920 n

end A344920

/-! ## A344920.P10526908018203414458

`xor(A280560(n), A284353(n))`
-/

namespace A344920.P10526908018203414458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A280560 n) (A284353 n)

end

end A344920.P10526908018203414458

namespace A344920

/-- `xor(A280560(n), A284353(n))` -/
def P10526908018203414458.Spec : Prop :=
  ∀ n, P10526908018203414458.a n = A344920 n

end A344920

/-! ## A344920.P11542884502369402048

`Δ[A280193(n)-A077925(n)]`
-/

namespace A344920.P11542884502369402048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280193 n - A077925 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A344920.P11542884502369402048

namespace A344920

/-- `Δ[A280193(n)-A077925(n)]` -/
def P11542884502369402048.Spec : Prop :=
  ∀ n, P11542884502369402048.a n = A344920 n

end A344920

/-! ## A344920.P18263962061402329220

`(2-A126646(n))*A062157(n)`
-/

namespace A344920.P18263962061402329220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A126646 n) * A062157 n

end

end A344920.P18263962061402329220

namespace A344920

/-- `(2-A126646(n))*A062157(n)` -/
def P18263962061402329220.Spec : Prop :=
  ∀ n, P18263962061402329220.a n = A344920 n

end A344920

/-! ## A344920.P10390317783493461976

`xor(A040000(n), A225883(n+1))`
-/

namespace A344920.P10390317783493461976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A040000 n) (A225883 (n + 1))

end

end A344920.P10390317783493461976

namespace A344920

/-- `xor(A040000(n), A225883(n+1))` -/
def P10390317783493461976.Spec : Prop :=
  ∀ n, P10390317783493461976.a n = A344920 n

end A344920

/-! ## A344920.P4621746712765792691

`(n-A132738(n))*A062157(n)`
-/

namespace A344920.P4621746712765792691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - A132738 n) * A062157 n

end

end A344920.P4621746712765792691

namespace A344920

/-- `(n-A132738(n))*A062157(n)` -/
def P4621746712765792691.Spec : Prop :=
  ∀ n, P4621746712765792691.a n = A344920 n

end A344920

/-! ## A344920.P8817496259995531057

`Δ[A280193(n)+A151575(n+1)]`
-/

namespace A344920.P8817496259995531057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280193 n + A151575 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A344920.P8817496259995531057

namespace A344920

/-- `Δ[A280193(n)+A151575(n+1)]` -/
def P8817496259995531057.Spec : Prop :=
  ∀ n, P8817496259995531057.a n = A344920 n

end A344920

/-! ## A344920.P11279726120795560097

`Δ[A280193(n)-2*A151575(n)]`
-/

namespace A344920.P11279726120795560097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280193 n - 2 * A151575 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A344920.P11279726120795560097

namespace A344920

/-- `Δ[A280193(n)-2*A151575(n)]` -/
def P11279726120795560097.Spec : Prop :=
  ∀ n, P11279726120795560097.a n = A344920 n

end A344920

/-! ## A344920.P9691691855328521387

`(2-A000225(n+1))*A062157(n)`
-/

namespace A344920.P9691691855328521387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A000225 (n + 1)) * A062157 n

end

end A344920.P9691691855328521387

namespace A344920

/-- `(2-A000225(n+1))*A062157(n)` -/
def P9691691855328521387.Spec : Prop :=
  ∀ n, P9691691855328521387.a n = A344920 n

end A344920

/-! ## A344920.P11249472342888796889

`(A126646(n)-2)*A105812(n+1)`
-/

namespace A344920.P11249472342888796889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A126646 n - 2) * A105812 (n + 1)

end

end A344920.P11249472342888796889

namespace A344920

/-- `(A126646(n)-2)*A105812(n+1)` -/
def P11249472342888796889.Spec : Prop :=
  ∀ n, P11249472342888796889.a n = A344920 n

end A344920

/-! ## A344920.P9796197372069535263

`A080924(A028310(n))-Δ[A080924(n)]`
-/

namespace A344920.P9796197372069535263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080924 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080924 (A028310 n).toNat - (f1 (n + 1) - f1 n)

end

end A344920.P9796197372069535263

namespace A344920

/-- `A080924(A028310(n))-Δ[A080924(n)]` -/
def P9796197372069535263.Spec : Prop :=
  ∀ n, P9796197372069535263.a n = A344920 n

end A344920

/-! ## A344920.P10172863210553120104

`(A285542(2*n)-2)*A105812(n+1)`
-/

namespace A344920.P10172863210553120104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A285542 (2 * n) - 2) * A105812 (n + 1)

end

end A344920.P10172863210553120104

namespace A344920

/-- `(A285542(2*n)-2)*A105812(n+1)` -/
def P10172863210553120104.Spec : Prop :=
  ∀ n, P10172863210553120104.a n = A344920 n

end A344920

/-! ## A344920.P6235029936647311195

`xor(A129654(A129633(n+1)), A225883(n+1))`
-/

namespace A344920.P6235029936647311195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A129654 (A129633 (n + 1)).toNat) (A225883 (n + 1))

end

end A344920.P6235029936647311195

namespace A344920

/-- `xor(A129654(A129633(n+1)), A225883(n+1))` -/
def P6235029936647311195.Spec : Prop :=
  ∀ n, P6235029936647311195.a n = A344920 n

end A344920

/-! ## A344920.P324869701896104703

`A225883(n+1)+A103137(n+1)/A001003(n)`
-/

namespace A344920.P324869701896104703
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A225883 (n + 1) : ℚ) + (A103137 (n + 1) : ℚ) / (A001003 n : ℚ)

end

end A344920.P324869701896104703

namespace A344920

/-- `A225883(n+1)+A103137(n+1)/A001003(n)` -/
def P324869701896104703.Spec : Prop :=
  ∀ n, P324869701896104703.a n = (A344920 n : ℚ)

end A344920

/-!
# A344921: Numbers that are the sum of four fourth powers in exactly six ways.

The programs for A344921, there is no canonical definition to state claims against.
-/

/-! ## A344921.P458265916276201190

`A344904(A309432(n+1)+A032551(n+1))`
-/

namespace A344921.P458265916276201190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344904 (A309432 (n + 1) + A032551 (n + 1)).toNat

end

end A344921.P458265916276201190

/-! ## A344921.P9487963118305600293

`A344904(∑[runs[A273931(n+1)]])`
-/

namespace A344921.P9487963118305600293
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273931 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344904 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A344921.P9487963118305600293

/-! ## A344921.P16953984822879204455

`A344904(∑[runs[A273934(n+1)]])`
-/

namespace A344921.P16953984822879204455
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273934 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344904 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A344921.P16953984822879204455

/-!
# A344922: Numbers that are the sum of four fourth powers in seven or more ways.

The programs for A344922, there is no canonical definition to state claims against.
-/

/-! ## A344922.P2955676309213188270

`∪[A344923(n+1), A344924(n+1)]`
-/

namespace A344922.P2955676309213188270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344923 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344924 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A344922.P2955676309213188270

/-!
# A344923: Numbers that are the sum of four fourth powers in exactly seven ways.

The programs for A344923, there is no canonical definition to state claims against.
-/

/-! ## A344923.P9564148069988086857

`A344922(lt[A060611(n+2), A273369(3*n+1)])`
-/

namespace A344923.P9564148069988086857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060611 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273369 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344922 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A344923.P9564148069988086857

/-! ## A344923.P1337888289787519720

`A344922(lt[A251744(n), A261915(n)])`
-/

namespace A344923.P1337888289787519720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251744 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261915 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344922 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A344923.P1337888289787519720

/-!
# A344924: Numbers that are the sum of four fourth powers in eight or more ways.

The programs for A344924, there is no canonical definition to state claims against.
-/

/-! ## A344924.P14303061100980850660

`∪[A344925(n+1), A344926(n+1)]`
-/

namespace A344924.P14303061100980850660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344925 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344926 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A344924.P14303061100980850660

/-! ## A344924.P8842750089707253729

`A344925(n+1)%A344751(n+1)`
-/

namespace A344924.P8842750089707253729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A344925 (n + 1)) (A344751 (n + 1))

end

end A344924.P8842750089707253729

/-! ## A344924.P8916003602634493349

`A344925(n+1)+val(A355949(2*n+3), 2)`
-/

namespace A344924.P8916003602634493349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344925 (n + 1) + (SequenceMachineLib.valuation (A355949 (2 * n + 3)).toNat 2 : ℤ)

end

end A344924.P8916003602634493349

/-! ## A344924.P17709994615359319121

`A344925(∑[A014963(A025364(n+1))])`
-/

namespace A344924.P17709994615359319121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A025364 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344925 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A344924.P17709994615359319121

/-! ## A344924.P7825869504410336647

`A344925(n+1)+A000007(A112486(n))`
-/

namespace A344924.P7825869504410336647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344925 (n + 1) + A000007 (A112486 n).toNat

end

end A344924.P7825869504410336647

/-!
# A344925: Numbers that are the sum of four fourth powers in exactly eight ways.

The programs for A344925, there is no canonical definition to state claims against.
-/

/-! ## A344925.P9209057935999853191

`A344924(lt[A344912(2*n), A344902(n)])`
-/

namespace A344925.P9209057935999853191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344912 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344902 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344924 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A344925.P9209057935999853191

/-!
# A344926: Numbers that are the sum of four fourth powers in nine or more ways.

The programs for A344926, there is no canonical definition to state claims against.
-/

/-! ## A344926.P10342466440312050192

`∪[A344927(n+1), A344928(n+1)]`
-/

namespace A344926.P10342466440312050192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344927 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344928 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A344926.P10342466440312050192

/-!
# A344927: Numbers that are the sum of four fourth powers in exactly nine ways.

The programs for A344927, there is no canonical definition to state claims against.
-/

/-! ## A344927.P480738252347066973

`A344926(lt[A344960(n+1), A344949(3*n)])`
-/

namespace A344927.P480738252347066973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344960 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344949 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344926 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A344927.P480738252347066973

/-! ## A344927.P12445921478950597923

`A344926(∑[A115571(2*n+1)^A360098(2*n+5)])`
-/

namespace A344927.P12445921478950597923
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A115571 (2 * n + 1) : ℚ) ^ (A360098 (2 * n + 5) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344926 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A344927.P12445921478950597923

/-! ## A344927.P13078657908460378155

`A344926(∑[A115574(2*(n+2))^A360098(2*n+5)])`
-/

namespace A344927.P13078657908460378155
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A115574 (2 * (n + 2)) : ℚ) ^ (A360098 (2 * n + 5) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344926 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A344927.P13078657908460378155

/-! ## A344927.P8452285152481142543

`A344926(lt[A187219(n+1), A082002(n+1)])`
-/

namespace A344927.P8452285152481142543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187219 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082002 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344926 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A344927.P8452285152481142543

/-!
# A344931: Sum of the distinct even-indexed prime divisors, p_{2k}, of n.

The programs for A344931, the canonical program `A344931.P6093938190385122788` is in `Seq.B001.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A344931 has offset 1).

The definition of A344931 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A344931.P6093938190385122788

`∑{p}[n+1, #*(A000720(#)+1)%2]`

The canonical program, it is in `Seq.B001.C013`.
-/

namespace A344931

/-- `∑{p}[n+1, #*(A000720(#)+1)%2]` -/
def P6093938190385122788.Spec : Prop :=
  ∀ n, P6093938190385122788.a n = A344931 (n + 1)

theorem P6093938190385122788.correct : P6093938190385122788.Spec := by
  intro n
  simp only [A344931, Nat.add_sub_cancel]

end A344931

/-! ## A344931.P11095363218717503844

`A008472(n+1)-A344908(n+1)`
-/

namespace A344931.P11095363218717503844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (n + 1) - A344908 (n + 1)

end

end A344931.P11095363218717503844

namespace A344931

/-- `A008472(n+1)-A344908(n+1)` -/
def P11095363218717503844.Spec : Prop :=
  ∀ n, P11095363218717503844.a n = A344931 (n + 1)

end A344931

/-! ## A344931.P9026313445747575707

`∑{p}[A248101(n+1), #]`
-/

namespace A344931.P9026313445747575707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248101 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A344931.P9026313445747575707

namespace A344931

/-- `∑{p}[A248101(n+1), #]` -/
def P9026313445747575707.Spec : Prop :=
  ∀ n, (P9026313445747575707.a n : ℤ) = A344931 (n + 1)

end A344931

/-! ## A344931.P9645121933710241023

`∑{p}[A351518(n+1), #]`
-/

namespace A344931.P9645121933710241023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351518 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A344931.P9645121933710241023

namespace A344931

/-- `∑{p}[A351518(n+1), #]` -/
def P9645121933710241023.Spec : Prop :=
  ∀ n, (P9645121933710241023.a n : ℤ) = A344931 (n + 1)

end A344931

/-! ## A344931.P13007748442361514407

`∑{p}[n+1, #]-A344908(n+1)`
-/

namespace A344931.P13007748442361514407
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℤ) - A344908 (n + 1)

end

end A344931.P13007748442361514407

namespace A344931

/-- `∑{p}[n+1, #]-A344908(n+1)` -/
def P13007748442361514407.Spec : Prop :=
  ∀ n, P13007748442361514407.a n = A344931 (n + 1)

end A344931

/-! ## A344931.P12857705138440890839

`∑{p}[(n+1)/A247503(n+1), #]`
-/

namespace A344931.P12857705138440890839
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A247503 (n + 1) : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, p

end

end A344931.P12857705138440890839

namespace A344931

/-- `∑{p}[(n+1)/A247503(n+1), #]` -/
def P12857705138440890839.Spec : Prop :=
  ∀ n, (P12857705138440890839.a n : ℤ) = A344931 (n + 1)

end A344931

/-! ## A344931.P16052692358769094716

`∑{p}[n+1, #*(1-A324966(#))]`
-/

namespace A344931.P16052692358769094716
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), (p : ℤ) * (1 - A324966 p)

end

end A344931.P16052692358769094716

namespace A344931

/-- `∑{p}[n+1, #*(1-A324966(#))]` -/
def P16052692358769094716.Spec : Prop :=
  ∀ n, P16052692358769094716.a n = A344931 (n + 1)

end A344931

/-! ## A344931.P18130081576952326285

`∑{p}[n+1, #*A253783(#)%2]`
-/

namespace A344931.P18130081576952326285
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), (p : ℤ) * Int.tmod (A253783 p) 2

end

end A344931.P18130081576952326285

namespace A344931

/-- `∑{p}[n+1, #*A253783(#)%2]` -/
def P18130081576952326285.Spec : Prop :=
  ∀ n, P18130081576952326285.a n = A344931 (n + 1)

end A344931

/-! ## A344931.P569834617065983757

`A005069(A248101(n+1))`
-/

namespace A344931.P569834617065983757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005069 (A248101 (n + 1)).toNat

end

end A344931.P569834617065983757

namespace A344931

/-- `A005069(A248101(n+1))` -/
def P569834617065983757.Spec : Prop :=
  ∀ n, P569834617065983757.a n = A344931 (n + 1)

end A344931

/-! ## A344931.P16516126974925652447

`A001414(A351518(n+1))`
-/

namespace A344931.P16516126974925652447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A351518 (n + 1)).toNat

end

end A344931.P16516126974925652447

namespace A344931

/-- `A001414(A351518(n+1))` -/
def P16516126974925652447.Spec : Prop :=
  ∀ n, P16516126974925652447.a n = A344931 (n + 1)

end A344931

/-! ## A344931.P3134378047205467181

`∑{p}[A319522(n+1), A297002(#)]`
-/

namespace A344931.P3134378047205467181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319522 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A297002 p

end

end A344931.P3134378047205467181

namespace A344931

/-- `∑{p}[A319522(n+1), A297002(#)]` -/
def P3134378047205467181.Spec : Prop :=
  ∀ n, P3134378047205467181.a n = A344931 (n + 1)

end A344931

/-! ## A344931.P7739141573796726609

`A345279(n+1)-A324966(n+1)`
-/

namespace A344931.P7739141573796726609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345279 (n + 1) - A324966 (n + 1)

end

end A344931.P7739141573796726609

namespace A344931

/-- `A345279(n+1)-A324966(n+1)` -/
def P7739141573796726609.Spec : Prop :=
  ∀ n, P7739141573796726609.a n = A344931 (n + 1)

end A344931

/-! ## A344931.P5798294059134702811

`A344908(n+1)-A332424(n+1)`
-/

namespace A344931.P5798294059134702811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344908 (n + 1) - A332424 (n + 1)

end

end A344931.P5798294059134702811

namespace A344931

/-- `A344908(n+1)-A332424(n+1)` -/
def P5798294059134702811.Spec : Prop :=
  ∀ n, P5798294059134702811.a n = A344931 (n + 1)

end A344931

/-! ## A344931.P17099692640821279481

`A008472((n+1)/A247503(n+1))`
-/

namespace A344931.P17099692640821279481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A247503 (n + 1) : ℚ))).toNat

end

end A344931.P17099692640821279481

namespace A344931

/-- `A008472((n+1)/A247503(n+1))` -/
def P17099692640821279481.Spec : Prop :=
  ∀ n, P17099692640821279481.a n = A344931 (n + 1)

end A344931

/-! ## A344931.P9266479598201624430

`A100030(n+1)-A344908(2*(n+1))`
-/

namespace A344931.P9266479598201624430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100030 (n + 1) - A344908 (2 * (n + 1))

end

end A344931.P9266479598201624430

namespace A344931

/-- `A100030(n+1)-A344908(2*(n+1))` -/
def P9266479598201624430.Spec : Prop :=
  ∀ n, P9266479598201624430.a n = A344931 (n + 1)

end A344931

/-! ## A344931.P6166642085660049437

`∑{d}[n+1, A061397(#)]-A344908(n+1)`
-/

namespace A344931.P6166642085660049437
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A061397 d - A344908 (n + 1)

end

end A344931.P6166642085660049437

namespace A344931

/-- `∑{d}[n+1, A061397(#)]-A344908(n+1)` -/
def P6166642085660049437.Spec : Prop :=
  ∀ n, P6166642085660049437.a n = A344931 (n + 1)

end A344931

/-! ## A344931.P17741152340387008924

`A001414(∏{p}[n+1, #])-A344908(n+1)`
-/

namespace A344931.P17741152340387008924
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (∏ p ∈ Nat.primeFactors (f1 n), p) - A344908 (n + 1)

end

end A344931.P17741152340387008924

namespace A344931

/-- `A001414(∏{p}[n+1, #])-A344908(n+1)` -/
def P17741152340387008924.Spec : Prop :=
  ∀ n, P17741152340387008924.a n = A344931 (n + 1)

end A344931

/-! ## A344931.P10284280737945028679

`A008472(n+1)-A008472(A247503(n+1))`
-/

namespace A344931.P10284280737945028679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (n + 1) - A008472 (A247503 (n + 1)).toNat

end

end A344931.P10284280737945028679

namespace A344931

/-- `A008472(n+1)-A008472(A247503(n+1))` -/
def P10284280737945028679.Spec : Prop :=
  ∀ n, P10284280737945028679.a n = A344931 (n + 1)

end A344931

/-! ## A344931.P16635944494212288708

`A001414(A007947(n+1))-A344908(n+1)`
-/

namespace A344931.P16635944494212288708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A007947 (n + 1)).toNat - A344908 (n + 1)

end

end A344931.P16635944494212288708

namespace A344931

/-- `A001414(A007947(n+1))-A344908(n+1)` -/
def P16635944494212288708.Spec : Prop :=
  ∀ n, P16635944494212288708.a n = A344931 (n + 1)

end A344931

/-! ## A344931.P17104721370548930955

`abs(A344908(n+1)-A181894(n%A007947(n+1)+1))`
-/

namespace A344931.P17104721370548930955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A344908 (n + 1) - A181894 (Int.tmod (n : ℤ) (A007947 (n + 1)) + 1).toNat|

end

end A344931.P17104721370548930955

namespace A344931

/-- `abs(A344908(n+1)-A181894(n%A007947(n+1)+1))` -/
def P17104721370548930955.Spec : Prop :=
  ∀ n, P17104721370548930955.a n = A344931 (n + 1)

end A344931

/-!
# A344932: Values of n where A046800(n) produces a record.

The programs for A344932, there is no canonical definition to state claims against.
-/

/-! ## A344932.P635331470639784768

`A136034(A344933(n+1))%A172066(n)`
-/

namespace A344932.P635331470639784768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A136034 (A344933 (n + 1)).toNat) (A172066 n)

end

end A344932.P635331470639784768

/-! ## A344932.P14219351942224525008

`lt[A023895(A276384(n+4)), A166120(n+1)]`
-/

namespace A344932.P14219351942224525008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023895 (A276384 (n + 4)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166120 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A344932.P14219351942224525008

/-! ## A344932.P7319961499543681213

`∑[A001222(n+1)*A137325(3*(n+1))]`
-/

namespace A344932.P7319961499543681213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) * A137325 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A344932.P7319961499543681213

/-! ## A344932.P16388505029482644683

`eq[A046800(n), A141033(A002024(n+1))]`
-/

namespace A344932.P16388505029482644683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046800 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141033 (A002024 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A344932.P16388505029482644683

/-! ## A344932.P16064291115385944546

`eq[A046800(n), A117707(A260255(n+1))]`
-/

namespace A344932.P16064291115385944546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046800 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117707 (A260255 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A344932.P16064291115385944546

/-!
# A344933: Record values of A046800.

The programs for A344933, there is no canonical definition to state claims against.
-/

/-! ## A344933.P17211319109270696925

`record[A046800(n)]`
-/

namespace A344933.P17211319109270696925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046800 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A344933.P17211319109270696925

/-! ## A344933.P5157162766678517248

`A046800(A344932(n+1))`
-/

namespace A344933.P5157162766678517248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046800 (A344932 (n + 1)).toNat

end

end A344933.P5157162766678517248

/-! ## A344933.P2587381298341742263

`∑{d}[A344932(n+1), A086251(#)]`
-/

namespace A344933.P2587381298341742263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344932 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A086251 d

end

end A344933.P2587381298341742263

/-! ## A344933.P405922906182510554

`record[A135981(n+2)-A098108(n)]`
-/

namespace A344933.P405922906182510554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135981 (n + 2) - A098108 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A344933.P405922906182510554

/-! ## A344933.P6471836191951399140

`record[A135981(n+2)%A008619(n)]`
-/

namespace A344933.P6471836191951399140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A135981 (n + 2)) (A008619 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A344933.P6471836191951399140

/-!
# A344934: Number of rooted binary phylogenetic trees with n leaves and minimal Sackin tree balance index.

The programs for A344934, there is no canonical definition to state claims against.
-/

/-! ## A344934.P7610223188700560008

`A000142(n+1)*A399204(n)/A398374(n+1)`
-/

namespace A344934.P7610223188700560008
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 (n + 1) * A399204 n : ℚ) / (A398374 (n + 1) : ℚ)

end

end A344934.P7610223188700560008

/-! ## A344934.P15319845376612552376

`n^(n/2*a(n/2))` with `a(0)=1, a(1)=1, a(2)=3, a(3)=3, a(4)=30, a(5)=135, a(6)=315, a(7)=315`
-/

namespace A344934.P15319845376612552376
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [1, 1, 3, 3, 30, 135, 315, 315] fun n a =>
  (n : ℝ) ^ (((n : ℚ) / 2 : ℝ) * a (SequenceMachineLib.roundAway ((n : ℚ) / 2)).toNat)

end

end A344934.P15319845376612552376

/-! ## A344934.P2302684757435331251

`A028234(A083267(n+1))*A054250(n)`
-/

namespace A344934.P2302684757435331251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028234 (A083267 (n + 1)).toNat * A054250 n

end

end A344934.P2302684757435331251

/-! ## A344934.P13981559675400705834

`A067655(n+1)*A335450(A027070(n))`
-/

namespace A344934.P13981559675400705834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067655 (n + 1) * A335450 (A027070 n).toNat

end

end A344934.P13981559675400705834

/-!
# A344935: a(0)=1; for n > 0, a(n) = n*(a(n-1) + i^(n-1)) if n is odd, n*a(n-1) + i^n otherwise, where i = sqrt(-1).

The programs for A344935, there is no canonical definition to state claims against.
-/

/-! ## A344935.P13398512400064335974

`or(1, ∑[n*(1-and(2, n))])+n*a(n-1)` with `a(0)=1`
-/

namespace A344935.P13398512400064335974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (1 - (Nat.land 2 n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j) + (n : ℤ) * a (n - 1)

end

end A344935.P13398512400064335974

/-! ## A344935.P9504170842042225195

`A009001(n)+n*a(n-1)` with `a(0)=1`
-/

namespace A344935.P9504170842042225195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A009001 n + (n : ℤ) * a (n - 1)

end

end A344935.P9504170842042225195

/-! ## A344935.P7624942445829248265

`A172270(A191162(n+1)+A000142(n))`
-/

namespace A344935.P7624942445829248265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172270 (A191162 (n + 1) + A000142 n).toNat

end

end A344935.P7624942445829248265

/-! ## A344935.P7175598608232766682

`A172270(A104104(2*(n+2))+A000142(n))`
-/

namespace A344935.P7175598608232766682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172270 (A104104 (2 * (n + 2)) + A000142 n).toNat

end

end A344935.P7175598608232766682

/-!
# A344937: a(n) is the largest k such that when strings of zeros of lengths t = 1..k are inserted between every pair of adjacent digits of prime(n), the resulting numbers are all primes.

The programs for A344937, there is no canonical definition to state claims against.
-/

/-! ## A344937.P4496721905394261602

`and(-A099973(n), A290174(n+5))`
-/

namespace A344937.P4496721905394261602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A099973 n) (A290174 (n + 5))

end

end A344937.P4496721905394261602

/-! ## A344937.P9498329203906834115

`A290174(n+5)%A263706(n+1)`
-/

namespace A344937.P9498329203906834115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A290174 (n + 5)) (A263706 (n + 1))

end

end A344937.P9498329203906834115

/-! ## A344937.P12856204427705028376

`A358318(n+5)-A099973(n)%2`
-/

namespace A344937.P12856204427705028376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358318 (n + 5) - Int.tmod (A099973 n) 2

end

end A344937.P12856204427705028376

/-! ## A344937.P4890755009788739708

`A358318(n+5)+A358272(A058697(n))`
-/

namespace A344937.P4890755009788739708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358318 (n + 5) + A358272 (A058697 n).toNat

end

end A344937.P4890755009788739708

/-! ## A344937.P6556092734592942592

`A358318(n+5)+A341931(A111332(n))`
-/

namespace A344937.P6556092734592942592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358318 (n + 5) + A341931 (A111332 n).toNat

end

end A344937.P6556092734592942592

/-!
# A344939: The part of n left of the radix point when written in base Pi using a greedy algorithm representation.

The programs for A344939, there is no canonical definition to state claims against.
-/

/-! ## A344939.P3983280055796321060

`lt[A066459(n), A053670(A014574(n+2))]`
-/

namespace A344939.P3983280055796321060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066459 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053670 (A014574 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A344939.P3983280055796321060

/-! ## A344939.P11516993711914310766

`lt[A061602(n), A054055(A161450(3*(n+1)))]`
-/

namespace A344939.P11516993711914310766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061602 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 (A161450 (3 * (n + 1))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A344939.P11516993711914310766

/-! ## A344939.P11208833395356194427

`lt[A061602(n), A054055(A037460(9*n+4))]`
-/

namespace A344939.P11208833395356194427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061602 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 (A037460 (9 * n + 4)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A344939.P11208833395356194427

/-! ## A344939.P16228081277079558463

`lt[A329562(n), A007953(A004207(3*n+4))]`
-/

namespace A344939.P16228081277079558463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329562 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A004207 (3 * n + 4)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A344939.P16228081277079558463

/-! ## A344939.P8084313287128217289

`∪[A007089(n), A194440(A303980(2*n+3))]`
-/

namespace A344939.P8084313287128217289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194440 (A303980 (2 * n + 3)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A344939.P8084313287128217289

/-!
# A344940: Numbers that are the sum of five fourth powers in six or more ways.

The programs for A344940, there is no canonical definition to state claims against.
-/

/-! ## A344940.P5506141389044555532

`∪[A344941(n+1), A344942(n+1)]`
-/

namespace A344940.P5506141389044555532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344941 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344942 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A344940.P5506141389044555532

/-! ## A344940.P11066859391251345573

`A000027(∪[A344941(n+1), A344943(n+1)])`
-/

namespace A344940.P11066859391251345573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344941 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344943 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A344940.P11066859391251345573

/-!
# A344942: Numbers that are the sum of five fourth powers in seven or more ways.

The programs for A344942, there is no canonical definition to state claims against.
-/

/-! ## A344942.P843291780745561067

`∪[A344943(n+1), A344944(n+1)]`
-/

namespace A344942.P843291780745561067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344943 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344944 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A344942.P843291780745561067

/-! ## A344942.P16104507019512108041

`A344943(A032555(n+1))`
-/

namespace A344942.P16104507019512108041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344943 (A032555 (n + 1)).toNat

end

end A344942.P16104507019512108041

/-! ## A344942.P22830298902995277

`A344943(A032559(n+1))`
-/

namespace A344942.P22830298902995277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344943 (A032559 (n + 1)).toNat

end

end A344942.P22830298902995277

/-! ## A344942.P17945340321738590871

`A344943(A077739(n+1))`
-/

namespace A344942.P17945340321738590871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344943 (A077739 (n + 1)).toNat

end

end A344942.P17945340321738590871

/-! ## A344942.P8950766979753448611

`A344943(A078213(n+1))`
-/

namespace A344942.P8950766979753448611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344943 (A078213 (n + 1)).toNat

end

end A344942.P8950766979753448611

/-!
# A344943: Numbers that are the sum of five fourth powers in exactly seven ways.

The programs for A344943, there is no canonical definition to state claims against.
-/

/-! ## A344943.P1906503162322648621

`A344942(or(A020664(n+1), A028240(n)))`
-/

namespace A344943.P1906503162322648621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344942 (Int.lor (A020664 (n + 1)) (A028240 n)).toNat

end

end A344943.P1906503162322648621

/-! ## A344943.P3207968300610144633

`A344942(or(A028240(n), A052382(n+1)))`
-/

namespace A344943.P3207968300610144633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344942 (Int.lor (A028240 n) (A052382 (n + 1))).toNat

end

end A344943.P3207968300610144633

/-! ## A344943.P17947055799305505289

`A344942(A020664(n+1)^A008835(n+1))`
-/

namespace A344943.P17947055799305505289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344942 (SequenceMachineLib.roundAway ((A020664 (n + 1) : ℚ) ^ (A008835 (n + 1) : ℤ))).toNat

end

end A344943.P17947055799305505289

/-! ## A344943.P8589143988695197620

`A344942(A020664(n+1)+n*A028240(n))`
-/

namespace A344943.P8589143988695197620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344942 (A020664 (n + 1) + (n : ℤ) * A028240 n).toNat

end

end A344943.P8589143988695197620

/-! ## A344943.P4713286801424738445

`A344942(A052382(n+1)%A191487(3*n+4))`
-/

namespace A344943.P4713286801424738445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344942 (Int.tmod (A052382 (n + 1)) (A191487 (3 * n + 4))).toNat

end

end A344943.P4713286801424738445

/-!
# A344944: Numbers that are the sum of five fourth powers in eight or more ways.

The programs for A344944, there is no canonical definition to state claims against.
-/

/-! ## A344944.P17970581610082948696

`∪[A341891(n+1), A344945(n+1)]`
-/

namespace A344944.P17970581610082948696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341891 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344945 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A344944.P17970581610082948696

/-!
# A344947: Number of open tours by a biased rook on a specific A070941(n) X 1 board, which ends on a black cell, where cells are colored white or black according to the binary representation of 2n.

The programs for A344947, there is no canonical definition to state claims against.
-/

/-! ## A344947.P4604626491856301915

`A284001(2*n)`
-/

namespace A344947.P4604626491856301915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284001 (2 * n)

end

end A344947.P4604626491856301915

/-! ## A344947.P1744328116362443112

`A284005((2*n)%(2^ceil(log2(n+1))))`
-/

namespace A344947.P1744328116362443112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284005 (Int.tmod (2 * n : ℤ) (SequenceMachineLib.roundAway ((2 : ℚ) ^ (⌈Real.logb 2 (n + 1 : ℝ)⌉ : ℤ)))).toNat

end

end A344947.P1744328116362443112

/-! ## A344947.P17113948022221204220

`A284005(floor(2/acot(n))-2^ceil(log2(n+1)))`
-/

namespace A344947.P17113948022221204220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284005 (SequenceMachineLib.roundAway ((⌊2 / SequenceMachineLib.acot (n : ℝ)⌋ : ℚ) - (2 : ℚ) ^ (⌈Real.logb 2 (n + 1 : ℝ)⌉ : ℤ))).toNat

end

end A344947.P17113948022221204220

/-! ## A344947.P4077063817390690227

`A284005(xor(2^ceil(log2(n+1)), floor(2/acot(n))))`
-/

namespace A344947.P4077063817390690227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284005 (Int.xor (SequenceMachineLib.roundAway ((2 : ℚ) ^ (⌈Real.logb 2 (n + 1 : ℝ)⌉ : ℤ))) ⌊2 / SequenceMachineLib.acot (n : ℝ)⌋).toNat

end

end A344947.P4077063817390690227

/-! ## A344947.P2739601078611195474

`A284005(and(2*lt[2*n, xor(n, 2*n)], 2*n))`
-/

namespace A344947.P2739601078611195474
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284005 (Nat.land (2 * SequenceMachineLib.nth (fun j => f1 j < f2 j) n) (2 * n))

end

end A344947.P2739601078611195474

/-! ## A344947.P15783030275992302640

`A028310(A284001(n+n))`
-/

namespace A344947.P15783030275992302640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A284001 (n + n)).toNat

end

end A344947.P15783030275992302640

/-! ## A344947.P10764794259212280843

`∏{digits}[A110382(A004277(n)), #]`
-/

namespace A344947.P10764794259212280843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110382 (A004277 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).prod

end

end A344947.P10764794259212280843

/-! ## A344947.P896306973224218553

`or(char[1], A284001(A005843(n)))`
-/

namespace A344947.P896306973224218553
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A284001 (A005843 n).toNat)

end

end A344947.P896306973224218553

/-! ## A344947.P5822074153013368348

`A284005(2*A164089(2*n+1))`
-/

namespace A344947.P5822074153013368348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284005 (2 * A164089 (2 * n + 1)).toNat

end

end A344947.P5822074153013368348

/-! ## A344947.P15545165560551514350

`A284005(A006257(n)-A057427(n))`
-/

namespace A344947.P15545165560551514350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284005 (A006257 n - A057427 n).toNat

end

end A344947.P15545165560551514350

/-!
# A344948: Primes whose position among the powers of primes (A000961) is also prime.

The programs for A344948, the canonical program `A344948.P15637096215189460641` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A344948 has offset 1).

The definition of A344948 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1214 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A344948.P15637096215189460641

`record[A025473(A000040(n+1))]`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A344948

/-- `record[A025473(A000040(n+1))]` -/
def P15637096215189460641.Spec : Prop :=
  ∀ n, P15637096215189460641.a n = A344948 (n + 1)

theorem P15637096215189460641.correct : P15637096215189460641.Spec := by
  intro n
  simp only [A344948, Nat.add_sub_cancel]

end A344948

/-! ## A344948.P660570954834134985

`record[A025473(A053811(n+1))]`
-/

namespace A344948.P660570954834134985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025473 (A053811 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A344948.P660570954834134985

namespace A344948

/-- `record[A025473(A053811(n+1))]` -/
def P660570954834134985.Spec : Prop :=
  ∀ n, P660570954834134985.a n = A344948 (n + 1)

end A344948

/-! ## A344948.P8068250164004622896

`A000961(p?[A024620(n+1)])`
-/

namespace A344948.P8068250164004622896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024620 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A344948.P8068250164004622896

namespace A344948

/-- `A000961(p?[A024620(n+1)])` -/
def P8068250164004622896.Spec : Prop :=
  ∀ n, P8068250164004622896.a n = A344948 (n + 1)

end A344948

/-! ## A344948.P2442212975681099665

`record[A025473(A020639(n+2))]`
-/

namespace A344948.P2442212975681099665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025473 (A020639 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A344948.P2442212975681099665

namespace A344948

/-- `record[A025473(A020639(n+2))]` -/
def P2442212975681099665.Spec : Prop :=
  ∀ n, P2442212975681099665.a n = A344948 (n + 1)

end A344948

/-! ## A344948.P1554517454466229997

`record[A025473(A025473(n+2))]`
-/

namespace A344948.P1554517454466229997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025473 (A025473 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A344948.P1554517454466229997

namespace A344948

/-- `record[A025473(A025473(n+2))]` -/
def P1554517454466229997.Spec : Prop :=
  ∀ n, P1554517454466229997.a n = A344948 (n + 1)

end A344948

/-! ## A344948.P2124752471637371475

`p?[A246655(A006093(n+1))]`
-/

namespace A344948.P2124752471637371475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246655 (A006093 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A344948.P2124752471637371475

namespace A344948

/-- `p?[A246655(A006093(n+1))]` -/
def P2124752471637371475.Spec : Prop :=
  ∀ n, P2124752471637371475.a n = A344948 (n + 1)

end A344948

/-! ## A344948.P5276785394017903450

`p?[A000961(p?[A000961(n+1)])]`
-/

namespace A344948.P5276785394017903450
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A344948.P5276785394017903450

namespace A344948

/-- `p?[A000961(p?[A000961(n+1)])]` -/
def P5276785394017903450.Spec : Prop :=
  ∀ n, P5276785394017903450.a n = A344948 (n + 1)

end A344948

/-! ## A344948.P6300387071566227726

`record[A063872(A063872(n+1))+1]`
-/

namespace A344948.P6300387071566227726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063872 (A063872 (n + 1)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A344948.P6300387071566227726

namespace A344948

/-- `record[A063872(A063872(n+1))+1]` -/
def P6300387071566227726.Spec : Prop :=
  ∀ n, P6300387071566227726.a n = A344948 (n + 1)

end A344948

/-!
# A344949: a(n) is the smallest square s > 0 such that s*(2n+1) is a triangular number.

The programs for A344949, there is no canonical definition to state claims against.
-/

/-! ## A344949.P14468511503699122305

`A069018(Δ[8*n²])`
-/

namespace A344949.P14468511503699122305
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069018 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A344949.P14468511503699122305

/-! ## A344949.P11478600592772505782

`(A002349(4*n+2)/2)²`
-/

namespace A344949.P11478600592772505782
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A002349 (4 * n + 2) : ℚ) / 2) ^ 2

end

end A344949.P11478600592772505782

/-! ## A344949.P15836264334870822333

`A069018(A016825(n))/4`
-/

namespace A344949.P15836264334870822333
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069018 (A016825 n).toNat : ℚ) / 4

end

end A344949.P15836264334870822333

/-! ## A344949.P12539989484517646603

`A006703(Δ[A081585(n)])²`
-/

namespace A344949.P12539989484517646603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081585 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006703 (f1 (n + 1) - f1 n).toNat ^ 2

end

end A344949.P12539989484517646603

/-! ## A344949.P17152081815712678665

`A006703(A022144(2*n+1))²`
-/

namespace A344949.P17152081815712678665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006703 (A022144 (2 * n + 1)).toNat ^ 2

end

end A344949.P17152081815712678665

/-!
# A344950: Numbers k such that #0's = #1's in the k-th word in A341258.

The programs for A344950, there is no canonical definition to state claims against.
-/

/-! ## A344950.P10314311661200916292

`eq[2, A099245(A003754(n+1))]`
-/

namespace A344950.P10314311661200916292
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099245 (A003754 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A344950.P10314311661200916292

/-! ## A344950.P8787880672558768524

`eq[A054977(n), A145037(A232559(n+1))]`
-/

namespace A344950.P8787880672558768524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145037 (A232559 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A344950.P8787880672558768524

/-! ## A344950.P15564360429222562444

`eq[A057427(n), A145037(A232559(n+1))]`
-/

namespace A344950.P15564360429222562444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145037 (A232559 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A344950.P15564360429222562444

/-! ## A344950.P3628363821635917976

`eq[A057428(n)², A145037(A232559(n+1))]`
-/

namespace A344950.P3628363821635917976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145037 (A232559 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A344950.P3628363821635917976

/-! ## A344950.P6733799775290827812

`eq[A000040(n+1)%2, A145037(A232559(n+1))]`
-/

namespace A344950.P6733799775290827812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1)) 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145037 (A232559 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A344950.P6733799775290827812

/-!
# A344951: Numbers k such that #0's < #1's in the k-th word in A341258.

The programs for A344951, there is no canonical definition to state claims against.
-/

/-! ## A344951.P12116685901428293606

`lt[1, A145037(A232559(n+1))]`
-/

namespace A344951.P12116685901428293606
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145037 (A232559 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A344951.P12116685901428293606

/-! ## A344951.P11927328802547853591

`lt[A200649(n+2), A235224(n)]`
-/

namespace A344951.P11927328802547853591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200649 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235224 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A344951.P11927328802547853591

/-! ## A344951.P5117921622130265689

`lt[n+1, A090077(A247648(n+1))]`
-/

namespace A344951.P5117921622130265689
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090077 (A247648 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A344951.P5117921622130265689

/-! ## A344951.P5042663541650361961

`lt[n+1, A090077(2*A052499(n)-1)]`
-/

namespace A344951.P5042663541650361961
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090077 (2 * A052499 n - 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A344951.P5042663541650361961

/-! ## A344951.P4006848845794318744

`lt[n+1, A090079(2*A052499(n)-1)]`
-/

namespace A344951.P4006848845794318744
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090079 (2 * A052499 n - 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A344951.P4006848845794318744

/-! ## A344951.P3267164993332094477

`lt[A112310(n), A037834(A247648(n+1))]`
-/

namespace A344951.P3267164993332094477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112310 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037834 (A247648 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A344951.P3267164993332094477

/-! ## A344951.P430784744360252676

`lt[A112310(n), A023416(A219608(n+2))]`
-/

namespace A344951.P430784744360252676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112310 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 (A219608 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A344951.P430784744360252676

/-! ## A344951.P12279129896510720996

`lt[A000027(n+1), A090079(A247648(n+1))]`
-/

namespace A344951.P12279129896510720996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090079 (A247648 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A344951.P12279129896510720996

/-!
# A344952: Numbers k such that #0's > #1's in the k-th word in A341258.

The programs for A344952, there is no canonical definition to state claims against.
-/

/-! ## A344952.P6648756773442224124

`lt[n, A358654(n)]-1`
-/

namespace A344952.P6648756773442224124
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358654 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n : ℤ) - 1

end

end A344952.P6648756773442224124

/-! ## A344952.P5740518321359369680

`lt[n+1, A358654(n+1)]`
-/

namespace A344952.P5740518321359369680
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358654 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A344952.P5740518321359369680

/-! ## A344952.P9007161705637134752

`lt[n+1, A200714(n+2)]`
-/

namespace A344952.P9007161705637134752
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200714 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A344952.P9007161705637134752

/-! ## A344952.P2729685037255250442

`lt[A145037(A232559(n+1)), 1]`
-/

namespace A344952.P2729685037255250442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145037 (A232559 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A344952.P2729685037255250442

/-! ## A344952.P7907744112210715478

`A023443(lt[n, A200714(n+1)])`
-/

namespace A344952.P7907744112210715478
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200714 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A344952.P7907744112210715478

/-! ## A344952.P12207378202103741222

`lt[n, A109499(A200649(n+2))]`
-/

namespace A344952.P12207378202103741222
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109499 (A200649 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A344952.P12207378202103741222

/-! ## A344952.P2001280968169784717

`lt[n+1, A209639(A052499(n)-1)]`
-/

namespace A344952.P2001280968169784717
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209639 (A052499 n - 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A344952.P2001280968169784717

/-! ## A344952.P5471359825427166927

`lt[A037834(A247648(n+1)), A112310(n)]`
-/

namespace A344952.P5471359825427166927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037834 (A247648 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112310 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A344952.P5471359825427166927

/-! ## A344952.P9000769212867137742

`lt[A246104(n), A001316(A247648(n+1))]`
-/

namespace A344952.P9000769212867137742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246104 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 (A247648 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A344952.P9000769212867137742

/-! ## A344952.P3782380556655690556

`lt[A023416(A219608(n+2)), A112310(n)]`
-/

namespace A344952.P3782380556655690556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 (A219608 (n + 2)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112310 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A344952.P3782380556655690556

/-!
# A344953: Positions of words in A341258 that end with 1.

The programs for A344953, there is no canonical definition to state claims against.
-/

/-! ## A344953.P7070727575336412850

`eq[1, abs(a(floor(n/ϕ)))]` with `a(0)=0, a(1)=0, a(2)=1`
-/

namespace A344953.P7070727575336412850
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 1] fun n f2 =>
  f2 ⌊(n : ℝ) / Real.goldenRatio⌋.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A344953.P7070727575336412850

/-! ## A344953.P17960734433399303698

`lt[0, a(floor(n/ϕ))²]` with `a(0)=0, a(1)=0, a(2)=1`
-/

namespace A344953.P17960734433399303698
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 1] fun n f2 =>
  f2 ⌊(n : ℝ) / Real.goldenRatio⌋.toNat ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A344953.P17960734433399303698

/-! ## A344953.P4432185252769920670

`eq[1, a(floor(n/ϕ))²]` with `a(0)=0, a(1)=0, a(2)=1`
-/

namespace A344953.P4432185252769920670
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 1] fun n f2 =>
  f2 ⌊(n : ℝ) / Real.goldenRatio⌋.toNat ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A344953.P4432185252769920670

/-! ## A344953.P3383535716306625731

`lt[abs(a(floor(n/ϕ))), 1]` with `a(0)=1, a(1)=1, a(2)=0`
-/

namespace A344953.P3383535716306625731
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 0] fun n f1 =>
  f1 ⌊(n : ℝ) / Real.goldenRatio⌋.toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A344953.P3383535716306625731

/-! ## A344953.P12775221774660098805

`eq[2, a(floor(n/ϕ))!]` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A344953.P12775221774660098805
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 2] fun n f2 =>
  Nat.factorial (f2 ⌊(n : ℝ) / Real.goldenRatio⌋.toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A344953.P12775221774660098805

/-! ## A344953.P18079018619728391345

`eq[1, round(a(floor(n/ϕ)))]` with `a(0)=0, a(1)=0, a(2)=1`

`round` is left out, it is the identity on integers.
-/

namespace A344953.P18079018619728391345
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 1] fun n f2 =>
  f2 ⌊(n : ℝ) / Real.goldenRatio⌋.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A344953.P18079018619728391345

/-! ## A344953.P8586182313969670600

`eq[2, floor(a(floor(n/ϕ)))]` with `a(0)=0, a(1)=0, a(2)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A344953.P8586182313969670600
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 2] fun n f2 =>
  f2 ⌊(n : ℝ) / Real.goldenRatio⌋.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A344953.P8586182313969670600

/-! ## A344953.P3689786259466490228

`A246104(n)+n`
-/

namespace A344953.P3689786259466490228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246104 n + (n : ℤ)

end

end A344953.P3689786259466490228

/-! ## A344953.P14680863911984303910

`lt[0, A243612(n+1)]`
-/

namespace A344953.P14680863911984303910
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243612 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A344953.P14680863911984303910

/-! ## A344953.P18327827863166626013

`lt[1, A242364(n+1)]`
-/

namespace A344953.P18327827863166626013
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242364 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A344953.P18327827863166626013

/-!
# A344954: Positions of words in A341258 in which the first digit = last digit.

The programs for A344954, there is no canonical definition to state claims against.
-/

/-! ## A344954.P6821688872245856067

`comp[A344955(n+1)-1]+1`
-/

namespace A344954.P6821688872245856067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344955 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A344954.P6821688872245856067

/-! ## A344954.P6839146776912855809

`eq[1, A124767(A003754(1+n))%2]`
-/

namespace A344954.P6839146776912855809
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A124767 (A003754 (1 + n)).toNat) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A344954.P6839146776912855809

/-! ## A344954.P14643238405832862878

`∪[A344956(n+1), A344959(n+1)]`
-/

namespace A344954.P14643238405832862878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344956 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344959 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A344954.P14643238405832862878

/-! ## A344954.P7083197687675776904

`comp[∪[A344955(n+1), A344993(n²)]]`
-/

namespace A344954.P7083197687675776904
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344955 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344993 (n ^ 2)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A344954.P7083197687675776904

/-! ## A344954.P3686133391080547645

`comp[∪[2*A344993(n), A344955(n+1)]]`
-/

namespace A344954.P3686133391080547645
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A344993 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344955 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A344954.P3686133391080547645

/-! ## A344954.P7955249991715884110

`comp[∪[A344957(n+1), A344958(n+1)]-1]+1`
-/

namespace A344954.P7955249991715884110
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344957 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344958 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n : ℤ) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A344954.P7955249991715884110

/-! ## A344954.P12350610990489412820

`∪[A256654(n+1)+A066096(n), A344959(n+1)]`
-/

namespace A344954.P12350610990489412820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256654 (n + 1) + A066096 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344959 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A344954.P12350610990489412820

/-!
# A344955: Positions of words in A341258 in which the first digit != last digit.

The programs for A344955, there is no canonical definition to state claims against.
-/

/-! ## A344955.P12174864284886245026

`eq[char[A344953(n+1)], A114986(n)]`
-/

namespace A344955.P12174864284886245026
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344953 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114986 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A344955.P12174864284886245026

/-! ## A344955.P13590834611716290863

`∪[A344957(n+1), A344958(n+1)]`
-/

namespace A344955.P13590834611716290863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344957 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344958 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A344955.P13590834611716290863

/-! ## A344955.P14517405112389096335

`∪[ceil(ϕ*A344956(n+2)), A344957(n+1)]`
-/

namespace A344955.P14517405112389096335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.goldenRatio * (A344956 (n + 2) : ℝ)⌉

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344957 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A344955.P14517405112389096335

/-! ## A344955.P17048675907390603466

`∪[lt[0, A274455(n+2)%2], A344957(n+1)]`
-/

namespace A344955.P17048675907390603466
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A274455 (n + 2)) 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344957 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f4 j = (x : ℤ)) n

end

end A344955.P17048675907390603466

/-! ## A344955.P12763411046717713216

`comp[∪[A344956(n+1), A344959(n+1)]-1]+1`
-/

namespace A344955.P12763411046717713216
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344956 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344959 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n : ℤ) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A344955.P12763411046717713216

/-! ## A344955.P16808986263651037730

`eq[A000035(A226212(n+1)), A188432(n+1)]`
-/

namespace A344955.P16808986263651037730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A226212 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188432 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A344955.P16808986263651037730

/-!
# A344956: Positions of words in A341258 starting with 0 and ending with 0.

The programs for A344956, there is no canonical definition to state claims against.
-/

/-! ## A344956.P6010512455315916493

`comp[A356759(ceil(ϕ*n))]`
-/

namespace A344956.P6010512455315916493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356759 ⌈Real.goldenRatio * (n : ℝ)⌉.toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A344956.P6010512455315916493

/-! ## A344956.P7713531484996844485

`floor(A256654(1+n)+ϕ*n)`
-/

namespace A344956.P7713531484996844485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A256654 (1 + n) : ℝ) + Real.goldenRatio * (n : ℝ)⌋

end

end A344956.P7713531484996844485

/-! ## A344956.P13928781307335387609

`A022290(record[or(1, A154435(n))])`
-/

namespace A344956.P13928781307335387609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A154435 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022290 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A344956.P13928781307335387609

/-! ## A344956.P8603252668436788445

`A022290(2*A280873(n)+1)`
-/

namespace A344956.P8603252668436788445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022290 (2 * A280873 n + 1).toNat

end

end A344956.P8603252668436788445

/-! ## A344956.P17581675387397111060

`A256654(n+1)+A066096(n)`
-/

namespace A344956.P17581675387397111060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256654 (n + 1) + A066096 n

end

end A344956.P17581675387397111060

/-! ## A344956.P10223097238017229983

`A000201(comp[A344953(n+1)]+1)`
-/

namespace A344956.P10223097238017229983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344953 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000201 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A344956.P10223097238017229983

/-! ## A344956.P6091649616431813099

`A000201(floor(2/acot(n))-A066628(n))`
-/

namespace A344956.P6091649616431813099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000201 (⌊2 / SequenceMachineLib.acot (n : ℝ)⌋ - A066628 n).toNat

end

end A344956.P6091649616431813099

/-! ## A344956.P4390807684123853347

`A022290(A005408(A280873(n)))`
-/

namespace A344956.P4390807684123853347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022290 (A005408 (A280873 n).toNat).toNat

end

end A344956.P4390807684123853347

/-! ## A344956.P14923795044205278305

`A026351(n)+A000071(A108852(n))`
-/

namespace A344956.P14923795044205278305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026351 n + A000071 (A108852 n).toNat

end

end A344956.P14923795044205278305

/-! ## A344956.P16911284768941900754

`A344959(n+1)-A345347(n)`
-/

namespace A344956.P16911284768941900754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344959 (n + 1) - A345347 n

end

end A344956.P16911284768941900754

/-!
# A344957: Positions of words in A341258 starting with 0 and ending with 1.

The programs for A344957, there is no canonical definition to state claims against.
-/

/-! ## A344957.P7832412655824669117

`floor(ϕ*A344956(n+2)-n)`
-/

namespace A344957.P7832412655824669117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (A344956 (n + 2) : ℝ) - (n : ℝ)⌋

end

end A344957.P7832412655824669117

/-! ## A344957.P17779324943112669688

`lt[0, A274455(n+3)%2]-n`
-/

namespace A344957.P17779324943112669688
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A274455 (n + 3)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n : ℤ) - (n : ℤ)

end

end A344957.P17779324943112669688

/-! ## A344957.P5146719291765167588

`A354415(n+1)+floor(ϕ*(n+1))`
-/

namespace A344957.P5146719291765167588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354415 (n + 1) + ⌊Real.goldenRatio * (n + 1 : ℝ)⌋

end

end A344957.P5146719291765167588

/-! ## A344957.P11817477319522285801

`A345347(n+1)+floor((n+1)/ϕ)`
-/

namespace A344957.P11817477319522285801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345347 (n + 1) + ⌊(n + 1 : ℝ) / Real.goldenRatio⌋

end

end A344957.P11817477319522285801

/-! ## A344957.P8713836868030701094

`∩[floor(ϕ*(n+1)), A246104(n)+n]`
-/

namespace A344957.P8713836868030701094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (n + 1 : ℝ)⌋

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246104 n + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A344957.P8713836868030701094

/-! ## A344957.P13502249034817939622

`∩[floor(ϕ*(n+1)), A256654(n+2)+n]`
-/

namespace A344957.P13502249034817939622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (n + 1 : ℝ)⌋

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256654 (n + 2) + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A344957.P13502249034817939622

/-! ## A344957.P6850273217745691127

`floor((A133512(n+1)+1)*ϕ²)-(n+1)`
-/

namespace A344957.P6850273217745691127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A133512 (n + 1) + 1 : ℝ) * Real.goldenRatio ^ 2⌋ - (n + 1 : ℤ)

end

end A344957.P6850273217745691127

/-! ## A344957.P14585465828098125192

`A246104(floor(ϕ*(n+1)))+floor(ϕ*(n+1))`
-/

namespace A344957.P14585465828098125192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246104 ⌊Real.goldenRatio * (n + 1 : ℝ)⌋.toNat + ⌊Real.goldenRatio * (n + 1 : ℝ)⌋

end

end A344957.P14585465828098125192

/-! ## A344957.P8095944563938627394

`A000201(A344953(n+1)+1)`
-/

namespace A344957.P8095944563938627394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000201 (A344953 (n + 1) + 1).toNat

end

end A344957.P8095944563938627394

/-! ## A344957.P10951576241935199698

`A066096(A344953(n+1)+1)`
-/

namespace A344957.P10951576241935199698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066096 (A344953 (n + 1) + 1).toNat

end

end A344957.P10951576241935199698

/-!
# A344958: Positions of words in A341258 starting with 1 and ending with 0.

The programs for A344958, there is no canonical definition to state claims against.
-/

/-! ## A344958.P10888168783409893818

`ceil(ϕ*A344956(n+2))`
-/

namespace A344958.P10888168783409893818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.goldenRatio * (A344956 (n + 2) : ℝ)⌉

end

end A344958.P10888168783409893818

/-! ## A344958.P11778912070784034192

`lt[0, A274455(n+2)%2]`
-/

namespace A344958.P11778912070784034192
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A274455 (n + 2)) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A344958.P11778912070784034192

/-! ## A344958.P7189450867731558422

`A344957(n+1)+1+n`
-/

namespace A344958.P7189450867731558422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344957 (n + 1) + 1 + (n : ℤ)

end

end A344958.P7189450867731558422

/-! ## A344958.P5518027875394930087

`eq[1, A274455(n+3)%2]+1`
-/

namespace A344958.P5518027875394930087
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A274455 (n + 3)) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A344958.P5518027875394930087

/-! ## A344958.P5783500825442877834

`floor((A133512(n+1)+1)*ϕ²)`
-/

namespace A344958.P5783500825442877834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A133512 (n + 1) + 1 : ℝ) * Real.goldenRatio ^ 2⌋

end

end A344958.P5783500825442877834

/-! ## A344958.P2158475601170224381

`A002251(A344956(n+2))`
-/

namespace A344958.P2158475601170224381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002251 (A344956 (n + 2)).toNat

end

end A344958.P2158475601170224381

/-! ## A344958.P9201098518213830314

`A001950(A133512(n+1)+1)`
-/

namespace A344958.P9201098518213830314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001950 (A133512 (n + 1) + 1).toNat

end

end A344958.P9201098518213830314

/-! ## A344958.P16814033773127597005

`A004957(A133512(n+1)+1)-1`
-/

namespace A344958.P16814033773127597005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004957 (A133512 (n + 1) + 1).toNat - 1

end

end A344958.P16814033773127597005

/-! ## A344958.P3486479466414207618

`A354415(n+1)+A001950(n+1)`
-/

namespace A344958.P3486479466414207618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354415 (n + 1) + A001950 (n + 1)

end

end A344958.P3486479466414207618

/-! ## A344958.P9393007763206476314

`A005206(A344959(n+2))+n+1`
-/

namespace A344958.P9393007763206476314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005206 (A344959 (n + 2)).toNat + (n + 1 : ℤ)

end

end A344958.P9393007763206476314

/-!
# A344959: Positions of words in A341258 starting with 1 and ending with 1.

The programs for A344959, there is no canonical definition to state claims against.
-/

/-! ## A344959.P17902223154808773428

`A087172(2*floor(ϕ*(n+1))+n)+floor(n*ϕ²)`
-/

namespace A344959.P17902223154808773428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087172 (2 * ⌊Real.goldenRatio * (n + 1 : ℝ)⌋ + (n : ℤ)).toNat + ⌊(n : ℝ) * Real.goldenRatio ^ 2⌋

end

end A344959.P17902223154808773428

/-! ## A344959.P17283591682880401482

`A001950(lt[A274455(n+1), 1])`
-/

namespace A344959.P17283591682880401482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274455 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001950 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A344959.P17283591682880401482

/-! ## A344959.P10187216295592930213

`eq[2, A342242(A003754(n+1))]`
-/

namespace A344959.P10187216295592930213
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342242 (A003754 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A344959.P10187216295592930213

/-! ## A344959.P14868214444917708564

`A001950(A256654(n+1)+n)`
-/

namespace A344959.P14868214444917708564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001950 (A256654 (n + 1) + (n : ℤ)).toNat

end

end A344959.P14868214444917708564

/-! ## A344959.P17983345678254913243

`A345347(n)+A344956(n+1)`
-/

namespace A344959.P17983345678254913243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345347 n + A344956 (n + 1)

end

end A344959.P17983345678254913243

/-! ## A344959.P17968509399563362011

`∩[A001950(n+1), A246104(n)+n]`
-/

namespace A344959.P17968509399563362011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001950 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246104 n + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A344959.P17968509399563362011

/-! ## A344959.P3289361645075989568

`A344956(n+1)+A083662(record[and(2*n, -n)])+n`
-/

namespace A344959.P3289361645075989568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (2 * n : ℤ) (-(n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344956 (n + 1) + (A083662 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat + (n : ℤ))

end

end A344959.P3289361645075989568

/-! ## A344959.P3785885196525466478

`record[A246104(A002251(n))+A002251(n)]`
-/

namespace A344959.P3785885196525466478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246104 (A002251 n).toNat + A002251 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A344959.P3785885196525466478

/-! ## A344959.P1500807853951851032

`A001950(A000045(A130234(n+1))+n)`
-/

namespace A344959.P1500807853951851032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001950 (A000045 (A130234 (n + 1)).toNat + (n : ℤ)).toNat

end

end A344959.P1500807853951851032

/-! ## A344959.P11303527473591955912

`A001950(A344956(n+1)-A060143(n))`
-/

namespace A344959.P11303527473591955912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001950 (A344956 (n + 1) - A060143 n).toNat

end

end A344959.P11303527473591955912

/-!
# A344960: Positions in A341258 of the binary complement of the n-th word in A341258.

The programs for A344960, there is no canonical definition to state claims against.
-/

/-! ## A344960.P9724186612054708014

`A232560(A358654(n+2))-1`
-/

namespace A344960.P9724186612054708014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232560 (A358654 (n + 2)).toNat - 1

end

end A344960.P9724186612054708014

/-! ## A344960.P8467921849989652187

`A345253(A348366(n+2))-1`
-/

namespace A344960.P8467921849989652187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345253 (A348366 (n + 2)).toNat - 1

end

end A344960.P8467921849989652187

/-!
# A344961: a(n) is the number of runs in the n-th word in A341258.

The programs for A344961, there is no canonical definition to state claims against.
-/

/-! ## A344961.P10808380333650305452

`A124767(∑[A107359(n)])`
-/

namespace A344961.P10808380333650305452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107359 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124767 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A344961.P10808380333650305452

/-! ## A344961.P9014980027195642208

`A124767(A003754(n+2))`
-/

namespace A344961.P9014980027195642208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124767 (A003754 (n + 2)).toNat

end

end A344961.P9014980027195642208

/-! ## A344961.P2246595182753290856

`A124767(record[A180200(n+1)])`
-/

namespace A344961.P2246595182753290856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180200 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124767 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A344961.P2246595182753290856

/-! ## A344961.P1105302286069771254

`A124767(A052499(n+1)-1)`
-/

namespace A344961.P1105302286069771254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124767 (A052499 (n + 1) - 1).toNat

end

end A344961.P1105302286069771254

/-! ## A344961.P16714249920270483182

`A124767(eq[A000007(n), A107782(n)])`
-/

namespace A344961.P16714249920270483182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107782 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124767 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A344961.P16714249920270483182

/-!
# A344962: a(n) is the position in A341258 of the reversal of the n-th word in A341258.

The programs for A344962, there is no canonical definition to state claims against.
-/

/-! ## A344962.P18332676037059966939

`A344682(n+1)`
-/

namespace A344962.P18332676037059966939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344682 (n + 1)

end

end A344962.P18332676037059966939

/-! ## A344962.P8521413595998078651

`∑[Δ[A344682(n)]%27]`
-/

namespace A344962.P8521413595998078651
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344682 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (n + 1) - f2 n) 27

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A344962.P8521413595998078651

/-! ## A344962.P14516730242628249879

`A344682(1-(n-2*n))%∑[9*n-3]`
-/

namespace A344962.P14516730242628249879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (9 * n : ℤ) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A344682 (1 - ((n : ℤ) - (2 * n : ℤ))).toNat) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A344962.P14516730242628249879

/-! ## A344962.P7957403272645001050

`A095903(A232640(n+1))`
-/

namespace A344962.P7957403272645001050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095903 (A232640 (n + 1)).toNat

end

end A344962.P7957403272645001050

/-! ## A344962.P7848734450242275387

`A095903(A232559(n+2)-1)`
-/

namespace A344962.P7848734450242275387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095903 (A232559 (n + 2) - 1).toNat

end

end A344962.P7848734450242275387

/-! ## A344962.P2731854356827337812

`A028310(A344682(abs(xor(n, -1))))`
-/

namespace A344962.P2731854356827337812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A344682 |Int.xor (n : ℤ) (-1)|.toNat).toNat

end

end A344962.P2731854356827337812

/-! ## A344962.P7262873079815442914

`A095903(∑[-Δ[-A232559(n+1)]])`
-/

namespace A344962.P7262873079815442914
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A232559 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095903 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A344962.P7262873079815442914

/-! ## A344962.P3813194673538939385

`Δ[a(n-1)-A001057(2*A344682(n))]` with `a(0)=1`
-/

namespace A344962.P3813194673538939385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) - A001057 (2 * A344682 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A344962.P3813194673538939385

/-! ## A344962.P16937245687723586092

`A022290(A059893(A003754(n+2)))`
-/

namespace A344962.P16937245687723586092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022290 (A059893 (A003754 (n + 2)).toNat).toNat

end

end A344962.P16937245687723586092

/-! ## A344962.P10627763187103672960

`A343152(n+2)-1`
-/

namespace A344962.P10627763187103672960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343152 (n + 2) - 1

end

end A344962.P10627763187103672960

/-!
# A344969: a(n) = gcd(A011772(n), A344875(n)).

The programs for A344969, there is no canonical definition to state claims against.
-/

/-! ## A344969.P5907659347271671250

`gcd(A011772(n+1), A344875(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A344969.P5907659347271671250
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A011772 (n + 1)) (A344875 (n + 1))

end

end A344969.P5907659347271671250

/-! ## A344969.P10820434669448846933

`A354985(2*(n+1))`
-/

namespace A344969.P10820434669448846933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354985 (2 * (n + 1))

end

end A344969.P10820434669448846933

/-! ## A344969.P2559828862786323870

`A011772(n+1)/A344970(n+1)`
-/

namespace A344969.P2559828862786323870
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A011772 (n + 1) : ℚ) / (A344970 (n + 1) : ℚ)

end

end A344969.P2559828862786323870

/-! ## A344969.P6242639846805097443

`A344875(n+1)/A344971(n+1)`
-/

namespace A344969.P6242639846805097443
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A344875 (n + 1) : ℚ) / (A344971 (n + 1) : ℚ)

end

end A344969.P6242639846805097443

/-! ## A344969.P6819806749069852066

`(A344876(n+1)+A011772(n+1))/A344971(n+1)`
-/

namespace A344969.P6819806749069852066
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A344876 (n + 1) + A011772 (n + 1) : ℚ) / (A344971 (n + 1) : ℚ)

end

end A344969.P6819806749069852066

/-! ## A344969.P12734061852116258850

`(A000203(n+1)-A344765(n+1))/A344970(n+1)`
-/

namespace A344969.P12734061852116258850
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) - A344765 (n + 1) : ℚ) / (A344970 (n + 1) : ℚ)

end

end A344969.P12734061852116258850

/-! ## A344969.P3009099095774181163

`(A344875(n+1)-A344876(n+1))/A344970(n+1)`
-/

namespace A344969.P3009099095774181163
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A344875 (n + 1) - A344876 (n + 1) : ℚ) / (A344970 (n + 1) : ℚ)

end

end A344969.P3009099095774181163

/-! ## A344969.P15825181742626754838

`(A345065(n+1)-A345055(n+1))/A344970(n+1)`
-/

namespace A344969.P15825181742626754838
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A345065 (n + 1) - A345055 (n + 1) : ℚ) / (A344970 (n + 1) : ℚ)

end

end A344969.P15825181742626754838

/-! ## A344969.P11027841745305273090

`A344878(n+1)*A344879(n+1)/A344971(n+1)`
-/

namespace A344969.P11027841745305273090
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A344878 (n + 1) * A344879 (n + 1) : ℚ) / (A344971 (n + 1) : ℚ)

end

end A344969.P11027841745305273090

/-! ## A344969.P16619885634910986285

`(A064987(n+1)/(n+1)-A344765(n+1))/A344970(n+1)`
-/

namespace A344969.P16619885634910986285
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A064987 (n + 1) : ℚ) / (n + 1 : ℚ) - (A344765 (n + 1) : ℚ)) / (A344970 (n + 1) : ℚ)

end

end A344969.P16619885634910986285

/-! ## A344969.P16107074189787400048

`(A082052(n+1)+A050449(n+1)-A344765(n+1))/A344970(n+1)`
-/

namespace A344969.P16107074189787400048
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A082052 (n + 1) + A050449 (n + 1) - A344765 (n + 1) : ℚ) / (A344970 (n + 1) : ℚ)

end

end A344969.P16107074189787400048

/-! ## A344969.P14628749652712480131

`(A146076(n+1)+A000593(n+1)-A344765(n+1))/A344970(n+1)`
-/

namespace A344969.P14628749652712480131
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A146076 (n + 1) + A000593 (n + 1) - A344765 (n + 1) : ℚ) / (A344970 (n + 1) : ℚ)

end

end A344969.P14628749652712480131

/-! ## A344969.P16200601408123941468

`(A178637(n+1)+A023889(n+1)-A344765(n+1))/A344970(n+1)`
-/

namespace A344969.P16200601408123941468
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A178637 (n + 1) + A023889 (n + 1) - A344765 (n + 1) : ℚ) / (A344970 (n + 1) : ℚ)

end

end A344969.P16200601408123941468

/-! ## A344969.P1586864178305749771

`A047994(2*(n+1))/A344971(n+1)`
-/

namespace A344969.P1586864178305749771
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A047994 (2 * (n + 1)) : ℚ) / (A344971 (n + 1) : ℚ)

end

end A344969.P1586864178305749771

/-! ## A344969.P14673099604607008925

`A047994(2*(n+1))/A354986(2*(n+1))`
-/

namespace A344969.P14673099604607008925
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A047994 (2 * (n + 1)) : ℚ) / (A354986 (2 * (n + 1)) : ℚ)

end

end A344969.P14673099604607008925

/-! ## A344969.P12104903603014580833

`A344005(2*(n+1))/A354987(2*(n+1))`
-/

namespace A344969.P12104903603014580833
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A344005 (2 * (n + 1)) : ℚ) / (A354987 (2 * (n + 1)) : ℚ)

end

end A344969.P12104903603014580833

/-! ## A344969.P8370085235933785592

`gcd(A047994(2*(n+1)), A344005(2*(n+1)))`
-/

namespace A344969.P8370085235933785592
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A047994 (2 * (n + 1))) (A344005 (2 * (n + 1)))

end

end A344969.P8370085235933785592

/-! ## A344969.P17135385995081050377

`(A346607(2*(n+1))+A344005(2*(n+1)))/A354986(2*(n+1))`
-/

namespace A344969.P17135385995081050377
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A346607 (2 * (n + 1)) + A344005 (2 * (n + 1)) : ℚ) / (A354986 (2 * (n + 1)) : ℚ)

end

end A344969.P17135385995081050377

/-! ## A344969.P6245073555812132423

`(A047994(2*(n+1))-A346607(2*(n+1)))/A354987(2*(n+1))`
-/

namespace A344969.P6245073555812132423
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A047994 (2 * (n + 1)) - A346607 (2 * (n + 1)) : ℚ) / (A354987 (2 * (n + 1)) : ℚ)

end

end A344969.P6245073555812132423

/-! ## A344969.P2537662182025417372

`A345992(2*(n+1))*A345998(2*(n+1))/A354987(2*(n+1))`
-/

namespace A344969.P2537662182025417372
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A345992 (2 * (n + 1)) * A345998 (2 * (n + 1)) : ℚ) / (A354987 (2 * (n + 1)) : ℚ)

end

end A344969.P2537662182025417372

/-!
# A344970: a(n) = A011772(n) / gcd(A011772(n), A344875(n)).

The programs for A344970, there is no canonical definition to state claims against.
-/

/-! ## A344970.P18252156956166216558

`A011772(n+1)/A344969(n+1)`
-/

namespace A344970.P18252156956166216558
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A011772 (n + 1) : ℚ) / (A344969 (n + 1) : ℚ)

end

end A344970.P18252156956166216558

/-! ## A344970.P3685758739137529203

`A011772(n+1)/gcd(A011772(n+1), A344875(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A344970.P3685758739137529203
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A011772 (n + 1) : ℚ) / (Int.gcd (A011772 (n + 1)) (A344875 (n + 1)) : ℚ)

end

end A344970.P3685758739137529203

/-! ## A344970.P14255047404112288235

`A354987(2*(n+1))`
-/

namespace A344970.P14255047404112288235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354987 (2 * (n + 1))

end

end A344970.P14255047404112288235

/-! ## A344970.P2649717545125170333

`A011772(n+1)/A354985(2*(n+1))`
-/

namespace A344970.P2649717545125170333
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A011772 (n + 1) : ℚ) / (A354985 (2 * (n + 1)) : ℚ)

end

end A344970.P2649717545125170333

/-! ## A344970.P16581022412792689554

`(A344875(n+1)-A344876(n+1))/A344969(n+1)`
-/

namespace A344970.P16581022412792689554
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A344875 (n + 1) - A344876 (n + 1) : ℚ) / (A344969 (n + 1) : ℚ)

end

end A344970.P16581022412792689554

/-! ## A344970.P12533226417587037941

`A344971(n+1)-A344876(n+1)/A344969(n+1)`
-/

namespace A344970.P12533226417587037941
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A344971 (n + 1) : ℚ) - (A344876 (n + 1) : ℚ) / (A344969 (n + 1) : ℚ)

end

end A344970.P12533226417587037941

/-! ## A344970.P4891916217604605925

`A011772(n+1)/A344875(n+1)*A344971(n+1)`
-/

namespace A344970.P4891916217604605925
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A011772 (n + 1) : ℚ) / (A344875 (n + 1) : ℚ) * (A344971 (n + 1) : ℚ)

end

end A344970.P4891916217604605925

/-! ## A344970.P1568341856303849454

`(A082052(n+1)+A050449(n+1)-A344765(n+1))/A344969(n+1)`
-/

namespace A344970.P1568341856303849454
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A082052 (n + 1) + A050449 (n + 1) - A344765 (n + 1) : ℚ) / (A344969 (n + 1) : ℚ)

end

end A344970.P1568341856303849454

/-! ## A344970.P7995541567028333450

`(A146076(n+1)+A000593(n+1)-A344765(n+1))/A344969(n+1)`
-/

namespace A344970.P7995541567028333450
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A146076 (n + 1) + A000593 (n + 1) - A344765 (n + 1) : ℚ) / (A344969 (n + 1) : ℚ)

end

end A344970.P7995541567028333450

/-! ## A344970.P793825751823778235

`(A178637(n+1)+A023889(n+1)-A344765(n+1))/A344969(n+1)`
-/

namespace A344970.P793825751823778235
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A178637 (n + 1) + A023889 (n + 1) - A344765 (n + 1) : ℚ) / (A344969 (n + 1) : ℚ)

end

end A344970.P793825751823778235

/-! ## A344970.P13961788544913336635

`A344005(2*(n+1))/A354985(2*(n+1))`
-/

namespace A344970.P13961788544913336635
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A344005 (2 * (n + 1)) : ℚ) / (A354985 (2 * (n + 1)) : ℚ)

end

end A344970.P13961788544913336635

/-! ## A344970.P8143063039104130877

`A344005(A103517(n))/A344969(n+1)`
-/

namespace A344970.P8143063039104130877
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A344005 (A103517 n).toNat : ℚ) / (A344969 (n + 1) : ℚ)

end

end A344970.P8143063039104130877

/-!
# A344971: a(n) = A344875(n) / gcd(A011772(n), A344875(n)).

The programs for A344971, there is no canonical definition to state claims against.
-/

/-! ## A344971.P12108837761353726837

`A344875(n+1)/A344969(n+1)`
-/

namespace A344971.P12108837761353726837
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A344875 (n + 1) : ℚ) / (A344969 (n + 1) : ℚ)

end

end A344971.P12108837761353726837

/-! ## A344971.P6453671862476365415

`A344875(n+1)/gcd(A011772(n+1), A344875(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A344971.P6453671862476365415
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A344875 (n + 1) : ℚ) / (Int.gcd (A011772 (n + 1)) (A344875 (n + 1)) : ℚ)

end

end A344971.P6453671862476365415

/-! ## A344971.P14436183299109837504

`A354986(2*(n+1))`
-/

namespace A344971.P14436183299109837504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354986 (2 * (n + 1))

end

end A344971.P14436183299109837504

/-! ## A344971.P12634045140095481645

`(A344876(n+1)+A011772(n+1))/A344969(n+1)`
-/

namespace A344971.P12634045140095481645
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A344876 (n + 1) + A011772 (n + 1) : ℚ) / (A344969 (n + 1) : ℚ)

end

end A344971.P12634045140095481645

/-! ## A344971.P1211204211052956531

`A344970(n+1)+A344876(n+1)/A344969(n+1)`
-/

namespace A344971.P1211204211052956531
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A344970 (n + 1) : ℚ) + (A344876 (n + 1) : ℚ) / (A344969 (n + 1) : ℚ)

end

end A344971.P1211204211052956531

/-! ## A344971.P4087142533175487865

`A344875(n+1)/A011772(n+1)*A344970(n+1)`
-/

namespace A344971.P4087142533175487865
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A344875 (n + 1) : ℚ) / (A011772 (n + 1) : ℚ) * (A344970 (n + 1) : ℚ)

end

end A344971.P4087142533175487865

/-! ## A344971.P18349926309301680341

`A047994(2*(n+1))/A344969(n+1)`
-/

namespace A344971.P18349926309301680341
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A047994 (2 * (n + 1)) : ℚ) / (A344969 (n + 1) : ℚ)

end

end A344971.P18349926309301680341

/-! ## A344971.P5881892337072214899

`A047994(2*(n+1))/A354985(2*(n+1))`
-/

namespace A344971.P5881892337072214899
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A047994 (2 * (n + 1)) : ℚ) / (A354985 (2 * (n + 1)) : ℚ)

end

end A344971.P5881892337072214899

/-! ## A344971.P2257968855641028477

`A354987(2*(n+1))+A346607(2*(n+1))/A354985(2*(n+1))`
-/

namespace A344971.P2257968855641028477
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A354987 (2 * (n + 1)) : ℚ) + (A346607 (2 * (n + 1)) : ℚ) / (A354985 (2 * (n + 1)) : ℚ)

end

end A344971.P2257968855641028477

/-! ## A344971.P17725767076163059862

`A047994(2*(n+1))/gcd(A047994(2*(n+1)), A344005(2*(n+1)))`
-/

namespace A344971.P17725767076163059862
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A047994 (2 * (n + 1)) : ℚ) / (Int.gcd (A047994 (2 * (n + 1))) (A344005 (2 * (n + 1))) : ℚ)

end

end A344971.P17725767076163059862

/-!
# A344972: a(n) = floor(A344875(n) / A011772(n)).

The programs for A344972, there is no canonical definition to state claims against.
-/

/-! ## A344972.P15150717751445668856

`floor(A344875(n+1)/A011772(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A344972.P15150717751445668856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A344875 (n + 1) : ℚ) / (A011772 (n + 1) : ℚ)⌋

end

end A344972.P15150717751445668856

/-! ## A344972.P4173064753097304768

`floor(A344971(n+1)/A344970(n+1))`
-/

namespace A344972.P4173064753097304768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A344971 (n + 1) : ℚ) / (A344970 (n + 1) : ℚ)⌋

end

end A344972.P4173064753097304768

/-! ## A344972.P1250078888499233813

`(A344875(n+1)-A344973(n+1))/A011772(n+1)`
-/

namespace A344972.P1250078888499233813
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A344875 (n + 1) - A344973 (n + 1) : ℚ) / (A011772 (n + 1) : ℚ)

end

end A344972.P1250078888499233813

/-! ## A344972.P17309700820620276366

`floor(A344875(n+1)/(A088580(n+1)-(A344765(n+1)+1)))`
-/

namespace A344972.P17309700820620276366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A344875 (n + 1) : ℚ) / (A088580 (n + 1) - (A344765 (n + 1) + 1) : ℚ)⌋

end

end A344972.P17309700820620276366

/-! ## A344972.P1098921959598515936

`floor(A344875(n+1)/(A343996(n+1)+A343999(n+1)-1))`
-/

namespace A344972.P1098921959598515936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A344875 (n + 1) : ℚ) / (A343996 (n + 1) + (A343999 (n + 1) - 1) : ℚ)⌋

end

end A344972.P1098921959598515936

/-! ## A344972.P14633354561230638823

`floor(A344875(n+1)/(A354985(2*(n+1))*A354987(2*(n+1))))`
-/

namespace A344972.P14633354561230638823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A344875 (n + 1) : ℚ) / (A354985 (2 * (n + 1)) * A354987 (2 * (n + 1)) : ℚ)⌋

end

end A344972.P14633354561230638823

/-! ## A344972.P9775168426187000174

`floor(A047994(2*(n+1))/A011772(n+1))`
-/

namespace A344972.P9775168426187000174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A047994 (2 * (n + 1)) : ℚ) / (A011772 (n + 1) : ℚ)⌋

end

end A344972.P9775168426187000174

/-! ## A344972.P17266502181462961702

`floor(A047994(2*(n+1))/A344005(2*(n+1)))`
-/

namespace A344972.P17266502181462961702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A047994 (2 * (n + 1)) : ℚ) / (A344005 (2 * (n + 1)) : ℚ)⌋

end

end A344972.P17266502181462961702

/-!
# A344973: a(n) = A344875(n) mod A011772(n).

The programs for A344973, there is no canonical definition to state claims against.
-/

/-! ## A344973.P3749035374943839894

`A344875(n+1)%A011772(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A344973.P3749035374943839894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A344875 (n + 1)) (A011772 (n + 1))

end

end A344973.P3749035374943839894

/-! ## A344973.P8171082398131783927

`A344876(n+1)%A011772(n+1)`
-/

namespace A344973.P8171082398131783927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A344876 (n + 1)) (A011772 (n + 1))

end

end A344973.P8171082398131783927

/-! ## A344973.P4137660412653736214

`A344875(n+1)-A011772(n+1)*A344972(n+1)`
-/

namespace A344973.P4137660412653736214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344875 (n + 1) - A011772 (n + 1) * A344972 (n + 1)

end

end A344973.P4137660412653736214

/-! ## A344973.P8148541682618133570

`(A344969(n+1)*A344971(n+1))%A011772(n+1)`
-/

namespace A344973.P8148541682618133570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A344969 (n + 1) * A344971 (n + 1)) (A011772 (n + 1))

end

end A344973.P8148541682618133570

/-! ## A344973.P11085119423553271276

`(A344876(n+1)*A344972(n+1))%A344875(n+1)`
-/

namespace A344973.P11085119423553271276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A344876 (n + 1) * A344972 (n + 1)) (A344875 (n + 1))

end

end A344973.P11085119423553271276

/-! ## A344973.P8166051522506392398

`A047994(2*(n+1))%A011772(n+1)`
-/

namespace A344973.P8166051522506392398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A047994 (2 * (n + 1))) (A011772 (n + 1))

end

end A344973.P8166051522506392398

/-! ## A344973.P8079313738005518576

`A346607(2*(n+1))%A344005(2*(n+1))`
-/

namespace A344973.P8079313738005518576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A346607 (2 * (n + 1))) (A344005 (2 * (n + 1)))

end

end A344973.P8079313738005518576

/-!
# A344974: Numbers k such that A011772(k) divides A344875(k).

The programs for A344974, there is no canonical definition to state claims against.
-/

/-! ## A344974.P10411198294753849410

`lt[0, A344884(n+1)]+1`
-/

namespace A344974.P10411198294753849410
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344884 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A344974.P10411198294753849410

/-! ## A344974.P14096788565009183065

`eq[1, A344970(n+1)]+1`
-/

namespace A344974.P14096788565009183065
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344970 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A344974.P14096788565009183065

/-! ## A344974.P1152236773093781984

`eq[0, A344973(n+1)]+1`
-/

namespace A344974.P1152236773093781984
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344973 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A344974.P1152236773093781984

/-! ## A344974.P13617240046329818638

`eq[1, A000065(a(A344973(n)))]` with `a(0)=2`
-/

namespace A344974.P13617240046329818638
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f2 =>
  A000065 (f2 (A344973 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A344974.P13617240046329818638

/-! ## A344974.P7194829273018820675

`eq[1, A000124(a(A344973(n)))]` with `a(0)=0`
-/

namespace A344974.P7194829273018820675
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f2 =>
  A000124 (f2 (A344973 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A344974.P7194829273018820675

/-! ## A344974.P14496393578273158898

`filter[A038459(n+1), A344884(#)]`
-/

namespace A344974.P14496393578273158898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038459 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A344884 (f1 j).toNat = 1) n)

end

end A344974.P14496393578273158898

/-! ## A344974.P18420966107763599526

`eq[1, A000125(a(A344973(n)))]` with `a(0)=0`
-/

namespace A344974.P18420966107763599526
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f2 =>
  A000125 (f2 (A344973 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A344974.P18420966107763599526

/-! ## A344974.P5706610630375113080

`eq[1, A000079(a(A344973(n)))]` with `a(0)=0`
-/

namespace A344974.P5706610630375113080
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f2 =>
  A000079 (f2 (A344973 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A344974.P5706610630375113080

/-! ## A344974.P12843294757263128141

`∪[A000961(n+1), A344975(n+1)]`
-/

namespace A344974.P12843294757263128141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344975 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A344974.P12843294757263128141

/-! ## A344974.P17693037119674340766

`∪[A225657(n+1), A344975(n+1)]`
-/

namespace A344974.P17693037119674340766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225657 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344975 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A344974.P17693037119674340766

/-!
# A344975: Numbers k such that A011772(k) divides A344875(k), but k is not a power of prime (in A000961).

The programs for A344975, there is no canonical definition to state claims against.
-/

/-! ## A344975.P12594954790293339016

`filter[A024619(n+1), A344884(#)]`
-/

namespace A344975.P12594954790293339016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024619 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A344884 (f1 j).toNat = 1) n)

end

end A344975.P12594954790293339016

/-! ## A344975.P6798246185580535913

`filter[A056868(n+1), A344884(#)]`
-/

namespace A344975.P6798246185580535913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056868 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A344884 (f1 j).toNat = 1) n)

end

end A344975.P6798246185580535913

/-! ## A344975.P12990431175238476533

`filter[A064040(n+1), A344884(#)]`
-/

namespace A344975.P12990431175238476533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A344884 (f1 j).toNat = 1) n)

end

end A344975.P12990431175238476533

/-! ## A344975.P2699866526066602202

`filter[A344974(n+1), A143731(#)]`
-/

namespace A344975.P2699866526066602202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344974 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A143731 (f1 j).toNat = 1) n)

end

end A344975.P2699866526066602202

/-! ## A344975.P7484308001102660050

`filter[A168638(n+1), A344884(#)]`
-/

namespace A344975.P7484308001102660050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168638 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A344884 (f1 j).toNat = 1) n)

end

end A344975.P7484308001102660050

/-! ## A344975.P10576656463163440382

`filter[A361102(n+2), A344884(#)]`
-/

namespace A344975.P10576656463163440382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361102 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A344884 (f1 j).toNat = 1) n)

end

end A344975.P10576656463163440382

/-! ## A344975.P6433717492118263039

`∩[A024619(n+1), A344974(n+1)]`
-/

namespace A344975.P6433717492118263039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024619 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344974 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A344975.P6433717492118263039

/-! ## A344975.P17204649748005190477

`∩[A056868(n+1), A344974(n+1)]`
-/

namespace A344975.P17204649748005190477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056868 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344974 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A344975.P17204649748005190477

/-! ## A344975.P12045478464348606799

`∩[A064040(n+1), A344974(n+1)]`
-/

namespace A344975.P12045478464348606799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344974 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A344975.P12045478464348606799

/-! ## A344975.P7062949857656278895

`∩[A168638(n+1), A344974(n+1)]`
-/

namespace A344975.P7062949857656278895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168638 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344974 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A344975.P7062949857656278895

/-!
# A344976: a(n) = A344878(n) - A011772(n).

The programs for A344976, there is no canonical definition to state claims against.
-/

/-! ## A344976.P6713382170388053885

`A344878(n+1)-A011772(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A344976.P6713382170388053885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344878 (n + 1) - A011772 (n + 1)

end

end A344976.P6713382170388053885

/-! ## A344976.P17382101558232578606

`A344763(n+1)+A344878(n+1)-(n+1)`
-/

namespace A344976.P17382101558232578606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344763 (n + 1) + (A344878 (n + 1) - (n + 1 : ℤ))

end

end A344976.P17382101558232578606

/-! ## A344976.P9621883293751544280

`A344874(n+1)+A344878(n+1)-A047994(n+1)`
-/

namespace A344976.P9621883293751544280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344874 (n + 1) + (A344878 (n + 1) - A047994 (n + 1))

end

end A344976.P9621883293751544280

/-! ## A344976.P16847654767988401502

`A344876(n+1)+A344878(n+1)-A344875(n+1)`
-/

namespace A344976.P16847654767988401502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344876 (n + 1) + (A344878 (n + 1) - A344875 (n + 1))

end

end A344976.P16847654767988401502

/-! ## A344976.P13882888321360423111

`A344878(n+1)-(A081469(n+1)-A061782(n+1))`
-/

namespace A344976.P13882888321360423111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344878 (n + 1) - (A081469 (n + 1) - A061782 (n + 1))

end

end A344976.P13882888321360423111

/-! ## A344976.P7152734811972379223

`A344878(n+1)-(A345065(n+1)-A345055(n+1))`
-/

namespace A344976.P7152734811972379223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344878 (n + 1) - (A345065 (n + 1) - A345055 (n + 1))

end

end A344976.P7152734811972379223

/-! ## A344976.P14673440518621265861

`A344878(n+1)-A344969(n+1)*A344970(n+1)`
-/

namespace A344976.P14673440518621265861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344878 (n + 1) - A344969 (n + 1) * A344970 (n + 1)

end

end A344976.P14673440518621265861

/-! ## A344976.P557751674894693243

`A344875(n+1)/A344879(n+1)-A011772(n+1)`
-/

namespace A344976.P557751674894693243
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A344875 (n + 1) : ℚ) / (A344879 (n + 1) : ℚ) - (A011772 (n + 1) : ℚ)

end

end A344976.P557751674894693243

/-!
# A344977: Numbers k for which A011772(k) exceeds A344878(k).

The programs for A344977, there is no canonical definition to state claims against.
-/

/-! ## A344977.P13581510247347159936

`lt[A344976(n+1), 0]+1`
-/

namespace A344977.P13581510247347159936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344976 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A344977.P13581510247347159936

/-! ## A344977.P9629214900891031525

`lt[A344976(or(n, C(2, n))), 0]`
-/

namespace A344977.P9629214900891031525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344976 (Nat.lor n (Nat.choose 2 n))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A344977.P9629214900891031525

/-! ## A344977.P3776833229278333109

`lt[A344976(abs(C(2, n)-n)), 0]`
-/

namespace A344977.P3776833229278333109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344976 |(Nat.choose 2 n : ℤ) - (n : ℤ)|.toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A344977.P3776833229278333109

/-! ## A344977.P7231963875156302702

`lt[A344976(n*a(C(3, n))), 0]` with `a(0)=1, a(1)=1, a(2)=0`
-/

namespace A344977.P7231963875156302702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 0] fun n f1 =>
  A344976 ((n : ℤ) * f1 (Nat.choose 3 n)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A344977.P7231963875156302702

/-! ## A344977.P16918911205984870349

`lt[A344976(C(2, n)-(n-2*n)), 0]`
-/

namespace A344977.P16918911205984870349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344976 ((Nat.choose 2 n : ℤ) - ((n : ℤ) - (2 * n : ℤ))).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A344977.P16918911205984870349

/-! ## A344977.P8506143498298539660

`lt[A344976(A028310(n)), 0]`
-/

namespace A344977.P8506143498298539660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344976 (A028310 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A344977.P8506143498298539660

/-! ## A344977.P1428734646699082096

`A020725(lt[A344976(n+1), 0])`
-/

namespace A344977.P1428734646699082096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344976 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A344977.P1428734646699082096

/-! ## A344977.P3885663031005327197

`A153152(lt[A344976(n+1), 0])`
-/

namespace A344977.P3885663031005327197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344976 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A344977.P3885663031005327197

/-! ## A344977.P4569592987810235548

`A181569(lt[A344976(n+1), 0])`
-/

namespace A344977.P4569592987810235548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344976 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181569 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A344977.P4569592987810235548

/-! ## A344977.P7414124009413780349

`lt[A344976(A065033(2*n)), 0]`
-/

namespace A344977.P7414124009413780349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344976 (A065033 (2 * n)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A344977.P7414124009413780349

/-!
# A344978: Numbers k such that A011772(k) is equal to A344878(k), but k is not a power of prime.

The programs for A344978, there is no canonical definition to state claims against.
-/

/-! ## A344978.P14259731607653392751

`filter[A024619(n+1), A344885(#)]`
-/

namespace A344978.P14259731607653392751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024619 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A344885 (f1 j).toNat = 1) n)

end

end A344978.P14259731607653392751

/-! ## A344978.P13263740352528521041

`filter[A056868(n+1), A344885(#)]`
-/

namespace A344978.P13263740352528521041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056868 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A344885 (f1 j).toNat = 1) n)

end

end A344978.P13263740352528521041

/-! ## A344978.P314976454104230218

`filter[A064040(n+1), A344885(#)]`
-/

namespace A344978.P314976454104230218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A344885 (f1 j).toNat = 1) n)

end

end A344978.P314976454104230218

/-! ## A344978.P6065851490350566380

`filter[A081062(n+1), A344885(#)]`
-/

namespace A344978.P6065851490350566380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081062 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A344885 (f1 j).toNat = 1) n)

end

end A344978.P6065851490350566380

/-! ## A344978.P17623662905695254893

`filter[A168638(n+1), A344885(#)]`
-/

namespace A344978.P17623662905695254893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168638 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A344885 (f1 j).toNat = 1) n)

end

end A344978.P17623662905695254893

/-! ## A344978.P3698198489375764785

`filter[A324455(n+1), A344885(#)]`
-/

namespace A344978.P3698198489375764785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324455 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A344885 (f1 j).toNat = 1) n)

end

end A344978.P3698198489375764785

/-! ## A344978.P12126708502380966838

`filter[A340749(n+1), A344885(#)]`
-/

namespace A344978.P12126708502380966838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340749 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A344885 (f1 j).toNat = 1) n)

end

end A344978.P12126708502380966838

/-! ## A344978.P12711329604122812692

`filter[A386207(n+1), A344885(#)]`
-/

namespace A344978.P12711329604122812692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386207 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A344885 (f1 j).toNat = 1) n)

end

end A344978.P12711329604122812692

/-! ## A344978.P12043640551912927394

`filter[A060702(n+2), A344885(#)]`
-/

namespace A344978.P12043640551912927394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060702 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A344885 (f1 j).toNat = 1) n)

end

end A344978.P12043640551912927394

/-! ## A344978.P2981393356015522350

`filter[A158871(n+2), A344885(#)]`
-/

namespace A344978.P2981393356015522350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158871 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A344885 (f1 j).toNat = 1) n)

end

end A344978.P2981393356015522350

/-!
# A344979: Numbers k such that A011772(k) is equal to A344878(k).

The programs for A344979, there is no canonical definition to state claims against.
-/

/-! ## A344979.P16513664364774823608

`eq[0, A344976(n+1)]+1`
-/

namespace A344979.P16513664364774823608
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344976 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A344979.P16513664364774823608

/-! ## A344979.P17694565754275580318

`lt[0, A344885(n+1)]+1`
-/

namespace A344979.P17694565754275580318
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344885 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A344979.P17694565754275580318

/-! ## A344979.P9454129838105506883

`eq[1, A344885(C(n+1, n))]+1`
-/

namespace A344979.P9454129838105506883
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344885 (Nat.choose (n + 1) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A344979.P9454129838105506883

/-! ## A344979.P1775420334032539641

`eq[1, A344885(2*n+1-n)]+1`
-/

namespace A344979.P1775420334032539641
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344885 (2 * n + 1 - n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A344979.P1775420334032539641

/-! ## A344979.P15662459192253912167

`filter[A038459(n+1), A344885(#)]`
-/

namespace A344979.P15662459192253912167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038459 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A344885 (f1 j).toNat = 1) n)

end

end A344979.P15662459192253912167

/-! ## A344979.P4353973618390076257

`filter[A064598(n+1), A344885(#)]`
-/

namespace A344979.P4353973618390076257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064598 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A344885 (f1 j).toNat = 1) n)

end

end A344979.P4353973618390076257

/-! ## A344979.P8799795704278174601

`filter[A064736(n+1), A344885(#)]`
-/

namespace A344979.P8799795704278174601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A344885 (f1 j).toNat = 1) n)

end

end A344979.P8799795704278174601

/-! ## A344979.P6296597585038408461

`filter[A065200(n+1), A344885(#)]`
-/

namespace A344979.P6296597585038408461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065200 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A344885 (f1 j).toNat = 1) n)

end

end A344979.P6296597585038408461

/-! ## A344979.P5386066459763381876

`filter[A069782(n+1), A344885(#)]`
-/

namespace A344979.P5386066459763381876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A344885 (f1 j).toNat = 1) n)

end

end A344979.P5386066459763381876

/-! ## A344979.P17465159271917592943

`filter[A094759(n+1), A344885(#)]`
-/

namespace A344979.P17465159271917592943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094759 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A344885 (f1 j).toNat = 1) n)

end

end A344979.P17465159271917592943

/-!
# A344980: Numbers k such that A011772(k) does not divide A344875(k).

The programs for A344980, there is no canonical definition to state claims against.
-/

/-! ## A344980.P9986626875224333763

`eq[0, A344884(n+1)]+1`
-/

namespace A344980.P9986626875224333763
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344884 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A344980.P9986626875224333763

/-! ## A344980.P1091272050435549315

`lt[1, A344970(n+1)]+1`
-/

namespace A344980.P1091272050435549315
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344970 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A344980.P1091272050435549315

/-! ## A344980.P575926885668980729

`lt[0, A344973(n+1)]+1`
-/

namespace A344980.P575926885668980729
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344973 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A344980.P575926885668980729

/-! ## A344980.P6284281841479392537

`eq[1, A000009(a(A344973(n)))]` with `a(0)=3`
-/

namespace A344980.P6284281841479392537
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f2 =>
  A000009 (f2 (A344973 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A344980.P6284281841479392537

/-! ## A344980.P3602126483601663548

`eq[1, A000010(a(A344973(n)))]` with `a(0)=3`
-/

namespace A344980.P3602126483601663548
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f2 =>
  A000010 (f2 (A344973 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A344980.P3602126483601663548

/-! ## A344980.P5080668881258708996

`eq[1, A000045(a(A344973(n)))]` with `a(0)=3`
-/

namespace A344980.P5080668881258708996
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f2 =>
  A000045 (f2 (A344973 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A344980.P5080668881258708996

/-! ## A344980.P4490401047287951159

`eq[1, A000081(a(A344973(n)))]` with `a(0)=3`
-/

namespace A344980.P4490401047287951159
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f2 =>
  A000081 (f2 (A344973 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A344980.P4490401047287951159

/-! ## A344980.P5665990403837807690

`lt[0, A344973(A028310(n))]`
-/

namespace A344980.P5665990403837807690
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344973 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A344980.P5665990403837807690

/-!
# A344981: Number of Goldbach partitions of 2n into two even-indexed primes.

The programs for A344981, there is no canonical definition to state claims against.
-/

/-! ## A344981.P5973385682154211294

`A095808(A078358(n+1))^A004199(n+1)!`
-/

namespace A344981.P5973385682154211294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095808 (A078358 (n + 1)).toNat ^ Nat.factorial (A004199 (n + 1)).toNat

end

end A344981.P5973385682154211294

/-! ## A344981.P17565540947711191580

`A095808(A078358(n+1))+A000038(A000032(n))`
-/

namespace A344981.P17565540947711191580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095808 (A078358 (n + 1)).toNat + A000038 (A000032 n).toNat

end

end A344981.P17565540947711191580

/-! ## A344981.P10419219864081858046

`A095808(A078358(n+1))^A014963(A002522(n))`
-/

namespace A344981.P10419219864081858046
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A095808 (A078358 (n + 1)).toNat : ℚ) ^ (A014963 (A002522 n).toNat : ℤ)

end

end A344981.P10419219864081858046

/-! ## A344981.P5135600892360670402

`A095808(A078358(n+1))+A000007(A000045(n+1))`
-/

namespace A344981.P5135600892360670402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095808 (A078358 (n + 1)).toNat + A000007 (A000045 (n + 1)).toNat

end

end A344981.P5135600892360670402

/-! ## A344981.P53938944940426637

`and(A066099(A209752(3*n+4)), A274821(n))`
-/

namespace A344981.P53938944940426637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A066099 (A209752 (3 * n + 4)).toNat) (A274821 n)

end

end A344981.P53938944940426637

/-!
# A344982: Number of Goldbach partitions of 2n into two odd-indexed primes.

The programs for A344982, there is no canonical definition to state claims against.
-/

/-! ## A344982.P4509550568624430203

`22%∑{e}[A000204(n+5), #]`
-/

namespace A344982.P4509550568624430203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000204 (n + 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  22 % (∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)

end

end A344982.P4509550568624430203

/-! ## A344982.P13188499728697828397

`A165918(∑{e}[round(ϕ*a(n-1)), #])` with `a(0)=11`
-/

namespace A344982.P13188499728697828397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [11] fun n f1 =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (f1 (n - 1) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165918 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)

end

end A344982.P13188499728697828397

/-! ## A344982.P3761215004958297741

`A004524(∑{e}[A000032(n+5), #])`
-/

namespace A344982.P3761215004958297741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)

end

end A344982.P3761215004958297741

/-! ## A344982.P118404428421852713

`A004524(∑{e}[A000204(n+5), #])`
-/

namespace A344982.P118404428421852713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000204 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)

end

end A344982.P118404428421852713

/-! ## A344982.P18392441222566995777

`A002064(∑{e}[A000032(n+5), #])%3`
-/

namespace A344982.P18392441222566995777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002064 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)) 3

end

end A344982.P18392441222566995777

/-!
# A344985: Sum of imbalance of all initial subsequences of the binary representation of n.

The programs for A344985, the canonical program `A344985.P13634796832414183033` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A344985 has offset 1).

The definition of A344985 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A344985.P13634796832414183033

`a(ceil(n/2)-1)+abs(A037861(n+1))` with `a(0)=1`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A344985

/-- `a(ceil(n/2)-1)+abs(A037861(n+1))` -/
def P13634796832414183033.Spec : Prop :=
  ∀ n, P13634796832414183033.a n = A344985 (n + 1)

theorem P13634796832414183033.correct : P13634796832414183033.Spec := by
  intro n
  simp only [A344985, Nat.add_sub_cancel]

end A344985

/-!
# A344986: Number of Goldbach partitions of 2n into 2 primes where the smaller prime has an even-index and the larger prime has an odd index.

The programs for A344986, there is no canonical definition to state claims against.
-/

/-! ## A344986.P1712595711376446925

`A342301(n+1)-A344987(n+1)`
-/

namespace A344986.P1712595711376446925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342301 (n + 1) - A344987 (n + 1)

end

end A344986.P1712595711376446925

/-! ## A344986.P2376585255433364377

`A342301(n+1)-A330005(A262192(n+1)+1)`
-/

namespace A344986.P2376585255433364377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342301 (n + 1) - A330005 (A262192 (n + 1) + 1).toNat

end

end A344986.P2376585255433364377

/-! ## A344986.P1854602697721491888

`A342301(n+1)-A096693(A198669(n+2)+1)`
-/

namespace A344986.P1854602697721491888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342301 (n + 1) - A096693 (A198669 (n + 2) + 1).toNat

end

end A344986.P1854602697721491888

/-! ## A344986.P7816417949986545328

`A342301(n+1)-A096493(A223620(n+2)+1)`
-/

namespace A344986.P7816417949986545328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342301 (n + 1) - A096493 (A223620 (n + 2) + 1).toNat

end

end A344986.P7816417949986545328

/-! ## A344986.P9743561913049994811

`and(A006721(A002260(n+1)), A274834(3*n+4))`
-/

namespace A344986.P9743561913049994811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A006721 (A002260 (n + 1)).toNat) (A274834 (3 * n + 4))

end

end A344986.P9743561913049994811

/-!
# A344987: Number of Goldbach partitions of 2n into 2 primes where the smaller prime has an odd index and the larger prime has an even index.

The programs for A344987, there is no canonical definition to state claims against.
-/

/-! ## A344987.P15131500177893633978

`A342301(n+1)-A344986(n+1)`
-/

namespace A344987.P15131500177893633978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342301 (n + 1) - A344986 (n + 1)

end

end A344987.P15131500177893633978

/-! ## A344987.P5437176310478957131

`A055641(A007617(2*(n+2))*A240219(n+1))`
-/

namespace A344987.P5437176310478957131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055641 (A007617 (2 * (n + 2)) * A240219 (n + 1)).toNat

end

end A344987.P5437176310478957131

/-! ## A344987.P7012004833109334154

`and(A045778(A119479(n+1)), A359142(3*n+1))`
-/

namespace A344987.P7012004833109334154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A045778 (A119479 (n + 1)).toNat) (A359142 (3 * n + 1))

end

end A344987.P7012004833109334154

/-! ## A344987.P16216610686508114365

`A347440(lt[A045572(n+1), A003415(3*n+1)])`
-/

namespace A344987.P16216610686508114365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045572 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347440 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A344987.P16216610686508114365

/-! ## A344987.P16047539738315335886

`A347440(n+1+lcm(3, n))`
-/

namespace A344987.P16047539738315335886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347440 (n + 1 + Nat.lcm 3 n)

end

end A344987.P16047539738315335886

/-!
# A344990: Primes of the form m^k +- k, with m,k > 1.

The programs for A344990, there is no canonical definition to state claims against.
-/

/-! ## A344990.P15205456065751957138

`∪[A099227(n+1), A099228(n+1)]`
-/

namespace A344990.P15205456065751957138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099227 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099228 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A344990.P15205456065751957138

/-! ## A344990.P8355801110343402197

`p?[∪[A057897(n+1), A099225(n+1)]]`
-/

namespace A344990.P8355801110343402197
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057897 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099225 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A344990.P8355801110343402197

/-! ## A344990.P14431941491439297804

`p?[∪[A057897(n+1), A099227(n+1)]]`
-/

namespace A344990.P14431941491439297804
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057897 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099227 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A344990.P14431941491439297804

/-! ## A344990.P4195584080052450454

`p?[∪[A099225(n+1), A247336(n+2)+1]]`
-/

namespace A344990.P4195584080052450454
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099225 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247336 (n + 2) + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A344990.P4195584080052450454

/-!
# A344992: a(n) = Sum_{1 <= i <= j <= k <= m <= n} gcd(i,j,k,m).

The programs for A344992, the canonical program `A344992.P472456438103482055` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A344992 has offset 1).

The definition of A344992 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A344992.P472456438103482055

`∑{#}[n, A000010(#+1)*C(floor((n+1)/(#+1))+3, 4)]`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A344992

/-- `∑{#}[n, A000010(#+1)*C(floor((n+1)/(#+1))+3, 4)]` -/
def P472456438103482055.Spec : Prop :=
  ∀ n, P472456438103482055.a n = A344992 (n + 1)

theorem P472456438103482055.correct : P472456438103482055.Spec := by
  intro n
  simp only [A344992, Nat.add_sub_cancel]

end A344992

/-! ## A344992.P1798853092540613692

`∑[A309323(n+1)]`
-/

namespace A344992.P1798853092540613692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309323 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A344992.P1798853092540613692

namespace A344992

/-- `∑[A309323(n+1)]` -/
def P1798853092540613692.Spec : Prop :=
  ∀ n, P1798853092540613692.a n = A344992 (n + 1)

end A344992

/-! ## A344992.P7331737568546256814

`A309323(root(n, 2)²+1)+a(n-1)` with `a(0)=1`
-/

namespace A344992.P7331737568546256814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A309323 (SequenceMachineLib.roundAway (((n : ℝ) ^ (1 / (2 : ℝ))) ^ 2 + 1)).toNat + a (n - 1)

end

end A344992.P7331737568546256814

namespace A344992

/-- `A309323(root(n, 2)²+1)+a(n-1)` -/
def P7331737568546256814.Spec : Prop :=
  ∀ n, P7331737568546256814.a n = A344992 (n + 1)

end A344992

/-! ## A344992.P17189320234275011907

`∑[∑{d}[n+1, #*A117108((n+1)/#)]]`
-/

namespace A344992.P17189320234275011907
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), (d : ℤ) * A117108 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A344992.P17189320234275011907

namespace A344992

/-- `∑[∑{d}[n+1, #*A117108((n+1)/#)]]` -/
def P17189320234275011907.Spec : Prop :=
  ∀ n, P17189320234275011907.a n = A344992 (n + 1)

end A344992

/-! ## A344992.P10368965997621433916

`∑[∑{d}[n+1, A000010(#)*A000292((n+1)/#)]]`
-/

namespace A344992.P10368965997621433916
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), A000010 d * A000292 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A344992.P10368965997621433916

namespace A344992

/-- `∑[∑{d}[n+1, A000010(#)*A000292((n+1)/#)]]` -/
def P10368965997621433916.Spec : Prop :=
  ∀ n, P10368965997621433916.a n = A344992 (n + 1)

end A344992

/-! ## A344992.P2835038020997852069

`∑[∑{d}[n+1, A008683(#)*A343544((n+1)/#)]]`
-/

namespace A344992.P2835038020997852069
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), A008683 d * A343544 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A344992.P2835038020997852069

namespace A344992

/-- `∑[∑{d}[n+1, A008683(#)*A343544((n+1)/#)]]` -/
def P2835038020997852069.Spec : Prop :=
  ∀ n, P2835038020997852069.a n = A344992 (n + 1)

end A344992

/-! ## A344992.P14212236107352668806

`∑[∑{d}[n+1, A326305(#)*A338046((n+1)/#)]]`
-/

namespace A344992.P14212236107352668806
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), A326305 d * A338046 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A344992.P14212236107352668806

namespace A344992

/-- `∑[∑{d}[n+1, A326305(#)*A338046((n+1)/#)]]` -/
def P14212236107352668806.Spec : Prop :=
  ∀ n, P14212236107352668806.a n = A344992 (n + 1)

end A344992

/-! ## A344992.P460086123414317598

`∑[A343516(A034856(n+2))]`
-/

namespace A344992.P460086123414317598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343516 (A034856 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A344992.P460086123414317598

namespace A344992

/-- `∑[A343516(A034856(n+2))]` -/
def P460086123414317598.Spec : Prop :=
  ∀ n, P460086123414317598.a n = A344992 (n + 1)

end A344992

/-! ## A344992.P13594594474389207397

`∑[A343516(A000217(n+2)+n+1)]`
-/

namespace A344992.P13594594474389207397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343516 (A000217 (n + 2) + (n + 1 : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A344992.P13594594474389207397

namespace A344992

/-- `∑[A343516(A000217(n+2)+n+1)]` -/
def P13594594474389207397.Spec : Prop :=
  ∀ n, P13594594474389207397.a n = A344992 (n + 1)

end A344992

/-! ## A344992.P1986822254333374179

`A345229(A000217(n+3)+n+1)`
-/

namespace A344992.P1986822254333374179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345229 (A000217 (n + 3) + (n + 1 : ℤ)).toNat

end

end A344992.P1986822254333374179

namespace A344992

/-- `A345229(A000217(n+3)+n+1)` -/
def P1986822254333374179.Spec : Prop :=
  ∀ n, P1986822254333374179.a n = A344992 (n + 1)

end A344992

/-!
# A344993: Number of polygons formed when every pair of vertices of a row of n adjacent congruent rectangles are joined by an infinite line.

The programs for A344993, there is no canonical definition to state claims against.
-/

/-! ## A344993.P17168836973007473201

`2*A332612(n+1)+A306302(n)`
-/

namespace A344993.P17168836973007473201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A332612 (n + 1) + A306302 n

end

end A344993.P17168836973007473201

/-! ## A344993.P12081158936125155576

`A141255(n+1)-2*n²`
-/

namespace A344993.P12081158936125155576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141255 (n + 1) - (2 * n ^ 2 : ℤ)

end

end A344993.P12081158936125155576

/-! ## A344993.P9680027557150070224

`(A331761(2*n+1)+4*n)/2`
-/

namespace A344993.P9680027557150070224
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A331761 (2 * n + 1) + (4 * n : ℤ) : ℚ) / 2

end

end A344993.P9680027557150070224

/-! ## A344993.P2298792848315912061

`A114043(n+1)-A058331(n)`
-/

namespace A344993.P2298792848315912061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114043 (n + 1) - A058331 n

end

end A344993.P2298792848315912061

/-! ## A344993.P10821184901575399346

`2*(A115005(n+1)-n²)`
-/

namespace A344993.P10821184901575399346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A115005 (n + 1) - (n ^ 2 : ℤ))

end

end A344993.P10821184901575399346

/-! ## A344993.P2695288197995220935

`A088658(n+1)/2+2*n`
-/

namespace A344993.P2695288197995220935
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A088658 (n + 1) : ℚ) / 2 + (2 * n : ℚ)

end

end A344993.P2695288197995220935

/-! ## A344993.P3802799393998332261

`A114043(n+1)-A005408(n²)`
-/

namespace A344993.P3802799393998332261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114043 (n + 1) - A005408 (n ^ 2)

end

end A344993.P3802799393998332261

/-!
# A344994: Numbers k such that A173557(k) divides nonzero A051709(k).

The programs for A344994, there is no canonical definition to state claims against.
-/

/-! ## A344994.P9620946916007805212

`record[A000005(A310629(n+2)+n)]`
-/

namespace A344994.P9620946916007805212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A310629 (n + 2) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A344994.P9620946916007805212

/-! ## A344994.P9775597727674020327

`record[A000005(A301299(3*(n+1))+A031217(3*n+4))]`
-/

namespace A344994.P9775597727674020327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A301299 (3 * (n + 1)) + A031217 (3 * n + 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A344994.P9775597727674020327

/-! ## A344994.P4600309821309446428

`record[A113901(A024675(2*(n+1))+n)]`
-/

namespace A344994.P4600309821309446428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113901 (A024675 (2 * (n + 1)) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A344994.P4600309821309446428

/-! ## A344994.P1880329491656406153

`eq[A295304(n+1), A328308(A278243(n))]`
-/

namespace A344994.P1880329491656406153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295304 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328308 (A278243 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A344994.P1880329491656406153

/-! ## A344994.P5762551124701479558

`lt[A099146(n+2), A389343(A003415(n))]`
-/

namespace A344994.P5762551124701479558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099146 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389343 (A003415 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A344994.P5762551124701479558

/-!
# A344995: Numbers k such that A051709(k)/A173557(k) is a positive natural number and a divisor of k.

The programs for A344995, there is no canonical definition to state claims against.
-/

/-! ## A344995.P6348791925022758085

`A344994(A331027(n+1))`
-/

namespace A344995.P6348791925022758085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344994 (A331027 (n + 1)).toNat

end

end A344995.P6348791925022758085

/-!
# A344996: a(n) = A048250(n) * A051709(n).

The programs for A344996, the canonical program `A344996.P14741742852646072087` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A344996 has offset 1).

The definition of A344996 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A048250(n+1)*A051709(n+1)` (program `A344996.P14741742852646072087`, by `A344996.P14741742852646072087.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A344996.P14741742852646072087

`A048250(n+1)*A051709(n+1)`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A344996

/-- `A048250(n+1)*A051709(n+1)` -/
def P14741742852646072087.Spec : Prop :=
  ∀ n, P14741742852646072087.a n = A344996 (n + 1)

theorem P14741742852646072087.correct : P14741742852646072087.Spec := by
  intro n
  simp only [A344996, Nat.add_sub_cancel]

end A344996

/-! ## A344996.P3103797269644684885

`abs(A051709(n+1)*A323363(n+1))`
-/

namespace A344996.P3103797269644684885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A051709 (n + 1) * A323363 (n + 1)|

end

end A344996.P3103797269644684885

namespace A344996

/-- `abs(A051709(n+1)*A323363(n+1))` -/
def P3103797269644684885.Spec : Prop :=
  ∀ n, P3103797269644684885.a n = A344996 (n + 1)

end A344996

/-! ## A344996.P6317156699855224239

`A000203(∏{p}[n+1, #])*A051709(n+1)`
-/

namespace A344996.P6317156699855224239
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (∏ p ∈ Nat.primeFactors (f1 n), p) * A051709 (n + 1)

end

end A344996.P6317156699855224239

namespace A344996

/-- `A000203(∏{p}[n+1, #])*A051709(n+1)` -/
def P6317156699855224239.Spec : Prop :=
  ∀ n, P6317156699855224239.a n = A344996 (n + 1)

end A344996

/-! ## A344996.P15510550606040361592

`A000203(A007947(n+1))*A051709(n+1)`
-/

namespace A344996.P15510550606040361592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A007947 (n + 1)).toNat * A051709 (n + 1)

end

end A344996.P15510550606040361592

namespace A344996

/-- `A000203(A007947(n+1))*A051709(n+1)` -/
def P15510550606040361592.Spec : Prop :=
  ∀ n, P15510550606040361592.a n = A344996 (n + 1)

end A344996

/-! ## A344996.P13208005604737780318

`(A000010(n+1)-A033879(n+1))*A048250(n+1)`
-/

namespace A344996.P13208005604737780318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 1) - A033879 (n + 1)) * A048250 (n + 1)

end

end A344996.P13208005604737780318

namespace A344996

/-- `(A000010(n+1)-A033879(n+1))*A048250(n+1)` -/
def P13208005604737780318.Spec : Prop :=
  ∀ n, P13208005604737780318.a n = A344996 (n + 1)

theorem P13208005604737780318.correct : P13208005604737780318.Spec := by
  intro n
  simp only [A344996, Nat.add_sub_cancel, A344996.P13208005604737780318.a, A344996.P14741742852646072087.a, A000010, A000010.P4673923239450215316.a, A033879, A033879.P5965131822542929609.a, A048250, A048250.P17960441032552816313.f1, A048250.P17960441032552816313.a, A051709, A051709.P8066883811744733228.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A344996

/-! ## A344996.P6532212785298182055

`(A001065(n+1)-A051953(n+1))*A048250(n+1)`
-/

namespace A344996.P6532212785298182055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001065 (n + 1) - A051953 (n + 1)) * A048250 (n + 1)

end

end A344996.P6532212785298182055

namespace A344996

/-- `(A001065(n+1)-A051953(n+1))*A048250(n+1)` -/
def P6532212785298182055.Spec : Prop :=
  ∀ n, P6532212785298182055.a n = A344996 (n + 1)

theorem P6532212785298182055.correct : P6532212785298182055.Spec := by
  intro n
  simp only [A344996, Nat.add_sub_cancel, A344996.P6532212785298182055.a, A344996.P14741742852646072087.a, A001065, A001065.P4097147489331274860.a, A048250, A048250.P17960441032552816313.f1, A048250.P17960441032552816313.a, A051709, A051709.P8066883811744733228.a, A051953, A051953.P11179276897610979764.a, A000010, A000010.P4673923239450215316.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A344996

/-! ## A344996.P4245152609780202823

`A051709(n+1)*A323363(∑[A005408(n)])`
-/

namespace A344996.P4245152609780202823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051709 (n + 1) * A323363 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A344996.P4245152609780202823

namespace A344996

/-- `A051709(n+1)*A323363(∑[A005408(n)])` -/
def P4245152609780202823.Spec : Prop :=
  ∀ n, P4245152609780202823.a n = A344996 (n + 1)

end A344996

/-! ## A344996.P12373157668266446018

`A051709(n+1)*A295295(Δ[A000330(n)])`
-/

namespace A344996.P12373157668266446018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051709 (n + 1) * A295295 (f1 (n + 1) - f1 n).toNat

end

end A344996.P12373157668266446018

namespace A344996

/-- `A051709(n+1)*A295295(Δ[A000330(n)])` -/
def P12373157668266446018.Spec : Prop :=
  ∀ n, P12373157668266446018.a n = A344996 (n + 1)

end A344996

/-!
# A344997: a(n) = A173557(n) * A344753(n).

The programs for A344997, the canonical program `A344997.P7955148698695542917` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A344997 has offset 1).

The definition of A344997 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A344997.P7955148698695542917

`A173557(n+1)*A344753(n+1)`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A344997

/-- `A173557(n+1)*A344753(n+1)` -/
def P7955148698695542917.Spec : Prop :=
  ∀ n, P7955148698695542917.a n = A344997 (n + 1)

theorem P7955148698695542917.correct : P7955148698695542917.Spec := by
  intro n
  simp only [A344997, Nat.add_sub_cancel]

end A344997

/-! ## A344997.P11032712433466978826

`∏{p}[1+n, #-1]*A344753(n+1)`
-/

namespace A344997.P11032712433466978826
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ p ∈ Nat.primeFactors (f1 n), ((p : ℤ) - 1)) * A344753 (n + 1)

end

end A344997.P11032712433466978826

namespace A344997

/-- `∏{p}[1+n, #-1]*A344753(n+1)` -/
def P11032712433466978826.Spec : Prop :=
  ∀ n, P11032712433466978826.a n = A344997 (n + 1)

theorem P11032712433466978826.correct : P11032712433466978826.Spec := by
  intro n
  simp only [A344997, Nat.add_sub_cancel, A344997.P11032712433466978826.f1, A344997.P11032712433466978826.a, A344997.P7955148698695542917.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A344753, A344753.P96052968177767744.a, A001065, A001065.P4097147489331274860.a, A306927, A306927.P17814691939423950955.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A001615, A001615.P12078511981713404634.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A344997

/-! ## A344997.P12089960935675442098

`abs(A023900(n+1)*A344753(n+1))`
-/

namespace A344997.P12089960935675442098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A023900 (n + 1) * A344753 (n + 1)|

end

end A344997.P12089960935675442098

namespace A344997

/-- `abs(A023900(n+1)*A344753(n+1))` -/
def P12089960935675442098.Spec : Prop :=
  ∀ n, P12089960935675442098.a n = A344997 (n + 1)

end A344997

/-! ## A344997.P10364731096584180756

`A000010(A007947(n+1))*A344753(n+1)`
-/

namespace A344997.P10364731096584180756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A007947 (n + 1)).toNat * A344753 (n + 1)

end

end A344997.P10364731096584180756

namespace A344997

/-- `A000010(A007947(n+1))*A344753(n+1)` -/
def P10364731096584180756.Spec : Prop :=
  ∀ n, P10364731096584180756.a n = A344997 (n + 1)

end A344997

/-! ## A344997.P14892015902358223183

`(A001615(n+1)-A033879(n+1))*A173557(n+1)`
-/

namespace A344997.P14892015902358223183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001615 (n + 1) - A033879 (n + 1)) * A173557 (n + 1)

end

end A344997.P14892015902358223183

namespace A344997

/-- `(A001615(n+1)-A033879(n+1))*A173557(n+1)` -/
def P14892015902358223183.Spec : Prop :=
  ∀ n, P14892015902358223183.a n = A344997 (n + 1)

theorem P14892015902358223183.correct : P14892015902358223183.Spec := by
  intro n
  simp only [A344997, Nat.add_sub_cancel, A344997.P14892015902358223183.a, A344997.P7955148698695542917.a, A001615, A001615.P12078511981713404634.a, A033879, A033879.P5965131822542929609.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A344753, A344753.P96052968177767744.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A001065, A001065.P4097147489331274860.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A306927, A306927.P17814691939423950955.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A344997

/-! ## A344997.P16942363228942221217

`A000010(n+1)/A003557(n+1)*A344753(n+1)`
-/

namespace A344997.P16942363228942221217
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 1) : ℚ) / (A003557 (n + 1) : ℚ) * (A344753 (n + 1) : ℚ)

end

end A344997.P16942363228942221217

namespace A344997

/-- `A000010(n+1)/A003557(n+1)*A344753(n+1)` -/
def P16942363228942221217.Spec : Prop :=
  ∀ n, P16942363228942221217.a n = (A344997 (n + 1) : ℚ)

end A344997

/-!
# A344998: a(n) = A342001(n) * A344753(n).

The programs for A344998, the canonical program `A344998.P3443638615018705273` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A344998 has offset 1).

The definition of A344998 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A344998.P10325478386751386445

`A344999(n+1)+A345043(n+1)`
-/

namespace A344998.P10325478386751386445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344999 (n + 1) + A345043 (n + 1)

end

end A344998.P10325478386751386445

namespace A344998

/-- `A344999(n+1)+A345043(n+1)` -/
def P10325478386751386445.Spec : Prop :=
  ∀ n, P10325478386751386445.a n = A344998 (n + 1)

theorem P10325478386751386445.correct : P10325478386751386445.Spec := by
  intro n
  simp only [A344998, Nat.add_sub_cancel, A344998.P10325478386751386445.a, A344998.P3443638615018705273.a, A342001, A342001.P4805983025243635594.a, A344753, A344753.P96052968177767744.a, A344999, A344999.P2387045970330033826.a, A345043, A345043.P6507924935837030801.a, A001065, A001065.P4097147489331274860.a, A003415, A003415.P13310047267010681054.f1, A003415.P13310047267010681054.a, A003557, A003557.P6364735403900941810.a, A048250, A048250.P17960441032552816313.f1, A048250.P17960441032552816313.a, A306927, A306927.P17814691939423950955.a, A345001, A345001.P11556338326385216766.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A001615, A001615.P12078511981713404634.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A168036, A168036.P2098310487666722677.a, A349394, A349394.P210516795435731064.a, A069513, A069513.P8111133275882580857.f1, A069513.P8111133275882580857.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A344998

/-! ## A344998.P3443638615018705273

`A342001(n+1)*A344753(n+1)`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A344998

/-- `A342001(n+1)*A344753(n+1)` -/
def P3443638615018705273.Spec : Prop :=
  ∀ n, P3443638615018705273.a n = A344998 (n + 1)

theorem P3443638615018705273.correct : P3443638615018705273.Spec := by
  intro n
  simp only [A344998, Nat.add_sub_cancel]

end A344998

/-! ## A344998.P18143428638314376985

`(A306927(n+1)+A001065(n+1))*A342001(n+1)`
-/

namespace A344998.P18143428638314376985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A306927 (n + 1) + A001065 (n + 1)) * A342001 (n + 1)

end

end A344998.P18143428638314376985

namespace A344998

/-- `(A306927(n+1)+A001065(n+1))*A342001(n+1)` -/
def P18143428638314376985.Spec : Prop :=
  ∀ n, P18143428638314376985.a n = A344998 (n + 1)

theorem P18143428638314376985.correct : P18143428638314376985.Spec := by
  intro n
  simp only [A344998, Nat.add_sub_cancel, A344998.P18143428638314376985.a, A344998.P3443638615018705273.a, A001065, A001065.P4097147489331274860.a, A306927, A306927.P17814691939423950955.a, A342001, A342001.P4805983025243635594.a, A344753, A344753.P96052968177767744.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A001615, A001615.P12078511981713404634.a, A003415, A003415.P13310047267010681054.f1, A003415.P13310047267010681054.a, A003557, A003557.P6364735403900941810.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A349394, A349394.P210516795435731064.a, A069513, A069513.P8111133275882580857.f1, A069513.P8111133275882580857.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A344998

/-! ## A344998.P18287008539830949525

`A345043(n+1)+A048250(n+1)*A345001(n+1)`
-/

namespace A344998.P18287008539830949525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345043 (n + 1) + A048250 (n + 1) * A345001 (n + 1)

end

end A344998.P18287008539830949525

namespace A344998

/-- `A345043(n+1)+A048250(n+1)*A345001(n+1)` -/
def P18287008539830949525.Spec : Prop :=
  ∀ n, P18287008539830949525.a n = A344998 (n + 1)

theorem P18287008539830949525.correct : P18287008539830949525.Spec := by
  intro n
  simp only [A344998, Nat.add_sub_cancel, A344998.P18287008539830949525.a, A344998.P3443638615018705273.a, A048250, A048250.P17960441032552816313.f1, A048250.P17960441032552816313.a, A342001, A342001.P4805983025243635594.a, A344753, A344753.P96052968177767744.a, A345001, A345001.P11556338326385216766.a, A345043, A345043.P6507924935837030801.a, A001065, A001065.P4097147489331274860.a, A003415, A003415.P13310047267010681054.f1, A003415.P13310047267010681054.a, A003557, A003557.P6364735403900941810.a, A168036, A168036.P2098310487666722677.a, A306927, A306927.P17814691939423950955.a, A344999, A344999.P2387045970330033826.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A001615, A001615.P12078511981713404634.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A349394, A349394.P210516795435731064.a, A069513, A069513.P8111133275882580857.f1, A069513.P8111133275882580857.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A344998

/-! ## A344998.P13658263345756285854

`(A001615(n+1)-A033879(n+1))*A342001(n+1)`
-/

namespace A344998.P13658263345756285854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001615 (n + 1) - A033879 (n + 1)) * A342001 (n + 1)

end

end A344998.P13658263345756285854

namespace A344998

/-- `(A001615(n+1)-A033879(n+1))*A342001(n+1)` -/
def P13658263345756285854.Spec : Prop :=
  ∀ n, P13658263345756285854.a n = A344998 (n + 1)

theorem P13658263345756285854.correct : P13658263345756285854.Spec := by
  intro n
  simp only [A344998, Nat.add_sub_cancel, A344998.P13658263345756285854.a, A344998.P3443638615018705273.a, A001615, A001615.P12078511981713404634.a, A033879, A033879.P5965131822542929609.a, A342001, A342001.P4805983025243635594.a, A344753, A344753.P96052968177767744.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A001065, A001065.P4097147489331274860.a, A003415, A003415.P13310047267010681054.f1, A003415.P13310047267010681054.a, A003557, A003557.P6364735403900941810.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A306927, A306927.P17814691939423950955.a, A349394, A349394.P210516795435731064.a, A069513, A069513.P8111133275882580857.f1, A069513.P8111133275882580857.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A344998

/-! ## A344998.P3489842145614413180

`(A091818(n+1)-A244963(n+1))*A342001(n+1)`
-/

namespace A344998.P3489842145614413180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A091818 (n + 1) - A244963 (n + 1)) * A342001 (n + 1)

end

end A344998.P3489842145614413180

namespace A344998

/-- `(A091818(n+1)-A244963(n+1))*A342001(n+1)` -/
def P3489842145614413180.Spec : Prop :=
  ∀ n, P3489842145614413180.a n = A344998 (n + 1)

theorem P3489842145614413180.correct : P3489842145614413180.Spec := by
  intro n
  simp only [A344998, Nat.add_sub_cancel, A344998.P3489842145614413180.a, A344998.P3443638615018705273.a, A091818, A091818.P1536144604709334989.a, A244963, A244963.P8812478636684031312.a, A342001, A342001.P4805983025243635594.a, A344753, A344753.P96052968177767744.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A001065, A001065.P4097147489331274860.a, A001615, A001615.P12078511981713404634.a, A003415, A003415.P13310047267010681054.f1, A003415.P13310047267010681054.a, A003557, A003557.P6364735403900941810.a, A306927, A306927.P17814691939423950955.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A349394, A349394.P210516795435731064.a, A069513, A069513.P8111133275882580857.f1, A069513.P8111133275882580857.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A344998

/-! ## A344998.P4652738642830851562

`A003415(n+1)/A003557(n+1)*A344753(n+1)`
-/

namespace A344998.P4652738642830851562
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003415 (n + 1) : ℚ) / (A003557 (n + 1) : ℚ) * (A344753 (n + 1) : ℚ)

end

end A344998.P4652738642830851562

namespace A344998

/-- `A003415(n+1)/A003557(n+1)*A344753(n+1)` -/
def P4652738642830851562.Spec : Prop :=
  ∀ n, P4652738642830851562.a n = (A344998 (n + 1) : ℚ)

end A344998

/-!
# A344999: a(n) = A048250(n) * A345001(n).

The programs for A344999, the canonical program `A344999.P2387045970330033826` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A344999 has offset 1).

The definition of A344999 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A345001, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A344999.P15931276311761820702

`A344998(n+1)-A345043(n+1)`
-/

namespace A344999.P15931276311761820702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344998 (n + 1) - A345043 (n + 1)

end

end A344999.P15931276311761820702

namespace A344999

/-- `A344998(n+1)-A345043(n+1)` -/
def P15931276311761820702.Spec : Prop :=
  ∀ n, P15931276311761820702.a n = A344999 (n + 1)

theorem P15931276311761820702.correct : P15931276311761820702.Spec := by
  intro n
  simp only [A344999, Nat.add_sub_cancel, A344999.P15931276311761820702.a, A344999.P2387045970330033826.a, A048250, A048250.P17960441032552816313.f1, A048250.P17960441032552816313.a, A344998, A344998.P3443638615018705273.a, A345001, A345001.P11556338326385216766.a, A345043, A345043.P6507924935837030801.a, A001065, A001065.P4097147489331274860.a, A168036, A168036.P2098310487666722677.a, A342001, A342001.P4805983025243635594.a, A344753, A344753.P96052968177767744.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A003415, A003415.P13310047267010681054.f1, A003415.P13310047267010681054.a, A003557, A003557.P6364735403900941810.a, A306927, A306927.P17814691939423950955.a, A001615, A001615.P12078511981713404634.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A349394, A349394.P210516795435731064.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A344999

/-! ## A344999.P2387045970330033826

`A048250(n+1)*A345001(n+1)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A344999

/-- `A048250(n+1)*A345001(n+1)` -/
def P2387045970330033826.Spec : Prop :=
  ∀ n, P2387045970330033826.a n = A344999 (n + 1)

theorem P2387045970330033826.correct : P2387045970330033826.Spec := by
  intro n
  simp only [A344999, Nat.add_sub_cancel]

end A344999

/-! ## A344999.P4682840215391286774

`abs(A323363(n+1))*A345001(n+1)`
-/

namespace A344999.P4682840215391286774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A323363 (n + 1)| * A345001 (n + 1)

end

end A344999.P4682840215391286774

namespace A344999

/-- `abs(A323363(n+1))*A345001(n+1)` -/
def P4682840215391286774.Spec : Prop :=
  ∀ n, P4682840215391286774.a n = A344999 (n + 1)

end A344999

/-! ## A344999.P5894677975282948090

`A000203(∏{p}[n+1, #])*A345001(n+1)`
-/

namespace A344999.P5894677975282948090
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (∏ p ∈ Nat.primeFactors (f1 n), p) * A345001 (n + 1)

end

end A344999.P5894677975282948090

namespace A344999

/-- `A000203(∏{p}[n+1, #])*A345001(n+1)` -/
def P5894677975282948090.Spec : Prop :=
  ∀ n, P5894677975282948090.a n = A344999 (n + 1)

end A344999

/-! ## A344999.P14798432646756006738

`A001615(∏{p}[n+1, #])*A345001(n+1)`
-/

namespace A344999.P14798432646756006738
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001615 (∏ p ∈ Nat.primeFactors (f1 n), p) * A345001 (n + 1)

end

end A344999.P14798432646756006738

namespace A344999

/-- `A001615(∏{p}[n+1, #])*A345001(n+1)` -/
def P14798432646756006738.Spec : Prop :=
  ∀ n, P14798432646756006738.a n = A344999 (n + 1)

end A344999

/-! ## A344999.P9830193493609893820

`∑{d}[n+1, #*A008683(#)²]*A345001(n+1)`
-/

namespace A344999.P9830193493609893820
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A008683 d ^ 2) * A345001 (n + 1)

end

end A344999.P9830193493609893820

namespace A344999

/-- `∑{d}[n+1, #*A008683(#)²]*A345001(n+1)` -/
def P9830193493609893820.Spec : Prop :=
  ∀ n, P9830193493609893820.a n = A344999 (n + 1)

end A344999

/-! ## A344999.P16982723574846919274

`(∑[A258057(n)-2]+A000203(n+1))*∏{p}[n+1, #+1]`
-/

namespace A344999.P16982723574846919274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258057 n - 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j + A000203 (n + 1)) * ((∏ p ∈ Nat.primeFactors (f2 n), (p + 1) : ℕ) : ℤ)

end

end A344999.P16982723574846919274

namespace A344999

/-- `(∑[A258057(n)-2]+A000203(n+1))*∏{p}[n+1, #+1]` -/
def P16982723574846919274.Spec : Prop :=
  ∀ n, P16982723574846919274.a n = A344999 (n + 1)

end A344999

/-! ## A344999.P4408596369258301466

`A345049(n+1)/A000010(∏{p}[n+1, #])*∏{p}[n+1, #+1]`
-/

namespace A344999.P4408596369258301466
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A345049 (n + 1) : ℚ) / (A000010 (∏ p ∈ Nat.primeFactors (f1 n), p) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), (p + 1) : ℕ) : ℚ)

end

end A344999.P4408596369258301466

namespace A344999

/-- `A345049(n+1)/A000010(∏{p}[n+1, #])*∏{p}[n+1, #+1]` -/
def P4408596369258301466.Spec : Prop :=
  ∀ n, P4408596369258301466.a n = (A344999 (n + 1) : ℚ)

end A344999

/-! ## A344999.P4298069493643786616

`A000203(A007947(n+1))*A345001(n+1)`
-/

namespace A344999.P4298069493643786616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A007947 (n + 1)).toNat * A345001 (n + 1)

end

end A344999.P4298069493643786616

namespace A344999

/-- `A000203(A007947(n+1))*A345001(n+1)` -/
def P4298069493643786616.Spec : Prop :=
  ∀ n, P4298069493643786616.a n = A344999 (n + 1)

end A344999

/-! ## A344999.P1083688087044764274

`(A003415(n+1)-A033879(n+1))*A048250(n+1)`
-/

namespace A344999.P1083688087044764274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A003415 (n + 1) - A033879 (n + 1)) * A048250 (n + 1)

end

end A344999.P1083688087044764274

namespace A344999

/-- `(A003415(n+1)-A033879(n+1))*A048250(n+1)` -/
def P1083688087044764274.Spec : Prop :=
  ∀ n, P1083688087044764274.a n = A344999 (n + 1)

theorem P1083688087044764274.correct : P1083688087044764274.Spec := by
  intro n
  simp only [A344999, Nat.add_sub_cancel, A344999.P1083688087044764274.a, A344999.P2387045970330033826.a, A003415, A003415.P13310047267010681054.f1, A003415.P13310047267010681054.a, A033879, A033879.P5965131822542929609.a, A048250, A048250.P17960441032552816313.f1, A048250.P17960441032552816313.a, A345001, A345001.P11556338326385216766.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A001065, A001065.P4097147489331274860.a, A168036, A168036.P2098310487666722677.a, A349394, A349394.P210516795435731064.a, A003557, A003557.P6364735403900941810.a, A069513, A069513.P8111133275882580857.f1, A069513.P8111133275882580857.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A344999

