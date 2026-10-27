import SequenceMachineLib
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
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C037
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C006
import Seq.B001.C010
import Seq.B001.C011
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
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
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
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

/-!
# A052000: Fibonacci(k) starting with digits of its index number k.

The programs for A052000, there is no canonical definition to state claims against.
-/

/-! ## A052000.P578442222949343837

`A000045(A038546(n+1))`
-/

namespace A052000.P578442222949343837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A038546 (n + 1)).toNat

end

end A052000.P578442222949343837

/-!
# A052001: Even partition numbers.

The programs for A052001, there is no canonical definition to state claims against.
-/

/-! ## A052001.P2278149409486438368

`2*A213179(n+1)`
-/

namespace A052001.P2278149409486438368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A213179 (n + 1)

end

end A052001.P2278149409486438368

/-! ## A052001.P8616960154012670748

`A000041(A001560(n+1))`
-/

namespace A052001.P8616960154012670748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A001560 (n + 1)).toNat

end

end A052001.P8616960154012670748

/-! ## A052001.P16766596514808220818

`A000041(eq[0, A040051(n)])`
-/

namespace A052001.P16766596514808220818
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040051 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A052001.P16766596514808220818

/-! ## A052001.P12415836112206436299

`A000041(lt[0, A278478(n)])`
-/

namespace A052001.P12415836112206436299
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278478 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A052001.P12415836112206436299

/-! ## A052001.P5068418274029493361

`A000041(eq[0, A000041(n)%2])`
-/

namespace A052001.P5068418274029493361
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000041 n) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A052001.P5068418274029493361

/-! ## A052001.P10183395613733510763

`A000041(lt[1, gcd(2, A000041(n))])`
-/

namespace A052001.P10183395613733510763
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A000041 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A052001.P10183395613733510763

/-! ## A052001.P16863312940827077252

`A000041(eq[0, and(1, A000041(n))])`
-/

namespace A052001.P16863312940827077252
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A000041 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A052001.P16863312940827077252

/-! ## A052001.P1949867835190559450

`A000041(lt[and(1, A000041(n)), 1])`
-/

namespace A052001.P1949867835190559450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A000041 n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A052001.P1949867835190559450

/-! ## A052001.P14178855704830580980

`∪[A154796(n+1), A154798(n+1)]`
-/

namespace A052001.P14178855704830580980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154796 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154798 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A052001.P14178855704830580980

/-! ## A052001.P17694680113063057652

`∪[A225324(n+1), A275029(n+1)]`
-/

namespace A052001.P17694680113063057652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225324 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275029 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A052001.P17694680113063057652

/-!
# A052002: Numbers with an odd number of partitions.

The programs for A052002, there is no canonical definition to state claims against.
-/

/-! ## A052002.P18441889581898033881

`∪[A067567(n+1), A163097(n+1)]`
-/

namespace A052002.P18441889581898033881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067567 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163097 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A052002.P18441889581898033881

/-! ## A052002.P15187947500565843043

`∪[A280289(n+1), A280291(n+1)]`
-/

namespace A052002.P15187947500565843043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280289 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280291 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A052002.P15187947500565843043

/-! ## A052002.P18288999084749483679

`comp[A001560(n+1)]`
-/

namespace A052002.P18288999084749483679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001560 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A052002.P18288999084749483679

/-! ## A052002.P18301212543253727951

`eq[0, A278478(n)]`
-/

namespace A052002.P18301212543253727951
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278478 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A052002.P18301212543253727951

/-! ## A052002.P11577759899061954681

`eq[0, A355676(n)]`
-/

namespace A052002.P11577759899061954681
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355676 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A052002.P11577759899061954681

/-! ## A052002.P5190892936904531701

`lt[0, A040051(n)]`
-/

namespace A052002.P5190892936904531701
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040051 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A052002.P5190892936904531701

/-! ## A052002.P11037134736717912516

`eq[1, A069935(n)]`
-/

namespace A052002.P11037134736717912516
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069935 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A052002.P11037134736717912516

/-! ## A052002.P12315648558868855245

`eq[1, and(1, A000025(n))]`
-/

namespace A052002.P12315648558868855245
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A000025 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A052002.P12315648558868855245

/-! ## A052002.P13693367815655942716

`record[n*and(1, A081362(n))]`
-/

namespace A052002.P13693367815655942716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * Int.land 1 (A081362 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A052002.P13693367815655942716

/-! ## A052002.P10956287858685473234

`eq[A040051(n), A329684(n)]`
-/

namespace A052002.P10956287858685473234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040051 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329684 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A052002.P10956287858685473234

/-! ## A052002.P9473562579669301669

`lt[0, A000041(n)%2]`
-/

namespace A052002.P9473562579669301669
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000041 n) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A052002.P9473562579669301669

/-! ## A052002.P5116780006175832561

`lt[1, ∑[A002865(n)]%2+1]`
-/

namespace A052002.P5116780006175832561
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f3 j) 2 + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A052002.P5116780006175832561

/-! ## A052002.P7524129105073133882

`eq[1, and(1, A000041(2*n-n))]`
-/

