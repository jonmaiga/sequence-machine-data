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
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
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
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
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
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
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
import Seq.Opaque.C024
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A298801: Fourth column of triangular array in A296339.

The programs for A298801, there is no canonical definition to state claims against.
-/

/-! ## A298801.P6388583568996064487

`A296339(∑[n+3]+6)`
-/

namespace A298801.P6388583568996064487
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296339 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A298801.P6388583568996064487

/-! ## A298801.P15587367355805120383

`or(char[1], A296339(A167614(n+2)))`
-/

namespace A298801.P15587367355805120383
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A296339 (A167614 (n + 2)).toNat)

end

end A298801.P15587367355805120383

/-! ## A298801.P110768106958070365

`A296339(A167614(2-char[1]+n))-char[1]`
-/

namespace A298801.P110768106958070365
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296339 (A167614 (2 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + (n : ℤ)).toNat).toNat - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A298801.P110768106958070365

/-! ## A298801.P11262929296034206584

`A296339(A167614(n+2))%A167499(n)`
-/

namespace A298801.P11262929296034206584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A296339 (A167614 (n + 2)).toNat) (A167499 n)

end

end A298801.P11262929296034206584

/-! ## A298801.P6611813946205439987

`∑{d}[A296339(A052905(n)+8), A000010(#)]`
-/

namespace A298801.P6611813946205439987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296339 (A052905 n + 8).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A298801.P6611813946205439987

/-! ## A298801.P15937453865824561851

`char[A028242(n)]*A296339(A052905(n)+8)`
-/

namespace A298801.P15937453865824561851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A296339 (A052905 n + 8).toNat

end

end A298801.P15937453865824561851

/-! ## A298801.P12229743656107501984

`A296339(A052905(n)+8)+A000007(n+1)`
-/

namespace A298801.P12229743656107501984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296339 (A052905 n + 8).toNat + A000007 (n + 1)

end

end A298801.P12229743656107501984

/-! ## A298801.P12794259545692876098

`A007318(C(2, n))*A296339(A167614(n+2))`
-/

namespace A298801.P12794259545692876098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A296339 (A167614 (n + 2)).toNat

end

end A298801.P12794259545692876098

/-! ## A298801.P15716073522590934558

`A296339(A052905(n)+8)%A000041(n+6)`
-/

namespace A298801.P15716073522590934558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A296339 (A052905 n + 8).toNat) (A000041 (n + 6))

end

end A298801.P15716073522590934558

/-! ## A298801.P5102532810964410347

`A007318(C(2, n))*A296339(A052905(n)+8)`
-/

namespace A298801.P5102532810964410347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A296339 (A052905 n + 8).toNat

end

end A298801.P5102532810964410347

/-! ## A298801.P4610798927254808395

`A014963(6*(n+1))*A296339(A052905(n)+8)`
-/

namespace A298801.P4610798927254808395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (6 * (n + 1)) * A296339 (A052905 n + 8).toNat

end

end A298801.P4610798927254808395

/-! ## A298801.P2821720723596083938

`A296339(A052905(n)+8)+A008683(16*(n+1))`
-/

namespace A298801.P2821720723596083938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296339 (A052905 n + 8).toNat + A008683 (16 * (n + 1))

end

end A298801.P2821720723596083938

/-! ## A298801.P12047979082705737313

`A007318(val(n+1, 7))*A296339(A167614(n+2))`
-/

namespace A298801.P12047979082705737313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.valuation (n + 1) 7) * A296339 (A167614 (n + 2)).toNat

end

end A298801.P12047979082705737313

/-! ## A298801.P15630756892737901988

`A007318(and(2, n-3))*A296339(A052905(n)+8)`
-/

namespace A298801.P15630756892737901988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Int.land 2 ((n : ℤ) - 3)).toNat * A296339 (A052905 n + 8).toNat

end

end A298801.P15630756892737901988

/-! ## A298801.P11628723906048833819

`A296339(A167614(n+2))/A008683(n+1)²!`
-/

namespace A298801.P11628723906048833819
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A296339 (A167614 (n + 2)).toNat : ℚ) / (Nat.factorial (A008683 (n + 1) ^ 2).toNat : ℚ)

end

end A298801.P11628723906048833819

/-! ## A298801.P17241411524720992440

`A001222(A002313(n+1))*A296339(A052905(n)+8)`
-/

namespace A298801.P17241411524720992440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A002313 (n + 1)).toNat * A296339 (A052905 n + 8).toNat

end

end A298801.P17241411524720992440

/-!
# A298802: Growth series for group with presentation < S, T : S^4 = T^4 = (S*T)^4 = 1 >.

The programs for A298802, the canonical program `A298802.P16857208185524282036` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A298802 has offset 0).

The definition of A298802 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A298802.P16857208185524282036

`2*a(n-1)+2*a(n-3)-a(n-4)` with `a(0)=1, a(1)=4, a(2)=10, a(3)=24, a(4)=56`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A298802

/-- `2*a(n-1)+2*a(n-3)-a(n-4)` -/
def P16857208185524282036.Spec : Prop :=
  ∀ n, P16857208185524282036.a n = A298802 n

theorem P16857208185524282036.correct : P16857208185524282036.Spec := by
  intro n
  simp only [A298802]

end A298802

/-! ## A298802.P5407280678544310336

`A248227(∑[A205490(n)+A091980(2*n+1)])`
-/

namespace A298802.P5407280678544310336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205490 n + A091980 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248227 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A298802.P5407280678544310336

namespace A298802

/-- `A248227(∑[A205490(n)+A091980(2*n+1)])` -/
def P5407280678544310336.Spec : Prop :=
  ∀ n, P5407280678544310336.a n = A298802 n

end A298802

/-! ## A298802.P5602878843032812974

`∑[∑[A256389(A058766(n))]]`
-/

namespace A298802.P5602878843032812974
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256389 (A058766 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A298802.P5602878843032812974

namespace A298802

/-- `∑[∑[A256389(A058766(n))]]` -/
def P5602878843032812974.Spec : Prop :=
  ∀ n, P5602878843032812974.a n = A298802 n

end A298802

/-!
# A298803: Growth series for group with presentation < S, T : S^3 = T^3 = (S*T)^4 = 1 >.

The programs for A298803, the canonical program `A298803.P9250096619604968038` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A298803 has offset 0).

The definition of A298803 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A298803.P9250096619604968038

`a(n-2)+3*a(n-3)+a(n-4)-a(n-6)` with `a(0)=1, a(1)=4, a(2)=8, a(3)=16, a(4)=30, a(5)=50, a(6)=88, a(7)=150`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A298803

/-- `a(n-2)+3*a(n-3)+a(n-4)-a(n-6)` -/
def P9250096619604968038.Spec : Prop :=
  ∀ n, P9250096619604968038.a n = A298803 n

theorem P9250096619604968038.correct : P9250096619604968038.Spec := by
  intro n
  simp only [A298803]

end A298803

/-! ## A298803.P11751649908080205519

`A298810(2*n)`
-/

namespace A298803.P11751649908080205519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298810 (2 * n)

end

end A298803.P11751649908080205519

namespace A298803

/-- `A298810(2*n)` -/
def P11751649908080205519.Spec : Prop :=
  ∀ n, P11751649908080205519.a n = A298803 n

end A298803

/-! ## A298803.P11876714936402006433

`record[A298810(and(n, n+1))]`
-/

