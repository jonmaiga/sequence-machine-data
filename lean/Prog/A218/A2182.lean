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
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
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
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C007
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
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A218200: Hilltop maps: number of n X 2 binary arrays indicating the locations of corresponding elements not exceeded by any horizontal or vertical neighbor in a random 0..2 n X 2 array.

The programs for A218200, there is no canonical definition to state claims against.
-/

/-! ## A218200.P5293968425252381786

`A219063(∑[n+2])`
-/

namespace A218200.P5293968425252381786
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219063 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A218200.P5293968425252381786

/-! ## A218200.P9211127070407167897

`A218206(∑[n+1]+2)`
-/

namespace A218200.P9211127070407167897
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218206 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A218200.P9211127070407167897

/-! ## A218200.P7778226700089581389

`record[A219063(n+2)-A269214(n+3)]`
-/

namespace A218200.P7778226700089581389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219063 (n + 2) - A269214 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A218200.P7778226700089581389

/-! ## A218200.P18169996867339000329

`record[A219063(n+2)/A219063(n+3)]`
-/

namespace A218200.P18169996867339000329
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A219063 (n + 2) : ℚ) / (A219063 (n + 3) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A218200.P18169996867339000329

/-! ## A218200.P9403018090049855655

`record[A218206(Δ[A003453(n+5)])]`
-/

namespace A218200.P9403018090049855655
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218206 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A218200.P9403018090049855655

/-!
# A218201: Hilltop maps: number of nX3 binary arrays indicating the locations of corresponding elements not exceeded by any horizontal or vertical neighbor in a random 0..2 nX3 array.

The programs for A218201, there is no canonical definition to state claims against.
-/

/-! ## A218201.P7841956857307147017

`A218206(∑[n+2]+4)`
-/

namespace A218201.P7841956857307147017
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218206 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A218201.P7841956857307147017

/-! ## A218201.P16948329056191188731

`or(1, A218206(A167614(n+1)))`
-/

namespace A218201.P16948329056191188731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A218206 (A167614 (n + 1)).toNat)

end

end A218201.P16948329056191188731

/-! ## A218201.P343147515366960271

`A326461(n)+A218206(A000124(n+2)+2)`
-/

namespace A218201.P343147515366960271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326461 n + A218206 (A000124 (n + 2) + 2).toNat

end

end A218201.P343147515366960271

/-! ## A218201.P2126896453837363138

`A218206(A167614(n+1))%A253150(n+2)`
-/

namespace A218201.P2126896453837363138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A218206 (A167614 (n + 1)).toNat) (A253150 (n + 2))

end

end A218201.P2126896453837363138

/-! ## A218201.P17768308091131592250

`A014963(A013613(n))*A218206(A000124(n+2)+2)`
-/

namespace A218201.P17768308091131592250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A013613 n).toNat * A218206 (A000124 (n + 2) + 2).toNat

end

end A218201.P17768308091131592250

/-!
# A218202: Hilltop maps: number of n X 4 binary arrays indicating the locations of corresponding elements not exceeded by any horizontal or vertical neighbor in a random 0..2 n X 4 array.

The programs for A218202, there is no canonical definition to state claims against.
-/

/-! ## A218202.P12625021674290601364

`A218206(A374004(n+1))`
-/

namespace A218202.P12625021674290601364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218206 (A374004 (n + 1)).toNat

end

end A218202.P12625021674290601364

/-! ## A218202.P16824002756228286231

`A218206(A141214(n)+7)`
-/

namespace A218202.P16824002756228286231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218206 (A141214 n + 7).toNat

end

end A218202.P16824002756228286231

/-! ## A218202.P7143348117363797476

`A218206(A052905(n)+9)`
-/

namespace A218202.P7143348117363797476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218206 (A052905 n + 9).toNat

end

end A218202.P7143348117363797476

/-! ## A218202.P1487410803034857338

`A218206(A055999(n)+10)`
-/

namespace A218202.P1487410803034857338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218206 (A055999 n + 10).toNat

end

end A218202.P1487410803034857338

/-! ## A218202.P13895349713573817051

`A218206(Δ[A005286(n)]+5)`
-/

namespace A218202.P13895349713573817051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005286 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218206 (f1 (n + 1) - f1 n + 5).toNat

end

end A218202.P13895349713573817051

/-!
# A218203: Hilltop maps: number of nX5 binary arrays indicating the locations of corresponding elements not exceeded by any horizontal or vertical neighbor in a random 0..2 nX5 array.

The programs for A218203, there is no canonical definition to state claims against.
-/

/-! ## A218203.P3900011549803340303

`A218206(A374005(n+1))`
-/

namespace A218203.P3900011549803340303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218206 (A374005 (n + 1)).toNat

end

end A218203.P3900011549803340303

/-! ## A218203.P13562528037877789938

`A218206(A167499(n+3))`
-/

namespace A218203.P13562528037877789938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218206 (A167499 (n + 3)).toNat

end

end A218203.P13562528037877789938

/-! ## A218203.P2671168417979855931

`A218206(A155212(n)+13)`
-/

namespace A218203.P2671168417979855931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218206 (A155212 n + 13).toNat

end

end A218203.P2671168417979855931

/-! ## A218203.P6752796254932368478

`A218206(A056000(n)+15)`
-/

namespace A218203.P6752796254932368478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218206 (A056000 n + 15).toNat

end

end A218203.P6752796254932368478

/-! ## A218203.P4743280613216748011

`A218206(eq[6, A131818(n+1)])`
-/

namespace A218203.P4743280613216748011
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218206 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A218203.P4743280613216748011

/-!
# A218204: Hilltop maps: number of nX6 binary arrays indicating the locations of corresponding elements not exceeded by any horizontal or vertical neighbor in a random 0..2 nX6 array.

The programs for A218204, there is no canonical definition to state claims against.
-/

/-! ## A218204.P17782311977963996135

`A218206(A374007(n+1))`
-/

namespace A218204.P17782311977963996135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218206 (A374007 (n + 1)).toNat

end

end A218204.P17782311977963996135

/-! ## A218204.P13641285412096815066

`A218206(A052905(n+3))`
-/

namespace A218204.P13641285412096815066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218206 (A052905 (n + 3)).toNat

end

end A218204.P13641285412096815066

/-! ## A218204.P10027618857517192264

`A218206(eq[3, A219347(n)])`
-/

namespace A218204.P10027618857517192264
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218206 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A218204.P10027618857517192264

/-! ## A218204.P4288950333005136984

`A218206(eq[5, A193592(n)])`
-/

namespace A218204.P4288950333005136984
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218206 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A218204.P4288950333005136984

/-! ## A218204.P3248870522350472767

`A218206(eq[6, A200370(n+1)])`
-/

namespace A218204.P3248870522350472767
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218206 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A218204.P3248870522350472767

/-!
# A218205: Hilltop maps: number of nX7 binary arrays indicating the locations of corresponding elements not exceeded by any horizontal or vertical neighbor in a random 0..2 nX7 array.

The programs for A218205, there is no canonical definition to state claims against.
-/

/-! ## A218205.P5676454427647130626

`A218206(A374008(n+1))`
-/

namespace A218205.P5676454427647130626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218206 (A374008 (n + 1)).toNat

end

end A218205.P5676454427647130626

/-! ## A218205.P3064062063641476889

`A218206(eq[11, A066657(n)])`
-/

namespace A218205.P3064062063641476889
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218206 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A218205.P3064062063641476889

/-! ## A218205.P18225983959492585831

`A218206(A167499(n+5)+2)`
-/

namespace A218205.P18225983959492585831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218206 (A167499 (n + 5) + 2).toNat

end

end A218205.P18225983959492585831

/-! ## A218205.P3432386293051912405

`A218206(A034856(n+5)+9)`
-/

namespace A218205.P3432386293051912405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218206 (A034856 (n + 5) + 9).toNat

end

end A218205.P3432386293051912405

/-! ## A218205.P4183440741844430400

`A218206(A155212(n+2)+15)`
-/

namespace A218205.P4183440741844430400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218206 (A155212 (n + 2) + 15).toNat

end

end A218205.P4183440741844430400

/-!
# A218206: T(n,k)=Hilltop maps: number of nXk binary arrays indicating the locations of corresponding elements not exceeded by any horizontal or vertical neighbor in a random 0..2 nXk array.

The programs for A218206, there is no canonical definition to state claims against.
-/

/-! ## A218206.P2566168017751897280

`2*A218233(A187829(n+1))-A218319(n+1)`
-/

namespace A218206.P2566168017751897280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A218233 (A187829 (n + 1)).toNat - A218319 (n + 1)

end

end A218206.P2566168017751897280

/-! ## A218206.P15698381146312487919

`A005843(A218233(n+1))-A218319(A187829(n+1))`
-/

namespace A218206.P15698381146312487919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A218233 (n + 1)).toNat - A218319 (A187829 (n + 1)).toNat

end

end A218206.P15698381146312487919

/-! ## A218206.P16562289927549949272

`A218233(A187829(n+1))+A218233(n+1)-A218319(n+1)`
-/

namespace A218206.P16562289927549949272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218233 (A187829 (n + 1)).toNat + (A218233 (n + 1) - A218319 (n + 1))

end

end A218206.P16562289927549949272

/-! ## A218206.P11617036836865221843

`A227442(n+1)-A038573(A182922(n))`
-/

namespace A218206.P11617036836865221843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227442 (n + 1) - A038573 (A182922 n).toNat

end

end A218206.P11617036836865221843

/-! ## A218206.P11175980488213548

`A218233(n+1)-A269166(A037965(n))`
-/

namespace A218206.P11175980488213548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218233 (n + 1) - A269166 (A037965 n).toNat

end

end A218206.P11175980488213548

/-!
# A218207: Number of n-digit primes of the form (k-1)^2 + k^2.

The programs for A218207, there is no canonical definition to state claims against.
-/

/-! ## A218207.P2464480900164010823

`∪[Δ[A218208(n+1)], A281570(n+1)]`
-/

namespace A218207.P2464480900164010823
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218208 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281570 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

end

end A218207.P2464480900164010823

/-! ## A218207.P15140821829614007759

`∑[∑[A071487(A000262(n))]]`
-/

namespace A218207.P15140821829614007759
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071487 (A000262 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A218207.P15140821829614007759

/-! ## A218207.P3559192562098380711

`∑[A276625(A316500(n+3))]`
-/

namespace A218207.P3559192562098380711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276625 (A316500 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A218207.P3559192562098380711

/-!
# A218208: Number of primes up to 10^n that are of the form (k-1)^2 + k^2.

The programs for A218208, there is no canonical definition to state claims against.
-/

/-! ## A218208.P14962367068727215631

`∑[A218207(n+1)]`
-/

namespace A218208.P14962367068727215631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218207 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A218208.P14962367068727215631

/-! ## A218208.P3409328588974037095

`∑[record[A218207(A000174(n))]]`
-/

namespace A218208.P3409328588974037095
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218207 (A000174 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A218208.P3409328588974037095

/-! ## A218208.P1383797653095663533

`∑[record[A218207(A020986(n))]]`
-/

namespace A218208.P1383797653095663533
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218207 (A020986 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A218208.P1383797653095663533

/-! ## A218208.P16791665850642587950

`∑[record[A218207(A028920(n))]]`
-/

namespace A218208.P16791665850642587950
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218207 (A028920 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A218208.P16791665850642587950

/-! ## A218208.P11246206911981272747

`∑[record[A218207(A038568(n))]]`
-/

namespace A218208.P11246206911981272747
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218207 (A038568 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A218208.P11246206911981272747

/-!
# A218209: Number of n-digit primes that are of the form (k-2)^2 + (k-1)^2 + k^2.

The programs for A218209, there is no canonical definition to state claims against.
-/

/-! ## A218209.P14028368936892273126

`A156906(n)+A001462(A268039(n+1))`
-/

namespace A218209.P14028368936892273126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156906 n + A001462 (A268039 (n + 1)).toNat

end

end A218209.P14028368936892273126

/-!
# A218210: Number of primes up to 10^n that are of the form (k-2)^2 + (k-1)^2 + k^2.

The programs for A218210, there is no canonical definition to state claims against.
-/

/-! ## A218210.P2561162254873077229

`∑[A218209(n+1)]`
-/

namespace A218210.P2561162254873077229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218209 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A218210.P2561162254873077229

/-! ## A218210.P11569720706607082562

`∑[A156906(n)+A001462(A268039(n+1))]`
-/

namespace A218210.P11569720706607082562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156906 n + A001462 (A268039 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A218210.P11569720706607082562

/-! ## A218210.P7373918052692635158

`A072649(n+1)+A008620(A222253(ceil((n+8)*3^(n-2)))-(3^n+3)*n/6)`
-/

namespace A218210.P7373918052692635158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072649 (n + 1) + A008620 (SequenceMachineLib.roundAway ((A222253 ⌈(n + 8 : ℚ) * (3 : ℚ) ^ ((n : ℤ) - 2 : ℤ)⌉.toNat : ℚ) - (3 ^ n + 3 : ℚ) * ((n : ℚ) / 6))).toNat

end

end A218210.P7373918052692635158

/-!
# A218211: Number of n-digit primes that are the sum of six consecutive squares of nonnegative numbers.

The programs for A218211, there is no canonical definition to state claims against.
-/

/-! ## A218211.P17957710027864945190

`Δ[A218212(round(acot(n)+n))]`
-/

namespace A218211.P17957710027864945190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218212 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A218211.P17957710027864945190

/-! ## A218211.P15646862579444249080

`Δ[A218212(round(sqrt(n²+1)))]`
-/

namespace A218211.P15646862579444249080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218212 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A218211.P15646862579444249080

/-! ## A218211.P4922154910393898240

`abs(Δ[A218212(A028310(n))])`
-/

namespace A218211.P4922154910393898240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218212 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A218211.P4922154910393898240

/-! ## A218211.P10305040056878519074

`A218212(n+1)-A218212(round(acot(n)+n))`
-/

namespace A218211.P10305040056878519074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218212 (n + 1) - A218212 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

end

end A218211.P10305040056878519074

/-! ## A218211.P388564588387255347

`A218212(n+1)-A218212(round(sqrt(n²+1)))`
-/

namespace A218211.P388564588387255347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218212 (n + 1) - A218212 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

end

end A218211.P388564588387255347

/-!
# A218212: Number of primes up to 10^n that are the sum of six consecutive squares of nonnegative numbers.

The programs for A218212, there is no canonical definition to state claims against.
-/

/-! ## A218212.P6842009154693098417

`∑[A218211(n+1)]`
-/

namespace A218212.P6842009154693098417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218211 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A218212.P6842009154693098417

/-!
# A218213: Number of n-digit primes representable as sums of consecutive squares.

The programs for A218213, there is no canonical definition to state claims against.
-/

/-! ## A218213.P2803772319445437777

`∪[Δ[A218214(n+1)], A281570(n+1)]`
-/

namespace A218213.P2803772319445437777
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218214 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281570 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

end

end A218213.P2803772319445437777

/-! ## A218213.P4855989731865064462

`record[A238746(A036969(n+1))]`
-/

namespace A218213.P4855989731865064462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238746 (A036969 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A218213.P4855989731865064462

/-!
# A218214: Number of primes up to 10^n representable as sums of consecutive squares.

The programs for A218214, there is no canonical definition to state claims against.
-/

/-! ## A218214.P13747532081187166002

`∑[A218213(n+1)]`
-/

namespace A218214.P13747532081187166002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218213 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A218214.P13747532081187166002

/-! ## A218214.P3010245594062991665

`∑[record[A218213(A000174(n))]]`
-/

namespace A218214.P3010245594062991665
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218213 (A000174 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A218214.P3010245594062991665

/-! ## A218214.P6133345635995297119

`∑[record[A218213(A020986(n))]]`
-/

namespace A218214.P6133345635995297119
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218213 (A020986 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A218214.P6133345635995297119

/-! ## A218214.P6148668905207045617

`∑[record[A218213(A028920(n))]]`
-/

namespace A218214.P6148668905207045617
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218213 (A028920 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A218214.P6148668905207045617

/-! ## A218214.P10423511476632858373

`∑[record[A218213(A051340(n))]]`
-/

namespace A218214.P10423511476632858373
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218213 (A051340 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A218214.P10423511476632858373

/-!
# A218215: Product of the nonzero digits (in base 10) of n^4.

The programs for A218215, the canonical program `A218215.P5384026130436162068` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A218215 has offset 1).

The definition of A218215 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A218215.P5384026130436162068

`∏{digits}[(n+1)^4, gcd(#, #!²)]`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A218215

/-- `∏{digits}[(n+1)^4, gcd(#, #!²)]` -/
def P5384026130436162068.Spec : Prop :=
  ∀ n, (P5384026130436162068.a n : ℤ) = A218215 (n + 1)

theorem P5384026130436162068.correct : P5384026130436162068.Spec := by
  intro n
  simp only [A218215, Nat.add_sub_cancel]

end A218215

/-! ## A218215.P743776551305313785

`∏{digits}[(n+1)²², floor(acot(#)+#)]`
-/

namespace A218215.P743776551305313785
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => ⌊SequenceMachineLib.acot (x : ℝ) + (x : ℝ)⌋).prod

end

end A218215.P743776551305313785

namespace A218215

/-- `∏{digits}[(n+1)²², floor(acot(#)+#)]` -/
def P743776551305313785.Spec : Prop :=
  ∀ n, P743776551305313785.a n = A218215 (n + 1)

end A218215

/-! ## A218215.P13658606857169924528

`∏{digits}[(n+1)^4, A028310(#)]`
-/

namespace A218215.P13658606857169924528
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A028310 x).prod

end

end A218215.P13658606857169924528

namespace A218215

/-- `∏{digits}[(n+1)^4, A028310(#)]` -/
def P13658606857169924528.Spec : Prop :=
  ∀ n, P13658606857169924528.a n = A218215 (n + 1)

end A218215

/-! ## A218215.P1357683821883475752

`∏{digits}[(n+1)^4, A219209(#)]`
-/

namespace A218215.P1357683821883475752
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A219209 x).prod

end

end A218215.P1357683821883475752

namespace A218215

/-- `∏{digits}[(n+1)^4, A219209(#)]` -/
def P1357683821883475752.Spec : Prop :=
  ∀ n, P1357683821883475752.a n = A218215 (n + 1)

end A218215

/-! ## A218215.P2892139460859137041

`∏{digits}[(n+1)²², A051801(#)]`
-/

namespace A218215.P2892139460859137041
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A051801 x).prod

end

end A218215.P2892139460859137041

namespace A218215

/-- `∏{digits}[(n+1)²², A051801(#)]` -/
def P2892139460859137041.Spec : Prop :=
  ∀ n, P2892139460859137041.a n = A218215 (n + 1)

end A218215

/-! ## A218215.P9958242802664213339

`∏{digits}[(n+1)²², A000007(#)+#]`
-/

namespace A218215.P9958242802664213339
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A000007 x + (x : ℤ)).prod

end

end A218215.P9958242802664213339

namespace A218215

/-- `∏{digits}[(n+1)²², A000007(#)+#]` -/
def P9958242802664213339.Spec : Prop :=
  ∀ n, P9958242802664213339.a n = A218215 (n + 1)

end A218215

/-! ## A218215.P10231471598039653321

`∏{digits}[A002108(n+1), A033930(#)]`
-/

namespace A218215.P10231471598039653321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002108 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A033930 x).prod

end

end A218215.P10231471598039653321

namespace A218215

/-- `∏{digits}[A002108(n+1), A033930(#)]` -/
def P10231471598039653321.Spec : Prop :=
  ∀ n, P10231471598039653321.a n = A218215 (n + 1)

end A218215

/-! ## A218215.P11763316643781929886

`∏{digits}[A002108(n+1), A114800(#)]`
-/

namespace A218215.P11763316643781929886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002108 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A114800 x).prod

end

end A218215.P11763316643781929886

namespace A218215

/-- `∏{digits}[A002108(n+1), A114800(#)]` -/
def P11763316643781929886.Spec : Prop :=
  ∀ n, P11763316643781929886.a n = A218215 (n + 1)

end A218215

/-! ## A218215.P15347920710870558765

`∏{digits}[(n+1)²², A000005(A011782(#))]`
-/

namespace A218215.P15347920710870558765
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A000005 (A011782 x).toNat).prod

end

end A218215.P15347920710870558765

namespace A218215

/-- `∏{digits}[(n+1)²², A000005(A011782(#))]` -/
def P15347920710870558765.Spec : Prop :=
  ∀ n, P15347920710870558765.a n = A218215 (n + 1)

end A218215

/-! ## A218215.P4194797165588039308

`A218072((n+1)²)`
-/

namespace A218215.P4194797165588039308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218072 ((n + 1) ^ 2)

end

end A218215.P4194797165588039308

namespace A218215

/-- `A218072((n+1)²)` -/
def P4194797165588039308.Spec : Prop :=
  ∀ n, P4194797165588039308.a n = A218215 (n + 1)

end A218215

/-!
# A218216: G.f.: Sum_{n>=0} x^n * Sum_{k=0..n} binomial(n,k)^4 * x^k*(1-x)^(n-k).

The programs for A218216, there is no canonical definition to state claims against.
-/

/-! ## A218216.P9636854294862225904

`A038566(or(1, A360474(n)))`
-/

namespace A218216.P9636854294862225904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038566 (Int.lor 1 (A360474 n)).toNat

end

end A218216.P9636854294862225904

/-! ## A218216.P3323975638354692336

`A005917(A003989(n^n))`
-/

namespace A218216.P3323975638354692336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005917 (A003989 (n ^ n)).toNat

end

end A218216.P3323975638354692336

/-!
# A218218: Table read downwards by antidiagonals: T(n,k) is the number of partitions of k into n distinct positive parts, k, n >= 0.

The programs for A218218, there is no canonical definition to state claims against.
-/

/-! ## A218218.P4431249000129249433

`round(A072705(n+1)/A006530(A339886(n+1)))`
-/

namespace A218218.P4431249000129249433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A072705 (n + 1) : ℚ) / (A006530 (A339886 (n + 1)).toNat : ℚ))

end

end A218218.P4431249000129249433

/-! ## A218218.P16577486198172848827

`A358623(n)%A305374(A168291(n))`
-/

namespace A218218.P16577486198172848827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A358623 n) (A305374 (A168291 n).toNat)

