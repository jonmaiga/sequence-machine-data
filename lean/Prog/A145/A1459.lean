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
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C042
import Seq.B000.C043
import Seq.B000.C045
import Seq.B000.C046
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C014
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
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
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
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
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A145901: Triangle of f-vectors of the simplicial complexes dual to the permutohedra of type B_n.

The programs for A145901, the canonical program `A145901.P7552917635716622343` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A145901 has offset 0).

The definition of A145901 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A145901.P7552917635716622343

`(2*col(n)+1)*T(n-1,k)+2*col(n)*T(n-1,k-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A145901

/-- `(2*col(n)+1)*T(n-1,k)+2*col(n)*T(n-1,k-1)` -/
def P7552917635716622343.Spec : Prop :=
  ∀ n, (P7552917635716622343.a n : ℤ) = A145901 n

theorem P7552917635716622343.correct : P7552917635716622343.Spec := by
  intro n
  simp only [A145901]

end A145901

/-! ## A145901.P13524184560877656793

`A154537(C(row(n)+1, 2)+col(n))*col(n)!`
-/

namespace A145901.P13524184560877656793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154537 (Nat.choose (SequenceMachineLib.triRow n + 1) 2 + SequenceMachineLib.triCol n) * (Nat.factorial (SequenceMachineLib.triCol n) : ℤ)

end

end A145901.P13524184560877656793

namespace A145901

/-- `A154537(C(row(n)+1, 2)+col(n))*col(n)!` -/
def P13524184560877656793.Spec : Prop :=
  ∀ n, P13524184560877656793.a n = A145901 n

end A145901

/-! ## A145901.P15514161783561946344

`2^col(n)*col(n)!*A039755(C(row(n)+1, 2)+col(n))`
-/

namespace A145901.P15514161783561946344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ SequenceMachineLib.triCol n * Nat.factorial (SequenceMachineLib.triCol n) : ℤ) * A039755 (Nat.choose (SequenceMachineLib.triRow n + 1) 2 + SequenceMachineLib.triCol n)

end

end A145901.P15514161783561946344

namespace A145901

/-- `2^col(n)*col(n)!*A039755(C(row(n)+1, 2)+col(n))` -/
def P15514161783561946344.Spec : Prop :=
  ∀ n, P15514161783561946344.a n = A145901 n

end A145901

/-! ## A145901.P11092315997479123827

`T(n-1,k)+2*(T(n-1,k-1)+T(n-1,k))*col(n)` with `a(0)=1`
-/

namespace A145901.P11092315997479123827
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triUp a n + 2 * (SequenceMachineLib.triUpLeft a n + SequenceMachineLib.triUp a n) * SequenceMachineLib.triCol n

end

end A145901.P11092315997479123827

namespace A145901

/-- `T(n-1,k)+2*(T(n-1,k-1)+T(n-1,k))*col(n)` -/
def P11092315997479123827.Spec : Prop :=
  ∀ n, (P11092315997479123827.a n : ℤ) = A145901 n

end A145901

/-! ## A145901.P5854865026730321180

`A059268(n)*A225476(n)`
-/

namespace A145901.P5854865026730321180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n * A225476 n

end

end A145901.P5854865026730321180

namespace A145901

/-- `A059268(n)*A225476(n)` -/
def P5854865026730321180.Spec : Prop :=
  ∀ n, P5854865026730321180.a n = A145901 n

end A145901

/-! ## A145901.P8670905475317960139

`A154537(n)*A233543(n)`
-/

namespace A145901.P8670905475317960139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154537 n * A233543 n

end

end A145901.P8670905475317960139

namespace A145901

/-- `A154537(n)*A233543(n)` -/
def P8670905475317960139.Spec : Prop :=
  ∀ n, P8670905475317960139.a n = A145901 n

end A145901

/-! ## A145901.P4710268008662887712

`A002262(n)!*A154537(n)`
-/

namespace A145901.P4710268008662887712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A002262 n).toNat : ℤ) * A154537 n

end

end A145901.P4710268008662887712

namespace A145901

/-- `A002262(n)!*A154537(n)` -/
def P4710268008662887712.Spec : Prop :=
  ∀ n, P4710268008662887712.a n = A145901 n

end A145901

/-! ## A145901.P13106274894493710073

`2^A002262(n)*A225476(n)`
-/

namespace A145901.P13106274894493710073
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A002262 n : ℤ) * (A225476 n : ℚ)

end

end A145901.P13106274894493710073

namespace A145901

/-- `2^A002262(n)*A225476(n)` -/
def P13106274894493710073.Spec : Prop :=
  ∀ n, P13106274894493710073.a n = (A145901 n : ℚ)

end A145901

/-! ## A145901.P13998640175413375481

`A144328(n+1)!*A154537(n)`
-/

namespace A145901.P13998640175413375481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A144328 (n + 1)).toNat : ℤ) * A154537 n

end

end A145901.P13998640175413375481

namespace A145901

/-- `A144328(n+1)!*A154537(n)` -/
def P13998640175413375481.Spec : Prop :=
  ∀ n, P13998640175413375481.a n = A145901 n

end A145901

/-! ## A145901.P11356545874615912429

`A039755(n)*A059268(n)*A112624(A059268(n))`
-/

namespace A145901.P11356545874615912429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039755 n * A059268 n * A112624 (A059268 n).toNat

end

end A145901.P11356545874615912429

namespace A145901

/-- `A039755(n)*A059268(n)*A112624(A059268(n))` -/
def P11356545874615912429.Spec : Prop :=
  ∀ n, P11356545874615912429.a n = A145901 n

end A145901

/-!
# A145902: Triangular array: rows are the f-vectors of simplicial complexes dual to permutohedra of type D_n.

The programs for A145902, there is no canonical definition to state claims against.
-/

/-! ## A145902.P7826282617483214678

`A340792(C(n, A340755(n)))`
-/

namespace A145902.P7826282617483214678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340792 (Nat.choose n (A340755 n).toNat)

end

end A145902.P7826282617483214678

/-! ## A145902.P6630894574337815538

`∏{e}[A286919(n), A071948(#)]`
-/

namespace A145902.P6630894574337815538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286919 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A071948 (Nat.factorization (f1 n).natAbs p)

end

end A145902.P6630894574337815538

/-! ## A145902.P17532236292695931449

`A048158(Δ[A035052(n)]-n+1)+1`
-/

namespace A145902.P17532236292695931449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035052 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048158 (f1 (n + 1) - f1 n - (n : ℤ) + 1).toNat + 1

end

end A145902.P17532236292695931449

/-! ## A145902.P9477525878170422799

`A002487(A036349(n+1)^floor(n/3))`
-/

namespace A145902.P9477525878170422799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (SequenceMachineLib.roundAway ((A036349 (n + 1) : ℚ) ^ (⌊(n : ℚ) / 3⌋ : ℤ))).toNat

end

end A145902.P9477525878170422799

/-! ## A145902.P17941747446682464903

`A325543(C(A000011(n), A040946(3*n+2)))`
-/

namespace A145902.P17941747446682464903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325543 (Nat.choose (A000011 n).toNat (A040946 (3 * n + 2)).toNat)

end

end A145902.P17941747446682464903

/-!
# A145903: Generalized Narayana numbers for root systems of type D_n. Triangle of h-vectors of type D associahedra.

The programs for A145903, there is no canonical definition to state claims against.
-/

/-! ## A145903.P14082216961916011644

`A007318(n)*A072405(n)`
-/

namespace A145903.P14082216961916011644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A072405 n

end

end A145903.P14082216961916011644

/-! ## A145903.P15482959766817507612

`abs(A072405(n)*A108086(n))`
-/

namespace A145903.P15482959766817507612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A072405 n * A108086 n|

end

end A145903.P15482959766817507612

/-! ## A145903.P12214347394024285288

`abs(A072405(n)*A117440(n))`
-/

namespace A145903.P12214347394024285288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A072405 n * A117440 n|

end

end A145903.P12214347394024285288

/-! ## A145903.P8235946240480511113

`abs(A072405(n)*A118433(n))`
-/

namespace A145903.P8235946240480511113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A072405 n * A118433 n|

end

end A145903.P8235946240480511113

/-! ## A145903.P9651507089076816927

`abs(A072405(n)*A130595(n))`
-/

namespace A145903.P9651507089076816927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A072405 n * A130595 n|

end

end A145903.P9651507089076816927

/-! ## A145903.P1387408149271596952

`sqrt(A008459(n))*A072405(n)`
-/

namespace A145903.P1387408149271596952
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A008459 n : ℝ) * (A072405 n : ℝ)

end

end A145903.P1387408149271596952

/-! ## A145903.P18144429057756016421

`Δ[A102363(n)]*A072405(n)`
-/

namespace A145903.P18144429057756016421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A072405 n

end

end A145903.P18144429057756016421

/-! ## A145903.P4017992681422066823

`(A014473(n)+1)*A072405(n)`
-/

namespace A145903.P4017992681422066823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A014473 n + 1) * A072405 n

end

end A145903.P4017992681422066823

/-! ## A145903.P11244842761757136561

`A028326(n)/2*A072405(n)`
-/

namespace A145903.P11244842761757136561
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028326 n : ℚ) / 2 * (A072405 n : ℚ)

end

end A145903.P11244842761757136561

/-! ## A145903.P735138494178518865

`(A007318(n)-(A323211(n)-1))*A007318(n)`
-/

namespace A145903.P735138494178518865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A007318 n - (A323211 n - 1)) * A007318 n

end

end A145903.P735138494178518865

/-!
# A145904: Square array read by antidiagonals: Hilbert transform of the Narayana numbers A001263.

The programs for A145904, there is no canonical definition to state claims against.
-/

/-! ## A145904.P4791499629419623471

`A273350(n+2)%(n+2)²`
-/

namespace A145904.P4791499629419623471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A273350 (n + 2)) ((n + 2) ^ 2 : ℤ)

end

end A145904.P4791499629419623471

/-! ## A145904.P5880029368970537650

`A273350(n+2)+char[A273321(n+1)]`
-/

namespace A145904.P5880029368970537650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273321 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273350 (n + 2) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A145904.P5880029368970537650

/-! ## A145904.P15474971575632742914

`A273350(n+2)+char[A271990(n+2)]`
-/

namespace A145904.P15474971575632742914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271990 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273350 (n + 2) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A145904.P15474971575632742914

/-! ## A145904.P16125569240731525137

`A273350(n+2)+char[A273366(n+2)]`
-/

namespace A145904.P16125569240731525137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273366 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273350 (n + 2) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A145904.P16125569240731525137

/-! ## A145904.P14962625646281581481

`A273350(n+2)+char[A323757(n+2)]`
-/

namespace A145904.P14962625646281581481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323757 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273350 (n + 2) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A145904.P14962625646281581481

/-! ## A145904.P14444602102460122240

`A273350(n+2)+char[A136773(n+4)]`
-/

namespace A145904.P14444602102460122240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136773 (n + 4)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273350 (n + 2) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A145904.P14444602102460122240

/-! ## A145904.P10250664396518222982

`A273350(n+2)+char[A188464(n+4)]`
-/

namespace A145904.P10250664396518222982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188464 (n + 4)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273350 (n + 2) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A145904.P10250664396518222982

/-! ## A145904.P9534540935273394081

`A273350(n+2)+char[A141047(3*(n+1))]`
-/

namespace A145904.P9534540935273394081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141047 (3 * (n + 1))

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273350 (n + 2) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A145904.P9534540935273394081

/-!
# A145905: Square array read by antidiagonals: Hilbert transform of triangle A060187.

The programs for A145905, the canonical program `A145905.P8571711518503843960` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A145905 has offset 0).

The definition of A145905 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A145905.P8571711518503843960

`(2*col(n)+1)^(row(n)-col(n))`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A145905

/-- `(2*col(n)+1)^(row(n)-col(n))` -/
def P8571711518503843960.Spec : Prop :=
  ∀ n, P8571711518503843960.a n = (A145905 n : ℚ)

end A145905

/-! ## A145905.P12379954872940972344

`Δ[col(n)²]^(row(n)-col(n))`
-/

namespace A145905.P12379954872940972344
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triCol n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℚ) ^ ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) : ℤ)

end

end A145905.P12379954872940972344

namespace A145905

/-- `Δ[col(n)²]^(row(n)-col(n))` -/
def P12379954872940972344.Spec : Prop :=
  ∀ n, P12379954872940972344.a n = (A145905 n : ℚ)

end A145905

/-! ## A145905.P13205085529505770802

`(1+2*col(n))^(row(n)-col(n))`
-/

namespace A145905.P13205085529505770802
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 + 2 * SequenceMachineLib.triCol n : ℚ) ^ ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) : ℤ)

end

end A145905.P13205085529505770802

namespace A145905

/-- `(1+2*col(n))^(row(n)-col(n))` -/
def P13205085529505770802.Spec : Prop :=
  ∀ n, P13205085529505770802.a n = (A145905 n : ℚ)

end A145905

/-! ## A145905.P13148955625312969531

`(2*(n-C(∑[char[∑[n]]], 2))+1)^(C(comp[∑[n]]-n, 2)-(n+1))`
-/

namespace A145905.P13148955625312969531
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ)) + 1 : ℚ) ^ ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f4 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n + 1 : ℤ) : ℤ)

end

end A145905.P13148955625312969531

namespace A145905

/-- `(2*(n-C(∑[char[∑[n]]], 2))+1)^(C(comp[∑[n]]-n, 2)-(n+1))` -/
def P13148955625312969531.Spec : Prop :=
  ∀ n, P13148955625312969531.a n = (A145905 n : ℚ)

end A145905

/-! ## A145905.P9055375942285466586

`Δ[A069011(n)]^(row(n)-col(n))`
-/

namespace A145905.P9055375942285466586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069011 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) ^ ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) : ℤ)

end

end A145905.P9055375942285466586

namespace A145905

/-- `Δ[A069011(n)]^(row(n)-col(n))` -/
def P9055375942285466586.Spec : Prop :=
  ∀ n, P9055375942285466586.a n = (A145905 n : ℚ)

end A145905

/-! ## A145905.P6512947641884224511

`(2*(n-C(∑[char[∑[n]]], 2))+1)^A025581(n)`
-/

namespace A145905.P6512947641884224511
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ)) + 1 : ℚ) ^ (A025581 n : ℤ)

end

end A145905.P6512947641884224511

namespace A145905

/-- `(2*(n-C(∑[char[∑[n]]], 2))+1)^A025581(n)` -/
def P6512947641884224511.Spec : Prop :=
  ∀ n, P6512947641884224511.a n = (A145905 n : ℚ)

end A145905

/-! ## A145905.P13643311660448204341

`Δ[A143844(n)]^(C(comp[∑[n]]-n, 2)-(n+1))`
-/

namespace A145905.P13643311660448204341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143844 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) ^ ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n + 1 : ℤ) : ℤ)

end

end A145905.P13643311660448204341

namespace A145905

/-- `Δ[A143844(n)]^(C(comp[∑[n]]-n, 2)-(n+1))` -/
def P13643311660448204341.Spec : Prop :=
  ∀ n, P13643311660448204341.a n = (A145905 n : ℚ)

end A145905

/-! ## A145905.P8440254399011813027

`A158405(n+1)^(C(comp[∑[n]]-n, 2)-(n+1))`
-/

namespace A145905.P8440254399011813027
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A158405 (n + 1) : ℚ) ^ ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n + 1 : ℤ) : ℤ)

end

end A145905.P8440254399011813027

namespace A145905

/-- `A158405(n+1)^(C(comp[∑[n]]-n, 2)-(n+1))` -/
def P8440254399011813027.Spec : Prop :=
  ∀ n, P8440254399011813027.a n = (A145905 n : ℚ)

end A145905

/-! ## A145905.P5992115127582486496

`A053186(∑[2-char[∑[n]]])^(C(comp[∑[n]]-n, 2)-(n+1))`
-/

namespace A145905.P5992115127582486496
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053186 (∑ j ∈ Finset.range (n + 1), f1 j).toNat : ℚ) ^ ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f4 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n + 1 : ℤ) : ℤ)

end

end A145905.P5992115127582486496

namespace A145905

/-- `A053186(∑[2-char[∑[n]]])^(C(comp[∑[n]]-n, 2)-(n+1))` -/
def P5992115127582486496.Spec : Prop :=
  ∀ n, P5992115127582486496.a n = (A145905 n : ℚ)

end A145905

/-! ## A145905.P12807163509857231734

`A099375(∑[2*n]%comp[∑[n]])^(C(comp[∑[n]]-n, 2)-(n+1))`
-/

namespace A145905.P12807163509857231734
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A099375 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n) : ℚ) ^ ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f4 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n + 1 : ℤ) : ℤ)

end

end A145905.P12807163509857231734

namespace A145905

/-- `A099375(∑[2*n]%comp[∑[n]])^(C(comp[∑[n]]-n, 2)-(n+1))` -/
def P12807163509857231734.Spec : Prop :=
  ∀ n, P12807163509857231734.a n = (A145905 n : ℚ)

end A145905

/-! ## A145905.P7909753178971322127

`A005408(n-C(∑[char[∑[n]]], 2))^(C(comp[∑[n]]-n, 2)-(n+1))`
-/

namespace A145905.P7909753178971322127
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005408 (n - Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2) : ℚ) ^ ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f4 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n + 1 : ℤ) : ℤ)

end

end A145905.P7909753178971322127

namespace A145905

/-- `A005408(n-C(∑[char[∑[n]]], 2))^(C(comp[∑[n]]-n, 2)-(n+1))` -/
def P7909753178971322127.Spec : Prop :=
  ∀ n, P7909753178971322127.a n = (A145905 n : ℚ)

end A145905

/-! ## A145905.P13658969906755535151

`sqrt(A004248(record[xor(1, n)+round(sqrt(n+1))²]))`
-/

namespace A145905.P13658969906755535151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.xor 1 n : ℤ) + SequenceMachineLib.roundAway (Real.sqrt (n + 1 : ℝ)) ^ 2

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A004248 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat : ℝ)

end

end A145905.P13658969906755535151

namespace A145905

/-- `sqrt(A004248(record[xor(1, n)+round(sqrt(n+1))²]))` -/
def P13658969906755535151.Spec : Prop :=
  ∀ n, P13658969906755535151.a n = (A145905 n : ℝ)

end A145905

/-! ## A145905.P16091472894219260504

`sqrt((2*(n-C(∑[char[∑[n]]], 2))+1)^A185782(n+1))`
-/

namespace A145905.P16091472894219260504
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((2 * ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ)) + 1 : ℚ) ^ (A185782 (n + 1) : ℤ) : ℝ)

end

end A145905.P16091472894219260504

namespace A145905

/-- `sqrt((2*(n-C(∑[char[∑[n]]], 2))+1)^A185782(n+1))` -/
def P16091472894219260504.Spec : Prop :=
  ∀ n, P16091472894219260504.a n = (A145905 n : ℝ)

end A145905

/-!
# A145906: Concerning hypotenuses of triangles such that the sum of the two legs is a perfect square.

The programs for A145906, there is no canonical definition to state claims against.
-/

/-! ## A145906.P13044513977617785378

`A000267(A198436(n+1))-A198439(n+1)`
-/

namespace A145906.P13044513977617785378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000267 (A198436 (n + 1)).toNat - A198439 (n + 1)

end

end A145906.P13044513977617785378

/-!
# A145907: Primes p such that p + ceiling(sqrt(p)) is also prime.

The programs for A145907, the canonical program `A145907.P71648537022638446` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A145907 has offset 1).

The definition of A145907 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 257 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A145907.P71648537022638446

`p?[A133280(A102781(n+1))]`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A145907

/-- `p?[A133280(A102781(n+1))]` -/
def P71648537022638446.Spec : Prop :=
  ∀ n, P71648537022638446.a n = A145907 (n + 1)

theorem P71648537022638446.correct : P71648537022638446.Spec := by
  intro n
  simp only [A145907, Nat.add_sub_cancel]

end A145907

/-! ## A145907.P758404498410892710

`p?[A001614(A006254(n+1))-1]`
-/

namespace A145907.P758404498410892710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001614 (A006254 (n + 1)).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A145907.P758404498410892710

namespace A145907

/-- `p?[A001614(A006254(n+1))-1]` -/
def P758404498410892710.Spec : Prop :=
  ∀ n, P758404498410892710.a n = A145907 (n + 1)

end A145907

/-! ## A145907.P14836144222557154769

`p?[A133280(A111333(n+1)-1)]`
-/

