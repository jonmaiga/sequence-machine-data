import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
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
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C037
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
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
import Seq.B006.C001
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
import Seq.Opaque.C023

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A341900: Partial sums of A005165.

The programs for A341900, the canonical program `A341900.P12260038628864685505` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A341900 has offset 0).

The definition of A341900 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A341900.P12260038628864685505

`n!+a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A341900

/-- `n!+a(n-2)` -/
def P12260038628864685505.Spec : Prop :=
  ∀ n, (P12260038628864685505.a n : ℤ) = A341900 n

theorem P12260038628864685505.correct : P12260038628864685505.Spec := by
  intro n
  simp only [A341900]

end A341900

/-! ## A341900.P12897524310200888156

`A136580(n)-A059841(n)`
-/

namespace A341900.P12897524310200888156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136580 n - A059841 n

end

end A341900.P12897524310200888156

namespace A341900

/-- `A136580(n)-A059841(n)` -/
def P12897524310200888156.Spec : Prop :=
  ∀ n, P12897524310200888156.a n = A341900 n

end A341900

/-! ## A341900.P6252413344230837839

`∑[n!-a(n-1)]` with `a(0)=0`
-/

namespace A341900.P6252413344230837839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  (Nat.factorial n : ℤ) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A341900.P6252413344230837839

namespace A341900

/-- `∑[n!-a(n-1)]` -/
def P6252413344230837839.Spec : Prop :=
  ∀ n, P6252413344230837839.a n = A341900 n

end A341900

/-! ## A341900.P6138231201502148188

`n!-floor(-a(n-2))` with `a(0)=0, a(1)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A341900.P6138231201502148188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  (Nat.factorial n : ℤ) - (-a (n - 2))

end

end A341900.P6138231201502148188

namespace A341900

/-- `n!-floor(-a(n-2))` -/
def P6138231201502148188.Spec : Prop :=
  ∀ n, P6138231201502148188.a n = A341900 n

end A341900

/-! ## A341900.P3831381911269465387

`n!-ceil(-a(n-2))` with `a(0)=0, a(1)=1`

`ceil` is left out, it is the identity on integers.
-/

namespace A341900.P3831381911269465387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  (Nat.factorial n : ℤ) - (-a (n - 2))

end

end A341900.P3831381911269465387

namespace A341900

/-- `n!-ceil(-a(n-2))` -/
def P3831381911269465387.Spec : Prop :=
  ∀ n, P3831381911269465387.a n = A341900 n

end A341900

/-! ## A341900.P10210762091224840783

`n!-round(-a(n-2))` with `a(0)=0, a(1)=1`

`round` is left out, it is the identity on integers.
-/

namespace A341900.P10210762091224840783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  (Nat.factorial n : ℤ) - (-a (n - 2))

end

end A341900.P10210762091224840783

namespace A341900

/-- `n!-round(-a(n-2))` -/
def P10210762091224840783.Spec : Prop :=
  ∀ n, P10210762091224840783.a n = A341900 n

end A341900

/-! ## A341900.P2212277185701871119

`∑[n*a(n-1)]-a(n-1)` with `a(0)=0, a(1)=1`
-/

namespace A341900.P2212277185701871119
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  n * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - a (n - 1)

end

end A341900.P2212277185701871119

namespace A341900

/-- `∑[n*a(n-1)]-a(n-1)` -/
def P2212277185701871119.Spec : Prop :=
  ∀ n, P2212277185701871119.a n = A341900 n

end A341900

/-! ## A341900.P4833783495785302963

`∑[a(n-1)/n^(-1)]-a(n-1)` with `a(0)=0, a(1)=1`
-/

namespace A341900.P4833783495785302963
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  f1 (n - 1) / (n : ℚ) ^ (-1 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j - a (n - 1)

end

end A341900.P4833783495785302963

namespace A341900

/-- `∑[a(n-1)/n^(-1)]-a(n-1)` -/
def P4833783495785302963.Spec : Prop :=
  ∀ n, P4833783495785302963.a n = (A341900 n : ℚ)

end A341900

/-! ## A341900.P3011077130777767363

`a(n-2)+n*(a(n-1)-a(n-3))` with `a(0)=0, a(1)=1, a(2)=2`
-/

namespace A341900.P3011077130777767363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2] fun n a =>
  a (n - 2) + (n : ℤ) * (a (n - 1) - a (n - 3))

end

end A341900.P3011077130777767363

namespace A341900

/-- `a(n-2)+n*(a(n-1)-a(n-3))` -/
def P3011077130777767363.Spec : Prop :=
  ∀ n, P3011077130777767363.a n = A341900 n

end A341900

/-! ## A341900.P13124659159375277384

`∑[A005165(n)]`
-/

namespace A341900.P13124659159375277384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005165 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A341900.P13124659159375277384

namespace A341900

/-- `∑[A005165(n)]` -/
def P13124659159375277384.Spec : Prop :=
  ∀ n, P13124659159375277384.a n = A341900 n

end A341900

/-!
# A341904: Number of representations of n as a linear combination of positive Fibonacci numbers with coefficients {0,1,2} only.

The programs for A341904, there is no canonical definition to state claims against.
-/

/-! ## A341904.P3840385546373906974

`A111890(or(A027748(n+3), A161830(n)))`
-/

namespace A341904.P3840385546373906974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111890 (Int.lor (A027748 (n + 3)) (A161830 n)).toNat

end

end A341904.P3840385546373906974

/-! ## A341904.P8701018073069567674

`A065475(n+1)-A330779(n+1)%record[A187470(n+1)]`
-/

namespace A341904.P8701018073069567674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187470 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (n + 1) - Int.tmod (A330779 (n + 1)) (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A341904.P8701018073069567674

/-! ## A341904.P16043528426528041677

`A167866(A193201(n))+1`
-/

namespace A341904.P16043528426528041677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167866 (A193201 n).toNat + 1

end

end A341904.P16043528426528041677

/-! ## A341904.P6600003980975427865

`A080342(A005578(n))+A043562(n)`
-/

namespace A341904.P6600003980975427865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080342 (A005578 n).toNat + A043562 n

end

end A341904.P6600003980975427865

/-! ## A341904.P2313105413777321375

`A134021(A011782(n))+A033665(n)`
-/

namespace A341904.P2313105413777321375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134021 (A011782 n).toNat + A033665 n

end

end A341904.P2313105413777321375

/-!
# A341905: a(n) = a(n-1) + a(n-2) + 2*a(n-3) with a(0) = 3, a(1) = 0, a(2) = 2.

The programs for A341905, the canonical program `A341905.P6425134035811713941` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A341905 has offset 0).

The definition of A341905 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-2)+2*a(n-3)` (program `A341905.P6425134035811713941`, by `A341905.P6425134035811713941.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A341905.P6425134035811713941

`a(n-1)+a(n-2)+2*a(n-3)` with `a(0)=3, a(1)=0, a(2)=2`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A341905

/-- `a(n-1)+a(n-2)+2*a(n-3)` -/
def P6425134035811713941.Spec : Prop :=
  ∀ n, (P6425134035811713941.a n : ℤ) = A341905 n

theorem P6425134035811713941.correct : P6425134035811713941.Spec := by
  intro n
  simp only [A341905]

end A341905

/-! ## A341905.P14061601577195959458

`(10*2^(n-1)+13*A049347(n)-9*A079978(n+1)+3)/7`
-/

namespace A341905.P14061601577195959458
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (10 * (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) + (13 * A049347 n : ℚ) - (9 * A079978 (n + 1) : ℚ) + 3) / 7

end

end A341905.P14061601577195959458

namespace A341905

/-- `(10*2^(n-1)+13*A049347(n)-9*A079978(n+1)+3)/7` -/
def P14061601577195959458.Spec : Prop :=
  ∀ n, P14061601577195959458.a n = (A341905 n : ℚ)

end A341905

/-! ## A341905.P2966013994736013044

`ogf((-3+3x+x^2)/(-1+x+x^2+2x^3))`
-/

namespace A341905.P2966013994736013044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -3, -1] [1, -1, -1, -2] n

end

end A341905.P2966013994736013044

namespace A341905

/-- `ogf((-3+3x+x^2)/(-1+x+x^2+2x^3))` -/
def P2966013994736013044.Spec : Prop :=
  ∀ n, P2966013994736013044.a n = A341905 n

end A341905

/-! ## A341905.P18123965667829061609

`a(n-1)+a(n-2)+a(n-3)+a(n-3)` with `a(0)=3, a(1)=0, a(2)=2`
-/

namespace A341905.P18123965667829061609
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3, 0, 2] fun n a =>
  a (n - 1) + (a (n - 2) + (a (n - 3) + a (n - 3)))

end

end A341905.P18123965667829061609

namespace A341905

/-- `a(n-1)+a(n-2)+a(n-3)+a(n-3)` -/
def P18123965667829061609.Spec : Prop :=
  ∀ n, (P18123965667829061609.a n : ℤ) = A341905 n

theorem P18123965667829061609.correct : P18123965667829061609.Spec := by
  intro n
  simp only [A341905, Nat.add_sub_cancel, A341905.P18123965667829061609.a, A341905.P6425134035811713941.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A341905

/-! ## A341905.P12315021869206893063

`A049347(n)+A122552(n)+A078010(n)`
-/

namespace A341905.P12315021869206893063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049347 n + (A122552 n + A078010 n)

end

end A341905.P12315021869206893063

namespace A341905

/-- `A049347(n)+A122552(n)+A078010(n)` -/
def P12315021869206893063.Spec : Prop :=
  ∀ n, P12315021869206893063.a n = A341905 n

end A341905

/-! ## A341905.P2834270598412139407

`A077947(n+1)+A167373(n+1)-A122552(n)`
-/

namespace A341905.P2834270598412139407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077947 (n + 1) + (A167373 (n + 1) - A122552 n)

end

end A341905.P2834270598412139407

namespace A341905

/-- `A077947(n+1)+A167373(n+1)-A122552(n)` -/
def P2834270598412139407.Spec : Prop :=
  ∀ n, P2834270598412139407.a n = A341905 n

end A341905

/-! ## A341905.P8150029674826303401

`Δ[A267210(n)-A226308(n)]`
-/

namespace A341905.P8150029674826303401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267210 n - A226308 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A341905.P8150029674826303401

namespace A341905

/-- `Δ[A267210(n)-A226308(n)]` -/
def P8150029674826303401.Spec : Prop :=
  ∀ n, P8150029674826303401.a n = A341905 n

end A341905

/-! ## A341905.P14506614699647763331

`Δ[Δ[A122552(n+1)]-A122552(n)/3]`
-/

namespace A341905.P14506614699647763331
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122552 (n + 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n : ℚ) - (A122552 n : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A341905.P14506614699647763331

namespace A341905

/-- `Δ[Δ[A122552(n+1)]-A122552(n)/3]` -/
def P14506614699647763331.Spec : Prop :=
  ∀ n, P14506614699647763331.a n = (A341905 n : ℚ)

end A341905

/-!
# A341907: T(n, k) is the result of replacing 2^e with k^e in the binary expansion of n; square array T(n, k) read by antidiagonals upwards, n, k >= 0.

The programs for A341907, there is no canonical definition to state claims against.
-/

/-! ## A341907.P12946185194017903488

`A005136(A061926(n)*A132749(n))`
-/

namespace A341907.P12946185194017903488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005136 (A061926 n * A132749 n).toNat

end

end A341907.P12946185194017903488

/-! ## A341907.P16834870768481244277

`A004197(n)+A000035(A221483(n+1))`
-/

namespace A341907.P16834870768481244277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004197 n + A000035 (A221483 (n + 1)).toNat

end

end A341907.P16834870768481244277

/-! ## A341907.P15315801352109228760

`A206474(n)%A000032(A114192(n))`
-/

namespace A341907.P15315801352109228760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A206474 n) (A000032 (A114192 n).toNat)

end

end A341907.P15315801352109228760

/-! ## A341907.P278575478527902460

`A061926(n)^A291678(A278987(3*n+2))`
-/

namespace A341907.P278575478527902460
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061926 n : ℚ) ^ (A291678 (A278987 (3 * n + 2)).toNat : ℤ)

end

end A341907.P278575478527902460

/-! ## A341907.P10155065321777126401

`A061926(n)/A005361(A103866(3*n+5))`
-/

namespace A341907.P10155065321777126401
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061926 n : ℚ) / (A005361 (A103866 (3 * n + 5)).toNat : ℚ)

end

end A341907.P10155065321777126401

/-!
# A341910: Lexicographically earliest sequence of distinct nonnegative integers such that for any n >= 0, the number of runs in the binary expansion of n equals the number of ones in the binary expansion of a(n).

The programs for A341910, there is no canonical definition to state claims against.
-/

/-! ## A341910.P2858749407949771839

`A333692(A341915(n))%A288150(n+1)`
-/

namespace A341910.P2858749407949771839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A333692 (A341915 n).toNat) (A288150 (n + 1))

end

end A341910.P2858749407949771839

/-! ## A341910.P3321973489568342789

`A333776(A003188(n)%A089529(2*(n+2)))`
-/

namespace A341910.P3321973489568342789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333776 (Int.tmod (A003188 n) (A089529 (2 * (n + 2)))).toNat

end

end A341910.P3321973489568342789

/-! ## A341910.P8305942483289461936

`A333776(A003188(n)%A205772(n))`
-/

namespace A341910.P8305942483289461936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333776 (Int.tmod (A003188 n) (A205772 n)).toNat

end

end A341910.P8305942483289461936

/-! ## A341910.P16649171160663320678

`A333776(A003188(n))%A279508(3*n)`
-/

namespace A341910.P16649171160663320678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A333776 (A003188 n).toNat) (A279508 (3 * n))

end

end A341910.P16649171160663320678

/-! ## A341910.P14359152730984777682

`A057889(A341915(n)%A115173(n+1))`
-/

namespace A341910.P14359152730984777682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057889 (Int.tmod (A341915 n) (A115173 (n + 1))).toNat

end

end A341910.P14359152730984777682

/-!
# A341911: Lexicographically earliest sequence of distinct nonnegative integers such that for any n >= 0, the number of ones in the binary expansion of n equals the number of runs in the binary expansion of a(n).

The programs for A341911, there is no canonical definition to state claims against.
-/

/-! ## A341911.P5994999084788456126

`A006068(A333777(n)^A254730(n))`
-/

namespace A341911.P5994999084788456126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006068 (SequenceMachineLib.roundAway ((A333777 n : ℚ) ^ (A254730 n : ℤ))).toNat

end

end A341911.P5994999084788456126

/-! ## A341911.P14988514690142193711

`A341916(A057889(n)^A254730(n))`
-/

namespace A341911.P14988514690142193711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341916 (SequenceMachineLib.roundAway ((A057889 n : ℚ) ^ (A254730 n : ℤ))).toNat

end

end A341911.P14988514690142193711

/-! ## A341911.P9127660346437933039

`A341916(A235027(n)^A254730(n))`
-/

namespace A341911.P9127660346437933039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341916 (SequenceMachineLib.roundAway ((A235027 n : ℚ) ^ (A254730 n : ℤ))).toNat

end

end A341911.P9127660346437933039

/-! ## A341911.P13369199137037774857

`A341916(A333692(n^A254730(n)))`
-/

namespace A341911.P13369199137037774857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341916 (A333692 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A254730 n : ℤ))).toNat).toNat

end

end A341911.P13369199137037774857

/-! ## A341911.P10644980658686771198

`A341916(A333693(n)^A254730(n))`
-/

namespace A341911.P10644980658686771198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341916 (SequenceMachineLib.roundAway ((A333693 n : ℚ) ^ (A254730 n : ℤ))).toNat

end

end A341911.P10644980658686771198

/-!
# A341912: Number of partitions of n into 5 distinct and relatively prime parts.

The programs for A341912, there is no canonical definition to state claims against.
-/

/-! ## A341912.P3112283748578704426

`A001401(n)-A044941(A214899(n))`
-/

namespace A341912.P3112283748578704426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001401 n - A044941 (A214899 n).toNat

end

end A341912.P3112283748578704426

/-! ## A341912.P13727936438201895252

`A001401(n)-A014081(A291551(n))`
-/

namespace A341912.P13727936438201895252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001401 n - A014081 (A291551 n).toNat

end

end A341912.P13727936438201895252

/-! ## A341912.P14771007234911391931

`A026811(n+5)-A014081(A291551(n))`
-/

namespace A341912.P14771007234911391931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026811 (n + 5) - A014081 (A291551 n).toNat

end

end A341912.P14771007234911391931

/-! ## A341912.P5352362817047701364

`A212544(n+6)-A212545(n+5)-A014081(A291551(n))`
-/

namespace A341912.P5352362817047701364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212544 (n + 6) - A212545 (n + 5) - A014081 (A291551 n).toNat

end

end A341912.P5352362817047701364

/-! ## A341912.P12408436536391909843

`A001401(n)-A014139(A281915(n+2))`
-/

namespace A341912.P12408436536391909843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001401 n - A014139 (A281915 (n + 2)).toNat

end

end A341912.P12408436536391909843

/-!
# A341913: Number of partitions of n into 9 distinct and relatively prime parts.

The programs for A341913, there is no canonical definition to state claims against.
-/

/-! ## A341913.P3138402557062723814

`A008638(n)-A101638(A343510(n+2))`
-/

namespace A341913.P3138402557062723814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008638 n - A101638 (A343510 (n + 2)).toNat

end

end A341913.P3138402557062723814

/-! ## A341913.P1630304340630429893

`A008638(n)-A025469(A117298(n+1))`
-/

namespace A341913.P1630304340630429893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008638 n - A025469 (A117298 (n + 1)).toNat

end

end A341913.P1630304340630429893

/-! ## A341913.P2268832592328809243

`∑[A266777(n)%A214563(n+2)]`
-/

namespace A341913.P2268832592328809243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A266777 n) (A214563 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A341913.P2268832592328809243

/-! ## A341913.P16768558166967844388

`A008638(n)*A008956(A010894(n))`
-/

namespace A341913.P16768558166967844388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008638 n * A008956 (A010894 (n + 21)).toNat

end

end A341913.P16768558166967844388

/-! ## A341913.P17950894620213287546

`A010054(A055013(2*n+3))+A008638(n)`
-/

namespace A341913.P17950894620213287546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (A055013 (2 * n + 3)).toNat + A008638 n

end

end A341913.P17950894620213287546

/-!
# A341914: Number of partitions of n into 10 distinct and relatively prime parts.

The programs for A341914, there is no canonical definition to state claims against.
-/

/-! ## A341914.P6055285386976958448

`A008639(n)-A018843(A240020(n+1))`
-/

namespace A341914.P6055285386976958448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008639 n - A018843 (A240020 (n + 1)).toNat

end

end A341914.P6055285386976958448

/-!
# A341915: For any nonnegative number n with runs in binary expansion (r_1, ..., r_w), a(n) = Sum_{k = 1..w} 2^(r_1 + ... + r_k - 1).

The programs for A341915, the canonical program `A341915.P11187009111869223306` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A341915 has offset 0).

The definition of A341915 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A341915.P11187009111869223306

`A003188(A056539(n))`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A341915

/-- `A003188(A056539(n))` -/
def P11187009111869223306.Spec : Prop :=
  ∀ n, P11187009111869223306.a n = A341915 n

theorem P11187009111869223306.correct : P11187009111869223306.Spec := by
  intro n
  simp only [A341915]

end A341915

/-! ## A341915.P6356902391541727232

`or(A003188(A030101(n)), A053644(n))`
-/

namespace A341915.P6356902391541727232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A003188 (A030101 n).toNat) (A053644 n)

end

end A341915.P6356902391541727232

namespace A341915

/-- `or(A003188(A030101(n)), A053644(n))` -/
def P6356902391541727232.Spec : Prop :=
  ∀ n, P6356902391541727232.a n = A341915 n

end A341915

/-! ## A341915.P3229387842348609958

`(A341916(A053644(n))+A280995(n))/2`
-/

namespace A341915.P3229387842348609958
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A341916 (A053644 n).toNat + A280995 n : ℚ) / 2

end

end A341915.P3229387842348609958

namespace A341915

/-- `(A341916(A053644(n))+A280995(n))/2` -/
def P3229387842348609958.Spec : Prop :=
  ∀ n, P3229387842348609958.a n = (A341915 n : ℚ)

end A341915

/-! ## A341915.P8696945127376270140

`A003188(A341916(A003188(n)))`
-/

namespace A341915.P8696945127376270140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 (A341916 (A003188 n).toNat).toNat

end

end A341915.P8696945127376270140

namespace A341915

