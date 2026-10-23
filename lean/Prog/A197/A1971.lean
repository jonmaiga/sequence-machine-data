import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C004
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C013
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C019
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
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C003
import Seq.B002.C004
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
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

/-!
# A197100: 2*A197072(n-1) - A197072(n).

The programs for A197100, there is no canonical definition to state claims against.
-/

/-! ## A197100.P17469599944022830337

`2*A197072(n)-A197072(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A197100.P17469599944022830337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A197072 n - A197072 (n + 1)

end

end A197100.P17469599944022830337

/-! ## A197100.P5260013920676192776

`A197072(n)-Δ[A197072(n)]`
-/

namespace A197100.P5260013920676192776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197072 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197072 n - (f1 (n + 1) - f1 n)

end

end A197100.P5260013920676192776

/-! ## A197100.P9937380688203011518

`A066066(2^n)-Δ[A033844(n+1)-2*A033844(n)]`
-/

namespace A197100.P9937380688203011518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033844 (n + 1) - 2 * A033844 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066066 (2 ^ n) - (f1 (n + 1) - f1 n)

end

end A197100.P9937380688203011518

/-! ## A197100.P8367503328340113503

`A066066(2^n)-Δ[A066066(2^n)]`
-/

namespace A197100.P8367503328340113503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066066 (2 ^ n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066066 (2 ^ n) - (f1 (n + 1) - f1 n)

end

end A197100.P8367503328340113503

/-!
# A197101: Half the number of n X n 0..3 arrays with no element equal to the average of its horizontal and vertical neighbors.

The programs for A197101, there is no canonical definition to state claims against.
-/

/-! ## A197101.P4346267508800282250

`A197109((n+1)²+n²)`
-/

namespace A197101.P4346267508800282250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197109 ((n + 1) ^ 2 + n ^ 2)

end

end A197101.P4346267508800282250

/-!
# A197102: Half the number of n X 1 0..3 arrays with no element equal to the average of its horizontal and vertical neighbors.

The programs for A197102, there is no canonical definition to state claims against.
-/

/-! ## A197102.P5126772708615726892

`A197109(∑[n]+1)`
-/

namespace A197102.P5126772708615726892
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197109 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A197102.P5126772708615726892

/-! ## A197102.P15526717141870851053

`record[root(A197109(n+1), A074909(n))]`
-/

namespace A197102.P15526717141870851053
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A197109 (n + 1) : ℝ) ^ (1 / (A074909 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A197102.P15526717141870851053

/-! ## A197102.P2090465175150293998

`record[root(A197109(n+1), A086645(n))]`
-/

namespace A197102.P2090465175150293998
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A197109 (n + 1) : ℝ) ^ (1 / (A086645 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A197102.P2090465175150293998

/-! ## A197102.P9982533792900082112

`record[gcd(A197109(n+1), A318753(n))]`
-/

namespace A197102.P9982533792900082112
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A197109 (n + 1)) (A318753 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A197102.P9982533792900082112

/-! ## A197102.P6441428349645777411

`record[root(A197109(n+1), A002260(n+1))]`
-/

namespace A197102.P6441428349645777411
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A197109 (n + 1) : ℝ) ^ (1 / (A002260 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A197102.P6441428349645777411

/-!
# A197103: Half the number of nX2 0..3 arrays with no element equal to the average of its horizontal and vertical neighbors.

The programs for A197103, there is no canonical definition to state claims against.
-/

/-! ## A197103.P2247694474100924578

`A197109(∑[n+1]+2)`
-/

namespace A197103.P2247694474100924578
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197109 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A197103.P2247694474100924578

/-! ## A197103.P17637252077322016524

`record[root(A197109(n+2), A074909(n))]`
-/

namespace A197103.P17637252077322016524
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A197109 (n + 2) : ℝ) ^ (1 / (A074909 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A197103.P17637252077322016524

/-! ## A197103.P8195798314192430194

`record[gcd(A197109(n+2), A318753(n))]`
-/

namespace A197103.P8195798314192430194
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A197109 (n + 2)) (A318753 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A197103.P8195798314192430194

/-! ## A197103.P116854028732663108

`A294927(n+1)+A197109(A000096(n)+3)`
-/

namespace A197103.P116854028732663108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294927 (n + 1) + A197109 (A000096 n + 3).toNat

end

end A197103.P116854028732663108

/-! ## A197103.P16964954507113805495

`record[A197109(Δ[A003453(n+5)])]`
-/

namespace A197103.P16964954507113805495
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197109 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A197103.P16964954507113805495

/-!
# A197104: Half the number of nX3 0..3 arrays with no element equal to the average of its horizontal and vertical neighbors.

The programs for A197104, there is no canonical definition to state claims against.
-/

/-! ## A197104.P12087588964567325896

`A197109(∑[n+2]+4)`
-/

namespace A197104.P12087588964567325896
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197109 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A197104.P12087588964567325896

/-! ## A197104.P412796753495834772

`A197109(A167614(n+1))+A025438(n)`
-/

namespace A197104.P412796753495834772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197109 (A167614 (n + 1)).toNat + A025438 n

end

end A197104.P412796753495834772

/-! ## A197104.P10681859004253533871

`A257850(n)+A197109(A167614(n+1))`
-/

namespace A197104.P10681859004253533871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257850 n + A197109 (A167614 (n + 1)).toNat

end

end A197104.P10681859004253533871

/-! ## A197104.P3923221003022499374

`A196222(n)*A197109(A167614(n+1))`
-/

namespace A197104.P3923221003022499374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196222 n * A197109 (A167614 (n + 1)).toNat

end

end A197104.P3923221003022499374

/-! ## A197104.P12769812578475543386

`lcm(A033999(n), A197109(A167614(n+1)))`
-/

namespace A197104.P12769812578475543386
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A197109 (A167614 (n + 1)).toNat)

end

end A197104.P12769812578475543386

/-!
# A197105: Half the number of nX4 0..3 arrays with no element equal to the average of its horizontal and vertical neighbors.

The programs for A197105, there is no canonical definition to state claims against.
-/

/-! ## A197105.P13780784611217215577

`A197109(A141214(n)+7)`
-/

namespace A197105.P13780784611217215577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197109 (A141214 n + 7).toNat

end

end A197105.P13780784611217215577

/-! ## A197105.P4258707937089141985

`A197109(A052905(n)+9)`
-/

namespace A197105.P4258707937089141985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197109 (A052905 n + 9).toNat

end

end A197105.P4258707937089141985

/-! ## A197105.P6177585235719428170

`A197109(A055999(n)+10)`
-/

namespace A197105.P6177585235719428170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197109 (A055999 n + 10).toNat

end

end A197105.P6177585235719428170

/-! ## A197105.P9235811694942545926

`A197109(A167614(n+2)+1)`
-/

namespace A197105.P9235811694942545926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197109 (A167614 (n + 2) + 1).toNat

end

end A197105.P9235811694942545926

/-! ## A197105.P9012065152989722662

`A197109(eq[5, A131818(n+1)])`
-/

namespace A197105.P9012065152989722662
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197109 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A197105.P9012065152989722662

/-!
# A197106: Half the number of nX5 0..3 arrays with no element equal to the average of its horizontal and vertical neighbors.

The programs for A197106, there is no canonical definition to state claims against.
-/

/-! ## A197106.P13465284150659458154

`A197109(A167614(n+3)+2)`
-/

namespace A197106.P13465284150659458154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197109 (A167614 (n + 3) + 2).toNat

end

end A197106.P13465284150659458154

/-! ## A197106.P13470100736262054597

`A197109(A374005(n+1))`
-/

namespace A197106.P13470100736262054597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197109 (A374005 (n + 1)).toNat

end

end A197106.P13470100736262054597

/-! ## A197106.P6660698733042701803

`A197109(A052905(n+2)+1)`
-/

namespace A197106.P6660698733042701803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197109 (A052905 (n + 2) + 1).toNat

end

end A197106.P6660698733042701803

/-!
# A197107: 

The programs for A197107, there is no canonical definition to state claims against.
-/

/-! ## A197107.P12046119330592427254

`A197109(A052905(n+3))`
-/

namespace A197107.P12046119330592427254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197109 (A052905 (n + 3)).toNat

end

end A197107.P12046119330592427254

/-!
# A197112: Numbers k such that phi(k) = phi(k+1) + phi(k+2).

The programs for A197112, there is no canonical definition to state claims against.
-/

/-! ## A197112.P4616114785063849869

`A066232(n+1)-2`
-/

namespace A197112.P4616114785063849869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066232 (n + 1) - 2

end

end A197112.P4616114785063849869

/-! ## A197112.P803554592819337572

`abs(2-A066232(n-log2(1/2)))`
-/

namespace A197112.P803554592819337572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - A066232 (SequenceMachineLib.roundAway ((n : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ))).toNat|

end

end A197112.P803554592819337572

/-! ## A197112.P4400799503210033474

`A113679(n+2)+A066232(n+1)`
-/

namespace A197112.P4400799503210033474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113679 (n + 2) + A066232 (n + 1)

end

end A197112.P4400799503210033474

/-! ## A197112.P4670175622647887002

`A280560(A131843(n))+A066232(n+1)`
-/

namespace A197112.P4670175622647887002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280560 (A131843 n).toNat + A066232 (n + 1)

end

end A197112.P4670175622647887002

/-! ## A197112.P956250633033767901

`A280560(A267872(n))+A066232(n+1)`
-/

namespace A197112.P956250633033767901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280560 (A267872 n).toNat + A066232 (n + 1)

end

end A197112.P956250633033767901

/-! ## A197112.P2962740037881873117

`A220160(n+1)-1`
-/

namespace A197112.P2962740037881873117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220160 (n + 1) - 1

end

end A197112.P2962740037881873117

/-! ## A197112.P3574947669592197608

`abs(1-A220160(-xor(n, -1)))`
-/

namespace A197112.P3574947669592197608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A220160 (-Int.xor (n : ℤ) (-1)).toNat|

end

end A197112.P3574947669592197608

/-! ## A197112.P7152751611986687740

`record[A220160(A152271(n))-1]`
-/

namespace A197112.P7152751611986687740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220160 (A152271 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A197112.P7152751611986687740

/-!
# A197113: Nonprime numbers n such that the greatest residue of the congruence x^n (mod n) equals n-1 where x = 0..n-1.

The programs for A197113, there is no canonical definition to state claims against.
-/

/-! ## A197113.P5991139483757618802

`filter[A196499(n+1), A005171(#)]`
-/

namespace A197113.P5991139483757618802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196499 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A197113.P5991139483757618802

/-! ## A197113.P9102033304474954578

`filter[A196499(n+1), A292438(#)]`
-/

namespace A197113.P9102033304474954578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196499 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A292438 (f1 j).toNat = 1) n)

end

end A197113.P9102033304474954578

/-! ## A197113.P7366878628145113636

`∩[A018252(n+1), A196499(n+1)]`
-/

namespace A197113.P7366878628145113636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196499 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A197113.P7366878628145113636

/-! ## A197113.P514982062443505743

`∩[A056653(n+1), A196499(n+1)]`
-/

namespace A197113.P514982062443505743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056653 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196499 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A197113.P514982062443505743

/-! ## A197113.P900986588900830775

`∩[A141468(n+1), A196499(n+1)]`
-/