namespace A052002.P7524129105073133882
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A000041 (2 * n - n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A052002.P7524129105073133882

/-! ## A052002.P15438495779323418160

`eq[1, A276586(val(A000041(n), 2))]`
-/

namespace A052002.P15438495779323418160
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276586 (SequenceMachineLib.valuation (A000041 n).toNat 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A052002.P15438495779323418160

/-! ## A052002.P16105081486159199343

`eq[1, A278159(val(A000041(n), 2))]`
-/

namespace A052002.P16105081486159199343
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278159 (SequenceMachineLib.valuation (A000041 n).toNat 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A052002.P16105081486159199343

/-! ## A052002.P6351303667938326816

`eq[1, A160413(val(A000041(n), 2)+2)]`
-/

namespace A052002.P6351303667938326816
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160413 (SequenceMachineLib.valuation (A000041 n).toNat 2 + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A052002.P6351303667938326816

/-! ## A052002.P11942293612337345072

`eq[1, A000010(-xor(-A000041(n), A000041(n)))]`
-/

namespace A052002.P11942293612337345072
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (-Int.xor (-A000041 n) (A000041 n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A052002.P11942293612337345072

/-! ## A052002.P8509173778133000120

`eq[1, val(A139582(n), 2)]`
-/

namespace A052002.P8509173778133000120
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A139582 n).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A052002.P8509173778133000120

/-! ## A052002.P3339106436340943047

`eq[1, gcd(2, A299473(n))]`
-/

namespace A052002.P3339106436340943047
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A299473 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A052002.P3339106436340943047

/-! ## A052002.P15535100253638534841

`eq[1, and(1, A053250(n))]`
-/

namespace A052002.P15535100253638534841
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A053250 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A052002.P15535100253638534841

/-!
# A052003: Odd partition numbers.

The programs for A052003, there is no canonical definition to state claims against.
-/

/-! ## A052003.P12514663943523007334

`A000041(A052002(n+2))`
-/

namespace A052003.P12514663943523007334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A052002 (n + 2)).toNat

end

end A052003.P12514663943523007334

/-! ## A052003.P1924997738180938253

`record[A000041(n*A040051(n))]`
-/

namespace A052003.P1924997738180938253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 ((n : ℤ) * A040051 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A052003.P1924997738180938253

/-! ## A052003.P16269861073340721438

`record[A000041(gcd(n, A278478(n)))]`
-/

namespace A052003.P16269861073340721438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Int.gcd (n : ℤ) (A278478 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A052003.P16269861073340721438

/-! ## A052003.P15758614859377297894

`record[gcd(A000041(n), A355676(n))]`
-/

namespace A052003.P15758614859377297894
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000041 n) (A355676 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A052003.P15758614859377297894

/-! ## A052003.P3143845398285205908

`A000041(lt[n*A278478(n), n])`
-/

namespace A052003.P3143845398285205908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A278478 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A052003.P3143845398285205908

/-! ## A052003.P12937826768240397475

`A000041(eq[ceil(2/(n+1)), A040051(n)])`
-/

namespace A052003.P12937826768240397475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈2 / (n + 1 : ℚ)⌉

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040051 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A052003.P12937826768240397475

/-! ## A052003.P11798668815142364383

`A000041(record[(n+1)*A000041(n+1)%2])`
-/

namespace A052003.P11798668815142364383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * Int.tmod (A000041 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A052003.P11798668815142364383

/-! ## A052003.P5135412713672443196

`A000041(eq[A040051(n), A057427(n)])`
-/

namespace A052003.P5135412713672443196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040051 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A052003.P5135412713672443196

/-! ## A052003.P4127367412046101278

`A000041(lt[A278478(n), A057427(n)])`
-/

namespace A052003.P4127367412046101278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278478 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A052003.P4127367412046101278

/-! ## A052003.P8580657311750873802

`A000041(lt[A278478(n), n/A000041(n)])`
-/

namespace A052003.P8580657311750873802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278478 n

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A000041 n : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n)

end

end A052003.P8580657311750873802

/-! ## A052003.P11787856072369574710

`∪[A154795(n+1), A154797(n+1)]`
-/

namespace A052003.P11787856072369574710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154795 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154797 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A052003.P11787856072369574710

/-! ## A052003.P1333694566881623006

`record[and(1, A119620(n))*A119620(n)]`
-/

namespace A052003.P1333694566881623006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A119620 n) * A119620 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A052003.P1333694566881623006

/-! ## A052003.P8954939532601847688

`record[lcm(2, A035444(n))-A035444(n)]`
-/

namespace A052003.P8954939532601847688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A035444 n) : ℤ) - A035444 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A052003.P8954939532601847688

/-! ## A052003.P7112550090125146398

`A100824(2*A052002(n+2))`
-/

namespace A052003.P7112550090125146398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100824 (2 * A052002 (n + 2)).toNat

end

end A052003.P7112550090125146398

/-! ## A052003.P13359108724356821366

`record[A040051(n)*A100824(2*n)]`
-/

namespace A052003.P13359108724356821366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040051 n * A100824 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A052003.P13359108724356821366

/-!
# A052004: Numbers k such that k^3 has only even digits.

The programs for A052004, there is no canonical definition to state claims against.
-/

/-! ## A052004.P10498670383384699857

`A034376(n+1)^(1/3)`
-/

namespace A052004.P10498670383384699857
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A034376 (n + 1) : ℝ) ^ ((1 : ℚ) / 3 : ℝ)

end

end A052004.P10498670383384699857

/-! ## A052004.P11645773601020122429

`record[floor((n+1)/A011531(A104640(n+1)+1))]`
-/

namespace A052004.P11645773601020122429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℚ) / (A011531 (A104640 (n + 1) + 1).toNat : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A052004.P11645773601020122429

/-! ## A052004.P16285353302611799631

`eq[A000007(n), A104640(A028310(n))]`
-/

namespace A052004.P16285353302611799631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104640 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A052004.P16285353302611799631

/-! ## A052004.P4748000693415468999

`eq[A000007(n), A104640(A000007(n)+n)]`
-/

namespace A052004.P4748000693415468999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104640 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A052004.P4748000693415468999

/-!
# A052006: Numbers k for which Fibonacci(k) is the first member of a 1,1 pair (A052005).

The programs for A052006, there is no canonical definition to state claims against.
-/

/-! ## A052006.P14636835458990540734

`∑[A051392(floor(2/acot(n))-n)]+4`
-/

namespace A052006.P14636835458990540734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051392 (⌊2 / SequenceMachineLib.acot (n : ℝ)⌋ - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 4

end

end A052006.P14636835458990540734

/-! ## A052006.P1859790610888781759

`∑[A051392(A028310(n))]+4`
-/

namespace A052006.P1859790610888781759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051392 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 4

end

end A052006.P1859790610888781759

/-! ## A052006.P8834356758457246847

`∑[A051392(A233583(n+1))]+4`
-/

namespace A052006.P8834356758457246847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051392 (A233583 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 4

end

end A052006.P8834356758457246847

/-! ## A052006.P16432582368879724331

`A017581(A187829(n+1))+n%3`
-/

namespace A052006.P16432582368879724331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017581 (A187829 (n + 1)).toNat + ((n % 3 : ℕ) : ℤ)

end

end A052006.P16432582368879724331

/-! ## A052006.P5787300602596937480

`A017581(A187829(n+1))+A010872(n)`
-/

namespace A052006.P5787300602596937480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017581 (A187829 (n + 1)).toNat + A010872 n

end

end A052006.P5787300602596937480

/-!
# A052007: Numbers m such that 2^m + m is prime.

The programs for A052007, there is no canonical definition to state claims against.
-/

/-! ## A052007.P18100232517686455711

`floor(log2(A129962(n+1)))`
-/

namespace A052007.P18100232517686455711
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A129962 (n + 1)).toNat

end

end A052007.P18100232517686455711

/-! ## A052007.P15128660503367109961

`eq[2, A303121(n+1)]+1`
-/

namespace A052007.P15128660503367109961
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303121 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A052007.P15128660503367109961

/-! ## A052007.P7103776493091096746

`A004442(eq[2, A303121(n+1)])`
-/

namespace A052007.P7103776493091096746
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303121 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A052007.P7103776493091096746

/-! ## A052007.P4745218773103205376

`A109613(eq[2, A303121(n+1)])`
-/

namespace A052007.P4745218773103205376
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303121 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A052007.P4745218773103205376

/-!
# A052008: a(n) = 'n with digits sorted in ascending order' + 'n with digits sorted in descending order'.

The programs for A052008, there is no canonical definition to state claims against.
-/

/-! ## A052008.P8126416263127412248

`A056964(A004186(n))`
-/

namespace A052008.P8126416263127412248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056964 (A004186 n).toNat

end

end A052008.P8126416263127412248

/-! ## A052008.P17251591938775431269

`A004185(n)+A004186(n)`
-/

namespace A052008.P17251591938775431269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004185 n + A004186 n

end

end A052008.P17251591938775431269

/-! ## A052008.P8528007569808256174

`A056964(A108782(n)+n)`
-/

namespace A052008.P8528007569808256174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056964 (A108782 n + (n : ℤ)).toNat

end

end A052008.P8528007569808256174

/-! ## A052008.P13040402442746630511

`A070196(A108782(n)+n)`
-/

namespace A052008.P13040402442746630511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070196 (A108782 n + (n : ℤ)).toNat

end

end A052008.P13040402442746630511

/-! ## A052008.P5045414509817940458

`A151949(n)+2*A004185(n)`
-/

namespace A052008.P5045414509817940458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151949 n + 2 * A004185 n

end

end A052008.P5045414509817940458

/-! ## A052008.P4164455128993513027

`2*A004186(n)-A151949(n)`
-/

namespace A052008.P4164455128993513027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A004186 n - A151949 n

end

end A052008.P4164455128993513027

/-! ## A052008.P7790783420221737118

`A004185(n)+A108782(n)+n`
-/

namespace A052008.P7790783420221737118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004185 n + (A108782 n + (n : ℤ))

end

end A052008.P7790783420221737118

/-! ## A052008.P240063881049917058

`A004186(n)+A070196(n)-n`
-/

namespace A052008.P240063881049917058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004186 n + (A070196 n - (n : ℤ))

end

end A052008.P240063881049917058

/-! ## A052008.P16988353465022753196

`A004186(n)+n-A193581(n)`
-/

namespace A052008.P16988353465022753196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004186 n + ((n : ℤ) - A193581 n)

end

end A052008.P16988353465022753196

/-! ## A052008.P999492110016062435

`n-A193581(n)+A108782(n)+n`
-/

namespace A052008.P999492110016062435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A193581 n + (A108782 n + (n : ℤ))

end

end A052008.P999492110016062435

/-!
# A052009: Sum of 'n with digits sorted ascending' and 'n with digits sorted descending' is prime.

The programs for A052009, there is no canonical definition to state claims against.
-/

/-! ## A052009.P3686843290069617108

`eq[0, A007920(A052008(n))]`
-/

namespace A052009.P3686843290069617108
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 (A052008 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A052009.P3686843290069617108

/-! ## A052009.P18310768482870657390

`record[gcd(n+1, A007920(A052008(n+1)))]`
-/

namespace A052009.P18310768482870657390
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A007920 (A052008 (n + 1)).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A052009.P18310768482870657390

/-! ## A052009.P9969971939411624748

`eq[A036453(n+1), A077982(A052008(n))]`
-/

namespace A052009.P9969971939411624748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036453 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077982 (A052008 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A052009.P9969971939411624748

/-! ## A052009.P17705234528480553713

`eq[A032741(A052008(n)), A057979(2*n)]`
-/

namespace A052009.P17705234528480553713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (A052008 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A052009.P17705234528480553713

/-! ## A052009.P1632764534971668363

`record[(n+1)%A020639(A070196(A004186(n+1)))]`
-/

namespace A052009.P1632764534971668363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A020639 (A070196 (A004186 (n + 1)).toNat).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A052009.P1632764534971668363

/-!
# A052011: Number of primes between successive Fibonacci numbers exclusive.

The programs for A052011, there is no canonical definition to state claims against.
-/

/-! ## A052011.P16493585496648995272

`A076777(n+1)-A000007(A079677(n+2))`
-/

namespace A052011.P16493585496648995272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076777 (n + 1) - A000007 (A079677 (n + 2)).toNat

end

end A052011.P16493585496648995272

/-! ## A052011.P1980215874558148347

`A182564(n+2)-∑[A076777(n)]`
-/

namespace A052011.P1980215874558148347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076777 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182564 (n + 2) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A052011.P1980215874558148347

/-! ## A052011.P10186986190630185814

`A182564(n+2)-A054782(n+1)`
-/

namespace A052011.P10186986190630185814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182564 (n + 2) - A054782 (n + 1)

end

end A052011.P10186986190630185814

/-! ## A052011.P12091411157383678469

`A182564(n+2)-A230980(A212804(n+2))`
-/

namespace A052011.P12091411157383678469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182564 (n + 2) - A230980 (A212804 (n + 2)).toNat

end

end A052011.P12091411157383678469

/-! ## A052011.P14985381596547932058

`A230980(A000071(n+2))-A054782(n+1)`
-/

namespace A052011.P14985381596547932058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (A000071 (n + 2)).toNat - A054782 (n + 1)

end

end A052011.P14985381596547932058

/-!
# A052012: Number of primes between successive Lucas numbers.

The programs for A052012, there is no canonical definition to state claims against.
-/

/-! ## A052012.P8218279661521236430

`A000720(A142584(n+1))-A000720(A000204(n+1))`
-/

namespace A052012.P8218279661521236430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A142584 (n + 1)).toNat - A000720 (A000204 (n + 1)).toNat

end

end A052012.P8218279661521236430

/-!
# A052013: Primes that are congruent to -1 mod n, where n is the index of the prime.

The programs for A052013, there is no canonical definition to state claims against.
-/

/-! ## A052013.P12346139079354862811

`A000040(A045924(n+1))`
-/

namespace A052013.P12346139079354862811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A045924 (n + 1)).toNat

end

end A052013.P12346139079354862811

/-! ## A052013.P16480788650074237155

`∩[A073721(n+1), A162567(n+1)]`
-/

namespace A052013.P16480788650074237155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073721 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162567 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052013.P16480788650074237155

/-! ## A052013.P201731474279196725

`p?[A073721(n+1)]`
-/

namespace A052013.P201731474279196725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073721 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A052013.P201731474279196725

/-! ## A052013.P2721363471520026654

`p?[A057809(n+1)-ceil(sin(n)²)]`
-/

namespace A052013.P2721363471520026654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057809 (n + 1) - ⌈Real.sin (n : ℝ) ^ 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A052013.P2721363471520026654

/-! ## A052013.P2900802938330891063

`p?[A087238(n+1)+a(n-1)]` with `a(0)=2, a(1)=3`
-/

namespace A052013.P2900802938330891063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 3] fun n f1 =>
  A087238 (n + 1) + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A052013.P2900802938330891063

/-!
# A052014: Primes with distinct digits in descending order.

The programs for A052014, there is no canonical definition to state claims against.
-/

/-! ## A052014.P7569983677685338748

`∩[A009995(n+1), A028867(n+1)]`
-/

namespace A052014.P7569983677685338748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009995 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028867 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052014.P7569983677685338748

/-! ## A052014.P13811957824736538319

`∩[A028867(n+1), A190219(n+1)]`
-/

namespace A052014.P13811957824736538319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028867 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190219 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052014.P13811957824736538319

/-! ## A052014.P10628926890106835353

`∩[A028867(n+1), A308393(n+1)]`
-/

namespace A052014.P10628926890106835353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028867 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308393 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052014.P10628926890106835353

/-! ## A052014.P4564571533733804263

`∩[A009995(n+1), A029743(n+1)]`
-/

namespace A052014.P4564571533733804263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009995 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029743 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052014.P4564571533733804263

/-! ## A052014.P2709428557136924506

`∩[A028867(n+1), A029743(n+1)]`
-/

namespace A052014.P2709428557136924506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028867 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029743 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052014.P2709428557136924506

/-! ## A052014.P7570204328151205905

`p?[A009995(n+1)]`
-/

namespace A052014.P7570204328151205905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009995 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A052014.P7570204328151205905

/-! ## A052014.P17878807301999281169

`p?[A190219(n+1)]`
-/

namespace A052014.P17878807301999281169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190219 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A052014.P17878807301999281169

/-! ## A052014.P2502304926833806879

`p?[A262557(A263327(n+1))]`
-/

namespace A052014.P2502304926833806879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262557 (A263327 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A052014.P2502304926833806879

/-! ## A052014.P3281296147318941939

`∩[A028912(n), A029743(n+1)]`
-/

namespace A052014.P3281296147318941939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028912 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029743 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052014.P3281296147318941939

/-! ## A052014.P8089287162987259770

`∩[A009996(n+1), A029743(n+1)]`
-/

namespace A052014.P8089287162987259770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009996 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029743 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052014.P8089287162987259770

/-!
# A052015: Primes with distinct digits in ascending order.

The programs for A052015, there is no canonical definition to state claims against.
-/

/-! ## A052015.P3109181011978458650

`∩[A009993(n+1), A028864(n+1)]`
-/

namespace A052015.P3109181011978458650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009993 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028864 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052015.P3109181011978458650

/-! ## A052015.P372035749358285009

`∩[A009993(n+1), A100370(n+1)]`
-/

namespace A052015.P372035749358285009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009993 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100370 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052015.P372035749358285009

/-! ## A052015.P15901387528227078891

`∩[A009993(n+1), A175438(n+1)]`
-/

namespace A052015.P15901387528227078891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009993 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175438 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052015.P15901387528227078891

/-! ## A052015.P17448173737406606150

`∩[A028864(n+1), A175438(n+1)]`
-/

namespace A052015.P17448173737406606150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028864 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175438 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052015.P17448173737406606150

/-! ## A052015.P3400351346719321224

`∩[A028864(n+1), A179308(n+1)]`
-/

namespace A052015.P3400351346719321224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028864 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179308 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052015.P3400351346719321224

/-! ## A052015.P6298701376988011044

`∩[A028864(n+1), A190218(n+1)]`
-/

namespace A052015.P6298701376988011044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028864 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190218 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052015.P6298701376988011044

/-! ## A052015.P18422390404760727761

`∩[A100370(n+1), A190218(n+1)]`
-/

namespace A052015.P18422390404760727761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100370 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190218 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052015.P18422390404760727761

/-! ## A052015.P8379105142349921473

`∩[A175438(n+1), A190218(n+1)]`
-/

namespace A052015.P8379105142349921473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175438 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190218 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052015.P8379105142349921473

/-! ## A052015.P1216713471168168546

`∩[A009993(n+1), A029743(n+1)]`
-/

namespace A052015.P1216713471168168546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009993 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029743 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052015.P1216713471168168546

/-! ## A052015.P2506357462681652748

`∩[A028864(n+1), A029743(n+1)]`
-/

namespace A052015.P2506357462681652748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028864 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029743 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052015.P2506357462681652748

/-!
# A052016: Primes with digits in descending order that differ exactly by 1.

The programs for A052016, there is no canonical definition to state claims against.
-/

/-! ## A052016.P8309687581037270188

`p?[A138142(n+1)]`
-/

namespace A052016.P8309687581037270188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138142 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A052016.P8309687581037270188

/-!
# A052017: Primes with digits in ascending order that differ exactly by 1.

The programs for A052017, there is no canonical definition to state claims against.
-/

/-! ## A052017.P13630099895277863446

`A036342(comp[n²-4])`
-/

namespace A052017.P13630099895277863446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - 4

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036342 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A052017.P13630099895277863446

/-! ## A052017.P7842509843889792858

`A006055(∑[or(1, floor(n/4))])`
-/

namespace A052017.P7842509843889792858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ⌊(n : ℚ) / 4⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006055 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A052017.P7842509843889792858

/-! ## A052017.P9710843932140645756

`A006055(∑[A102480(n)])`
-/

namespace A052017.P9710843932140645756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102480 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006055 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A052017.P9710843932140645756

/-! ## A052017.P16430242264754831475

`A006055(∑[A143632(n)])`
-/

namespace A052017.P16430242264754831475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143632 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006055 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A052017.P16430242264754831475

/-! ## A052017.P16993213117941859937

`A006055(∑[A293012(n)])`
-/

namespace A052017.P16993213117941859937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293012 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006055 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A052017.P16993213117941859937

/-!
# A052018: Numbers k with the property that the sum of the digits of k is a substring of k.

The programs for A052018, there is no canonical definition to state claims against.
-/

/-! ## A052018.P7358096085931889253

`A352461(A028310(n))%A092820(n)`
-/

namespace A052018.P7358096085931889253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A352461 (A028310 n).toNat) (A092820 n)

end

end A052018.P7358096085931889253

/-! ## A052018.P17650750943465255692

`A104121(3*n)*A352461(A028310(n))`
-/

namespace A052018.P17650750943465255692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104121 (3 * n) * A352461 (A028310 n).toNat

end

end A052018.P17650750943465255692

/-! ## A052018.P1956152627864749584

`A352461(A028310(n))+A010892(A181748(n+1))`
-/

namespace A052018.P1956152627864749584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352461 (A028310 n).toNat + A010892 (A181748 (n + 1)).toNat

end

end A052018.P1956152627864749584

/-! ## A052018.P1927302969702225897

`and(A356877(n), A384508(n+1))`
-/

namespace A052018.P1927302969702225897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A356877 n) (A384508 (n + 1))

end

end A052018.P1927302969702225897

/-! ## A052018.P3535163500845876730

`and(A359085(n+1), A384508(n+1))`
-/

namespace A052018.P3535163500845876730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A359085 (n + 1)) (A384508 (n + 1))

end

end A052018.P3535163500845876730

/-!
# A052019: Sum of digits of prime p is substring of p.

The programs for A052019, there is no canonical definition to state claims against.
-/

/-! ## A052019.P16498581947038822250

`p?[A052018(n+1)]`
-/

namespace A052019.P16498581947038822250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052018 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A052019.P16498581947038822250

/-! ## A052019.P5318660736490723993

`p?[A052018(n-log2(1/2))-A000007(n)]`
-/

namespace A052019.P5318660736490723993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052018 (SequenceMachineLib.roundAway ((n : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ))).toNat - A000007 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A052019.P5318660736490723993

/-! ## A052019.P9769635379643162745

`p?[A052018(n-log2(1/2))%A017510(n)]`
-/

namespace A052019.P9769635379643162745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A052018 (SequenceMachineLib.roundAway ((n : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ))).toNat) (A017510 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A052019.P9769635379643162745

/-! ## A052019.P5931984771021358225

`p?[(A004442(n)-n)²*A052018(n-log2(1/2))]`
-/

namespace A052019.P5931984771021358225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004442 n - (n : ℤ)) ^ 2 * A052018 (SequenceMachineLib.roundAway ((n : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A052019.P5931984771021358225

/-! ## A052019.P2849812369796500228

`∩[A052018(n+1), A158473(n+1)]`
-/

namespace A052019.P2849812369796500228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052018 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158473 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052019.P2849812369796500228

/-! ## A052019.P15386993968504575730

`∩[A000040(n+1), A052018(n+1)]`
-/

namespace A052019.P15386993968504575730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052018 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052019.P15386993968504575730

/-! ## A052019.P8251040905107995425

`∩[A052018(n+1), A106118(n+1)]`
-/

namespace A052019.P8251040905107995425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052018 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106118 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052019.P8251040905107995425

/-! ## A052019.P7171830406242349159

`∩[A052018(n+1), A182140(n+1)]`
-/

namespace A052019.P7171830406242349159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052018 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182140 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052019.P7171830406242349159

/-! ## A052019.P6088454848241765990

`record[A006530(A052018(n+3))]`
-/

namespace A052019.P6088454848241765990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A052018 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A052019.P6088454848241765990

/-! ## A052019.P7857595584094369777

`filter[A052018(n+2), A010051(#)]`
-/

namespace A052019.P7857595584094369777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052018 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A052019.P7857595584094369777

/-! ## A052019.P2473061699207117409

`p?[record[A052018(A262519(n))]]`
-/

namespace A052019.P2473061699207117409
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052018 (A262519 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A052019.P2473061699207117409

/-!
# A052020: Sum of digits of k is a prime proper factor of k.

The programs for A052020, there is no canonical definition to state claims against.
-/

/-! ## A052020.P11769252461356452031

`A062713(n+5)`
-/

namespace A052020.P11769252461356452031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062713 (n + 5)

end

end A052020.P11769252461356452031

/-! ## A052020.P13904584737340461844

`or(char[2], A062713(A020710(n)))`
-/

namespace A052020.P13904584737340461844
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A062713 (A020710 n).toNat)

end

end A052020.P13904584737340461844

/-! ## A052020.P11790333113745533634

`A062713(A020710(n))%A016949(n)`
-/

namespace A052020.P11790333113745533634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A062713 (A020710 n).toNat) (A016949 n)

end

end A052020.P11790333113745533634

/-! ## A052020.P4782457229464804719

`A008966(A328571(n))*A062713(A020710(n))`
-/

namespace A052020.P4782457229464804719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008966 (A328571 n).toNat * A062713 (A020710 n).toNat

end

end A052020.P4782457229464804719

/-! ## A052020.P9846575479878498828

`record[A062713(A020705(A028242(n)))]`
-/

namespace A052020.P9846575479878498828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062713 (A020705 (A028242 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A052020.P9846575479878498828

/-! ## A052020.P14743153296933586642

`A057979(2*n)*A062713(A020710(n))`
-/

namespace A052020.P14743153296933586642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (2 * n) * A062713 (A020710 n).toNat

end

end A052020.P14743153296933586642

/-! ## A052020.P5517558054933460857

`∩[A005349(n+1), A141642(n+1)]`
-/

namespace A052020.P5517558054933460857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005349 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141642 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052020.P5517558054933460857

/-! ## A052020.P11290336488244140330

`∩[A141642(n+1), A261874(n+1)]`
-/

namespace A052020.P11290336488244140330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141642 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261874 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052020.P11290336488244140330

/-! ## A052020.P8947980820733553656

`∩[A261874(n+1), A329522(n+1)]`
-/

namespace A052020.P8947980820733553656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261874 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329522 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052020.P8947980820733553656

/-! ## A052020.P3935756844777333690

`filter[A141642(n+1), A188641(#)]`
-/

namespace A052020.P3935756844777333690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141642 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A188641 (f1 j).toNat = 1) n)

end

end A052020.P3935756844777333690

/-! ## A052020.P8904390903762464174

`A007318(∑[n])*A062713(A020710(n))`
-/

namespace A052020.P8904390903762464174
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A062713 (A020710 n).toNat

end

end A052020.P8904390903762464174

/-!
# A052021: Numbers with a sum of digits equal to their greatest prime factor.

The programs for A052021, there is no canonical definition to state claims against.
-/

/-! ## A052021.P10650435993356513021

`eq[A006530(A004277(n)), A007953(n)]`
-/

namespace A052021.P10650435993356513021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A004277 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A052021.P10650435993356513021

/-! ## A052021.P3398667316897151916

`eq[A006530(A008574(n)), A007953(n)]`
-/

namespace A052021.P3398667316897151916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A008574 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A052021.P3398667316897151916

/-! ## A052021.P12210502326413225669

`eq[A006530(A022144(n)), A007953(n)]`
-/

namespace A052021.P12210502326413225669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A022144 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A052021.P12210502326413225669

/-! ## A052021.P12661518965662564638

`eq[A006530(A234275(n)), A007953(n)]`
-/

namespace A052021.P12661518965662564638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A234275 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A052021.P12661518965662564638

/-! ## A052021.P4820207591663051511

`eq[A169805(n)/2, A006530(A004277(n))]`
-/

namespace A052021.P4820207591663051511
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A169805 n : ℚ) / 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A004277 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℚ)) n