namespace A145907.P14836144222557154769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133280 (A111333 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A145907.P14836144222557154769

namespace A145907

/-- `p?[A133280(A111333(n+1)-1)]` -/
def P14836144222557154769.Spec : Prop :=
  ∀ n, P14836144222557154769.a n = A145907 (n + 1)

end A145907

/-! ## A145907.P16647035543059575618

`p?[A001222(2*n+1)*A133280(n)]`
-/

namespace A145907.P16647035543059575618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (2 * n + 1) * A133280 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A145907.P16647035543059575618

namespace A145907

/-- `p?[A001222(2*n+1)*A133280(n)]` -/
def P16647035543059575618.Spec : Prop :=
  ∀ n, P16647035543059575618.a n = A145907 (n + 1)

end A145907

/-! ## A145907.P10061354006542059438

`p?[A020639(2*n+1)-A002024(n+1)]`
-/

namespace A145907.P10061354006542059438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (2 * n + 1) - A002024 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A145907.P10061354006542059438

namespace A145907

/-- `p?[A020639(2*n+1)-A002024(n+1)]` -/
def P10061354006542059438.Spec : Prop :=
  ∀ n, P10061354006542059438.a n = A145907 (n + 1)

end A145907

/-! ## A145907.P16176420891184732015

`p?[A133280(A066182(A111333(n+1)))]`
-/

namespace A145907.P16176420891184732015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133280 (A066182 (A111333 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A145907.P16176420891184732015

namespace A145907

/-- `p?[A133280(A066182(A111333(n+1)))]` -/
def P16176420891184732015.Spec : Prop :=
  ∀ n, P16176420891184732015.a n = A145907 (n + 1)

end A145907

/-! ## A145907.P16103534456432925601

`p?[A133280(A249122(A008578(n+1)))]`
-/

namespace A145907.P16103534456432925601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133280 (A249122 (A008578 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A145907.P16103534456432925601

namespace A145907

/-- `p?[A133280(A249122(A008578(n+1)))]` -/
def P16103534456432925601.Spec : Prop :=
  ∀ n, P16103534456432925601.a n = A145907 (n + 1)

end A145907

/-! ## A145907.P8594415252266789414

`p?[A065091(n+1)-A002024(A006254(n+1))]`
-/

namespace A145907.P8594415252266789414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1) - A002024 (A006254 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A145907.P8594415252266789414

namespace A145907

/-- `p?[A065091(n+1)-A002024(A006254(n+1))]` -/
def P8594415252266789414.Spec : Prop :=
  ∀ n, P8594415252266789414.a n = A145907 (n + 1)

end A145907

/-! ## A145907.P10493394093020475630

`p?[A006093(n+1)-A003056(A102781(n+1))]`
-/

namespace A145907.P10493394093020475630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1) - A003056 (A102781 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A145907.P10493394093020475630

namespace A145907

/-- `p?[A006093(n+1)-A003056(A102781(n+1))]` -/
def P10493394093020475630.Spec : Prop :=
  ∀ n, P10493394093020475630.a n = A145907 (n + 1)

end A145907

/-! ## A145907.P15280331306477972912

`p?[A000040(n+1)-A002024(A111333(n+1))]`
-/

namespace A145907.P15280331306477972912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - A002024 (A111333 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A145907.P15280331306477972912

namespace A145907

/-- `p?[A000040(n+1)-A002024(A111333(n+1))]` -/
def P15280331306477972912.Spec : Prop :=
  ∀ n, P15280331306477972912.a n = A145907 (n + 1)

end A145907

/-! ## A145907.P9090747970196274444

`p?[A040976(n+1)-A002024(A111333(n+1))+2]`
-/

namespace A145907.P9090747970196274444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (n + 1) - A002024 (A111333 (n + 1)).toNat + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A145907.P9090747970196274444

namespace A145907

/-- `p?[A040976(n+1)-A002024(A111333(n+1))+2]` -/
def P9090747970196274444.Spec : Prop :=
  ∀ n, P9090747970196274444.a n = A145907 (n + 1)

end A145907

/-! ## A145907.P1725557348549596125

`p?[A056847(p?[2*n+1])]`
-/

namespace A145907.P1725557348549596125
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056847 (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A145907.P1725557348549596125

namespace A145907

/-- `p?[A056847(p?[2*n+1])]` -/
def P1725557348549596125.Spec : Prop :=
  ∀ n, P1725557348549596125.a n = A145907 (n + 1)

end A145907

/-! ## A145907.P1938901357041120316

`p?[A056847(A000040(n+1))]`
-/

namespace A145907.P1938901357041120316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056847 (A000040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A145907.P1938901357041120316

namespace A145907

/-- `p?[A056847(A000040(n+1))]` -/
def P1938901357041120316.Spec : Prop :=
  ∀ n, P1938901357041120316.a n = A145907 (n + 1)

end A145907

/-! ## A145907.P16811944871835943199

`p?[A056847(A008578(n+1))]`
-/

namespace A145907.P16811944871835943199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056847 (A008578 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A145907.P16811944871835943199

namespace A145907

/-- `p?[A056847(A008578(n+1))]` -/
def P16811944871835943199.Spec : Prop :=
  ∀ n, P16811944871835943199.a n = A145907 (n + 1)

end A145907

/-! ## A145907.P9180201645946143099

`p?[A056847(A065091(n+1))]`
-/

namespace A145907.P9180201645946143099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056847 (A065091 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A145907.P9180201645946143099

namespace A145907

/-- `p?[A056847(A065091(n+1))]` -/
def P9180201645946143099.Spec : Prop :=
  ∀ n, P9180201645946143099.a n = A145907 (n + 1)

end A145907

/-! ## A145907.P14299006152397045532

`p?[A056847(A028815(n)-1)]`
-/

namespace A145907.P14299006152397045532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056847 (A028815 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A145907.P14299006152397045532

namespace A145907

/-- `p?[A056847(A028815(n)-1)]` -/
def P14299006152397045532.Spec : Prop :=
  ∀ n, P14299006152397045532.a n = A145907 (n + 1)

end A145907

/-! ## A145907.P17393448369016450115

`p?[A056847(A006093(n+1)+1)]`
-/

namespace A145907.P17393448369016450115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056847 (A006093 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A145907.P17393448369016450115

namespace A145907

/-- `p?[A056847(A006093(n+1)+1)]` -/
def P17393448369016450115.Spec : Prop :=
  ∀ n, P17393448369016450115.a n = A145907 (n + 1)

end A145907

/-! ## A145907.P17694430757080687169

`p?[A056847(A008864(n+1)-1)]`
-/

namespace A145907.P17694430757080687169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056847 (A008864 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A145907.P17694430757080687169

namespace A145907

/-- `p?[A056847(A008864(n+1)-1)]` -/
def P17694430757080687169.Spec : Prop :=
  ∀ n, P17694430757080687169.a n = A145907 (n + 1)

end A145907

/-! ## A145907.P5029931327689304563

`p?[A056847(A055670(n+1)-1)]`
-/

namespace A145907.P5029931327689304563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056847 (A055670 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A145907.P5029931327689304563

namespace A145907

/-- `p?[A056847(A055670(n+1)-1)]` -/
def P5029931327689304563.Spec : Prop :=
  ∀ n, P5029931327689304563.a n = A145907 (n + 1)

end A145907

/-! ## A145907.P7856321597718142538

`p?[A014963(2*n+1)-A002024(n+1)]`
-/

namespace A145907.P7856321597718142538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (2 * n + 1) - A002024 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A145907.P7856321597718142538

namespace A145907

/-- `p?[A014963(2*n+1)-A002024(n+1)]` -/
def P7856321597718142538.Spec : Prop :=
  ∀ n, P7856321597718142538.a n = A145907 (n + 1)

end A145907

/-!
# A145908: Primes p such that p + floor(sqrt(p)) OR p + ceiling(sqrt(p)) is also prime.

The programs for A145908, there is no canonical definition to state claims against.
-/

/-! ## A145908.P2407605109846069515

`p?[A056847(A093515(n+1))]`
-/

namespace A145908.P2407605109846069515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056847 (A093515 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A145908.P2407605109846069515

/-! ## A145908.P13273757444013250728

`p?[A056847(n)*A078772(n+1)]`
-/

namespace A145908.P13273757444013250728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056847 n * A078772 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A145908.P13273757444013250728

/-! ## A145908.P10577235506264311578

`p?[A056847(n)*A175078(n+1)]`
-/

namespace A145908.P10577235506264311578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056847 n * A175078 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A145908.P10577235506264311578

/-! ## A145908.P692375271263951005

`∪[A086085(n+1), A145907(n+1)]`
-/

namespace A145908.P692375271263951005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086085 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145907 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A145908.P692375271263951005

/-! ## A145908.P16487862125362755834

`p?[(n+1)*A001222(A256244(n+1)+n)]`
-/

namespace A145908.P16487862125362755834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A001222 (A256244 (n + 1) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A145908.P16487862125362755834

/-! ## A145908.P11672510981773168593

`p?[(n+1-A000194(n+1))*A121561(n+1)]`
-/

namespace A145908.P11672510981773168593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) - A000194 (n + 1)) * A121561 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A145908.P11672510981773168593

/-! ## A145908.P8158713011334121913

`record[A074399(A056847(A162753(n)))]`
-/

namespace A145908.P8158713011334121913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074399 (A056847 (A162753 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A145908.P8158713011334121913

/-! ## A145908.P17693107907337523961

`record[A074399(A056847(A045344(n+1)))]`
-/

namespace A145908.P17693107907337523961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074399 (A056847 (A045344 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A145908.P17693107907337523961

/-! ## A145908.P878261406036833261

`record[A074399(A056847(A074399(n+1)))]`
-/

namespace A145908.P878261406036833261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074399 (A056847 (A074399 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A145908.P878261406036833261

/-!
# A145909: First 6-fold decimation of A061039. First bisection of A144454.

The programs for A145909, the canonical program `A145909.P5620417034163878499` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A145909 has offset 0).

The definition of A145909 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A145909.P18263539140980428621

`A061039(6*n+3)`
-/

namespace A145909.P18263539140980428621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061039 (6 * n + 3)

end

end A145909.P18263539140980428621

namespace A145909

/-- `A061039(6*n+3)` -/
def P18263539140980428621.Spec : Prop :=
  ∀ n, P18263539140980428621.a n = A145909 n

end A145909

/-! ## A145909.P15111710836914965383

`8*lcm(9, ∑[n])/9`
-/

namespace A145909.P15111710836914965383
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  8 * ((Nat.lcm 9 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / 9)

end

end A145909.P15111710836914965383

namespace A145909

/-- `8*lcm(9, ∑[n])/9` -/
def P15111710836914965383.Spec : Prop :=
  ∀ n, P15111710836914965383.a n = (A145909 n : ℚ)

end A145909

/-! ## A145909.P8368298322344732031

`∑[8*n]/gcd(9, ∑[n])`
-/

namespace A145909.P8368298322344732031
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (Nat.gcd 9 (∑ j ∈ Finset.range (n + 1), f2 j) : ℚ)

end

end A145909.P8368298322344732031

namespace A145909

/-- `∑[8*n]/gcd(9, ∑[n])` -/
def P8368298322344732031.Spec : Prop :=
  ∀ n, P8368298322344732031.a n = (A145909 n : ℚ)

end A145909

/-! ## A145909.P5620417034163878499

`8*A145911(n)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A145909

/-- `8*A145911(n)` -/
def P5620417034163878499.Spec : Prop :=
  ∀ n, P5620417034163878499.a n = A145909 n

theorem P5620417034163878499.correct : P5620417034163878499.Spec := by
  intro n
  simp only [A145909]

end A145909

/-! ## A145909.P8345947137349067157

`2*A106610(2*n)*A106610(n+1)`
-/

namespace A145909.P8345947137349067157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A106610 (2 * n) * A106610 (n + 1))

end

end A145909.P8345947137349067157

namespace A145909

/-- `2*A106610(2*n)*A106610(n+1)` -/
def P8345947137349067157.Spec : Prop :=
  ∀ n, P8345947137349067157.a n = A145909 n

end A145909

/-! ## A145909.P15303571093318286901

`A068217(A068217(n+1))*A106610(n)`
-/

namespace A145909.P15303571093318286901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068217 (A068217 (n + 1)).toNat * A106610 n

end

end A145909.P15303571093318286901

namespace A145909

/-- `A068217(A068217(n+1))*A106610(n)` -/
def P15303571093318286901.Spec : Prop :=
  ∀ n, P15303571093318286901.a n = A145909 n

end A145909

/-! ## A145909.P1957246806603317638

`A051176(A051176(n))*A068217(A068217(n+1))`
-/

namespace A145909.P1957246806603317638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051176 (A051176 n).toNat * A068217 (A068217 (n + 1)).toNat

end

end A145909.P1957246806603317638

namespace A145909

/-- `A051176(A051176(n))*A068217(A068217(n+1))` -/
def P1957246806603317638.Spec : Prop :=
  ∀ n, P1957246806603317638.a n = A145909 n

end A145909

/-! ## A145909.P9832348511021436615

`A144454(Δ[n²])`
-/

namespace A145909.P9832348511021436615
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144454 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A145909.P9832348511021436615

namespace A145909

/-- `A144454(Δ[n²])` -/
def P9832348511021436615.Spec : Prop :=
  ∀ n, P9832348511021436615.a n = A145909 n

end A145909

/-! ## A145909.P5641344417734917683

`lcm(2, A144454(2*n+1))`
-/

namespace A145909.P5641344417734917683
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A144454 (2 * n + 1))

end

end A145909.P5641344417734917683

namespace A145909

/-- `lcm(2, A144454(2*n+1))` -/
def P5641344417734917683.Spec : Prop :=
  ∀ n, (P5641344417734917683.a n : ℤ) = A145909 n

end A145909

/-! ## A145909.P16280904012982561321

`A005563(2*n)/A154629(2*n)`
-/

namespace A145909.P16280904012982561321
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005563 (2 * n) : ℚ) / (A154629 (2 * n) : ℚ)

end

end A145909.P16280904012982561321

namespace A145909

/-- `A005563(2*n)/A154629(2*n)` -/
def P16280904012982561321.Spec : Prop :=
  ∀ n, P16280904012982561321.a n = (A145909 n : ℚ)

end A145909

/-! ## A145909.P5596289934073963232

`A147651(2*n)/A147674(2*n)`
-/

namespace A145909.P5596289934073963232
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A147651 (2 * n) : ℚ) / (A147674 (2 * n) : ℚ)

end

end A145909.P5596289934073963232

namespace A145909

/-- `A147651(2*n)/A147674(2*n)` -/
def P5596289934073963232.Spec : Prop :=
  ∀ n, P5596289934073963232.a n = (A145909 n : ℚ)

end A145909

/-! ## A145909.P14229591680820859889

`gcd(2, A258812(2*(n+1)))*A144454(2*n+1)`
-/

namespace A145909.P14229591680820859889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 2 (A258812 (2 * (n + 1))) : ℤ) * A144454 (2 * n + 1)

end

end A145909.P14229591680820859889

namespace A145909

/-- `gcd(2, A258812(2*(n+1)))*A144454(2*n+1)` -/
def P14229591680820859889.Spec : Prop :=
  ∀ n, P14229591680820859889.a n = A145909 n

end A145909

/-! ## A145909.P4850507677056720933

`A144454(A005408(n))%A147651(n+4)`
-/

namespace A145909.P4850507677056720933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A144454 (A005408 n).toNat) (A147651 (n + 4))

end

end A145909.P4850507677056720933

namespace A145909

/-- `A144454(A005408(n))%A147651(n+4)` -/
def P4850507677056720933.Spec : Prop :=
  ∀ n, P4850507677056720933.a n = A145909 n

end A145909

/-! ## A145909.P4521461412188825785

`A144448(3*n+1)`
-/

namespace A145909.P4521461412188825785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144448 (3 * n + 1)

end

end A145909.P4521461412188825785

namespace A145909

/-- `A144448(3*n+1)` -/
def P4521461412188825785.Spec : Prop :=
  ∀ n, P4521461412188825785.a n = A145909 n

end A145909

/-! ## A145909.P2429444466420951167

`A008590(A145911(n))`
-/

namespace A145909.P2429444466420951167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008590 (A145911 n).toNat

end

end A145909.P2429444466420951167

namespace A145909

/-- `A008590(A145911(n))` -/
def P2429444466420951167.Spec : Prop :=
  ∀ n, P2429444466420951167.a n = A145909 n

end A145909

/-! ## A145909.P5576548740408672783

`A008590(A178978(3*n))`
-/

namespace A145909.P5576548740408672783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008590 (A178978 (3 * n)).toNat

end

end A145909.P5576548740408672783

namespace A145909

/-- `A008590(A178978(3*n))` -/
def P5576548740408672783.Spec : Prop :=
  ∀ n, P5576548740408672783.a n = A145909 n

end A145909

/-! ## A145909.P16461371068955333695

`filter[A144454(n+1), A121262(#)]`
-/

namespace A145909.P16461371068955333695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144454 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A121262 (f1 j).toNat = 1) n)

end

end A145909.P16461371068955333695

namespace A145909

/-- `filter[A144454(n+1), A121262(#)]` -/
def P16461371068955333695.Spec : Prop :=
  ∀ n, P16461371068955333695.a n = A145909 n

end A145909

/-!
# A145910: a(n) = (1 + 3*n)*(4 + 3*n)/2.

The programs for A145910, the canonical program `A145910.P9456808907708549636` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A145910 has offset 0).

The definition of A145910 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(1+3*n)*(4+3*n)/2` (program `A145910.P9902949962054664999`, by `A145910.P9902949962054664999.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A145910.P16119508667096053701

`ogf((2+8x-x^2)/(1-3x+3x^2-x^3))`
-/

namespace A145910.P16119508667096053701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 8, -1] [1, -3, 3, -1] n

end

end A145910.P16119508667096053701

namespace A145910

/-- `ogf((2+8x-x^2)/(1-3x+3x^2-x^3))` -/
def P16119508667096053701.Spec : Prop :=
  ∀ n, P16119508667096053701.a n = A145910 n

end A145910

/-! ## A145910.P9902949962054664999

`(1+3*n)*(4+3*n)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A145910.P9902949962054664999
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((1 + 3 * n) * (4 + 3 * n) : ℚ) / 2

end

end A145910.P9902949962054664999

namespace A145910

/-- `(1+3*n)*(4+3*n)/2` -/
def P9902949962054664999.Spec : Prop :=
  ∀ n, P9902949962054664999.a n = (A145910 n : ℚ)

theorem P9902949962054664999.correct : P9902949962054664999.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A145910, Nat.add_sub_cancel, A145910.P9902949962054664999.a, A145910.P9456808907708549636.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A145910, Nat.add_sub_cancel, A145910.P9902949962054664999.a, A145910.P9456808907708549636.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A145910

/-! ## A145910.P9456808907708549636

`a(n-1)+3*(3*n+1)` with `a(0)=2`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A145910

/-- `a(n-1)+3*(3*n+1)` -/
def P9456808907708549636.Spec : Prop :=
  ∀ n, (P9456808907708549636.a n : ℤ) = A145910 n

theorem P9456808907708549636.correct : P9456808907708549636.Spec := by
  intro n
  simp only [A145910]

end A145910

/-! ## A145910.P13541467684815457346

`C(3*(n+1), 2)-1`
-/

namespace A145910.P13541467684815457346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (3 * (n + 1)) 2 : ℤ) - 1

end

end A145910.P13541467684815457346

namespace A145910

/-- `C(3*(n+1), 2)-1` -/
def P13541467684815457346.Spec : Prop :=
  ∀ n, P13541467684815457346.a n = A145910 n

end A145910

/-! ## A145910.P9749172200165136739

`∑[a(n-1)+9]` with `a(0)=2, a(1)=12`
-/

namespace A145910.P9749172200165136739
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 12] fun n f1 =>
  f1 (n - 1) + 9

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A145910.P9749172200165136739

namespace A145910

/-- `∑[a(n-1)+9]` -/
def P9749172200165136739.Spec : Prop :=
  ∀ n, (P9749172200165136739.a n : ℤ) = A145910 n

end A145910

/-! ## A145910.P10609334464083835570

`∑[ogf((2+8x-x^2)/(1-2x+x^2))]`
-/

namespace A145910.P10609334464083835570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 8, -1] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A145910.P10609334464083835570

namespace A145910

/-- `∑[ogf((2+8x-x^2)/(1-2x+x^2))]` -/
def P10609334464083835570.Spec : Prop :=
  ∀ n, P10609334464083835570.a n = A145910 n

end A145910

/-! ## A145910.P13340305764051791486

`A081271(n)+1`
-/

namespace A145910.P13340305764051791486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081271 n + 1

end

end A145910.P13340305764051791486

namespace A145910

/-- `A081271(n)+1` -/
def P13340305764051791486.Spec : Prop :=
  ∀ n, P13340305764051791486.a n = A145910 n

end A145910

/-! ## A145910.P9412016077882664083

`A129863(n)-4`
-/

namespace A145910.P9412016077882664083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129863 n - 4

end

end A145910.P9412016077882664083

namespace A145910

/-- `A129863(n)-4` -/
def P9412016077882664083.Spec : Prop :=
  ∀ n, P9412016077882664083.a n = A145910 n

end A145910

/-! ## A145910.P11749799315351849731

`∑[A017197(n)]-1`
-/

namespace A145910.P11749799315351849731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017197 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A145910.P11749799315351849731

namespace A145910

/-- `∑[A017197(n)]-1` -/
def P11749799315351849731.Spec : Prop :=
  ∀ n, P11749799315351849731.a n = A145910 n

end A145910

/-! ## A145910.P15704603963295350896

`∑[A017185(n)]+n`
-/

namespace A145910.P15704603963295350896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017185 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A145910.P15704603963295350896

namespace A145910

/-- `∑[A017185(n)]+n` -/
def P15704603963295350896.Spec : Prop :=
  ∀ n, P15704603963295350896.a n = A145910 n

end A145910

/-! ## A145910.P14629516092989945144

`A062741(n+1)-1`
-/

namespace A145910.P14629516092989945144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062741 (n + 1) - 1

end

end A145910.P14629516092989945144

namespace A145910

/-- `A062741(n+1)-1` -/
def P14629516092989945144.Spec : Prop :=
  ∀ n, P14629516092989945144.a n = A145910 n

end A145910

/-! ## A145910.P11775216444552590654

`A081268(n)+1+n`
-/

namespace A145910.P11775216444552590654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081268 n + 1 + (n : ℤ)

end

end A145910.P11775216444552590654

namespace A145910

/-- `A081268(n)+1+n` -/
def P11775216444552590654.Spec : Prop :=
  ∀ n, P11775216444552590654.a n = A145910 n

end A145910

/-! ## A145910.P6429876277422219733

`A064226(n)-1+n`
-/

namespace A145910.P6429876277422219733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064226 n - 1 + (n : ℤ)

end

end A145910.P6429876277422219733

namespace A145910

/-- `A064226(n)-1+n` -/
def P6429876277422219733.Spec : Prop :=
  ∀ n, P6429876277422219733.a n = A145910 n

end A145910

/-! ## A145910.P4572032755317926323

`A081270(n)-(n+1)`
-/

namespace A145910.P4572032755317926323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081270 n - (n + 1 : ℤ)

end

end A145910.P4572032755317926323

namespace A145910

/-- `A081270(n)-(n+1)` -/
def P4572032755317926323.Spec : Prop :=
  ∀ n, P4572032755317926323.a n = A145910 n

end A145910

/-! ## A145910.P16339209052385837331

`A062123(n)+3*n`
-/

namespace A145910.P16339209052385837331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062123 n + (3 * n : ℤ)

end

end A145910.P16339209052385837331

namespace A145910

/-- `A062123(n)+3*n` -/
def P16339209052385837331.Spec : Prop :=
  ∀ n, P16339209052385837331.a n = A145910 n

end A145910

/-! ## A145910.P14822688449602473506

`∑[A017413(n)]-n²`
-/

namespace A145910.P14822688449602473506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017413 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n ^ 2 : ℤ)

end

end A145910.P14822688449602473506

namespace A145910

/-- `∑[A017413(n)]-n²` -/
def P14822688449602473506.Spec : Prop :=
  ∀ n, P14822688449602473506.a n = A145910 n

end A145910

/-! ## A145910.P17722995815166663554

`3*A115067(n+1)+2`
-/

namespace A145910.P17722995815166663554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A115067 (n + 1) + 2

end

end A145910.P17722995815166663554

namespace A145910

/-- `3*A115067(n+1)+2` -/
def P17722995815166663554.Spec : Prop :=
  ∀ n, P17722995815166663554.a n = A145910 n

end A145910

/-! ## A145910.P3889623004399224220

`A000217(3*n+2)-1`
-/

namespace A145910.P3889623004399224220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (3 * n + 2) - 1

end

end A145910.P3889623004399224220

namespace A145910

/-- `A000217(3*n+2)-1` -/
def P3889623004399224220.Spec : Prop :=
  ∀ n, P3889623004399224220.a n = A145910 n

end A145910

/-! ## A145910.P14485667312525704562

`A016993(n)+A006137(n)`
-/

namespace A145910.P14485667312525704562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016993 n + A006137 n

end

end A145910.P14485667312525704562

namespace A145910

/-- `A016993(n)+A006137(n)` -/
def P14485667312525704562.Spec : Prop :=
  ∀ n, P14485667312525704562.a n = A145910 n

end A145910

/-! ## A145910.P16495220575043688753

`A022267(n)+A017005(n)`
-/

namespace A145910.P16495220575043688753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022267 n + A017005 n

end

end A145910.P16495220575043688753

namespace A145910

/-- `A022267(n)+A017005(n)` -/
def P16495220575043688753.Spec : Prop :=
  ∀ n, P16495220575043688753.a n = A145910 n

end A145910

/-!
# A145911: a(n) = A145909(n)/8.

The programs for A145911, the canonical program `A145911.P8626122521049352813` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A145911 has offset 0).

The definition of A145911 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A145911.P1584909693292548031

`A145909(n)/8`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A145911.P1584909693292548031
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A145909 n : ℚ) / 8

end

end A145911.P1584909693292548031

namespace A145911

/-- `A145909(n)/8` -/
def P1584909693292548031.Spec : Prop :=
  ∀ n, P1584909693292548031.a n = (A145911 n : ℚ)

theorem P1584909693292548031.correct : P1584909693292548031.Spec := by
  intro n
  simp only [A145911, Nat.add_sub_cancel, A145911.P1584909693292548031.a, A145911.P8626122521049352813.a, A106619, A106619.P2793271891897277727.a, A145909, A145909.P5620417034163878499.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A145911

/-! ## A145911.P8626122521049352813

`A106619(n)*A106619(n+1)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A145911

/-- `A106619(n)*A106619(n+1)` -/
def P8626122521049352813.Spec : Prop :=
  ∀ n, P8626122521049352813.a n = A145911 n

theorem P8626122521049352813.correct : P8626122521049352813.Spec := by
  intro n
  simp only [A145911]

end A145911

/-! ## A145911.P7599896439578634918

`lcm(9, ∑[n])/9`
-/

namespace A145911.P7599896439578634918
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 9 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / 9

end

end A145911.P7599896439578634918

namespace A145911

/-- `lcm(9, ∑[n])/9` -/
def P7599896439578634918.Spec : Prop :=
  ∀ n, P7599896439578634918.a n = (A145911 n : ℚ)

end A145911

/-! ## A145911.P2665038378058838513

`∑[n]/gcd(9, ∑[n])`
-/

namespace A145911.P2665038378058838513
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (Nat.gcd 9 (∑ j ∈ Finset.range (n + 1), f2 j) : ℚ)

end

end A145911.P2665038378058838513

namespace A145911

/-- `∑[n]/gcd(9, ∑[n])` -/
def P2665038378058838513.Spec : Prop :=
  ∀ n, P2665038378058838513.a n = (A145911 n : ℚ)

end A145911

/-! ## A145911.P387386906283394689

`gcd(A000217(n), A145909(n))`
-/

namespace A145911.P387386906283394689
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000217 n) (A145909 n)

end

end A145911.P387386906283394689

namespace A145911

/-- `gcd(A000217(n), A145909(n))` -/
def P387386906283394689.Spec : Prop :=
  ∀ n, (P387386906283394689.a n : ℤ) = A145911 n

end A145911

/-! ## A145911.P1515436792539825356

`A144454(Δ[n²])/8`
-/

namespace A145911.P1515436792539825356
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144454 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 8

end

end A145911.P1515436792539825356

namespace A145911

/-- `A144454(Δ[n²])/8` -/
def P1515436792539825356.Spec : Prop :=
  ∀ n, P1515436792539825356.a n = (A145911 n : ℚ)

end A145911

/-! ## A145911.P18287272631269296036

`∑[n]/A154629(2*n)`
-/

namespace A145911.P18287272631269296036
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (A154629 (2 * n) : ℚ)

end

end A145911.P18287272631269296036

namespace A145911

/-- `∑[n]/A154629(2*n)` -/
def P18287272631269296036.Spec : Prop :=
  ∀ n, P18287272631269296036.a n = (A145911 n : ℚ)

end A145911

/-! ## A145911.P10617996112048213720

`gcd(A016061(n), A144454(2*n+1))`
-/

namespace A145911.P10617996112048213720
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A016061 n) (A144454 (2 * n + 1))

end

end A145911.P10617996112048213720

namespace A145911

/-- `gcd(A016061(n), A144454(2*n+1))` -/
def P10617996112048213720.Spec : Prop :=
  ∀ n, (P10617996112048213720.a n : ℤ) = A145911 n

end A145911

/-! ## A145911.P3665878201433035913

`A178978(3*n)`
-/

namespace A145911.P3665878201433035913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178978 (3 * n)

end

end A145911.P3665878201433035913

namespace A145911

/-- `A178978(3*n)` -/
def P3665878201433035913.Spec : Prop :=
  ∀ n, P3665878201433035913.a n = A145911 n

end A145911

/-! ## A145911.P7376055310821734446

`A061039(3*(2*n+1))/8`
-/

namespace A145911.P7376055310821734446
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061039 (3 * (2 * n + 1)) : ℚ) / 8

end

end A145911.P7376055310821734446

namespace A145911

/-- `A061039(3*(2*n+1))/8` -/
def P7376055310821734446.Spec : Prop :=
  ∀ n, P7376055310821734446.a n = (A145911 n : ℚ)

end A145911

/-! ## A145911.P10139844247220866014

`A061045(A017617(n)-2)/2`
-/

namespace A145911.P10139844247220866014
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061045 (A017617 n - 2).toNat : ℚ) / 2

end

end A145911.P10139844247220866014

namespace A145911

/-- `A061045(A017617(n)-2)/2` -/
def P10139844247220866014.Spec : Prop :=
  ∀ n, P10139844247220866014.a n = (A145911 n : ℚ)

end A145911

/-! ## A145911.P16829198758253973466

`∑[n]/A109012(∑[n])`
-/

namespace A145911.P16829198758253973466
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (A109012 (∑ j ∈ Finset.range (n + 1), f2 j) : ℚ)

end

end A145911.P16829198758253973466

namespace A145911

/-- `∑[n]/A109012(∑[n])` -/
def P16829198758253973466.Spec : Prop :=
  ∀ n, P16829198758253973466.a n = (A145911 n : ℚ)

end A145911

/-! ## A145911.P18415029285163476906

`A106610(∑[n])`
-/

namespace A145911.P18415029285163476906
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106610 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A145911.P18415029285163476906

namespace A145911

/-- `A106610(∑[n])` -/
def P18415029285163476906.Spec : Prop :=
  ∀ n, P18415029285163476906.a n = A145911 n

end A145911

/-! ## A145911.P17421766480207725018

`A106610(n²+n)/2`
-/

namespace A145911.P17421766480207725018
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A106610 (n ^ 2 + n) : ℚ) / 2

end

end A145911.P17421766480207725018

namespace A145911

/-- `A106610(n²+n)/2` -/
def P17421766480207725018.Spec : Prop :=
  ∀ n, P17421766480207725018.a n = (A145911 n : ℚ)

end A145911

/-! ## A145911.P10814976894635943842

`A051176(A051176(∑[n]))`
-/

namespace A145911.P10814976894635943842
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051176 (A051176 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A145911.P10814976894635943842

namespace A145911

/-- `A051176(A051176(∑[n]))` -/
def P10814976894635943842.Spec : Prop :=
  ∀ n, P10814976894635943842.a n = A145911 n

end A145911

/-! ## A145911.P13959698670555172568

`A106619(∑[2*n])`
-/

namespace A145911.P13959698670555172568
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106619 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A145911.P13959698670555172568

namespace A145911

/-- `A106619(∑[2*n])` -/
def P13959698670555172568.Spec : Prop :=
  ∀ n, P13959698670555172568.a n = A145911 n

end A145911

/-! ## A145911.P3909556386141805877

`A026741(A106610(n²+n))`
-/

namespace A145911.P3909556386141805877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A106610 (n ^ 2 + n)).toNat

end

end A145911.P3909556386141805877

namespace A145911

/-- `A026741(A106610(n²+n))` -/
def P3909556386141805877.Spec : Prop :=
  ∀ n, P3909556386141805877.a n = A145911 n

end A145911

/-! ## A145911.P3657350079273507016

`A185727(A051176(n²+n))`
-/

namespace A145911.P3657350079273507016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185727 (A051176 (n ^ 2 + n)).toNat

end

end A145911.P3657350079273507016

namespace A145911

/-- `A185727(A051176(n²+n))` -/
def P3657350079273507016.Spec : Prop :=
  ∀ n, P3657350079273507016.a n = A145911 n

end A145911

/-! ## A145911.P15443172924142026092

`A185727(A051176(n+1)*A051176(n))`
-/

namespace A145911.P15443172924142026092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185727 (A051176 (n + 1) * A051176 n).toNat

end

end A145911.P15443172924142026092

namespace A145911

/-- `A185727(A051176(n+1)*A051176(n))` -/
def P15443172924142026092.Spec : Prop :=
  ∀ n, P15443172924142026092.a n = A145911 n

end A145911

/-! ## A145911.P2240199540668669443

`A051176(A185727(A002378(A004526(2*n))))`
-/

namespace A145911.P2240199540668669443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051176 (A185727 (A002378 (A004526 (2 * n)).toNat).toNat).toNat

end

end A145911.P2240199540668669443

namespace A145911

/-- `A051176(A185727(A002378(A004526(2*n))))` -/
def P2240199540668669443.Spec : Prop :=
  ∀ n, P2240199540668669443.a n = A145911 n

end A145911

/-!
# A145912: Prime Leonardo numbers.

The programs for A145912, there is no canonical definition to state claims against.
-/

/-! ## A145912.P3859411389326833226

`A001595(A228145(n+1)-1)`
-/

namespace A145912.P3859411389326833226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001595 (A228145 (n + 1) - 1).toNat

end

end A145912.P3859411389326833226

/-! ## A145912.P1265179751538058778

`∩[A257110(n+1), A272440(n+1)]`
-/

namespace A145912.P1265179751538058778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257110 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272440 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A145912.P1265179751538058778

/-! ## A145912.P2917850226331201728

`p?[ceil(ϕ*a(n-1))]` with `a(0)=3`
-/

namespace A145912.P2917850226331201728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f1 =>
  ⌈Real.goldenRatio * (f1 (n - 1) : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A145912.P2917850226331201728

/-!
# A145913: a(n) = smallest integer k such that 1/log((1 + k)^(1/k)) is bigger than n.

The programs for A145913, there is no canonical definition to state claims against.
-/

/-! ## A145913.P7927705646020827535

`A005041(∑[A276581(A068601(n+1))])`
-/

namespace A145913.P7927705646020827535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276581 (A068601 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005041 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A145913.P7927705646020827535

/-! ## A145913.P12330047639873225287

`A259361(A070977(n+1)*A113127(n))`
-/

namespace A145913.P12330047639873225287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259361 (A070977 (n + 1) * A113127 n).toNat

end

end A145913.P12330047639873225287

/-! ## A145913.P7842235940649339713

`A000196(A070977(n+1)*A113127(n)-A311296(n))`
-/

namespace A145913.P7842235940649339713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A070977 (n + 1) * A113127 n - A311296 n).toNat

end

end A145913.P7842235940649339713

/-! ## A145913.P9136494958294808995

`floor(∑[log(A329327(3*n+2))])`
-/

namespace A145913.P9136494958294808995
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.log (A329327 (3 * n + 2) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A145913.P9136494958294808995

/-! ## A145913.P6640873239698910489

`round(log2(A136224(n)))+1`
-/

namespace A145913.P6640873239698910489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.logb 2 (A136224 n : ℝ)) + 1

end

end A145913.P6640873239698910489

/-!
# A145914: a(n) is the smallest integer k such that log(1/log((1+k)^(1/k))) > n.

The programs for A145914, there is no canonical definition to state claims against.
-/

/-! ## A145914.P6509826860715114014

`A159805(A004798(n+1))+A004798(2*(n+1))`
-/

namespace A145914.P6509826860715114014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159805 (A004798 (n + 1)).toNat + A004798 (2 * (n + 1))

end

end A145914.P6509826860715114014

/-!
# A145915: Even composites in A145832.

The programs for A145915, there is no canonical definition to state claims against.
-/

/-! ## A145915.P8987656747338412572

`filter[A145832(n+1), A059841(#)]`
-/

namespace A145915.P8987656747338412572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145832 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A059841 (f1 j).toNat = 1) n)

end

end A145915.P8987656747338412572

/-! ## A145915.P2717368199965297202

`filter[A145832(n+1), A120325(#)]`
-/

namespace A145915.P2717368199965297202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145832 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A120325 (f1 j).toNat = 1) n)

end

end A145915.P2717368199965297202

/-! ## A145915.P1449358728111249481

`filter[A145832(n+1), A135528(#)]`
-/

namespace A145915.P1449358728111249481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145832 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A135528 (f1 j).toNat = 1) n)

end

end A145915.P1449358728111249481

/-! ## A145915.P16924018895301769645

`filter[A145832(n+1), A260393(#)]`
-/

namespace A145915.P16924018895301769645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145832 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A260393 (f1 j).toNat = 1) n)

end

end A145915.P16924018895301769645

/-! ## A145915.P17041525777982207774

`filter[A145832(n+1), A266591(#)]`
-/

namespace A145915.P17041525777982207774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145832 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266591 (f1 j).toNat = 1) n)

end

end A145915.P17041525777982207774

/-!
# A145917: Triangle read by rows: to get n-th row, start with -4n and successively add 5, 7, 9, 11, 13, ... until reaching a square.

The programs for A145917, the canonical program `A145917.P16742270102917720148` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A145917 has offset 0).

The definition of A145917 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A145917.P13406797021858238382

`col(n)²-4*(row(n)-col(n))`
-/

namespace A145917.P13406797021858238382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.triCol n ^ 2 : ℤ) - 4 * ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ))