namespace A197113.P900986588900830775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196499 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A197113.P900986588900830775

/-! ## A197113.P15740286137001583642

`∩[A164276(n+1), A196499(n+1)]`
-/

namespace A197113.P15740286137001583642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164276 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196499 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A197113.P15740286137001583642

/-! ## A197113.P3528385367224872146

`∪[A014076(n+1), A157075(n+1)]`
-/

namespace A197113.P3528385367224872146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014076 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157075 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A197113.P3528385367224872146

/-! ## A197113.P1583496244162691492

`∪[A014076(n+1), A174051(n+1)]`
-/

namespace A197113.P1583496244162691492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014076 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174051 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A197113.P1583496244162691492

/-!
# A197115: Nonsquare positive integers k such that the fundamental unit of the quadratic field Q(sqrt(k)) has norm -1 and can be written as x + y*sqrt(d) with integers x, y where d is the squarefree part of k.

The programs for A197115, there is no canonical definition to state claims against.
-/

/-! ## A197115.P12397033222926749113

`filter[A028771(n+1), A229062(#)]`
-/

namespace A197115.P12397033222926749113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028771 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A229062 (f1 j).toNat = 1) n)

end

end A197115.P12397033222926749113

/-! ## A197115.P10699239097738198063

`∩[A000404(n+1), A028771(n+1)]`
-/

namespace A197115.P10699239097738198063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000404 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028771 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A197115.P10699239097738198063

/-! ## A197115.P11397467472548695556

`∩[A000415(n+1), A028771(n+1)]`
-/

namespace A197115.P11397467472548695556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000415 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028771 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A197115.P11397467472548695556

/-! ## A197115.P12236189640820114160

`∩[A001481(n+1), A028771(n+1)]`
-/

namespace A197115.P12236189640820114160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001481 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028771 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A197115.P12236189640820114160

/-! ## A197115.P14374168453987860174

`∩[A028771(n+1), A068537(n+1)]`
-/

namespace A197115.P14374168453987860174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028771 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068537 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A197115.P14374168453987860174

/-!
# A197117: Number of k such that (2^k-1)*2^n+1 is prime with 0 < k < n+1.

The programs for A197117, there is no canonical definition to state claims against.
-/

/-! ## A197117.P2987551182348464384

`A287576(A213247(n+2)+1)`
-/

namespace A197117.P2987551182348464384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287576 (A213247 (n + 2) + 1).toNat

end

end A197117.P2987551182348464384

/-! ## A197117.P11901514725479537106

`xor(A021913(n), A306764(A286704(n)))`
-/

namespace A197117.P11901514725479537106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A021913 n) (A306764 (A286704 n).toNat)

end

end A197117.P11901514725479537106

/-! ## A197117.P11869859289742975246

`A359239(n+1)+A138150(A281333(n+2))`
-/

namespace A197117.P11869859289742975246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359239 (n + 1) + A138150 (A281333 (n + 2)).toNat

end

end A197117.P11869859289742975246

/-! ## A197117.P6669358881547201506

`A366988(2*(n+1))+A023532(A056040(n))`
-/

namespace A197117.P6669358881547201506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366988 (2 * (n + 1)) + A023532 (A056040 n).toNat

end

end A197117.P6669358881547201506

/-! ## A197117.P1039535333351296609

`A010873(A302826(3*n+5)+A098790(n))`
-/

namespace A197117.P1039535333351296609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010873 (A302826 (3 * n + 5) + A098790 n).toNat

end

end A197117.P1039535333351296609

/-!
# A197118: Number of k such that (2^k+1)*2^n-1 is prime with 0 < k < n+1.

The programs for A197118, there is no canonical definition to state claims against.
-/

/-! ## A197118.P9537559241417256207

`A089840(and(A024916(n+5), A133275(n+1)))`
-/

namespace A197118.P9537559241417256207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089840 (Int.land (A024916 (n + 5)) (A133275 (n + 1))).toNat

end

end A197118.P9537559241417256207

/-! ## A197118.P3352578818729376144

`A265331(A127724(n+1))%A000005(3*(n+1))`
-/

namespace A197118.P3352578818729376144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A265331 (A127724 (n + 1)).toNat) (A000005 (3 * (n + 1)))

end

end A197118.P3352578818729376144

/-!
# A197121: Nonsquare positive integers n such that the fundamental unit of quadratic field Q(sqrt(d))has norm 1 and minimum one from two parts of fundamental unit are not integer.

The programs for A197121, there is no canonical definition to state claims against.
-/

/-! ## A197121.P2595106963200052672

`A175461(n+1)-val(A175492(n+1)+1, 9)`
-/

namespace A197121.P2595106963200052672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175461 (n + 1) - (SequenceMachineLib.valuation (A175492 (n + 1) + 1).toNat 9 : ℤ)

end

end A197121.P2595106963200052672

/-! ## A197121.P8222771502517255682

`A175461(n+1)-A010060(n^6-n^3-n²+n)`
-/

namespace A197121.P8222771502517255682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175461 (n + 1) - A010060 ((n ^ 6 : ℤ) - (n ^ 3 : ℤ) - (n ^ 2 : ℤ) + (n : ℤ)).toNat

end

end A197121.P8222771502517255682

/-!
# A197122: Number of partitions of n into positive quarter-squares (cf. A002620).

The programs for A197122, there is no canonical definition to state claims against.
-/

/-! ## A197122.P1071272233568433177

`A000009(n+3)-A055642(A138364(n+2))`
-/

namespace A197122.P1071272233568433177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 (n + 3) - A055642 (A138364 (n + 2)).toNat

end

end A197122.P1071272233568433177

/-! ## A197122.P2297842128301467547

`∑[A008743(n)+val(A266934(n+1), 14)]`
-/

namespace A197122.P2297842128301467547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008743 n + (SequenceMachineLib.valuation (A266934 (n + 1)).toNat 14 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A197122.P2297842128301467547

/-! ## A197122.P12516740723588329155

`A237665(A077168(n))+A119326(n)`
-/

namespace A197122.P12516740723588329155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237665 (A077168 n).toNat + A119326 n

end

end A197122.P12516740723588329155

/-! ## A197122.P6146354911980290397

`A035451(lt[A151813(n), A246815(n)])`
-/

namespace A197122.P6146354911980290397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151813 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246815 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035451 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A197122.P6146354911980290397

/-!
# A197125: Numbers such that sum of digits and sum of the square of digits are both a square.

The programs for A197125, the canonical program `A197125.P18255023952800122517` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A197125 has offset 1).

The definition of A197125 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 499 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A197125.P18255023952800122517

`∩[A028839(n+1), A175396(n+1)]`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A197125

/-- `∩[A028839(n+1), A175396(n+1)]` -/
def P18255023952800122517.Spec : Prop :=
  ∀ n, (P18255023952800122517.a n : ℤ) = A197125 (n + 1)

theorem P18255023952800122517.correct : P18255023952800122517.Spec := by
  intro n
  simp only [A197125, Nat.add_sub_cancel]

end A197125

/-! ## A197125.P8711600683677277622

`A197129((n+1)^gcd(11, n))`
-/

namespace A197125.P8711600683677277622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197129 ((n + 1) ^ Nat.gcd 11 n)

end

end A197125.P8711600683677277622

namespace A197125

/-- `A197129((n+1)^gcd(11, n))` -/
def P8711600683677277622.Spec : Prop :=
  ∀ n, P8711600683677277622.a n = A197125 (n + 1)

end A197125

/-! ## A197125.P8193233071044741219

`A197129(A062399(n)+1)`
-/

namespace A197125.P8193233071044741219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197129 (A062399 n + 1).toNat

end

end A197125.P8193233071044741219

namespace A197125

/-- `A197129(A062399(n)+1)` -/
def P8193233071044741219.Spec : Prop :=
  ∀ n, P8193233071044741219.a n = A197125 (n + 1)

end A197125

/-! ## A197125.P2083307648374709006

`A197129(A351870(n)+1)`
-/

namespace A197125.P2083307648374709006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197129 (A351870 n + 1).toNat

end

end A197125.P2083307648374709006

namespace A197125

/-- `A197129(A351870(n)+1)` -/
def P2083307648374709006.Spec : Prop :=
  ∀ n, P2083307648374709006.a n = A197125 (n + 1)

end A197125

/-!
# A197126: Triangle T(n,k), n>=1, 1<=k<=n, read by rows: T(n,k) is the number of cliques of size k in all partitions of n.

The programs for A197126, there is no canonical definition to state claims against.
-/

/-! ## A197126.P8148091701559141118

`gcd(A000005(8*n+9)%2, Δ[A066633(n+1)])`
-/

namespace A197126.P8148091701559141118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066633 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Int.tmod (A000005 (8 * n + 9)) 2) (f1 (n + 1) - f1 n)

end

end A197126.P8148091701559141118

/-! ## A197126.P9126554792133784688

`A066633(n+1)-A066633(n+2)%A138785(n+2)`
-/

namespace A197126.P9126554792133784688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066633 (n + 1) - Int.tmod (A066633 (n + 2)) (A138785 (n + 2))

end

end A197126.P9126554792133784688

/-! ## A197126.P9968992616436666955

`A130259(A091602(n+1)^A026807(n+1))`
-/

namespace A197126.P9968992616436666955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130259 (SequenceMachineLib.roundAway ((A091602 (n + 1) : ℚ) ^ (A026807 (n + 1) : ℤ))).toNat

end

end A197126.P9968992616436666955

/-!
# A197127: Nonsquare positive integers n such that the fundamental unit of quadratic field Q(sqrt(d))is singular.

The programs for A197127, there is no canonical definition to state claims against.
-/

/-! ## A197127.P6025766104956787032

`lt[A061050(n+10), A077320(A099997(n+1))]`
-/