end

end A052021.P4820207591663051511

/-! ## A052021.P6963823023243104077

`eq[A062028(n)-n, A006530(A004277(n))]`
-/

namespace A052021.P6963823023243104077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062028 n - (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A004277 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A052021.P6963823023243104077

/-! ## A052021.P7262749872603574744

`eq[A118880(n)^(1/3), A006530(A004277(n))]`
-/

namespace A052021.P7262749872603574744
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A118880 n : ℝ) ^ ((1 : ℚ) / 3 : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A004277 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℝ)) n

end

end A052021.P7262749872603574744

/-! ## A052021.P2731497223704442767

`eq[1-A160941(n+1)+n, A006530(A004277(n))]`
-/

namespace A052021.P2731497223704442767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A160941 (n + 1) + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A004277 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A052021.P2731497223704442767

/-! ## A052021.P9931123333245372071

`eq[A160939(n+1)-(n+1), A006530(A004277(n))]`
-/

namespace A052021.P9931123333245372071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160939 (n + 1) - (n + 1 : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A004277 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A052021.P9931123333245372071

/-! ## A052021.P5061507418301108222

`eq[A160942(n+1)/(n+1), A006530(A004277(n))]`
-/

namespace A052021.P5061507418301108222
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A160942 (n + 1) : ℚ) / (n + 1 : ℚ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A004277 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℚ)) n

end

end A052021.P5061507418301108222

/-!
# A052022: Smallest number m larger than prime(n) such that prime(n) = sum of digits of m and prime(n) = largest prime factor of m (or 0 if no such number exists).

The programs for A052022, there is no canonical definition to state claims against.
-/

/-! ## A052022.P18353505705742110126

`p?[Δ[n²]]*A108499(A255622(n+1))`
-/

namespace A052022.P18353505705742110126
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * A108499 (A255622 (n + 1)).toNat

end

end A052022.P18353505705742110126

/-! ## A052022.P12143319001816390800

`A001097(n+1)*A251631(A205226(n+1))`
-/

namespace A052022.P12143319001816390800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001097 (n + 1) * A251631 (A205226 (n + 1)).toNat

end

end A052022.P12143319001816390800

/-!
# A052023: Every suffix of palindromic prime a(n), containing no '0' digit, is prime (left-truncatable palindromic primes).

The programs for A052023, there is no canonical definition to state claims against.
-/

/-! ## A052023.P14073694631440201715

`∩[A002385(n+1), A024785(n+1)]`
-/

namespace A052023.P14073694631440201715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002385 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024785 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052023.P14073694631440201715

/-! ## A052023.P18003074700965487472

`∩[A024785(n+1), A062687(n+1)]`
-/

namespace A052023.P18003074700965487472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024785 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062687 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052023.P18003074700965487472

/-! ## A052023.P14183873986010200295

`∩[A024785(n+1), A072299(n+1)]`
-/

namespace A052023.P14183873986010200295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024785 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072299 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052023.P14183873986010200295

/-! ## A052023.P706574346840552055

`∩[A002113(n+1), A024785(n+1)]`
-/

namespace A052023.P706574346840552055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024785 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052023.P706574346840552055

/-! ## A052023.P11577445364764449367

`∩[A024785(n+1), A050784(n+1)]`
-/

namespace A052023.P11577445364764449367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024785 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050784 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052023.P11577445364764449367

/-!
# A052024: Every suffix of palindromic prime a(n) is prime (left-truncatable).

The programs for A052024, there is no canonical definition to state claims against.
-/

/-! ## A052024.P3539182986444596255

`∩[A002385(n+1), A033664(n+1)]`
-/

namespace A052024.P3539182986444596255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002385 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033664 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052024.P3539182986444596255

/-! ## A052024.P14958233863306062734

`∩[A033664(n+1), A072299(n+1)]`
-/

namespace A052024.P14958233863306062734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033664 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072299 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052024.P14958233863306062734

/-! ## A052024.P11508395988389436958

`∩[A002113(n+1), A033664(n+1)]`
-/

namespace A052024.P11508395988389436958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033664 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052024.P11508395988389436958

/-! ## A052024.P17325508693099539849

`∩[A033664(n+1), A056525(n+1)]`
-/

namespace A052024.P17325508693099539849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033664 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056525 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052024.P17325508693099539849

/-! ## A052024.P1254915656753236331

`∩[A033620(n+1), A033664(n+1)]`
-/

namespace A052024.P1254915656753236331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033620 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033664 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052024.P1254915656753236331

/-!
# A052025: Every prefix (or suffix) of palindromic prime a(n) is prime (right/left-truncatable).

The programs for A052025, there is no canonical definition to state claims against.
-/

/-! ## A052025.P11844734600229960660

`A052024(∑[ceil(n/4)!])`
-/

namespace A052025.P11844734600229960660
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial ⌈(n : ℚ) / 4⌉.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052024 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A052025.P11844734600229960660

/-! ## A052025.P16821157803828873009

`A052023(∑[ceil((n+2)/6)])`
-/

namespace A052025.P16821157803828873009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 2 : ℚ) / 6⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052023 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A052025.P16821157803828873009

/-! ## A052025.P10507990075506870464

`A054218(floor(n*root(2, 3))+1)`
-/

namespace A052025.P10507990075506870464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054218 (⌊(n : ℝ) * (2 : ℝ) ^ (1 / (3 : ℝ))⌋ + 1).toNat

end

end A052025.P10507990075506870464

/-!
# A052026: Composites base 10 that remain composite in all bases b, 2<=b<=10, expansions interpreted as decimal numbers.

The programs for A052026, there is no canonical definition to state claims against.
-/

/-! ## A052026.P4812585224778945596

`eq[A080545(n+1), A236356(n+1)]+1`
-/

namespace A052026.P4812585224778945596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080545 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236356 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A052026.P4812585224778945596

/-! ## A052026.P7664296831428794338

`A020725(eq[A080545(n+1), A236356(n+1)])`
-/

namespace A052026.P7664296831428794338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080545 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236356 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A052026.P7664296831428794338

/-! ## A052026.P15688130986938402492

`A065475(eq[A080545(n+1), A236356(n+1)])`
-/

namespace A052026.P15688130986938402492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080545 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236356 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A052026.P15688130986938402492

/-! ## A052026.P8109267645944590176

`A113484(eq[A080545(n+1), A236356(n+1)])`
-/

namespace A052026.P8109267645944590176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080545 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236356 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113484 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A052026.P8109267645944590176

/-! ## A052026.P12066281194308243448

`eq[A087748(A000217(n)), A236356(n+1)]+1`
-/