end

end A218218.P16577486198172848827

/-! ## A218218.P10139340133300320573

`and(A306978(n+1), A320179(n+1))`
-/

namespace A218218.P10139340133300320573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A306978 (n + 1)) (A320179 (n + 1))

end

end A218218.P10139340133300320573

/-! ## A218218.P17245649227715350996

`A228488(A358623(n))`
-/

namespace A218218.P17245649227715350996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228488 (A358623 n).toNat

end

end A218218.P17245649227715350996

/-! ## A218218.P5461286338366119549

`A347246(A275504(n+1))`
-/

namespace A218218.P5461286338366119549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347246 (A275504 (n + 1)).toNat

end

end A218218.P5461286338366119549

/-!
# A218219: Define a(x,y) to be 1 if x is 0 or 1 and y*a(x-1,y)-a(x-2,y) otherwise. Then the n-th term of the sequence is a(n,n).

The programs for A218219, there is no canonical definition to state claims against.
-/

/-! ## A218219.P14772254857857958191

`A218220(∑[4*n])`
-/

namespace A218219.P14772254857857958191
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218220 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A218219.P14772254857857958191

/-! ## A218219.P8582419737358918725

`abs(A218220(A046092(n)))`
-/

namespace A218219.P8582419737358918725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A218220 (A046092 n).toNat|

end

end A218219.P8582419737358918725

/-! ## A218219.P7222390351073251276

`A162997(4*A282064(n))`
-/

namespace A218219.P7222390351073251276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162997 (4 * A282064 n).toNat

end

end A218219.P7222390351073251276

/-!
# A218220: Array a(n,m) read by antidiagonals where a(0,m)=a(1,m)=1 and a(n,m) = m*a(n-1,m)-a(n-2,m) for n>=2.

The programs for A218220, there is no canonical definition to state claims against.
-/

/-! ## A218220.P9697061189282848403

`Δ[A159854(n)]^A112227(A064580(n))`
-/

namespace A218220.P9697061189282848403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159854 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) ^ (A112227 (A064580 n).toNat : ℤ)

end

end A218220.P9697061189282848403

/-!
# A218221: G.f.: 1/(1-x/(1-4*x/(1-10*x/(1-20*x/(1-35*x/(1-56*x/(1-...))))))), a continued fraction.

The programs for A218221, there is no canonical definition to state claims against.
-/

/-! ## A218221.P7354976917501557261

`A357058(A134424(n))`
-/

namespace A218221.P7354976917501557261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357058 (A134424 n).toNat

end

end A218221.P7354976917501557261

/-!
# A218222: G.f. A(x) satisfies: A(x) = x + x*[d/dx A(x)^2].

The programs for A218222, there is no canonical definition to state claims against.
-/

/-! ## A218222.P17653108947406699118

`(n+1)*A112915(n)`
-/

namespace A218222.P17653108947406699118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A112915 n

end

end A218222.P17653108947406699118

/-! ## A218222.P593601750856178748

`2^n*A088716(n)`
-/

namespace A218222.P593601750856178748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A088716 n

end

end A218222.P593601750856178748

/-! ## A218222.P11613688455857081970

`A088716(n)*A102363(A000217(n))`
-/

namespace A218222.P11613688455857081970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088716 n * A102363 (A000217 n).toNat

end

end A218222.P11613688455857081970

/-! ## A218222.P7065856450055612117

`A088716(n)*A247936(A034856(n+1))`
-/

namespace A218222.P7065856450055612117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088716 n * A247936 (A034856 (n + 1)).toNat

end

end A218222.P7065856450055612117

/-! ## A218222.P11901531665057792219

`abs(A301305(∑[n]+1))*2^n`
-/

namespace A218222.P11901531665057792219
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A301305 (∑ j ∈ Finset.range (n + 1), f1 j + 1)| * (2 ^ n : ℤ)

end

end A218222.P11901531665057792219

/-!
# A218223: G.f. A(x) satisfies: A(x) = 1+x + x^2*[d/dx A(x)^3].

The programs for A218223, there is no canonical definition to state claims against.
-/

/-! ## A218223.P15192257919108897889

`A096366(a(n-1))` with `a(0)=1, a(1)=1, a(2)=3`
-/

namespace A218223.P15192257919108897889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 3] fun n a =>
  A096366 (a (n - 1)).toNat

end

end A218223.P15192257919108897889

/-!
# A218224: G.f. A(x) satisfies: A(x) = 1+x + x^2*[d/dx A(x)^4].

The programs for A218224, there is no canonical definition to state claims against.
-/

/-! ## A218224.P9331196867246095390

`A291983(∑[and(n, -2)]^4)`
-/

namespace A218224.P9331196867246095390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291983 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 4).toNat

end

end A218224.P9331196867246095390

/-!
# A218225: G.f. A(x) satisfies: (1 - x*A(x)) / (1 - x^2*A(x)^2)^2 = 1 - x.

The programs for A218225, there is no canonical definition to state claims against.
-/

/-! ## A218225.P1133867751947392574

`∑[A002845(A061512(n))]`
-/

namespace A218225.P1133867751947392574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002845 (A061512 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A218225.P1133867751947392574

/-! ## A218225.P3749859280366763004

`A266193(A011900(n))+1`
-/

namespace A218225.P3749859280366763004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266193 (A011900 n).toNat + 1

end

end A218225.P3749859280366763004

/-!
# A218226: Hilltop maps: number of n X n binary arrays indicating the locations of corresponding elements not exceeded by any horizontal, vertical or antidiagonal neighbor in a random 0..2 n X n array.

The programs for A218226, there is no canonical definition to state claims against.
-/

/-! ## A218226.P15602901723973542343

`A218233(∑[4*n]+1)`
-/

namespace A218226.P15602901723973542343
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218233 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A218226.P15602901723973542343

/-! ## A218226.P15401217899666184429

`or(1, A218233(A001844(n)))`
-/

namespace A218226.P15401217899666184429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A218233 (A001844 n).toNat)

end

end A218226.P15401217899666184429

/-! ## A218226.P8375535983970953443

`record[A003982(n)*A218233(n+1)]`
-/

namespace A218226.P8375535983970953443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A218233 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A218226.P8375535983970953443

/-! ## A218226.P1602375341450201637

`A326632(n)+A218233(A001844(n))`
-/

namespace A218226.P1602375341450201637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326632 n + A218233 (A001844 n).toNat

end

end A218226.P1602375341450201637

/-! ## A218226.P17671067301844534848

`lcm(A033999(n), A218233(A001844(n)))`
-/

namespace A218226.P17671067301844534848
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A218233 (A001844 n).toNat)

end

end A218226.P17671067301844534848

/-!
# A218227: Hilltop maps: number of n X 2 binary arrays indicating the locations of corresponding elements not exceeded by any horizontal, vertical or antidiagonal neighbor in a random 0..2 n X 2 array.

The programs for A218227, the canonical program `A218227.P13857964789849217823` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A218227 has offset 1).

The definition of A218227 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A218227.P13857964789849217823

`A218281(2*(n+1))`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A218227

/-- `A218281(2*(n+1))` -/
def P13857964789849217823.Spec : Prop :=
  ∀ n, P13857964789849217823.a n = A218227 (n + 1)

theorem P13857964789849217823.correct : P13857964789849217823.Spec := by
  intro n
  simp only [A218227, Nat.add_sub_cancel]

end A218227

/-! ## A218227.P4849699803915303712

`record[A218281(xor(1, n)+1)]`
-/

namespace A218227.P4849699803915303712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218281 (Nat.xor 1 n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A218227.P4849699803915303712

namespace A218227

/-- `record[A218281(xor(1, n)+1)]` -/
def P4849699803915303712.Spec : Prop :=
  ∀ n, P4849699803915303712.a n = A218227 (n + 1)

end A218227

/-! ## A218227.P12012129160727388438

`record[A218281(A014681(n+1))]`
-/

namespace A218227.P12012129160727388438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218281 (A014681 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A218227.P12012129160727388438

namespace A218227

/-- `record[A218281(A014681(n+1))]` -/
def P12012129160727388438.Spec : Prop :=
  ∀ n, P12012129160727388438.a n = A218227 (n + 1)

end A218227

/-! ## A218227.P15880086999036331879

`record[A218281(A018838(n+1))]`
-/

namespace A218227.P15880086999036331879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218281 (A018838 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A218227.P15880086999036331879

namespace A218227

/-- `record[A218281(A018838(n+1))]` -/
def P15880086999036331879.Spec : Prop :=
  ∀ n, P15880086999036331879.a n = A218227 (n + 1)

end A218227

/-! ## A218227.P6212905272069998521

`record[A218281(A004151(n+1)+(n+1)%2)]`
-/

namespace A218227.P6212905272069998521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218281 (A004151 (n + 1) + (((n + 1) % 2 : ℕ) : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A218227.P6212905272069998521

namespace A218227

/-- `record[A218281(A004151(n+1)+(n+1)%2)]` -/
def P6212905272069998521.Spec : Prop :=
  ∀ n, P6212905272069998521.a n = A218227 (n + 1)

end A218227

/-!
# A218228: Hilltop maps: number of nX3 binary arrays indicating the locations of corresponding elements not exceeded by any horizontal, vertical or antidiagonal neighbor in a random 0..2 nX3 array.

The programs for A218228, there is no canonical definition to state claims against.
-/

/-! ## A218228.P9642213475773904211

`A218233(∑[n+2]+4)`
-/

namespace A218228.P9642213475773904211
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218233 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A218228.P9642213475773904211

/-! ## A218228.P6391068333986246923

`or(1, A218233(A167614(n+1)))`
-/

namespace A218228.P6391068333986246923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A218233 (A167614 (n + 1)).toNat)

end

end A218228.P6391068333986246923

/-! ## A218228.P17722001608574106395

`A218233(A167614(n+1))+A011744(n)`
-/

namespace A218228.P17722001608574106395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218233 (A167614 (n + 1)).toNat + A011744 n

end

end A218228.P17722001608574106395

/-! ## A218228.P1823707102461156470

`A016168(n)*A218233(A167614(n+1))`
-/

namespace A218228.P1823707102461156470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016168 n * A218233 (A167614 (n + 1)).toNat

end

end A218228.P1823707102461156470

/-! ## A218228.P10450157839464126975

`lcm(A015435(n), A218233(A167614(n+1)))`
-/

namespace A218228.P10450157839464126975
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A015435 n) (A218233 (A167614 (n + 1)).toNat)

end

end A218228.P10450157839464126975

/-!
# A218229: Hilltop maps: number of nX4 binary arrays indicating the locations of corresponding elements not exceeded by any horizontal, vertical or antidiagonal neighbor in a random 0..2 nX4 array.

The programs for A218229, there is no canonical definition to state claims against.
-/

/-! ## A218229.P11583567551146164594

`A218233(A052905(n)+9)`
-/

namespace A218229.P11583567551146164594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218233 (A052905 n + 9).toNat

end

end A218229.P11583567551146164594

/-! ## A218229.P11842433919911774867

`A218233(A055999(n)+10)`
-/

namespace A218229.P11842433919911774867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218233 (A055999 n + 10).toNat

end

end A218229.P11842433919911774867

/-! ## A218229.P11974569230060374170

`A218233(A167614(n+2)+1)`
-/

namespace A218229.P11974569230060374170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218233 (A167614 (n + 2) + 1).toNat

end

end A218229.P11974569230060374170

/-! ## A218229.P13745315547014275783

`A218233(A034856(n+2)+6)`
-/

namespace A218229.P13745315547014275783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218233 (A034856 (n + 2) + 6).toNat

end

end A218229.P13745315547014275783

/-! ## A218229.P9101344537815870963

`A218233(Δ[A023545(n+1)-n²])`
-/

namespace A218229.P9101344537815870963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1) - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218233 (f1 (n + 1) - f1 n).toNat

end

end A218229.P9101344537815870963

/-!
# A218230: Hilltop maps: number of nX5 binary arrays indicating the locations of corresponding elements not exceeded by any horizontal, vertical or antidiagonal neighbor in a random 0..2 nX5 array.

The programs for A218230, there is no canonical definition to state claims against.
-/

/-! ## A218230.P12006373395624803387

`A218233(A155212(n)+13)`
-/

namespace A218230.P12006373395624803387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218233 (A155212 n + 13).toNat

end

end A218230.P12006373395624803387

/-! ## A218230.P8777751037977971830

`A218233(eq[6, A131818(n+1)])`
-/

namespace A218230.P8777751037977971830
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218233 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A218230.P8777751037977971830

/-! ## A218230.P17134610566971870279

`A218233(A374005(n+1))`
-/

namespace A218230.P17134610566971870279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218233 (A374005 (n + 1)).toNat

end

end A218230.P17134610566971870279

/-! ## A218230.P14345342957804279855

`A218233(eq[4, A193592(n)])`
-/

namespace A218230.P14345342957804279855
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218233 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A218230.P14345342957804279855

/-! ## A218230.P4628276069714516748

`A218233(Δ[A023545(n+1)])`
-/

namespace A218230.P4628276069714516748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218233 (f1 (n + 1) - f1 n).toNat

end

end A218230.P4628276069714516748

/-!
# A218231: Hilltop maps: number of nX6 binary arrays indicating the locations of corresponding elements not exceeded by any horizontal, vertical or antidiagonal neighbor in a random 0..2 nX6 array.

The programs for A218231, there is no canonical definition to state claims against.
-/

/-! ## A218231.P5612801859394738180

`A218233(eq[7, A131818(n+1)])`
-/

namespace A218231.P5612801859394738180
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218233 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A218231.P5612801859394738180

/-! ## A218231.P1676148771174339605

`A218233(A374007(n+1))`
-/

namespace A218231.P1676148771174339605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218233 (A374007 (n + 1)).toNat

end

end A218231.P1676148771174339605

/-! ## A218231.P15779213900473642994

`A218233(A052905(n+3))`
-/

namespace A218231.P15779213900473642994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218233 (A052905 (n + 3)).toNat

end

end A218231.P15779213900473642994

/-! ## A218231.P3393295051667284932

`A218233(eq[3, A219347(n)])`
-/

namespace A218231.P3393295051667284932
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218233 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A218231.P3393295051667284932

/-! ## A218231.P2823845323938008983

`A218233(eq[5, A193592(n)])`
-/

namespace A218231.P2823845323938008983
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218233 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A218231.P2823845323938008983

/-!
# A218232: Hilltop maps: number of nX7 binary arrays indicating the locations of corresponding elements not exceeded by any horizontal, vertical or antidiagonal neighbor in a random 0..2 nX7 array.

The programs for A218232, there is no canonical definition to state claims against.
-/

/-! ## A218232.P6400613297669182961

`A218233(eq[8, A131818(n+1)])`
-/

namespace A218232.P6400613297669182961
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218233 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A218232.P6400613297669182961

/-! ## A218232.P13075966616914332863

`A218233(A374008(n+1))`
-/

namespace A218232.P13075966616914332863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218233 (A374008 (n + 1)).toNat

end

end A218232.P13075966616914332863

/-! ## A218232.P4002170144807340215

`A218233(eq[4, A219347(n)])`
-/

namespace A218232.P4002170144807340215
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218233 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A218232.P4002170144807340215

/-! ## A218232.P7844321556796454115

`A218233(eq[6, A193592(n)])`
-/

namespace A218232.P7844321556796454115
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218233 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A218232.P7844321556796454115

/-! ## A218232.P13529395225935299341

`A218233(eq[7, A200370(n+1)])`
-/

namespace A218232.P13529395225935299341
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218233 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A218232.P13529395225935299341

/-!
# A218233: T(n,k)=Hilltop maps: number of nXk binary arrays indicating the locations of corresponding elements not exceeded by any horizontal, vertical or antidiagonal neighbor in a random 0..2 nXk array.

The programs for A218233, there is no canonical definition to state claims against.
-/

/-! ## A218233.P4472733444218476550

`A157271(A218319(n+1)+A218206(n+1))`
-/

namespace A218233.P4472733444218476550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157271 (A218319 (n + 1) + A218206 (n + 1)).toNat

end

end A218233.P4472733444218476550

/-! ## A218233.P9772381808646118241

`(A218206(n+1)+or(A167040(n)!, A218206(n+1)))/2`
-/

namespace A218233.P9772381808646118241
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A218206 (n + 1) + Int.lor (Nat.factorial (A167040 n).toNat : ℤ) (A218206 (n + 1)) : ℚ) / 2

end

end A218233.P9772381808646118241

/-! ## A218233.P8247952142376494054

`A269166(A037965(n))+A218206(n+1)`
-/

namespace A218233.P8247952142376494054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269166 (A037965 n).toNat + A218206 (n + 1)

end

end A218233.P8247952142376494054

/-! ## A218233.P9804190311610276045

`A189111(n+1)-A038573(A182922(n))`
-/

namespace A218233.P9804190311610276045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189111 (n + 1) - A038573 (A182922 n).toNat

end

end A218233.P9804190311610276045

/-! ## A218233.P14884585534122478253

`A227442(n+1)-A237593(A001349(n))`
-/

namespace A218233.P14884585534122478253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227442 (n + 1) - A237593 (A001349 n).toNat

end

end A218233.P14884585534122478253

/-!
# A218234: Infinitesimal generator for padded Pascal matrix A097805 (as lower triangular matrices).

The programs for A218234, the canonical program `A218234.P3405762265077975232` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A218234 has offset 0).