namespace A197127.P6025766104956787032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061050 (n + 10)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077320 (A099997 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A197127.P6025766104956787032

/-! ## A197127.P14651417552275523312

`lt[4, A048766(A317925(2*(n+2)))]`
-/

namespace A197127.P14651417552275523312
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A317925 (2 * (n + 2))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A197127.P14651417552275523312

/-! ## A197127.P15614440963661267102

`∩[A103747(n+1), A194366(n+1)]`
-/

namespace A197127.P15614440963661267102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103747 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194366 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A197127.P15614440963661267102

/-! ## A197127.P7152925767469023373

`∩[A103747(n+1), A087643(n+3)]`
-/

namespace A197127.P7152925767469023373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103747 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087643 (n + 3)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A197127.P7152925767469023373

/-! ## A197127.P2995445544132343224

`A285127(n+1)+record[A344869(3*n+4)]`
-/

namespace A197127.P2995445544132343224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344869 (3 * n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285127 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A197127.P2995445544132343224

/-!
# A197128: Nonsquare positive integers n such that the fundamental unit of quadratic field Q(sqrt(n))is not singular.

The programs for A197128, there is no canonical definition to state claims against.
-/

/-! ## A197128.P14820290794962777516

`comp[∪[A197127(n+1), n²]]`
-/

namespace A197128.P14820290794962777516
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197127 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = x) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A197128.P14820290794962777516

/-! ## A197128.P2566521169345948952

`eq[char[A197127(n+1)], A000122(n)]`
-/

namespace A197128.P2566521169345948952
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197127 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A197128.P2566521169345948952

/-! ## A197128.P3932896856283009053

`eq[char[A197127(n+1)], A002448(n)]`
-/

namespace A197128.P3932896856283009053
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197127 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002448 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A197128.P3932896856283009053

/-! ## A197128.P4737454558640627926

`eq[char[A197127(n+1)], A010052(n)]`
-/

namespace A197128.P4737454558640627926
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197127 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A197128.P4737454558640627926

/-! ## A197128.P11757561605692492232

`eq[A000122(n), A295884(A330105(2*(n+2)))]`
-/

namespace A197128.P11757561605692492232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295884 (A330105 (2 * (n + 2))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A197128.P11757561605692492232

/-!
# A197129: Numbers such that the sum, sum of the squares, and sum of the cubes of the decimal digits are each a perfect square.

The programs for A197129, the canonical program `A197129.P9586474388136463062` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A197129 has offset 1).

The definition of A197129 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 104 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A197129.P12984015708694624340

`∩[A175396(n+1), A197039(n+1)]`
-/

namespace A197129.P12984015708694624340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175396 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197039 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A197129.P12984015708694624340

namespace A197129

/-- `∩[A175396(n+1), A197039(n+1)]` -/
def P12984015708694624340.Spec : Prop :=
  ∀ n, (P12984015708694624340.a n : ℤ) = A197129 (n + 1)

end A197129

/-! ## A197129.P9586474388136463062

`∩[A197039(n+1), A197125(n+1)]`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A197129

/-- `∩[A197039(n+1), A197125(n+1)]` -/
def P9586474388136463062.Spec : Prop :=
  ∀ n, (P9586474388136463062.a n : ℤ) = A197129 (n + 1)

theorem P9586474388136463062.correct : P9586474388136463062.Spec := by
  intro n
  simp only [A197129, Nat.add_sub_cancel]

end A197129

/-! ## A197129.P10424883341994579508

`A197125(∑[A299321(n+1)!])`
-/

namespace A197129.P10424883341994579508
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A299321 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197125 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A197129.P10424883341994579508

namespace A197129

/-- `A197125(∑[A299321(n+1)!])` -/
def P10424883341994579508.Spec : Prop :=
  ∀ n, P10424883341994579508.a n = A197129 (n + 1)

end A197129

/-! ## A197129.P7920909186029879360

`A197125(A299321(n+1)!+n)`
-/

namespace A197129.P7920909186029879360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197125 (Nat.factorial (A299321 (n + 1)).toNat + n)

end

end A197129.P7920909186029879360

namespace A197129

/-- `A197125(A299321(n+1)!+n)` -/
def P7920909186029879360.Spec : Prop :=
  ∀ n, P7920909186029879360.a n = A197129 (n + 1)

end A197129

/-!
# A197132: Euler transform of composite numbers.

The programs for A197132, there is no canonical definition to state claims against.
-/

/-! ## A197132.P246106783750038838

`A320237(n)+A108339(A000932(n))`
-/

namespace A197132.P246106783750038838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320237 n + A108339 (A000932 n).toNat

end

end A197132.P246106783750038838

/-! ## A197132.P914505905074243306

`A008776(n)-A330282(A004111(n))`
-/

namespace A197132.P914505905074243306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008776 n - A330282 (A004111 n).toNat

end

end A197132.P914505905074243306

/-!
# A197156: Number of free poly-[3^3.4^2]-tiles (polyhouses) (holes allowed) with n cells.

The programs for A197156, there is no canonical definition to state claims against.
-/

/-! ## A197156.P11409392105694738055

`A175778(∏[A022475(n+1)])`
-/

namespace A197156.P11409392105694738055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022475 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175778 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A197156.P11409392105694738055

/-! ## A197156.P354816273714964996

`A201509(2^n)+A092692(n)`
-/

namespace A197156.P354816273714964996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201509 (2 ^ n) + A092692 n

end

end A197156.P354816273714964996

/-!
# A197157: Number of one-sided poly-[3^3.4^2]-tiles (polyhouses) (holes allowed) with n cells.

The programs for A197157, there is no canonical definition to state claims against.
-/

/-! ## A197157.P13956182340457989731

`A282684(n)+A167162(A380024(n))`
-/

namespace A197157.P13956182340457989731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282684 n + A167162 (A380024 n).toNat

end

end A197157.P13956182340457989731

/-!
# A197158: Number of fixed poly-[3^3.4^2]-tiles (polyhouses) (holes allowed) with n cells.

The programs for A197158, there is no canonical definition to state claims against.
-/

/-! ## A197158.P13389037348433826214

`A111900(A006301(n))+4^n-(2^n-(n+1))*2^(n-2)`
-/

namespace A197158.P13389037348433826214
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A111900 (A006301 n).toNat : ℚ) + ((4 ^ n : ℚ) - ((2 ^ n : ℤ) - (n + 1 : ℤ) : ℚ) * (2 : ℚ) ^ ((n : ℤ) - 2 : ℤ))

end

end A197158.P13389037348433826214

/-! ## A197158.P8470374456256481100

`A168046(A087405(n))+A087438(n)`
-/

namespace A197158.P8470374456256481100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168046 (A087405 n).toNat + A087438 n

end

end A197158.P8470374456256481100

/-!
# A197159: Number of free poly-[3^4.6]-tiles (holes allowed) with n cells.

The programs for A197159, there is no canonical definition to state claims against.
-/

/-! ## A197159.P16016407278807148994

`∑[A090499(A104993(n))]`
-/

namespace A197159.P16016407278807148994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090499 (A104993 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A197159.P16016407278807148994

/-! ## A197159.P16625786895519745378

`∑[A090499(A107066(n))]`
-/

namespace A197159.P16625786895519745378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090499 (A107066 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A197159.P16625786895519745378

/-!
# A197160: Number of fixed poly-[3^4.6]-tiles (holes allowed) with n cells.

The programs for A197160, there is no canonical definition to state claims against.
-/

/-! ## A197160.P1212159151526079786

`A221586(n+4)+A143589(A192744(n))`
-/

namespace A197160.P1212159151526079786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221586 (n + 4) + A143589 (A192744 n).toNat

end

end A197160.P1212159151526079786

/-!
# A197161: Number of n X n 0..4 arrays with each element x equal to the number of its horizontal and vertical neighbors equal to 3,2,1,4,0 for x=0,1,2,3,4.

The programs for A197161, there is no canonical definition to state claims against.
-/

/-! ## A197161.P5780000755078119725

`A197167(∑[4*n]+1)`
-/

namespace A197161.P5780000755078119725
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197167 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A197161.P5780000755078119725

/-! ## A197161.P17441186997369891613

`or(char[1], A197167(A001844(n)))`
-/

namespace A197161.P17441186997369891613
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A197167 (A001844 n).toNat)

end

end A197161.P17441186997369891613

/-! ## A197161.P10655344209761735883

`gcd(A063667(n), A197167(A001844(n)))`
-/

namespace A197161.P10655344209761735883
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A063667 n) (A197167 (A001844 n).toNat)

end

end A197161.P10655344209761735883

/-! ## A197161.P5537355105251235006

`lcm(A168228(n), A197167(A001844(n)))`
-/

namespace A197161.P5537355105251235006
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A168228 n) (A197167 (A001844 n).toNat)

end

end A197161.P5537355105251235006

/-! ## A197161.P6414314163913646695

`A088840(A022166(n))*A197167(A001844(n))`
-/

namespace A197161.P6414314163913646695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088840 (A022166 n).toNat * A197167 (A001844 n).toNat

end

end A197161.P6414314163913646695

/-!
# A197162: Number of nX3 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 3,2,1,4,0 for x=0,1,2,3,4.

The programs for A197162, there is no canonical definition to state claims against.
-/

/-! ## A197162.P8543762845951259195

`A197167(∑[n+2]+4)`
-/

namespace A197162.P8543762845951259195
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197167 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A197162.P8543762845951259195

/-! ## A197162.P7795557590177744735

`lcm((-1)^n, A197167(A167614(n+1)))`
-/

namespace A197162.P7795557590177744735
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A197167 (A167614 (n + 1)).toNat)

end

end A197162.P7795557590177744735

/-! ## A197162.P18405246341511348639

`A197167(A167614(n+1))+A178798(n)`
-/

namespace A197162.P18405246341511348639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197167 (A167614 (n + 1)).toNat + A178798 n

end

end A197162.P18405246341511348639

/-! ## A197162.P5317132826449768619

`A197167(A167614(n+1))+A185245(n)`
-/

namespace A197162.P5317132826449768619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197167 (A167614 (n + 1)).toNat + A185245 n

end

end A197162.P5317132826449768619

/-! ## A197162.P15852744337116264166

`A326683(n)+A197167(A167614(n+1))`
-/

namespace A197162.P15852744337116264166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326683 n + A197167 (A167614 (n + 1)).toNat

end

end A197162.P15852744337116264166

/-!
# A197163: Number of nX4 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 3,2,1,4,0 for x=0,1,2,3,4.

The programs for A197163, there is no canonical definition to state claims against.
-/

/-! ## A197163.P7108125201037871164

`A197167(A374004(n+1))`
-/

namespace A197163.P7108125201037871164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197167 (A374004 (n + 1)).toNat

end

end A197163.P7108125201037871164

/-! ## A197163.P5248352537430444997

`A197167(A052905(n)+9)`
-/

namespace A197163.P5248352537430444997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197167 (A052905 n + 9).toNat

end

end A197163.P5248352537430444997

/-! ## A197163.P5572168768549125963

`A197167(A055999(n)+10)`
-/

namespace A197163.P5572168768549125963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197167 (A055999 n + 10).toNat

end

end A197163.P5572168768549125963

/-! ## A197163.P16341437806820399825

`A197167(A167614(n+2)+1)`
-/

namespace A197163.P16341437806820399825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197167 (A167614 (n + 2) + 1).toNat

end

end A197163.P16341437806820399825

/-! ## A197163.P15212647696557597343

`A197167(A166136(n+2)-2)`
-/

namespace A197163.P15212647696557597343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197167 (A166136 (n + 2) - 2).toNat

end

end A197163.P15212647696557597343

/-!
# A197164: Number of nX5 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 3,2,1,4,0 for x=0,1,2,3,4.

The programs for A197164, there is no canonical definition to state claims against.
-/

/-! ## A197164.P14606716504001530581

`A197167(A374005(n+1))`
-/

namespace A197164.P14606716504001530581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197167 (A374005 (n + 1)).toNat

end

end A197164.P14606716504001530581

/-! ## A197164.P3142066021505314020

`A197167(A167499(n+3))`
-/

namespace A197164.P3142066021505314020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197167 (A167499 (n + 3)).toNat

end

end A197164.P3142066021505314020

/-! ## A197164.P3538471662283827970

`A197167(A155212(n)+13)`
-/

namespace A197164.P3538471662283827970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197167 (A155212 n + 13).toNat

end

end A197164.P3538471662283827970

/-! ## A197164.P17160207634826537293

`A197167(eq[6, A131818(n+1)])`
-/

namespace A197164.P17160207634826537293
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197167 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A197164.P17160207634826537293

/-! ## A197164.P9268721683908588143

`A197167(eq[4, A193592(n)])`
-/

namespace A197164.P9268721683908588143
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197167 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A197164.P9268721683908588143

/-!
# A197165: Number of nX6 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 3,2,1,4,0 for x=0,1,2,3,4.

