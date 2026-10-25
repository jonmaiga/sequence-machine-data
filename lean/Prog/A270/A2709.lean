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
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C036
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B002.C000
import Seq.B002.C001
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
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
# A270900: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 211", based on the 5-celled von Neumann neighborhood.

The programs for A270900, there is no canonical definition to state claims against.
-/

/-! ## A270900.P13420916288239663802

`Δ[A270897(n)]`
-/

namespace A270900.P13420916288239663802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270897 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A270900.P13420916288239663802

/-! ## A270900.P17928668537731376049

`A270897(n+1)-A270897(n)`
-/

namespace A270900.P17928668537731376049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270897 (n + 1) - A270897 n

end

end A270900.P17928668537731376049

/-! ## A270900.P12352142955764437229

`A270293(n)+A108563(A338102(n+1))`
-/

namespace A270900.P12352142955764437229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270293 n + A108563 (A338102 (n + 1)).toNat

end

end A270900.P12352142955764437229

/-!
# A270901: Number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 213", based on the 5-celled von Neumann neighborhood.

The programs for A270901, there is no canonical definition to state claims against.
-/

/-! ## A270901.P11975397548356240444

`A270904(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A270901.P11975397548356240444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A270904 (n - 1) + a (n - 1)

end

end A270901.P11975397548356240444

/-! ## A270901.P3085652784520160687

`Δ[A270903(n)]-A270904(n)`
-/

namespace A270901.P3085652784520160687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270903 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A270904 n

end

end A270901.P3085652784520160687

/-! ## A270901.P8416475618577479397

`A270903(n+1)-(A270904(n)+A270903(n))`
-/

namespace A270901.P8416475618577479397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270903 (n + 1) - (A270904 n + A270903 n)

end

end A270901.P8416475618577479397

/-!
# A270902: Number of active (ON, black) cells at stage 2^n-1 of the two-dimensional cellular automaton defined by "Rule 213", based on the 5-celled von Neumann neighborhood.

The programs for A270902, there is no canonical definition to state claims against.
-/

/-! ## A270902.P6664140758736145581

`A270901(2^n-1)`
-/

namespace A270902.P6664140758736145581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270901 (2 ^ n - 1)

end

end A270902.P6664140758736145581

/-! ## A270902.P13871740559933484867

`record[A270901(A227351(n))]`
-/

namespace A270902.P13871740559933484867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270901 (A227351 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270902.P13871740559933484867

/-! ## A270902.P9280242922670936473

`record[A270901(A023758(n+1))]`
-/

namespace A270902.P9280242922670936473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270901 (A023758 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270902.P9280242922670936473

/-! ## A270902.P15987308701177747623

`record[A270901(A181062(n+1))]`
-/

namespace A270902.P15987308701177747623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270901 (A181062 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270902.P15987308701177747623

/-! ## A270902.P9568276067948423983

`record[A270901(A323243(n+1))]`
-/

namespace A270902.P9568276067948423983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270901 (A323243 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270902.P9568276067948423983

/-!
# A270903: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 213", based on the 5-celled von Neumann neighborhood.

The programs for A270903, there is no canonical definition to state claims against.
-/

/-! ## A270903.P12238187987495839071

`∑[A270904(n-1)+a(n-1)]` with `a(0)=1`
-/

namespace A270903.P12238187987495839071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A270904 (n - 1) + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270903.P12238187987495839071

/-! ## A270903.P8031591839402838715

`∑[A270901(n)]`
-/

namespace A270903.P8031591839402838715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270901 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270903.P8031591839402838715

/-! ## A270903.P15273617572220966403

`a(n-1)+A242179(n)²*A270901(n)` with `a(0)=1`
-/

namespace A270903.P15273617572220966403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A242179 n ^ 2 * A270901 n

end

end A270903.P15273617572220966403

/-! ## A270903.P16608054646031516651

`A270901(n%A000203(n+1))+a(n-1)` with `a(0)=1`
-/

namespace A270903.P16608054646031516651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A270901 (Int.tmod (n : ℤ) (A000203 (n + 1))).toNat + a (n - 1)

end

end A270903.P16608054646031516651

/-! ## A270903.P2158699488480296485

`A270901(n)+a(n-1)%A254845(n)` with `a(0)=1`
-/

namespace A270903.P2158699488480296485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A270901 n + Int.tmod (a (n - 1)) (A254845 n)

end

end A270903.P2158699488480296485

/-!
# A270904: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 213", based on the 5-celled von Neumann neighborhood.

The programs for A270904, there is no canonical definition to state claims against.
-/

/-! ## A270904.P17164564260113235114

`Δ[A270901(n)]`
-/

namespace A270904.P17164564260113235114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270901 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A270904.P17164564260113235114

/-! ## A270904.P5700245207464617600

`A270901(n+1)-A270901(n)`
-/

namespace A270904.P5700245207464617600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270901 (n + 1) - A270901 n

end

end A270904.P5700245207464617600

/-!
# A270905: Number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 214", based on the 5-celled von Neumann neighborhood.

The programs for A270905, there is no canonical definition to state claims against.
-/

/-! ## A270905.P10066141248181848818

`A270908(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A270905.P10066141248181848818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A270908 (n - 1) + a (n - 1)

end

end A270905.P10066141248181848818

/-! ## A270905.P4975638515283400453

`Δ[A270907(n)]-A270908(n)`
-/

namespace A270905.P4975638515283400453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270907 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A270908 n

end

end A270905.P4975638515283400453

/-! ## A270905.P2186772421224790110

`A270907(n+1)-(A270908(n)+A270907(n))`
-/

namespace A270905.P2186772421224790110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270907 (n + 1) - (A270908 n + A270907 n)

end

end A270905.P2186772421224790110

/-! ## A270905.P6928834343158404358

`A033999(2*n)+∑[A270908(n)]-A270908(n)`
-/

namespace A270905.P6928834343158404358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270908 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (2 * n) + (∑ j ∈ Finset.range (n + 1), f1 j - A270908 n)

end

end A270905.P6928834343158404358

/-! ## A270905.P14436452206811055946

`(∑[A270908(n)]-A270908(n)+1)%A017330(n)`
-/

namespace A270905.P14436452206811055946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270908 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j - A270908 n + 1) (A017330 n)

end

end A270905.P14436452206811055946

/-! ## A270905.P7177228775922020075

`A116966(∑[A270908(n)]-A270908(n))`
-/

namespace A270905.P7177228775922020075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270908 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116966 (∑ j ∈ Finset.range (n + 1), f1 j - A270908 n).toNat

end

end A270905.P7177228775922020075

/-! ## A270905.P2044327373330788860

`A151933(n)!+∑[A270908(n)]-A270908(n)`
-/

namespace A270905.P2044327373330788860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270908 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A151933 n).toNat : ℤ) + (∑ j ∈ Finset.range (n + 1), f1 j - A270908 n)

end

end A270905.P2044327373330788860

/-! ## A270905.P16420495988437380249

`A008619(2*(∑[A270908(n)]-A270908(n)))`
-/

namespace A270905.P16420495988437380249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270908 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * (∑ j ∈ Finset.range (n + 1), f1 j - A270908 n)).toNat

end

end A270905.P16420495988437380249

/-!
# A270906: Number of active (ON, black) cells at stage 2^n-1 of the two-dimensional cellular automaton defined by "Rule 214", based on the 5-celled von Neumann neighborhood.

The programs for A270906, there is no canonical definition to state claims against.
-/

/-! ## A270906.P16467638540395475189

`A270905(2^n-1)`
-/

namespace A270906.P16467638540395475189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270905 (2 ^ n - 1)

end

end A270906.P16467638540395475189

/-! ## A270906.P15142569145773001099

`record[A270905(A218616(n))]`
-/

namespace A270906.P15142569145773001099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270905 (A218616 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270906.P15142569145773001099

/-! ## A270906.P5635585179184023735

`and(-1, A270905(A000225(n)))`
-/

namespace A270906.P5635585179184023735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A270905 (A000225 n).toNat)

end

end A270906.P5635585179184023735

/-! ## A270906.P18392947804165054096

`record[A270905(A252756(n+1))]`
-/

