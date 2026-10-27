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
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C037
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C011
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C005
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B010.C000
import Seq.B011.C000
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
import Seq.Opaque.C012
import Seq.Opaque.C013
import Seq.Opaque.C015
import Seq.Opaque.C016
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A116100: Partial sums of A004977.

The programs for A116100, there is no canonical definition to state claims against.
-/

/-! ## A116100.P9174242710561181864

`∑[A004977(n+1)]`
-/

namespace A116100.P9174242710561181864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004977 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A116100.P9174242710561181864

/-! ## A116100.P12625039883946445238

`A004977(-xor(n, -1))+a(n-1)` with `a(0)=1`
-/

namespace A116100.P12625039883946445238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A004977 (-Int.xor (n : ℤ) (-1)).toNat + a (n - 1)

end

end A116100.P12625039883946445238

/-! ## A116100.P10419164250972185703

`A004977(abs(1-n)+2)+a(n-1)` with `a(0)=1`
-/

namespace A116100.P10419164250972185703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A004977 (|1 - (n : ℤ)| + 2).toNat + a (n - 1)

end

end A116100.P10419164250972185703

/-! ## A116100.P11135427679422263286

`∑[record[A004977(A065648(n))]]`
-/

namespace A116100.P11135427679422263286
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004977 (A065648 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A116100.P11135427679422263286

/-! ## A116100.P1950187359713058709

`∑[record[A004977(A117910(n))]]`
-/

namespace A116100.P1950187359713058709
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004977 (A117910 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A116100.P1950187359713058709

/-!
# A116102: Numbers k such that k concatenated with k-8 gives the product of two numbers which differ by 2.

The programs for A116102, there is no canonical definition to state claims against.
-/

/-! ## A116102.P8384529577411363942

`A115434(n+2)`
-/

namespace A116102.P8384529577411363942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115434 (n + 2)

end

end A116102.P8384529577411363942

/-!
# A116106: Numbers k such that k concatenated with k-8 gives the product of two numbers which differ by 6.

The programs for A116106, there is no canonical definition to state claims against.
-/

/-! ## A116106.P3558304315051081842

`eq[A002260(n+1), A207682(A213542(n))]`
-/

namespace A116106.P3558304315051081842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207682 (A213542 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A116106.P3558304315051081842

/-!
# A116109: Numbers k such that k concatenated with k-8 gives the product of two numbers which differ by 9.

The programs for A116109, there is no canonical definition to state claims against.
-/

/-! ## A116109.P4365265626173220669

`A116160(n+2)`
-/

namespace A116109.P4365265626173220669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116160 (n + 2)

end

end A116109.P4365265626173220669

/-! ## A116109.P2292013208860112775

`record[A116160(or(n, A000038(n)))]`
-/

namespace A116109.P2292013208860112775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116160 (Int.lor (n : ℤ) (A000038 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A116109.P2292013208860112775

/-! ## A116109.P4024205514297874403

`record[A116160(xor(n, A000038(n)))]`
-/

namespace A116109.P4024205514297874403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116160 (Int.xor (n : ℤ) (A000038 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A116109.P4024205514297874403

/-! ## A116109.P2515462921142951230

`record[A116160(A286378(n^(n%2)))]`
-/

namespace A116109.P2515462921142951230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116160 (A286378 (n ^ (n % 2))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A116109.P2515462921142951230

/-! ## A116109.P10449944622090584004

`record[A116160(Δ[A061885(n)])]`
-/

namespace A116109.P10449944622090584004
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061885 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116160 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A116109.P10449944622090584004

/-!
# A116110: Numbers k such that k concatenated with k-7 gives the product of two numbers which differ by 3.

The programs for A116110, there is no canonical definition to state claims against.
-/

/-! ## A116110.P6472357788320643737

`A116120(n+2)`
-/

namespace A116110.P6472357788320643737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116120 (n + 2)

end

end A116110.P6472357788320643737

/-!
# A116111: Where records occur in A051169.

The programs for A116111, there is no canonical definition to state claims against.
-/

/-! ## A116111.P5063386756707631029

`A000720(A025019(n+1))`
-/

namespace A116111.P5063386756707631029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A025019 (n + 1)).toNat

end

end A116111.P5063386756707631029

/-!
# A116113: Numbers k such that k concatenated with k-7 gives the product of two numbers which differ by 8.

The programs for A116113, there is no canonical definition to state claims against.
-/

/-! ## A116113.P7388430235831877815

`A116159(n+2)`
-/

namespace A116113.P7388430235831877815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116159 (n + 2)

end

end A116113.P7388430235831877815

/-! ## A116113.P8653391271505974362

`record[A116159(A001281(A004277(n)))]`
-/

namespace A116113.P8653391271505974362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116159 (A001281 (A004277 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A116113.P8653391271505974362

/-! ## A116113.P14177391933186014878

`record[A116159(A000267(A058212(n)))]`
-/

namespace A116113.P14177391933186014878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116159 (A000267 (A058212 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A116113.P14177391933186014878

/-! ## A116113.P261297879755688471

`record[A116159(Δ[A061885(n)])]`
-/

namespace A116113.P261297879755688471
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061885 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116159 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A116113.P261297879755688471

/-! ## A116113.P16905901727005895487

`record[A116159(A000267(A008611(n)))]`
-/

namespace A116113.P16905901727005895487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116159 (A000267 (A008611 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A116113.P16905901727005895487

/-!
# A116114: Numbers k such that k concatenated with k-7 gives the product of two numbers which differ by 9.

The programs for A116114, there is no canonical definition to state claims against.
-/

/-! ## A116114.P1237432497177645434

`A116167(n+1)+A004016(A004016(n²))`
-/

namespace A116114.P1237432497177645434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116167 (n + 1) + A004016 (A004016 (n ^ 2)).toNat

end

end A116114.P1237432497177645434

/-! ## A116114.P5894970955052998865

`A116167(n+1)+A004016(A004016(n)+2)`
-/

namespace A116114.P5894970955052998865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116167 (n + 1) + A004016 (A004016 n + 2).toNat

end

end A116114.P5894970955052998865

/-! ## A116114.P17105630157722803282

`A116167(n+1)+C(A144544(n), A000244(n))`
-/

namespace A116114.P17105630157722803282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116167 (n + 1) + (Nat.choose (A144544 n).toNat (A000244 n).toNat : ℤ)

end

end A116114.P17105630157722803282

/-! ## A116114.P15851687816087053739

`A116167(n+1)+C(A144544(n), A345682(n+1))`
-/

namespace A116114.P15851687816087053739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116167 (n + 1) + (Nat.choose (A144544 n).toNat (A345682 (n + 1)).toNat : ℤ)

end

end A116114.P15851687816087053739

/-! ## A116114.P3337165448636984779

`A116167(n+1)+C(A250408(n+5), A267388(n+2))`
-/

namespace A116114.P3337165448636984779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116167 (n + 1) + (Nat.choose (A250408 (n + 5)).toNat (A267388 (n + 2)).toNat : ℤ)

end

end A116114.P3337165448636984779

/-!
# A116119: Numbers k such that k concatenated with k-6 gives the product of two numbers which differ by 7.

The programs for A116119, there is no canonical definition to state claims against.
-/

/-! ## A116119.P16019770914690071597

`A116158(n+2)`
-/

namespace A116119.P16019770914690071597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116158 (n + 2)

end

end A116119.P16019770914690071597

/-! ## A116119.P12224705131811930745

`record[A116158(Δ[A061885(n)])]`
-/

namespace A116119.P12224705131811930745
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061885 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116158 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A116119.P12224705131811930745

/-!
# A116120: Numbers k such that k concatenated with k-5 gives the product of two numbers which differ by 1.

The programs for A116120, there is no canonical definition to state claims against.
-/

/-! ## A116120.P2313078537256466584

`∪[A116110(n+1)%A116102(n+1), A116110(n+1)]`
-/

namespace A116120.P2313078537256466584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A116110 (n + 1)) (A116102 (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116110 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A116120.P2313078537256466584

/-! ## A116120.P11623413228741709397

`A116110(A028310(n))%A116102(n+1)`
-/

namespace A116120.P11623413228741709397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A116110 (A028310 n).toNat) (A116102 (n + 1))

end

end A116120.P11623413228741709397

/-!
# A116124: Numbers k such that k concatenated with k-5 gives the product of two numbers which differ by 5.

The programs for A116124, there is no canonical definition to state claims against.
-/

/-! ## A116124.P849893189231599326

`A116163(n+3)`
-/

namespace A116124.P849893189231599326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116163 (n + 3)

end

end A116124.P849893189231599326

/-!
# A116127: Number of numbers that are congruent to {2, 4} mod 6 between prime(n) and prime(n+1) inclusive.

The programs for A116127, the canonical program `A116127.P9546234981588161604` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A116127 has offset 1).

The definition of A116127 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A116127.P5369339831307403921

`Δ[floor(A055670(n+1)/3)]`
-/

namespace A116127.P5369339831307403921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A055670 (n + 1) : ℚ) / 3⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A116127.P5369339831307403921

namespace A116127

/-- `Δ[floor(A055670(n+1)/3)]` -/
def P5369339831307403921.Spec : Prop :=
  ∀ n, P5369339831307403921.a n = A116127 (n + 1)

end A116127

/-! ## A116127.P9546234981588161604

`Δ[round(A006005(n+1)/3)]`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A116127

/-- `Δ[round(A006005(n+1)/3)]` -/
def P9546234981588161604.Spec : Prop :=
  ∀ n, P9546234981588161604.a n = A116127 (n + 1)

theorem P9546234981588161604.correct : P9546234981588161604.Spec := by
  intro n
  simp only [A116127, Nat.add_sub_cancel]

end A116127

/-! ## A116127.P12974070541339861779

`Δ[round(or(1, A000040(n+1)-1)/3)]`
-/

namespace A116127.P12974070541339861779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Int.lor 1 (A000040 (n + 1) - 1) : ℚ) / 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A116127.P12974070541339861779

namespace A116127

/-- `Δ[round(or(1, A000040(n+1)-1)/3)]` -/
def P12974070541339861779.Spec : Prop :=
  ∀ n, P12974070541339861779.a n = A116127 (n + 1)

end A116127

/-! ## A116127.P4086307081934834438

`A008611(A046933(n+1)%A008611(4*n))`
-/

namespace A116127.P4086307081934834438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (Int.tmod (A046933 (n + 1)) (A008611 (4 * n))).toNat

end

end A116127.P4086307081934834438

namespace A116127

/-- `A008611(A046933(n+1)%A008611(4*n))` -/
def P4086307081934834438.Spec : Prop :=
  ∀ n, P4086307081934834438.a n = A116127 (n + 1)

end A116127

/-! ## A116127.P5803572130565754884

`Δ[A004523(A111333(n+1))]`
-/

namespace A116127.P5803572130565754884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004523 (A111333 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A116127.P5803572130565754884

namespace A116127

/-- `Δ[A004523(A111333(n+1))]` -/
def P5803572130565754884.Spec : Prop :=
  ∀ n, P5803572130565754884.a n = A116127 (n + 1)

end A116127

/-! ## A116127.P8377542273888417983

`A008611(A006093(n+2)-p?[A186101(n)])`
-/

namespace A116127.P8377542273888417983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186101 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (A006093 (n + 2) - f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A116127.P8377542273888417983

namespace A116127

/-- `A008611(A006093(n+2)-p?[A186101(n)])` -/
def P8377542273888417983.Spec : Prop :=
  ∀ n, P8377542273888417983.a n = A116127 (n + 1)

end A116127

/-! ## A116127.P11452142494694798086

`Δ[A002264(A055670(n+1))]`
-/

namespace A116127.P11452142494694798086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A055670 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A116127.P11452142494694798086

namespace A116127

/-- `Δ[A002264(A055670(n+1))]` -/
def P11452142494694798086.Spec : Prop :=
  ∀ n, P11452142494694798086.a n = A116127 (n + 1)

end A116127

/-! ## A116127.P16560945776363507893

`Δ[A291267(A000040(n+1))]`
-/

namespace A116127.P16560945776363507893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291267 (A000040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A116127.P16560945776363507893

namespace A116127

/-- `Δ[A291267(A000040(n+1))]` -/
def P16560945776363507893.Spec : Prop :=
  ∀ n, P16560945776363507893.a n = A116127 (n + 1)

end A116127

/-! ## A116127.P5148675575168206

`Δ[A285870(A006093(n+1))]`
-/

namespace A116127.P5148675575168206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285870 (A006093 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A116127.P5148675575168206

namespace A116127

/-- `Δ[A285870(A006093(n+1))]` -/
def P5148675575168206.Spec : Prop :=
  ∀ n, P5148675575168206.a n = A116127 (n + 1)

end A116127

/-! ## A116127.P11705448246914812552

`Δ[A002264(A093515(Δ[n²]))]`
-/

namespace A116127.P11705448246914812552
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A093515 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A116127.P11705448246914812552

namespace A116127

/-- `Δ[A002264(A093515(Δ[n²]))]` -/
def P11705448246914812552.Spec : Prop :=
  ∀ n, P11705448246914812552.a n = A116127 (n + 1)

end A116127

/-! ## A116127.P9848550059257374060

`Δ[A086161(record[A090369(n+1)])]`
-/

namespace A116127.P9848550059257374060
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090369 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086161 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A116127.P9848550059257374060

namespace A116127

/-- `Δ[A086161(record[A090369(n+1)])]` -/
def P9848550059257374060.Spec : Prop :=
  ∀ n, P9848550059257374060.a n = A116127 (n + 1)

end A116127

/-! ## A116127.P5271130220983997881

`Δ[A051274(A000040(n+1)+1)]`
-/

namespace A116127.P5271130220983997881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051274 (A000040 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A116127.P5271130220983997881

namespace A116127

/-- `Δ[A051274(A000040(n+1)+1)]` -/
def P5271130220983997881.Spec : Prop :=
  ∀ n, P5271130220983997881.a n = A116127 (n + 1)

end A116127

/-! ## A116127.P10050874459637841977

`Δ[A230128(A000040(n+1)+2)]`
-/

namespace A116127.P10050874459637841977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230128 (A000040 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A116127.P10050874459637841977

namespace A116127

/-- `Δ[A230128(A000040(n+1)+2)]` -/
def P10050874459637841977.Spec : Prop :=
  ∀ n, P10050874459637841977.a n = A116127 (n + 1)

end A116127

/-! ## A116127.P8471769349624908223

`Δ[A267806(A000040(n+1)-1)]`
-/

namespace A116127.P8471769349624908223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267806 (A000040 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A116127.P8471769349624908223

namespace A116127

/-- `Δ[A267806(A000040(n+1)-1)]` -/
def P8471769349624908223.Spec : Prop :=
  ∀ n, P8471769349624908223.a n = A116127 (n + 1)

end A116127

/-! ## A116127.P13557362418994700412

`Δ[A008620(A093515(2*n+1))]`
-/

namespace A116127.P13557362418994700412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A093515 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A116127.P13557362418994700412

namespace A116127

/-- `Δ[A008620(A093515(2*n+1))]` -/
def P13557362418994700412.Spec : Prop :=
  ∀ n, P13557362418994700412.a n = A116127 (n + 1)

end A116127

/-! ## A116127.P10033553066992992745

`Δ[A002264(2*A111333(n+1))]`
-/

namespace A116127.P10033553066992992745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (2 * A111333 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A116127.P10033553066992992745

namespace A116127

/-- `Δ[A002264(2*A111333(n+1))]` -/
def P10033553066992992745.Spec : Prop :=
  ∀ n, P10033553066992992745.a n = A116127 (n + 1)

end A116127

/-! ## A116127.P17543764707544087854

`Δ[A267806(eq[1, A001222(n+1)])]`
-/

namespace A116127.P17543764707544087854
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267806 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A116127.P17543764707544087854

namespace A116127

/-- `Δ[A267806(eq[1, A001222(n+1)])]` -/
def P17543764707544087854.Spec : Prop :=
  ∀ n, P17543764707544087854.a n = A116127 (n + 1)

end A116127

/-! ## A116127.P4848028717510973852

`Δ[A004396(A008619(A008864(n+1)))]`
-/

namespace A116127.P4848028717510973852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A008619 (A008864 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A116127.P4848028717510973852

namespace A116127

/-- `Δ[A004396(A008619(A008864(n+1)))]` -/
def P4848028717510973852.Spec : Prop :=
  ∀ n, P4848028717510973852.a n = A116127 (n + 1)

end A116127

/-! ## A116127.P15587463189549456517

`Δ[A002264(A111333(n+1)+A111333(n+1))]`
-/

namespace A116127.P15587463189549456517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A111333 (n + 1) + A111333 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A116127.P15587463189549456517

namespace A116127

/-- `Δ[A002264(A111333(n+1)+A111333(n+1))]` -/
def P15587463189549456517.Spec : Prop :=
  ∀ n, P15587463189549456517.a n = A116127 (n + 1)

end A116127

/-! ## A116127.P9655650217661855097

`Δ[A002264(A000593(A100484(n+1)))]`
-/

namespace A116127.P9655650217661855097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A000593 (A100484 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A116127.P9655650217661855097

namespace A116127

/-- `Δ[A002264(A000593(A100484(n+1)))]` -/
def P9655650217661855097.Spec : Prop :=
  ∀ n, P9655650217661855097.a n = A116127 (n + 1)

end A116127

/-!
# A116131: Numbers k such that k concatenated with k-4 gives the product of two numbers which differ by 6.

The programs for A116131, there is no canonical definition to state claims against.
-/

/-! ## A116131.P2884706420530605929

`A115428(n+3)`
-/

namespace A116131.P2884706420530605929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115428 (n + 3)

end

end A116131.P2884706420530605929

/-!
# A116132: Numbers k such that k concatenated with k-4 gives the product of two numbers which differ by 7.

The programs for A116132, there is no canonical definition to state claims against.
-/

/-! ## A116132.P4538310901752797634

`A116172(n+2)`
-/

namespace A116132.P4538310901752797634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116172 (n + 2)

end

end A116132.P4538310901752797634

/-! ## A116132.P1824401846492614304

`record[A116172(or(n, A000038(n)))]`
-/

namespace A116132.P1824401846492614304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116172 (Int.lor (n : ℤ) (A000038 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A116132.P1824401846492614304

/-! ## A116132.P9554314497197245918

`record[A116172(xor(n, A000038(n)))]`
-/

namespace A116132.P9554314497197245918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116172 (Int.xor (n : ℤ) (A000038 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A116132.P9554314497197245918

/-! ## A116132.P12464508589666642225

`record[A116172(A126759(Δ[n²]))]`
-/

namespace A116132.P12464508589666642225
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116172 (A126759 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A116132.P12464508589666642225

/-! ## A116132.P14068671907070226373

`record[A116172(Δ[A061885(n)])]`
-/

namespace A116132.P14068671907070226373
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061885 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116172 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A116132.P14068671907070226373

/-!
# A116136: Numbers k such that k concatenated with k-3 gives the product of two numbers which differ by 4.

The programs for A116136, there is no canonical definition to state claims against.
-/

/-! ## A116136.P17234443307259119313

`filter[A116106(n+1), A189723(#)]`
-/

namespace A116136.P17234443307259119313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116106 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A189723 (f1 j).toNat = 1) n)

end

end A116136.P17234443307259119313

/-! ## A116136.P15354275200970503465

`filter[A116106(n+1), A364693(#)]`
-/

namespace A116136.P15354275200970503465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116106 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A364693 (f1 j).toNat = 1) n)

end

end A116136.P15354275200970503465

/-! ## A116136.P3623669262559582388

`∩[A116106(n+1), A287450(n+1)]`
-/

namespace A116136.P3623669262559582388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116106 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287450 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A116136.P3623669262559582388

/-!
# A116137: a(0) = 1 and a(n) = a(n-1) + A116212(n), where A116212 is the list of the positive divisors of each term of this sequence.

The programs for A116137, there is no canonical definition to state claims against.
-/

/-! ## A116137.P6814993171611003562

`a(n-1)+A116212(n)` with `a(0)=1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A116137.P6814993171611003562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A116212 n

end

end A116137.P6814993171611003562

/-! ## A116137.P17226458877747675851

`∑[A116212(round(acot(n)+n))]`
-/

namespace A116137.P17226458877747675851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116212 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A116137.P17226458877747675851

/-! ## A116137.P12295014073429374676

`∑[A116212(round(sqrt(n²+1)))]`
-/

namespace A116137.P12295014073429374676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116212 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A116137.P12295014073429374676

/-! ## A116137.P7446564782973704517

`∑[A116212(n+1)]+1-A116212(n+1)`
-/

namespace A116137.P7446564782973704517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116212 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A116212 (n + 1))

end

end A116137.P7446564782973704517

/-! ## A116137.P11856374535864769941

`record[A116212(n+1)]`
-/

namespace A116137.P11856374535864769941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116212 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A116137.P11856374535864769941

/-!
# A116138: a(n) = 3^n * n*(n + 1).

The programs for A116138, the canonical program `A116138.P12016771194482355886` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A116138 has offset 0).

The definition of A116138 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3^n*n*(n+1)` (program `A116138.P12016771194482355886`, by `A116138.P12016771194482355886.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A116138.P10794101617515204105

`(n²+n)*3^n`
-/

namespace A116138.P10794101617515204105
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n ^ 2 + n) * 3 ^ n

end

end A116138.P10794101617515204105

namespace A116138

/-- `(n²+n)*3^n` -/
def P10794101617515204105.Spec : Prop :=
  ∀ n, (P10794101617515204105.a n : ℤ) = A116138 n

theorem P10794101617515204105.correct : P10794101617515204105.Spec := by
  intro n
  simp only [A116138, Nat.add_sub_cancel, A116138.P10794101617515204105.a, A116138.P12016771194482355886.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A116138

/-! ## A116138.P12016771194482355886

`3^n*n*(n+1)`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A116138

/-- `3^n*n*(n+1)` -/
def P12016771194482355886.Spec : Prop :=
  ∀ n, (P12016771194482355886.a n : ℤ) = A116138 n

theorem P12016771194482355886.correct : P12016771194482355886.Spec := by
  intro n
  simp only [A116138]

end A116138

/-! ## A116138.P2071703677546177473

`9*a(n-1)-27*a(n-2)+27*a(n-3)` with `a(0)=0, a(1)=6, a(2)=54`
-/

namespace A116138.P2071703677546177473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 6, 54] fun n a =>
  9 * a (n - 1) - 27 * a (n - 2) + 27 * a (n - 3)

end

end A116138.P2071703677546177473

namespace A116138

/-- `9*a(n-1)-27*a(n-2)+27*a(n-3)` -/
def P2071703677546177473.Spec : Prop :=
  ∀ n, P2071703677546177473.a n = A116138 n

theorem P2071703677546177473.correct : P2071703677546177473.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A116138, Nat.add_sub_cancel, A116138.P2071703677546177473.a, A116138.P12016771194482355886.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A116138, Nat.add_sub_cancel, A116138.P2071703677546177473.a, A116138.P12016771194482355886.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [h1, h2, h3]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A116138

/-! ## A116138.P17380567375229888250

`lcm(2, 3^n*∑[2*n])`
-/

namespace A116138.P17380567375229888250
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 (3 ^ n * (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A116138.P17380567375229888250

namespace A116138

/-- `lcm(2, 3^n*∑[2*n])` -/
def P17380567375229888250.Spec : Prop :=
  ∀ n, (P17380567375229888250.a n : ℤ) = A116138 n

end A116138

/-! ## A116138.P13045673077938918080

`lcm(n, n+1)/3^-n`
-/

namespace A116138.P13045673077938918080
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm n (n + 1) : ℚ) / (3 : ℚ) ^ (-(n : ℤ) : ℤ)

end

end A116138.P13045673077938918080

namespace A116138

/-- `lcm(n, n+1)/3^-n` -/
def P13045673077938918080.Spec : Prop :=
  ∀ n, P13045673077938918080.a n = (A116138 n : ℚ)

end A116138

/-! ## A116138.P13166129111740351492

`∑[2*n]/tan(acot(3^n))`
-/

namespace A116138.P13166129111740351492
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ) / Real.tan (SequenceMachineLib.acot (3 ^ n : ℝ))

end

end A116138.P13166129111740351492

namespace A116138

/-- `∑[2*n]/tan(acot(3^n))` -/
def P13166129111740351492.Spec : Prop :=
  ∀ n, P13166129111740351492.a n = (A116138 n : ℝ)

end A116138

/-! ## A116138.P4198970840183169848

`abs(∑[n]/cot(atan(2))*3^n)`
-/

namespace A116138.P4198970840183169848
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  |((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ) / Real.cot (Real.arctan (2 : ℝ)) * (3 ^ n : ℝ)|

end

end A116138.P4198970840183169848

namespace A116138

/-- `abs(∑[n]/cot(atan(2))*3^n)` -/
def P4198970840183169848.Spec : Prop :=
  ∀ n, P4198970840183169848.a n = (A116138 n : ℝ)

end A116138

/-! ## A116138.P11809276375066086329

`floor(∑[3*a(n-1)]*∑[n])` with `a(0)=2, a(1)=4`

`floor` is left out, it is the identity on integers.
-/

namespace A116138.P11809276375066086329
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 4] fun n f1 =>
  3 * f1 (n - 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A116138.P11809276375066086329

namespace A116138

/-- `floor(∑[3*a(n-1)]*∑[n])` -/
def P11809276375066086329.Spec : Prop :=
  ∀ n, (P11809276375066086329.a n : ℤ) = A116138 n

end A116138

/-! ## A116138.P6966980623159620138

`∑[2*A069515(n+1)]`
-/

namespace A116138.P6966980623159620138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A069515 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A116138.P6966980623159620138

namespace A116138

/-- `∑[2*A069515(n+1)]` -/
def P6966980623159620138.Spec : Prop :=
  ∀ n, P6966980623159620138.a n = A116138 n

end A116138

/-! ## A116138.P4410624601703266708

`n*A212697(n+1)/2`
-/

namespace A116138.P4410624601703266708
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * A212697 (n + 1) : ℚ) / 2

end

end A116138.P4410624601703266708

namespace A116138

/-- `n*A212697(n+1)/2` -/
def P4410624601703266708.Spec : Prop :=
  ∀ n, P4410624601703266708.a n = (A116138 n : ℚ)

theorem P4410624601703266708.correct : P4410624601703266708.Spec := by
  intro n
  simp only [A116138, Nat.add_sub_cancel, A116138.P4410624601703266708.a, A116138.P12016771194482355886.a, A212697, A212697.P17163374785619925015.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A116138

/-! ## A116138.P7682474953413340205

`abs(Δ[3^n]*A000217(n))`
-/

namespace A116138.P7682474953413340205
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((f1 (n + 1) : ℤ) - (f1 n : ℤ)) * A000217 n|

end

end A116138.P7682474953413340205

namespace A116138

/-- `abs(Δ[3^n]*A000217(n))` -/
def P7682474953413340205.Spec : Prop :=
  ∀ n, P7682474953413340205.a n = A116138 n

end A116138

/-! ## A116138.P4278303970696353629

`∑[2*n*A064017(n+1)]`
-/

namespace A116138.P4278303970696353629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) * A064017 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A116138.P4278303970696353629

namespace A116138

/-- `∑[2*n*A064017(n+1)]` -/
def P4278303970696353629.Spec : Prop :=
  ∀ n, P4278303970696353629.a n = A116138 n

end A116138

/-! ## A116138.P18174367540425232625

`abs((n²-C(n, 2))*A099856(n))`
-/

namespace A116138.P18174367540425232625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((n ^ 2 : ℤ) - (Nat.choose n 2 : ℤ)) * A099856 n|

end

end A116138.P18174367540425232625

namespace A116138

/-- `abs((n²-C(n, 2))*A099856(n))` -/
def P18174367540425232625.Spec : Prop :=
  ∀ n, P18174367540425232625.a n = A116138 n

end A116138

/-! ## A116138.P2216249410631667313

`A127960(n)+A036290(n)`
-/

namespace A116138.P2216249410631667313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127960 n + A036290 n

end

end A116138.P2216249410631667313

namespace A116138

/-- `A127960(n)+A036290(n)` -/
def P2216249410631667313.Spec : Prop :=
  ∀ n, P2216249410631667313.a n = A116138 n

theorem P2216249410631667313.correct : P2216249410631667313.Spec := by
  intro n
  simp only [A116138, Nat.add_sub_cancel, A116138.P2216249410631667313.a, A116138.P12016771194482355886.a, A036290, A036290.P13464595081009669665.a, A127960, A127960.P1454755808448748578.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A116138

/-! ## A116138.P4075058401570368009

`A006043(n)-A212697(n+1)`
-/

namespace A116138.P4075058401570368009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006043 n - A212697 (n + 1)

end

end A116138.P4075058401570368009

namespace A116138

/-- `A006043(n)-A212697(n+1)` -/
def P4075058401570368009.Spec : Prop :=
  ∀ n, P4075058401570368009.a n = A116138 n

theorem P4075058401570368009.correct : P4075058401570368009.Spec := by
  intro n
  simp only [A116138, Nat.add_sub_cancel, A116138.P4075058401570368009.a, A116138.P12016771194482355886.a, A006043, A006043.P694516092793321870.a, A212697, A212697.P17163374785619925015.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A116138

/-! ## A116138.P13255481857506701214

`A000244(n)*A046092(n)/2`
-/

namespace A116138.P13255481857506701214
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000244 n * A046092 n : ℚ) / 2

end

end A116138.P13255481857506701214

namespace A116138

/-- `A000244(n)*A046092(n)/2` -/
def P13255481857506701214.Spec : Prop :=
  ∀ n, P13255481857506701214.a n = (A116138 n : ℚ)

theorem P13255481857506701214.correct : P13255481857506701214.Spec := by
  intro n
  simp only [A116138, Nat.add_sub_cancel, A116138.P13255481857506701214.a, A116138.P12016771194482355886.a, A000244, A000244.P17162167222172810417.a, A046092, A046092.P16411658895297056450.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A116138

/-! ## A116138.P7055880679036369676

`n*A124647(n)-A127960(n)`
-/

namespace A116138.P7055880679036369676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A124647 n - A127960 n

end

end A116138.P7055880679036369676

namespace A116138

/-- `n*A124647(n)-A127960(n)` -/
def P7055880679036369676.Spec : Prop :=
  ∀ n, P7055880679036369676.a n = A116138 n

theorem P7055880679036369676.correct : P7055880679036369676.Spec := by
  intro n
  simp only [A116138, Nat.add_sub_cancel, A116138.P7055880679036369676.a, A116138.P12016771194482355886.a, A124647, A124647.P15241135769168499352.a, A127960, A127960.P1454755808448748578.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A116138

/-! ## A116138.P16491857340773689852

`floor(sqrt(A000537(n))*A099856(n))`
-/

namespace A116138.P16491857340773689852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (A000537 n : ℝ) * (A099856 n : ℝ)⌋

end

end A116138.P16491857340773689852

namespace A116138

/-- `floor(sqrt(A000537(n))*A099856(n))` -/
def P16491857340773689852.Spec : Prop :=
  ∀ n, P16491857340773689852.a n = A116138 n

end A116138

/-! ## A116138.P8930873155957726735

`A129530(n+1)+A129530(n+1)`
-/

namespace A116138.P8930873155957726735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129530 (n + 1) + A129530 (n + 1)

end

end A116138.P8930873155957726735

namespace A116138

/-- `A129530(n+1)+A129530(n+1)` -/
def P8930873155957726735.Spec : Prop :=
  ∀ n, P8930873155957726735.a n = A116138 n

end A116138

/-! ## A116138.P9798128872690383869

`A128797(n+1)/3`
-/

namespace A116138.P9798128872690383869
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A128797 (n + 1) : ℚ) / 3

end

end A116138.P9798128872690383869

namespace A116138

/-- `A128797(n+1)/3` -/
def P9798128872690383869.Spec : Prop :=
  ∀ n, P9798128872690383869.a n = (A116138 n : ℚ)

theorem P9798128872690383869.correct : P9798128872690383869.Spec := by
  intro n
  simp only [A116138, Nat.add_sub_cancel, A116138.P9798128872690383869.a, A116138.P12016771194482355886.a, A128797, A128797.P16414781802524646076.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A116138

/-!
# A116139: 

The programs for A116139, there is no canonical definition to state claims against.
-/

/-! ## A116139.P8586653941639618354

`A116187(n+2)`
-/

namespace A116139.P8586653941639618354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116187 (n + 2)

end

end A116139.P8586653941639618354

/-!
# A116143: Numbers k such that k concatenated with k-2 gives the product of two numbers which differ by 3.

The programs for A116143, there is no canonical definition to state claims against.
-/

/-! ## A116143.P13200609943954959477

`∩[A116118(n+1), A214068(n)]`
-/

namespace A116143.P13200609943954959477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116118 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214068 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A116143.P13200609943954959477

/-! ## A116143.P6760329442431423566

`A116118(lt[A119678(n+1), A270339(3*(n+1))])`
-/

namespace A116143.P6760329442431423566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119678 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270339 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116118 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A116143.P6760329442431423566

/-!
# A116144: a(n) = 4^n * n*(n+1).

The programs for A116144, the canonical program `A116144.P18441866221327377996` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A116144 has offset 0).

The definition of A116144 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4^n*n*(n+1)` (program `A116144.P18441866221327377996`, by `A116144.P18441866221327377996.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A116144.P1952076639469888529

`(n²+n)*4^n`
-/

namespace A116144.P1952076639469888529
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n ^ 2 + n) * 4 ^ n

end

end A116144.P1952076639469888529

namespace A116144

/-- `(n²+n)*4^n` -/
def P1952076639469888529.Spec : Prop :=
  ∀ n, (P1952076639469888529.a n : ℤ) = A116144 n

theorem P1952076639469888529.correct : P1952076639469888529.Spec := by
  intro n
  simp only [A116144, Nat.add_sub_cancel, A116144.P1952076639469888529.a, A116144.P18441866221327377996.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A116144

/-! ## A116144.P18441866221327377996

`4^n*n*(n+1)`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A116144

/-- `4^n*n*(n+1)` -/
def P18441866221327377996.Spec : Prop :=
  ∀ n, (P18441866221327377996.a n : ℤ) = A116144 n

theorem P18441866221327377996.correct : P18441866221327377996.Spec := by
  intro n
  simp only [A116144]

end A116144

/-! ## A116144.P12716377678469619426

`12*a(n-1)-48*a(n-2)+64*a(n-3)` with `a(0)=0, a(1)=8, a(2)=96`
-/

namespace A116144.P12716377678469619426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 8, 96] fun n a =>
  12 * a (n - 1) - 48 * a (n - 2) + 64 * a (n - 3)

end

end A116144.P12716377678469619426

namespace A116144

/-- `12*a(n-1)-48*a(n-2)+64*a(n-3)` -/
def P12716377678469619426.Spec : Prop :=
  ∀ n, P12716377678469619426.a n = A116144 n

theorem P12716377678469619426.correct : P12716377678469619426.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A116144, Nat.add_sub_cancel, A116144.P12716377678469619426.a, A116144.P18441866221327377996.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A116144, Nat.add_sub_cancel, A116144.P12716377678469619426.a, A116144.P18441866221327377996.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [h1, h2, h3]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A116144

/-! ## A116144.P2041757015866669160

`lcm(2, 4^n*∑[2*n])`
-/

namespace A116144.P2041757015866669160
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 (4 ^ n * (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A116144.P2041757015866669160

namespace A116144

/-- `lcm(2, 4^n*∑[2*n])` -/
def P2041757015866669160.Spec : Prop :=
  ∀ n, (P2041757015866669160.a n : ℤ) = A116144 n

end A116144

/-! ## A116144.P8608294160580945185

`lcm(n, n+1)/4^-n`
-/

namespace A116144.P8608294160580945185
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm n (n + 1) : ℚ) / (4 : ℚ) ^ (-(n : ℤ) : ℤ)

end

end A116144.P8608294160580945185

namespace A116144

/-- `lcm(n, n+1)/4^-n` -/
def P8608294160580945185.Spec : Prop :=
  ∀ n, P8608294160580945185.a n = (A116144 n : ℚ)

end A116144

/-! ## A116144.P73875237957415475

`n*A002699(n+1)/2`
-/

namespace A116144.P73875237957415475
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * A002699 (n + 1) : ℚ) / 2

end

end A116144.P73875237957415475

namespace A116144

/-- `n*A002699(n+1)/2` -/
def P73875237957415475.Spec : Prop :=
  ∀ n, P73875237957415475.a n = (A116144 n : ℚ)

end A116144

/-! ## A116144.P11149152457807425447

`∑[4*n]*A000302(n)/2`
-/

namespace A116144.P11149152457807425447
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A000302 n : ℚ) / 2

end

end A116144.P11149152457807425447

namespace A116144

/-- `∑[4*n]*A000302(n)/2` -/
def P11149152457807425447.Spec : Prop :=
  ∀ n, P11149152457807425447.a n = (A116144 n : ℚ)

end A116144

/-! ## A116144.P1242315379109665801

`n*A134353(2*n+1)/2`
-/

namespace A116144.P1242315379109665801
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * A134353 (2 * n + 1) : ℚ) / 2

end

end A116144.P1242315379109665801

namespace A116144

/-- `n*A134353(2*n+1)/2` -/
def P1242315379109665801.Spec : Prop :=
  ∀ n, P1242315379109665801.a n = (A116144 n : ℚ)

end A116144

/-! ## A116144.P10095102311031647210

`n*A178945(2*(n+1))/2`
-/

namespace A116144.P10095102311031647210
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * A178945 (2 * (n + 1)) : ℚ) / 2

end

end A116144.P10095102311031647210

namespace A116144

/-- `n*A178945(2*(n+1))/2` -/
def P10095102311031647210.Spec : Prop :=
  ∀ n, P10095102311031647210.a n = (A116144 n : ℚ)

end A116144

/-! ## A116144.P18364057729795748994

`n*A328000(2*n+1)/2`
-/

namespace A116144.P18364057729795748994
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * A328000 (2 * n + 1) : ℚ) / 2

end

end A116144.P18364057729795748994

namespace A116144

/-- `n*A328000(2*n+1)/2` -/
def P18364057729795748994.Spec : Prop :=
  ∀ n, P18364057729795748994.a n = (A116144 n : ℚ)

end A116144

/-! ## A116144.P16894937973083115131

`n*A124720(2*n+3)/2`
-/

namespace A116144.P16894937973083115131
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * A124720 (2 * n + 3) : ℚ) / 2

end

end A116144.P16894937973083115131

namespace A116144

/-- `n*A124720(2*n+3)/2` -/
def P16894937973083115131.Spec : Prop :=
  ∀ n, P16894937973083115131.a n = (A116144 n : ℚ)

end A116144

/-! ## A116144.P7889028668494026859

`(A001844(n)-1)*4^n/2`
-/

namespace A116144.P7889028668494026859
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A001844 n - 1) * (4 ^ n : ℤ) : ℚ) / 2

end

end A116144.P7889028668494026859

namespace A116144

/-- `(A001844(n)-1)*4^n/2` -/
def P7889028668494026859.Spec : Prop :=
  ∀ n, P7889028668494026859.a n = (A116144 n : ℚ)

theorem P7889028668494026859.correct : P7889028668494026859.Spec := by
  intro n
  simp only [A116144, Nat.add_sub_cancel, A116144.P7889028668494026859.a, A116144.P18441866221327377996.a, A001844, A001844.P5037395199076350534.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A116144

/-! ## A116144.P2843590009805465259

`∑[n]*A155559(n+1)²/2`
-/

namespace A116144.P2843590009805465259
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A155559 (n + 1) ^ 2 : ℚ) / 2

end

end A116144.P2843590009805465259

namespace A116144

/-- `∑[n]*A155559(n+1)²/2` -/
def P2843590009805465259.Spec : Prop :=
  ∀ n, P2843590009805465259.a n = (A116144 n : ℚ)

end A116144

/-! ## A116144.P3733026271555793252

`∑[n]*A155559(2*(n+1))/2`
-/

namespace A116144.P3733026271555793252
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A155559 (2 * (n + 1)) : ℚ) / 2

end

end A116144.P3733026271555793252

namespace A116144

/-- `∑[n]*A155559(2*(n+1))/2` -/
def P3733026271555793252.Spec : Prop :=
  ∀ n, P3733026271555793252.a n = (A116144 n : ℚ)

end A116144

/-! ## A116144.P11036157098273294502

`∑[A036289(n)*A339252(n)]`
-/

namespace A116144.P11036157098273294502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036289 n * A339252 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A116144.P11036157098273294502

namespace A116144

/-- `∑[A036289(n)*A339252(n)]` -/
def P11036157098273294502.Spec : Prop :=
  ∀ n, P11036157098273294502.a n = A116144 n

end A116144

/-! ## A116144.P8826119317416928068

`A128798(n)+A036289(2*n)`
-/

namespace A116144.P8826119317416928068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128798 n + A036289 (2 * n)

end

end A116144.P8826119317416928068

namespace A116144

/-- `A128798(n)+A036289(2*n)` -/
def P8826119317416928068.Spec : Prop :=
  ∀ n, P8826119317416928068.a n = A116144 n

end A116144

/-! ## A116144.P7601959600521283345

`2*A128782(n)-A128798(n)`
-/

namespace A116144.P7601959600521283345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A128782 n - A128798 n

end

end A116144.P7601959600521283345

namespace A116144

/-- `2*A128782(n)-A128798(n)` -/
def P7601959600521283345.Spec : Prop :=
  ∀ n, P7601959600521283345.a n = A116144 n

theorem P7601959600521283345.correct : P7601959600521283345.Spec := by
  intro n
  simp only [A116144, Nat.add_sub_cancel, A116144.P7601959600521283345.a, A116144.P18441866221327377996.a, A128782, A128782.P8267303298175215525.a, A128798, A128798.P11634242177375116821.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A116144

/-! ## A116144.P9021938766741648453

`A001787(n+1)*A001787(n+1)-A002697(n+1)`
-/

namespace A116144.P9021938766741648453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001787 (n + 1) * A001787 (n + 1) - A002697 (n + 1)

end

end A116144.P9021938766741648453

namespace A116144

/-- `A001787(n+1)*A001787(n+1)-A002697(n+1)` -/
def P9021938766741648453.Spec : Prop :=
  ∀ n, P9021938766741648453.a n = A116144 n

end A116144

/-! ## A116144.P17035352705508553088

`A128798(n+1)/4`
-/

namespace A116144.P17035352705508553088
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A128798 (n + 1) : ℚ) / 4

end

end A116144.P17035352705508553088

namespace A116144

/-- `A128798(n+1)/4` -/
def P17035352705508553088.Spec : Prop :=
  ∀ n, P17035352705508553088.a n = (A116144 n : ℚ)

theorem P17035352705508553088.correct : P17035352705508553088.Spec := by
  intro n
  simp only [A116144, Nat.add_sub_cancel, A116144.P17035352705508553088.a, A116144.P18441866221327377996.a, A128798, A128798.P11634242177375116821.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A116144

/-! ## A116144.P5891703576514533542

`n*A212698(n+1)/3`
-/

namespace A116144.P5891703576514533542
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * A212698 (n + 1) : ℚ) / 3

end

end A116144.P5891703576514533542

namespace A116144

/-- `n*A212698(n+1)/3` -/
def P5891703576514533542.Spec : Prop :=
  ∀ n, P5891703576514533542.a n = (A116144 n : ℚ)

end A116144

/-!
# A116145: Squares that are equal to the sum of 5 consecutive cubes.

The programs for A116145, there is no canonical definition to state claims against.
-/

/-! ## A116145.P7753715734836812692

`A008587(A126203(n+1))*A114949(A126203(n+1))`
-/

namespace A116145.P7753715734836812692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008587 (A126203 (n + 1)).toNat * A114949 (A126203 (n + 1)).toNat

end

end A116145.P7753715734836812692

/-!
# A116146: Numbers k such that k concatenated with k-2 gives the product of two numbers which differ by 8.

The programs for A116146, there is no canonical definition to state claims against.
-/

/-! ## A116146.P14484172778069318983

`A116194(n+4)`
-/

namespace A116146.P14484172778069318983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116194 (n + 4)

end

end A116146.P14484172778069318983

/-!
# A116149: a(n) = sum of n consecutive cubes after n^3.

The programs for A116149, the canonical program `A116149.P15737109655195163184` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A116149 has offset 1).

The definition of A116149 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A116149.P6144392094466702309

`(n+1)²*(1+3*(n+1))*(3+5*(n+1))/4`
-/

namespace A116149.P6144392094466702309
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 * (1 + 3 * (n + 1)) * (3 + 5 * (n + 1)) : ℚ) / 4

end

end A116149.P6144392094466702309

namespace A116149

/-- `(n+1)²*(1+3*(n+1))*(3+5*(n+1))/4` -/
def P6144392094466702309.Spec : Prop :=
  ∀ n, P6144392094466702309.a n = (A116149 (n + 1) : ℚ)

theorem P6144392094466702309.correct : P6144392094466702309.Spec := by
  intro n
  simp only [A116149, Nat.add_sub_cancel, A116149.P6144392094466702309.a, A116149.P15737109655195163184.a, A000217, A000217.P10269402890581615239.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A116149

/-! ## A116149.P15737109655195163184

`A000217(2*(n+1))²-A000217(n+1)²`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A116149

/-- `A000217(2*(n+1))²-A000217(n+1)²` -/
def P15737109655195163184.Spec : Prop :=
  ∀ n, P15737109655195163184.a n = A116149 (n + 1)

theorem P15737109655195163184.correct : P15737109655195163184.Spec := by
  intro n
  simp only [A116149, Nat.add_sub_cancel]

end A116149

/-! ## A116149.P14463226816703832755

`∑[a(n-1)+4]²-∑[n+1]²` with `a(0)=3`
-/

namespace A116149.P14463226816703832755
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3] fun n f1 =>
  f1 (n - 1) + 4

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - (((∑ j ∈ Finset.range (n + 1), f2 j) ^ 2 : ℕ) : ℤ)

end

end A116149.P14463226816703832755

namespace A116149

/-- `∑[a(n-1)+4]²-∑[n+1]²` -/
def P14463226816703832755.Spec : Prop :=
  ∀ n, P14463226816703832755.a n = A116149 (n + 1)

end A116149

/-! ## A116149.P16156791892382702233

`A005449(n+1)*A147875(n+1)`
-/

namespace A116149.P16156791892382702233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005449 (n + 1) * A147875 (n + 1)

end

end A116149.P16156791892382702233

namespace A116149

/-- `A005449(n+1)*A147875(n+1)` -/
def P16156791892382702233.Spec : Prop :=
  ∀ n, P16156791892382702233.a n = A116149 (n + 1)

end A116149

/-! ## A116149.P13542754460950703416

`(n+1)²+A000217(n+1)*A022272(n+1)`
-/

namespace A116149.P13542754460950703416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) + A000217 (n + 1) * A022272 (n + 1)

end

end A116149.P13542754460950703416

namespace A116149

/-- `(n+1)²+A000217(n+1)*A022272(n+1)` -/
def P13542754460950703416.Spec : Prop :=
  ∀ n, P13542754460950703416.a n = A116149 (n + 1)

end A116149

/-! ## A116149.P17440897107572630574

`((n+1)²+A000217(n+1))*A147875(n+1)`
-/

namespace A116149.P17440897107572630574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n + 1) ^ 2 : ℤ) + A000217 (n + 1)) * A147875 (n + 1)

end

end A116149.P17440897107572630574

namespace A116149

/-- `((n+1)²+A000217(n+1))*A147875(n+1)` -/
def P17440897107572630574.Spec : Prop :=
  ∀ n, P17440897107572630574.a n = A116149 (n + 1)

end A116149

/-! ## A116149.P8497306782481251285

`A002593(n+1)+A254371(n+1)-A000537(n+1)`
-/

namespace A116149.P8497306782481251285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002593 (n + 1) + (A254371 (n + 1) - A000537 (n + 1))

end

end A116149.P8497306782481251285

namespace A116149

/-- `A002593(n+1)+A254371(n+1)-A000537(n+1)` -/
def P8497306782481251285.Spec : Prop :=
  ∀ n, P8497306782481251285.a n = A116149 (n + 1)

theorem P8497306782481251285.correct : P8497306782481251285.Spec := by
  intro n
  simp only [A116149, Nat.add_sub_cancel, A116149.P8497306782481251285.a, A116149.P15737109655195163184.a, A000217, A000217.P10269402890581615239.a, A000537, A000537.P7887993002585723883.a, A002593, A002593.P4819444549959463403.a, A254371, A254371.P14441672750536308122.a, A000332, A000332.P5946310388023661265.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A116149

/-! ## A116149.P8657830867491270079

`(A005449(n+1)+A002378(n+1))*A005449(n+1)`
-/

namespace A116149.P8657830867491270079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A005449 (n + 1) + A002378 (n + 1)) * A005449 (n + 1)

end

end A116149.P8657830867491270079

namespace A116149

/-- `(A005449(n+1)+A002378(n+1))*A005449(n+1)` -/
def P8657830867491270079.Spec : Prop :=
  ∀ n, P8657830867491270079.a n = A116149 (n + 1)

end A116149

/-! ## A116149.P5505055327353003671

`(A007742(n+1)-A000326(n+1))*A005449(n+1)`
-/

namespace A116149.P5505055327353003671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A007742 (n + 1) - A000326 (n + 1)) * A005449 (n + 1)

end

end A116149.P5505055327353003671

namespace A116149

/-- `(A007742(n+1)-A000326(n+1))*A005449(n+1)` -/
def P5505055327353003671.Spec : Prop :=
  ∀ n, P5505055327353003671.a n = A116149 (n + 1)

end A116149

/-! ## A116149.P146106448167368261

`(A147875(n+1)-A002378(n+1))*A147875(n+1)`
-/

namespace A116149.P146106448167368261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A147875 (n + 1) - A002378 (n + 1)) * A147875 (n + 1)

end

end A116149.P146106448167368261

namespace A116149

/-- `(A147875(n+1)-A002378(n+1))*A147875(n+1)` -/
def P146106448167368261.Spec : Prop :=
  ∀ n, P146106448167368261.a n = A116149 (n + 1)

end A116149

/-! ## A116149.P498336927170082151

`∑[A212744(2*n+1)]`
-/

namespace A116149.P498336927170082151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212744 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A116149.P498336927170082151

namespace A116149

/-- `∑[A212744(2*n+1)]` -/
def P498336927170082151.Spec : Prop :=
  ∀ n, P498336927170082151.a n = A116149 (n + 1)

end A116149

/-! ## A116149.P15677343971794695528

`A168566(2*(n+1))-A168566(n+1)`
-/

namespace A116149.P15677343971794695528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168566 (2 * (n + 1)) - A168566 (n + 1)

end

end A116149.P15677343971794695528

namespace A116149

/-- `A168566(2*(n+1))-A168566(n+1)` -/
def P15677343971794695528.Spec : Prop :=
  ∀ n, P15677343971794695528.a n = A116149 (n + 1)

end A116149

/-! ## A116149.P15823223511216690518

`∑[A005898(2*n+1)-A000578(n+1)]`
-/

namespace A116149.P15823223511216690518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005898 (2 * n + 1) - A000578 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A116149.P15823223511216690518

namespace A116149

/-- `∑[A005898(2*n+1)-A000578(n+1)]` -/
def P15823223511216690518.Spec : Prop :=
  ∀ n, P15823223511216690518.a n = A116149 (n + 1)

end A116149

/-! ## A116149.P3442625627144863151

`A303383(2*n+3)`
-/

namespace A116149.P3442625627144863151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303383 (2 * n + 3)

end

end A116149.P3442625627144863151

namespace A116149

/-- `A303383(2*n+3)` -/
def P3442625627144863151.Spec : Prop :=
  ∀ n, P3442625627144863151.a n = A116149 (n + 1)

end A116149

/-!
# A116150: a(n) = Sum_{j=1..n} (3^j + (-2)^j).

The programs for A116150, the canonical program `A116150.P18344499546928762501` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A116150 has offset 1).

The definition of A116150 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A116150.P18344499546928762501

`2*a(n-1)+5*a(n-2)-6*a(n-3)` with `a(0)=1, a(1)=14, a(2)=33`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A116150

/-- `2*a(n-1)+5*a(n-2)-6*a(n-3)` -/
def P18344499546928762501.Spec : Prop :=
  ∀ n, P18344499546928762501.a n = A116150 (n + 1)

theorem P18344499546928762501.correct : P18344499546928762501.Spec := by
  intro n
  simp only [A116150, Nat.add_sub_cancel]

end A116150

/-! ## A116150.P17216132903566046267

`(9*3^(n+1)+4*(-2)^(n+1)-13)/6`
-/

namespace A116150.P17216132903566046267
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((9 * 3 ^ (n + 1) : ℤ) + 4 * (-2) ^ (n + 1) - 13 : ℚ) / 6

end

end A116150.P17216132903566046267

namespace A116150

/-- `(9*3^(n+1)+4*(-2)^(n+1)-13)/6` -/
def P17216132903566046267.Spec : Prop :=
  ∀ n, P17216132903566046267.a n = (A116150 (n + 1) : ℚ)

theorem P17216132903566046267.correct : P17216132903566046267.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A116150, Nat.add_sub_cancel, A116150.P17216132903566046267.a, A116150.P18344499546928762501.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A116150, Nat.add_sub_cancel, A116150.P17216132903566046267.a, A116150.P18344499546928762501.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [← h1, ← h2, ← h3]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A116150

/-! ## A116150.P16556399879668478058

`ogf((1+12x)/(1-2x-5x^2+6x^3))`
-/

namespace A116150.P16556399879668478058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 12] [1, -2, -5, 6] n

end

end A116150.P16556399879668478058

namespace A116150

/-- `ogf((1+12x)/(1-2x-5x^2+6x^3))` -/
def P16556399879668478058.Spec : Prop :=
  ∀ n, P16556399879668478058.a n = A116150 (n + 1)

end A116150

/-! ## A116150.P5049244949014519267

`3^(n+1)+a(n-1)+(-2)^(n+1)` with `a(0)=1`
-/

namespace A116150.P5049244949014519267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (3 ^ (n + 1) : ℤ) + (a (n - 1) + (-2) ^ (n + 1))

end

end A116150.P5049244949014519267

namespace A116150

/-- `3^(n+1)+a(n-1)+(-2)^(n+1)` -/
def P5049244949014519267.Spec : Prop :=
  ∀ n, P5049244949014519267.a n = A116150 (n + 1)

end A116150

/-! ## A116150.P17245966912556675154

`∑[A087451(n+1)]`
-/

namespace A116150.P17245966912556675154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087451 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A116150.P17245966912556675154

namespace A116150

/-- `∑[A087451(n+1)]` -/
def P17245966912556675154.Spec : Prop :=
  ∀ n, P17245966912556675154.a n = A116150 (n + 1)

end A116150

/-! ## A116150.P13959676786744547646

`A344747(n+3)-2`
-/

namespace A116150.P13959676786744547646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344747 (n + 3) - 2

end

end A116150.P13959676786744547646

namespace A116150

/-- `A344747(n+3)-2` -/
def P13959676786744547646.Spec : Prop :=
  ∀ n, P13959676786744547646.a n = A116150 (n + 1)

end A116150

/-! ## A116150.P1002279670654184370

`∑[record[A087451(n)]]-1`
-/

namespace A116150.P1002279670654184370
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087451 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A116150.P1002279670654184370

namespace A116150

/-- `∑[record[A087451(n)]]-1` -/
def P1002279670654184370.Spec : Prop :=
  ∀ n, P1002279670654184370.a n = A116150 (n + 1)

end A116150

/-! ## A116150.P17511971830052145948

`A168569(n)+A083594(n)`
-/

namespace A116150.P17511971830052145948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168569 n + A083594 n

end

end A116150.P17511971830052145948

namespace A116150

/-- `A168569(n)+A083594(n)` -/
def P17511971830052145948.Spec : Prop :=
  ∀ n, P17511971830052145948.a n = A116150 (n + 1)

end A116150

/-!
# A116151: a(n) = smallest positive integer x satisfying the system of congruences { x == 1 (mod 2), x == 2 (mod 3), x == 3 (mod 5), x == 5 (mod 7), ..., x == A008578(n) (mod A008578(n+1)) }.

The programs for A116151, there is no canonical definition to state claims against.
-/

/-! ## A116151.P13021960171824087862

`A352355(n+3)%A002110(n+1)`
-/

namespace A116151.P13021960171824087862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A352355 (n + 3)) (A002110 (n + 1))

end

end A116151.P13021960171824087862

/-! ## A116151.P12850132898875559361

`A051853(∑[A005867(n)*A008578(n+1)])`
-/

namespace A116151.P12850132898875559361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005867 n * A008578 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051853 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A116151.P12850132898875559361

/-!
# A116152: Numbers k such that k concatenated with k-1 gives the product of two numbers which differ by 7.

The programs for A116152, there is no canonical definition to state claims against.
-/

/-! ## A116152.P815980019696595994

`A116193(A028310(n))-floor(acot(n)²)`
-/

namespace A116152.P815980019696595994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116193 (A028310 n).toNat - ⌊SequenceMachineLib.acot (n : ℝ) ^ 2⌋

end

end A116152.P815980019696595994

/-! ## A116152.P5574591877610511026

`A116193(round(sqrt(n²+1)))-A000038(n)`
-/

namespace A116152.P5574591877610511026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116193 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat - A000038 n

end

end A116152.P5574591877610511026

/-! ## A116152.P6852904913587450225

`A116193(round(sqrt(n²+1)))-A061397(2*(n+1))`
-/

namespace A116152.P6852904913587450225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116193 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat - A061397 (2 * (n + 1))

end

end A116152.P6852904913587450225

/-! ## A116152.P15211952716684291900

`xor(A000038(n), A116193(A028310(n)))`
-/

namespace A116152.P15211952716684291900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000038 n) (A116193 (A028310 n).toNat)

end

end A116152.P15211952716684291900

/-! ## A116152.P6128985641134480729

`A116193(A028310(n))-A077957(A000040(n+1))`
-/

namespace A116152.P6128985641134480729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116193 (A028310 n).toNat - A077957 (A000040 (n + 1)).toNat

end

end A116152.P6128985641134480729

/-!
# A116153: Numbers k such that k concatenated with k-1 gives the product of two numbers which differ by 9.

The programs for A116153, there is no canonical definition to state claims against.
-/

/-! ## A116153.P12682299635194965854

`A116209(n+2)`
-/

namespace A116153.P12682299635194965854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116209 (n + 2)

end

end A116153.P12682299635194965854

/-! ## A116153.P7851967476055413183

`record[A116209(A080513(xor(1, n)))]`
-/

namespace A116153.P7851967476055413183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116209 (A080513 (Nat.xor 1 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A116153.P7851967476055413183

/-! ## A116153.P4242984808762311588

`record[A116209(or(n, A000038(n)))]`
-/

namespace A116153.P4242984808762311588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116209 (Int.lor (n : ℤ) (A000038 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A116153.P4242984808762311588

/-! ## A116153.P14558094381808528232

`record[A116209(xor(n, A000038(n)))]`
-/

namespace A116153.P14558094381808528232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116209 (Int.xor (n : ℤ) (A000038 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A116153.P14558094381808528232

/-! ## A116153.P16459188699443609262

`record[A116209(A080513(abs(1-n)))]`
-/

namespace A116153.P16459188699443609262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116209 (A080513 |1 - (n : ℤ)|.toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A116153.P16459188699443609262

/-!
# A116154: Numbers k such that k concatenated with itself gives the product of two numbers which differ by 1.

The programs for A116154, there is no canonical definition to state claims against.
-/

/-! ## A116154.P9435730395050110605

`record[A116143(n+3)%A116274(n+3)]`
-/

namespace A116154.P9435730395050110605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A116143 (n + 3)) (A116274 (n + 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A116154.P9435730395050110605

/-! ## A116154.P16710240158114399464

`filter[A116143(n+1), A324903(#)]`
-/

namespace A116154.P16710240158114399464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116143 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A324903 (f1 j).toNat = 1) n)

end

end A116154.P16710240158114399464

/-!
# A116156: a(n) = 5^n * n*(n + 1).

The programs for A116156, the canonical program `A116156.P10198225265451884607` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A116156 has offset 0).

The definition of A116156 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5^n*n*(n+1)` (program `A116156.P10198225265451884607`, by `A116156.P10198225265451884607.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A116156.P8648662683960553290

`(n²+n)*5^n`
-/

namespace A116156.P8648662683960553290
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n ^ 2 + n) * 5 ^ n

end

end A116156.P8648662683960553290

namespace A116156

/-- `(n²+n)*5^n` -/
def P8648662683960553290.Spec : Prop :=
  ∀ n, (P8648662683960553290.a n : ℤ) = A116156 n

theorem P8648662683960553290.correct : P8648662683960553290.Spec := by
  intro n
  simp only [A116156, Nat.add_sub_cancel, A116156.P8648662683960553290.a, A116156.P10198225265451884607.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A116156

/-! ## A116156.P10198225265451884607

`5^n*n*(n+1)`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A116156

/-- `5^n*n*(n+1)` -/
def P10198225265451884607.Spec : Prop :=
  ∀ n, (P10198225265451884607.a n : ℤ) = A116156 n

theorem P10198225265451884607.correct : P10198225265451884607.Spec := by
  intro n
  simp only [A116156]

end A116156

/-! ## A116156.P3074108510371990237

`15*a(n-1)-75*a(n-2)+125*a(n-3)` with `a(0)=0, a(1)=10, a(2)=150`
-/

namespace A116156.P3074108510371990237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 10, 150] fun n a =>
  15 * a (n - 1) - 75 * a (n - 2) + 125 * a (n - 3)

end

end A116156.P3074108510371990237

namespace A116156

/-- `15*a(n-1)-75*a(n-2)+125*a(n-3)` -/
def P3074108510371990237.Spec : Prop :=
  ∀ n, P3074108510371990237.a n = A116156 n

theorem P3074108510371990237.correct : P3074108510371990237.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A116156, Nat.add_sub_cancel, A116156.P3074108510371990237.a, A116156.P10198225265451884607.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A116156, Nat.add_sub_cancel, A116156.P3074108510371990237.a, A116156.P10198225265451884607.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [h1, h2, h3]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A116156

/-! ## A116156.P10773781219241691556

`lcm(n, n+1)/5^-n`
-/

namespace A116156.P10773781219241691556
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm n (n + 1) : ℚ) / (5 : ℚ) ^ (-(n : ℤ) : ℤ)

end

end A116156.P10773781219241691556

namespace A116156

/-- `lcm(n, n+1)/5^-n` -/
def P10773781219241691556.Spec : Prop :=
  ∀ n, P10773781219241691556.a n = (A116156 n : ℚ)

end A116156

/-! ## A116156.P9674251839844899845

`n*A212699(n+1)/4`
-/

namespace A116156.P9674251839844899845
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * A212699 (n + 1) : ℚ) / 4

end

end A116156.P9674251839844899845

namespace A116156

/-- `n*A212699(n+1)/4` -/
def P9674251839844899845.Spec : Prop :=
  ∀ n, P9674251839844899845.a n = (A116156 n : ℚ)

end A116156

/-! ## A116156.P12739768229797647805

`5^n*A046092(n)/2`
-/

namespace A116156.P12739768229797647805
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((5 ^ n : ℤ) * A046092 n : ℚ) / 2

end

end A116156.P12739768229797647805

namespace A116156

/-- `5^n*A046092(n)/2` -/
def P12739768229797647805.Spec : Prop :=
  ∀ n, P12739768229797647805.a n = (A116156 n : ℚ)

theorem P12739768229797647805.correct : P12739768229797647805.Spec := by
  intro n
  simp only [A116156, Nat.add_sub_cancel, A116156.P12739768229797647805.a, A116156.P10198225265451884607.a, A046092, A046092.P16411658895297056450.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A116156

/-! ## A116156.P12640525337079139038

`A128784(n)+n*5^n`
-/

namespace A116156.P12640525337079139038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128784 n + (n * 5 ^ n : ℤ)

end

end A116156.P12640525337079139038

namespace A116156

/-- `A128784(n)+n*5^n` -/
def P12640525337079139038.Spec : Prop :=
  ∀ n, P12640525337079139038.a n = A116156 n

theorem P12640525337079139038.correct : P12640525337079139038.Spec := by
  intro n
  simp only [A116156, Nat.add_sub_cancel, A116156.P12640525337079139038.a, A116156.P10198225265451884607.a, A128784, A128784.P7871800214283789235.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A116156

/-! ## A116156.P6764220282734840242

`5^n*A005563(2*n)/4`
-/

namespace A116156.P6764220282734840242
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((5 ^ n : ℤ) * A005563 (2 * n) : ℚ) / 4

end

end A116156.P6764220282734840242

namespace A116156

/-- `5^n*A005563(2*n)/4` -/
def P6764220282734840242.Spec : Prop :=
  ∀ n, P6764220282734840242.a n = (A116156 n : ℚ)

theorem P6764220282734840242.correct : P6764220282734840242.Spec := by
  intro n
  simp only [A116156, Nat.add_sub_cancel, A116156.P6764220282734840242.a, A116156.P10198225265451884607.a, A005563, A005563.P13300161655551567421.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A116156

/-! ## A116156.P13075745424081169531

`(n+1)*A050916(n)-(n+1)`
-/

namespace A116156.P13075745424081169531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A050916 n - (n + 1 : ℤ)

end

end A116156.P13075745424081169531

namespace A116156

/-- `(n+1)*A050916(n)-(n+1)` -/
def P13075745424081169531.Spec : Prop :=
  ∀ n, P13075745424081169531.a n = A116156 n

theorem P13075745424081169531.correct : P13075745424081169531.Spec := by
  intro n
  simp only [A116156, Nat.add_sub_cancel, A116156.P13075745424081169531.a, A116156.P10198225265451884607.a, A050916, A050916.P966275114646513705.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A116156

/-! ## A116156.P12829662661560038872

`∑[2*n]*A020699(n+1)/2`
-/

namespace A116156.P12829662661560038872
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A020699 (n + 1) : ℚ) / 2

end

end A116156.P12829662661560038872

namespace A116156

/-- `∑[2*n]*A020699(n+1)/2` -/
def P12829662661560038872.Spec : Prop :=
  ∀ n, P12829662661560038872.a n = (A116156 n : ℚ)

end A116156

/-! ## A116156.P17730766151884657687

`2*A128784(n)-A128799(n)`
-/

namespace A116156.P17730766151884657687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A128784 n - A128799 n

end

end A116156.P17730766151884657687

namespace A116156

/-- `2*A128784(n)-A128799(n)` -/
def P17730766151884657687.Spec : Prop :=
  ∀ n, P17730766151884657687.a n = A116156 n

theorem P17730766151884657687.correct : P17730766151884657687.Spec := by
  intro n
  simp only [A116156, Nat.add_sub_cancel, A116156.P17730766151884657687.a, A116156.P10198225265451884607.a, A128784, A128784.P7871800214283789235.a, A128799, A128799.P2138756944582292063.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A116156

/-! ## A116156.P4254093874963233157

`A036291(n)+n*A036291(n)`
-/

namespace A116156.P4254093874963233157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036291 n + (n : ℤ) * A036291 n

end

end A116156.P4254093874963233157

namespace A116156

/-- `A036291(n)+n*A036291(n)` -/
def P4254093874963233157.Spec : Prop :=
  ∀ n, P4254093874963233157.a n = A116156 n

theorem P4254093874963233157.correct : P4254093874963233157.Spec := by
  intro n
  simp only [A116156, Nat.add_sub_cancel, A116156.P4254093874963233157.a, A116156.P10198225265451884607.a, A036291, A036291.P15305288486312192511.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A116156

/-! ## A116156.P11179637543128709823

`A026383(2*n)*A194274(2*n)/2`
-/

namespace A116156.P11179637543128709823
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026383 (2 * n) * A194274 (2 * n) : ℚ) / 2

end

end A116156.P11179637543128709823

namespace A116156

/-- `A026383(2*n)*A194274(2*n)/2` -/
def P11179637543128709823.Spec : Prop :=
  ∀ n, P11179637543128709823.a n = (A116156 n : ℚ)

end A116156

/-! ## A116156.P16928889443756868239

`A128799(n+1)/5`
-/

namespace A116156.P16928889443756868239
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A128799 (n + 1) : ℚ) / 5

end

end A116156.P16928889443756868239

namespace A116156

/-- `A128799(n+1)/5` -/
def P16928889443756868239.Spec : Prop :=
  ∀ n, P16928889443756868239.a n = (A116156 n : ℚ)

theorem P16928889443756868239.correct : P16928889443756868239.Spec := by
  intro n
  simp only [A116156, Nat.add_sub_cancel, A116156.P16928889443756868239.a, A116156.P10198225265451884607.a, A128799, A128799.P2138756944582292063.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A116156

/-! ## A116156.P10340408337630312334

`A128988(n+1)/(5*(n+1))`
-/

namespace A116156.P10340408337630312334
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A128988 (n + 1) : ℚ) / (5 * (n + 1) : ℚ)

end

end A116156.P10340408337630312334

namespace A116156

/-- `A128988(n+1)/(5*(n+1))` -/
def P10340408337630312334.Spec : Prop :=
  ∀ n, P10340408337630312334.a n = (A116156 n : ℚ)

theorem P10340408337630312334.correct : P10340408337630312334.Spec := by
  intro n
  simp only [A116156, Nat.add_sub_cancel, A116156.P10340408337630312334.a, A116156.P10198225265451884607.a, A128988, A128988.P9951450378729425466.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A116156

/-! ## A116156.P1666131292932488349

`record[2*n*A191702(n+1)]`
-/

namespace A116156.P1666131292932488349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n : ℤ) * A191702 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A116156.P1666131292932488349

namespace A116156

/-- `record[2*n*A191702(n+1)]` -/
def P1666131292932488349.Spec : Prop :=
  ∀ n, P1666131292932488349.a n = A116156 n

end A116156

/-!
# A116157: a(n) = a(n-1) + 2*a(n-2) - 2*a(n-3) + a(n-5).

The programs for A116157, the canonical program `A116157.P14627121714152221488` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A116157 has offset 0).

The definition of A116157 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+2*a(n-2)-2*a(n-3)+a(n-5)` (program `A116157.P14627121714152221488`, by `A116157.P14627121714152221488.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A116157.P14627121714152221488

`a(n-1)+2*a(n-2)-2*a(n-3)+a(n-5)` with `a(0)=1, a(1)=1, a(2)=3, a(3)=3, a(4)=7`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A116157

/-- `a(n-1)+2*a(n-2)-2*a(n-3)+a(n-5)` -/
def P14627121714152221488.Spec : Prop :=
  ∀ n, P14627121714152221488.a n = A116157 n

theorem P14627121714152221488.correct : P14627121714152221488.Spec := by
  intro n
  simp only [A116157]

end A116157

/-! ## A116157.P3230965191108189194

`ogf(1/(1-x-2x^2+2x^3-x^5))`
-/

namespace A116157.P3230965191108189194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -1, -2, 2, 0, -1] n

end

end A116157.P3230965191108189194

namespace A116157

/-- `ogf(1/(1-x-2x^2+2x^3-x^5))` -/
def P3230965191108189194.Spec : Prop :=
  ∀ n, P3230965191108189194.a n = A116157 n

end A116157

/-! ## A116157.P13031609848675669169

`A000011(n+2)-A124010(A062572(n+1))`
-/

namespace A116157.P13031609848675669169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000011 (n + 2) - A124010 (A062572 (n + 1)).toNat

end

end A116157.P13031609848675669169

namespace A116157

/-- `A000011(n+2)-A124010(A062572(n+1))` -/
def P13031609848675669169.Spec : Prop :=
  ∀ n, P13031609848675669169.a n = A116157 n

end A116157

/-! ## A116157.P2471848340236355608

`A072089(A000011(n+2))-A137795(n+1)`
-/

namespace A116157.P2471848340236355608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072089 (A000011 (n + 2)).toNat - A137795 (n + 1)

end

end A116157.P2471848340236355608

namespace A116157

/-- `A072089(A000011(n+2))-A137795(n+1)` -/
def P2471848340236355608.Spec : Prop :=
  ∀ n, P2471848340236355608.a n = A116157 n

end A116157

/-! ## A116157.P8538706346219137220

`A000011(n+2)-A369367(A369367(n+1))`
-/

namespace A116157.P8538706346219137220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000011 (n + 2) - A369367 (A369367 (n + 1)).toNat

end

end A116157.P8538706346219137220

namespace A116157

/-- `A000011(n+2)-A369367(A369367(n+1))` -/
def P8538706346219137220.Spec : Prop :=
  ∀ n, P8538706346219137220.a n = A116157 n

end A116157

/-!
# A116158: Numbers k such that k concatenated with itself gives the product of two numbers which differ by 5.

The programs for A116158, there is no canonical definition to state claims against.
-/

/-! ## A116158.P6625043949210249632

`A116119(A028310(n))+and(1, a(n-1))` with `a(0)=6`
-/

namespace A116158.P6625043949210249632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [6] fun n a =>
  A116119 (A028310 n).toNat + Int.land 1 (a (n - 1))

end

end A116158.P6625043949210249632

/-! ## A116158.P2977746333540273558

`A116119(A028310(n))%A116152(n+3)`
-/

namespace A116158.P2977746333540273558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A116119 (A028310 n).toNat) (A116152 (n + 3))

end

end A116158.P2977746333540273558

/-! ## A116158.P6983580345252238357

`A116119(round(sqrt(n²+1)))%A116260(n+1)`
-/

namespace A116158.P6983580345252238357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A116119 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat) (A116260 (n + 1))

end

end A116158.P6983580345252238357

/-! ## A116158.P14451505239867494292

`∪[A116119(n+1)%A116094(n+1), A116119(n+1)]`
-/

namespace A116158.P14451505239867494292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A116119 (n + 1)) (A116094 (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116119 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A116158.P14451505239867494292

/-! ## A116158.P16246215599950130328

`A116119(A028310(n))+A000122(2*a(n-1))` with `a(0)=6`
-/

namespace A116158.P16246215599950130328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [6] fun n a =>
  A116119 (A028310 n).toNat + A000122 (2 * a (n - 1)).toNat

end

end A116158.P16246215599950130328

/-!
# A116159: Numbers k such that k concatenated with itself gives the product of two numbers which differ by 6.

The programs for A116159, there is no canonical definition to state claims against.
-/

/-! ## A116159.P3078601401558507066

`A116113(C(A025581(n), a(n-1))²+n)` with `a(0)=5`
-/

namespace A116159.P3078601401558507066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  A116113 (Nat.choose (A025581 n).toNat (a (n - 1)).toNat ^ 2 + n)

end

end A116159.P3078601401558507066

/-! ## A116159.P12227518033457184084

`A116113(floor(A025581(n)/a(n-1))+n)` with `a(0)=5`
-/

namespace A116159.P12227518033457184084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  A116113 (⌊(A025581 n : ℚ) / (a (n - 1) : ℚ)⌋ + (n : ℤ)).toNat

end

end A116159.P12227518033457184084

/-! ## A116159.P14931477015129585805

`∪[A116113(n+1)%A115431(n+1), A116113(n+1)]`
-/

namespace A116159.P14931477015129585805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A116113 (n + 1)) (A115431 (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116113 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A116159.P14931477015129585805

/-! ## A116159.P17473368428655011914

`A116113(gcd(n, A008706(n)))%A115431(n+1)`
-/

namespace A116159.P17473368428655011914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A116113 (Int.gcd (n : ℤ) (A008706 n))) (A115431 (n + 1))

end

end A116159.P17473368428655011914

/-! ## A116159.P8255285397721769657

`A116113(1-A057427(n)+n)%A115431(n+1)`
-/

namespace A116159.P8255285397721769657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A116113 (1 - A057427 n + (n : ℤ)).toNat) (A115431 (n + 1))

end

end A116159.P8255285397721769657

/-! ## A116159.P16181299139043129122

`A116113(A028310(n))%A116260(n+1)`
-/

namespace A116159.P16181299139043129122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A116113 (A028310 n).toNat) (A116260 (n + 1))

end

end A116159.P16181299139043129122

/-!
# A116160: Numbers k such that k concatenated with itself gives the product of two numbers which differ by 7.

The programs for A116160, there is no canonical definition to state claims against.
-/

/-! ## A116160.P1898349254906755458

`A116109(n%a(n-1))` with `a(0)=4`
-/

namespace A116160.P1898349254906755458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  A116109 (Int.tmod (n : ℤ) (a (n - 1))).toNat

end

end A116160.P1898349254906755458

/-! ## A116160.P7896628202458420490

`A116109(n-and(1, a(n-1)))` with `a(0)=4`
-/

namespace A116160.P7896628202458420490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  A116109 ((n : ℤ) - Int.land 1 (a (n - 1))).toNat

end

end A116160.P7896628202458420490

/-! ## A116160.P8701883286479506658

`A116109(round(sqrt(n²+1)))%A115431(n+1)`
-/

namespace A116160.P8701883286479506658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A116109 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat) (A115431 (n + 1))

end

end A116160.P8701883286479506658

/-! ## A116160.P11610177721509604388

`A116109(A028310(n))%A116152(3*(n+1))`
-/

namespace A116160.P11610177721509604388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A116109 (A028310 n).toNat) (A116152 (3 * (n + 1)))

end

end A116160.P11610177721509604388

/-! ## A116160.P11899253002512738885

`A116109(A028310(n))%A116303(n+1)²`
-/

namespace A116160.P11899253002512738885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A116109 (A028310 n).toNat) (A116303 (n + 1) ^ 2)

end

end A116160.P11899253002512738885

/-! ## A116160.P15486534968461037476

`record[A116109(A134478(n))%A116152(3*(n+1))]`
-/

namespace A116160.P15486534968461037476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A116109 (A134478 n).toNat) (A116152 (3 * (n + 1)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A116160.P15486534968461037476

/-!
# A116162: Numbers k such that k concatenated with itself gives the product of two numbers which differ by 9.

The programs for A116162, there is no canonical definition to state claims against.
-/

/-! ## A116162.P3835528214513883899

`A116215(A028310(n))%A220858(n+8)`
-/

namespace A116162.P3835528214513883899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A116215 (A028310 n).toNat) (A220858 (n + 8))

end

end A116162.P3835528214513883899

/-!
# A116164: a(n) = 6^n * n*(n+1).

The programs for A116164, the canonical program `A116164.P10854320643788573529` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A116164 has offset 0).

The definition of A116164 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `6^n*n*(n+1)` (program `A116164.P10854320643788573529`, by `A116164.P10854320643788573529.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A116164.P8047368662961239143

`(n²+n)*6^n`
-/

namespace A116164.P8047368662961239143
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n ^ 2 + n) * 6 ^ n

end

end A116164.P8047368662961239143

namespace A116164

/-- `(n²+n)*6^n` -/
def P8047368662961239143.Spec : Prop :=
  ∀ n, (P8047368662961239143.a n : ℤ) = A116164 n

theorem P8047368662961239143.correct : P8047368662961239143.Spec := by
  intro n
  simp only [A116164, Nat.add_sub_cancel, A116164.P8047368662961239143.a, A116164.P10854320643788573529.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A116164

/-! ## A116164.P10854320643788573529

`6^n*n*(n+1)`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A116164

/-- `6^n*n*(n+1)` -/
def P10854320643788573529.Spec : Prop :=
  ∀ n, (P10854320643788573529.a n : ℤ) = A116164 n

theorem P10854320643788573529.correct : P10854320643788573529.Spec := by
  intro n
  simp only [A116164]

end A116164

/-! ## A116164.P1362533143694851639

`18*a(n-1)-108*a(n-2)+216*a(n-3)` with `a(0)=0, a(1)=12, a(2)=216`
-/

namespace A116164.P1362533143694851639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 12, 216] fun n a =>
  18 * a (n - 1) - 108 * a (n - 2) + 216 * a (n - 3)

end

end A116164.P1362533143694851639

namespace A116164

/-- `18*a(n-1)-108*a(n-2)+216*a(n-3)` -/
def P1362533143694851639.Spec : Prop :=
  ∀ n, P1362533143694851639.a n = A116164 n

theorem P1362533143694851639.correct : P1362533143694851639.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A116164, Nat.add_sub_cancel, A116164.P1362533143694851639.a, A116164.P10854320643788573529.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A116164, Nat.add_sub_cancel, A116164.P1362533143694851639.a, A116164.P10854320643788573529.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [h1, h2, h3]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A116164

/-! ## A116164.P12269341023309451028

`lcm(n, n*A053469(n+1))`
-/

namespace A116164.P12269341023309451028
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) ((n : ℤ) * A053469 (n + 1))

end

end A116164.P12269341023309451028

namespace A116164

/-- `lcm(n, n*A053469(n+1))` -/
def P12269341023309451028.Spec : Prop :=
  ∀ n, (P12269341023309451028.a n : ℤ) = A116164 n

end A116164

/-! ## A116164.P13221193264049968510

`ceil(n*A212700(n+1)/5)`
-/

namespace A116164.P13221193264049968510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) * ((A212700 (n + 1) : ℚ) / 5)⌉

end

end A116164.P13221193264049968510

namespace A116164

/-- `ceil(n*A212700(n+1)/5)` -/
def P13221193264049968510.Spec : Prop :=
  ∀ n, P13221193264049968510.a n = A116164 n

end A116164

/-! ## A116164.P14844377123927016407

`ceil(n*A027271(2*n+1)/4)`
-/

namespace A116164.P14844377123927016407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) * ((A027271 (2 * n + 1) : ℚ) / 4)⌉

end

end A116164.P14844377123927016407

namespace A116164

/-- `ceil(n*A027271(2*n+1)/4)` -/
def P14844377123927016407.Spec : Prop :=
  ∀ n, P14844377123927016407.a n = A116164 n

end A116164

/-! ## A116164.P11197168680837818037

`ceil(n*A203232(2*(n+1))/5)`
-/

namespace A116164.P11197168680837818037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) * ((A203232 (2 * (n + 1)) : ℚ) / 5)⌉

end

end A116164.P11197168680837818037

namespace A116164

/-- `ceil(n*A203232(2*(n+1))/5)` -/
def P11197168680837818037.Spec : Prop :=
  ∀ n, P11197168680837818037.a n = A116164 n

end A116164

/-! ## A116164.P16255638850271937860

`ceil(n*A203233(2*(n+1))/5)`
-/

namespace A116164.P16255638850271937860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) * ((A203233 (2 * (n + 1)) : ℚ) / 5)⌉

end

end A116164.P16255638850271937860

namespace A116164

/-- `ceil(n*A203233(2*(n+1))/5)` -/
def P16255638850271937860.Spec : Prop :=
  ∀ n, P16255638850271937860.a n = A116164 n

end A116164

/-! ## A116164.P317516005292541152

`lcm(A116138(n), A291938(n+1))`
-/

namespace A116164.P317516005292541152
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A116138 n) (A291938 (n + 1))

end

end A116164.P317516005292541152

namespace A116164

/-- `lcm(A116138(n), A291938(n+1))` -/
def P317516005292541152.Spec : Prop :=
  ∀ n, (P317516005292541152.a n : ℤ) = A116164 n

end A116164

/-! ## A116164.P143877621305782491

`A036292(n)+n*A036292(n)`
-/

namespace A116164.P143877621305782491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036292 n + (n : ℤ) * A036292 n

end

end A116164.P143877621305782491

namespace A116164

/-- `A036292(n)+n*A036292(n)` -/
def P143877621305782491.Spec : Prop :=
  ∀ n, P143877621305782491.a n = A116164 n

theorem P143877621305782491.correct : P143877621305782491.Spec := by
  intro n
  simp only [A116164, Nat.add_sub_cancel, A116164.P143877621305782491.a, A116164.P10854320643788573529.a, A036292, A036292.P17934490040438387144.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A116164

/-! ## A116164.P14781761775115253075

`record[2*n*A000400(A025581(n))]`
-/

namespace A116164.P14781761775115253075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) * A000400 (A025581 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A116164.P14781761775115253075

namespace A116164

/-- `record[2*n*A000400(A025581(n))]` -/
def P14781761775115253075.Spec : Prop :=
  ∀ n, P14781761775115253075.a n = A116164 n

end A116164

/-! ## A116164.P11906813166127916880

`abs(Δ[A329115(2*(n+1))]*A000217(n))`
-/

namespace A116164.P11906813166127916880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329115 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(f1 (n + 1) - f1 n) * A000217 n|

end

end A116164.P11906813166127916880

namespace A116164

/-- `abs(Δ[A329115(2*(n+1))]*A000217(n))` -/
def P11906813166127916880.Spec : Prop :=
  ∀ n, P11906813166127916880.a n = A116164 n

end A116164

/-! ## A116164.P15736341434773028596

`A000051(n+1)*A129530(n+1)-A129530(n+1)`
-/

namespace A116164.P15736341434773028596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 (n + 1) * A129530 (n + 1) - A129530 (n + 1)

end

end A116164.P15736341434773028596

namespace A116164

/-- `A000051(n+1)*A129530(n+1)-A129530(n+1)` -/
def P15736341434773028596.Spec : Prop :=
  ∀ n, P15736341434773028596.a n = A116164 n

end A116164

/-! ## A116164.P13126467210014581694

`A128800(n+1)/6`
-/

namespace A116164.P13126467210014581694
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A128800 (n + 1) : ℚ) / 6

end

end A116164.P13126467210014581694

namespace A116164

/-- `A128800(n+1)/6` -/
def P13126467210014581694.Spec : Prop :=
  ∀ n, P13126467210014581694.a n = (A116164 n : ℚ)

theorem P13126467210014581694.correct : P13126467210014581694.Spec := by
  intro n
  simp only [A116164, Nat.add_sub_cancel, A116164.P13126467210014581694.a, A116164.P10854320643788573529.a, A128800, A128800.P8865242343372732918.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A116164

/-! ## A116164.P10509086744970624265

`n*A212700(n+1)/5`
-/

namespace A116164.P10509086744970624265
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * A212700 (n + 1) : ℚ) / 5

end

end A116164.P10509086744970624265

namespace A116164

/-- `n*A212700(n+1)/5` -/
def P10509086744970624265.Spec : Prop :=
  ∀ n, P10509086744970624265.a n = (A116164 n : ℚ)

theorem P10509086744970624265.correct : P10509086744970624265.Spec := by
  intro n
  simp only [A116164, Nat.add_sub_cancel, A116164.P10509086744970624265.a, A116164.P10854320643788573529.a, A212700, A212700.P17843632432292983955.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A116164

/-! ## A116164.P14999053412527412847

`∑[2*n]*A000400(n+1)/6`
-/

namespace A116164.P14999053412527412847
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A000400 (n + 1) : ℚ) / 6

end

end A116164.P14999053412527412847

namespace A116164

/-- `∑[2*n]*A000400(n+1)/6` -/
def P14999053412527412847.Spec : Prop :=
  ∀ n, P14999053412527412847.a n = (A116164 n : ℚ)

end A116164

/-! ## A116164.P12114186892567886961

`A005843(n)*A053469(n+1)/2`
-/

namespace A116164.P12114186892567886961
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005843 n * A053469 (n + 1) : ℚ) / 2

end

end A116164.P12114186892567886961

namespace A116164

/-- `A005843(n)*A053469(n+1)/2` -/
def P12114186892567886961.Spec : Prop :=
  ∀ n, P12114186892567886961.a n = (A116164 n : ℚ)

theorem P12114186892567886961.correct : P12114186892567886961.Spec := by
  intro n
  simp only [A116164, Nat.add_sub_cancel, A116164.P12114186892567886961.a, A116164.P10854320643788573529.a, A005843, A005843.P3167286115683555970.a, A053469, A053469.P13890258826874513024.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A116164

/-! ## A116164.P13400215682507873818

`Δ[A329115(2*n+3)]*A000217(n)/3`
-/

namespace A116164.P13400215682507873818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329115 (2 * n + 3)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) - f1 n) * A000217 n : ℚ) / 3

end

end A116164.P13400215682507873818

namespace A116164

/-- `Δ[A329115(2*n+3)]*A000217(n)/3` -/
def P13400215682507873818.Spec : Prop :=
  ∀ n, P13400215682507873818.a n = (A116164 n : ℚ)

end A116164

/-! ## A116164.P14100437715349579959

`A036561(A046092(n))*A046092(n)/2`
-/

namespace A116164.P14100437715349579959
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A036561 (A046092 n).toNat * A046092 n : ℚ) / 2

end

end A116164.P14100437715349579959

namespace A116164

/-- `A036561(A046092(n))*A046092(n)/2` -/
def P14100437715349579959.Spec : Prop :=
  ∀ n, P14100437715349579959.a n = (A116164 n : ℚ)

end A116164

/-!
# A116165: a(n) = 7^n * n*(n+1).

The programs for A116165, the canonical program `A116165.P322017445968686295` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A116165 has offset 0).

The definition of A116165 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `7^n*n*(n+1)` (program `A116165.P322017445968686295`, by `A116165.P322017445968686295.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A116165.P13462029078111552924

`(n²+n)*7^n`
-/

namespace A116165.P13462029078111552924
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n ^ 2 + n) * 7 ^ n

end

end A116165.P13462029078111552924

namespace A116165

/-- `(n²+n)*7^n` -/
def P13462029078111552924.Spec : Prop :=
  ∀ n, (P13462029078111552924.a n : ℤ) = A116165 n

theorem P13462029078111552924.correct : P13462029078111552924.Spec := by
  intro n
  simp only [A116165, Nat.add_sub_cancel, A116165.P13462029078111552924.a, A116165.P322017445968686295.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A116165

/-! ## A116165.P322017445968686295

`7^n*n*(n+1)`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A116165

/-- `7^n*n*(n+1)` -/
def P322017445968686295.Spec : Prop :=
  ∀ n, (P322017445968686295.a n : ℤ) = A116165 n

theorem P322017445968686295.correct : P322017445968686295.Spec := by
  intro n
  simp only [A116165]

end A116165

/-! ## A116165.P12840260563709540698

`21*a(n-1)-147*a(n-2)+343*a(n-3)` with `a(0)=0, a(1)=14, a(2)=294`
-/

namespace A116165.P12840260563709540698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 14, 294] fun n a =>
  21 * a (n - 1) - 147 * a (n - 2) + 343 * a (n - 3)

end

end A116165.P12840260563709540698

namespace A116165

/-- `21*a(n-1)-147*a(n-2)+343*a(n-3)` -/
def P12840260563709540698.Spec : Prop :=
  ∀ n, P12840260563709540698.a n = A116165 n

theorem P12840260563709540698.correct : P12840260563709540698.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A116165, Nat.add_sub_cancel, A116165.P12840260563709540698.a, A116165.P322017445968686295.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A116165, Nat.add_sub_cancel, A116165.P12840260563709540698.a, A116165.P322017445968686295.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [h1, h2, h3]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A116165

/-! ## A116165.P7686919822372295016

`(n+1)*A050919(n)-(n+1)`
-/

namespace A116165.P7686919822372295016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A050919 n - (n + 1 : ℤ)

end

end A116165.P7686919822372295016

namespace A116165

/-- `(n+1)*A050919(n)-(n+1)` -/
def P7686919822372295016.Spec : Prop :=
  ∀ n, P7686919822372295016.a n = A116165 n

theorem P7686919822372295016.correct : P7686919822372295016.Spec := by
  intro n
  simp only [A116165, Nat.add_sub_cancel, A116165.P7686919822372295016.a, A116165.P322017445968686295.a, A050919, A050919.P18278914643895436143.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A116165

/-! ## A116165.P3385424114158366584

`(n²+n)*(A198480(n)+1)/2`
-/

namespace A116165.P3385424114158366584
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n ^ 2 + n : ℤ) * (A198480 n + 1) : ℚ) / 2

end

end A116165.P3385424114158366584

namespace A116165

/-- `(n²+n)*(A198480(n)+1)/2` -/
def P3385424114158366584.Spec : Prop :=
  ∀ n, P3385424114158366584.a n = (A116165 n : ℚ)

theorem P3385424114158366584.correct : P3385424114158366584.Spec := by
  intro n
  simp only [A116165, Nat.add_sub_cancel, A116165.P3385424114158366584.a, A116165.P322017445968686295.a, A198480, A198480.P6836705424203815260.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A116165

/-! ## A116165.P6770051930419890405

`floor(2*∑[n]*A208704(n+1)/4)`
-/

namespace A116165.P6770051930419890405
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 * ((((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A208704 (n + 1) : ℚ) / 4)⌋

end

end A116165.P6770051930419890405

namespace A116165

/-- `floor(2*∑[n]*A208704(n+1)/4)` -/
def P6770051930419890405.Spec : Prop :=
  ∀ n, P6770051930419890405.a n = A116165 n

end A116165

/-! ## A116165.P8806672966011768605

`A128786(n)+A036293(n)`
-/

namespace A116165.P8806672966011768605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128786 n + A036293 n

end

end A116165.P8806672966011768605

namespace A116165

/-- `A128786(n)+A036293(n)` -/
def P8806672966011768605.Spec : Prop :=
  ∀ n, P8806672966011768605.a n = A116165 n

theorem P8806672966011768605.correct : P8806672966011768605.Spec := by
  intro n
  simp only [A116165, Nat.add_sub_cancel, A116165.P8806672966011768605.a, A116165.P322017445968686295.a, A036293, A036293.P8879774288884538033.a, A128786, A128786.P9666995029026690429.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A116165

/-! ## A116165.P507441294273665129

`-(A001489(n)*A027473(n+1))`
-/

namespace A116165.P507441294273665129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A001489 n * A027473 (n + 1))

end

end A116165.P507441294273665129

namespace A116165

/-- `-(A001489(n)*A027473(n+1))` -/
def P507441294273665129.Spec : Prop :=
  ∀ n, P507441294273665129.a n = A116165 n

end A116165

/-! ## A116165.P9345655158121582527

`A005843(∑[n])/7^A001489(n)`
-/

namespace A116165.P9345655158121582527
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005843 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / (7 : ℚ) ^ (A001489 n : ℤ)

end

end A116165.P9345655158121582527

namespace A116165

/-- `A005843(∑[n])/7^A001489(n)` -/
def P9345655158121582527.Spec : Prop :=
  ∀ n, P9345655158121582527.a n = (A116165 n : ℚ)

end A116165

/-! ## A116165.P587148918167319447

`abs(xor(n, A033999(n))*A036293(n))`
-/

namespace A116165.P587148918167319447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (n : ℤ) (A033999 n) * A036293 n|

end

end A116165.P587148918167319447

namespace A116165

/-- `abs(xor(n, A033999(n))*A036293(n))` -/
def P587148918167319447.Spec : Prop :=
  ∀ n, P587148918167319447.a n = A116165 n

end A116165

/-! ## A116165.P5482303558549121211

`A128801(n+1)/7`
-/

namespace A116165.P5482303558549121211
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A128801 (n + 1) : ℚ) / 7

end

end A116165.P5482303558549121211

namespace A116165

/-- `A128801(n+1)/7` -/
def P5482303558549121211.Spec : Prop :=
  ∀ n, P5482303558549121211.a n = (A116165 n : ℚ)

theorem P5482303558549121211.correct : P5482303558549121211.Spec := by
  intro n
  simp only [A116165, Nat.add_sub_cancel, A116165.P5482303558549121211.a, A116165.P322017445968686295.a, A128801, A128801.P617593162747398871.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A116165

/-! ## A116165.P10479300722911166465

`record[2*n*A027466(n)/A007318(n)]`
-/

namespace A116165.P10479300722911166465
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * n : ℚ) * ((A027466 n : ℚ) / (A007318 n : ℚ))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A116165.P10479300722911166465

namespace A116165

/-- `record[2*n*A027466(n)/A007318(n)]` -/
def P10479300722911166465.Spec : Prop :=
  ∀ n, P10479300722911166465.a n = (A116165 n : ℚ)

end A116165

/-!
# A116166: a(n) = 8^n * n*(n+1).

The programs for A116166, the canonical program `A116166.P16199967841553929865` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A116166 has offset 0).

The definition of A116166 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `8^n*n*(n+1)` (program `A116166.P16199967841553929865`, by `A116166.P16199967841553929865.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A116166.P15575003120331883399

`(n²+n)*8^n`
-/

namespace A116166.P15575003120331883399
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n ^ 2 + n) * 8 ^ n

end

end A116166.P15575003120331883399

namespace A116166

/-- `(n²+n)*8^n` -/
def P15575003120331883399.Spec : Prop :=
  ∀ n, (P15575003120331883399.a n : ℤ) = A116166 n

theorem P15575003120331883399.correct : P15575003120331883399.Spec := by
  intro n
  simp only [A116166, Nat.add_sub_cancel, A116166.P15575003120331883399.a, A116166.P16199967841553929865.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A116166

/-! ## A116166.P16199967841553929865

`8^n*n*(n+1)`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A116166

/-- `8^n*n*(n+1)` -/
def P16199967841553929865.Spec : Prop :=
  ∀ n, (P16199967841553929865.a n : ℤ) = A116166 n

theorem P16199967841553929865.correct : P16199967841553929865.Spec := by
  intro n
  simp only [A116166]

end A116166

/-! ## A116166.P14640067000790622538

`24*a(n-1)-192*a(n-2)+512*a(n-3)` with `a(0)=0, a(1)=16, a(2)=384`
-/

namespace A116166.P14640067000790622538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 16, 384] fun n a =>
  24 * a (n - 1) - 192 * a (n - 2) + 512 * a (n - 3)

end

end A116166.P14640067000790622538

namespace A116166

/-- `24*a(n-1)-192*a(n-2)+512*a(n-3)` -/
def P14640067000790622538.Spec : Prop :=
  ∀ n, P14640067000790622538.a n = A116166 n

theorem P14640067000790622538.correct : P14640067000790622538.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A116166, Nat.add_sub_cancel, A116166.P14640067000790622538.a, A116166.P16199967841553929865.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A116166, Nat.add_sub_cancel, A116166.P14640067000790622538.a, A116166.P16199967841553929865.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [h1, h2, h3]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A116166

/-! ## A116166.P18212822366526069775

`abs((n-A005563(n))*8^n)`
-/

namespace A116166.P18212822366526069775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((n : ℤ) - A005563 n) * (8 ^ n : ℤ)|

end

end A116166.P18212822366526069775

namespace A116166

/-- `abs((n-A005563(n))*8^n)` -/
def P18212822366526069775.Spec : Prop :=
  ∀ n, P18212822366526069775.a n = A116166 n

end A116166

/-! ## A116166.P7875742666167751004

`and(n*A053539(n+1), -n)`
-/

namespace A116166.P7875742666167751004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((n : ℤ) * A053539 (n + 1)) (-(n : ℤ))

end

end A116166.P7875742666167751004

namespace A116166

/-- `and(n*A053539(n+1), -n)` -/
def P7875742666167751004.Spec : Prop :=
  ∀ n, P7875742666167751004.a n = A116166 n

end A116166

/-! ## A116166.P8696339558234100769

`abs(∑[n]*A094014(2*n+1))`
-/

namespace A116166.P8696339558234100769
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A094014 (2 * n + 1)|

end

end A116166.P8696339558234100769

namespace A116166

/-- `abs(∑[n]*A094014(2*n+1))` -/
def P8696339558234100769.Spec : Prop :=
  ∀ n, P8696339558234100769.a n = A116166 n

end A116166

/-! ## A116166.P4228980524531103649

`and((n²+n)*Δ[A023001(n)], -(n+1))`
-/

namespace A116166.P4228980524531103649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023001 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((n ^ 2 + n : ℤ) * (f1 (n + 1) - f1 n)) (-(n + 1 : ℤ))

end

end A116166.P4228980524531103649

namespace A116166

/-- `and((n²+n)*Δ[A023001(n)], -(n+1))` -/
def P4228980524531103649.Spec : Prop :=
  ∀ n, P4228980524531103649.a n = A116166 n

end A116166

/-! ## A116166.P4968191740326846963

`A036294(n)+n*A036294(n)`
-/

namespace A116166.P4968191740326846963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036294 n + (n : ℤ) * A036294 n

end

end A116166.P4968191740326846963

namespace A116166

/-- `A036294(n)+n*A036294(n)` -/
def P4968191740326846963.Spec : Prop :=
  ∀ n, P4968191740326846963.a n = A116166 n

theorem P4968191740326846963.correct : P4968191740326846963.Spec := by
  intro n
  simp only [A116166, Nat.add_sub_cancel, A116166.P4968191740326846963.a, A116166.P16199967841553929865.a, A036294, A036294.P5330429695356076462.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A116166

/-! ## A116166.P10702497263624383544

`abs((A001489(n)-1)*A036294(n))`
-/

namespace A116166.P10702497263624383544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(A001489 n - 1) * A036294 n|

end

end A116166.P10702497263624383544

namespace A116166

/-- `abs((A001489(n)-1)*A036294(n))` -/
def P10702497263624383544.Spec : Prop :=
  ∀ n, P10702497263624383544.a n = A116166 n

end A116166

/-! ## A116166.P12319375007822626782

`abs(A118442(2*n)*A118442(n+1))`
-/

namespace A116166.P12319375007822626782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A118442 (2 * n) * A118442 (n + 1)|

end

end A116166.P12319375007822626782

namespace A116166

/-- `abs(A118442(2*n)*A118442(n+1))` -/
def P12319375007822626782.Spec : Prop :=
  ∀ n, P12319375007822626782.a n = A116166 n

end A116166

/-! ## A116166.P8349072508122509603

`A001788(n)/(1/A000079(n+1))²`
-/

namespace A116166.P8349072508122509603
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001788 n : ℚ) / (1 / (A000079 (n + 1) : ℚ)) ^ 2

end

end A116166.P8349072508122509603

namespace A116166

/-- `A001788(n)/(1/A000079(n+1))²` -/
def P8349072508122509603.Spec : Prop :=
  ∀ n, P8349072508122509603.a n = (A116166 n : ℚ)

end A116166

/-! ## A116166.P8014668315380824907

`and(A000302(n+1)*A001788(n), -2)`
-/

namespace A116166.P8014668315380824907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000302 (n + 1) * A001788 n) (-2)

end

end A116166.P8014668315380824907

namespace A116166

/-- `and(A000302(n+1)*A001788(n), -2)` -/
def P8014668315380824907.Spec : Prop :=
  ∀ n, P8014668315380824907.a n = A116166 n

end A116166

/-! ## A116166.P594384020167093958

`and(∑[n]*A000079(A016777(n)), -(n+1))`
-/

namespace A116166.P594384020167093958
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A000079 (A016777 n).toNat) (-(n + 1 : ℤ))

end

end A116166.P594384020167093958

namespace A116166

/-- `and(∑[n]*A000079(A016777(n)), -(n+1))` -/
def P594384020167093958.Spec : Prop :=
  ∀ n, P594384020167093958.a n = A116166 n

end A116166

/-! ## A116166.P4945295975898856739

`abs(A085750(2*n+1)*A085750(n+2))`
-/

namespace A116166.P4945295975898856739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A085750 (2 * n + 1) * A085750 (n + 2)|

end

end A116166.P4945295975898856739

namespace A116166

/-- `abs(A085750(2*n+1)*A085750(n+2))` -/
def P4945295975898856739.Spec : Prop :=
  ∀ n, P4945295975898856739.a n = A116166 n

end A116166

/-! ## A116166.P10261950234900154635

`record[A001787(n)*A001787(A028242(n))]`
-/

namespace A116166.P10261950234900154635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001787 n * A001787 (A028242 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A116166.P10261950234900154635

namespace A116166

/-- `record[A001787(n)*A001787(A028242(n))]` -/
def P10261950234900154635.Spec : Prop :=
  ∀ n, P10261950234900154635.a n = A116166 n

end A116166

/-! ## A116166.P18355477663921721953

`A128802(n+1)/8`
-/

namespace A116166.P18355477663921721953
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A128802 (n + 1) : ℚ) / 8

end

end A116166.P18355477663921721953

namespace A116166

/-- `A128802(n+1)/8` -/
def P18355477663921721953.Spec : Prop :=
  ∀ n, P18355477663921721953.a n = (A116166 n : ℚ)

theorem P18355477663921721953.correct : P18355477663921721953.Spec := by
  intro n
  simp only [A116166, Nat.add_sub_cancel, A116166.P18355477663921721953.a, A116166.P16199967841553929865.a, A128802, A128802.P6280467458360713777.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A116166

/-! ## A116166.P7567185810443111152

`8^n*A046092(n)/2`
-/

namespace A116166.P7567185810443111152
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((8 ^ n : ℤ) * A046092 n : ℚ) / 2

end

end A116166.P7567185810443111152

namespace A116166

/-- `8^n*A046092(n)/2` -/
def P7567185810443111152.Spec : Prop :=
  ∀ n, P7567185810443111152.a n = (A116166 n : ℚ)

theorem P7567185810443111152.correct : P7567185810443111152.Spec := by
  intro n
  simp only [A116166, Nat.add_sub_cancel, A116166.P7567185810443111152.a, A116166.P16199967841553929865.a, A046092, A046092.P16411658895297056450.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A116166

/-! ## A116166.P11524918673451342147

`∑[n]*A000079(3*n+2)/2`
-/

namespace A116166.P11524918673451342147
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A000079 (3 * n + 2) : ℚ) / 2

end

end A116166.P11524918673451342147

namespace A116166

/-- `∑[n]*A000079(3*n+2)/2` -/
def P11524918673451342147.Spec : Prop :=
  ∀ n, P11524918673451342147.a n = (A116166 n : ℚ)

end A116166

/-! ## A116166.P103067639109875097

`A000079(n)²*A128796(n+1)/2`
-/

namespace A116166.P103067639109875097
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000079 n ^ 2 * A128796 (n + 1) : ℚ) / 2

end

end A116166.P103067639109875097

namespace A116166

/-- `A000079(n)²*A128796(n+1)/2` -/
def P103067639109875097.Spec : Prop :=
  ∀ n, P103067639109875097.a n = (A116166 n : ℚ)

end A116166

/-!
# A116167: Numbers k such that k concatenated with k+1 gives the product of two numbers which differ by 7.

The programs for A116167, there is no canonical definition to state claims against.
-/

/-! ## A116167.P3629436260409311994

`xor(5*A000038(n), A116114(n+1))`
-/

namespace A116167.P3629436260409311994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (5 * A000038 n) (A116114 (n + 1))

end

end A116167.P3629436260409311994

/-! ## A116167.P13895113733415485711

`A116114(n+1)-A004016(A004016(n²))`
-/

namespace A116167.P13895113733415485711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116114 (n + 1) - A004016 (A004016 (n ^ 2)).toNat

end

end A116167.P13895113733415485711

/-! ## A116167.P1724144199999541834

`A116114(n+1)-A004016(A004016(n)+2)`
-/

namespace A116167.P1724144199999541834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116114 (n + 1) - A004016 (A004016 n + 2).toNat

end

end A116167.P1724144199999541834

/-! ## A116167.P3271799559039003262

`A116114(n+1)-A004016(A141056(n))`
-/

namespace A116167.P3271799559039003262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116114 (n + 1) - A004016 (A141056 n).toNat

end

end A116167.P3271799559039003262

/-! ## A116167.P12178605337200210579

`A116114(n+1)-A004016(A270024(n))`
-/

namespace A116167.P12178605337200210579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116114 (n + 1) - A004016 (A270024 n).toNat

end

end A116167.P12178605337200210579

/-!
# A116170: Numbers k such that k concatenated with k+2 gives the product of two numbers which differ by 1.

The programs for A116170, there is no canonical definition to state claims against.
-/

/-! ## A116170.P2733708038614866082

`record[A116130(n+3)%A116261(n+3)]`
-/

namespace A116170.P2733708038614866082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A116130 (n + 3)) (A116261 (n + 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A116170.P2733708038614866082

/-! ## A116170.P17005732331813980604

`filter[A116130(n+2), A341999(#)]`
-/

namespace A116170.P17005732331813980604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116130 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A341999 (f1 j).toNat = 1) n)

end

end A116170.P17005732331813980604

/-! ## A116170.P13847777073919605054

`filter[A116130(n+2), A354108(#)]`
-/

namespace A116170.P13847777073919605054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116130 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354108 (f1 j).toNat = 1) n)

end

end A116170.P13847777073919605054

/-!
# A116172: Numbers k such that k concatenated with k+2 gives the product of two numbers which differ by 5.

The programs for A116172, there is no canonical definition to state claims against.
-/

/-! ## A116172.P11933647101200060070

`A116132(n%a(n-1))` with `a(0)=2`
-/

namespace A116172.P11933647101200060070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A116132 (Int.tmod (n : ℤ) (a (n - 1))).toNat

end

end A116172.P11933647101200060070

/-! ## A116172.P7248791869154778772

`A116132(round(sqrt(n²+1)))%A116330(n+1)`
-/

namespace A116172.P7248791869154778772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A116132 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat) (A116330 (n + 1))

end

end A116172.P7248791869154778772

/-! ## A116172.P18331755271119066368

`gcd(A000038(n), A116132(A028310(n)))`
-/

namespace A116172.P18331755271119066368
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A116132 (A028310 n).toNat)

end

end A116172.P18331755271119066368

/-! ## A116172.P6567144470985964665

`A116132(A028310(n))%A116303(n+1)`
-/

namespace A116172.P6567144470985964665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A116132 (A028310 n).toNat) (A116303 (n + 1))

end

end A116172.P6567144470985964665

/-! ## A116172.P4987139072025319687

`A116132(A000007(n)+n)%A116303(n+1)`
-/

namespace A116172.P4987139072025319687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A116132 (A000007 n + (n : ℤ)).toNat) (A116303 (n + 1))

end

end A116172.P4987139072025319687

/-!
# A116176: a(n) = 9^n * n*(n+1).

The programs for A116176, the canonical program `A116176.P13601903676072816143` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A116176 has offset 0).

The definition of A116176 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `9^n*n*(n+1)` (program `A116176.P13601903676072816143`, by `A116176.P13601903676072816143.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A116176.P6518858676257748270

`(n²+n)*9^n`
-/

namespace A116176.P6518858676257748270
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n ^ 2 + n) * 9 ^ n

end

end A116176.P6518858676257748270

namespace A116176

/-- `(n²+n)*9^n` -/
def P6518858676257748270.Spec : Prop :=
  ∀ n, (P6518858676257748270.a n : ℤ) = A116176 n

theorem P6518858676257748270.correct : P6518858676257748270.Spec := by
  intro n
  simp only [A116176, Nat.add_sub_cancel, A116176.P6518858676257748270.a, A116176.P13601903676072816143.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A116176

/-! ## A116176.P13601903676072816143

`9^n*n*(n+1)`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A116176

/-- `9^n*n*(n+1)` -/
def P13601903676072816143.Spec : Prop :=
  ∀ n, (P13601903676072816143.a n : ℤ) = A116176 n

theorem P13601903676072816143.correct : P13601903676072816143.Spec := by
  intro n
  simp only [A116176]

end A116176

/-! ## A116176.P2380078407810222705

`27*a(n-1)-243*a(n-2)+729*a(n-3)` with `a(0)=0, a(1)=18, a(2)=486`
-/

namespace A116176.P2380078407810222705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 18, 486] fun n a =>
  27 * a (n - 1) - 243 * a (n - 2) + 729 * a (n - 3)

end

end A116176.P2380078407810222705

namespace A116176

/-- `27*a(n-1)-243*a(n-2)+729*a(n-3)` -/
def P2380078407810222705.Spec : Prop :=
  ∀ n, P2380078407810222705.a n = A116176 n

theorem P2380078407810222705.correct : P2380078407810222705.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A116176, Nat.add_sub_cancel, A116176.P2380078407810222705.a, A116176.P13601903676072816143.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A116176, Nat.add_sub_cancel, A116176.P2380078407810222705.a, A116176.P13601903676072816143.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [h1, h2, h3]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A116176

/-! ## A116176.P16553000071231990091

`lcm(2, 9^n*∑[2*n])`
-/

namespace A116176.P16553000071231990091
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 (9 ^ n * (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A116176.P16553000071231990091

namespace A116176

/-- `lcm(2, 9^n*∑[2*n])` -/
def P16553000071231990091.Spec : Prop :=
  ∀ n, (P16553000071231990091.a n : ℤ) = A116176 n

end A116176

/-! ## A116176.P3267126166559710300

`9^n*A046092(n)/2`
-/

namespace A116176.P3267126166559710300
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((9 ^ n : ℤ) * A046092 n : ℚ) / 2

end

end A116176.P3267126166559710300

namespace A116176

/-- `9^n*A046092(n)/2` -/
def P3267126166559710300.Spec : Prop :=
  ∀ n, P3267126166559710300.a n = (A116176 n : ℚ)

theorem P3267126166559710300.correct : P3267126166559710300.Spec := by
  intro n
  simp only [A116176, Nat.add_sub_cancel, A116176.P3267126166559710300.a, A116176.P13601903676072816143.a, A046092, A046092.P16411658895297056450.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A116176

/-! ## A116176.P9391477994217431617

`record[2*n*A175840(n)²]`
-/

namespace A116176.P9391477994217431617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) * A175840 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A116176.P9391477994217431617

namespace A116176

/-- `record[2*n*A175840(n)²]` -/
def P9391477994217431617.Spec : Prop :=
  ∀ n, P9391477994217431617.a n = A116176 n

end A116176

/-! ## A116176.P1571662444658147472

`ceil(n*A230540(n+1)/6)`
-/

namespace A116176.P1571662444658147472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) * ((A230540 (n + 1) : ℚ) / 6)⌉

end

end A116176.P1571662444658147472

namespace A116176

/-- `ceil(n*A230540(n+1)/6)` -/
def P1571662444658147472.Spec : Prop :=
  ∀ n, P1571662444658147472.a n = A116176 n

end A116176

/-! ## A116176.P11234477838804914944

`∑[4*n]*A001019(n)/2`
-/

namespace A116176.P11234477838804914944
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A001019 n : ℚ) / 2

end

end A116176.P11234477838804914944

namespace A116176

/-- `∑[4*n]*A001019(n)/2` -/
def P11234477838804914944.Spec : Prop :=
  ∀ n, P11234477838804914944.a n = (A116176 n : ℚ)

end A116176

/-! ## A116176.P15947825199506556064

`n*A288834(2*n+1)/2`
-/

namespace A116176.P15947825199506556064
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * A288834 (2 * n + 1) : ℚ) / 2

end

end A116176.P15947825199506556064

namespace A116176

/-- `n*A288834(2*n+1)/2` -/
def P15947825199506556064.Spec : Prop :=
  ∀ n, P15947825199506556064.a n = (A116176 n : ℚ)

end A116176

/-! ## A116176.P10160464371989918667

`4*9^n*A000217(n)/2`
-/

namespace A116176.P10160464371989918667
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((4 * 9 ^ n : ℤ) * A000217 n : ℚ) / 2

end

end A116176.P10160464371989918667

namespace A116176

/-- `4*9^n*A000217(n)/2` -/
def P10160464371989918667.Spec : Prop :=
  ∀ n, P10160464371989918667.a n = (A116176 n : ℚ)

theorem P10160464371989918667.correct : P10160464371989918667.Spec := by
  intro n
  simp only [A116176, Nat.add_sub_cancel, A116176.P10160464371989918667.a, A116176.P13601903676072816143.a, A000217, A000217.P10269402890581615239.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A116176

/-! ## A116176.P3175290370315642082

`ceil(n*A159715(2*(n+1))/4)`
-/

namespace A116176.P3175290370315642082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) * ((A159715 (2 * (n + 1)) : ℚ) / 4)⌉

end

end A116176.P3175290370315642082

namespace A116176

/-- `ceil(n*A159715(2*(n+1))/4)` -/
def P3175290370315642082.Spec : Prop :=
  ∀ n, P3175290370315642082.a n = A116176 n

end A116176

/-! ## A116176.P13258471795691620554

`ceil(n*∑[A081038(n)]²/(n+1))`
-/

namespace A116176.P13258471795691620554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081038 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) * ((((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℤ) : ℚ) / (n + 1 : ℚ))⌉

end

end A116176.P13258471795691620554

namespace A116176

/-- `ceil(n*∑[A081038(n)]²/(n+1))` -/
def P13258471795691620554.Spec : Prop :=
  ∀ n, P13258471795691620554.a n = A116176 n

end A116176

/-! ## A116176.P3039280426922056200

`A158749(n)+A036290(n)²`
-/

namespace A116176.P3039280426922056200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158749 n + A036290 n ^ 2

end

end A116176.P3039280426922056200

namespace A116176

/-- `A158749(n)+A036290(n)²` -/
def P3039280426922056200.Spec : Prop :=
  ∀ n, P3039280426922056200.a n = A116176 n

end A116176

/-! ## A116176.P1961126400500326952

`record[A000244(n)*A083392(n)]`
-/

namespace A116176.P1961126400500326952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 n * A083392 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A116176.P1961126400500326952

namespace A116176

/-- `record[A000244(n)*A083392(n)]` -/
def P1961126400500326952.Spec : Prop :=
  ∀ n, P1961126400500326952.a n = A116176 n

end A116176

/-! ## A116176.P3174877377870585593

`A128803(n)+A036290(2*n)`
-/

namespace A116176.P3174877377870585593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128803 n + A036290 (2 * n)

end

end A116176.P3174877377870585593

namespace A116176

/-- `A128803(n)+A036290(2*n)` -/
def P3174877377870585593.Spec : Prop :=
  ∀ n, P3174877377870585593.a n = A116176 n

end A116176

/-! ## A116176.P9422105953688766352

`2*A128788(n)-A128803(n)`
-/

namespace A116176.P9422105953688766352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A128788 n - A128803 n

end

end A116176.P9422105953688766352

namespace A116176

/-- `2*A128788(n)-A128803(n)` -/
def P9422105953688766352.Spec : Prop :=
  ∀ n, P9422105953688766352.a n = A116176 n

theorem P9422105953688766352.correct : P9422105953688766352.Spec := by
  intro n
  simp only [A116176, Nat.add_sub_cancel, A116176.P9422105953688766352.a, A116176.P13601903676072816143.a, A128788, A128788.P5167137184545089802.a, A128803, A128803.P4280394860633928794.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A116176

/-! ## A116176.P9140362455654640450

`-(A001489(n)*A053540(n+1))`
-/

namespace A116176.P9140362455654640450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A001489 n * A053540 (n + 1))

end

end A116176.P9140362455654640450

namespace A116176

/-- `-(A001489(n)*A053540(n+1))` -/
def P9140362455654640450.Spec : Prop :=
  ∀ n, P9140362455654640450.a n = A116176 n

theorem P9140362455654640450.correct : P9140362455654640450.Spec := by
  intro n
  simp only [A116176, Nat.add_sub_cancel, A116176.P9140362455654640450.a, A116176.P13601903676072816143.a, A001489, A001489.P15233530513763566776.a, A053540, A053540.P12933739383401930550.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A116176

/-! ## A116176.P2513932067051465108

`A005843(n)*A053540(n+1)/2`
-/

namespace A116176.P2513932067051465108
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005843 n * A053540 (n + 1) : ℚ) / 2

end

end A116176.P2513932067051465108

namespace A116176

/-- `A005843(n)*A053540(n+1)/2` -/
def P2513932067051465108.Spec : Prop :=
  ∀ n, P2513932067051465108.a n = (A116176 n : ℚ)

theorem P2513932067051465108.correct : P2513932067051465108.Spec := by
  intro n
  simp only [A116176, Nat.add_sub_cancel, A116176.P2513932067051465108.a, A116176.P13601903676072816143.a, A005843, A005843.P3167286115683555970.a, A053540, A053540.P12933739383401930550.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A116176

/-! ## A116176.P7458882095236053793

`ceil((n+1)*sqrt(A000290(n))*A001019(n))`
-/

namespace A116176.P7458882095236053793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℝ) * (Real.sqrt (A000290 n : ℝ) * (A001019 n : ℝ))⌉

end

end A116176.P7458882095236053793

namespace A116176

/-- `ceil((n+1)*sqrt(A000290(n))*A001019(n))` -/
def P7458882095236053793.Spec : Prop :=
  ∀ n, P7458882095236053793.a n = A116176 n

end A116176

/-! ## A116176.P4040379760093925843

`A128803(n+1)/9`
-/

namespace A116176.P4040379760093925843
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A128803 (n + 1) : ℚ) / 9

end

end A116176.P4040379760093925843

namespace A116176

/-- `A128803(n+1)/9` -/
def P4040379760093925843.Spec : Prop :=
  ∀ n, P4040379760093925843.a n = (A116176 n : ℚ)

theorem P4040379760093925843.correct : P4040379760093925843.Spec := by
  intro n
  simp only [A116176, Nat.add_sub_cancel, A116176.P4040379760093925843.a, A116176.P13601903676072816143.a, A128803, A128803.P4280394860633928794.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A116176

/-!
# A116177: Numbers k such that k concatenated with k+3 gives the product of two numbers which differ by 2.

The programs for A116177, there is no canonical definition to state claims against.
-/

/-! ## A116177.P15254442185849123822

`A115437(n+2)`
-/

namespace A116177.P15254442185849123822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115437 (n + 2)

end

end A116177.P15254442185849123822

/-! ## A116177.P3534755967683043759

`record[A115437(Δ[A004134(n)])]`
-/

namespace A116177.P3534755967683043759
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004134 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115437 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A116177.P3534755967683043759

/-!
# A116178: Stewart's choral sequence: a(3n) = 0, a(3n-1) = 1, a(3n+1) = a(n).

The programs for A116178, the canonical program `A116178.P13045760707937250515` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A116178 has offset 0).

The definition of A116178 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A116178.P13045760707937250515

`a(2%(a(floor(n/3))+n%3+1))` with `a(0)=0, a(1)=0, a(2)=1`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A116178

/-- `a(2%(a(floor(n/3))+n%3+1))` -/
def P13045760707937250515.Spec : Prop :=
  ∀ n, (P13045760707937250515.a n : ℤ) = A116178 n

theorem P13045760707937250515.correct : P13045760707937250515.Spec := by
  intro n
  simp only [A116178]

end A116178

/-! ## A116178.P1838563917474481510

`char[A138671(n)]`
-/

namespace A116178.P1838563917474481510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138671 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A116178.P1838563917474481510

namespace A116178

/-- `char[A138671(n)]` -/
def P1838563917474481510.Spec : Prop :=
  ∀ n, (P1838563917474481510.a n : ℤ) = A116178 n

end A116178

/-! ## A116178.P8118087085633163827

`1-char[A138670(n)]`
-/

namespace A116178.P8118087085633163827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138670 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A116178.P8118087085633163827

namespace A116178

/-- `1-char[A138670(n)]` -/
def P8118087085633163827.Spec : Prop :=
  ∀ n, P8118087085633163827.a n = A116178 n

end A116178

/-! ## A116178.P11713570810400049016

`A131212(n+1)%2`
-/

namespace A116178.P11713570810400049016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A131212 (n + 1)) 2

end

end A116178.P11713570810400049016

namespace A116178

/-- `A131212(n+1)%2` -/
def P11713570810400049016.Spec : Prop :=
  ∀ n, P11713570810400049016.a n = A116178 n

end A116178

/-! ## A116178.P5539408919706348314

`A265389(n+1)%2`
-/

namespace A116178.P5539408919706348314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A265389 (n + 1)) 2

end

end A116178.P5539408919706348314

namespace A116178

/-- `A265389(n+1)%2` -/
def P5539408919706348314.Spec : Prop :=
  ∀ n, P5539408919706348314.a n = A116178 n

end A116178

/-! ## A116178.P15452691430601257983

`(1-A305490(n+1))²`
-/

namespace A116178.P15452691430601257983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A305490 (n + 1)) ^ 2

end

end A116178.P15452691430601257983

namespace A116178

/-- `(1-A305490(n+1))²` -/
def P15452691430601257983.Spec : Prop :=
  ∀ n, P15452691430601257983.a n = A116178 n

end A116178

/-! ## A116178.P17433558815584694456

`log2(gcd(2, A253887(n+1)))`
-/

namespace A116178.P17433558815584694456
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Int.gcd 2 (A253887 (n + 1)) : ℝ)

end

end A116178.P17433558815584694456

namespace A116178

/-- `log2(gcd(2, A253887(n+1)))` -/
def P17433558815584694456.Spec : Prop :=
  ∀ n, P17433558815584694456.a n = (A116178 n : ℝ)

end A116178

/-! ## A116178.P8665852793990680488

`(1-Δ[A005812(n)])/2`
-/

namespace A116178.P8665852793990680488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005812 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 - (f1 (n + 1) - f1 n) : ℚ) / 2

end

end A116178.P8665852793990680488

namespace A116178

/-- `(1-Δ[A005812(n)])/2` -/
def P8665852793990680488.Spec : Prop :=
  ∀ n, P8665852793990680488.a n = (A116178 n : ℚ)

end A116178

/-! ## A116178.P10587060662169862614

`char[A189637(n+1)-1]`
-/

namespace A116178.P10587060662169862614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189637 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A116178.P10587060662169862614

namespace A116178

/-- `char[A189637(n+1)-1]` -/
def P10587060662169862614.Spec : Prop :=
  ∀ n, (P10587060662169862614.a n : ℤ) = A116178 n

end A116178

/-! ## A116178.P17898437642921659657

`and(2, Δ[A060373(n)])/2`
-/

namespace A116178.P17898437642921659657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060373 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land 2 (f1 (n + 1) - f1 n) : ℚ) / 2

end

end A116178.P17898437642921659657

namespace A116178

/-- `and(2, Δ[A060373(n)])/2` -/
def P17898437642921659657.Spec : Prop :=
  ∀ n, P17898437642921659657.a n = (A116178 n : ℚ)

end A116178

/-! ## A116178.P15289495932049202611

`A373592(2*n+1)%2`
-/

namespace A116178.P15289495932049202611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A373592 (2 * n + 1)) 2

end

end A116178.P15289495932049202611

namespace A116178

/-- `A373592(2*n+1)%2` -/
def P15289495932049202611.Spec : Prop :=
  ∀ n, P15289495932049202611.a n = A116178 n

end A116178

/-! ## A116178.P8040064078263860467

`A060398(A286577(n+1))`
-/

namespace A116178.P8040064078263860467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060398 (A286577 (n + 1)).toNat

end

end A116178.P8040064078263860467

namespace A116178

/-- `A060398(A286577(n+1))` -/
def P8040064078263860467.Spec : Prop :=
  ∀ n, P8040064078263860467.a n = A116178 n

end A116178

/-! ## A116178.P13031212684110378559

`char[A066182(A189637(n+1))]`
-/

namespace A116178.P13031212684110378559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066182 (A189637 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A116178.P13031212684110378559

namespace A116178

/-- `char[A066182(A189637(n+1))]` -/
def P13031212684110378559.Spec : Prop :=
  ∀ n, (P13031212684110378559.a n : ℤ) = A116178 n

end A116178

/-! ## A116178.P21063541337949405

`and(A008349(n), A131212(n+1))`
-/

namespace A116178.P21063541337949405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A008349 n) (A131212 (n + 1))

end

end A116178.P21063541337949405

namespace A116178

/-- `and(A008349(n), A131212(n+1))` -/
def P21063541337949405.Spec : Prop :=
  ∀ n, P21063541337949405.a n = A116178 n

end A116178

/-! ## A116178.P12814755301625272832

`and(A008362(n), A131212(n+1))`
-/

namespace A116178.P12814755301625272832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A008362 n) (A131212 (n + 1))

end

end A116178.P12814755301625272832

namespace A116178

/-- `and(A008362(n), A131212(n+1))` -/
def P12814755301625272832.Spec : Prop :=
  ∀ n, P12814755301625272832.a n = A116178 n

end A116178

/-! ## A116178.P8727151522608141324

`and(A008417(n), A131212(n+1))`
-/

namespace A116178.P8727151522608141324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A008417 n) (A131212 (n + 1))

end

end A116178.P8727151522608141324

namespace A116178

/-- `and(A008417(n), A131212(n+1))` -/
def P8727151522608141324.Spec : Prop :=
  ∀ n, P8727151522608141324.a n = A116178 n

end A116178

/-! ## A116178.P11850356352763945035

`and(A008514(n), A131212(n+1))`
-/

namespace A116178.P11850356352763945035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A008514 n) (A131212 (n + 1))

end

end A116178.P11850356352763945035

namespace A116178

/-- `and(A008514(n), A131212(n+1))` -/
def P11850356352763945035.Spec : Prop :=
  ∀ n, P11850356352763945035.a n = A116178 n

end A116178

/-! ## A116178.P3726378298745493996

`and(A011655(n), A131212(n+1))`
-/

namespace A116178.P3726378298745493996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A011655 n) (A131212 (n + 1))

end

end A116178.P3726378298745493996

namespace A116178

/-- `and(A011655(n), A131212(n+1))` -/
def P3726378298745493996.Spec : Prop :=
  ∀ n, P3726378298745493996.a n = A116178 n

end A116178

/-! ## A116178.P2832827484735564096

`and(A014578(n), A131212(n+1))`
-/

namespace A116178.P2832827484735564096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A014578 n) (A131212 (n + 1))

end

end A116178.P2832827484735564096

namespace A116178

/-- `and(A014578(n), A131212(n+1))` -/
def P2832827484735564096.Spec : Prop :=
  ∀ n, P2832827484735564096.a n = A116178 n

end A116178

/-!
# A116179: Numbers k such that k concatenated with k+3 gives the product of two numbers which differ by 5.

The programs for A116179, there is no canonical definition to state claims against.
-/

/-! ## A116179.P1526835548879055706

`A116205(n*a(A000038(n)))` with `a(0)=1, a(1)=3`
-/

namespace A116179.P1526835548879055706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  A116205 ((n : ℤ) * a (A000038 n).toNat).toNat

end

end A116179.P1526835548879055706

/-! ## A116179.P1210214095997376528

`lcm(A116205(A028310(n)), A260196(n))`
-/

namespace A116179.P1210214095997376528
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A116205 (A028310 n).toNat) (A260196 n)

end

end A116179.P1210214095997376528

/-! ## A116179.P3256271698503557597

`A319998(A257691(n+1))+A116205(A028310(n))`
-/

namespace A116179.P3256271698503557597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319998 (A257691 (n + 1)).toNat + A116205 (A028310 n).toNat

end

end A116179.P3256271698503557597

/-! ## A116179.P8416126933335291580

`A116205(A028310(n))-(A260196(n)+1)*A007953(n)`
-/

namespace A116179.P8416126933335291580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116205 (A028310 n).toNat - (A260196 n + 1) * A007953 n

end

end A116179.P8416126933335291580

/-! ## A116179.P8951621660335497850

`A116205(A028310(n))-(A260196(n)+1)*A012866(n)`
-/

namespace A116179.P8951621660335497850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116205 (A028310 n).toNat - (A260196 n + 1) * A012866 n

end

end A116179.P8951621660335497850

/-!
# A116184: Numbers n such that 37^3 divides the numerator of generalized harmonic number H(36,n) = Sum[ 1/k^n, {k,1,36} ].

The programs for A116184, there is no canonical definition to state claims against.
-/

/-! ## A116184.P16975081813678149260

`A179874(A038115(n+1))`
-/

namespace A116184.P16975081813678149260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179874 (A038115 (n + 1)).toNat

end

end A116184.P16975081813678149260

/-! ## A116184.P6181466478306402143

`A327148(n)+∑[A040288(A041577(n))]`
-/

namespace A116184.P6181466478306402143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040288 (A041577 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327148 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A116184.P6181466478306402143

/-!
# A116185: Numbers k such that k concatenated with k+4 gives the product of two numbers which differ by 3.

The programs for A116185, there is no canonical definition to state claims against.
-/

/-! ## A116185.P7837132648100049464

`record[A116119(n+2)%A116250(n+2)]`
-/

namespace A116185.P7837132648100049464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A116119 (n + 2)) (A116250 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A116185.P7837132648100049464

/-! ## A116185.P11689377991971408891

`record[A116158(n+3)%A116289(n+3)]`
-/

namespace A116185.P11689377991971408891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A116158 (n + 3)) (A116289 (n + 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A116185.P11689377991971408891

/-! ## A116185.P6029889560520606386

`A116119(lt[A219282(n), A031200(n)])`
-/

namespace A116185.P6029889560520606386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219282 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031200 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116119 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A116185.P6029889560520606386

/-!
# A116188: Triangle T(n,k), 0<=k<=n : T(n,k)is smallest number such that T(n,k)>=T(n-1,k-1), T(n,k)>=T(n-1,k), T(n,k)and T(n-1,k-1)+T(n-1,k) have the same parity, T(0,0)=1 .

The programs for A116188, there is no canonical definition to state claims against.
-/

/-! ## A116188.P6842085454424969496

`A318274(n)-A083894(A156045(n))`
-/

namespace A116188.P6842085454424969496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318274 n - A083894 (A156045 n).toNat

end

end A116188.P6842085454424969496

/-! ## A116188.P18294008336983363724

`A347409(A022166(n)+1)`
-/

namespace A116188.P18294008336983363724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347409 (A022166 n + 1).toNat

end

end A116188.P18294008336983363724

/-! ## A116188.P3836890213235245456

`A000120(A141689(n+1)*A348041(n+1))`
-/

namespace A116188.P3836890213235245456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A141689 (n + 1) * A348041 (n + 1)).toNat

end

end A116188.P3836890213235245456

/-! ## A116188.P12868824853125017211

`A374758(A306326(n))`
-/

namespace A116188.P12868824853125017211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374758 (A306326 n).toNat

end

end A116188.P12868824853125017211

/-! ## A116188.P8782074873599946870

`A062756(A157153(n)-1)+1`
-/

namespace A116188.P8782074873599946870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062756 (A157153 n - 1).toNat + 1

end

end A116188.P8782074873599946870

/-!
# A116192: Triangle T(n,k), 0<=k<=n : T(n,k)is smallest number such that T(n,k)>T(n-1,k-1), T(n,k)>T(n-1,k), T(n,k)and T(n-1,k-1)+T(n-1,k) have the same parity, T(0,0)=1 .

The programs for A116192, there is no canonical definition to state claims against.
-/

/-! ## A116192.P11900972756309538861

`A047999(n)+∑[2*char[∑[n+1]]]`
-/

namespace A116192.P11900972756309538861
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (if ∃ j, f2 j = n then 1 else 0)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047999 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A116192.P11900972756309538861

/-! ## A116192.P17760949343671275922

`∑[2*char[∑[n]]]-1-A219463(n)`
-/

namespace A116192.P17760949343671275922
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (if ∃ j, f2 j = n then 1 else 0)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1 - A219463 n

end

end A116192.P17760949343671275922

/-! ## A116192.P5268435055084963034

`∑[2*char[∑[n+1]]]+A166282(n)²`
-/

namespace A116192.P5268435055084963034
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (if ∃ j, f2 j = n then 1 else 0)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + A166282 n ^ 2

end

end A116192.P5268435055084963034

/-! ## A116192.P11889133252648957193

`∑[2*char[∑[n+1]]]+A007318(n)%2`
-/

namespace A116192.P11889133252648957193
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (if ∃ j, f2 j = n then 1 else 0)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + Int.tmod (A007318 n) 2

end

end A116192.P11889133252648957193

/-! ## A116192.P7240965456780789744

`∑[2*char[∑[n+1]]]+A173740(n)%2`
-/

namespace A116192.P7240965456780789744
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (if ∃ j, f2 j = n then 1 else 0)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + Int.tmod (A173740 n) 2

end

end A116192.P7240965456780789744

/-! ## A116192.P5839622554893897410

`∑[2*char[∑[n+1]]]+A008292(n+1)%2`
-/

namespace A116192.P5839622554893897410
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (if ∃ j, f2 j = n then 1 else 0)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + Int.tmod (A008292 (n + 1)) 2

end

end A116192.P5839622554893897410

/-! ## A116192.P8058020027760125063

`A279891(n)+A047999(n)`
-/

namespace A116192.P8058020027760125063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279891 n + A047999 n

end

end A116192.P8058020027760125063

/-! ## A116192.P4769360535960943716

`xor(A131507(n), A219463(n))`
-/

namespace A116192.P4769360535960943716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A131507 n) (A219463 n)

end

end A116192.P4769360535960943716

/-! ## A116192.P17431465749762136243

`A279891(n)+and(1, A124929(n+1))`
-/

namespace A116192.P17431465749762136243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279891 n + Int.land 1 (A124929 (n + 1))

end

end A116192.P17431465749762136243

/-! ## A116192.P144940820804601307

`A131507(n)-and(1, A007318(n)+1)`
-/

namespace A116192.P144940820804601307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131507 n - Int.land 1 (A007318 n + 1)

end

end A116192.P144940820804601307

/-!
# A116193: Numbers k such that k concatenated with k+5 gives the product of two numbers which differ by 5.

The programs for A116193, there is no canonical definition to state claims against.
-/

/-! ## A116193.P4853697700897383060

`A116152(n+2)`
-/

namespace A116193.P4853697700897383060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116152 (n + 2)

end

end A116193.P4853697700897383060

/-! ## A116193.P12869923579710847497

`record[A116152(A080513(xor(1, n)))]`
-/

namespace A116193.P12869923579710847497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116152 (A080513 (Nat.xor 1 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A116193.P12869923579710847497

/-! ## A116193.P18045296550293457566

`record[A116152(or(n, A000038(n)))]`
-/

namespace A116193.P18045296550293457566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116152 (Int.lor (n : ℤ) (A000038 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A116193.P18045296550293457566

/-! ## A116193.P15193649936342661862

`record[A116152(xor(n, A000038(n)))]`
-/

namespace A116193.P15193649936342661862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116152 (Int.xor (n : ℤ) (A000038 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A116193.P15193649936342661862

/-! ## A116193.P1503705426779460832

`record[A116152(Δ[A061885(n)])]`
-/

namespace A116193.P1503705426779460832
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061885 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116152 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A116193.P1503705426779460832

/-!
# A116194: Numbers k such that k concatenated with k+5 gives the product of two numbers which differ by 6.

The programs for A116194, there is no canonical definition to state claims against.
-/

/-! ## A116194.P4272963640444585806

`∑{d}[A010790(n), A124223(#)]`
-/

namespace A116194.P4272963640444585806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010790 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A124223 d

end

end A116194.P4272963640444585806

/-!
# A116195: Numbers k such that k concatenated with k+5 gives the product of two numbers which differ by 7.

The programs for A116195, there is no canonical definition to state claims against.
-/

/-! ## A116195.P6357673487522780581

`A116140(n+2)`
-/

namespace A116195.P6357673487522780581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116140 (n + 2)

end

end A116195.P6357673487522780581

/-!
# A116199: a(n) = the number of positive divisors of n which are coprime to sigma(n) = A000203(n).

The programs for A116199, there is no canonical definition to state claims against.
-/

/-! ## A116199.P14336385318491948010

`A000005(or(A151620(n), A332883(n+1)))`
-/

namespace A116199.P14336385318491948010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Int.lor (A151620 n) (A332883 (n + 1))).toNat

end

end A116199.P14336385318491948010

/-! ## A116199.P17223402326002181160

`A000005(A332883(n+1))%record[A132947(n)]`
-/

namespace A116199.P17223402326002181160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132947 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000005 (A332883 (n + 1)).toNat) (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A116199.P17223402326002181160

/-! ## A116199.P4201103820646733214

`A000005(A332883(n+1)+n*A151620(n))`
-/

namespace A116199.P4201103820646733214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A332883 (n + 1) + (n : ℤ) * A151620 n).toNat

end

end A116199.P4201103820646733214

/-! ## A116199.P9228345999783224449

`A000005(A332883(n+1)%A298423(3*(n+1)))`
-/

namespace A116199.P9228345999783224449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Int.tmod (A332883 (n + 1)) (A298423 (3 * (n + 1)))).toNat

end

end A116199.P9228345999783224449