The definition of A218234 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A218234.P10463282065256722728

`(comp[∑[n+3]]-n)*char[∑[n]-2]`
-/

namespace A218234.P10463282065256722728
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f4 j : ℕ) : ℤ) - 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)) * ((if ∃ j, f3 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A218234.P10463282065256722728

namespace A218234

/-- `(comp[∑[n+3]]-n)*char[∑[n]-2]` -/
def P10463282065256722728.Spec : Prop :=
  ∀ n, P10463282065256722728.a n = A218234 n

end A218234

/-! ## A218234.P10469347212454154322

`log2((char[∑[n]-2]+1)^(n-C(∑[char[∑[n]]], 2)))`
-/

namespace A218234.P10469347212454154322
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - 2

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f4 j = n then 1 else 0

open Classical in
def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 ((((if ∃ j, f1 j = (n : ℤ) then 1 else 0) + 1 : ℕ) : ℚ) ^ ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f3 j) 2 : ℤ) : ℤ) : ℝ)

end

end A218234.P10469347212454154322

namespace A218234

/-- `log2((char[∑[n]-2]+1)^(n-C(∑[char[∑[n]]], 2)))` -/
def P10469347212454154322.Spec : Prop :=
  ∀ n, P10469347212454154322.a n = (A218234 n : ℝ)

end A218234

/-! ## A218234.P15226005533755280895

`lcm(n-C(∑[char[∑[n]]], 2), log2(char[∑[n]-2]+1))`
-/

namespace A218234.P15226005533755280895
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

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f5 j : ℕ) : ℤ) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ)) (SequenceMachineLib.roundAway (Real.logb 2 (((if ∃ j, f4 j = (n : ℤ) then 1 else 0) + 1 : ℕ) : ℝ)))

end

end A218234.P15226005533755280895

namespace A218234

/-- `lcm(n-C(∑[char[∑[n]]], 2), log2(char[∑[n]-2]+1))` -/
def P15226005533755280895.Spec : Prop :=
  ∀ n, (P15226005533755280895.a n : ℤ) = A218234 n

end A218234

/-! ## A218234.P14068242137929356978

`abs((n-C(∑[char[∑[n]]], 2))*char[∑[floor(atan(n)+n)]])`
-/

namespace A218234.P14068242137929356978
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f5 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.arctan (n : ℝ) + (n : ℝ)⌋

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ)) * ((if ∃ j, f4 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)|

end

end A218234.P14068242137929356978

namespace A218234

/-- `abs((n-C(∑[char[∑[n]]], 2))*char[∑[floor(atan(n)+n)]])` -/
def P14068242137929356978.Spec : Prop :=
  ∀ n, P14068242137929356978.a n = A218234 n

end A218234

/-! ## A218234.P13704980688131439308

`sqrt((n-C(∑[char[∑[n]]], 2))²*char[∑[floor(atan(n)+n)]])`
-/

namespace A218234.P13704980688131439308
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f5 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.arctan (n : ℝ) + (n : ℝ)⌋

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ)) ^ 2 * ((if ∃ j, f4 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) : ℝ)

end

end A218234.P13704980688131439308

namespace A218234

/-- `sqrt((n-C(∑[char[∑[n]]], 2))²*char[∑[floor(atan(n)+n)]])` -/
def P13704980688131439308.Spec : Prop :=
  ∀ n, P13704980688131439308.a n = (A218234 n : ℝ)

end A218234

/-! ## A218234.P15709316630843349854

`A289207(A127648(n+1))`
-/

namespace A218234.P15709316630843349854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A127648 (n + 1)).toNat

end

end A218234.P15709316630843349854

namespace A218234

/-- `A289207(A127648(n+1))` -/
def P15709316630843349854.Spec : Prop :=
  ∀ n, P15709316630843349854.a n = A218234 n

end A218234

/-! ## A218234.P3405762265077975232

`A028310(A132440(n))-1`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A218234

/-- `A028310(A132440(n))-1` -/
def P3405762265077975232.Spec : Prop :=
  ∀ n, P3405762265077975232.a n = A218234 n

theorem P3405762265077975232.correct : P3405762265077975232.Spec := by
  intro n
  simp only [A218234]

end A218234

/-! ## A218234.P6681875448892197264

`A196389(A023531(n)+n)`
-/

namespace A218234.P6681875448892197264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196389 (A023531 n + (n : ℤ)).toNat

end

end A218234.P6681875448892197264

namespace A218234

/-- `A196389(A023531(n)+n)` -/
def P6681875448892197264.Spec : Prop :=
  ∀ n, P6681875448892197264.a n = A218234 n

end A218234

/-! ## A218234.P3066308420819913060

`A196389(n)-A023531(n)`
-/

namespace A218234.P3066308420819913060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196389 n - A023531 n

end

end A218234.P3066308420819913060

namespace A218234

/-- `A196389(n)-A023531(n)` -/
def P3066308420819913060.Spec : Prop :=
  ∀ n, P3066308420819913060.a n = A218234 n

end A218234

/-! ## A218234.P10251829488580541951

`A167374(n)-A132013(n)`
-/

namespace A218234.P10251829488580541951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167374 n - A132013 n

end

end A218234.P10251829488580541951

namespace A218234

/-- `A167374(n)-A132013(n)` -/
def P10251829488580541951.Spec : Prop :=
  ∀ n, P10251829488580541951.a n = A218234 n

end A218234

/-! ## A218234.P7714824114099641181

`A014473(n*A097806(n))`
-/

namespace A218234.P7714824114099641181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014473 ((n : ℤ) * A097806 n).toNat

end

end A218234.P7714824114099641181

namespace A218234

/-- `A014473(n*A097806(n))` -/
def P7714824114099641181.Spec : Prop :=
  ∀ n, P7714824114099641181.a n = A218234 n

end A218234

/-! ## A218234.P10525393299779760240

`A002262(n*A129186(n))`
-/

namespace A218234.P10525393299779760240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 ((n : ℤ) * A129186 n).toNat

end

end A218234.P10525393299779760240

namespace A218234

/-- `A002262(n*A129186(n))` -/
def P10525393299779760240.Spec : Prop :=
  ∀ n, P10525393299779760240.a n = A218234 n

end A218234

/-! ## A218234.P9504189181831248237

`A131108(n)%A007318(n)`
-/

namespace A218234.P9504189181831248237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A131108 n) (A007318 n)

end

end A218234.P9504189181831248237

namespace A218234

/-- `A131108(n)%A007318(n)` -/
def P9504189181831248237.Spec : Prop :=
  ∀ n, P9504189181831248237.a n = A218234 n

end A218234

/-! ## A218234.P10926644669838580219

`A134082(n)%A013580(n)`
-/

namespace A218234.P10926644669838580219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A134082 n) (A013580 n)

end

end A218234.P10926644669838580219

namespace A218234

/-- `A134082(n)%A013580(n)` -/
def P10926644669838580219.Spec : Prop :=
  ∀ n, P10926644669838580219.a n = A218234 n

end A218234

/-! ## A218234.P16958370105307663468

`A028326(n)%A133138(n)`
-/

namespace A218234.P16958370105307663468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028326 n) (A133138 n)

end

end A218234.P16958370105307663468

namespace A218234

/-- `A028326(n)%A133138(n)` -/
def P16958370105307663468.Spec : Prop :=
  ∀ n, P16958370105307663468.a n = A218234 n

end A218234

/-! ## A218234.P16982097349570161388

`A106246(n)%A131375(n)`
-/

namespace A218234.P16982097349570161388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A106246 n) (A131375 n)

end

end A218234.P16982097349570161388

namespace A218234

/-- `A106246(n)%A131375(n)` -/
def P16982097349570161388.Spec : Prop :=
  ∀ n, P16982097349570161388.a n = A218234 n

end A218234

/-! ## A218234.P14465747712230520018

`A235706(n)%A131127(n)`
-/

namespace A218234.P14465747712230520018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A235706 n) (A131127 n)

end

end A218234.P14465747712230520018

namespace A218234

/-- `A235706(n)%A131127(n)` -/
def P14465747712230520018.Spec : Prop :=
  ∀ n, P14465747712230520018.a n = A218234 n

end A218234

/-! ## A218234.P18444139786853564227

`lcm(A004247(n), A136157(n))`
-/

namespace A218234.P18444139786853564227
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A004247 n) (A136157 n)

end

end A218234.P18444139786853564227

namespace A218234

/-- `lcm(A004247(n), A136157(n))` -/
def P18444139786853564227.Spec : Prop :=
  ∀ n, (P18444139786853564227.a n : ℤ) = A218234 n

end A218234

/-! ## A218234.P15240550973470907509

`and(A004247(n), A154312(n))`
-/

namespace A218234.P15240550973470907509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A004247 n) (A154312 n)

end

end A218234.P15240550973470907509

namespace A218234

/-- `and(A004247(n), A154312(n))` -/
def P15240550973470907509.Spec : Prop :=
  ∀ n, P15240550973470907509.a n = A218234 n

end A218234

/-! ## A218234.P4944833385097374079

`and(A014473(n), A154312(n))`
-/

namespace A218234.P4944833385097374079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A014473 n) (A154312 n)

end

end A218234.P4944833385097374079

namespace A218234

/-- `and(A014473(n), A154312(n))` -/
def P4944833385097374079.Spec : Prop :=
  ∀ n, P4944833385097374079.a n = A218234 n

end A218234

/-!
# A218235: Hilltop maps: number of n X n binary arrays indicating the locations of corresponding elements not exceeded by any king-move neighbor in a random 0..3 n X n array.

The programs for A218235, there is no canonical definition to state claims against.
-/

/-! ## A218235.P11591051808148494025

`A218242(∑[4*n]+1)`
-/

namespace A218235.P11591051808148494025
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218242 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A218235.P11591051808148494025

/-! ## A218235.P14059439766407240283

`record[gcd(abs(round(sqrt(2*(n+1)))²-(2*n+1)), A218242(n+1))]`
-/

namespace A218235.P14059439766407240283
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd |SequenceMachineLib.roundAway (Real.sqrt (2 * (n + 1) : ℝ)) ^ 2 - (2 * n + 1 : ℤ)| (A218242 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A218235.P14059439766407240283

/-! ## A218235.P15319741683835015335

`or(1, A218242(A001844(n)))`
-/

namespace A218235.P15319741683835015335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A218242 (A001844 n).toNat)

end

end A218235.P15319741683835015335

/-!
# A218236: Hilltop maps: number of n X 2 binary arrays indicating the locations of corresponding elements not exceeded by any king-move neighbor in a random 0..3 n X 2 array.

The programs for A218236, there is no canonical definition to state claims against.
-/

/-! ## A218236.P2917705648794787678

`A218242(∑[n+1]+2)`
-/

namespace A218236.P2917705648794787678
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218242 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A218236.P2917705648794787678

/-! ## A218236.P4820542463456959881

`A218638(A253145(n)+2)`
-/

namespace A218236.P4820542463456959881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218638 (A253145 n + 2).toNat

end

end A218236.P4820542463456959881

/-! ## A218236.P8200768877088667492

`A218638(A134869(n+1)+1)`
-/

namespace A218236.P8200768877088667492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218638 (A134869 (n + 1) + 1).toNat

end

end A218236.P8200768877088667492

/-! ## A218236.P9418370015624080859

`A218638(A141214(n)-A004277(n))`
-/

namespace A218236.P9418370015624080859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218638 (A141214 n - A004277 n).toNat

end

end A218236.P9418370015624080859

/-! ## A218236.P8999776708791102092

`A218638(A000124(n+1)+A105812(n+1)²)`
-/

namespace A218236.P8999776708791102092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218638 (A000124 (n + 1) + A105812 (n + 1) ^ 2).toNat

end

end A218236.P8999776708791102092

/-!
# A218237: Hilltop maps: number of n X 3 binary arrays indicating the locations of corresponding elements not exceeded by any king-move neighbor in a random 0..3 n X 3 array.

The programs for A218237, there is no canonical definition to state claims against.
-/

/-! ## A218237.P10198794601527697059

`A218242(∑[n+2]+4)`
-/

namespace A218237.P10198794601527697059
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218242 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A218237.P10198794601527697059

/-! ## A218237.P5254578360296289668

`lcm(7, A218242(A167614(n+1)))`
-/

namespace A218237.P5254578360296289668
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 7 (A218242 (A167614 (n + 1)).toNat)

end

end A218237.P5254578360296289668

/-! ## A218237.P4618234752518440264

`record[A218242(n+4)/A218638(n+1)]`
-/