namespace A270906.P18392947804165054096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270905 (A252756 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270906.P18392947804165054096

/-! ## A270906.P9161478084835701238

`record[A270905(A253564(n+1))]`
-/

namespace A270906.P9161478084835701238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270905 (A253564 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270906.P9161478084835701238

/-!
# A270907: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 214", based on the 5-celled von Neumann neighborhood.

The programs for A270907, there is no canonical definition to state claims against.
-/

/-! ## A270907.P8091908019199673178

`∑[∑[A270908(n)]+1-A270908(n)]`
-/

namespace A270907.P8091908019199673178
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270908 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (1 - A270908 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270907.P8091908019199673178

/-! ## A270907.P393216151973653093

`∑[A270905(n)]`
-/

namespace A270907.P393216151973653093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270905 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270907.P393216151973653093

/-! ## A270907.P2824294358973613615

`A270905(A110654(n+n))+a(n-1)` with `a(0)=1`
-/

namespace A270907.P2824294358973613615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A270905 (A110654 (n + n)).toNat + a (n - 1)

end

end A270907.P2824294358973613615

/-! ## A270907.P1839598446712160863

`a(n-1)+A270905(n)%A003215(n)` with `a(0)=1`
-/

namespace A270907.P1839598446712160863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.tmod (A270905 n) (A003215 n)

end

end A270907.P1839598446712160863

/-! ## A270907.P14947996953374285628

`A270905(n%A044072(n))+a(n-1)` with `a(0)=1`
-/

namespace A270907.P14947996953374285628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A270905 (Int.tmod (n : ℤ) (A044072 n)).toNat + a (n - 1)

end

end A270907.P14947996953374285628

/-!
# A270908: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 214", based on the 5-celled von Neumann neighborhood.

The programs for A270908, there is no canonical definition to state claims against.
-/

/-! ## A270908.P3997113268011578502

`Δ[A270905(n)]`
-/

namespace A270908.P3997113268011578502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270905 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A270908.P3997113268011578502

/-! ## A270908.P9202492014673402833

`A270905(n+1)-A270905(n)`
-/

namespace A270908.P9202492014673402833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270905 (n + 1) - A270905 n

end

end A270908.P9202492014673402833

/-!
# A270909: Number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 217", based on the 5-celled von Neumann neighborhood.

The programs for A270909, there is no canonical definition to state claims against.
-/

/-! ## A270909.P11702540608588945577

`A270912(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A270909.P11702540608588945577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A270912 (n - 1) + a (n - 1)

end

end A270909.P11702540608588945577

/-! ## A270909.P8457261372693441522

`Δ[A270911(n)]-A270912(n)`
-/

namespace A270909.P8457261372693441522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270911 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A270912 n

end

end A270909.P8457261372693441522

/-! ## A270909.P12479835612840816643

`A270911(n+1)-(A270912(n)+A270911(n))`
-/

namespace A270909.P12479835612840816643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270911 (n + 1) - (A270912 n + A270911 n)

end

end A270909.P12479835612840816643

/-!
# A270910: Number of active (ON, black) cells at stage 2^n-1 of the two-dimensional cellular automaton defined by "Rule 217", based on the 5-celled von Neumann neighborhood.

The programs for A270910, there is no canonical definition to state claims against.
-/

/-! ## A270910.P4943734153004183062

`A270909(2^n-1)`
-/

namespace A270910.P4943734153004183062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270909 (2 ^ n - 1)

end

end A270910.P4943734153004183062

/-! ## A270910.P3379367512390687430

`record[A270909(A303765(n))]`
-/

namespace A270910.P3379367512390687430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270909 (A303765 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270910.P3379367512390687430

/-! ## A270910.P1585006656980114430

`and(-3, A270909(A000225(n)))`
-/

namespace A270910.P1585006656980114430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-3) (A270909 (A000225 n).toNat)

end

end A270910.P1585006656980114430

/-! ## A270910.P17240295082993765641

`record[A270909(A175946(n+1))]`
-/

namespace A270910.P17240295082993765641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270909 (A175946 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270910.P17240295082993765641

/-! ## A270910.P11823931913078279797

`record[A270909(A243071(n+1))]`
-/

namespace A270910.P11823931913078279797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270909 (A243071 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270910.P11823931913078279797

/-!
# A270911: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 217", based on the 5-celled von Neumann neighborhood.

The programs for A270911, there is no canonical definition to state claims against.
-/

/-! ## A270911.P15161724459360946627

`∑[∑[A270912(n)]+1-A270912(n)]`
-/

namespace A270911.P15161724459360946627
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270912 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (1 - A270912 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270911.P15161724459360946627

/-! ## A270911.P10510160285294348510

`∑[A270909(n)]`
-/

namespace A270911.P10510160285294348510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270909 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270911.P10510160285294348510

/-! ## A270911.P5977821543657271205

`A270909(n%A028891(n))+a(n-1)` with `a(0)=1`
-/

namespace A270911.P5977821543657271205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A270909 (Int.tmod (n : ℤ) (A028891 n)).toNat + a (n - 1)

end

end A270911.P5977821543657271205

/-! ## A270911.P8120095361341920412

`A270909(n)+a(A123108(A004273(n)))` with `a(0)=1`
-/

namespace A270911.P8120095361341920412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A270909 n + a (A123108 (A004273 n).toNat).toNat

end

end A270911.P8120095361341920412

/-! ## A270911.P15772156377578070370

`A270909(n)+a(n-1)%A022142(n)` with `a(0)=1`
-/

namespace A270911.P15772156377578070370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A270909 n + Int.tmod (a (n - 1)) (A022142 n)

end

end A270911.P15772156377578070370

/-!
# A270912: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 217", based on the 5-celled von Neumann neighborhood.

The programs for A270912, there is no canonical definition to state claims against.
-/

/-! ## A270912.P4260612618214388381

`Δ[A270909(n)]`
-/

namespace A270912.P4260612618214388381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270909 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A270912.P4260612618214388381

/-! ## A270912.P4596727523284921961

`A270909(n+1)-A270909(n)`
-/

namespace A270912.P4596727523284921961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270909 (n + 1) - A270909 n

end

end A270912.P4596727523284921961

/-! ## A270912.P10803300553785597207

`A270909(n+1)+A270909(n)*A280193(2*n+1)`
-/

namespace A270912.P10803300553785597207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270909 (n + 1) + A270909 n * A280193 (2 * n + 1)

end

end A270912.P10803300553785597207

/-!
# A270913: Coefficient of x^n in Product_{k>=1} (1+x^k)^n.

The programs for A270913, there is no canonical definition to state claims against.
-/

/-! ## A270913.P13062458754590164967

`A286335(∑[4*n])`
-/

namespace A270913.P13062458754590164967
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286335 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A270913.P13062458754590164967

/-! ## A270913.P1658863106578507098

`A060901(2*n+1)*A286335(2*(n²+n))`
-/

namespace A270913.P1658863106578507098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060901 (2 * n + 1) * A286335 (2 * (n ^ 2 + n))

end

end A270913.P1658863106578507098

/-! ## A270913.P15945380099525957402

`gcd(A000038(n), A286335(A046092(n)))`
-/

namespace A270913.P15945380099525957402
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A286335 (A046092 n).toNat)

end

end A270913.P15945380099525957402

/-! ## A270913.P12295095750449619828

`lcm(A033999(n), A286335(A046092(n)))`
-/

namespace A270913.P12295095750449619828
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A286335 (A046092 n).toNat)

end

end A270913.P12295095750449619828

/-! ## A270913.P17978445632610413797

`A286335(A008574(∑[n]))+A000007(n+1)`
-/

namespace A270913.P17978445632610413797
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286335 (A008574 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat + A000007 (n + 1)

end

end A270913.P17978445632610413797

/-! ## A270913.P5175894095042000222

`A014963(6*(n+1))*A286335(A046092(n))`
-/

namespace A270913.P5175894095042000222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (6 * (n + 1)) * A286335 (A046092 n).toNat

end

end A270913.P5175894095042000222

/-!
# A270916: (r,1)-greedy sequence, where r(k) = 1/(k*sqrt(2)).

The programs for A270916, there is no canonical definition to state claims against.
-/

/-! ## A270916.P6062925978330951481

`∏{e}[A000079(n), A270582(#)]`
-/

namespace A270916.P6062925978330951481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A270582 (Nat.factorization (f1 n).natAbs p)

end

end A270916.P6062925978330951481

/-! ## A270916.P8169380408708067325

`∏{e}[A054842(n), A270582(#)]`
-/

namespace A270916.P8169380408708067325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054842 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A270582 (Nat.factorization (f1 n).natAbs p)

end

end A270916.P8169380408708067325

/-! ## A270916.P10629950483755915510

`∏{e}[A155559(n), A270582(#)]`
-/

namespace A270916.P10629950483755915510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155559 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A270582 (Nat.factorization (f1 n).natAbs p)

end

end A270916.P10629950483755915510

/-! ## A270916.P15781205452743090935

`A270582(n*a(A180472(n)))` with `a(0)=1`
-/

namespace A270916.P15781205452743090935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A270582 ((n : ℤ) * a (A180472 n).toNat).toNat

end

end A270916.P15781205452743090935

/-! ## A270916.P1637684746950144049

`a(A308583(n+1))*A270582(n)` with `a(0)=1`
-/

namespace A270916.P1637684746950144049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (A308583 (n + 1)).toNat * A270582 n

end

end A270916.P1637684746950144049

/-!
# A270917: Coefficient of x^n in Product_{k>=1} (1 + x^k)^(k^n).

The programs for A270917, there is no canonical definition to state claims against.
-/

/-! ## A270917.P14973342719136776462

`A284992(∑[4*n])`
-/

namespace A270917.P14973342719136776462
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284992 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A270917.P14973342719136776462

/-! ## A270917.P8999205399313179861

`A284992(A046092(n))+A025469(n)`
-/

namespace A270917.P8999205399313179861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284992 (A046092 n).toNat + A025469 n

end

end A270917.P8999205399313179861

/-! ## A270917.P2366812451298201897

`A284992(A046092(n))+A185246(n)`
-/

namespace A270917.P2366812451298201897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284992 (A046092 n).toNat + A185246 n

end

end A270917.P2366812451298201897

/-! ## A270917.P7899754706136110554

`A284992(A046092(n))+A185284(n)`
-/

namespace A270917.P7899754706136110554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284992 (A046092 n).toNat + A185284 n

end

end A270917.P7899754706136110554

/-! ## A270917.P16481799506809377644

`gcd(A000038(n), A284992(A046092(n)))`
-/

namespace A270917.P16481799506809377644
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A284992 (A046092 n).toNat)

end

end A270917.P16481799506809377644

/-!
# A270918: Largest coefficient of (1+x+...+x^n)^(2*n).

The programs for A270918, there is no canonical definition to state claims against.
-/

/-! ## A270918.P6916458859726454277

`A077042(A117625(n+1))`
-/

namespace A270918.P6916458859726454277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077042 (A117625 (n + 1)).toNat

end

end A270918.P6916458859726454277

/-! ## A270918.P2356001545675191822

`A163269(A058331(n))`
-/

namespace A270918.P2356001545675191822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163269 (A058331 n).toNat

end

end A270918.P2356001545675191822

/-! ## A270918.P13206153711219974352

`A163269(A005408(n²))`
-/

namespace A270918.P13206153711219974352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163269 (A005408 (n ^ 2)).toNat

end

end A270918.P13206153711219974352

/-! ## A270918.P1069628841275344947

`A163269(A001105(n)+1)`
-/

namespace A270918.P1069628841275344947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163269 (A001105 n + 1).toNat

end

end A270918.P1069628841275344947

/-! ## A270918.P2570541722502284411

`A163269(A004277(n²)+1)`
-/

namespace A270918.P2570541722502284411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163269 (A004277 (n ^ 2) + 1).toNat

end

end A270918.P2570541722502284411

/-!
# A270919: Coefficient of x^n in Product_{k>=1} ((1 + x^k) / (1 - x^k))^n.

The programs for A270919, there is no canonical definition to state claims against.
-/

/-! ## A270919.P13236233459309940638

`A288515(∑[4*n])`
-/

namespace A270919.P13236233459309940638
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288515 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A270919.P13236233459309940638

/-! ## A270919.P6329930093793004962

`record[A003982(n)*A288515(n)]`
-/

namespace A270919.P6329930093793004962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A288515 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270919.P6329930093793004962

/-! ## A270919.P9723687768941552823

`record[A288515(n*A027656(n))]`
-/

namespace A270919.P9723687768941552823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288515 ((n : ℤ) * A027656 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270919.P9723687768941552823

/-! ## A270919.P4310745198119675078

`record[A288515(∑[n+1]-A027656(n))]`
-/

namespace A270919.P4310745198119675078
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288515 (((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - A027656 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270919.P4310745198119675078

/-! ## A270919.P3784372369463816548

`record[A288515(A014682(A065530(n)))]`
-/

namespace A270919.P3784372369463816548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288515 (A014682 (A065530 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270919.P3784372369463816548

/-! ## A270919.P15413618809730556142

`gcd(A000038(n), A288515(A046092(n)))`
-/

namespace A270919.P15413618809730556142
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A288515 (A046092 n).toNat)

end

end A270919.P15413618809730556142

/-! ## A270919.P16435342212636279353

`lcm(A020985(n), A288515(A046092(n)))`
-/

namespace A270919.P16435342212636279353
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A288515 (A046092 n).toNat)

end

end A270919.P16435342212636279353

/-! ## A270919.P6816792349557348878

`or(A000007(n), A288515(A046092(n)))`
-/

namespace A270919.P6816792349557348878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A288515 (A046092 n).toNat)

end

end A270919.P6816792349557348878

/-! ## A270919.P12374949956551698339

`A288515(A046092(n))+A000007(n+1)`
-/

namespace A270919.P12374949956551698339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288515 (A046092 n).toNat + A000007 (n + 1)

end

end A270919.P12374949956551698339

/-!
# A270920: Number of ordered ways to write n as the sum of a positive triangular number, a positive square, and a fifth power whose absolute value does not exceed n.

The programs for A270920, there is no canonical definition to state claims against.
-/

/-! ## A270920.P5759522878709202887

`A262956(n+1)-A058343(A146607(n+1))`
-/

namespace A270920.P5759522878709202887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262956 (n + 1) - A058343 (A146607 (n + 1)).toNat

end

end A270920.P5759522878709202887

/-! ## A270920.P5521158108918456864

`A262956(lt[A157386(n+1), A000566(3*n+1)])`
-/

namespace A270920.P5521158108918456864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157386 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000566 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262956 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A270920.P5521158108918456864

/-! ## A270920.P13107105887893257229

`A262956(n+1)-A044941(2^n)`
-/

namespace A270920.P13107105887893257229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262956 (n + 1) - A044941 (2 ^ n)

end

end A270920.P13107105887893257229

/-! ## A270920.P6550085880197898374

`A262956(n+1)+A075553(A184955(n))`
-/

namespace A270920.P6550085880197898374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262956 (n + 1) + A075553 (A184955 n).toNat

end

end A270920.P6550085880197898374

/-! ## A270920.P16909954336989270395

`A262956(n+1)-A083890(A022170(n))`
-/

namespace A270920.P16909954336989270395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262956 (n + 1) - A083890 (A022170 n).toNat

end

end A270920.P16909954336989270395

/-!
# A270922: Coefficient of x^n in Product_{k>=1} (1 + x^k)^(k*n).

The programs for A270922, there is no canonical definition to state claims against.
-/

/-! ## A270922.P17009669036850230281

`A277938(∑[4*n])`
-/

namespace A270922.P17009669036850230281
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277938 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A270922.P17009669036850230281

/-! ## A270922.P496125376903256309

`gcd(A000038(n), A277938(A046092(n)))`
-/

namespace A270922.P496125376903256309
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A277938 (A046092 n).toNat)

end

end A270922.P496125376903256309

/-! ## A270922.P264654371392517930

`lcm(A033999(n), A277938(A046092(n)))`
-/

namespace A270922.P264654371392517930
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A277938 (A046092 n).toNat)

end

end A270922.P264654371392517930

/-! ## A270922.P10319642837260987272

`A277938(A046092(n))+A000038(n+1)`
-/

namespace A270922.P10319642837260987272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277938 (A046092 n).toNat + A000038 (n + 1)

end

end A270922.P10319642837260987272

/-! ## A270922.P2733351385287850277

`A277938(A046092(n))+A000007(n+5)`
-/

namespace A270922.P2733351385287850277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277938 (A046092 n).toNat + A000007 (n + 5)

end

end A270922.P2733351385287850277

/-! ## A270922.P407023726779466881

`A007814(A016825(n))*A277938(A046092(n))`
-/

namespace A270922.P407023726779466881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A016825 n).toNat * A277938 (A046092 n).toNat

end

end A270922.P407023726779466881

/-! ## A270922.P8727702447470570496

`A001222(A153075(n+1))*A277938(A046092(n))`
-/

namespace A270922.P8727702447470570496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A153075 (n + 1)).toNat * A277938 (A046092 n).toNat

end

end A270922.P8727702447470570496

/-! ## A270922.P14267917367000423586

`A001511(A000040(n+2))*A277938(A046092(n))`
-/

namespace A270922.P14267917367000423586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A000040 (n + 2)).toNat * A277938 (A046092 n).toNat

end

end A270922.P14267917367000423586

/-! ## A270922.P8898877875698681163

`A001511(A130569(n+1))*A277938(A046092(n))`
-/

namespace A270922.P8898877875698681163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A130569 (n + 1)).toNat * A277938 (A046092 n).toNat

end

end A270922.P8898877875698681163

/-! ## A270922.P7325760719368815121

`A158416(A202511(n+1))*A277938(A046092(n))`
-/

namespace A270922.P7325760719368815121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158416 (A202511 (n + 1)).toNat * A277938 (A046092 n).toNat

end

end A270922.P7325760719368815121

/-!
# A270923: Coefficient of x^n in Product_{k>=1} ((1 + x^k) / (1 - x^k))^(k^n).

The programs for A270923, there is no canonical definition to state claims against.
-/

/-! ## A270923.P13387972745404824161

`A288221(2^∑[n])-1`
-/

namespace A270923.P13387972745404824161
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288221 (2 ^ (∑ j ∈ Finset.range (n + 1), f1 j)) - 1

end

end A270923.P13387972745404824161

/-!
# A270924: Coefficient of x^n in Product_{k>=1} ((1 + x^k) / (1 - x^k))^(k*n).

The programs for A270924, there is no canonical definition to state claims against.
-/

/-! ## A270924.P6062189221481112126

`A292254(A005159(n))`
-/

namespace A270924.P6062189221481112126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292254 (A005159 n).toNat

end

end A270924.P6062189221481112126

/-!
# A270925: Nearest integer to absolute value of the function f(n) where f(n) is the derivative of F(n) = ((1/2+sqrt(5)/2)^n-(1/2-sqrt(5)/2)^n)/sqrt(5) with respect to n.

The programs for A270925, there is no canonical definition to state claims against.
-/

/-! ## A270925.P12710964005646048556

`round(log(A001611(A001611(n))+1))`
-/

namespace A270925.P12710964005646048556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.log (A001611 (A001611 n).toNat + 1 : ℝ))

end

end A270925.P12710964005646048556

/-! ## A270925.P5383489215326263044

`floor(log(A000045(A000045(n))+1))+1`
-/

namespace A270925.P5383489215326263044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.log (A000045 (A000045 n).toNat + 1 : ℝ)⌋ + 1

end

end A270925.P5383489215326263044

/-! ## A270925.P6302879700279318230

`A257639(A307564(n)+3)`
-/

namespace A270925.P6302879700279318230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257639 (A307564 n + 3).toNat

end

end A270925.P6302879700279318230

/-! ## A270925.P17857362281337519737

`A257639(or(n, A307564(n)))`
-/

namespace A270925.P17857362281337519737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257639 (Int.lor (n : ℤ) (A307564 n)).toNat

end

end A270925.P17857362281337519737

/-! ## A270925.P3080172787733185521

`A003056(floor(A001654(n)/14))+1`
-/

namespace A270925.P3080172787733185521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 ⌊(A001654 n : ℚ) / 14⌋.toNat + 1

end

end A270925.P3080172787733185521

/-!
# A270926: Numbers k such that k*R(k) can be represented as the sum of two nonzero squares, where R(k) is the reverse of the decimal expansion of k.

The programs for A270926, there is no canonical definition to state claims against.
-/

/-! ## A270926.P2037002127758372842

`lt[0, A025426(A061205(n))]`
-/