The programs for A197165, there is no canonical definition to state claims against.
-/

/-! ## A197165.P6290025733404456116

`A197167(A374007(n+1))`
-/

namespace A197165.P6290025733404456116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197167 (A374007 (n + 1)).toNat

end

end A197165.P6290025733404456116

/-! ## A197165.P10276666126871543843

`A197167(A166136(n+4))`
-/

namespace A197165.P10276666126871543843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197167 (A166136 (n + 4)).toNat

end

end A197165.P10276666126871543843

/-! ## A197165.P17005856694864382951

`A197167(A000217(n+5)+6)`
-/

namespace A197165.P17005856694864382951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197167 (A000217 (n + 5) + 6).toNat

end

end A197165.P17005856694864382951

/-! ## A197165.P15460229926296883426

`A197167(eq[7, A131818(n+1)])`
-/

namespace A197165.P15460229926296883426
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197167 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A197165.P15460229926296883426

/-! ## A197165.P7775005350896709184

`A197167(eq[3, A219347(n)])`
-/

namespace A197165.P7775005350896709184
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197167 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A197165.P7775005350896709184

/-!
# A197166: Number of nX7 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 3,2,1,4,0 for x=0,1,2,3,4.

The programs for A197166, there is no canonical definition to state claims against.
-/

/-! ## A197166.P6254741187041244076

`A197167(A374008(n+1))`
-/

namespace A197166.P6254741187041244076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197167 (A374008 (n + 1)).toNat

end

end A197166.P6254741187041244076

/-! ## A197166.P13016205375210823262

`A197167(eq[8, A131818(n+1)])`
-/

namespace A197166.P13016205375210823262
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197167 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A197166.P13016205375210823262

/-! ## A197166.P17863418919974600176

`A197167(eq[4, A219347(n)])`
-/

namespace A197166.P17863418919974600176
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197167 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A197166.P17863418919974600176

/-! ## A197166.P17173338930432255741

`A197167(eq[6, A193592(n)])`
-/

namespace A197166.P17173338930432255741
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197167 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A197166.P17173338930432255741

/-! ## A197166.P13616168235839600958

`A197167(Δ[A023551(n+2)])`
-/

namespace A197166.P13616168235839600958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197167 (f1 (n + 1) - f1 n).toNat

end

end A197166.P13616168235839600958

/-!
# A197167: T(n,k)=Number of nXk 0..4 arrays with each element x equal to the number of its horizontal and vertical neighbors equal to 3,2,1,4,0 for x=0,1,2,3,4.

The programs for A197167, there is no canonical definition to state claims against.
-/

/-! ## A197167.P6983698432960105513

`A196982(n+1)+A007814(A157156(n))`
-/

namespace A197167.P6983698432960105513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196982 (n + 1) + A007814 (A157156 n).toNat

end

end A197167.P6983698432960105513

/-! ## A197167.P17542026512748546187

`A196982(n+1)+A178798(A039756(n))`
-/

namespace A197167.P17542026512748546187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196982 (n + 1) + A178798 (A039756 n).toNat

end

end A197167.P17542026512748546187

/-! ## A197167.P4050198900976830591

`A212619(A046937(n))+A196982(n+1)`
-/

namespace A197167.P4050198900976830591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212619 (A046937 n).toNat + A196982 (n + 1)

end

end A197167.P4050198900976830591

/-! ## A197167.P7666181550293386723

`A196982(n+1)+A082858(A269948(n))`
-/

namespace A197167.P7666181550293386723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196982 (n + 1) + A082858 (A269948 n).toNat

end

end A197167.P7666181550293386723

/-! ## A197167.P2576012503226674150

`A196982(n+1)+A178798(A184883(n))`
-/

namespace A197167.P2576012503226674150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196982 (n + 1) + A178798 (A184883 n).toNat

end

end A197167.P2576012503226674150

/-!
# A197168: Number of 2 X 2 integer matrices with elements from {1,...,n} whose determinant is 2.

The programs for A197168, there is no canonical definition to state claims against.
-/

/-! ## A197168.P15400716336923454375

`A209973(n)-A163300(A267872(n))`
-/

namespace A197168.P15400716336923454375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209973 n - A163300 (A267872 n).toNat

end

end A197168.P15400716336923454375

/-! ## A197168.P1282601082671420942

`2*A209980(n)`
-/

namespace A197168.P1282601082671420942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A209980 n

end

end A197168.P1282601082671420942

/-! ## A197168.P6803365082603427094

`lcm(2, A209980(n)%A210290(n))`
-/

namespace A197168.P6803365082603427094
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (Int.tmod (A209980 n) (A210290 n))

end

end A197168.P6803365082603427094

/-! ## A197168.P3084322838663667266

`A209980(A028310(n))+A209980(n)`
-/

namespace A197168.P3084322838663667266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209980 (A028310 n).toNat + A209980 n

end

end A197168.P3084322838663667266

/-! ## A197168.P16408749700990105234

`A209980(A005843(n)/2)+A209980(n)`
-/

namespace A197168.P16408749700990105234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209980 (SequenceMachineLib.roundAway ((A005843 n : ℚ) / 2)).toNat + A209980 n

end

end A197168.P16408749700990105234

/-! ## A197168.P10238224323600679914

`A212055(n)-A212053(n)`
-/

namespace A197168.P10238224323600679914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212055 n - A212053 n

end

end A197168.P10238224323600679914

/-! ## A197168.P6335497453381158537

`A212054(n)-A212056(n)`
-/

namespace A197168.P6335497453381158537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212054 n - A212056 n

end

end A197168.P6335497453381158537

/-! ## A197168.P198291714320903554

`A005843(A209980(n))`
-/

namespace A197168.P198291714320903554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A209980 n).toNat

end

end A197168.P198291714320903554

/-! ## A197168.P6381448607889684650

`A109043(A209980(A028310(n)))`
-/

namespace A197168.P6381448607889684650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109043 (A209980 (A028310 n).toNat).toNat

end

end A197168.P6381448607889684650

/-!
# A197171: Values k such that singular quadratic unity of Q(k) have gcd(k,y) = 2.

The programs for A197171, there is no canonical definition to state claims against.
-/

/-! ## A197171.P440583321302763179

`A197127(lt[A197169(n+1), 3]+1)`
-/

namespace A197171.P440583321302763179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197169 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197127 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A197171.P440583321302763179

/-! ## A197171.P13339868338896650832

`record[A197127(n+1)/log2(A197169(n+1))]`
-/

namespace A197171.P13339868338896650832
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A197127 (n + 1) : ℝ) / Real.logb 2 (A197169 (n + 1) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A197171.P13339868338896650832

/-! ## A197171.P5081634328135645609

`A197127(record[2*(n+1)/A197169(n+1)])`
-/

namespace A197171.P5081634328135645609
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℚ) / (A197169 (n + 1) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197127 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A197171.P5081634328135645609

/-! ## A197171.P11297203873328556341

`∩[A197127(n+1), A235986(n+1)]`
-/

namespace A197171.P11297203873328556341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197127 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235986 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A197171.P11297203873328556341

/-!
# A197172: Values k such that singular quadratic unity of Q(k) have gcd(k, y) = 3.

The programs for A197172, there is no canonical definition to state claims against.
-/

/-! ## A197172.P8830132479555856154

`A319627(40*A050656(n+1))`
-/

namespace A197172.P8830132479555856154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319627 (40 * A050656 (n + 1)).toNat

end

end A197172.P8830132479555856154

/-! ## A197172.P8331184467608150984

`A319627(lcm(40, A050656(n+1)))`
-/

namespace A197172.P8331184467608150984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319627 (Int.lcm 40 (A050656 (n + 1)))

end

end A197172.P8331184467608150984

/-!
# A197173: Number of n X n 0..4 arrays with each element x equal to the number of its horizontal and vertical neighbors equal to 2,2,1,0,0 for x=0,1,2,3,4.

The programs for A197173, there is no canonical definition to state claims against.
-/

/-! ## A197173.P9799679745362932945

`A197180(∑[4*n]+1)`
-/

namespace A197173.P9799679745362932945
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197180 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A197173.P9799679745362932945

/-! ## A197173.P15710998389468917154

`record[and(A185917(n+1), A197180(n+1))]`
-/

namespace A197173.P15710998389468917154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A185917 (n + 1)) (A197180 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A197173.P15710998389468917154

/-! ## A197173.P12460699221351164701

`record[A185917(2*n+1)²*A197180(2*n+1)]`
-/

namespace A197173.P12460699221351164701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185917 (2 * n + 1) ^ 2 * A197180 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A197173.P12460699221351164701

/-! ## A197173.P129766899780920070

`lcm(A033999(n), A197180(A001844(n)))`
-/

namespace A197173.P129766899780920070
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A197180 (A001844 n).toNat)

end

end A197173.P129766899780920070

/-! ## A197173.P3946568085810447601

`or(A000007(n), A197180(A001844(n)))`
-/

namespace A197173.P3946568085810447601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A197180 (A001844 n).toNat)

end

end A197173.P3946568085810447601

/-!
# A197174: Number of n X 2 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 2,2,1,0,0 for x=0,1,2,3,4.

The programs for A197174, there is no canonical definition to state claims against.
-/

/-! ## A197174.P14027403238292859893

`A197180(∑[n+1]+2)`
-/

namespace A197174.P14027403238292859893
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197180 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A197174.P14027403238292859893

/-! ## A197174.P10349161504418993367

`A197180(A000096(n)+3)%(10^(n+1))`
-/

namespace A197174.P10349161504418993367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A197180 (A000096 n + 3).toNat) (10 ^ (n + 1) : ℤ)

end

end A197174.P10349161504418993367

/-! ## A197174.P9649075027168253782

`record[A197180(A101881(n)+1)]`
-/

namespace A197174.P9649075027168253782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197180 (A101881 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A197174.P9649075027168253782

/-! ## A197174.P11923705728194541102

`record[gcd(A197126(n+1), A197180(n+1))]`
-/

namespace A197174.P11923705728194541102
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A197126 (n + 1)) (A197180 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A197174.P11923705728194541102

/-! ## A197174.P10055926828172638486

`A197180(A000096(n+1))^C(2, C(2, n²))`
-/

namespace A197174.P10055926828172638486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197180 (A000096 (n + 1)).toNat ^ Nat.choose 2 (Nat.choose 2 (n ^ 2))

end

end A197174.P10055926828172638486

/-!
# A197175: Number of nX3 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 2,2,1,0,0 for x=0,1,2,3,4.

The programs for A197175, there is no canonical definition to state claims against.
-/

/-! ## A197175.P2840501287658344960

`A197180(∑[n+2]+4)`
-/

namespace A197175.P2840501287658344960
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197180 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A197175.P2840501287658344960

/-! ## A197175.P112624021298037178

`A197180(A167614(n+1))+A185284(n)`
-/

namespace A197175.P112624021298037178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197180 (A167614 (n + 1)).toNat + A185284 n

end

end A197175.P112624021298037178

/-! ## A197175.P8650609538738795864

`gcd(A000038(n), A197180(A167614(n+1)))`
-/

namespace A197175.P8650609538738795864
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A197180 (A167614 (n + 1)).toNat)

end

end A197175.P8650609538738795864

/-! ## A197175.P5835232457314472921