namespace A298803.P11876714936402006433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298810 (Nat.land n (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A298803.P11876714936402006433

namespace A298803

/-- `record[A298810(and(n, n+1))]` -/
def P11876714936402006433.Spec : Prop :=
  ∀ n, P11876714936402006433.a n = A298803 n

end A298803

/-! ## A298803.P5792659999338608605

`record[A298810(n-A260738(n+1))]`
-/

namespace A298803.P5792659999338608605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298810 ((n : ℤ) - A260738 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A298803.P5792659999338608605

namespace A298803

/-- `record[A298810(n-A260738(n+1))]` -/
def P5792659999338608605.Spec : Prop :=
  ∀ n, P5792659999338608605.a n = A298803 n

end A298803

/-! ## A298803.P13401513924586672129

`record[A298810(A000096(n)%(n+1))]`
-/

namespace A298803.P13401513924586672129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298810 (Int.tmod (A000096 n) (n + 1 : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A298803.P13401513924586672129

namespace A298803

/-- `record[A298810(A000096(n)%(n+1))]` -/
def P13401513924586672129.Spec : Prop :=
  ∀ n, P13401513924586672129.a n = A298803 n

end A298803

/-! ## A298803.P10207384289731690818

`record[A298810(n%A006370(n+1))]`
-/

namespace A298803.P10207384289731690818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298810 (Int.tmod (n : ℤ) (A006370 (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A298803.P10207384289731690818

namespace A298803

/-- `record[A298810(n%A006370(n+1))]` -/
def P10207384289731690818.Spec : Prop :=
  ∀ n, P10207384289731690818.a n = A298803 n

end A298803

/-! ## A298803.P17119582808938903177

`A298810(n+n)%A298810(n+1)²`
-/

namespace A298803.P17119582808938903177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A298810 (n + n)) (A298810 (n + 1) ^ 2)

end

end A298803.P17119582808938903177

namespace A298803

/-- `A298810(n+n)%A298810(n+1)²` -/
def P17119582808938903177.Spec : Prop :=
  ∀ n, P17119582808938903177.a n = A298803 n

end A298803

/-!
# A298804: Triangle T(n,k) (1 <= k <= n) read by rows: A046936 with rows reversed and offset changed to 1.

The programs for A298804, there is no canonical definition to state claims against.
-/

/-! ## A298804.P2233411584640018117

`A046936(∑[2*n]%comp[∑[n]])`
-/

namespace A298804.P2233411584640018117
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046936 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A298804.P2233411584640018117

/-! ## A298804.P13853140507766660501

`A046936(∑[char[∑[n]]]²-(n+1))`
-/

namespace A298804.P13853140507766660501
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046936 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - (n + 1))

end

end A298804.P13853140507766660501

/-! ## A298804.P17267326933768821286

`A046936(A061579(n))%529`
-/

namespace A298804.P17267326933768821286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A046936 (A061579 n).toNat) 529

end

end A298804.P17267326933768821286

/-! ## A298804.P5638967346768861354

`A046937(A061579(n))-A123346(n)`
-/

namespace A298804.P5638967346768861354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046937 (A061579 n).toNat - A123346 n

end

end A298804.P5638967346768861354

/-! ## A298804.P12720359516371516981

`A046936(A061579(n))*A057427(n)`
-/

namespace A298804.P12720359516371516981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046936 (A061579 n).toNat * A057427 n

end

end A298804.P12720359516371516981

/-!
# A298805: Growth series for group with presentation < S, T : S^2 = T^3 = (S*T)^7 = 1 >.

The programs for A298805, there is no canonical definition to state claims against.
-/

/-! ## A298805.P11521560977286457221

`record[A053158(A131879(n+1))]`
-/

namespace A298805.P11521560977286457221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053158 (A131879 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A298805.P11521560977286457221

/-! ## A298805.P14007996003959376132

`record[A275120(A007504(n)+n+3)]`
-/

namespace A298805.P14007996003959376132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275120 (A007504 n + (n + 3 : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A298805.P14007996003959376132

/-! ## A298805.P13249330787590604462

`record[A092989(n+2)-A000010(n+1)]`
-/

namespace A298805.P13249330787590604462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092989 (n + 2) - A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A298805.P13249330787590604462

/-! ## A298805.P8635648749570424688

`∑[gcd(A048597(n+1), A048866(3*n+2))]`
-/

namespace A298805.P8635648749570424688
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A048597 (n + 1)) (A048866 (3 * n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A298805.P8635648749570424688

/-! ## A298805.P9503608172888468275

`record[and(A087007(n+1), A194100(3*n+1))]`
-/

namespace A298805.P9503608172888468275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A087007 (n + 1)) (A194100 (3 * n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A298805.P9503608172888468275

/-!
# A298806: Growth series for group with presentation < S, T : S^3 = T^6 = (S*T)^6 = 1 >.

The programs for A298806, there is no canonical definition to state claims against.
-/

/-! ## A298806.P3347576237750409298

`A317546(n+1)+A055086(A185298(n))`
-/

namespace A298806.P3347576237750409298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317546 (n + 1) + A055086 (A185298 n).toNat

end

end A298806.P3347576237750409298

/-! ## A298806.P12431186457963656595

`A193259(∑[A034691(n)])`
-/

namespace A298806.P12431186457963656595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034691 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193259 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A298806.P12431186457963656595

/-!
# A298807: Growth series for group with presentation < S, T : S^3 = T^3 = (S*T)^6 = 1 >.

The programs for A298807, there is no canonical definition to state claims against.
-/

/-! ## A298807.P7595276830622738111

`A299253(2*n)`
-/

namespace A298807.P7595276830622738111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299253 (2 * n)

end

end A298807.P7595276830622738111

/-! ## A298807.P7875906436475223668

`record[A299253(and(n, n+1))]`
-/

namespace A298807.P7875906436475223668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299253 (Nat.land n (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A298807.P7875906436475223668

/-! ## A298807.P927797304576882740

`xor(1, xor(1, A299253(n+n)))`
-/

namespace A298807.P927797304576882740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (Int.xor 1 (A299253 (n + n)))

end

end A298807.P927797304576882740

/-! ## A298807.P16429285082175855531

`record[A299253(A237420(n))]`
-/

namespace A298807.P16429285082175855531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299253 (A237420 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A298807.P16429285082175855531

/-! ## A298807.P8068278506644657953

`A299253(n+n)^A057521(A096916(n+1))`
-/

namespace A298807.P8068278506644657953
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A299253 (n + n) : ℚ) ^ (A057521 (A096916 (n + 1)).toNat : ℤ)

end

end A298807.P8068278506644657953

/-! ## A298807.P15678698480654323283

`A299253(n+n)^A004736(∑[n+1])`
-/

namespace A298807.P15678698480654323283
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A299253 (n + n) : ℚ) ^ (A004736 (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ)

end

end A298807.P15678698480654323283

/-!
# A298810: Growth series for group with presentation < S, T : S^2 = T^3 = (S*T)^8 = 1 >.

The programs for A298810, there is no canonical definition to state claims against.
-/

/-! ## A298810.P10404025946648407584

`A152947(n+1)+A010872(A136305(n))`
-/

namespace A298810.P10404025946648407584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152947 (n + 1) + A010872 (A136305 n).toNat

end

end A298810.P10404025946648407584

/-! ## A298810.P17125112056833597854

`∑[A253570(n+3)+A001221(n+3)]-A022559(n)`
-/

namespace A298810.P17125112056833597854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253570 (n + 3) + A001221 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A022559 n

end

end A298810.P17125112056833597854

/-!
# A298811: Growth series for group with presentation < S, T : S^2 = T^3 = (S*T)^9 = 1 >.

The programs for A298811, there is no canonical definition to state claims against.
-/

/-! ## A298811.P6618848238997359439

`Δ[A316355(∑[or(1, 3*(2^n-1))-n])]`
-/

namespace A298811.P6618848238997359439
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (3 * ((2 ^ n : ℤ) - 1)) - (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316355 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A298811.P6618848238997359439

/-! ## A298811.P3121543241603474985

`Δ[A167991(A183156(n))]`
-/

namespace A298811.P3121543241603474985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167991 (A183156 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A298811.P3121543241603474985

/-! ## A298811.P6322507882504830181

`Δ[A004280(A000196(6*2^n-5))]`
-/

namespace A298811.P6322507882504830181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004280 (A000196 (6 * 2 ^ n - 5)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A298811.P6322507882504830181

/-! ## A298811.P7040762850791812867

`Δ[A161205(A296515(C(2, n+1)+2^(n+1)))]`
-/

namespace A298811.P7040762850791812867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161205 (A296515 (Nat.choose 2 (n + 1) + 2 ^ (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A298811.P7040762850791812867

/-!
# A298812: Growth series for group with presentation < S, T : S^2 = T^3 = (S*T)^10 = 1 >.

The programs for A298812, there is no canonical definition to state claims against.
-/

/-! ## A298812.P9698985905860972357

`A089867(2*a(n-2))` with `a(0)=1, a(1)=3, a(2)=4`
-/

namespace A298812.P9698985905860972357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 4] fun n a =>
  A089867 (2 * a (n - 2)).toNat

end

end A298812.P9698985905860972357

/-! ## A298812.P6958604070507657513

`A089869(2*a(n-2))` with `a(0)=1, a(1)=3, a(2)=4`
-/

namespace A298812.P6958604070507657513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 4] fun n a =>
  A089869 (2 * a (n - 2)).toNat

end

end A298812.P6958604070507657513

/-! ## A298812.P4077761247738243290

`A089867(A063759(n))`
-/

namespace A298812.P4077761247738243290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089867 (A063759 n).toNat

end

end A298812.P4077761247738243290

/-! ## A298812.P2882093704341456466

`A089867(A299252(n))`
-/

namespace A298812.P2882093704341456466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089867 (A299252 n).toNat

end

end A298812.P2882093704341456466

/-! ## A298812.P17667707043612117455

`A089867(A299253(n))`
-/

namespace A298812.P17667707043612117455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089867 (A299253 n).toNat

end

end A298812.P17667707043612117455

/-!
# A298822: Number of minimum edge covers in the n-dipyramidal graph.

The programs for A298822, the canonical program `A298822.P17009401905131011405` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A298822 has offset 1).

The definition of A298822 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A298822.P17009401905131011405

`4*a(n-2)-6*a(n-4)+4*a(n-6)-a(n-8)` with `a(0)=1, a(1)=2, a(2)=21, a(3)=8, a(4)=85, a(5)=18, a(6)=217, a(7)=32`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A298822

/-- `4*a(n-2)-6*a(n-4)+4*a(n-6)-a(n-8)` -/
def P17009401905131011405.Spec : Prop :=
  ∀ n, P17009401905131011405.a n = A298822 (n + 1)

theorem P17009401905131011405.correct : P17009401905131011405.Spec := by
  intro n
  simp only [A298822, Nat.add_sub_cancel]

end A298822

/-! ## A298822.P2484562352642893114

`(n+1)*((n+1)²+3*(n+1)-1-(-1)^(n+1)*((n+1)²+n+1-1))/4`
-/

namespace A298822.P2484562352642893114
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) * (((n + 1) ^ 2 + 3 * (n + 1) : ℤ) - 1 - (-1) ^ (n + 1) * (((n + 1) ^ 2 + (n + 1) : ℤ) - 1)) : ℚ) / 4

end

end A298822.P2484562352642893114

namespace A298822

/-- `(n+1)*((n+1)²+3*(n+1)-1-(-1)^(n+1)*((n+1)²+n+1-1))/4` -/
def P2484562352642893114.Spec : Prop :=
  ∀ n, P2484562352642893114.a n = (A298822 (n + 1) : ℚ)

theorem P2484562352642893114.correct : P2484562352642893114.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 =>
      simp [A298822, Nat.add_sub_cancel, A298822.P2484562352642893114.a, A298822.P17009401905131011405.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 8 =>
      have h2 := ih (m + 6) (by omega)
      have h4 := ih (m + 4) (by omega)
      have h6 := ih (m + 2) (by omega)
      have h8 := ih m (by omega)
      simp only [A298822, Nat.add_sub_cancel, A298822.P2484562352642893114.a, A298822.P17009401905131011405.a, SequenceMachineLib.memo_apply] at h2 h4 h6 h8 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 8 - 2 = m + 6 by omega, show m + 8 - 4 = m + 4 by omega, show m + 8 - 6 = m + 2 by omega, show m + 8 - 8 = m by omega, show m + 6 < m + 8 by omega, show m + 4 < m + 8 by omega, show m + 2 < m + 8 by omega, show m < m + 8 by omega, ↓reduceIte]
      push_cast at h2 h4 h6 h8 ⊢
      rw [← h2, ← h4, ← h6, ← h8]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A298822

/-! ## A298822.P1542559896924187305

`lcm(round(or(1, n)²/2)+n, n+1)`
-/

namespace A298822.P1542559896924187305
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (SequenceMachineLib.roundAway ((Nat.lor 1 n ^ 2 : ℚ) / 2) + (n : ℤ)) (n + 1 : ℤ)

end

end A298822.P1542559896924187305

namespace A298822

/-- `lcm(round(or(1, n)²/2)+n, n+1)` -/
def P1542559896924187305.Spec : Prop :=
  ∀ n, (P1542559896924187305.a n : ℤ) = A298822 (n + 1)

end A298822

/-! ## A298822.P9471706313254451750

`lcm(n+1, A213037(n+1))`
-/

namespace A298822.P9471706313254451750
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 1 : ℤ) (A213037 (n + 1))

end

end A298822.P9471706313254451750

namespace A298822

/-- `lcm(n+1, A213037(n+1))` -/
def P9471706313254451750.Spec : Prop :=
  ∀ n, (P9471706313254451750.a n : ℤ) = A298822 (n + 1)

end A298822

/-! ## A298822.P14606664161259092685

`A093178(n+1)*A213037(n+1)`
-/

namespace A298822.P14606664161259092685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 (n + 1) * A213037 (n + 1)

end

end A298822.P14606664161259092685

namespace A298822

/-- `A093178(n+1)*A213037(n+1)` -/
def P14606664161259092685.Spec : Prop :=
  ∀ n, P14606664161259092685.a n = A298822 (n + 1)

end A298822

/-! ## A298822.P7573815006249426571

`(A001844(A004526(n))+n)*A093178(n+1)`
-/

namespace A298822.P7573815006249426571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001844 (A004526 n).toNat + (n : ℤ)) * A093178 (n + 1)

end

end A298822.P7573815006249426571

namespace A298822

/-- `(A001844(A004526(n))+n)*A093178(n+1)` -/
def P7573815006249426571.Spec : Prop :=
  ∀ n, P7573815006249426571.a n = A298822 (n + 1)

end A298822

/-! ## A298822.P17491241104853595739

`∑[A093178(A042948(n+1))]*A093178(n+1)`
-/

namespace A298822.P17491241104853595739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 (A042948 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A093178 (n + 1)

end

end A298822.P17491241104853595739

namespace A298822

/-- `∑[A093178(A042948(n+1))]*A093178(n+1)` -/
def P17491241104853595739.Spec : Prop :=
  ∀ n, P17491241104853595739.a n = A298822 (n + 1)

end A298822

/-! ## A298822.P2040723252152353514

`∑[A093178(A114752(n+1))]*A093178(n+1)`
-/

namespace A298822.P2040723252152353514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 (A114752 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A093178 (n + 1)

end

end A298822.P2040723252152353514

namespace A298822

/-- `∑[A093178(A114752(n+1))]*A093178(n+1)` -/
def P2040723252152353514.Spec : Prop :=
  ∀ n, P2040723252152353514.a n = A298822 (n + 1)

end A298822

/-! ## A298822.P13617654907881485244

`(n+1)*(A110654(n)+A000217(A193356(n+1)))`
-/

namespace A298822.P13617654907881485244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A110654 n + A000217 (A193356 (n + 1)).toNat)

end

end A298822.P13617654907881485244

namespace A298822

/-- `(n+1)*(A110654(n)+A000217(A193356(n+1)))` -/
def P13617654907881485244.Spec : Prop :=
  ∀ n, P13617654907881485244.a n = A298822 (n + 1)

end A298822

/-! ## A298822.P7254504560880715139

`Δ[A135276(n)*A213038(n)]`
-/

namespace A298822.P7254504560880715139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135276 n * A213038 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A298822.P7254504560880715139

namespace A298822

/-- `Δ[A135276(n)*A213038(n)]` -/
def P7254504560880715139.Spec : Prop :=
  ∀ n, P7254504560880715139.a n = A298822 (n + 1)

end A298822

/-! ## A298822.P5258008087857417703

`Δ[A134449(n+1)-A319390(n)]`
-/

namespace A298822.P5258008087857417703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134449 (n + 1) - A319390 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A298822.P5258008087857417703

namespace A298822

/-- `Δ[A134449(n+1)-A319390(n)]` -/
def P5258008087857417703.Spec : Prop :=
  ∀ n, P5258008087857417703.a n = A298822 (n + 1)

end A298822

/-! ## A298822.P1490887682668279965

`lcm(∑[A266072(n+1)], A141310(n))`
-/

namespace A298822.P1490887682668279965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266072 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (∑ j ∈ Finset.range (n + 1), f1 j) (A141310 n)

end

end A298822.P1490887682668279965

namespace A298822

/-- `lcm(∑[A266072(n+1)], A141310(n))` -/
def P1490887682668279965.Spec : Prop :=
  ∀ n, (P1490887682668279965.a n : ℤ) = A298822 (n + 1)

end A298822

/-! ## A298822.P15877550035721788383

`(A130404(n+2)-A130404(n+1))*A213037(n+1)`
-/

namespace A298822.P15877550035721788383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A130404 (n + 2) - A130404 (n + 1)) * A213037 (n + 1)

end

end A298822.P15877550035721788383

namespace A298822

/-- `(A130404(n+2)-A130404(n+1))*A213037(n+1)` -/
def P15877550035721788383.Spec : Prop :=
  ∀ n, P15877550035721788383.a n = A298822 (n + 1)

end A298822

/-!
# A298823: Number of minimal total dominating sets in the n-dipyramidal graph.

The programs for A298823, the canonical program `A298823.P17623720946952442995` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A298823 has offset 1).

The definition of A298823 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 818 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A298823.P12251332118116223439

`A302658(n+2)+1+n`
-/

namespace A298823.P12251332118116223439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302658 (n + 2) + 1 + (n : ℤ)

end

end A298823.P12251332118116223439

namespace A298823

/-- `A302658(n+2)+1+n` -/
def P12251332118116223439.Spec : Prop :=
  ∀ n, P12251332118116223439.a n = A298823 (n + 1)

end A298823

/-! ## A298823.P17623720946952442995

`A300738(n+1)+2*(n+1)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A298823

/-- `A300738(n+1)+2*(n+1)` -/
def P17623720946952442995.Spec : Prop :=
  ∀ n, P17623720946952442995.a n = A298823 (n + 1)

theorem P17623720946952442995.correct : P17623720946952442995.Spec := by
  intro n
  simp only [A298823, Nat.add_sub_cancel]

end A298823

/-! ## A298823.P3898162693433324191

`n+1+A300738(n+1)+A193231(A193231(n+1))`
-/

namespace A298823.P3898162693433324191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + (A300738 (n + 1) + A193231 (A193231 (n + 1)).toNat)

end

end A298823.P3898162693433324191

namespace A298823

/-- `n+1+A300738(n+1)+A193231(A193231(n+1))` -/
def P3898162693433324191.Spec : Prop :=
  ∀ n, P3898162693433324191.a n = A298823 (n + 1)

end A298823

/-!
# A298824: Triangle read by rows. The transpose of the upper triangular part of the square matrix A298674.

The programs for A298824, there is no canonical definition to state claims against.
-/

/-! ## A298824.P1726460796188680650

`A298674(A245300(n)+A004736(n+1))`
-/

namespace A298824.P1726460796188680650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298674 (A245300 n + A004736 (n + 1)).toNat

end

end A298824.P1726460796188680650

/-!
# A298825: Row sums of A298824.

The programs for A298825, the canonical program `A298825.P17445611569160264652` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A298825 has offset 1).

The definition of A298825 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2500 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A298825.P17445611569160264652

`(n+1)*A298826(n+1)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A298825

/-- `(n+1)*A298826(n+1)` -/
def P17445611569160264652.Spec : Prop :=
  ∀ n, P17445611569160264652.a n = A298825 (n + 1)

theorem P17445611569160264652.correct : P17445611569160264652.Spec := by
  intro n
  simp only [A298825, Nat.add_sub_cancel]

end A298825

/-! ## A298825.P5635503052188880854

`(n+1)*∑{d}[n+1, A000005(#)*A306653((n+1)/#)]`
-/

namespace A298825.P5635503052188880854
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∑ d ∈ Nat.divisors (f1 n), A000005 d * A306653 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat)

end

end A298825.P5635503052188880854

namespace A298825

/-- `(n+1)*∑{d}[n+1, A000005(#)*A306653((n+1)/#)]` -/
def P5635503052188880854.Spec : Prop :=
  ∀ n, P5635503052188880854.a n = A298825 (n + 1)

end A298825

/-! ## A298825.P14124954818315838783

`A298826(A308217(2*n))*A308217(2*n)`
-/

namespace A298825.P14124954818315838783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298826 (A308217 (2 * n)).toNat * A308217 (2 * n)

end

end A298825.P14124954818315838783

namespace A298825

/-- `A298826(A308217(2*n))*A308217(2*n)` -/
def P14124954818315838783.Spec : Prop :=
  ∀ n, P14124954818315838783.a n = A298825 (n + 1)

end A298825

/-!
# A298826: a(n) = A298825(n)/n.

The programs for A298826, the canonical program `A298826.P1322318025094889225` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A298826 has offset 1).

The definition of A298826 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2500 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A298826.P4631523949073290701

`A298825(n+1)/(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A298826.P4631523949073290701
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A298825 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A298826.P4631523949073290701

namespace A298826

/-- `A298825(n+1)/(n+1)` -/
def P4631523949073290701.Spec : Prop :=
  ∀ n, P4631523949073290701.a n = (A298826 (n + 1) : ℚ)

end A298826

/-! ## A298826.P1322318025094889225

`∑{d}[n+1, A076479(#)*A140670((n+1)/#)]`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A298826

/-- `∑{d}[n+1, A076479(#)*A140670((n+1)/#)]` -/
def P1322318025094889225.Spec : Prop :=
  ∀ n, P1322318025094889225.a n = A298826 (n + 1)

theorem P1322318025094889225.correct : P1322318025094889225.Spec := by
  intro n
  simp only [A298826, Nat.add_sub_cancel]

end A298826

/-! ## A298826.P14723465860829538653

`∑{d}[n+1, A000005(#)*A306653((n+1)/#)]`
-/

namespace A298826.P14723465860829538653
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000005 d * A306653 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A298826.P14723465860829538653

namespace A298826

/-- `∑{d}[n+1, A000005(#)*A306653((n+1)/#)]` -/
def P14723465860829538653.Spec : Prop :=
  ∀ n, P14723465860829538653.a n = A298826 (n + 1)

end A298826

/-! ## A298826.P10862276342669032826

`A008836(A306652(n+1))*A361430(n+1)`
-/

namespace A298826.P10862276342669032826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (A306652 (n + 1)).toNat * A361430 (n + 1)

end

end A298826.P10862276342669032826

namespace A298826

/-- `A008836(A306652(n+1))*A361430(n+1)` -/
def P10862276342669032826.Spec : Prop :=
  ∀ n, P10862276342669032826.a n = A298826 (n + 1)

end A298826

/-! ## A298826.P6486511322402742674

`A298825(n+1)%A233583(n+1)`
-/

namespace A298826.P6486511322402742674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A298825 (n + 1)) (A233583 (n + 1))

end

end A298826.P6486511322402742674

namespace A298826

/-- `A298825(n+1)%A233583(n+1)` -/
def P6486511322402742674.Spec : Prop :=
  ∀ n, P6486511322402742674.a n = A298826 (n + 1)

end A298826

/-!
# A298827: a(n) is the smallest positive integer k such that 3^n+2 divides 3^(n+k)+2.

The programs for A298827, there is no canonical definition to state claims against.
-/

/-! ## A298827.P14373297759296916010

`A003572(3^n)`
-/

namespace A298827.P14373297759296916010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003572 (3 ^ n)

end

end A298827.P14373297759296916010

/-! ## A298827.P10189334956746443114

`and(-1, A003572(A000244(n)))`
-/

namespace A298827.P10189334956746443114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A003572 (A000244 n).toNat)

end

end A298827.P10189334956746443114

/-! ## A298827.P9486539038579949792

`A308922(n)+A003572(A000244(n))`
-/

namespace A298827.P9486539038579949792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308922 n + A003572 (A000244 n).toNat

end

end A298827.P9486539038579949792

/-! ## A298827.P16229919488543545508

`A326547(n)+A003572(A000244(n))`
-/

namespace A298827.P16229919488543545508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326547 n + A003572 (A000244 n).toNat

end

end A298827.P16229919488543545508

/-! ## A298827.P5299373806473928970

`A003572(A000244(n))%A016960(n)`
-/

namespace A298827.P5299373806473928970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003572 (A000244 n).toNat) (A016960 n)

end

end A298827.P5299373806473928970

/-!
# A298828: Number of n X n 0..1 arrays with every element equal to 1, 3, 4, 5 or 8 king-move adjacent elements, with upper left element zero.

The programs for A298828, there is no canonical definition to state claims against.
-/

/-! ## A298828.P8949576025189107528

`A298834(∑[4*n]+1)`
-/

namespace A298828.P8949576025189107528
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298834 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A298828.P8949576025189107528

/-! ## A298828.P6166780476850937714

`∑{digits}[n, A298834(A001844(#))]`
-/

namespace A298828.P6166780476850937714
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A298834 (A001844 x).toNat).sum

end

end A298828.P6166780476850937714

/-! ## A298828.P12611652324281338985

`A298834(A001844(n))+char[9]`
-/

namespace A298828.P12611652324281338985
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298834 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A298828.P12611652324281338985

/-! ## A298828.P8434918901289341421

`A326597(n)+A298834(A001844(n))`
-/

namespace A298828.P8434918901289341421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326597 n + A298834 (A001844 n).toNat

end

end A298828.P8434918901289341421

/-! ## A298828.P11187351386812796811

`A342845(n)+A298834(A001844(n))`
-/

namespace A298828.P11187351386812796811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342845 n + A298834 (A001844 n).toNat

end

end A298828.P11187351386812796811

/-!
# A298829: Number of nX3 0..1 arrays with every element equal to 1, 3, 4, 5 or 8 king-move adjacent elements, with upper left element zero.

The programs for A298829, there is no canonical definition to state claims against.
-/

/-! ## A298829.P845230480892213686

`A298834(∑[n+2]+4)`
-/

namespace A298829.P845230480892213686
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298834 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A298829.P845230480892213686

/-! ## A298829.P17577737338715033106

`and(-1, A298834(A167614(n+1)))`
-/

namespace A298829.P17577737338715033106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A298834 (A167614 (n + 1)).toNat)

end

end A298829.P17577737338715033106

/-! ## A298829.P9268111060431837557

`A298834(A046691(n)+7)+char[23]`
-/

namespace A298829.P9268111060431837557
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  23

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298834 (A046691 n + 7).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A298829.P9268111060431837557

/-! ## A298829.P3211135960624937802

`A298834(A034856(n+1)+5)+char[18]`
-/

namespace A298829.P3211135960624937802
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  18

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298834 (A034856 (n + 1) + 5).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A298829.P3211135960624937802

/-! ## A298829.P16913935334897094431

`A298834(A167614(n+1))+A011731(n)`
-/

namespace A298829.P16913935334897094431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298834 (A167614 (n + 1)).toNat + A011731 n

end

end A298829.P16913935334897094431

/-!
# A298830: Number of nX4 0..1 arrays with every element equal to 1, 3, 4, 5 or 8 king-move adjacent elements, with upper left element zero.

The programs for A298830, there is no canonical definition to state claims against.
-/

/-! ## A298830.P2397599616075406975

`A298834(∑[n+3]+7)`
-/

namespace A298830.P2397599616075406975
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298834 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A298830.P2397599616075406975

/-! ## A298830.P15872813794262493157

`A298834(A145018(n+4))+char[20]`
-/

namespace A298830.P15872813794262493157
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  20

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298834 (A145018 (n + 4)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A298830.P15872813794262493157

/-! ## A298830.P16128972562692993489

`A298834(A055999(n)+10)+char[16]`
-/

namespace A298830.P16128972562692993489
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298834 (A055999 n + 10).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A298830.P16128972562692993489

/-! ## A298830.P3779398086070654943

`A298834(A374004(n+1))+A000007(n+1)`
-/

namespace A298830.P3779398086070654943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298834 (A374004 (n + 1)).toNat + A000007 (n + 1)

end

end A298830.P3779398086070654943

/-! ## A298830.P5069523766264636203

`A007318(C(2, n))*A298834(A145018(n+4))`
-/

namespace A298830.P5069523766264636203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A298834 (A145018 (n + 4)).toNat

end

end A298830.P5069523766264636203

/-!
# A298831: Number of nX5 0..1 arrays with every element equal to 1, 3, 4, 5 or 8 king-move adjacent elements, with upper left element zero.

The programs for A298831, there is no canonical definition to state claims against.
-/

/-! ## A298831.P8492172226021501935

`A298834(A374005(n+1))`
-/

namespace A298831.P8492172226021501935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298834 (A374005 (n + 1)).toNat

end

end A298831.P8492172226021501935

/-! ## A298831.P1911140787304333509

`A298834(A167499(n+3))`
-/

namespace A298831.P1911140787304333509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298834 (A167499 (n + 3)).toNat

end

end A298831.P1911140787304333509

/-! ## A298831.P15920570065196674225

`A298834(A155212(n)+13)`
-/

namespace A298831.P15920570065196674225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298834 (A155212 n + 13).toNat

end

end A298831.P15920570065196674225

/-! ## A298831.P7596128998304764281

`A298834(A056000(n)+15)`
-/

namespace A298831.P7596128998304764281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298834 (A056000 n + 15).toNat

end

end A298831.P7596128998304764281

/-! ## A298831.P1020968953665920439

`A298834(eq[7, A066657(n)])`
-/

namespace A298831.P1020968953665920439
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298834 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A298831.P1020968953665920439

/-!
# A298832: Number of nX6 0..1 arrays with every element equal to 1, 3, 4, 5 or 8 king-move adjacent elements, with upper left element zero.

The programs for A298832, there is no canonical definition to state claims against.
-/

/-! ## A298832.P9390277574219408943

`A298834(A374007(n+1))`
-/

namespace A298832.P9390277574219408943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298834 (A374007 (n + 1)).toNat

end

end A298832.P9390277574219408943

/-! ## A298832.P4991495783923042626

`A298834(A166136(n+4))`
-/

namespace A298832.P4991495783923042626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298834 (A166136 (n + 4)).toNat

end

end A298832.P4991495783923042626

/-! ## A298832.P744114437596041795

`A298834(A056115(n)+21)`
-/

namespace A298832.P744114437596041795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298834 (A056115 n + 21).toNat

end

end A298832.P744114437596041795

/-! ## A298832.P16033465467415031332

`A298834(A167499(n+4)+1)`
-/

namespace A298832.P16033465467415031332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298834 (A167499 (n + 4) + 1).toNat

end

end A298832.P16033465467415031332

/-! ## A298832.P16524125217128013789

`A298834(A167614(n+4)+3)`
-/

namespace A298832.P16524125217128013789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298834 (A167614 (n + 4) + 3).toNat

end

end A298832.P16524125217128013789

/-!
# A298833: Number of nX7 0..1 arrays with every element equal to 1, 3, 4, 5 or 8 king-move adjacent elements, with upper left element zero.

The programs for A298833, there is no canonical definition to state claims against.
-/

/-! ## A298833.P9038466889618856250

`A298834(A374008(n+1))`
-/

namespace A298833.P9038466889618856250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298834 (A374008 (n + 1)).toNat

end

end A298833.P9038466889618856250

/-! ## A298833.P13262725332337035206

`A298834(A167487(n+5))`
-/

namespace A298833.P13262725332337035206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298834 (A167487 (n + 5)).toNat

end

end A298833.P13262725332337035206

/-! ## A298833.P5449415762509314421

`A298834(A056119(n)+28)`
-/

namespace A298833.P5449415762509314421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298834 (A056119 n + 28).toNat

end

end A298833.P5449415762509314421

/-! ## A298833.P2280145140599920541

`A298834(eq[11, A066657(n)])`
-/

namespace A298833.P2280145140599920541
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298834 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A298833.P2280145140599920541

/-! ## A298833.P13072030184812225636

`A298834(A167499(n+5)+2)`
-/

namespace A298833.P13072030184812225636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298834 (A167499 (n + 5) + 2).toNat

end

end A298833.P13072030184812225636

/-!
# A298834: T(n,k)=Number of nXk 0..1 arrays with every element equal to 1, 3, 4, 5 or 8 king-move adjacent elements, with upper left element zero.

The programs for A298834, there is no canonical definition to state claims against.
-/

/-! ## A298834.P5230828439208825487

`A299588(n+1)-A166301(A174116(n))`
-/

namespace A298834.P5230828439208825487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299588 (n + 1) - A166301 (A174116 n).toNat

end

end A298834.P5230828439208825487

/-! ## A298834.P13063976209312500453

`A299588(n+1)-A166301(A174545(n))`
-/

namespace A298834.P13063976209312500453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299588 (n + 1) - A166301 (A174545 n).toNat

end

end A298834.P13063976209312500453

/-! ## A298834.P10503065833768836860

`A299588(n+1)-A347689(A289481(n))`
-/

namespace A298834.P10503065833768836860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299588 (n + 1) - A347689 (A289481 n).toNat

end

end A298834.P10503065833768836860

/-! ## A298834.P322260843127437221

`gcd(A300146(n+1), A347689(A174545(n)))`
-/

namespace A298834.P322260843127437221
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A300146 (n + 1)) (A347689 (A174545 n).toNat)

end

end A298834.P322260843127437221

/-! ## A298834.P13304202368483247287

`xor(A082858(A289481(n)), A298622(n+1))`
-/

namespace A298834.P13304202368483247287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A082858 (A289481 n).toNat) (A298622 (n + 1))

end

end A298834.P13304202368483247287

/-!
# A298835: Number of n X n 0..1 arrays with every element equal to 2, 3, 4, 5 or 8 king-move adjacent elements, with upper left element zero.

The programs for A298835, there is no canonical definition to state claims against.
-/

/-! ## A298835.P12621491063748408706

`A298841(∑[4*n]+1)`
-/

namespace A298835.P12621491063748408706
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298841 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A298835.P12621491063748408706

/-! ## A298835.P10833885510917957763

`A298841(A001844(n))+A025439(n)`
-/

namespace A298835.P10833885510917957763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298841 (A001844 n).toNat + A025439 n

end

end A298835.P10833885510917957763

/-! ## A298835.P3203163017929952108

`A298841(A001844(n))+A025469(n)`
-/

namespace A298835.P3203163017929952108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298841 (A001844 n).toNat + A025469 n

end

end A298835.P3203163017929952108

/-! ## A298835.P3054792165858030499

`A298841(A001844(n))+A185238(n)`
-/

namespace A298835.P3054792165858030499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298841 (A001844 n).toNat + A185238 n

end

end A298835.P3054792165858030499

/-! ## A298835.P13506471273270992554

`A027828(n)*A298841(A001844(n))`
-/

namespace A298835.P13506471273270992554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027828 n * A298841 (A001844 n).toNat

end

end A298835.P13506471273270992554

/-!
# A298836: Number of n X 3 0..1 arrays with every element equal to 2, 3, 4, 5 or 8 king-move adjacent elements, with upper left element zero.

The programs for A298836, there is no canonical definition to state claims against.
-/

/-! ## A298836.P7184009921085350644

`A298841(∑[n+2]+4)`
-/

namespace A298836.P7184009921085350644
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298841 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A298836.P7184009921085350644

/-! ## A298836.P4789110582885665263

`or(char[1], A298841(A167614(n+1)))`
-/

namespace A298836.P4789110582885665263
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A298841 (A167614 (n + 1)).toNat)

end

end A298836.P4789110582885665263

/-! ## A298836.P7221102865420305836

`A298841(A167614(n+1))+A025443(n)`
-/

namespace A298836.P7221102865420305836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298841 (A167614 (n + 1)).toNat + A025443 n

end

end A298836.P7221102865420305836

/-! ## A298836.P3766443319220112105

`lcm(A260196(n), A298841(A167614(n+1)))`
-/

namespace A298836.P3766443319220112105
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A260196 n) (A298841 (A167614 (n + 1)).toNat)

end

end A298836.P3766443319220112105

/-! ## A298836.P18015871216644254262

`(1-A000007(n))*A298841(A167614(n+1))`
-/

namespace A298836.P18015871216644254262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A000007 n) * A298841 (A167614 (n + 1)).toNat

end

end A298836.P18015871216644254262

/-!
# A298837: Number of nX4 0..1 arrays with every element equal to 2, 3, 4, 5 or 8 king-move adjacent elements, with upper left element zero.

The programs for A298837, there is no canonical definition to state claims against.
-/

/-! ## A298837.P4902697857487974426

`A298841(A374004(n+1))`
-/

namespace A298837.P4902697857487974426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298841 (A374004 (n + 1)).toNat

end

end A298837.P4902697857487974426

/-! ## A298837.P16354005928152632784

`A298841(A141214(n)+7)`
-/

namespace A298837.P16354005928152632784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298841 (A141214 n + 7).toNat

end

end A298837.P16354005928152632784

/-! ## A298837.P2269586204940013275

`A298841(A052905(n)+9)`
-/

namespace A298837.P2269586204940013275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298841 (A052905 n + 9).toNat

end

end A298837.P2269586204940013275

/-! ## A298837.P2071561774046405733

`A298841(A055999(n)+10)`
-/

namespace A298837.P2071561774046405733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298841 (A055999 n + 10).toNat

end

end A298837.P2071561774046405733

/-! ## A298837.P8585728518857831940

`A298841(A167614(n+2)+1)`
-/

namespace A298837.P8585728518857831940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298841 (A167614 (n + 2) + 1).toNat

end

end A298837.P8585728518857831940

/-!
# A298838: Number of nX5 0..1 arrays with every element equal to 2, 3, 4, 5 or 8 king-move adjacent elements, with upper left element zero.

The programs for A298838, there is no canonical definition to state claims against.
-/

/-! ## A298838.P495287346771552224

`A298841(A374005(n+1))`
-/

namespace A298838.P495287346771552224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298841 (A374005 (n + 1)).toNat

end

end A298838.P495287346771552224

/-! ## A298838.P3226376485530208611

`A298841(eq[6, A131818(n+1)])`
-/

namespace A298838.P3226376485530208611
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298841 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A298838.P3226376485530208611

/-! ## A298838.P2285015218819923181

`A298841(Δ[A264443(n)])`
-/

namespace A298838.P2285015218819923181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298841 (f1 (n + 1) - f1 n).toNat

end

end A298838.P2285015218819923181

/-! ## A298838.P8797590978426186558

`A298841(A046691(n+3))`
-/

namespace A298838.P8797590978426186558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298841 (A046691 (n + 3)).toNat

end

end A298838.P8797590978426186558

/-! ## A298838.P1017304347159521833

`A298841(A056115(n)+11)`
-/

namespace A298838.P1017304347159521833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298841 (A056115 n + 11).toNat

end

end A298838.P1017304347159521833

/-!
# A298839: Number of nX6 0..1 arrays with every element equal to 2, 3, 4, 5 or 8 king-move adjacent elements, with upper left element zero.

The programs for A298839, there is no canonical definition to state claims against.
-/

/-! ## A298839.P13098673183433392472

`A298841(A374007(n+1))`
-/

namespace A298839.P13098673183433392472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298841 (A374007 (n + 1)).toNat

end

end A298839.P13098673183433392472

/-! ## A298839.P13215594597393555250

`A298841(A000124(n+5)+5)`
-/

namespace A298839.P13215594597393555250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298841 (A000124 (n + 5) + 5).toNat

end

end A298839.P13215594597393555250

/-! ## A298839.P17674763571019070331

`A298841(eq[6, A130270(n+1)])`
-/

namespace A298839.P17674763571019070331
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130270 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298841 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A298839.P17674763571019070331

/-! ## A298839.P9925194682138225688

`A298841(eq[7, A131818(n+1)])`
-/

namespace A298839.P9925194682138225688
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298841 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A298839.P9925194682138225688

/-! ## A298839.P12683364752932749072

`A298841(eq[3, A219347(n)])`
-/

namespace A298839.P12683364752932749072
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298841 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A298839.P12683364752932749072

/-!
# A298840: Number of nX7 0..1 arrays with every element equal to 2, 3, 4, 5 or 8 king-move adjacent elements, with upper left element zero.

The programs for A298840, there is no canonical definition to state claims against.
-/

/-! ## A298840.P5144908426372243129

`A298841(A374008(n+1))`
-/

namespace A298840.P5144908426372243129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298841 (A374008 (n + 1)).toNat

end

end A298840.P5144908426372243129

/-! ## A298840.P13024315371162727829

`A298841(eq[8, A131818(n+1)])`
-/

namespace A298840.P13024315371162727829
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298841 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A298840.P13024315371162727829

/-! ## A298840.P3248244118420443141

`A298841(A055999(n+4))`
-/

namespace A298840.P3248244118420443141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298841 (A055999 (n + 4)).toNat

end

end A298840.P3248244118420443141

/-! ## A298840.P15473599821889278966

`A298841(eq[4, A219347(n)])`
-/

namespace A298840.P15473599821889278966
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298841 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A298840.P15473599821889278966

/-! ## A298840.P18105955545912588065

`A298841(eq[6, A193592(n)])`
-/

namespace A298840.P18105955545912588065
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298841 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A298840.P18105955545912588065

/-!
# A298841: T(n,k)=Number of nXk 0..1 arrays with every element equal to 2, 3, 4, 5 or 8 king-move adjacent elements, with upper left element zero.

The programs for A298841, there is no canonical definition to state claims against.
-/

/-! ## A298841.P13349297616158144919

`A297978(n+1)+A121262(A228900(n))`
-/

namespace A298841.P13349297616158144919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297978 (n + 1) + A121262 (A228900 n).toNat

end

end A298841.P13349297616158144919

/-! ## A298841.P8326491143763604943

`A127288(or(A065040(n), A297978(n+1)))`
-/

namespace A298841.P8326491143763604943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127288 (Int.lor (A065040 n) (A297978 (n + 1))).toNat

end

end A298841.P8326491143763604943

/-! ## A298841.P9436052974249884425

`A299554(n+1)-A235943(A297978(n+1))`
-/

namespace A298841.P9436052974249884425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299554 (n + 1) - A235943 (A297978 (n + 1)).toNat

end

end A298841.P9436052974249884425

/-! ## A298841.P6529060631697756002

`A299554(n+1)-A185255(A298461(n+1))`
-/

namespace A298841.P6529060631697756002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299554 (n + 1) - A185255 (A298461 (n + 1)).toNat

end

end A298841.P6529060631697756002

/-! ## A298841.P4308185197640086260

`∑{e}[2^A299554(n+1), #]`
-/

namespace A298841.P4308185197640086260
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A299554 (n + 1) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, Nat.factorization (SequenceMachineLib.roundAway (f1 n)).natAbs p

end

end A298841.P4308185197640086260

/-!
# A298842: Number of n X n 0..1 arrays with every element equal to 1, 2, 3, 6 or 8 king-move adjacent elements, with upper left element zero.

The programs for A298842, there is no canonical definition to state claims against.
-/

/-! ## A298842.P4698860778211185060

`A298846(∑[4*n]+1)`
-/

namespace A298842.P4698860778211185060
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298846 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A298842.P4698860778211185060

/-! ## A298842.P14901935989649891086

`A057427(n)*A298846(A001844(n))`
-/

namespace A298842.P14901935989649891086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A298846 (A001844 n).toNat

end

end A298842.P14901935989649891086

/-! ## A298842.P8115953007816384204

`A007318(C(2, n))*A298846(A001844(n))`
-/

namespace A298842.P8115953007816384204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A298846 (A001844 n).toNat

end

end A298842.P8115953007816384204

/-! ## A298842.P17602259782013457262

`A014963(Δ[n²²])*A298846(A001844(n))`
-/

namespace A298842.P17602259782013457262
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n ^ 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat * A298846 (A001844 n).toNat

end

end A298842.P17602259782013457262

/-! ## A298842.P6625276796500851100

`log2(A020639(2*(n+1)))*A298846(A001844(n))`
-/

namespace A298842.P6625276796500851100
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A020639 (2 * (n + 1)) : ℝ) * (A298846 (A001844 n).toNat : ℝ)