/-- `A003188(A341916(A003188(n)))` -/
def P8696945127376270140.Spec : Prop :=
  ∀ n, P8696945127376270140.a n = A341915 n

end A341915

/-! ## A341915.P8559087679535983615

`A231550(A341916(A231550(n)))`
-/

namespace A341915.P8559087679535983615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231550 (A341916 (A231550 n).toNat).toNat

end

end A341915.P8559087679535983615

namespace A341915

/-- `A231550(A341916(A231550(n)))` -/
def P8559087679535983615.Spec : Prop :=
  ∀ n, P8559087679535983615.a n = A341915 n

end A341915

/-! ## A341915.P1984014718442014179

`A340250(A341916(A340250(n)))`
-/

namespace A341915.P1984014718442014179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340250 (A341916 (A340250 n).toNat).toNat

end

end A341915.P1984014718442014179

namespace A341915

/-- `A340250(A341916(A340250(n)))` -/
def P1984014718442014179.Spec : Prop :=
  ∀ n, P1984014718442014179.a n = A341915 n

end A341915

/-! ## A341915.P14216376314453617494

`(A030101(A003188(n))+A003817(n))/2`
-/

namespace A341915.P14216376314453617494
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A030101 (A003188 n).toNat + A003817 n : ℚ) / 2

end

end A341915.P14216376314453617494

namespace A341915

/-- `(A030101(A003188(n))+A003817(n))/2` -/
def P14216376314453617494.Spec : Prop :=
  ∀ n, P14216376314453617494.a n = (A341915 n : ℚ)

end A341915

/-! ## A341915.P5655374927782896365

`A234027(A234024(A234025(A234612(A193231(n)))))`
-/

namespace A341915.P5655374927782896365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234027 (A234024 (A234025 (A234612 (A193231 n).toNat).toNat).toNat).toNat

end

end A341915.P5655374927782896365

namespace A341915

/-- `A234027(A234024(A234025(A234612(A193231(n)))))` -/
def P5655374927782896365.Spec : Prop :=
  ∀ n, P5655374927782896365.a n = A341915 n

end A341915

/-! ## A341915.P17422055281518873711

`A234027(A234024(A234025(A193231(A234613(n)))))`
-/

namespace A341915.P17422055281518873711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234027 (A234024 (A234025 (A193231 (A234613 n).toNat).toNat).toNat).toNat

end

end A341915.P17422055281518873711

namespace A341915

/-- `A234027(A234024(A234025(A193231(A234613(n)))))` -/
def P17422055281518873711.Spec : Prop :=
  ∀ n, P17422055281518873711.a n = A341915 n

end A341915

/-! ## A341915.P4521392577918247135

`A030109(2*A003188(n)+1)`
-/

namespace A341915.P4521392577918247135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030109 (2 * A003188 n + 1).toNat

end

end A341915.P4521392577918247135

namespace A341915

/-- `A030109(2*A003188(n)+1)` -/
def P4521392577918247135.Spec : Prop :=
  ∀ n, P4521392577918247135.a n = A341915 n

end A341915

/-! ## A341915.P17383693260064949708

`A030109(or(1, A003188(2*n)))`
-/

namespace A341915.P17383693260064949708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030109 (Int.lor 1 (A003188 (2 * n))).toNat

end

end A341915.P17383693260064949708

namespace A341915

/-- `A030109(or(1, A003188(2*n)))` -/
def P17383693260064949708.Spec : Prop :=
  ∀ n, P17383693260064949708.a n = A341915 n

end A341915

/-! ## A341915.P8238504730478972132

`A030109(xor(1, 2*A003188(n)))`
-/

namespace A341915.P8238504730478972132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030109 (Int.xor 1 (2 * A003188 n)).toNat

end

end A341915.P8238504730478972132

namespace A341915

/-- `A030109(xor(1, 2*A003188(n)))` -/
def P8238504730478972132.Spec : Prop :=
  ∀ n, P8238504730478972132.a n = A341915 n

end A341915

/-! ## A341915.P16314337277397721858

`A030109(A003188(n)+A003188(n)+1)`
-/

namespace A341915.P16314337277397721858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030109 (A003188 n + (A003188 n + 1)).toNat

end

end A341915.P16314337277397721858

namespace A341915

/-- `A030109(A003188(n)+A003188(n)+1)` -/
def P16314337277397721858.Spec : Prop :=
  ∀ n, P16314337277397721858.a n = A341915 n

end A341915

/-! ## A341915.P3246963699576203725

`A153153(A341916(A153153(n)))`
-/

namespace A341915.P3246963699576203725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153153 (A341916 (A153153 n).toNat).toNat

end

end A341915.P3246963699576203725

namespace A341915

/-- `A153153(A341916(A153153(n)))` -/
def P3246963699576203725.Spec : Prop :=
  ∀ n, P3246963699576203725.a n = A341915 n

end A341915

/-! ## A341915.P2229156587263664417

`A180201(A129594(n))`
-/

namespace A341915.P2229156587263664417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180201 (A129594 n).toNat

end

end A341915.P2229156587263664417

namespace A341915

/-- `A180201(A129594(n))` -/
def P2229156587263664417.Spec : Prop :=
  ∀ n, P2229156587263664417.a n = A341915 n

end A341915

/-! ## A341915.P1601594090652117750

`A234612(A245446(n))`
-/

namespace A341915.P1601594090652117750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234612 (A245446 n).toNat

end

end A341915.P1601594090652117750

namespace A341915

/-- `A234612(A245446(n))` -/
def P1601594090652117750.Spec : Prop :=
  ∀ n, P1601594090652117750.a n = A341915 n

end A341915

/-! ## A341915.P10170675010642911298

`A253564(A075159(n+1))`
-/

namespace A341915.P10170675010642911298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253564 (A075159 (n + 1)).toNat

end

end A341915.P10170675010642911298

namespace A341915

/-- `A253564(A075159(n+1))` -/
def P10170675010642911298.Spec : Prop :=
  ∀ n, P10170675010642911298.a n = A341915 n

end A341915

/-!
# A341916: Inverse permutation to A341915.

The programs for A341916, the canonical program `A341916.P17753814801162057676` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A341916 has offset 0).

The definition of A341916 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8193 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A341916.P17753814801162057676

`A006068(A145342(n+1)-1)`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A341916

/-- `A006068(A145342(n+1)-1)` -/
def P17753814801162057676.Spec : Prop :=
  ∀ n, P17753814801162057676.a n = A341916 n

theorem P17753814801162057676.correct : P17753814801162057676.Spec := by
  intro n
  simp only [A341916]

end A341916

/-! ## A341916.P5936500101064508351

`A006068((A145341(n+1)-1)/2)`
-/

namespace A341916.P5936500101064508351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006068 (SequenceMachineLib.roundAway ((A145341 (n + 1) - 1 : ℚ) / 2)).toNat

end

end A341916.P5936500101064508351

namespace A341916

/-- `A006068((A145341(n+1)-1)/2)` -/
def P5936500101064508351.Spec : Prop :=
  ∀ n, P5936500101064508351.a n = A341916 n

end A341916

/-! ## A341916.P17887679413659862974

`A006068(A145341(n+1)%A145342(n+1))`
-/

namespace A341916.P17887679413659862974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006068 (Int.tmod (A145341 (n + 1)) (A145342 (n + 1))).toNat

end

end A341916.P17887679413659862974

namespace A341916

/-- `A006068(A145341(n+1)%A145342(n+1))` -/
def P17887679413659862974.Spec : Prop :=
  ∀ n, P17887679413659862974.a n = A341916 n

end A341916

/-! ## A341916.P11289405090862604595

`floor(A378299(2*n+1)/2)`
-/

namespace A341916.P11289405090862604595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A378299 (2 * n + 1) : ℚ) / 2⌋

end

end A341916.P11289405090862604595

namespace A341916

/-- `floor(A378299(2*n+1)/2)` -/
def P11289405090862604595.Spec : Prop :=
  ∀ n, P11289405090862604595.a n = A341916 n

end A341916

/-! ## A341916.P2995568123347551733

`A056539(A006068(n))`
-/

namespace A341916.P2995568123347551733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056539 (A006068 n).toNat

end

end A341916.P2995568123347551733

namespace A341916

/-- `A056539(A006068(n))` -/
def P2995568123347551733.Spec : Prop :=
  ∀ n, P2995568123347551733.a n = A341916 n

end A341916

/-! ## A341916.P1502077105866694463

`A292600(A145341(n+1))`
-/

namespace A341916.P1502077105866694463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292600 (A145341 (n + 1)).toNat

end

end A341916.P1502077105866694463

namespace A341916

/-- `A292600(A145341(n+1))` -/
def P1502077105866694463.Spec : Prop :=
  ∀ n, P1502077105866694463.a n = A341916 n

end A341916

/-! ## A341916.P18117705974111717408

`A056539(A292600(2*n))`
-/

namespace A341916.P18117705974111717408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056539 (A292600 (2 * n)).toNat

end

end A341916.P18117705974111717408

namespace A341916

/-- `A056539(A292600(2*n))` -/
def P18117705974111717408.Spec : Prop :=
  ∀ n, P18117705974111717408.a n = A341916 n

end A341916

/-! ## A341916.P2402866184917799330

`A335858(A006068(A233280(n)))`
-/

namespace A341916.P2402866184917799330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335858 (A006068 (A233280 n).toNat).toNat

end

end A341916.P2402866184917799330

namespace A341916

/-- `A335858(A006068(A233280(n)))` -/
def P2402866184917799330.Spec : Prop :=
  ∀ n, P2402866184917799330.a n = A341916 n

end A341916

/-! ## A341916.P5783779875250468

`A231551(A341915(A231551(n)))`
-/

namespace A341916.P5783779875250468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231551 (A341915 (A231551 n).toNat).toNat

end

end A341916.P5783779875250468

namespace A341916

/-- `A231551(A341915(A231551(n)))` -/
def P5783779875250468.Spec : Prop :=
  ∀ n, P5783779875250468.a n = A341916 n

end A341916

/-! ## A341916.P17921848952578562308

`A335858(A341915(A335858(n)))`
-/

namespace A341916.P17921848952578562308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335858 (A341915 (A335858 n).toNat).toNat

end

end A341916.P17921848952578562308

namespace A341916

/-- `A335858(A341915(A335858(n)))` -/
def P17921848952578562308.Spec : Prop :=
  ∀ n, P17921848952578562308.a n = A341916 n

end A341916

/-! ## A341916.P8072140613637198102

`A006068(A341915(A006068(A006068(A003188(n)))))`
-/

namespace A341916.P8072140613637198102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006068 (A341915 (A006068 (A006068 (A003188 n).toNat).toNat).toNat).toNat

end

end A341916.P8072140613637198102

namespace A341916

/-- `A006068(A341915(A006068(A006068(A003188(n)))))` -/
def P8072140613637198102.Spec : Prop :=
  ∀ n, P8072140613637198102.a n = A341916 n

end A341916

/-! ## A341916.P15162542832064341050

`A234613(A234027(A193231(A234024(A234025(n)))))`
-/

namespace A341916.P15162542832064341050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234613 (A234027 (A193231 (A234024 (A234025 n).toNat).toNat).toNat).toNat

end

end A341916.P15162542832064341050

namespace A341916

/-- `A234613(A234027(A193231(A234024(A234025(n)))))` -/
def P15162542832064341050.Spec : Prop :=
  ∀ n, P15162542832064341050.a n = A341916 n

end A341916

/-! ## A341916.P9589682356509295029

`A234613(A193231(A234026(A234024(A234027(n)))))`
-/

namespace A341916.P9589682356509295029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234613 (A193231 (A234026 (A234024 (A234027 n).toNat).toNat).toNat).toNat

end

end A341916.P9589682356509295029

namespace A341916

/-- `A234613(A193231(A234026(A234024(A234027(n)))))` -/
def P9589682356509295029.Spec : Prop :=
  ∀ n, P9589682356509295029.a n = A341916 n

end A341916

/-! ## A341916.P14210491282240985038

`A234613(A234027(A234024(A234025(A234024(n)))))`
-/

namespace A341916.P14210491282240985038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234613 (A234027 (A234024 (A234025 (A234024 n).toNat).toNat).toNat).toNat

end

end A341916.P14210491282240985038

namespace A341916

/-- `A234613(A234027(A234024(A234025(A234024(n)))))` -/
def P14210491282240985038.Spec : Prop :=
  ∀ n, P14210491282240985038.a n = A341916 n

end A341916

/-! ## A341916.P2659376364212248132

`A006068(A030109(2*n+1))`
-/

namespace A341916.P2659376364212248132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006068 (A030109 (2 * n + 1)).toNat

end

end A341916.P2659376364212248132

namespace A341916

/-- `A006068(A030109(2*n+1))` -/
def P2659376364212248132.Spec : Prop :=
  ∀ n, P2659376364212248132.a n = A341916 n

end A341916

/-! ## A341916.P7554965669410403896

`A292600(A030101(2*n+1))`
-/

namespace A341916.P7554965669410403896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292600 (A030101 (2 * n + 1)).toNat

end

end A341916.P7554965669410403896

namespace A341916

/-- `A292600(A030101(2*n+1))` -/
def P7554965669410403896.Spec : Prop :=
  ∀ n, P7554965669410403896.a n = A341916 n

end A341916

/-! ## A341916.P1291627653731002089

`A180200(A056539(2*n)/2)`
-/

namespace A341916.P1291627653731002089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180200 (SequenceMachineLib.roundAway ((A056539 (2 * n) : ℚ) / 2)).toNat

end

end A341916.P1291627653731002089

namespace A341916

/-- `A180200(A056539(2*n)/2)` -/
def P1291627653731002089.Spec : Prop :=
  ∀ n, P1291627653731002089.a n = A341916 n

end A341916

/-! ## A341916.P11426415024173934220

`A066194(A049773(2*n+1))-1`
-/

namespace A341916.P11426415024173934220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066194 (A049773 (2 * n + 1)).toNat - 1

end

end A341916.P11426415024173934220

namespace A341916

/-- `A066194(A049773(2*n+1))-1` -/
def P11426415024173934220.Spec : Prop :=
  ∀ n, P11426415024173934220.a n = A341916 n

end A341916

/-! ## A341916.P52582333159110654

`A281589(A233279(2*n+1))-1`
-/

namespace A341916.P52582333159110654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281589 (A233279 (2 * n + 1)).toNat - 1

end

end A341916.P52582333159110654

namespace A341916

/-- `A281589(A233279(2*n+1))-1` -/
def P52582333159110654.Spec : Prop :=
  ∀ n, P52582333159110654.a n = A341916 n

end A341916

/-! ## A341916.P5325487755145954562

`A006068(floor(A030101(2*n+1)/2))`
-/

namespace A341916.P5325487755145954562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006068 ⌊(A030101 (2 * n + 1) : ℚ) / 2⌋.toNat

end

end A341916.P5325487755145954562

namespace A341916

/-- `A006068(floor(A030101(2*n+1)/2))` -/
def P5325487755145954562.Spec : Prop :=
  ∀ n, P5325487755145954562.a n = A341916 n

end A341916

/-!
# A341917: Number of strong triangulations of a fixed pentagon with n interior nodes.

The programs for A341917, there is no canonical definition to state claims against.
-/

/-! ## A341917.P10322890745035612219

`record[A341856(A055998(n))]`
-/