namespace A270926.P2037002127758372842
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025426 (A061205 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A270926.P2037002127758372842

/-! ## A270926.P2857931986059097189

`lt[0, A063725(n*A004086(n))]`
-/

namespace A270926.P2857931986059097189
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063725 ((n : ℤ) * A004086 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A270926.P2857931986059097189

/-! ## A270926.P12488028809680464083

`lt[0, A063725(n*(n-A056965(n)))]`
-/

namespace A270926.P12488028809680464083
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063725 ((n : ℤ) * ((n : ℤ) - A056965 n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A270926.P12488028809680464083

/-! ## A270926.P7461243534974178195

`lt[0, A063725(n*xor(n, A256756(n)))]`
-/

namespace A270926.P7461243534974178195
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063725 ((n : ℤ) * Int.xor (n : ℤ) (A256756 n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A270926.P7461243534974178195

/-! ## A270926.P4566163832256847043

`lt[A010054(n), A063725(A061205(n))]`
-/

namespace A270926.P4566163832256847043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063725 (A061205 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A270926.P4566163832256847043

/-!
# A270927: Smallest k such that k*n^m + 1 is prime, case m=4.

The programs for A270927, there is no canonical definition to state claims against.
-/

/-! ## A270927.P11082741473204667325

`A035092((n+1)²)`
-/

namespace A270927.P11082741473204667325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035092 ((n + 1) ^ 2)

end

end A270927.P11082741473204667325

/-! ## A270927.P9704231657474894073

`A035092(∑[2*n+1])%64`
-/

namespace A270927.P9704231657474894073
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A035092 (∑ j ∈ Finset.range (n + 1), f1 j)) 64

end

end A270927.P9704231657474894073

/-! ## A270927.P7000118139898750770

`gcd(n, n+1)*A035092((n+1)*(n+1))`
-/

namespace A270927.P7000118139898750770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd n (n + 1) : ℤ) * A035092 ((n + 1) * (n + 1))

end

end A270927.P7000118139898750770

/-! ## A270927.P9135471887086692749

`A000027(A035092(∑[2*n+1]))`
-/

namespace A270927.P9135471887086692749
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A035092 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A270927.P9135471887086692749

/-! ## A270927.P3180521097734513740

`A035092(∑[2*n+1])+A000007(n+1)`
-/

namespace A270927.P3180521097734513740
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035092 (∑ j ∈ Finset.range (n + 1), f1 j) + A000007 (n + 1)

end

end A270927.P3180521097734513740

/-! ## A270927.P2293891154996770344

`A007318(C(2, n))*A035092(∑[2*n+1])`
-/

namespace A270927.P2293891154996770344
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A035092 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A270927.P2293891154996770344

/-! ## A270927.P68559061415331000

`A035092(∑[2*n+1])^A014963(∑[n+1])`
-/

namespace A270927.P68559061415331000
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A035092 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) ^ (A014963 (∑ j ∈ Finset.range (n + 1), f2 j) : ℤ)

end

end A270927.P68559061415331000

/-! ## A270927.P8538262561273563025

`A000041(C(2, n+2))*A035092(∑[2*n+1])`
-/

namespace A270927.P8538262561273563025
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 (n + 2)) * A035092 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A270927.P8538262561273563025

/-! ## A270927.P7225866912562139374

`A000108(C(2, n+2))*A035092(∑[2*n+1])`
-/

namespace A270927.P7225866912562139374
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (Nat.choose 2 (n + 2)) * A035092 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A270927.P7225866912562139374

/-! ## A270927.P9069655243166603066

`∑{d}[A035092(A000290(n+1)), A000010(#)]`
-/

namespace A270927.P9069655243166603066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035092 (A000290 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A270927.P9069655243166603066

/-! ## A270927.P8885762868937462113

`A035092(A000290(n+1))+A000038(n+1)`
-/

namespace A270927.P8885762868937462113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035092 (A000290 (n + 1)).toNat + A000038 (n + 1)

end

end A270927.P8885762868937462113

/-! ## A270927.P9155758811125403593

`A000720(A000040(A035092((n+1)*(n+1))))`
-/

namespace A270927.P9155758811125403593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A000040 (A035092 ((n + 1) * (n + 1))).toNat).toNat

end

end A270927.P9155758811125403593

/-! ## A270927.P2539070232642406142

`A000034(2*n)*A035092(A000290(n+1))`
-/

namespace A270927.P2539070232642406142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (2 * n) * A035092 (A000290 (n + 1)).toNat

end

end A270927.P2539070232642406142

/-! ## A270927.P8510290907423661776

`A035092((n+1)*(n+1))*A051953(A000040(n+1))`
-/

namespace A270927.P8510290907423661776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035092 ((n + 1) * (n + 1)) * A051953 (A000040 (n + 1)).toNat

end

end A270927.P8510290907423661776

/-! ## A270927.P13167664839584146534

`A035092((n+1)*(n+1))*A062760(A062760(n+1))`
-/

namespace A270927.P13167664839584146534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035092 ((n + 1) * (n + 1)) * A062760 (A062760 (n + 1)).toNat

end

end A270927.P13167664839584146534

/-! ## A270927.P6739080867048667338

`A035092((n+1)*(n+1))*A085392(A085392(n+1))`
-/

namespace A270927.P6739080867048667338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035092 ((n + 1) * (n + 1)) * A085392 (A085392 (n + 1)).toNat

end

end A270927.P6739080867048667338

/-!
# A270928: Number of ways to write n = x*(x-1)/2 + y*(y-1)/2 + z*(z-1)/2, where 0 < x <= y <= z, and one of x, y, z is prime.

The programs for A270928, there is no canonical definition to state claims against.
-/

/-! ## A270928.P1585394580900911593

`A322794(A210238(n+1)+A006068(n))`
-/

namespace A270928.P1585394580900911593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322794 (A210238 (n + 1) + A006068 n).toNat

end

end A270928.P1585394580900911593

/-! ## A270928.P2143140261949740236

`A322307(A348984(n+1)+A000404(n+1))`
-/

namespace A270928.P2143140261949740236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322307 (A348984 (n + 1) + A000404 (n + 1)).toNat

end

end A270928.P2143140261949740236

/-! ## A270928.P4942072894796682298

`A356515(A237271(n+1)+A130248(n+1))`
-/

namespace A270928.P4942072894796682298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356515 (A237271 (n + 1) + A130248 (n + 1)).toNat

end

end A270928.P4942072894796682298

/-! ## A270928.P5896604548399679357

`A353835(A354904(3*n+2)+A353835(n+1))`
-/

namespace A270928.P5896604548399679357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353835 (A354904 (3 * n + 2) + A353835 (n + 1)).toNat

end

end A270928.P5896604548399679357

/-! ## A270928.P5137499193664933254

`A001221(or(A006512(n+1), A128209(n)))`
-/

namespace A270928.P5137499193664933254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Int.lor (A006512 (n + 1)) (A128209 n)).toNat

end

end A270928.P5137499193664933254

/-!
# A270930: Number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 219", based on the 5-celled von Neumann neighborhood.

The programs for A270930, there is no canonical definition to state claims against.
-/

/-! ## A270930.P645044279325099868

`A270933(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A270930.P645044279325099868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A270933 (n - 1) + a (n - 1)

end

end A270930.P645044279325099868

/-! ## A270930.P8851274960288669871

`A270933(n-1)-floor(-a(A028310(n)-1))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A270930.P8851274960288669871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A270933 (n - 1) - (-a (A028310 n - 1).toNat)

end

end A270930.P8851274960288669871

/-! ## A270930.P5649397584926054445

`∑[A270933(n)]+1-A270933(n)`
-/

namespace A270930.P5649397584926054445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270933 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A270933 n)

end

end A270930.P5649397584926054445

/-! ## A270930.P17326258028668076272

`Δ[A270932(n)]-A270933(n)`
-/

namespace A270930.P17326258028668076272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270932 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A270933 n

end

end A270930.P17326258028668076272

/-! ## A270930.P2902380767846450831

`A270932(n+1)-(A270933(n)+A270932(n))`
-/

namespace A270930.P2902380767846450831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270932 (n + 1) - (A270933 n + A270932 n)

end

end A270930.P2902380767846450831

/-!
# A270931: Number of active (ON, black) cells at stage 2^n-1 of the two-dimensional cellular automaton defined by "Rule 219", based on the 5-celled von Neumann neighborhood.

The programs for A270931, there is no canonical definition to state claims against.
-/

/-! ## A270931.P1168875360975460832

`A270930(2^n-1)`
-/

namespace A270931.P1168875360975460832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270930 (2 ^ n - 1)

end

end A270931.P1168875360975460832

/-! ## A270931.P6263451393907608255

`record[A270930(A006068(n))]`
-/

namespace A270931.P6263451393907608255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270930 (A006068 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270931.P6263451393907608255

/-! ## A270931.P3383569621044698560

`record[A270930(A173787(n))]`
-/

namespace A270931.P3383569621044698560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270930 (A173787 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270931.P3383569621044698560

/-! ## A270931.P8661444234538800164

`record[A270930(A303763(n))]`
-/

namespace A270931.P8661444234538800164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270930 (A303763 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270931.P8661444234538800164

/-! ## A270931.P8688986157993806927

`or(1, A270930(A000225(n)))`
-/

namespace A270931.P8688986157993806927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A270930 (A000225 n).toNat)

end

end A270931.P8688986157993806927

/-!
# A270932: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 219", based on the 5-celled von Neumann neighborhood.

The programs for A270932, there is no canonical definition to state claims against.
-/

/-! ## A270932.P4114845235866880470

`∑[A270930(n)]`
-/

namespace A270932.P4114845235866880470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270930 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270932.P4114845235866880470

/-! ## A270932.P16984873491694013581

`∑[A270933(n-1)+a(n-1)]` with `a(0)=1`
-/

namespace A270932.P16984873491694013581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A270933 (n - 1) + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270932.P16984873491694013581

/-! ## A270932.P2142401379671673835

`A270930(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A270932.P2142401379671673835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A270930 n + a (A023443 n).toNat

end

end A270932.P2142401379671673835

/-! ## A270932.P6027542215682275241

`a(n-1)+A270930(n)+A000007(n)` with `a(0)=1`
-/

namespace A270932.P6027542215682275241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A270930 n + A000007 n)

end

end A270932.P6027542215682275241

/-! ## A270932.P6920841638530572348

`A270930(n%A008587(n))+a(n-1)` with `a(0)=1`
-/

namespace A270932.P6920841638530572348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A270930 (Int.tmod (n : ℤ) (A008587 n)).toNat + a (n - 1)

end

end A270932.P6920841638530572348

/-! ## A270932.P779547181158134197

`a(n-1)+A270930(n)%A187771(n+1)` with `a(0)=1`
-/

namespace A270932.P779547181158134197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.tmod (A270930 n) (A187771 (n + 1))

end

end A270932.P779547181158134197

/-!
# A270933: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 219", based on the 5-celled von Neumann neighborhood.

The programs for A270933, there is no canonical definition to state claims against.
-/

/-! ## A270933.P14750539718839616423

`Δ[A270930(n)]`
-/

namespace A270933.P14750539718839616423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270930 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A270933.P14750539718839616423

/-! ## A270933.P14935227977396005365

`A270930(n+1)-A270930(n)`
-/

namespace A270933.P14935227977396005365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270930 (n + 1) - A270930 n

end

end A270933.P14935227977396005365

/-! ## A270933.P12808848843483979631

`A270930(n+1)+A270930(n)*A332814(A332812(n+1))`
-/

namespace A270933.P12808848843483979631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270930 (n + 1) + A270930 n * A332814 (A332812 (n + 1)).toNat

end

end A270933.P12808848843483979631

/-!
# A270934: Number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 221", based on the 5-celled von Neumann neighborhood.

The programs for A270934, the canonical program `A270934.P5733876642086964829` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A270934 has offset 0).

The definition of A270934 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3276 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A270934.P5733876642086964829

`3*a(n-2)-3*a(n-4)+a(n-6)` with `a(0)=1, a(1)=8, a(2)=4, a(3)=44, a(4)=9, a(5)=116, a(6)=9, a(7)=220, a(8)=9`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A270934

/-- `3*a(n-2)-3*a(n-4)+a(n-6)` -/
def P5733876642086964829.Spec : Prop :=
  ∀ n, P5733876642086964829.a n = A270934 n

theorem P5733876642086964829.correct : P5733876642086964829.Spec := by
  intro n
  simp only [A270934]

end A270934

/-! ## A270934.P4762766389610659591

`A270937(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A270934.P4762766389610659591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A270937 (n - 1) + a (n - 1)

end

end A270934.P4762766389610659591

namespace A270934

/-- `A270937(n-1)+a(n-1)` -/
def P4762766389610659591.Spec : Prop :=
  ∀ n, P4762766389610659591.a n = A270934 n

end A270934

/-! ## A270934.P15605963857510930456

`Δ[A270936(n)]-A270937(n)`
-/

namespace A270934.P15605963857510930456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270936 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A270937 n

end

end A270934.P15605963857510930456

namespace A270934

/-- `Δ[A270936(n)]-A270937(n)` -/
def P15605963857510930456.Spec : Prop :=
  ∀ n, P15605963857510930456.a n = A270934 n

end A270934

/-! ## A270934.P1282427314377793108

`A270936(n+1)-(A270937(n)+A270936(n))`
-/

namespace A270934.P1282427314377793108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270936 (n + 1) - (A270937 n + A270936 n)

end

end A270934.P1282427314377793108

namespace A270934

/-- `A270936(n+1)-(A270937(n)+A270936(n))` -/
def P1282427314377793108.Spec : Prop :=
  ∀ n, P1282427314377793108.a n = A270934 n

end A270934

/-! ## A270934.P12321102305296941651

`abs(A057174(A271051(n)))-1`
-/

namespace A270934.P12321102305296941651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A057174 (A271051 n).toNat| - 1

end

end A270934.P12321102305296941651

namespace A270934

/-- `abs(A057174(A271051(n)))-1` -/
def P12321102305296941651.Spec : Prop :=
  ∀ n, P12321102305296941651.a n = A270934 n

end A270934

/-!
# A270935: Number of active (ON, black) cells at stage 2^n-1 of the two-dimensional cellular automaton defined by "Rule 221", based on the 5-celled von Neumann neighborhood.

The programs for A270935, the canonical program `A270935.P14632262992002523967` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A270935 has offset 0).

The definition of A270935 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 165 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A270935.P11156561185120184715

`∑[2^n]²-5%(n+1)²`
-/

namespace A270935.P11156561185120184715
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - ((5 % (n + 1) ^ 2 : ℕ) : ℤ)

end

end A270935.P11156561185120184715

namespace A270935

/-- `∑[2^n]²-5%(n+1)²` -/
def P11156561185120184715.Spec : Prop :=
  ∀ n, P11156561185120184715.a n = A270935 n

end A270935

/-! ## A270935.P3571508132523074840

`(char[1]+1)*A269907(n)`
-/

namespace A270935.P3571508132523074840
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((if ∃ j, f1 j = n then 1 else 0) + 1 : ℕ) : ℤ) * A269907 n

end

end A270935.P3571508132523074840

namespace A270935

/-- `(char[1]+1)*A269907(n)` -/
def P3571508132523074840.Spec : Prop :=
  ∀ n, P3571508132523074840.a n = A270935 n

end A270935

/-! ## A270935.P7233937824874825246

`A269907(n)*A373565(n)`
-/

namespace A270935.P7233937824874825246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269907 n * A373565 n

end

end A270935.P7233937824874825246

namespace A270935

/-- `A269907(n)*A373565(n)` -/
def P7233937824874825246.Spec : Prop :=
  ∀ n, P7233937824874825246.a n = A270935 n

end A270935

/-! ## A270935.P18380734927288706342

`A273310(n)+4*A057427(n)`
-/

namespace A270935.P18380734927288706342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273310 n + 4 * A057427 n

end

end A270935.P18380734927288706342

namespace A270935

/-- `A273310(n)+4*A057427(n)` -/
def P18380734927288706342.Spec : Prop :=
  ∀ n, P18380734927288706342.a n = A270935 n

end A270935

/-! ## A270935.P1123271728627057922

`A273310(n)+(2*A057428(n))²`
-/

namespace A270935.P1123271728627057922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273310 n + (2 * A057428 n) ^ 2

end

end A270935.P1123271728627057922

namespace A270935

/-- `A273310(n)+(2*A057428(n))²` -/
def P1123271728627057922.Spec : Prop :=
  ∀ n, P1123271728627057922.a n = A270935 n

end A270935

/-! ## A270935.P17800887358007911591

`A269907(n)+(n*A130706(n))²`
-/

namespace A270935.P17800887358007911591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269907 n + ((n : ℤ) * A130706 n) ^ 2

end

end A270935.P17800887358007911591

namespace A270935

/-- `A269907(n)+(n*A130706(n))²` -/
def P17800887358007911591.Spec : Prop :=
  ∀ n, P17800887358007911591.a n = A270935 n

end A270935

/-! ## A270935.P11220910891412952754

`A048785(A006530(n+1))+A273313(n)-1`
-/

namespace A270935.P11220910891412952754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048785 (A006530 (n + 1)).toNat + (A273313 n - 1)

end

end A270935.P11220910891412952754

namespace A270935

/-- `A048785(A006530(n+1))+A273313(n)-1` -/
def P11220910891412952754.Spec : Prop :=
  ∀ n, P11220910891412952754.a n = A270935 n

end A270935

/-! ## A270935.P18329806073114704334

`A273405(n+1)+A273310(n)-A273309(n+1)`
-/

namespace A270935.P18329806073114704334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273405 (n + 1) + (A273310 n - A273309 (n + 1))

end

end A270935.P18329806073114704334

namespace A270935

/-- `A273405(n+1)+A273310(n)-A273309(n+1)` -/
def P18329806073114704334.Spec : Prop :=
  ∀ n, P18329806073114704334.a n = A270935 n

end A270935

/-! ## A270935.P1901903621470103300

`A074764(A074764(n+1))+A273313(n)-A074764(n+1)`
-/

namespace A270935.P1901903621470103300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074764 (A074764 (n + 1)).toNat + (A273313 n - A074764 (n + 1))

end

end A270935.P1901903621470103300

namespace A270935

/-- `A074764(A074764(n+1))+A273313(n)-A074764(n+1)` -/
def P1901903621470103300.Spec : Prop :=
  ∀ n, P1901903621470103300.a n = A270935 n

end A270935

/-! ## A270935.P14632262992002523967

`7*a(n-1)-14*a(n-2)+8*a(n-3)` with `a(0)=1, a(1)=8, a(2)=44, a(3)=220, a(4)=956`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A270935

/-- `7*a(n-1)-14*a(n-2)+8*a(n-3)` -/
def P14632262992002523967.Spec : Prop :=
  ∀ n, P14632262992002523967.a n = A270935 n

theorem P14632262992002523967.correct : P14632262992002523967.Spec := by
  intro n
  simp only [A270935]

end A270935

/-!
# A270936: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 221", based on the 5-celled von Neumann neighborhood.

The programs for A270936, the canonical program `A270936.P3178014193832231101` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A270936 has offset 0).

The definition of A270936 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3276 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A270936.P3178014193832231101

`∑[A270934(n)]`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A270936

/-- `∑[A270934(n)]` -/
def P3178014193832231101.Spec : Prop :=
  ∀ n, P3178014193832231101.a n = A270936 n

theorem P3178014193832231101.correct : P3178014193832231101.Spec := by
  intro n
  simp only [A270936]

end A270936

/-! ## A270936.P18083059904040097391

`a(n-1)+A270934(n)+A000007(n)` with `a(0)=1`
-/

namespace A270936.P18083059904040097391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A270934 n + A000007 n)