end

end A298842.P6625276796500851100

/-!
# A298843: Number of nX5 0..1 arrays with every element equal to 1, 2, 3, 6 or 8 king-move adjacent elements, with upper left element zero.

The programs for A298843, there is no canonical definition to state claims against.
-/

/-! ## A298843.P16519871540404940372

`A298846(A167499(n+3))`
-/

namespace A298843.P16519871540404940372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298846 (A167499 (n + 3)).toNat

end

end A298843.P16519871540404940372

/-! ## A298843.P3622812966454322133

`A298846(A155212(n)+13)`
-/

namespace A298843.P3622812966454322133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298846 (A155212 n + 13).toNat

end

end A298843.P3622812966454322133

/-! ## A298843.P16186688429825077498

`A298846(A056000(n)+15)`
-/

namespace A298843.P16186688429825077498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298846 (A056000 n + 15).toNat

end

end A298843.P16186688429825077498

/-! ## A298843.P6291262814913179438

`A298846(A000124(n+4)+4)`
-/

namespace A298843.P6291262814913179438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298846 (A000124 (n + 4) + 4).toNat

end

end A298843.P6291262814913179438

/-! ## A298843.P8293285240047033143

`A298846(A054925(n+2)+A054925(n+8))`
-/

namespace A298843.P8293285240047033143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298846 (A054925 (n + 2) + A054925 (n + 8)).toNat

end

end A298843.P8293285240047033143

/-!
# A298844: Number of nX6 0..1 arrays with every element equal to 1, 2, 3, 6 or 8 king-move adjacent elements, with upper left element zero.

The programs for A298844, there is no canonical definition to state claims against.
-/

/-! ## A298844.P9472434990063359522

`A298846(A166136(n+4))`
-/

namespace A298844.P9472434990063359522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298846 (A166136 (n + 4)).toNat

end

end A298844.P9472434990063359522

/-! ## A298844.P2644743146713358184

`A298846(A056115(n)+21)`
-/

namespace A298844.P2644743146713358184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298846 (A056115 n + 21).toNat

end

end A298844.P2644743146713358184

/-! ## A298844.P12670248691813802996

`A298846(A000217(n+5)+6)`
-/

namespace A298844.P12670248691813802996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298846 (A000217 (n + 5) + 6).toNat

end

end A298844.P12670248691813802996

/-! ## A298844.P14582995824659106459

`A298846(A046691(n+3)+10)`
-/

namespace A298844.P14582995824659106459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298846 (A046691 (n + 3) + 10).toNat

end

end A298844.P14582995824659106459

/-! ## A298844.P13511994808068590633

`A298846(A000124(n+6)-(n+1))`
-/

namespace A298844.P13511994808068590633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298846 (A000124 (n + 6) - (n + 1 : ℤ)).toNat

end

end A298844.P13511994808068590633

/-!
# A298845: Number of nX7 0..1 arrays with every element equal to 1, 2, 3, 6 or 8 king-move adjacent elements, with upper left element zero.

The programs for A298845, there is no canonical definition to state claims against.
-/

/-! ## A298845.P15635883064344864458

`A298846(A167487(n+5))`
-/

namespace A298845.P15635883064344864458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298846 (A167487 (n + 5)).toNat

end

end A298845.P15635883064344864458

/-! ## A298845.P12524726451331480507

`A298846(eq[11, A066657(n)])`
-/

namespace A298845.P12524726451331480507
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298846 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A298845.P12524726451331480507

/-! ## A298845.P14764482695245062636

`A298846(A000096(n+5)+8)`
-/

namespace A298845.P14764482695245062636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298846 (A000096 (n + 5) + 8).toNat

end

end A298845.P14764482695245062636

/-! ## A298845.P16525593610526813476

`A298846(A000217(n+6)+7)`
-/

namespace A298845.P16525593610526813476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298846 (A000217 (n + 6) + 7).toNat

end

end A298845.P16525593610526813476

/-! ## A298845.P2986259356452621209

`A298846(A052905(n+3)+12)`
-/

namespace A298845.P2986259356452621209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298846 (A052905 (n + 3) + 12).toNat

end

end A298845.P2986259356452621209

/-!
# A298846: T(n,k)=Number of nXk 0..1 arrays with every element equal to 1, 2, 3, 6 or 8 king-move adjacent elements, with upper left element zero.

The programs for A298846, there is no canonical definition to state claims against.
-/

/-! ## A298846.P2398766312305522757

`A297993(n+1)+A235145(A177944(n))`
-/

namespace A298846.P2398766312305522757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297993 (n + 1) + A235145 (A177944 n).toNat

end

end A298846.P2398766312305522757

/-! ## A298846.P15597456432608485355

`A297993(n+1)+A055641(A220054(n))`
-/

namespace A298846.P15597456432608485355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297993 (n + 1) + A055641 (A220054 n).toNat

end

end A298846.P15597456432608485355

/-! ## A298846.P11922244638053879718

`A297993(n+1)+A025469(A138381(n+1))`
-/

namespace A298846.P11922244638053879718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297993 (n + 1) + A025469 (A138381 (n + 1)).toNat

end

end A298846.P11922244638053879718

/-! ## A298846.P225832460526580423

`A297993(n+1)+A025469(A080510(n+1))`
-/

namespace A298846.P225832460526580423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297993 (n + 1) + A025469 (A080510 (n + 1)).toNat

end

end A298846.P225832460526580423

/-! ## A298846.P11153310548145033594

`or(A000035(A299607(n+1)), A297993(n+1))`
-/

namespace A298846.P11153310548145033594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000035 (A299607 (n + 1)).toNat) (A297993 (n + 1))

end

end A298846.P11153310548145033594

/-!
# A298847: Lexicographically earliest sequence of distinct positive terms such that, for any n > 0, the number of ones in the binary expansion of n equals one plus the number of zeros in the binary expansion of a(n).

The programs for A298847, there is no canonical definition to state claims against.
-/

/-! ## A298847.P2214571548613397087

`A331274(A054429(n+1))`
-/

namespace A298847.P2214571548613397087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331274 (A054429 (n + 1)).toNat

end

end A298847.P2214571548613397087

/-! ## A298847.P17252250886460646736

`A331274(xor(n+1, A092323(n+1)))`
-/

namespace A298847.P17252250886460646736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331274 (Int.xor (n + 1 : ℤ) (A092323 (n + 1))).toNat

end

end A298847.P17252250886460646736

/-! ## A298847.P16301601863746822217

`xor(n-A053645(n+1), A331274(n+1))`
-/

namespace A298847.P16301601863746822217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((n : ℤ) - A053645 (n + 1)) (A331274 (n + 1))

end

end A298847.P16301601863746822217

/-! ## A298847.P15771734085064737056

`xor(A003817(A110654(n)), A331274(n+1))`
-/

namespace A298847.P15771734085064737056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A003817 (A110654 n).toNat) (A331274 (n + 1))

end

end A298847.P15771734085064737056

/-! ## A298847.P3144524745464192233

`A331274(xor(A057427(n), A092569(n+1)))`
-/

namespace A298847.P3144524745464192233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331274 (Int.xor (A057427 n) (A092569 (n + 1))).toNat

end

end A298847.P3144524745464192233

/-! ## A298847.P1299853475696750062

`A331274(xor(A086099(n), A086799(n+1)))`
-/

namespace A298847.P1299853475696750062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331274 (Int.xor (A086099 n) (A086799 (n + 1))).toNat

end

end A298847.P1299853475696750062

/-! ## A298847.P9437003582312580371

`A331274(A053644(n+1)+A035327(n+1))`
-/

namespace A298847.P9437003582312580371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331274 (A053644 (n + 1) + A035327 (n + 1)).toNat

end

end A298847.P9437003582312580371

/-! ## A298847.P12620636289242266602

`xor(A000225(A000523(n+1)), A331274(n+1))`
-/

namespace A298847.P12620636289242266602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000225 (A000523 (n + 1)).toNat) (A331274 (n + 1))

end

end A298847.P12620636289242266602

/-! ## A298847.P5447045489629652875

`A059893(n+1)+A059894(n+1)-A331274(n+1)`
-/

namespace A298847.P5447045489629652875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059893 (n + 1) + (A059894 (n + 1) - A331274 (n + 1))

end

end A298847.P5447045489629652875

/-! ## A298847.P10416547864330862752

`A258996(n+1)+A332769(n+1)-A331274(n+1)`
-/

namespace A298847.P10416547864330862752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258996 (n + 1) + (A332769 (n + 1) - A331274 (n + 1))

end

end A298847.P10416547864330862752

/-! ## A298847.P8442160154453576098

`A092569(2*A331274(n+1))/2`
-/

namespace A298847.P8442160154453576098
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A092569 (2 * A331274 (n + 1)).toNat : ℚ) / 2

end

end A298847.P8442160154453576098

/-!
# A298848: Number of partitions of n^3 into distinct cubes > 1.

The programs for A298848, there is no canonical definition to state claims against.
-/

/-! ## A298848.P12281541002664792479

`A280130(A000578(n))`
-/

namespace A298848.P12281541002664792479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280130 (A000578 n).toNat

end

end A298848.P12281541002664792479

/-! ## A298848.P17951177257379827418

`A280130(n^3)`
-/

namespace A298848.P17951177257379827418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280130 (n ^ 3)

end

end A298848.P17951177257379827418

/-! ## A298848.P2910134030529951859

`or(char[2], A280130(n*n²))`
-/

namespace A298848.P2910134030529951859
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A280130 (n * n ^ 2))

end

end A298848.P2910134030529951859

/-! ## A298848.P7739510968449135

`A280130(n*n²)%A000032(n)`
-/

namespace A298848.P7739510968449135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A280130 (n * n ^ 2)) (A000032 n)

end

end A298848.P7739510968449135

/-! ## A298848.P7547709749548106563

`∑{d}[A280130(n*n²), A000010(#)]`
-/

namespace A298848.P7547709749548106563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280130 (n * n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A298848.P7547709749548106563

/-!
# A298849: Numbers n where d*n contains the digit d for all of d = 1,2,3,4,5,6,7,8,9.

The programs for A298849, there is no canonical definition to state claims against.
-/

/-! ## A298849.P3121662043908117688

`A121030(n+1)/A040020(A121040(n+1))`
-/

namespace A298849.P3121662043908117688
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A121030 (n + 1) : ℚ) / (A040020 (A121040 (n + 1)).toNat : ℚ)

end

end A298849.P3121662043908117688

/-! ## A298849.P9699108898238237179

`A121030(n+1)/A010700(A106070(n+1))`
-/

namespace A298849.P9699108898238237179
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A121030 (n + 1) : ℚ) / (A010700 (A106070 (n + 1)).toNat : ℚ)

end

end A298849.P9699108898238237179

/-! ## A298849.P14866819101293150057

`A121030(n+1)/A010730(A006512(n+1))`
-/