`lcm(A033999(n), A197180(A167614(n+1)))`
-/

namespace A197175.P5835232457314472921
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A197180 (A167614 (n + 1)).toNat)

end

end A197175.P5835232457314472921

/-! ## A197175.P1040949779584688112

`A197180(A167614(n+1))%A002283(n+1)`
-/

namespace A197175.P1040949779584688112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A197180 (A167614 (n + 1)).toNat) (A002283 (n + 1))

end

end A197175.P1040949779584688112

/-!
# A197176: Number of nX4 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 2,2,1,0,0 for x=0,1,2,3,4.

The programs for A197176, there is no canonical definition to state claims against.
-/

/-! ## A197176.P14092778275236274415

`A197180(A374004(n+1))`
-/

namespace A197176.P14092778275236274415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197180 (A374004 (n + 1)).toNat

end

end A197176.P14092778275236274415

/-! ## A197176.P2195254333783311602

`A197180(A141214(n)+7)`
-/

namespace A197176.P2195254333783311602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197180 (A141214 n + 7).toNat

end

end A197176.P2195254333783311602

/-! ## A197176.P10894455483026728008

`A197180(A052905(n)+9)`
-/

namespace A197176.P10894455483026728008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197180 (A052905 n + 9).toNat

end

end A197176.P10894455483026728008

/-! ## A197176.P9551006906902567790

`A197180(Δ[A008778(n)]+6)`
-/

namespace A197176.P9551006906902567790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197180 (f1 (n + 1) - f1 n + 6).toNat

end

end A197176.P9551006906902567790

/-! ## A197176.P2162317012021819699

`A197180(A167614(n+2)+1)`
-/

namespace A197176.P2162317012021819699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197180 (A167614 (n + 2) + 1).toNat

end

end A197176.P2162317012021819699

/-!
# A197177: Number of nX5 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 2,2,1,0,0 for x=0,1,2,3,4.

The programs for A197177, there is no canonical definition to state claims against.
-/

/-! ## A197177.P9006190193910202775

`A197180(A374005(n+1))`
-/

namespace A197177.P9006190193910202775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197180 (A374005 (n + 1)).toNat

end

end A197177.P9006190193910202775

/-! ## A197177.P17877564788546253502

`A197180(A155212(n)+13)`
-/

namespace A197177.P17877564788546253502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197180 (A155212 n + 13).toNat

end

end A197177.P17877564788546253502

/-! ## A197177.P18415802224345844856

`A197180(Δ[A264443(n)])`
-/

namespace A197177.P18415802224345844856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197180 (f1 (n + 1) - f1 n).toNat

end

end A197177.P18415802224345844856

/-! ## A197177.P5383412528948680606

`A197180(A046691(n+3))`
-/

namespace A197177.P5383412528948680606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197180 (A046691 (n + 3)).toNat

end

end A197177.P5383412528948680606

/-! ## A197177.P10670954442289861274

`A197180(eq[8, A140996(n)])`
-/

namespace A197177.P10670954442289861274
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140996 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197180 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A197177.P10670954442289861274

/-!
# A197178: Number of n X 6 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 2,2,1,0,0 for x=0,1,2,3,4.

The programs for A197178, there is no canonical definition to state claims against.
-/

/-! ## A197178.P8290482451988966945

`A197180(A374007(n+1))`
-/

namespace A197178.P8290482451988966945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197180 (A374007 (n + 1)).toNat

end

end A197178.P8290482451988966945

/-! ## A197178.P6222648316632722726

`A197180(A166136(n+4))`
-/

namespace A197178.P6222648316632722726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197180 (A166136 (n + 4)).toNat

end

end A197178.P6222648316632722726

/-! ## A197178.P14540503190606836535

`A197180(A056115(n)+21)`
-/

namespace A197178.P14540503190606836535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197180 (A056115 n + 21).toNat

end

end A197178.P14540503190606836535

/-! ## A197178.P13654639116715421502

`A197180(eq[7, A131818(n+1)])`
-/

namespace A197178.P13654639116715421502
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197180 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A197178.P13654639116715421502

/-! ## A197178.P14532144412762494538

`A197180(eq[3, A219347(n)])`
-/

namespace A197178.P14532144412762494538
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197180 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A197178.P14532144412762494538

/-!
# A197179: Number of nX7 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 2,2,1,0,0 for x=0,1,2,3,4.

The programs for A197179, there is no canonical definition to state claims against.
-/

/-! ## A197179.P8606963570293056934

`A197180(A374008(n+1))`
-/

namespace A197179.P8606963570293056934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197180 (A374008 (n + 1)).toNat

end

end A197179.P8606963570293056934

/-! ## A197179.P14460242716040480528

`A197180(A000217(n+6)+7)`
-/

namespace A197179.P14460242716040480528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197180 (A000217 (n + 6) + 7).toNat

end

end A197179.P14460242716040480528

/-! ## A197179.P5300402580358377873

`A197180(eq[8, A131818(n+1)])`
-/

namespace A197179.P5300402580358377873
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197180 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A197179.P5300402580358377873

/-! ## A197179.P17486513282747142924

`A197180(A055999(n+4))`
-/

namespace A197179.P17486513282747142924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197180 (A055999 (n + 4)).toNat

end

end A197179.P17486513282747142924

/-! ## A197179.P5971660809032952494

`A197180(eq[4, A219347(n)])`
-/

namespace A197179.P5971660809032952494
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197180 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A197179.P5971660809032952494

/-!
# A197180: T(n,k)=Number of nXk 0..4 arrays with each element x equal to the number of its horizontal and vertical neighbors equal to 2,2,1,0,0 for x=0,1,2,3,4.

The programs for A197180, there is no canonical definition to state claims against.
-/

/-! ## A197180.P10961396376890859855

`A156562(A198155(n+1))-A107846(A038754(n))`
-/

namespace A197180.P10961396376890859855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156562 (A198155 (n + 1)).toNat - A107846 (A038754 n).toNat

end

end A197180.P10961396376890859855

/-! ## A197180.P1208353744221689311

`A156562(A198155(n+1)%A166678(n+1))`
-/

namespace A197180.P1208353744221689311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156562 (Int.tmod (A198155 (n + 1)) (A166678 (n + 1))).toNat

end

end A197180.P1208353744221689311

/-! ## A197180.P6969846496919456927

`A156562(A198155(n+1))%A000096(A282655(n))`
-/

namespace A197180.P6969846496919456927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A156562 (A198155 (n + 1)).toNat) (A000096 (A282655 n).toNat)

end

end A197180.P6969846496919456927

/-!
# A197181: Numbers that are a divisor of the product of the factorials of their digits in decimal representation.

The programs for A197181, the canonical program `A197181.P8476354362970603215` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A197181 has offset 1).

The definition of A197181 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 125 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A197181.P8476354362970603215

`record[gcd(n, ∏{digits}[n, #!])]`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A197181

/-- `record[gcd(n, ∏{digits}[n, #!])]` -/
def P8476354362970603215.Spec : Prop :=
  ∀ n, (P8476354362970603215.a n : ℤ) = A197181 (n + 1)

theorem P8476354362970603215.correct : P8476354362970603215.Spec := by
  intro n
  simp only [A197181, Nat.add_sub_cancel]

end A197181

/-! ## A197181.P8509152700500579118

`eq[lcm(n, ∏{digits}[n, #!]), ∏{digits}[n, #!]]`
-/

namespace A197181.P8509152700500579118
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm n ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => Nat.factorial x).prod

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f4 n)).map fun (x : ℕ) => Nat.factorial x).prod

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f3 j) n

end

end A197181.P8509152700500579118

namespace A197181

/-- `eq[lcm(n, ∏{digits}[n, #!]), ∏{digits}[n, #!]]` -/
def P8509152700500579118.Spec : Prop :=
  ∀ n, (P8509152700500579118.a n : ℤ) = A197181 (n + 1)

end A197181

/-! ## A197181.P7508037846556644067

`record[gcd(n, A066459(n))]`
-/

namespace A197181.P7508037846556644067
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A066459 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A197181.P7508037846556644067

namespace A197181

/-- `record[gcd(n, A066459(n))]` -/
def P7508037846556644067.Spec : Prop :=
  ∀ n, (P7508037846556644067.a n : ℤ) = A197181 (n + 1)

end A197181

/-! ## A197181.P5543084026114560627

`lt[A178334(A072861(n+1)), A061762(n)]`
-/

namespace A197181.P5543084026114560627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 (A072861 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061762 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A197181.P5543084026114560627

namespace A197181

/-- `lt[A178334(A072861(n+1)), A061762(n)]` -/
def P5543084026114560627.Spec : Prop :=
  ∀ n, (P5543084026114560627.a n : ℤ) = A197181 (n + 1)

end A197181

/-!
# A197182: Number of partitions of n^2 into factorial parts.

The programs for A197182, there is no canonical definition to state claims against.
-/

/-! ## A197182.P3910433464393919193

`A117930(floor(n²/2))`
-/

namespace A197182.P3910433464393919193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117930 ⌊(n ^ 2 : ℚ) / 2⌋.toNat

end

end A197182.P3910433464393919193

/-! ## A197182.P8271721999405036486

`A064986(n²)`
-/

namespace A197182.P8271721999405036486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064986 (n ^ 2)

end

end A197182.P8271721999405036486

/-! ## A197182.P16843813567058525267

`or(char[1], A064986(n^2))`
-/

namespace A197182.P16843813567058525267
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A064986 (n ^ 2))

end

end A197182.P16843813567058525267

/-! ## A197182.P7837498478871776855

`xor(3, xor(3, A064986(n*n)))`
-/

namespace A197182.P7837498478871776855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 3 (Int.xor 3 (A064986 (n * n)))

end

end A197182.P7837498478871776855

/-! ## A197182.P4484483729848260127

`and(-1, A064986(A000290(n)))`
-/

namespace A197182.P4484483729848260127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A064986 (A000290 n).toNat)

end

end A197182.P4484483729848260127

/-! ## A197182.P1121552895764162273

`A064986(n^2)^A014963(∑[n+1])`
-/

namespace A197182.P1121552895764162273
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064986 (n ^ 2) : ℚ) ^ (A014963 (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ)

end

end A197182.P1121552895764162273

/-! ## A197182.P6815206597312442519

`A000041(n*char[1])*A064986(n^2)`
-/

namespace A197182.P6815206597312442519
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n * (if ∃ j, f1 j = n then 1 else 0)) * A064986 (n ^ 2)

end

end A197182.P6815206597312442519

/-! ## A197182.P13747717855829190922

`A008284(∑[n+1])*A064986(n*n)`
-/

namespace A197182.P13747717855829190922
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008284 (∑ j ∈ Finset.range (n + 1), f1 j) * A064986 (n * n)

end

end A197182.P13747717855829190922

/-! ## A197182.P5450858194072789046

`A064986(n*n)%A064985(∑[n+1])`
-/

namespace A197182.P5450858194072789046
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A064986 (n * n)) (A064985 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A197182.P5450858194072789046

/-! ## A197182.P625198721106518061

`A000265(n+1)%2*A064986(n*n)`
-/

namespace A197182.P625198721106518061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000265 (n + 1)) 2 * A064986 (n * n)

end

end A197182.P625198721106518061

/-! ## A197182.P12147898658484173596