end

end A270936.P18083059904040097391

namespace A270936

/-- `a(n-1)+A270934(n)+A000007(n)` -/
def P18083059904040097391.Spec : Prop :=
  ∀ n, P18083059904040097391.a n = A270936 n

end A270936

/-! ## A270936.P10209320661596724833

`a(n-1)+A054977(n)*A270934(n)` with `a(0)=1`
-/

namespace A270936.P10209320661596724833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A054977 n * A270934 n

end

end A270936.P10209320661596724833

namespace A270936

/-- `a(n-1)+A054977(n)*A270934(n)` -/
def P10209320661596724833.Spec : Prop :=
  ∀ n, P10209320661596724833.a n = A270936 n

end A270936

/-! ## A270936.P938159581389860436

`a(n-1)+A057427(n)*A270934(n)` with `a(0)=1`
-/

namespace A270936.P938159581389860436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A057427 n * A270934 n

end

end A270936.P938159581389860436

namespace A270936

/-- `a(n-1)+A057427(n)*A270934(n)` -/
def P938159581389860436.Spec : Prop :=
  ∀ n, P938159581389860436.a n = A270936 n

end A270936

/-! ## A270936.P2448233939768390887

`A270934(n%A031888(n))+a(n-1)` with `a(0)=1`
-/

namespace A270936.P2448233939768390887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A270934 (Int.tmod (n : ℤ) (A031888 n)).toNat + a (n - 1)

end

end A270936.P2448233939768390887

namespace A270936

/-- `A270934(n%A031888(n))+a(n-1)` -/
def P2448233939768390887.Spec : Prop :=
  ∀ n, P2448233939768390887.a n = A270936 n

end A270936

/-! ## A270936.P5737913464085404416

`∑[A271051(n)-4%A020639(A271051(n))]`
-/

namespace A270936.P5737913464085404416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271051 n - Int.tmod 4 (A020639 (A271051 n).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270936.P5737913464085404416

namespace A270936

/-- `∑[A271051(n)-4%A020639(A271051(n))]` -/
def P5737913464085404416.Spec : Prop :=
  ∀ n, P5737913464085404416.a n = A270936 n

end A270936

/-!
# A270937: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 221", based on the 5-celled von Neumann neighborhood.

The programs for A270937, the canonical program `A270937.P10195959060991265635` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A270937 has offset 0).

The definition of A270937 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3275 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A270937.P10195959060991265635

`Δ[A270934(n)]`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A270937

/-- `Δ[A270934(n)]` -/
def P10195959060991265635.Spec : Prop :=
  ∀ n, P10195959060991265635.a n = A270937 n

theorem P10195959060991265635.correct : P10195959060991265635.Spec := by
  intro n
  simp only [A270937]

end A270937

/-! ## A270937.P794925819324422190

`A270934(n+1)-A270934(n)`
-/

namespace A270937.P794925819324422190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270934 (n + 1) - A270934 n

end

end A270937.P794925819324422190

namespace A270937

/-- `A270934(n+1)-A270934(n)` -/
def P794925819324422190.Spec : Prop :=
  ∀ n, P794925819324422190.a n = A270937 n

theorem P794925819324422190.correct : P794925819324422190.Spec := by
  intro n
  simp only [A270937, Nat.add_sub_cancel, A270937.P794925819324422190.a, A270937.P10195959060991265635.f1, A270937.P10195959060991265635.a, SequenceMachineLib.memo_apply]

end A270937

/-! ## A270937.P10248585849357420129

`Δ[abs(A057174(A271051(n)))]`
-/

namespace A270937.P10248585849357420129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A057174 (A271051 n).toNat|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A270937.P10248585849357420129

namespace A270937

/-- `Δ[abs(A057174(A271051(n)))]` -/
def P10248585849357420129.Spec : Prop :=
  ∀ n, P10248585849357420129.a n = A270937 n

end A270937

/-! ## A270937.P4720193868035759443

`Δ[gcd(A007814(2*n+3), A057174(A271051(n)))]`
-/