namespace A298849.P14866819101293150057
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A121030 (n + 1) : ℚ) / (A010730 (A006512 (n + 1)).toNat : ℚ)

end

end A298849.P14866819101293150057

/-! ## A298849.P379999069806474535

`A121030(n+1)/A291572(A001359(n+3))`
-/

namespace A298849.P379999069806474535
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A121030 (n + 1) : ℚ) / (A291572 (A001359 (n + 3)).toNat : ℚ)

end

end A298849.P379999069806474535

/-! ## A298849.P10861671295929297149

`A121030(n+1)/A040020(A218292(n+1))`
-/

namespace A298849.P10861671295929297149
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A121030 (n + 1) : ℚ) / (A040020 (A218292 (n + 1)).toNat : ℚ)

end

end A298849.P10861671295929297149

/-! ## A298849.P6168581470968452368

`A121030(n+1)/A040020(A093359(n+1))`
-/

namespace A298849.P6168581470968452368
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A121030 (n + 1) : ℚ) / (A040020 (A093359 (n + 1)).toNat : ℚ)

end

end A298849.P6168581470968452368

/-! ## A298849.P16995831402249655648

`A121030(n+1)/A040020(A092126(n+1))`
-/

namespace A298849.P16995831402249655648
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A121030 (n + 1) : ℚ) / (A040020 (A092126 (n + 1)).toNat : ℚ)

end

end A298849.P16995831402249655648

/-! ## A298849.P12656649138701478571

`A121030(n+1)/A137580(A096278(n+1))`
-/

namespace A298849.P12656649138701478571
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A121030 (n + 1) : ℚ) / (A137580 (A096278 (n + 1)).toNat : ℚ)

end

end A298849.P12656649138701478571

/-! ## A298849.P18020853575556902436

`A121030(n+1)/A165831(A065724(n+1))`
-/

namespace A298849.P18020853575556902436
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A121030 (n + 1) : ℚ) / (A165831 (A065724 (n + 1)).toNat : ℚ)

end

end A298849.P18020853575556902436

/-! ## A298849.P8201928887083950206

`A121030(n+1)/A040020(A248144(3*(n+1)))`
-/

namespace A298849.P8201928887083950206
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A121030 (n + 1) : ℚ) / (A040020 (A248144 (3 * (n + 1))).toNat : ℚ)

end

end A298849.P8201928887083950206

/-! ## A298849.P15371182869890578723

`A121030(n+1)/A040020(A007318(n))`
-/

namespace A298849.P15371182869890578723
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A121030 (n + 1) : ℚ) / (A040020 (A007318 n).toNat : ℚ)

end

end A298849.P15371182869890578723

/-! ## A298849.P15935504794071177577

`A121030(n+1)/A010700(A077256(n+1))`
-/

namespace A298849.P15935504794071177577
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A121030 (n + 1) : ℚ) / (A010700 (A077256 (n + 1)).toNat : ℚ)

end

end A298849.P15935504794071177577

/-! ## A298849.P13686944716490954276

`A260436(A121030(n+1))/10`
-/

namespace A298849.P13686944716490954276
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A260436 (A121030 (n + 1)).toNat : ℚ) / 10

end

end A298849.P13686944716490954276

/-! ## A298849.P15437850472848207116

`A121030(n+1)/A010077(A282689(n+1))`
-/

namespace A298849.P15437850472848207116
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A121030 (n + 1) : ℚ) / (A010077 (A282689 (n + 1)).toNat : ℚ)

end

end A298849.P15437850472848207116

/-! ## A298849.P16540767374010822

`A121030(n+1)/A165831(sqrt(A282689(n+1)))`
-/

namespace A298849.P16540767374010822
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A121030 (n + 1) : ℚ) / (A165831 (SequenceMachineLib.roundAway (Real.sqrt (A282689 (n + 1) : ℝ))).toNat : ℚ)

end

end A298849.P16540767374010822

/-! ## A298849.P5461869128664395466

`A076309(A121030(n+1))`
-/

namespace A298849.P5461869128664395466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076309 (A121030 (n + 1)).toNat

end

end A298849.P5461869128664395466

/-! ## A298849.P16156024100802094143

`A008616(A121030(n+1)-1)`
-/

namespace A298849.P16156024100802094143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008616 (A121030 (n + 1) - 1).toNat

end

end A298849.P16156024100802094143

/-! ## A298849.P14321120776933378723

`A076314(A121030(n+1)-9)`
-/

namespace A298849.P14321120776933378723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076314 (A121030 (n + 1) - 9).toNat

end

end A298849.P14321120776933378723

/-! ## A298849.P8873127220932992870

`A076311(lcm(2, A121030(n+1)))`
-/

namespace A298849.P8873127220932992870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076311 (Int.lcm 2 (A121030 (n + 1)))

end

end A298849.P8873127220932992870

/-! ## A298849.P4357612358410620331

`A076314(A121030(n+1))%A108099(n)`
-/

namespace A298849.P4357612358410620331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A076314 (A121030 (n + 1)).toNat) (A108099 n)

end

end A298849.P4357612358410620331

/-!
# A298851: a(n) = [x^n] Product_{k=1..n} 1/(1-k^2*x).

The programs for A298851, there is no canonical definition to state claims against.
-/

/-! ## A298851.P6424349462433394587

`A394582(A006137(n))`
-/

namespace A298851.P6424349462433394587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394582 (A006137 n).toNat

end

end A298851.P6424349462433394587

/-! ## A298851.P15312867972524803452

`A269945(∑[4*n])`
-/

namespace A298851.P15312867972524803452
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269945 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A298851.P15312867972524803452

/-! ## A298851.P12842981287880417830

`A008957(2*n²+1)`
-/

namespace A298851.P12842981287880417830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008957 (2 * n ^ 2 + 1)

end

end A298851.P12842981287880417830

/-! ## A298851.P5460767409360305415

`A036969(A004277(n²))`
-/

namespace A298851.P5460767409360305415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036969 (A004277 (n ^ 2)).toNat

end

end A298851.P5460767409360305415

/-! ## A298851.P2646319769532123190

`A036969(A028310(2*n²))`
-/

namespace A298851.P2646319769532123190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036969 (A028310 (2 * n ^ 2)).toNat

end

end A298851.P2646319769532123190

/-!
# A298854: Characteristic polynomials of Jacobi coordinates. Triangle read by rows, T(n, k) for 0 <= k <= n.

The programs for A298854, there is no canonical definition to state claims against.
-/

/-! ## A298854.P1300809980474469607

`A188881(n+1)-A352124(A288972(n))`
-/

namespace A298854.P1300809980474469607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188881 (n + 1) - A352124 (A288972 n).toNat

end

end A298854.P1300809980474469607

/-! ## A298854.P11796658081456455490

`xor(A188881(n+1), A221351(A156883(n)))`
-/

namespace A298854.P11796658081456455490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A188881 (n + 1)) (A221351 (A156883 n).toNat)

end

end A298854.P11796658081456455490

/-! ## A298854.P12791205453848406034

`A188881(n+1)+A178798(A089231(n+1))`
-/

namespace A298854.P12791205453848406034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188881 (n + 1) + A178798 (A089231 (n + 1)).toNat

end

end A298854.P12791205453848406034

/-!
# A298855: Squarefree semiprimes p*q for which the symmetric representation of sigma(p*q) has four parts, in increasing order.

The programs for A298855, there is no canonical definition to state claims against.
-/

/-! ## A298855.P242648416737257402

`record[A053626(A024556(n+2))]`
-/

namespace A298855.P242648416737257402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053626 (A024556 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A298855.P242648416737257402

/-! ## A298855.P16552360152135956311

`record[A053626(A046388(n+2))]`
-/

namespace A298855.P16552360152135956311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053626 (A046388 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A298855.P16552360152135956311

/-! ## A298855.P12605819780295734997

`filter[A319801(n+1), A064911(#)]`
-/

namespace A298855.P12605819780295734997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319801 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A298855.P12605819780295734997

/-! ## A298855.P12254083146206407704

`filter[A046315(n+1), A348327(#)]`
-/

namespace A298855.P12254083146206407704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046315 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A348327 (f1 j).toNat = 1) n)

end

end A298855.P12254083146206407704

/-! ## A298855.P17558862186938539343

`filter[A046388(n+1), A348327(#)]`
-/

namespace A298855.P17558862186938539343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046388 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A348327 (f1 j).toNat = 1) n)

end

end A298855.P17558862186938539343

/-! ## A298855.P1288038158092500564

`filter[A056913(n+1), A348327(#)]`
-/

namespace A298855.P1288038158092500564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056913 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A348327 (f1 j).toNat = 1) n)

end

end A298855.P1288038158092500564

/-! ## A298855.P4566427031342536585

`filter[A069900(n+1), A353480(#)]`
-/

namespace A298855.P4566427031342536585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069900 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353480 (f1 j).toNat = 1) n)

end

end A298855.P4566427031342536585

/-! ## A298855.P18187382784683458379

`filter[A069900(n+1), A353481(#)]`
-/

namespace A298855.P18187382784683458379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069900 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353481 (f1 j).toNat = 1) n)

end

end A298855.P18187382784683458379

/-! ## A298855.P1447306335100252381

`filter[A071561(n+1), A353480(#)]`
-/

namespace A298855.P1447306335100252381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071561 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353480 (f1 j).toNat = 1) n)

end

end A298855.P1447306335100252381

/-!
# A298856: Triangular numbers k for which A240542(k) = A240542(k-1).

The programs for A298856, there is no canonical definition to state claims against.
-/

/-! ## A298856.P4007241783330009171

`A394934(n+1)+1`
-/

namespace A298856.P4007241783330009171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394934 (n + 1) + 1

end

end A298856.P4007241783330009171

/-! ## A298856.P17714166910770066652

`record[(A285120(2*(n+1))+n+1)*(n+1)]`
-/

namespace A298856.P17714166910770066652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A285120 (2 * (n + 1)) + (n + 1 : ℤ)) * (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A298856.P17714166910770066652

/-! ## A298856.P16546143124113824218

`A082184(A394934(n+1))`
-/

namespace A298856.P16546143124113824218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082184 (A394934 (n + 1)).toNat

end

end A298856.P16546143124113824218

/-! ## A298856.P8720392253339860174

`filter[A001972(n), A348327(#)]`
-/

namespace A298856.P8720392253339860174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001972 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A348327 (f1 j).toNat = 1) n)

end

end A298856.P8720392253339860174

/-! ## A298856.P4291344550919965642

`filter[A182455(n), A348327(#)]`
-/

namespace A298856.P4291344550919965642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182455 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A348327 (f1 j).toNat = 1) n)

end

end A298856.P4291344550919965642

/-! ## A298856.P16770646263171954380

`filter[A260220(n), A348327(#)]`
-/

namespace A298856.P16770646263171954380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260220 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A348327 (f1 j).toNat = 1) n)

end

end A298856.P16770646263171954380

/-! ## A298856.P17621758752518637924

`filter[A000217(n+1), A348327(#)]`
-/

namespace A298856.P17621758752518637924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A348327 (f1 j).toNat = 1) n)

end

end A298856.P17621758752518637924

/-! ## A298856.P12212711938198929384

`filter[A005214(n+1), A348327(#)]`
-/

namespace A298856.P12212711938198929384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005214 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A348327 (f1 j).toNat = 1) n)

end

end A298856.P12212711938198929384

/-! ## A298856.P163953276227972465

`filter[A014105(n+1), A348327(#)]`
-/

namespace A298856.P163953276227972465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014105 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A348327 (f1 j).toNat = 1) n)

end

end A298856.P163953276227972465

/-! ## A298856.P17021007157655153448

`filter[A093353(n+1), A348327(#)]`
-/

namespace A298856.P17021007157655153448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093353 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A348327 (f1 j).toNat = 1) n)

end

end A298856.P17021007157655153448

/-! ## A298856.P16241021917665164037

`filter[A168060(n+1), A348327(#)]`
-/

namespace A298856.P16241021917665164037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168060 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A348327 (f1 j).toNat = 1) n)

end

end A298856.P16241021917665164037

/-! ## A298856.P3635246446569735914

`filter[A179865(n+1), A348327(#)]`
-/

namespace A298856.P3635246446569735914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179865 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A348327 (f1 j).toNat = 1) n)

end

end A298856.P3635246446569735914

/-! ## A298856.P15968001471935626007

`filter[A253145(n+1), A348327(#)]`
-/

namespace A298856.P15968001471935626007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253145 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A348327 (f1 j).toNat = 1) n)

end

end A298856.P15968001471935626007

/-! ## A298856.P7688860908214957995

`filter[A272549(n+1), A348327(#)]`
-/

namespace A298856.P7688860908214957995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272549 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A348327 (f1 j).toNat = 1) n)

end

end A298856.P7688860908214957995

/-! ## A298856.P12102036245117298652

`filter[A299017(n+1), A348327(#)]`
-/

namespace A298856.P12102036245117298652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299017 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A348327 (f1 j).toNat = 1) n)

end

end A298856.P12102036245117298652

/-! ## A298856.P10597226937096149058

`filter[A359366(n+1), A348327(#)]`
-/

namespace A298856.P10597226937096149058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359366 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A348327 (f1 j).toNat = 1) n)

end

end A298856.P10597226937096149058

/-! ## A298856.P6646689785693312827

`filter[A054731(n+2), A348327(#)]`
-/

namespace A298856.P6646689785693312827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054731 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A348327 (f1 j).toNat = 1) n)

end

end A298856.P6646689785693312827

/-! ## A298856.P15101869085378889662

`filter[A082667(n+2), A348327(#)]`
-/

namespace A298856.P15101869085378889662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082667 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A348327 (f1 j).toNat = 1) n)

end

end A298856.P15101869085378889662

/-! ## A298856.P11692622183354733159

`filter[A085780(n+2), A348327(#)]`
-/

namespace A298856.P11692622183354733159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085780 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A348327 (f1 j).toNat = 1) n)

end

end A298856.P11692622183354733159

/-! ## A298856.P6699375864839711213

`filter[A161680(n+2), A348327(#)]`
-/

namespace A298856.P6699375864839711213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A348327 (f1 j).toNat = 1) n)

end

end A298856.P6699375864839711213

/-!
# A298857: Number of partitions of the n-th tetrahedral number into distinct tetrahedral numbers.

The programs for A298857, there is no canonical definition to state claims against.
-/

/-! ## A298857.P4319349998822239086

`A279278(A000292(n))`
-/

namespace A298857.P4319349998822239086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279278 (A000292 n).toNat

end

end A298857.P4319349998822239086

/-! ## A298857.P10947763173884680663

`A279278(∑[∑[n]])`
-/

namespace A298857.P10947763173884680663
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279278 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A298857.P10947763173884680663

/-! ## A298857.P1341446145998692119

`and(-1, A279278(C(n+2, 3)))`
-/

namespace A298857.P1341446145998692119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A279278 (Nat.choose (n + 2) 3))

end

end A298857.P1341446145998692119

/-! ## A298857.P17341139633030693094

`and(-1, A279278(n²-Δ[-C(n, 4)]))`
-/

namespace A298857.P17341139633030693094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(Nat.choose n 4 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A279278 ((n ^ 2 : ℤ) - (f1 (n + 1) - f1 n)).toNat)

end

end A298857.P17341139633030693094

/-! ## A298857.P11006193631255978890

`and(-1, A279278(Δ[C(2*n-(n-2), 4)]))`
-/

namespace A298857.P11006193631255978890
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((2 * n : ℤ) - ((n : ℤ) - 2)).toNat 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A279278 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat)

end

end A298857.P11006193631255978890

/-!
# A298859: Number of partitions of n into distinct fourth powers.

The programs for A298859, there is no canonical definition to state claims against.
-/

/-! ## A298859.P6647875058542147199

`abs(A279485(n))`
-/

namespace A298859.P6647875058542147199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A279485 n|

end

end A298859.P6647875058542147199

/-! ## A298859.P5849868110373827480

`A355717(A279485(n)²)`
-/

namespace A298859.P5849868110373827480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355717 (A279485 n ^ 2).toNat

end

end A298859.P5849868110373827480

/-! ## A298859.P9583407127091747436

`gcd(A000038(n), A279485(n))`
-/

namespace A298859.P9583407127091747436
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A279485 n)

end

end A298859.P9583407127091747436

/-! ## A298859.P4464375771264332445

`∑{d}[A279485(n), A000010(#)]`
-/

namespace A298859.P4464375771264332445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279485 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A298859.P4464375771264332445

/-! ## A298859.P310579155012140586

`lcm((A000203(8*n+1)%2)!, A279485(n))`
-/

namespace A298859.P310579155012140586
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (Nat.factorial (Int.tmod (A000203 (8 * n + 1)) 2).toNat : ℤ) (A279485 n)

end

end A298859.P310579155012140586

/-! ## A298859.P3240998729031465134

`A257807(A279485(n)*A279485(n))`
-/

namespace A298859.P3240998729031465134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257807 (A279485 n * A279485 n).toNat

end

end A298859.P3240998729031465134

/-! ## A298859.P12290267649622696778

`lcm(A001222(A000040(n+1)), A279485(n))`
-/

namespace A298859.P12290267649622696778
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A001222 (A000040 (n + 1)).toNat) (A279485 n)

end

end A298859.P12290267649622696778

/-! ## A298859.P11918836940293060656

`A279485(char[2]+n)^(2*n)`
-/

namespace A298859.P11918836940293060656
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279485 ((if ∃ j, f1 j = n then 1 else 0) + n) ^ (2 * n)

end

end A298859.P11918836940293060656

/-! ## A298859.P3312434174295794298

`A002828(A279485(n)^(2*n))`
-/

namespace A298859.P3312434174295794298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002828 (A279485 n ^ (2 * n)).toNat

end

end A298859.P3312434174295794298

/-! ## A298859.P47405613753110157

`A279485(n)²^comp[A000244(n)]`
-/

namespace A298859.P47405613753110157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A279485 n ^ 2) ^ SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A298859.P47405613753110157

/-! ## A298859.P7572367001150322136

`(A279485(n)^A000040(n+2))²`
-/

namespace A298859.P7572367001150322136
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A279485 n : ℚ) ^ (A000040 (n + 2) : ℤ)) ^ 2

end

end A298859.P7572367001150322136

/-! ## A298859.P1195989770489908188

`A001222(A279485(n)^(2*n)+1)`
-/

namespace A298859.P1195989770489908188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A279485 n ^ (2 * n) + 1).toNat

end

end A298859.P1195989770489908188

/-!
# A298861: Rank of n-th prime when all the primes and twice-primes are jointly ranked.

The programs for A298861, the canonical program `A298861.P498187030667195910` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A298861 has offset 1).

The definition of A298861 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A298861.P5025926505500552889

`Δ[n²]-A107347(n+1)`
-/

namespace A298861.P5025926505500552889
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - A107347 (n + 1)

end

end A298861.P5025926505500552889

namespace A298861

/-- `Δ[n²]-A107347(n+1)` -/
def P5025926505500552889.Spec : Prop :=
  ∀ n, P5025926505500552889.a n = A298861 (n + 1)

end A298861

/-! ## A298861.P13988243699606290143

`comp[A020900(n+1)+n]+1`
-/

namespace A298861.P13988243699606290143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020900 (n + 1) + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A298861.P13988243699606290143

namespace A298861

/-- `comp[A020900(n+1)+n]+1` -/
def P13988243699606290143.Spec : Prop :=
  ∀ n, (P13988243699606290143.a n : ℤ) = A298861 (n + 1)

end A298861

/-! ## A298861.P498187030667195910

`a(n-1)+A217564(n)+1` with `a(0)=1`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A298861

/-- `a(n-1)+A217564(n)+1` -/
def P498187030667195910.Spec : Prop :=
  ∀ n, P498187030667195910.a n = A298861 (n + 1)

theorem P498187030667195910.correct : P498187030667195910.Spec := by
  intro n
  simp only [A298861, Nat.add_sub_cancel]

end A298861

/-! ## A298861.P17299641148430661279

`A000720(A079953(n+1))+n`
-/

namespace A298861.P17299641148430661279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A079953 (n + 1)).toNat + (n : ℤ)

end

end A298861.P17299641148430661279

namespace A298861

/-- `A000720(A079953(n+1))+n` -/
def P17299641148430661279.Spec : Prop :=
  ∀ n, P17299641148430661279.a n = A298861 (n + 1)

end A298861

/-! ## A298861.P14757908551476677442

`A000720(A130290(n+1))+1+n`
-/

namespace A298861.P14757908551476677442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A130290 (n + 1)).toNat + 1 + (n : ℤ)

end

end A298861.P14757908551476677442

namespace A298861

/-- `A000720(A130290(n+1))+1+n` -/
def P14757908551476677442.Spec : Prop :=
  ∀ n, P14757908551476677442.a n = A298861 (n + 1)

end A298861

/-! ## A298861.P16413033556555052306

`A000040(n+1)-A369610(n+1)`
-/

namespace A298861.P16413033556555052306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - A369610 (n + 1)

end

end A298861.P16413033556555052306

namespace A298861