namespace A341917.P10322890745035612219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341856 (A055998 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A341917.P10322890745035612219

/-! ## A341917.P9239895944792688293

`A341856(A055998(n+2))`
-/

namespace A341917.P9239895944792688293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341856 (A055998 (n + 2)).toNat

end

end A341917.P9239895944792688293

/-! ## A341917.P12310077842168964554

`record[A341856(A000096(n)+n)]`
-/

namespace A341917.P12310077842168964554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341856 (A000096 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A341917.P12310077842168964554

/-! ## A341917.P725478778962857979

`A341856(A000096(n+3)-2)`
-/

namespace A341917.P725478778962857979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341856 (A000096 (n + 3) - 2).toNat

end

end A341917.P725478778962857979

/-! ## A341917.P3797039809538760231

`record[A341856(n)/A342088(n+3)]`
-/

namespace A341917.P3797039809538760231
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A341856 n : ℚ) / (A342088 (n + 3) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A341917.P3797039809538760231

/-!
# A341918: Number of strong triangulations of a fixed hexagon with n interior nodes.

The programs for A341918, there is no canonical definition to state claims against.
-/

/-! ## A341918.P834001387596834894

`A341856(A046691(n+3))`
-/

namespace A341918.P834001387596834894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341856 (A046691 (n + 3)).toNat

end

end A341918.P834001387596834894

/-! ## A341918.P2141838546188127185

`A341856(Δ[A023545(n+1)])`
-/

namespace A341918.P2141838546188127185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341856 (f1 (n + 1) - f1 n).toNat

end

end A341918.P2141838546188127185

/-! ## A341918.P10321289397219613591

`A341856(A000096(n+4)-3)`
-/

namespace A341918.P10321289397219613591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341856 (A000096 (n + 4) - 3).toNat

end

end A341918.P10321289397219613591

/-! ## A341918.P3721575702116187715

`A341856(A000217(n+5)-4)`
-/

namespace A341918.P3721575702116187715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341856 (A000217 (n + 5) - 4).toNat

end

end A341918.P3721575702116187715

/-! ## A341918.P10436295278271341461

`A341856(eq[4, A025581(n)]+1)`
-/

namespace A341918.P10436295278271341461
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341856 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A341918.P10436295278271341461

/-!
# A341919: Number of strong triangulations of a disk with n nodes.

The programs for A341919, there is no canonical definition to state claims against.
-/

/-! ## A341919.P17447386617037489283

`A333536(2*A294462(n))`
-/

namespace A341919.P17447386617037489283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333536 (2 * A294462 n).toNat

end

end A341919.P17447386617037489283

/-! ## A341919.P17737295414850137062

`Δ[A077773(Δ[A014517(n)])]`
-/

namespace A341919.P17737295414850137062
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014517 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077773 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A341919.P17737295414850137062

/-!
# A341920: Number of simple strong triangulations of a fixed pentagon with n interior nodes.

The programs for A341920, the canonical program `A341920.P11250737971924806706` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A341920 has offset 1).

The definition of A341920 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A341920.P11250737971924806706

`5*(5*(n+1)-3)*C(3*(n+1), n+1)/((n+2)*(2*(n+1)+1)*(2*(n+1)+3))`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A341920

/-- `5*(5*(n+1)-3)*C(3*(n+1), n+1)/((n+2)*(2*(n+1)+1)*(2*(n+1)+3))` -/
def P11250737971924806706.Spec : Prop :=
  ∀ n, P11250737971924806706.a n = (A341920 (n + 1) : ℚ)

end A341920

/-! ## A341920.P13316280207208294265

`A210664(∑[n+3])`
-/

namespace A341920.P13316280207208294265
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210664 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A341920.P13316280207208294265

namespace A341920

/-- `A210664(∑[n+3])` -/
def P13316280207208294265.Spec : Prop :=
  ∀ n, P13316280207208294265.a n = A341920 (n + 1)

end A341920

/-! ## A341920.P2222219225245965332

`record[A210664(n)/A210636(n+2)]`
-/

namespace A341920.P2222219225245965332
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A210664 n : ℚ) / (A210636 (n + 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A341920.P2222219225245965332

namespace A341920

/-- `record[A210664(n)/A210636(n+2)]` -/
def P2222219225245965332.Spec : Prop :=
  ∀ n, P2222219225245965332.a n = (A341920 (n + 1) : ℚ)

end A341920

/-! ## A341920.P16520169749633240928

`record[A210664(A027379(A002262(n)))]`
-/

namespace A341920.P16520169749633240928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210664 (A027379 (A002262 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A341920.P16520169749633240928

namespace A341920

/-- `record[A210664(A027379(A002262(n)))]` -/
def P16520169749633240928.Spec : Prop :=
  ∀ n, P16520169749633240928.a n = A341920 (n + 1)

end A341920

/-! ## A341920.P5439949769107440445

`record[A210664(A027379(A008615(n)))]`
-/

namespace A341920.P5439949769107440445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210664 (A027379 (A008615 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A341920.P5439949769107440445

namespace A341920

/-- `record[A210664(A027379(A008615(n)))]` -/
def P5439949769107440445.Spec : Prop :=
  ∀ n, P5439949769107440445.a n = A341920 (n + 1)

end A341920

/-!
# A341921: Number of simple strong triangulations of a fixed hexagon with n interior nodes.

The programs for A341921, there is no canonical definition to state claims against.
-/

/-! ## A341921.P301059891258427088

`A210664(∑[n+3]+n+3)`
-/

namespace A341921.P301059891258427088
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210664 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A341921.P301059891258427088

/-! ## A341921.P13307721805090982985

`record[A210664(abs(A046691(n)))]`
-/

namespace A341921.P13307721805090982985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210664 |A046691 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A341921.P13307721805090982985

/-! ## A341921.P9239160684255709582

`record[A210664(A027379(n)-1)]`
-/

namespace A341921.P9239160684255709582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210664 (A027379 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A341921.P9239160684255709582

/-! ## A341921.P4976197264503638467

`record[gcd(A210664(n), A288942(n+3))]`
-/

namespace A341921.P4976197264503638467
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A210664 n) (A288942 (n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A341921.P4976197264503638467

/-! ## A341921.P17102402011111339427

`record[A210664(A004273(n)+A000217(n))]`
-/

namespace A341921.P17102402011111339427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210664 (A004273 n + A000217 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A341921.P17102402011111339427

/-!
# A341922: Number of simple 3-connected triangulations of a disk with n nodes.

The programs for A341922, there is no canonical definition to state claims against.
-/

/-! ## A341922.P3561784161218504653

`A000256(n+4)+A000256(n+5)`
-/

namespace A341922.P3561784161218504653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000256 (n + 4) + A000256 (n + 5)

end

end A341922.P3561784161218504653

/-! ## A341922.P1655369993718021538

`A210664(A000096(n))+A000256(n+5)`
-/

namespace A341922.P1655369993718021538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210664 (A000096 n).toNat + A000256 (n + 5)

end

end A341922.P1655369993718021538

/-! ## A341922.P6044876560225842356

`A210664(A000096(n+1))+A210664(A000096(n))`
-/

namespace A341922.P6044876560225842356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210664 (A000096 (n + 1)).toNat + A210664 (A000096 n).toNat

end

end A341922.P6044876560225842356

/-!
# A341923: Array read by antidiagonals: T(n,k) is the number of 3-connected triangulations of a disk up to orientation-preserving isomorphisms with n interior nodes and k nodes on the boundary, n >= 1, k >= 3.

The programs for A341923, there is no canonical definition to state claims against.
-/

/-! ## A341923.P16233514703404739598

`A345914(A293908(n))+A038548(5*A288853(n))`
-/

namespace A341923.P16233514703404739598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345914 (A293908 n).toNat + A038548 (5 * A288853 n).toNat

end

end A341923.P16233514703404739598

/-!
# A341924: Number of 3-connected triangulations of a quadrilateral up to orientation-preserving isomorphisms with n interior nodes.

The programs for A341924, there is no canonical definition to state claims against.
-/

/-! ## A341924.P3798004879303968046

`A341923(∑[n+2])`
-/

namespace A341924.P3798004879303968046
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341923 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A341924.P3798004879303968046

/-! ## A341924.P13332741061687651706

`record[A341923(A255548(n+3)-1)]`
-/

namespace A341924.P13332741061687651706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341923 (A255548 (n + 3) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A341924.P13332741061687651706

/-! ## A341924.P978011936429934721

`record[root(A341923(n+1), A004736(n+2))]`
-/

namespace A341924.P978011936429934721
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A341923 (n + 1) : ℝ) ^ (1 / (A004736 (n + 2) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A341924.P978011936429934721

/-! ## A341924.P5518860770479772709

`gcd(A151878(n), A341923(A000096(n+1)))`
-/

namespace A341924.P5518860770479772709
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A151878 n) (A341923 (A000096 (n + 1)).toNat)

end

end A341924.P5518860770479772709

/-! ## A341924.P13438860496424965070

`record[gcd(A341856(n+2), A341923(n+1))]`
-/

namespace A341924.P13438860496424965070
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A341856 (n + 2)) (A341923 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A341924.P13438860496424965070

/-!
# A341925: Number of 3-connected triangulations of a pentagon up to orientation-preserving isomorphisms with n interior nodes.

The programs for A341925, there is no canonical definition to state claims against.
-/

/-! ## A341925.P8632249871399267794

`A341923(∑[n+3]+1)`
-/

namespace A341925.P8632249871399267794
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341923 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A341925.P8632249871399267794

/-! ## A341925.P5182888775248244478

`record[A341923(n+1)/A342088(n+3)]`
-/

namespace A341925.P5182888775248244478
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A341923 (n + 1) : ℚ) / (A342088 (n + 3) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A341925.P5182888775248244478

/-! ## A341925.P4569635167625311093

`A341923(Δ[A008778(n)])+A008683(12*n+8)`
-/

namespace A341925.P4569635167625311093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341923 (f1 (n + 1) - f1 n).toNat + A008683 (12 * n + 8)

end

end A341925.P4569635167625311093

/-! ## A341925.P8379792688694568769

`gcd(79, A000041(n+1))*A341923(A167614(n+2)-5)`
-/

namespace A341925.P8379792688694568769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 79 (A000041 (n + 1)) : ℤ) * A341923 (A167614 (n + 2) - 5).toNat

end

end A341925.P8379792688694568769

/-! ## A341925.P18220767844826216136

`record[gcd(A341856(n+3), A341923(n+1))]`
-/

namespace A341925.P18220767844826216136
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A341856 (n + 3)) (A341923 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A341925.P18220767844826216136

/-!
# A341926: Number of 3-connected triangulations of a hexagon up to orientation-preserving isomorphisms with n interior nodes.

The programs for A341926, there is no canonical definition to state claims against.
-/

/-! ## A341926.P11835666270539150082

`A341923(A027379(n+2))`
-/

namespace A341926.P11835666270539150082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341923 (A027379 (n + 2)).toNat

end

end A341926.P11835666270539150082

/-! ## A341926.P6509794738165960333

`A341923(Δ[A006416(n+2)])`
-/

namespace A341926.P6509794738165960333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006416 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341923 (f1 (n + 1) - f1 n).toNat

end

end A341926.P6509794738165960333

/-! ## A341926.P5691997154221769500

`A341923(A046691(n+2)+1)`
-/

namespace A341926.P5691997154221769500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341923 (A046691 (n + 2) + 1).toNat

end

end A341926.P5691997154221769500

/-! ## A341926.P15312755341277853308

`A341923(A034856(n+3)-1)`
-/

namespace A341926.P15312755341277853308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341923 (A034856 (n + 3) - 1).toNat

end

end A341926.P15312755341277853308

/-! ## A341926.P170674055304359835

`A341923(Δ[A008778(n+1)]-1)`
-/

namespace A341926.P170674055304359835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341923 (f1 (n + 1) - f1 n - 1).toNat

end

end A341926.P170674055304359835

/-!
# A341927: Bisection of the numerators of the convergents of cf(1,4,1,6,1,6,...,6,1).

The programs for A341927, the canonical program `A341927.P4772011857449521180` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A341927 has offset 0).

The definition of A341927 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A341927.P4772011857449521180

`8*a(n-1)-a(n-2)` with `a(0)=1, a(1)=6`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A341927

/-- `8*a(n-1)-a(n-2)` -/
def P4772011857449521180.Spec : Prop :=
  ∀ n, P4772011857449521180.a n = A341927 n

theorem P4772011857449521180.correct : P4772011857449521180.Spec := by
  intro n
  simp only [A341927]

end A341927

/-! ## A341927.P734232299937937170

`A237262(2*n+1)`
-/

namespace A341927.P734232299937937170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237262 (2 * n + 1)

end

end A341927.P734232299937937170

namespace A341927

/-- `A237262(2*n+1)` -/
def P734232299937937170.Spec : Prop :=
  ∀ n, P734232299937937170.a n = A341927 n

end A341927

/-! ## A341927.P14789399626500395423

`ogf((1-2x)/(1-8x+x^2))`
-/

namespace A341927.P14789399626500395423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2] [1, -8, 1] n

end

end A341927.P14789399626500395423

namespace A341927

/-- `ogf((1-2x)/(1-8x+x^2))` -/
def P14789399626500395423.Spec : Prop :=
  ∀ n, P14789399626500395423.a n = A341927 n

end A341927

/-! ## A341927.P8291890085465458992

`A105426(n)+A001090(n)`
-/

namespace A341927.P8291890085465458992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105426 n + A001090 n

end

end A341927.P8291890085465458992

namespace A341927

/-- `A105426(n)+A001090(n)` -/
def P8291890085465458992.Spec : Prop :=
  ∀ n, P8291890085465458992.a n = A341927 n

end A341927

/-! ## A341927.P386575647115493725

`A070997(n)-A001090(n)`
-/

namespace A341927.P386575647115493725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070997 n - A001090 n

end

end A341927.P386575647115493725

namespace A341927

/-- `A070997(n)-A001090(n)` -/
def P386575647115493725.Spec : Prop :=
  ∀ n, P386575647115493725.a n = A341927 n

end A341927

/-! ## A341927.P5835754120057554635

`A077246(n)-A070997(n)`
-/

namespace A341927.P5835754120057554635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077246 n - A070997 n

end

end A341927.P5835754120057554635

namespace A341927

/-- `A077246(n)-A070997(n)` -/
def P5835754120057554635.Spec : Prop :=
  ∀ n, P5835754120057554635.a n = A341927 n

end A341927

/-! ## A341927.P13664179914207969948

`A001091(n)+2*A001090(n)`
-/

namespace A341927.P13664179914207969948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001091 n + 2 * A001090 n

end

end A341927.P13664179914207969948

namespace A341927

/-- `A001091(n)+2*A001090(n)` -/
def P13664179914207969948.Spec : Prop :=
  ∀ n, P13664179914207969948.a n = A341927 n

end A341927

/-! ## A341927.P15374411446815847922

`A041023(2*n)-A001090(n)`
-/

namespace A341927.P15374411446815847922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041023 (2 * n) - A001090 n

end

end A341927.P15374411446815847922

namespace A341927

/-- `A041023(2*n)-A001090(n)` -/
def P15374411446815847922.Spec : Prop :=
  ∀ n, P15374411446815847922.a n = A341927 n

end A341927

/-! ## A341927.P10597360921656945850

`A077248(2*n)-A070997(n)`
-/

namespace A341927.P10597360921656945850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077248 (2 * n) - A070997 n

end

end A341927.P10597360921656945850

namespace A341927

/-- `A077248(2*n)-A070997(n)` -/
def P10597360921656945850.Spec : Prop :=
  ∀ n, P10597360921656945850.a n = A341927 n

end A341927

/-! ## A341927.P14590617401557675909

`2*A001091(n)-A341929(n)`
-/

namespace A341927.P14590617401557675909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001091 n - A341929 n

end

end A341927.P14590617401557675909

namespace A341927

/-- `2*A001091(n)-A341929(n)` -/
def P14590617401557675909.Spec : Prop :=
  ∀ n, P14590617401557675909.a n = A341927 n

end A341927

/-! ## A341927.P1570314672465927103

`(A077246(n)-A001090(n))/2`
-/

namespace A341927.P1570314672465927103
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077246 n - A001090 n : ℚ) / 2

end

end A341927.P1570314672465927103

namespace A341927

/-- `(A077246(n)-A001090(n))/2` -/
def P1570314672465927103.Spec : Prop :=
  ∀ n, P1570314672465927103.a n = (A341927 n : ℚ)

end A341927

/-! ## A341927.P12403760838637890717

`(A077244(n)-A077245(n))/2`
-/

namespace A341927.P12403760838637890717
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077244 n - A077245 n : ℚ) / 2

end

end A341927.P12403760838637890717

namespace A341927

/-- `(A077244(n)-A077245(n))/2` -/
def P12403760838637890717.Spec : Prop :=
  ∀ n, P12403760838637890717.a n = (A341927 n : ℚ)

end A341927

/-! ## A341927.P1082629011055893097

`Δ[A136325(n)]-A341929(n+1)`
-/

namespace A341927.P1082629011055893097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136325 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A341929 (n + 1)

end

end A341927.P1082629011055893097

namespace A341927

/-- `Δ[A136325(n)]-A341929(n+1)` -/
def P1082629011055893097.Spec : Prop :=
  ∀ n, P1082629011055893097.a n = A341927 n

end A341927

/-! ## A341927.P4561307795198987839

`(A001091(n)+∑[A070997(n)])/2`
-/

namespace A341927.P4561307795198987839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070997 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A001091 n + ∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A341927.P4561307795198987839

namespace A341927

/-- `(A001091(n)+∑[A070997(n)])/2` -/
def P4561307795198987839.Spec : Prop :=
  ∀ n, P4561307795198987839.a n = (A341927 n : ℚ)

end A341927

/-! ## A341927.P5723956993807608675

`A199336(2*n+1)+A001090(n)`
-/

namespace A341927.P5723956993807608675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199336 (2 * n + 1) + A001090 n

end

end A341927.P5723956993807608675

namespace A341927

/-- `A199336(2*n+1)+A001090(n)` -/
def P5723956993807608675.Spec : Prop :=
  ∀ n, P5723956993807608675.a n = A341927 n

end A341927

/-! ## A341927.P8184059048752655786

`A001090(n+1)-2*A001090(n)`
-/

namespace A341927.P8184059048752655786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001090 (n + 1) - 2 * A001090 n

end

end A341927.P8184059048752655786

namespace A341927

/-- `A001090(n+1)-2*A001090(n)` -/
def P8184059048752655786.Spec : Prop :=
  ∀ n, P8184059048752655786.a n = A341927 n

end A341927

/-! ## A341927.P13461571326108191359

`A001091(n)+A273053(n+1)/2`
-/

namespace A341927.P13461571326108191359
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001091 n : ℚ) + (A273053 (n + 1) : ℚ) / 2

end

end A341927.P13461571326108191359

namespace A341927

/-- `A001091(n)+A273053(n+1)/2` -/
def P13461571326108191359.Spec : Prop :=
  ∀ n, P13461571326108191359.a n = (A341927 n : ℚ)

end A341927

/-! ## A341927.P7222831677372642454

`A145543(2*n+1)-A136325(n)`
-/

namespace A341927.P7222831677372642454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145543 (2 * n + 1) - A136325 n

end

end A341927.P7222831677372642454

namespace A341927

/-- `A145543(2*n+1)-A136325(n)` -/
def P7222831677372642454.Spec : Prop :=
  ∀ n, P7222831677372642454.a n = A341927 n

end A341927

/-! ## A341927.P11170909043477599678

`∑[A070997(n)]-A273053(n+1)/2`
-/

namespace A341927.P11170909043477599678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070997 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) - (A273053 (n + 1) : ℚ) / 2

end

end A341927.P11170909043477599678

namespace A341927

/-- `∑[A070997(n)]-A273053(n+1)/2` -/
def P11170909043477599678.Spec : Prop :=
  ∀ n, P11170909043477599678.a n = (A341927 n : ℚ)

end A341927

/-! ## A341927.P70114332568519378

`A341929(n+1)-A322780(2*n+1)`
-/

namespace A341927.P70114332568519378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341929 (n + 1) - A322780 (2 * n + 1)

end

end A341927.P70114332568519378

namespace A341927

/-- `A341929(n+1)-A322780(2*n+1)` -/
def P70114332568519378.Spec : Prop :=
  ∀ n, P70114332568519378.a n = A341927 n

end A341927

/-!
# A341928: a(n) = F(n+4) * F(n+2) + 7 * (-1)^n where F(n) = A000045(n) are the Fibonacci numbers.

The programs for A341928, the canonical program `A341928.P15535593501250382457` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A341928 has offset 1).

The definition of A341928 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000045(n+5)*A000045(n+3)+7*(-1)^(n+1)` (program `A341928.P15535593501250382457`, by `A341928.P15535593501250382457.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A341928.P15535593501250382457

`A000045(n+5)*A000045(n+3)+7*(-1)^(n+1)`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A341928

/-- `A000045(n+5)*A000045(n+3)+7*(-1)^(n+1)` -/
def P15535593501250382457.Spec : Prop :=
  ∀ n, P15535593501250382457.a n = A341928 (n + 1)

theorem P15535593501250382457.correct : P15535593501250382457.Spec := by
  intro n
  simp only [A341928, Nat.add_sub_cancel]

end A341928

/-! ## A341928.P6771407352622616690

`Δ[A341208(n+1)]`
-/

namespace A341928.P6771407352622616690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341208 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A341928.P6771407352622616690

namespace A341928

/-- `Δ[A341208(n+1)]` -/
def P6771407352622616690.Spec : Prop :=
  ∀ n, P6771407352622616690.a n = A341928 (n + 1)

end A341928

/-! ## A341928.P2881903163256802077

`A343008(n)+a(n-1)` with `a(0)=3`
-/

namespace A341928.P2881903163256802077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A343008 n + a (n - 1)

end

end A341928.P2881903163256802077

namespace A341928

/-- `A343008(n)+a(n-1)` -/
def P2881903163256802077.Spec : Prop :=
  ∀ n, P2881903163256802077.a n = A341928 (n + 1)

end A341928

/-! ## A341928.P5807766640535411711

`A048575(n+2)-a(n-1)` with `a(0)=3`
-/

namespace A341928.P5807766640535411711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A048575 (n + 2) - a (n - 1)

end

end A341928.P5807766640535411711

namespace A341928

/-- `A048575(n+2)-a(n-1)` -/
def P5807766640535411711.Spec : Prop :=
  ∀ n, P5807766640535411711.a n = A341928 (n + 1)

end A341928

/-! ## A341928.P592484620649832412

`A122367(n+3)-a(n-1)` with `a(0)=3`
-/

namespace A341928.P592484620649832412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A122367 (n + 3) - a (n - 1)

end

end A341928.P592484620649832412

namespace A341928

/-- `A122367(n+3)-a(n-1)` -/
def P592484620649832412.Spec : Prop :=
  ∀ n, P592484620649832412.a n = A341928 (n + 1)

end A341928

/-! ## A341928.P4726770205258483877

`Δ[A001654(n+3)+3^gcd(2, n)]`
-/

namespace A341928.P4726770205258483877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001654 (n + 3) + (3 ^ Nat.gcd 2 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A341928.P4726770205258483877

namespace A341928

/-- `Δ[A001654(n+3)+3^gcd(2, n)]` -/
def P4726770205258483877.Spec : Prop :=
  ∀ n, P4726770205258483877.a n = A341928 (n + 1)

end A341928

/-! ## A341928.P3478900123480402917

`A000045(2*n+7)-a(n-1)` with `a(0)=3`
-/

namespace A341928.P3478900123480402917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A000045 (2 * n + 7) - a (n - 1)

end

end A341928.P3478900123480402917

namespace A341928

/-- `A000045(2*n+7)-a(n-1)` -/
def P3478900123480402917.Spec : Prop :=
  ∀ n, P3478900123480402917.a n = A341928 (n + 1)

end A341928

/-! ## A341928.P16169906916518820071

`A022380(2*n)+A022087(n)²`
-/

namespace A341928.P16169906916518820071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022380 (2 * n) + A022087 n ^ 2

end

end A341928.P16169906916518820071

namespace A341928

/-- `A022380(2*n)+A022087(n)²` -/
def P16169906916518820071.Spec : Prop :=
  ∀ n, P16169906916518820071.a n = A341928 (n + 1)

end A341928

/-! ## A341928.P9424341254536182663

`A341208(n+2)-A341208(n+1)`
-/

namespace A341928.P9424341254536182663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341208 (n + 2) - A341208 (n + 1)

end

end A341928.P9424341254536182663

namespace A341928

/-- `A341208(n+2)-A341208(n+1)` -/
def P9424341254536182663.Spec : Prop :=
  ∀ n, P9424341254536182663.a n = A341928 (n + 1)

end A341928

/-! ## A341928.P1207548060285443231

`Δ[Δ[A338225(n+1)]]`
-/

namespace A341928.P1207548060285443231
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338225 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A341928.P1207548060285443231

namespace A341928

/-- `Δ[Δ[A338225(n+1)]]` -/
def P1207548060285443231.Spec : Prop :=
  ∀ n, P1207548060285443231.a n = A341928 (n + 1)

end A341928

/-! ## A341928.P4584123909271570031

`Δ[Δ[Δ[A226205(n+3)]]]`
-/

namespace A341928.P4584123909271570031
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226205 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A341928.P4584123909271570031

namespace A341928

/-- `Δ[Δ[Δ[A226205(n+3)]]]` -/
def P4584123909271570031.Spec : Prop :=
  ∀ n, P4584123909271570031.a n = A341928 (n + 1)

end A341928

/-! ## A341928.P12303606460358937259

`Δ[Δ[Δ[A195971(2*(n+1))]]]`
-/

namespace A341928.P12303606460358937259
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195971 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A341928.P12303606460358937259

namespace A341928

/-- `Δ[Δ[Δ[A195971(2*(n+1))]]]` -/
def P12303606460358937259.Spec : Prop :=
  ∀ n, P12303606460358937259.a n = A341928 (n + 1)

end A341928

/-! ## A341928.P17752001948028108099

`Δ[Δ[A080144(n)+A000034(n)]]`
-/

namespace A341928.P17752001948028108099
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080144 n + A000034 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A341928.P17752001948028108099

namespace A341928

/-- `Δ[Δ[A080144(n)+A000034(n)]]` -/
def P17752001948028108099.Spec : Prop :=
  ∀ n, P17752001948028108099.a n = A341928 (n + 1)

end A341928

/-!
# A341929: Bisection of the numerators of the convergents of cf (1,1,6,1,6,1,...,6,1).

The programs for A341929, the canonical program `A341929.P8999668053479383594` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A341929 has offset 0).

The definition of A341929 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A341929.P8999668053479383594

`8*a(n-1)-a(n-2)` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A341929

/-- `8*a(n-1)-a(n-2)` -/
def P8999668053479383594.Spec : Prop :=
  ∀ n, P8999668053479383594.a n = A341929 n

theorem P8999668053479383594.correct : P8999668053479383594.Spec := by
  intro n
  simp only [A341929]

end A341929

/-! ## A341929.P5797568789553049761

`ogf((1-6x)/(1-8x+x^2))`
-/

namespace A341929.P5797568789553049761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -6] [1, -8, 1] n

end

end A341929.P5797568789553049761

namespace A341929

/-- `ogf((1-6x)/(1-8x+x^2))` -/
def P5797568789553049761.Spec : Prop :=
  ∀ n, P5797568789553049761.a n = A341929 n

end A341929

/-! ## A341929.P16973189355070172142

`a(n-1)/(1/2)^3-a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A341929.P16973189355070172142
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) / ((1 : ℚ) / 2) ^ 3 - a (n - 2)

end

end A341929.P16973189355070172142

namespace A341929

/-- `a(n-1)/(1/2)^3-a(n-2)` -/
def P16973189355070172142.Spec : Prop :=
  ∀ n, P16973189355070172142.a n = (A341929 n : ℚ)

end A341929

/-! ## A341929.P13679933000484583424

`A237262(comp[2*(n+1)]+1)`
-/

namespace A341929.P13679933000484583424
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237262 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1)

end

end A341929.P13679933000484583424

namespace A341929

/-- `A237262(comp[2*(n+1)]+1)` -/
def P13679933000484583424.Spec : Prop :=
  ∀ n, P13679933000484583424.a n = A341929 n

end A341929

/-! ## A341929.P12020476007610501059

`A144479(n)-A001090(n)`
-/

namespace A341929.P12020476007610501059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144479 n - A001090 n

end

end A341929.P12020476007610501059

namespace A341929

/-- `A144479(n)-A001090(n)` -/
def P12020476007610501059.Spec : Prop :=
  ∀ n, P12020476007610501059.a n = A341929 n

end A341929

/-! ## A341929.P17424066299726368048

`A001091(n)-2*A001090(n)`
-/

namespace A341929.P17424066299726368048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001091 n - 2 * A001090 n

end

end A341929.P17424066299726368048

namespace A341929

/-- `A001091(n)-2*A001090(n)` -/
def P17424066299726368048.Spec : Prop :=
  ∀ n, P17424066299726368048.a n = A341929 n

end A341929

/-! ## A341929.P13803206682812022268

`2*A144479(n)-A001091(n)`
-/

namespace A341929.P13803206682812022268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A144479 n - A001091 n

end

end A341929.P13803206682812022268

namespace A341929

/-- `2*A144479(n)-A001091(n)` -/
def P13803206682812022268.Spec : Prop :=
  ∀ n, P13803206682812022268.a n = A341929 n

end A341929

/-! ## A341929.P9397096487412789408

`A077244(n)-2*A077245(n)`
-/

namespace A341929.P9397096487412789408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077244 n - 2 * A077245 n

end

end A341929.P9397096487412789408

namespace A341929

/-- `A077244(n)-2*A077245(n)` -/
def P9397096487412789408.Spec : Prop :=
  ∀ n, P9397096487412789408.a n = A341929 n

end A341929

/-! ## A341929.P12376130702539765814

`2*A001091(n)-A341927(n)`
-/

namespace A341929.P12376130702539765814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001091 n - A341927 n

end

end A341929.P12376130702539765814

namespace A341929

/-- `2*A001091(n)-A341927(n)` -/
def P12376130702539765814.Spec : Prop :=
  ∀ n, P12376130702539765814.a n = A341929 n

end A341929

/-! ## A341929.P16550631990669830057

`A001091(n)-A273053(n+1)/2`
-/

namespace A341929.P16550631990669830057
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001091 n : ℚ) - (A273053 (n + 1) : ℚ) / 2

end

end A341929.P16550631990669830057

namespace A341929

/-- `A001091(n)-A273053(n+1)/2` -/
def P16550631990669830057.Spec : Prop :=
  ∀ n, P16550631990669830057.a n = (A341929 n : ℚ)

end A341929

/-! ## A341929.P12090489131187686694

`2*A199336(2*n+1)-A001090(n+1)`
-/

namespace A341929.P12090489131187686694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A199336 (2 * n + 1) - A001090 (n + 1)

end

end A341929.P12090489131187686694

namespace A341929

/-- `2*A199336(2*n+1)-A001090(n+1)` -/
def P12090489131187686694.Spec : Prop :=
  ∀ n, P12090489131187686694.a n = A341929 n

end A341929

/-! ## A341929.P10160874528751056327

`A077248(2*n+1)-2*A077247(2*n)`
-/

namespace A341929.P10160874528751056327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077248 (2 * n + 1) - 2 * A077247 (2 * n)

end

end A341929.P10160874528751056327

namespace A341929

/-- `A077248(2*n+1)-2*A077247(2*n)` -/
def P10160874528751056327.Spec : Prop :=
  ∀ n, P10160874528751056327.a n = A341929 n

end A341929

/-! ## A341929.P16788117633465372297

`2*A199336(2*n+1)-A041023(2*n+1)`
-/

namespace A341929.P16788117633465372297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A199336 (2 * n + 1) - A041023 (2 * n + 1)

end

end A341929.P16788117633465372297

namespace A341929

/-- `2*A199336(2*n+1)-A041023(2*n+1)` -/
def P16788117633465372297.Spec : Prop :=
  ∀ n, P16788117633465372297.a n = A341929 n

end A341929

/-! ## A341929.P13104345094227646335

`2*A199336(2*n+1)-A177187(2*(n+1))`
-/

namespace A341929.P13104345094227646335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A199336 (2 * n + 1) - A177187 (2 * (n + 1))

end

end A341929.P13104345094227646335

namespace A341929

/-- `2*A199336(2*n+1)-A177187(2*(n+1))` -/
def P13104345094227646335.Spec : Prop :=
  ∀ n, P13104345094227646335.a n = A341929 n

end A341929

/-! ## A341929.P7643239551453385255

`A077246(n)-(A077245(n)+A001090(n))`
-/

namespace A341929.P7643239551453385255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077246 n - (A077245 n + A001090 n)

end

end A341929.P7643239551453385255

namespace A341929

/-- `A077246(n)-(A077245(n)+A001090(n))` -/
def P7643239551453385255.Spec : Prop :=
  ∀ n, P7643239551453385255.a n = A341929 n

end A341929

/-! ## A341929.P7110122730113079601

`A080871(A005843(n))-A273053(n+1)/2`
-/

namespace A341929.P7110122730113079601
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080871 (A005843 n).toNat : ℚ) - (A273053 (n + 1) : ℚ) / 2

end

end A341929.P7110122730113079601

namespace A341929

/-- `A080871(A005843(n))-A273053(n+1)/2` -/
def P7110122730113079601.Spec : Prop :=
  ∀ n, P7110122730113079601.a n = (A341929 n : ℚ)

end A341929

/-! ## A341929.P11472832329057945622

`A105426(n)+A105426(n)-A001090(n+1)`
-/

namespace A341929.P11472832329057945622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105426 n + (A105426 n - A001090 (n + 1))

end

end A341929.P11472832329057945622

namespace A341929

/-- `A105426(n)+A105426(n)-A001090(n+1)` -/
def P11472832329057945622.Spec : Prop :=
  ∀ n, P11472832329057945622.a n = A341929 n

end A341929

/-! ## A341929.P152158925387368640

`A237262(2*(n+1))-Δ[A237262(A028310(2*n))]`
-/

namespace A341929.P152158925387368640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237262 (A028310 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237262 (2 * (n + 1)) - (f1 (n + 1) - f1 n)

end

end A341929.P152158925387368640

namespace A341929

/-- `A237262(2*(n+1))-Δ[A237262(A028310(2*n))]` -/
def P152158925387368640.Spec : Prop :=
  ∀ n, P152158925387368640.a n = A341929 n

end A341929

/-!
# A341931: a(n) = smallest m > 0 such that the decimal concatenation n||n-1||n-2||...||m is prime, or -1 if no such prime exists.

The programs for A341931, there is no canonical definition to state claims against.
-/

/-! ## A341931.P6785972853705866863

`A341701(n)+A341702(n)-A341932(n)`
-/

namespace A341931.P6785972853705866863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341701 n + (A341702 n - A341932 n)

end

end A341931.P6785972853705866863

/-!
# A341932: a(n) = largest k < n such that the decimal concatenation n||n-1||n-2||...||n-k is prime, or -1 if no such prime exists.

The programs for A341932, there is no canonical definition to state claims against.
-/

/-! ## A341932.P9317277804539765427

`A341701(n)+A341702(n)-A341931(n)`
-/

namespace A341932.P9317277804539765427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341701 n + (A341702 n - A341931 n)

end

end A341932.P9317277804539765427

/-! ## A341932.P16329325993327632830

`or(A002262(A147307(n+1)), A341702(n))`
-/

namespace A341932.P16329325993327632830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A002262 (A147307 (n + 1)).toNat) (A341702 n)

end

end A341932.P16329325993327632830

/-!
# A341933: a(n) = A023896(n) mod A000203(n).

The programs for A341933, the canonical program `A341933.P4720309909486337756` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A341933 has offset 1).

The definition of A341933 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A023896, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A341933.P4720309909486337756

`A023896(n+1)%A000203(n+1)`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A341933

/-- `A023896(n+1)%A000203(n+1)` -/
def P4720309909486337756.Spec : Prop :=
  ∀ n, P4720309909486337756.a n = A341933 (n + 1)

theorem P4720309909486337756.correct : P4720309909486337756.Spec := by
  intro n
  simp only [A341933, Nat.add_sub_cancel]

end A341933

/-! ## A341933.P9106106124809206861

`(A083266(n+1)+1)%A000203(n+1)`
-/

namespace A341933.P9106106124809206861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083266 (n + 1) + 1) (A000203 (n + 1))

end

end A341933.P9106106124809206861

namespace A341933

/-- `(A083266(n+1)+1)%A000203(n+1)` -/
def P9106106124809206861.Spec : Prop :=
  ∀ n, P9106106124809206861.a n = A341933 (n + 1)

end A341933

/-! ## A341933.P353617962112678540

`floor(A002618(n+1)/2)%A000203(n+1)`
-/

namespace A341933.P353617962112678540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊(A002618 (n + 1) : ℚ) / 2⌋ (A000203 (n + 1))

end

end A341933.P353617962112678540

namespace A341933

/-- `floor(A002618(n+1)/2)%A000203(n+1)` -/
def P353617962112678540.Spec : Prop :=
  ∀ n, P353617962112678540.a n = A341933 (n + 1)

end A341933

/-! ## A341933.P5102252614808549134

`floor(A000010((n+1)²)/2)%A000203(n+1)`
-/

namespace A341933.P5102252614808549134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊(A000010 ((n + 1) ^ 2) : ℚ) / 2⌋ (A000203 (n + 1))

end

end A341933.P5102252614808549134

namespace A341933

/-- `floor(A000010((n+1)²)/2)%A000203(n+1)` -/
def P5102252614808549134.Spec : Prop :=
  ∀ n, P5102252614808549134.a n = A341933 (n + 1)

end A341933

/-! ## A341933.P12632802736816696372

`A014682(A002618(n+1))%A000203(n+1)`
-/

namespace A341933.P12632802736816696372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A014682 (A002618 (n + 1)).toNat) (A000203 (n + 1))

end

end A341933.P12632802736816696372

namespace A341933

/-- `A014682(A002618(n+1))%A000203(n+1)` -/
def P12632802736816696372.Spec : Prop :=
  ∀ n, P12632802736816696372.a n = A341933 (n + 1)

end A341933

/-! ## A341933.P640657839052377542

`A004525(A000010((n+1)²))%A000203(n+1)`
-/

namespace A341933.P640657839052377542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004525 (A000010 ((n + 1) ^ 2)).toNat) (A000203 (n + 1))

end

end A341933.P640657839052377542

namespace A341933

/-- `A004525(A000010((n+1)²))%A000203(n+1)` -/
def P640657839052377542.Spec : Prop :=
  ∀ n, P640657839052377542.a n = A341933 (n + 1)

end A341933

/-!
# A341934: Primes p such that 2*p*q-2*q*r+r*s is prime, where p,q,r,s are consecutive primes.

The programs for A341934, there is no canonical definition to state claims against.
-/

/-! ## A341934.P14304953300399638744

`A002262(A095922(n))+A000040(n+1)`
-/

namespace A341934.P14304953300399638744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (A095922 n).toNat + A000040 (n + 1)

end

end A341934.P14304953300399638744

/-! ## A341934.P17842311673325662256

`A069679(n+1)+A002262(A095922(n))`
-/

namespace A341934.P17842311673325662256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069679 (n + 1) + A002262 (A095922 n).toNat

end

end A341934.P17842311673325662256

/-! ## A341934.P6358249713692221578

`A000040((gcd(11, C(9, n))+n)^gcd(11, n))`
-/

namespace A341934.P6358249713692221578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 ((Nat.gcd 11 (Nat.choose 9 n) + n) ^ Nat.gcd 11 n)

end

end A341934.P6358249713692221578

/-! ## A341934.P72421018843324845

`A357873(A067903(n+1))`
-/

namespace A341934.P72421018843324845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357873 (A067903 (n + 1)).toNat

end

end A341934.P72421018843324845

/-! ## A341934.P12791013134652360627

`A078133(A335493(n+1)+1)`
-/

namespace A341934.P12791013134652360627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078133 (A335493 (n + 1) + 1).toNat

end

end A341934.P12791013134652360627

/-!
# A341937: Primes 2*p*q-2*q*r+r*s where p,q,r,s are consecutive primes.

The programs for A341937, there is no canonical definition to state claims against.
-/

/-! ## A341937.P5702793147486607916

`p?[A006094(n+1)+Δ[A109805(n+1)]]`
-/

namespace A341937.P5702793147486607916
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109805 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006094 (n + 1) + (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A341937.P5702793147486607916

/-! ## A341937.P10922325642387911817

`A354200(A354215(n)+A100493(n+1))`
-/

namespace A341937.P10922325642387911817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354200 (A354215 n + A100493 (n + 1)).toNat

end

end A341937.P10922325642387911817

/-!
# A341938: Numbers m such that the geometric mean of tau(m) and phi(m) is an integer where phi is the Euler totient function (A000010) and tau is the number of divisors function (A000005).

The programs for A341938, there is no canonical definition to state claims against.
-/

/-! ## A341938.P5881007175221435861

`∪[54*(n+1)^8, A341939(n+1)]`
-/

namespace A341938.P5881007175221435861
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  54 * (n + 1) ^ 8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341939 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A341938.P5881007175221435861

/-! ## A341938.P16384304344095354899

`∪[A341939(n+1), A008401(n)]`
-/

namespace A341938.P16384304344095354899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341939 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008401 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A341938.P16384304344095354899

/-! ## A341938.P11291635036149629181

`∪[A341939(n+1), A107420(n)]`
-/

namespace A341938.P11291635036149629181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341939 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107420 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A341938.P11291635036149629181

/-! ## A341938.P718079488703144882

`eq[1, A007913(A062355(n+1))]+1`
-/

namespace A341938.P718079488703144882
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A062355 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A341938.P718079488703144882

/-! ## A341938.P3944044664525185877

`∪[A341939(n+1), A085482(n+1)]`
-/

namespace A341938.P3944044664525185877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341939 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085482 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A341938.P3944044664525185877

/-! ## A341938.P1675560917829948815

`∪[A341939(n+1), A108780(n+1)]`
-/

namespace A341938.P1675560917829948815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341939 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108780 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A341938.P1675560917829948815

/-! ## A341938.P737613359940715283

`∪[A341939(n+1), A212705(n+1)]`
-/

namespace A341938.P737613359940715283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341939 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212705 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A341938.P737613359940715283

/-! ## A341938.P6845858276173809743

`∪[A341939(n+1), A245831(n+1)]`
-/

namespace A341938.P6845858276173809743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341939 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245831 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A341938.P6845858276173809743

/-! ## A341938.P3224924043092180387

`∪[A341939(n+1), A247048(n+1)]`
-/

namespace A341938.P3224924043092180387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341939 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247048 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A341938.P3224924043092180387

/-! ## A341938.P11433425410427711869

`∪[A341939(n+1), A341940(n+1)]`
-/

namespace A341938.P11433425410427711869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341939 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341940 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A341938.P11433425410427711869

/-!
# A341939: Numbers m such that phi(m)/tau(m) is a square of an integer where phi is the Euler totient function (A000010) and tau is the number of divisors function (A000005).

The programs for A341939, there is no canonical definition to state claims against.
-/

/-! ## A341939.P17459364396646959269

`A341938(comp[12*n²²])`
-/

namespace A341939.P17459364396646959269
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12 * (n ^ 2) ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341938 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A341939.P17459364396646959269

/-! ## A341939.P4652823912826370586

`∩[A003619(n+1), A341938(n+1)]`
-/

namespace A341939.P4652823912826370586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003619 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341938 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A341939.P4652823912826370586

/-! ## A341939.P605990001868625377

`∩[A020491(n+1), A341938(n+1)]`
-/

namespace A341939.P605990001868625377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020491 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341938 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A341939.P605990001868625377

/-! ## A341939.P8082507921096065417

`∩[A260255(n+1), A341938(n+1)]`
-/

namespace A341939.P8082507921096065417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260255 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341938 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A341939.P8082507921096065417

/-! ## A341939.P8907998321738476332

`∩[A318535(n+1), A341938(n+1)]`
-/

namespace A341939.P8907998321738476332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318535 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341938 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A341939.P8907998321738476332

/-!
# A341941: T(n,k) is the number of unlabeled even graphs with n vertices and k edges; irregular triangular array T read by rows (n >= 0, 0 <= k <= n*(n-1)/2).

The programs for A341941, there is no canonical definition to state claims against.
-/

/-! ## A341941.P10549647304787306126

`A340102(A058878(n))`
-/

namespace A341941.P10549647304787306126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340102 (A058878 n).toNat

end

end A341941.P10549647304787306126

/-! ## A341941.P3624106036315020677

`A002828(A058878(n)²)`
-/

namespace A341941.P3624106036315020677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002828 (A058878 n ^ 2).toNat

end

end A341941.P3624106036315020677

/-! ## A341941.P9474099858200978023

`A011583(A058878(n)²)`
-/

namespace A341941.P9474099858200978023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011583 (A058878 n ^ 2).toNat

end

end A341941.P9474099858200978023

/-! ## A341941.P16557675802584750477

`A011592(A058878(n)²)`
-/

namespace A341941.P16557675802584750477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011592 (A058878 n ^ 2).toNat

end

end A341941.P16557675802584750477

/-! ## A341941.P6006657189200956949

`A011594(A058878(n)²)`
-/

namespace A341941.P6006657189200956949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011594 (A058878 n ^ 2).toNat

end

end A341941.P6006657189200956949

/-!
# A341943: Fixed points of A341915.

The programs for A341943, there is no canonical definition to state claims against.
-/

/-! ## A341943.P2283100717726008491

`or(8*a(n-2)+2, a(n-2))` with `a(0)=0, a(1)=1, a(2)=6`
-/

namespace A341943.P2283100717726008491
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 6] fun n a =>
  Nat.lor (8 * a (n - 2) + 2) (a (n - 2))

end

end A341943.P2283100717726008491

/-! ## A341943.P3657177616526963879

`or(2, or(8*a(n-2), a(n-2)))` with `a(0)=0, a(1)=1, a(2)=6`
-/

namespace A341943.P3657177616526963879
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 6] fun n a =>
  Nat.lor 2 (Nat.lor (8 * a (n - 2)) (a (n - 2)))

end

end A341943.P3657177616526963879

/-! ## A341943.P14580117237145727016

`∪[floor(6/7*8^n), 8*a(n-1)+3]` with `a(0)=1`
-/

namespace A341943.P14580117237145727016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(6 : ℚ) / 7 * (8 ^ n : ℚ)⌋

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f2 =>
  8 * f2 (n - 1) + 3

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = x) n

end

end A341943.P14580117237145727016

/-! ## A341943.P7832937501657937149

`record[floor(6*2^n/7)%(2^n/(-2)^(n²%3))]`
-/

namespace A341943.P7832937501657937149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊6 * ((2 ^ n : ℚ) / 7)⌋ (SequenceMachineLib.roundAway ((2 ^ n : ℚ) / ((-2) ^ (n ^ 2 % 3) : ℚ)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A341943.P7832937501657937149

/-! ## A341943.P6269052508794439587

`record[floor(6*2^n/7)%A104537(n)]`
-/

namespace A341943.P6269052508794439587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊6 * ((2 ^ n : ℚ) / 7)⌋ (A104537 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A341943.P6269052508794439587

/-!
# A341945: Number of partitions of n into 2 primes (counting 1 as a prime).

The programs for A341945, there is no canonical definition to state claims against.
-/

/-! ## A341945.P12472051479292995867

`ceil(A341982(n+2)/2)`
-/

namespace A341945.P12472051479292995867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A341982 (n + 2) : ℚ) / 2⌉

end

end A341945.P12472051479292995867

/-! ## A341945.P547775260140328123

`A110654(A341982(n+2))`
-/

namespace A341945.P547775260140328123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A341982 (n + 2)).toNat

end

end A341945.P547775260140328123

/-! ## A341945.P13198513663292837087

`A004526(A341982(n+2)+1)`
-/

namespace A341945.P13198513663292837087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A341982 (n + 2) + 1).toNat

end

end A341945.P13198513663292837087

/-! ## A341945.P13539344015963010917

`A347622(n+2)-A010051(n+2)`
-/

namespace A341945.P13539344015963010917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347622 (n + 2) - A010051 (n + 2)

end

end A341945.P13539344015963010917

/-! ## A341945.P16190112680606468424

`A341946(n+3)-A068307(n+3)`
-/

namespace A341945.P16190112680606468424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341946 (n + 3) - A068307 (n + 3)

end

end A341945.P16190112680606468424

/-! ## A341945.P15210823623653248260

`round(A341982(n+2)/A000005(A008578(n+1)))`
-/

namespace A341945.P15210823623653248260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A341982 (n + 2) : ℚ) / (A000005 (A008578 (n + 1)).toNat : ℚ))

end

end A341945.P15210823623653248260

/-! ## A341945.P13153260764487280773

`A238268(2*(n+2))-A002375(n+2)`
-/

namespace A341945.P13153260764487280773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238268 (2 * (n + 2)) - A002375 (n + 2)

end

end A341945.P13153260764487280773

/-!
# A341946: Number of partitions of n into 3 primes (counting 1 as a prime).

The programs for A341946, there is no canonical definition to state claims against.
-/

/-! ## A341946.P14241278425927428697

`A341945(n+2)+A068307(n+3)`
-/

namespace A341946.P14241278425927428697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341945 (n + 2) + A068307 (n + 3)

end

end A341946.P14241278425927428697

/-! ## A341946.P7184058045935386102

`A110654(A341982(n+2))+A068307(n+3)`
-/

namespace A341946.P7184058045935386102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A341982 (n + 2)).toNat + A068307 (n + 3)

end

end A341946.P7184058045935386102

/-! ## A341946.P14737105328030549310

`A341947(n+4)-A259194(n+4)`
-/

namespace A341946.P14737105328030549310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341947 (n + 4) - A259194 (n + 4)

end

end A341946.P14737105328030549310

/-! ## A341946.P8496224167359122130

`A218007(n+3)-A347622(n+3)`
-/

namespace A341946.P8496224167359122130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218007 (n + 3) - A347622 (n + 3)

end

end A341946.P8496224167359122130

/-!
# A341947: Number of partitions of n into 4 primes (counting 1 as a prime).

The programs for A341947, there is no canonical definition to state claims against.
-/

/-! ## A341947.P8486154186948846335

`A341948(n+5)-A259195(n+5)`
-/

namespace A341947.P8486154186948846335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341948 (n + 5) - A259195 (n + 5)

end

end A341947.P8486154186948846335

/-! ## A341947.P12917173667896088485

`A341946(n+3)+A259194(n+4)`
-/

namespace A341947.P12917173667896088485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341946 (n + 3) + A259194 (n + 4)

end

end A341947.P12917173667896088485

/-! ## A341947.P10932977655474159385

`A347623(n+4)-A218007(n+4)`
-/

namespace A341947.P10932977655474159385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347623 (n + 4) - A218007 (n + 4)

end

end A341947.P10932977655474159385

/-! ## A341947.P13645525167403056094

`A289436(n+2)+A182907(A006800(n+1))`
-/

namespace A341947.P13645525167403056094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289436 (n + 2) + A182907 (A006800 (n + 1)).toNat

end

end A341947.P13645525167403056094

/-! ## A341947.P2204272345521878568

`A289436(n+2)+A071625(A124791(n))`
-/

namespace A341947.P2204272345521878568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289436 (n + 2) + A071625 (A124791 n).toNat

end

end A341947.P2204272345521878568

/-!
# A341948: Number of partitions of n into 5 primes (counting 1 as a prime).

The programs for A341948, there is no canonical definition to state claims against.
-/

/-! ## A341948.P5774502193716080028

`A341947(n+4)+A259195(n+5)`
-/

namespace A341948.P5774502193716080028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341947 (n + 4) + A259195 (n + 5)

end

end A341948.P5774502193716080028

/-! ## A341948.P3117555630934904889

`A347624(n+5)-A347623(n+5)`
-/

namespace A341948.P3117555630934904889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347624 (n + 5) - A347623 (n + 5)

end

end A341948.P3117555630934904889

/-! ## A341948.P9727844392520209125

`A000523(A288442(n)+A049310(n))`
-/

namespace A341948.P9727844392520209125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (A288442 n + A049310 n).toNat

end

end A341948.P9727844392520209125

/-! ## A341948.P15826683166595087811

`A280274(lcm(3, A280293(n)))`
-/

namespace A341948.P15826683166595087811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280274 (Int.lcm 3 (A280293 n))

end

end A341948.P15826683166595087811

/-! ## A341948.P16923324976579742134

`A352745(lt[A006519(3*n+1), A352745(3*(n+1))])`
-/

namespace A341948.P16923324976579742134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (3 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352745 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352745 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A341948.P16923324976579742134

/-!
# A341949: Number of partitions of n into 6 primes (counting 1 as a prime).

The programs for A341949, there is no canonical definition to state claims against.
-/

/-! ## A341949.P3692699605770224713

`A347610(n+6)-Δ[A347624(n+5)]`
-/

namespace A341949.P3692699605770224713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347624 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347610 (n + 6) - (f1 (n + 1) - f1 n)

end

end A341949.P3692699605770224713

/-! ## A341949.P15055531471264753209

`A347625(n+6)-A347624(n+6)`
-/

namespace A341949.P15055531471264753209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347625 (n + 6) - A347624 (n + 6)

end

end A341949.P15055531471264753209

/-!
# A341951: Number of partitions of n into 8 primes (counting 1 as a prime).

The programs for A341951, there is no canonical definition to state claims against.
-/

/-! ## A341951.P115429036027685155

`∑[A008743(n)*A020985(A278954(n))]`
-/

namespace A341951.P115429036027685155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008743 n * A020985 (A278954 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A341951.P115429036027685155

/-! ## A341951.P7340406917850790525

`∑[A008743(n)*A062157(A187829(n+1))]`
-/

namespace A341951.P7340406917850790525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008743 n * A062157 (A187829 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A341951.P7340406917850790525

/-! ## A341951.P4138004411961116091

`A341719(n+9)-A259195(A187829(n+1))`
-/

namespace A341951.P4138004411961116091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341719 (n + 9) - A259195 (A187829 (n + 1)).toNat

end

end A341951.P4138004411961116091

/-! ## A341951.P5541285754259313505

`∑[∑[A104408(A187829(n+2))]]`
-/

namespace A341951.P5541285754259313505
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104408 (A187829 (n + 2)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A341951.P5541285754259313505

/-! ## A341951.P13285287379815857655

`A099383(n)-A326593(A077168(n))`
-/

namespace A341951.P13285287379815857655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099383 n - A326593 (A077168 n).toNat

end

end A341951.P13285287379815857655

/-!
# A341952: Let x = (prime(n+1) - prime(n))/2 modulo 3 for n >= 2, then a(n) = -1 if x = 2, otherwise a(n) = x.

The programs for A341952, the canonical program `A341952.P5326500736965225411` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A341952 has offset 2).

The definition of A341952 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A341952.P5326500736965225411

`A102283(A028334(n+2))`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A341952

/-- `A102283(A028334(n+2))` -/
def P5326500736965225411.Spec : Prop :=
  ∀ n, P5326500736965225411.a n = A341952 (n + 2)

theorem P5326500736965225411.correct : P5326500736965225411.Spec := by
  intro n
  simp only [A341952, Nat.add_sub_cancel]

end A341952

/-! ## A341952.P10953554754871443404

`((A000040(n+3)-A000040(n+2))/2+1)%3-1`
-/

namespace A341952.P10953554754871443404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A000040 (n + 3) - A000040 (n + 2) : ℚ) / 2 + 1)) 3 - 1

end

end A341952.P10953554754871443404

namespace A341952

/-- `((A000040(n+3)-A000040(n+2))/2+1)%3-1` -/
def P10953554754871443404.Spec : Prop :=
  ∀ n, P10953554754871443404.a n = A341952 (n + 2)

end A341952

/-! ## A341952.P14760793694340846726

`A102283(2*A001223(n+2))`
-/

namespace A341952.P14760793694340846726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102283 (2 * A001223 (n + 2)).toNat

end

end A341952.P14760793694340846726

namespace A341952

/-- `A102283(2*A001223(n+2))` -/
def P14760793694340846726.Spec : Prop :=
  ∀ n, P14760793694340846726.a n = A341952 (n + 2)

end A341952

/-! ## A341952.P16459267348839160009

`A102283(A001223(n+2)/2)`
-/

namespace A341952.P16459267348839160009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102283 (SequenceMachineLib.roundAway ((A001223 (n + 2) : ℚ) / 2)).toNat

end

end A341952.P16459267348839160009

namespace A341952

/-- `A102283(A001223(n+2)/2)` -/
def P16459267348839160009.Spec : Prop :=
  ∀ n, P16459267348839160009.a n = A341952 (n + 2)

end A341952

/-! ## A341952.P17206088251980974013

`Δ[A067076(n+1)%3]`
-/

namespace A341952.P17206088251980974013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A067076 (n + 1)) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A341952.P17206088251980974013

namespace A341952

/-- `Δ[A067076(n+1)%3]` -/
def P17206088251980974013.Spec : Prop :=
  ∀ n, P17206088251980974013.a n = A341952 (n + 2)

end A341952

/-! ## A341952.P1581083196410017245

`Δ[A097069(n+1)%3]`
-/

namespace A341952.P1581083196410017245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A097069 (n + 1)) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A341952.P1581083196410017245

namespace A341952

/-- `Δ[A097069(n+1)%3]` -/
def P1581083196410017245.Spec : Prop :=
  ∀ n, P1581083196410017245.a n = A341952 (n + 2)

end A341952

/-! ## A341952.P15740509314393601787

`Δ[A097480(n+1)%3]`
-/

namespace A341952.P15740509314393601787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A097480 (n + 1)) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A341952.P15740509314393601787

namespace A341952

/-- `Δ[A097480(n+1)%3]` -/
def P15740509314393601787.Spec : Prop :=
  ∀ n, P15740509314393601787.a n = A341952 (n + 2)

end A341952

/-! ## A341952.P6078505219137380717

`Δ[A098090(n+1)%3]`
-/

namespace A341952.P6078505219137380717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A098090 (n + 1)) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A341952.P6078505219137380717

namespace A341952

/-- `Δ[A098090(n+1)%3]` -/
def P6078505219137380717.Spec : Prop :=
  ∀ n, P6078505219137380717.a n = A341952 (n + 2)

end A341952

/-! ## A341952.P4117011241168197882

`Δ[A098764(n+1)%3]`
-/

namespace A341952.P4117011241168197882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A098764 (n + 1)) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A341952.P4117011241168197882

namespace A341952

/-- `Δ[A098764(n+1)%3]` -/
def P4117011241168197882.Spec : Prop :=
  ∀ n, P4117011241168197882.a n = A341952 (n + 2)

end A341952

/-! ## A341952.P3665399674073951388

`Δ[A100021(n+1)%3]`
-/

namespace A341952.P3665399674073951388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A100021 (n + 1)) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A341952.P3665399674073951388

namespace A341952

/-- `Δ[A100021(n+1)%3]` -/
def P3665399674073951388.Spec : Prop :=
  ∀ n, P3665399674073951388.a n = A341952 (n + 2)

end A341952

/-! ## A341952.P5554765372636643100

`A128834(Δ[p?[2*n+1]])`
-/

namespace A341952.P5554765372636643100
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128834 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A341952.P5554765372636643100

namespace A341952

/-- `A128834(Δ[p?[2*n+1]])` -/
def P5554765372636643100.Spec : Prop :=
  ∀ n, P5554765372636643100.a n = A341952 (n + 2)

end A341952

/-! ## A341952.P14181689979397136182

`A131736(Δ[p?[2*n+1]])`
-/

namespace A341952.P14181689979397136182
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131736 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A341952.P14181689979397136182

namespace A341952

/-- `A131736(Δ[p?[2*n+1]])` -/
def P14181689979397136182.Spec : Prop :=
  ∀ n, P14181689979397136182.a n = A341952 (n + 2)

end A341952

/-! ## A341952.P9597391172575160035

`A163804(Δ[p?[2*n+1]])`
-/

namespace A341952.P9597391172575160035
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163804 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A341952.P9597391172575160035

namespace A341952

/-- `A163804(Δ[p?[2*n+1]])` -/
def P9597391172575160035.Spec : Prop :=
  ∀ n, P9597391172575160035.a n = A341952 (n + 2)

end A341952

/-! ## A341952.P8997249484442681119

`A163806(Δ[p?[2*n+1]])`
-/

namespace A341952.P8997249484442681119
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163806 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A341952.P8997249484442681119

namespace A341952

/-- `A163806(Δ[p?[2*n+1]])` -/
def P8997249484442681119.Spec : Prop :=
  ∀ n, P8997249484442681119.a n = A341952 (n + 2)

end A341952

/-! ## A341952.P5722262067650072442

`A193690(Δ[p?[2*n+1]])`
-/

namespace A341952.P5722262067650072442
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193690 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A341952.P5722262067650072442

namespace A341952

/-- `A193690(Δ[p?[2*n+1]])` -/
def P5722262067650072442.Spec : Prop :=
  ∀ n, P5722262067650072442.a n = A341952 (n + 2)

end A341952

/-! ## A341952.P15555499306150500593

`Δ[A001750(n+2)%3]`
-/

namespace A341952.P15555499306150500593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001750 (n + 2)) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A341952.P15555499306150500593

namespace A341952

/-- `Δ[A001750(n+2)%3]` -/
def P15555499306150500593.Spec : Prop :=
  ∀ n, P15555499306150500593.a n = A341952 (n + 2)

end A341952

/-! ## A341952.P2072102998149087601

`Δ[A131426(n+2)%3]`
-/

namespace A341952.P2072102998149087601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A131426 (n + 2)) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A341952.P2072102998149087601

namespace A341952

/-- `Δ[A131426(n+2)%3]` -/
def P2072102998149087601.Spec : Prop :=
  ∀ n, P2072102998149087601.a n = A341952 (n + 2)

end A341952

/-! ## A341952.P17288538977221371295

`Δ[A244570(n+2)%3]`
-/

namespace A341952.P17288538977221371295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A244570 (n + 2)) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A341952.P17288538977221371295

namespace A341952

/-- `Δ[A244570(n+2)%3]` -/
def P17288538977221371295.Spec : Prop :=
  ∀ n, P17288538977221371295.a n = A341952 (n + 2)

end A341952

/-! ## A341952.P6848102792116513210

`Δ[A001747(n+3)%3]`
-/

namespace A341952.P6848102792116513210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001747 (n + 3)) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A341952.P6848102792116513210

namespace A341952

/-- `Δ[A001747(n+3)%3]` -/
def P6848102792116513210.Spec : Prop :=
  ∀ n, P6848102792116513210.a n = A341952 (n + 2)

end A341952

/-! ## A341952.P12011101433181546374

`A084091(A364411(n+2))`
-/

namespace A341952.P12011101433181546374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084091 (A364411 (n + 2)).toNat

end

end A341952.P12011101433181546374

namespace A341952

/-- `A084091(A364411(n+2))` -/
def P12011101433181546374.Spec : Prop :=
  ∀ n, P12011101433181546374.a n = A341952 (n + 2)

end A341952

/-!
# A341954: G.f. A(x) satisfies: A(x) = 1/((1-x*B(x)^2)*(1-x*C(x)^3)) such that B(x) = 1/((1-x*A(x))*(1-x*C(x)^3)) and C(x) = 1/((1-x*A(x))*(1-x*B(x)^2)) are the g.f.s of A341955 and A341956, respectively.

The programs for A341954, there is no canonical definition to state claims against.
-/

/-! ## A341954.P622705078927688395

`A063272(record[abs(xor(1, n-2))]+(3^n+1)/2*3^n)`
-/

namespace A341954.P622705078927688395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor 1 ((n : ℤ) - 2)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063272 (SequenceMachineLib.roundAway ((f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) + (3 ^ n + 1 : ℚ) / 2 * (3 ^ n : ℚ))).toNat

end

end A341954.P622705078927688395

/-!
# A341955: G.f. B(x) satisfies: B(x) = 1/((1-x*A(x))*(1-x*C(x)^3)) such that A(x) = 1/((1-x*B(x)^2)*(1-x*C(x)^3)) and C(x) = 1/((1-x*A(x))*(1-x*B(x)^2)) are the g.f.s of A341954 and A341956, respectively.

The programs for A341955, there is no canonical definition to state claims against.
-/

/-! ## A341955.P13786812890288831160

`A051279(3*a(n-1))` with `a(0)=1, a(1)=2`
-/

namespace A341955.P13786812890288831160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A051279 (3 * a (n - 1)).toNat

end

end A341955.P13786812890288831160

/-!
# A341956: G.f. C(x) satisfies: C(x) = 1/((1-x*A(x))*(1-x*B(x)^2)) such that A(x) = 1/((1-x*B(x)^2)*(1-x*C(x)^3)) and B(x) = 1/((1-x*A(x))*(1-x*C(x)^3)) are the g.f.s of A341954 and A341955, respectively.

The programs for A341956, there is no canonical definition to state claims against.
-/

/-! ## A341956.P8022528776751035775

`A032766(A345368(n))-∑{e}[n+1, #]`
-/

namespace A341956.P8022528776751035775
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 (A345368 n).toNat - ((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℤ)

end

end A341956.P8022528776751035775

/-! ## A341956.P10103034785790879292

`A032766(A345368(n))-A000120(n)`
-/

namespace A341956.P10103034785790879292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 (A345368 n).toNat - A000120 n

end

end A341956.P10103034785790879292

/-!
# A341957: E.g.f. A(x) satisfies: Sum_{n>=0} A(x)^n * exp(2^n*A(x)) / n! = Sum_{n>=0} x^n/(1 - 2^n*x).

The programs for A341957, there is no canonical definition to state claims against.
-/

/-! ## A341957.P16981200470028483761

`A001065(or(2, A102895(n)))`
-/

namespace A341957.P16981200470028483761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (Int.lor 2 (A102895 n)).toNat

end

end A341957.P16981200470028483761

/-!
# A341958: G.f. A(x) satisfies: Sum_{n>=0} x^n*A(x)^n/(1 - x*A(x)^(n+4)) = Sum_{n>=0} x^n*A(x)^(2*n)/(1 - x*A(x)^(5*n+3)).

The programs for A341958, there is no canonical definition to state claims against.
-/

/-! ## A341958.P5076794306989976508

`A000010(2*A363388(3*n+1))`
-/

namespace A341958.P5076794306989976508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (2 * A363388 (3 * n + 1)).toNat

end

end A341958.P5076794306989976508

/-!
# A341960: G.f. A(x) satisfies: A(x) = Product_{n>=0} (1-x^(5*n+1)*A(x)) * (1-x^(5*n+4)*A(x)) / ( (1-x^(5*n+2)*A(x)) * (1-x^(5*n+3)*A(x)) ).

The programs for A341960, there is no canonical definition to state claims against.
-/

/-! ## A341960.P5625133858898752720

`A000196(A086991(n+1))*A033999(n)`
-/

namespace A341960.P5625133858898752720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A086991 (n + 1)).toNat * A033999 n

end

end A341960.P5625133858898752720

/-!
# A341961: G.f. A(x) satisfies: A(x) = (1 + x*A(x))*(1 + 2*x*A(x)) / (1 - x*A(x))^2.

The programs for A341961, there is no canonical definition to state claims against.
-/

/-! ## A341961.P6397878875251600897

`∑[∑[A337050(A333090(n))]]`
-/

namespace A341961.P6397878875251600897
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337050 (A333090 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A341961.P6397878875251600897

/-!
# A341962: G.f. B(x) satisfies: B(x) = (1 - x^2*B(x)^2) / (1 - 2*x*B(x))^2.

The programs for A341962, there is no canonical definition to state claims against.
-/

/-! ## A341962.P5980686820833925684

`A322630(A055533(n+2))`
-/

namespace A341962.P5980686820833925684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322630 (A055533 (n + 2)).toNat

end

end A341962.P5980686820833925684

/-!
# A341963: G.f. C(x) satisfies: C(x) = (1 - x*C(x))*(1 - 2*x*C(x)) / (1 - 3*x*C(x))^2.

The programs for A341963, there is no canonical definition to state claims against.
-/

/-! ## A341963.P6450898171439315336

`2-A370897(A001286(n+2))`
-/

namespace A341963.P6450898171439315336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A370897 (A001286 (n + 2)).toNat

end

end A341963.P6450898171439315336

/-!
# A341966: G.f. C(x) satisfies: C(x) = (1 - x^2*C(x)^2)*(1 - 2*x*C(x))/(1 - 3*x*C(x))^3.

The programs for A341966, there is no canonical definition to state claims against.
-/

/-! ## A341966.P9046893342302247054

`A341979(A010373(n+1))+A234510(n)`
-/

namespace A341966.P9046893342302247054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341979 ((A010373 (n + 1)).toNat + 59) + A234510 n

end

end A341966.P9046893342302247054

/-!
# A341968: G.f. E(x) satisfies: E(x) = (1 + x*E(x))*(1 + 2*x*E(x))*(1 + 3*x*E(x))*(1 + 4*x*E(x)).

The programs for A341968, there is no canonical definition to state claims against.
-/

/-! ## A341968.P282497787849466837

`A232265(n*(n*(n-5)+5)²)-C(n, 4)`
-/

namespace A341968.P282497787849466837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232265 ((n : ℤ) * ((n : ℤ) * ((n : ℤ) - 5) + 5) ^ 2).toNat - (Nat.choose n 4 : ℤ)

end

end A341968.P282497787849466837

/-!
# A341969: Irregular triangle read by rows in which row n lists the sequence of widths, each contiguous sequence of identical widths w in A249223 replaced by a single entry of w, in the symmetric representation of sigma(n).

The programs for A341969, there is no canonical definition to state claims against.
-/

/-! ## A341969.P8205654141484214844

`A355745(A018805(n+1)%A135381(n+4))`
-/

namespace A341969.P8205654141484214844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355745 (Int.tmod (A018805 (n + 1)) (A135381 (n + 4))).toNat

end

end A341969.P8205654141484214844

/-! ## A341969.P18240660913837637947

`A249351(A000040(n+1)-A208150(3*(n+1)))`
-/

namespace A341969.P18240660913837637947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249351 (A000040 (n + 1) - A208150 (3 * (n + 1))).toNat

end

end A341969.P18240660913837637947

/-! ## A341969.P16710366488377477463

`val(A315630(A147724(n)), 6)`
-/

namespace A341969.P16710366488377477463
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A315630 (A147724 n).toNat).toNat 6

end

end A341969.P16710366488377477463

/-! ## A341969.P1394115465957483423

`A007968(A085625(n+2))`
-/

namespace A341969.P1394115465957483423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007968 (A085625 (n + 2)).toNat

end

end A341969.P1394115465957483423

/-! ## A341969.P18115986476715888535

`A007968(A118882(n+2))`
-/

namespace A341969.P18115986476715888535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007968 (A118882 (n + 2)).toNat

end

end A341969.P18115986476715888535

/-!
# A341970: Irregular triangle read by rows of the indices of the entries of 1's in the corresponding rows in A237048.

The programs for A341970, there is no canonical definition to state claims against.
-/

/-! ## A341970.P14824655555228098327

`A285914(eq[1, A237048(n+1)]+1)`
-/

namespace A341970.P14824655555228098327
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237048 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285914 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A341970.P14824655555228098327

/-! ## A341970.P7668818841301189633

`A285914(record[(n+1)*A237048(n+1)])`
-/

namespace A341970.P7668818841301189633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A237048 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285914 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A341970.P7668818841301189633

/-! ## A341970.P12849075605875985132

`A285914(lt[1, A285914(n+1)+1]+1)`
-/

namespace A341970.P12849075605875985132
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285914 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285914 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A341970.P12849075605875985132

/-! ## A341970.P496980693629495354

`A285914(record[(n+1)%(A285914(n+1)+n+1)])`
-/

namespace A341970.P496980693629495354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A285914 (n + 1) + (n + 1 : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285914 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A341970.P496980693629495354

/-! ## A341970.P3791511862112998644

`A285914(comp[lt[A285914(n+1), 1]]+1)`
-/

namespace A341970.P3791511862112998644
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285914 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285914 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1)

end

end A341970.P3791511862112998644

/-!
# A341972: Number of partitions of n into 10 primes (counting 1 as a prime).

The programs for A341972, there is no canonical definition to state claims against.
-/

/-! ## A341972.P9348172575709792919

`A341719(n+9)+A259195(A187829(n+1)-1)`
-/

namespace A341972.P9348172575709792919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341719 (n + 9) + A259195 (A187829 (n + 1) - 1).toNat

end

end A341972.P9348172575709792919

/-! ## A341972.P5011439765691587970

`A259195(A187829(n+1))+A341951(n+8)+A259195(n)`
-/

namespace A341972.P5011439765691587970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259195 (A187829 (n + 1)).toNat + (A341951 (n + 8) + A259195 n)

end

end A341972.P5011439765691587970

/-!
# A341973: Number of partitions of n into 2 distinct primes (counting 1 as a prime).

The programs for A341973, there is no canonical definition to state claims against.
-/

/-! ## A341973.P14474924106672547686

`A117929(n+3)+A010051(n+2)`
-/

namespace A341973.P14474924106672547686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117929 (n + 3) + A010051 (n + 2)

end

end A341973.P14474924106672547686

/-! ## A341973.P17110129834143236574

`ceil(∑[Δ[A341982(n+2)]/2])`
-/

namespace A341973.P17110129834143236574
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341982 (n + 2)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉

end

end A341973.P17110129834143236574

/-! ## A341973.P8712949272007930393

`A004526(A341982(n+3))`
-/

namespace A341973.P8712949272007930393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A341982 (n + 3)).toNat

end

end A341973.P8712949272007930393

/-! ## A341973.P17366837877237308538

`A341982(n+3)-A341945(n+3)`
-/

namespace A341973.P17366837877237308538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341982 (n + 3) - A341945 (n + 3)

end

end A341973.P17366837877237308538

/-! ## A341973.P17859719555503748913

`A117929(n+3)+Δ[A000720(n+1)]`
-/

namespace A341973.P17859719555503748913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117929 (n + 3) + (f1 (n + 1) - f1 n)

end

end A341973.P17859719555503748913

/-!
# A341974: Number of partitions of n into 3 distinct primes (counting 1 as a prime).

The programs for A341974, there is no canonical definition to state claims against.
-/

/-! ## A341974.P12989713886755841512

`A125688(n+6)+A117929(n+5)`
-/

namespace A341974.P12989713886755841512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125688 (n + 6) + A117929 (n + 5)

end

end A341974.P12989713886755841512

/-!
# A341975: Number of partitions of n into 4 distinct primes (counting 1 as a prime).

The programs for A341975, there is no canonical definition to state claims against.
-/

/-! ## A341975.P5148966507648403548

`A025806(n)-A078926(∑[n]+2^n)`
-/

namespace A341975.P5148966507648403548
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025806 n - A078926 (∑ j ∈ Finset.range (n + 1), f1 j + 2 ^ n)

end

end A341975.P5148966507648403548

/-! ## A341975.P11209546659314479000

`A025806(n)*A056926(A347918(n+1))`
-/

namespace A341975.P11209546659314479000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025806 n * A056926 (A347918 (n + 1)).toNat

end

end A341975.P11209546659314479000

/-! ## A341975.P603373304373404542

`A025806(n)%A162407(A003278(n+1))`
-/

namespace A341975.P603373304373404542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A025806 n) (A162407 (A003278 (n + 1)).toNat)