namespace A270937.P4720193868035759443
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A007814 (2 * n + 3)) (A057174 (A271051 n).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A270937.P4720193868035759443

namespace A270937

/-- `Δ[gcd(A007814(2*n+3), A057174(A271051(n)))]` -/
def P4720193868035759443.Spec : Prop :=
  ∀ n, P4720193868035759443.a n = A270937 n

end A270937

/-! ## A270937.P9831746764966880587

`Δ[A270936(n)]-A113520(A271051(n)+1)`
-/

namespace A270937.P9831746764966880587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270936 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A113520 (A271051 n + 1).toNat

end

end A270937.P9831746764966880587

namespace A270937

/-- `Δ[A270936(n)]-A113520(A271051(n)+1)` -/
def P9831746764966880587.Spec : Prop :=
  ∀ n, P9831746764966880587.a n = A270937 n

end A270937

/-!
# A270938: Number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 222", based on the 5-celled von Neumann neighborhood.

The programs for A270938, there is no canonical definition to state claims against.
-/

/-! ## A270938.P3866119211350732623

`A270941(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A270938.P3866119211350732623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A270941 (n - 1) + a (n - 1)

end

end A270938.P3866119211350732623

/-! ## A270938.P4222137952724654366

`a(n-1)-A057428(n)*A270941(n-1)` with `a(0)=1`
-/

namespace A270938.P4222137952724654366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) - A057428 n * A270941 (n - 1)

end

end A270938.P4222137952724654366

/-! ## A270938.P9900926228380125354

`Δ[A270940(n)]-A270941(n)`
-/

namespace A270938.P9900926228380125354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270940 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A270941 n

end

end A270938.P9900926228380125354

/-! ## A270938.P9899495828226936651

`A270940(n+1)-(A270941(n)+A270940(n))`
-/

namespace A270938.P9899495828226936651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270940 (n + 1) - (A270941 n + A270940 n)

end

end A270938.P9899495828226936651

/-! ## A270938.P11718843276691069840

`A130706(n)+A273743(n)-A272750(n)`
-/

namespace A270938.P11718843276691069840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130706 n + (A273743 n - A272750 n)

end

end A270938.P11718843276691069840

/-!
# A270939: Number of active (ON, black) cells at stage 2^n-1 of the two-dimensional cellular automaton defined by "Rule 222", based on the 5-celled von Neumann neighborhood.

The programs for A270939, there is no canonical definition to state claims against.
-/

/-! ## A270939.P4305123742364874401

`A270938(2^n-1)`
-/

namespace A270939.P4305123742364874401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270938 (2 ^ n - 1)

end

end A270939.P4305123742364874401

/-! ## A270939.P642196496288035095

`record[A270938(A293447(n+1))]`
-/

namespace A270939.P642196496288035095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270938 (A293447 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270939.P642196496288035095

/-! ## A270939.P3938447925065764144

`A270938(A000225(n))+char[19]`
-/

namespace A270939.P3938447925065764144
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270938 (A000225 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A270939.P3938447925065764144

/-! ## A270939.P13435197541054015322

`record[A270938(n)/A000265(n+1)]`
-/

namespace A270939.P13435197541054015322
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A270938 n : ℚ) / (A000265 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270939.P13435197541054015322

/-! ## A270939.P8592702549681310779

`A008327(n)*A270938(A000225(n))`
-/

namespace A270939.P8592702549681310779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008327 n * A270938 (A000225 n).toNat

end

end A270939.P8592702549681310779

/-!
# A270940: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 222", based on the 5-celled von Neumann neighborhood.

The programs for A270940, there is no canonical definition to state claims against.
-/

/-! ## A270940.P5555076788931083964

`∑[A270938(n)]`
-/

namespace A270940.P5555076788931083964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270938 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270940.P5555076788931083964

/-! ## A270940.P11661442429107833175

`A270938(n%A000040(n))+a(n-1)` with `a(0)=1`
-/

namespace A270940.P11661442429107833175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A270938 (Int.tmod (n : ℤ) (A000040 n)).toNat + a (n - 1)

end

end A270940.P11661442429107833175

/-! ## A270940.P5321120449280785705

`∑[A270941(n-1)+a(n-1)]` with `a(0)=1`
-/

namespace A270940.P5321120449280785705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A270941 (n - 1) + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270940.P5321120449280785705

/-! ## A270940.P4707363585289177252

`∑[a(n-1)-A057428(n)*A270941(n-1)]` with `a(0)=1`
-/

namespace A270940.P4707363585289177252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) - A057428 n * A270941 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270940.P4707363585289177252

/-! ## A270940.P12268042604969374566

`∑[C(2, n²)+A273743(n)-A272750(n)]`
-/

namespace A270940.P12268042604969374566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose 2 (n ^ 2) : ℤ) + (A273743 n - A272750 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270940.P12268042604969374566

/-! ## A270940.P15960469136250272034

`a(n-1)+A007318(A333616(n))*A270938(n)` with `a(0)=1`
-/

namespace A270940.P15960469136250272034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A007318 (A333616 n).toNat * A270938 n

end

end A270940.P15960469136250272034

/-! ## A270940.P9280171917645507789

`a(n-1)+A055396(A044350(n+1))*A270938(n)` with `a(0)=1`
-/

namespace A270940.P9280171917645507789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A055396 (A044350 (n + 1)).toNat * A270938 n

end

end A270940.P9280171917645507789

/-! ## A270940.P5381025497403200322

`A270938(n^A133707(n))+a(n-1)` with `a(0)=1`
-/

namespace A270940.P5381025497403200322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A270938 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A133707 n : ℤ))).toNat + a (n - 1)

end

end A270940.P5381025497403200322

/-!
# A270941: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 222", based on the 5-celled von Neumann neighborhood.

The programs for A270941, there is no canonical definition to state claims against.
-/

/-! ## A270941.P18410474640971868168

`Δ[A270938(n)]`
-/

namespace A270941.P18410474640971868168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270938 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A270941.P18410474640971868168

/-! ## A270941.P65501027107945290

`A270938(n+1)-A270938(n)`
-/

namespace A270941.P65501027107945290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270938 (n + 1) - A270938 n

end

end A270941.P65501027107945290

/-! ## A270941.P496151709416854110

`A270938(n+1)+A270938(n)/A057428(n+1)`
-/

namespace A270941.P496151709416854110
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A270938 (n + 1) : ℚ) + (A270938 n : ℚ) / (A057428 (n + 1) : ℚ)

end

end A270941.P496151709416854110

/-! ## A270941.P3924254254797879674

`Δ[A130706(n)+A273743(n)-A272750(n)]`
-/

namespace A270941.P3924254254797879674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130706 n + (A273743 n - A272750 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A270941.P3924254254797879674

/-!
# A270942: Number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 225", based on the 5-celled von Neumann neighborhood.

The programs for A270942, there is no canonical definition to state claims against.
-/

/-! ## A270942.P670554779685271509

`A270945(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A270942.P670554779685271509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A270945 (n - 1) + a (n - 1)

end

end A270942.P670554779685271509

/-! ## A270942.P4287021329614015626

`Δ[A270944(n)]-A270945(n)`
-/

namespace A270942.P4287021329614015626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270944 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A270945 n

end

end A270942.P4287021329614015626

/-! ## A270942.P3200209025985911763

`A270944(n+1)-(A270945(n)+A270944(n))`
-/

namespace A270942.P3200209025985911763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270944 (n + 1) - (A270945 n + A270944 n)

end

end A270942.P3200209025985911763

/-!
# A270943: Number of active (ON, black) cells at stage 2^n-1 of the two-dimensional cellular automaton defined by "Rule 225", based on the 5-celled von Neumann neighborhood.

The programs for A270943, there is no canonical definition to state claims against.
-/

/-! ## A270943.P8485426218951548479

`A270942(2^n-1)`
-/

namespace A270943.P8485426218951548479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270942 (2 ^ n - 1)

end

end A270943.P8485426218951548479

/-! ## A270943.P8131213104199441112

`record[A270942(A006068(n))]`
-/

namespace A270943.P8131213104199441112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270942 (A006068 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270943.P8131213104199441112

/-! ## A270943.P15481797310597159476

`record[A270942(A153141(n))]`
-/

namespace A270943.P15481797310597159476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270942 (A153141 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270943.P15481797310597159476

/-! ## A270943.P14630245725184578984

`record[A270942(A173787(n))]`
-/

namespace A270943.P14630245725184578984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270942 (A173787 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270943.P14630245725184578984

/-! ## A270943.P1169961450980800129

`record[A270942(A350770(n+1))]`
-/

namespace A270943.P1169961450980800129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270942 (A350770 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270943.P1169961450980800129

/-!
# A270944: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 225", based on the 5-celled von Neumann neighborhood.

The programs for A270944, there is no canonical definition to state claims against.
-/

/-! ## A270944.P9515587017417765092

`∑[∑[A270945(n)]+1-A270945(n)]`
-/

namespace A270944.P9515587017417765092
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270945 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (1 - A270945 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270944.P9515587017417765092

/-! ## A270944.P7797675275250886598

`∑[A270942(n)]`
-/

namespace A270944.P7797675275250886598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270942 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270944.P7797675275250886598

/-! ## A270944.P10333655477638651588

`a(n-1)+A270942(n)+A000007(n)` with `a(0)=1`
-/

namespace A270944.P10333655477638651588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A270942 n + A000007 n)

end

end A270944.P10333655477638651588

/-! ## A270944.P15719759873449369753

`A270942(n%A270942(n))+a(n-1)` with `a(0)=1`
-/

namespace A270944.P15719759873449369753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A270942 (Int.tmod (n : ℤ) (A270942 n)).toNat + a (n - 1)

end

end A270944.P15719759873449369753

/-! ## A270944.P15425188220170147482

`A270942(and(n, A052551(n)))+a(n-1)` with `a(0)=1`
-/

namespace A270944.P15425188220170147482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A270942 (Int.land (n : ℤ) (A052551 n)).toNat + a (n - 1)

end

end A270944.P15425188220170147482

/-! ## A270944.P14264959247620274498

`A270942(A000196(n*n))+a(n-1)` with `a(0)=1`
-/

namespace A270944.P14264959247620274498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A270942 (A000196 (n * n)).toNat + a (n - 1)

end

end A270944.P14264959247620274498

/-!
# A270945: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 225", based on the 5-celled von Neumann neighborhood.

The programs for A270945, there is no canonical definition to state claims against.
-/

/-! ## A270945.P2862664273950963269

`Δ[A270944(n)]-A270942(n)`
-/

namespace A270945.P2862664273950963269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270944 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A270942 n

end

end A270945.P2862664273950963269

/-! ## A270945.P17791158236286790062

`Δ[A270942(n)]`
-/

namespace A270945.P17791158236286790062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270942 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A270945.P17791158236286790062

/-! ## A270945.P2950876418332185228

`A270942(n+1)-A270942(n)`
-/

namespace A270945.P2950876418332185228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270942 (n + 1) - A270942 n

end

end A270945.P2950876418332185228

/-! ## A270945.P16205832451796424415

`A270942(n+1)+A270942(n)*A286714(gcd(n, n+1))`
-/

namespace A270945.P16205832451796424415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270942 (n + 1) + A270942 n * A286714 (Nat.gcd n (n + 1))

end

end A270945.P16205832451796424415

/-! ## A270945.P6238036268837112349

`A270942(n+1)+A001478(A270942(n)+1)+1`
-/

namespace A270945.P6238036268837112349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270942 (n + 1) + (A001478 (A270942 n + 1).toNat + 1)

end

end A270945.P6238036268837112349

/-!
# A270946: Number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 229", based on the 5-celled von Neumann neighborhood.

The programs for A270946, there is no canonical definition to state claims against.
-/

/-! ## A270946.P10395561038836196411

`A270949(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A270946.P10395561038836196411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A270949 (n - 1) + a (n - 1)

end

end A270946.P10395561038836196411

/-! ## A270946.P2714497212716379638

`1+∑[A270949(n)]-A270949(n)`
-/

namespace A270946.P2714497212716379638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270949 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + (∑ j ∈ Finset.range (n + 1), f1 j - A270949 n)

end

end A270946.P2714497212716379638

/-! ## A270946.P15990766584845615351

`Δ[A270948(n)]-A270949(n)`
-/

namespace A270946.P15990766584845615351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270948 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A270949 n

end

end A270946.P15990766584845615351

/-! ## A270946.P752240537651174960

`A270948(n+1)-(A270949(n)+A270948(n))`
-/

namespace A270946.P752240537651174960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270948 (n + 1) - (A270949 n + A270948 n)

end

end A270946.P752240537651174960

/-!
# A270947: Number of active (ON, black) cells at stage 2^n-1 of the two-dimensional cellular automaton defined by "Rule 229", based on the 5-celled von Neumann neighborhood.

The programs for A270947, there is no canonical definition to state claims against.
-/

/-! ## A270947.P9425862344895560357

`A270946(2^n-1)`
-/

namespace A270947.P9425862344895560357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270946 (2 ^ n - 1)

end

end A270947.P9425862344895560357

/-! ## A270947.P18053522085389038832

`record[A270946(A091264(n))]`
-/

namespace A270947.P18053522085389038832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270946 (A091264 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270947.P18053522085389038832

/-! ## A270947.P5484476013785377983

`record[A270946(A173787(n))]`
-/

namespace A270947.P5484476013785377983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270946 (A173787 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270947.P5484476013785377983

/-! ## A270947.P1158093442358525079

`record[A270946(A218616(n))]`
-/

namespace A270947.P1158093442358525079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270946 (A218616 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270947.P1158093442358525079

/-! ## A270947.P15969901522116350504

`record[A270946(A257250(n))]`
-/

namespace A270947.P15969901522116350504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270946 (A257250 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270947.P15969901522116350504

/-!
# A270948: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 229", based on the 5-celled von Neumann neighborhood.

The programs for A270948, there is no canonical definition to state claims against.
-/

/-! ## A270948.P10877321629672413511

`∑[A270946(n)]`
-/

namespace A270948.P10877321629672413511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270946 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270948.P10877321629672413511

/-! ## A270948.P18392399294102630924

`A270946(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A270948.P18392399294102630924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A270946 n + a (A023443 n).toNat

end

end A270948.P18392399294102630924

/-! ## A270948.P4999168556847608299

`∑[∑[A270949(n)]+1-A270949(n)]`
-/

namespace A270948.P4999168556847608299
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270949 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (1 - A270949 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270948.P4999168556847608299

/-! ## A270948.P13240596480972321660

`A270946(n)+(A000041(n)%2)!*a(n-1)` with `a(0)=1`
-/

namespace A270948.P13240596480972321660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A270946 n + (Nat.factorial (Int.tmod (A000041 n) 2).toNat : ℤ) * a (n - 1)

end

end A270948.P13240596480972321660

/-! ## A270948.P7081330396880297976

`a(n-1)+A270946(n)+A000122(A000040(n+1))` with `a(0)=1`
-/

namespace A270948.P7081330396880297976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A270946 n + A000122 (A000040 (n + 1)).toNat)

end

end A270948.P7081330396880297976

/-! ## A270948.P9507702153164780850

`a(n-1)+A007318(C(n, 2))*A270946(n)` with `a(0)=1`
-/

namespace A270948.P9507702153164780850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A007318 (Nat.choose n 2) * A270946 n

end

end A270948.P9507702153164780850

/-!
# A270949: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 229", based on the 5-celled von Neumann neighborhood.

The programs for A270949, there is no canonical definition to state claims against.
-/

/-! ## A270949.P12949553422384629992

`Δ[A270946(n)]`
-/

namespace A270949.P12949553422384629992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270946 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A270949.P12949553422384629992

/-! ## A270949.P16956142224300783084

`A270946(n+1)-A270946(n)`
-/

namespace A270949.P16956142224300783084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270946 (n + 1) - A270946 n

end

end A270949.P16956142224300783084

/-! ## A270949.P10885728299046192450

`A270460(n)+A184955(A003410(n))`
-/

namespace A270949.P10885728299046192450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270460 n + A184955 (A003410 n).toNat

end

end A270949.P10885728299046192450

/-!
# A270950: Number of distinct cardinalities of orbits of lattice points under the automorphism group of the n-dimensional integer lattice.

The programs for A270950, there is no canonical definition to state claims against.
-/

/-! ## A270950.P5673888032667144297

`A344646(n)+A182220(A000041(n+2))-1`
-/

namespace A270950.P5673888032667144297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344646 n + (A182220 (A000041 (n + 2)).toNat - 1)

end

end A270950.P5673888032667144297

/-! ## A270950.P5313905332295343276

`A004526(A318343(n+1))+A182220(A000041(n+2))-1`
-/

namespace A270950.P5313905332295343276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A318343 (n + 1)).toNat + (A182220 (A000041 (n + 2)).toNat - 1)

end

end A270950.P5313905332295343276

/-! ## A270950.P16507431645603119841

`A333836(A293185(n+1))`
-/

namespace A270950.P16507431645603119841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333836 (A293185 (n + 1)).toNat

end

end A270950.P16507431645603119841

/-! ## A270950.P11979672727781177364

`A280422(n)-A008966(A006318(n))`
-/

namespace A270950.P11979672727781177364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280422 n - A008966 (A006318 n).toNat

end

end A270950.P11979672727781177364

/-! ## A270950.P4526495606292528836

`A344646(∑[A110660(n)])+A344646(n)`
-/

namespace A270950.P4526495606292528836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110660 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344646 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + A344646 n

end

end A270950.P4526495606292528836

/-!
# A270951: Numbers k such that k | A000129(k-1).

The programs for A270951, there is no canonical definition to state claims against.
-/

/-! ## A270951.P17560407638244590743

`record[gcd(n+1, n%A175181(n+1))]`
-/

namespace A270951.P17560407638244590743
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (Int.tmod (n : ℤ) (A175181 (n + 1)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270951.P17560407638244590743

/-! ## A270951.P14134778708550363854

`record[gcd(A002965(n), A109613(n))]`
-/

namespace A270951.P14134778708550363854
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002965 n) (A109613 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270951.P14134778708550363854

/-! ## A270951.P10254346824533776097

`record[gcd(A005408(n), A143608(n))]`
-/

namespace A270951.P10254346824533776097
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A005408 n) (A143608 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270951.P10254346824533776097

/-! ## A270951.P12181096215536535663

`record[gcd(A062545(n), A084068(n+1))]`
-/

namespace A270951.P12181096215536535663
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A062545 n) (A084068 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270951.P12181096215536535663

/-! ## A270951.P11604494640193372589

`record[gcd(A003480(n), A005408(n+1))]`
-/

namespace A270951.P11604494640193372589
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003480 n) (A005408 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270951.P11604494640193372589

/-!
# A270954: Number of set partitions of [n] having no pairs (m,m+1) such that m+1 is in some block b and m is in block b+1.

The programs for A270954, there is no canonical definition to state claims against.
-/

/-! ## A270954.P14526928935906720048

`A270953(lt[A188992(2*n+1), A017605(n)])`
-/

namespace A270954.P14526928935906720048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188992 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017605 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270953 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A270954.P14526928935906720048

/-! ## A270954.P3242440096876772125

`A270953(lt[A188992(2*n+1), A196257(2*n+3)])`
-/

namespace A270954.P3242440096876772125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188992 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196257 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270953 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A270954.P3242440096876772125

/-! ## A270954.P1799258805567601911

`A230980(A225294(n)+A047749(n))`
-/

namespace A270954.P1799258805567601911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (A225294 n + A047749 n).toNat

end

end A270954.P1799258805567601911

/-! ## A270954.P16081864265046413546

`A008620(A006901(n+1)-A002262(n))`
-/

namespace A270954.P16081864265046413546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A006901 (n + 1) - A002262 n).toNat

end

end A270954.P16081864265046413546

/-!
# A270955: Number of set partitions of [n] having exactly one pair (m,m+1) such that m+1 is in some block b and m is in block b+1.

The programs for A270955, there is no canonical definition to state claims against.
-/

/-! ## A270955.P14250982907776779842

`∑[A243165(a(n-1)+3)]` with `a(0)=1`
-/

namespace A270955.P14250982907776779842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A243165 (f1 (n - 1) + 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270955.P14250982907776779842

/-!
# A270956: Number of set partitions of [n] having exactly two pairs (m,m+1) such that m+1 is in some block b and m is in block b+1.

The programs for A270956, there is no canonical definition to state claims against.
-/

/-! ## A270956.P16487857645117074529

`A270953(lt[A221303(2*(n+2)), A129356(n)])`
-/

namespace A270956.P16487857645117074529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221303 (2 * (n + 2))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129356 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270953 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A270956.P16487857645117074529

/-!
# A270965: Number of set partitions of [2n] having exactly n pairs (m,m+1) such that m+1 is in some block b and m is in block b+1.

The programs for A270965, there is no canonical definition to state claims against.
-/

/-! ## A270965.P1571727403941473089

`A082997((a(n-1)+n)²)` with `a(0)=1`
-/

namespace A270965.P1571727403941473089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A082997 ((a (n - 1) + (n : ℤ)) ^ 2).toNat

end

end A270965.P1571727403941473089

/-! ## A270965.P518878382830685735

`A305028(n)-char[floor((n+2)^(5/4))]`
-/

namespace A270965.P518878382830685735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 2 : ℝ) ^ ((5 : ℚ) / 4 : ℝ)⌋

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305028 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A270965.P518878382830685735

/-!
# A270966: Number of ways to write n as x^2 + y^2 + z*(3z+1)/2, where x, y and z are integers with 0 <= x <= y such that x or y has the form p-1 with p prime.

The programs for A270966, there is no canonical definition to state claims against.
-/

/-! ## A270966.P9161618223797224728

`A074828(A049923(n+1)+A000384(n))`
-/

namespace A270966.P9161618223797224728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074828 (A049923 (n + 1) + A000384 n).toNat

end

end A270966.P9161618223797224728

/-! ## A270966.P3042001775942804371

`A001221(A179874(n+3)+A000051(n))`
-/

namespace A270966.P3042001775942804371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A179874 (n + 3) + A000051 n).toNat

end

end A270966.P3042001775942804371

/-! ## A270966.P5317206982967447929

`A001221(A185381(n)+A111138(2*n+5)+1)`
-/

namespace A270966.P5317206982967447929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A185381 n + A111138 (2 * n + 5) + 1).toNat

end

end A270966.P5317206982967447929

/-!
# A270967: Number of set partitions of [n] having the maximal possible number of pairs (m,m+1) such that m+1 is in some block b and m is in block b+1.

The programs for A270967, there is no canonical definition to state claims against.
-/

/-! ## A270967.P7424420643952008814

`A270953(∑[n]-A006463(n))`
-/

namespace A270967.P7424420643952008814
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270953 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A006463 n).toNat

end

end A270967.P7424420643952008814

/-! ## A270967.P9016701107758141369

`A270953(A003056(n)+∑[A083920(n)])`
-/

namespace A270967.P9016701107758141369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083920 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270953 (A003056 n + ∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A270967.P9016701107758141369

/-! ## A270967.P11821712288294520550

`A270953(∑[A083920(A073424(n)+n)])`
-/

namespace A270967.P11821712288294520550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083920 (A073424 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270953 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A270967.P11821712288294520550

/-! ## A270967.P3096173544406999732

`A270953(∑[A122797(n+1)-A123110(n)])`
-/

namespace A270967.P3096173544406999732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122797 (n + 1) - A123110 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270953 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A270967.P3096173544406999732

/-! ## A270967.P2272040404630871126

`A270953(A003056(n)+∑[n-A003056(n)])`
-/

namespace A270967.P2272040404630871126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A003056 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270953 (A003056 n + ∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A270967.P2272040404630871126

/-! ## A270967.P12208076694006111319

`A270953(∑[A122797(n+1)]-A122797(n+1))`
-/

namespace A270967.P12208076694006111319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122797 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270953 (∑ j ∈ Finset.range (n + 1), f1 j - A122797 (n + 1)).toNat

end

end A270967.P12208076694006111319

/-!
# A270968: Reduced 5x+1 function R applied to the odd integers: a(n) = R(2n-1), where R(k) = (5k+1)/2^r, with r as large as possible.

The programs for A270968, the canonical program `A270968.P12727451645434044411` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A270968 has offset 1).

The definition of A270968 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000265, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A270968.P12727451645434044411

`A000265(A017341(n))`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A270968

/-- `A000265(A017341(n))` -/
def P12727451645434044411.Spec : Prop :=
  ∀ n, P12727451645434044411.a n = A270968 (n + 1)

theorem P12727451645434044411.correct : P12727451645434044411.Spec := by
  intro n
  simp only [A270968, Nat.add_sub_cancel]

end A270968

/-! ## A270968.P17534847703663283554

`A000265(5*n+3)`
-/

namespace A270968.P17534847703663283554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (5 * n + 3)

end

end A270968.P17534847703663283554

namespace A270968

/-- `A000265(5*n+3)` -/
def P17534847703663283554.Spec : Prop :=
  ∀ n, P17534847703663283554.a n = A270968 (n + 1)

end A270968

/-! ## A270968.P9868518362765875834

`A171435(10*n+6)`
-/

namespace A270968.P9868518362765875834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171435 (10 * n + 6)

end

end A270968.P9868518362765875834

namespace A270968

/-- `A171435(10*n+6)` -/
def P9868518362765875834.Spec : Prop :=
  ∀ n, P9868518362765875834.a n = A270968 (n + 1)

end A270968

/-! ## A270968.P16648769502804081571

`A132740(5*n+3)`
-/

namespace A270968.P16648769502804081571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132740 (5 * n + 3)

end

end A270968.P16648769502804081571

namespace A270968

/-- `A132740(5*n+3)` -/
def P16648769502804081571.Spec : Prop :=
  ∀ n, P16648769502804081571.a n = A270968 (n + 1)

end A270968

/-! ## A270968.P17204859888641215737

`A161151(10*n+5)`
-/

namespace A270968.P17204859888641215737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161151 (10 * n + 5)

end

end A270968.P17204859888641215737

namespace A270968

/-- `A161151(10*n+5)` -/
def P17204859888641215737.Spec : Prop :=
  ∀ n, P17204859888641215737.a n = A270968 (n + 1)

end A270968

/-! ## A270968.P2135158922937529518

`A351565(10*n+5)`
-/

namespace A270968.P2135158922937529518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351565 (10 * n + 5)

end

end A270968.P2135158922937529518

namespace A270968

/-- `A351565(10*n+5)` -/
def P2135158922937529518.Spec : Prop :=
  ∀ n, P2135158922937529518.a n = A270968 (n + 1)

end A270968

/-! ## A270968.P14892534822487208915

`A366789(A031379(n+1))`
-/

namespace A270968.P14892534822487208915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366789 (A031379 (n + 1)).toNat

end

end A270968.P14892534822487208915

namespace A270968

/-- `A366789(A031379(n+1))` -/
def P14892534822487208915.Spec : Prop :=
  ∀ n, P14892534822487208915.a n = A270968 (n + 1)

end A270968

/-! ## A270968.P12063538540526635858

`A028234(10*n+6)`
-/

namespace A270968.P12063538540526635858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028234 (10 * n + 6)

end

end A270968.P12063538540526635858

namespace A270968

/-- `A028234(10*n+6)` -/
def P12063538540526635858.Spec : Prop :=
  ∀ n, P12063538540526635858.a n = A270968 (n + 1)

end A270968

/-! ## A270968.P18269985560834053438

`A093803(10*n+6)`
-/

namespace A270968.P18269985560834053438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093803 (10 * n + 6)

end

end A270968.P18269985560834053438

namespace A270968

/-- `A093803(10*n+6)` -/
def P18269985560834053438.Spec : Prop :=
  ∀ n, P18269985560834053438.a n = A270968 (n + 1)

end A270968

/-! ## A270968.P16884890521891601859

`A139391(10*n+6)`
-/

namespace A270968.P16884890521891601859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139391 (10 * n + 6)

end

end A270968.P16884890521891601859

namespace A270968

/-- `A139391(10*n+6)` -/
def P16884890521891601859.Spec : Prop :=
  ∀ n, P16884890521891601859.a n = A270968 (n + 1)

end A270968

/-! ## A270968.P17655707569342867039

`A163575(10*n+6)`
-/

namespace A270968.P17655707569342867039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163575 (10 * n + 6)

end

end A270968.P17655707569342867039

namespace A270968

/-- `A163575(10*n+6)` -/
def P17655707569342867039.Spec : Prop :=
  ∀ n, P17655707569342867039.a n = A270968 (n + 1)

end A270968

/-! ## A270968.P6953844382674088790

`A086767(5*(2*n+1))`
-/

namespace A270968.P6953844382674088790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086767 (5 * (2 * n + 1))

end

end A270968.P6953844382674088790

namespace A270968

/-- `A086767(5*(2*n+1))` -/
def P6953844382674088790.Spec : Prop :=
  ∀ n, P6953844382674088790.a n = A270968 (n + 1)

end A270968

/-! ## A270968.P942442066213198385

`A153733(A008706(2*n+1))+1`
-/

namespace A270968.P942442066213198385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153733 (A008706 (2 * n + 1)).toNat + 1

end

end A270968.P942442066213198385

namespace A270968

/-- `A153733(A008706(2*n+1))+1` -/
def P942442066213198385.Spec : Prop :=
  ∀ n, P942442066213198385.a n = A270968 (n + 1)

end A270968

/-! ## A270968.P12813998113303319477

`A366789(A031905(n+1))`
-/

namespace A270968.P12813998113303319477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366789 (A031905 (n + 1)).toNat

end

end A270968.P12813998113303319477

namespace A270968

/-- `A366789(A031905(n+1))` -/
def P12813998113303319477.Spec : Prop :=
  ∀ n, P12813998113303319477.a n = A270968 (n + 1)

end A270968

/-!
# A270969: Number of ways to write n as w^4 + x^2 + y^2 + z^2, where w, x, y and z are nonnegative integers with x <= y <= z.

The programs for A270969, there is no canonical definition to state claims against.
-/

/-! ## A270969.P13245046951346203356

`A284817(A321468(n))+A273429(n)`
-/

namespace A270969.P13245046951346203356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284817 (A321468 n).toNat + A273429 n

end

end A270969.P13245046951346203356

/-! ## A270969.P8907551373592724199

`A284817(A321468(n))+A273915(n)`
-/

namespace A270969.P8907551373592724199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284817 (A321468 n).toNat + A273915 n

end

end A270969.P8907551373592724199

/-! ## A270969.P15621150666101106105

`A273429(n)+A057427(A034574(2*n+1))`
-/

namespace A270969.P15621150666101106105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273429 n + A057427 (A034574 (2 * n + 1)).toNat

end

end A270969.P15621150666101106105

/-! ## A270969.P6405984110711461347

`A273915(n)+A057427(A034574(2*n+1))`
-/

namespace A270969.P6405984110711461347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273915 n + A057427 (A034574 (2 * n + 1)).toNat

end

end A270969.P6405984110711461347

/-!
# A270970: Number of subsets of {1,...,n} with sum of elements equal to least common multiple of elements.

The programs for A270970, there is no canonical definition to state claims against.
-/

/-! ## A270970.P1134942417274065365

`A270875(n+1)+n+1`
-/

namespace A270970.P1134942417274065365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270875 (n + 1) + (n + 1 : ℤ)

end

end A270970.P1134942417274065365

/-! ## A270970.P18037328593209668742

`record[A270875(A008619(n))+A028242(n)]`
-/

namespace A270970.P18037328593209668742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270875 (A008619 n).toNat + A028242 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270970.P18037328593209668742

/-! ## A270970.P11042067680561649477

`record[A270875(A008619(n))+A131732(n)]`
-/

namespace A270970.P11042067680561649477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270875 (A008619 n).toNat + A131732 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270970.P11042067680561649477

/-!
# A270971: First differences of (provable) Sierpiński numbers (A076336).

The programs for A270971, there is no canonical definition to state claims against.
-/

/-! ## A270971.P14336056040814151857

`A076336(n+2)-A076336(n+1)`
-/

namespace A270971.P14336056040814151857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076336 (n + 2) - A076336 (n + 1)

end

end A270971.P14336056040814151857

/-! ## A270971.P10864072465189703995

`Δ[A076336(n+1)]`
-/

namespace A270971.P10864072465189703995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076336 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A270971.P10864072465189703995

/-! ## A270971.P6058812497049056455

`abs(Δ[A076336(comp[55*n])])`
-/

namespace A270971.P6058812497049056455
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  55 * n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076336 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A270971.P6058812497049056455

/-! ## A270971.P16935547999145446226

`Δ[record[A076336(A028920(n))]]`
-/

namespace A270971.P16935547999145446226
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076336 (A028920 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A270971.P16935547999145446226

/-! ## A270971.P12912940817619063359

`Δ[record[A076336(A065648(n))]]`
-/

namespace A270971.P12912940817619063359
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076336 (A065648 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A270971.P12912940817619063359

/-!
# A270972: Primes p such that p-2, p^2-2 and p^3-2 are all prime.

The programs for A270972, there is no canonical definition to state claims against.
-/

/-! ## A270972.P6123762644308455367

`∩[A240126(n+1), A242979(n+1)]`
-/

namespace A270972.P6123762644308455367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240126 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242979 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A270972.P6123762644308455367

/-! ## A270972.P8010287487952349778

`∩[A240126(n+1), A330438(n+1)]`
-/

namespace A270972.P8010287487952349778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240126 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330438 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A270972.P8010287487952349778

/-! ## A270972.P2858284617548944054

`filter[A242979(n+1), A353464(#)]`
-/

namespace A270972.P2858284617548944054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242979 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353464 (f1 j).toNat = 1) n)

end

end A270972.P2858284617548944054

/-!
# A270974: Numbers k such that 7*10^k + 57 is prime.

The programs for A270974, there is no canonical definition to state claims against.
-/

/-! ## A270974.P497077168695772810

`lt[A151346(n), A000108(A299762(n+1))]`
-/

namespace A270974.P497077168695772810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151346 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (A299762 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A270974.P497077168695772810

/-!
# A270976: Number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 233", based on the 5-celled von Neumann neighborhood.

The programs for A270976, there is no canonical definition to state claims against.
-/

/-! ## A270976.P5673814518407328938

`A270979(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A270976.P5673814518407328938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A270979 (n - 1) + a (n - 1)

end

end A270976.P5673814518407328938

/-! ## A270976.P12816904070118469389

`Δ[A270978(n)]-A270979(n)`
-/

namespace A270976.P12816904070118469389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270978 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A270979 n

end

end A270976.P12816904070118469389

/-! ## A270976.P5533294767043342566

`∑[A270979(n-A165476(n)²)]-2`
-/

namespace A270976.P5533294767043342566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270979 ((n : ℤ) - A165476 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A270976.P5533294767043342566

/-! ## A270976.P6228641286454791252

`A270978(n+1)-(A270979(n)+A270978(n))`
-/

namespace A270976.P6228641286454791252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270978 (n + 1) - (A270979 n + A270978 n)

end

end A270976.P6228641286454791252

/-! ## A270976.P7405180043515796320

`∑[A270979(log2(A011782(n)))]-2`
-/

namespace A270976.P7405180043515796320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270979 (SequenceMachineLib.roundAway (Real.logb 2 (A011782 n : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A270976.P7405180043515796320

/-!
# A270977: Number of active (ON, black) cells at stage 2^n-1 of the two-dimensional cellular automaton defined by "Rule 233", based on the 5-celled von Neumann neighborhood.

The programs for A270977, there is no canonical definition to state claims against.
-/

/-! ## A270977.P3950103450378655485

`A270976(2^n-1)`
-/

namespace A270977.P3950103450378655485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270976 (2 ^ n - 1)

end

end A270977.P3950103450378655485

/-! ## A270977.P11688231827811077887

`record[A270976(A038573(n))]`
-/

namespace A270977.P11688231827811077887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270976 (A038573 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270977.P11688231827811077887

/-! ## A270977.P2665246129186876436

`and(-1, A270976(A000225(n)))`
-/

namespace A270977.P2665246129186876436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A270976 (A000225 n).toNat)

end

end A270977.P2665246129186876436

/-! ## A270977.P13986351538136357826

`record[A270976(A243071(n+1))]`
-/

namespace A270977.P13986351538136357826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270976 (A243071 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270977.P13986351538136357826

/-! ## A270977.P11861142752390122907

`record[A270976(A323243(n+1))]`
-/

namespace A270977.P11861142752390122907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270976 (A323243 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270977.P11861142752390122907

/-!
# A270978: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 233", based on the 5-celled von Neumann neighborhood.

The programs for A270978, there is no canonical definition to state claims against.
-/

/-! ## A270978.P17235923875337353159

`∑[∑[A270979(n)]+1-A270979(n)]`
-/

namespace A270978.P17235923875337353159
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270979 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (1 - A270979 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270978.P17235923875337353159

/-! ## A270978.P2417551965782356830

`∑[∑[A270979(n-A165476(n)²)]-2]`
-/

namespace A270978.P2417551965782356830
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270979 ((n : ℤ) - A165476 n ^ 2).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270978.P2417551965782356830

/-! ## A270978.P4763934479157142456

`∑[A270976(n)]`
-/

namespace A270978.P4763934479157142456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270976 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270978.P4763934479157142456

/-! ## A270978.P58692517068878890

`A270976(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A270978.P58692517068878890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A270976 n + a (A023443 n).toNat

end

end A270978.P58692517068878890

/-! ## A270978.P467057586500394368

`A270976(n%A000040(n))+a(n-1)` with `a(0)=1`
-/

namespace A270978.P467057586500394368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A270976 (Int.tmod (n : ℤ) (A000040 n)).toNat + a (n - 1)

end

end A270978.P467057586500394368

/-! ## A270978.P14010577537555510004

`A270976(n)+A000027(a(n-1))` with `a(0)=1`
-/

namespace A270978.P14010577537555510004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A270976 n + A000027 (a (n - 1)).toNat

end

end A270978.P14010577537555510004

/-!
# A270979: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 233", based on the 5-celled von Neumann neighborhood.

The programs for A270979, there is no canonical definition to state claims against.
-/

/-! ## A270979.P17470045783418499049

`Δ[A270976(n)]`
-/

namespace A270979.P17470045783418499049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270976 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A270979.P17470045783418499049

/-! ## A270979.P11688523300241595480

`A270976(n+1)-A270976(n)`
-/

namespace A270979.P11688523300241595480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270976 (n + 1) - A270976 n

end

end A270979.P11688523300241595480

/-!
# A270980: Number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 237", based on the 5-celled von Neumann neighborhood.

The programs for A270980, there is no canonical definition to state claims against.
-/

/-! ## A270980.P2864398083818392295

`A270983(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A270980.P2864398083818392295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A270983 (n - 1) + a (n - 1)

end

end A270980.P2864398083818392295

/-! ## A270980.P17386452389260110693

`∑[A270983((n-1)%a(n-1))]` with `a(0)=1`
-/

namespace A270980.P17386452389260110693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A270983 (Int.tmod ((n : ℤ) - 1) (f1 (n - 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270980.P17386452389260110693

/-! ## A270980.P3026956694409505259

`Δ[A270982(n)]-A270983(n)`
-/

namespace A270980.P3026956694409505259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270982 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A270983 n

end

end A270980.P3026956694409505259

/-! ## A270980.P18060355500035845189

`A270982(n+1)-(A270983(n)+A270982(n))`
-/

namespace A270980.P18060355500035845189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270982 (n + 1) - (A270983 n + A270982 n)

end

end A270980.P18060355500035845189

/-!
# A270981: Number of active (ON, black) cells at stage 2^n-1 of the two-dimensional cellular automaton defined by "Rule 237", based on the 5-celled von Neumann neighborhood.

The programs for A270981, there is no canonical definition to state claims against.
-/

/-! ## A270981.P11943620054401524227

`A270980(2^n-1)`
-/

namespace A270981.P11943620054401524227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270980 (2 ^ n - 1)

end

end A270981.P11943620054401524227

/-! ## A270981.P8882445263621507628

`record[A270980(A038573(n))]`
-/

namespace A270981.P8882445263621507628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270980 (A038573 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270981.P8882445263621507628

/-! ## A270981.P6223791248411745973

`record[A270980(A088163(n))]`
-/

namespace A270981.P6223791248411745973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270980 (A088163 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270981.P6223791248411745973

/-! ## A270981.P8357765894080617292

`record[A270980(A173787(n))]`
-/

namespace A270981.P8357765894080617292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270980 (A173787 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270981.P8357765894080617292

/-! ## A270981.P14179258355958253174

`record[A270980(A218616(n))]`
-/

namespace A270981.P14179258355958253174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270980 (A218616 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270981.P14179258355958253174

/-!
# A270982: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 237", based on the 5-celled von Neumann neighborhood.

The programs for A270982, there is no canonical definition to state claims against.
-/

/-! ## A270982.P6663618568635918000

`∑[∑[A270983(n)]+1-A270983(n)]`
-/

namespace A270982.P6663618568635918000
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270983 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (1 - A270983 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270982.P6663618568635918000

/-! ## A270982.P7136980236307647446

`∑[A270980(n)]`
-/

namespace A270982.P7136980236307647446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270980 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270982.P7136980236307647446

/-! ## A270982.P10038321541846788627

`A270980(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A270982.P10038321541846788627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A270980 n + a (A023443 n).toNat

end

end A270982.P10038321541846788627

/-! ## A270982.P7967677221719550775

`a(n-1)+A057427(n)*A270980(n)` with `a(0)=1`
-/

namespace A270982.P7967677221719550775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A057427 n * A270980 n

end

end A270982.P7967677221719550775

/-! ## A270982.P5752285252088410181

`a(n-1)-A057428(n)*A270980(n)` with `a(0)=1`
-/

namespace A270982.P5752285252088410181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) - A057428 n * A270980 n

end

end A270982.P5752285252088410181

/-! ## A270982.P3262021796984736049

`a(n-1)+A270980(n)+A000035(2*n)` with `a(0)=1`
-/

namespace A270982.P3262021796984736049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A270980 n + A000035 (2 * n))

end

end A270982.P3262021796984736049

/-! ## A270982.P15940947248094591246

`a(n-1)+A270980(n)+A130507(A022144(n))` with `a(0)=1`
-/

namespace A270982.P15940947248094591246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A270980 n + A130507 (A022144 n).toNat)

end

end A270982.P15940947248094591246

/-! ## A270982.P16741401666476863439

`A270980(n)+a(A025581(A000124(n)))` with `a(0)=1`
-/

namespace A270982.P16741401666476863439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A270980 n + a (A025581 (A000124 n).toNat).toNat

end

end A270982.P16741401666476863439

/-!
# A270983: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 237", based on the 5-celled von Neumann neighborhood.

The programs for A270983, there is no canonical definition to state claims against.
-/

/-! ## A270983.P8647173671934853007

`Δ[A270980(n)]`
-/

namespace A270983.P8647173671934853007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270980 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A270983.P8647173671934853007

/-! ## A270983.P18341982402692042635

`A270980(n+1)-A270980(n)`
-/

namespace A270983.P18341982402692042635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270980 (n + 1) - A270980 n

end

end A270983.P18341982402692042635

/-!
# A270984: Number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 238", based on the 5-celled von Neumann neighborhood.

The programs for A270984, there is no canonical definition to state claims against.
-/

/-! ## A270984.P1989024083105804915

`A270987(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A270984.P1989024083105804915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A270987 (n - 1) + a (n - 1)

end

end A270984.P1989024083105804915

/-! ## A270984.P8672030862146463596

`Δ[A270986(n)]-A270987(n)`
-/

namespace A270984.P8672030862146463596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270986 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A270987 n

end

end A270984.P8672030862146463596

/-! ## A270984.P6644135802598124889

`A270986(n+1)-(A270987(n)+A270986(n))`
-/

namespace A270984.P6644135802598124889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270986 (n + 1) - (A270987 n + A270986 n)

end

end A270984.P6644135802598124889

/-! ## A270984.P15786928242594375543

`Δ[A270986(n)]+A001489(A270987(n)+2)+2`
-/

namespace A270984.P15786928242594375543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270986 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (A001489 (A270987 n + 2).toNat + 2)

end

end A270984.P15786928242594375543

/-! ## A270984.P12213545567398081555

`A326178(∑[A270987(n)])-A270987(n)`
-/

namespace A270984.P12213545567398081555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270987 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326178 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - A270987 n

end

end A270984.P12213545567398081555

/-!
# A270985: Number of active (ON, black) cells at stage 2^n-1 of the two-dimensional cellular automaton defined by "Rule 238", based on the 5-celled von Neumann neighborhood.

The programs for A270985, there is no canonical definition to state claims against.
-/

/-! ## A270985.P14854598634117674217

`A270984(2^n-1)`
-/

namespace A270985.P14854598634117674217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270984 (2 ^ n - 1)

end

end A270985.P14854598634117674217

/-! ## A270985.P13046090541686171626

`record[A270984(A173787(n))]`
-/

namespace A270985.P13046090541686171626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270984 (A173787 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270985.P13046090541686171626

/-! ## A270985.P13494276235477283497

`record[A270984(A218616(n))]`
-/

namespace A270985.P13494276235477283497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270984 (A218616 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270985.P13494276235477283497

/-! ## A270985.P9307537545775026385

`record[A270984(A255067(n))]`
-/

namespace A270985.P9307537545775026385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270984 (A255067 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270985.P9307537545775026385

/-! ## A270985.P1838818187836111968

`and(-1, A270984(A000225(n)))`
-/

namespace A270985.P1838818187836111968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A270984 (A000225 n).toNat)

end

end A270985.P1838818187836111968

/-!
# A270986: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 238", based on the 5-celled von Neumann neighborhood.

The programs for A270986, there is no canonical definition to state claims against.
-/

/-! ## A270986.P16153303459670113181

`∑[A270987(n-1)+a(n-1)]` with `a(0)=1`
-/

namespace A270986.P16153303459670113181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A270987 (n - 1) + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270986.P16153303459670113181

/-! ## A270986.P9932513245361720616

`∑[∑[A270987(n)]+1-A270987(n)]`
-/

namespace A270986.P9932513245361720616
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270987 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (1 - A270987 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270986.P9932513245361720616

/-! ## A270986.P11585374786055284578

`∑[A270984(n)]`
-/

namespace A270986.P11585374786055284578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270984 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270986.P11585374786055284578

/-! ## A270986.P6654316032459909426

`A270984(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A270986.P6654316032459909426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A270984 n + a (A023443 n).toNat

end

end A270986.P6654316032459909426

/-! ## A270986.P12893160378832895570

`A270984(n)+a(abs(A024000(n)))` with `a(0)=1`
-/

namespace A270986.P12893160378832895570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A270984 n + a |A024000 n|.toNat

end

end A270986.P12893160378832895570

/-!
# A270987: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 238", based on the 5-celled von Neumann neighborhood.

The programs for A270987, there is no canonical definition to state claims against.
-/

/-! ## A270987.P1087671152571089555

`Δ[A270984(n)]`
-/

namespace A270987.P1087671152571089555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270984 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A270987.P1087671152571089555

/-! ## A270987.P12948199108096067882

`A270984(n+1)-A270984(n)`
-/

namespace A270987.P12948199108096067882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270984 (n + 1) - A270984 n

end

end A270987.P12948199108096067882

/-! ## A270987.P14260502889336626673

`A270984(n+1)+A270984(n)/A291914(A000040(n+1))`
-/

namespace A270987.P14260502889336626673
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A270984 (n + 1) : ℚ) + (A270984 n : ℚ) / (A291914 (A000040 (n + 1)).toNat : ℚ)

end

end A270987.P14260502889336626673

/-!
# A270988: Number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 241", based on the 5-celled von Neumann neighborhood.

The programs for A270988, there is no canonical definition to state claims against.
-/

/-! ## A270988.P17203957582022132355

`A270991(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A270988.P17203957582022132355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A270991 (n - 1) + a (n - 1)

end

end A270988.P17203957582022132355

/-! ## A270988.P8856709556882535698

`Δ[A270990(n)]-A270991(n)`
-/

namespace A270988.P8856709556882535698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270990 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A270991 n

end

end A270988.P8856709556882535698

/-! ## A270988.P7310114959646775552

`A270990(n+1)-(A270991(n)+A270990(n))`
-/

namespace A270988.P7310114959646775552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270990 (n + 1) - (A270991 n + A270990 n)

end

end A270988.P7310114959646775552

/-! ## A270988.P1585457896820566537

`A270990(A000027(n+1))%(A270991(n)+A270990(n))`
-/

namespace A270988.P1585457896820566537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A270990 (A000027 (n + 1)).toNat) (A270991 n + A270990 n)

end

end A270988.P1585457896820566537

/-! ## A270988.P16206886114887842792

`∑[A270991(and(n-1, A281482(n)))]`
-/

namespace A270988.P16206886114887842792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270991 (Int.land ((n : ℤ) - 1) (A281482 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270988.P16206886114887842792

/-! ## A270988.P4340236192284203618

`∑[A270991(A025581(A167614(n+1)))]`
-/

namespace A270988.P4340236192284203618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270991 (A025581 (A167614 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270988.P4340236192284203618

/-!
# A270989: Number of active (ON, black) cells at stage 2^n-1 of the two-dimensional cellular automaton defined by "Rule 241", based on the 5-celled von Neumann neighborhood.

The programs for A270989, there is no canonical definition to state claims against.
-/

/-! ## A270989.P1071413011258159682

`A270988(2^n-1)`
-/

namespace A270989.P1071413011258159682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270988 (2 ^ n - 1)

end

end A270989.P1071413011258159682

/-! ## A270989.P3240996042558804651

`and(-1, A270988(A000225(n)))`
-/

namespace A270989.P3240996042558804651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A270988 (A000225 n).toNat)

end

end A270989.P3240996042558804651

/-! ## A270989.P12797439038980552456

`record[A270988(A243071(n+1))]`
-/

namespace A270989.P12797439038980552456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270988 (A243071 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270989.P12797439038980552456

/-! ## A270989.P695045891472357248

`record[A270988(A253564(n+1))]`
-/

namespace A270989.P695045891472357248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270988 (A253564 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270989.P695045891472357248

/-! ## A270989.P18216609695221883245

`record[gcd(A035327(n), A270988(n))]`
-/

namespace A270989.P18216609695221883245
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A035327 n) (A270988 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270989.P18216609695221883245

/-!
# A270990: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 241", based on the 5-celled von Neumann neighborhood.

The programs for A270990, there is no canonical definition to state claims against.
-/

/-! ## A270990.P3108696516852047772

`∑[A270988(n)]`
-/

namespace A270990.P3108696516852047772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270988 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270990.P3108696516852047772

/-! ## A270990.P10909953978887205628

`A270988(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A270990.P10909953978887205628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A270988 n + a (A023443 n).toNat

end

end A270990.P10909953978887205628

/-! ## A270990.P17702468157989171663

`A270988(n)+a(abs(A024000(n)))` with `a(0)=1`
-/

namespace A270990.P17702468157989171663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A270988 n + a |A024000 n|.toNat

end

end A270990.P17702468157989171663

/-! ## A270990.P15174040065414609909

`A270988(A000038(n)+n)+a(n-1)` with `a(0)=1`
-/

namespace A270990.P15174040065414609909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A270988 (A000038 n + (n : ℤ)).toNat + a (n - 1)

end

end A270990.P15174040065414609909

/-! ## A270990.P7524973510798874044

`∑[A270991(n-1)+a(n-1)]` with `a(0)=1`
-/

namespace A270990.P7524973510798874044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A270991 (n - 1) + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270990.P7524973510798874044

/-! ## A270990.P17237918942277947925

`∑[∑[A270991(and(n-1, A281482(n)))]]`
-/

namespace A270990.P17237918942277947925
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270991 (Int.land ((n : ℤ) - 1) (A281482 n)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270990.P17237918942277947925

/-! ## A270990.P17731876975880167499

`a(n-1)+A346238(A165985(n+1))+A270988(n)` with `a(0)=1`
-/

namespace A270990.P17731876975880167499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A346238 (A165985 (n + 1)).toNat + A270988 n)

end

end A270990.P17731876975880167499

/-!
# A270991: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 241", based on the 5-celled von Neumann neighborhood.

The programs for A270991, there is no canonical definition to state claims against.
-/

/-! ## A270991.P685620829231097961

`Δ[A270988(n)]`
-/

namespace A270991.P685620829231097961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270988 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A270991.P685620829231097961

/-! ## A270991.P15343137553489895285

`A270988(n+1)-A270988(n)`
-/

namespace A270991.P15343137553489895285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270988 (n + 1) - A270988 n

end

end A270991.P15343137553489895285

/-!
# A270992: Number of distinct prime divisors of prime(n)+1 and prime(n+1)+1.

The programs for A270992, the canonical program `A270992.P11423849643885823458` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A270992 has offset 1).

The definition of A270992 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A270992.P11423849643885823458

`A001221(A063086(n+1))`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A270992

/-- `A001221(A063086(n+1))` -/
def P11423849643885823458.Spec : Prop :=
  ∀ n, P11423849643885823458.a n = A270992 (n + 1)

theorem P11423849643885823458.correct : P11423849643885823458.Spec := by
  intro n
  simp only [A270992, Nat.add_sub_cancel]

end A270992

/-! ## A270992.P1028401775486849279

`∑{e}[A063086(n+1), A063059(#)]`
-/

namespace A270992.P1028401775486849279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063086 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A063059 (Nat.factorization (f1 n).natAbs p)

end

end A270992.P1028401775486849279

namespace A270992

/-- `∑{e}[A063086(n+1), A063059(#)]` -/
def P1028401775486849279.Spec : Prop :=
  ∀ n, P1028401775486849279.a n = A270992 (n + 1)

end A270992

/-! ## A270992.P10790559164151262336

`∑{e}[A063086(n+1), A063062(#)]`
-/

namespace A270992.P10790559164151262336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063086 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A063062 (Nat.factorization (f1 n).natAbs p)

end

end A270992.P10790559164151262336

namespace A270992

/-- `∑{e}[A063086(n+1), A063062(#)]` -/
def P10790559164151262336.Spec : Prop :=
  ∀ n, P10790559164151262336.a n = A270992 (n + 1)

end A270992

/-! ## A270992.P14253954463428244608

`∑{e}[A063086(n+1), A063065(#)]`
-/

namespace A270992.P14253954463428244608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063086 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A063065 (Nat.factorization (f1 n).natAbs p)

end

end A270992.P14253954463428244608

namespace A270992

/-- `∑{e}[A063086(n+1), A063065(#)]` -/
def P14253954463428244608.Spec : Prop :=
  ∀ n, P14253954463428244608.a n = A270992 (n + 1)

end A270992

/-! ## A270992.P14487626611961479830

`A001221(A342670(p?[2*n+1]))`
-/

namespace A270992.P14487626611961479830
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A342670 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))).toNat

end

end A270992.P14487626611961479830

namespace A270992

/-- `A001221(A342670(p?[2*n+1]))` -/
def P14487626611961479830.Spec : Prop :=
  ∀ n, P14487626611961479830.a n = A270992 (n + 1)

end A270992

/-! ## A270992.P16876870604963617450

`A001221(A341530(A000040(n+1)))`
-/

namespace A270992.P16876870604963617450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A341530 (A000040 (n + 1)).toNat).toNat

end

end A270992.P16876870604963617450

namespace A270992

/-- `A001221(A341530(A000040(n+1)))` -/
def P16876870604963617450.Spec : Prop :=
  ∀ n, P16876870604963617450.a n = A270992 (n + 1)

end A270992

/-! ## A270992.P5500146890402952879

`A001221(A342670(A045344(n+1)))`
-/

namespace A270992.P5500146890402952879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A342670 (A045344 (n + 1)).toNat).toNat

end

end A270992.P5500146890402952879

namespace A270992

/-- `A001221(A342670(A045344(n+1)))` -/
def P5500146890402952879.Spec : Prop :=
  ∀ n, P5500146890402952879.a n = A270992 (n + 1)

end A270992

/-! ## A270992.P4737450553781270835

`A001221(A342670(A065091(n+1)))`
-/

namespace A270992.P4737450553781270835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A342670 (A065091 (n + 1)).toNat).toNat