namespace A218237.P4618234752518440264
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A218242 (n + 4) : ℚ) / (A218638 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A218237.P4618234752518440264

/-! ## A218237.P869560457357692159

`record[A218638(n+4)/A218638(n+1)]`
-/

namespace A218237.P869560457357692159
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A218638 (n + 4) : ℚ) / (A218638 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A218237.P869560457357692159

/-! ## A218237.P2946655553797311006

`A218242(A167614(n+1))+A025439(n)`
-/

namespace A218237.P2946655553797311006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218242 (A167614 (n + 1)).toNat + A025439 n

end

end A218237.P2946655553797311006

/-!
# A218238: Hilltop maps: number of n X 4 binary arrays indicating the locations of corresponding elements not exceeded by any king-move neighbor in a random 0..3 n X 4 array.

The programs for A218238, there is no canonical definition to state claims against.
-/

/-! ## A218238.P14568241882694617822

`A218242(∑[n+3]+7)`
-/

namespace A218238.P14568241882694617822
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218242 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A218238.P14568241882694617822

/-! ## A218238.P16982849473075295205

`record[A010054(n+1)*A218242(n+5)]`
-/

namespace A218238.P16982849473075295205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (n + 1) * A218242 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A218238.P16982849473075295205

/-! ## A218238.P16834497410294989188

`record[A218242(n+5)/A218638(n+1)]`
-/

namespace A218238.P16834497410294989188
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A218242 (n + 5) : ℚ) / (A218638 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A218238.P16834497410294989188

/-! ## A218238.P1795602338266806034

`record[A218242(n+5)/A218810(n+1)]`
-/

namespace A218238.P1795602338266806034
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A218242 (n + 5) : ℚ) / (A218810 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A218238.P1795602338266806034

/-! ## A218238.P1806456272047168607

`lcm(3, A218242(A141214(n+1)))`
-/

namespace A218238.P1806456272047168607
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 (A218242 (A141214 (n + 1)).toNat)

end

end A218238.P1806456272047168607

/-!
# A218239: Hilltop maps: number of nX5 binary arrays indicating the locations of corresponding elements not exceeded by any king-move neighbor in a random 0..3 nX5 array.

The programs for A218239, there is no canonical definition to state claims against.
-/

/-! ## A218239.P7595416121794045754

`A218242(A374005(n+1))`
-/

namespace A218239.P7595416121794045754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218242 (A374005 (n + 1)).toNat

end

end A218239.P7595416121794045754

/-! ## A218239.P13189363549300500172

`A218242(A167499(n+3))`
-/

namespace A218239.P13189363549300500172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218242 (A167499 (n + 3)).toNat

end

end A218239.P13189363549300500172

/-! ## A218239.P11058935320661741834

`A218242(A155212(n)+13)`
-/

namespace A218239.P11058935320661741834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218242 (A155212 n + 13).toNat

end

end A218239.P11058935320661741834

/-! ## A218239.P17286838494926784156

`A218242(A056000(n)+15)`
-/

namespace A218239.P17286838494926784156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218242 (A056000 n + 15).toNat

end

end A218239.P17286838494926784156

/-! ## A218239.P12876990873965025063

`A218242(eq[7, A066657(n)])`
-/

namespace A218239.P12876990873965025063
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218242 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A218239.P12876990873965025063

/-!
# A218240: Hilltop maps: number of n X 6 binary arrays indicating the locations of corresponding elements not exceeded by any king-move neighbor in a random 0..3 n X 6 array.

The programs for A218240, there is no canonical definition to state claims against.
-/

/-! ## A218240.P8615530616764190295

`A218242(A374007(n+1))`
-/

namespace A218240.P8615530616764190295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218242 (A374007 (n + 1)).toNat

end

end A218240.P8615530616764190295

/-! ## A218240.P943176901128964740

`A218242(A000096(n+4)+7)`
-/

namespace A218240.P943176901128964740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218242 (A000096 (n + 4) + 7).toNat

end

end A218240.P943176901128964740

/-! ## A218240.P3344574688774493319

`A218242(eq[7, A131818(n+1)])`
-/

namespace A218240.P3344574688774493319
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218242 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A218240.P3344574688774493319

/-! ## A218240.P12695292169619097097

`A218242(A052905(n+3))`
-/

namespace A218240.P12695292169619097097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218242 (A052905 (n + 3)).toNat

end

end A218240.P12695292169619097097

/-! ## A218240.P7329030322782112295

`A218242(eq[3, A219347(n)])`
-/

namespace A218240.P7329030322782112295
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218242 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A218240.P7329030322782112295

/-!
# A218241: Hilltop maps: number of nX7 binary arrays indicating the locations of corresponding elements not exceeded by any king-move neighbor in a random 0..3 nX7 array.

The programs for A218241, there is no canonical definition to state claims against.
-/

/-! ## A218241.P8030058061520062781

`A218242(A374008(n+1))`
-/

namespace A218241.P8030058061520062781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218242 (A374008 (n + 1)).toNat

end

end A218241.P8030058061520062781

/-! ## A218241.P12680101020553344794

`A218242(A056119(n)+28)`
-/

namespace A218241.P12680101020553344794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218242 (A056119 n + 28).toNat

end

end A218241.P12680101020553344794

/-! ## A218241.P8110867213157628111

`A218242(eq[11, A066657(n)])`
-/

namespace A218241.P8110867213157628111
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218242 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A218241.P8110867213157628111

/-! ## A218241.P14370871896109579254

`A218242(A000124(n+6)+6)`
-/

namespace A218241.P14370871896109579254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218242 (A000124 (n + 6) + 6).toNat

end

end A218241.P14370871896109579254

/-! ## A218241.P17445276930156979100

`A218242(A027379(n+4)+10)`
-/

namespace A218241.P17445276930156979100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218242 (A027379 (n + 4) + 10).toNat

end

end A218241.P17445276930156979100

/-!
# A218242: T(n,k)=Hilltop maps: number of nXk binary arrays indicating the locations of corresponding elements not exceeded by any king-move neighbor in a random 0..3 nXk array.

The programs for A218242, there is no canonical definition to state claims against.
-/

/-! ## A218242.P1527995909589112884

`A004277(A218372(n+1))-A218196(n+1)`
-/

namespace A218242.P1527995909589112884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A218372 (n + 1)).toNat - A218196 (n + 1)

end

end A218242.P1527995909589112884

/-! ## A218242.P5707244460352165098

`or(A020639(A022174(n)), A218372(n+1))`
-/

namespace A218242.P5707244460352165098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A020639 (A022174 n).toNat) (A218372 (n + 1))

end

end A218242.P5707244460352165098

/-! ## A218242.P12891179772081880783

`or(A006530(A173005(n)), A218196(n+1))`
-/

namespace A218242.P12891179772081880783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A006530 (A173005 n).toNat) (A218196 (n + 1))

end

end A218242.P12891179772081880783

/-! ## A218242.P1610408704614923684

`or(A006530(A173005(n)), A218372(n+1))`
-/

namespace A218242.P1610408704614923684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A006530 (A173005 n).toNat) (A218372 (n + 1))

end

end A218242.P1610408704614923684

/-! ## A218242.P3622773899084914906

`or(A001414(A112096(n+1)), A218372(n+1))`
-/

namespace A218242.P3622773899084914906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001414 (A112096 (n + 1)).toNat) (A218372 (n + 1))

end

end A218242.P3622773899084914906

/-!
# A218244: Number of inequivalent (rotationally and reflectively distinct) ways to place n nonattacking empresses on n X n board.

The programs for A218244, there is no canonical definition to state claims against.
-/

/-! ## A218244.P8176962108212213604

`A301342(n+1)+A233296(A000162(n+1))`
-/

namespace A218244.P8176962108212213604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301342 (n + 1) + A233296 (A000162 (n + 1)).toNat

end

end A218244.P8176962108212213604

/-!
# A218245: Nicolas's sequence, whose nonnegativity is equivalent to the Riemann hypothesis.

The programs for A218245, there is no canonical definition to state claims against.
-/

/-! ## A218245.P16808830277239285481

`round(acot(n/3))`
-/

namespace A218245.P16808830277239285481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (SequenceMachineLib.acot ((n : ℚ) / 3 : ℝ))

end

end A218245.P16808830277239285481

/-!
# A218249: Difference sequence of A219096.

The programs for A218249, there is no canonical definition to state claims against.
-/

/-! ## A218249.P12436958366565303522

`Δ[A219096(n+1)]`
-/

namespace A218249.P12436958366565303522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219096 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A218249.P12436958366565303522

/-! ## A218249.P11533411078173175290

`A219096(n+2)-A219096(n+1)`
-/

namespace A218249.P11533411078173175290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219096 (n + 2) - A219096 (n + 1)

end

end A218249.P11533411078173175290

/-! ## A218249.P8608316651087634467

`Δ[A000720(A047948(n+1))]`
-/

namespace A218249.P8608316651087634467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A047948 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A218249.P8608316651087634467

/-! ## A218249.P9171566434445326280

`Δ[A000720(A053070(n+1))]`
-/

namespace A218249.P9171566434445326280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A053070 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A218249.P9171566434445326280

/-! ## A218249.P4694035010948490556

`Δ[A000720(A128940(3*n))]`
-/

namespace A218249.P4694035010948490556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A128940 (3 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A218249.P4694035010948490556

/-! ## A218249.P12800767098671665694

`Δ[A000720(p?[A006562(n+1)-6])]`
-/

namespace A218249.P12800767098671665694
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006562 (n + 1) - 6

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A218249.P12800767098671665694

/-! ## A218249.P9494367180946436672

`A000720(A047948(n+2))-A000720(A047948(n+1))`
-/

namespace A218249.P9494367180946436672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A047948 (n + 2)).toNat - A000720 (A047948 (n + 1)).toNat

end

end A218249.P9494367180946436672

/-!
# A218250: G.f. satisfies: A(x) = (1 + x*A(x)) * (1 + x^2*A(x))^2.

The programs for A218250, there is no canonical definition to state claims against.
-/

/-! ## A218250.P2992443992260491187

`A157271(∑[A190277(n+2)]-n)`
-/

namespace A218250.P2992443992260491187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190277 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157271 (∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)).toNat

end

end A218250.P2992443992260491187

/-! ## A218250.P8923208407791114079

`A006645(n)+A000120(A196151(n))`
-/

namespace A218250.P8923208407791114079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006645 n + A000120 (A196151 n).toNat

end

end A218250.P8923208407791114079

/-! ## A218250.P3656995880618801086

`A248227(A135310(n)+A001519(n))`
-/

namespace A218250.P3656995880618801086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248227 (A135310 n + A001519 n).toNat

end

end A218250.P3656995880618801086

/-!
# A218251: G.f. satisfies A(x) = (1 + x*A(x))^2 * (1 + x^3*A(x)).

The programs for A218251, there is no canonical definition to state claims against.
-/

/-! ## A218251.P11279595391103408691

`A008621(A001700(n))+A002605(n)`
-/

namespace A218251.P11279595391103408691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (A001700 n).toNat + A002605 n

end

end A218251.P11279595391103408691

/-! ## A218251.P2184949990095950928

`A098788(n)+A002266(A164188(2*n))`
-/

namespace A218251.P2184949990095950928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098788 n + A002266 (A164188 (2 * n)).toNat

end

end A218251.P2184949990095950928

/-! ## A218251.P8610687652377324962

`A008621(A004148(n)+A001037(2*n+3))`
-/

namespace A218251.P8610687652377324962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (A004148 n + A001037 (2 * n + 3)).toNat

end

end A218251.P8610687652377324962

/-!
# A218253: The number of steps it takes, by taking the smallest number so that it minus the number of ones in its binary representation is the previous number, to reach a number which has no others that satisfy this property.

The programs for A218253, there is no canonical definition to state claims against.
-/

/-! ## A218253.P12180010151068018582

`A329456(A062735(n+1))%4`
-/

namespace A218253.P12180010151068018582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A329456 (A062735 (n + 1)).toNat) 4

end

end A218253.P12180010151068018582

/-! ## A218253.P18033809182689018844

`val(A326850(A278243(n+3)), 2)`
-/

namespace A218253.P18033809182689018844
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A326850 (A278243 (n + 3)).toNat).toNat 2

end

end A218253.P18033809182689018844

/-! ## A218253.P1994008689925186332

`val(A163502(A163511(n+3)), 3)`
-/

namespace A218253.P1994008689925186332
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A163502 (A163511 (n + 3)).toNat).toNat 3

end

end A218253.P1994008689925186332

/-! ## A218253.P6734012637715512378

`A227535(n+4)%A333766(n+2)`
-/

namespace A218253.P6734012637715512378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A227535 (n + 4)) (A333766 (n + 2))

end

end A218253.P6734012637715512378

/-! ## A218253.P14519099632454121618

`A046660(A011371(n+4)+A000079(n))`
-/

namespace A218253.P14519099632454121618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046660 (A011371 (n + 4) + A000079 n).toNat

end

end A218253.P14519099632454121618

/-!
# A218254: Irregular table, where row n (n >= 0) starts with n, the next term is n-A000120(n), and the successive terms are obtained by repeatedly subtracting the number of 1's in the previous term's binary expansion, until zero is reached, after which the next row starts with one larger n.

The programs for A218254, there is no canonical definition to state claims against.
-/

/-! ## A218254.P10982243525314915678

`A025581(eq[A096651(n), A178487(n)])`
-/

namespace A218254.P10982243525314915678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096651 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178487 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A218254.P10982243525314915678

/-! ## A218254.P477744290639245117

`A122200(eq[A096651(n), A178487(n)])`
-/

namespace A218254.P477744290639245117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096651 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178487 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122200 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A218254.P477744290639245117

/-! ## A218254.P4972609201674292501

`A073932(n+1)-A186729(A186745(n))`
-/

namespace A218254.P4972609201674292501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073932 (n + 1) - A186729 (A186745 n).toNat

end

end A218254.P4972609201674292501

/-! ## A218254.P7711734229724391705

`A082404(n+1)-A186729(A186745(n))`
-/

namespace A218254.P7711734229724391705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082404 (n + 1) - A186729 (A186745 n).toNat

end

end A218254.P7711734229724391705

/-! ## A218254.P15959187382618714859

`A347706(A341124(n+6))+A219659(n)`
-/

namespace A218254.P15959187382618714859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347706 (A341124 (n + 6)).toNat + A219659 n

end

end A218254.P15959187382618714859

/-!
# A218255: Next prime after 10*n.

The programs for A218255, the canonical program `A218255.P890284629792750492` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A218255 has offset 0).

The definition of A218255 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A218255.P890284629792750492

`A151800(10*n)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A218255

/-- `A151800(10*n)` -/
def P890284629792750492.Spec : Prop :=
  ∀ n, P890284629792750492.a n = A218255 n

theorem P890284629792750492.correct : P890284629792750492.Spec := by
  intro n
  simp only [A218255]

end A218255

/-! ## A218255.P15234675390045551442

`A118754(2*n)`
-/

namespace A218255.P15234675390045551442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118754 (2 * n)

end

end A218255.P15234675390045551442

namespace A218255

/-- `A118754(2*n)` -/
def P15234675390045551442.Spec : Prop :=
  ∀ n, P15234675390045551442.a n = A218255 n

end A218255

/-! ## A218255.P6430410600683973127

`A060266(A008706(n))+A008706(2*n)`
-/

namespace A218255.P6430410600683973127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060266 (A008706 n).toNat + A008706 (2 * n)

end

end A218255.P6430410600683973127

namespace A218255

/-- `A060266(A008706(n))+A008706(2*n)` -/
def P6430410600683973127.Spec : Prop :=
  ∀ n, P6430410600683973127.a n = A218255 n

end A218255

/-! ## A218255.P6296200527613472631

`A060264(5*n)`
-/

namespace A218255.P6296200527613472631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060264 (5 * n)

end

end A218255.P6296200527613472631

namespace A218255

/-- `A060264(5*n)` -/
def P6296200527613472631.Spec : Prop :=
  ∀ n, P6296200527613472631.a n = A218255 n

theorem P6296200527613472631.correct : P6296200527613472631.Spec := by
  intro n
  simp only [A218255, Nat.add_sub_cancel, A218255.P6296200527613472631.a, A218255.P890284629792750492.a, A060264, A060264.P4854329161308632623.a, A151800, A151800.P4570031678714564115.a, A007918, A007918.P9623913995348804173.f2, A007918.P9623913995348804173.f1, A007918.P9623913995348804173.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A008864, A008864.P9177617808325052279.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A218255

/-! ## A218255.P16380812555691392966

`A007918(10*n)`
-/

namespace A218255.P16380812555691392966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (10 * n)

end

end A218255.P16380812555691392966

namespace A218255

/-- `A007918(10*n)` -/
def P16380812555691392966.Spec : Prop :=
  ∀ n, P16380812555691392966.a n = A218255 n

end A218255

/-! ## A218255.P8467206654313191882

`A007920(10*n)+10*n`
-/

namespace A218255.P8467206654313191882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 (10 * n) + (10 * n : ℤ)

end

end A218255.P8467206654313191882

namespace A218255

/-- `A007920(10*n)+10*n` -/
def P8467206654313191882.Spec : Prop :=
  ∀ n, P8467206654313191882.a n = A218255 n

end A218255

/-! ## A218255.P4203877622539093149

`A013632(10*n)+10*n`
-/

namespace A218255.P4203877622539093149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013632 (10 * n) + (10 * n : ℤ)

end

end A218255.P4203877622539093149

namespace A218255

/-- `A013632(10*n)+10*n` -/
def P4203877622539093149.Spec : Prop :=
  ∀ n, P4203877622539093149.a n = A218255 n

end A218255

/-! ## A218255.P1120193666876009716

`A000040(A230980(10*n)+1)`
-/

namespace A218255.P1120193666876009716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A230980 (10 * n) + 1).toNat

end

end A218255.P1120193666876009716

namespace A218255

/-- `A000040(A230980(10*n)+1)` -/
def P1120193666876009716.Spec : Prop :=
  ∀ n, P1120193666876009716.a n = A218255 n

end A218255

/-! ## A218255.P16815251465905491138

`A308052(A215145(n))`
-/

namespace A218255.P16815251465905491138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308052 (A215145 n).toNat

end

end A218255.P16815251465905491138

namespace A218255

/-- `A308052(A215145(n))` -/
def P16815251465905491138.Spec : Prop :=
  ∀ n, P16815251465905491138.a n = A218255 n

end A218255

/-!
# A218256: a(n) = |{m : multiplicative order of n mod m = 7}|.

The programs for A218256, there is no canonical definition to state claims against.
-/

/-! ## A218256.P11042370922276225980

`A212957(A167487(n+5))`
-/

namespace A218256.P11042370922276225980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212957 (A167487 (n + 5)).toNat

end

end A218256.P11042370922276225980

/-! ## A218256.P16593370268650154050

`A212957(A056119(n)+28)`
-/

namespace A218256.P16593370268650154050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212957 (A056119 n + 28).toNat

end

end A218256.P16593370268650154050

/-! ## A218256.P6331872700370738210

`A212957(A166136(n+5)+1)`
-/

namespace A218256.P6331872700370738210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212957 (A166136 (n + 5) + 1).toNat

end

end A218256.P6331872700370738210

/-! ## A218256.P2276291086677858442

`A212957(A167499(n+5)+2)`
-/

namespace A218256.P2276291086677858442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212957 (A167499 (n + 5) + 2).toNat

end

end A218256.P2276291086677858442

/-! ## A218256.P1501241596643141241

`A212957(A167614(n+5)+4)`
-/

namespace A218256.P1501241596643141241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212957 (A167614 (n + 5) + 4).toNat

end

end A218256.P1501241596643141241

/-! ## A218256.P7584403861176727619

`A212957(A000124(n+6)+6)`
-/

namespace A218256.P7584403861176727619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212957 (A000124 (n + 6) + 6).toNat

end

end A218256.P7584403861176727619

/-! ## A218256.P6856461771077037036

`A212957(A253145(n+5)+7)`
-/

namespace A218256.P6856461771077037036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212957 (A253145 (n + 5) + 7).toNat

end

end A218256.P6856461771077037036

/-! ## A218256.P1810166021915718710

`A212957(A000096(n+5)+8)`
-/

namespace A218256.P1810166021915718710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212957 (A000096 (n + 5) + 8).toNat

end

end A218256.P1810166021915718710

/-! ## A218256.P10929291451104528996

`A212957(A000217(n+6)+7)`
-/

namespace A218256.P10929291451104528996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212957 (A000217 (n + 6) + 7).toNat

end

end A218256.P10929291451104528996

/-! ## A218256.P7761399033279593421

`A212957(A034856(n+5)+9)`
-/

namespace A218256.P7761399033279593421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212957 (A034856 (n + 5) + 9).toNat

end

end A218256.P7761399033279593421

/-!
# A218257: a(n) = |{m : multiplicative order of n mod m = 8}|.

The programs for A218257, the canonical program `A218257.P16517323974653770966` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A218257 has offset 1).

The definition of A218257 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A218257.P16517323974653770966

`A059909((n+1)²)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A218257