end

end A341975.P603373304373404542

/-! ## A341975.P10999223882219266273

`A096605(n+1)-A001221(Δ[A281500(n)])`
-/

namespace A341975.P10999223882219266273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281500 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096605 (n + 1) - A001221 (f1 (n + 1) - f1 n).toNat

end

end A341975.P10999223882219266273

/-! ## A341975.P6220027761271202883

`A096605(n+1)-A001222(Δ[A281500(n)])`
-/

namespace A341975.P6220027761271202883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281500 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096605 (n + 1) - A001222 (f1 (n + 1) - f1 n).toNat

end

end A341975.P6220027761271202883

/-!
# A341976: Number of partitions of n into 5 distinct primes (counting 1 as a prime).

The programs for A341976, there is no canonical definition to state claims against.
-/

/-! ## A341976.P10880016173118875073

`A333806(or(6, 2^n-1))`
-/

namespace A341976.P10880016173118875073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333806 (Int.lor 6 ((2 ^ n : ℤ) - 1)).toNat

end

end A341976.P10880016173118875073

/-! ## A341976.P3432188667010377897

`A063962(or(4, A000225(n)))`
-/

namespace A341976.P3432188667010377897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063962 (Int.lor 4 (A000225 n)).toNat

end

end A341976.P3432188667010377897