end

end A145917.P13406797021858238382

namespace A145917

/-- `col(n)²-4*(row(n)-col(n))` -/
def P13406797021858238382.Spec : Prop :=
  ∀ n, P13406797021858238382.a n = A145917 n

end A145917

/-! ## A145917.P16742270102917720148

`(A002260(n+1)-1)²-4*(A004736(n+1)-1)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A145917

/-- `(A002260(n+1)-1)²-4*(A004736(n+1)-1)` -/
def P16742270102917720148.Spec : Prop :=
  ∀ n, P16742270102917720148.a n = A145917 n

theorem P16742270102917720148.correct : P16742270102917720148.Spec := by
  intro n
  simp only [A145917]

end A145917

/-! ## A145917.P8004962122939419411

`A002262(n)²-4*A025581(n)`
-/

namespace A145917.P8004962122939419411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n ^ 2 - 4 * A025581 n

end

end A145917.P8004962122939419411

namespace A145917

/-- `A002262(n)²-4*A025581(n)` -/
def P8004962122939419411.Spec : Prop :=
  ∀ n, P8004962122939419411.a n = A145917 n

end A145917

/-! ## A145917.P6676814933942291389

`A143844(n)-4*log2(A130321(n))`
-/

namespace A145917.P6676814933942291389
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A143844 n : ℝ) - 4 * Real.logb 2 (A130321 n : ℝ)

end

end A145917.P6676814933942291389

namespace A145917

/-- `A143844(n)-4*log2(A130321(n))` -/
def P6676814933942291389.Spec : Prop :=
  ∀ n, P6676814933942291389.a n = (A145917 n : ℝ)

end A145917

/-! ## A145917.P4642909832871493847

`A002262(n)²-A008586(A025581(n))`
-/

namespace A145917.P4642909832871493847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n ^ 2 - A008586 (A025581 n).toNat

end

end A145917.P4642909832871493847

namespace A145917

/-- `A002262(n)²-A008586(A025581(n))` -/
def P4642909832871493847.Spec : Prop :=
  ∀ n, P4642909832871493847.a n = A145917 n

end A145917

/-! ## A145917.P3034433153372081946

`A002061(A002260(n+1))-A209304(n+1)`
-/

namespace A145917.P3034433153372081946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002061 (A002260 (n + 1)).toNat - A209304 (n + 1)

end

end A145917.P3034433153372081946

namespace A145917

/-- `A002061(A002260(n+1))-A209304(n+1)` -/
def P3034433153372081946.Spec : Prop :=
  ∀ n, P3034433153372081946.a n = A145917 n

end A145917

/-! ## A145917.P997147296408149489

`A133819(n+1)-A004273(A128076(n+1))`
-/

namespace A145917.P997147296408149489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133819 (n + 1) - A004273 (A128076 (n + 1)).toNat

end

end A145917.P997147296408149489

namespace A145917

/-- `A133819(n+1)-A004273(A128076(n+1))` -/
def P997147296408149489.Spec : Prop :=
  ∀ n, P997147296408149489.a n = A145917 n

end A145917

/-! ## A145917.P5113630060355112983

`A133819(n+1)-A099375(A292564(n))`
-/

namespace A145917.P5113630060355112983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133819 (n + 1) - A099375 (A292564 n).toNat

end

end A145917.P5113630060355112983

namespace A145917

/-- `A133819(n+1)-A099375(A292564(n))` -/
def P5113630060355112983.Spec : Prop :=
  ∀ n, P5113630060355112983.a n = A145917 n

end A145917

/-!
# A145918: Subset of Sophie Germain primes generated by an iterative process starting from 11.

The programs for A145918, there is no canonical definition to state claims against.
-/

/-! ## A145918.P740548661699433490

`A059455(lt[A025157(3*n+1), A248366(n+1)])`
-/

namespace A145918.P740548661699433490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025157 (3 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248366 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059455 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A145918.P740548661699433490

/-! ## A145918.P1344936509015178420

`p?[A028242(A297026(n+8))]`
-/

namespace A145918.P1344936509015178420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (A297026 (n + 8)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A145918.P1344936509015178420

/-! ## A145918.P12672591269509981700

`∩[A002515(n+1), A192583(n+1)]`
-/

namespace A145918.P12672591269509981700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002515 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192583 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A145918.P12672591269509981700

/-!
# A145919: A000332(n) = a(n)*(3*a(n) - 1)/2.

The programs for A145919, the canonical program `A145919.P16652087053808909611` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A145919 has offset 0).

The definition of A145919 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A145919.P16652087053808909611

`ogf((x^4+2x^5-3x^6+2x^7+x^8)/(1-3x^3+3x^6-x^9))`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A145919

/-- `ogf((x^4+2x^5-3x^6+2x^7+x^8)/(1-3x^3+3x^6-x^9))` -/
def P16652087053808909611.Spec : Prop :=
  ∀ n, P16652087053808909611.a n = A145919 n

theorem P16652087053808909611.correct : P16652087053808909611.Spec := by
  intro n
  simp only [A145919]

end A145919

/-! ## A145919.P15946671593212236039

`(A001840(n)-n)*Δ[A008611(n)]`
-/

namespace A145919.P15946671593212236039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001840 n - (n : ℤ)) * (f1 (n + 1) - f1 n)

end

end A145919.P15946671593212236039

namespace A145919

/-- `(A001840(n)-n)*Δ[A008611(n)]` -/
def P15946671593212236039.Spec : Prop :=
  ∀ n, P15946671593212236039.a n = A145919 n

end A145919

/-! ## A145919.P5277190802171538707

`(A033638(n)-A001399(n))*Δ[A008611(n)]`
-/

namespace A145919.P5277190802171538707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A033638 n - A001399 n) * (f1 (n + 1) - f1 n)

end

end A145919.P5277190802171538707

namespace A145919

/-- `(A033638(n)-A001399(n))*Δ[A008611(n)]` -/
def P5277190802171538707.Spec : Prop :=
  ∀ n, P5277190802171538707.a n = A145919 n

end A145919

/-! ## A145919.P724703485329316325

`(A130518(n)-A002264(n))*Δ[A008611(n)]`
-/

namespace A145919.P724703485329316325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A130518 n - A002264 n) * (f1 (n + 1) - f1 n)

end

end A145919.P724703485329316325

namespace A145919

/-- `(A130518(n)-A002264(n))*Δ[A008611(n)]` -/
def P724703485329316325.Spec : Prop :=
  ∀ n, P724703485329316325.a n = A145919 n

end A145919

/-! ## A145919.P11711555155506832337

`(A211540(n+1)+A211540(n))*Δ[A008611(n)]`
-/

namespace A145919.P11711555155506832337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A211540 (n + 1) + A211540 n) * (f1 (n + 1) - f1 n)

end

end A145919.P11711555155506832337

namespace A145919

/-- `(A211540(n+1)+A211540(n))*Δ[A008611(n)]` -/
def P11711555155506832337.Spec : Prop :=
  ∀ n, P11711555155506832337.a n = A145919 n

end A145919

/-! ## A145919.P12755283499680586722

`(A002620(n)+1-A001399(n))*Δ[A008611(n)]`
-/

namespace A145919.P12755283499680586722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002620 n + (1 - A001399 n)) * (f1 (n + 1) - f1 n)

end

end A145919.P12755283499680586722

namespace A145919

/-- `(A002620(n)+1-A001399(n))*Δ[A008611(n)]` -/
def P12755283499680586722.Spec : Prop :=
  ∀ n, P12755283499680586722.a n = A145919 n

end A145919

/-! ## A145919.P17079835623536399652

`Δ[A008611(n)]*A058937(n+2)`
-/

namespace A145919.P17079835623536399652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A058937 (n + 2)

end

end A145919.P17079835623536399652

namespace A145919

/-- `Δ[A008611(n)]*A058937(n+2)` -/
def P17079835623536399652.Spec : Prop :=
  ∀ n, P17079835623536399652.a n = A145919 n

end A145919

/-! ## A145919.P4705435739876132672

`(A211540(n+1)+A211540(n))/A131561(n+2)`
-/

namespace A145919.P4705435739876132672
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A211540 (n + 1) + A211540 n : ℚ) / (A131561 (n + 2) : ℚ)

end

end A145919.P4705435739876132672

namespace A145919

/-- `(A211540(n+1)+A211540(n))/A131561(n+2)` -/
def P4705435739876132672.Spec : Prop :=
  ∀ n, P4705435739876132672.a n = (A145919 n : ℚ)

end A145919

/-! ## A145919.P16147246031109198494

`(A008611(2*n+1)-A008611(2*n))*A058937(n+2)`
-/

namespace A145919.P16147246031109198494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A008611 (2 * n + 1) - A008611 (2 * n)) * A058937 (n + 2)

end

end A145919.P16147246031109198494

namespace A145919

/-- `(A008611(2*n+1)-A008611(2*n))*A058937(n+2)` -/
def P16147246031109198494.Spec : Prop :=
  ∀ n, P16147246031109198494.a n = A145919 n

end A145919

/-! ## A145919.P7604507276867553828

`1-A135997(A152949(n+1)-n)`
-/

namespace A145919.P7604507276867553828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A135997 (A152949 (n + 1) - (n : ℤ)).toNat

end

end A145919.P7604507276867553828

namespace A145919

/-- `1-A135997(A152949(n+1)-n)` -/
def P7604507276867553828.Spec : Prop :=
  ∀ n, P7604507276867553828.a n = A145919 n

end A145919

/-! ## A145919.P314611106743022673

`(A002264(A000217(n+1))-n)*Δ[A008611(n)]`
-/

namespace A145919.P314611106743022673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002264 (A000217 (n + 1)).toNat - (n : ℤ)) * (f1 (n + 1) - f1 n)

end

end A145919.P314611106743022673

namespace A145919

/-- `(A002264(A000217(n+1))-n)*Δ[A008611(n)]` -/
def P314611106743022673.Spec : Prop :=
  ∀ n, P314611106743022673.a n = A145919 n

end A145919

/-! ## A145919.P2333169531894254869

`A038608(A143978(n+1))%A034856(n+1)`
-/

namespace A145919.P2333169531894254869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A038608 (A143978 (n + 1)).toNat) (A034856 (n + 1))

end

end A145919.P2333169531894254869

namespace A145919

/-- `A038608(A143978(n+1))%A034856(n+1)` -/
def P2333169531894254869.Spec : Prop :=
  ∀ n, P2333169531894254869.a n = A145919 n

end A145919

/-!
# A145920: List of numbers that are both pentagonal (A000326) and binomial coefficients C(n,4) (A000332).

The programs for A145920, the canonical program `A145920.P10791807580197822183` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A145920 has offset 1).

The definition of A145920 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A145920.P10791807580197822183

`A000326(A001318(n))`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A145920

/-- `A000326(A001318(n))` -/
def P10791807580197822183.Spec : Prop :=
  ∀ n, P10791807580197822183.a n = A145920 (n + 1)

theorem P10791807580197822183.correct : P10791807580197822183.Spec := by
  intro n
  simp only [A145920, Nat.add_sub_cancel]

end A145920

/-! ## A145920.P2026678406619244213

`record[C(lcm(3, n)/3, 4)]`
-/

namespace A145920.P2026678406619244213
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.roundAway ((Nat.lcm 3 n : ℚ) / 3)).toNat 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A145920.P2026678406619244213

namespace A145920

/-- `record[C(lcm(3, n)/3, 4)]` -/
def P2026678406619244213.Spec : Prop :=
  ∀ n, (P2026678406619244213.a n : ℤ) = A145920 (n + 1)

end A145920

/-! ## A145920.P8313449670560014000

`record[C(n/gcd(3, n), 4)]`
-/

namespace A145920.P8313449670560014000
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.roundAway ((n : ℚ) / (Nat.gcd 3 n : ℚ))).toNat 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A145920.P8313449670560014000

namespace A145920

/-- `record[C(n/gcd(3, n), 4)]` -/
def P8313449670560014000.Spec : Prop :=
  ∀ n, (P8313449670560014000.a n : ℤ) = A145920 (n + 1)

end A145920

/-! ## A145920.P7625593065430800932

`record[C(n*n²%3, 4)]`
-/

namespace A145920.P7625593065430800932
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n * (n ^ 2 % 3)) 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A145920.P7625593065430800932

namespace A145920

/-- `record[C(n*n²%3, 4)]` -/
def P7625593065430800932.Spec : Prop :=
  ∀ n, (P7625593065430800932.a n : ℤ) = A145920 (n + 1)

end A145920

/-! ## A145920.P16083575671256617728

`C(comp[3*n+1]+2, 4)`
-/

namespace A145920.P16083575671256617728
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 2) 4

end

end A145920.P16083575671256617728

namespace A145920

/-- `C(comp[3*n+1]+2, 4)` -/
def P16083575671256617728.Spec : Prop :=
  ∀ n, (P16083575671256617728.a n : ℤ) = A145920 (n + 1)

end A145920

/-! ## A145920.P8547471345766051973

`record[C((n+1)/3^val(n+1, 3), 4)]`
-/

namespace A145920.P8547471345766051973
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (3 ^ SequenceMachineLib.valuation (n + 1) 3 : ℚ))).toNat 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A145920.P8547471345766051973

namespace A145920

/-- `record[C((n+1)/3^val(n+1, 3), 4)]` -/
def P8547471345766051973.Spec : Prop :=
  ∀ n, (P8547471345766051973.a n : ℤ) = A145920 (n + 1)

end A145920

/-! ## A145920.P15911680412798071673

`ogf((x+4x^2+26x^3+19x^4+26x^5+4x^6+x^7)/(1-x-4x^2+4x^3+6x^4-6x^5-4x^6+4x^7+x^8-x^9))`
-/

namespace A145920.P15911680412798071673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 4, 26, 19, 26, 4, 1] [1, -1, -4, 4, 6, -6, -4, 4, 1, -1] n

end

end A145920.P15911680412798071673

namespace A145920

/-- `ogf((x+4x^2+26x^3+19x^4+26x^5+4x^6+x^7)/(1-x-4x^2+4x^3+6x^4-6x^5-4x^6+4x^7+x^8-x^9))` -/
def P15911680412798071673.Spec : Prop :=
  ∀ n, P15911680412798071673.a n = A145920 (n + 1)

end A145920

/-! ## A145920.P11483942543308598150

`record[C(A101545(n+1), 4)]`
-/

namespace A145920.P11483942543308598150
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A101545 (n + 1)).toNat 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A145920.P11483942543308598150

namespace A145920

/-- `record[C(A101545(n+1), 4)]` -/
def P11483942543308598150.Spec : Prop :=
  ∀ n, (P11483942543308598150.a n : ℤ) = A145920 (n + 1)

end A145920

/-! ## A145920.P14693084214837154356

`record[C(A038502(n+1), 4)]`
-/

namespace A145920.P14693084214837154356
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A038502 (n + 1)).toNat 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A145920.P14693084214837154356

namespace A145920

/-- `record[C(A038502(n+1), 4)]` -/
def P14693084214837154356.Spec : Prop :=
  ∀ n, (P14693084214837154356.a n : ℤ) = A145920 (n + 1)

end A145920

/-! ## A145920.P12754344371666040451

`record[C(A143097(n+1), 4)]`
-/

namespace A145920.P12754344371666040451
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A143097 (n + 1)).toNat 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A145920.P12754344371666040451

namespace A145920

/-- `record[C(A143097(n+1), 4)]` -/
def P12754344371666040451.Spec : Prop :=
  ∀ n, (P12754344371666040451.a n : ℤ) = A145920 (n + 1)

end A145920

/-! ## A145920.P4019316461208974684

`record[C((n+1)/A038500(n+1), 4)]`
-/

namespace A145920.P4019316461208974684
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A038500 (n + 1) : ℚ))).toNat 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A145920.P4019316461208974684

namespace A145920

/-- `record[C((n+1)/A038500(n+1), 4)]` -/
def P4019316461208974684.Spec : Prop :=
  ∀ n, (P4019316461208974684.a n : ℤ) = A145920 (n + 1)

end A145920

/-! ## A145920.P13400805599324501985

`record[C((n+1)/A065331(A000265(n+1)), 4)]`
-/

namespace A145920.P13400805599324501985
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A065331 (A000265 (n + 1)).toNat : ℚ))).toNat 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A145920.P13400805599324501985

namespace A145920

/-- `record[C((n+1)/A065331(A000265(n+1)), 4)]` -/
def P13400805599324501985.Spec : Prop :=
  ∀ n, (P13400805599324501985.a n : ℤ) = A145920 (n + 1)

end A145920

/-! ## A145920.P5077940146786226504

`A000332(A001651(n+2))`
-/

namespace A145920.P5077940146786226504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000332 (A001651 (n + 2)).toNat

end

end A145920.P5077940146786226504

namespace A145920

/-- `A000332(A001651(n+2))` -/
def P5077940146786226504.Spec : Prop :=
  ∀ n, P5077940146786226504.a n = A145920 (n + 1)

end A145920

/-! ## A145920.P9200724223476977209

`A000332(A097482(n+2))`
-/

namespace A145920.P9200724223476977209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000332 (A097482 (n + 2)).toNat

end

end A145920.P9200724223476977209

namespace A145920

/-- `A000332(A097482(n+2))` -/
def P9200724223476977209.Spec : Prop :=
  ∀ n, P9200724223476977209.a n = A145920 (n + 1)

end A145920

/-! ## A145920.P11586222999272915635

`A000332(A032766(n+1)+1)`
-/

namespace A145920.P11586222999272915635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000332 (A032766 (n + 1) + 1).toNat

end

end A145920.P11586222999272915635

namespace A145920

/-- `A000332(A032766(n+1)+1)` -/
def P11586222999272915635.Spec : Prop :=
  ∀ n, P11586222999272915635.a n = A145920 (n + 1)

end A145920

/-! ## A145920.P2166567859112664230

`A000332(A047215(n+1)-n)`
-/

namespace A145920.P2166567859112664230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000332 (A047215 (n + 1) - (n : ℤ)).toNat

end

end A145920.P2166567859112664230

namespace A145920

/-- `A000332(A047215(n+1)-n)` -/
def P2166567859112664230.Spec : Prop :=
  ∀ n, P2166567859112664230.a n = A145920 (n + 1)

end A145920

/-! ## A145920.P4700615482233280904

`A000332(A065033(n)+2+n)`
-/

namespace A145920.P4700615482233280904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000332 (A065033 n + 2 + (n : ℤ)).toNat

end

end A145920.P4700615482233280904

namespace A145920

/-- `A000332(A065033(n)+2+n)` -/
def P4700615482233280904.Spec : Prop :=
  ∀ n, P4700615482233280904.a n = A145920 (n + 1)

end A145920

/-! ## A145920.P2641068867610843447

`A000332(A110654(n)+2+n)`
-/

namespace A145920.P2641068867610843447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000332 (A110654 n + 2 + (n : ℤ)).toNat

end

end A145920.P2641068867610843447

namespace A145920

/-- `A000332(A110654(n)+2+n)` -/
def P2641068867610843447.Spec : Prop :=
  ∀ n, P2641068867610843447.a n = A145920 (n + 1)

end A145920

/-! ## A145920.P14421014039353479452

`A000332(A008619(n+3)+n)`
-/

namespace A145920.P14421014039353479452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000332 (A008619 (n + 3) + (n : ℤ)).toNat

end

end A145920.P14421014039353479452

namespace A145920

/-- `A000332(A008619(n+3)+n)` -/
def P14421014039353479452.Spec : Prop :=
  ∀ n, P14421014039353479452.a n = A145920 (n + 1)

end A145920

/-! ## A145920.P16360941031692805749

`A000332(A004526(n+1)+n+2)`
-/

namespace A145920.P16360941031692805749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000332 (A004526 (n + 1) + (n + 2 : ℤ)).toNat

end

end A145920.P16360941031692805749

namespace A145920

/-- `A000332(A004526(n+1)+n+2)` -/
def P16360941031692805749.Spec : Prop :=
  ∀ n, P16360941031692805749.a n = A145920 (n + 1)

end A145920

/-!
# A145921: Numerator of n*B(n,1+1/n), where B(.,.) is the Beta Function.

The programs for A145921, there is no canonical definition to state claims against.
-/

/-! ## A145921.P8328106139125593386

`A394507(∑[n+1])`
-/

namespace A145921.P8328106139125593386
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394507 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A145921.P8328106139125593386

/-! ## A145921.P798736164390131832

`A255812(2*(n+1)²)`
-/

namespace A145921.P798736164390131832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255812 (2 * (n + 1) ^ 2)

end

end A145921.P798736164390131832

/-! ## A145921.P13833511764683699636

`(n+1)^(n+1)*A051696(n+1)`
-/

namespace A145921.P13833511764683699636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ (n + 1) : ℤ) * A051696 (n + 1)

end

end A145921.P13833511764683699636

/-! ## A145921.P10993253441413196582

`(n+1)^(n+2)*A062763(n+1)`
-/

namespace A145921.P10993253441413196582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ (n + 2) : ℤ) * A062763 (n + 1)

end

end A145921.P10993253441413196582

/-! ## A145921.P2268407738181467610

`∏{p}[n+1, gcd(#^n, (n+1)!)]²*A036505(n)`
-/

namespace A145921.P2268407738181467610
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∏ p ∈ Nat.primeFactors (f1 n), Nat.gcd (p ^ n) (Nat.factorial (n + 1))) ^ 2 : ℕ) : ℤ) * A036505 n