`gcd(A000038(n), A064986(A000290(n)))`
-/

namespace A197182.P12147898658484173596
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A064986 (A000290 n).toNat)

end

end A197182.P12147898658484173596

/-! ## A197182.P10118451421572662010

`lcm(A020985(n), A064986(A000290(n)))`
-/

namespace A197182.P10118451421572662010
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A064986 (A000290 n).toNat)

end

end A197182.P10118451421572662010

/-! ## A197182.P6987412358765779712

`A064986(n*n)*A115944(A059590(n))`
-/

namespace A197182.P6987412358765779712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064986 (n * n) * A115944 (A059590 n).toNat

end

end A197182.P6987412358765779712

/-! ## A197182.P11746322368461610302

`A064986(n*n)*A319101(A059268(n))`
-/

namespace A197182.P11746322368461610302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064986 (n * n) * A319101 (A059268 n).toNat

end

end A197182.P11746322368461610302

/-! ## A197182.P12836571373196139340

`lcm(A008683(A005117(n+1)), A064986(n^2))`
-/

namespace A197182.P12836571373196139340
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A008683 (A005117 (n + 1)).toNat) (A064986 (n ^ 2))

end

end A197182.P12836571373196139340

/-! ## A197182.P7017821791549375209

`A001222(sqrt(A001248(n+1)))*A064986(n^2)`
-/

namespace A197182.P7017821791549375209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway (Real.sqrt (A001248 (n + 1) : ℝ))).toNat * A064986 (n ^ 2)

end

end A197182.P7017821791549375209

/-! ## A197182.P17330343046839897934

`A064986(A000290(n))+A004514(A004514(n))`
-/

namespace A197182.P17330343046839897934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064986 (A000290 n).toNat + A004514 (A004514 n).toNat

end

end A197182.P17330343046839897934

/-! ## A197182.P14169224145539258852

`A132896(A000217(n))+A064986(A000290(n))`
-/

namespace A197182.P14169224145539258852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132896 (A000217 n).toNat + A064986 (A000290 n).toNat

end

end A197182.P14169224145539258852

/-!
# A197183: Number of partitions of n^2 into distinct factorials.

The programs for A197183, there is no canonical definition to state claims against.
-/

/-! ## A197183.P18399341761226548447

`A109381(n)!%2`
-/

namespace A197183.P18399341761226548447
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A109381 n).toNat % 2

end

end A197183.P18399341761226548447

/-!
# A197185: The Riemann primes of the psi type and index 1.

The programs for A197185, there is no canonical definition to state claims against.
-/

/-! ## A197185.P5686747445756604744

`p?[A098103(n+1)+A000164(n)]`
-/

namespace A197185.P5686747445756604744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098103 (n + 1) + A000164 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A197185.P5686747445756604744

/-!
# A197186: The Riemann primes of the psi type and index 2.

The programs for A197186, there is no canonical definition to state claims against.
-/

/-! ## A197186.P1683676593849059848

`A091734(A060274(n+1)+n)`
-/

namespace A197186.P1683676593849059848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091734 (A060274 (n + 1) + (n : ℤ)).toNat

end

end A197186.P1683676593849059848

/-!
# A197187: The Riemann primes of the psi type and index 3.

The programs for A197187, there is no canonical definition to state claims against.
-/

/-! ## A197187.P18246675574917544849

`∩[A177000(n+1), A368728(n+1)]`
-/

namespace A197187.P18246675574917544849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177000 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368728 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A197187.P18246675574917544849

/-! ## A197187.P18365803760364319927

`A000040(lt[A000700(n), A066086(2*n+1)])`
-/

namespace A197187.P18365803760364319927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000700 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066086 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A197187.P18365803760364319927

/-! ## A197187.P16698137379119926362

`p?[∑[A271837(n+1)]]`
-/

namespace A197187.P16698137379119926362
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271837 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A197187.P16698137379119926362

/-! ## A197187.P17163843468335486918

`p?[∑[A271837(n)]-1]`
-/

namespace A197187.P17163843468335486918
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271837 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A197187.P17163843468335486918

/-! ## A197187.P6032567751765122886

`eq[A016376(n), A036997(n+1)]`
-/

namespace A197187.P6032567751765122886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016376 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036997 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A197187.P6032567751765122886

/-!
# A197188: The Riemann primes of the psi type and index 4.

The programs for A197188, there is no canonical definition to state claims against.
-/

/-! ## A197188.P13469570235644912556

`A319084(n+1)+A000010(A158979(n+3))`
-/

namespace A197188.P13469570235644912556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319084 (n + 1) + A000010 (A158979 (n + 3)).toNat

end

end A197188.P13469570235644912556

/-! ## A197188.P13178350963318612464

`A141409(A241471(n+1)+A194986(3*n+2))`
-/

namespace A197188.P13178350963318612464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141409 (A241471 (n + 1) + A194986 (3 * n + 2)).toNat

end

end A197188.P13178350963318612464

/-! ## A197188.P14123205538556518836

`A222566(lt[A362612(n+4), A198472(2*(n+1))])`
-/

namespace A197188.P14123205538556518836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362612 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198472 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222566 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A197188.P14123205538556518836

/-! ## A197188.P10361214760982987401

`∩[A004051(n+1), A161750(n+1)]`
-/

namespace A197188.P10361214760982987401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004051 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161750 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A197188.P10361214760982987401

/-! ## A197188.P5367470389193836405

`∩[A144755(n+1), A161750(n+1)]`
-/

namespace A197188.P5367470389193836405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144755 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161750 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A197188.P5367470389193836405

/-!
# A197189: a(n) = 3*a(n-1) + 5*a(n-2), with a(0)=1, a(1)=2.

The programs for A197189, the canonical program `A197189.P14980981763412799243` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A197189 has offset 0).

The definition of A197189 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*a(n-1)+5*a(n-2)` (program `A197189.P14980981763412799243`, by `A197189.P14980981763412799243.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A197189.P14980981763412799243

`3*a(n-1)+5*a(n-2)` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A197189

/-- `3*a(n-1)+5*a(n-2)` -/
def P14980981763412799243.Spec : Prop :=
  ∀ n, (P14980981763412799243.a n : ℤ) = A197189 n

theorem P14980981763412799243.correct : P14980981763412799243.Spec := by
  intro n
  simp only [A197189]

end A197189

/-! ## A197189.P6810167997164780052

`A015523(n+1)-A015523(n)`
-/

namespace A197189.P6810167997164780052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015523 (n + 1) - A015523 n

end

end A197189.P6810167997164780052

namespace A197189

/-- `A015523(n+1)-A015523(n)` -/
def P6810167997164780052.Spec : Prop :=
  ∀ n, P6810167997164780052.a n = A197189 n

end A197189

/-! ## A197189.P63874462790026529

`((29+sqrt(29))*(3+sqrt(29))^n+(29-sqrt(29))*(3-sqrt(29))^n)/(58*2^n)`
-/

namespace A197189.P63874462790026529
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((29 + Real.sqrt (29 : ℝ)) * (3 + Real.sqrt (29 : ℝ)) ^ n + (29 - Real.sqrt (29 : ℝ)) * (3 - Real.sqrt (29 : ℝ)) ^ n) / (58 * 2 ^ n : ℝ)

end

end A197189.P63874462790026529

namespace A197189

/-- `((29+sqrt(29))*(3+sqrt(29))^n+(29-sqrt(29))*(3-sqrt(29))^n)/(58*2^n)` -/
def P63874462790026529.Spec : Prop :=
  ∀ n, P63874462790026529.a n = (A197189 n : ℝ)

end A197189

/-! ## A197189.P4261980259736792464

`ogf((-1+x)/(-1+3x+5x^2))`
-/

namespace A197189.P4261980259736792464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1] [1, -3, -5] n

end

end A197189.P4261980259736792464

namespace A197189

/-- `ogf((-1+x)/(-1+3x+5x^2))` -/
def P4261980259736792464.Spec : Prop :=
  ∀ n, P4261980259736792464.a n = A197189 n

end A197189

/-! ## A197189.P3428287585888251837

`lcm(3, a(n-1))+lcm(5, a(n-2))` with `a(0)=1, a(1)=2`
-/

namespace A197189.P3428287585888251837
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  Nat.lcm 3 (a (n - 1)) + Nat.lcm 5 (a (n - 2))

end

end A197189.P3428287585888251837

namespace A197189

/-- `lcm(3, a(n-1))+lcm(5, a(n-2))` -/
def P3428287585888251837.Spec : Prop :=
  ∀ n, (P3428287585888251837.a n : ℤ) = A197189 n

end A197189

/-! ## A197189.P6127393235380757003

`4*a(n-1)-(a(n-1)-5*a(n-2))` with `a(0)=1, a(1)=2`
-/

namespace A197189.P6127393235380757003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  4 * a (n - 1) - (a (n - 1) - 5 * a (n - 2))

end

end A197189.P6127393235380757003

namespace A197189

/-- `4*a(n-1)-(a(n-1)-5*a(n-2))` -/
def P6127393235380757003.Spec : Prop :=
  ∀ n, P6127393235380757003.a n = A197189 n

end A197189

/-! ## A197189.P12643823560060034507

`A072264(n)+A015523(n)`
-/

namespace A197189.P12643823560060034507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072264 n + A015523 n

end

end A197189.P12643823560060034507

namespace A197189

/-- `A072264(n)+A015523(n)` -/
def P12643823560060034507.Spec : Prop :=
  ∀ n, P12643823560060034507.a n = A197189 n

end A197189

/-! ## A197189.P10807986862575603668

`Δ[A015523(n)]`
-/

namespace A197189.P10807986862575603668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015523 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A197189.P10807986862575603668

namespace A197189

/-- `Δ[A015523(n)]` -/
def P10807986862575603668.Spec : Prop :=
  ∀ n, P10807986862575603668.a n = A197189 n

end A197189

/-! ## A197189.P8268795870632385750

`A072263(n)-A072264(n)`
-/

namespace A197189.P8268795870632385750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072263 n - A072264 n

end

end A197189.P8268795870632385750

namespace A197189

/-- `A072263(n)-A072264(n)` -/
def P8268795870632385750.Spec : Prop :=
  ∀ n, P8268795870632385750.a n = A197189 n

end A197189

/-! ## A197189.P16268533758945065405

`A189739(n+1)-A072263(n)`
-/

namespace A197189.P16268533758945065405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189739 (n + 1) - A072263 n

end

end A197189.P16268533758945065405

namespace A197189

/-- `A189739(n+1)-A072263(n)` -/
def P16268533758945065405.Spec : Prop :=
  ∀ n, P16268533758945065405.a n = A197189 n

end A197189

/-! ## A197189.P2411305688582765555

`A179606(n)-2*A015523(n)`
-/

namespace A197189.P2411305688582765555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179606 n - 2 * A015523 n

end

end A197189.P2411305688582765555

namespace A197189

/-- `A179606(n)-2*A015523(n)` -/
def P2411305688582765555.Spec : Prop :=
  ∀ n, P2411305688582765555.a n = A197189 n

end A197189

/-! ## A197189.P9131338136077782512

`A072264(n)+A152187(n)-A179606(n)`
-/

namespace A197189.P9131338136077782512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072264 n + (A152187 n - A179606 n)

end

end A197189.P9131338136077782512

namespace A197189