namespace A052026.P12066281194308243448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087748 (A000217 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236356 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A052026.P12066281194308243448

/-!
# A052029: Primes base 10 that remain primes in five bases b, 2<=b<=10, expansions interpreted as decimal numbers.

The programs for A052029, there is no canonical definition to state claims against.
-/

/-! ## A052029.P10749266436909228633

`A167168(A320200(2*n+1)+A007504(n))`
-/

namespace A052029.P10749266436909228633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167168 (A320200 (2 * n + 1) + A007504 n).toNat

end

end A052029.P10749266436909228633

/-!
# A052030: Primes base 10 that remain primes in four bases b, 2<=b<=10, expansions interpreted as decimal numbers.

The programs for A052030, there is no canonical definition to state claims against.
-/

/-! ## A052030.P9475255995810624276

`A224773(A176045(n+2))`
-/

namespace A052030.P9475255995810624276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224773 (A176045 (n + 2)).toNat

end

end A052030.P9475255995810624276

/-! ## A052030.P13174991122797791071

`A224773(A005384(n+2)+1)`
-/

namespace A052030.P13174991122797791071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224773 (A005384 (n + 2) + 1).toNat

end

end A052030.P13174991122797791071

/-! ## A052030.P11844839364160959017

`A224773(A246857(n+2)+1)`
-/

namespace A052030.P11844839364160959017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224773 (A246857 (n + 2) + 1).toNat

end

end A052030.P11844839364160959017

/-!
# A052031: Primes base 10 that remain primes in three bases b, 2<=b<=10, expansions interpreted as decimal numbers.

The programs for A052031, there is no canonical definition to state claims against.
-/

/-! ## A052031.P4746927391798611851

`p?[eq[3, A319858(A028310(n))]]`
-/

namespace A052031.P4746927391798611851
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319858 (A028310 n).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A052031.P4746927391798611851

/-! ## A052031.P7185451587015571340

`p?[eq[3, A319858(A233583(n+1))]]`
-/

namespace A052031.P7185451587015571340
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319858 (A233583 (n + 1)).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A052031.P7185451587015571340

/-! ## A052031.P1082078066602127331

`p?[eq[3, A319858(A000038(n)+n)]]`
-/

namespace A052031.P1082078066602127331
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319858 (A000038 n + (n : ℤ)).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A052031.P1082078066602127331

/-! ## A052031.P4721373358300617104

`eq[A305801(n+1), A319858(n+1)]+1`
-/

namespace A052031.P4721373358300617104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305801 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319858 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A052031.P4721373358300617104

/-! ## A052031.P17195881455085635023

`eq[A319858(n+1)-1, A299701(n+1)]+1`
-/

namespace A052031.P17195881455085635023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319858 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299701 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A052031.P17195881455085635023

/-!
# A052032: Primes base 10 that remain prime in one (and only one) other base b, 2<=b<10, expansions interpreted as decimal numbers.

The programs for A052032, there is no canonical definition to state claims against.
-/

/-! ## A052032.P16421594269498304359

`A333364(lt[2, A103414(3*n+4)])`
-/

namespace A052032.P16421594269498304359
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103414 (3 * n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333364 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A052032.P16421594269498304359

/-! ## A052032.P13408113658122958656

`p?[A336007(n+5)-A104324(A095081(3*(n+1)))]`
-/

namespace A052032.P13408113658122958656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336007 (n + 5) - A104324 (A095081 (3 * (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A052032.P13408113658122958656

/-!
# A052033: Primes base 10 that are never primes in any smaller base b, 2<=b<10, expansions interpreted as decimal numbers.

The programs for A052033, there is no canonical definition to state claims against.
-/

/-! ## A052033.P9020963550820612140

`A236437(n+2)`
-/

namespace A052033.P9020963550820612140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236437 (n + 2)

end

end A052033.P9020963550820612140

/-! ## A052033.P8965080245849140327

`record[A236437(or(n, A000038(n)))]`
-/

namespace A052033.P8965080245849140327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236437 (Int.lor (n : ℤ) (A000038 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A052033.P8965080245849140327

/-! ## A052033.P15770264418882313566

`A000040(eq[10, A235354(n+1)]+1)`
-/

namespace A052033.P15770264418882313566
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235354 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A052033.P15770264418882313566

/-! ## A052033.P3693655603696413220

`p?[dr(A235354(n+1))*A000040(n+1)]`
-/

namespace A052033.P3693655603696413220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.digitalRoot (A235354 (n + 1)) : ℤ) * A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A052033.P3693655603696413220

/-! ## A052033.P6438835465982144605

`record[A236437(A080513(A057979(n)))]`
-/

namespace A052033.P6438835465982144605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236437 (A080513 (A057979 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A052033.P6438835465982144605

/-! ## A052033.P7854577363377586142

`A000040(A235377(n+1))`
-/

namespace A052033.P7854577363377586142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A235377 (n + 1)).toNat

end

end A052033.P7854577363377586142

/-! ## A052033.P12680034737018605580

`A236174(A235377(2*n+1-n))`
-/

namespace A052033.P12680034737018605580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236174 (A235377 (2 * n + 1 - n)).toNat

end

end A052033.P12680034737018605580

/-!
# A052034: Primes such that the sum of the squares of their digits is also a prime.

The programs for A052034, the canonical program `A052034.P8144197428112454324` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052034 has offset 1).

The definition of A052034 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1041 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A052034.P297553732229248381

`A000040(A177149(n+1))`
-/

namespace A052034.P297553732229248381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A177149 (n + 1)).toNat

end

end A052034.P297553732229248381

namespace A052034

/-- `A000040(A177149(n+1))` -/
def P297553732229248381.Spec : Prop :=
  ∀ n, P297553732229248381.a n = A052034 (n + 1)

end A052034

/-! ## A052034.P5123881287323667839

`A008578(A177149(n+1)+1)`
-/

namespace A052034.P5123881287323667839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A177149 (n + 1) + 1).toNat

end

end A052034.P5123881287323667839

namespace A052034

/-- `A008578(A177149(n+1)+1)` -/
def P5123881287323667839.Spec : Prop :=
  ∀ n, P5123881287323667839.a n = A052034 (n + 1)

end A052034

/-! ## A052034.P8144197428112454324

`p?[A108662(n+1)]`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A052034

/-- `p?[A108662(n+1)]` -/
def P8144197428112454324.Spec : Prop :=
  ∀ n, P8144197428112454324.a n = A052034 (n + 1)

theorem P8144197428112454324.correct : P8144197428112454324.Spec := by
  intro n
  simp only [A052034, Nat.add_sub_cancel]

end A052034

/-! ## A052034.P12613667509145725610

`filter[A108662(n+1), A010051(#)]`
-/

namespace A052034.P12613667509145725610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108662 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A052034.P12613667509145725610

namespace A052034

/-- `filter[A108662(n+1), A010051(#)]` -/
def P12613667509145725610.Spec : Prop :=
  ∀ n, P12613667509145725610.a n = A052034 (n + 1)

end A052034

/-! ## A052034.P17303717977403803531

`filter[A108662(n+1), A323153(#)]`
-/

namespace A052034.P17303717977403803531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108662 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A052034.P17303717977403803531

namespace A052034

/-- `filter[A108662(n+1), A323153(#)]` -/
def P17303717977403803531.Spec : Prop :=
  ∀ n, P17303717977403803531.a n = A052034 (n + 1)

end A052034

/-! ## A052034.P17759957090630528419

`∩[A000040(n+1), A108662(n+1)]`
-/

namespace A052034.P17759957090630528419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108662 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052034.P17759957090630528419

namespace A052034

/-- `∩[A000040(n+1), A108662(n+1)]` -/
def P17759957090630528419.Spec : Prop :=
  ∀ n, (P17759957090630528419.a n : ℤ) = A052034 (n + 1)

end A052034

/-! ## A052034.P3675509845332748750

`∩[A004139(n+1), A108662(n+1)]`
-/

namespace A052034.P3675509845332748750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108662 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052034.P3675509845332748750

namespace A052034

/-- `∩[A004139(n+1), A108662(n+1)]` -/
def P3675509845332748750.Spec : Prop :=
  ∀ n, (P3675509845332748750.a n : ℤ) = A052034 (n + 1)

end A052034

/-! ## A052034.P2185613314621047690

`∩[A006005(n+1), A108662(n+1)]`
-/

namespace A052034.P2185613314621047690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108662 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052034.P2185613314621047690

namespace A052034

/-- `∩[A006005(n+1), A108662(n+1)]` -/
def P2185613314621047690.Spec : Prop :=
  ∀ n, (P2185613314621047690.a n : ℤ) = A052034 (n + 1)

end A052034

/-! ## A052034.P10346243786760397912

`∩[A008578(n+1), A108662(n+1)]`
-/

namespace A052034.P10346243786760397912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108662 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052034.P10346243786760397912

namespace A052034

/-- `∩[A008578(n+1), A108662(n+1)]` -/
def P10346243786760397912.Spec : Prop :=
  ∀ n, (P10346243786760397912.a n : ℤ) = A052034 (n + 1)

end A052034

/-! ## A052034.P5531649723942232804

`∩[A033946(n+1), A108662(n+1)]`
-/

namespace A052034.P5531649723942232804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108662 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052034.P5531649723942232804

namespace A052034

/-- `∩[A033946(n+1), A108662(n+1)]` -/
def P5531649723942232804.Spec : Prop :=
  ∀ n, (P5531649723942232804.a n : ℤ) = A052034 (n + 1)

end A052034

/-! ## A052034.P14321088944452992134

`∩[A045319(n+1), A108662(n+1)]`
-/

namespace A052034.P14321088944452992134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108662 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052034.P14321088944452992134

namespace A052034

/-- `∩[A045319(n+1), A108662(n+1)]` -/
def P14321088944452992134.Spec : Prop :=
  ∀ n, (P14321088944452992134.a n : ℤ) = A052034 (n + 1)

end A052034

/-! ## A052034.P7729792418644934294

`∩[A045344(n+1), A108662(n+1)]`
-/

namespace A052034.P7729792418644934294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108662 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052034.P7729792418644934294

namespace A052034

/-- `∩[A045344(n+1), A108662(n+1)]` -/
def P7729792418644934294.Spec : Prop :=
  ∀ n, (P7729792418644934294.a n : ℤ) = A052034 (n + 1)

end A052034

/-! ## A052034.P14776816926798708867

`∩[A046022(n+1), A108662(n+1)]`
-/

namespace A052034.P14776816926798708867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108662 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052034.P14776816926798708867

namespace A052034

/-- `∩[A046022(n+1), A108662(n+1)]` -/
def P14776816926798708867.Spec : Prop :=
  ∀ n, (P14776816926798708867.a n : ℤ) = A052034 (n + 1)

end A052034

/-! ## A052034.P9197078793013976256

`∩[A051948(n+1), A108662(n+1)]`
-/

namespace A052034.P9197078793013976256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108662 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052034.P9197078793013976256

namespace A052034

/-- `∩[A051948(n+1), A108662(n+1)]` -/
def P9197078793013976256.Spec : Prop :=
  ∀ n, (P9197078793013976256.a n : ℤ) = A052034 (n + 1)

end A052034

/-! ## A052034.P8453368960761558475

`∩[A053813(n+1), A108662(n+1)]`
-/

namespace A052034.P8453368960761558475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108662 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052034.P8453368960761558475

namespace A052034

/-- `∩[A053813(n+1), A108662(n+1)]` -/
def P8453368960761558475.Spec : Prop :=
  ∀ n, (P8453368960761558475.a n : ℤ) = A052034 (n + 1)

end A052034

/-! ## A052034.P14997233387697059717

`∩[A062972(n+1), A108662(n+1)]`
-/

namespace A052034.P14997233387697059717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062972 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108662 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052034.P14997233387697059717

namespace A052034

/-- `∩[A062972(n+1), A108662(n+1)]` -/
def P14997233387697059717.Spec : Prop :=
  ∀ n, (P14997233387697059717.a n : ℤ) = A052034 (n + 1)

end A052034

/-! ## A052034.P13980039318721677214

`∩[A065091(n+1), A108662(n+1)]`
-/

namespace A052034.P13980039318721677214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108662 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052034.P13980039318721677214

namespace A052034

/-- `∩[A065091(n+1), A108662(n+1)]` -/
def P13980039318721677214.Spec : Prop :=
  ∀ n, (P13980039318721677214.a n : ℤ) = A052034 (n + 1)

end A052034

/-! ## A052034.P12566206977958674912

`∩[A066050(n+1), A108662(n+1)]`
-/

namespace A052034.P12566206977958674912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066050 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108662 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052034.P12566206977958674912

namespace A052034

/-- `∩[A066050(n+1), A108662(n+1)]` -/
def P12566206977958674912.Spec : Prop :=
  ∀ n, (P12566206977958674912.a n : ℤ) = A052034 (n + 1)

end A052034

/-! ## A052034.P5821536709237863117

`∩[A067126(n+1), A108662(n+1)]`
-/

namespace A052034.P5821536709237863117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067126 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108662 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052034.P5821536709237863117

namespace A052034

/-- `∩[A067126(n+1), A108662(n+1)]` -/
def P5821536709237863117.Spec : Prop :=
  ∀ n, (P5821536709237863117.a n : ℤ) = A052034 (n + 1)

end A052034

/-! ## A052034.P1530044683248654220

`∩[A161428(n+1), A108662(n+1)]`
-/

namespace A052034.P1530044683248654220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161428 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108662 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052034.P1530044683248654220

namespace A052034

/-- `∩[A161428(n+1), A108662(n+1)]` -/
def P1530044683248654220.Spec : Prop :=
  ∀ n, (P1530044683248654220.a n : ℤ) = A052034 (n + 1)

end A052034

/-!
# A052035: Palindromic primes whose sum of squared digits is also prime.

The programs for A052035, there is no canonical definition to state claims against.
-/

/-! ## A052035.P17417881126319791646

`∩[A002113(n+1), A052034(n+1)]`
-/

namespace A052035.P17417881126319791646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052034 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052035.P17417881126319791646

/-! ## A052035.P5135593723715381600

`∩[A002385(n+1), A052034(n+1)]`
-/

namespace A052035.P5135593723715381600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002385 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052034 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052035.P5135593723715381600

/-! ## A052035.P13291780643775042462

`∩[A029950(n+1), A052034(n+1)]`
-/

namespace A052035.P13291780643775042462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029950 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052034 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052035.P13291780643775042462

/-! ## A052035.P3725878157560939390

`∩[A033620(n+1), A052034(n+1)]`
-/

namespace A052035.P3725878157560939390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033620 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052034 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052035.P3725878157560939390

/-! ## A052035.P14588439587008747032

`∩[A052034(n+1), A061917(n+1)]`
-/

namespace A052035.P14588439587008747032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052034 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061917 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052035.P14588439587008747032

/-!
# A052036: Smallest number that must be added to n to make or keep n palindromic.

The programs for A052036, there is no canonical definition to state claims against.
-/

/-! ## A052036.P15146841803867591824

`A262038(n)-n`
-/

namespace A052036.P15146841803867591824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262038 n - (n : ℤ)

end

end A052036.P15146841803867591824

/-!
# A052037: Smallest positive number that must be added to n to reach a palindrome.

The programs for A052037, there is no canonical definition to state claims against.
-/

/-! ## A052037.P8699542255099235767

`A262038(n+1)-n`
-/

namespace A052037.P8699542255099235767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262038 (n + 1) - (n : ℤ)

end

end A052037.P8699542255099235767

/-! ## A052037.P6602053037221323520

`abs(A262038(-xor(n, -1))-n)`
-/

namespace A052037.P6602053037221323520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A262038 (-Int.xor (n : ℤ) (-1)).toNat - (n : ℤ)|

end

end A052037.P6602053037221323520

/-! ## A052037.P10996374011214138763

`A052036(n+1)+1`
-/

namespace A052037.P10996374011214138763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052036 (n + 1) + 1

end

end A052037.P10996374011214138763

/-!
# A052038: First nonzero digit in the decimal expansion of 1/n.

The programs for A052038, the canonical program `A052038.P329603751737399557` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052038 has offset 1).

The definition of A052038 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A052038.P2236496237598907060

`floor(A127423(n+1)/(n+1)²)`
-/

namespace A052038.P2236496237598907060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A127423 (n + 1) : ℚ) / ((n + 1) ^ 2 : ℚ)⌋

end

end A052038.P2236496237598907060

namespace A052038

/-- `floor(A127423(n+1)/(n+1)²)` -/
def P2236496237598907060.Spec : Prop :=
  ∀ n, P2236496237598907060.a n = A052038 (n + 1)

end A052038

/-! ## A052038.P329603751737399557

`A000030(A033422(n+1))`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A052038

/-- `A000030(A033422(n+1))` -/
def P329603751737399557.Spec : Prop :=
  ∀ n, P329603751737399557.a n = A052038 (n + 1)

theorem P329603751737399557.correct : P329603751737399557.Spec := by
  intro n
  simp only [A052038, Nat.add_sub_cancel]

end A052038

/-! ## A052038.P11803085189674813098

`A000030(A061861(n+1))`
-/

namespace A052038.P11803085189674813098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 (A061861 (n + 1)).toNat

end

end A052038.P11803085189674813098

namespace A052038

/-- `A000030(A061861(n+1))` -/
def P11803085189674813098.Spec : Prop :=
  ∀ n, P11803085189674813098.a n = A052038 (n + 1)

end A052038

/-! ## A052038.P1974950162388376767

`A004086(floor(A061601(n)/(n+1))+1)`
-/

namespace A052038.P1974950162388376767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (⌊(A061601 n : ℚ) / (n + 1 : ℚ)⌋ + 1).toNat

end

end A052038.P1974950162388376767

namespace A052038

/-- `A004086(floor(A061601(n)/(n+1))+1)` -/
def P1974950162388376767.Spec : Prop :=
  ∀ n, P1974950162388376767.a n = A052038 (n + 1)

end A052038

/-! ## A052038.P14912712964445072053

`A004185(floor(A061601(n)/(n+1))+1)`
-/

namespace A052038.P14912712964445072053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004185 (⌊(A061601 n : ℚ) / (n + 1 : ℚ)⌋ + 1).toNat

end

end A052038.P14912712964445072053

namespace A052038

/-- `A004185(floor(A061601(n)/(n+1))+1)` -/
def P14912712964445072053.Spec : Prop :=
  ∀ n, P14912712964445072053.a n = A052038 (n + 1)

end A052038

/-! ## A052038.P1356432149333987757

`A000030(A259228(n+1))`
-/

namespace A052038.P1356432149333987757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 (A259228 (n + 1)).toNat

end

end A052038.P1356432149333987757

namespace A052038

/-- `A000030(A259228(n+1))` -/
def P1356432149333987757.Spec : Prop :=
  ∀ n, P1356432149333987757.a n = A052038 (n + 1)

end A052038

/-! ## A052038.P9342943919104983860

`A097326(3*3*(n+1)+n)`
-/

namespace A052038.P9342943919104983860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097326 (3 * (3 * (n + 1)) + n)

end

end A052038.P9342943919104983860

namespace A052038

/-- `A097326(3*3*(n+1)+n)` -/
def P9342943919104983860.Spec : Prop :=
  ∀ n, P9342943919104983860.a n = A052038 (n + 1)

end A052038

/-! ## A052038.P17620734228059890381

`A040163(10*A259228(n+1))`
-/

namespace A052038.P17620734228059890381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040163 (10 * A259228 (n + 1)).toNat

end

end A052038.P17620734228059890381

namespace A052038

/-- `A040163(10*A259228(n+1))` -/
def P17620734228059890381.Spec : Prop :=
  ∀ n, P17620734228059890381.a n = A052038 (n + 1)

end A052038

/-! ## A052038.P3573576083901026861

`A000030(A259229(10*(n+1)))`
-/

namespace A052038.P3573576083901026861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 (A259229 (10 * (n + 1))).toNat

end

end A052038.P3573576083901026861

namespace A052038

/-- `A000030(A259229(10*(n+1)))` -/
def P3573576083901026861.Spec : Prop :=
  ∀ n, P3573576083901026861.a n = A052038 (n + 1)

end A052038

/-! ## A052038.P14594520905428008523

`floor(A111708(A111708(n))/A111708(n)²)`
-/

namespace A052038.P14594520905428008523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A111708 (A111708 n).toNat : ℚ) / (A111708 n ^ 2 : ℚ)⌋

end

end A052038.P14594520905428008523

namespace A052038

/-- `floor(A111708(A111708(n))/A111708(n)²)` -/
def P14594520905428008523.Spec : Prop :=
  ∀ n, P14594520905428008523.a n = A052038 (n + 1)

end A052038

/-!
# A052040: Numbers whose square is zeroless.

The programs for A052040, there is no canonical definition to state claims against.
-/

/-! ## A052040.P1415919942125179315

`sqrt(A052041(n+1))`
-/

namespace A052040.P1415919942125179315
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A052041 (n + 1) : ℝ)

end

end A052040.P1415919942125179315

/-! ## A052040.P11409633452409792660

`lt[0, ∏{digits}[n², #]]`
-/

namespace A052040.P11409633452409792660
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f3 n)).map fun (x : ℕ) => x).prod

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A052040.P11409633452409792660

/-! ## A052040.P5359018251981819206

`eq[0, A086008(n)]`
-/

namespace A052040.P5359018251981819206
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086008 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A052040.P5359018251981819206

/-! ## A052040.P14499442338476172697

`lt[0, A053667(n)]`
-/

namespace A052040.P14499442338476172697
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053667 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A052040.P14499442338476172697

/-! ## A052040.P4435056095285201924

`lt[A086008(n), A057427(n)]`
-/

namespace A052040.P4435056095285201924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086008 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A052040.P4435056095285201924

/-! ## A052040.P2036393543855226074

`lt[A086008(n), 1/A003958(n+1)]`
-/

namespace A052040.P2036393543855226074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086008 n

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (A003958 (n + 1) : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n

end

end A052040.P2036393543855226074

/-! ## A052040.P9506901793368142465

`A000578(root(A052041(n+1), 2))/A052041(n+1)`
-/

namespace A052040.P9506901793368142465
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000578 (SequenceMachineLib.roundAway ((A052041 (n + 1) : ℝ) ^ (1 / (2 : ℝ)))).toNat : ℚ) / (A052041 (n + 1) : ℚ)

end

end A052040.P9506901793368142465

/-! ## A052040.P3891166266200397731

`lt[A086008(n), A001222(A086002(n+1))]`
-/

namespace A052040.P3891166266200397731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086008 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A086002 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A052040.P3891166266200397731

/-! ## A052040.P1556268159534898304

`lt[A086008(n), A001222(A086006(n+1))]`
-/

namespace A052040.P1556268159534898304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086008 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A086006 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A052040.P1556268159534898304

/-! ## A052040.P14724404232743514612

`lt[A086008(n), A008683(A086005(n+1))]`
-/

namespace A052040.P14724404232743514612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086008 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A086005 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A052040.P14724404232743514612

/-! ## A052040.P3748367799849363632

`eq[2*A000007(n), A000007(A053667(n))]`
-/

namespace A052040.P3748367799849363632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A053667 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A052040.P3748367799849363632

/-!
# A052041: Squares lacking the digit zero in their decimal expansion.

The programs for A052041, there is no canonical definition to state claims against.
-/

/-! ## A052041.P11752987102541678695

`A052040(n+1)²`
-/

namespace A052041.P11752987102541678695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052040 (n + 1) ^ 2

end

end A052041.P11752987102541678695

/-! ## A052041.P6242043936399190497

`A052040(n+1)^(2%A000040(n+1))`
-/

namespace A052041.P6242043936399190497
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052040 (n + 1) : ℚ) ^ (Int.tmod 2 (A000040 (n + 1)) : ℤ)

end

end A052041.P6242043936399190497

/-! ## A052041.P3754322529276091739

`A052040(A000027(n+1))*A052040(n+1)`
-/

namespace A052041.P3754322529276091739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052040 (A000027 (n + 1)).toNat * A052040 (n + 1)

end

end A052041.P3754322529276091739

/-! ## A052041.P8320653944017721397

`A052040(n+1)^A001222(A001358(n+1))`
-/

namespace A052041.P8320653944017721397
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052040 (n + 1) : ℚ) ^ (A001222 (A001358 (n + 1)).toNat : ℤ)

end

end A052041.P8320653944017721397

/-! ## A052041.P13888599245035289291

`A052040(n+1)^A020639(A001615(n+5))`
-/

namespace A052041.P13888599245035289291
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052040 (n + 1) : ℚ) ^ (A020639 (A001615 (n + 5)).toNat : ℤ)

end

end A052041.P13888599245035289291

/-! ## A052041.P606734190442577190

`A052040(n+1)^A000005(A000040(n+1))`
-/

namespace A052041.P606734190442577190
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052040 (n + 1) : ℚ) ^ (A000005 (A000040 (n + 1)).toNat : ℤ)

end

end A052041.P606734190442577190

/-! ## A052041.P3244823851764259691

`lt[0, ∏{digits}[n², #]]²`
-/

namespace A052041.P3244823851764259691
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f3 n)).map fun (x : ℕ) => x).prod

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n ^ 2

end

end A052041.P3244823851764259691

/-! ## A052041.P16868704155162584607

`eq[0, A086008(n)]²`
-/

namespace A052041.P16868704155162584607
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086008 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n ^ 2

end

end A052041.P16868704155162584607

/-! ## A052041.P16213062978494573827

`lt[0, A053667(n)]²`
-/

namespace A052041.P16213062978494573827
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053667 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n ^ 2

end

end A052041.P16213062978494573827

/-! ## A052041.P1234538543424292444

`A000290(A052040(2*(n+1)-(n+1)))`
-/

namespace A052041.P1234538543424292444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (A052040 (2 * (n + 1) - (n + 1))).toNat

end

end A052041.P1234538543424292444

/-! ## A052041.P12707725191743619983

`A052040(n+1)^A000005(A104824(n+1))`
-/

namespace A052041.P12707725191743619983
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052040 (n + 1) : ℚ) ^ (A000005 (A104824 (n + 1)).toNat : ℤ)

end

end A052041.P12707725191743619983

/-!
# A052042: Primes that lack the digit zero in the decimal expansion of their squares.