end

end A145921.P2268407738181467610

/-!
# A145922: Weight distribution of [71,36,13] binary quadratic-residue (or QR) code.

The programs for A145922, there is no canonical definition to state claims against.
-/

/-! ## A145922.P3697300517457220345

`A145981(A236851(n))`
-/

namespace A145922.P3697300517457220345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145981 (A236851 n).toNat

end

end A145922.P3697300517457220345

/-! ## A145922.P2834994661436093683

`A145981(A258009(n))`
-/

namespace A145922.P2834994661436093683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145981 (A258009 n).toNat

end

end A145922.P2834994661436093683

/-! ## A145922.P1140156921053806219

`A145981(A385109(n))`
-/

namespace A145922.P1140156921053806219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145981 (A385109 n).toNat

end

end A145922.P1140156921053806219

/-! ## A145922.P8704609385089946690

`A145981(A002837(n+1))`
-/

namespace A145922.P8704609385089946690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145981 (A002837 (n + 1)).toNat

end

end A145922.P8704609385089946690

/-! ## A145922.P7427332234578405873

`A145981(A056561(n+1))`
-/

namespace A145922.P7427332234578405873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145981 (A056561 (n + 1)).toNat

end

end A145922.P7427332234578405873

/-!
# A145923: Second bisection of A061041: a(n) = A061041(2n+1) = (2*n+1)*(2*n+9).

The programs for A145923, the canonical program `A145923.P7531917158050139915` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A145923 has offset 0).

The definition of A145923 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2*n+1)*(2*n+9)` (program `A145923.P7531917158050139915`, by `A145923.P7531917158050139915.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A145923.P15997564044714823469

`(2*n+5)²-16`
-/

namespace A145923.P15997564044714823469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n + 5) ^ 2 : ℤ) - 16

end

end A145923.P15997564044714823469

namespace A145923

/-- `(2*n+5)²-16` -/
def P15997564044714823469.Spec : Prop :=
  ∀ n, P15997564044714823469.a n = A145923 n

theorem P15997564044714823469.correct : P15997564044714823469.Spec := by
  intro n
  simp only [A145923, Nat.add_sub_cancel, A145923.P15997564044714823469.a, A145923.P7531917158050139915.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A145923

/-! ## A145923.P13983416615937808804

`ogf((9+6x-7x^2)/(1-3x+3x^2-x^3))`
-/

namespace A145923.P13983416615937808804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [9, 6, -7] [1, -3, 3, -1] n

end

end A145923.P13983416615937808804

namespace A145923

/-- `ogf((9+6x-7x^2)/(1-3x+3x^2-x^3))` -/
def P13983416615937808804.Spec : Prop :=
  ∀ n, P13983416615937808804.a n = A145923 n

end A145923

/-! ## A145923.P7531917158050139915

`(2*n+1)*(2*n+9)`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A145923

/-- `(2*n+1)*(2*n+9)` -/
def P7531917158050139915.Spec : Prop :=
  ∀ n, (P7531917158050139915.a n : ℤ) = A145923 n

theorem P7531917158050139915.correct : P7531917158050139915.Spec := by
  intro n
  simp only [A145923]

end A145923

/-! ## A145923.P7017093122923925648

`A061041(2*n+1+4)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A145923.P7017093122923925648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061041 (2 * n + 1 + 4)

end

end A145923.P7017093122923925648

namespace A145923

/-- `A061041(2*n+1+4)` -/
def P7017093122923925648.Spec : Prop :=
  ∀ n, P7017093122923925648.a n = A145923 n

end A145923

/-! ## A145923.P17744916158330291940

`∑[a(n-1)+8]` with `a(0)=9, a(1)=24`
-/

namespace A145923.P17744916158330291940
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [9, 24] fun n f1 =>
  f1 (n - 1) + 8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A145923.P17744916158330291940

namespace A145923

/-- `∑[a(n-1)+8]` -/
def P17744916158330291940.Spec : Prop :=
  ∀ n, (P17744916158330291940.a n : ℤ) = A145923 n

end A145923

/-! ## A145923.P13352705276837915834

`record[(2*n-5)²-16]`
-/

namespace A145923.P13352705276837915834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n : ℤ) - 5) ^ 2 - 16

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A145923.P13352705276837915834

namespace A145923

/-- `record[(2*n-5)²-16]` -/
def P13352705276837915834.Spec : Prop :=
  ∀ n, P13352705276837915834.a n = A145923 n

end A145923

/-! ## A145923.P12586213782024634424

`lcm(2*n+9, Δ[n²])`
-/

namespace A145923.P12586213782024634424
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (2 * n + 9 : ℤ) ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A145923.P12586213782024634424

namespace A145923

/-- `lcm(2*n+9, Δ[n²])` -/
def P12586213782024634424.Spec : Prop :=
  ∀ n, (P12586213782024634424.a n : ℤ) = A145923 n

end A145923

/-! ## A145923.P4320107328428591710

`∑[ogf((9+6x-7x^2)/(1-2x+x^2))]`
-/

namespace A145923.P4320107328428591710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [9, 6, -7] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A145923.P4320107328428591710

namespace A145923

/-- `∑[ogf((9+6x-7x^2)/(1-2x+x^2))]` -/
def P4320107328428591710.Spec : Prop :=
  ∀ n, P4320107328428591710.a n = A145923 n

end A145923

/-! ## A145923.P10902500668680766976

`xor(5, lcm(4, (n+2)²+n-1))`
-/

namespace A145923.P10902500668680766976
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 5 (Int.lcm 4 (((n + 2) ^ 2 : ℤ) + ((n : ℤ) - 1)))

end

end A145923.P10902500668680766976

namespace A145923

/-- `xor(5, lcm(4, (n+2)²+n-1))` -/
def P10902500668680766976.Spec : Prop :=
  ∀ n, (P10902500668680766976.a n : ℤ) = A145923 n

end A145923

/-! ## A145923.P10231112533503869752

`A216108(n+1)/(3*(n+1))`
-/

namespace A145923.P10231112533503869752
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A216108 (n + 1) : ℚ) / (3 * (n + 1) : ℚ)

end

end A145923.P10231112533503869752

namespace A145923

/-- `A216108(n+1)/(3*(n+1))` -/
def P10231112533503869752.Spec : Prop :=
  ∀ n, P10231112533503869752.a n = (A145923 n : ℚ)

theorem P10231112533503869752.correct : P10231112533503869752.Spec := by
  intro n
  simp only [A145923, Nat.add_sub_cancel, A145923.P10231112533503869752.a, A145923.P7531917158050139915.a, A216108, A216108.P7944404653769243130.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A145923

/-! ## A145923.P1086119614113560342

`A158765(n+1)%A154106(n)`
-/

namespace A145923.P1086119614113560342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A158765 (n + 1)) (A154106 n)

end

end A145923.P1086119614113560342

namespace A145923

/-- `A158765(n+1)%A154106(n)` -/
def P1086119614113560342.Spec : Prop :=
  ∀ n, P1086119614113560342.a n = A145923 n

end A145923

/-! ## A145923.P15523726128872237252

`A028566(Δ[n²])`
-/

namespace A145923.P15523726128872237252
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028566 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A145923.P15523726128872237252

namespace A145923

/-- `A028566(Δ[n²])` -/
def P15523726128872237252.Spec : Prop :=
  ∀ n, P15523726128872237252.a n = A145923 n

end A145923

/-! ## A145923.P294736899697911105

`A174680(2*n+5)`
-/

namespace A145923.P294736899697911105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174680 (2 * n + 5)

end

end A145923.P294736899697911105

namespace A145923

/-- `A174680(2*n+5)` -/
def P294736899697911105.Spec : Prop :=
  ∀ n, P294736899697911105.a n = A145923 n

end A145923

/-! ## A145923.P15111627859898561155

`A225948(2*n+5)`
-/

namespace A145923.P15111627859898561155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225948 (2 * n + 5)

end

end A145923.P15111627859898561155

namespace A145923

/-- `A225948(2*n+5)` -/
def P15111627859898561155.Spec : Prop :=
  ∀ n, P15111627859898561155.a n = A145923 n

end A145923

/-! ## A145923.P16431407776123035251

`A277384(2*n+5)`
-/

namespace A145923.P16431407776123035251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277384 (2 * n + 5)

end

end A145923.P16431407776123035251

namespace A145923

/-- `A277384(2*n+5)` -/
def P16431407776123035251.Spec : Prop :=
  ∀ n, P16431407776123035251.a n = A145923 n

end A145923

/-! ## A145923.P2398217015621324386

`Δ[A106058(2*(n+1))]`
-/

namespace A145923.P2398217015621324386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106058 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A145923.P2398217015621324386

namespace A145923

/-- `Δ[A106058(2*(n+1))]` -/
def P2398217015621324386.Spec : Prop :=
  ∀ n, P2398217015621324386.a n = A145923 n

end A145923

/-! ## A145923.P9246183994671505886

`∩[2*n+1, A028566(n)]`
-/

namespace A145923.P9246183994671505886
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028566 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A145923.P9246183994671505886

namespace A145923

/-- `∩[2*n+1, A028566(n)]` -/
def P9246183994671505886.Spec : Prop :=
  ∀ n, (P9246183994671505886.a n : ℤ) = A145923 n

end A145923

/-! ## A145923.P13055390440569973682

`filter[A028566(n+1), A373978(#)]`
-/

namespace A145923.P13055390440569973682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028566 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373978 (f1 j).toNat = 1) n)

end

end A145923.P13055390440569973682

namespace A145923

/-- `filter[A028566(n+1), A373978(#)]` -/
def P13055390440569973682.Spec : Prop :=
  ∀ n, P13055390440569973682.a n = A145923 n

end A145923

/-! ## A145923.P229258082292001427

`filter[A028566(n+1), A379952(#)]`
-/

namespace A145923.P229258082292001427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028566 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379952 (f1 j).toNat = 1) n)

end

end A145923.P229258082292001427

namespace A145923

/-- `filter[A028566(n+1), A379952(#)]` -/
def P229258082292001427.Spec : Prop :=
  ∀ n, P229258082292001427.a n = A145923 n

end A145923

/-! ## A145923.P14066124374529004742

`A017077(∑[n+1]+n)`
-/

namespace A145923.P14066124374529004742
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017077 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A145923.P14066124374529004742

namespace A145923

/-- `A017077(∑[n+1]+n)` -/
def P14066124374529004742.Spec : Prop :=
  ∀ n, P14066124374529004742.a n = A145923 n

end A145923

/-!
# A145924: Last digit of A145923(n).

The programs for A145924, the canonical program `A145924.P1002684281326479896` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A145924 has offset 0).

The definition of A145924 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A145924.P1002684281326479896

`ogf((9+3x+5x^2+5x^3+3x^4)/(1-x^5))`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A145924

/-- `ogf((9+3x+5x^2+5x^3+3x^4)/(1-x^5))` -/
def P1002684281326479896.Spec : Prop :=
  ∀ n, P1002684281326479896.a n = A145924 n

theorem P1002684281326479896.correct : P1002684281326479896.Spec := by
  intro n
  simp only [A145924]

end A145924

/-!
# A145925: Number of n X n binary arrays with all ones connected only in a tee 1,1 1,2 1,3 2,2 in any orientation.

The programs for A145925, there is no canonical definition to state claims against.
-/

/-! ## A145925.P3549448978225620517

`A145927(2*(n+2))`
-/

namespace A145925.P3549448978225620517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145927 (2 * (n + 2))

end

end A145925.P3549448978225620517

/-! ## A145925.P1141742867550123074

`gcd(A000038(n), A145927(A110725(n+2)))`
-/

namespace A145925.P1141742867550123074
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A145927 (A110725 (n + 2)).toNat)

end

end A145925.P1141742867550123074

/-! ## A145925.P8638675894889793407

`A145927(A110725(n+2))+A000007(A168249(n+1))`
-/

namespace A145925.P8638675894889793407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145927 (A110725 (n + 2)).toNat + A000007 (A168249 (n + 1)).toNat

end

end A145925.P8638675894889793407

/-!
# A145928: Number of n X n binary arrays symmetric about main diagonal with all ones connected only in a tee 1,1 1,2 1,3 2,2 in any orientation.

The programs for A145928, there is no canonical definition to state claims against.
-/

/-! ## A145928.P9861146114913480592

`A145930(2*(n+2))`
-/

namespace A145928.P9861146114913480592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145930 (2 * (n + 2))

end

end A145928.P9861146114913480592

/-! ## A145928.P18092075494393058961

`A255934(A150907(n))`
-/

namespace A145928.P18092075494393058961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255934 (A150907 n).toNat

end

end A145928.P18092075494393058961

/-! ## A145928.P3490924673084764467

`A378379(A036717(n+1))`
-/

namespace A145928.P3490924673084764467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378379 (A036717 (n + 1)).toNat

end

end A145928.P3490924673084764467

/-!
# A145929: Number of n X n binary arrays symmetric about both diagonal and antidiagonal with all ones connected only in a tee 1,1 1,2 1,3 2,2 in any orientation.

The programs for A145929, there is no canonical definition to state claims against.
-/

/-! ## A145929.P14063971857670149841

`A383533(A365616(n+1))`
-/

namespace A145929.P14063971857670149841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383533 (A365616 (n + 1)).toNat

end

end A145929.P14063971857670149841

/-! ## A145929.P7715522776782281437

`A347442(∏[abs(or(1, -n))])`
-/

namespace A145929.P7715522776782281437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.lor 1 (-(n : ℤ))|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347442 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A145929.P7715522776782281437

/-! ## A145929.P12002409251147175263

`A271647(∏[∑[char[4*n]]])`
-/

namespace A145929.P12002409251147175263
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271647 (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A145929.P12002409251147175263

/-! ## A145929.P9459584525526535401

`A113619(A112837(n))`
-/

namespace A145929.P9459584525526535401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113619 (A112837 n).toNat

end

end A145929.P9459584525526535401

/-! ## A145929.P7421084084389564725

`A347442(A000246(n))`
-/

namespace A145929.P7421084084389564725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347442 (A000246 n).toNat

end

end A145929.P7421084084389564725

/-!
# A145930: Number of n X n binary arrays symmetric about the diagonal and under 90-degree rotation with all ones connected only in a tee 1,1 1,2 1,3 2,2 in any orientation.

The programs for A145930, there is no canonical definition to state claims against.
-/

/-! ## A145930.P2759897846059325835

`A004278(A309863(n)+A007384(n+1))`
-/

namespace A145930.P2759897846059325835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004278 (A309863 n + A007384 (n + 1)).toNat

end

end A145930.P2759897846059325835

/-! ## A145930.P17151857072958290618

`A186724(n+2)+A014378(A186725(2*n+1))`
-/

namespace A145930.P17151857072958290618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186724 (n + 2) + A014378 (A186725 (2 * n + 1)).toNat

end

end A145930.P17151857072958290618

/-!
# A145932: Number of n X n binary arrays symmetric under 180 degree rotation with all ones connected only in a tee 1,1 1,2 1,3 2,2 in any orientation.

The programs for A145932, there is no canonical definition to state claims against.
-/

/-! ## A145932.P8303806089326771092

`A289497(A129427(n))+A198314(n)`
-/

namespace A145932.P8303806089326771092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289497 (A129427 n).toNat + A198314 n

end

end A145932.P8303806089326771092

/-!
# A145933: Expansion of chi(-q^6) * chi(-q^10) / (chi(-q) * chi(-q^15)) in powers of q where chi() is a Ramanujan theta function.

The programs for A145933, there is no canonical definition to state claims against.
-/

/-! ## A145933.P14336600407247350134

`A143752(or(n, char[n!-1]))`
-/

namespace A145933.P14336600407247350134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143752 (Nat.lor n (if ∃ j, f1 j = (n : ℤ) then 1 else 0))

end

end A145933.P14336600407247350134

/-! ## A145933.P5346014065773413840

`A143752((2*n)%(n+1)+1)`
-/

namespace A145933.P5346014065773413840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143752 (2 * n % (n + 1) + 1)

end

end A145933.P5346014065773413840

/-! ## A145933.P9051243395375437172

`A143752(lcm(1-n, n-1)+1)`
-/

namespace A145933.P9051243395375437172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143752 (Int.lcm (1 - (n : ℤ)) ((n : ℤ) - 1) + 1)

end

end A145933.P9051243395375437172

/-! ## A145933.P1961824392982798185

`A143752(floor(n-n/(n+1))+1)`
-/

namespace A145933.P1961824392982798185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143752 (⌊(n : ℚ) - (n : ℚ) / (n + 1 : ℚ)⌋ + 1).toNat

end

end A145933.P1961824392982798185

/-! ## A145933.P8527955370065271143

`or(A000007(n), A143752(A065033(2*n)))`
-/

namespace A145933.P8527955370065271143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A143752 (A065033 (2 * n)).toNat)

end

end A145933.P8527955370065271143

/-! ## A145933.P16303445851173519833

`A001222(A107136(n+1))*A143752(A028310(n))`
-/

namespace A145933.P16303445851173519833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A107136 (n + 1)).toNat * A143752 (A028310 n).toNat

end

end A145933.P16303445851173519833

/-! ## A145933.P9259556001000661951

`A143752(A065033(2*n))%A033937(n)`
-/

namespace A145933.P9259556001000661951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A143752 (A065033 (2 * n)).toNat) (A033937 n)

end

end A145933.P9259556001000661951

/-! ## A145933.P11211586669813977155

`A143752(A028310(n))%A092739(n+1)`
-/

namespace A145933.P11211586669813977155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A143752 (A028310 n).toNat) (A092739 (n + 1))

end

end A145933.P11211586669813977155

/-!
# A145934: Expansion of 1/(1-x*(1-6*x)).

The programs for A145934, the canonical program `A145934.P16090286989509022449` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A145934 has offset 0).

The definition of A145934 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x+6x^2))` (program `A145934.P16090286989509022449`, by `A145934.P16090286989509022449.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A145934.P16090286989509022449

`ogf(1/(1-x+6x^2))`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A145934

/-- `ogf(1/(1-x+6x^2))` -/
def P16090286989509022449.Spec : Prop :=
  ∀ n, P16090286989509022449.a n = A145934 n

theorem P16090286989509022449.correct : P16090286989509022449.Spec := by
  intro n
  simp only [A145934]

end A145934

/-! ## A145934.P2470028331413809617