end

end A270992.P4737450553781270835

namespace A270992

/-- `A001221(A342670(A065091(n+1)))` -/
def P4737450553781270835.Spec : Prop :=
  ∀ n, P4737450553781270835.a n = A270992 (n + 1)

end A270992

/-! ## A270992.P3070821721036581296

`A001221(A342670(A000040(n+2)))`
-/

namespace A270992.P3070821721036581296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A342670 (A000040 (n + 2)).toNat).toNat

end

end A270992.P3070821721036581296

namespace A270992

/-- `A001221(A342670(A000040(n+2)))` -/
def P3070821721036581296.Spec : Prop :=
  ∀ n, P3070821721036581296.a n = A270992 (n + 1)

end A270992

/-! ## A270992.P316164769036578028

`A001221(A341530(A008578(n+2)))`
-/

namespace A270992.P316164769036578028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A341530 (A008578 (n + 2)).toNat).toNat

end

end A270992.P316164769036578028

namespace A270992

/-- `A001221(A341530(A008578(n+2)))` -/
def P316164769036578028.Spec : Prop :=
  ∀ n, P316164769036578028.a n = A270992 (n + 1)

end A270992

/-! ## A270992.P11198677452982952963

`A001221(gcd(A001223(n+1), A008864(n+1)))`
-/