The programs for A052042, there is no canonical definition to state claims against.
-/

/-! ## A052042.P7287513080056712228

`sqrt(A052043(n+1))`
-/

namespace A052042.P7287513080056712228
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A052043 (n + 1) : ℝ)

end

end A052042.P7287513080056712228

/-! ## A052042.P16338192769900300492

`p?[A052040(n+1)]`
-/

namespace A052042.P16338192769900300492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A052042.P16338192769900300492

/-! ## A052042.P806597877271447998

`filter[A052040(n+1), A010051(#)]`
-/

namespace A052042.P806597877271447998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A052042.P806597877271447998

/-! ## A052042.P10418045141113623036

`∩[A000040(n+1), A052040(n+1)]`
-/

namespace A052042.P10418045141113623036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052040 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052042.P10418045141113623036

/-! ## A052042.P8147859375542094006

`∩[A052040(n+1), A182986(n+1)]`
-/

namespace A052042.P8147859375542094006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052042.P8147859375542094006

/-! ## A052042.P3123275157345007127

`filter[A052040(n+2), A080339(#)]`
-/

namespace A052042.P3123275157345007127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052040 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A052042.P3123275157345007127

/-! ## A052042.P1004716719395756128

`∩[A052040(n+1), A295425(n+1)]`
-/

namespace A052042.P1004716719395756128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295425 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052042.P1004716719395756128

/-!
# A052043: Squares of primes lacking the digit zero in their decimal expansion.

The programs for A052043, there is no canonical definition to state claims against.
-/

/-! ## A052043.P18305669313360748182

`A052042(n+1)²`
-/

namespace A052043.P18305669313360748182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052042 (n + 1) ^ 2

end

end A052043.P18305669313360748182

/-! ## A052043.P14604348557414031457

`A052042(n+1)^A020639(2*(n+2))`
-/

namespace A052043.P14604348557414031457
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052042 (n + 1) : ℚ) ^ (A020639 (2 * (n + 2)) : ℤ)

end

end A052043.P14604348557414031457

/-! ## A052043.P14776861596252804301

`A052042(∑[n+1]-∑[n])*A052042(n+1)`
-/

namespace A052043.P14776861596252804301
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052042 (∑ j ∈ Finset.range (n + 1), f1 j - ∑ j ∈ Finset.range (n + 1), f2 j) * A052042 (n + 1)

end

end A052043.P14776861596252804301

/-! ## A052043.P13681722333653060189

`A052042(n+1)^A000005(A006530(n+5))`
-/

namespace A052043.P13681722333653060189
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052042 (n + 1) : ℚ) ^ (A000005 (A006530 (n + 5)).toNat : ℤ)

end

end A052043.P13681722333653060189

/-! ## A052043.P809396980392915945

`A052042(n+1)^(A001221(A306220(n+1))+1)`
-/

namespace A052043.P809396980392915945
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052042 (n + 1) : ℚ) ^ (A001221 (A306220 (n + 1)).toNat + 1 : ℤ)

end

end A052043.P809396980392915945

/-! ## A052043.P729890818901764083

`A052042(n+1)^A000005(A000040(n+1))`
-/

namespace A052043.P729890818901764083
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052042 (n + 1) : ℚ) ^ (A000005 (A000040 (n + 1)).toNat : ℤ)

end

end A052043.P729890818901764083

/-! ## A052043.P894373804809593634

`∩[A001248(n+1), A195942(n+1)]`
-/

namespace A052043.P894373804809593634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195942 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052043.P894373804809593634

/-! ## A052043.P17978696709033663376

`∩[A064599(n+1), A195942(n+1)]`
-/

namespace A052043.P17978696709033663376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064599 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195942 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052043.P17978696709033663376

/-! ## A052043.P16012986404421446677

`∩[A076794(n+1), A195942(n+1)]`
-/

namespace A052043.P16012986404421446677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076794 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195942 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052043.P16012986404421446677

/-! ## A052043.P1393146860206981943

`A052042(n+1)^A000005(A052042(n+2))`
-/

namespace A052043.P1393146860206981943
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052042 (n + 1) : ℚ) ^ (A000005 (A052042 (n + 2)).toNat : ℤ)

end

end A052043.P1393146860206981943

/-! ## A052043.P15817330107830360941

`A052042(n+1)^A328400(A251089(n+4))`
-/

namespace A052043.P15817330107830360941
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052042 (n + 1) : ℚ) ^ (A328400 (A251089 (n + 4)).toNat : ℤ)

end

end A052043.P15817330107830360941

/-! ## A052043.P16564303251431424678

`∩[A033476(n), A195942(n+1)]`
-/

namespace A052043.P16564303251431424678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033476 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195942 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052043.P16564303251431424678

/-! ## A052043.P11640770716172509244

`∩[A057602(n+1), A195942(n+1)]`
-/

namespace A052043.P11640770716172509244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057602 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195942 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052043.P11640770716172509244

/-! ## A052043.P14478365013660345407

`∩[A068999(n+1), A195942(n+1)]`
-/

namespace A052043.P14478365013660345407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068999 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195942 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052043.P14478365013660345407

/-! ## A052043.P15901233299967359698

`p?[A052040(n+1)]²`
-/

namespace A052043.P15901233299967359698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) ^ 2

end

end A052043.P15901233299967359698

/-! ## A052043.P17336082514500249439

`∩[A052041(n+1), A033476(n)]`
-/

namespace A052043.P17336082514500249439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052041 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033476 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052043.P17336082514500249439

/-! ## A052043.P4987713639882278102

`∩[A052041(n+1), A079142(n)]`
-/

namespace A052043.P4987713639882278102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052041 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079142 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052043.P4987713639882278102

/-! ## A052043.P17320855883840962842

`∩[A001248(n+1), A052041(n+1)]`
-/

namespace A052043.P17320855883840962842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052041 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052043.P17320855883840962842

/-! ## A052043.P14996257587001634621

`∩[A052041(n+1), A053810(n+1)]`
-/

namespace A052043.P14996257587001634621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052041 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053810 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052043.P14996257587001634621

/-!
# A052044: Numbers k such that k^3 lacks the digit zero in its decimal expansion.

The programs for A052044, there is no canonical definition to state claims against.
-/

/-! ## A052044.P12633634489292560830

`A052045(n+1)^(1/3)`
-/

namespace A052044.P12633634489292560830
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A052045 (n + 1) : ℝ) ^ ((1 : ℚ) / 3 : ℝ)

end

end A052044.P12633634489292560830

/-! ## A052044.P5623181904236006545

`root(A052045(n+1), 3)`
-/

namespace A052044.P5623181904236006545
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A052045 (n + 1) : ℝ) ^ (1 / (3 : ℝ))

end

end A052044.P5623181904236006545

/-! ## A052044.P2273621243959316679

`lt[0, ∏{digits}[n^3, #]]`
-/

namespace A052044.P2273621243959316679
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f3 n)).map fun (x : ℕ) => x).prod

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A052044.P2273621243959316679

/-! ## A052044.P988185342953923777

`eq[0, A269250(n)]`
-/

namespace A052044.P988185342953923777
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269250 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A052044.P988185342953923777

/-! ## A052044.P2602268324760526605

`lt[0, A053668(n)]`
-/

namespace A052044.P2602268324760526605
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053668 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A052044.P2602268324760526605

/-! ## A052044.P13091279967413441063

`lt[0, A333206(n)]`
-/

namespace A052044.P13091279967413441063
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333206 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A052044.P13091279967413441063

/-! ## A052044.P7896359683302955229

`record[gcd(A038608(n), A269250(n))]`
-/

namespace A052044.P7896359683302955229
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A038608 n) (A269250 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A052044.P7896359683302955229

/-! ## A052044.P11332328364701056428

`lt[A093074(n+1)*A269250(n), 2]`
-/

namespace A052044.P11332328364701056428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093074 (n + 1) * A269250 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A052044.P11332328364701056428

/-! ## A052044.P17520072112976644704

`lt[A269250(n), A086436(A093074(n+1))]`
-/

namespace A052044.P17520072112976644704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269250 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086436 (A093074 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A052044.P17520072112976644704

/-! ## A052044.P11530439277367796231

`lt[A269250(n), A000034(2*n)]`
-/

namespace A052044.P11530439277367796231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269250 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A052044.P11530439277367796231

/-! ## A052044.P15148553207796782267

`lt[A269250(n), A001222(A269256(n+1))]`
-/

namespace A052044.P15148553207796782267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269250 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A269256 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A052044.P15148553207796782267

/-! ## A052044.P15579273396297130646

`lt[A269250(n), n/A005517(n+1)]`
-/

namespace A052044.P15579273396297130646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269250 n

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A005517 (n + 1) : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n

end

end A052044.P15579273396297130646

/-! ## A052044.P2858498374808528212

`lt[A005517(n+4)*A269250(n), 2]`
-/

namespace A052044.P2858498374808528212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005517 (n + 4) * A269250 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A052044.P2858498374808528212

/-!
# A052045: Cubes lacking the digit zero in their decimal expansion.

The programs for A052045, there is no canonical definition to state claims against.
-/

/-! ## A052045.P2778822777873762443

`A052044(n+1)^3`
-/

namespace A052045.P2778822777873762443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052044 (n + 1) ^ 3

end

end A052045.P2778822777873762443

/-! ## A052045.P12959520652665102555

`(A052044(n+1)%A000040(n+1))²*A052044(n+1)`
-/

namespace A052045.P12959520652665102555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A052044 (n + 1)) (A000040 (n + 1)) ^ 2 * A052044 (n + 1)

end

end A052045.P12959520652665102555

/-! ## A052045.P10232640363601149701

`A052044(n+1)²%A030078(n+1)*A052044(n+1)`
-/

namespace A052045.P10232640363601149701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A052044 (n + 1) ^ 2) (A030078 (n + 1)) * A052044 (n + 1)

end

end A052045.P10232640363601149701

/-! ## A052045.P18339622495043283598

`eq[0, A269250(n)]^3`
-/

namespace A052045.P18339622495043283598
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269250 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n ^ 3

end

end A052045.P18339622495043283598

/-! ## A052045.P7285384566857208883

`record[(n+1)*gcd(n+1, A269250(n+1))²]`
-/

namespace A052045.P7285384566857208883
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * Int.gcd (n + 1 : ℤ) (A269250 (n + 1)) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A052045.P7285384566857208883

/-! ## A052045.P1691177502194631482

`A000578(A052044(n+1))`
-/

namespace A052045.P1691177502194631482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (A052044 (n + 1)).toNat

end

end A052045.P1691177502194631482

/-!
# A052046: Squares whose digits occur with the same frequency.

The programs for A052046, there is no canonical definition to state claims against.
-/

/-! ## A052046.P10843766657975108875

`∩[A266279(n+1), n²]`
-/

namespace A052046.P10843766657975108875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266279 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A052046.P10843766657975108875

/-! ## A052046.P10944875137671616287

`∩[A000290(n), A266279(n+1)]`
-/

namespace A052046.P10944875137671616287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266279 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052046.P10944875137671616287

/-! ## A052046.P9274803530196538918

`record[gcd(n², A320486(n²))]`
-/

namespace A052046.P9274803530196538918
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n ^ 2 : ℤ) (A320486 (n ^ 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A052046.P9274803530196538918

/-! ## A052046.P1622613403943996456

`eq[A114848(n), A178788(n)]`
-/

namespace A052046.P1622613403943996456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114848 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178788 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A052046.P1622613403943996456

/-! ## A052046.P12037689104399325820

`eq[A116424(n), A178788(n)]`
-/

namespace A052046.P12037689104399325820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116424 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178788 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A052046.P12037689104399325820

/-! ## A052046.P223752915827181001

`A154955(A074346(n+1))+A078255(n+1)`
-/

namespace A052046.P223752915827181001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154955 (A074346 (n + 1)).toNat + A078255 (n + 1)

end

end A052046.P223752915827181001

/-! ## A052046.P13172761415198145746

`A209229(A327108(n+3))+record[A320486(n²)]`
-/

namespace A052046.P13172761415198145746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320486 (n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209229 (A327108 (n + 3)).toNat + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A052046.P13172761415198145746

/-! ## A052046.P10317872134545498169

`record[A137564(n²)]%A225565(A052085(n+1))`
-/

namespace A052046.P10317872134545498169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137564 (n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A225565 (A052085 (n + 1)).toNat)

end

end A052046.P10317872134545498169

/-! ## A052046.P16444056221751738911

`eq[A078990(n), A178788(n)]`
-/

namespace A052046.P16444056221751738911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078990 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178788 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A052046.P16444056221751738911

/-! ## A052046.P12850481575558527609

`eq[A135328(n), A178788(n)]`
-/

namespace A052046.P12850481575558527609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135328 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178788 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A052046.P12850481575558527609

/-!
# A052047: Numbers k such that the digits of k^3 occur with the same frequency.

The programs for A052047, there is no canonical definition to state claims against.
-/

/-! ## A052047.P12123031677136178359

`A052048(n+1)^(1/3)`
-/

namespace A052047.P12123031677136178359
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A052048 (n + 1) : ℝ) ^ ((1 : ℚ) / 3 : ℝ)

end

end A052047.P12123031677136178359

/-! ## A052047.P10717316541293872880

`A100196(ceil(sqrt(A052048(n+1))))`
-/

namespace A052047.P10717316541293872880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 ⌈Real.sqrt (A052048 (n + 1) : ℝ)⌉.toNat

end

end A052047.P10717316541293872880

/-! ## A052047.P17037927949962952420

`lt[A246591(n), A071724(A084740(n+2))]`
-/

namespace A052047.P17037927949962952420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246591 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071724 (A084740 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A052047.P17037927949962952420

/-! ## A052047.P5287533258813150340

`lt[A111287(n+1), A283641(A343662(3*n+2))]`
-/

namespace A052047.P5287533258813150340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111287 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283641 (A343662 (3 * n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A052047.P5287533258813150340

/-! ## A052047.P11483514443980145316

`lt[A244415(A066186(n+1)), 2]`
-/

namespace A052047.P11483514443980145316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244415 (A066186 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A052047.P11483514443980145316

/-!
# A052048: Cubes whose digits occur with the same frequency.

The programs for A052048, there is no canonical definition to state claims against.
-/

/-! ## A052048.P13772375123957047976

`A052047(n+1)^3`
-/

namespace A052048.P13772375123957047976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052047 (n + 1) ^ 3

end

end A052048.P13772375123957047976

/-! ## A052048.P8552600280278934138

`A052047(round(sqrt(n²+1))+1)²*A052047(n+1)`
-/

namespace A052048.P8552600280278934138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052047 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ)) + 1).toNat ^ 2 * A052047 (n + 1)

end

end A052048.P8552600280278934138

/-! ## A052048.P15824542363453096399

`A000578(A052047(n+1))`
-/

namespace A052048.P15824542363453096399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (A052047 (n + 1)).toNat

end

end A052048.P15824542363453096399

/-! ## A052048.P186878397238142695

`A000093(A052047(n+1)²)`
-/

namespace A052048.P186878397238142695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000093 (A052047 (n + 1) ^ 2).toNat

end

end A052048.P186878397238142695

/-! ## A052048.P4221254131820924572

`comp[A161580(A059892(n+1)+A081326(n+1))]^3`
-/

namespace A052048.P4221254131820924572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161580 (A059892 (n + 1) + A081326 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n ^ 3

end

end A052048.P4221254131820924572

/-!
# A052049: a(n)^2 is a square whose digits occur with an equal minimum frequency of 2.

The programs for A052049, there is no canonical definition to state claims against.
-/

/-! ## A052049.P8454362457364073165

`sqrt(A052050(n+1))`
-/

namespace A052049.P8454362457364073165
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A052050 (n + 1) : ℝ)

end

end A052049.P8454362457364073165

/-! ## A052049.P6690667855688394870

`root(A052050(n+1), A001316(A001316(n)))`
-/

namespace A052049.P6690667855688394870
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A052050 (n + 1) : ℝ) ^ (1 / (A001316 (A001316 n).toNat : ℝ))

end

end A052049.P6690667855688394870

/-! ## A052049.P388613066212246027

`A000007(n+1)+root(A052050(n+1), 2)`
-/

namespace A052049.P388613066212246027
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A000007 (n + 1) : ℝ) + (A052050 (n + 1) : ℝ) ^ (1 / (2 : ℝ))

end

end A052049.P388613066212246027

/-! ## A052049.P573625095275118047

`root(A052050(n+1), A000034(2*n+1))`
-/

namespace A052049.P573625095275118047
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A052050 (n + 1) : ℝ) ^ (1 / (A000034 (2 * n + 1) : ℝ))