`a(n-1)-6*a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A145934.P2470028331413809617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) - 6 * a (n - 2)

end

end A145934.P2470028331413809617

namespace A145934

/-- `a(n-1)-6*a(n-2)` -/
def P2470028331413809617.Spec : Prop :=
  ∀ n, P2470028331413809617.a n = A145934 n

end A145934

/-! ## A145934.P13789705477816385202

`∑{#}[n, A109466(C(n+1, 2)+#)*6^(n-#)]`
-/

namespace A145934.P13789705477816385202
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (A109466 (Nat.choose (n + 1) 2 + k) : ℚ) * (6 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ)

end

end A145934.P13789705477816385202

namespace A145934

/-- `∑{#}[n, A109466(C(n+1, 2)+#)*6^(n-#)]` -/
def P13789705477816385202.Spec : Prop :=
  ∀ n, P13789705477816385202.a n = (A145934 n : ℚ)

end A145934

/-! ## A145934.P13748355509970921168

`∏[1-6/a(n-1)]` with `a(0)=1, a(1)=1`
-/

namespace A145934.P13748355509970921168
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  1 - 6 / f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A145934.P13748355509970921168

namespace A145934

/-- `∏[1-6/a(n-1)]` -/
def P13748355509970921168.Spec : Prop :=
  ∀ n, P13748355509970921168.a n = (A145934 n : ℚ)

end A145934

/-! ## A145934.P17171060570275668069

`∑{#}[n+1, (-1)^(n+1-#)*C(n+1, #)*A190962(#)]`
-/

namespace A145934.P17171060570275668069
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (-1 : ℚ) ^ ((n + 1 : ℤ) - (k : ℤ) : ℤ) * (Nat.choose (n + 1) k : ℚ) * (A190962 k : ℚ)

end

end A145934.P17171060570275668069

namespace A145934

/-- `∑{#}[n+1, (-1)^(n+1-#)*C(n+1, #)*A190962(#)]` -/
def P17171060570275668069.Spec : Prop :=
  ∀ n, P17171060570275668069.a n = (A145934 n : ℚ)

end A145934

/-!
# A145935: Number of n X n binary arrays with all ones connected only in a 2X2 elbow 1,1 1,2 2,1 in any orientation.

The programs for A145935, there is no canonical definition to state claims against.
-/

/-! ## A145935.P1453897879596420408

`A145937(2*(n+2))`
-/

namespace A145935.P1453897879596420408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145937 (2 * (n + 2))

end

end A145935.P1453897879596420408

/-! ## A145935.P2079063294515015272

`record[A145937(A099375(n))]`
-/

namespace A145935.P2079063294515015272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145937 (A099375 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A145935.P2079063294515015272

/-! ## A145935.P2855660441804090342

`record[A145937(A152271(n))]`
-/

namespace A145935.P2855660441804090342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145937 (A152271 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A145935.P2855660441804090342

/-! ## A145935.P5943631763516170514

`record[A145937(A000265(n+1))]`
-/

namespace A145935.P5943631763516170514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145937 (A000265 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A145935.P5943631763516170514

/-! ## A145935.P14466153081599624340

`record[A145937(A097306(n+1))]`
-/

namespace A145935.P14466153081599624340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145937 (A097306 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A145935.P14466153081599624340

/-!
# A145937: Number of n X n binary arrays symmetric under horizontal and vertical reflection with all ones connected only in a 2X2 elbow 1,1 1,2 2,1 in any orientation.

The programs for A145937, there is no canonical definition to state claims against.
-/

/-! ## A145937.P9145261079544583702

`A145935(A133223(n+1)-(n+1))`
-/

namespace A145937.P9145261079544583702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145935 (A133223 (n + 1) - (n + 1 : ℤ)).toNat

end

end A145937.P9145261079544583702

/-! ## A145937.P6394629702580315890

`A343228(7^A308767(n))`
-/

namespace A145937.P6394629702580315890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343228 (SequenceMachineLib.roundAway ((7 : ℚ) ^ (A308767 n : ℤ))).toNat

end

end A145937.P6394629702580315890

/-! ## A145937.P2142928287456554706

`A213835(A196186(floor(n/2)!))`
-/

namespace A145937.P2142928287456554706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213835 (A196186 (Nat.factorial ⌊(n : ℚ) / 2⌋.toNat)).toNat

end

end A145937.P2142928287456554706

/-!
# A145938: Number of n X n binary arrays symmetric about main diagonal with all ones connected only in a 2X2 elbow 1,1 1,2 2,1 in any orientation.

The programs for A145938, there is no canonical definition to state claims against.
-/

/-! ## A145938.P17233929717466127168

`A145940(2*n+3)`
-/

namespace A145938.P17233929717466127168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145940 (2 * n + 3)

end

end A145938.P17233929717466127168

/-! ## A145938.P10844307087215212455

`record[A145940(n^(n%2))]`
-/

namespace A145938.P10844307087215212455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145940 (n ^ (n % 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A145938.P10844307087215212455

/-! ## A145938.P3546221953372941099

`record[A145940(n+1)-char[1]]`
-/

namespace A145938.P3546221953372941099
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145940 (n + 1) - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A145938.P3546221953372941099

/-! ## A145938.P2391441018647885598

`record[A145940(gcd(n+1, ceil(n/2)))]`
-/

namespace A145938.P2391441018647885598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145940 (Int.gcd (n + 1 : ℤ) ⌈(n : ℚ) / 2⌉)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A145938.P2391441018647885598

/-! ## A145938.P17182238046408835157

`or(1, A145940(comp[(2*n)%or(6, n)]))`
-/

namespace A145938.P17182238046408835157
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n % Nat.lor 6 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A145940 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n))

end

end A145938.P17182238046408835157

/-!
# A145939: Number of n X n binary arrays symmetric about both diagonal and antidiagonal with all ones connected only in a 2 X 2 elbow 1,1 1,2 2,1 in any orientation.

The programs for A145939, there is no canonical definition to state claims against.
-/

/-! ## A145939.P17526036692642139109

`or(5, A180121(a(n-1)+n))` with `a(0)=1, a(1)=1, a(2)=3`
-/

namespace A145939.P17526036692642139109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 3] fun n a =>
  Int.lor 5 (A180121 (a (n - 1) + (n : ℤ)).toNat)

end

end A145939.P17526036692642139109

/-! ## A145939.P17056698663431159774

`A151747(A368567(n))`
-/

namespace A145939.P17056698663431159774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151747 (A368567 n).toNat

end

end A145939.P17056698663431159774

/-! ## A145939.P11942409502991793009

`A376953(n)+A232353(A077054(n))`
-/

namespace A145939.P11942409502991793009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376953 n + A232353 (A077054 n).toNat

end

end A145939.P11942409502991793009

/-!
# A145940: Number of n X n binary arrays symmetric about the diagonal and under 90-degree rotation with all ones connected only in a 2 X 2 elbow 1,1 1,2 2,1 in any orientation.

The programs for A145940, there is no canonical definition to state claims against.
-/

/-! ## A145940.P9716662427570667849

`A145938(∏{e}[A016116(n), #])`
-/

namespace A145940.P9716662427570667849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145938 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)

end

end A145940.P9716662427570667849

/-! ## A145940.P10814825141581882696

`A145938(A133223(n+1)-(n+1))`
-/

namespace A145940.P10814825141581882696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145938 (A133223 (n + 1) - (n + 1 : ℤ)).toNat

end

end A145940.P10814825141581882696

/-! ## A145940.P12235735556013333123

`A145938(A123108(2*A123108(n)))`
-/

namespace A145940.P12235735556013333123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145938 (A123108 (2 * A123108 n).toNat).toNat

end

end A145940.P12235735556013333123

/-! ## A145940.P5425434797833202795

`A145938(floor(n*a(comp[2*n+11]-n)/2))` with `a(0)=1, a(1)=1`
-/

namespace A145940.P5425434797833202795
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 11

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A145938 ⌊((n : ℤ) * a (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n - n) : ℚ) / 2⌋.toNat

end

end A145940.P5425434797833202795

/-! ## A145940.P8359720818966240812

`A092195(a(n-2))` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1`
-/

namespace A145940.P8359720818966240812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 1] fun n a =>
  A092195 (a (n - 2)).toNat

end

end A145940.P8359720818966240812

/-!
# A145941: Number of n X n binary arrays symmetric under 90-degree rotation with all ones connected only in a 2 X 2 elbow 1,1 1,2 2,1 in any orientation.

The programs for A145941, there is no canonical definition to state claims against.
-/

/-! ## A145941.P13779424033760726806

`A144968(xor(A121392(n), A121396(n)))`
-/

namespace A145941.P13779424033760726806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144968 (Int.xor (A121392 n) (A121396 n)).toNat

end

end A145941.P13779424033760726806

/-! ## A145941.P13577093485769134985

`A242789(A340738(n+1))-A000005(n+1)`
-/

namespace A145941.P13577093485769134985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242789 (A340738 (n + 1)).toNat - A000005 (n + 1)

end

end A145941.P13577093485769134985

/-!
# A145942: Number of n X n binary arrays symmetric under 180 degree rotation with all ones connected only in a 2X2 elbow 1,1 1,2 2,1 in any orientation.

The programs for A145942, there is no canonical definition to state claims against.
-/

/-! ## A145942.P8847353683022853132

`or(A004396(A052661(n)), A153798(n+1))`
-/

namespace A145942.P8847353683022853132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A004396 (A052661 n).toNat) (A153798 (n + 1))

end

end A145942.P8847353683022853132

/-! ## A145942.P3596295292692997980

`A305632(∑[record[xor(n, 2*n)]])`
-/

namespace A145942.P3596295292692997980
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305632 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A145942.P3596295292692997980

/-!
# A145943: Number of n X n binary arrays with all ones connected in a 3X2 elbow 1,1 1,2 1,3 2,3 in any orientation.

The programs for A145943, there is no canonical definition to state claims against.
-/

/-! ## A145943.P43797975784987253

`A145945(2*(n+2))`
-/

namespace A145943.P43797975784987253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145945 (2 * (n + 2))

end

end A145943.P43797975784987253

/-! ## A145943.P7642751725241498868

`or(1, A145945(comp[(2*n)%or(6, n)]))`
-/

namespace A145943.P7642751725241498868
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n % Nat.lor 6 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A145945 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n))

end

end A145943.P7642751725241498868

/-! ## A145943.P4070850710554227571

`A145945(A046868(n+1))^Δ[A002998(n)]`
-/

namespace A145943.P4070850710554227571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002998 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A145945 (A046868 (n + 1)).toNat : ℚ) ^ (f1 (n + 1) - f1 n : ℤ)

end

end A145943.P4070850710554227571

/-! ## A145943.P11094576845112588457

`A145945(A046868(n+1))^A007318(A090657(n))`
-/

namespace A145943.P11094576845112588457
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A145945 (A046868 (n + 1)).toNat : ℚ) ^ (A007318 (A090657 n).toNat : ℤ)

end

end A145943.P11094576845112588457

/-!
# A145944: Number of n X n binary arrays symmetric under horizontal reflection with all ones connected in a 3X2 elbow 1,1 1,2 1,3 2,3 in any orientation.

The programs for A145944, there is no canonical definition to state claims against.
-/

/-! ## A145944.P9149782556798319497

`A139040(floor(sqrt(A095740(n))))`
-/

namespace A145944.P9149782556798319497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139040 (Int.sqrt (A095740 n)).toNat

end

end A145944.P9149782556798319497

/-! ## A145944.P6065453914607665973

`A139040(round(sqrt(A095740(n))))`
-/

namespace A145944.P6065453914607665973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139040 (SequenceMachineLib.roundAway (Real.sqrt (A095740 n : ℝ))).toNat

end

end A145944.P6065453914607665973

/-! ## A145944.P14901817125768225704

`A343227(A091565(n)^floor(n/2))`
-/

namespace A145944.P14901817125768225704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343227 (SequenceMachineLib.roundAway ((A091565 n : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ))).toNat

end

end A145944.P14901817125768225704

/-!
# A145945: Number of n X n binary arrays symmetric under horizontal and vertical reflection with all ones connected in a 3X2 elbow 1,1 1,2 1,3 2,3 in any orientation.

The programs for A145945, there is no canonical definition to state claims against.
-/

/-! ## A145945.P15240324500307225189

`A145943(∏{e}[A016116(n), #])`
-/

namespace A145945.P15240324500307225189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145943 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)

end

end A145945.P15240324500307225189

/-! ## A145945.P15322922855871438635

`A145943(A133223(n+1)-(n+1))`
-/

namespace A145945.P15322922855871438635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145943 (A133223 (n + 1) - (n + 1 : ℤ)).toNat

end

end A145945.P15322922855871438635

/-! ## A145945.P11258215191435728646

`A145943(round(acot(n)+n)-A110654(n))`
-/

namespace A145945.P11258215191435728646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145943 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ)) - A110654 n).toNat

end

end A145945.P11258215191435728646

/-! ## A145945.P1910179809850769338

`A145943(A233583(n+1)-A065033(n))`
-/

namespace A145945.P1910179809850769338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145943 (A233583 (n + 1) - A065033 n).toNat

end

end A145945.P1910179809850769338

/-! ## A145945.P7407621018563224350

`A145943(A233583(n+1)-A110654(n))`
-/

namespace A145945.P7407621018563224350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145943 (A233583 (n + 1) - A110654 n).toNat

end

end A145945.P7407621018563224350

/-!
# A145946: Number of n X n binary arrays symmetric about main diagonal with all ones connected in a 3X2 elbow 1,1 1,2 1,3 2,3 in any orientation.

The programs for A145946, there is no canonical definition to state claims against.
-/

/-! ## A145946.P3829476661450370600

`A145948(2*(n+2))`
-/

namespace A145946.P3829476661450370600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145948 (2 * (n + 2))

end

end A145946.P3829476661450370600

/-! ## A145946.P7044177303098112573

`or(1, A145948(comp[(2*n)%or(6, n)]))`
-/

namespace A145946.P7044177303098112573
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n % Nat.lor 6 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A145948 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n))

end

end A145946.P7044177303098112573

/-! ## A145946.P523450366471078042

`or(1, A145948(A144396(n+1)))`
-/

namespace A145946.P523450366471078042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A145948 (A144396 (n + 1)).toNat)

end

end A145946.P523450366471078042

/-! ## A145946.P10878210622626518882

`A145948(A144396(n+1))%A016975(n)`
-/

namespace A145946.P10878210622626518882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A145948 (A144396 (n + 1)).toNat) (A016975 n)

end

end A145946.P10878210622626518882

/-! ## A145946.P9701737131009178529

`A167688(n+1)+A145948(A144396(n+1))`
-/

namespace A145946.P9701737131009178529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167688 (n + 1) + A145948 (A144396 (n + 1)).toNat

end

end A145946.P9701737131009178529

/-!
# A145947: Number of n X n binary arrays symmetric about both diagonal and antidiagonal with all ones connected in a 3X2 elbow 1,1 1,2 1,3 2,3 in any orientation.

The programs for A145947, there is no canonical definition to state claims against.
-/

/-! ## A145947.P14937702499139115563

`or(1, floor(sqrt(A323925(n+1))))`
-/

namespace A145947.P14937702499139115563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (Int.sqrt (A323925 (n + 1)))

end

end A145947.P14937702499139115563

/-! ## A145947.P6462572648653072530

`or(1, ∑[A376985(2*n+5)])`
-/

namespace A145947.P6462572648653072530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376985 (2 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A145947.P6462572648653072530

/-! ## A145947.P7404558602932965934

`A156724(A192570(n))`
-/

namespace A145947.P7404558602932965934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156724 (A192570 n).toNat

end

end A145947.P7404558602932965934

/-! ## A145947.P7373847688716942929

`A194065(A190159(n))`
-/

namespace A145947.P7373847688716942929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194065 (A190159 n).toNat

end

end A145947.P7373847688716942929

/-! ## A145947.P11571084933703880730

`A271721(A137959(n))`
-/

namespace A145947.P11571084933703880730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271721 (A137959 n).toNat

end

end A145947.P11571084933703880730

/-!
# A145948: Number of n X n binary arrays symmetric about the diagonal and under 90-degree rotation with all ones connected in a 3 X 2 elbow 1,1 1,2 1,3 2,3 in any orientation.

The programs for A145948, there is no canonical definition to state claims against.
-/

/-! ## A145948.P15706272531378330468

`A237016(∏[gcd(3-n, n%2)])`
-/

namespace A145948.P15706272531378330468
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (3 - (n : ℤ)) ((n % 2 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237016 (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A145948.P15706272531378330468

/-! ## A145948.P563541098744037577

`A097467(A147045(n+1))`
-/

namespace A145948.P563541098744037577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097467 (A147045 (n + 1)).toNat

end

end A145948.P563541098744037577

/-! ## A145948.P18312273701549405564

`A097467(A147195(n+1))`
-/

namespace A145948.P18312273701549405564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097467 (A147195 (n + 1)).toNat

end

end A145948.P18312273701549405564

/-! ## A145948.P3205486386503408629

`A097467(A147399(n+1))`
-/

namespace A145948.P3205486386503408629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097467 (A147399 (n + 1)).toNat

end

end A145948.P3205486386503408629

/-! ## A145948.P1822203202678185438

`A171597(A146051(n+1))`
-/

namespace A145948.P1822203202678185438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171597 (A146051 (n + 1)).toNat

end

end A145948.P1822203202678185438

/-!
# A145950: Number of n X n binary arrays symmetric under 180 degree rotation with all ones connected in a 3X2 elbow 1,1 1,2 1,3 2,3 in any orientation.

The programs for A145950, there is no canonical definition to state claims against.
-/

/-! ## A145950.P10077316136035786597

`A280704(A246202(∑[2^n])*A323129(n+1))`
-/

namespace A145950.P10077316136035786597
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280704 (A246202 (∑ j ∈ Finset.range (n + 1), f1 j) * A323129 (n + 1)).toNat

end

end A145950.P10077316136035786597

/-! ## A145950.P15149842862792998973

`A233970(A121648(n))`
-/

namespace A145950.P15149842862792998973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233970 (A121648 n).toNat

end

end A145950.P15149842862792998973

/-!
# A145951: a(n) = floor(d*Pi*n) where d is the initial digit of the fractional part of Pi*n.

The programs for A145951, the canonical program `A145951.P2655857988215145484` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A145951 has offset 1).

The definition of A145951 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A145951.P2655857988215145484

`floor(A094562(n+1)*π*(n+1))`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A145951

/-- `floor(A094562(n+1)*π*(n+1))` -/
def P2655857988215145484.Spec : Prop :=
  ∀ n, P2655857988215145484.a n = A145951 (n + 1)

theorem P2655857988215145484.correct : P2655857988215145484.Spec := by
  intro n
  simp only [A145951, Nat.add_sub_cancel]

end A145951

/-! ## A145951.P13334644401966150104

`A022844((n+1)*A094562(n+1))`
-/

namespace A145951.P13334644401966150104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022844 ((n + 1 : ℤ) * A094562 (n + 1)).toNat

end

end A145951.P13334644401966150104

namespace A145951

/-- `A022844((n+1)*A094562(n+1))` -/
def P13334644401966150104.Spec : Prop :=
  ∀ n, P13334644401966150104.a n = A145951 (n + 1)

end A145951

/-!
# A145952: Number of n X n binary arrays with all ones connected only in a zee 1,1 1,2 2,2 2,3 in any orientation.

The programs for A145952, there is no canonical definition to state claims against.
-/

/-! ## A145952.P10743557675049185514

`A145954(2*(n+2))`
-/

namespace A145952.P10743557675049185514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145954 (2 * (n + 2))

end

end A145952.P10743557675049185514

/-! ## A145952.P3542162979733144859

`or(1, A145954(A144396(n+1)))`
-/

namespace A145952.P3542162979733144859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A145954 (A144396 (n + 1)).toNat)

end

end A145952.P3542162979733144859

/-! ## A145952.P16688156189437342827

`gcd(A000038(n), A145954(A144396(n+1)))`
-/

namespace A145952.P16688156189437342827
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A145954 (A144396 (n + 1)).toNat)

end

end A145952.P16688156189437342827

/-! ## A145952.P8790525072494128004

`A145954(A144396(n+1))+A015161(n+1)`
-/

namespace A145952.P8790525072494128004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145954 (A144396 (n + 1)).toNat + A015161 (n + 1)

end

end A145952.P8790525072494128004

/-! ## A145952.P18297019248953623800

`A145954(A144396(n+1))/A007318(C(n, 2))`
-/

namespace A145952.P18297019248953623800
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A145954 (A144396 (n + 1)).toNat : ℚ) / (A007318 (Nat.choose n 2) : ℚ)

end

end A145952.P18297019248953623800

/-!
# A145953: Number of n X n binary arrays symmetric under horizontal reflection with all ones connected only in a zee 1,1 1,2 2,2 2,3 in any orientation.

The programs for A145953, there is no canonical definition to state claims against.
-/

/-! ## A145953.P8931518003357085481

`A086799(A343731(n+1)^A240488(n))`
-/

namespace A145953.P8931518003357085481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086799 (SequenceMachineLib.roundAway ((A343731 (n + 1) : ℚ) ^ (A240488 n : ℤ))).toNat

end

end A145953.P8931518003357085481

/-! ## A145953.P7908098405049254407

`A328513(∏{p}[n+1, #*val(n+1, #)]^floor((n/2)²/π))`
-/

namespace A145953.P7908098405049254407
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328513 (SequenceMachineLib.roundAway (((∏ p ∈ Nat.primeFactors (f1 n), p * SequenceMachineLib.valuation (n + 1) p : ℕ) : ℚ) ^ (⌊(((n : ℚ) / 2) ^ 2 : ℝ) / Real.pi⌋ : ℤ))).toNat

end

end A145953.P7908098405049254407

/-! ## A145953.P16097335801001240005

`A214403(A058809(n))`
-/

namespace A145953.P16097335801001240005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214403 (A058809 n).toNat

end

end A145953.P16097335801001240005

/-!
# A145954: Number of n X n binary arrays symmetric under horizontal and vertical reflection with all ones connected only in a zee 1,1 1,2 2,2 2,3 in any orientation.

The programs for A145954, there is no canonical definition to state claims against.
-/

/-! ## A145954.P1963460195507201098

`A145952(gcd(n!, ceil(abs((1-n)/2))))`
-/

namespace A145954.P1963460195507201098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145952 (Int.gcd (Nat.factorial n : ℤ) ⌈|(1 - (n : ℤ) : ℚ) / 2|⌉)

end

end A145954.P1963460195507201098

/-! ## A145954.P18436213738587983227

`A145952(∏{e}[A016116(n), #])`
-/

namespace A145954.P18436213738587983227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145952 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)

end

end A145954.P18436213738587983227

/-! ## A145954.P17575749066748137081

`A145952(A028310(floor(n/2)))`
-/

namespace A145954.P17575749066748137081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145952 (A028310 ⌊(n : ℚ) / 2⌋.toNat).toNat

end

end A145954.P17575749066748137081

/-! ## A145954.P9338200075101024150

`A145952(gcd(floor(n/2), A001710(n)))`
-/

namespace A145954.P9338200075101024150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145952 (Int.gcd ⌊(n : ℚ) / 2⌋ (A001710 n))

end

end A145954.P9338200075101024150

/-! ## A145954.P798801227503829260

`A145952(gcd(A001710(n), A004526(n)))`
-/

namespace A145954.P798801227503829260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145952 (Int.gcd (A001710 n) (A004526 n))

end

end A145954.P798801227503829260

/-!
# A145955: Number of n X n binary arrays symmetric about main diagonal with all ones connected only in a zee 1,1 1,2 2,2 2,3 in any orientation.

The programs for A145955, there is no canonical definition to state claims against.
-/

/-! ## A145955.P10691273607093135080

`A145957(2*(n+2))`
-/

namespace A145955.P10691273607093135080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145957 (2 * (n + 2))

end

end A145955.P10691273607093135080

/-! ## A145955.P14459180258025380767

`A145957(A144396(n+1))%A002275(n+2)`
-/

namespace A145955.P14459180258025380767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A145957 (A144396 (n + 1)).toNat) (A002275 (n + 2))

end

end A145955.P14459180258025380767

/-! ## A145955.P439512399266957052

`A145957(A054023(n+1))^A181721(n+1)`
-/

namespace A145955.P439512399266957052
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A145957 (A054023 (n + 1)).toNat : ℚ) ^ (A181721 (n + 1) : ℤ)

end

end A145955.P439512399266957052

/-! ## A145955.P8190612088173750351

`A145957(A054023(n+1))/A145957(A181721(n+1)²)`
-/

namespace A145955.P8190612088173750351
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A145957 (A054023 (n + 1)).toNat : ℚ) / (A145957 (A181721 (n + 1) ^ 2).toNat : ℚ)

end

end A145955.P8190612088173750351

/-!
# A145956: Number of n X n binary arrays symmetric about both diagonal and antidiagonal with all ones connected only in a zee 1,1 1,2 2,2 2,3 in any orientation.

The programs for A145956, there is no canonical definition to state claims against.
-/

/-! ## A145956.P7373013455174819348

`A147448(lt[3, (n+1)/ceil(xor(n, n+1)/4)])`
-/

namespace A145956.P7373013455174819348
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (⌈(Nat.xor n (n + 1) : ℚ) / 4⌉ : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147448 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n)

end

end A145956.P7373013455174819348

/-! ## A145956.P1047835440265609651

`A217556(A119445(n+1))`
-/

namespace A145956.P1047835440265609651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217556 (A119445 (n + 1)).toNat

end

end A145956.P1047835440265609651

/-! ## A145956.P7867635227636083106

`A146449(A051022(n)+3)`
-/

namespace A145956.P7867635227636083106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146449 (A051022 n + 3).toNat

end

end A145956.P7867635227636083106

/-! ## A145956.P7568655145815072303

`A146449(A062388(n)+3)`
-/

namespace A145956.P7568655145815072303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146449 (A062388 n + 3).toNat

end

end A145956.P7568655145815072303