namespace A270992.P11198677452982952963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Int.gcd (A001223 (n + 1)) (A008864 (n + 1)))

end

end A270992.P11198677452982952963

namespace A270992

/-- `A001221(gcd(A001223(n+1), A008864(n+1)))` -/
def P11198677452982952963.Spec : Prop :=
  ∀ n, P11198677452982952963.a n = A270992 (n + 1)

end A270992

/-! ## A270992.P3039189662549581959

`A001221(gcd(A000040(n+1)+1, A000040(n+2)+1))`
-/

namespace A270992.P3039189662549581959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Int.gcd (A000040 (n + 1) + 1) (A000040 (n + 2) + 1))

end

end A270992.P3039189662549581959

namespace A270992

/-- `A001221(gcd(A000040(n+1)+1, A000040(n+2)+1))` -/
def P3039189662549581959.Spec : Prop :=
  ∀ n, P3039189662549581959.a n = A270992 (n + 1)

end A270992

/-!
# A270995: Expansion of Product_{k>=1} 1/(1 - A000009(k)*x^k).

The programs for A270995, there is no canonical definition to state claims against.
-/

/-! ## A270995.P4809749666158106354

`A316231(n)+2*A358823(n)`
-/

namespace A270995.P4809749666158106354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316231 n + 2 * A358823 n