/-- `A059909((n+1)²)` -/
def P16517323974653770966.Spec : Prop :=
  ∀ n, P16517323974653770966.a n = A218257 (n + 1)

theorem P16517323974653770966.correct : P16517323974653770966.Spec := by
  intro n
  simp only [A218257, Nat.add_sub_cancel]

end A218257

/-! ## A218257.P14207337148415642351

`lcm(2, A059909(A000290(n+1)))`
-/

namespace A218257.P14207337148415642351
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A059909 (A000290 (n + 1)).toNat)

end

end A218257.P14207337148415642351

namespace A218257

/-- `lcm(2, A059909(A000290(n+1)))` -/
def P14207337148415642351.Spec : Prop :=
  ∀ n, (P14207337148415642351.a n : ℤ) = A218257 (n + 1)

end A218257

/-! ## A218257.P14072753751966319114

`A254109(A059909(∑[2*n+1]))`
-/

namespace A218257.P14072753751966319114
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254109 (A059909 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A218257.P14072753751966319114

namespace A218257

/-- `A254109(A059909(∑[2*n+1]))` -/
def P14072753751966319114.Spec : Prop :=
  ∀ n, P14072753751966319114.a n = A218257 (n + 1)

end A218257

/-! ## A218257.P10066671511565694018

`A059909(∑[2*n+1])%A051387(n+1)`
-/

namespace A218257.P10066671511565694018
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A059909 (∑ j ∈ Finset.range (n + 1), f1 j)) (A051387 (n + 1))

end

end A218257.P10066671511565694018

namespace A218257

/-- `A059909(∑[2*n+1])%A051387(n+1)` -/
def P10066671511565694018.Spec : Prop :=
  ∀ n, P10066671511565694018.a n = A218257 (n + 1)

end A218257

/-! ## A218257.P16698181564366105097

`A059909(A000290(n+1))%A019562(n)`
-/

namespace A218257.P16698181564366105097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A059909 (A000290 (n + 1)).toNat) (A019562 n)

end

end A218257.P16698181564366105097

namespace A218257

/-- `A059909(A000290(n+1))%A019562(n)` -/
def P16698181564366105097.Spec : Prop :=
  ∀ n, P16698181564366105097.a n = A218257 (n + 1)

end A218257

/-! ## A218257.P18433471502046717456

`A059909(A000290(n+1))+char[A075950(n)]`
-/

namespace A218257.P18433471502046717456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075950 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059909 (A000290 (n + 1)).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A218257.P18433471502046717456

namespace A218257

/-- `A059909(A000290(n+1))+char[A075950(n)]` -/
def P18433471502046717456.Spec : Prop :=
  ∀ n, P18433471502046717456.a n = A218257 (n + 1)

end A218257

/-! ## A218257.P2185000507040961035

`A059909(A000290(n+1))+A000007(n+1)`
-/

namespace A218257.P2185000507040961035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059909 (A000290 (n + 1)).toNat + A000007 (n + 1)

end

end A218257.P2185000507040961035

namespace A218257

/-- `A059909(A000290(n+1))+A000007(n+1)` -/
def P2185000507040961035.Spec : Prop :=
  ∀ n, P2185000507040961035.a n = A218257 (n + 1)

end A218257

/-! ## A218257.P3268053198777457416

`A059909(A000290(n+1))^(A151548(n)%2)`
-/

namespace A218257.P3268053198777457416
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059909 (A000290 (n + 1)).toNat : ℚ) ^ (Int.tmod (A151548 n) 2 : ℤ)

end

end A218257.P3268053198777457416

namespace A218257

/-- `A059909(A000290(n+1))^(A151548(n)%2)` -/
def P3268053198777457416.Spec : Prop :=
  ∀ n, P3268053198777457416.a n = (A218257 (n + 1) : ℚ)

end A218257

/-! ## A218257.P2347741577592500686

`A059909(A000290(n+1))+A000086(2*n+2)`
-/

namespace A218257.P2347741577592500686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059909 (A000290 (n + 1)).toNat + A000086 (2 * n + 2)

end

end A218257.P2347741577592500686

namespace A218257

/-- `A059909(A000290(n+1))+A000086(2*n+2)` -/
def P2347741577592500686.Spec : Prop :=
  ∀ n, P2347741577592500686.a n = A218257 (n + 1)

end A218257

/-! ## A218257.P3795563303780507734

`A131743(2*n+4)+A059909(A000290(n+1))`
-/

namespace A218257.P3795563303780507734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131743 (2 * n + 4) + A059909 (A000290 (n + 1)).toNat

end

end A218257.P3795563303780507734

namespace A218257

/-- `A131743(2*n+4)+A059909(A000290(n+1))` -/
def P3795563303780507734.Spec : Prop :=
  ∀ n, P3795563303780507734.a n = A218257 (n + 1)

end A218257

/-! ## A218257.P15566788738079075098

`A010882(3*n+3)*A059909(A000290(n+1))`
-/

namespace A218257.P15566788738079075098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010882 (3 * n + 3) * A059909 (A000290 (n + 1)).toNat

end

end A218257.P15566788738079075098

namespace A218257

/-- `A010882(3*n+3)*A059909(A000290(n+1))` -/
def P15566788738079075098.Spec : Prop :=
  ∀ n, P15566788738079075098.a n = A218257 (n + 1)

end A218257

/-! ## A218257.P2554563979217020417

`A059909(A000290(n+1))^(A062739(n+1)%2)`
-/

namespace A218257.P2554563979217020417
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059909 (A000290 (n + 1)).toNat : ℚ) ^ (Int.tmod (A062739 (n + 1)) 2 : ℤ)

end

end A218257.P2554563979217020417

namespace A218257

/-- `A059909(A000290(n+1))^(A062739(n+1)%2)` -/
def P2554563979217020417.Spec : Prop :=
  ∀ n, P2554563979217020417.a n = (A218257 (n + 1) : ℚ)

end A218257

/-! ## A218257.P7458644535403780901

`A059909(A000290(n+1))^(A085564(n+1)%2)`
-/

namespace A218257.P7458644535403780901
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059909 (A000290 (n + 1)).toNat : ℚ) ^ (Int.tmod (A085564 (n + 1)) 2 : ℤ)

end

end A218257.P7458644535403780901

namespace A218257

/-- `A059909(A000290(n+1))^(A085564(n+1)%2)` -/
def P7458644535403780901.Spec : Prop :=
  ∀ n, P7458644535403780901.a n = (A218257 (n + 1) : ℚ)

end A218257

/-! ## A218257.P13675654319037836826

`A059909(A000290(n+1))+A010815(A085564(n+1))`
-/

namespace A218257.P13675654319037836826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059909 (A000290 (n + 1)).toNat + A010815 (A085564 (n + 1)).toNat

end

end A218257.P13675654319037836826

namespace A218257

/-- `A059909(A000290(n+1))+A010815(A085564(n+1))` -/
def P13675654319037836826.Spec : Prop :=
  ∀ n, P13675654319037836826.a n = A218257 (n + 1)

end A218257

/-!
# A218258: a(n) = |{m : multiplicative order of n mod m = 9}|.

The programs for A218258, there is no canonical definition to state claims against.
-/

/-! ## A218258.P5688444057579824240

`A212957(A167499(n+7)+4)`
-/

namespace A218258.P5688444057579824240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212957 (A167499 (n + 7) + 4).toNat

end

end A218258.P5688444057579824240

/-! ## A218258.P7147524954384413287

`A212957(A077169(n+9)+4)`
-/

namespace A218258.P7147524954384413287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212957 (A077169 (n + 9) + 4).toNat

end

end A218258.P7147524954384413287

/-! ## A218258.P1415132397515751439

`A212957(A000124(n+8)+8)`
-/

namespace A218258.P1415132397515751439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212957 (A000124 (n + 8) + 8).toNat

end

end A218258.P1415132397515751439

/-! ## A218258.P7742176092980103701

`A212957(A253145(n+7)+9)`
-/

namespace A218258.P7742176092980103701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212957 (A253145 (n + 7) + 9).toNat

end

end A218258.P7742176092980103701

/-! ## A218258.P4830097001050756111

`A212957(A000217(n+8)+9)`
-/

namespace A218258.P4830097001050756111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212957 (A000217 (n + 8) + 9).toNat

end

end A218258.P4830097001050756111

/-! ## A218258.P2002258767545982870

`A212957(A161680(n+9)+9)`
-/

namespace A218258.P2002258767545982870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212957 (A161680 (n + 9) + 9).toNat

end

end A218258.P2002258767545982870

/-! ## A218258.P2892919615956741706

`A212957(A133263(n+9)-(n+2))`
-/

namespace A218258.P2892919615956741706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212957 (A133263 (n + 9) - (n + 2 : ℤ)).toNat

end

end A218258.P2892919615956741706

/-! ## A218258.P2752549627925094540

`A212957(A052905(n+7)-5-2*n)`
-/

namespace A218258.P2752549627925094540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212957 (A052905 (n + 7) - 5 - (2 * n : ℤ)).toNat

end

end A218258.P2752549627925094540

/-! ## A218258.P11143107323435926690

`A212957(A008587(n+8)+A000096(n+2))`
-/

namespace A218258.P11143107323435926690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212957 (A008587 (n + 8) + A000096 (n + 2)).toNat

end

end A218258.P11143107323435926690

/-! ## A218258.P3455579916247558105

`A212957(A052905(n+7)-A004273(n+3))`
-/

namespace A218258.P3455579916247558105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212957 (A052905 (n + 7) - A004273 (n + 3)).toNat

end

end A218258.P3455579916247558105

/-!
# A218259: a(n) = |{m : multiplicative order of n mod m = 10}|.

The programs for A218259, there is no canonical definition to state claims against.
-/

/-! ## A218259.P6582595694990381069

`A059910((n+1)²)-A059910(n+1)`
-/

namespace A218259.P6582595694990381069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059910 ((n + 1) ^ 2) - A059910 (n + 1)

end

end A218259.P6582595694990381069

/-! ## A218259.P12728818476364769633

`A212957(A166136(n+8)+4)`
-/

namespace A218259.P12728818476364769633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212957 (A166136 (n + 8) + 4).toNat

end

end A218259.P12728818476364769633

/-! ## A218259.P456683440770623318

`A212957(A167499(n+8)+5)`
-/

namespace A218259.P456683440770623318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212957 (A167499 (n + 8) + 5).toNat

end

end A218259.P456683440770623318

/-! ## A218259.P10622723775341792255

`A212957(A133263(n+9)+8)`
-/

namespace A218259.P10622723775341792255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212957 (A133263 (n + 9) + 8).toNat

end

end A218259.P10622723775341792255

/-! ## A218259.P11349720215902067624

`A212957(A000217(n+9)+10)`
-/

namespace A218259.P11349720215902067624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212957 (A000217 (n + 9) + 10).toNat

end

end A218259.P11349720215902067624

/-! ## A218259.P14631981565257418228

`A212957(eq[11, A131818(n+1)])`
-/

namespace A218259.P14631981565257418228
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212957 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A218259.P14631981565257418228

/-! ## A218259.P3790291952801550899

`A212957(A167614(n+9)-(n+3))`
-/

namespace A218259.P3790291952801550899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212957 (A167614 (n + 9) - (n + 3 : ℤ)).toNat

end

end A218259.P3790291952801550899

/-! ## A218259.P5076119321571389155

`A212957(A055998(n+9)-8-2*n)`
-/

namespace A218259.P5076119321571389155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212957 (A055998 (n + 9) - 8 - (2 * n : ℤ)).toNat

end

end A218259.P5076119321571389155

/-!
# A218260: E.g.f.: Sum_{n>=0} Product_{k=1..n} tanh((2*k-1)*x).

The programs for A218260, there is no canonical definition to state claims against.
-/

/-! ## A218260.P7220377385864479411

`A000828(n)*A001586(n)`
-/

namespace A218260.P7220377385864479411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000828 n * A001586 n

end

end A218260.P7220377385864479411

/-! ## A218260.P14784458524209315387

`abs(A000828(n)*A212435(n))`
-/

namespace A218260.P14784458524209315387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000828 n * A212435 n|

end

end A218260.P14784458524209315387

/-! ## A218260.P289151432759398198

`A000822(A028310(n))*A000825(n)`
-/

namespace A218260.P289151432759398198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000822 (A028310 n).toNat * A000825 n

end

end A218260.P289151432759398198

/-! ## A218260.P9024698263390826237

`A001586(n)/2*A000831(A028310(n))`
-/

namespace A218260.P9024698263390826237
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001586 n : ℚ) / 2 * (A000831 (A028310 n).toNat : ℚ)

end

end A218260.P9024698263390826237

/-! ## A218260.P259296400160711310

`gcd(A188458(n), A212435(n))*A000828(n)`
-/

namespace A218260.P259296400160711310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (A188458 n) (A212435 n) : ℤ) * A000828 n

end

end A218260.P259296400160711310

/-!
# A218261: E.g.f.: Sum_{n>=0} Product_{k=1..n} (exp((2*k-1)*x) - 1) / (2*k-1).

The programs for A218261, there is no canonical definition to state claims against.
-/

/-! ## A218261.P8952835537504469440

`A037915(A006056(n)-1)`
-/

namespace A218261.P8952835537504469440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037915 (A006056 n - 1).toNat

end

end A218261.P8952835537504469440

/-! ## A218261.P2403151055392642290

`A004525(A356001(n)+2)`
-/

namespace A218261.P2403151055392642290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A356001 n + 2).toNat

end

end A218261.P2403151055392642290

/-!
# A218262: Number of standard Young tableaux of n cells and height >= 10.

The programs for A218262, there is no canonical definition to state claims against.
-/

/-! ## A218262.P12761772800145077990

`A000085(n+10)-A212915(n+10)`
-/

namespace A218262.P12761772800145077990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000085 (n + 10) - A212915 (n + 10)

end

end A218262.P12761772800145077990

/-! ## A218262.P7404485983169190808

`A182222(A167499(n+9)+5)`
-/

namespace A218262.P7404485983169190808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182222 (A167499 (n + 9) + 5).toNat

end

end A218262.P7404485983169190808

/-! ## A218262.P14958214721591352986

`A182222(A000096(n+9)+11)`
-/

namespace A218262.P14958214721591352986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182222 (A000096 (n + 9) + 11).toNat

end

end A218262.P14958214721591352986

/-! ## A218262.P12914802332419441154

`A182222(A000217(n+10)+10)`
-/

namespace A218262.P12914802332419441154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182222 (A000217 (n + 10) + 10).toNat

end

end A218262.P12914802332419441154

/-! ## A218262.P14183974865021560149

`A182222(A000124(n+11)-(n+2))`
-/

namespace A218262.P14183974865021560149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182222 (A000124 (n + 11) - (n + 2 : ℤ)).toNat

end

end A218262.P14183974865021560149

/-!
# A218263: Number of standard Young tableaux of n cells and height >= 3.

The programs for A218263, the canonical program `A218263.P8946944429989455353` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A218263 has offset 3).

The definition of A218263 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A218263.P8946944429989455353