/-! ## A145956.P15545751247151183254

`A146449(A087051(n)+3)`
-/

namespace A145956.P15545751247151183254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146449 (A087051 n + 3).toNat

end

end A145956.P15545751247151183254

/-!
# A145958: Number of n X n binary arrays symmetric under 90-degree rotation with all ones connected only in a zee 1,1 1,2 2,2 2,3 in any orientation.

The programs for A145958, there is no canonical definition to state claims against.
-/

/-! ## A145958.P10546481678440365807

`A147502(A310039(n))%A078371(n)`
-/

namespace A145958.P10546481678440365807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A147502 (A310039 n).toNat) (A078371 n)

end

end A145958.P10546481678440365807

/-! ## A145958.P1711957487865717062

`A147072(3*n+2)%A315968(A315951(n))`
-/

namespace A145958.P1711957487865717062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A147072 (3 * n + 2)) (A315968 (A315951 n).toNat)

end

end A145958.P1711957487865717062

/-!
# A145959: Number of n X n binary arrays symmetric under 180 degree rotation with all ones connected only in a zee 1,1 1,2 2,2 2,3 in any orientation.

The programs for A145959, there is no canonical definition to state claims against.
-/

/-! ## A145959.P14958254608072128672

`A136602(A009239(n))+A009238(n)`
-/

namespace A145959.P14958254608072128672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136602 (A009239 n).toNat + A009238 n

end

end A145959.P14958254608072128672

/-! ## A145959.P15333801557472032829

`A328439(n)-A069846(A197189(n))`
-/

namespace A145959.P15333801557472032829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328439 n - A069846 (A197189 n).toNat

end

end A145959.P15333801557472032829

/-! ## A145959.P1450616444750833130

`A034947(n+1)+A008612(A001861(n))`
-/

namespace A145959.P1450616444750833130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034947 (n + 1) + A008612 (A001861 n).toNat

end

end A145959.P1450616444750833130

/-!
# A145964: Number of n X n binary arrays with all ones connected only in a one by five or five by one block.

The programs for A145964, there is no canonical definition to state claims against.
-/

/-! ## A145964.P12314715878896570035

`A145966(2*(n+2))`
-/

namespace A145964.P12314715878896570035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145966 (2 * (n + 2))

end

end A145964.P12314715878896570035

/-! ## A145964.P13395967385955493011

`A274046(lcm(n-3, a(n-1))+n-2)` with `a(0)=1`
-/

namespace A145964.P13395967385955493011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A274046 ((Int.lcm ((n : ℤ) - 3) (a (n - 1)) : ℤ) + ((n : ℤ) - 2)).toNat

end

end A145964.P13395967385955493011

/-!
# A145966: Number of n X n binary arrays symmetric under horizontal and vertical reflection with all ones connected only in a one by five or five by one block.

The programs for A145966, there is no canonical definition to state claims against.
-/

/-! ## A145966.P16508464931625097775

`∏{e}[A162653(n), #²]`
-/

namespace A145966.P16508464931625097775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162653 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p ^ 2

end

end A145966.P16508464931625097775

/-! ## A145966.P11096032449474078707

`∏{e}[A098697(∑[n]), #²]`
-/

namespace A145966.P11096032449474078707
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098697 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p ^ 2

end

end A145966.P11096032449474078707

/-! ## A145966.P8937183118884510289

`∏{e}[record[A098697(n)], #²]`
-/

namespace A145966.P8937183118884510289
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098697 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p ^ 2

end

end A145966.P8937183118884510289

/-! ## A145966.P5842041557115217213

`∏{e}[A080108(n+1), #²]`
-/

namespace A145966.P5842041557115217213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080108 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p ^ 2

end

end A145966.P5842041557115217213

/-! ## A145966.P16571522606098100878

`(A033821(n)%(n+1)+1)²`
-/

namespace A145966.P16571522606098100878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.tmod (A033821 n) (n + 1 : ℤ) + 1) ^ 2

end

end A145966.P16571522606098100878

/-!
# A145967: Number of n X n binary arrays symmetric about main diagonal with all ones connected only in a one by five or five by one block.

The programs for A145967, there is no canonical definition to state claims against.
-/

/-! ## A145967.P15106747709650476373

`A145969(2*(n+2))`
-/

namespace A145967.P15106747709650476373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145969 (2 * (n + 2))

end

end A145967.P15106747709650476373

/-! ## A145967.P13302037023637222653

`A121527(A174300(n+1))`
-/

namespace A145967.P13302037023637222653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121527 (A174300 (n + 1)).toNat

end

end A145967.P13302037023637222653

/-! ## A145967.P9904884792195451696

`A347649(A329141(n+2))`
-/

namespace A145967.P9904884792195451696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347649 (A329141 (n + 2)).toNat

end

end A145967.P9904884792195451696

/-! ## A145967.P11615221725736985682

`A046074(A191797(n)+4)`
-/

namespace A145967.P11615221725736985682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046074 (A191797 n + 4).toNat

end

end A145967.P11615221725736985682

/-! ## A145967.P1885373208578110818

`A177849(2*A228180(n))`
-/

namespace A145967.P1885373208578110818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177849 (2 * A228180 n).toNat

end

end A145967.P1885373208578110818

/-!
# A145969: Number of n X n binary arrays symmetric about the diagonal and under 90-degree rotation with all ones connected only in a 1 X 5 or 5 X 1 block.

The programs for A145969, there is no canonical definition to state claims against.
-/

/-! ## A145969.P5333349123854295834

`A003056(A147000(A032950(n+1))²)`
-/

namespace A145969.P5333349123854295834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A147000 (A032950 (n + 1)).toNat ^ 2).toNat

end

end A145969.P5333349123854295834

/-!
# A145970: Number of n X n binary arrays symmetric under 90-degree rotation with all ones connected only in a 1 X 5 or 5 X 1 block.

The programs for A145970, there is no canonical definition to state claims against.
-/

/-! ## A145970.P14062675623398111605

`A108379(a(n-1)+3*a(n-4))` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=1, a(5)=1, a(6)=4, a(7)=7`
-/

namespace A145970.P14062675623398111605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 1, 1, 1, 4, 7] fun n a =>
  A108379 (a (n - 1) + 3 * a (n - 4)).toNat

end

end A145970.P14062675623398111605

/-! ## A145970.P5413286451395580098

`A159072(A105152(n))`
-/

namespace A145970.P5413286451395580098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159072 (A105152 n).toNat

end

end A145970.P5413286451395580098

/-! ## A145970.P5555518987291791388

`A025451(A338229(n))`
-/

namespace A145970.P5555518987291791388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025451 (A338229 n).toNat

end

end A145970.P5555518987291791388

/-! ## A145970.P3339314764057365035

`A342496(A357287(n))`
-/

namespace A145970.P3339314764057365035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342496 (A357287 n).toNat

end

end A145970.P3339314764057365035

/-! ## A145970.P5110096455526035299

`A368200(A336009(n))`
-/

namespace A145970.P5110096455526035299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368200 (A336009 n).toNat

end

end A145970.P5110096455526035299

/-!
# A145972: Triangle read by rows, A000012 * A053121.

The programs for A145972, the canonical program `A145972.P17569446803524587889` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A145972 has offset 0).

The definition of A145972 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A145972.P17569446803524587889

`T(T(n-1,k-1), 2*T(n-1,k-1))+T(n-1,k-1)+T(n-1,k+1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A145972

/-- `T(T(n-1,k-1), 2*T(n-1,k-1))+T(n-1,k-1)+T(n-1,k+1)` -/
def P17569446803524587889.Spec : Prop :=
  ∀ n, (P17569446803524587889.a n : ℤ) = A145972 n

theorem P17569446803524587889.correct : P17569446803524587889.Spec := by
  intro n
  simp only [A145972]

end A145972

/-! ## A145972.P3964041466301460994

`T(1, T(n-1,k-1)+1)+T(n-1,k-1)+T(n-1,k+1)` with `a(0)=1, a(1)=1`
-/

namespace A145972.P3964041466301460994
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  SequenceMachineLib.triAt a 1 (SequenceMachineLib.triUpLeft a n + 1 : ℤ) + SequenceMachineLib.triUpLeft a n + SequenceMachineLib.triUpRight a n

end

end A145972.P3964041466301460994

namespace A145972

/-- `T(1, T(n-1,k-1)+1)+T(n-1,k-1)+T(n-1,k+1)` -/
def P3964041466301460994.Spec : Prop :=
  ∀ n, (P3964041466301460994.a n : ℤ) = A145972 n

end A145972

/-! ## A145972.P17616697915686236430

`A053121(n)+T(n-1,k)` with `a(0)=1`
-/

namespace A145972.P17616697915686236430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A053121 n + SequenceMachineLib.triUp a n

end

end A145972.P17616697915686236430

namespace A145972

/-- `A053121(n)+T(n-1,k)` -/
def P17616697915686236430.Spec : Prop :=
  ∀ n, P17616697915686236430.a n = A145972 n

end A145972

/-! ## A145972.P3539896121694276266

`A010054(n)+T(n-1,k-1)+T(n-1,k+1)` with `a(0)=1`
-/

namespace A145972.P3539896121694276266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A010054 n + (SequenceMachineLib.triUpLeft a n + SequenceMachineLib.triUpRight a n)

end

end A145972.P3539896121694276266

namespace A145972

/-- `A010054(n)+T(n-1,k-1)+T(n-1,k+1)` -/
def P3539896121694276266.Spec : Prop :=
  ∀ n, P3539896121694276266.a n = A145972 n

end A145972

/-! ## A145972.P16010335316480118293

`A106737(Δ[∏[A193592(n)]])`
-/

namespace A145972.P16010335316480118293
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106737 (f1 (n + 1) - f1 n).toNat

end

end A145972.P16010335316480118293

namespace A145972

/-- `A106737(Δ[∏[A193592(n)]])` -/
def P16010335316480118293.Spec : Prop :=
  ∀ n, P16010335316480118293.a n = A145972 n

end A145972

/-!
# A145973: Triangle read by rows, square of A053121.

The programs for A145973, there is no canonical definition to state claims against.
-/

/-! ## A145973.P11045383687287959626

`A048766(A104259(n)*A128890(n))`
-/

namespace A145973.P11045383687287959626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A104259 n * A128890 n).toNat

end

end A145973.P11045383687287959626

/-! ## A145973.P2667727704413616774

`A068063(A155761(n)²)`
-/

namespace A145973.P2667727704413616774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068063 (A155761 n ^ 2).toNat

end

end A145973.P2667727704413616774

/-! ## A145973.P8615308815957433932

`A330416(A185415(n+1))`
-/

namespace A145973.P8615308815957433932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330416 (A185415 (n + 1)).toNat

end

end A145973.P8615308815957433932

/-! ## A145973.P1787676403765333936

`A068063(A155761(n)^2)`
-/

namespace A145973.P1787676403765333936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068063 (A155761 n ^ 2).toNat

end

end A145973.P1787676403765333936

/-! ## A145973.P5216947850126749111

`∑{e}[A053635(A128890(n)), #]`
-/

namespace A145973.P5216947850126749111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053635 (A128890 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A145973.P5216947850126749111

/-!
# A145975: Triangle read by rows, partition triangle A027293 convolved with A010815.

The programs for A145975, there is no canonical definition to state claims against.
-/

/-! ## A145975.P14447249849183872270

`A010815(A002262(n))*A027293(n+1)`
-/

namespace A145975.P14447249849183872270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010815 (A002262 n).toNat * A027293 (n + 1)

end

end A145975.P14447249849183872270

/-! ## A145975.P11270251907505161723

`A000041(A025581(n))*A010815(A002262(n))`
-/

namespace A145975.P11270251907505161723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A025581 n).toNat * A010815 (A002262 n).toNat

end

end A145975.P11270251907505161723

/-! ## A145975.P6151818265741828971

`A010815(A002262(n))*A119620(A099375(n))`
-/

namespace A145975.P6151818265741828971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010815 (A002262 n).toNat * A119620 (A099375 n).toNat

end

end A145975.P6151818265741828971

/-! ## A145975.P14121778467543033320

`A010815(A002262(n))*A035363(2*A025581(n))`
-/

namespace A145975.P14121778467543033320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010815 (A002262 n).toNat * A035363 (2 * A025581 n).toNat

end

end A145975.P14121778467543033320

/-! ## A145975.P14149497162649726123

`A000041((A099375(n)-1)/2)*A010815(A002262(n))`
-/

namespace A145975.P14149497162649726123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (SequenceMachineLib.roundAway ((A099375 n - 1 : ℚ) / 2)).toNat * A010815 (A002262 n).toNat

end

end A145975.P14149497162649726123

/-! ## A145975.P10258738272778509077

`A000041(A127739(n+1)-(n+1))*A010815(A002262(n))`
-/

namespace A145975.P10258738272778509077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A127739 (n + 1) - (n + 1 : ℤ)).toNat * A010815 (A002262 n).toNat

end

end A145975.P10258738272778509077

/-! ## A145975.P17955051600944122044

`A001055(2^A193592(n+1))*A010815(A002262(n))`
-/

namespace A145975.P17955051600944122044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001055 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A193592 (n + 1) : ℤ))).toNat * A010815 (A002262 n).toNat

end

end A145975.P17955051600944122044

/-! ## A145975.P16044356627044206828

`A027293(n+1)*A146024(n)/A146023(n)`
-/

namespace A145975.P16044356627044206828
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027293 (n + 1) * A146024 n : ℚ) / (A146023 n : ℚ)

end

end A145975.P16044356627044206828

/-!
# A145976: Expansion of 1/(1-x*(1-7*x)).

The programs for A145976, the canonical program `A145976.P9238635689336201206` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A145976 has offset 0).

The definition of A145976 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x+7x^2))` (program `A145976.P9238635689336201206`, by `A145976.P9238635689336201206.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A145976.P9238635689336201206

`ogf(1/(1-x+7x^2))`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A145976

/-- `ogf(1/(1-x+7x^2))` -/
def P9238635689336201206.Spec : Prop :=
  ∀ n, P9238635689336201206.a n = A145976 n

theorem P9238635689336201206.correct : P9238635689336201206.Spec := by
  intro n
  simp only [A145976]

end A145976

/-! ## A145976.P2204723944061780491

`a(n-1)-7*a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A145976.P2204723944061780491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) - 7 * a (n - 2)

end

end A145976.P2204723944061780491

namespace A145976

/-- `a(n-1)-7*a(n-2)` -/
def P2204723944061780491.Spec : Prop :=
  ∀ n, P2204723944061780491.a n = A145976 n

end A145976

/-! ## A145976.P10731497770022642238

`∑{#}[n, A109466(C(n+1, 2)+#)*7^(n-#)]`
-/

namespace A145976.P10731497770022642238
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (A109466 (Nat.choose (n + 1) 2 + k) : ℚ) * (7 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ)

end

end A145976.P10731497770022642238

namespace A145976

/-- `∑{#}[n, A109466(C(n+1, 2)+#)*7^(n-#)]` -/
def P10731497770022642238.Spec : Prop :=
  ∀ n, P10731497770022642238.a n = (A145976 n : ℚ)

end A145976

/-! ## A145976.P13751476701416650147

`∑{#}[floor(n/2), C(n-#, #)*(-7)^#]`
-/

namespace A145976.P13751476701416650147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, (Nat.choose ((n : ℤ) - (k : ℤ)).toNat k : ℤ) * (-7) ^ k

end

end A145976.P13751476701416650147

namespace A145976

/-- `∑{#}[floor(n/2), C(n-#, #)*(-7)^#]` -/
def P13751476701416650147.Spec : Prop :=
  ∀ n, P13751476701416650147.a n = A145976 n

end A145976

/-! ## A145976.P12662678823930970172

`∑{#}[n+1, (-1)^(n+1-#)*C(n+1, #)*A190963(#)]`
-/

namespace A145976.P12662678823930970172
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (-1 : ℚ) ^ ((n + 1 : ℤ) - (k : ℤ) : ℤ) * (Nat.choose (n + 1) k : ℚ) * (A190963 k : ℚ)

end

end A145976.P12662678823930970172

namespace A145976

/-- `∑{#}[n+1, (-1)^(n+1-#)*C(n+1, #)*A190963(#)]` -/
def P12662678823930970172.Spec : Prop :=
  ∀ n, P12662678823930970172.a n = (A145976 n : ℚ)

end A145976

/-!
# A145977: Expansion of c(q^3) / (c(q^3) + c(q^6)) where c() is a cubic AGM function.

The programs for A145977, there is no canonical definition to state claims against.
-/

/-! ## A145977.P13655523172146374675

`ceil(A141094(n)/3)`
-/

namespace A145977.P13655523172146374675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A141094 n : ℚ) / 3⌉

end

end A145977.P13655523172146374675

/-! ## A145977.P10531057401961845111

`A141094(abs(1-n)+1)/3`
-/

namespace A145977.P10531057401961845111
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A141094 (|1 - (n : ℤ)| + 1).toNat : ℚ) / 3

end

end A145977.P10531057401961845111

/-! ## A145977.P757150428335779107

`A033999(n)*A213267(n)`
-/

namespace A145977.P757150428335779107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A213267 n

end

end A145977.P757150428335779107

/-! ## A145977.P16653816565467087426

`1/A122553(n)*A141094(n)`
-/

namespace A145977.P16653816565467087426
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (A122553 n : ℚ) * (A141094 n : ℚ)

end

end A145977.P16653816565467087426

/-! ## A145977.P13180983246326454758

`A124243(n+1)/ratio[A213267(n)]`
-/

namespace A145977.P13180983246326454758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213267 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A124243 (n + 1) : ℚ) / ((f1 (n + 1) : ℚ) / (f1 n : ℚ))

end

end A145977.P13180983246326454758

/-! ## A145977.P4754126698497709022

`A128640(n+1)/A164617(n+1)*A213267(n)`
-/

namespace A145977.P4754126698497709022
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A128640 (n + 1) : ℚ) / (A164617 (n + 1) : ℚ) * (A213267 n : ℚ)

end

end A145977.P4754126698497709022

/-! ## A145977.P14094612674192652800

`A128641(n)/A164617(n)*A213267(n)`
-/

namespace A145977.P14094612674192652800
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A128641 n : ℚ) / (A164617 n : ℚ) * (A213267 n : ℚ)

end

end A145977.P14094612674192652800

/-! ## A145977.P16628467691810802919

`A132977(n)/A258099(n)*A213267(n)`
-/

namespace A145977.P16628467691810802919
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132977 n : ℚ) / (A258099 n : ℚ) * (A213267 n : ℚ)

end

end A145977.P16628467691810802919

/-!
# A145978: Expansion of 1/(1-x*(1-8*x)).

The programs for A145978, the canonical program `A145978.P16563260767963110005` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A145978 has offset 0).

The definition of A145978 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x+8x^2))` (program `A145978.P16563260767963110005`, by `A145978.P16563260767963110005.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A145978.P16563260767963110005

`ogf(1/(1-x+8x^2))`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A145978

/-- `ogf(1/(1-x+8x^2))` -/
def P16563260767963110005.Spec : Prop :=
  ∀ n, P16563260767963110005.a n = A145978 n

theorem P16563260767963110005.correct : P16563260767963110005.Spec := by
  intro n
  simp only [A145978]

end A145978

/-! ## A145978.P10527956943318057094

`a(n-1)-8*a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A145978.P10527956943318057094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) - 8 * a (n - 2)

end

end A145978.P10527956943318057094

namespace A145978

/-- `a(n-1)-8*a(n-2)` -/
def P10527956943318057094.Spec : Prop :=
  ∀ n, P10527956943318057094.a n = A145978 n

end A145978

/-! ## A145978.P5780652089686295662

`∑{#}[n, A109466(C(n+1, 2)+#)*8^(n-#)]`
-/

namespace A145978.P5780652089686295662
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (A109466 (Nat.choose (n + 1) 2 + k) : ℚ) * (8 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ)

end

end A145978.P5780652089686295662

namespace A145978

/-- `∑{#}[n, A109466(C(n+1, 2)+#)*8^(n-#)]` -/
def P5780652089686295662.Spec : Prop :=
  ∀ n, P5780652089686295662.a n = (A145978 n : ℚ)

end A145978

/-! ## A145978.P1349618370662800880

`∏[1-8/a(n-1)]` with `a(0)=1, a(1)=1`
-/

namespace A145978.P1349618370662800880
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  1 - 8 / f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A145978.P1349618370662800880

namespace A145978

/-- `∏[1-8/a(n-1)]` -/
def P1349618370662800880.Spec : Prop :=
  ∀ n, P1349618370662800880.a n = (A145978 n : ℚ)

end A145978

/-! ## A145978.P13863024035533150753

`a(n-1)-a(n-2)/(1/2)^3` with `a(0)=1, a(1)=1`
-/

namespace A145978.P13863024035533150753
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) - a (n - 2) / ((1 : ℚ) / 2) ^ 3

end

end A145978.P13863024035533150753

namespace A145978

/-- `a(n-1)-a(n-2)/(1/2)^3` -/
def P13863024035533150753.Spec : Prop :=
  ∀ n, P13863024035533150753.a n = (A145978 n : ℚ)

end A145978

/-! ## A145978.P2777016499864021499

`a(n-1)+a(n-2)-a(n-2)/(1/3)²` with `a(0)=1, a(1)=1`
-/

namespace A145978.P2777016499864021499
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) + (a (n - 2) - a (n - 2) / ((1 : ℚ) / 3) ^ 2)

end

end A145978.P2777016499864021499

namespace A145978

/-- `a(n-1)+a(n-2)-a(n-2)/(1/3)²` -/
def P2777016499864021499.Spec : Prop :=
  ∀ n, P2777016499864021499.a n = (A145978 n : ℚ)

end A145978

/-! ## A145978.P10247956937063467277

`a(n-1)-(a(n-2)/(1/3)²-a(n-2))` with `a(0)=1, a(1)=1`
-/

namespace A145978.P10247956937063467277
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) - (a (n - 2) / ((1 : ℚ) / 3) ^ 2 - a (n - 2))

end

end A145978.P10247956937063467277

namespace A145978

/-- `a(n-1)-(a(n-2)/(1/3)²-a(n-2))` -/
def P10247956937063467277.Spec : Prop :=
  ∀ n, P10247956937063467277.a n = (A145978 n : ℚ)

end A145978

/-! ## A145978.P13768037133749474268

`∑{#}[n+1, (-1)^(n+1-#)*C(n+1, #)*A190964(#)]`
-/

namespace A145978.P13768037133749474268
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (-1 : ℚ) ^ ((n + 1 : ℤ) - (k : ℤ) : ℤ) * (Nat.choose (n + 1) k : ℚ) * (A190964 k : ℚ)

end

end A145978.P13768037133749474268

namespace A145978

/-- `∑{#}[n+1, (-1)^(n+1-#)*C(n+1, #)*A190964(#)]` -/
def P13768037133749474268.Spec : Prop :=
  ∀ n, P13768037133749474268.a n = (A145978 n : ℚ)

end A145978

/-!
# A145979: a(n) = (2*n + 4)/gcd(n,4).

The programs for A145979, the canonical program `A145979.P12761268439110146036` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A145979 has offset 0).

The definition of A145979 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A145979.P16440902257177044734