end

end A270995.P4809749666158106354

/-! ## A270995.P16575413320083585049

`A296119(2^n)`
-/

namespace A270995.P16575413320083585049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296119 (2 ^ n)

end

end A270995.P16575413320083585049

/-! ## A270995.P17782578496890823581

`A296119(A000079(n))+char[15]`
-/

namespace A270995.P17782578496890823581
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296119 (A000079 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A270995.P17782578496890823581

/-! ## A270995.P6015719226978367803

`A326685(n)+A296119(A000079(n))`
-/

namespace A270995.P6015719226978367803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326685 n + A296119 (A000079 n).toNat

end

end A270995.P6015719226978367803

/-! ## A270995.P12534369569627312008

`A326686(n)+A296119(A000079(n))`
-/

namespace A270995.P12534369569627312008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326686 n + A296119 (A000079 n).toNat

end

end A270995.P12534369569627312008

/-!
# A270996: T(i, j) = k is the least squarefree number with a run of exactly i>=0 nonsquarefree numbers immediately preceding k and a run of exactly j>=0 nonsquarefree numbers immediately succeeding k.

The programs for A270996, there is no canonical definition to state claims against.
-/

/-! ## A270996.P7756543831900294555

`A186358(n)+A033676(A018004(2*n))`
-/

namespace A270996.P7756543831900294555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186358 n + A033676 (A018004 (2 * n)).toNat

end

end A270996.P7756543831900294555

/-!
# A270997: Numbers k such that k | A006190(k-1).

The programs for A270997, there is no canonical definition to state claims against.
-/

/-! ## A270997.P5392606096306885498

`lt[n%A322907(n+1), 1]+1`
-/

namespace A270997.P5392606096306885498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (A322907 (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A270997.P5392606096306885498

/-! ## A270997.P14392142857906273008

`record[gcd(n+1, A006190(n))]`
-/

namespace A270997.P14392142857906273008
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A006190 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270997.P14392142857906273008

/-! ## A270997.P8965676738689616170

`record[gcd(A007947(n+1), A052906(n))]`
-/

namespace A270997.P8965676738689616170
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A007947 (n + 1)) (A052906 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270997.P8965676738689616170

/-! ## A270997.P4263619829696319631

`A112231(xor(3, ∑[n+4]-2))`
-/

namespace A270997.P4263619829696319631
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112231 (Int.xor 3 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 2)).toNat

end

end A270997.P4263619829696319631

/-!
# A270999: Table read by rows: list of prime 5-tuples of the form (p, p+4, p+6, p+10, p+12).

The programs for A270999, there is no canonical definition to state claims against.
-/

/-! ## A270999.P6526253668187463564

`record[p?[A028391(A098760(n))]]`
-/

namespace A270999.P6526253668187463564
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028391 (A098760 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270999.P6526253668187463564

/-! ## A270999.P5158605861667161530

`filter[A271000(n+1), A156595(#)]`
-/

namespace A270999.P5158605861667161530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271000 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A156595 (f1 j).toNat = 1) n)

end

end A270999.P5158605861667161530

/-! ## A270999.P18150845942544600553

`∩[A271000(n+1), A119615(n)]`
-/

namespace A270999.P18150845942544600553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271000 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119615 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A270999.P18150845942544600553

/-! ## A270999.P5908713646034960318

`∩[A053663(n+1), A271000(n+1)]`
-/

namespace A270999.P5908713646034960318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053663 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271000 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A270999.P5908713646034960318

/-! ## A270999.P14176833341620686525

`∩[A127047(n+1), A271000(n+1)]`
-/

namespace A270999.P14176833341620686525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127047 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271000 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A270999.P14176833341620686525