/-! ## A341976.P14560068899731443972

`floor(A333806(A255047(n))+acot(n))`
-/

namespace A341976.P14560068899731443972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A333806 (A255047 n).toNat : ℝ) + SequenceMachineLib.acot (n : ℝ)⌋

end

end A341976.P14560068899731443972

/-! ## A341976.P15918646993512464159

`and(A340967(n+2), A354919(2^n))`
-/

namespace A341976.P15918646993512464159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A340967 (n + 2)) (A354919 (2 ^ n))

end

end A341976.P15918646993512464159

/-! ## A341976.P7352213888822239367

`A196564(xor((n-1)^(n%2), A088808(n)))`
-/

namespace A341976.P7352213888822239367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196564 (Int.xor (((n : ℤ) - 1) ^ (n % 2)) (A088808 n)).toNat

end

end A341976.P7352213888822239367

/-!
# A341977: Number of partitions of n into 6 distinct primes (counting 1 as a prime).

The programs for A341977, there is no canonical definition to state claims against.
-/

/-! ## A341977.P10972695705637195960

`A341980(A341980(n)!)+A219199(n)`
-/

namespace A341977.P10972695705637195960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341980 (Nat.factorial (A341980 (n + 78)).toNat + 78) + A219199 (n + 28)

end

end A341977.P10972695705637195960