`A000085(n+3)-A001405(n+3)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A218263

/-- `A000085(n+3)-A001405(n+3)` -/
def P8946944429989455353.Spec : Prop :=
  ∀ n, P8946944429989455353.a n = A218263 (n + 3)

theorem P8946944429989455353.correct : P8946944429989455353.Spec := by
  intro n
  simp only [A218263, Nat.add_sub_cancel]

end A218263

/-! ## A218263.P856210753638033285

`A182222(A167614(n+2))`
-/

namespace A218263.P856210753638033285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182222 (A167614 (n + 2)).toNat

end

end A218263.P856210753638033285

namespace A218263

/-- `A182222(A167614(n+2))` -/
def P856210753638033285.Spec : Prop :=
  ∀ n, P856210753638033285.a n = A218263 (n + 3)

end A218263

/-! ## A218263.P3391824581272437060

`A182222(A055999(n)+9)`
-/

namespace A218263.P3391824581272437060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182222 (A055999 n + 9).toNat

end

end A218263.P3391824581272437060

namespace A218263

/-- `A182222(A055999(n)+9)` -/
def P3391824581272437060.Spec : Prop :=
  ∀ n, P3391824581272437060.a n = A218263 (n + 3)

end A218263

/-! ## A218263.P10110271983102132570

`A182222(A000124(n+3)+2)`
-/

namespace A218263.P10110271983102132570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182222 (A000124 (n + 3) + 2).toNat

end

end A218263.P10110271983102132570

namespace A218263

/-- `A182222(A000124(n+3)+2)` -/
def P10110271983102132570.Spec : Prop :=
  ∀ n, P10110271983102132570.a n = A218263 (n + 3)

end A218263

/-! ## A218263.P6736334155228795616

`A182222(A000096(n+2)+4)`
-/

namespace A218263.P6736334155228795616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182222 (A000096 (n + 2) + 4).toNat

end

end A218263.P6736334155228795616

namespace A218263

/-- `A182222(A000096(n+2)+4)` -/
def P6736334155228795616.Spec : Prop :=
  ∀ n, P6736334155228795616.a n = A218263 (n + 3)

end A218263

/-!
# A218264: Number of standard Young tableaux of n cells and height >= 4.

The programs for A218264, the canonical program `A218264.P18402228888344710293` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A218264 has offset 4).

The definition of A218264 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A218264.P18402228888344710293

`A000085(n+4)-A001006(n+4)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A218264

/-- `A000085(n+4)-A001006(n+4)` -/
def P18402228888344710293.Spec : Prop :=
  ∀ n, P18402228888344710293.a n = A218264 (n + 4)

theorem P18402228888344710293.correct : P18402228888344710293.Spec := by
  intro n
  simp only [A218264, Nat.add_sub_cancel]

end A218264

/-! ## A218264.P4131581894425133109

`A182222(eq[4, A002262(n)])`
-/

namespace A218264.P4131581894425133109
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182222 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A218264.P4131581894425133109

namespace A218264

/-- `A182222(eq[4, A002262(n)])` -/
def P4131581894425133109.Spec : Prop :=
  ∀ n, P4131581894425133109.a n = A218264 (n + 4)

end A218264

/-! ## A218264.P2296134209830123417

`A182222(A000124(n+4)+3)`
-/

namespace A218264.P2296134209830123417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182222 (A000124 (n + 4) + 3).toNat

end

end A218264.P2296134209830123417

namespace A218264

/-- `A182222(A000124(n+4)+3)` -/
def P2296134209830123417.Spec : Prop :=
  ∀ n, P2296134209830123417.a n = A218264 (n + 4)

end A218264

/-! ## A218264.P2098543382268961364

`A182222(A167487(n+3)-3)`
-/

namespace A218264.P2098543382268961364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182222 (A167487 (n + 3) - 3).toNat

end

end A218264.P2098543382268961364

namespace A218264

/-- `A182222(A167487(n+3)-3)` -/
def P2098543382268961364.Spec : Prop :=
  ∀ n, P2098543382268961364.a n = A218264 (n + 4)

end A218264

/-! ## A218264.P13630204355552270368

`A182222(A000096(n+3)+5)`
-/

namespace A218264.P13630204355552270368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182222 (A000096 (n + 3) + 5).toNat

end

end A218264.P13630204355552270368

namespace A218264

/-- `A182222(A000096(n+3)+5)` -/
def P13630204355552270368.Spec : Prop :=
  ∀ n, P13630204355552270368.a n = A218264 (n + 4)

end A218264

/-!
# A218265: Number of standard Young tableaux of n cells and height >= 5.

The programs for A218265, the canonical program `A218265.P4459247732749169675` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A218265 has offset 5).

The definition of A218265 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005817, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A218265.P4459247732749169675

`A000085(n+5)-A005817(n+5)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A218265

/-- `A000085(n+5)-A005817(n+5)` -/
def P4459247732749169675.Spec : Prop :=
  ∀ n, P4459247732749169675.a n = A218265 (n + 5)

theorem P4459247732749169675.correct : P4459247732749169675.Spec := by
  intro n
  simp only [A218265, Nat.add_sub_cancel]

end A218265

/-! ## A218265.P14230673719562073155

`A182222(A167499(n+4))`
-/

namespace A218265.P14230673719562073155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182222 (A167499 (n + 4)).toNat

end

end A218265.P14230673719562073155

namespace A218265

/-- `A182222(A167499(n+4))` -/
def P14230673719562073155.Spec : Prop :=
  ∀ n, P14230673719562073155.a n = A218265 (n + 5)

end A218265

/-! ## A218265.P7165049517952488753

`A182222(eq[5, A002262(n)])`
-/

namespace A218265.P7165049517952488753
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182222 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A218265.P7165049517952488753

namespace A218265

/-- `A182222(eq[5, A002262(n)])` -/
def P7165049517952488753.Spec : Prop :=
  ∀ n, P7165049517952488753.a n = A218265 (n + 5)

end A218265

/-! ## A218265.P7637321588724163

`A182222(A000096(n+4)+6)`
-/

namespace A218265.P7637321588724163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182222 (A000096 (n + 4) + 6).toNat

end

end A218265.P7637321588724163

namespace A218265

/-- `A182222(A000096(n+4)+6)` -/
def P7637321588724163.Spec : Prop :=
  ∀ n, P7637321588724163.a n = A218265 (n + 5)

end A218265

/-! ## A218265.P3893546784862641620

`A182222(A000217(n+6)-(n+1))`
-/

namespace A218265.P3893546784862641620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182222 (A000217 (n + 6) - (n + 1 : ℤ)).toNat

end

end A218265.P3893546784862641620

namespace A218265

/-- `A182222(A000217(n+6)-(n+1))` -/
def P3893546784862641620.Spec : Prop :=
  ∀ n, P3893546784862641620.a n = A218265 (n + 5)

end A218265

/-!
# A218266: Number of standard Young tableaux of n cells and height >= 6.

The programs for A218266, there is no canonical definition to state claims against.
-/

/-! ## A218266.P17749058461705253912

`A000085(n+6)-A049401(n+6)`
-/

namespace A218266.P17749058461705253912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000085 (n + 6) - A049401 (n + 6)

end

end A218266.P17749058461705253912

/-! ## A218266.P5062089614762884236

`A182222(A166136(n+5))`
-/

namespace A218266.P5062089614762884236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182222 (A166136 (n + 5)).toNat

end

end A218266.P5062089614762884236

/-! ## A218266.P6795545654549511724

`A182222(eq[6, A002262(n)])`
-/

namespace A218266.P6795545654549511724
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182222 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A218266.P6795545654549511724

/-! ## A218266.P1194136223822429146

`A182222(eq[64, A059268(n)])`
-/

namespace A218266.P1194136223822429146
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  64

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182222 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A218266.P1194136223822429146

/-! ## A218266.P14499604586160297986

`A182222(A000096(n+5)+7)`
-/

namespace A218266.P14499604586160297986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182222 (A000096 (n + 5) + 7).toNat

end

end A218266.P14499604586160297986

/-!
# A218267: Number of standard Young tableaux of n cells and height >= 7.

The programs for A218267, there is no canonical definition to state claims against.
-/

/-! ## A218267.P16459037161311791686

`A000085(n+7)-A007579(n+7)`
-/

namespace A218267.P16459037161311791686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000085 (n + 7) - A007579 (n + 7)

end

end A218267.P16459037161311791686

/-! ## A218267.P10307981965286970296

`A218266(n+7)-A217326(n+7)`
-/

namespace A218267.P10307981965286970296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218266 (n + 7) - A217326 (n + 7)

end

end A218267.P10307981965286970296

/-! ## A218267.P1837486695380446019

`A182222(A167487(n+6))`
-/

namespace A218267.P1837486695380446019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182222 (A167487 (n + 6)).toNat

end

end A218267.P1837486695380446019

/-! ## A218267.P1265718154756491689

`A182222(eq[7, A002262(n)])`
-/

namespace A218267.P1265718154756491689
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182222 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A218267.P1265718154756491689

/-! ## A218267.P11828715969759084112

`A182222(A000096(n+6)+8)`
-/

namespace A218267.P11828715969759084112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182222 (A000096 (n + 6) + 8).toNat

end

end A218267.P11828715969759084112

/-!
# A218268: Number of standard Young tableaux of n cells and height >= 8.

The programs for A218268, there is no canonical definition to state claims against.
-/

/-! ## A218268.P11223266127342583755

`A000085(n+8)-A007578(n+8)`
-/

namespace A218268.P11223266127342583755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000085 (n + 8) - A007578 (n + 8)

end

end A218268.P11223266127342583755

/-! ## A218268.P17489375133763421365

`A182222(A000096(n+7)+9)`
-/

namespace A218268.P17489375133763421365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182222 (A000096 (n + 7) + 9).toNat

end

end A218268.P17489375133763421365

/-! ## A218268.P10590772781542195372

`A182222(eq[7, A025581(n)]+16)`
-/

namespace A218268.P10590772781542195372
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182222 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 16)

end

end A218268.P10590772781542195372

/-! ## A218268.P3369341395821755641

`A182222(A000217(n+9)-(n+1))`
-/

namespace A218268.P3369341395821755641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182222 (A000217 (n + 9) - (n + 1 : ℤ)).toNat

end

end A218268.P3369341395821755641

/-! ## A218268.P2471085449102772312

`A182222(A133263(n+9)-(n+3))`
-/

namespace A218268.P2471085449102772312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182222 (A133263 (n + 9) - (n + 3 : ℤ)).toNat

end

end A218268.P2471085449102772312

/-!
# A218269: Number of standard Young tableaux of n cells and height >= 9.

The programs for A218269, there is no canonical definition to state claims against.
-/

/-! ## A218269.P15761115290009461081

`A000085(n+9)-A007580(n+9)`
-/

namespace A218269.P15761115290009461081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000085 (n + 9) - A007580 (n + 9)

end

end A218269.P15761115290009461081

/-! ## A218269.P4100465059601053036

`A182222(eq[9, A002262(n)])`
-/

namespace A218269.P4100465059601053036
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182222 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A218269.P4100465059601053036

/-! ## A218269.P10665707097296964869

`A182222(A000096(n+8)+10)`
-/

namespace A218269.P10665707097296964869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182222 (A000096 (n + 8) + 10).toNat

end

end A218269.P10665707097296964869

/-! ## A218269.P1897418141651530148

`A182222(A000217(n+9)+9)`
-/

namespace A218269.P1897418141651530148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182222 (A000217 (n + 9) + 9).toNat

end

end A218269.P1897418141651530148

/-! ## A218269.P7463413594010020101

`A182222(eq[10, A002260(n+1)])`
-/

namespace A218269.P7463413594010020101
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182222 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A218269.P7463413594010020101

/-!
# A218270: a(0)=1, a(1)=1, a(n) = a(n-2)^a(n-1)+1.

The programs for A218270, there is no canonical definition to state claims against.
-/

/-! ## A218270.P6004824344815421233

`1+a(n-2)^a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A218270.P6004824344815421233
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  1 + a (n - 2) ^ a (n - 1)

end

end A218270.P6004824344815421233

/-!
# A218271: a(n) = a(n-1)^a(n-2) + a(n-3) with a(0) = a(1) = a(2) = 1.

The programs for A218271, the canonical program `A218271.P7968773687509278474` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A218271 has offset 0).

The definition of A218271 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)^a(n-2)+a(n-3)` (program `A218271.P7968773687509278474`, by `A218271.P7968773687509278474.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A218271.P7968773687509278474

`a(n-1)^a(n-2)+a(n-3)` with `a(0)=1, a(1)=1, a(2)=1`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A218271

/-- `a(n-1)^a(n-2)+a(n-3)` -/
def P7968773687509278474.Spec : Prop :=
  ∀ n, (P7968773687509278474.a n : ℤ) = A218271 n

theorem P7968773687509278474.correct : P7968773687509278474.Spec := by
  intro n
  simp only [A218271]

end A218271

/-! ## A218271.P2682351272117588806

`A276529(n)+a(n-1)^a(n-2)` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A218271.P2682351272117588806
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  (A276529 n : ℝ) + a (n - 1) ^ (a (n - 2))

end

end A218271.P2682351272117588806

namespace A218271

/-- `A276529(n)+a(n-1)^a(n-2)` -/
def P2682351272117588806.Spec : Prop :=
  ∀ n, P2682351272117588806.a n = (A218271 n : ℝ)

end A218271

/-! ## A218271.P11588443750806897856

`A085265(a(n-1)^(n-3))` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A218271.P11588443750806897856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  A085265 (SequenceMachineLib.roundAway ((a (n - 1) : ℚ) ^ ((n : ℤ) - 3 : ℤ))).toNat

end

end A218271.P11588443750806897856

namespace A218271

/-- `A085265(a(n-1)^(n-3))` -/
def P11588443750806897856.Spec : Prop :=
  ∀ n, P11588443750806897856.a n = A218271 n

end A218271

/-!
# A218272: Infinitesimal generator for transpose of the Pascal matrix A007318 (as upper triangular matrices).

The programs for A218272, there is no canonical definition to state claims against.
-/

/-! ## A218272.P14572504190829889984

`C(∑[char[∑[n+1]]], (n+1-C(comp[∑[n]]-n, 2))²²)-char[∑[n-1]]`
-/

namespace A218272.P14572504190829889984
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

def f7 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f6 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f7 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) ((((n + 1 : ℤ) - (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f4 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ)) ^ 2) ^ 2).toNat : ℤ) - ((if ∃ j, f6 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A218272.P14572504190829889984

/-! ## A218272.P12778984783523368228

`A132440(n)%12`
-/

namespace A218272.P12778984783523368228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A132440 n) 12

end

end A218272.P12778984783523368228

/-! ## A218272.P8781269484482025846

`A134402(n+1)%12`
-/

namespace A218272.P8781269484482025846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A134402 (n + 1)) 12

end

end A218272.P8781269484482025846

/-! ## A218272.P12955686731953903292

`∑[Δ[A051340(n)]%12]`
-/

namespace A218272.P12955686731953903292
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051340 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (n + 1) - f2 n) 12

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A218272.P12955686731953903292

/-! ## A218272.P9724978137033095647

`A132440(n*ceil(n/98))`
-/

namespace A218272.P9724978137033095647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132440 ((n : ℤ) * ⌈(n : ℚ) / 98⌉).toNat

end

end A218272.P9724978137033095647

/-! ## A218272.P7419263384492025536

`abs(Δ[A025660(n+2)])-1`
-/

namespace A218272.P7419263384492025536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025660 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n| - 1

end

end A218272.P7419263384492025536

/-! ## A218272.P10890083540808235732

`abs(Δ[A025669(n+2)])-1`
-/

namespace A218272.P10890083540808235732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025669 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n| - 1

end

end A218272.P10890083540808235732

/-! ## A218272.P4414025530081269157

`A000401(A051340(n+1))`
-/

namespace A218272.P4414025530081269157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000401 (A051340 (n + 1)).toNat

end

end A218272.P4414025530081269157

/-!
# A218273: Square triangular numbers that can be expressed as sums of a positive square number and a positive triangular number. Intersection of A182427 and A214937.

The programs for A218273, there is no canonical definition to state claims against.
-/

/-! ## A218273.P10142987011118862032

`A001110(comp[∑[floor((n/3)²)]])`
-/

namespace A218273.P10142987011118862032
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n : ℚ) / 3) ^ 2⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001110 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A218273.P10142987011118862032

/-! ## A218273.P967751039416990052

`A001109(comp[A186752(n+1)])²`
-/

namespace A218273.P967751039416990052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186752 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001109 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n) ^ 2

end

end A218273.P967751039416990052

/-! ## A218273.P14704462737980696977

`record[A001110(A029931(2*(n+2)))]`
-/