/-- `A000040(n+1)-A369610(n+1)` -/
def P16413033556555052306.Spec : Prop :=
  ∀ n, P16413033556555052306.a n = A298861 (n + 1)

end A298861

/-! ## A298861.P3769707358448791623

`A014692(n+1)-A369610(n+1)+n`
-/

namespace A298861.P3769707358448791623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014692 (n + 1) - A369610 (n + 1) + (n : ℤ)

end

end A298861.P3769707358448791623

namespace A298861

/-- `A014692(n+1)-A369610(n+1)+n` -/
def P3769707358448791623.Spec : Prop :=
  ∀ n, P3769707358448791623.a n = A298861 (n + 1)

end A298861

/-! ## A298861.P8374132813419875221

`∑[A217564(n+1)+1]-A217564(n+1)`
-/

namespace A298861.P8374132813419875221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217564 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A217564 (n + 1)

end

end A298861.P8374132813419875221

namespace A298861

/-- `∑[A217564(n+1)+1]-A217564(n+1)` -/
def P8374132813419875221.Spec : Prop :=
  ∀ n, P8374132813419875221.a n = A298861 (n + 1)

end A298861

/-! ## A298861.P10059884921188611442

`A008578(n+2)-A369610(n+1)`
-/

namespace A298861.P10059884921188611442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 2) - A369610 (n + 1)

end

end A298861.P10059884921188611442

namespace A298861

/-- `A008578(n+2)-A369610(n+1)` -/
def P10059884921188611442.Spec : Prop :=
  ∀ n, P10059884921188611442.a n = A298861 (n + 1)

end A298861

/-! ## A298861.P1718641222938154056

`A283312(A338361(n+1))-A369610(n+1)`
-/

namespace A298861.P1718641222938154056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283312 (A338361 (n + 1)).toNat - A369610 (n + 1)

end

end A298861.P1718641222938154056

namespace A298861

/-- `A283312(A338361(n+1))-A369610(n+1)` -/
def P1718641222938154056.Spec : Prop :=
  ∀ n, P1718641222938154056.a n = A298861 (n + 1)

end A298861

/-! ## A298861.P3817829253836858821

`A036234(A130290(n+1))+n`
-/

namespace A298861.P3817829253836858821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036234 (A130290 (n + 1)).toNat + (n : ℤ)

end

end A298861.P3817829253836858821

namespace A298861

/-- `A036234(A130290(n+1))+n` -/
def P3817829253836858821.Spec : Prop :=
  ∀ n, P3817829253836858821.a n = A298861 (n + 1)

end A298861

/-! ## A298861.P12986449262189255582

`A056172(A006005(n+1))+1+n`
-/

namespace A298861.P12986449262189255582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056172 (A006005 (n + 1)).toNat + 1 + (n : ℤ)

end

end A298861.P12986449262189255582

namespace A298861

/-- `A056172(A006005(n+1))+1+n` -/
def P12986449262189255582.Spec : Prop :=
  ∀ n, P12986449262189255582.a n = A298861 (n + 1)

end A298861

/-! ## A298861.P1232178972664754908

`A056172(A006093(n+1))+1+n`
-/

namespace A298861.P1232178972664754908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056172 (A006093 (n + 1)).toNat + 1 + (n : ℤ)

end

end A298861.P1232178972664754908

namespace A298861

/-- `A056172(A006093(n+1))+1+n` -/
def P1232178972664754908.Spec : Prop :=
  ∀ n, P1232178972664754908.a n = A298861 (n + 1)

end A298861

/-! ## A298861.P16007584509196023626

`A056172(A039915(n+1))+1+n`
-/

namespace A298861.P16007584509196023626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056172 (A039915 (n + 1)).toNat + 1 + (n : ℤ)

end

end A298861.P16007584509196023626

namespace A298861

/-- `A056172(A039915(n+1))+1+n` -/
def P16007584509196023626.Spec : Prop :=
  ∀ n, P16007584509196023626.a n = A298861 (n + 1)

end A298861

/-! ## A298861.P5154775865420357907

`A056172(record[A000010(n+1)])+n+1`
-/

namespace A298861.P5154775865420357907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056172 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat + (n + 1 : ℤ)

end

end A298861.P5154775865420357907

namespace A298861

/-- `A056172(record[A000010(n+1)])+n+1` -/
def P5154775865420357907.Spec : Prop :=
  ∀ n, P5154775865420357907.a n = A298861 (n + 1)

end A298861

/-! ## A298861.P10084798305480908953

`A242096(record[A006530(n+2)])+n+1`
-/

namespace A298861.P10084798305480908953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242096 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat + (n + 1 : ℤ)

end

end A298861.P10084798305480908953

namespace A298861

/-- `A242096(record[A006530(n+2)])+n+1` -/
def P10084798305480908953.Spec : Prop :=
  ∀ n, P10084798305480908953.a n = A298861 (n + 1)

end A298861

/-! ## A298861.P11754637266024798275

`A242096(record[A014963(n+2)])+n+1`
-/

namespace A298861.P11754637266024798275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242096 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat + (n + 1 : ℤ)

end

end A298861.P11754637266024798275

namespace A298861

/-- `A242096(record[A014963(n+2)])+n+1` -/
def P11754637266024798275.Spec : Prop :=
  ∀ n, P11754637266024798275.a n = A298861 (n + 1)

end A298861

/-! ## A298861.P14284635654934017423

`A242096(p?[A089026(n+1)])+1+n`
-/

namespace A298861.P14284635654934017423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089026 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242096 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat + 1 + (n : ℤ)

end

end A298861.P14284635654934017423

namespace A298861

/-- `A242096(p?[A089026(n+1)])+1+n` -/
def P14284635654934017423.Spec : Prop :=
  ∀ n, P14284635654934017423.a n = A298861 (n + 1)

end A298861

/-! ## A298861.P3782016309609826367

`2*(n+1)-A056171(p?[A014681(n)])`
-/

namespace A298861.P3782016309609826367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - A056171 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A298861.P3782016309609826367

namespace A298861

/-- `2*(n+1)-A056171(p?[A014681(n)])` -/
def P3782016309609826367.Spec : Prop :=
  ∀ n, P3782016309609826367.a n = A298861 (n + 1)

end A298861

/-! ## A298861.P18064368134992281797

`A242096(A040976(n+1)+2)+n+1`
-/

namespace A298861.P18064368134992281797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242096 (A040976 (n + 1) + 2).toNat + (n + 1 : ℤ)

end

end A298861.P18064368134992281797

namespace A298861

/-- `A242096(A040976(n+1)+2)+n+1` -/
def P18064368134992281797.Spec : Prop :=
  ∀ n, P18064368134992281797.a n = A298861 (n + 1)

end A298861

/-!
# A298862: Rank of n-th twice-prime when all the primes and twice-primes are jointly ranked.

The programs for A298862, the canonical program `A298862.P8575127337279644587` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A298862 has offset 1).

The definition of A298862 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A298862.P8575127337279644587

`A020900(n+1)+1+n`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A298862

/-- `A020900(n+1)+1+n` -/
def P8575127337279644587.Spec : Prop :=
  ∀ n, P8575127337279644587.a n = A298862 (n + 1)

theorem P8575127337279644587.correct : P8575127337279644587.Spec := by
  intro n
  simp only [A298862, Nat.add_sub_cancel]

end A298862

/-! ## A298862.P3992559338245940879

`A063124(n+1)+Δ[n²]`
-/

namespace A298862.P3992559338245940879
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063124 (n + 1) + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A298862.P3992559338245940879

namespace A298862

/-- `A063124(n+1)+Δ[n²]` -/
def P3992559338245940879.Spec : Prop :=
  ∀ n, P3992559338245940879.a n = A298862 (n + 1)

end A298862

/-! ## A298862.P13508984995289898809

`A070046(n+1)+2*(n+1)`
-/

namespace A298862.P13508984995289898809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070046 (n + 1) + (2 * (n + 1) : ℤ)

end

end A298862.P13508984995289898809

namespace A298862

/-- `A070046(n+1)+2*(n+1)` -/
def P13508984995289898809.Spec : Prop :=
  ∀ n, P13508984995289898809.a n = A298862 (n + 1)

end A298862

/-! ## A298862.P8019095500817697956

`3*(n+1)-A334051(n+1)`
-/

namespace A298862.P8019095500817697956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * (n + 1) : ℤ) - A334051 (n + 1)

end

end A298862.P8019095500817697956

namespace A298862

/-- `3*(n+1)-A334051(n+1)` -/
def P8019095500817697956.Spec : Prop :=
  ∀ n, P8019095500817697956.a n = A298862 (n + 1)

end A298862

/-! ## A298862.P5560989206060037259

`A016789(n)-A331677(n+1)`
-/

namespace A298862.P5560989206060037259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 n - A331677 (n + 1)

end

end A298862.P5560989206060037259

namespace A298862

/-- `A016789(n)-A331677(n+1)` -/
def P5560989206060037259.Spec : Prop :=
  ∀ n, P5560989206060037259.a n = A298862 (n + 1)

end A298862

/-! ## A298862.P8577439277261495915

`A020725(n+1)+A070046(n+1)+n`
-/

namespace A298862.P8577439277261495915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (n + 1) + (A070046 (n + 1) + (n : ℤ))

end

end A298862.P8577439277261495915

namespace A298862

/-- `A020725(n+1)+A070046(n+1)+n` -/
def P8577439277261495915.Spec : Prop :=
  ∀ n, P8577439277261495915.a n = A298862 (n + 1)

end A298862

/-! ## A298862.P10996859513047270266

`A100484(n+1)-A065897(n+1)+n`
-/

namespace A298862.P10996859513047270266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100484 (n + 1) - A065897 (n + 1) + (n : ℤ)

end

end A298862.P10996859513047270266

namespace A298862

/-- `A100484(n+1)-A065897(n+1)+n` -/
def P10996859513047270266.Spec : Prop :=
  ∀ n, P10996859513047270266.a n = A298862 (n + 1)

end A298862

/-! ## A298862.P1979124191411825873

`A000720(A059788(n+1))+1+n`
-/

namespace A298862.P1979124191411825873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A059788 (n + 1)).toNat + 1 + (n : ℤ)

end

end A298862.P1979124191411825873

namespace A298862

/-- `A000720(A059788(n+1))+1+n` -/
def P1979124191411825873.Spec : Prop :=
  ∀ n, P1979124191411825873.a n = A298862 (n + 1)

end A298862

/-! ## A298862.P15008495747367874107

`A000720(A100484(n+1))+1+n`
-/

namespace A298862.P15008495747367874107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A100484 (n + 1)).toNat + 1 + (n : ℤ)

end

end A298862.P15008495747367874107

namespace A298862

/-- `A000720(A100484(n+1))+1+n` -/
def P15008495747367874107.Spec : Prop :=
  ∀ n, P15008495747367874107.a n = A298862 (n + 1)

end A298862

/-! ## A298862.P14559005697021603097

`A099801(A006093(n+1))+1+n`
-/

namespace A298862.P14559005697021603097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099801 (A006093 (n + 1)).toNat + 1 + (n : ℤ)

end

end A298862.P14559005697021603097

namespace A298862

/-- `A099801(A006093(n+1))+1+n` -/
def P14559005697021603097.Spec : Prop :=
  ∀ n, P14559005697021603097.a n = A298862 (n + 1)

end A298862

/-! ## A298862.P2511001020413183313

`A000720(A001747(n+2))+1+n`
-/

namespace A298862.P2511001020413183313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A001747 (n + 2)).toNat + 1 + (n : ℤ)

end

end A298862.P2511001020413183313

namespace A298862

/-- `A000720(A001747(n+2))+1+n` -/
def P2511001020413183313.Spec : Prop :=
  ∀ n, P2511001020413183313.a n = A298862 (n + 1)

end A298862

/-! ## A298862.P18283105385162968498

`A000720(A076274(n+2))+n+1`
-/

namespace A298862.P18283105385162968498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A076274 (n + 2)).toNat + (n + 1 : ℤ)

end

end A298862.P18283105385162968498

namespace A298862

/-- `A000720(A076274(n+2))+n+1` -/
def P18283105385162968498.Spec : Prop :=
  ∀ n, P18283105385162968498.a n = A298862 (n + 1)

end A298862

/-! ## A298862.P7082261428625613570

`A000720(2*A000040(n+1))+1+n`
-/

namespace A298862.P7082261428625613570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (2 * A000040 (n + 1)).toNat + 1 + (n : ℤ)

end

end A298862.P7082261428625613570

namespace A298862

/-- `A000720(2*A000040(n+1))+1+n` -/
def P7082261428625613570.Spec : Prop :=
  ∀ n, P7082261428625613570.a n = A298862 (n + 1)

end A298862

/-! ## A298862.P3097889500447935249

`A000720(2*(eq[1, A001222(n+1)]+1))+n+1`
-/

namespace A298862.P3097889500447935249
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (2 * (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)) + (n + 1 : ℤ)

end

end A298862.P3097889500447935249

namespace A298862

/-- `A000720(2*(eq[1, A001222(n+1)]+1))+n+1` -/
def P3097889500447935249.Spec : Prop :=
  ∀ n, P3097889500447935249.a n = A298862 (n + 1)

end A298862

/-! ## A298862.P14263566959312193603

`A000720(A283312(A338356(n+3)))+n+1`
-/

namespace A298862.P14263566959312193603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A283312 (A338356 (n + 3)).toNat).toNat + (n + 1 : ℤ)

end

end A298862.P14263566959312193603

namespace A298862

/-- `A000720(A283312(A338356(n+3)))+n+1` -/
def P14263566959312193603.Spec : Prop :=
  ∀ n, P14263566959312193603.a n = A298862 (n + 1)

end A298862

/-! ## A298862.P7624041891153074910

`A000720(A000040(n+1)+A000040(n+1)-1)+n+1`
-/

namespace A298862.P7624041891153074910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A000040 (n + 1) + (A000040 (n + 1) - 1)).toNat + (n + 1 : ℤ)

end

end A298862.P7624041891153074910

namespace A298862

/-- `A000720(A000040(n+1)+A000040(n+1)-1)+n+1` -/
def P7624041891153074910.Spec : Prop :=
  ∀ n, P7624041891153074910.a n = A298862 (n + 1)

end A298862

/-! ## A298862.P5905107955689104854

`A000720(A059786(n+1))+n`
-/

namespace A298862.P5905107955689104854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A059786 (n + 1)).toNat + (n : ℤ)

end

end A298862.P5905107955689104854

namespace A298862

/-- `A000720(A059786(n+1))+n` -/
def P5905107955689104854.Spec : Prop :=
  ∀ n, P5905107955689104854.a n = A298862 (n + 1)

end A298862

/-! ## A298862.P16442783960890913667

`A099802(A000040(n+1))+1+n`
-/

namespace A298862.P16442783960890913667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099802 (A000040 (n + 1)).toNat + 1 + (n : ℤ)

end

end A298862.P16442783960890913667

namespace A298862

/-- `A099802(A000040(n+1))+1+n` -/
def P16442783960890913667.Spec : Prop :=
  ∀ n, P16442783960890913667.a n = A298862 (n + 1)

end A298862

/-! ## A298862.P13654415771334833778

`A099802(A008578(n+2))+n+1`
-/

namespace A298862.P13654415771334833778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099802 (A008578 (n + 2)).toNat + (n + 1 : ℤ)

end

end A298862.P13654415771334833778

namespace A298862

/-- `A099802(A008578(n+2))+n+1` -/
def P13654415771334833778.Spec : Prop :=
  ∀ n, P13654415771334833778.a n = A298862 (n + 1)

end A298862

/-! ## A298862.P11303720223107181552

`A000720(A002808(A065897(n+1)))+n+1`
-/

namespace A298862.P11303720223107181552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A002808 (A065897 (n + 1)).toNat).toNat + (n + 1 : ℤ)

end

end A298862.P11303720223107181552

namespace A298862

/-- `A000720(A002808(A065897(n+1)))+n+1` -/
def P11303720223107181552.Spec : Prop :=
  ∀ n, P11303720223107181552.a n = A298862 (n + 1)

end A298862

/-!
# A298863: Ranks of primes p when all primes p and products 3*p are jointly ranked.

The programs for A298863, there is no canonical definition to state claims against.
-/

/-! ## A298863.P4980415507089431462

`eq[char[A298864(n+1)], A000007(n)]`
-/

namespace A298863.P4980415507089431462
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298864 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A298863.P4980415507089431462

/-! ## A298863.P3874215183107491110

`eq[char[A298864(n+1)], A000038(n)]`
-/

namespace A298863.P3874215183107491110
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298864 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A298863.P3874215183107491110

/-! ## A298863.P18320516346767822495

`A230980(A144769(n+1))+1+n`
-/

namespace A298863.P18320516346767822495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (A144769 (n + 1)).toNat + 1 + (n : ℤ)

end

end A298863.P18320516346767822495

/-! ## A298863.P9161900623571650284

`A230980(floor(A000040(n+1)/3))+n+1`
-/

namespace A298863.P9161900623571650284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 ⌊(A000040 (n + 1) : ℚ) / 3⌋.toNat + (n + 1 : ℤ)

end

end A298863.P9161900623571650284

/-! ## A298863.P2124494726392035246

`eq[char[A298864(n+1)], A151933(n)]`
-/

namespace A298863.P2124494726392035246
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298864 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A298863.P2124494726392035246

/-!
# A298864: Ranks of products 3*p when all primes p and products 3*p are jointly ranked.

The programs for A298864, there is no canonical definition to state claims against.
-/

/-! ## A298864.P5884613117295893309

`A020901(n+1)+1+n`
-/

namespace A298864.P5884613117295893309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020901 (n + 1) + 1 + (n : ℤ)

end

end A298864.P5884613117295893309

/-! ## A298864.P96904033531311882

`A101344(n+1)+2*(n+1)`
-/

namespace A298864.P96904033531311882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101344 (n + 1) + (2 * (n + 1) : ℤ)

end

end A298864.P96904033531311882

/-! ## A298864.P12043727034387915776

`A000720(A001748(n+1))+1+n`
-/

namespace A298864.P12043727034387915776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A001748 (n + 1)).toNat + 1 + (n : ℤ)

end

end A298864.P12043727034387915776

/-! ## A298864.P7663827241315158890

`A000720(A063534(n+1))+1+n`
-/

namespace A298864.P7663827241315158890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A063534 (n + 1)).toNat + 1 + (n : ℤ)

end

end A298864.P7663827241315158890

/-! ## A298864.P9853260771423335139

`A100637(A006093(n+1))+1+n`
-/

namespace A298864.P9853260771423335139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100637 (A006093 (n + 1)).toNat + 1 + (n : ℤ)

end

end A298864.P9853260771423335139

/-! ## A298864.P16085743799778527914

`A000720(A112773(n+2))+n+1`
-/

namespace A298864.P16085743799778527914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A112773 (n + 2)).toNat + (n + 1 : ℤ)

end

end A298864.P16085743799778527914

/-! ## A298864.P8576199081862798841

`A100637(record[A000010(n+1)])+1+n`
-/

namespace A298864.P8576199081862798841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100637 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat + 1 + (n : ℤ)

end

end A298864.P8576199081862798841

/-! ## A298864.P17400575400839848320

`A000720(3*A000040(n+1))+1+n`
-/

namespace A298864.P17400575400839848320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (3 * A000040 (n + 1)).toNat + 1 + (n : ℤ)

end

end A298864.P17400575400839848320

/-! ## A298864.P15760467864483214594

`A000720(A370009(n+1))+n`
-/

namespace A298864.P15760467864483214594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A370009 (n + 1)).toNat + (n : ℤ)

end

end A298864.P15760467864483214594

/-! ## A298864.P15389622700126982065

`A037037(A000040(n+1))+Δ[n²]`
-/

namespace A298864.P15389622700126982065
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037037 (A000040 (n + 1)).toNat + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A298864.P15389622700126982065

/-! ## A298864.P9037916583637383569

`A037037(record[A006530(n+2)])+1+n+n`
-/

namespace A298864.P9037916583637383569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037037 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat + 1 + (n : ℤ) + (n : ℤ)

end

end A298864.P9037916583637383569

/-! ## A298864.P5124440098939576671

`A284061(A089071(n+1))+1+n`
-/

namespace A298864.P5124440098939576671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284061 (A089071 (n + 1)).toNat + 1 + (n : ℤ)

end

end A298864.P5124440098939576671

/-! ## A298864.P8020068709098782577

`A055679(A138636(n+1))+1+n`
-/

namespace A298864.P8020068709098782577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055679 (A138636 (n + 1)).toNat + 1 + (n : ℤ)

end

end A298864.P8020068709098782577

/-! ## A298864.P3112277784121922014

`A055679(A330410(n+1))+1+n`
-/

namespace A298864.P3112277784121922014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055679 (A330410 (n + 1)).toNat + 1 + (n : ℤ)

end

end A298864.P3112277784121922014

/-!
# A298865: The primes p and products 4*p in increasing order.

The programs for A298865, the canonical program `A298865.P11176209337828573366` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A298865 has offset 1).