/-! ## A341977.P9698700595603400237

`or(A219199(n), A341981(A341980(n)!))`
-/

namespace A341977.P9698700595603400237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A219199 (n + 28)) (A341981 (Nat.factorial (A341980 (n + 78)).toNat + 101))

end

end A341977.P9698700595603400237

/-! ## A341977.P9637990139116524335

`A000001(A005382(n+1)*A219199(n))`
-/

namespace A341977.P9637990139116524335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000001 (A005382 (n + 1) * A219199 (n + 28)).toNat

end

end A341977.P9637990139116524335

/-! ## A341977.P6371593529240012789

`A219199(n)+A185284(A297802(n+1))`
-/

namespace A341977.P6371593529240012789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219199 (n + 28) + A185284 (A297802 (n + 1)).toNat

end

end A341977.P6371593529240012789

/-! ## A341977.P1643749259347051613

`or(A046080(A303864(2*n)), A219199(n))`
-/

namespace A341977.P1643749259347051613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A046080 (A303864 (2 * n)).toNat) (A219199 (n + 28))

end

end A341977.P1643749259347051613

/-!
# A341978: Number of partitions of n into 7 distinct primes (counting 1 as a prime).

The programs for A341978, there is no canonical definition to state claims against.
-/

/-! ## A341978.P4992398872875286379

`A219200(n)+A185284(A059009(n))`
-/

namespace A341978.P4992398872875286379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219200 (n + 41) + A185284 (A059009 n).toNat

end

end A341978.P4992398872875286379

/-! ## A341978.P792997790908221394

`A219200(n)+A151755(A000212(n))`
-/

namespace A341978.P792997790908221394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219200 (n + 41) + A151755 (A000212 n).toNat

end

end A341978.P792997790908221394

/-! ## A341978.P2424108278131939278

`A316867(A308997(n)²)+A219200(n)`
-/

namespace A341978.P2424108278131939278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316867 (A308997 n ^ 2).toNat + A219200 (n + 41)

end

end A341978.P2424108278131939278

/-! ## A341978.P14091644332493905168

`A219200(n)+A185284(A341950(n+9))`
-/

namespace A341978.P14091644332493905168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219200 (n + 41) + A185284 (A341950 (n + 9)).toNat

end

end A341978.P14091644332493905168

/-! ## A341978.P12231739565021169835

`A316866(A219206(n)²)+A219200(n)`
-/

namespace A341978.P12231739565021169835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316866 (A219206 n ^ 2).toNat + A219200 (n + 41)

end

end A341978.P12231739565021169835

/-!
# A341979: Number of partitions of n into 8 distinct primes (counting 1 as a prime).

The programs for A341979, there is no canonical definition to state claims against.
-/

/-! ## A341979.P8330792792899461210

`or(A185284(A196646(n+1)), A219201(n))`
-/

namespace A341979.P8330792792899461210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A185284 (A196646 (n + 1)).toNat) (A219201 (n + 58))

end

end A341979.P8330792792899461210

/-! ## A341979.P17543653861483795264

`A219201(n)+A185238(A035363(n))`
-/

namespace A341979.P17543653861483795264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219201 (n + 58) + A185238 (A035363 n).toNat

end

end A341979.P17543653861483795264

/-! ## A341979.P9698827620168294222

`A341995(A341407(n))+A219201(n)`
-/

namespace A341979.P9698827620168294222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341995 (A341407 n).toNat + A219201 (n + 58)

end

end A341979.P9698827620168294222

/-! ## A341979.P6438691777843181141

`A219201(n)+A185284(A341950(n+7))`
-/

namespace A341979.P6438691777843181141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219201 (n + 58) + A185284 (A341950 (n + 7)).toNat

end

end A341979.P6438691777843181141

/-! ## A341979.P2210659472048186947

`A219201(n)+A185284(2*n+1)`
-/

namespace A341979.P2210659472048186947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219201 (n + 58) + A185284 (2 * n + 1)

end

end A341979.P2210659472048186947

/-!
# A341980: Number of partitions of n into 9 distinct primes (counting 1 as a prime).

The programs for A341980, there is no canonical definition to state claims against.
-/

/-! ## A341980.P18279338533446343981

`A341995(A031125(n))+A219202(n)`
-/

namespace A341980.P18279338533446343981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341995 (A031125 n).toNat + A219202 (n + 77)

end

end A341980.P18279338533446343981

/-! ## A341980.P12251178220143528720

`A373143(A327108(2*n+5))+A219202(n)`
-/

namespace A341980.P12251178220143528720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373143 (A327108 (2 * n + 5)).toNat + A219202 (n + 77)

end

end A341980.P12251178220143528720

/-! ## A341980.P4281811235500976846

`A341995(A220527(n))+A219202(n)`
-/

namespace A341980.P4281811235500976846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341995 (A220527 n).toNat + A219202 (n + 77)

end

end A341980.P4281811235500976846

/-! ## A341980.P7102129077718899031

`A219202(n)+A015989(A219206(n))`
-/

namespace A341980.P7102129077718899031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219202 (n + 77) + A015989 (A219206 n).toNat

end

end A341980.P7102129077718899031

/-! ## A341980.P18254556231331420116

`A219202(n)+A179391(A103824(n+1))`
-/

namespace A341980.P18254556231331420116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219202 (n + 77) + A179391 (A103824 (n + 1)).toNat

end

end A341980.P18254556231331420116

/-!
# A341981: Number of partitions of n into 10 distinct primes (counting 1 as a prime).

The programs for A341981, there is no canonical definition to state claims against.
-/

/-! ## A341981.P425329854157215831

`A219203(n)+A080339(A252278(n+1))`
-/

namespace A341981.P425329854157215831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219203 (n + 100) + A080339 (A252278 (n + 1)).toNat

end

end A341981.P425329854157215831

/-! ## A341981.P1158463095247446955

`A219203(n)+A185284(A072796(n))`
-/

namespace A341981.P1158463095247446955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219203 (n + 100) + A185284 (A072796 n).toNat

end

end A341981.P1158463095247446955

/-!
# A341982: Number of ways to write n as an ordered sum of 2 primes (counting 1 as a prime).

The programs for A341982, there is no canonical definition to state claims against.
-/

/-! ## A341982.P3157401486551436948

`A010051(n+1)+A341945(n+2)+A117929(n+2)`
-/

namespace A341982.P3157401486551436948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1) + (A341945 (n + 2) + A117929 (n + 2))

end

end A341982.P3157401486551436948

/-! ## A341982.P10105394761928267001

`A105661(2*(n+1))+A073610(n+2)`
-/

namespace A341982.P10105394761928267001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105661 (2 * (n + 1)) + A073610 (n + 2)

end

end A341982.P10105394761928267001

/-! ## A341982.P380209080465081158

`A002126(n+2)-Δ[A105661(2*(n+1))]`
-/

namespace A341982.P380209080465081158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105661 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002126 (n + 2) - (f1 (n + 1) - f1 n)

end

end A341982.P380209080465081158

/-! ## A341982.P6345699713204678359

`A347744(n+2)-A010051(n+2)`
-/

namespace A341982.P6345699713204678359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347744 (n + 2) - A010051 (n + 2)

end

end A341982.P6345699713204678359

/-! ## A341982.P4117598537793219017

`A347744(n+2)-Δ[A000720(n+1)]`
-/

namespace A341982.P4117598537793219017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347744 (n + 2) - (f1 (n + 1) - f1 n)

end

end A341982.P4117598537793219017

/-! ## A341982.P975280069113581155

`A347744(n+2)-C(2, A000005(n+2))`
-/

namespace A341982.P975280069113581155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347744 (n + 2) - (Nat.choose 2 (A000005 (n + 2)).toNat : ℤ)

end

end A341982.P975280069113581155

/-! ## A341982.P15223781091740978863

`A347744(n+2)-Δ[A055679(A103517(n))]`
-/

namespace A341982.P15223781091740978863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055679 (A103517 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347744 (n + 2) - (f1 (n + 1) - f1 n)

end

end A341982.P15223781091740978863

/-! ## A341982.P1069860085153712030

`A000720(n+1)+A347744(n+2)-A000720(n+2)`
-/

namespace A341982.P1069860085153712030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (n + 1) + (A347744 (n + 2) - A000720 (n + 2))

end

end A341982.P1069860085153712030

/-!
# A341983: Number of ways to write n as an ordered sum of 4 primes (counting 1 as a prime).

The programs for A341983, there is no canonical definition to state claims against.
-/

/-! ## A341983.P8750273452254494359

`A347703(n+4)-A347745(n+4)`
-/

namespace A341983.P8750273452254494359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347703 (n + 4) - A347745 (n + 4)

end

end A341983.P8750273452254494359

/-!
# A341984: Number of ways to write n as an ordered sum of 5 primes (counting 1 as a prime).

The programs for A341984, there is no canonical definition to state claims against.
-/

/-! ## A341984.P4911082097608376349

`A347760(n+5)-A347703(n+5)`
-/

namespace A341984.P4911082097608376349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347760 (n + 5) - A347703 (n + 5)

end

end A341984.P4911082097608376349

/-!
# A341985: Number of ways to write n as an ordered sum of 6 primes (counting 1 as a prime).

The programs for A341985, there is no canonical definition to state claims against.
-/

/-! ## A341985.P13384241152619940389

`A347761(n+6)-A347760(n+6)`
-/

namespace A341985.P13384241152619940389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347761 (n + 6) - A347760 (n + 6)

end

end A341985.P13384241152619940389

/-! ## A341985.P12923916020734477567

`A357691(n+6)+A108497(A001470(n))`
-/

namespace A341985.P12923916020734477567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357691 (n + 6) + A108497 (A001470 n).toNat

end

end A341985.P12923916020734477567

/-! ## A341985.P8367786269467851623

`A357691(n+6)-A005928(A232155(n+1))`
-/

namespace A341985.P8367786269467851623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357691 (n + 6) - A005928 (A232155 (n + 1)).toNat

end

end A341985.P8367786269467851623

/-!
# A341986: Number of ways to write n as an ordered sum of 7 primes (counting 1 as a prime).

The programs for A341986, there is no canonical definition to state claims against.
-/

/-! ## A341986.P4290260807120911549

`A128428(A010736(n))+A048395(n)`
-/

namespace A341986.P4290260807120911549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128428 (A010736 n).toNat + A048395 n

end

end A341986.P4290260807120911549

/-! ## A341986.P4642157049621559657

`or(A048720(A003090(n+1)), A357694(n+7))`
-/

namespace A341986.P4642157049621559657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A048720 (A003090 (n + 1)).toNat) (A357694 (n + 7))