/-- `A072264(n)+A152187(n)-A179606(n)` -/
def P9131338136077782512.Spec : Prop :=
  ∀ n, P9131338136077782512.a n = A197189 n

end A197189

/-! ## A197189.P7703000097303477232

`A152187(n)+A152187(n)-A072264(n+1)`
-/

namespace A197189.P7703000097303477232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152187 n + (A152187 n - A072264 (n + 1))

end

end A197189.P7703000097303477232

namespace A197189

/-- `A152187(n)+A152187(n)-A072264(n+1)` -/
def P7703000097303477232.Spec : Prop :=
  ∀ n, P7703000097303477232.a n = A197189 n

end A197189

/-! ## A197189.P4773417519931827632

`A152187(n+1)-A180140(n+1)`
-/

namespace A197189.P4773417519931827632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152187 (n + 1) - A180140 (n + 1)

end

end A197189.P4773417519931827632

namespace A197189

/-- `A152187(n+1)-A180140(n+1)` -/
def P4773417519931827632.Spec : Prop :=
  ∀ n, P4773417519931827632.a n = A197189 n

end A197189

/-! ## A197189.P12157929151040323107

`A180140(n+1)+A072264(n)-A179606(n+1)`
-/

namespace A197189.P12157929151040323107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180140 (n + 1) + (A072264 n - A179606 (n + 1))

end

end A197189.P12157929151040323107

namespace A197189

/-- `A180140(n+1)+A072264(n)-A179606(n+1)` -/
def P12157929151040323107.Spec : Prop :=
  ∀ n, P12157929151040323107.a n = A197189 n

end A197189

/-!
# A197190: a(0) = 2, a(n) = Lucas(phi(n^2)) for n > 0.

The programs for A197190, there is no canonical definition to state claims against.
-/

/-! ## A197190.P14563988363817736448

`A197219(n²)`
-/

namespace A197190.P14563988363817736448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197219 (n ^ 2)

end

end A197190.P14563988363817736448

/-! ## A197190.P10142376789159756596

`and(-1, A197219(A000290(n)))`
-/

namespace A197190.P10142376789159756596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A197219 (A000290 n).toNat)

end

end A197190.P10142376789159756596

/-! ## A197190.P18385116777391475512

`A000032(n*A000010(floor(sqrt(n²+4))))`
-/

namespace A197190.P18385116777391475512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 ((n : ℤ) * A000010 (Nat.sqrt (n ^ 2 + 4))).toNat

end

end A197190.P18385116777391475512

/-! ## A197190.P8501852058187025082

`A000032(A000010(C(2, a(n-1))+n²))` with `a(0)=2`
-/

namespace A197190.P8501852058187025082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A000032 (A000010 (Nat.choose 2 (a (n - 1)).toNat + n ^ 2)).toNat

end

end A197190.P8501852058187025082

/-! ## A197190.P13414702779287139117

`A000032(A000010(gcd(n, n*a(n-1))²))` with `a(0)=2`
-/

namespace A197190.P13414702779287139117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A000032 (A000010 (Int.gcd (n : ℤ) ((n : ℤ) * a (n - 1)) ^ 2)).toNat

end

end A197190.P13414702779287139117

/-!
# A197191: a(n) = phi(Lucas(n^2)).

The programs for A197191, there is no canonical definition to state claims against.
-/

/-! ## A197191.P7137192368323068754

`A197218(n²)`
-/

namespace A197191.P7137192368323068754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197218 (n ^ 2)

end

end A197191.P7137192368323068754

/-! ## A197191.P15278005838942860798

`A197218(A000290(n))+A011745(n)`
-/

namespace A197191.P15278005838942860798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197218 (A000290 n).toNat + A011745 n

end

end A197191.P15278005838942860798

/-! ## A197191.P10042321717420982364

`A197218(A000290(n))+A178798(n)`
-/

namespace A197191.P10042321717420982364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197218 (A000290 n).toNat + A178798 n

end

end A197191.P10042321717420982364

/-! ## A197191.P10649008776080944275

`lcm(A060384(n), A197218(A000290(n)))`
-/

namespace A197191.P10649008776080944275
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A060384 n) (A197218 (A000290 n).toNat)

end

end A197191.P10649008776080944275

/-! ## A197191.P5675425043455454370

`A197218(A000290(n))+A000045(C(n, n+1))`
-/

namespace A197191.P5675425043455454370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197218 (A000290 n).toNat + A000045 (Nat.choose n (n + 1))

end

end A197191.P5675425043455454370

/-!
# A197192: a(n) = binomial(n+9, 9)*7^n.

The programs for A197192, the canonical program `A197192.P13649955293690205560` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A197192 has offset 0).

The definition of A197192 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(n+9, 9)*7^n` (program `A197192.P13649955293690205560`, by `A197192.P13649955293690205560.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A197192.P13649955293690205560

`C(n+9, 9)*7^n`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A197192

/-- `C(n+9, 9)*7^n` -/
def P13649955293690205560.Spec : Prop :=
  ∀ n, (P13649955293690205560.a n : ℤ) = A197192 n

theorem P13649955293690205560.correct : P13649955293690205560.Spec := by
  intro n
  simp only [A197192]

end A197192

/-! ## A197192.P15695858642751451954

`7*(n+9)/n*a(n-1)` with `a(0)=1`
-/

namespace A197192.P15695858642751451954
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (7 * (n + 9) : ℚ) / (n : ℚ) * a (n - 1)

end

end A197192.P15695858642751451954

namespace A197192

/-- `7*(n+9)/n*a(n-1)` -/
def P15695858642751451954.Spec : Prop :=
  ∀ n, P15695858642751451954.a n = (A197192 n : ℚ)

end A197192

/-! ## A197192.P12313949023679650213

`7^n*A000582(n+9)`
-/

namespace A197192.P12313949023679650213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (7 ^ n : ℤ) * A000582 (n + 9)

end

end A197192.P12313949023679650213

namespace A197192

/-- `7^n*A000582(n+9)` -/
def P12313949023679650213.Spec : Prop :=
  ∀ n, P12313949023679650213.a n = A197192 n

end A197192

/-! ## A197192.P11530887956305428264

`A027466(eq[9, A002262(n)])`
-/

namespace A197192.P11530887956305428264
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027466 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A197192.P11530887956305428264

namespace A197192

/-- `A027466(eq[9, A002262(n)])` -/
def P11530887956305428264.Spec : Prop :=
  ∀ n, P11530887956305428264.a n = A197192 n

end A197192

/-! ## A197192.P7413617688986644019

`A027466(eq[10, A002260(n+1)])`
-/

namespace A197192.P7413617688986644019
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027466 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A197192.P7413617688986644019

namespace A197192

/-- `A027466(eq[10, A002260(n+1)])` -/
def P7413617688986644019.Spec : Prop :=
  ∀ n, P7413617688986644019.a n = A197192 n

end A197192

/-! ## A197192.P11627701084357470127

`A027466(eq[29, A037126(n+1)])`
-/

namespace A197192.P11627701084357470127
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  29

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037126 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027466 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A197192.P11627701084357470127

namespace A197192

/-- `A027466(eq[29, A037126(n+1)])` -/
def P11627701084357470127.Spec : Prop :=
  ∀ n, P11627701084357470127.a n = A197192 n

end A197192

/-! ## A197192.P567214877678091479

`∑[A000581(n+8)]*A000420(n)`
-/

namespace A197192.P567214877678091479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000581 (n + 8)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A000420 n

end

end A197192.P567214877678091479

namespace A197192

/-- `∑[A000581(n+8)]*A000420(n)` -/
def P567214877678091479.Spec : Prop :=
  ∀ n, P567214877678091479.a n = A197192 n

end A197192

/-! ## A197192.P8190039109927745976

`∑[∑[A000580(n+7)]]*A000420(n)`
-/

namespace A197192.P8190039109927745976
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000580 (n + 7)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A000420 n

end

end A197192.P8190039109927745976

namespace A197192

/-- `∑[∑[A000580(n+7)]]*A000420(n)` -/
def P8190039109927745976.Spec : Prop :=
  ∀ n, P8190039109927745976.a n = A197192 n

end A197192

/-! ## A197192.P4271243064379252484

`A134059(eq[10, A002260(n+1)])/3*7^n`
-/

namespace A197192.P4271243064379252484
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A134059 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) : ℚ) / 3 * (7 ^ n : ℚ)

end

end A197192.P4271243064379252484

namespace A197192

/-- `A134059(eq[10, A002260(n+1)])/3*7^n` -/
def P4271243064379252484.Spec : Prop :=
  ∀ n, P4271243064379252484.a n = (A197192 n : ℚ)

end A197192

/-! ## A197192.P2105034858308383291

`A007318(A056000(n+6))*Δ[A023000(n)]`
-/

namespace A197192.P2105034858308383291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023000 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A056000 (n + 6)).toNat * (f1 (n + 1) - f1 n)

end

end A197192.P2105034858308383291

namespace A197192

/-- `A007318(A056000(n+6))*Δ[A023000(n)]` -/
def P2105034858308383291.Spec : Prop :=
  ∀ n, P2105034858308383291.a n = A197192 n

end A197192

/-! ## A197192.P13261120783645630166

`(A120741(n)+A034494(n))*∑[A000581(n+8)]`
-/

namespace A197192.P13261120783645630166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000581 (n + 8)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A120741 n + A034494 n) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A197192.P13261120783645630166

namespace A197192

/-- `(A120741(n)+A034494(n))*∑[A000581(n+8)]` -/
def P13261120783645630166.Spec : Prop :=
  ∀ n, P13261120783645630166.a n = A197192 n

end A197192

/-! ## A197192.P11341818761321171801

`A013614(eq[9, A025581(n)])`
-/

namespace A197192.P11341818761321171801
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013614 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A197192.P11341818761321171801

namespace A197192

/-- `A013614(eq[9, A025581(n)])` -/
def P11341818761321171801.Spec : Prop :=
  ∀ n, P11341818761321171801.a n = A197192 n

end A197192

/-!
# A197193: a(n) = binomial(n+10, 10)*7^n.

The programs for A197193, the canonical program `A197193.P11407157067536009092` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A197193 has offset 0).

The definition of A197193 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(n+10, 10)*7^n` (program `A197193.P11407157067536009092`, by `A197193.P11407157067536009092.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A197193.P11407157067536009092

`C(n+10, 10)*7^n`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A197193

/-- `C(n+10, 10)*7^n` -/
def P11407157067536009092.Spec : Prop :=
  ∀ n, (P11407157067536009092.a n : ℤ) = A197193 n

theorem P11407157067536009092.correct : P11407157067536009092.Spec := by
  intro n
  simp only [A197193]

end A197193

/-! ## A197193.P9274031137738815043

`7^n*A001287(n)`
-/

namespace A197193.P9274031137738815043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (7 ^ n : ℤ) * A001287 (n + 10)

end

end A197193.P9274031137738815043

namespace A197193

/-- `7^n*A001287(n)` -/
def P9274031137738815043.Spec : Prop :=
  ∀ n, P9274031137738815043.a n = A197193 n

end A197193

/-! ## A197193.P4623696324439150969

`7^n*∑[A000582(n+9)]`
-/