The definition of A298865 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A298865.P6898122416368165179

`eq[1, A003415(n)%(n+3)]`
-/

namespace A298865.P6898122416368165179
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003415 n) (n + 3 : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A298865.P6898122416368165179

namespace A298865

/-- `eq[1, A003415(n)%(n+3)]` -/
def P6898122416368165179.Spec : Prop :=
  ∀ n, (P6898122416368165179.a n : ℤ) = A298865 (n + 1)

end A298865

/-! ## A298865.P11127502635501908193

`eq[5, C(5, A052126(n+2))]+2`
-/

namespace A298865.P11127502635501908193
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 5 (A052126 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A298865.P11127502635501908193

namespace A298865

/-- `eq[5, C(5, A052126(n+2))]+2` -/
def P11127502635501908193.Spec : Prop :=
  ∀ n, (P11127502635501908193.a n : ℤ) = A298865 (n + 1)

end A298865

/-! ## A298865.P1460550274462030681

`A257408(n+2)-char[1-n²]`
-/

namespace A298865.P1460550274462030681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (n ^ 2 : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257408 (n + 2) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A298865.P1460550274462030681

namespace A298865

/-- `A257408(n+2)-char[1-n²]` -/
def P1460550274462030681.Spec : Prop :=
  ∀ n, P1460550274462030681.a n = A298865 (n + 1)

end A298865

/-! ## A298865.P12279339195835134256

`filter[A298207(n+2), A340371(#)]`
-/

namespace A298865.P12279339195835134256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298207 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340371 (f1 j).toNat = 1) n)

end

end A298865.P12279339195835134256

namespace A298865

/-- `filter[A298207(n+2), A340371(#)]` -/
def P12279339195835134256.Spec : Prop :=
  ∀ n, P12279339195835134256.a n = A298865 (n + 1)

end A298865

/-! ## A298865.P6032378676493973418

`eq[1, A003415(n/A010121(n))]`
-/

namespace A298865.P6032378676493973418
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (SequenceMachineLib.roundAway ((n : ℚ) / (A010121 n : ℚ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A298865.P6032378676493973418

namespace A298865

/-- `eq[1, A003415(n/A010121(n))]` -/
def P6032378676493973418.Spec : Prop :=
  ∀ n, (P6032378676493973418.a n : ℤ) = A298865 (n + 1)

end A298865

/-! ## A298865.P11176209337828573366

`eq[1, A032741(n/A010121(n))]`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A298865

/-- `eq[1, A032741(n/A010121(n))]` -/
def P11176209337828573366.Spec : Prop :=
  ∀ n, (P11176209337828573366.a n : ℤ) = A298865 (n + 1)

theorem P11176209337828573366.correct : P11176209337828573366.Spec := by
  intro n
  simp only [A298865, Nat.add_sub_cancel]

end A298865

/-! ## A298865.P3284568485313739409

`eq[1, A105700(n/A010121(n))]`
-/

namespace A298865.P3284568485313739409
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 (SequenceMachineLib.roundAway ((n : ℚ) / (A010121 n : ℚ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A298865.P3284568485313739409

namespace A298865

/-- `eq[1, A105700(n/A010121(n))]` -/
def P3284568485313739409.Spec : Prop :=
  ∀ n, (P3284568485313739409.a n : ℤ) = A298865 (n + 1)

end A298865

/-! ## A298865.P15514539386704310064

`∩[A198045(n+1), A298207(n+1)]`
-/

namespace A298865.P15514539386704310064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198045 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298207 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A298865.P15514539386704310064

namespace A298865

/-- `∩[A198045(n+1), A298207(n+1)]` -/
def P15514539386704310064.Spec : Prop :=
  ∀ n, (P15514539386704310064.a n : ℤ) = A298865 (n + 1)

end A298865

/-! ## A298865.P13972375379967470849

`∪[A000040(n+1), A001749(n+1)]`
-/

namespace A298865.P13972375379967470849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001749 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A298865.P13972375379967470849

namespace A298865

/-- `∪[A000040(n+1), A001749(n+1)]` -/
def P13972375379967470849.Spec : Prop :=
  ∀ n, (P13972375379967470849.a n : ℤ) = A298865 (n + 1)

end A298865

/-! ## A298865.P120124384986942844

`lt[A101638(n+1), A304438(n+1)]+1`
-/

namespace A298865.P120124384986942844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101638 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304438 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A298865.P120124384986942844

namespace A298865

/-- `lt[A101638(n+1), A304438(n+1)]+1` -/
def P120124384986942844.Spec : Prop :=
  ∀ n, (P120124384986942844.a n : ℤ) = A298865 (n + 1)

end A298865

/-! ## A298865.P17600335565286014314

`∪[2*A100484(n+1), A000040(n+1)]`
-/

namespace A298865.P17600335565286014314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A100484 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A298865.P17600335565286014314

namespace A298865

/-- `∪[2*A100484(n+1), A000040(n+1)]` -/
def P17600335565286014314.Spec : Prop :=
  ∀ n, (P17600335565286014314.a n : ℤ) = A298865 (n + 1)

end A298865

/-! ## A298865.P11987913313877676691

`record[gcd(n, A116579(A112329(n+1)+1))+1]`
-/

namespace A298865.P11987913313877676691
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A116579 (A112329 (n + 1) + 1).toNat) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A298865.P11987913313877676691

namespace A298865

/-- `record[gcd(n, A116579(A112329(n+1)+1))+1]` -/
def P11987913313877676691.Spec : Prop :=
  ∀ n, (P11987913313877676691.a n : ℤ) = A298865 (n + 1)

end A298865

/-!
# A298866: Positions of primes p when all p and 4*p are arranged in increasing order.

The programs for A298866, the canonical program `A298866.P6502617962773511093` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A298866 has offset 1).

The definition of A298866 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A298866.P13848976571823797285

`eq[1, A064547(A257408(n+1))]`
-/

namespace A298866.P13848976571823797285
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064547 (A257408 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A298866.P13848976571823797285

namespace A298866

/-- `eq[1, A064547(A257408(n+1))]` -/
def P13848976571823797285.Spec : Prop :=
  ∀ n, (P13848976571823797285.a n : ℤ) = A298866 (n + 1)

end A298866

/-! ## A298866.P3583571536206328623

`eq[2, A001222(lcm(2, A257408(n+1)))]`
-/

namespace A298866.P3583571536206328623
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.lcm 2 (A257408 (n + 1)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A298866.P3583571536206328623

namespace A298866

/-- `eq[2, A001222(lcm(2, A257408(n+1)))]` -/
def P3583571536206328623.Spec : Prop :=
  ∀ n, (P3583571536206328623.a n : ℤ) = A298866 (n + 1)

end A298866

/-! ## A298866.P6502617962773511093

`A230980(A075518(n+1))+1+n`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A298866

/-- `A230980(A075518(n+1))+1+n` -/
def P6502617962773511093.Spec : Prop :=
  ∀ n, P6502617962773511093.a n = A298866 (n + 1)

theorem P6502617962773511093.correct : P6502617962773511093.Spec := by
  intro n
  simp only [A298866, Nat.add_sub_cancel]

end A298866

/-! ## A298866.P8402255464945599686

`eq[2, A000005(A298865(n+1))]+1`
-/

namespace A298866.P8402255464945599686
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A298865 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A298866.P8402255464945599686

namespace A298866

/-- `eq[2, A000005(A298865(n+1))]+1` -/
def P8402255464945599686.Spec : Prop :=
  ∀ n, (P8402255464945599686.a n : ℤ) = A298866 (n + 1)

end A298866

/-! ## A298866.P15460142588926967408

`eq[2, A038548(2*A257408(n+1))]`
-/

namespace A298866.P15460142588926967408
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038548 (2 * A257408 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A298866.P15460142588926967408

namespace A298866

/-- `eq[2, A038548(2*A257408(n+1))]` -/
def P15460142588926967408.Spec : Prop :=
  ∀ n, (P15460142588926967408.a n : ℤ) = A298866 (n + 1)

end A298866

/-!
# A298867: Positions of numbers 4*p when all primes p and products 4*p are arranged in increasing order.

The programs for A298867, the canonical program `A298867.P15695722077931917837` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A298867 has offset 1).

The definition of A298867 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A298867.P15695722077931917837

`A020934(n+1)+1+n`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A298867

/-- `A020934(n+1)+1+n` -/
def P15695722077931917837.Spec : Prop :=
  ∀ n, P15695722077931917837.a n = A298867 (n + 1)

theorem P15695722077931917837.correct : P15695722077931917837.Spec := by
  intro n
  simp only [A298867, Nat.add_sub_cancel]

end A298867

/-! ## A298867.P9385916814632531488

`A000720(A001749(n+1))+1+n`
-/

namespace A298867.P9385916814632531488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A001749 (n + 1)).toNat + 1 + (n : ℤ)

end

end A298867.P9385916814632531488

namespace A298867

/-- `A000720(A001749(n+1))+1+n` -/
def P9385916814632531488.Spec : Prop :=
  ∀ n, P9385916814632531488.a n = A298867 (n + 1)

end A298867

/-! ## A298867.P6564123727745419692

`A000720(4*A000040(n+1))+1+n`
-/

namespace A298867.P6564123727745419692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (4 * A000040 (n + 1)).toNat + 1 + (n : ℤ)

end

end A298867.P6564123727745419692

namespace A298867

/-- `A000720(4*A000040(n+1))+1+n` -/
def P6564123727745419692.Spec : Prop :=
  ∀ n, P6564123727745419692.a n = A298867 (n + 1)

end A298867

/-! ## A298867.P9148094250941165064

`A000720(2*A076274(n+2)+1)+n+1`
-/

namespace A298867.P9148094250941165064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (2 * A076274 (n + 2) + 1).toNat + (n + 1 : ℤ)

end

end A298867.P9148094250941165064

namespace A298867

/-- `A000720(2*A076274(n+2)+1)+n+1` -/
def P9148094250941165064.Spec : Prop :=
  ∀ n, P9148094250941165064.a n = A298867 (n + 1)

end A298867

/-! ## A298867.P7794246002062576781

`A000720(4*(record[A000010(n+1)]+1))+1+n`
-/

namespace A298867.P7794246002062576781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (4 * (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1)).toNat + 1 + (n : ℤ)

end

end A298867.P7794246002062576781

namespace A298867

/-- `A000720(4*(record[A000010(n+1)]+1))+1+n` -/
def P7794246002062576781.Spec : Prop :=
  ∀ n, P7794246002062576781.a n = A298867 (n + 1)

end A298867

/-! ## A298867.P12971637597141865788

`A000720(A008586(A000040(n+1)))+n+1`
-/

namespace A298867.P12971637597141865788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A008586 (A000040 (n + 1)).toNat).toNat + (n + 1 : ℤ)

end

end A298867.P12971637597141865788

namespace A298867

/-- `A000720(A008586(A000040(n+1)))+n+1` -/
def P12971637597141865788.Spec : Prop :=
  ∀ n, P12971637597141865788.a n = A298867 (n + 1)

end A298867

/-! ## A298867.P5266282060245898500

`A000720(A076274(n+2)+A001747(n+2)+1)+n+1`
-/

namespace A298867.P5266282060245898500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A076274 (n + 2) + A001747 (n + 2) + 1).toNat + (n + 1 : ℤ)

end

end A298867.P5266282060245898500

namespace A298867

/-- `A000720(A076274(n+2)+A001747(n+2)+1)+n+1` -/
def P5266282060245898500.Spec : Prop :=
  ∀ n, P5266282060245898500.a n = A298867 (n + 1)

end A298867

/-! ## A298867.P1223133569098973466

`A099802(A100484(n+1))+1+n`
-/

namespace A298867.P1223133569098973466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099802 (A100484 (n + 1)).toNat + 1 + (n : ℤ)

end

end A298867.P1223133569098973466

namespace A298867

/-- `A099802(A100484(n+1))+1+n` -/
def P1223133569098973466.Spec : Prop :=
  ∀ n, P1223133569098973466.a n = A298867 (n + 1)

end A298867

/-! ## A298867.P8672488670861409370

`A099802(2*A000040(n+1))+1+n`
-/

namespace A298867.P8672488670861409370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099802 (2 * A000040 (n + 1)).toNat + 1 + (n : ℤ)

end

end A298867.P8672488670861409370

namespace A298867

/-- `A099802(2*A000040(n+1))+1+n` -/
def P8672488670861409370.Spec : Prop :=
  ∀ n, P8672488670861409370.a n = A298867 (n + 1)

end A298867

/-! ## A298867.P16502118598871386428

`eq[2, A064547(A257408(n+1))]`
-/

namespace A298867.P16502118598871386428
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064547 (A257408 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A298867.P16502118598871386428

namespace A298867

/-- `eq[2, A064547(A257408(n+1))]` -/
def P16502118598871386428.Spec : Prop :=
  ∀ n, (P16502118598871386428.a n : ℤ) = A298867 (n + 1)

end A298867

/-! ## A298867.P4132558978806956674

`lt[A014963(A257408(n+1)), A004525(n)]`
-/

namespace A298867.P4132558978806956674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A257408 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A298867.P4132558978806956674

namespace A298867

/-- `lt[A014963(A257408(n+1)), A004525(n)]` -/
def P4132558978806956674.Spec : Prop :=
  ∀ n, (P4132558978806956674.a n : ℤ) = A298867 (n + 1)

end A298867

/-!
# A298868: Solution (a(n)) of the system of 3 complementary equations in Comments.

The programs for A298868, there is no canonical definition to state claims against.
-/

/-! ## A298868.P4350322971811930223

`A298870(n)-A298869(n)`
-/

namespace A298868.P4350322971811930223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298870 n - A298869 n

end

end A298868.P4350322971811930223

/-! ## A298868.P12897070350920291761

`A000027(A298870(n)%A298869(n))`
-/

namespace A298868.P12897070350920291761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (Int.tmod (A298870 n) (A298869 n)).toNat

end

end A298868.P12897070350920291761

/-! ## A298868.P9281007324792332775

`A298870(A028310(n))%A298869(n)`
-/

namespace A298868.P9281007324792332775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A298870 (A028310 n).toNat) (A298869 n)

end

end A298868.P9281007324792332775

/-! ## A298868.P5197560967694576350

`A298870(A123108(2*n))%A298869(n)`
-/

namespace A298868.P5197560967694576350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A298870 (A123108 (2 * n)).toNat) (A298869 n)

end

end A298868.P5197560967694576350

/-! ## A298868.P2606637674448381951

`A298870(A000007(n)+n)%A298869(n)`
-/

namespace A298868.P2606637674448381951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A298870 (A000007 n + (n : ℤ)).toNat) (A298869 n)

end

end A298868.P2606637674448381951

/-! ## A298868.P1567889054061705099

`A298870(A000038(n)+n)%A298869(n)`
-/

namespace A298868.P1567889054061705099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A298870 (A000038 n + (n : ℤ)).toNat) (A298869 n)

end

end A298868.P1567889054061705099

/-!
# A298869: Solution (b(n)) of the system of 3 complementary equations in Comments.

The programs for A298869, there is no canonical definition to state claims against.
-/

/-! ## A298869.P6462585598673981894

`A298870(n)-A298868(n)`
-/

namespace A298869.P6462585598673981894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298870 n - A298868 n

end

end A298869.P6462585598673981894

/-! ## A298869.P3401780273803685752

`∑[A344770(A344882(∑[n+1]))]`
-/

namespace A298869.P3401780273803685752
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344770 (A344882 (∑ j ∈ Finset.range (n + 1), f2 j)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A298869.P3401780273803685752

/-! ## A298869.P2900081777726594744

`∑[A086342(Δ[A127922(2*(n+1))])]`
-/

namespace A298869.P2900081777726594744
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127922 (2 * (n + 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086342 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A298869.P2900081777726594744

/-! ## A298869.P9426694002249885010

`A295894(A369145(n))+n+n+1`
-/

namespace A298869.P9426694002249885010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295894 (A369145 n).toNat + (n : ℤ) + (n + 1 : ℤ)

end

end A298869.P9426694002249885010

/-!
# A298870: Solution (c(n)) of the system of 3 complementary equations in Comments.

The programs for A298870, there is no canonical definition to state claims against.
-/

/-! ## A298870.P7490365489837372051

`A298869(n)+A298868(n)`
-/

namespace A298870.P7490365489837372051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298869 n + A298868 n

end

end A298870.P7490365489837372051

/-! ## A298870.P133605824690831858

`A298868(n)+∑[A007968(A301048(n)-(n+1))+2]`
-/

namespace A298870.P133605824690831858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007968 (A301048 n - (n + 1 : ℤ)).toNat + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298868 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A298870.P133605824690831858

/-! ## A298870.P1216628698433357700

`A298868(n)+2*(n+1)+n-A280750(A038220(n))`
-/

namespace A298870.P1216628698433357700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298868 n + ((2 * (n + 1) : ℤ) + ((n : ℤ) - A280750 (A038220 n).toNat))

end

end A298870.P1216628698433357700

/-! ## A298870.P15316187935730515711

`A016777(n)+A298868(n)-A121373(A052925(n))`
-/

namespace A298870.P15316187935730515711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 n + (A298868 n - A121373 (A052925 n).toNat)

end

end A298870.P15316187935730515711

/-! ## A298870.P15022373507853742625

`A298868(n)+A190006(n+1)-A359244(A089423(n))`
-/

namespace A298870.P15022373507853742625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298868 n + (A190006 (n + 1) - A359244 (A089423 n).toNat)

end

end A298870.P15022373507853742625

/-!
# A298871: Solution (a(n)) of the system of 3 complementary equations in Comments.

The programs for A298871, there is no canonical definition to state claims against.
-/

/-! ## A298871.P15159277425758680326

`A298873(n)%A298872(n)`
-/

namespace A298871.P15159277425758680326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A298873 n) (A298872 n)

end

end A298871.P15159277425758680326

/-! ## A298871.P4175208020024889745

`A298876(n)%A298875(n)`
-/

namespace A298871.P4175208020024889745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A298876 n) (A298875 n)

end

end A298871.P4175208020024889745

/-! ## A298871.P834752119996773158

`∪[A008121(n), Δ[A298875(n)]]`
-/

namespace A298871.P834752119996773158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008121 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298875 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A298871.P834752119996773158

/-! ## A298871.P8572560881310842537

`Δ[A298875(n-a(A000038(n)))]` with `a(0)=1`
-/

namespace A298871.P8572560881310842537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A298875 ((n : ℤ) - f1 (A000038 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A298871.P8572560881310842537

/-! ## A298871.P14570353242340373004

`∪[A331761(n+2), Δ[A298875(n)]]`
-/

namespace A298871.P14570353242340373004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331761 (n + 2)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298875 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A298871.P14570353242340373004

/-! ## A298871.P1339788599267899336

`A298873(n)-A000122(n²)*A298872(n)`
-/

namespace A298871.P1339788599267899336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298873 n - A000122 (n ^ 2) * A298872 n

end

end A298871.P1339788599267899336

/-! ## A298871.P16625050657635409385

`(A001222(A100859(n+1))*A298876(n))%A298872(n)`
-/

namespace A298871.P16625050657635409385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001222 (A100859 (n + 1)).toNat * A298876 n) (A298872 n)

end

end A298871.P16625050657635409385

/-! ## A298871.P2303207841026427087

`(A001222(A101635(n+1))*A298876(n))%A298872(n)`
-/

namespace A298871.P2303207841026427087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001222 (A101635 (n + 1)).toNat * A298876 n) (A298872 n)

end

end A298871.P2303207841026427087

/-! ## A298871.P4211573708982001415

`(A001222(A175711(n+1))*A298876(n))%A298872(n)`
-/

namespace A298871.P4211573708982001415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001222 (A175711 (n + 1)).toNat * A298876 n) (A298872 n)

end

end A298871.P4211573708982001415

/-!
# A298872: Solution (b(n)) of the system of 3 complementary equations in Comments.

The programs for A298872, there is no canonical definition to state claims against.
-/

/-! ## A298872.P15703596534482079068

`A298875(n)%A217116(n)`
-/

namespace A298872.P15703596534482079068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A298875 n) (A217116 n)

end

end A298872.P15703596534482079068

/-! ## A298872.P39034392291940689

`A298875(n)+A169585(A137169(n))`
-/

namespace A298872.P39034392291940689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298875 n + A169585 (A137169 n).toNat

end

end A298872.P39034392291940689

/-! ## A298872.P10993790011359007861

`A298875(n)+A000007(A366843(n))`
-/

namespace A298872.P10993790011359007861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298875 n + A000007 (A366843 n).toNat

end

end A298872.P10993790011359007861

/-! ## A298872.P7005234735615760077

`A054977(A347657(n))*A298875(n)`
-/

namespace A298872.P7005234735615760077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 (A347657 n).toNat * A298875 n

end

end A298872.P7005234735615760077

/-! ## A298872.P13063248054915851959

`lcm(A033999(A007664(n)), A298875(n))`
-/

namespace A298872.P13063248054915851959
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 (A007664 n).toNat) (A298875 n)