end

end A341986.P4642157049621559657

/-!
# A341987: Number of ways to write n as an ordered sum of 8 primes (counting 1 as a prime).

The programs for A341987, there is no canonical definition to state claims against.
-/

/-! ## A341987.P5320217762171087508

`A357716(n+8)+A357704(A143547(n))`
-/

namespace A341987.P5320217762171087508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357716 (n + 8) + A357704 (A143547 n).toNat

end

end A341987.P5320217762171087508

/-! ## A341987.P9743764679617540584

`A357716(n+8)+A330316(A013655(n+2))`
-/

namespace A341987.P9743764679617540584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357716 (n + 8) + A330316 (A013655 (n + 2)).toNat

end

end A341987.P9743764679617540584

/-!
# A341988: Number of ways to write n as an ordered sum of 9 primes (counting 1 as a prime).

The programs for A341988, there is no canonical definition to state claims against.
-/

/-! ## A341988.P15435833628381110056

`A357717(n+9)+A067169(A262012(n))`
-/

namespace A341988.P15435833628381110056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357717 (n + 9) + A067169 ((A262012 n).toNat + 11)

end

end A341988.P15435833628381110056

/-! ## A341988.P2970149355743343709

`or(A357705(A357692(n+1)), A357717(n+9))`
-/

namespace A341988.P2970149355743343709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A357705 (A357692 (n + 1)).toNat) (A357717 (n + 9))

end

end A341988.P2970149355743343709

/-! ## A341988.P9971077731162883866

`A357717(n+9)+A043091(A058343(3*(n+1)))`
-/

namespace A341988.P9971077731162883866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357717 (n + 9) + A043091 (A058343 (3 * (n + 1))).toNat

end

end A341988.P9971077731162883866

/-!
# A341989: Number of ways to write n as an ordered sum of 10 primes (counting 1 as a prime).

The programs for A341989, there is no canonical definition to state claims against.
-/

/-! ## A341989.P1142434379152941482

`A129607(A357730(n))`
-/

namespace A341989.P1142434379152941482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129607 (A357730 (n + 10)).toNat

end

end A341989.P1142434379152941482

/-!
# A341990: a(n) is the number of primitive solutions to the inverse Pythagorean equation 1/x^2 + 1/y^2 = 1/z^2 such that x <= y and x + y + z <= 10^n.

The programs for A341990, there is no canonical definition to state claims against.
-/

/-! ## A341990.P6402137837687464106

`A165125(A120897(n+1))`
-/

namespace A341990.P6402137837687464106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165125 (A120897 (n + 1)).toNat

end

end A341990.P6402137837687464106

/-! ## A341990.P10551629655869896069

`A344420(A117882(n+1))`
-/

namespace A341990.P10551629655869896069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344420 (A117882 (n + 1)).toNat

end

end A341990.P10551629655869896069

/-! ## A341990.P14986928464490899521

`A192910(n)-A338336(2^n)`
-/

namespace A341990.P14986928464490899521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192910 n - A338336 (2 ^ n)

end

end A341990.P14986928464490899521

/-!
# A341991: Multiplicative defect in a natural approximation for the terms of A341617.

The programs for A341991, there is no canonical definition to state claims against.
-/

/-! ## A341991.P2814430855929026850

`A341617(n+1)/A034386(n)`
-/

namespace A341991.P2814430855929026850
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A341617 (n + 1) : ℚ) / (A034386 n : ℚ)

end

end A341991.P2814430855929026850

/-! ## A341991.P12915495638974862936

`A341617(n+1)/A300951(2*n)`
-/

namespace A341991.P12915495638974862936
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A341617 (n + 1) : ℚ) / (A300951 (2 * n) : ℚ)

end

end A341991.P12915495638974862936

/-! ## A341991.P13542575910359917665

`A341617(n+1)/(2^n-A319880(n))`
-/

namespace A341991.P13542575910359917665
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A341617 (n + 1) : ℚ) / ((2 ^ n : ℤ) - A319880 n : ℚ)

end

end A341991.P13542575910359917665

/-! ## A341991.P1748338010585516700

`A341617(n+1)/A002110(A230980(n))`
-/

namespace A341991.P1748338010585516700
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A341617 (n + 1) : ℚ) / (A002110 (A230980 n).toNat : ℚ)

end

end A341991.P1748338010585516700

/-! ## A341991.P5336930805730880714

`A341617(n+1)/A066838(A007918(n+1))`
-/

namespace A341991.P5336930805730880714
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A341617 (n + 1) : ℚ) / (A066838 (A007918 (n + 1)).toNat : ℚ)

end

end A341991.P5336930805730880714

/-!
# A341992: Take a standard 6-sided die and concatenate the numbers that can be seen around any of the corners and sort into increasing order.

The programs for A341992, there is no canonical definition to state claims against.
-/

/-! ## A341992.P18103533903417991173

`A357185(n+1)+A065705(A367766(n+1))`
-/

namespace A341992.P18103533903417991173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357185 (n + 1) + A065705 (A367766 (n + 1)).toNat

end

end A341992.P18103533903417991173

/-!
# A341994: a(n) = 1 if the arithmetic derivative (A003415) of n is a squarefree number (A005117) > 1, otherwise 0.

The programs for A341994, the canonical program `A341994.P3917476089229171294` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A341994 has offset 0).

The definition of A341994 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A341994.P3917476089229171294

`char[A328234(n+1)]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A341994

/-- `char[A328234(n+1)]` -/
def P3917476089229171294.Spec : Prop :=
  ∀ n, (P3917476089229171294.a n : ℤ) = A341994 n

theorem P3917476089229171294.correct : P3917476089229171294.Spec := by
  intro n
  simp only [A341994]

end A341994

/-! ## A341994.P382294230764417436

`1-A087049(A003415(n))`
-/

namespace A341994.P382294230764417436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A087049 (A003415 n).toNat

end

end A341994.P382294230764417436

namespace A341994

/-- `1-A087049(A003415(n))` -/
def P382294230764417436.Spec : Prop :=
  ∀ n, P382294230764417436.a n = A341994 n

end A341994

/-! ## A341994.P2018514119530773538

`1-A087049(A129283(n)-n)`
-/

namespace A341994.P2018514119530773538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A087049 (A129283 n - (n : ℤ)).toNat

end

end A341994.P2018514119530773538

namespace A341994

/-- `1-A087049(A129283(n)-n)` -/
def P2018514119530773538.Spec : Prop :=
  ∀ n, P2018514119530773538.a n = A341994 n

end A341994

/-! ## A341994.P9221766116923814540

`A354874(n)-char[A000040(n+1)]`
-/

namespace A341994.P9221766116923814540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354874 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A341994.P9221766116923814540

namespace A341994

/-- `A354874(n)-char[A000040(n+1)]` -/
def P9221766116923814540.Spec : Prop :=
  ∀ n, P9221766116923814540.a n = A341994 n

end A341994

/-! ## A341994.P5648337425859987842

`char[A002808(n+1)]*A354874(n)`
-/

namespace A341994.P5648337425859987842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A354874 n

end

end A341994.P5648337425859987842

namespace A341994

/-- `char[A002808(n+1)]*A354874(n)` -/
def P5648337425859987842.Spec : Prop :=
  ∀ n, P5648337425859987842.a n = A341994 n

end A341994

/-! ## A341994.P1934167944019702548

`xor(A035263(2*n+3), A087049(A003415(n)))`
-/

namespace A341994.P1934167944019702548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A035263 (2 * n + 3)) (A087049 (A003415 n).toNat)

end

end A341994.P1934167944019702548

namespace A341994

/-- `xor(A035263(2*n+3), A087049(A003415(n)))` -/
def P1934167944019702548.Spec : Prop :=
  ∀ n, P1934167944019702548.a n = A341994 n

end A341994

/-! ## A341994.P1289167674987822005

`A354874(n)-A010051(or(n, A010051(3*n+2)))`
-/

namespace A341994.P1289167674987822005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354874 n - A010051 (Int.lor (n : ℤ) (A010051 (3 * n + 2))).toNat

end

end A341994.P1289167674987822005

namespace A341994

/-- `A354874(n)-A010051(or(n, A010051(3*n+2)))` -/
def P1289167674987822005.Spec : Prop :=
  ∀ n, P1289167674987822005.a n = A341994 n

end A341994

/-! ## A341994.P8166572412619339789

`and(A249802(n+1), A354874(n))`
-/

namespace A341994.P8166572412619339789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A249802 (n + 1)) (A354874 n)

end

end A341994.P8166572412619339789

namespace A341994

/-- `and(A249802(n+1), A354874(n))` -/
def P8166572412619339789.Spec : Prop :=
  ∀ n, P8166572412619339789.a n = A341994 n

end A341994

/-! ## A341994.P6153007130172626843

`A354874((A249802(n+1)*A354874(n))²)`
-/

namespace A341994.P6153007130172626843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354874 ((A249802 (n + 1) * A354874 n) ^ 2).toNat

end

end A341994.P6153007130172626843

namespace A341994

/-- `A354874((A249802(n+1)*A354874(n))²)` -/
def P6153007130172626843.Spec : Prop :=
  ∀ n, P6153007130172626843.a n = A341994 n

end A341994

/-! ## A341994.P13404576666373817893

`and(A354874(n), A363709(n))`
-/

namespace A341994.P13404576666373817893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A354874 n) (A363709 n)

end

end A341994.P13404576666373817893

namespace A341994

/-- `and(A354874(n), A363709(n))` -/
def P13404576666373817893.Spec : Prop :=
  ∀ n, P13404576666373817893.a n = A341994 n

end A341994

/-!
# A341995: a(n) = 1 if the arithmetic derivative (A003415) of n is a prime, otherwise 0.

The programs for A341995, the canonical program `A341995.P4102610596282420216` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A341995 has offset 0).

The definition of A341995 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A341995.P17305392329230574157

`char[A157037(n+1)]`
-/

namespace A341995.P17305392329230574157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157037 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A341995.P17305392329230574157

namespace A341995

/-- `char[A157037(n+1)]` -/
def P17305392329230574157.Spec : Prop :=
  ∀ n, (P17305392329230574157.a n : ℤ) = A341995 n

end A341995

/-! ## A341995.P2625331693838121128

`char[eq[3, A256750(n)]]`
-/

namespace A341995.P2625331693838121128
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256750 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A341995.P2625331693838121128

namespace A341995

/-- `char[eq[3, A256750(n)]]` -/
def P2625331693838121128.Spec : Prop :=
  ∀ n, (P2625331693838121128.a n : ℤ) = A341995 n

end A341995

/-! ## A341995.P4102610596282420216

`A000212(C(2, A068346(n)))`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A341995

/-- `A000212(C(2, A068346(n)))` -/
def P4102610596282420216.Spec : Prop :=
  ∀ n, P4102610596282420216.a n = A341995 n

theorem P4102610596282420216.correct : P4102610596282420216.Spec := by
  intro n
  simp only [A341995]

end A341995

/-! ## A341995.P13450939564468401771

`A000295(C(2, A068346(n)))`
-/

namespace A341995.P13450939564468401771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000295 (Nat.choose 2 (A068346 n).toNat)

end

end A341995.P13450939564468401771

namespace A341995

/-- `A000295(C(2, A068346(n)))` -/
def P13450939564468401771.Spec : Prop :=
  ∀ n, P13450939564468401771.a n = A341995 n

end A341995

/-! ## A341995.P8503728760965058436

`A002262(C(2, A068346(n)))`
-/

namespace A341995.P8503728760965058436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (Nat.choose 2 (A068346 n).toNat)

end

end A341995.P8503728760965058436

namespace A341995

/-- `A002262(C(2, A068346(n)))` -/
def P8503728760965058436.Spec : Prop :=
  ∀ n, P8503728760965058436.a n = A341995 n

end A341995

/-! ## A341995.P2058175411405999840

`A003415(C(2, A068346(n)))`
-/

namespace A341995.P2058175411405999840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (Nat.choose 2 (A068346 n).toNat)

end

end A341995.P2058175411405999840

namespace A341995

/-- `A003415(C(2, A068346(n)))` -/
def P2058175411405999840.Spec : Prop :=
  ∀ n, P2058175411405999840.a n = A341995 n

end A341995

/-! ## A341995.P16996856445291373156

`A258651(C(2, A068346(n)))`
-/

namespace A341995.P16996856445291373156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258651 (Nat.choose 2 (A068346 n).toNat)

end

end A341995.P16996856445291373156

namespace A341995

/-- `A258651(C(2, A068346(n)))` -/
def P16996856445291373156.Spec : Prop :=
  ∀ n, P16996856445291373156.a n = A341995 n

end A341995

/-! ## A341995.P17114542020494361073

`A001405(C(2, A068346(n)))-1`
-/

namespace A341995.P17114542020494361073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 (Nat.choose 2 (A068346 n).toNat) - 1

end

end A341995.P17114542020494361073

namespace A341995

/-- `A001405(C(2, A068346(n)))-1` -/
def P17114542020494361073.Spec : Prop :=
  ∀ n, P17114542020494361073.a n = A341995 n

end A341995

/-! ## A341995.P4370280407707586545

`A211540(C(2, A068346(n))+3)`
-/

namespace A341995.P4370280407707586545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211540 (Nat.choose 2 (A068346 n).toNat + 3)

end

end A341995.P4370280407707586545

namespace A341995

/-- `A211540(C(2, A068346(n))+3)` -/
def P4370280407707586545.Spec : Prop :=
  ∀ n, P4370280407707586545.a n = A341995 n

end A341995

/-! ## A341995.P17032916077179938955

`A003415(C(2, ∑{e}[A003415(n), #]))`
-/

namespace A341995.P17032916077179938955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (Nat.choose 2 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p))

end

end A341995.P17032916077179938955

namespace A341995

/-- `A003415(C(2, ∑{e}[A003415(n), #]))` -/
def P17032916077179938955.Spec : Prop :=
  ∀ n, P17032916077179938955.a n = A341995 n

end A341995

/-! ## A341995.P8608366400936749185

`A000010(C(2, A068346(n))+1)-1`
-/

namespace A341995.P8608366400936749185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (Nat.choose 2 (A068346 n).toNat + 1) - 1

end

end A341995.P8608366400936749185

namespace A341995

/-- `A000010(C(2, A068346(n))+1)-1` -/
def P8608366400936749185.Spec : Prop :=
  ∀ n, P8608366400936749185.a n = A341995 n

end A341995

/-! ## A341995.P8496719914994255474

`A064413(C(2, A068346(n))+3)%2`
-/

namespace A341995.P8496719914994255474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A064413 (Nat.choose 2 (A068346 n).toNat + 3)) 2

end

end A341995.P8496719914994255474

namespace A341995

/-- `A064413(C(2, A068346(n))+3)%2` -/
def P8496719914994255474.Spec : Prop :=
  ∀ n, P8496719914994255474.a n = A341995 n

end A341995

/-! ## A341995.P672292524281676209

`A003415(C(2, A003415(A003415(n))))`
-/

namespace A341995.P672292524281676209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (Nat.choose 2 (A003415 (A003415 n).toNat).toNat)

end

end A341995.P672292524281676209

namespace A341995

/-- `A003415(C(2, A003415(A003415(n))))` -/
def P672292524281676209.Spec : Prop :=
  ∀ n, P672292524281676209.a n = A341995 n

end A341995

/-! ## A341995.P2456190333525095021

`∑{d}[A003415(A003415(n)), A008683(#)]`
-/

namespace A341995.P2456190333525095021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A003415 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A008683 d

end

end A341995.P2456190333525095021

namespace A341995

/-- `∑{d}[A003415(A003415(n)), A008683(#)]` -/
def P2456190333525095021.Spec : Prop :=
  ∀ n, P2456190333525095021.a n = A341995 n

end A341995

/-! ## A341995.P6927107804211038459

`A068346(n*A000007(A099306(n)))`
-/

namespace A341995.P6927107804211038459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068346 ((n : ℤ) * A000007 (A099306 n).toNat).toNat

end

end A341995.P6927107804211038459

namespace A341995

/-- `A068346(n*A000007(A099306(n)))` -/
def P6927107804211038459.Spec : Prop :=
  ∀ n, P6927107804211038459.a n = A341995 n

end A341995

/-! ## A341995.P1738130005690213804

`A000007(A099306(n))*A003415(A003415(n))`
-/

namespace A341995.P1738130005690213804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A099306 n).toNat * A003415 (A003415 n).toNat

end

end A341995.P1738130005690213804

namespace A341995

/-- `A000007(A099306(n))*A003415(A003415(n))` -/
def P1738130005690213804.Spec : Prop :=
  ∀ n, P1738130005690213804.a n = A341995 n

end A341995

/-! ## A341995.P10405246777502980965

`and(A010743(n), A369655(n))`
-/

namespace A341995.P10405246777502980965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A010743 n) (A369655 n)

end

end A341995.P10405246777502980965

namespace A341995

/-- `and(A010743(n), A369655(n))` -/
def P10405246777502980965.Spec : Prop :=
  ∀ n, P10405246777502980965.a n = A341995 n

end A341995

/-! ## A341995.P5749046363979136244

`A045840(A328324(n))`
-/

namespace A341995.P5749046363979136244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045840 (A328324 n).toNat

end

end A341995.P5749046363979136244

namespace A341995

/-- `A045840(A328324(n))` -/
def P5749046363979136244.Spec : Prop :=
  ∀ n, P5749046363979136244.a n = A341995 n

end A341995

/-!
# A341996: a(n) = 1 if there is at least one such prime p that p^p divides the arithmetic derivative of n, A003415(n); a(0) = a(1) = 0 by convention.

The programs for A341996, the canonical program `A341996.P1045683566354713313` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A341996 has offset 0).

The definition of A341996 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A341996.P16431267006217835133

`A327928(n)²%3`
-/

namespace A341996.P16431267006217835133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A327928 n ^ 2) 3

end

end A341996.P16431267006217835133

namespace A341996

/-- `A327928(n)²%3` -/
def P16431267006217835133.Spec : Prop :=
  ∀ n, P16431267006217835133.a n = A341996 n

end A341996

/-! ## A341996.P1045683566354713313

`char[A327929(n+1)]`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A341996

/-- `char[A327929(n+1)]` -/
def P1045683566354713313.Spec : Prop :=
  ∀ n, (P1045683566354713313.a n : ℤ) = A341996 n

theorem P1045683566354713313.correct : P1045683566354713313.Spec := by
  intro n
  simp only [A341996]

end A341996

/-! ## A341996.P15319524852303230685

`ceil(A327928(n)/A000124(n))`
-/

namespace A341996.P15319524852303230685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A327928 n : ℚ) / (A000124 n : ℚ)⌉

end

end A341996.P15319524852303230685

namespace A341996

/-- `ceil(A327928(n)/A000124(n))` -/
def P15319524852303230685.Spec : Prop :=
  ∀ n, P15319524852303230685.a n = A341996 n

end A341996

/-! ## A341996.P3964806468980068499

`ceil(A327928(n)/A005408(n))`
-/

namespace A341996.P3964806468980068499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A327928 n : ℚ) / (A005408 n : ℚ)⌉

end

end A341996.P3964806468980068499

namespace A341996

/-- `ceil(A327928(n)/A005408(n))` -/
def P3964806468980068499.Spec : Prop :=
  ∀ n, P3964806468980068499.a n = A341996 n

end A341996

/-! ## A341996.P12721079605325074531