namespace A197193.P4623696324439150969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000582 (n + 9)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (7 ^ n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A197193.P4623696324439150969

namespace A197193

/-- `7^n*∑[A000582(n+9)]` -/
def P4623696324439150969.Spec : Prop :=
  ∀ n, P4623696324439150969.a n = A197193 n

end A197193

/-! ## A197193.P8792534775939265629

`A027466(eq[10, A002262(n)])`
-/

namespace A197193.P8792534775939265629
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027466 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A197193.P8792534775939265629

namespace A197193

/-- `A027466(eq[10, A002262(n)])` -/
def P8792534775939265629.Spec : Prop :=
  ∀ n, P8792534775939265629.a n = A197193 n

end A197193

/-! ## A197193.P13770247976862162289

`A027466(eq[11, A002260(n+1)])`
-/

namespace A197193.P13770247976862162289
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027466 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A197193.P13770247976862162289

namespace A197193

/-- `A027466(eq[11, A002260(n+1)])` -/
def P13770247976862162289.Spec : Prop :=
  ∀ n, P13770247976862162289.a n = A197193 n

end A197193

/-! ## A197193.P11670512357948833429

`∑[∑[A000581(n+8)]]*A000420(n)`
-/

namespace A197193.P11670512357948833429
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000581 (n + 8)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A000420 n

end

end A197193.P11670512357948833429

namespace A197193

/-- `∑[∑[A000581(n+8)]]*A000420(n)` -/
def P11670512357948833429.Spec : Prop :=
  ∀ n, P11670512357948833429.a n = A197193 n

end A197193

/-! ## A197193.P2442994730860909220

`7^n*A007318(A052905(n+8)-6)`
-/

namespace A197193.P2442994730860909220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (7 ^ n : ℤ) * A007318 (A052905 (n + 8) - 6).toNat

end

end A197193.P2442994730860909220

namespace A197193

/-- `7^n*A007318(A052905(n+8)-6)` -/
def P2442994730860909220.Spec : Prop :=
  ∀ n, P2442994730860909220.a n = A197193 n

end A197193

/-! ## A197193.P13270402691852036648

`A013614(eq[10, A025581(n)])`
-/

namespace A197193.P13270402691852036648
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013614 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A197193.P13270402691852036648

namespace A197193

/-- `A013614(eq[10, A025581(n)])` -/
def P13270402691852036648.Spec : Prop :=
  ∀ n, P13270402691852036648.a n = A197193 n

end A197193

/-! ## A197193.P15272773485247311495

`A001287(n)*A013625(A000096(n))`
-/

namespace A197193.P15272773485247311495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001287 (n + 10) * A013625 (A000096 n).toNat

end

end A197193.P15272773485247311495

namespace A197193

/-- `A001287(n)*A013625(A000096(n))` -/
def P15272773485247311495.Spec : Prop :=
  ∀ n, P15272773485247311495.a n = A197193 n

end A197193

/-!
# A197194: a(n) = binomial(n+9, 9)*9^n.

The programs for A197194, the canonical program `A197194.P8733357514154621302` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A197194 has offset 0).

The definition of A197194 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(n+9, 9)*9^n` (program `A197194.P8733357514154621302`, by `A197194.P8733357514154621302.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A197194.P8733357514154621302

`C(n+9, 9)*9^n`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A197194

/-- `C(n+9, 9)*9^n` -/
def P8733357514154621302.Spec : Prop :=
  ∀ n, (P8733357514154621302.a n : ℤ) = A197194 n

theorem P8733357514154621302.correct : P8733357514154621302.Spec := by
  intro n
  simp only [A197194]

end A197194

/-! ## A197194.P9753636607058846988

`3*(27/n+3)*a(n-1)` with `a(0)=1`
-/

namespace A197194.P9753636607058846988
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  3 * ((27 / (n : ℚ) + 3) * a (n - 1))

end

end A197194.P9753636607058846988

namespace A197194

/-- `3*(27/n+3)*a(n-1)` -/
def P9753636607058846988.Spec : Prop :=
  ∀ n, P9753636607058846988.a n = (A197194 n : ℚ)

end A197194

/-! ## A197194.P3283892427903656944

`(n+1)*A053112(n)`
-/

namespace A197194.P3283892427903656944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A053112 n

end

end A197194.P3283892427903656944

namespace A197194

/-- `(n+1)*A053112(n)` -/
def P3283892427903656944.Spec : Prop :=
  ∀ n, P3283892427903656944.a n = A197194 n

end A197194

/-! ## A197194.P16156877818201650916

`9^n*A000582(n+9)`
-/

namespace A197194.P16156877818201650916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (9 ^ n : ℤ) * A000582 (n + 9)

end

end A197194.P16156877818201650916

namespace A197194

/-- `9^n*A000582(n+9)` -/
def P16156877818201650916.Spec : Prop :=
  ∀ n, P16156877818201650916.a n = A197194 n

end A197194

/-! ## A197194.P14834524980667941265

`A000244(n)*A036223(n)`
-/

namespace A197194.P14834524980667941265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 n * A036223 n

end

end A197194.P14834524980667941265

namespace A197194

/-- `A000244(n)*A036223(n)` -/
def P14834524980667941265.Spec : Prop :=
  ∀ n, P14834524980667941265.a n = A197194 n

end A197194

/-! ## A197194.P2889054953196095032

`A027465(∑[n])*A036223(n)`
-/

namespace A197194.P2889054953196095032
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027465 (∑ j ∈ Finset.range (n + 1), f1 j) * A036223 n

end

end A197194.P2889054953196095032

namespace A197194

/-- `A027465(∑[n])*A036223(n)` -/
def P2889054953196095032.Spec : Prop :=
  ∀ n, P2889054953196095032.a n = A197194 n

end A197194

/-! ## A197194.P11798566935897565465

`A036223(n)*A164942(∑[n])`
-/

namespace A197194.P11798566935897565465
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036223 n * A164942 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A197194.P11798566935897565465

namespace A197194

/-- `A036223(n)*A164942(∑[n])` -/
def P11798566935897565465.Spec : Prop :=
  ∀ n, P11798566935897565465.a n = A197194 n

end A197194

/-! ## A197194.P2979533878196535203

`Δ[A003462(n)]*A036223(n)`
-/

namespace A197194.P2979533878196535203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003462 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A036223 n

end

end A197194.P2979533878196535203

namespace A197194

/-- `Δ[A003462(n)]*A036223(n)` -/
def P2979533878196535203.Spec : Prop :=
  ∀ n, P2979533878196535203.a n = A197194 n

end A197194

/-!
# A197195: Number of n X n 0..4 arrays with each element x equal to the number of its horizontal and vertical neighbors equal to 4,1,3,2,0 for x=0,1,2,3,4.

The programs for A197195, there is no canonical definition to state claims against.
-/

/-! ## A197195.P16338274553000201503

`A197199(∑[4*n]+1)`
-/

namespace A197195.P16338274553000201503
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197199 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A197195.P16338274553000201503

/-! ## A197195.P3779286723592099667

`record[A197199(A152271(n²))]`
-/

namespace A197195.P3779286723592099667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197199 (A152271 (n ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A197195.P3779286723592099667

/-! ## A197195.P870746210278491814

`∑{digits}[n, A197199(A001844(#))]`
-/

namespace A197195.P870746210278491814
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A197199 (A001844 x).toNat).sum

end

end A197195.P870746210278491814

/-! ## A197195.P9967351723246414328

`record[A197199(Δ[A235355(n)])]`
-/

namespace A197195.P9967351723246414328
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197199 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A197195.P9967351723246414328

/-! ## A197195.P11976921966108207668

`record[A197199(A330613(n+1))]`
-/

namespace A197195.P11976921966108207668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197199 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A197195.P11976921966108207668

/-!
# A197196: Number of nX5 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 4,1,3,2,0 for x=0,1,2,3,4.

The programs for A197196, there is no canonical definition to state claims against.
-/

/-! ## A197196.P7656783662116929674

`A197199(A374005(n+1))`
-/

namespace A197196.P7656783662116929674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197199 (A374005 (n + 1)).toNat

end

end A197196.P7656783662116929674

/-! ## A197196.P10774062099083282912

`A197199(A167499(n+3))`
-/

namespace A197196.P10774062099083282912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197199 (A167499 (n + 3)).toNat

end

end A197196.P10774062099083282912

/-! ## A197196.P5618470034851707169

`A197199(A056000(n)+15)`
-/

namespace A197196.P5618470034851707169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197199 (A056000 n + 15).toNat

end

end A197196.P5618470034851707169

/-! ## A197196.P14099320421045710470

`A197199(A000124(n+4)+4)`
-/

namespace A197196.P14099320421045710470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197199 (A000124 (n + 4) + 4).toNat

end

end A197196.P14099320421045710470

/-! ## A197196.P13471727033144225129

`A197199(A000217(n+4)+5)`
-/

namespace A197196.P13471727033144225129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197199 (A000217 (n + 4) + 5).toNat

end

end A197196.P13471727033144225129

/-!
# A197197: Number of nX6 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 4,1,3,2,0 for x=0,1,2,3,4.

The programs for A197197, there is no canonical definition to state claims against.
-/

/-! ## A197197.P628416310251003899

`A197199(A374007(n+1))`
-/

namespace A197197.P628416310251003899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197199 (A374007 (n + 1)).toNat

end

end A197197.P628416310251003899

/-! ## A197197.P17498012099623392573

`A197199(A167499(n+4)+1)`
-/

namespace A197197.P17498012099623392573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197199 (A167499 (n + 4) + 1).toNat

end

end A197197.P17498012099623392573

/-! ## A197197.P2354723370091162938

`A197199(A167614(n+4)+3)`
-/

namespace A197197.P2354723370091162938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197199 (A167614 (n + 4) + 3).toNat

end

end A197197.P2354723370091162938

/-! ## A197197.P2500870167830532716

`A197199(A000217(n+5)+6)`
-/

namespace A197197.P2500870167830532716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197199 (A000217 (n + 5) + 6).toNat

end

end A197197.P2500870167830532716

/-! ## A197197.P8310938668512315994

`A197199(A141214(n+2)+9)`
-/

namespace A197197.P8310938668512315994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197199 (A141214 (n + 2) + 9).toNat

end

end A197197.P8310938668512315994

/-!
# A197198: Number of nX7 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 4,1,3,2,0 for x=0,1,2,3,4.

The programs for A197198, there is no canonical definition to state claims against.
-/

/-! ## A197198.P1764678172676846818

`A197199(A374008(n+1))`
-/

namespace A197198.P1764678172676846818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197199 (A374008 (n + 1)).toNat

end

end A197198.P1764678172676846818

/-! ## A197198.P11612568930131639755

`A197199(A056119(n)+28)`
-/

namespace A197198.P11612568930131639755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197199 (A056119 n + 28).toNat

end

end A197198.P11612568930131639755

/-! ## A197198.P17557941626068321257

`A197199(eq[11, A066657(n)])`
-/

namespace A197198.P17557941626068321257
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197199 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A197198.P17557941626068321257

/-! ## A197198.P4333492953407035573

`A197199(A000124(n+6)+6)`
-/

namespace A197198.P4333492953407035573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197199 (A000124 (n + 6) + 6).toNat

end

end A197198.P4333492953407035573

/-! ## A197198.P9836730679492293932

`A197199(eq[8, A131818(n+1)])`
-/

namespace A197198.P9836730679492293932
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197199 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A197198.P9836730679492293932