`(2*n+4)/gcd(n, 4)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A145979.P16440902257177044734
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * n + 4 : ℚ) / (Nat.gcd n 4 : ℚ)

end

end A145979.P16440902257177044734

namespace A145979

/-- `(2*n+4)/gcd(n, 4)` -/
def P16440902257177044734.Spec : Prop :=
  ∀ n, P16440902257177044734.a n = (A145979 n : ℚ)

end A145979

/-! ## A145979.P12761268439110146036

`2*a(n-4)-a(n-8)` with `a(0)=1, a(1)=6, a(2)=4, a(3)=10, a(4)=3, a(5)=14, a(6)=8, a(7)=18`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A145979

/-- `2*a(n-4)-a(n-8)` -/
def P12761268439110146036.Spec : Prop :=
  ∀ n, P12761268439110146036.a n = A145979 n

theorem P12761268439110146036.correct : P12761268439110146036.Spec := by
  intro n
  simp only [A145979]

end A145979

/-! ## A145979.P93551656182973470

`ogf((1+6x+4x^2+10x^3+x^4+2x^5-2x^7)/(1-2x^4+x^8))`
-/

namespace A145979.P93551656182973470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 6, 4, 10, 1, 2, 0, -2] [1, 0, 0, 0, -2, 0, 0, 0, 1] n

end

end A145979.P93551656182973470

namespace A145979

/-- `ogf((1+6x+4x^2+10x^3+x^4+2x^5-2x^7)/(1-2x^4+x^8))` -/
def P93551656182973470.Spec : Prop :=
  ∀ n, P93551656182973470.a n = A145979 n

end A145979

/-! ## A145979.P4848887542093556202

`gcd(2, n+1)*gcd(n+2, ∑[n+1]²)`
-/

namespace A145979.P4848887542093556202
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 (n + 1) * Nat.gcd (n + 2) ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2)

end

end A145979.P4848887542093556202

namespace A145979

/-- `gcd(2, n+1)*gcd(n+2, ∑[n+1]²)` -/
def P4848887542093556202.Spec : Prop :=
  ∀ n, (P4848887542093556202.a n : ℤ) = A145979 n

end A145979

/-! ## A145979.P13943145259163336413

`gcd(2*(n+2), ∑[n+1])*and(2, -n)!`
-/

namespace A145979.P13943145259163336413
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (2 * (n + 2)) (∑ j ∈ Finset.range (n + 1), f1 j) * Nat.factorial (Int.land 2 (-(n : ℤ))).toNat

end

end A145979.P13943145259163336413

namespace A145979

/-- `gcd(2*(n+2), ∑[n+1])*and(2, -n)!` -/
def P13943145259163336413.Spec : Prop :=
  ∀ n, (P13943145259163336413.a n : ℤ) = A145979 n

end A145979

/-! ## A145979.P17763308506280414009

`lcm((n+1)*(n+2), ∑[n+2])/∑[n+2]`
-/

namespace A145979.P17763308506280414009
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm ((n + 1) * (n + 2)) (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℚ)

end

end A145979.P17763308506280414009

namespace A145979

/-- `lcm((n+1)*(n+2), ∑[n+2])/∑[n+2]` -/
def P17763308506280414009.Spec : Prop :=
  ∀ n, P17763308506280414009.a n = (A145979 n : ℚ)

end A145979

/-! ## A145979.P12724785072156551676

`sqrt(A061038(n+2))`
-/

namespace A145979.P12724785072156551676
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A061038 (n + 2) : ℝ)

end

end A145979.P12724785072156551676

namespace A145979

/-- `sqrt(A061038(n+2))` -/
def P12724785072156551676.Spec : Prop :=
  ∀ n, P12724785072156551676.a n = (A145979 n : ℝ)

end A145979

/-! ## A145979.P9318759538330923098

`xor(1, A065171(n+1))+1`
-/

namespace A145979.P9318759538330923098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A065171 (n + 1)) + 1

end

end A145979.P9318759538330923098

namespace A145979

/-- `xor(1, A065171(n+1))+1` -/
def P9318759538330923098.Spec : Prop :=
  ∀ n, P9318759538330923098.a n = A145979 n

end A145979

/-! ## A145979.P8086759639530810252

`2*(n+2)/A109008(n)`
-/

namespace A145979.P8086759639530810252
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((n + 2 : ℚ) / (A109008 n : ℚ))

end

end A145979.P8086759639530810252

namespace A145979

/-- `2*(n+2)/A109008(n)` -/
def P8086759639530810252.Spec : Prop :=
  ∀ n, P8086759639530810252.a n = (A145979 n : ℚ)

end A145979

/-! ## A145979.P12918799448595141861

`(n+2)/2*A176895(n)`
-/

namespace A145979.P12918799448595141861
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) / 2 * (A176895 n : ℚ)

end

end A145979.P12918799448595141861

namespace A145979

/-- `(n+2)/2*A176895(n)` -/
def P12918799448595141861.Spec : Prop :=
  ∀ n, P12918799448595141861.a n = (A145979 n : ℚ)

end A145979

/-! ## A145979.P3482074621416748524

`A247617(n)+A246416(n)`
-/

namespace A145979.P3482074621416748524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247617 n + A246416 n

end

end A145979.P3482074621416748524

namespace A145979

/-- `A247617(n)+A246416(n)` -/
def P3482074621416748524.Spec : Prop :=
  ∀ n, P3482074621416748524.a n = A145979 n

end A145979

/-! ## A145979.P5877699220508295657

`A014695(n)*A176743(n)`
-/

namespace A145979.P5877699220508295657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014695 n * A176743 n

end

end A145979.P5877699220508295657

namespace A145979

/-- `A014695(n)*A176743(n)` -/
def P5877699220508295657.Spec : Prop :=
  ∀ n, P5877699220508295657.a n = A145979 n

end A145979

/-! ## A145979.P9166347894386425067

`A014682((n+2)*A176895(n))`
-/

namespace A145979.P9166347894386425067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 ((n + 2 : ℤ) * A176895 n).toNat

end

end A145979.P9166347894386425067

namespace A145979

/-- `A014682((n+2)*A176895(n))` -/
def P9166347894386425067.Spec : Prop :=
  ∀ n, P9166347894386425067.a n = A145979 n

end A145979

/-! ## A145979.P14880438366181384330

`gcd(A191567(n), A213818(n+1))`
-/

namespace A145979.P14880438366181384330
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A191567 n) (A213818 (n + 1))

end

end A145979.P14880438366181384330

namespace A145979

/-- `gcd(A191567(n), A213818(n+1))` -/
def P14880438366181384330.Spec : Prop :=
  ∀ n, (P14880438366181384330.a n : ℤ) = A145979 n

end A145979

/-! ## A145979.P1662670205661250136

`A000034(A026741(n))*A145051(n+1)`
-/

namespace A145979.P1662670205661250136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A026741 n).toNat * A145051 (n + 1)

end

end A145979.P1662670205661250136

namespace A145979

/-- `A000034(A026741(n))*A145051(n+1)` -/
def P1662670205661250136.Spec : Prop :=
  ∀ n, P1662670205661250136.a n = A145979 n

end A145979

/-! ## A145979.P6717603075529443124

`A176895(n)+2*A026741(A026741(n))`
-/

namespace A145979.P6717603075529443124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176895 n + 2 * A026741 (A026741 n).toNat

end

end A145979.P6717603075529443124

namespace A145979

/-- `A176895(n)+2*A026741(A026741(n))` -/
def P6717603075529443124.Spec : Prop :=
  ∀ n, P6717603075529443124.a n = A145979 n

end A145979

/-! ## A145979.P3208282600811836182

`A247617(n)+A061037(n+2)/A247617(n)`
-/

namespace A145979.P3208282600811836182
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A247617 n : ℚ) + (A061037 (n + 2) : ℚ) / (A247617 n : ℚ)

end

end A145979.P3208282600811836182

namespace A145979

/-- `A247617(n)+A061037(n+2)/A247617(n)` -/
def P3208282600811836182.Spec : Prop :=
  ∀ n, P3208282600811836182.a n = (A145979 n : ℚ)

end A145979

/-! ## A145979.P4953588758294752147

`A040001(A145051(n+1)+n)*A145051(n+1)`
-/

namespace A145979.P4953588758294752147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (A145051 (n + 1) + (n : ℤ)).toNat * A145051 (n + 1)

end

end A145979.P4953588758294752147

namespace A145979

/-- `A040001(A145051(n+1)+n)*A145051(n+1)` -/
def P4953588758294752147.Spec : Prop :=
  ∀ n, P4953588758294752147.a n = A145979 n

end A145979

/-! ## A145979.P302054538373766557

`A000217(n+1)/A060819(n+1)*A014695(n)`
-/

namespace A145979.P302054538373766557
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000217 (n + 1) : ℚ) / (A060819 (n + 1) : ℚ) * (A014695 n : ℚ)

end

end A145979.P302054538373766557

namespace A145979

/-- `A000217(n+1)/A060819(n+1)*A014695(n)` -/
def P302054538373766557.Spec : Prop :=
  ∀ n, P302054538373766557.a n = (A145979 n : ℚ)

end A145979

/-! ## A145979.P625117444378137174

`(A026741(n)+A000034(n))*A000034(A026741(n))`
-/

namespace A145979.P625117444378137174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A026741 n + A000034 n) * A000034 (A026741 n).toNat

end

end A145979.P625117444378137174

namespace A145979

/-- `(A026741(n)+A000034(n))*A000034(A026741(n))` -/
def P625117444378137174.Spec : Prop :=
  ∀ n, P625117444378137174.a n = A145979 n

end A145979

/-!
# A145980: a(n) = 29 + 73*n + 37*n^2.

The programs for A145980, the canonical program `A145980.P15635380527397588588` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A145980 has offset 0).

The definition of A145980 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `29+73*n+37*n²` (program `A145980.P15635380527397588588`, by `A145980.P15635380527397588588.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A145980.P17839563509909857418

`ogf((29+52x-7x^2)/(1-3x+3x^2-x^3))`
-/

namespace A145980.P17839563509909857418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [29, 52, -7] [1, -3, 3, -1] n

end

end A145980.P17839563509909857418

namespace A145980

/-- `ogf((29+52x-7x^2)/(1-3x+3x^2-x^3))` -/
def P17839563509909857418.Spec : Prop :=
  ∀ n, P17839563509909857418.a n = A145980 n

end A145980

/-! ## A145980.P15635380527397588588

`29+73*n+37*n²`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A145980

/-- `29+73*n+37*n²` -/
def P15635380527397588588.Spec : Prop :=
  ∀ n, (P15635380527397588588.a n : ℤ) = A145980 n

theorem P15635380527397588588.correct : P15635380527397588588.Spec := by
  intro n
  simp only [A145980]

end A145980

/-! ## A145980.P8261066390227153229

`abs(37*A000290(n+1)-(n+8))`
-/

namespace A145980.P8261066390227153229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |37 * A000290 (n + 1) - (n + 8 : ℤ)|

end

end A145980.P8261066390227153229

namespace A145980

/-- `abs(37*A000290(n+1)-(n+8))` -/
def P8261066390227153229.Spec : Prop :=
  ∀ n, P8261066390227153229.a n = A145980 n

end A145980

/-! ## A145980.P9891853752646849502

`(A157909(n+1)+A157286(n+1))%A158598(n+1)`
-/

namespace A145980.P9891853752646849502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A157909 (n + 1) + A157286 (n + 1)) (A158598 (n + 1))

end

end A145980.P9891853752646849502

namespace A145980

/-- `(A157909(n+1)+A157286(n+1))%A158598(n+1)` -/
def P9891853752646849502.Spec : Prop :=
  ∀ n, P9891853752646849502.a n = A145980 n

end A145980

/-! ## A145980.P6981582376837324684

`A004273(A055999(n)+C(6*(n+1), 2))`
-/

namespace A145980.P6981582376837324684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A055999 n + (Nat.choose (6 * (n + 1)) 2 : ℤ)).toNat

end

end A145980.P6981582376837324684

namespace A145980

/-- `A004273(A055999(n)+C(6*(n+1), 2))` -/
def P6981582376837324684.Spec : Prop :=
  ∀ n, P6981582376837324684.a n = A145980 n

end A145980

/-!
# A145982: Weight distribution of [73,37,13] binary quadratic-residue (or QR) code.

The programs for A145982, there is no canonical definition to state claims against.
-/

/-! ## A145982.P4471378062827341177

`A151933(ceil(n²/2))%A295853(n)`
-/

namespace A145982.P4471378062827341177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A151933 ⌈(n ^ 2 : ℚ) / 2⌉.toNat) (A295853 n)

end

end A145982.P4471378062827341177

/-! ## A145982.P12139673454003366710

`((n*A081227(n+1))^n)%A138153(2^n+1)`
-/

namespace A145982.P12139673454003366710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (((n : ℤ) * A081227 (n + 1)) ^ n) (A138153 (2 ^ n + 1))

end

end A145982.P12139673454003366710

/-! ## A145982.P17059907561528288128

`A017907(n)*A340195(A220125(n))`
-/

namespace A145982.P17059907561528288128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017907 n * A340195 (A220125 n).toNat

end

end A145982.P17059907561528288128

/-! ## A145982.P979405860878266456

`A151909(A000217(n))%A001644(n)`
-/

namespace A145982.P979405860878266456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A151909 (A000217 n).toNat) (A001644 n)

end

end A145982.P979405860878266456

/-! ## A145982.P15355366994692223384

`xor(A089983(A323483(n)), A178487(n))`
-/

namespace A145982.P15355366994692223384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A089983 (A323483 n).toNat) (A178487 n)

end

end A145982.P15355366994692223384

/-!
# A145983: a(n) = least k such that either 6*k*M(n)-1 or 6*k*M(n)+1 or both is prime, where M(i)= i-th Mersenne prime.

The programs for A145983, there is no canonical definition to state claims against.
-/

/-! ## A145983.P13575747387530684584

`A353524(A092498(n))+A098854(2*(n+1))`
-/

namespace A145983.P13575747387530684584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353524 (A092498 n).toNat + A098854 (2 * (n + 1))

end

end A145983.P13575747387530684584

/-!
# A145984: Number of "universes" built from n entities according to the following rules: 1. Each of the entities can be an element or a set. 2. Sets are entities that do have another entity as an element. 3. There must exist an element. 4. Two sets are identical when they own the same elements.

The programs for A145984, the canonical program `A145984.P7297336203449442969` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A145984 has offset 0).

The definition of A145984 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A145984.P7297336203449442969

`(2^n-1)!/(2^n-n)!`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A145984

/-- `(2^n-1)!/(2^n-n)!` -/
def P7297336203449442969.Spec : Prop :=
  ∀ n, P7297336203449442969.a n = (A145984 n : ℚ)

end A145984

/-! ## A145984.P6250230011913140329

`A088229(n)/2^n`
-/

namespace A145984.P6250230011913140329
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A088229 n : ℚ) / (2 ^ n : ℚ)

end

end A145984.P6250230011913140329

namespace A145984

/-- `A088229(n)/2^n` -/
def P6250230011913140329.Spec : Prop :=
  ∀ n, P6250230011913140329.a n = (A145984 n : ℚ)

end A145984

/-! ## A145984.P15002918309621626165

`n!*C(2^n, n)/record[A029930(n)]`
-/

namespace A145984.P15002918309621626165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029930 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n * Nat.choose (2 ^ n) n : ℚ) / (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ)

end

end A145984.P15002918309621626165

namespace A145984

/-- `n!*C(2^n, n)/record[A029930(n)]` -/
def P15002918309621626165.Spec : Prop :=
  ∀ n, P15002918309621626165.a n = (A145984 n : ℚ)

end A145984

/-! ## A145984.P7453468613197722742

`n!*C(2^n, n)/record[A048483(n)]`
-/

namespace A145984.P7453468613197722742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048483 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n * Nat.choose (2 ^ n) n : ℚ) / (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ)

end

end A145984.P7453468613197722742

namespace A145984

/-- `n!*C(2^n, n)/record[A048483(n)]` -/
def P7453468613197722742.Spec : Prop :=
  ∀ n, P7453468613197722742.a n = (A145984 n : ℚ)

end A145984

/-! ## A145984.P9275856097121471541

`n!*C(2^n, n)/record[A072345(n)]`
-/

namespace A145984.P9275856097121471541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072345 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n * Nat.choose (2 ^ n) n : ℚ) / (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ)

end

end A145984.P9275856097121471541

namespace A145984

/-- `n!*C(2^n, n)/record[A072345(n)]` -/
def P9275856097121471541.Spec : Prop :=
  ∀ n, P9275856097121471541.a n = (A145984 n : ℚ)

end A145984

/-!
# A145985: Primes resulting from subtracting primes from 10^n in order (see Comments for precise definition).

The programs for A145985, the canonical program `A145985.P3219078844094124658` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A145985 has offset 1).

The definition of A145985 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1775 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A145985.P3219078844094124658

`p?[A160668(n+1)]`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A145985

/-- `p?[A160668(n+1)]` -/
def P3219078844094124658.Spec : Prop :=
  ∀ n, P3219078844094124658.a n = A145985 (n + 1)

theorem P3219078844094124658.correct : P3219078844094124658.Spec := by
  intro n
  simp only [A145985, Nat.add_sub_cancel]

end A145985

/-! ## A145985.P10680266581116753395

`p?[A228628(n+1)+1]`
-/

namespace A145985.P10680266581116753395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228628 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A145985.P10680266581116753395

namespace A145985

/-- `p?[A228628(n+1)+1]` -/
def P10680266581116753395.Spec : Prop :=
  ∀ n, P10680266581116753395.a n = A145985 (n + 1)

theorem P10680266581116753395.correct : P10680266581116753395.Spec := by
  intro n
  simp only [A145985, Nat.add_sub_cancel, A145985.P10680266581116753395.f1, A145985.P10680266581116753395.a, A145985.P3219078844094124658.f1, A145985.P3219078844094124658.a, A160668, A160668.P17836700384560215862.a, A228628, A228628.P1311672402623493656.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A061601, A061601.P11117984480287527776.a, A055642, A055642.P2478179801723442865.a, A196563, A196563.P12192156625480906411.a, A196564, A196564.P8945567313368503187.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A145985

/-! ## A145985.P3885686737723190012

`p?[A039790(n+1)-2*A000040(n+1)]`
-/

namespace A145985.P3885686737723190012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039790 (n + 1) - 2 * A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A145985.P3885686737723190012

namespace A145985

/-- `p?[A039790(n+1)-2*A000040(n+1)]` -/
def P3885686737723190012.Spec : Prop :=
  ∀ n, P3885686737723190012.a n = A145985 (n + 1)

theorem P3885686737723190012.correct : P3885686737723190012.Spec := by
  intro n
  simp only [A145985, Nat.add_sub_cancel, A145985.P3885686737723190012.f1, A145985.P3885686737723190012.a, A145985.P3219078844094124658.f1, A145985.P3219078844094124658.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A039790, A039790.P15010338616268529751.a, A160668, A160668.P17836700384560215862.a, A061601, A061601.P11117984480287527776.a, A100484, A100484.P9678625670825099636.a, A055642, A055642.P2478179801723442865.a, A196563, A196563.P12192156625480906411.a, A196564, A196564.P8945567313368503187.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A145985

/-! ## A145985.P12388781249702663168

`filter[A160668(n+1), A010051(#)]`
-/

namespace A145985.P12388781249702663168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160668 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A145985.P12388781249702663168

namespace A145985

/-- `filter[A160668(n+1), A010051(#)]` -/
def P12388781249702663168.Spec : Prop :=
  ∀ n, P12388781249702663168.a n = A145985 (n + 1)

end A145985

/-! ## A145985.P16723270049403117835

`filter[A160668(n+1), A379969(#)]`
-/

namespace A145985.P16723270049403117835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160668 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379969 (f1 j).toNat = 1) n)

end

end A145985.P16723270049403117835

namespace A145985

/-- `filter[A160668(n+1), A379969(#)]` -/
def P16723270049403117835.Spec : Prop :=
  ∀ n, P16723270049403117835.a n = A145985 (n + 1)

end A145985

/-! ## A145985.P5421938480132849065

`filter[A160668(n+1), A380467(#)]`
-/

namespace A145985.P5421938480132849065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160668 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380467 (f1 j).toNat = 1) n)

end

end A145985.P5421938480132849065

namespace A145985

/-- `filter[A160668(n+1), A380467(#)]` -/
def P5421938480132849065.Spec : Prop :=
  ∀ n, P5421938480132849065.a n = A145985 (n + 1)

end A145985

/-! ## A145985.P5825812803965327370

`filter[A160668(n+2), A365716(#)]`
-/

namespace A145985.P5825812803965327370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160668 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A365716 (f1 j).toNat = 1) n)

end

end A145985.P5825812803965327370

namespace A145985

/-- `filter[A160668(n+2), A365716(#)]` -/
def P5825812803965327370.Spec : Prop :=
  ∀ n, P5825812803965327370.a n = A145985 (n + 1)

end A145985

/-! ## A145985.P3847390253224336086

`p?[A061601(A006093(n+1))]`
-/