end

end A298872.P13063248054915851959

/-! ## A298872.P2209399555277161732

`A054977(A347657(n))+∑[A298871(n)]`
-/

namespace A298872.P2209399555277161732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298871 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 (A347657 n).toNat + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A298872.P2209399555277161732

/-! ## A298872.P1007928062250537950

`A298875(n)+A000122(A101635(n+1))`
-/

namespace A298872.P1007928062250537950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298875 n + A000122 (A101635 (n + 1)).toNat

end

end A298872.P1007928062250537950

/-! ## A298872.P9372975559532424205

`A298875(n)+A010052(A100859(n+1))`
-/

namespace A298872.P9372975559532424205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298875 n + A010052 (A100859 (n + 1)).toNat

end

end A298872.P9372975559532424205

/-! ## A298872.P18039320206946808589

`A298875(n)+A010052(A339465(n+1))`
-/

namespace A298872.P18039320206946808589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298875 n + A010052 (A339465 (n + 1)).toNat

end

end A298872.P18039320206946808589

/-! ## A298872.P9016232991961191091

`A298875(n)+A154281(A360400(n+1))`
-/

namespace A298872.P9016232991961191091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298875 n + A154281 (A360400 (n + 1)).toNat

end

end A298872.P9016232991961191091

/-!
# A298873: Solution (c(n)) of the system of 3 complementary equations in Comments.

The programs for A298873, there is no canonical definition to state claims against.
-/

/-! ## A298873.P9725961925060697407

`A298871(n)+A000122(n²)*A298872(n)`
-/

namespace A298873.P9725961925060697407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298871 n + A000122 (n ^ 2) * A298872 n

end

end A298873.P9725961925060697407

/-! ## A298873.P18191156638135860614

`A298876(n)+C(n, A137169(n))`
-/

namespace A298873.P18191156638135860614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298876 n + (Nat.choose n (A137169 n).toNat : ℤ)

end

end A298873.P18191156638135860614

/-! ## A298873.P3822421232947592334

`A298876(n)+C(2, A360400(n+1))`
-/

namespace A298873.P3822421232947592334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298876 n + (Nat.choose 2 (A360400 (n + 1)).toNat : ℤ)

end

end A298873.P3822421232947592334

/-! ## A298873.P15831441094677995937

`A298876(n)%A030075(3*n+5)`
-/

namespace A298873.P15831441094677995937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A298876 n) (A030075 (3 * n + 5))

end

end A298873.P15831441094677995937

/-! ## A298873.P3791882204030573038

`A298876(n)+A000007(A137169(n))`
-/

namespace A298873.P3791882204030573038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298876 n + A000007 (A137169 n).toNat

end

end A298873.P3791882204030573038

/-! ## A298873.P1607860539774234431

`A054977(A347657(n))*A298876(n)`
-/

namespace A298873.P1607860539774234431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 (A347657 n).toNat * A298876 n

end

end A298873.P1607860539774234431

/-! ## A298873.P3552897741154552586

`A298876(n)+A000122(A101635(n+1))`
-/

namespace A298873.P3552897741154552586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298876 n + A000122 (A101635 (n + 1)).toNat

end

end A298873.P3552897741154552586

/-! ## A298873.P13509927709054719517

`A298876(n)+A010052(A100859(n+1))`
-/

namespace A298873.P13509927709054719517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298876 n + A010052 (A100859 (n + 1)).toNat

end

end A298873.P13509927709054719517

/-! ## A298873.P7949033480548015229

`A298876(n)+A169585(A119872(n+1))`
-/

namespace A298873.P7949033480548015229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298876 n + A169585 (A119872 (n + 1)).toNat

end

end A298873.P7949033480548015229

/-! ## A298873.P4972286712620703275

`A001222(A175711(n+1))*A298876(n)`
-/

namespace A298873.P4972286712620703275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A175711 (n + 1)).toNat * A298876 n

end

end A298873.P4972286712620703275

/-!
# A298875: Solution (b(n)) of the system of 3 equations in Comments.

The programs for A298875, there is no canonical definition to state claims against.
-/

/-! ## A298875.P1304412304910683493

`∑[A298871(n)]+1`
-/

namespace A298875.P1304412304910683493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298871 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A298875.P1304412304910683493

/-! ## A298875.P12084319868332373346

`∑[A254667(A298871(n))]`
-/

namespace A298875.P12084319868332373346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254667 (A298871 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A298875.P12084319868332373346

/-! ## A298875.P5029723112374650808

`∑[A054977(n)*A298871(n)]`
-/

namespace A298875.P5029723112374650808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n * A298871 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A298875.P5029723112374650808

/-! ## A298875.P13658431025295775007

`∑[A000038(n)!*A298871(n)]`
-/

namespace A298875.P13658431025295775007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A000038 n).toNat : ℤ) * A298871 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A298875.P13658431025295775007

/-! ## A298875.P17788123243013766676

`∑[A298873(n)%A298872(n)]+1`
-/

namespace A298875.P17788123243013766676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A298873 n) (A298872 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A298875.P17788123243013766676

/-! ## A298875.P4378880671300093300

`a(n-1)+A057427(n)*A298871(n)` with `a(0)=2`
-/

namespace A298875.P4378880671300093300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) + A057427 n * A298871 n

end

end A298875.P4378880671300093300

/-! ## A298875.P10911210154634510407

`A328399(∑[2*A298871(n)])`
-/

namespace A298875.P10911210154634510407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A298871 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328399 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A298875.P10911210154634510407

/-! ## A298875.P11649773822386826571

`A328399(∑[A005843(A298871(n))])`
-/

namespace A298875.P11649773822386826571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A298871 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328399 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A298875.P11649773822386826571

/-! ## A298875.P17685614774454031280

`∑[(2-A089309(n²))*A298871(n)]`
-/

namespace A298875.P17685614774454031280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A089309 (n ^ 2)) * A298871 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A298875.P17685614774454031280

/-! ## A298875.P7461764404480206069

`A020725(∑[A298871(n)])`
-/

namespace A298875.P7461764404480206069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298871 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A298875.P7461764404480206069

/-! ## A298875.P15307119158554210471

`ceil(A005408(∑[A298871(n)])/2)`
-/

namespace A298875.P15307119158554210471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298871 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A005408 (∑ j ∈ Finset.range (n + 1), f1 j).toNat : ℚ) / 2⌉

end

end A298875.P15307119158554210471

/-!
# A298877: Solution (a(n)) of the complementary equation in Comments.

The programs for A298877, there is no canonical definition to state claims against.
-/

/-! ## A298877.P5329622083603587514

`∑[∑[comp[A229063(n+1)]]]-1`
-/

namespace A298877.P5329622083603587514
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229063 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A298877.P5329622083603587514

/-! ## A298877.P436420402523427818

`∑[∑[lt[2, A304733(n+2)]]]-1`
-/

namespace A298877.P436420402523427818
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304733 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f3 j : ℤ) < f4 j) n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A298877.P436420402523427818

/-! ## A298877.P11429917601652927004

`∑[comp[A039107(A130624(n)+1)]]+a(n-1)` with `a(0)=1`
-/

namespace A298877.P11429917601652927004
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039107 (A130624 n + 1).toNat

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + a (n - 1)

end

end A298877.P11429917601652927004

/-! ## A298877.P14617907814143972097

`∑[∑[A110656(A151716(4*(n+1)))]]`
-/

namespace A298877.P14617907814143972097
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110656 (A151716 (4 * (n + 1))).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A298877.P14617907814143972097

/-! ## A298877.P9109222925271640057

`∑[∑[A163400(A303963(n+1))]]`
-/

namespace A298877.P9109222925271640057
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163400 (A303963 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A298877.P9109222925271640057

/-!
# A298879: Numbers whose square is not odious.

The programs for A298879, the canonical program `A298879.P12503287432390370405` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A298879 has offset 1).

The definition of A298879 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A298879.P12503287432390370405

`eq[0, A228039(n)]`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A298879

/-- `eq[0, A228039(n)]` -/
def P12503287432390370405.Spec : Prop :=
  ∀ n, (P12503287432390370405.a n : ℤ) = A298879 (n + 1)

theorem P12503287432390370405.correct : P12503287432390370405.Spec := by
  intro n
  simp only [A298879, Nat.add_sub_cancel]

end A298879

/-! ## A298879.P3902780774578345002

`sqrt(A231431(n+1))`
-/

namespace A298879.P3902780774578345002
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A231431 (n + 1) : ℝ)

end

end A298879.P3902780774578345002

namespace A298879

/-- `sqrt(A231431(n+1))` -/
def P3902780774578345002.Spec : Prop :=
  ∀ n, P3902780774578345002.a n = (A298879 (n + 1) : ℝ)

end A298879

/-! ## A298879.P2578710847131630613

`lt[A228039(2*n), 1]`
-/

namespace A298879.P2578710847131630613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228039 (2 * n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A298879.P2578710847131630613

namespace A298879

/-- `lt[A228039(2*n), 1]` -/
def P2578710847131630613.Spec : Prop :=
  ∀ n, (P2578710847131630613.a n : ℤ) = A298879 (n + 1)

end A298879

/-! ## A298879.P8018383284470440018

`comp[A235331(n+1)]`
-/

namespace A298879.P8018383284470440018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235331 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A298879.P8018383284470440018

namespace A298879

/-- `comp[A235331(n+1)]` -/
def P8018383284470440018.Spec : Prop :=
  ∀ n, (P8018383284470440018.a n : ℤ) = A298879 (n + 1)

end A298879

/-! ## A298879.P16007462766093006348

`eq[0, A159918(n)%2]`
-/

namespace A298879.P16007462766093006348
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A159918 n) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A298879.P16007462766093006348

namespace A298879

/-- `eq[0, A159918(n)%2]` -/
def P16007462766093006348.Spec : Prop :=
  ∀ n, (P16007462766093006348.a n : ℤ) = A298879 (n + 1)

end A298879

/-! ## A298879.P3717197114478671552

`eq[1, A000034(A159918(n))]`
-/

namespace A298879.P3717197114478671552
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A159918 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A298879.P3717197114478671552

namespace A298879

/-- `eq[1, A000034(A159918(n))]` -/
def P3717197114478671552.Spec : Prop :=
  ∀ n, (P3717197114478671552.a n : ℤ) = A298879 (n + 1)

end A298879

/-! ## A298879.P745487406329760069

`lt[A010873(A159918(n)²), 1]`
-/

namespace A298879.P745487406329760069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010873 (A159918 n ^ 2).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A298879.P745487406329760069

namespace A298879

/-- `lt[A010873(A159918(n)²), 1]` -/
def P745487406329760069.Spec : Prop :=
  ∀ n, (P745487406329760069.a n : ℤ) = A298879 (n + 1)

end A298879

/-! ## A298879.P10426406158505117059

`eq[1, A001285(A004652(n))]`
-/

namespace A298879.P10426406158505117059
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001285 (A004652 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A298879.P10426406158505117059

namespace A298879

/-- `eq[1, A001285(A004652(n))]` -/
def P10426406158505117059.Spec : Prop :=
  ∀ n, (P10426406158505117059.a n : ℤ) = A298879 (n + 1)

end A298879

/-! ## A298879.P13954451563756278738

`eq[1, A254651(2*n²)]`
-/

namespace A298879.P13954451563756278738
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254651 (2 * n ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A298879.P13954451563756278738

namespace A298879

/-- `eq[1, A254651(2*n²)]` -/
def P13954451563756278738.Spec : Prop :=
  ∀ n, (P13954451563756278738.a n : ℤ) = A298879 (n + 1)

end A298879

/-! ## A298879.P6822353652460209682

`eq[0, A254379(n*2*n)]`
-/

namespace A298879.P6822353652460209682
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254379 (n * (2 * n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A298879.P6822353652460209682

namespace A298879

/-- `eq[0, A254379(n*2*n)]` -/
def P6822353652460209682.Spec : Prop :=
  ∀ n, (P6822353652460209682.a n : ℤ) = A298879 (n + 1)

end A298879

/-!
# A298881: a(0) = 0; for n>0, a(n) = 6*n!.

The programs for A298881, the canonical program `A298881.P14610522045776630021` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A298881 has offset 0).

The definition of A298881 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A298881.P14610522045776630021

`n*a(n-1)` with `a(0)=0, a(1)=6`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A298881

/-- `n*a(n-1)` -/
def P14610522045776630021.Spec : Prop :=
  ∀ n, (P14610522045776630021.a n : ℤ) = A298881 n

theorem P14610522045776630021.correct : P14610522045776630021.Spec := by
  intro n
  simp only [A298881]

end A298881

/-! ## A298881.P13548846263594167027

`lcm(n, 6*n!)`
-/

namespace A298881.P13548846263594167027
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm n (6 * Nat.factorial n)

end

end A298881.P13548846263594167027

namespace A298881

/-- `lcm(n, 6*n!)` -/
def P13548846263594167027.Spec : Prop :=
  ∀ n, (P13548846263594167027.a n : ℤ) = A298881 n

end A298881

/-! ## A298881.P1772485311249671450

`and(6*n!, -n)`
-/

namespace A298881.P1772485311249671450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (6 * Nat.factorial n : ℤ) (-(n : ℤ))

end

end A298881.P1772485311249671450

namespace A298881

/-- `and(6*n!, -n)` -/
def P1772485311249671450.Spec : Prop :=
  ∀ n, P1772485311249671450.a n = A298881 n

end A298881

/-! ## A298881.P15828323866731506406

`6*n!%∑[n!]`
-/

namespace A298881.P15828323866731506406
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * (Nat.factorial n % (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A298881.P15828323866731506406

namespace A298881

/-- `6*n!%∑[n!]` -/
def P15828323866731506406.Spec : Prop :=
  ∀ n, (P15828323866731506406.a n : ℤ) = A298881 n

end A298881

/-! ## A298881.P8209179970099781023

`6*(n!-floor(acot(n)))`
-/

namespace A298881.P8209179970099781023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * ((Nat.factorial n : ℤ) - ⌊SequenceMachineLib.acot (n : ℝ)⌋)

end

end A298881.P8209179970099781023

namespace A298881

/-- `6*(n!-floor(acot(n)))` -/
def P8209179970099781023.Spec : Prop :=
  ∀ n, P8209179970099781023.a n = A298881 n

end A298881

/-! ## A298881.P654176251216729628

`6*n*abs(1-n)!`
-/

namespace A298881.P654176251216729628
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * (n * Nat.factorial |1 - (n : ℤ)|.toNat)

end

end A298881.P654176251216729628

namespace A298881

/-- `6*n*abs(1-n)!` -/
def P654176251216729628.Spec : Prop :=
  ∀ n, (P654176251216729628.a n : ℤ) = A298881 n

end A298881

/-! ## A298881.P7401389046628965362

`n*∏[abs(2-n)+1]`
-/

namespace A298881.P7401389046628965362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - (n : ℤ)| + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A298881.P7401389046628965362

namespace A298881

/-- `n*∏[abs(2-n)+1]` -/
def P7401389046628965362.Spec : Prop :=
  ∀ n, P7401389046628965362.a n = A298881 n

end A298881

/-! ## A298881.P14886526459415642846

`a(n-1)/n^(-1)` with `a(0)=0, a(1)=6`
-/

namespace A298881.P14886526459415642846
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 6] fun n a =>
  a (n - 1) / (n : ℚ) ^ (-1 : ℤ)

end

end A298881.P14886526459415642846

namespace A298881

/-- `a(n-1)/n^(-1)` -/
def P14886526459415642846.Spec : Prop :=
  ∀ n, P14886526459415642846.a n = (A298881 n : ℚ)

end A298881

/-! ## A298881.P4959811023216044249

`A052849(n)+A052578(n)`
-/

namespace A298881.P4959811023216044249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052849 n + A052578 n

end

end A298881.P4959811023216044249

namespace A298881

/-- `A052849(n)+A052578(n)` -/
def P4959811023216044249.Spec : Prop :=
  ∀ n, P4959811023216044249.a n = A298881 n

end A298881

/-! ## A298881.P10337165822292273182

`lcm(A052560(n), A052849(n))`
-/

namespace A298881.P10337165822292273182
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A052560 n) (A052849 n)

end

end A298881.P10337165822292273182

namespace A298881

/-- `lcm(A052560(n), A052849(n))` -/
def P10337165822292273182.Spec : Prop :=
  ∀ n, (P10337165822292273182.a n : ℤ) = A298881 n

end A298881

/-!
# A298882: a(1) = 1, and for any n > 1, if n is the k-th number with least prime factor p, then a(n) is the k-th number with greatest prime factor p.

The programs for A298882, there is no canonical definition to state claims against.
-/

/-! ## A298882.P17323747656458219137

`A207802(A207801(∑[n!/∏{digits}[n, #!]]))`
-/

namespace A298882.P17323747656458219137
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℚ) / ((((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => Nat.factorial x).prod : ℕ) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207802 (A207801 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat).toNat

end

end A298882.P17323747656458219137

/-! ## A298882.P15722324557228369638

`A207802(n!/∏{digits}[n, #!]*A207801(n+1))`
-/

namespace A298882.P15722324557228369638
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207802 (SequenceMachineLib.roundAway ((Nat.factorial n : ℚ) / ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => Nat.factorial x).prod : ℕ) : ℚ) * (A207801 (n + 1) : ℚ))).toNat

end

end A298882.P15722324557228369638

/-! ## A298882.P14960563905511350268

`A207802(A207801(n+1)^(n!/∏{digits}[n, #!]))`
-/

namespace A298882.P14960563905511350268
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207802 (SequenceMachineLib.roundAway ((A207801 (n + 1) : ℝ) ^ ((Nat.factorial n : ℚ) / ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => Nat.factorial x).prod : ℕ) : ℚ) : ℝ))).toNat

end

end A298882.P14960563905511350268

/-! ## A298882.P9012354534654571422

`A207802(C(A269387(n), A055642(n)))`
-/

namespace A298882.P9012354534654571422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207802 (Nat.choose (A269387 n).toNat (A055642 n).toNat)

end

end A298882.P9012354534654571422

/-! ## A298882.P18292667481700751846

`A207802(A055642(n)²*A269387(n))`
-/

namespace A298882.P18292667481700751846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207802 (A055642 n ^ 2 * A269387 n).toNat

end

end A298882.P18292667481700751846

/-!
# A298883: Determinant of n X n matrix whose elements are m(i,j) = prime(i)^j.

The programs for A298883, there is no canonical definition to state claims against.
-/

/-! ## A298883.P1146128267124131037

`A002110(n)*A080358(n)`
-/

namespace A298883.P1146128267124131037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002110 n * A080358 n

end

end A298883.P1146128267124131037

/-! ## A298883.P3851569575597132852

`A080358(n)*A276085(A000040(n+1))`
-/

namespace A298883.P3851569575597132852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080358 n * A276085 (A000040 (n + 1)).toNat

end

end A298883.P3851569575597132852

/-! ## A298883.P1880908507390905813

`A080358(n)*A260443(A000225(n))`
-/

namespace A298883.P1880908507390905813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080358 n * A260443 (A000225 n).toNat

end

end A298883.P1880908507390905813

/-!
# A298884: Number of n X n 0..1 arrays with every element equal to 1, 2, 4, 6 or 8 king-move adjacent elements, with upper left element zero.

The programs for A298884, there is no canonical definition to state claims against.
-/

/-! ## A298884.P15756818266112220696

`A298888(∑[4*n]+1)`
-/

namespace A298884.P15756818266112220696
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298888 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A298884.P15756818266112220696

/-! ## A298884.P2014726650947919838

`record[A298888(Δ[A235355(n)])]`
-/

namespace A298884.P2014726650947919838
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298888 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A298884.P2014726650947919838

/-! ## A298884.P12255208955236278451

`and(-1, A298888(A001844(n)))`
-/

namespace A298884.P12255208955236278451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A298888 (A001844 n).toNat)

end

end A298884.P12255208955236278451

/-! ## A298884.P1451292413020993006

`record[A298888(A330613(n+1))]`
-/

namespace A298884.P1451292413020993006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298888 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A298884.P1451292413020993006

/-! ## A298884.P3946164378646175359

`record[A003982(n)*A298888(n+1)]`
-/

namespace A298884.P3946164378646175359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A298888 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A298884.P3946164378646175359

/-!
# A298885: Number of nX5 0..1 arrays with every element equal to 1, 2, 4, 6 or 8 king-move adjacent elements, with upper left element zero.

The programs for A298885, there is no canonical definition to state claims against.
-/

/-! ## A298885.P6015349360221111584

`A298888(A374005(n+1))`
-/

namespace A298885.P6015349360221111584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298888 (A374005 (n + 1)).toNat

end

end A298885.P6015349360221111584

/-! ## A298885.P18154722642409651469

`A298888(A167499(n+3))`
-/

namespace A298885.P18154722642409651469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298888 (A167499 (n + 3)).toNat

end

end A298885.P18154722642409651469

/-! ## A298885.P1096215137498427579

`A298888(A077169(n+5))`
-/

namespace A298885.P1096215137498427579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298888 (A077169 (n + 5)).toNat