namespace A218273.P14704462737980696977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001110 (A029931 (2 * (n + 2))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A218273.P14704462737980696977

/-! ## A218273.P6413789778825881924

`A001109(A002024(n+3)+n+1)²`
-/

namespace A218273.P6413789778825881924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001109 (A002024 (n + 3) + (n + 1 : ℤ)).toNat ^ 2

end

end A218273.P6413789778825881924

/-!
# A218274: Number of n-step paths from (0,0) to (1,0) where all diagonal, vertical and horizontal steps are allowed.

The programs for A218274, there is no canonical definition to state claims against.
-/

/-! ## A218274.P5469600183511615205

`n*A037203(A151331(n))`
-/

namespace A218274.P5469600183511615205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A037203 (A151331 n).toNat

end

end A218274.P5469600183511615205

/-! ## A218274.P1910846848585835251

`n*A216266(A215931(n))`
-/

namespace A218274.P1910846848585835251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A216266 (A215931 n).toNat

end

end A218274.P1910846848585835251

/-!
# A218275: a(n) is the smallest n-isolated prime, or a(n)=0 if there are no n-isolated primes.

The programs for A218275, there is no canonical definition to state claims against.
-/

/-! ## A218275.P7060078711218183897

`A151800((n+2)*A195871(n+2))`
-/

namespace A218275.P7060078711218183897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 ((n + 2 : ℤ) * A195871 (n + 2)).toNat

end

end A218275.P7060078711218183897

/-! ## A218275.P7569776008196487615

`A007918((n+2)*A195871(n+2))`
-/

namespace A218275.P7569776008196487615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 ((n + 2 : ℤ) * A195871 (n + 2)).toNat

end

end A218275.P7569776008196487615

/-! ## A218275.P17830168067509528666

`A266620((n+2)*A195871(n+2))`
-/

namespace A218275.P17830168067509528666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266620 ((n + 2 : ℤ) * A195871 (n + 2)).toNat

end

end A218275.P17830168067509528666

/-!
# A218277: Convolution of level 3 of the divisor function.

The programs for A218277, there is no canonical definition to state claims against.
-/

/-! ## A218277.P10178291650378498844

`∑[A231516(A000105(n))]`
-/

namespace A218277.P10178291650378498844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231516 (A000105 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A218277.P10178291650378498844

/-!
# A218280: Hilltop maps: number of n X n binary arrays indicating the locations of corresponding elements not exceeded by any horizontal or vertical neighbor in a random 0..4 n X n array.

The programs for A218280, there is no canonical definition to state claims against.
-/

/-! ## A218280.P14477877735940726901

`A218288(∑[4*n]+1)`
-/

namespace A218280.P14477877735940726901
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218288 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A218280.P14477877735940726901

/-! ## A218280.P5060862533064376525

`or(1, A218288(A001844(n)))`
-/

namespace A218280.P5060862533064376525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A218288 (A001844 n).toNat)

end

end A218280.P5060862533064376525

/-! ## A218280.P15496644300664815470

`record[A218288(A152271(n²))]`
-/

namespace A218280.P15496644300664815470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218288 (A152271 (n ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A218280.P15496644300664815470

/-!
# A218281: Hilltop maps: number of n X 1 binary arrays indicating the locations of corresponding elements not exceeded by any horizontal or vertical neighbor in a random 0..4 n X 1 array.

The programs for A218281, the canonical program `A218281.P6360784936974079113` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A218281 has offset 1).

The definition of A218281 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A218281.P6360784936974079113

`∑[record[2*A251750(n)]]+1`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A218281

/-- `∑[record[2*A251750(n)]]+1` -/
def P6360784936974079113.Spec : Prop :=
  ∀ n, P6360784936974079113.a n = A218281 (n + 1)

theorem P6360784936974079113.correct : P6360784936974079113.Spec := by
  intro n
  simp only [A218281, Nat.add_sub_cancel]

end A218281

/-! ## A218281.P6762088508162521557

`a(n-1)+A000007(n)+record[2*A251750(n)]` with `a(0)=1`
-/

namespace A218281.P6762088508162521557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A251750 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A000007 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A218281.P6762088508162521557

namespace A218281

/-- `a(n-1)+A000007(n)+record[2*A251750(n)]` -/
def P6762088508162521557.Spec : Prop :=
  ∀ n, P6762088508162521557.a n = A218281 (n + 1)

end A218281

/-! ## A218281.P16599004166725423387

`∑[A004277(record[A251750(n)])]`
-/

namespace A218281.P16599004166725423387
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251750 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A218281.P16599004166725423387

namespace A218281

/-- `∑[A004277(record[A251750(n)])]` -/
def P16599004166725423387.Spec : Prop :=
  ∀ n, P16599004166725423387.a n = A218281 (n + 1)

end A218281

/-! ## A218281.P5428815761894599428

`A218288(∑[n]+1)`
-/

namespace A218281.P5428815761894599428
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218288 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A218281.P5428815761894599428

namespace A218281

/-- `A218288(∑[n]+1)` -/
def P5428815761894599428.Spec : Prop :=
  ∀ n, P5428815761894599428.a n = A218281 (n + 1)

end A218281

/-! ## A218281.P3629930371417157063

`or(1, A218288(A000124(n)))`
-/

namespace A218281.P3629930371417157063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A218288 (A000124 n).toNat)

end

end A218281.P3629930371417157063

namespace A218281

/-- `or(1, A218288(A000124(n)))` -/
def P3629930371417157063.Spec : Prop :=
  ∀ n, P3629930371417157063.a n = A218281 (n + 1)

end A218281

/-!
# A218282: Hilltop maps: number of nX2 binary arrays indicating the locations of corresponding elements not exceeded by any horizontal or vertical neighbor in a random 0..4 nX2 array.

The programs for A218282, there is no canonical definition to state claims against.
-/

/-! ## A218282.P10590837851587293833

`A218288(∑[n+1]+2)`
-/

namespace A218282.P10590837851587293833
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218288 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A218282.P10590837851587293833

/-! ## A218282.P4965987205895692393

`record[A218288(abs(A201163(n)))]`
-/

namespace A218282.P4965987205895692393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218288 |A201163 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A218282.P4965987205895692393

/-! ## A218282.P2977276776039487631

`record[A218288(Δ[A003453(n+5)])]`
-/

namespace A218282.P2977276776039487631
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218288 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A218282.P2977276776039487631

/-! ## A218282.P17301752076621998280

`A054977(n+1)*A218288(A000096(n+1))`
-/

namespace A218282.P17301752076621998280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 (n + 1) * A218288 (A000096 (n + 1)).toNat

end

end A218282.P17301752076621998280

/-! ## A218282.P14317229346627634048

`A218288(A000096(n+1))/A054977(A218288(n+2))`
-/

namespace A218282.P14317229346627634048
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A218288 (A000096 (n + 1)).toNat : ℚ) / (A054977 (A218288 (n + 2)).toNat : ℚ)

end

end A218282.P14317229346627634048

/-!
# A218283: Hilltop maps: number of n X 3 binary arrays indicating the locations of corresponding elements not exceeded by any horizontal or vertical neighbor in a random 0..4 n X 3 array.

The programs for A218283, there is no canonical definition to state claims against.
-/

/-! ## A218283.P11740421036799877098

`A218288(∑[n+2]+4)`
-/

namespace A218283.P11740421036799877098
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218288 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A218283.P11740421036799877098

/-! ## A218283.P4810702791182323362

`or(1, A218288(A167614(n+1)))`
-/

namespace A218283.P4810702791182323362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A218288 (A167614 (n + 1)).toNat)

end

end A218283.P4810702791182323362

/-! ## A218283.P686873544355588563

`A218288(A167614(n+1))+A054900(n)`
-/

namespace A218283.P686873544355588563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218288 (A167614 (n + 1)).toNat + A054900 n

end

end A218283.P686873544355588563

/-! ## A218283.P2744173918496648307

`A218288(A167614(n+1))+A185044(n)`
-/

namespace A218283.P2744173918496648307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218288 (A167614 (n + 1)).toNat + A185044 n

end

end A218283.P2744173918496648307

/-! ## A218283.P5696570851577215715

`A218288(A167614(n+1))+A185203(n)`
-/

namespace A218283.P5696570851577215715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218288 (A167614 (n + 1)).toNat + A185203 n

end

end A218283.P5696570851577215715

/-!
# A218284: Hilltop maps: number of nX4 binary arrays indicating the locations of corresponding elements not exceeded by any horizontal or vertical neighbor in a random 0..4 nX4 array.

The programs for A218284, there is no canonical definition to state claims against.
-/

/-! ## A218284.P7371708350028941712

`A218288(∑[n+3]+7)`
-/

namespace A218284.P7371708350028941712
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218288 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A218284.P7371708350028941712

/-! ## A218284.P407815384582846624

`record[gcd(A122288(n), A218288(n+5))]`
-/

namespace A218284.P407815384582846624
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A122288 n) (A218288 (n + 5))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A218284.P407815384582846624

/-! ## A218284.P7886722742712922259

`A218288(A055998(n+2))+A011855(n)`
-/

namespace A218284.P7886722742712922259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218288 (A055998 (n + 2)).toNat + A011855 n

end

end A218284.P7886722742712922259

/-! ## A218284.P7228647364239316304

`A218288(A055998(n+2))+A185226(n)`
-/

namespace A218284.P7228647364239316304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218288 (A055998 (n + 2)).toNat + A185226 n

end

end A218284.P7228647364239316304

/-! ## A218284.P925608754612938343

`A218288(A055998(n+2))*A356224(2*n+5)`
-/

namespace A218284.P925608754612938343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218288 (A055998 (n + 2)).toNat * A356224 (2 * n + 5)

end

end A218284.P925608754612938343

/-!
# A218285: Hilltop maps: number of n X 5 binary arrays indicating the locations of corresponding elements not exceeded by any horizontal or vertical neighbor in a random 0..4 n X 5 array.

The programs for A218285, there is no canonical definition to state claims against.
-/

/-! ## A218285.P7562208095456994416

`A218288(A167499(n+3))`
-/

namespace A218285.P7562208095456994416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218288 (A167499 (n + 3)).toNat

end

end A218285.P7562208095456994416

/-! ## A218285.P13323380764734978570

`A218288(A155212(n)+13)`
-/

namespace A218285.P13323380764734978570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218288 (A155212 n + 13).toNat

end

end A218285.P13323380764734978570

/-! ## A218285.P6384443895882653543

`A218288(A056000(n)+15)`
-/

namespace A218285.P6384443895882653543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218288 (A056000 n + 15).toNat

end

end A218285.P6384443895882653543

/-! ## A218285.P3524894474173885618

`A218288(eq[7, A066657(n)])`
-/

namespace A218285.P3524894474173885618
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218288 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A218285.P3524894474173885618

/-! ## A218285.P930624130775359250

`A218288(A167614(n+3)+2)`
-/

namespace A218285.P930624130775359250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218288 (A167614 (n + 3) + 2).toNat

end

end A218285.P930624130775359250

/-!
# A218286: Hilltop maps: number of nX6 binary arrays indicating the locations of corresponding elements not exceeded by any horizontal or vertical neighbor in a random 0..4 nX6 array.

The programs for A218286, there is no canonical definition to state claims against.
-/

/-! ## A218286.P11549657757448063613

`A218288(A167499(n+4)+1)`
-/

namespace A218286.P11549657757448063613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218288 (A167499 (n + 4) + 1).toNat

end

end A218286.P11549657757448063613

/-! ## A218286.P4001826512719922097

`A218288(A167614(n+4)+3)`
-/

namespace A218286.P4001826512719922097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218288 (A167614 (n + 4) + 3).toNat

end

end A218286.P4001826512719922097

/-! ## A218286.P15675282916647031588

`A218288(A000096(n+4)+7)`
-/

namespace A218286.P15675282916647031588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218288 (A000096 (n + 4) + 7).toNat

end

end A218286.P15675282916647031588

/-! ## A218286.P11406561253780101357

`A218288(A034856(n+4)+8)`
-/

namespace A218286.P11406561253780101357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218288 (A034856 (n + 4) + 8).toNat

end

end A218286.P11406561253780101357

/-! ## A218286.P11755055105055523035

`A218288(eq[7, A131818(n+1)])`
-/

namespace A218286.P11755055105055523035
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218288 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A218286.P11755055105055523035

/-!
# A218287: Hilltop maps: number of nX7 binary arrays indicating the locations of corresponding elements not exceeded by any horizontal or vertical neighbor in a random 0..4 nX7 array.

The programs for A218287, there is no canonical definition to state claims against.
-/

/-! ## A218287.P2194926163426765905

`A218288(A374008(n+1))`
-/

namespace A218287.P2194926163426765905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218288 (A374008 (n + 1)).toNat

end

end A218287.P2194926163426765905

/-! ## A218287.P1199716843902896251

`A218288(A055999(n+4))`
-/

namespace A218287.P1199716843902896251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218288 (A055999 (n + 4)).toNat

end

end A218287.P1199716843902896251

/-! ## A218287.P16844639410418668329

`A218288(A056119(n)+28)`
-/

namespace A218287.P16844639410418668329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218288 (A056119 n + 28).toNat

end

end A218287.P16844639410418668329

/-!
# A218288: T(n,k)=Hilltop maps: number of nXk binary arrays indicating the locations of corresponding elements not exceeded by any horizontal or vertical neighbor in a random 0..4 nXk array.

The programs for A218288, there is no canonical definition to state claims against.
-/

/-! ## A218288.P3457436423878908503

`or(A001222(A281754(n)), A218242(n+1))`
-/

namespace A218288.P3457436423878908503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001222 (A281754 n).toNat) (A218242 (n + 1))

end

end A218288.P3457436423878908503

/-! ## A218288.P17114191958600068919

`or(A001222(A285542(n)), A218242(n+1))`
-/

namespace A218288.P17114191958600068919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001222 (A285542 n).toNat) (A218242 (n + 1))

end

end A218288.P17114191958600068919

/-! ## A218288.P15363836509348886769

`or(A001222(A286206(n)), A218242(n+1))`
-/

namespace A218288.P15363836509348886769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001222 (A286206 n).toNat) (A218242 (n + 1))

end

end A218288.P15363836509348886769

/-! ## A218288.P5795697732502963886

`or(A112631(A183262(n+1)), A218242(n+1))`
-/

namespace A218288.P5795697732502963886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A112631 (A183262 (n + 1)).toNat) (A218242 (n + 1))

end

end A218288.P5795697732502963886

/-! ## A218288.P9056597300185864245

`or(A139351(A000602(n)), A218242(n+1))`
-/

namespace A218288.P9056597300185864245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A139351 (A000602 n).toNat) (A218242 (n + 1))

end

end A218288.P9056597300185864245

/-!
# A218289: Denominator of the sixth increasing diagonal of the autosequence of the second kind from (-1)^n/(n+1).

The programs for A218289, there is no canonical definition to state claims against.
-/

/-! ## A218289.P16897026881690060339

`(n+1)*(n+2)*(n+3)*a(n-10)/((n-7)*(n-8)*(n-9))` with `a(0)=6, a(1)=12, a(2)=12, a(3)=12, a(4)=210, a(5)=168, a(6)=504, a(7)=72, a(8)=198, a(9)=660`
-/

namespace A218289.P16897026881690060339
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [6, 12, 12, 12, 210, 168, 504, 72, 198, 660] fun n a =>
  (n + 1 : ℚ) * ((n + 2 : ℚ) * ((n + 3 : ℚ) * a (n - 10))) / (((n : ℤ) - 7) * (((n : ℤ) - 8) * ((n : ℤ) - 9)) : ℚ)

end

end A218289.P16897026881690060339

/-! ## A218289.P14329824973002876436

`gcd(∑[A303916(n)], A033931(n+1))`
-/

namespace A218289.P14329824973002876436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303916 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (∑ j ∈ Finset.range (n + 1), f1 j) (A033931 (n + 1))

end

end A218289.P14329824973002876436

/-! ## A218289.P8777003132483077211

`lcm(n+1, A060791(A060798(n+3)))`
-/

namespace A218289.P8777003132483077211
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 1 : ℤ) (A060791 (A060798 (n + 3)).toNat)

end

end A218289.P8777003132483077211

/-! ## A218289.P9984237837461745452

`A033931(n+1)/gcd(5, A000466(n))`
-/

namespace A218289.P9984237837461745452
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033931 (n + 1) : ℚ) / (Int.gcd 5 (A000466 n) : ℚ)

end

end A218289.P9984237837461745452

/-! ## A218289.P3651961462154568275

`A060791(A027626(n))*A109047(n+1)`
-/

namespace A218289.P3651961462154568275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060791 (A027626 n).toNat * A109047 (n + 1)

end

end A218289.P3651961462154568275

/-!
# A218290: Multiples of 5 such that the sum of their digits is also a multiple of 5.

The programs for A218290, the canonical program `A218290.P1011226508361504062` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A218290 has offset 1).

The definition of A218290 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A218290.P1011226508361504062

`∩[A227793(n+1), A008706(n)]`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A218290

/-- `∩[A227793(n+1), A008706(n)]` -/
def P1011226508361504062.Spec : Prop :=
  ∀ n, (P1011226508361504062.a n : ℤ) = A218290 (n + 1)

theorem P1011226508361504062.correct : P1011226508361504062.Spec := by
  intro n
  simp only [A218290, Nat.add_sub_cancel]

end A218290

/-! ## A218290.P13880501791035976162

`∩[A227793(n+1), A135042(n)]`
-/

namespace A218290.P13880501791035976162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227793 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135042 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A218290.P13880501791035976162

namespace A218290

/-- `∩[A227793(n+1), A135042(n)]` -/
def P13880501791035976162.Spec : Prop :=
  ∀ n, (P13880501791035976162.a n : ℤ) = A218290 (n + 1)

end A218290

/-! ## A218290.P5428568992697409078

`∩[A064509(n+1), A227793(n+1)]`
-/

namespace A218290.P5428568992697409078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064509 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227793 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A218290.P5428568992697409078

namespace A218290

/-- `∩[A064509(n+1), A227793(n+1)]` -/
def P5428568992697409078.Spec : Prop :=
  ∀ n, (P5428568992697409078.a n : ℤ) = A218290 (n + 1)

end A218290

/-! ## A218290.P11240220995456425219

`∩[A227793(n+1), A335365(n+1)]`
-/

namespace A218290.P11240220995456425219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227793 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335365 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A218290.P11240220995456425219

namespace A218290

/-- `∩[A227793(n+1), A335365(n+1)]` -/
def P11240220995456425219.Spec : Prop :=
  ∀ n, (P11240220995456425219.a n : ℤ) = A218290 (n + 1)

end A218290

/-! ## A218290.P9038678513055507593

`filter[A227793(n+2), A079998(#)]`
-/

namespace A218290.P9038678513055507593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227793 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A079998 (f1 j).toNat = 1) n)

end

end A218290.P9038678513055507593

namespace A218290

/-- `filter[A227793(n+2), A079998(#)]` -/
def P9038678513055507593.Spec : Prop :=
  ∀ n, P9038678513055507593.a n = A218290 (n + 1)