namespace A145985.P3847390253224336086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061601 (A006093 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A145985.P3847390253224336086

namespace A145985

/-- `p?[A061601(A006093(n+1))]` -/
def P3847390253224336086.Spec : Prop :=
  ∀ n, P3847390253224336086.a n = A145985 (n + 1)

end A145985

/-! ## A145985.P17830613318714715581

`p?[A061601(A039915(n+1))]`
-/

namespace A145985.P17830613318714715581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061601 (A039915 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A145985.P17830613318714715581

namespace A145985

/-- `p?[A061601(A039915(n+1))]` -/
def P17830613318714715581.Spec : Prop :=
  ∀ n, P17830613318714715581.a n = A145985 (n + 1)

end A145985

/-! ## A145985.P15326614369646449627

`A061601(A068811(n+1))+1`
-/

namespace A145985.P15326614369646449627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061601 (A068811 (n + 1)).toNat + 1

end

end A145985.P15326614369646449627

namespace A145985

/-- `A061601(A068811(n+1))+1` -/
def P15326614369646449627.Spec : Prop :=
  ∀ n, P15326614369646449627.a n = A145985 (n + 1)

end A145985

/-! ## A145985.P259601003223191549

`p?[A061601(sqrt(A005722(n+1)))]`
-/

namespace A145985.P259601003223191549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061601 (SequenceMachineLib.roundAway (Real.sqrt (A005722 (n + 1) : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A145985.P259601003223191549

namespace A145985

/-- `p?[A061601(sqrt(A005722(n+1)))]` -/
def P259601003223191549.Spec : Prop :=
  ∀ n, P259601003223191549.a n = A145985 (n + 1)

end A145985

/-! ## A145985.P11749144937118999240

`p?[A061601(A000040(n+1))+1]`
-/

namespace A145985.P11749144937118999240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061601 (A000040 (n + 1)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A145985.P11749144937118999240

namespace A145985

/-- `p?[A061601(A000040(n+1))+1]` -/
def P11749144937118999240.Spec : Prop :=
  ∀ n, P11749144937118999240.a n = A145985 (n + 1)

end A145985

/-! ## A145985.P15418508898097946430

`p?[A061601(A008578(n+1))+1]`
-/

namespace A145985.P15418508898097946430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061601 (A008578 (n + 1)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A145985.P15418508898097946430

namespace A145985

/-- `p?[A061601(A008578(n+1))+1]` -/
def P15418508898097946430.Spec : Prop :=
  ∀ n, P15418508898097946430.a n = A145985 (n + 1)

end A145985

/-! ## A145985.P14268846469103207103

`p?[A010051(n+1)*A061601(n)]`
-/

namespace A145985.P14268846469103207103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1) * A061601 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A145985.P14268846469103207103

namespace A145985

/-- `p?[A010051(n+1)*A061601(n)]` -/
def P14268846469103207103.Spec : Prop :=
  ∀ n, P14268846469103207103.a n = A145985 (n + 1)

end A145985

/-! ## A145985.P6801033714594137044

`p?[A089186(p?[2*n+1])]`
-/

namespace A145985.P6801033714594137044
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089186 (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A145985.P6801033714594137044

namespace A145985

/-- `p?[A089186(p?[2*n+1])]` -/
def P6801033714594137044.Spec : Prop :=
  ∀ n, P6801033714594137044.a n = A145985 (n + 1)

end A145985

/-! ## A145985.P2138847481625708963

`p?[A178914(p?[2*n+1])]`
-/

namespace A145985.P2138847481625708963
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178914 (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A145985.P2138847481625708963

namespace A145985

/-- `p?[A178914(p?[2*n+1])]` -/
def P2138847481625708963.Spec : Prop :=
  ∀ n, P2138847481625708963.a n = A145985 (n + 1)

end A145985

/-! ## A145985.P15163430603608876698

`A089186(A068811(n+1))`
-/

namespace A145985.P15163430603608876698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089186 (A068811 (n + 1)).toNat

end

end A145985.P15163430603608876698

namespace A145985

/-- `A089186(A068811(n+1))` -/
def P15163430603608876698.Spec : Prop :=
  ∀ n, P15163430603608876698.a n = A145985 (n + 1)

end A145985

/-! ## A145985.P9853794525408149075

`filter[A160668(n+1), A080339(#)]`
-/

namespace A145985.P9853794525408149075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160668 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A145985.P9853794525408149075

namespace A145985

/-- `filter[A160668(n+1), A080339(#)]` -/
def P9853794525408149075.Spec : Prop :=
  ∀ n, P9853794525408149075.a n = A145985 (n + 1)

end A145985

/-! ## A145985.P14368195497440655022

`filter[A160668(n+1), A080545(#)]`
-/

namespace A145985.P14368195497440655022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160668 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080545 (f1 j).toNat = 1) n)

end

end A145985.P14368195497440655022

namespace A145985

/-- `filter[A160668(n+1), A080545(#)]` -/
def P14368195497440655022.Spec : Prop :=
  ∀ n, P14368195497440655022.a n = A145985 (n + 1)

end A145985

/-! ## A145985.P3770592064244138319

`filter[A160668(n+1), A323152(#)]`
-/

namespace A145985.P3770592064244138319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160668 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323152 (f1 j).toNat = 1) n)

end

end A145985.P3770592064244138319

namespace A145985

/-- `filter[A160668(n+1), A323152(#)]` -/
def P3770592064244138319.Spec : Prop :=
  ∀ n, P3770592064244138319.a n = A145985 (n + 1)

end A145985

/-!
# A145986: n-th prime in the first occurrence of at least n consecutive primes of the form 4k + 1.

The programs for A145986, there is no canonical definition to state claims against.
-/

/-! ## A145986.P13031768632950765019

`A376396(∑[n+1])`
-/

namespace A145986.P13031768632950765019
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376396 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A145986.P13031768632950765019

/-! ## A145986.P7519373502617045300

`A000040(A363016(n+1)+n)`
-/

namespace A145986.P7519373502617045300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A363016 (n + 1) + (n : ℤ)).toNat

end

end A145986.P7519373502617045300

/-! ## A145986.P13665226919640194372

`A008578(A363016(n+1)+n+1)`
-/

namespace A145986.P13665226919640194372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A363016 (n + 1) + (n + 1 : ℤ)).toNat

end

end A145986.P13665226919640194372

/-!
# A145988: n-th prime in the first occurrence of at least n consecutive primes of the form 4k + 3.

The programs for A145988, there is no canonical definition to state claims against.
-/

/-! ## A145988.P12384348983504350514

`A085760(∑[A086932(n+1)!])`
-/

namespace A145988.P12384348983504350514
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A086932 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085760 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A145988.P12384348983504350514

/-!
# A145989: Run lengths of consecutive primes == 1 (mod 4) where the run length is at least 2.

The programs for A145989, the canonical program `A145989.P5652111938556337468` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A145989 has offset 1).

The definition of A145989 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A145989.P5652111938556337468

`A091318(lt[1, A091318(n+1)]+1)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A145989

/-- `A091318(lt[1, A091318(n+1)]+1)` -/
def P5652111938556337468.Spec : Prop :=
  ∀ n, P5652111938556337468.a n = A145989 (n + 1)

theorem P5652111938556337468.correct : P5652111938556337468.Spec := by
  intro n
  simp only [A145989, Nat.add_sub_cancel]

end A145989

/-! ## A145989.P5254547030699593120

`A036234(A145991(n+1))-A000720(A145990(n+1))`
-/

namespace A145989.P5254547030699593120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036234 (A145991 (n + 1)).toNat - A000720 (A145990 (n + 1)).toNat

end

end A145989.P5254547030699593120

namespace A145989

/-- `A036234(A145991(n+1))-A000720(A145990(n+1))` -/
def P5254547030699593120.Spec : Prop :=
  ∀ n, P5254547030699593120.a n = A145989 (n + 1)

end A145989

/-! ## A145989.P12214941688949651589

`A161189(A054631(n+3)-A114156(n))`
-/

namespace A145989.P12214941688949651589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161189 (A054631 (n + 3) - A114156 n).toNat

end

end A145989.P12214941688949651589

namespace A145989

/-- `A161189(A054631(n+3)-A114156(n))` -/
def P12214941688949651589.Spec : Prop :=
  ∀ n, P12214941688949651589.a n = A145989 (n + 1)

end A145989

/-! ## A145989.P3489045172488576665

`A007814(36*A347573(n))`
-/

namespace A145989.P3489045172488576665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (36 * A347573 (n + 21)).toNat

end

end A145989.P3489045172488576665

namespace A145989

/-- `A007814(36*A347573(n))` -/
def P3489045172488576665.Spec : Prop :=
  ∀ n, P3489045172488576665.a n = A145989 (n + 1)

end A145989

/-! ## A145989.P13190748575223760890

`A001511(36*A347573(n))-1`
-/

namespace A145989.P13190748575223760890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (36 * A347573 (n + 21)).toNat - 1

end

end A145989.P13190748575223760890

namespace A145989

/-- `A001511(36*A347573(n))-1` -/
def P13190748575223760890.Spec : Prop :=
  ∀ n, P13190748575223760890.a n = A145989 (n + 1)

end A145989

/-!
# A145990: Primes which start a run of at least length 2 of consecutive primes == 1 (mod 4).

The programs for A145990, there is no canonical definition to state claims against.
-/

/-! ## A145990.P14291232567098749765

`filter[A100877(n+1), A246260(#)]`
-/

namespace A145990.P14291232567098749765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100877 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A246260 (f1 j).toNat = 1) n)

end

end A145990.P14291232567098749765

/-! ## A145990.P1298957187181663880

`∩[A098059(n+1), A100877(n+1)]`
-/

namespace A145990.P1298957187181663880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098059 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100877 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A145990.P1298957187181663880

/-! ## A145990.P13096242421533149986

`∩[A100877(n+1), A246261(n+1)]`
-/

namespace A145990.P13096242421533149986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100877 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246261 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A145990.P13096242421533149986

/-! ## A145990.P1266434655356793882

`∩[A100877(n+1), A269860(n+1)]`
-/

namespace A145990.P1266434655356793882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100877 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269860 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A145990.P1266434655356793882

/-! ## A145990.P7405674016277966748

`∩[A100877(n+1), A336930(n+1)]`
-/

namespace A145990.P7405674016277966748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100877 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336930 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A145990.P7405674016277966748

/-!
# A145991: Final prime in a run of more than 1 consecutive primes == 1 (mod 4).

The programs for A145991, there is no canonical definition to state claims against.
-/

/-! ## A145991.P5801345559913720996

`record[A094898(3*n+4)]`
-/

namespace A145991.P5801345559913720996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094898 (3 * n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A145991.P5801345559913720996

/-! ## A145991.P273407067205009195

`p?[Δ[A094898((p?[4*n+1]-1)/4)]]`
-/

namespace A145991.P273407067205009195
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094898 (SequenceMachineLib.roundAway (((f3 (SequenceMachineLib.nth (fun j => (f3 j).Prime) n) : ℤ) - 1 : ℚ) / 4)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A145991.P273407067205009195

/-! ## A145991.P1953039629257182939

`p?[A094898((p?[4*n+1]-1)/4+1)]`
-/

namespace A145991.P1953039629257182939
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094898 (SequenceMachineLib.roundAway (((f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) : ℤ) - 1 : ℚ) / 4 + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A145991.P1953039629257182939

/-! ## A145991.P15040347162917655804

`filter[A094898(n+1), A255817(#)]`
-/

namespace A145991.P15040347162917655804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094898 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A255817 (f1 j).toNat = 1) n)

end

end A145991.P15040347162917655804

/-! ## A145991.P16850558958876403863

`p?[A094898(n+2)+A010892(n)]`
-/

namespace A145991.P16850558958876403863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094898 (n + 2) + A010892 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A145991.P16850558958876403863

/-!
# A145992: Run lengths of 2 or more consecutive primes of the form 4k+3.

The programs for A145992, the canonical program `A145992.P5369397507907685557` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A145992 has offset 1).

The definition of A145992 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A145992.P13882643753420948917

`filter[A091267(n+1), A164980(#)]`
-/

namespace A145992.P13882643753420948917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091267 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A164980 (f1 j).toNat = 1) n)

end

end A145992.P13882643753420948917

namespace A145992

/-- `filter[A091267(n+1), A164980(#)]` -/
def P13882643753420948917.Spec : Prop :=
  ∀ n, P13882643753420948917.a n = A145992 (n + 1)

end A145992

/-! ## A145992.P15000354458705365770

`filter[A091267(1+n), A204447(#)]`
-/

namespace A145992.P15000354458705365770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091267 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A204447 (f1 j).toNat = 1) n)

end

end A145992.P15000354458705365770

namespace A145992

/-- `filter[A091267(1+n), A204447(#)]` -/
def P15000354458705365770.Spec : Prop :=
  ∀ n, P15000354458705365770.a n = A145992 (n + 1)

end A145992

/-! ## A145992.P5802692449416710746

`filter[A091267(n+1), A252372(#)]`
-/

namespace A145992.P5802692449416710746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091267 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A252372 (f1 j).toNat = 1) n)

end

end A145992.P5802692449416710746

namespace A145992

/-- `filter[A091267(n+1), A252372(#)]` -/
def P5802692449416710746.Spec : Prop :=
  ∀ n, P5802692449416710746.a n = A145992 (n + 1)

end A145992

/-! ## A145992.P5369397507907685557

`A091267(lt[1, A091267(n+1)]+1)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A145992

/-- `A091267(lt[1, A091267(n+1)]+1)` -/
def P5369397507907685557.Spec : Prop :=
  ∀ n, P5369397507907685557.a n = A145992 (n + 1)

theorem P5369397507907685557.correct : P5369397507907685557.Spec := by
  intro n
  simp only [A145992, Nat.add_sub_cancel]

end A145992

/-! ## A145992.P17571441816214227432

`A091267(record[(n+1)%(A091267(n+2)+n)]+1)`
-/

namespace A145992.P17571441816214227432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A091267 (n + 2) + (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091267 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1).toNat

end

end A145992.P17571441816214227432

namespace A145992

/-- `A091267(record[(n+1)%(A091267(n+2)+n)]+1)` -/
def P17571441816214227432.Spec : Prop :=
  ∀ n, P17571441816214227432.a n = A145992 (n + 1)

end A145992

/-! ## A145992.P10885291437521925470

`A246272(A145993(n+1))`
-/

namespace A145992.P10885291437521925470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246272 (A145993 (n + 1)).toNat

end

end A145992.P10885291437521925470

namespace A145992

/-- `A246272(A145993(n+1))` -/
def P10885291437521925470.Spec : Prop :=
  ∀ n, P10885291437521925470.a n = A145992 (n + 1)

end A145992

/-! ## A145992.P14765449169768388097

`A246271(A145993(n+1))+A007318(∑[n])`
-/

namespace A145992.P14765449169768388097
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246271 (A145993 (n + 1)).toNat + A007318 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A145992.P14765449169768388097

namespace A145992

/-- `A246271(A145993(n+1))+A007318(∑[n])` -/
def P14765449169768388097.Spec : Prop :=
  ∀ n, P14765449169768388097.a n = A145992 (n + 1)

end A145992

/-! ## A145992.P11763701874404893122

`A246271(A145993(n+1))+A007318(C(2, n))²`
-/

namespace A145992.P11763701874404893122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246271 (A145993 (n + 1)).toNat + A007318 (Nat.choose 2 n) ^ 2

end

end A145992.P11763701874404893122

namespace A145992

/-- `A246271(A145993(n+1))+A007318(C(2, n))²` -/
def P11763701874404893122.Spec : Prop :=
  ∀ n, P11763701874404893122.a n = A145992 (n + 1)

end A145992

/-! ## A145992.P17183277384917927276

`A246271(A145993(n+1))+A000108(C(2, n+2))`
-/

namespace A145992.P17183277384917927276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246271 (A145993 (n + 1)).toNat + A000108 (Nat.choose 2 (n + 2))

end

end A145992.P17183277384917927276

namespace A145992

/-- `A246271(A145993(n+1))+A000108(C(2, n+2))` -/
def P17183277384917927276.Spec : Prop :=
  ∀ n, P17183277384917927276.a n = A145992 (n + 1)

end A145992

/-! ## A145992.P16559009405564304912

`A246271(A145993(n+1))+A000045(gcd(n, n+1))`
-/

namespace A145992.P16559009405564304912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246271 (A145993 (n + 1)).toNat + A000045 (Nat.gcd n (n + 1))

end

end A145992.P16559009405564304912

namespace A145992

/-- `A246271(A145993(n+1))+A000045(gcd(n, n+1))` -/
def P16559009405564304912.Spec : Prop :=
  ∀ n, P16559009405564304912.a n = A145992 (n + 1)

end A145992

/-!
# A145993: Primes that start a run of at least 2 consecutive primes of the form 4k+3.

The programs for A145993, there is no canonical definition to state claims against.
-/

/-! ## A145993.P5329398325013165104

`p?[A100859(2*n+1)%A100860(n+1)]`
-/

namespace A145993.P5329398325013165104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A100859 (2 * n + 1)) (A100860 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A145993.P5329398325013165104

/-! ## A145993.P13828995522267959247

`record[A100859(2*n+3)%A100860(n+2)]`
-/

namespace A145993.P13828995522267959247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A100859 (2 * n + 3)) (A100860 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A145993.P13828995522267959247

/-! ## A145993.P2274047591672373090

`∩[A055939(n+1), A092574(n+1)]`
-/

namespace A145993.P2274047591672373090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055939 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092574 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A145993.P2274047591672373090

/-! ## A145993.P2756379876901561133

`∩[A055939(n+1), A144917(n+1)]`
-/

namespace A145993.P2756379876901561133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055939 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144917 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A145993.P2756379876901561133

/-! ## A145993.P13919669118118221733

`∩[A098059(n+1), A122124(n+1)]`
-/

namespace A145993.P13919669118118221733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098059 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122124 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A145993.P13919669118118221733

/-!
# A145994: Last prime in a run of at least 2 consecutive primes of the form 4k+3.

The programs for A145994, there is no canonical definition to state claims against.
-/

/-! ## A145994.P13600236158514270521

`p?[A003961(4*n+3)*A246271(4*n+3)]`
-/

namespace A145994.P13600236158514270521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (4 * n + 3) * A246271 (4 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A145994.P13600236158514270521

/-! ## A145994.P5217959027731370280

`∩[A098058(2*(n+1)), A003961(A002145(n+1))]`
-/

namespace A145994.P5217959027731370280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098058 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (A002145 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A145994.P5217959027731370280

/-! ## A145994.P16065674758328188058

`∩[A098058(2*(n+1)), A065091(A080148(n+1))]`
-/

namespace A145994.P16065674758328188058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098058 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (A080148 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A145994.P16065674758328188058

/-! ## A145994.P4734822727237307158

`∩[A003961(A098059(n+1)), A100860(n+1)]`
-/

namespace A145994.P4734822727237307158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (A098059 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100860 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A145994.P4734822727237307158

/-! ## A145994.P18106404560406687683

`∩[A100860(n+1), A003961(A152087(n+1))]`
-/

namespace A145994.P18106404560406687683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100860 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (A152087 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A145994.P18106404560406687683

/-!
# A145995: a(n) = 8 - 12*n + 5*n^2.

The programs for A145995, the canonical program `A145995.P7477718694786758229` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A145995 has offset 1).

The definition of A145995 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `8-12*(n+1)+5*(n+1)²` (program `A145995.P7477718694786758229`, by `A145995.P7477718694786758229.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A145995.P12253016366869898506

`ogf((1+x+8x^2)/(1-3x+3x^2-x^3))`
-/

namespace A145995.P12253016366869898506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, 8] [1, -3, 3, -1] n

end

end A145995.P12253016366869898506

namespace A145995

/-- `ogf((1+x+8x^2)/(1-3x+3x^2-x^3))` -/
def P12253016366869898506.Spec : Prop :=
  ∀ n, P12253016366869898506.a n = A145995 (n + 1)

end A145995

/-! ## A145995.P6761096479398246311

`a(n-1)+10*(n+1)-17` with `a(0)=1`
-/

namespace A145995.P6761096479398246311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (10 * (n + 1) : ℤ) - 17

end

end A145995.P6761096479398246311

namespace A145995

/-- `a(n-1)+10*(n+1)-17` -/
def P6761096479398246311.Spec : Prop :=
  ∀ n, P6761096479398246311.a n = A145995 (n + 1)

theorem P6761096479398246311.correct : P6761096479398246311.Spec := by
  intro n
  induction n with
  | zero => simp [A145995, A145995.P6761096479398246311.a, A145995.P7477718694786758229.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A145995, Nat.add_sub_cancel, A145995.P6761096479398246311.a, A145995.P7477718694786758229.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A145995

/-! ## A145995.P7477718694786758229

`8-12*(n+1)+5*(n+1)²`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A145995

/-- `8-12*(n+1)+5*(n+1)²` -/
def P7477718694786758229.Spec : Prop :=
  ∀ n, P7477718694786758229.a n = A145995 (n + 1)

theorem P7477718694786758229.correct : P7477718694786758229.Spec := by
  intro n
  simp only [A145995, Nat.add_sub_cancel]

end A145995

/-! ## A145995.P10981072913061780244

`∑[10+a(n-1)]` with `a(0)=1, a(1)=3`
-/

namespace A145995.P10981072913061780244
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n f1 =>
  10 + f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A145995.P10981072913061780244

namespace A145995

/-- `∑[10+a(n-1)]` -/
def P10981072913061780244.Spec : Prop :=
  ∀ n, (P10981072913061780244.a n : ℤ) = A145995 (n + 1)

end A145995

/-! ## A145995.P13957653622727134734

`∑[ogf((1+x+8x^2)/(1-2x+x^2))]`
-/

namespace A145995.P13957653622727134734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, 8] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A145995.P13957653622727134734

namespace A145995

/-- `∑[ogf((1+x+8x^2)/(1-2x+x^2))]` -/
def P13957653622727134734.Spec : Prop :=
  ∀ n, P13957653622727134734.a n = A145995 (n + 1)

end A145995

/-! ## A145995.P3963058272075242052

`10*n-(7-a(n-1))` with `a(0)=1`
-/

namespace A145995.P3963058272075242052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (10 * n : ℤ) - (7 - a (n - 1))

end

end A145995.P3963058272075242052

namespace A145995

/-- `10*n-(7-a(n-1))` -/
def P3963058272075242052.Spec : Prop :=
  ∀ n, P3963058272075242052.a n = A145995 (n + 1)

theorem P3963058272075242052.correct : P3963058272075242052.Spec := by
  intro n
  induction n with
  | zero => simp [A145995, A145995.P3963058272075242052.a, A145995.P7477718694786758229.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A145995, Nat.add_sub_cancel, A145995.P3963058272075242052.a, A145995.P7477718694786758229.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A145995

/-! ## A145995.P1568471090642095734

`xor(2, 5*n²)-(2*n+1)`
-/

namespace A145995.P1568471090642095734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.xor 2 (5 * n ^ 2) : ℤ) - (2 * n + 1 : ℤ)

end

end A145995.P1568471090642095734

namespace A145995

/-- `xor(2, 5*n²)-(2*n+1)` -/
def P1568471090642095734.Spec : Prop :=
  ∀ n, P1568471090642095734.a n = A145995 (n + 1)

end A145995

/-! ## A145995.P4921606183810391442

`∑[record[n^(2-dr(n))]+n+1]`
-/

namespace A145995.P4921606183810391442
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ (2 - (SequenceMachineLib.digitalRoot (n : ℤ) : ℤ) : ℤ)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) + (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A145995.P4921606183810391442

namespace A145995

/-- `∑[record[n^(2-dr(n))]+n+1]` -/
def P4921606183810391442.Spec : Prop :=
  ∀ n, P4921606183810391442.a n = (A145995 (n + 1) : ℚ)

end A145995

/-! ## A145995.P14158559326950198931

`∑[A134154(n)]/(n+1)`
-/

namespace A145995.P14158559326950198931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134154 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (n + 1 : ℚ)

end

end A145995.P14158559326950198931

namespace A145995

/-- `∑[A134154(n)]/(n+1)` -/
def P14158559326950198931.Spec : Prop :=
  ∀ n, P14158559326950198931.a n = (A145995 (n + 1) : ℚ)

end A145995

/-! ## A145995.P8388666903125847215

`(A152745(n)+2+n)/2`
-/

namespace A145995.P8388666903125847215
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A152745 n + 2 + (n : ℤ) : ℚ) / 2

end

end A145995.P8388666903125847215

namespace A145995

/-- `(A152745(n)+2+n)/2` -/
def P8388666903125847215.Spec : Prop :=
  ∀ n, P8388666903125847215.a n = (A145995 (n + 1) : ℚ)

theorem P8388666903125847215.correct : P8388666903125847215.Spec := by
  intro n
  simp only [A145995, Nat.add_sub_cancel, A145995.P8388666903125847215.a, A145995.P7477718694786758229.a, A152745, A152745.P16319448158655216416.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A145995

/-! ## A145995.P3106439246785023633

`abs(2*A005476(n)-(n-1))`
-/

namespace A145995.P3106439246785023633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 * A005476 n - ((n : ℤ) - 1)|

end

end A145995.P3106439246785023633

namespace A145995

/-- `abs(2*A005476(n)-(n-1))` -/
def P3106439246785023633.Spec : Prop :=
  ∀ n, P3106439246785023633.a n = A145995 (n + 1)

end A145995

/-! ## A145995.P3148131822628784923

`abs((n-1)*A016885(n)+4)`
-/

namespace A145995.P3148131822628784923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((n : ℤ) - 1) * A016885 n + 4|

end

end A145995.P3148131822628784923

namespace A145995

/-- `abs((n-1)*A016885(n)+4)` -/
def P3148131822628784923.Spec : Prop :=
  ∀ n, P3148131822628784923.a n = A145995 (n + 1)

end A145995

/-! ## A145995.P9698141377106753572

`floor(n+1+n²+A152767(n)/3)`
-/

namespace A145995.P9698141377106753572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℚ) + ((n ^ 2 : ℚ) + (A152767 n : ℚ) / 3)⌋

end

end A145995.P9698141377106753572

namespace A145995

/-- `floor(n+1+n²+A152767(n)/3)` -/
def P9698141377106753572.Spec : Prop :=
  ∀ n, P9698141377106753572.a n = A145995 (n + 1)

end A145995

/-! ## A145995.P2865264511903498505

`floor((2*(n+1)+A153784(n)+1)/2)`
-/

namespace A145995.P2865264511903498505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((2 * (n + 1) : ℤ) + (A153784 n + 1) : ℚ) / 2⌋

end

end A145995.P2865264511903498505

namespace A145995

/-- `floor((2*(n+1)+A153784(n)+1)/2)` -/
def P2865264511903498505.Spec : Prop :=
  ∀ n, P2865264511903498505.a n = A145995 (n + 1)

end A145995

/-! ## A145995.P12280841398347923577

`abs(2*n*3*n+1-A005563(n))`
-/

namespace A145995.P12280841398347923577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 * n * (3 * n) + 1 : ℤ) - A005563 n|

end

end A145995.P12280841398347923577

namespace A145995

/-- `abs(2*n*3*n+1-A005563(n))` -/
def P12280841398347923577.Spec : Prop :=
  ∀ n, P12280841398347923577.a n = A145995 (n + 1)

end A145995

/-! ## A145995.P16034346839957983978

`abs(A000027(n+1)+n*(5*n-3))`
-/

namespace A145995.P16034346839957983978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000027 (n + 1) + (n : ℤ) * ((5 * n : ℤ) - 3)|

end

end A145995.P16034346839957983978

namespace A145995

/-- `abs(A000027(n+1)+n*(5*n-3))` -/
def P16034346839957983978.Spec : Prop :=
  ∀ n, P16034346839957983978.a n = A145995 (n + 1)

end A145995

/-! ## A145995.P11637250490683503022

`abs(4*n-(n*A008592(n)+2))/2`
-/

namespace A145995.P11637250490683503022
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (|(4 * n : ℤ) - ((n : ℤ) * A008592 n + 2)| : ℚ) / 2

end

end A145995.P11637250490683503022

namespace A145995

/-- `abs(4*n-(n*A008592(n)+2))/2` -/
def P11637250490683503022.Spec : Prop :=
  ∀ n, P11637250490683503022.a n = (A145995 (n + 1) : ℚ)

end A145995

/-! ## A145995.P14546082991712177590

`xor(2, (n+1)²+A054552(n)-n+1)`
-/

namespace A145995.P14546082991712177590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 2 (((n + 1) ^ 2 : ℤ) + (A054552 n - (n : ℤ)) + 1)

end

end A145995.P14546082991712177590

namespace A145995

/-- `xor(2, (n+1)²+A054552(n)-n+1)` -/
def P14546082991712177590.Spec : Prop :=
  ∀ n, P14546082991712177590.a n = A145995 (n + 1)

end A145995

/-! ## A145995.P13322404163881028605

`abs(ceil((A005901(n)+2*n)/2)-3*n)`
-/

namespace A145995.P13322404163881028605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |⌈(A005901 n + (2 * n : ℤ) : ℚ) / 2⌉ - (3 * n : ℤ)|

end

end A145995.P13322404163881028605

namespace A145995

/-- `abs(ceil((A005901(n)+2*n)/2)-3*n)` -/
def P13322404163881028605.Spec : Prop :=
  ∀ n, P13322404163881028605.a n = A145995 (n + 1)

end A145995

/-! ## A145995.P16454392831032385475

`xor(A176040(n), A295905(n+1))`
-/

namespace A145995.P16454392831032385475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A176040 n) (A295905 (n + 1))

end

end A145995.P16454392831032385475

namespace A145995

/-- `xor(A176040(n), A295905(n+1))` -/
def P16454392831032385475.Spec : Prop :=
  ∀ n, P16454392831032385475.a n = A145995 (n + 1)

end A145995

/-!
# A145997: Number of n X n binary arrays with all ones connected only in a 3X3 plus 2,1 2,2 2,3 1,2 3,2.

The programs for A145997, there is no canonical definition to state claims against.
-/

/-! ## A145997.P3439232642709789990

`A145999(2*(n+2))`
-/

namespace A145997.P3439232642709789990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145999 (2 * (n + 2))

end

end A145997.P3439232642709789990

/-! ## A145997.P1839617744022252094

`A238616(ceil(2^(n-1)))+char[3]`
-/

namespace A145997.P1839617744022252094
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238616 ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉.toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A145997.P1839617744022252094

/-! ## A145997.P11627053834222967821

`or(n%2, A238616(A011782(n)))`
-/

namespace A145997.P11627053834222967821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((n % 2 : ℕ) : ℤ) (A238616 (A011782 n).toNat)

end

end A145997.P11627053834222967821