end

end A298885.P1096215137498427579

/-! ## A298885.P5773753699512406236

`A298888(A155212(n)+13)`
-/

namespace A298885.P5773753699512406236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298888 (A155212 n + 13).toNat

end

end A298885.P5773753699512406236

/-! ## A298885.P12176252285322738852

`A298888(A056000(n)+15)`
-/

namespace A298885.P12176252285322738852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298888 (A056000 n + 15).toNat

end

end A298885.P12176252285322738852

/-!
# A298886: Number of nX6 0..1 arrays with every element equal to 1, 2, 4, 6 or 8 king-move adjacent elements, with upper left element zero.

The programs for A298886, there is no canonical definition to state claims against.
-/

/-! ## A298886.P13135449214872441445

`A298888(∑[n+5]+16)`
-/

namespace A298886.P13135449214872441445
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298888 (∑ j ∈ Finset.range (n + 1), f1 j + 16)

end

end A298886.P13135449214872441445

/-! ## A298886.P6568417820755939628

`A298888(A046691(n+3)+10)+char[23]`
-/

namespace A298886.P6568417820755939628
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  23

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298888 (A046691 (n + 3) + 10).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A298886.P6568417820755939628

/-! ## A298886.P8516928056437912989

`A298888(A046691(n+3)+10)%A000108(n+7)`
-/

namespace A298886.P8516928056437912989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A298888 (A046691 (n + 3) + 10).toNat) (A000108 (n + 7))

end

end A298886.P8516928056437912989

/-! ## A298886.P18410564421070532056

`A007318(C(n, 2))*A298888(A046691(n+3)+10)`
-/

namespace A298886.P18410564421070532056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose n 2) * A298888 (A046691 (n + 3) + 10).toNat

end

end A298886.P18410564421070532056

/-! ## A298886.P2313968642541236042

`and(1, A000045(n))!*A298888(A046691(n+3)+10)`
-/

namespace A298886.P2313968642541236042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (Int.land 1 (A000045 n)).toNat : ℤ) * A298888 (A046691 (n + 3) + 10).toNat

end

end A298886.P2313968642541236042

/-!
# A298887: Number of nX7 0..1 arrays with every element equal to 1, 2, 4, 6 or 8 king-move adjacent elements, with upper left element zero.

The programs for A298887, there is no canonical definition to state claims against.
-/

/-! ## A298887.P15872946832468031019

`A298888(A374008(n+1))`
-/

namespace A298887.P15872946832468031019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298888 (A374008 (n + 1)).toNat

end

end A298887.P15872946832468031019

/-! ## A298887.P16614097468324197113

`A298888(A167487(n+5))`
-/

namespace A298887.P16614097468324197113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298888 (A167487 (n + 5)).toNat

end

end A298887.P16614097468324197113

/-! ## A298887.P17283186745673920156

`A298888(A056119(n)+28)`
-/

namespace A298887.P17283186745673920156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298888 (A056119 n + 28).toNat

end

end A298887.P17283186745673920156

/-! ## A298887.P14709852219444541578

`A298888(A167614(n+5)+4)`
-/

namespace A298887.P14709852219444541578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298888 (A167614 (n + 5) + 4).toNat

end

end A298887.P14709852219444541578

/-! ## A298887.P15172286784272871885

`A298888(A000124(n+6)+6)`
-/

namespace A298887.P15172286784272871885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298888 (A000124 (n + 6) + 6).toNat

end

end A298887.P15172286784272871885

/-!
# A298888: T(n,k)=Number of nXk 0..1 arrays with every element equal to 1, 2, 4, 6 or 8 king-move adjacent elements, with upper left element zero.

The programs for A298888, there is no canonical definition to state claims against.
-/

/-! ## A298888.P2177811826942348374

`A298055(n+1)-A275966(A094553(n+1))`
-/

namespace A298888.P2177811826942348374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298055 (n + 1) - A275966 (A094553 (n + 1)).toNat

end

end A298888.P2177811826942348374

/-! ## A298888.P10505512094128133374

`A298055(n+1)+A275966(2*A094553(n+1))`
-/

namespace A298888.P10505512094128133374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298055 (n + 1) + A275966 (2 * A094553 (n + 1)).toNat

end

end A298888.P10505512094128133374

/-! ## A298888.P14269262428920580009

`or(a(A010894(n)), A298055(n+1))` with `a(0)=0`
-/

namespace A298888.P14269262428920580009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  Int.lor (a (A010894 (n + 21)).toNat) (A298055 (n + 1))

end

end A298888.P14269262428920580009

/-! ## A298888.P9537296716618833508

`A298055(n+1)+A002265(A010894(n))`
-/

namespace A298888.P9537296716618833508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298055 (n + 1) + A002265 (A010894 (n + 21)).toNat

end

end A298888.P9537296716618833508

/-! ## A298888.P4318962602135673384

`A298055(n+1)+and(A010894(n), A155212(n))`
-/

namespace A298888.P4318962602135673384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298055 (n + 1) + Int.land (A010894 (n + 21)) (A155212 n)

end

end A298888.P4318962602135673384

/-!
# A298889: Number of n X n 0..1 arrays with every element equal to 2, 3, 5, 6 or 8 king-move adjacent elements, with upper left element zero.

The programs for A298889, there is no canonical definition to state claims against.
-/

/-! ## A298889.P5130347683470382758

`A298895(∑[4*n]+1)`
-/

namespace A298889.P5130347683470382758
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298895 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A298889.P5130347683470382758

/-! ## A298889.P2154018980283390207

`A298895(A001844(n))+char[10]`
-/

namespace A298889.P2154018980283390207
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298895 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A298889.P2154018980283390207

/-! ## A298889.P12206728249264195827

`A347689(n)+A298895(A001844(n))`
-/

namespace A298889.P12206728249264195827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347689 n + A298895 (A001844 n).toNat

end

end A298889.P12206728249264195827

/-! ## A298889.P5541512942763982178

`A298895(A001844(n))%A049209(n)`
-/

namespace A298889.P5541512942763982178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A298895 (A001844 n).toNat) (A049209 n)

end

end A298889.P5541512942763982178

/-! ## A298889.P7351239207873265636

`gcd(A107846(n), A298895(A001844(n)))`
-/

namespace A298889.P7351239207873265636
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A107846 n) (A298895 (A001844 n).toNat)

end

end A298889.P7351239207873265636

/-!
# A298890: Number of nX3 0..1 arrays with every element equal to 2, 3, 5, 6 or 8 king-move adjacent elements, with upper left element zero.

The programs for A298890, there is no canonical definition to state claims against.
-/

/-! ## A298890.P679109105421572542

`A298895(∑[n+2]+4)`
-/

namespace A298890.P679109105421572542
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298895 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A298890.P679109105421572542

/-! ## A298890.P13048563416829400310

`A298895(A167614(n+1))+char[21]`
-/

namespace A298890.P13048563416829400310
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  21

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298895 (A167614 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A298890.P13048563416829400310

/-! ## A298890.P4056025878206468175

`A298895(A027379(n)+6)%(6^n)`
-/

namespace A298890.P4056025878206468175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A298895 (A027379 n + 6).toNat) (6 ^ n : ℤ)

end

end A298890.P4056025878206468175

/-! ## A298890.P2780367358385091167

`A298895(A167614(n+1))%A002409(n)`
-/

namespace A298890.P2780367358385091167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A298895 (A167614 (n + 1)).toNat) (A002409 n)

end

end A298890.P2780367358385091167

/-! ## A298890.P5197502046794358776

`gcd(A217156(n+1), A298895(A167614(n+1)))`
-/

namespace A298890.P5197502046794358776
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A217156 (n + 1)) (A298895 (A167614 (n + 1)).toNat)

end

end A298890.P5197502046794358776

/-!
# A298891: Number of nX4 0..1 arrays with every element equal to 2, 3, 5, 6 or 8 king-move adjacent elements, with upper left element zero.

The programs for A298891, there is no canonical definition to state claims against.
-/

/-! ## A298891.P12588451592260990442

`A298895(∑[n+3]+7)`
-/

namespace A298891.P12588451592260990442
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298895 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A298891.P12588451592260990442

/-! ## A298891.P13933519400350866549

`record[A298895(A019304(n))]`
-/

namespace A298891.P13933519400350866549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298895 (A019304 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A298891.P13933519400350866549

/-! ## A298891.P1751868114853411632

`A298895(A027379(n+2))+and(2, char[2])`
-/

namespace A298891.P1751868114853411632
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298895 (A027379 (n + 2)).toNat + (Nat.land 2 (if ∃ j, f1 j = n then 1 else 0) : ℤ)

end

end A298891.P1751868114853411632

/-! ## A298891.P18415357265412813887

`record[A010054(n+4)*A298895(n+1)]`
-/

namespace A298891.P18415357265412813887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (n + 4) * A298895 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A298891.P18415357265412813887

/-! ## A298891.P16295164980659120551

`A298895(Δ[A034857(n+1)])%(n+2)!`
-/

namespace A298891.P16295164980659120551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034857 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A298895 (f1 (n + 1) - f1 n).toNat) (Nat.factorial (n + 2) : ℤ)

end

end A298891.P16295164980659120551

/-!
# A298892: Number of nX5 0..1 arrays with every element equal to 2, 3, 5, 6 or 8 king-move adjacent elements, with upper left element zero.

The programs for A298892, there is no canonical definition to state claims against.
-/

/-! ## A298892.P7104496391479337103

`A298895(∑[n+4]+11)`
-/

namespace A298892.P7104496391479337103
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298895 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A298892.P7104496391479337103

/-! ## A298892.P4065419493703966536

`A298895(A000124(n+4)+4)+char[44]`
-/

namespace A298892.P4065419493703966536
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  44

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298895 (A000124 (n + 4) + 4).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A298892.P4065419493703966536

/-! ## A298892.P2771067959771801454

`A007318(C(n, 2))*A298895(A000124(n+4)+4)`
-/

namespace A298892.P2771067959771801454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose n 2) * A298895 (A000124 (n + 4) + 4).toNat

end

end A298892.P2771067959771801454

/-! ## A298892.P10794929086349564159

`A007318(and(1, -n))*A298895(A000124(n+4)+4)`
-/

namespace A298892.P10794929086349564159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Int.land 1 (-(n : ℤ))).toNat * A298895 (A000124 (n + 4) + 4).toNat

end

end A298892.P10794929086349564159

/-! ## A298892.P9000783509551007365

`A014963(4*n+2)*A298895(A000124(n+4)+4)`
-/

namespace A298892.P9000783509551007365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (4 * n + 2) * A298895 (A000124 (n + 4) + 4).toNat

end

end A298892.P9000783509551007365

/-!
# A298893: Number of nX6 0..1 arrays with every element equal to 2, 3, 5, 6 or 8 king-move adjacent elements, with upper left element zero.

The programs for A298893, there is no canonical definition to state claims against.
-/

/-! ## A298893.P8013299037566113027

`A298895(∑[n+5]+16)`
-/

namespace A298893.P8013299037566113027
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298895 (∑ j ∈ Finset.range (n + 1), f1 j + 16)

end

end A298893.P8013299037566113027

/-! ## A298893.P3088996115750390413

`lcm(A033999(n), A298895(A052905(n+3)))`
-/

namespace A298893.P3088996115750390413
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A298895 (A052905 (n + 3)).toNat)

end

end A298893.P3088996115750390413

/-! ## A298893.P18205309883889070151

`A298895(A052905(n+3))%A150223(n+3)`
-/

namespace A298893.P18205309883889070151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A298895 (A052905 (n + 3)).toNat) (A150223 (n + 3))

end

end A298893.P18205309883889070151

/-!
# A298894: Number of nX7 0..1 arrays with every element equal to 2, 3, 5, 6 or 8 king-move adjacent elements, with upper left element zero.

The programs for A298894, there is no canonical definition to state claims against.
-/

/-! ## A298894.P3139074113577188867

`A298895(A374008(n+1))`
-/

namespace A298894.P3139074113577188867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298895 (A374008 (n + 1)).toNat

end

end A298894.P3139074113577188867

/-! ## A298894.P2216306679989405644

`A298895(A056119(n)+28)`
-/

namespace A298894.P2216306679989405644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298895 (A056119 n + 28).toNat

end

end A298894.P2216306679989405644

/-! ## A298894.P6943459106366271182

`A298895(eq[11, A066657(n)])`
-/

namespace A298894.P6943459106366271182
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298895 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A298894.P6943459106366271182

/-! ## A298894.P12889561219600716851

`A298895(A167614(n+5)+4)`
-/

namespace A298894.P12889561219600716851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298895 (A167614 (n + 5) + 4).toNat

end

end A298894.P12889561219600716851

/-! ## A298894.P6155521502803550078

`A298895(A133263(n+6)+5)`
-/

namespace A298894.P6155521502803550078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298895 (A133263 (n + 6) + 5).toNat

end

end A298894.P6155521502803550078

/-!
# A298895: T(n,k)=Number of nXk 0..1 arrays with every element equal to 2, 3, 5, 6 or 8 king-move adjacent elements, with upper left element zero.

The programs for A298895, there is no canonical definition to state claims against.
-/

/-! ## A298895.P10352403892300581462

`A298259(n+1)+A079978(A157153(n))`
-/

namespace A298895.P10352403892300581462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298259 (n + 1) + A079978 (A157153 n).toNat

end

end A298895.P10352403892300581462

/-! ## A298895.P3216042909400111330

`A298930(n+1)+A079978(A157153(n))`
-/

namespace A298895.P3216042909400111330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298930 (n + 1) + A079978 (A157153 n).toNat

end

end A298895.P3216042909400111330

/-! ## A298895.P13982209836187152322

`A298259(n+1)+A298139(A257493(n))`
-/

namespace A298895.P13982209836187152322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298259 (n + 1) + A298139 (A257493 n).toNat

end

end A298895.P13982209836187152322

/-! ## A298895.P2876056303338432620

`A298930(n+1)+A298139(A257493(n))`
-/

namespace A298895.P2876056303338432620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298930 (n + 1) + A298139 (A257493 n).toNat

end

end A298895.P2876056303338432620

/-! ## A298895.P17637942902188466206

`A298930(n+1)+A069859(A000124(A217156(n+1)))`
-/

namespace A298895.P17637942902188466206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298930 (n + 1) + A069859 (A000124 (A217156 (n + 1)).toNat).toNat

end

end A298895.P17637942902188466206

/-!
# A298896: Number of n X n 0..1 arrays with every element equal to 3, 4, 5, 6 or 8 king-move adjacent elements, with upper left element zero.

The programs for A298896, there is no canonical definition to state claims against.
-/

/-! ## A298896.P11961987624429850007

`A298902(∑[4*n]+1)`
-/

namespace A298896.P11961987624429850007
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298902 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A298896.P11961987624429850007

/-! ## A298896.P6605707007317616039

`A298902(A001844(n))+char[10]`
-/

namespace A298896.P6605707007317616039
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298902 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A298896.P6605707007317616039

/-! ## A298896.P5263896136485745384

`A326688(n)+A298902(A001844(n))`
-/

namespace A298896.P5263896136485745384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326688 n + A298902 (A001844 n).toNat

end

end A298896.P5263896136485745384

/-! ## A298896.P17280567806446528297

`or(A063524(n), A298902(A001844(n)))`
-/

namespace A298896.P17280567806446528297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A063524 n) (A298902 (A001844 n).toNat)

end

end A298896.P17280567806446528297

/-! ## A298896.P13464065827330580878

`or(A107846(n), A298902(A001844(n)))`
-/

namespace A298896.P13464065827330580878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A107846 n) (A298902 (A001844 n).toNat)

end

end A298896.P13464065827330580878

/-!
# A298897: Number of nX3 0..1 arrays with every element equal to 3, 4, 5, 6 or 8 king-move adjacent elements, with upper left element zero.

The programs for A298897, the canonical program `A298897.P16576007841502580327` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A298897 has offset 1).

The definition of A298897 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 335 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A298897.P16576007841502580327

`2*a(n-1)+a(n-2)-2*a(n-3)+a(n-4)-2*a(n-5)` with `a(0)=0, a(1)=1, a(2)=1, a(3)=2, a(4)=3`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A298897

/-- `2*a(n-1)+a(n-2)-2*a(n-3)+a(n-4)-2*a(n-5)` -/
def P16576007841502580327.Spec : Prop :=
  ∀ n, P16576007841502580327.a n = A298897 (n + 1)

theorem P16576007841502580327.correct : P16576007841502580327.Spec := by
  intro n
  simp only [A298897, Nat.add_sub_cancel]

end A298897

/-! ## A298897.P17564429163586094274

`A298902(∑[n+2]+4)`
-/

namespace A298897.P17564429163586094274
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298902 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A298897.P17564429163586094274

namespace A298897

/-- `A298902(∑[n+2]+4)` -/
def P17564429163586094274.Spec : Prop :=
  ∀ n, P17564429163586094274.a n = A298897 (n + 1)

end A298897

/-! ## A298897.P135104154947654076

`A298902(A167614(n+1))+char[19]`
-/

namespace A298897.P135104154947654076
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298902 (A167614 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A298897.P135104154947654076

namespace A298897

/-- `A298902(A167614(n+1))+char[19]` -/
def P135104154947654076.Spec : Prop :=
  ∀ n, P135104154947654076.a n = A298897 (n + 1)

end A298897

/-! ## A298897.P14135523341111645177

`A298902(A000124(n+2)+2)%floor(5^(n/2))`
-/

namespace A298897.P14135523341111645177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A298902 (A000124 (n + 2) + 2).toNat) ⌊(5 : ℝ) ^ ((n : ℚ) / 2 : ℝ)⌋

end

end A298897.P14135523341111645177

namespace A298897

/-- `A298902(A000124(n+2)+2)%floor(5^(n/2))` -/
def P14135523341111645177.Spec : Prop :=
  ∀ n, P14135523341111645177.a n = A298897 (n + 1)

end A298897

/-! ## A298897.P2052874117459426521

`A298902(A167614(n+1))%A007727(n)`
-/

namespace A298897.P2052874117459426521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A298902 (A167614 (n + 1)).toNat) (A007727 n)

end

end A298897.P2052874117459426521

namespace A298897

/-- `A298902(A167614(n+1))%A007727(n)` -/
def P2052874117459426521.Spec : Prop :=
  ∀ n, P2052874117459426521.a n = A298897 (n + 1)

end A298897

/-!
# A298898: Number of nX4 0..1 arrays with every element equal to 3, 4, 5, 6 or 8 king-move adjacent elements, with upper left element zero.

The programs for A298898, there is no canonical definition to state claims against.
-/

/-! ## A298898.P15249955067865893820

`A298902(∑[n+3]+7)`
-/

namespace A298898.P15249955067865893820
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298902 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A298898.P15249955067865893820

/-! ## A298898.P16233697138442173029

`lcm(2, A298902(A052905(n)+9))`
-/

namespace A298898.P16233697138442173029
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A298902 (A052905 n + 9).toNat)

end

end A298898.P16233697138442173029

/-! ## A298898.P4016271338450875214

`char[A007318(n)]*A298902(A052905(n)+9)`
-/

namespace A298898.P4016271338450875214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A298902 (A052905 n + 9).toNat

end

end A298898.P4016271338450875214

/-! ## A298898.P8976785318413960563

`A298902(A374004(n+1))%A198174(n+1)`
-/

namespace A298898.P8976785318413960563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A298902 (A374004 (n + 1)).toNat) (A198174 (n + 1))

end

end A298898.P8976785318413960563

/-! ## A298898.P10717141478848521074

`A298902(A052905(n)+9)%A000108(n+2)`
-/

namespace A298898.P10717141478848521074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A298902 (A052905 n + 9).toNat) (A000108 (n + 2))

end

end A298898.P10717141478848521074

/-!
# A298899: Number of nX5 0..1 arrays with every element equal to 3, 4, 5, 6 or 8 king-move adjacent elements, with upper left element zero.

The programs for A298899, there is no canonical definition to state claims against.
-/

/-! ## A298899.P15609528350468648936

`A298902(A374005(n+1))`
-/

namespace A298899.P15609528350468648936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298902 (A374005 (n + 1)).toNat

end

end A298899.P15609528350468648936

/-! ## A298899.P7616618387781681018

`A298902(A167499(n+3))`
-/

namespace A298899.P7616618387781681018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298902 (A167499 (n + 3)).toNat

end

end A298899.P7616618387781681018

/-! ## A298899.P2510331422165626366

`A298902(A155212(n)+13)`
-/

namespace A298899.P2510331422165626366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298902 (A155212 n + 13).toNat

end

end A298899.P2510331422165626366

/-! ## A298899.P9945646175498731551

`A298902(A056000(n)+15)`
-/

namespace A298899.P9945646175498731551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298902 (A056000 n + 15).toNat

end

end A298899.P9945646175498731551

/-! ## A298899.P12137996672923763907

`A298902(eq[7, A066657(n)])`
-/

namespace A298899.P12137996672923763907
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298902 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A298899.P12137996672923763907