end

end A052049.P573625095275118047

/-! ## A052049.P11538836871237216838

`root(A052050(n+1), 2)-A000007(A066006(n))`
-/

namespace A052049.P11538836871237216838
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A052050 (n + 1) : ℝ) ^ (1 / (2 : ℝ)) - (A000007 (A066006 n).toNat : ℝ)

end

end A052049.P11538836871237216838

/-! ## A052049.P5374052356126757018

`A000027(root(A052050(n+1), 2))`
-/

namespace A052049.P5374052356126757018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.roundAway ((A052050 (n + 1) : ℝ) ^ (1 / (2 : ℝ)))).toNat

end

end A052049.P5374052356126757018

/-! ## A052049.P12269832011947668256

`root(A052050(n+1), 2)-A142150(A046623(n+1))`
-/

namespace A052049.P12269832011947668256
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A052050 (n + 1) : ℝ) ^ (1 / (2 : ℝ)) - (A142150 (A046623 (n + 1)).toNat : ℝ)

end

end A052049.P12269832011947668256

/-! ## A052049.P5512248502881356870

`root(A052050(n+1), 2)-A142150(A046622(n+1))`
-/

namespace A052049.P5512248502881356870
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A052050 (n + 1) : ℝ) ^ (1 / (2 : ℝ)) - (A142150 (A046622 (n + 1)).toNat : ℝ)

end

end A052049.P5512248502881356870

/-! ## A052049.P4360170236891789503

`root(A052050(n+1), 2)*A014963(A064971(n+1))`
-/

namespace A052049.P4360170236891789503
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A052050 (n + 1) : ℝ) ^ (1 / (2 : ℝ)) * (A014963 (A064971 (n + 1)).toNat : ℝ)

end

end A052049.P4360170236891789503

/-! ## A052049.P6431249948183464472

`A142150(A104177(n+1))+root(A052050(n+1), 2)`
-/

namespace A052049.P6431249948183464472
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A142150 (A104177 (n + 1)).toNat : ℝ) + (A052050 (n + 1) : ℝ) ^ (1 / (2 : ℝ))

end

end A052049.P6431249948183464472

/-!
# A052050: Squares whose digits occur with an equal minimal frequency of 2.

The programs for A052050, there is no canonical definition to state claims against.
-/

/-! ## A052050.P9105857486468443523

`A052049(n+1)²`
-/

namespace A052050.P9105857486468443523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052049 (n + 1) ^ 2

end

end A052050.P9105857486468443523

/-! ## A052050.P13957667442040577310

`A052049(n+1)^A020639(2*(n+1))`
-/

namespace A052050.P13957667442040577310
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052049 (n + 1) : ℚ) ^ (A020639 (2 * (n + 1)) : ℤ)

end

end A052050.P13957667442040577310

/-! ## A052050.P13083774902878562310

`A052049(A000027(n+1))*A052049(n+1)`
-/

namespace A052050.P13083774902878562310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052049 (A000027 (n + 1)).toNat * A052049 (n + 1)

end

end A052050.P13083774902878562310

/-! ## A052050.P6312110631642375895

`A052049(n+1)^A000005(A000040(n+1))`
-/

namespace A052050.P6312110631642375895
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052049 (n + 1) : ℚ) ^ (A000005 (A000040 (n + 1)).toNat : ℤ)

end

end A052050.P6312110631642375895

/-! ## A052050.P13479632502910764198

`A052049(n+1)^A000005(A058853(n+1))`
-/

namespace A052050.P13479632502910764198
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052049 (n + 1) : ℚ) ^ (A000005 (A058853 (n + 1)).toNat : ℤ)

end

end A052050.P13479632502910764198

/-! ## A052050.P7999398895201919679

`A052049(n+1)^A001222(A100484(n+1))`
-/

namespace A052050.P7999398895201919679
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052049 (n + 1) : ℚ) ^ (A001222 (A100484 (n + 1)).toNat : ℤ)

end

end A052050.P7999398895201919679

/-! ## A052050.P5444570821535362697

`A052049(n+1)^A000034(4*n+1)`
-/

namespace A052050.P5444570821535362697
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052049 (n + 1) : ℚ) ^ (A000034 (4 * n + 1) : ℤ)

end

end A052050.P5444570821535362697

/-!
# A052051: Numbers k such that k^3 is a cube whose digits occur with an equal minimum frequency of 2.

The programs for A052051, there is no canonical definition to state claims against.
-/

/-! ## A052051.P2399276625466984363

`root(A052052(n+1), 3)`
-/

namespace A052051.P2399276625466984363
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A052052 (n + 1) : ℝ) ^ (1 / (3 : ℝ))

end

end A052051.P2399276625466984363

/-!
# A052052: Cubes whose digits occur with an equal minimal frequency of 2.

The programs for A052052, there is no canonical definition to state claims against.
-/

/-! ## A052052.P17881106518072814172

`A052051(n+1)^3`
-/

namespace A052052.P17881106518072814172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052051 (n + 1) ^ 3

end

end A052052.P17881106518072814172

/-! ## A052052.P12439563055657769250

`A000578(A052051(n+1))`
-/

namespace A052052.P12439563055657769250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (A052051 (n + 1)).toNat

end

end A052052.P12439563055657769250

/-!
# A052053: Digits of the prime factors of composite a(n) are not shared.

The programs for A052053, there is no canonical definition to state claims against.
-/

/-! ## A052053.P4089325706400637319

`A120944(∑[A109004(A060818(n))])`
-/

namespace A052053.P4089325706400637319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109004 (A060818 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120944 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A052053.P4089325706400637319

/-! ## A052053.P14050891686958101579

`record[A120944(n+1)*A156593(A156582(n))]`
-/

namespace A052053.P14050891686958101579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120944 (n + 1) * A156593 (A156582 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A052053.P14050891686958101579

/-! ## A052053.P13989738319741884833

`record[A156593(A156582(n))*A344585(n+1)]`
-/

namespace A052053.P13989738319741884833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156593 (A156582 n).toNat * A344585 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A052053.P13989738319741884833

/-! ## A052053.P13569045078516272439

`A344585(A330236(n+1)%A147306(n+1))`
-/

namespace A052053.P13569045078516272439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344585 (Int.tmod (A330236 (n + 1)) (A147306 (n + 1))).toNat

end

end A052053.P13569045078516272439

/-! ## A052053.P9371652153472610201

`A120944(lt[A239240(n), n])`
-/

namespace A052053.P9371652153472610201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239240 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120944 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A052053.P9371652153472610201

/-!
# A052055: Positions in both Pi and e indicate a common digit.

The programs for A052055, there is no canonical definition to state claims against.
-/

/-! ## A052055.P17138650667597771870

`A068394(n+1)+1`
-/

namespace A052055.P17138650667597771870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068394 (n + 1) + 1

end

end A052055.P17138650667597771870

/-! ## A052055.P14807753070527570656

`eq[A000796(n), A001113(n)]+1`
-/

namespace A052055.P14807753070527570656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001113 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A052055.P14807753070527570656

/-! ## A052055.P16792883568830641626

`eq[0, A187747(n)]+1`
-/

namespace A052055.P16792883568830641626
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187747 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A052055.P16792883568830641626

/-! ## A052055.P15832228703160558711

`A020725(A068394(n+1))`
-/

namespace A052055.P15832228703160558711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A068394 (n + 1)).toNat

end

end A052055.P15832228703160558711

/-! ## A052055.P12546718156135852580

`eq[A228239(n+1), A231325(n+1)]+1`
-/

namespace A052055.P12546718156135852580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228239 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231325 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A052055.P12546718156135852580

/-! ## A052055.P8100847769743337310

`eq[A001355(2*n+1), A001355(2*(n+1))]+1`
-/

namespace A052055.P8100847769743337310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001355 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001355 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A052055.P8100847769743337310

/-!
# A052057: Numbers k such that the decimal expansion of 2^k contains no palindromic substring except single digits.

The programs for A052057, there is no canonical definition to state claims against.
-/

/-! ## A052057.P7031017437245061833

`lt[A046260(n), 10]`
-/

namespace A052057.P7031017437245061833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046260 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A052057.P7031017437245061833

/-! ## A052057.P2993211006112662137

`eq[A046260(n)%A029742(n+1), A046260(n)]`
-/

namespace A052057.P2993211006112662137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A046260 n) (A029742 (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046260 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A052057.P2993211006112662137

/-! ## A052057.P82884998855357607

`lt[A310692(n), A310676(n+3)]`
-/

namespace A052057.P82884998855357607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310692 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310676 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A052057.P82884998855357607

/-! ## A052057.P16453821647249493294

`lt[A313973(n), A315393(n+3)]`
-/

namespace A052057.P16453821647249493294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313973 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315393 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A052057.P16453821647249493294

/-! ## A052057.P2813832986776649198

`lt[A314793(n+1), A314653(n+4)]`
-/

namespace A052057.P2813832986776649198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314793 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314653 (n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A052057.P2813832986776649198

/-!
# A052058: Numbers k such that the largest palindromic substring (without leading zeros) of 2^k is a repdigit of minimum length 2.

The programs for A052058, there is no canonical definition to state claims against.
-/

/-! ## A052058.P7903748875479196867

`lt[A294224(n+1), A294208(A294232(n+3))]`
-/

namespace A052058.P7903748875479196867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294224 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294208 (A294232 (n + 3)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A052058.P7903748875479196867

/-!
# A052061: Numbers k such that decimal expansion of k^2 contains no palindromic substring except single digits.

The programs for A052061, there is no canonical definition to state claims against.
-/

/-! ## A052061.P7568970994138954248

`sqrt(A052062(n+1))`
-/

namespace A052061.P7568970994138954248
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A052062 (n + 1) : ℝ)

end

end A052061.P7568970994138954248

/-! ## A052061.P1095227661585752723

`A056926(A052062(n+1)+char[1])`
-/

namespace A052061.P1095227661585752723
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 (A052062 (n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)).toNat

end

end A052061.P1095227661585752723

/-! ## A052061.P4053857527525820020

`A000194(A052062(n+1)+n)`
-/

namespace A052061.P4053857527525820020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A052062 (n + 1) + (n : ℤ)).toNat

end

end A052061.P4053857527525820020

/-! ## A052061.P10075983207971892629

`A000196(A052062(n+1)+n)`
-/

namespace A052061.P10075983207971892629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A052062 (n + 1) + (n : ℤ)).toNat

end

end A052061.P10075983207971892629

/-!
# A052062: Squares containing no palindromic substring except single digits.

The programs for A052062, there is no canonical definition to state claims against.
-/

/-! ## A052062.P5450700064983037787

`A052061(n+1)²`
-/

namespace A052062.P5450700064983037787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052061 (n + 1) ^ 2

end

end A052062.P5450700064983037787

/-! ## A052062.P12955687909389515125

`A052061((n+1)^2/(n+1))^2`
-/

namespace A052062.P12955687909389515125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052061 (SequenceMachineLib.roundAway (((n + 1) ^ 2 : ℚ) / (n + 1 : ℚ))).toNat ^ 2

end

end A052062.P12955687909389515125

/-! ## A052062.P17737828286432590121

`(A052061(n+1)^2)%A052089(n+1)`
-/

namespace A052062.P17737828286432590121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A052061 (n + 1) ^ 2) (A052089 (n + 1))

end

end A052062.P17737828286432590121

/-! ## A052062.P1353282332482669719

`A052061(A000027(n+1))*A052061(n+1)`
-/

namespace A052062.P1353282332482669719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052061 (A000027 (n + 1)).toNat * A052061 (n + 1)

end

end A052062.P1353282332482669719

/-! ## A052062.P18424895927392151070

`(A052061(n+1)+A000007(n))*A052061(n+1)`
-/

namespace A052062.P18424895927392151070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A052061 (n + 1) + A000007 n) * A052061 (n + 1)

end

end A052062.P18424895927392151070

/-! ## A052062.P816945520955139516

`A000290(A052061(n+1)%∑[n+1])`
-/

namespace A052062.P816945520955139516
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (Int.tmod (A052061 (n + 1)) ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A052062.P816945520955139516

/-! ## A052062.P1675459568241116882

`A000290(A052061(2*(n+1)-(n+1)))`
-/

namespace A052062.P1675459568241116882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (A052061 (2 * (n + 1) - (n + 1))).toNat

end

end A052062.P1675459568241116882

/-! ## A052062.P1050090217341874621

`A000290(A052061(n+1))%A023545(n+1)`
-/

namespace A052062.P1050090217341874621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000290 (A052061 (n + 1)).toNat) (A023545 (n + 1))

end

end A052062.P1050090217341874621

/-! ## A052062.P574112215829082782

`A002620(2*A052061(n+1))`
-/

namespace A052062.P574112215829082782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (2 * A052061 (n + 1)).toNat

end

end A052062.P574112215829082782

/-! ## A052062.P5211617243578713565

`A008363(5*A052061(n+1))`
-/

namespace A052062.P5211617243578713565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008363 (5 * A052061 (n + 1)).toNat

end

end A052062.P5211617243578713565

/-!
# A052063: Numbers k such that the decimal expansion of k^3 contains no palindromic substring except single digits.

The programs for A052063, there is no canonical definition to state claims against.
-/

/-! ## A052063.P1214651458726122323

`A052064(n+1)^(1/3)`
-/

namespace A052063.P1214651458726122323
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A052064 (n + 1) : ℝ) ^ ((1 : ℚ) / 3 : ℝ)

end

end A052063.P1214651458726122323

/-! ## A052063.P5035958851223031075

`A100196(ceil(sqrt(A052064(n+1))))`
-/

namespace A052063.P5035958851223031075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 ⌈Real.sqrt (A052064 (n + 1) : ℝ)⌉.toNat

end

end A052063.P5035958851223031075

/-! ## A052063.P10817417770151130989

`lt[A084938(A327812(n+1)), A327804(3*n+4)]`
-/

namespace A052063.P10817417770151130989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084938 (A327812 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327804 (3 * n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A052063.P10817417770151130989

/-! ## A052063.P5930859969948447871

`lt[Δ[A220523(n)], A220517(3*(n+1))]`
-/

namespace A052063.P5930859969948447871
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220523 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220517 (3 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A052063.P5930859969948447871

/-! ## A052063.P6263168250854913924

`record[A008619(n)-A173493(A199859(n))]`
-/

namespace A052063.P6263168250854913924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n - A173493 (A199859 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A052063.P6263168250854913924

/-!
# A052064: Cubes containing no palindromic substring except single digits.

The programs for A052064, there is no canonical definition to state claims against.
-/

/-! ## A052064.P9566713265372314656

`A052063(n+1)^3`
-/

namespace A052064.P9566713265372314656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052063 (n + 1) ^ 3

end

end A052064.P9566713265372314656

/-! ## A052064.P283551774138281888

`A000578(A052063(n+1))`
-/

namespace A052064.P283551774138281888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (A052063 (n + 1)).toNat

end

end A052064.P283551774138281888

/-! ## A052064.P10864173374959467154

`A034828(2*A052063(n+1))`
-/

namespace A052064.P10864173374959467154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034828 (2 * A052063 (n + 1)).toNat

end

end A052064.P10864173374959467154

/-! ## A052064.P13659824682045281309

`A081276(2*A052063(n+1))`
-/

namespace A052064.P13659824682045281309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081276 (2 * A052063 (n + 1)).toNat

end

end A052064.P13659824682045281309

/-! ## A052064.P10160784220595612459

`A034828(A052063(n+1)+A052063(n+1))`
-/

namespace A052064.P10160784220595612459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034828 (A052063 (n + 1) + A052063 (n + 1)).toNat

end

end A052064.P10160784220595612459

/-!
# A052065: a(n) is the first square root greater than 10^n such that a(n)^2 is a palfree square (palfree = contains no palindromic substring except single digits).

The programs for A052065, there is no canonical definition to state claims against.
-/

/-! ## A052065.P5840646932344287663

`sqrt(A052066(n+1))`
-/

namespace A052065.P5840646932344287663
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A052066 (n + 1) : ℝ)

end

end A052065.P5840646932344287663

/-!
# A052066: Palfree squares whose root is the smallest possible greater than 10^n (palfree = contains no palindromic substring except single digits).

The programs for A052066, there is no canonical definition to state claims against.
-/

/-! ## A052066.P1713481380805439692

`A052065(n+1)²`
-/

namespace A052066.P1713481380805439692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052065 (n + 1) ^ 2

end

end A052066.P1713481380805439692

/-! ## A052066.P10555761144231505810

`A052065(n+1)^A000005(A031924(n+1))`
-/

namespace A052066.P10555761144231505810
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052065 (n + 1) : ℚ) ^ (A000005 (A031924 (n + 1)).toNat : ℤ)

end

end A052066.P10555761144231505810

/-! ## A052066.P16392641303485247013

`A052065(n+1)^A000005(A049097(n+1))`
-/

namespace A052066.P16392641303485247013
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052065 (n + 1) : ℚ) ^ (A000005 (A049097 (n + 1)).toNat : ℤ)

end

end A052066.P16392641303485247013

/-! ## A052066.P10323320909749974706

`A052065(n+1)^A000005(A052032(n+1))`
-/

namespace A052066.P10323320909749974706
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052065 (n + 1) : ℚ) ^ (A000005 (A052032 (n + 1)).toNat : ℤ)