end A218290

/-! ## A218290.P15558677084600459215

`eq[A003079(n), A053841(A007953(n))]`
-/

namespace A218290.P15558677084600459215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003079 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053841 (A007953 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A218290.P15558677084600459215

namespace A218290

/-- `eq[A003079(n), A053841(A007953(n))]` -/
def P15558677084600459215.Spec : Prop :=
  ∀ n, (P15558677084600459215.a n : ℤ) = A218290 (n + 1)

end A218290

/-! ## A218290.P13536045128407642162

`eq[A003079(n), A053841(A169805(n))]`
-/

namespace A218290.P13536045128407642162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003079 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053841 (A169805 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A218290.P13536045128407642162

namespace A218290

/-- `eq[A003079(n), A053841(A169805(n))]` -/
def P13536045128407642162.Spec : Prop :=
  ∀ n, (P13536045128407642162.a n : ℤ) = A218290 (n + 1)

end A218290

/-! ## A218290.P8614147520915569887

`eq[A003079(n), A053841(1-A160941(n+1)+n)]`
-/

namespace A218290.P8614147520915569887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003079 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053841 (1 - A160941 (n + 1) + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A218290.P8614147520915569887

namespace A218290

/-- `eq[A003079(n), A053841(1-A160941(n+1)+n)]` -/
def P8614147520915569887.Spec : Prop :=
  ∀ n, (P8614147520915569887.a n : ℤ) = A218290 (n + 1)

end A218290

/-!
# A218291: Multiples of 6 such that the sum of their digits is also a multiple of 6.

The programs for A218291, the canonical program `A218291.P17440105116101161052` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A218291 has offset 1).

The definition of A218291 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A218291.P9473090186625315219

`∩[2*n, A274319(n+2)]`
-/

namespace A218291.P9473090186625315219
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274319 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A218291.P9473090186625315219

namespace A218291

/-- `∩[2*n, A274319(n+2)]` -/
def P9473090186625315219.Spec : Prop :=
  ∀ n, (P9473090186625315219.a n : ℤ) = A218291 (n + 1)

end A218291

/-! ## A218291.P17440105116101161052

`filter[A274319(n+2), A079979(#)]`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A218291

/-- `filter[A274319(n+2), A079979(#)]` -/
def P17440105116101161052.Spec : Prop :=
  ∀ n, P17440105116101161052.a n = A218291 (n + 1)

theorem P17440105116101161052.correct : P17440105116101161052.Spec := by
  intro n
  simp only [A218291, Nat.add_sub_cancel]

end A218291

/-! ## A218291.P16484808098835753648

`filter[A274319(n+2), A374197(#)]`
-/

namespace A218291.P16484808098835753648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274319 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374197 (f1 j).toNat = 1) n)

end

end A218291.P16484808098835753648

namespace A218291

/-- `filter[A274319(n+2), A374197(#)]` -/
def P16484808098835753648.Spec : Prop :=
  ∀ n, P16484808098835753648.a n = A218291 (n + 1)

end A218291

/-! ## A218291.P9579029546173440249

`∩[A274319(n+1), A008458(n)]`
-/

namespace A218291.P9579029546173440249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A218291.P9579029546173440249

namespace A218291

/-- `∩[A274319(n+1), A008458(n)]` -/
def P9579029546173440249.Spec : Prop :=
  ∀ n, (P9579029546173440249.a n : ℤ) = A218291 (n + 1)

end A218291

/-! ## A218291.P17935286037579860872

`filter[A179082(n+2), A079979(#)]`
-/

namespace A218291.P17935286037579860872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179082 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A079979 (f1 j).toNat = 1) n)

end

end A218291.P17935286037579860872

namespace A218291

/-- `filter[A179082(n+2), A079979(#)]` -/
def P17935286037579860872.Spec : Prop :=
  ∀ n, P17935286037579860872.a n = A218291 (n + 1)

end A218291

/-! ## A218291.P1650002991255303042

`filter[A179082(n+2), A093719(#)]`
-/

namespace A218291.P1650002991255303042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179082 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A093719 (f1 j).toNat = 1) n)

end

end A218291.P1650002991255303042

namespace A218291

/-- `filter[A179082(n+2), A093719(#)]` -/
def P1650002991255303042.Spec : Prop :=
  ∀ n, P1650002991255303042.a n = A218291 (n + 1)

end A218291

/-! ## A218291.P1172790855984703206

`∩[A179082(n+1), A008458(n)]`
-/

namespace A218291.P1172790855984703206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179082 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A218291.P1172790855984703206

namespace A218291

/-- `∩[A179082(n+1), A008458(n)]` -/
def P1172790855984703206.Spec : Prop :=
  ∀ n, (P1172790855984703206.a n : ℤ) = A218291 (n + 1)

end A218291

/-! ## A218291.P9594743339054951274

`∩[A179082(n+1), A231960(n+1)]`
-/

namespace A218291.P9594743339054951274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179082 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231960 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A218291.P9594743339054951274

namespace A218291

/-- `∩[A179082(n+1), A231960(n+1)]` -/
def P9594743339054951274.Spec : Prop :=
  ∀ n, (P9594743339054951274.a n : ℤ) = A218291 (n + 1)

end A218291

/-! ## A218291.P13213410861325247297

`∩[A179082(n+1), A378884(n+1)]`
-/

namespace A218291.P13213410861325247297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179082 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378884 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A218291.P13213410861325247297

namespace A218291

/-- `∩[A179082(n+1), A378884(n+1)]` -/
def P13213410861325247297.Spec : Prop :=
  ∀ n, (P13213410861325247297.a n : ℤ) = A218291 (n + 1)

end A218291

/-! ## A218291.P13390830429286930600

`∩[A179082(n+1), A008486(n)]`
-/

namespace A218291.P13390830429286930600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179082 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A218291.P13390830429286930600

namespace A218291

/-- `∩[A179082(n+1), A008486(n)]` -/
def P13390830429286930600.Spec : Prop :=
  ∀ n, (P13390830429286930600.a n : ℤ) = A218291 (n + 1)

end A218291

/-! ## A218291.P8190003956257053830

`∩[A274319(n+1), A064466(n)]`
-/

namespace A218291.P8190003956257053830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064466 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A218291.P8190003956257053830

namespace A218291

/-- `∩[A274319(n+1), A064466(n)]` -/
def P8190003956257053830.Spec : Prop :=
  ∀ n, (P8190003956257053830.a n : ℤ) = A218291 (n + 1)

end A218291

/-! ## A218291.P13571662013285979942

`filter[A154387(n+1), A079979(#)]`
-/

namespace A218291.P13571662013285979942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154387 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A079979 (f1 j).toNat = 1) n)

end

end A218291.P13571662013285979942

namespace A218291

/-- `filter[A154387(n+1), A079979(#)]` -/
def P13571662013285979942.Spec : Prop :=
  ∀ n, P13571662013285979942.a n = A218291 (n + 1)

end A218291

/-! ## A218291.P5983767310584192153

`∩[A154387(n+1), A008458(n)]`
-/

namespace A218291.P5983767310584192153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154387 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A218291.P5983767310584192153

namespace A218291

/-- `∩[A154387(n+1), A008458(n)]` -/
def P5983767310584192153.Spec : Prop :=
  ∀ n, (P5983767310584192153.a n : ℤ) = A218291 (n + 1)

end A218291

/-! ## A218291.P13893158330397598645

`∩[A154387(n+1), A008588(n)]`
-/

namespace A218291.P13893158330397598645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154387 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008588 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A218291.P13893158330397598645

namespace A218291

/-- `∩[A154387(n+1), A008588(n)]` -/
def P13893158330397598645.Spec : Prop :=
  ∀ n, (P13893158330397598645.a n : ℤ) = A218291 (n + 1)

end A218291

/-! ## A218291.P1114338325867107942

`∩[A274319(n+1), A024995(n+2)]`
-/

namespace A218291.P1114338325867107942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024995 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A218291.P1114338325867107942

namespace A218291

/-- `∩[A274319(n+1), A024995(n+2)]` -/
def P1114338325867107942.Spec : Prop :=
  ∀ n, (P1114338325867107942.a n : ℤ) = A218291 (n + 1)

end A218291

/-! ## A218291.P1595156214711641012

`∩[A141641(n+1), A008458(n)]`
-/

namespace A218291.P1595156214711641012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141641 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A218291.P1595156214711641012

namespace A218291

/-- `∩[A141641(n+1), A008458(n)]` -/
def P1595156214711641012.Spec : Prop :=
  ∀ n, (P1595156214711641012.a n : ℤ) = A218291 (n + 1)

end A218291

/-! ## A218291.P9078157653530421931

`∩[A141641(n+1), A008588(n)]`
-/

namespace A218291.P9078157653530421931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141641 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008588 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A218291.P9078157653530421931

namespace A218291

/-- `∩[A141641(n+1), A008588(n)]` -/
def P9078157653530421931.Spec : Prop :=
  ∀ n, (P9078157653530421931.a n : ℤ) = A218291 (n + 1)

end A218291

/-! ## A218291.P14753797705691597740

`∩[A008458(n), A054683(n+1)]`
-/

namespace A218291.P14753797705691597740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054683 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A218291.P14753797705691597740

namespace A218291

/-- `∩[A008458(n), A054683(n+1)]` -/
def P14753797705691597740.Spec : Prop :=
  ∀ n, (P14753797705691597740.a n : ℤ) = A218291 (n + 1)

end A218291

/-! ## A218291.P5069943322783775091

`∩[A274319(n+1), A316571(n+1)]`
-/

namespace A218291.P5069943322783775091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316571 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A218291.P5069943322783775091

namespace A218291

/-- `∩[A274319(n+1), A316571(n+1)]` -/
def P5069943322783775091.Spec : Prop :=
  ∀ n, (P5069943322783775091.a n : ℤ) = A218291 (n + 1)

end A218291

/-! ## A218291.P2704421360305786837

`filter[A179082(n+2), A079978(#)]`
-/

namespace A218291.P2704421360305786837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179082 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A079978 (f1 j).toNat = 1) n)

end

end A218291.P2704421360305786837

namespace A218291

/-- `filter[A179082(n+2), A079978(#)]` -/
def P2704421360305786837.Spec : Prop :=
  ∀ n, P2704421360305786837.a n = A218291 (n + 1)

end A218291

/-!
# A218292: Multiples of 10 such that the sum of their digits is also a multiple of 10.

The programs for A218292, there is no canonical definition to state claims against.
-/

/-! ## A218292.P13784107617219304411

`10*A094677(n+1)`
-/

namespace A218292.P13784107617219304411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * A094677 (n + 1)

end

end A218292.P13784107617219304411

/-! ## A218292.P4083711662658174905

`A008592(A094677(n+1))`
-/

namespace A218292.P4083711662658174905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008592 (A094677 (n + 1)).toNat

end

end A218292.P4083711662658174905

/-! ## A218292.P5073935081769478865

`∩[A128290(n+1), A008592(n)]`
-/

namespace A218292.P5073935081769478865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128290 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008592 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A218292.P5073935081769478865

/-! ## A218292.P1664382822175686977

`10*A098488(10*A226134(n+1))`
-/

namespace A218292.P1664382822175686977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * A098488 (10 * A226134 (n + 1)).toNat

end

end A218292.P1664382822175686977

/-! ## A218292.P5469270875345043165

`∩[A094677(n+1), A370532(n+1)]`
-/

namespace A218292.P5469270875345043165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094677 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370532 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A218292.P5469270875345043165

/-! ## A218292.P6611615299611451716

`∩[A094677(n+1), A396948(n+1)]`
-/

namespace A218292.P6611615299611451716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094677 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396948 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A218292.P6611615299611451716

/-! ## A218292.P1795508664097549948

`∩[A128290(n+1), A396948(n+1)]`
-/

namespace A218292.P1795508664097549948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128290 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396948 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A218292.P1795508664097549948

/-! ## A218292.P12266972916991465448

`∩[A017173(n+1)+n, A094677(n+2)]`
-/

namespace A218292.P12266972916991465448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017173 (n + 1) + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094677 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A218292.P12266972916991465448

/-! ## A218292.P10384848314479633489

`record[A094677(A094677(A126759(n)))]`
-/

namespace A218292.P10384848314479633489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094677 (A094677 (A126759 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A218292.P10384848314479633489

/-! ## A218292.P8673566444736941888

`record[A094677(A094677(A133310(n)))]`
-/

namespace A218292.P8673566444736941888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094677 (A094677 (A133310 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A218292.P8673566444736941888

/-! ## A218292.P10645299275701817500

`record[A094677(A094677(A286626(n)))]`
-/

namespace A218292.P10645299275701817500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094677 (A094677 (A286626 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A218292.P10645299275701817500

/-! ## A218292.P6029100217412753660

`record[A094677(A094677(A328399(n)))]`
-/

namespace A218292.P6029100217412753660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094677 (A094677 (A328399 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A218292.P6029100217412753660

/-! ## A218292.P10185858058822816716

`∩[A232709(n+1), A396948(n+1)]`
-/

namespace A218292.P10185858058822816716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232709 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396948 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A218292.P10185858058822816716

/-!
# A218293: Number of standard Young tableaux with shapes corresponding to partitions into distinct parts.

The programs for A218293, there is no canonical definition to state claims against.
-/

/-! ## A218293.P13949780775876296012

`A219272(∑[A238531(n)])`
-/

namespace A218293.P13949780775876296012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238531 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219272 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A218293.P13949780775876296012

/-! ## A218293.P3788465732610624247

`A219272(A004006(n)+n)`
-/

namespace A218293.P3788465732610624247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219272 (A004006 n + (n : ℤ)).toNat

end

end A218293.P3788465732610624247

/-! ## A218293.P5181161798018750167

`A219272(A000125(n)-1+n)`
-/

namespace A218293.P5181161798018750167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219272 (A000125 n - 1 + (n : ℤ)).toNat

end

end A218293.P5181161798018750167

/-! ## A218293.P18164985093928295812

`A219272(n-(1-A000125(n)))`
-/

namespace A218293.P18164985093928295812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219272 ((n : ℤ) - (1 - A000125 n)).toNat

end

end A218293.P18164985093928295812

/-! ## A218293.P14371196140843433090

`A219272(∑[A133263(n)])`
-/

namespace A218293.P14371196140843433090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133263 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219272 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A218293.P14371196140843433090

/-!
# A218294: G.f. satisfies: A(x) = 1 + Sum_{n>=1} 2*x^n * A(x)^(2*n^2).

The programs for A218294, there is no canonical definition to state claims against.
-/

/-! ## A218294.P8518858867182168837

`A037915(A068767(n)+n)`
-/

namespace A218294.P8518858867182168837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037915 (A068767 n + (n : ℤ)).toNat

end

end A218294.P8518858867182168837

/-!
# A218295: G.f. satisfies: A(x) = 1 + Sum_{n>=1} 2*x^n * A(x)^(3*n^2).

The programs for A218295, there is no canonical definition to state claims against.
-/

/-! ## A218295.P1823586986606105181

`A005206(A118790(n))`
-/

namespace A218295.P1823586986606105181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005206 (A118790 n).toNat

end

end A218295.P1823586986606105181

/-!
# A218296: Expansion of e.g.f. Sum_{n>=0} n^n * cosh(n*x) * x^n/n!.

The programs for A218296, there is no canonical definition to state claims against.
-/

/-! ## A218296.P328844820926537610

`(A072034(n)+A000142(n))/2`
-/

namespace A218296.P328844820926537610
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A072034 n + A000142 n : ℚ) / 2

end

end A218296.P328844820926537610

/-! ## A218296.P17884960456964958211

`(A215080(A000096(n))+n!)/2`
-/

namespace A218296.P17884960456964958211
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A215080 (A000096 n).toNat + (Nat.factorial n : ℤ) : ℚ) / 2

end

end A218296.P17884960456964958211

/-!
# A218298: G.f. satisfies: A(x) = exp( Sum_{n>=1} x^n*A(x)^n/n * Sum_{k=0..2*n} A084606(n,k)^2 * x^k * A(x)^(2*k) ), where A084606(n,k) = [x^k] (1 + 2*x + 2*x^2)^n.

The programs for A218298, there is no canonical definition to state claims against.
-/

/-! ## A218298.P16822095004899380462

`A191610(A173881(n)+A137965(n))`
-/

namespace A218298.P16822095004899380462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191610 (A173881 n + A137965 n).toNat

end

end A218298.P16822095004899380462

/-! ## A218298.P11326794949591133222

`A191610(A173889(n)+A137965(n))`
-/

namespace A218298.P11326794949591133222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191610 (A173889 n + A137965 n).toNat

end

end A218298.P11326794949591133222

/-!
# A218299: G.f. satisfies: A(x) = exp( Sum_{n>=1} x^n/n * Sum_{k=0..2*n} A084606(n,k)^2 * x^k * A(x)^k ), where A084606(n,k) = [x^k] (1 + 2*x + 2*x^2)^n.

The programs for A218299, there is no canonical definition to state claims against.
-/

/-! ## A218299.P17140452886488849775

`or(A007913(A325157(n)), A022171(n))`
-/

namespace A218299.P17140452886488849775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A007913 (A325157 n).toNat) (A022171 n)

end

end A218299.P17140452886488849775

/-! ## A218299.P9537581577527336764

`or(A054576(A150210(n)), A325157(n))`
-/

namespace A218299.P9537581577527336764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A054576 (A150210 n).toNat) (A325157 n)

end

end A218299.P9537581577527336764

/-! ## A218299.P5682809578700016118

`or(A186236(A035038(n)), A325157(n))`
-/

namespace A218299.P5682809578700016118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A186236 (A035038 n).toNat) (A325157 n)

end

end A218299.P5682809578700016118