`ceil(A327928(n)/A005728(n))`
-/

namespace A341996.P12721079605325074531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A327928 n : ℚ) / (A005728 n : ℚ)⌉

end

end A341996.P12721079605325074531

namespace A341996

/-- `ceil(A327928(n)/A005728(n))` -/
def P12721079605325074531.Spec : Prop :=
  ∀ n, P12721079605325074531.a n = A341996 n

end A341996

/-! ## A341996.P8598194232075350997

`ceil(A327928(n)/A008000(n))`
-/

namespace A341996.P8598194232075350997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A327928 n : ℚ) / (A008000 n : ℚ)⌉

end

end A341996.P8598194232075350997

namespace A341996

/-- `ceil(A327928(n)/A008000(n))` -/
def P8598194232075350997.Spec : Prop :=
  ∀ n, P8598194232075350997.a n = A341996 n

end A341996

/-! ## A341996.P6862918183795154463

`ceil(A327928(n)/A008137(n))`
-/

namespace A341996.P6862918183795154463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A327928 n : ℚ) / (A008137 n : ℚ)⌉

end

end A341996.P6862918183795154463

namespace A341996

/-- `ceil(A327928(n)/A008137(n))` -/
def P6862918183795154463.Spec : Prop :=
  ∀ n, P6862918183795154463.a n = A341996 n

end A341996

/-! ## A341996.P11737318617638352200

`ceil(A327928(n)/A055232(n))`
-/

namespace A341996.P11737318617638352200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A327928 n : ℚ) / (A055232 n : ℚ)⌉

end

end A341996.P11737318617638352200

namespace A341996

/-- `ceil(A327928(n)/A055232(n))` -/
def P11737318617638352200.Spec : Prop :=
  ∀ n, P11737318617638352200.a n = A341996 n

end A341996

/-! ## A341996.P3436972924199664291

`ceil(A327928(n)/A070939(n))`
-/

namespace A341996.P3436972924199664291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A327928 n : ℚ) / (A070939 n : ℚ)⌉

end

end A341996.P3436972924199664291

namespace A341996

/-- `ceil(A327928(n)/A070939(n))` -/
def P3436972924199664291.Spec : Prop :=
  ∀ n, P3436972924199664291.a n = A341996 n

end A341996

/-! ## A341996.P7345129830278539978

`ceil(A327928(n)/A082108(n))`
-/

namespace A341996.P7345129830278539978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A327928 n : ℚ) / (A082108 n : ℚ)⌉

end

end A341996.P7345129830278539978

namespace A341996

/-- `ceil(A327928(n)/A082108(n))` -/
def P7345129830278539978.Spec : Prop :=
  ∀ n, P7345129830278539978.a n = A341996 n

end A341996

/-! ## A341996.P17284698910590527742

`ceil(A327928(n)/A324386(n))`
-/

namespace A341996.P17284698910590527742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A327928 n : ℚ) / (A324386 n : ℚ)⌉

end

end A341996.P17284698910590527742

namespace A341996

/-- `ceil(A327928(n)/A324386(n))` -/
def P17284698910590527742.Spec : Prop :=
  ∀ n, P17284698910590527742.a n = A341996 n

end A341996

/-! ## A341996.P5056919398458046798

`ceil(A327928(n)/A001358(n+1))`
-/

namespace A341996.P5056919398458046798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A327928 n : ℚ) / (A001358 (n + 1) : ℚ)⌉

end

end A341996.P5056919398458046798

namespace A341996

/-- `ceil(A327928(n)/A001358(n+1))` -/
def P5056919398458046798.Spec : Prop :=
  ∀ n, P5056919398458046798.a n = A341996 n

end A341996

/-! ## A341996.P14142893632787940904

`ceil(A327928(n)/A052382(n+1))`
-/

namespace A341996.P14142893632787940904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A327928 n : ℚ) / (A052382 (n + 1) : ℚ)⌉

end

end A341996.P14142893632787940904

namespace A341996

/-- `ceil(A327928(n)/A052382(n+1))` -/
def P14142893632787940904.Spec : Prop :=
  ∀ n, P14142893632787940904.a n = A341996 n

end A341996

/-! ## A341996.P12665810442163197050

`ceil(A327928(n)/A064150(n+1))`
-/

namespace A341996.P12665810442163197050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A327928 n : ℚ) / (A064150 (n + 1) : ℚ)⌉

end

end A341996.P12665810442163197050

namespace A341996

/-- `ceil(A327928(n)/A064150(n+1))` -/
def P12665810442163197050.Spec : Prop :=
  ∀ n, P12665810442163197050.a n = A341996 n

end A341996

/-! ## A341996.P14850840180290078592

`ceil(A327928(n)/A067004(n+1))`
-/

namespace A341996.P14850840180290078592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A327928 n : ℚ) / (A067004 (n + 1) : ℚ)⌉

end

end A341996.P14850840180290078592

namespace A341996

/-- `ceil(A327928(n)/A067004(n+1))` -/
def P14850840180290078592.Spec : Prop :=
  ∀ n, P14850840180290078592.a n = A341996 n

end A341996

/-! ## A341996.P14630979426666995388

`ceil(A327928(n)/A090466(n+1))`
-/

namespace A341996.P14630979426666995388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A327928 n : ℚ) / (A090466 (n + 1) : ℚ)⌉

end

end A341996.P14630979426666995388

namespace A341996

/-- `ceil(A327928(n)/A090466(n+1))` -/
def P14630979426666995388.Spec : Prop :=
  ∀ n, P14630979426666995388.a n = A341996 n

end A341996

/-! ## A341996.P10657962729082022934

`A300234(floor((A327928(n)+n)/(n+1))+1)`
-/

namespace A341996.P10657962729082022934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300234 (⌊(A327928 n + (n : ℤ) : ℚ) / (n + 1 : ℚ)⌋ + 1).toNat

end

end A341996.P10657962729082022934

namespace A341996

/-- `A300234(floor((A327928(n)+n)/(n+1))+1)` -/
def P10657962729082022934.Spec : Prop :=
  ∀ n, P10657962729082022934.a n = A341996 n

end A341996

/-! ## A341996.P15134255232216502708

`A327928(A053644(n)*A327928(n))`
-/

namespace A341996.P15134255232216502708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327928 (A053644 n * A327928 n).toNat

end

end A341996.P15134255232216502708

namespace A341996

/-- `A327928(A053644(n)*A327928(n))` -/
def P15134255232216502708.Spec : Prop :=
  ∀ n, P15134255232216502708.a n = A341996 n

end A341996

/-! ## A341996.P14936903203393219817

`A151930(∏{p}[n*A327928(n), A327928(#)])`
-/

namespace A341996.P14936903203393219817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A327928 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151930 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, A327928 p).toNat

end

end A341996.P14936903203393219817

namespace A341996

/-- `A151930(∏{p}[n*A327928(n), A327928(#)])` -/
def P14936903203393219817.Spec : Prop :=
  ∀ n, P14936903203393219817.a n = A341996 n

end A341996

/-!
# A341997: a(n) = A327936(A003415(n)).

The programs for A341997, the canonical program `A341997.P13761577682504290083` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A341997 has offset 2).

The definition of A341997 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, A327936, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A341997.P13761577682504290083

`A327936(A003415(n+2))`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A341997

/-- `A327936(A003415(n+2))` -/
def P13761577682504290083.Spec : Prop :=
  ∀ n, P13761577682504290083.a n = A341997 (n + 2)

theorem P13761577682504290083.correct : P13761577682504290083.Spec := by
  intro n
  simp only [A341997, Nat.add_sub_cancel]

end A341997

/-! ## A341997.P15230745644442237408

`A327936(A319703(2*(n+2)))`
-/

namespace A341997.P15230745644442237408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327936 (A319703 (2 * (n + 2))).toNat

end

end A341997.P15230745644442237408

namespace A341997

/-- `A327936(A319703(2*(n+2)))` -/
def P15230745644442237408.Spec : Prop :=
  ∀ n, P15230745644442237408.a n = A341997 (n + 2)

end A341997

/-! ## A341997.P7814750855060752204

`A327936((n+2)*A342001(n+2))`
-/

namespace A341997.P7814750855060752204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327936 ((n + 2 : ℤ) * A342001 (n + 2)).toNat

end

end A341997.P7814750855060752204

namespace A341997

/-- `A327936((n+2)*A342001(n+2))` -/
def P7814750855060752204.Spec : Prop :=
  ∀ n, P7814750855060752204.a n = A341997 (n + 2)

end A341997

/-! ## A341997.P2593773397114487088

`A327936(A341998(n+2)²)`
-/

namespace A341997.P2593773397114487088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327936 (A341998 (n + 2) ^ 2).toNat

end

end A341997.P2593773397114487088

namespace A341997

/-- `A327936(A341998(n+2)²)` -/
def P2593773397114487088.Spec : Prop :=
  ∀ n, P2593773397114487088.a n = A341997 (n + 2)

end A341997

/-! ## A341997.P6513401647879924548

`A327936(A341998(n+2)*A341998(n+2))`
-/

namespace A341997.P6513401647879924548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327936 (A341998 (n + 2) * A341998 (n + 2)).toNat

end

end A341997.P6513401647879924548

namespace A341997

/-- `A327936(A341998(n+2)*A341998(n+2))` -/
def P6513401647879924548.Spec : Prop :=
  ∀ n, P6513401647879924548.a n = A341997 (n + 2)

end A341997

/-! ## A341997.P4076872115603687747

`A369008(A085731(A003415(n+2))²)`
-/

namespace A341997.P4076872115603687747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369008 (A085731 (A003415 (n + 2)).toNat ^ 2).toNat

end

end A341997.P4076872115603687747

namespace A341997

/-- `A369008(A085731(A003415(n+2))²)` -/
def P4076872115603687747.Spec : Prop :=
  ∀ n, P4076872115603687747.a n = A341997 (n + 2)

end A341997

/-!
# A341998: Arithmetic derivative of n divided by its largest squarefree divisor: a(n) = A003557(A003415(n)).

The programs for A341998, the canonical program `A341998.P3260792565066439335` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A341998 has offset 2).

The definition of A341998 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A341998.P3260792565066439335

`A003557(A003415(n+2))`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A341998

/-- `A003557(A003415(n+2))` -/
def P3260792565066439335.Spec : Prop :=
  ∀ n, P3260792565066439335.a n = A341998 (n + 2)

theorem P3260792565066439335.correct : P3260792565066439335.Spec := by
  intro n
  simp only [A341998, Nat.add_sub_cancel]

end A341998

/-! ## A341998.P9716678476371119764

`A336551(∑[A258057(n+1)])+1`
-/

namespace A341998.P9716678476371119764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258057 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336551 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + 1

end

end A341998.P9716678476371119764

namespace A341998

/-- `A336551(∑[A258057(n+1)])+1` -/
def P9716678476371119764.Spec : Prop :=
  ∀ n, P9716678476371119764.a n = A341998 (n + 2)

end A341998

/-! ## A341998.P6907808871899614527

`A003557(∑[A258057(n+1)])`
-/

namespace A341998.P6907808871899614527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258057 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A341998.P6907808871899614527

namespace A341998

/-- `A003557(∑[A258057(n+1)])` -/
def P6907808871899614527.Spec : Prop :=
  ∀ n, P6907808871899614527.a n = A341998 (n + 2)

end A341998

/-! ## A341998.P5799421302154584635

`A003557(A319703(2*(n+2)))`
-/

namespace A341998.P5799421302154584635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (A319703 (2 * (n + 2))).toNat

end

end A341998.P5799421302154584635

namespace A341998

/-- `A003557(A319703(2*(n+2)))` -/
def P5799421302154584635.Spec : Prop :=
  ∀ n, P5799421302154584635.a n = A341998 (n + 2)

end A341998

/-! ## A341998.P14894428774770426515

`A003557(A168036(n+2)+n+2)`
-/

namespace A341998.P14894428774770426515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (A168036 (n + 2) + (n + 2 : ℤ)).toNat

end

end A341998.P14894428774770426515

namespace A341998

/-- `A003557(A168036(n+2)+n+2)` -/
def P14894428774770426515.Spec : Prop :=
  ∀ n, P14894428774770426515.a n = A341998 (n + 2)

end A341998

/-! ## A341998.P5629625845724345159

`A003557(A129283(n+2)-(n+2))`
-/

namespace A341998.P5629625845724345159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (A129283 (n + 2) - (n + 2 : ℤ)).toNat

end

end A341998.P5629625845724345159

namespace A341998

/-- `A003557(A129283(n+2)-(n+2))` -/
def P5629625845724345159.Spec : Prop :=
  ∀ n, P5629625845724345159.a n = A341998 (n + 2)

end A341998

/-! ## A341998.P9934005753632320171

`A003557(A190116(n+2)/(n+2))`
-/

namespace A341998.P9934005753632320171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (SequenceMachineLib.roundAway ((A190116 (n + 2) : ℚ) / (n + 2 : ℚ))).toNat

end

end A341998.P9934005753632320171

namespace A341998

/-- `A003557(A190116(n+2)/(n+2))` -/
def P9934005753632320171.Spec : Prop :=
  ∀ n, P9934005753632320171.a n = A341998 (n + 2)

end A341998

/-! ## A341998.P3721124717395713040

`A003557(A329039(n+2)+A069359(n+2))`
-/

namespace A341998.P3721124717395713040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (A329039 (n + 2) + A069359 (n + 2)).toNat

end

end A341998.P3721124717395713040

namespace A341998

/-- `A003557(A329039(n+2)+A069359(n+2))` -/
def P3721124717395713040.Spec : Prop :=
  ∀ n, P3721124717395713040.a n = A341998 (n + 2)

end A341998

/-! ## A341998.P740100727692803070

`A003557(A083345(n+2)*A085731(n+2))`
-/

namespace A341998.P740100727692803070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (A083345 (n + 2) * A085731 (n + 2)).toNat

end

end A341998.P740100727692803070

namespace A341998

/-- `A003557(A083345(n+2)*A085731(n+2))` -/
def P740100727692803070.Spec : Prop :=
  ∀ n, P740100727692803070.a n = A341998 (n + 2)

end A341998

/-! ## A341998.P6368612415912355525

`A003557(A003557(n+2)*A342001(n+2))`
-/

namespace A341998.P6368612415912355525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (A003557 (n + 2) * A342001 (n + 2)).toNat

end

end A341998.P6368612415912355525

namespace A341998

/-- `A003557(A003557(n+2)*A342001(n+2))` -/
def P6368612415912355525.Spec : Prop :=
  ∀ n, P6368612415912355525.a n = A341998 (n + 2)

end A341998

/-! ## A341998.P1542807738069979472

`A003557(A342413(n+2)*A342414(n+2))`
-/

namespace A341998.P1542807738069979472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (A342413 (n + 2) * A342414 (n + 2)).toNat

end

end A341998.P1542807738069979472

namespace A341998

/-- `A003557(A342413(n+2)*A342414(n+2))` -/
def P1542807738069979472.Spec : Prop :=
  ∀ n, P1542807738069979472.a n = A341998 (n + 2)

end A341998

/-! ## A341998.P8191478367467884177

`A003557(A342458(n+2)*A342919(n+2))`
-/

namespace A341998.P8191478367467884177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (A342458 (n + 2) * A342919 (n + 2)).toNat

end

end A341998.P8191478367467884177

namespace A341998

/-- `A003557(A342458(n+2)*A342919(n+2))` -/
def P8191478367467884177.Spec : Prop :=
  ∀ n, P8191478367467884177.a n = A341998 (n + 2)

end A341998

/-! ## A341998.P5734476167066391513

`A003557(A348492(n+2)*A348493(n+2))`
-/

namespace A341998.P5734476167066391513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (A348492 (n + 2) * A348493 (n + 2)).toNat

end

end A341998.P5734476167066391513

namespace A341998

/-- `A003557(A348492(n+2)*A348493(n+2))` -/
def P5734476167066391513.Spec : Prop :=
  ∀ n, P5734476167066391513.a n = A341998 (n + 2)

end A341998

/-!
# A341999: a(n) = 1 if the k-th arithmetic derivative is nonzero for all k >= 0, otherwise 0.

The programs for A341999, there is no canonical definition to state claims against.
-/

/-! ## A341999.P6603528041442568754

`1-A328308(n)`
-/

namespace A341999.P6603528041442568754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A328308 n

end

end A341999.P6603528041442568754

/-! ## A341999.P5302421128515842261

`char[A099309(n+1)]`
-/

namespace A341999.P5302421128515842261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099309 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A341999.P5302421128515842261

/-! ## A341999.P2254049093285200691

`char[comp[A099308(n+1)]]`
-/

namespace A341999.P2254049093285200691
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099308 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A341999.P2254049093285200691

/-! ## A341999.P11563943027884131047

`C(a(n-1), A351078(n))` with `a(0)=0`
-/

namespace A341999.P11563943027884131047
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.choose (a (n - 1)) (A351078 n).toNat

end

end A341999.P11563943027884131047

/-! ## A341999.P16895046156964383203

`xor(1, A328308(A003415(n)))`
-/

namespace A341999.P16895046156964383203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A328308 (A003415 n).toNat)

end

end A341999.P16895046156964383203

/-! ## A341999.P9478818077466018637

`char[eq[A339579(n+1), A351078(n)]]`
-/

namespace A341999.P9478818077466018637
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339579 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351078 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A341999.P9478818077466018637

/-! ## A341999.P8027405546163753127

`A000007(A328308(n)+A055672(n))`
-/

namespace A341999.P8027405546163753127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A328308 n + A055672 n).toNat

end

end A341999.P8027405546163753127

/-! ## A341999.P13926035784132038369

`A000007(A029579(n)*A328308(n))`
-/

namespace A341999.P13926035784132038369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A029579 n * A328308 n).toNat

end

end A341999.P13926035784132038369

/-! ## A341999.P3722088903384977431

`A000007(A120880(n)*A328308(n))`
-/

namespace A341999.P3722088903384977431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A120880 n * A328308 n).toNat

end

end A341999.P3722088903384977431

/-! ## A341999.P15843129901246332276

`A000007(A000265(n+1)*A328308(n))`
-/

namespace A341999.P15843129901246332276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A000265 (n + 1) * A328308 n).toNat

end

end A341999.P15843129901246332276

/-! ## A341999.P12768131344452201594

`A000007(A002260(n+1)*A328308(n))`
-/

namespace A341999.P12768131344452201594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A002260 (n + 1) * A328308 n).toNat

end

end A341999.P12768131344452201594

/-! ## A341999.P236874699384239142

`A000007(A007913(n+1)*A328308(n))`
-/

namespace A341999.P236874699384239142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A007913 (n + 1) * A328308 n).toNat

end

end A341999.P236874699384239142

/-! ## A341999.P16042921246154858062

`A328308(A099309(n+1)*A328308(n))`
-/

namespace A341999.P16042921246154858062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328308 (A099309 (n + 1) * A328308 n).toNat

end

end A341999.P16042921246154858062

/-! ## A341999.P17730925290973772045

`A328308(A100716(n+1)*A328308(n))`
-/

namespace A341999.P17730925290973772045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328308 (A100716 (n + 1) * A328308 n).toNat

end

end A341999.P17730925290973772045

/-! ## A341999.P10918496521569416742

`A328308(A327929(n+1)*A328308(n))`
-/

namespace A341999.P10918496521569416742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328308 (A327929 (n + 1) * A328308 n).toNat

end

end A341999.P10918496521569416742

/-! ## A341999.P9297970517725877653

`A353494(A328308(n)*A358215(n+1))`
-/

namespace A341999.P9297970517725877653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353494 (A328308 n * A358215 (n + 1)).toNat

end

end A341999.P9297970517725877653

/-! ## A341999.P4838733763414318438

`A328308(A327934(n+1)*A328308(n))`
-/

namespace A341999.P4838733763414318438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328308 (A327934 (n + 1) * A328308 n).toNat

end

end A341999.P4838733763414318438

/-! ## A341999.P2438727782026576117

`A000007(A351078(A000007(n)+n))`
-/

namespace A341999.P2438727782026576117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A351078 (A000007 n + (n : ℤ)).toNat).toNat

end

end A341999.P2438727782026576117

/-! ## A341999.P12742397745413020725

`A130706(A351078(n))-A130706(n)`
-/

namespace A341999.P12742397745413020725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130706 (A351078 n).toNat - A130706 n

end

end A341999.P12742397745413020725

/-! ## A341999.P10244474700224703778

`A130713(A351078(n))-A130713(n)`
-/

namespace A341999.P10244474700224703778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130713 (A351078 n).toNat - A130713 n

end

end A341999.P10244474700224703778