end

end A052066.P10323320909749974706

/-! ## A052066.P10640698551901310171

`A052065(n+1)^A000005(A052085(n+1))`
-/

namespace A052066.P10640698551901310171
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052065 (n + 1) : ℚ) ^ (A000005 (A052085 (n + 1)).toNat : ℤ)

end

end A052066.P10640698551901310171

/-!
# A052067: a(n) is the first cube root greater than 10^n such that a(n)^3 is a palfree cube (palfree = contains no palindromic substring except single digits).

The programs for A052067, there is no canonical definition to state claims against.
-/

/-! ## A052067.P4168455149020007946

`root(A052068(n+1), 3)`
-/

namespace A052067.P4168455149020007946
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A052068 (n + 1) : ℝ) ^ (1 / (3 : ℝ))

end

end A052067.P4168455149020007946

/-!
# A052068: Palfree cubes whose root is the smallest possible greater than 10^n (palfree = contains no palindromic substring except single digits).

The programs for A052068, there is no canonical definition to state claims against.
-/

/-! ## A052068.P9914816045381331475

`A052067(n+1)^3`
-/

namespace A052068.P9914816045381331475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052067 (n + 1) ^ 3

end

end A052068.P9914816045381331475

/-!
# A052069: a(n)^2 is the smallest square whose digits occur with the same frequency n.

The programs for A052069, there is no canonical definition to state claims against.
-/

/-! ## A052069.P18382351244184098427

`sqrt(A052070(n+1))`
-/

namespace A052069.P18382351244184098427
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A052070 (n + 1) : ℝ)

end

end A052069.P18382351244184098427

/-! ## A052069.P360844499188198418

`A052070(n+1)^2^A008683(A000040(n+1))`
-/

namespace A052069.P360844499188198418
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A052070 (n + 1) : ℝ) ^ ((2 : ℚ) ^ (A008683 (A000040 (n + 1)).toNat : ℤ) : ℝ)

end

end A052069.P360844499188198418

/-!
# A052070: Smallest square all of whose digits occur with the same frequency n.

The programs for A052070, there is no canonical definition to state claims against.
-/

/-! ## A052070.P1096500280687063347

`A052069(n+1)²`
-/

namespace A052070.P1096500280687063347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052069 (n + 1) ^ 2

end

end A052070.P1096500280687063347

/-! ## A052070.P17812777708712321266

`A052069(n+1)^A321126(∑{p}[n+1, gcd(n, #)])`
-/

namespace A052070.P17812777708712321266
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052069 (n + 1) : ℚ) ^ (A321126 (∑ p ∈ Nat.primeFactors (f1 n), Nat.gcd n p) : ℤ)

end

end A052070.P17812777708712321266

/-! ## A052070.P4466953992384170602

`A052069(n+1)^A000005(A008327(n)+1)`
-/

namespace A052070.P4466953992384170602
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052069 (n + 1) : ℚ) ^ (A000005 (A008327 n + 1).toNat : ℤ)

end

end A052070.P4466953992384170602

/-! ## A052070.P12923070850116484664

`A052069(n+1)^A000005(A047996(n)+1)`
-/

namespace A052070.P12923070850116484664
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052069 (n + 1) : ℚ) ^ (A000005 (A047996 n + 1).toNat : ℤ)

end

end A052070.P12923070850116484664

/-!
# A052072: 

The programs for A052072, there is no canonical definition to state claims against.
-/

/-! ## A052072.P7547224407717402519

`A052071(n+1)^3`
-/

namespace A052072.P7547224407717402519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052071 (n + 1) ^ 3

end

end A052072.P7547224407717402519

/-!
# A052073: Primes p with the property that nextprime(p) is a substring of p^2.

The programs for A052073, there is no canonical definition to state claims against.
-/

/-! ## A052073.P13337561484296184242

`sqrt(A052074(n+1))`
-/

namespace A052073.P13337561484296184242
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A052074 (n + 1) : ℝ)

end

end A052073.P13337561484296184242

/-! ## A052073.P13468657993574389415

`root(A052074(n+1), Δ[A062028(n)])`
-/

namespace A052073.P13468657993574389415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062028 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A052074 (n + 1) : ℝ) ^ (1 / (f1 (n + 1) - f1 n : ℝ))

end

end A052073.P13468657993574389415

/-! ## A052073.P9107033895012356408

`root(A052074(n+1), p?[A089052(n)])`
-/

namespace A052073.P9107033895012356408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089052 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A052074 (n + 1) : ℝ) ^ (1 / (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℝ))

end

end A052073.P9107033895012356408

/-! ## A052073.P13399872439403010277

`root(A052074(n+1), p?[A178334(n)])`
-/

namespace A052073.P13399872439403010277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A052074 (n + 1) : ℝ) ^ (1 / (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℝ))

end

end A052073.P13399872439403010277

/-! ## A052073.P14271557569440090966

`root(A052074(n+1), A250261(n)+1)`
-/

namespace A052073.P14271557569440090966
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A052074 (n + 1) : ℝ) ^ (1 / (A250261 n + 1 : ℝ))

end

end A052073.P14271557569440090966

/-!
# A052074: Squares of primes p^2 with the property that nextprime(p) is a substring of p^2.

The programs for A052074, there is no canonical definition to state claims against.
-/

/-! ## A052074.P12960931957588933561

`A052073(n+1)²`
-/

namespace A052074.P12960931957588933561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052073 (n + 1) ^ 2

end

end A052074.P12960931957588933561

/-! ## A052074.P13975964970826774511

`A052073(n+1)^A000005(record[A014963(n+2)])`
-/

namespace A052074.P13975964970826774511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052073 (n + 1) : ℚ) ^ (A000005 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat : ℤ)

end

end A052074.P13975964970826774511

/-! ## A052074.P52395257947287272

`A052073(n+1)^A000005(record[A000010(n+1)+1])`
-/

namespace A052074.P52395257947287272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052073 (n + 1) : ℚ) ^ (A000005 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat : ℤ)

end

end A052074.P52395257947287272

/-! ## A052074.P5801197023533726677

`A052073(n+1)^A000005(eq[1, A001222(n+1)]+1)`
-/

namespace A052074.P5801197023533726677
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052073 (n + 1) : ℚ) ^ (A000005 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) : ℤ)

end

end A052074.P5801197023533726677

/-! ## A052074.P646334581962519295

`A052073(n+1)^A000005(comp[A018252(n+1)-1]+1)`
-/

namespace A052074.P646334581962519295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1) - 1

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052073 (n + 1) : ℚ) ^ (A000005 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1) : ℤ)

end

end A052074.P646334581962519295

/-!
# A052075: Primes p such that nextprime(p) is substring of p^3.

The programs for A052075, there is no canonical definition to state claims against.
-/

/-! ## A052075.P4822201351690906901

`root(A052076(n+1), 3)`
-/

namespace A052075.P4822201351690906901
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A052076 (n + 1) : ℝ) ^ (1 / (3 : ℝ))

end

end A052075.P4822201351690906901

/-!
# A052076: List of cubes p^3 of primes with property that next prime after p is a substring of p^3.

The programs for A052076, there is no canonical definition to state claims against.
-/

/-! ## A052076.P13846894088388740946

`A052075(n+1)^3`
-/

namespace A052076.P13846894088388740946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052075 (n + 1) ^ 3

end

end A052076.P13846894088388740946

/-!
# A052081: Numbers k such that k^2 is a square whose decimal expansion's digits are grouped together.

The programs for A052081, there is no canonical definition to state claims against.
-/

/-! ## A052081.P17555702543154710462

`eq[A043562(n²), A309432(n)]`
-/

namespace A052081.P17555702543154710462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043562 (n ^ 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309432 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A052081.P17555702543154710462

/-! ## A052081.P1503917919791916553

`eq[A178788(n²), A196368(n²)]`
-/

namespace A052081.P1503917919791916553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178788 (n ^ 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196368 (n ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A052081.P1503917919791916553

/-! ## A052081.P7470074176230492707

`eq[A321538(n²), A321797(n²)]`
-/

namespace A052081.P7470074176230492707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321538 (n ^ 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321797 (n ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A052081.P7470074176230492707

/-! ## A052081.P907084009147302849

`lt[A250120(A141327(n+2)), A134754(n)]`
-/

namespace A052081.P907084009147302849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 (A141327 (n + 2)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134754 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A052081.P907084009147302849

/-! ## A052081.P16031297850126316494

`lt[A269303(A141329(n+2)), A331380(n+2)]`
-/

namespace A052081.P16031297850126316494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269303 (A141329 (n + 2)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331380 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A052081.P16031297850126316494

/-!
# A052082: Squares with at least one of the decimal expansion digits occurring separated.

The programs for A052082, there is no canonical definition to state claims against.
-/

/-! ## A052082.P1629236214111513418

`comp[A052081(n+1)]²`
-/

namespace A052082.P1629236214111513418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052081 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n ^ 2

end

end A052082.P1629236214111513418

/-! ## A052082.P7093698864070479022

`comp[A052081(A194206(n+1)+1)]^2`
-/

namespace A052082.P7093698864070479022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052081 (A194206 (n + 1) + 1).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n ^ 2

end

end A052082.P7093698864070479022

/-! ## A052082.P8974102388189312525

`comp[A052081(A265409(n+1)+1)]^2`
-/

namespace A052082.P8974102388189312525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052081 (A265409 (n + 1) + 1).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n ^ 2

end

end A052082.P8974102388189312525

/-! ## A052082.P13059129578235089152

`A000290(comp[A052081(n+1)])`
-/

namespace A052082.P13059129578235089152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052081 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A052082.P13059129578235089152

/-! ## A052082.P9123739758591858030

`comp[A052081(n+1)]^A000034(2*n+1)`
-/

namespace A052082.P9123739758591858030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052081 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℚ) ^ (A000034 (2 * n + 1) : ℤ)

end

end A052082.P9123739758591858030

/-!
# A052083: a(n)^3 is a cube whose decimal expansion's digits are grouped together.

The programs for A052083, there is no canonical definition to state claims against.
-/

/-! ## A052083.P707937160327340237

`lt[A048678(n), Δ[A183059(n+1)]]`
-/

namespace A052083.P707937160327340237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048678 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183059 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A052083.P707937160327340237

/-! ## A052083.P175300814763142375

`lt[acot(A218976(n+1)), A219995(n)]`
-/

namespace A052083.P175300814763142375
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (A218976 (n + 1) : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219995 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A052083.P175300814763142375

/-! ## A052083.P11813500349319449544

`lt[A107846(A077742(n+1)), A219995(n)]`
-/

namespace A052083.P11813500349319449544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107846 (A077742 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219995 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A052083.P11813500349319449544

/-! ## A052083.P2141731399242602803

`lt[A002033(n), A272970(A272977(n+1))]`
-/

namespace A052083.P2141731399242602803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002033 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272970 (A272977 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A052083.P2141731399242602803

/-!
# A052084: Cubes with at least one of the decimal digits occurring separated.

The programs for A052084, there is no canonical definition to state claims against.
-/

/-! ## A052084.P5295682424428498165

`comp[A052083(n+1)]^3`
-/

namespace A052084.P5295682424428498165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052083 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n ^ 3

end

end A052084.P5295682424428498165

/-! ## A052084.P15256943551306368447

`A000578(comp[A052083(n+1)])`
-/

namespace A052084.P15256943551306368447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052083 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A052084.P15256943551306368447

/-! ## A052084.P9233872320380686193

`A000093(comp[A052083(n+1)]²)`
-/

namespace A052084.P9233872320380686193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052083 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000093 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n ^ 2)

end

end A052084.P9233872320380686193

/-!
# A052085: Primes whose decimal digits are grouped together.

The programs for A052085, there is no canonical definition to state claims against.
-/

/-! ## A052085.P13918852590793338524

`A000040(lt[A000045(n), A301275(2*n+1)])`
-/

namespace A052085.P13918852590793338524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301275 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A052085.P13918852590793338524

/-! ## A052085.P18100928831844841880

`A000040(lt[A270339(n+1), A050324(3*n+2)])`
-/

namespace A052085.P18100928831844841880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270339 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050324 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A052085.P18100928831844841880

/-! ## A052085.P17309479711620066527

`A000040(lt[A316655(n+5), A010001(n)])`
-/

namespace A052085.P17309479711620066527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316655 (n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010001 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A052085.P17309479711620066527

/-! ## A052085.P13511106936721510710

`A000040(lt[A124530(2*n), A186902(n+1)])`
-/

namespace A052085.P13511106936721510710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124530 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186902 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A052085.P13511106936721510710

/-! ## A052085.P12585116269654533314

`A000040(lt[A014649(3*n+2), A290734(2*n)])`
-/

namespace A052085.P12585116269654533314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014649 (3 * n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290734 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A052085.P12585116269654533314

/-!
# A052087: Primes whose decimal expansion is a concatenation of two or more consecutive increasing numbers (no leading zeros allowed).

The programs for A052087, there is no canonical definition to state claims against.
-/

/-! ## A052087.P16292233704345782860

`p?[A035333(n+1)]`
-/

namespace A052087.P16292233704345782860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035333 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A052087.P16292233704345782860

/-! ## A052087.P15916180824012246602

`or(1, p?[A035333(ϕ²-(ϕ-n))])`
-/

namespace A052087.P15916180824012246602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035333 (SequenceMachineLib.roundAway (Real.goldenRatio ^ 2 - (Real.goldenRatio - (n : ℝ)))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A052087.P15916180824012246602

/-! ## A052087.P14805649647395308996

`p?[record[A035333(A328396(n))]]`
-/

namespace A052087.P14805649647395308996
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035333 (A328396 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A052087.P14805649647395308996

/-! ## A052087.P11334249775804156536

`p?[record[A035333(A328399(n))]]`
-/

namespace A052087.P11334249775804156536
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035333 (A328399 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A052087.P11334249775804156536

/-! ## A052087.P7130419292476227103

`p?[∪[A030458(n+1), A279204(n+1)]]`
-/

namespace A052087.P7130419292476227103
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030458 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279204 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A052087.P7130419292476227103

/-!
# A052089: Primes formed by concatenating k with k-1.

The programs for A052089, there is no canonical definition to state claims against.
-/

/-! ## A052089.P3856861764824057304

`∩[A052088(n+1), A154530(n+1)]`
-/

namespace A052089.P3856861764824057304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052088 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154530 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052089.P3856861764824057304

/-! ## A052089.P16079179943896881658

`A127423(A054211(n+1))`
-/

namespace A052089.P16079179943896881658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127423 (A054211 (n + 1)).toNat

end

end A052089.P16079179943896881658

/-! ## A052089.P12728287833447496666

`A256285(A054211(n+1)-1)`
-/

namespace A052089.P12728287833447496666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256285 (A054211 (n + 1) - 1).toNat

end

end A052089.P12728287833447496666

/-! ## A052089.P14741472772752503292

`∩[A052088(n+1), A127423(n+1)]`
-/

namespace A052089.P14741472772752503292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052088 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127423 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052089.P14741472772752503292

/-! ## A052089.P12917397671040441195

`∩[A127423(n+1), A154530(n+1)]`
-/

namespace A052089.P12917397671040441195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127423 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154530 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052089.P12917397671040441195

/-! ## A052089.P13612508047398559014

`A248378(2*A054211(n+1)-3)`
-/

namespace A052089.P13612508047398559014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248378 (2 * A054211 (n + 1) - 3).toNat

end

end A052089.P13612508047398559014

/-! ## A052089.P11600577222111216784

`A248378(A054211(n+1)+A054211(n+1)-3)`
-/

namespace A052089.P11600577222111216784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248378 (A054211 (n + 1) + (A054211 (n + 1) - 3)).toNat

end

end A052089.P11600577222111216784

/-! ## A052089.P5496022364033517908

`A127423(eq[1, A341702(n)])`
-/

namespace A052089.P5496022364033517908
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341702 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127423 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A052089.P5496022364033517908

/-! ## A052089.P18261593685172428071

`p?[A127423(n+1)]`
-/

namespace A052089.P18261593685172428071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127423 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A052089.P18261593685172428071

/-! ## A052089.P7329069108021877017

`p?[A248378(2*n+1)]`
-/

namespace A052089.P7329069108021877017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248378 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A052089.P7329069108021877017

/-! ## A052089.P14840178523785261716

`p?[A111708(n)+2*n+1]`
-/

namespace A052089.P14840178523785261716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111708 n + (2 * n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A052089.P14840178523785261716

/-! ## A052089.P6426782541197673595

`p?[(n+1)*(A061601(n)+1+n)+n]`
-/

namespace A052089.P6426782541197673595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A061601 n + 1 + (n : ℤ)) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A052089.P6426782541197673595

/-! ## A052089.P598252094334410170

`p?[A004280(n+1)+A111708(n)+2]`
-/

namespace A052089.P598252094334410170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004280 (n + 1) + (A111708 n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A052089.P598252094334410170

/-!
# A052092: Lengths of the palindromic primes from Honaker's sequence A053600.

The programs for A052092, there is no canonical definition to state claims against.
-/

/-! ## A052092.P15015386805789276175

`A001650(∑[A093110(A064988(n+1))])`
-/

namespace A052092.P15015386805789276175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093110 (A064988 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001650 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A052092.P15015386805789276175

/-! ## A052092.P4789476620133641041

`∑[A337322(A152949(n+1))+A337322(n+1)]`
-/

namespace A052092.P4789476620133641041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337322 (A152949 (n + 1)).toNat + A337322 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A052092.P4789476620133641041

/-! ## A052092.P6423415018164126125

`∑[A007895(A020737(lcm(32, n)/32))]`
-/

namespace A052092.P6423415018164126125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007895 (A020737 (SequenceMachineLib.roundAway ((Nat.lcm 32 n : ℚ) / 32)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A052092.P6423415018164126125

/-! ## A052092.P17245508951775179037

`lt[A005076(3*n+4), A002107(A243828(3*n))]`
-/

namespace A052092.P17245508951775179037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005076 (3 * n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002107 (A243828 (3 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A052092.P17245508951775179037

/-! ## A052092.P17500828807972689258

`∑[A136695(A008592(n)²)]`
-/

namespace A052092.P17500828807972689258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136695 (A008592 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A052092.P17500828807972689258

/-!
# A052094: 

The programs for A052094, there is no canonical definition to state claims against.
-/

/-! ## A052094.P1199464720984580768

`A052093(n+1)^4`
-/

namespace A052094.P1199464720984580768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052093 (n + 1) ^ 4

end

end A052094.P1199464720984580768

/-! ## A052094.P11460916542535373668

`A052093(A045540(n+1))²²`
-/

namespace A052094.P11460916542535373668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A052093 (A045540 (n + 1)).toNat ^ 2) ^ 2

end

end A052094.P11460916542535373668

/-! ## A052094.P14138188881381601525

`A052093(A052040(n+1))²²`
-/

namespace A052094.P14138188881381601525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A052093 (A052040 (n + 1)).toNat ^ 2) ^ 2

end

end A052094.P14138188881381601525

/-!
# A052095: a(n)^2 is a square whose decimal expansion digits occur with an exact frequency of 3.

The programs for A052095, there is no canonical definition to state claims against.
-/

/-! ## A052095.P9633627181100286890

`sqrt(A052096(n+1))`
-/

namespace A052095.P9633627181100286890
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A052096 (n + 1) : ℝ)

end

end A052095.P9633627181100286890

/-! ## A052095.P14817783391247654993

`root(A052096(n+1), gcd(2, A005843(n)))`
-/

namespace A052095.P14817783391247654993
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A052096 (n + 1) : ℝ) ^ (1 / (Int.gcd 2 (A005843 n) : ℝ))

end

end A052095.P14817783391247654993

/-! ## A052095.P6363661478822639833

`or(root(A052096(n+1), 2), A000007(n))`
-/

namespace A052095.P6363661478822639833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (SequenceMachineLib.roundAway ((A052096 (n + 1) : ℝ) ^ (1 / (2 : ℝ)))) (A000007 n)

end

end A052095.P6363661478822639833

/-! ## A052095.P8488652864976879522

`or(root(A052096(n+1), 4)², A000038(n))`
-/

namespace A052095.P8488652864976879522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (SequenceMachineLib.roundAway (((A052096 (n + 1) : ℝ) ^ (1 / (4 : ℝ))) ^ 2)) (A000038 n)

end

end A052095.P8488652864976879522

/-! ## A052095.P13401828695090049991

`A000035(4*n)+root(A052096(n+1), 4)²`
-/

namespace A052095.P13401828695090049991
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A000035 (4 * n) : ℝ) + ((A052096 (n + 1) : ℝ) ^ (1 / (4 : ℝ))) ^ 2

end

end A052095.P13401828695090049991

/-! ## A052095.P6232580416963743848

`root(A052096(n+1), 4)²*A296306(2*n+1)`
-/

namespace A052095.P6232580416963743848
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((A052096 (n + 1) : ℝ) ^ (1 / (4 : ℝ))) ^ 2 * (A296306 (2 * n + 1) : ℝ)

end

end A052095.P6232580416963743848

/-! ## A052095.P2772566318568217582

`root(A052096(n+1), A001316(A001316(n)))`
-/

namespace A052095.P2772566318568217582
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A052096 (n + 1) : ℝ) ^ (1 / (A001316 (A001316 n).toNat : ℝ))

end

end A052095.P2772566318568217582

/-! ## A052095.P4412271335104758885

`A167688(A007918(n))+root(A052096(n+1), 4)²`
-/

namespace A052095.P4412271335104758885
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A167688 (A007918 n).toNat : ℝ) + ((A052096 (n + 1) : ℝ) ^ (1 / (4 : ℝ))) ^ 2

end

end A052095.P4412271335104758885

/-!
# A052096: Squares whose decimal expansion digits occur with an exact frequency of 3.

The programs for A052096, there is no canonical definition to state claims against.
-/

/-! ## A052096.P7612223115360711177

`A052095(n+1)²`
-/

namespace A052096.P7612223115360711177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052095 (n + 1) ^ 2

end

end A052096.P7612223115360711177

/-! ## A052096.P5640273458498699640

`A052095(n+1)^A000034(2*n+1)`
-/

namespace A052096.P5640273458498699640
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052095 (n + 1) : ℚ) ^ (A000034 (2 * n + 1) : ℤ)

end

end A052096.P5640273458498699640

/-! ## A052096.P7202556468008132637

`A052095(n+1)^A020639(2*(n+1))`
-/

namespace A052096.P7202556468008132637
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052095 (n + 1) : ℚ) ^ (A020639 (2 * (n + 1)) : ℤ)

end

end A052096.P7202556468008132637

/-! ## A052096.P8927595390882706755

`A052095(n+1)^A000005(A000057(n+1))`
-/

namespace A052096.P8927595390882706755
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052095 (n + 1) : ℚ) ^ (A000005 (A000057 (n + 1)).toNat : ℤ)

end

end A052096.P8927595390882706755

/-! ## A052096.P15424080631413680525

`A052095(n+1)^A000005(A052085(n+1))`
-/

namespace A052096.P15424080631413680525
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052095 (n + 1) : ℚ) ^ (A000005 (A052085 (n + 1)).toNat : ℤ)

end

end A052096.P15424080631413680525

/-! ## A052096.P6922371673886514193

`A052095(n+1)^A000005(A052086(n+1))`
-/

namespace A052096.P6922371673886514193
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052095 (n + 1) : ℚ) ^ (A000005 (A052086 (n + 1)).toNat : ℤ)

end

end A052096.P6922371673886514193

/-! ## A052096.P5388224753090203480

`A052095(n+1)^A000005(record[A014963(n+2)])`
-/

namespace A052096.P5388224753090203480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052095 (n + 1) : ℚ) ^ (A000005 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat : ℤ)

end

end A052096.P5388224753090203480

/-! ## A052096.P5974586737188913497

`A052095(n+1)^A107393(A085127(n+1))`
-/

namespace A052096.P5974586737188913497
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052095 (n + 1) : ℚ) ^ (A107393 (A085127 (n + 1)).toNat : ℤ)

end

end A052096.P5974586737188913497

/-! ## A052096.P8649684380716725030

`A052095(n+1)^A000005(A002385(n+1))`
-/

namespace A052096.P8649684380716725030
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052095 (n + 1) : ℚ) ^ (A000005 (A002385 (n + 1)).toNat : ℤ)

end

end A052096.P8649684380716725030

/-!
# A052097: a(n)^2 is a square whose decimal expansion digits occur with an exact frequency of 4.

The programs for A052097, there is no canonical definition to state claims against.
-/

/-! ## A052097.P1684923399434125644

`sqrt(A052098(n+1))`
-/

namespace A052097.P1684923399434125644
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A052098 (n + 1) : ℝ)

end

end A052097.P1684923399434125644

/-! ## A052097.P8450207025444470109

`root(A052098(n+1), A000034(2*n+1))`
-/

namespace A052097.P8450207025444470109
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A052098 (n + 1) : ℝ) ^ (1 / (A000034 (2 * n + 1) : ℝ))

end

end A052097.P8450207025444470109

/-! ## A052097.P12254920283667404664

`root(A052098(n+1), A020639(2*(n+1)))`
-/

namespace A052097.P12254920283667404664
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A052098 (n + 1) : ℝ) ^ (1 / (A020639 (2 * (n + 1)) : ℝ))

end

end A052097.P12254920283667404664

/-! ## A052097.P4837420829140547691

`root(A052098(n+1), A001316(A001316(n)))`
-/

namespace A052097.P4837420829140547691
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A052098 (n + 1) : ℝ) ^ (1 / (A001316 (A001316 n).toNat : ℝ))

end

end A052097.P4837420829140547691

/-! ## A052097.P1227569586004122635

`A052098(n+1)^2^A008683(A020484(n))`
-/

namespace A052097.P1227569586004122635
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A052098 (n + 1) : ℝ) ^ ((2 : ℚ) ^ (A008683 (A020484 n).toNat : ℤ) : ℝ)

end

end A052097.P1227569586004122635

/-!
# A052098: Squares whose decimal expansion digits occur with an exact frequency of 4.

The programs for A052098, there is no canonical definition to state claims against.
-/

/-! ## A052098.P6467748141774434910

`A052097(n+1)²`
-/

namespace A052098.P6467748141774434910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052097 (n + 1) ^ 2

end

end A052098.P6467748141774434910

/-! ## A052098.P8752149246888617013

`A052097(n+1)^A000034(2*n+1)`
-/

namespace A052098.P8752149246888617013
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052097 (n + 1) : ℚ) ^ (A000034 (2 * n + 1) : ℤ)

end

end A052098.P8752149246888617013

/-! ## A052098.P2708895236346483747

`A052097(1-(n-2*n))*A052097(n+1)`
-/

namespace A052098.P2708895236346483747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052097 (1 - ((n : ℤ) - (2 * n : ℤ))).toNat * A052097 (n + 1)

end

end A052098.P2708895236346483747

/-! ## A052098.P12776900541883065312

`A052097(n+1)^A001316(A001316(n))`
-/

namespace A052098.P12776900541883065312
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052097 (n + 1) : ℚ) ^ (A001316 (A001316 n).toNat : ℤ)

end

end A052098.P12776900541883065312

/-! ## A052098.P14450658222742936661

`A052097(n+1)^A040099(A016813(n))`
-/

namespace A052098.P14450658222742936661
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052097 (n + 1) : ℚ) ^ (A040099 (A016813 n).toNat : ℤ)

end

end A052098.P14450658222742936661

/-! ## A052098.P5073865171986028019

`A052097(n+1)^A000005(A000057(n+1))`
-/

namespace A052098.P5073865171986028019
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052097 (n + 1) : ℚ) ^ (A000005 (A000057 (n + 1)).toNat : ℤ)

end

end A052098.P5073865171986028019

/-! ## A052098.P2995496178932982315

`A052097(n+1)^A000005(A002385(n+1))`
-/

namespace A052098.P2995496178932982315
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052097 (n + 1) : ℚ) ^ (A000005 (A002385 (n + 1)).toNat : ℤ)

end

end A052098.P2995496178932982315

/-! ## A052098.P18234231596215829115

`A052097(n+1)^A001222(A001358(n+1))`
-/

namespace A052098.P18234231596215829115
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052097 (n + 1) : ℚ) ^ (A001222 (A001358 (n + 1)).toNat : ℤ)

end

end A052098.P18234231596215829115

/-! ## A052098.P10161733580845495828

`A052097(n+1)^A000005(A007353(n+1))`
-/

namespace A052098.P10161733580845495828
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052097 (n + 1) : ℚ) ^ (A000005 (A007353 (n + 1)).toNat : ℤ)

end

end A052098.P10161733580845495828

/-! ## A052098.P18137733438314285710

`A052097(n+1)^A000005(A052085(n+1))`
-/

namespace A052098.P18137733438314285710
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052097 (n + 1) : ℚ) ^ (A000005 (A052085 (n + 1)).toNat : ℤ)

end

end A052098.P18137733438314285710

/-! ## A052098.P10671227370076630427

`A052097(n+1)^A000005(A052086(n+1))`
-/

namespace A052098.P10671227370076630427
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052097 (n + 1) : ℚ) ^ (A000005 (A052086 (n + 1)).toNat : ℤ)

end

end A052098.P10671227370076630427

/-! ## A052098.P13164892325989927327

`A052097(n+1)^A000005(A062677(n+1))`
-/

namespace A052098.P13164892325989927327
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052097 (n + 1) : ℚ) ^ (A000005 (A062677 (n + 1)).toNat : ℤ)

end

end A052098.P13164892325989927327

/-! ## A052098.P8027235478635645196

`A052097(n+1)^A001221(A062676(n+1))`
-/

namespace A052098.P8027235478635645196
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052097 (n + 1) : ℚ) ^ (A001221 (A062676 (n + 1)).toNat : ℤ)

end

end A052098.P8027235478635645196

/-! ## A052098.P2754295038632877776

`A052097(n+1)^A100961(A001222(n+1))`
-/

namespace A052098.P2754295038632877776
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052097 (n + 1) : ℚ) ^ (A100961 (A001222 (n + 1)).toNat : ℤ)

end

end A052098.P2754295038632877776

/-! ## A052098.P4628877395963955396

`A052097(n+1)^A040099(A062668(n+1))`
-/

namespace A052098.P4628877395963955396
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052097 (n + 1) : ℚ) ^ (A040099 (A062668 (n + 1)).toNat : ℤ)

end

end A052098.P4628877395963955396

/-! ## A052098.P11852471315941025838

`A052097(n+1)^A020639(A085127(n+1))`
-/

namespace A052098.P11852471315941025838
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052097 (n + 1) : ℚ) ^ (A020639 (A085127 (n + 1)).toNat : ℤ)

end

end A052098.P11852471315941025838

/-! ## A052098.P12290746511388248078

`A052097(n+1)^A040099(A179085(n+1))`
-/

namespace A052098.P12290746511388248078
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052097 (n + 1) : ℚ) ^ (A040099 (A179085 (n + 1)).toNat : ℤ)

end

end A052098.P12290746511388248078

/-! ## A052098.P17031719873788412255

`A052097(n+1)^(A248008(A000040(n+1))+1)`
-/

namespace A052098.P17031719873788412255
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052097 (n + 1) : ℚ) ^ (A248008 (A000040 (n + 1)).toNat + 1 : ℤ)

end

end A052098.P17031719873788412255

/-! ## A052098.P1956711170565399054

`A052097(n+1)^A020639(A193828(n+1)-A193828(n))`
-/

namespace A052098.P1956711170565399054
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052097 (n + 1) : ℚ) ^ (A020639 (A193828 (n + 1) - A193828 n).toNat : ℤ)

end

end A052098.P1956711170565399054

