import SequenceMachineLib
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
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C033
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
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
import Seq.B008.C001
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
import Seq.Opaque.C025

/-!
# A344000: Indices k such that A011772(k) is even.

The programs for A344000, there is no canonical definition to state claims against.
-/

/-! ## A344000.P10930551619179155769

`eq[0, A354918(2*(n+1))]+1`
-/

namespace A344000.P10930551619179155769
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354918 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A344000.P10930551619179155769

/-! ## A344000.P15985202067947385727

`lt[A354920(2*(n+1)), 1]+1`
-/

namespace A344000.P15985202067947385727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354920 (2 * (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A344000.P15985202067947385727

/-! ## A344000.P16434004959172744234

`lt[A354918(2*n+2), 1]+1`
-/

namespace A344000.P16434004959172744234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354918 (2 * n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A344000.P16434004959172744234

/-! ## A344000.P14802761399362557425

`eq[1, A343999(n+1)+1]+1`
-/

namespace A344000.P14802761399362557425
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343999 (n + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A344000.P14802761399362557425

/-! ## A344000.P1437966284128697681

`eq[0, A011772(n+2)%2]+2`
-/

namespace A344000.P1437966284128697681
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A011772 (n + 2)) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A344000.P1437966284128697681

/-! ## A344000.P16996203924942499881

`eq[A011772(n+1), A343997(n+1)]+1`
-/

namespace A344000.P16996203924942499881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011772 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343997 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A344000.P16996203924942499881

/-! ## A344000.P12481114332486737636

`lt[A343997(n+1), A343996(n+1)]+1`
-/

namespace A344000.P12481114332486737636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343997 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343996 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A344000.P12481114332486737636

/-! ## A344000.P16732215861723913003

`lt[A354918(A004277(n)), 1]`
-/

namespace A344000.P16732215861723913003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354918 (A004277 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A344000.P16732215861723913003

/-! ## A344000.P7169596079691629164

`lt[A354920(2*A028310(n)), 1]`
-/

namespace A344000.P7169596079691629164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354920 (2 * A028310 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A344000.P7169596079691629164

/-! ## A344000.P17248168719485119857

`lt[2, A020639(A321366(n+1))]+1`
-/

namespace A344000.P17248168719485119857
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A321366 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A344000.P17248168719485119857

/-! ## A344000.P11445585736236353117

`eq[A000217(A343997(n+1)), A066561(n+1)]+1`
-/

namespace A344000.P11445585736236353117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A343997 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066561 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A344000.P11445585736236353117

/-! ## A344000.P12769127273448656048

`eq[1, A135560(A344969(n+1)+1)]+1`
-/

namespace A344000.P12769127273448656048
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135560 (A344969 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A344000.P12769127273448656048

/-! ## A344000.P4718146737557658056

`eq[0, A354918(A028310(2*n))]`
-/

namespace A344000.P4718146737557658056
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354918 (A028310 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A344000.P4718146737557658056

/-!
# A344001: Indices k such that A011772(k) is odd.

The programs for A344001, there is no canonical definition to state claims against.
-/

/-! ## A344001.P15594309172510422014

`eq[1, A354918(2*(n+1))]+1`
-/

namespace A344001.P15594309172510422014
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354918 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A344001.P15594309172510422014

/-! ## A344001.P13579360338970593327

`eq[1, A354920(2*(n+1))]+1`
-/

namespace A344001.P13579360338970593327
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354920 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A344001.P13579360338970593327

/-! ## A344001.P7005166761742588328

`1+eq[1, A343999(n+1)]`
-/

namespace A344001.P7005166761742588328
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343999 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A344001.P7005166761742588328

/-! ## A344001.P5818360263649580127

`eq[A011772(n+1), A343996(n+1)]+1`
-/

namespace A344001.P5818360263649580127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011772 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343996 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A344001.P5818360263649580127

/-! ## A344001.P15275502154397459264

`lt[A343996(n+1), A343997(n+1)]+1`
-/

namespace A344001.P15275502154397459264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343996 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343997 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A344001.P15275502154397459264

/-! ## A344001.P10441456828741341171

`record[gcd(n+1, A011772(n+1)*A343997(n+1))]`
-/

namespace A344001.P10441456828741341171
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A011772 (n + 1) * A343997 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A344001.P10441456828741341171

/-! ## A344001.P9286336970967035092

`filter[A065090(n+1), A343999(#)]`
-/

namespace A344001.P9286336970967035092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065090 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A343999 (f1 j).toNat = 1) n)

end

end A344001.P9286336970967035092

/-! ## A344001.P16967154900191747959

`filter[A171581(n+1), A343999(#)]`
-/

namespace A344001.P16967154900191747959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171581 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A343999 (f1 j).toNat = 1) n)

end

end A344001.P16967154900191747959

/-! ## A344001.P16408346904918971579

`filter[A173905(n+2), A343999(#)]`
-/

namespace A344001.P16408346904918971579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173905 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A343999 (f1 j).toNat = 1) n)

end

end A344001.P16408346904918971579

/-! ## A344001.P4647447186137964745

`filter[A338924(n+1), A343999(#)]`
-/

namespace A344001.P4647447186137964745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338924 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A343999 (f1 j).toNat = 1) n)

end

end A344001.P4647447186137964745

/-! ## A344001.P12205424270898630656

`filter[A073900(n+1), A343999(#)]`
-/

namespace A344001.P12205424270898630656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073900 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A343999 (f1 j).toNat = 1) n)

end

end A344001.P12205424270898630656

/-! ## A344001.P326865027499504085

`filter[A073899(n+1), A343999(#)]`
-/

namespace A344001.P326865027499504085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073899 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A343999 (f1 j).toNat = 1) n)

end

end A344001.P326865027499504085

/-! ## A344001.P7151598470336729653

`filter[A101513(n+1), A343999(#)]`
-/

namespace A344001.P7151598470336729653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101513 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A343999 (f1 j).toNat = 1) n)

end

end A344001.P7151598470336729653

/-! ## A344001.P12245929142452121661

`filter[A089088(n), A343999(#)]`
-/

namespace A344001.P12245929142452121661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A343999 (f1 j).toNat = 1) n)

end

end A344001.P12245929142452121661

/-! ## A344001.P15637041369579677443

`filter[A137621(n+1), A343999(#)]`
-/

namespace A344001.P15637041369579677443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137621 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A343999 (f1 j).toNat = 1) n)

end

end A344001.P15637041369579677443

/-! ## A344001.P16056917325295984309

`filter[A183301(n+1), A343999(#)]`
-/

namespace A344001.P16056917325295984309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183301 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A343999 (f1 j).toNat = 1) n)

end

end A344001.P16056917325295984309

/-! ## A344001.P13294205568226454694

`filter[A133398(n+1), A343999(#)]`
-/

namespace A344001.P13294205568226454694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133398 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A343999 (f1 j).toNat = 1) n)

end

end A344001.P13294205568226454694

/-! ## A344001.P16156070209132325733

`filter[A363490(n+1), A343999(#)]`
-/

namespace A344001.P16156070209132325733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363490 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A343999 (f1 j).toNat = 1) n)

end

end A344001.P16156070209132325733

/-! ## A344001.P18313295037812930863

`eq[1, gcd(2, A344969(n+1))]+1`
-/

namespace A344001.P18313295037812930863
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A344969 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A344001.P18313295037812930863

/-!
# A344004: Number of ordered subsequences of {1,...,n} containing at least three elements and such that the first differences contain only odd numbers.

The programs for A344004, the canonical program `A344004.P1264122054914092740` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A344004 has offset 1).

The definition of A344004 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 477 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A344004.P1264122054914092740

`∑[a(n-1)+a(n-2)+1]+a(n-2)` with `a(0)=0, a(1)=0`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A344004

/-- `∑[a(n-1)+a(n-2)+1]+a(n-2)` -/
def P1264122054914092740.Spec : Prop :=
  ∀ n, (P1264122054914092740.a n : ℤ) = A344004 (n + 1)

theorem P1264122054914092740.correct : P1264122054914092740.Spec := by
  intro n
  simp only [A344004, Nat.add_sub_cancel]

end A344004

/-! ## A344004.P14818132497355904271

`a(n-1)-(∑[a(n-2)-1]-a(n-2))` with `a(0)=0, a(1)=0`
-/

namespace A344004.P14818132497355904271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n f1 =>
  f1 (n - 2) - 1

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  a (n - 1) - (∑ j ∈ Finset.range (n + 1), f1 j - a (n - 2))

end

end A344004.P14818132497355904271

namespace A344004

/-- `a(n-1)-(∑[a(n-2)-1]-a(n-2))` -/
def P14818132497355904271.Spec : Prop :=
  ∀ n, P14818132497355904271.a n = A344004 (n + 1)

end A344004

/-! ## A344004.P2520193800960921048

`∑[A215006(n)]-n`
-/

namespace A344004.P2520193800960921048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215006 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A344004.P2520193800960921048

namespace A344004

/-- `∑[A215006(n)]-n` -/
def P2520193800960921048.Spec : Prop :=
  ∀ n, P2520193800960921048.a n = A344004 (n + 1)

end A344004

/-! ## A344004.P14342576256889989362

`∑[A167270(n)-(n+1)]`
-/

namespace A344004.P14342576256889989362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167270 n - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A344004.P14342576256889989362

namespace A344004

/-- `∑[A167270(n)-(n+1)]` -/
def P14342576256889989362.Spec : Prop :=
  ∀ n, P14342576256889989362.a n = A344004 (n + 1)

end A344004

/-! ## A344004.P14480907826269332857

`∑[∑[A000045(n)-n%2]]`
-/

namespace A344004.P14480907826269332857
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n - ((n % 2 : ℕ) : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A344004.P14480907826269332857

namespace A344004

/-- `∑[∑[A000045(n)-n%2]]` -/
def P14480907826269332857.Spec : Prop :=
  ∀ n, P14480907826269332857.a n = A344004 (n + 1)

end A344004

/-! ## A344004.P17445325442151748724

`∑[A052952(n)-∑[char[2*n]]]`
-/

namespace A344004.P17445325442151748724
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052952 n - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A344004.P17445325442151748724

namespace A344004

/-- `∑[A052952(n)-∑[char[2*n]]]` -/
def P17445325442151748724.Spec : Prop :=
  ∀ n, P17445325442151748724.a n = A344004 (n + 1)

end A344004

/-! ## A344004.P13613713754544051677

`∑[∑[A001611(n)-(and(1, n)+1)]]`
-/

namespace A344004.P13613713754544051677
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001611 n - (Nat.land 1 n + 1 : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A344004.P13613713754544051677

namespace A344004

/-- `∑[∑[A001611(n)-(and(1, n)+1)]]` -/
def P13613713754544051677.Spec : Prop :=
  ∀ n, P13613713754544051677.a n = A344004 (n + 1)

end A344004

/-! ## A344004.P3656696486414078273

`∑[∑[A008346(n)-and(1, n+1)]]`
-/

namespace A344004.P3656696486414078273
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008346 n - (Nat.land 1 (n + 1) : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A344004.P3656696486414078273

namespace A344004

/-- `∑[∑[A008346(n)-and(1, n+1)]]` -/
def P3656696486414078273.Spec : Prop :=
  ∀ n, P3656696486414078273.a n = A344004 (n + 1)

end A344004

/-! ## A344004.P13056660070332324953

`∑[floor(A000045(n+2)-(n+2)/2)]`
-/

namespace A344004.P13056660070332324953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000045 (n + 2) : ℚ) - (n + 2 : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A344004.P13056660070332324953

namespace A344004

/-- `∑[floor(A000045(n+2)-(n+2)/2)]` -/
def P13056660070332324953.Spec : Prop :=
  ∀ n, P13056660070332324953.a n = A344004 (n + 1)

end A344004

/-! ## A344004.P12455862401920750056

`∑[A000045(n+1)-1]+a(n-2)` with `a(0)=0, a(1)=0`
-/

namespace A344004.P12455862401920750056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + a (n - 2)

end

end A344004.P12455862401920750056

namespace A344004

/-- `∑[A000045(n+1)-1]+a(n-2)` -/
def P12455862401920750056.Spec : Prop :=
  ∀ n, P12455862401920750056.a n = A344004 (n + 1)

end A344004

/-! ## A344004.P10386530845747843030

`a(n-2)+A000045(n+3)-(n+2)` with `a(0)=0, a(1)=0`
-/

namespace A344004.P10386530845747843030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  a (n - 2) + (A000045 (n + 3) - (n + 2 : ℤ))

end

end A344004.P10386530845747843030

namespace A344004

/-- `a(n-2)+A000045(n+3)-(n+2)` -/
def P10386530845747843030.Spec : Prop :=
  ∀ n, P10386530845747843030.a n = A344004 (n + 1)

end A344004

/-! ## A344004.P4790931354855442512

`∑[∑[A000045(n)-A000035(n)]]`
-/

namespace A344004.P4790931354855442512
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n - A000035 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A344004.P4790931354855442512

namespace A344004

/-- `∑[∑[A000045(n)-A000035(n)]]` -/
def P4790931354855442512.Spec : Prop :=
  ∀ n, P4790931354855442512.a n = A344004 (n + 1)

end A344004

/-! ## A344004.P15474507472197506205

`∑[∑[A000045(n)]-A110654(n)]`
-/

namespace A344004.P15474507472197506205
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A110654 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A344004.P15474507472197506205

namespace A344004

/-- `∑[∑[A000045(n)]-A110654(n)]` -/
def P15474507472197506205.Spec : Prop :=
  ∀ n, P15474507472197506205.a n = A344004 (n + 1)

end A344004

/-! ## A344004.P3259529339851699243

`∑[∑[A074331(n)]-A074331(n)]`
-/

namespace A344004.P3259529339851699243
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074331 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A074331 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A344004.P3259529339851699243

namespace A344004

/-- `∑[∑[A074331(n)]-A074331(n)]` -/
def P3259529339851699243.Spec : Prop :=
  ∀ n, P3259529339851699243.a n = A344004 (n + 1)

end A344004

/-! ## A344004.P1658797006146256000

`∑[A052952(n)-A123108(n)]-n`
-/

namespace A344004.P1658797006146256000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052952 n - A123108 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A344004.P1658797006146256000

namespace A344004

/-- `∑[A052952(n)-A123108(n)]-n` -/
def P1658797006146256000.Spec : Prop :=
  ∀ n, P1658797006146256000.a n = A344004 (n + 1)

end A344004

/-! ## A344004.P15846806045652130178

`A129696(n+1)-A087811(n+1)`
-/

namespace A344004.P15846806045652130178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129696 (n + 1) - A087811 (n + 1)

end

end A344004.P15846806045652130178

namespace A344004

/-- `A129696(n+1)-A087811(n+1)` -/
def P15846806045652130178.Spec : Prop :=
  ∀ n, P15846806045652130178.a n = A344004 (n + 1)

end A344004

/-! ## A344004.P584849043371178031

`A129696(n+1)-A002620(n+2)`
-/

namespace A344004.P584849043371178031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129696 (n + 1) - A002620 (n + 2)

end

end A344004.P584849043371178031

namespace A344004

/-- `A129696(n+1)-A002620(n+2)` -/
def P584849043371178031.Spec : Prop :=
  ∀ n, P584849043371178031.a n = A344004 (n + 1)

end A344004

/-! ## A344004.P12050842696929057714

`∑[A000071(n+2)-A004526(n+1)]`
-/

namespace A344004.P12050842696929057714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 2) - A004526 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A344004.P12050842696929057714

namespace A344004

/-- `∑[A000071(n+2)-A004526(n+1)]` -/
def P12050842696929057714.Spec : Prop :=
  ∀ n, P12050842696929057714.a n = A344004 (n + 1)

end A344004

/-! ## A344004.P3021642914452326962

`∑[A000045(n+2)]-A078126(n+3)`
-/

namespace A344004.P3021642914452326962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A078126 (n + 3)

end

end A344004.P3021642914452326962

namespace A344004

/-- `∑[A000045(n+2)]-A078126(n+3)` -/
def P3021642914452326962.Spec : Prop :=
  ∀ n, P3021642914452326962.a n = A344004 (n + 1)

end A344004

/-! ## A344004.P7973731934317064393

`A129696(n+1)-A008619(n+1)*A008619(n)`
-/

namespace A344004.P7973731934317064393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129696 (n + 1) - A008619 (n + 1) * A008619 n

end

end A344004.P7973731934317064393

namespace A344004

/-- `A129696(n+1)-A008619(n+1)*A008619(n)` -/
def P7973731934317064393.Spec : Prop :=
  ∀ n, P7973731934317064393.a n = A344004 (n + 1)

end A344004

/-!
# A344005: a(n) = smallest positive m such that n divides the oblong number m*(m+1).

The programs for A344005, there is no canonical definition to state claims against.
-/

/-! ## A344005.P5842625888427037346

`A345992(n+1)*A345998(n+1)`
-/

namespace A344005.P5842625888427037346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345992 (n + 1) * A345998 (n + 1)

end

end A344005.P5842625888427037346

/-! ## A344005.P8741803335494208914

`floor(sqrt(A345988(n+1)))`
-/

namespace A344005.P8741803335494208914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A345988 (n + 1))

end

end A344005.P8741803335494208914

/-! ## A344005.P7027737555465522755

`A011772(gcd(n+1, ∑[n]))`
-/

namespace A344005.P7027737555465522755
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011772 (Nat.gcd (n + 1) (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A344005.P7027737555465522755

/-! ## A344005.P8401485393938419626

`1-A182665(n+1)+n`
-/

namespace A344005.P8401485393938419626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A182665 (n + 1) + (n : ℤ)

end

end A344005.P8401485393938419626

/-! ## A344005.P845384047501975001

`∑{d}[n+1, A346615(#-1)]`
-/

namespace A344005.P845384047501975001
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A346615 (d - 1)

end

end A344005.P845384047501975001

/-! ## A344005.P14913296678297220406

`A011772(floor(n/(n%2+1))+1)`
-/

namespace A344005.P14913296678297220406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011772 (⌊(n : ℚ) / ((n % 2 + 1 : ℕ) : ℚ)⌋ + 1).toNat

end

end A344005.P14913296678297220406

/-! ## A344005.P9530044494059851555

`A011772(A026741(n+1))`
-/

namespace A344005.P9530044494059851555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011772 (A026741 (n + 1)).toNat

end

end A344005.P9530044494059851555

/-! ## A344005.P13214209856689179417

`A011772((n+1)/A000034(n))`
-/

namespace A344005.P13214209856689179417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011772 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A000034 n : ℚ))).toNat

end

end A344005.P13214209856689179417

/-! ## A344005.P887810273089093210

`A028310(round(sqrt(A345988(n+1))))`
-/

namespace A344005.P887810273089093210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.roundAway (Real.sqrt (A345988 (n + 1) : ℝ))).toNat

end

end A344005.P887810273089093210

/-! ## A344005.P16580836351213604326

`A047994(n+1)-A346607(n+1)`
-/

namespace A344005.P16580836351213604326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047994 (n + 1) - A346607 (n + 1)

end

end A344005.P16580836351213604326

/-! ## A344005.P2088097371446484024

`A354876(n+1)-A354875(n+1)`
-/

namespace A344005.P2088097371446484024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354876 (n + 1) - A354875 (n + 1)

end

end A344005.P2088097371446484024

/-! ## A344005.P12921063068592338158

`A354985(n+1)*A354987(n+1)`
-/

namespace A344005.P12921063068592338158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354985 (n + 1) * A354987 (n + 1)

end

end A344005.P12921063068592338158

/-! ## A344005.P1361717747743514422

`A345993(n+1)*A345999(n+1)-1`
-/

namespace A344005.P1361717747743514422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345993 (n + 1) * A345999 (n + 1) - 1

end

end A344005.P1361717747743514422

/-! ## A344005.P11842370753443103106

`round(sqrt(A345988(n+1)))%A000040(n+1)`
-/

namespace A344005.P11842370753443103106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (Real.sqrt (A345988 (n + 1) : ℝ))) (A000040 (n + 1))

end

end A344005.P11842370753443103106

/-! ## A344005.P7049388946575058756

`∑{d}[n+1, A008683(#)*A346616((n+1)/#)]`
-/

namespace A344005.P7049388946575058756
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A346616 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A344005.P7049388946575058756

/-! ## A344005.P9657832577733072584

`A354985(n+1)*A354986(n+1)-A346607(n+1)`
-/

namespace A344005.P9657832577733072584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354985 (n + 1) * A354986 (n + 1) - A346607 (n + 1)

end

end A344005.P9657832577733072584

/-! ## A344005.P8412736740886323057

`A047994(n+1)/A354986(n+1)*A354987(n+1)`
-/

namespace A344005.P8412736740886323057
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A047994 (n + 1) : ℚ) / (A354986 (n + 1) : ℚ) * (A354987 (n + 1) : ℚ)

end

end A344005.P8412736740886323057

/-! ## A344005.P10644089153848575156

`A011772(Δ[A001318(n)])`
-/

namespace A344005.P10644089153848575156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001318 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011772 (f1 (n + 1) - f1 n).toNat

end

end A344005.P10644089153848575156

/-! ## A344005.P15467244973631946254

`A321366(Δ[A001318(n)])-1`
-/

namespace A344005.P15467244973631946254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001318 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321366 (f1 (n + 1) - f1 n).toNat - 1

end

end A344005.P15467244973631946254

/-! ## A344005.P7518654077274397556

`A011772(A001318(n+1)-A001318(n))`
-/

namespace A344005.P7518654077274397556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011772 (A001318 (n + 1) - A001318 n).toNat

end

end A344005.P7518654077274397556

/-!
# A344006: a(n) = m*(m+1)/n, where A344005(n) is the smallest number m such that n divides m*(m+1).

The programs for A344006, there is no canonical definition to state claims against.
-/

/-! ## A344006.P6476975537949814481

`A345988(n+1)/(n+1)`
-/

namespace A344006.P6476975537949814481
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A345988 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A344006.P6476975537949814481

/-! ## A344006.P11654337256278074445

`ceil(A344005(n+1)²*acot(n))`
-/

namespace A344006.P11654337256278074445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A344005 (n + 1) ^ 2 : ℝ) * SequenceMachineLib.acot (n : ℝ)⌉

end

end A344006.P11654337256278074445

/-! ## A344006.P11162400120939454888

`A345998(n+1)*A345999(n+1)`
-/

namespace A344006.P11162400120939454888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345998 (n + 1) * A345999 (n + 1)

end

end A344006.P11162400120939454888

/-! ## A344006.P12367432886905244066

`A028310(lcm(A345998(n+1), A345999(n+1)))`
-/

namespace A344006.P12367432886905244066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (Int.lcm (A345998 (n + 1)) (A345999 (n + 1)))

end

end A344006.P12367432886905244066

/-! ## A344006.P1205018696421270045

`A344005(n+1)/A345992(n+1)*A345999(n+1)`
-/

namespace A344006.P1205018696421270045
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A344005 (n + 1) : ℚ) / (A345992 (n + 1) : ℚ) * (A345999 (n + 1) : ℚ)

end

end A344006.P1205018696421270045

/-! ## A344006.P5598127938019398304

`A076942(4*(n+1))`
-/

namespace A344006.P5598127938019398304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076942 (4 * (n + 1))

end

end A344006.P5598127938019398304

/-! ## A344006.P15341800861793997814

`A105746(n+1)-A344005(n+1)`
-/

namespace A344006.P15341800861793997814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105746 (n + 1) - A344005 (n + 1)

end

end A344006.P15341800861793997814

/-! ## A344006.P16301976823902506884

`A002265(A202208(n+1))/(n+1)`
-/

namespace A344006.P16301976823902506884
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002265 (A202208 (n + 1)).toNat : ℚ) / (n + 1 : ℚ)

end

end A344006.P16301976823902506884

/-!
# A344008: Triangle of numerators corresponding to A344007.

The programs for A344008, there is no canonical definition to state claims against.
-/

/-! ## A344008.P9510023488601114411

`gcd(A071943(A025581(n)), A355529(2*(n+1)))`
-/

namespace A344008.P9510023488601114411
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A071943 (A025581 n).toNat) (A355529 (2 * (n + 1)))

end

end A344008.P9510023488601114411

/-! ## A344008.P3323708821610343094

`A055794(A122285(n))%A191089(n+1)`
-/

namespace A344008.P3323708821610343094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A055794 (A122285 n).toNat) (A191089 (n + 1))

end

end A344008.P3323708821610343094

/-! ## A344008.P7705928953534635021

`A194005(A122202(n)%A128655(n+5))`
-/

namespace A344008.P7705928953534635021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194005 (Int.tmod (A122202 n) (A128655 (n + 5))).toNat

end

end A344008.P7705928953534635021

/-! ## A344008.P13610390837203202634

`A001222(A007318(A264428(n+1)+3)+1)`
-/

namespace A344008.P13610390837203202634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A007318 (A264428 (n + 1) + 3).toNat + 1).toNat

end

end A344008.P13610390837203202634

/-! ## A344008.P7388399442292608745

`gcd(A144871(3*n+5), A321653(A046927(3*n+2)))`
-/

namespace A344008.P7388399442292608745
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A144871 (3 * n + 5)) (A321653 (A046927 (3 * n + 2)).toNat)

end

end A344008.P7388399442292608745

/-!
# A344010: Row 2 of array in A344009.

The programs for A344010, there is no canonical definition to state claims against.
-/

/-! ## A344010.P17946804314139307683

`A344009(∑[n+1]+2)`
-/

namespace A344010.P17946804314139307683
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344009 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A344010.P17946804314139307683

/-! ## A344010.P10268130646967185229

`record[A344009(n+3)/A359670(n)]`
-/

namespace A344010.P10268130646967185229
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A344009 (n + 3) : ℚ) / (A359670 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A344010.P10268130646967185229

/-! ## A344010.P506863248221388792

`record[A344009(n+3)/A344027(n+1)]`
-/

namespace A344010.P506863248221388792
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A344009 (n + 3) : ℚ) / (A344027 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A344010.P506863248221388792

/-! ## A344010.P12850450997269492093

`record[A344009(n+3)/A100002(A278505(n+1))]`
-/

namespace A344010.P12850450997269492093
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A344009 (n + 3) : ℚ) / (A100002 (A278505 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A344010.P12850450997269492093

/-! ## A344010.P16601777975910304302

`A304793(A000142(n))+A026424(n+2)`
-/

namespace A344010.P16601777975910304302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304793 (A000142 n).toNat + A026424 (n + 2)

end

end A344010.P16601777975910304302

/-!
# A344011: Row 3 of array in A344009.

The programs for A344011, there is no canonical definition to state claims against.
-/

/-! ## A344011.P12962317830453098206

`A344009(∑[n+2]+4)`
-/

namespace A344011.P12962317830453098206
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344009 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A344011.P12962317830453098206

/-!
# A344012: Column 3 of array in A344009.

The programs for A344012, there is no canonical definition to state claims against.
-/

/-! ## A344012.P571156732005719356

`A344009(∑[n+3]+1)`
-/

namespace A344012.P571156732005719356
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344009 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A344012.P571156732005719356

/-!
# A344015: 2-adic valuation of A344014(n).

The programs for A344015, there is no canonical definition to state claims against.
-/

/-! ## A344015.P10455645969988977647

`A223490(A127424(n+1))+8*n+1`
-/

namespace A344015.P10455645969988977647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223490 (A127424 (n + 1)).toNat + (8 * n + 1 : ℤ)

end

end A344015.P10455645969988977647

/-!
# A344018: Table read by rows: T(n,k) (n >= 1, 1 <= k <= 2^n) is the number of cycles of length k which can be produced by a general n-stage feedback shift register.

The programs for A344018, there is no canonical definition to state claims against.
-/

/-! ## A344018.P7656543021239224107

`A275811(eq[A064064(n), A123578(n)])`
-/

namespace A344018.P7656543021239224107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064064 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123578 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275811 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A344018.P7656543021239224107

/-! ## A344018.P290524383705923659

`A001221(A249666(n+4)+A000129(n))`
-/

namespace A344018.P290524383705923659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A249666 (n + 4) + A000129 n).toNat

end

end A344018.P290524383705923659

/-! ## A344018.P2688917490477886829

`A257993(A007088(n+2)*A043537(n+1))`
-/

namespace A344018.P2688917490477886829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257993 (A007088 (n + 2) * A043537 (n + 1)).toNat

end

end A344018.P2688917490477886829

/-! ## A344018.P5010206474677643742

`A005086(A307203(3*n)+A133500(3*n+4))`
-/

namespace A344018.P5010206474677643742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005086 (A307203 (3 * n) + A133500 (3 * n + 4)).toNat

end

end A344018.P5010206474677643742

/-!
# A344019: A tight upper bound on the order of a finite subgroup of the collineation group of the free projective plane F_n.

The programs for A344019, there is no canonical definition to state claims against.
-/

/-! ## A344019.P596769541390400851

`A284001(or(5, A198276(n)))`
-/

namespace A344019.P596769541390400851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284001 (Int.lor 5 (A198276 n)).toNat

end

end A344019.P596769541390400851

/-!
# A344022: Numbers with binary expansion (b_1, ..., b_m) such that bending a strip of paper of length k+1 with an angle of +90 degrees (resp. -90 degrees) at position X=k when b_k = 1 (resp. b_k = 0) for k = 1..m yields a configuration where all edges are distinct.

The programs for A344022, there is no canonical definition to state claims against.
-/

/-! ## A344022.P2508255806251448531

`∪[A166535(n+1), ∑[n]²]`
-/

namespace A344022.P2508255806251448531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166535 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f3 j) ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = x) n

end

end A344022.P2508255806251448531

/-! ## A344022.P5797556443066017445

`lt[A087117(xor(n, floor(n/2))), 3]`
-/

namespace A344022.P5797556443066017445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087117 (Int.xor (n : ℤ) ⌊(n : ℚ) / 2⌋).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A344022.P5797556443066017445

/-! ## A344022.P12664607508664149500

`eq[1, A329720(A279645(n))]`
-/

namespace A344022.P12664607508664149500
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329720 (A279645 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A344022.P12664607508664149500

/-! ## A344022.P11634007126745131501

`lt[A043276(A028310(n)), 4]`
-/

namespace A344022.P11634007126745131501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043276 (A028310 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A344022.P11634007126745131501

/-! ## A344022.P13951449419782607203

`lt[A136480(A335834(n)), 4]`
-/

namespace A344022.P13951449419782607203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136480 (A335834 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A344022.P13951449419782607203

/-! ## A344022.P13686698562930910248

`eq[A029837(n+1), A075172(n)]`
-/

namespace A344022.P13686698562930910248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029837 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075172 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A344022.P13686698562930910248

/-! ## A344022.P7496155342601723413

`∪[A001017(n), A166535(n+1)]`
-/

namespace A344022.P7496155342601723413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001017 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166535 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A344022.P7496155342601723413

/-! ## A344022.P10985100291021828989

`∪[A001095(n), A166535(n+1)]`
-/

namespace A344022.P10985100291021828989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001095 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166535 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A344022.P10985100291021828989

/-! ## A344022.P6473158866521785643

`∪[A001096(n), A166535(n+1)]`
-/

namespace A344022.P6473158866521785643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001096 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166535 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A344022.P6473158866521785643

/-! ## A344022.P1071325570292119129

`∪[A001741(n), A166535(n+1)]`
-/

namespace A344022.P1071325570292119129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001741 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166535 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A344022.P1071325570292119129

/-!
# A344023: Numbers of the form p_1^1 + p_2^2 + ... + p_k^k where p_1 < p_2 < ... < p_k are distinct primes.

The programs for A344023, there is no canonical definition to state claims against.
-/

/-! ## A344023.P17073938997554508352

`eq[1, char[A343300(n+1)]]`
-/

namespace A344023.P17073938997554508352
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343300 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A344023.P17073938997554508352

/-!
# A344024: a(n) = A003415(A001615(n)).

The programs for A344024, the canonical program `A344024.P3749631349074452751` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A344024 has offset 1).

The definition of A344024 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001615, A003415, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A344024.P3749631349074452751

`A003415(A001615(n+1))`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A344024

/-- `A003415(A001615(n+1))` -/
def P3749631349074452751.Spec : Prop :=
  ∀ n, P3749631349074452751.a n = A344024 (n + 1)

theorem P3749631349074452751.correct : P3749631349074452751.Spec := by
  intro n
  simp only [A344024, Nat.add_sub_cancel]

end A344024

/-! ## A344024.P16062727997049421927

`A003415((n+1)/∏{p}[n+1, #]*∏{p}[n+1, #+1])`
-/

namespace A344024.P16062727997049421927
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), (p + 1) : ℕ) : ℚ))).toNat

end

end A344024.P16062727997049421927

namespace A344024

/-- `A003415((n+1)/∏{p}[n+1, #]*∏{p}[n+1, #+1])` -/
def P16062727997049421927.Spec : Prop :=
  ∀ n, P16062727997049421927.a n = A344024 (n + 1)

end A344024

/-! ## A344024.P1660971685197601900

`A003415(A306927(n+1)+1+n)`
-/

namespace A344024.P1660971685197601900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A306927 (n + 1) + 1 + (n : ℤ)).toNat

end

end A344024.P1660971685197601900

namespace A344024

/-- `A003415(A306927(n+1)+1+n)` -/
def P1660971685197601900.Spec : Prop :=
  ∀ n, P1660971685197601900.a n = A344024 (n + 1)

end A344024

/-! ## A344024.P1806839298667094686

`A003415(A000082(n+1)/(n+1))`
-/

namespace A344024.P1806839298667094686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (SequenceMachineLib.roundAway ((A000082 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat

end

end A344024.P1806839298667094686

namespace A344024

/-- `A003415(A000082(n+1)/(n+1))` -/
def P1806839298667094686.Spec : Prop :=
  ∀ n, P1806839298667094686.a n = A344024 (n + 1)

end A344024

/-! ## A344024.P10536678655428816329

`A003415((n+1)/∏{p}[n+1, #]*A048250(n+1))`
-/

namespace A344024.P10536678655428816329
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * (A048250 (n + 1) : ℚ))).toNat

end

end A344024.P10536678655428816329

namespace A344024

/-- `A003415((n+1)/∏{p}[n+1, #]*A048250(n+1))` -/
def P10536678655428816329.Spec : Prop :=
  ∀ n, P10536678655428816329.a n = A344024 (n + 1)

end A344024

/-! ## A344024.P3813759954850304500

`A003415(gcd(n+1, ∑{p}[n+1, (n+1)/#])*A048250(n+1))`
-/

namespace A344024.P3813759954850304500
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 ((Int.gcd (n + 1 : ℤ) (SequenceMachineLib.roundAway (∑ p ∈ Nat.primeFactors (f1 n), (n + 1 : ℚ) / (p : ℚ))) : ℤ) * A048250 (n + 1)).toNat

end

end A344024.P3813759954850304500

namespace A344024

/-- `A003415(gcd(n+1, ∑{p}[n+1, (n+1)/#])*A048250(n+1))` -/
def P3813759954850304500.Spec : Prop :=
  ∀ n, P3813759954850304500.a n = A344024 (n + 1)

end A344024

/-! ## A344024.P6491011959361712259

`A003415(A003557(n+1)*A048250(n+1))`
-/

namespace A344024.P6491011959361712259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A003557 (n + 1) * A048250 (n + 1)).toNat

end

end A344024.P6491011959361712259

namespace A344024

/-- `A003415(A003557(n+1)*A048250(n+1))` -/
def P6491011959361712259.Spec : Prop :=
  ∀ n, P6491011959361712259.a n = A344024 (n + 1)

end A344024

/-! ## A344024.P8816352249102837707

`A003415(A342915(n+1)*A342917(n+1))`
-/

namespace A344024.P8816352249102837707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A342915 (n + 1) * A342917 (n + 1)).toNat

end

end A344024.P8816352249102837707

namespace A344024

/-- `A003415(A342915(n+1)*A342917(n+1))` -/
def P8816352249102837707.Spec : Prop :=
  ∀ n, P8816352249102837707.a n = A344024 (n + 1)

end A344024

/-! ## A344024.P4904577909934382428

`A003415(A344695(n+1)*A344697(n+1))`
-/

namespace A344024.P4904577909934382428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A344695 (n + 1) * A344697 (n + 1)).toNat

end

end A344024.P4904577909934382428

namespace A344024

/-- `A003415(A344695(n+1)*A344697(n+1))` -/
def P4904577909934382428.Spec : Prop :=
  ∀ n, P4904577909934382428.a n = A344024 (n + 1)

end A344024

/-!
# A344025: Lexicographically earliest infinite sequence such that a(i) = a(j) => A003415(i) = A003415(j) and A003557(i) = A003557(j), for all i, j >= 1.

The programs for A344025, there is no canonical definition to state claims against.
-/

/-! ## A344025.P7423235662071986213

`A369046(n+1)+A072233(A008805(2*n+3))`
-/

namespace A344025.P7423235662071986213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369046 (n + 1) + A072233 (A008805 (2 * n + 3)).toNat

end

end A344025.P7423235662071986213

/-! ## A344025.P6007965523670045425

`A369046(n+1)+A008683(A174292(n+1))`
-/

namespace A344025.P6007965523670045425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369046 (n + 1) + A008683 (A174292 (n + 1)).toNat

end

end A344025.P6007965523670045425

/-! ## A344025.P17749211834050529010

`A369046(n+1)+A336469(A003401(n+1))`
-/

namespace A344025.P17749211834050529010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369046 (n + 1) + A336469 (A003401 (n + 1)).toNat

end

end A344025.P17749211834050529010

/-! ## A344025.P3983067058140203490

`A369046(n+1)+A010054(A374004(n+1))`
-/

namespace A344025.P3983067058140203490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369046 (n + 1) + A010054 (A374004 (n + 1)).toNat

end

end A344025.P3983067058140203490

/-! ## A344025.P7814599193381392168

`A369046(n+1)/A344757(A092192(3*n+2))`
-/

namespace A344025.P7814599193381392168
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A369046 (n + 1) : ℚ) / (A344757 (A092192 (3 * n + 2)).toNat : ℚ)

end

end A344025.P7814599193381392168

/-! ## A344025.P9576255993702553003

`A369046(n+1)+A368997(A070184(n+1))`
-/

namespace A344025.P9576255993702553003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369046 (n + 1) + A368997 (A070184 (n + 1)).toNat

end

end A344025.P9576255993702553003

/-! ## A344025.P17511855585450948675

`A001055(A046117(3*n+2))*A369046(n+1)`
-/

namespace A344025.P17511855585450948675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001055 (A046117 (3 * n + 2)).toNat * A369046 (n + 1)

end

end A344025.P17511855585450948675

/-! ## A344025.P3636000606866793399

`A369046(n+1)+A105348(A007641(n+1))`
-/

namespace A344025.P3636000606866793399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369046 (n + 1) + A105348 (A007641 (n + 1)).toNat

end

end A344025.P3636000606866793399

/-! ## A344025.P10635395996054060083

`A369046(n+1)+A162209(A159007(2*n+3))`
-/

namespace A344025.P10635395996054060083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369046 (n + 1) + A162209 (A159007 (2 * n + 3)).toNat

end

end A344025.P10635395996054060083

/-! ## A344025.P16511145888543014263

`A052409(A002049(2*(n+2)))*A369046(n+1)`
-/

namespace A344025.P16511145888543014263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052409 (A002049 (2 * (n + 2))).toNat * A369046 (n + 1)

end

end A344025.P16511145888543014263

/-! ## A344025.P3313540612117153232

`A369046(n+1)%A351803(A319193(n))`
-/

namespace A344025.P3313540612117153232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A369046 (n + 1)) (A351803 (A319193 n).toNat)

end

end A344025.P3313540612117153232

/-! ## A344025.P349108297522299265

`A369045(A095649(n+1))*A369046(n+1)`
-/

namespace A344025.P349108297522299265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369045 (A095649 (n + 1)).toNat * A369046 (n + 1)

end

end A344025.P349108297522299265

/-! ## A344025.P1361944189682312809

`A369046(n+1)+A369036(A057660(3*(n+1)))`
-/

namespace A344025.P1361944189682312809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369046 (n + 1) + A369036 (A057660 (3 * (n + 1))).toNat

end

end A344025.P1361944189682312809

/-! ## A344025.P3405641054581559401

`and(A008683(A228625(n+1)), A369046(n+1))`
-/

namespace A344025.P3405641054581559401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A008683 (A228625 (n + 1)).toNat) (A369046 (n + 1))

end

end A344025.P3405641054581559401

/-! ## A344025.P6708392641584317396

`A007424(A304356(3*n+5))*A369046(n+1)`
-/

namespace A344025.P6708392641584317396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007424 (A304356 (3 * n + 5)).toNat * A369046 (n + 1)

end

end A344025.P6708392641584317396

/-!
# A344026: Arithmetic derivative applied to the Doudna sequence: a(n) = A003415(A005940(1+n)).

The programs for A344026, the canonical program `A344026.P2062845825652012812` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A344026 has offset 0).

The definition of A344026 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, A005940, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A344026.P2062845825652012812

`A003415(A005940(1+n))`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A344026

/-- `A003415(A005940(1+n))` -/
def P2062845825652012812.Spec : Prop :=
  ∀ n, P2062845825652012812.a n = A344026 n

theorem P2062845825652012812.correct : P2062845825652012812.Spec := by
  intro n
  simp only [A344026]

end A344026

/-! ## A344026.P10611742230368487516

`xor(A344028(n), A344182(n))`
-/

namespace A344026.P10611742230368487516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A344028 n) (A344182 n)

end

end A344026.P10611742230368487516

namespace A344026

/-- `xor(A344028(n), A344182(n))` -/
def P10611742230368487516.Spec : Prop :=
  ∀ n, P10611742230368487516.a n = A344026 n

end A344026

/-! ## A344026.P6829661417795994069

`∑{d}[A005940(n+1), A300251(#)]`
-/

namespace A344026.P6829661417795994069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005940 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A300251 d

end

end A344026.P6829661417795994069

namespace A344026

/-- `∑{d}[A005940(n+1), A300251(#)]` -/
def P6829661417795994069.Spec : Prop :=
  ∀ n, P6829661417795994069.a n = A344026 n

end A344026

/-! ## A344026.P14499866866670158180

`∑{d}[A250246(A252753(n)), A300251(#)]`
-/

namespace A344026.P14499866866670158180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250246 (A252753 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A300251 d

end

end A344026.P14499866866670158180

namespace A344026

/-- `∑{d}[A250246(A252753(n)), A300251(#)]` -/
def P14499866866670158180.Spec : Prop :=
  ∀ n, P14499866866670158180.a n = A344026 n

end A344026

/-! ## A344026.P3292058935276172613

`∑{d}[A279338(A279344(n)), A300251(#)]`
-/

namespace A344026.P3292058935276172613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279338 (A279344 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A300251 d

end

end A344026.P3292058935276172613

namespace A344026

/-- `∑{d}[A279338(A279344(n)), A300251(#)]` -/
def P3292058935276172613.Spec : Prop :=
  ∀ n, P3292058935276172613.a n = A344026 n

end A344026

/-! ## A344026.P14879768118863617047

`A344028(n)+A329039(A005940(n+1))`
-/

namespace A344026.P14879768118863617047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344028 n + A329039 (A005940 (n + 1)).toNat

end

end A344026.P14879768118863617047

namespace A344026

/-- `A344028(n)+A329039(A005940(n+1))` -/
def P14879768118863617047.Spec : Prop :=
  ∀ n, P14879768118863617047.a n = A344026 n

end A344026

/-! ## A344026.P6571340597967006061

`xor(A069359(A005940(n+1)), A344182(n))`
-/

namespace A344026.P6571340597967006061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A069359 (A005940 (n + 1)).toNat) (A344182 n)

end

end A344026.P6571340597967006061

namespace A344026

/-- `xor(A069359(A005940(n+1)), A344182(n))` -/
def P6571340597967006061.Spec : Prop :=
  ∀ n, P6571340597967006061.a n = A344026 n

end A344026

/-! ## A344026.P4689056230313415191

`A003557(A005940(n+1))*A366801(n)`
-/

namespace A344026.P4689056230313415191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (A005940 (n + 1)).toNat * A366801 n

end

end A344026.P4689056230313415191

namespace A344026

/-- `A003557(A005940(n+1))*A366801(n)` -/
def P4689056230313415191.Spec : Prop :=
  ∀ n, P4689056230313415191.a n = A344026 n

end A344026

/-! ## A344026.P18136067641168747091

`A319703(A005940(2*(n+1)))`
-/

namespace A344026.P18136067641168747091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319703 (A005940 (2 * (n + 1))).toNat

end

end A344026.P18136067641168747091

namespace A344026

/-- `A319703(A005940(2*(n+1)))` -/
def P18136067641168747091.Spec : Prop :=
  ∀ n, P18136067641168747091.a n = A344026 n

end A344026

/-! ## A344026.P6582539067832478141

`A319703(A005940(n+1)+A005940(n+1))`
-/

namespace A344026.P6582539067832478141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319703 (A005940 (n + 1) + A005940 (n + 1)).toNat

end

end A344026.P6582539067832478141

namespace A344026

/-- `A319703(A005940(n+1)+A005940(n+1))` -/
def P6582539067832478141.Spec : Prop :=
  ∀ n, P6582539067832478141.a n = A344026 n

end A344026

/-! ## A344026.P11425575818231623258

`A168036(A005940(4*(n+1)))/4`
-/

namespace A344026.P11425575818231623258
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A168036 (A005940 (4 * (n + 1))).toNat : ℚ) / 4

end

end A344026.P11425575818231623258

namespace A344026

/-- `A168036(A005940(4*(n+1)))/4` -/
def P11425575818231623258.Spec : Prop :=
  ∀ n, P11425575818231623258.a n = (A344026 n : ℚ)

end A344026

/-! ## A344026.P10958373015932648546

`A329033(A253563(n))`
-/

namespace A344026.P10958373015932648546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329033 (A253563 n).toNat

end

end A344026.P10958373015932648546

namespace A344026

/-- `A329033(A253563(n))` -/
def P10958373015932648546.Spec : Prop :=
  ∀ n, P10958373015932648546.a n = A344026 n

end A344026

/-!
# A344027: Arithmetic derivative applied to prime shift array: Square array A(n,k) = A003415(A246278(n,k)), read by falling antidiagonals.

The programs for A344027, the canonical program `A344027.P4468324006427657433` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A344027 has offset 1).

The definition of A344027 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 102 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A344027.P13276761568408063811

`A003415(A246278(n+2))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A344027.P13276761568408063811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A246278 (n + 2)).toNat

end

end A344027.P13276761568408063811

namespace A344027

/-- `A003415(A246278(n+2))` -/
def P13276761568408063811.Spec : Prop :=
  ∀ n, P13276761568408063811.a n = A344027 (n + 1)

end A344027

/-! ## A344027.P4468324006427657433

`A344026(A253551(n+1))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A344027

/-- `A344026(A253551(n+1))` -/
def P4468324006427657433.Spec : Prop :=
  ∀ n, P4468324006427657433.a n = A344027 (n + 1)

theorem P4468324006427657433.correct : P4468324006427657433.Spec := by
  intro n
  simp only [A344027, Nat.add_sub_cancel]

end A344027

/-! ## A344027.P4854183911190136601

`A328099(A246275(n+1)+1)`
-/

namespace A344027.P4854183911190136601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328099 (A246275 (n + 1) + 1).toNat

end

end A344027.P4854183911190136601

namespace A344027

/-- `A328099(A246275(n+1)+1)` -/
def P4854183911190136601.Spec : Prop :=
  ∀ n, P4854183911190136601.a n = A344027 (n + 1)

end A344027

/-! ## A344027.P10958595525019286341

`∑{d}[A246278(n+2), A300251(#)]`
-/

namespace A344027.P10958595525019286341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246278 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A300251 d

end

end A344027.P10958595525019286341

namespace A344027

/-- `∑{d}[A246278(n+2), A300251(#)]` -/
def P10958595525019286341.Spec : Prop :=
  ∀ n, P10958595525019286341.a n = A344027 (n + 1)

end A344027

/-! ## A344027.P13675641891845620559

`∑{d}[A246275(n+1)+1, A300251(#)]`
-/

namespace A344027.P13675641891845620559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246275 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A300251 d

end

end A344027.P13675641891845620559

namespace A344027

/-- `∑{d}[A246275(n+1)+1, A300251(#)]` -/
def P13675641891845620559.Spec : Prop :=
  ∀ n, P13675641891845620559.a n = A344027 (n + 1)

end A344027

/-! ## A344027.P10923271274158730801

`∑{d}[A249818(A083221(n+2)), A300251(#)]`
-/

namespace A344027.P10923271274158730801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249818 (A083221 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A300251 d

end

end A344027.P10923271274158730801

namespace A344027

/-- `∑{d}[A249818(A083221(n+2)), A300251(#)]` -/
def P10923271274158730801.Spec : Prop :=
  ∀ n, P10923271274158730801.a n = A344027 (n + 1)

end A344027

/-! ## A344027.P5218699053001099018

`A003415(A246275(n+1)+1)`
-/

namespace A344027.P5218699053001099018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A246275 (n + 1) + 1).toNat

end

end A344027.P5218699053001099018

namespace A344027

/-- `A003415(A246275(n+1)+1)` -/
def P5218699053001099018.Spec : Prop :=
  ∀ n, P5218699053001099018.a n = A344027 (n + 1)

end A344027

/-! ## A344027.P311824092594034317

`A319703(2*A246278(n+2))`
-/

namespace A344027.P311824092594034317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319703 (2 * A246278 (n + 2)).toNat

end

end A344027.P311824092594034317

namespace A344027

/-- `A319703(2*A246278(n+2))` -/
def P311824092594034317.Spec : Prop :=
  ∀ n, P311824092594034317.a n = A344027 (n + 1)

end A344027

/-! ## A344027.P2658098717168804072

`A003415(A250246(A083221(n+2)))`
-/

namespace A344027.P2658098717168804072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A250246 (A083221 (n + 2)).toNat).toNat

end

end A344027.P2658098717168804072

namespace A344027

/-- `A003415(A250246(A083221(n+2)))` -/
def P2658098717168804072.Spec : Prop :=
  ∀ n, P2658098717168804072.a n = A344027 (n + 1)

end A344027

/-!
# A344028: a(n) = A069359(A005940(1+n)).

The programs for A344028, the canonical program `A344028.P3251303512918898799` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A344028 has offset 0).

The definition of A344028 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005940, A069359, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A344028.P3251303512918898799

`A069359(A005940(1+n))`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A344028

/-- `A069359(A005940(1+n))` -/
def P3251303512918898799.Spec : Prop :=
  ∀ n, P3251303512918898799.a n = A344028 n

theorem P3251303512918898799.correct : P3251303512918898799.Spec := by
  intro n
  simp only [A344028]

end A344028

/-! ## A344028.P8665349253104575014

`xor(A344026(n), A344182(n))`
-/

namespace A344028.P8665349253104575014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A344026 n) (A344182 n)

end

end A344028.P8665349253104575014

namespace A344028

/-- `xor(A344026(n), A344182(n))` -/
def P8665349253104575014.Spec : Prop :=
  ∀ n, P8665349253104575014.a n = A344028 n

end A344028

/-! ## A344028.P2758590827306450346

`∑{p}[A005940(n+1), A005940(n+1)/#]`
-/

namespace A344028.P2758590827306450346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005940 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, (A005940 (n + 1) : ℚ) / (p : ℚ)

end

end A344028.P2758590827306450346

namespace A344028

/-- `∑{p}[A005940(n+1), A005940(n+1)/#]` -/
def P2758590827306450346.Spec : Prop :=
  ∀ n, P2758590827306450346.a n = (A344028 n : ℚ)

end A344028

/-! ## A344028.P3640911898040871760

`∑{d}[A005940(n+1), A117494(#)]`
-/

namespace A344028.P3640911898040871760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005940 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A117494 d

end

end A344028.P3640911898040871760

namespace A344028

/-- `∑{d}[A005940(n+1), A117494(#)]` -/
def P3640911898040871760.Spec : Prop :=
  ∀ n, P3640911898040871760.a n = A344028 n

end A344028

/-! ## A344028.P36598644994474777

`∑{d}[A250246(A252753(n)), A117494(#)]`
-/

namespace A344028.P36598644994474777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250246 (A252753 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A117494 d

end

end A344028.P36598644994474777

namespace A344028

/-- `∑{d}[A250246(A252753(n)), A117494(#)]` -/
def P36598644994474777.Spec : Prop :=
  ∀ n, P36598644994474777.a n = A344028 n

end A344028

/-! ## A344028.P8951026528594135935

`∑{d}[A302026(A269387(n)), A117494(#)]`
-/

namespace A344028.P8951026528594135935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302026 (A269387 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A117494 d

end

end A344028.P8951026528594135935

namespace A344028

/-- `∑{d}[A302026(A269387(n)), A117494(#)]` -/
def P8951026528594135935.Spec : Prop :=
  ∀ n, P8951026528594135935.a n = A344028 n

end A344028

/-! ## A344028.P5831336879770036188

`A344026(n)-A329039(A005940(n+1))`
-/

namespace A344028.P5831336879770036188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344026 n - A329039 (A005940 (n + 1)).toNat

end

end A344028.P5831336879770036188

namespace A344028

/-- `A344026(n)-A329039(A005940(n+1))` -/
def P5831336879770036188.Spec : Prop :=
  ∀ n, P5831336879770036188.a n = A344028 n

end A344028

/-! ## A344028.P5831960533269440971

`xor(A003415(A005940(n+1)), A344182(n))`
-/

namespace A344028.P5831960533269440971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A003415 (A005940 (n + 1)).toNat) (A344182 n)

end

end A344028.P5831960533269440971

namespace A344028

/-- `xor(A003415(A005940(n+1)), A344182(n))` -/
def P5831960533269440971.Spec : Prop :=
  ∀ n, P5831960533269440971.a n = A344028 n

end A344028

/-!
# A344030: Composite numbers with distinct prime factors {p1, p2, ..., pk} in ascending order where p1^1 + p2^2 + ...+ pk^k is prime.

The programs for A344030, there is no canonical definition to state claims against.
-/

/-! ## A344030.P1343204283438652167

`filter[A209799(n+1), A137794(#)]`
-/

namespace A344030.P1343204283438652167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209799 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A137794 (f1 j).toNat = 1) n)

end

end A344030.P1343204283438652167

/-! ## A344030.P11165635318983840148

`∩[A200878(n+1), A209799(n+1)]`
-/

namespace A344030.P11165635318983840148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200878 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209799 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A344030.P11165635318983840148

/-! ## A344030.P10183052693560514870

`∩[A209799(n+1), A361181(n+1)]`
-/

namespace A344030.P10183052693560514870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209799 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361181 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A344030.P10183052693560514870

/-! ## A344030.P9218330863347185165

`∩[A269131(n+1), A361181(n+1)]`
-/

namespace A344030.P9218330863347185165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269131 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361181 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A344030.P9218330863347185165

/-! ## A344030.P390956968095475286

`∩[A081061(n+1), A209799(n+1)]`
-/

namespace A344030.P390956968095475286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081061 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209799 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A344030.P390956968095475286

/-!
# A344031: Irregular triangle read by rows: T(n,k) = [x^k]p_n(x), where (p_n(x)/x^(3n)) * exp(-1/x^2) is the n-th derivative of exp(-1/x^2), n >= 1, 0 <= k <= 2*n-2.

The programs for A344031, there is no canonical definition to state claims against.
-/

/-! ## A344031.P17960941251230231080

`2*A344059(n+1)`
-/

namespace A344031.P17960941251230231080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A344059 (n + 1)

end

end A344031.P17960941251230231080

/-! ## A344031.P13853731741016488196

`A344059(A000027(n+1))+A344059(n+1)`
-/

namespace A344031.P13853731741016488196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344059 (A000027 (n + 1)).toNat + A344059 (n + 1)

end

end A344031.P13853731741016488196

/-! ## A344031.P8975926065046958462

`A344059(1-A001489(n))+A344059(n+1)`
-/

namespace A344031.P8975926065046958462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344059 (1 - A001489 n).toNat + A344059 (n + 1)

end

end A344031.P8975926065046958462

/-! ## A344031.P9045790050052731479

`(A344059(n+1)+A344059(n+1))%A248441(n+1)`
-/

namespace A344031.P9045790050052731479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A344059 (n + 1) + A344059 (n + 1)) (A248441 (n + 1))

end

end A344031.P9045790050052731479

/-! ## A344031.P7600361071642136931

`A344059(n+1)+A344059(n+1)%A041876(n)`
-/

namespace A344031.P7600361071642136931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344059 (n + 1) + Int.tmod (A344059 (n + 1)) (A041876 n)

end

end A344031.P7600361071642136931

/-! ## A344031.P3917103541596802098

`A344059(A003056(∑[n+1]))+A344059(n+1)`
-/

namespace A344031.P3917103541596802098
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344059 (A003056 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat + A344059 (n + 1)

end

end A344031.P3917103541596802098

/-!
# A344034: Numbers that are the sum of five positive cubes in four or more ways.

The programs for A344034, there is no canonical definition to state claims against.
-/

/-! ## A344034.P14281084634380775621

`∪[A343989(n+1), A344035(n+1)]`
-/

namespace A344034.P14281084634380775621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343989 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344035 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A344034.P14281084634380775621

/-! ## A344034.P11620893609420483084

`A344035(A084193(∑[n]))`
-/

namespace A344034.P11620893609420483084
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344035 (A084193 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A344034.P11620893609420483084

/-! ## A344034.P2735681396526584863

`A344035(n+1)^A267479(n)!`
-/

namespace A344034.P2735681396526584863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344035 (n + 1) ^ Nat.factorial (A267479 n).toNat

end

end A344034.P2735681396526584863

/-! ## A344034.P12401262553437749911

`A320955(∑[n])*A344035(n+1)`
-/

namespace A344034.P12401262553437749911
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320955 (∑ j ∈ Finset.range (n + 1), f1 j) * A344035 (n + 1)

end

end A344034.P12401262553437749911

/-! ## A344034.P1277173313014461265

`A344035(n+1)^A154231(∑[char[4*n]])`
-/

namespace A344034.P1277173313014461265
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A344035 (n + 1) : ℚ) ^ (A154231 (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ)

end

end A344034.P1277173313014461265

/-!
# A344035: Numbers that are the sum of five positive cubes in exactly four ways.

The programs for A344035, there is no canonical definition to state claims against.
-/

/-! ## A344035.P7187325424339552674

`record[A344034(n+1)-A028240(A287024(n+1))]`
-/

namespace A344035.P7187325424339552674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344034 (n + 1) - A028240 (A287024 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A344035.P7187325424339552674

/-! ## A344035.P3563412447079148713

`A344034(A147820(n+1)%A147797(n))`
-/

namespace A344035.P3563412447079148713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344034 (Int.tmod (A147820 (n + 1)) (A147797 n)).toNat

end

end A344035.P3563412447079148713

/-! ## A344035.P8616189550481309649

`A344034(A178864(n+1)%A093981(n+5))`
-/

namespace A344035.P8616189550481309649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344034 (Int.tmod (A178864 (n + 1)) (A093981 (n + 5))).toNat

end

end A344035.P8616189550481309649

/-! ## A344035.P1863963461400722157

`A344034(n+1)+A053829(A185284(3*n))`
-/

namespace A344035.P1863963461400722157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344034 (n + 1) + A053829 (A185284 (3 * n)).toNat

end

end A344035.P1863963461400722157

/-!
# A344037: Expansion of e.g.f.: exp(-2*x) / (2 - exp(x)).

The programs for A344037, there is no canonical definition to state claims against.
-/

/-! ## A344037.P17856993437319705279

`A372245(∑[n])`
-/

namespace A344037.P17856993437319705279
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372245 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A344037.P17856993437319705279

/-! ## A344037.P1073053747329832346

`or(1, A372245(A000217(n)))`
-/

namespace A344037.P1073053747329832346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A372245 (A000217 n).toNat)

end

end A344037.P1073053747329832346

/-! ## A344037.P2830195206386494261

`A372245(A000217(n))+A285480(2*n+3)`
-/

namespace A344037.P2830195206386494261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372245 (A000217 n).toNat + A285480 (2 * n + 3)

end

end A344037.P2830195206386494261

/-! ## A344037.P12756436796900948234

`A340102(3*(n+1))*A372245(A000217(n))`
-/

namespace A344037.P12756436796900948234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340102 (3 * (n + 1)) * A372245 (A000217 n).toNat

end

end A344037.P12756436796900948234

/-!
# A344038: 

The programs for A344038, there is no canonical definition to state claims against.
-/

/-! ## A344038.P6965422481804924777

`A343978(10^n)`
-/

namespace A344038.P6965422481804924777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343978 (10 ^ n)

end

end A344038.P6965422481804924777

/-!
# A344039: Number of n-step self-avoiding walks on the hypertriangular lattice with no non-contiguous adjacencies.

The programs for A344039, there is no canonical definition to state claims against.
-/

/-! ## A344039.P4933107515897695956

`A298033(A014301(n+1)^A377205(n+1))`
-/

namespace A344039.P4933107515897695956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298033 (SequenceMachineLib.roundAway ((A014301 (n + 1) : ℚ) ^ (A377205 (n + 1) : ℤ))).toNat

end

end A344039.P4933107515897695956

/-! ## A344039.P14060644278756033054

`A298033(C(A014301(n+1), A377205(n+1)))`
-/

namespace A344039.P14060644278756033054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298033 (Nat.choose (A014301 (n + 1)).toNat (A377205 (n + 1)).toNat)

end

end A344039.P14060644278756033054

/-!
# A344040: Number of n-step self-avoiding walks on the Laves graph with no non-contiguous adjacencies.

The programs for A344040, there is no canonical definition to state claims against.
-/

/-! ## A344040.P12699416195634657613

`A028310(A046944(n+1)-A042950(n))`
-/

namespace A344040.P12699416195634657613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A046944 (n + 1) - A042950 n).toNat

end

end A344040.P12699416195634657613

/-! ## A344040.P8846919794618521132

`Δ[A046944(n)]-A008683(A046950(n))`
-/

namespace A344040.P8846919794618521132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046944 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A008683 (A046950 n).toNat

end

end A344040.P8846919794618521132

/-! ## A344040.P12719582529691370242

`A003945(n)-A033106(A077659(n+1))`
-/

namespace A344040.P12719582529691370242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003945 n - A033106 (A077659 (n + 1)).toNat

end

end A344040.P12719582529691370242

/-!
# A344042: a(n) = n * Sum_{d|n} sigma(d)^2 / d.

The programs for A344042, the canonical program `A344042.P858665758975236922` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A344042 has offset 1).

The definition of A344042 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A344042.P16185157070496995352

`∑{d}[n+1, #*A060724(#)]`
-/

namespace A344042.P16185157070496995352
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A060724 d

end

end A344042.P16185157070496995352

namespace A344042

/-- `∑{d}[n+1, #*A060724(#)]` -/
def P16185157070496995352.Spec : Prop :=
  ∀ n, P16185157070496995352.a n = A344042 (n + 1)

end A344042

/-! ## A344042.P858665758975236922

`∑{d}[n+1, #*A072861((n+1)/#)]`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A344042

/-- `∑{d}[n+1, #*A072861((n+1)/#)]` -/
def P858665758975236922.Spec : Prop :=
  ∀ n, P858665758975236922.a n = A344042 (n + 1)

theorem P858665758975236922.correct : P858665758975236922.Spec := by
  intro n
  simp only [A344042, Nat.add_sub_cancel]

end A344042

/-! ## A344042.P3400631649408323645

`∑{d}[n+1, (n+1)/#*A000203(#)²]`
-/

namespace A344042.P3400631649408323645
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (n + 1 : ℚ) / (d : ℚ) * (A000203 d ^ 2 : ℚ)

end

end A344042.P3400631649408323645

namespace A344042

/-- `∑{d}[n+1, (n+1)/#*A000203(#)²]` -/
def P3400631649408323645.Spec : Prop :=
  ∀ n, P3400631649408323645.a n = (A344042 (n + 1) : ℚ)

end A344042

/-! ## A344042.P8239889048267497711

`∑{d}[n+1, A000082(#)*A060640((n+1)/#)]`
-/

namespace A344042.P8239889048267497711
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000082 d * A060640 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A344042.P8239889048267497711

namespace A344042

/-- `∑{d}[n+1, A000082(#)*A060640((n+1)/#)]` -/
def P8239889048267497711.Spec : Prop :=
  ∀ n, P8239889048267497711.a n = A344042 (n + 1)

end A344042

/-! ## A344042.P938001391856529271

`∑{d}[n+1, A000010(#)*A065018((n+1)/#)]`
-/

namespace A344042.P938001391856529271
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A065018 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A344042.P938001391856529271

namespace A344042

/-- `∑{d}[n+1, A000010(#)*A065018((n+1)/#)]` -/
def P938001391856529271.Spec : Prop :=
  ∀ n, P938001391856529271.a n = A344042 (n + 1)

end A344042

/-! ## A344042.P15423913882951890754

`∑{d}[n+1, A034676(#)*A034718((n+1)/#)]`
-/

namespace A344042.P15423913882951890754
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A034676 d * A034718 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A344042.P15423913882951890754

namespace A344042

/-- `∑{d}[n+1, A034676(#)*A034718((n+1)/#)]` -/
def P15423913882951890754.Spec : Prop :=
  ∀ n, P15423913882951890754.a n = A344042 (n + 1)

end A344042

/-! ## A344042.P13065795661440142326

`∑{d}[n+1, A002618(#)*A068984((n+1)/#)]`
-/

namespace A344042.P13065795661440142326
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A002618 d * A068984 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A344042.P13065795661440142326

namespace A344042

/-- `∑{d}[n+1, A002618(#)*A068984((n+1)/#)]` -/
def P13065795661440142326.Spec : Prop :=
  ∀ n, P13065795661440142326.a n = A344042 (n + 1)

end A344042

/-! ## A344042.P10431054914196857125

`∑{d}[n+1, A038040(#)*A065764((n+1)/#)]`
-/

namespace A344042.P10431054914196857125
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A038040 d * A065764 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A344042.P10431054914196857125

namespace A344042

/-- `∑{d}[n+1, A038040(#)*A065764((n+1)/#)]` -/
def P10431054914196857125.Spec : Prop :=
  ∀ n, P10431054914196857125.a n = A344042 (n + 1)

end A344042

/-! ## A344042.P884745469245528674

`∑{d}[n+1, A034761(#)*A140697((n+1)/#)]`
-/

namespace A344042.P884745469245528674
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A034761 d * A140697 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A344042.P884745469245528674

namespace A344042

/-- `∑{d}[n+1, A034761(#)*A140697((n+1)/#)]` -/
def P884745469245528674.Spec : Prop :=
  ∀ n, P884745469245528674.a n = A344042 (n + 1)

end A344042

/-! ## A344042.P9136840029207929781

`∑{d}[n+1, A007429(#)*A390262((n+1)/#)]`
-/

namespace A344042.P9136840029207929781
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007429 d * A390262 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A344042.P9136840029207929781

namespace A344042

/-- `∑{d}[n+1, A007429(#)*A390262((n+1)/#)]` -/
def P9136840029207929781.Spec : Prop :=
  ∀ n, P9136840029207929781.a n = A344042 (n + 1)

end A344042

/-! ## A344042.P18220078076831149276

`∑{d}[n+1, A064987(#)*A357938((n+1)/#)]`
-/

namespace A344042.P18220078076831149276
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A064987 d * A357938 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A344042.P18220078076831149276

namespace A344042

/-- `∑{d}[n+1, A064987(#)*A357938((n+1)/#)]` -/
def P18220078076831149276.Spec : Prop :=
  ∀ n, P18220078076831149276.a n = A344042 (n + 1)

end A344042

/-! ## A344042.P16278231269920515833

`∑{d}[n+1, A174466(#)*A254520((n+1)/#)]`
-/

namespace A344042.P16278231269920515833
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A174466 d * A254520 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A344042.P16278231269920515833

namespace A344042

/-- `∑{d}[n+1, A174466(#)*A254520((n+1)/#)]` -/
def P16278231269920515833.Spec : Prop :=
  ∀ n, P16278231269920515833.a n = A344042 (n + 1)

end A344042

/-! ## A344042.P7009640508341585103

`∑{d}[n+1, #*A124316(#*#)]`
-/

namespace A344042.P7009640508341585103
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A124316 (d * d)

end

end A344042.P7009640508341585103

namespace A344042

/-- `∑{d}[n+1, #*A124316(#*#)]` -/
def P7009640508341585103.Spec : Prop :=
  ∀ n, P7009640508341585103.a n = A344042 (n + 1)

end A344042

/-!
# A344043: a(n) = n * Sum_{d|n} sigma(d)^3 / d.

The programs for A344043, the canonical program `A344043.P16115602336690169425` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A344043 has offset 1).

The definition of A344043 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A344043.P184299402423651234

`∑{d}[n+1, #*A344135(#)]`
-/

namespace A344043.P184299402423651234
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A344135 d

end

end A344043.P184299402423651234

namespace A344043

/-- `∑{d}[n+1, #*A344135(#)]` -/
def P184299402423651234.Spec : Prop :=
  ∀ n, P184299402423651234.a n = A344043 (n + 1)

end A344043

/-! ## A344043.P16115602336690169425

`∑{d}[n+1, #*A361147((n+1)/#)]`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A344043

/-- `∑{d}[n+1, #*A361147((n+1)/#)]` -/
def P16115602336690169425.Spec : Prop :=
  ∀ n, P16115602336690169425.a n = A344043 (n + 1)

theorem P16115602336690169425.correct : P16115602336690169425.Spec := by
  intro n
  simp only [A344043, Nat.add_sub_cancel]

end A344043

/-! ## A344043.P14609984074953258844

`∑{d}[n+1, A000010(#)*A344044((n+1)/#)]`
-/

namespace A344043.P14609984074953258844
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A344044 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A344043.P14609984074953258844

namespace A344043

/-- `∑{d}[n+1, A000010(#)*A344044((n+1)/#)]` -/
def P14609984074953258844.Spec : Prop :=
  ∀ n, P14609984074953258844.a n = A344043 (n + 1)

end A344043

/-!
# A344044: a(n) = Sum_{d|n} sigma(d)^3.

The programs for A344044, the canonical program `A344044.P15182068437121095928` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A344044 has offset 1).

The definition of A344044 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A344044.P8262621581785448754

`∑{d}[n+1, A361147(#)]`
-/

namespace A344044.P8262621581785448754
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A361147 d

end

end A344044.P8262621581785448754

namespace A344044

/-- `∑{d}[n+1, A361147(#)]` -/
def P8262621581785448754.Spec : Prop :=
  ∀ n, P8262621581785448754.a n = A344044 (n + 1)

end A344044

/-! ## A344044.P15182068437121095928

`∑{d}[n+1, A000203(#)^3]`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A344044

/-- `∑{d}[n+1, A000203(#)^3]` -/
def P15182068437121095928.Spec : Prop :=
  ∀ n, P15182068437121095928.a n = A344044 (n + 1)

theorem P15182068437121095928.correct : P15182068437121095928.Spec := by
  intro n
  simp only [A344044, Nat.add_sub_cancel]

end A344044

/-! ## A344044.P16430146974402541601

`∑{d}[n+1, sqrt(A072861(#))^3]`
-/

namespace A344044.P16430146974402541601
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Real.sqrt (A072861 d : ℝ) ^ 3

end

end A344044.P16430146974402541601

namespace A344044

/-- `∑{d}[n+1, sqrt(A072861(#))^3]` -/
def P16430146974402541601.Spec : Prop :=
  ∀ n, P16430146974402541601.a n = (A344044 (n + 1) : ℝ)

end A344044

/-! ## A344044.P17262692628982540844

`∑{d}[n+1, A023900(#)*A344043((n+1)/#)]`
-/

namespace A344044.P17262692628982540844
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A023900 d * A344043 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A344044.P17262692628982540844

namespace A344044

/-- `∑{d}[n+1, A023900(#)*A344043((n+1)/#)]` -/
def P17262692628982540844.Spec : Prop :=
  ∀ n, P17262692628982540844.a n = A344044 (n + 1)

end A344044

/-! ## A344044.P10461935937914523181

`∑{d}[n+1, A068963(#)*A344133((n+1)/#)]`
-/

namespace A344044.P10461935937914523181
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A068963 d * A344133 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A344044.P10461935937914523181

namespace A344044

/-- `∑{d}[n+1, A068963(#)*A344133((n+1)/#)]` -/
def P10461935937914523181.Spec : Prop :=
  ∀ n, P10461935937914523181.a n = A344044 (n + 1)

end A344044

/-! ## A344044.P1583317792615646196

`∑{d}[n+1, A000578(A000203(#))]`
-/

namespace A344044.P1583317792615646196
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000578 (A000203 d).toNat

end

end A344044.P1583317792615646196

namespace A344044

/-- `∑{d}[n+1, A000578(A000203(#))]` -/
def P1583317792615646196.Spec : Prop :=
  ∀ n, P1583317792615646196.a n = A344044 (n + 1)

end A344044

/-! ## A344044.P11055770394197102789

`∑{d}[n+1, A000578(sqrt(A072861(#)))]`
-/

namespace A344044.P11055770394197102789
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000578 (SequenceMachineLib.roundAway (Real.sqrt (A072861 d : ℝ))).toNat

end

end A344044.P11055770394197102789

namespace A344044

/-- `∑{d}[n+1, A000578(sqrt(A072861(#)))]` -/
def P11055770394197102789.Spec : Prop :=
  ∀ n, P11055770394197102789.a n = A344044 (n + 1)

end A344044

/-!
# A344045: Primes p such that the decimal digits of p^2 can be partitioned into two or more squares.

The programs for A344045, there is no canonical definition to state claims against.
-/

/-! ## A344045.P12550656215897409291

`record[A001414(sqrt(A009404(n+1)))]`
-/

namespace A344045.P12550656215897409291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (SequenceMachineLib.roundAway (Real.sqrt (A009404 (n + 1) : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A344045.P12550656215897409291

/-! ## A344045.P10967119120180840801

`record[A006530(sqrt(A009404(n+1)))]`
-/

namespace A344045.P10967119120180840801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.roundAway (Real.sqrt (A009404 (n + 1) : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A344045.P10967119120180840801

/-! ## A344045.P3029804423839941651

`record[A020639(sqrt(A009404(n+1)))]`
-/

namespace A344045.P3029804423839941651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.roundAway (Real.sqrt (A009404 (n + 1) : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A344045.P3029804423839941651

/-! ## A344045.P3600690636152618891

`p?[A128783(n+1)]`
-/

namespace A344045.P3600690636152618891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128783 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A344045.P3600690636152618891

/-! ## A344045.P14149489666622008807

`filter[A128783(n+1), A010051(#)]`
-/

namespace A344045.P14149489666622008807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128783 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A344045.P14149489666622008807

/-! ## A344045.P6427449151036386996

`∩[A000040(n+1), A128783(n+1)]`
-/

namespace A344045.P6427449151036386996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128783 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A344045.P6427449151036386996

/-! ## A344045.P2337435438163591596

`∩[A004139(n+1), A128783(n+1)]`
-/

namespace A344045.P2337435438163591596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128783 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A344045.P2337435438163591596

/-! ## A344045.P13706010006048259210

`∩[A006005(n+1), A128783(n+1)]`
-/

namespace A344045.P13706010006048259210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128783 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A344045.P13706010006048259210

/-! ## A344045.P8685582781567516547

`∩[A008578(n+1), A128783(n+1)]`
-/

namespace A344045.P8685582781567516547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128783 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A344045.P8685582781567516547

/-! ## A344045.P13914366504469873986

`∩[A045319(n+1), A128783(n+1)]`
-/

namespace A344045.P13914366504469873986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128783 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A344045.P13914366504469873986

/-! ## A344045.P10047265215002027625

`∩[A045344(n+1), A128783(n+1)]`
-/

namespace A344045.P10047265215002027625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128783 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A344045.P10047265215002027625

/-! ## A344045.P4539884094423357453

`∩[A046022(n+1), A128783(n+1)]`
-/

namespace A344045.P4539884094423357453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128783 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A344045.P4539884094423357453

/-! ## A344045.P7157688924675516275

`∩[A051948(n+1), A128783(n+1)]`
-/

namespace A344045.P7157688924675516275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128783 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A344045.P7157688924675516275

/-! ## A344045.P7108660915186685003

`∩[A053813(n+1), A128783(n+1)]`
-/

namespace A344045.P7108660915186685003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128783 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A344045.P7108660915186685003

/-! ## A344045.P17482186710820753618

`∩[A065091(n+1), A128783(n+1)]`
-/

namespace A344045.P17482186710820753618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128783 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A344045.P17482186710820753618

/-! ## A344045.P13596266523859050698

`∩[A066542(n+1), A128783(n+1)]`
-/

namespace A344045.P13596266523859050698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066542 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128783 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A344045.P13596266523859050698

/-! ## A344045.P3759617859916932657

`∩[A067126(n+1), A128783(n+1)]`
-/

namespace A344045.P3759617859916932657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067126 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128783 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A344045.P3759617859916932657

/-!
# A344047: a(n) = Sum_{d|n} sigma(d)^d.

The programs for A344047, there is no canonical definition to state claims against.
-/

/-! ## A344047.P11181252187799070453

`∑{d}[n+1, A217872(#)]`
-/

namespace A344047.P11181252187799070453
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A217872 d

end

end A344047.P11181252187799070453

/-! ## A344047.P2816308142749323676

`∑{d}[n+1, A000203(#)^#]`
-/

namespace A344047.P2816308142749323676
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000203 d ^ d

end

end A344047.P2816308142749323676

/-! ## A344047.P12747919059884727892

`∑{d}[n+1, sqrt(A072861(#))^#]`
-/

namespace A344047.P12747919059884727892
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Real.sqrt (A072861 d : ℝ) ^ d

end

end A344047.P12747919059884727892

/-!
# A344048: T(n, k) = n! * [x^n] exp(k * x/(1 - x))/(1 - x). Triangle read by rows, T(n, k) for 0 <= k <= n.

The programs for A344048, there is no canonical definition to state claims against.
-/

/-! ## A344048.P1092970897871516559

`A289192(A061579(A245300(n)))`
-/

namespace A344048.P1092970897871516559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289192 (A061579 (A245300 n).toNat).toNat

end

end A344048.P1092970897871516559

/-! ## A344048.P13650461889489392840

`A289192(A245300(n)+A025581(n))`
-/

namespace A344048.P13650461889489392840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289192 (A245300 n + A025581 n).toNat

end

end A344048.P13650461889489392840

/-! ## A344048.P18191832620794764380

`A343847(A245300(n))`
-/

namespace A344048.P18191832620794764380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343847 (A245300 n).toNat

end

end A344048.P18191832620794764380

/-!
# A344049: a(n) = KummerU(-2*n, 1, -n).

The programs for A344049, there is no canonical definition to state claims against.
-/

/-! ## A344049.P10215812236749716358

`A344048(∑[4*n])`
-/

namespace A344049.P10215812236749716358
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344048 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A344049.P10215812236749716358

/-! ## A344049.P7634506029971513065

`A289192(A062728(n))`
-/

namespace A344049.P7634506029971513065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289192 (A062728 n).toNat

end

end A344049.P7634506029971513065

/-! ## A344049.P13568177022322144887

`A343847(A062725(n))`
-/

namespace A344049.P13568177022322144887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343847 (A062725 n).toNat

end

end A344049.P13568177022322144887

/-! ## A344049.P17663150112135168723

`A289192(A081267(n)-1)`
-/

namespace A344049.P17663150112135168723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289192 (A081267 n - 1).toNat

end

end A344049.P17663150112135168723

/-! ## A344049.P3303285779015122659

`A289192(A062725(n)+n)`
-/

namespace A344049.P3303285779015122659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289192 (A062725 n + (n : ℤ)).toNat

end

end A344049.P3303285779015122659

/-!
# A344051: a(n) = Sum_{k=0..n} binomial(n, k)*|Lah(n, k)|. Binomial convolution of the unsigned Lah numbers A271703.

The programs for A344051, there is no canonical definition to state claims against.
-/

/-! ## A344051.P12466729794941308281

`or(1, A005378(A192940(n)))`
-/

namespace A344051.P12466729794941308281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A005378 (A192940 n).toNat)

end

end A344051.P12466729794941308281

/-! ## A344051.P14341156802698871374

`A211265(A292932(n))+A000108(n)`
-/

namespace A344051.P14341156802698871374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211265 (A292932 n).toNat + A000108 n

end

end A344051.P14341156802698871374

/-!
# A344052: a(n) = Sum_{k=0..n} (-1)^(n-k)*binomial(n, k)*E1(n, k).

The programs for A344052, there is no canonical definition to state claims against.
-/

/-! ## A344052.P7635736901643574016

`A049061(2*n²+1)`
-/

namespace A344052.P7635736901643574016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049061 (2 * n ^ 2 + 1)

end

end A344052.P7635736901643574016

/-! ## A344052.P4165417411377929475

`or(A000007(n), A049061(A058331(n)))`
-/

namespace A344052.P4165417411377929475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A049061 (A058331 n).toNat)

end

end A344052.P4165417411377929475

/-! ## A344052.P7600444212648998122

`A049061(A058331(n))+A000007(3*n+1)`
-/

namespace A344052.P7600444212648998122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049061 (A058331 n).toNat + A000007 (3 * n + 1)

end

end A344052.P7600444212648998122

/-! ## A344052.P11969891611525069492

`A049061(A058331(n))*A057427(2*(n+1))`
-/

namespace A344052.P11969891611525069492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049061 (A058331 n).toNat * A057427 (2 * (n + 1))

end

end A344052.P11969891611525069492

/-! ## A344052.P16518902309170130270

`A049061(A058331(n))%A324077(n+1)`
-/

namespace A344052.P16518902309170130270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A049061 (A058331 n).toNat) (A324077 (n + 1))

end

end A344052.P16518902309170130270

/-!
# A344054: a(n) = Sum_{k = 0..n} E1(n, k)*k^2, where E1 are the Eulerian numbers A173018.

The programs for A344054, there is no canonical definition to state claims against.
-/

/-! ## A344054.P5363257509682547779

`A350680(n)-∏[n^ceil(tanh(n-2))]`
-/

namespace A344054.P5363257509682547779
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ (⌈Real.tanh ((n : ℤ) - 2 : ℝ)⌉ : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A350680 n : ℚ) - ∏ j ∈ Finset.range (n + 1), f1 j

end

end A344054.P5363257509682547779

/-! ## A344054.P15697212367320552488

`floor(A232226(n+2)/((10*n+5)²-16))`
-/

namespace A344054.P15697212367320552488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A232226 (n + 2) : ℚ) / (((10 * n + 5) ^ 2 : ℤ) - 16 : ℚ)⌋

end

end A344054.P15697212367320552488

/-!
# A344055: a(n) = 2^n * n! * [x^n](exp(2*x) * BesselI(1, x)).

The programs for A344055, the canonical program `A344055.P18255593850906627347` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A344055 has offset 0).

The definition of A344055 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A344055.P18255593850906627347

`4*(3*(n²-n)*a(n-2)-(2*n²-n)*a(n-1))/(1-n²)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A344055

/-- `4*(3*(n²-n)*a(n-2)-(2*n²-n)*a(n-1))/(1-n²)` -/
def P18255593850906627347.Spec : Prop :=
  ∀ n, P18255593850906627347.a n = (A344055 n : ℚ)

end A344055

/-! ## A344055.P15420679753008062549

`n*A025228(n+1)`
-/

namespace A344055.P15420679753008062549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A025228 (n + 1)

end

end A344055.P15420679753008062549

namespace A344055

/-- `n*A025228(n+1)` -/
def P15420679753008062549.Spec : Prop :=
  ∀ n, P15420679753008062549.a n = A344055 n

end A344055

/-! ## A344055.P14810170532641947930

`n*A052179(C(n, 2))`
-/

namespace A344055.P14810170532641947930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A052179 (Nat.choose n 2)

end

end A344055.P14810170532641947930

namespace A344055

/-- `n*A052179(C(n, 2))` -/
def P14810170532641947930.Spec : Prop :=
  ∀ n, P14810170532641947930.a n = A344055 n

end A344055

/-! ## A344055.P12098442732592542959

`A081671(n)-A064613(n)`
-/

namespace A344055.P12098442732592542959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081671 n - A064613 n

end

end A344055.P12098442732592542959

namespace A344055

/-- `A081671(n)-A064613(n)` -/
def P12098442732592542959.Spec : Prop :=
  ∀ n, P12098442732592542959.a n = A344055 n

end A344055

/-! ## A344055.P5783350866894669637

`n*A052179(A161680(n))`
-/

namespace A344055.P5783350866894669637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A052179 (A161680 n).toNat

end

end A344055.P5783350866894669637

namespace A344055

/-- `n*A052179(A161680(n))` -/
def P5783350866894669637.Spec : Prop :=
  ∀ n, P5783350866894669637.a n = A344055 n

end A344055

/-! ## A344055.P4912017156851550430

`A081671(n)-A171568(∑[n])`
-/

namespace A344055.P4912017156851550430
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081671 n - A171568 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A344055.P4912017156851550430

namespace A344055

/-- `A081671(n)-A171568(∑[n])` -/
def P4912017156851550430.Spec : Prop :=
  ∀ n, P4912017156851550430.a n = A344055 n

end A344055

/-! ## A344055.P9107654866136740374

`A005573(n)-A081671(n)`
-/

namespace A344055.P9107654866136740374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005573 n - A081671 n

end

end A344055.P9107654866136740374

namespace A344055

/-- `A005573(n)-A081671(n)` -/
def P9107654866136740374.Spec : Prop :=
  ∀ n, P9107654866136740374.a n = A344055 n

end A344055

/-!
# A344056: a(n) = (2*n)! * hypergeom([3/2, 2, 1-n], [3, 2 - 2*n], 4) for n >= 1 and a(0) = 1.

The programs for A344056, there is no canonical definition to state claims against.
-/

/-! ## A344056.P10069708160667203445

`A127632(n)*A344057(n)`
-/

namespace A344056.P10069708160667203445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127632 n * A344057 n

end

end A344056.P10069708160667203445

/-! ## A344056.P12559189429228679072

`n!²*A111284(n+1)*A127632(n)`
-/

namespace A344056.P12559189429228679072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n ^ 2 : ℤ) * A111284 (n + 1) * A127632 n

end

end A344056.P12559189429228679072

/-! ## A344056.P6517738641548751421

`(2*n)!/A000108(abs(1-n))*A127632(n)`
-/

namespace A344056.P6517738641548751421
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (2 * n) : ℚ) / (A000108 |1 - (n : ℤ)|.toNat : ℚ) * (A127632 n : ℚ)

end

end A344056.P6517738641548751421

/-! ## A344056.P2661524497563378376

`A004277(n)!/A120588(n)*A127632(n)`
-/

namespace A344056.P2661524497563378376
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A004277 n).toNat : ℚ) / (A120588 n : ℚ) * (A127632 n : ℚ)

end

end A344056.P2661524497563378376

/-! ## A344056.P2260659116144711128

`A000142(2*n)/A120588(n)*A127632(n)`
-/

namespace A344056.P2260659116144711128
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 (2 * n) : ℚ) / (A120588 n : ℚ) * (A127632 n : ℚ)

end

end A344056.P2260659116144711128

/-!
# A344057: a(n) = (2*n)! / CatalanNumber(n - 1) for n >= 1 and a(0) = 1.

The programs for A344057, the canonical program `A344057.P5686206099117203802` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A344057 has offset 0).

The definition of A344057 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A344057.P5686206099117203802

`a(n-1)*n²*(2*n-1)/(2*n-3)` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A344057

/-- `a(n-1)*n²*(2*n-1)/(2*n-3)` -/
def P5686206099117203802.Spec : Prop :=
  ∀ n, P5686206099117203802.a n = (A344057 n : ℚ)

end A344057

/-! ## A344057.P16014359787339247109

`n!²*floor(abs(4*n-ϕ))`
-/

namespace A344057.P16014359787339247109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n ^ 2 : ℤ) * ⌊|(4 * n : ℝ) - Real.goldenRatio|⌋

end

end A344057.P16014359787339247109

namespace A344057

/-- `n!²*floor(abs(4*n-ϕ))` -/
def P16014359787339247109.Spec : Prop :=
  ∀ n, P16014359787339247109.a n = A344057 n

end A344057

/-! ## A344057.P17940494511954701931

`∏[A028310(n²)]*A111284(n+1)`
-/

namespace A344057.P17940494511954701931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * A111284 (n + 1)

end

end A344057.P17940494511954701931

namespace A344057

/-- `∏[A028310(n²)]*A111284(n+1)` -/
def P17940494511954701931.Spec : Prop :=
  ∀ n, P17940494511954701931.a n = A344057 n

end A344057

/-! ## A344057.P2041951705842258892

`(2*n)!/A120588(n)`
-/

namespace A344057.P2041951705842258892
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (2 * n) : ℚ) / (A120588 n : ℚ)

end

end A344057.P2041951705842258892

namespace A344057

/-- `(2*n)!/A120588(n)` -/
def P2041951705842258892.Spec : Prop :=
  ∀ n, P2041951705842258892.a n = (A344057 n : ℚ)

end A344057

/-! ## A344057.P9699794305789859786

`(2*n)!/A000108(abs(1-n))`
-/

namespace A344057.P9699794305789859786
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (2 * n) : ℚ) / (A000108 |1 - (n : ℤ)|.toNat : ℚ)

end

end A344057.P9699794305789859786

namespace A344057

/-- `(2*n)!/A000108(abs(1-n))` -/
def P9699794305789859786.Spec : Prop :=
  ∀ n, P9699794305789859786.a n = (A344057 n : ℚ)

end A344057

/-!
# A344058: Number of ways to write n as x + y + z with x*y + 2*y*z + 3*z*x a square, where x,y,z are positive integers with x or y a power of two (including 2^0 = 1).

The programs for A344058, there is no canonical definition to state claims against.
-/

/-! ## A344058.P15661361510872608522

`A064692(A262813(n+1)+A084218(n+1))`
-/

namespace A344058.P15661361510872608522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064692 (A262813 (n + 1) + A084218 (n + 1)).toNat

end

end A344058.P15661361510872608522

/-!
# A344059: Irregular triangle read by rows: T(n,k) = A344031(n,k)/2, n >= 1, 0 <= k <= 2*n-2.

The programs for A344059, there is no canonical definition to state claims against.
-/

/-! ## A344059.P15592174596741035628

`A344031(n+1)/2`
-/

namespace A344059.P15592174596741035628
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A344031 (n + 1) : ℚ) / 2

end

end A344059.P15592174596741035628

/-!
# A344060: a(n) = Sum_{d|n} sigma(d)^n.

The programs for A344060, there is no canonical definition to state claims against.
-/

/-! ## A344060.P6982919691231182241

`∑{d}[n+1, A000203(#)^(n+1)]`
-/

namespace A344060.P6982919691231182241
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000203 d ^ (n + 1)

end

end A344060.P6982919691231182241

/-! ## A344060.P13950921031964938374

`∑{d}[n+1, sqrt(A072861(#))^(n+1)]`
-/

namespace A344060.P13950921031964938374
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Real.sqrt (A072861 d : ℝ) ^ (n + 1)

end

end A344060.P13950921031964938374

/-! ## A344060.P17448884059381328590

`∑{d}[n+1, A097012((n+1)/#)^(n+1)]`
-/

namespace A344060.P17448884059381328590
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A097012 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat ^ (n + 1)

end

end A344060.P17448884059381328590

/-!
# A344061: a(n) = Sum_{d|n} sigma(d)^(n/d).

The programs for A344061, the canonical program `A344061.P11348002501753100675` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A344061 has offset 1).

The definition of A344061 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 419 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A344061.P11348002501753100675

`∑{d}[n+1, A000203(#)^ceil(n/#)]`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A344061

/-- `∑{d}[n+1, A000203(#)^ceil(n/#)]` -/
def P11348002501753100675.Spec : Prop :=
  ∀ n, P11348002501753100675.a n = (A344061 (n + 1) : ℚ)

end A344061

/-!
# A344062: Expansion of Product_{k>=1} (1 + 3^(k-1)*x^k).

The programs for A344062, there is no canonical definition to state claims against.
-/

/-! ## A344062.P2891279138158893925

`A215090(A344063(n))`
-/

namespace A344062.P2891279138158893925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215090 (A344063 n).toNat

end

end A344062.P2891279138158893925

/-! ## A344062.P15421215124572562241

`A064553(A000260(n)-A137260(n+1))`
-/

namespace A344062.P15421215124572562241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064553 (A000260 n - A137260 (n + 1)).toNat

end

end A344062.P15421215124572562241

/-!
# A344063: Expansion of Product_{k>=1} (1 + 4^(k-1)*x^k).

The programs for A344063, there is no canonical definition to state claims against.
-/

/-! ## A344063.P16155332928786482095

`A000593(A127088(n)-A006053(n))`
-/

namespace A344063.P16155332928786482095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000593 (A127088 n - A006053 n).toNat

end

end A344063.P16155332928786482095

/-! ## A344063.P7593544347409097549

`A049099(A180147(n))`
-/

namespace A344063.P7593544347409097549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049099 (A180147 n).toNat

end

end A344063.P7593544347409097549

/-!
# A344064: Expansion of Product_{k>=1} (1 + 5^(k-1)*x^k).

The programs for A344064, there is no canonical definition to state claims against.
-/

/-! ## A344064.P11891486185091398600

`A037459(A344063(n))`
-/

namespace A344064.P11891486185091398600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037459 (A344063 n).toNat

end

end A344064.P11891486185091398600

/-! ## A344064.P14915600696422820853

`A005350(A368490(n)+A005060(n))`
-/

namespace A344064.P14915600696422820853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005350 (A368490 n + A005060 n).toNat

end

end A344064.P14915600696422820853

/-!
# A344065: Expansion of Product_{k>=1} (1 + 6^(k-1)*x^k).

The programs for A344065, there is no canonical definition to state claims against.
-/

/-! ## A344065.P7834873867208140912

`A037460(A344063(n))`
-/

namespace A344065.P7834873867208140912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037460 (A344063 n).toNat

end

end A344065.P7834873867208140912

/-! ## A344065.P598108433104778603

`∏{e}[A195763(n+2), #+5]`
-/

namespace A344065.P598108433104778603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195763 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 5)

end

end A344065.P598108433104778603

/-!
# A344066: Expansion of Product_{k>=1} (1 + 7^(k-1)*x^k).

The programs for A344066, there is no canonical definition to state claims against.
-/

/-! ## A344066.P830240332025916902

`A037461(A344063(n))`
-/

namespace A344066.P830240332025916902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037461 (A344063 n).toNat

end

end A344066.P830240332025916902

/-! ## A344066.P7308427892404747499

`∏{e}[A195767(n+2), #+6]`
-/

namespace A344066.P7308427892404747499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195767 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 6)

end

end A344066.P7308427892404747499

/-!
# A344067: Expansion of Product_{k>=1} (1 + 8^(k-1)*x^k).

The programs for A344067, there is no canonical definition to state claims against.
-/

/-! ## A344067.P3000458850242718898

`A037462(A344063(n))`
-/

namespace A344067.P3000458850242718898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037462 (A344063 n).toNat

end

end A344067.P3000458850242718898

/-! ## A344067.P4515195502466336373

`∏{e}[A195763(n+2), #+7]`
-/

namespace A344067.P4515195502466336373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195763 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 7)

end

end A344067.P4515195502466336373

/-!
# A344068: Expansion of Product_{k>=1} (1 + 9^(k-1)*x^k).

The programs for A344068, there is no canonical definition to state claims against.
-/

/-! ## A344068.P15229500214753961685

`A037463(A344063(n))`
-/

namespace A344068.P15229500214753961685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037463 (A344063 n).toNat

end

end A344068.P15229500214753961685

/-! ## A344068.P18038549304624514491

`A037314(lcm(A093178(n), A344062(n)))`
-/

namespace A344068.P18038549304624514491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037314 (Int.lcm (A093178 n) (A344062 n))

end

end A344068.P18038549304624514491

/-!
# A344072: Smallest even fundamental discriminant k such that h(-k) = 2n, where h(D) is the class number of the quadratic field with discriminant D; or 0 if no such k exists.

The programs for A344072, there is no canonical definition to state claims against.
-/

/-! ## A344072.P427469590615800130

`A081319(2*(n+1))*A335616(A088083(3*n+2))`
-/

namespace A344072.P427469590615800130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081319 (2 * (n + 1)) * A335616 (A088083 (3 * n + 2)).toNat

end

end A344072.P427469590615800130

/-! ## A344072.P15988498230524446790

`A081319(2*(n+1))*A107628(A046004(2*n+1))`
-/

namespace A344072.P15988498230524446790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081319 (2 * (n + 1)) * A107628 (A046004 (2 * n + 1)).toNat

end

end A344072.P15988498230524446790

/-! ## A344072.P7344013888584005070

`A008586(A081319(2*(n+1))^A208183(n))`
-/

namespace A344072.P7344013888584005070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008586 (SequenceMachineLib.roundAway ((A081319 (2 * (n + 1)) : ℚ) ^ (A208183 n : ℤ))).toNat

end

end A344072.P7344013888584005070

/-! ## A344072.P5857596168746251108

`A008586(C(A081319(2*(n+1)), A208183(n)))`
-/

namespace A344072.P5857596168746251108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008586 (Nat.choose (A081319 (2 * (n + 1))).toNat (A208183 n).toNat)

end

end A344072.P5857596168746251108

/-!
# A344079: Numbers m such that A060649(m) > 0 and that C(-A060649(m)) is not cyclic, where C(D) is the class group of the quadratic field with discriminant D.

The programs for A344079, there is no canonical definition to state claims against.
-/

/-! ## A344079.P3020268834662428684

`lt[A060649(n+1), A344073(n+1)]+1`
-/

namespace A344079.P3020268834662428684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060649 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344073 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A344079.P3020268834662428684

/-!
# A344080: a(n) = Sum_{d|n} tau(d)^n, where tau(n) is the number of divisors of n.

The programs for A344080, there is no canonical definition to state claims against.
-/

/-! ## A344080.P9379082641746424196

`∑{d}[n+1, A000005(#)^(n+1)]`
-/

namespace A344080.P9379082641746424196
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000005 d ^ (n + 1)

end

end A344080.P9379082641746424196

/-! ## A344080.P13008062886477856780

`∑{d}[n+1, A046951(#²)^(n+1)]`
-/

namespace A344080.P13008062886477856780
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A046951 (d ^ 2) ^ (n + 1)

end

end A344080.P13008062886477856780

/-! ## A344080.P15603564380291008441

`∑{d}[n+1, sqrt(A035116(#))^(n+1)]`
-/

namespace A344080.P15603564380291008441
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Real.sqrt (A035116 d : ℝ) ^ (n + 1)

end

end A344080.P15603564380291008441

/-! ## A344080.P11592919224405113088

`∑{d}[n+1, (A038040(#)/#)^(n+1)]`
-/

namespace A344080.P11592919224405113088
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), ((A038040 d : ℚ) / (d : ℚ)) ^ (n + 1)

end

end A344080.P11592919224405113088

/-! ## A344080.P13920466374919078682

`∑{d}[n+1, A326196(A100577(#))^(n+1)]`
-/

namespace A344080.P13920466374919078682
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A326196 (A100577 d).toNat ^ (n + 1)

end

end A344080.P13920466374919078682

/-!
# A344081: a(n) = Sum_{d|n} tau(d)^d, where tau(n) is the number of divisors of n.

The programs for A344081, there is no canonical definition to state claims against.
-/

/-! ## A344081.P1729402185466828778

`∑{d}[n+1, A236284(#)]`
-/

namespace A344081.P1729402185466828778
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A236284 d

end

end A344081.P1729402185466828778

/-! ## A344081.P5935643331061896633

`∑{d}[n+1, A000005(#)^#]`
-/

namespace A344081.P5935643331061896633
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000005 d ^ d

end

end A344081.P5935643331061896633

/-! ## A344081.P5222514389430975196

`∑{d}[n+1, sqrt(A035116(#))^#]`
-/

namespace A344081.P5222514389430975196
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Real.sqrt (A035116 d : ℝ) ^ d

end

end A344081.P5222514389430975196

/-! ## A344081.P2590520407008603423

`∑{d}[n+1, (A038040(#)/#)^#]`
-/

namespace A344081.P2590520407008603423
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), ((A038040 d : ℚ) / (d : ℚ)) ^ d

end

end A344081.P2590520407008603423

/-! ## A344081.P13080743003313005557

`∑{d}[n+1, A044917(A032741(#)+1)^#]`
-/

namespace A344081.P13080743003313005557
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A044917 (A032741 d + 1).toNat ^ d

end

end A344081.P13080743003313005557

/-!
# A344082: a(n) = n * Sum_{d|n} tau(d)^3 / d, where tau(n) is the number of divisors of n.

The programs for A344082, the canonical program `A344082.P10735938395115113938` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A344082 has offset 1).

The definition of A344082 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A344082.P18434570865942184052

`∑{d}[n+1, A344132(#)]`
-/

namespace A344082.P18434570865942184052
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A344132 d

end

end A344082.P18434570865942184052

namespace A344082

/-- `∑{d}[n+1, A344132(#)]` -/
def P18434570865942184052.Spec : Prop :=
  ∀ n, P18434570865942184052.a n = A344082 (n + 1)

end A344082

/-! ## A344082.P10735938395115113938

`∑{d}[n+1, #*A319089((n+1)/#)]`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A344082

/-- `∑{d}[n+1, #*A319089((n+1)/#)]` -/
def P10735938395115113938.Spec : Prop :=
  ∀ n, P10735938395115113938.a n = A344082 (n + 1)

theorem P10735938395115113938.correct : P10735938395115113938.Spec := by
  intro n
  simp only [A344082, Nat.add_sub_cancel]

end A344082

/-! ## A344082.P17388495003329166966

`∑{d}[n+1, A000203(#)*A070919((n+1)/#)]`
-/

namespace A344082.P17388495003329166966
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000203 d * A070919 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A344082.P17388495003329166966

namespace A344082

/-- `∑{d}[n+1, A000203(#)*A070919((n+1)/#)]` -/
def P17388495003329166966.Spec : Prop :=
  ∀ n, P17388495003329166966.a n = A344082 (n + 1)

end A344082

/-! ## A344082.P10890465350105342904

`∑{d}[n+1, A000010(#)*A097988((n+1)/#)]`
-/

namespace A344082.P10890465350105342904
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A097988 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A344082.P10890465350105342904

namespace A344082

/-- `∑{d}[n+1, A000010(#)*A097988((n+1)/#)]` -/
def P10890465350105342904.Spec : Prop :=
  ∀ n, P10890465350105342904.a n = A344082 (n + 1)

end A344082

/-! ## A344082.P12742686166250731087

`∑{d}[n+1, A007429(#)*A247513((n+1)/#)]`
-/

namespace A344082.P12742686166250731087
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007429 d * A247513 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A344082.P12742686166250731087

namespace A344082

/-- `∑{d}[n+1, A007429(#)*A247513((n+1)/#)]` -/
def P12742686166250731087.Spec : Prop :=
  ∀ n, P12742686166250731087.a n = A344082 (n + 1)

end A344082

/-!
# A344084: Concatenated list of all finite nonempty sets of positive integers sorted first by maximum, then by length, and finally lexicographically.

The programs for A344084, there is no canonical definition to state claims against.
-/

/-! ## A344084.P12309807350336382100

`A048793(lt[A059995(3*n+2), A244040(n)])`
-/

namespace A344084.P12309807350336382100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 (3 * n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244040 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048793 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A344084.P12309807350336382100

/-! ## A344084.P11958155378233187078

`A048793(comp[A013929(2*n+5)-A014486(n)])`
-/

namespace A344084.P11958155378233187078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (2 * n + 5) - A014486 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048793 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A344084.P11958155378233187078

/-! ## A344084.P9237644785532854305

`A048793(lt[A330798(n), (3*n)²])`
-/

namespace A344084.P9237644785532854305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330798 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (3 * n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048793 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A344084.P9237644785532854305

/-! ## A344084.P4775921288271109359

`A048793(lt[A169808(n), A130240(n)])`
-/

namespace A344084.P4775921288271109359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169808 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130240 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048793 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A344084.P4775921288271109359

/-! ## A344084.P11410181693608079002

`A048793(lt[A079053(n+1), A005894(n)])`
-/

namespace A344084.P11410181693608079002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079053 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005894 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048793 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A344084.P11410181693608079002

/-!
# A344085: Triangle of squarefree numbers first grouped by greatest prime factor, then sorted by omega, then in increasing order, read by rows.

The programs for A344085, there is no canonical definition to state claims against.
-/

/-! ## A344085.P98584307141071108

`A019565(A209862(n))%A112066(n+1)`
-/

namespace A344085.P98584307141071108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A019565 (A209862 n).toNat) (A112066 (n + 1))

end

end A344085.P98584307141071108

/-! ## A344085.P11680507270603360769

`A019565(A209862(n))*A053632(A004006(n))`
-/

namespace A344085.P11680507270603360769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 (A209862 n).toNat * A053632 (A004006 n).toNat

end

end A344085.P11680507270603360769

/-! ## A344085.P7433525544715554195

`A019565(A209862(n))%A016789(A033581(n))`
-/

namespace A344085.P7433525544715554195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A019565 (A209862 n).toNat) (A016789 (A033581 n).toNat)

end

end A344085.P7433525544715554195

/-! ## A344085.P15352562803399938975

`A019565(A209862(n))^A143069(3^A161089(n+1))`
-/

namespace A344085.P15352562803399938975
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A019565 (A209862 n).toNat : ℚ) ^ (A143069 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (A161089 (n + 1) : ℤ))).toNat : ℤ)

end

end A344085.P15352562803399938975

/-! ## A344085.P12115858755463171891

`A019565(A209862(n)%A255071(n+1))`
-/

namespace A344085.P12115858755463171891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 (Int.tmod (A209862 n) (A255071 (n + 1))).toNat

end

end A344085.P12115858755463171891

/-!
# A344086: Flattened tetrangle of strict integer partitions sorted first by sum, then lexicographically.

The programs for A344086, there is no canonical definition to state claims against.
-/

/-! ## A344086.P9716003280220024429

`A268833(A293320(n)+A198788(n+1))`
-/

namespace A344086.P9716003280220024429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268833 (A293320 n + A198788 (n + 1)).toNat

end

end A344086.P9716003280220024429

/-! ## A344086.P4551423235548446880

`A269501(A171581(n+1)%A092801(n+1))`
-/

namespace A344086.P4551423235548446880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269501 (Int.tmod (A171581 (n + 1)) (A092801 (n + 1))).toNat

end

end A344086.P4551423235548446880

/-! ## A344086.P1196935521261450762

`A209279(lt[A052180(n+2), A110777(n+1)])`
-/

namespace A344086.P1196935521261450762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052180 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110777 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209279 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A344086.P1196935521261450762

/-! ## A344086.P2423886131592446134

`A209279(lt[A074804(2*(n+1)), A110777(n+1)])`
-/

namespace A344086.P2423886131592446134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074804 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110777 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209279 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A344086.P2423886131592446134

/-! ## A344086.P1038799041003407728

`A249973(∑{digits}[A249982(n+1)+A135750(n), #]+n)`
-/

namespace A344086.P1038799041003407728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249982 (n + 1) + A135750 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249973 (((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum + n)

end

end A344086.P1038799041003407728

/-!
# A344087: Flattened tetrangle of strict integer partitions sorted first by sum, then colexicographically.

The programs for A344087, there is no canonical definition to state claims against.
-/

/-! ## A344087.P1971191619358224142

`A141197(A061554(3*n))*A141197(A045576(n+1))`
-/

namespace A344087.P1971191619358224142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141197 (A061554 (3 * n)).toNat * A141197 (A045576 (n + 1)).toNat

end

end A344087.P1971191619358224142

/-!
# A344088: Flattened tetrangle of reversed strict integer partitions sorted first by sum, then colexicographically.

The programs for A344088, there is no canonical definition to state claims against.
-/

/-! ## A344088.P12004115318540724597

`A316715((A273895(n+1)+1)*A068962(n+1))`
-/

namespace A344088.P12004115318540724597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316715 ((A273895 (n + 1) + 1) * A068962 (n + 1)).toNat

end

end A344088.P12004115318540724597

/-! ## A344088.P6840360838290207300

`A002260(lt[A181651(3*n+4), A152980(n)])`
-/

namespace A344088.P6840360838290207300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181651 (3 * n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152980 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A344088.P6840360838290207300

/-! ## A344088.P8877197226933054668

`A078313(∑[∑[A006906(n)]])`
-/

namespace A344088.P8877197226933054668
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006906 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078313 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A344088.P8877197226933054668

/-! ## A344088.P12573751148480964551

`A195113(A032995(n+1))%5`
-/

namespace A344088.P12573751148480964551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A195113 (A032995 (n + 1)).toNat) 5

end

end A344088.P12573751148480964551

/-! ## A344088.P800639738480168116

`A060502(C(A105754(n+1), A027052(n)))`
-/

namespace A344088.P800639738480168116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060502 (Nat.choose (A105754 (n + 1)).toNat (A027052 n).toNat)

end

end A344088.P800639738480168116

/-!
# A344089: Flattened tetrangle of reversed strict integer partitions, sorted first by length and then colexicographically.

The programs for A344089, there is no canonical definition to state claims against.
-/

/-! ## A344089.P10452016860637968445

`A296656(lcm(A210585(n+1), A263111(n)))`
-/

namespace A344089.P10452016860637968445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296656 (Int.lcm (A210585 (n + 1)) (A263111 n))

end

end A344089.P10452016860637968445

/-! ## A344089.P12353654902001331

`gcd(A175470(n+1), A327187(A000050(n+2)))`
-/

namespace A344089.P12353654902001331
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A175470 (n + 1)) (A327187 (A000050 (n + 2)).toNat)

end

end A344089.P12353654902001331

/-!
# A344090: Flattened tetrangle of strict integer partitions, sorted first by sum, then by length, then lexicographically.

The programs for A344090, there is no canonical definition to state claims against.
-/

/-! ## A344090.P7205581283927863808

`∑{e}[A223417(comp[∑[n]])+1, #]`
-/

namespace A344090.P7205581283927863808
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223417 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A344090.P7205581283927863808

/-! ## A344090.P14100590045959527121

`A249821(lt[A000700(n), A002260(3*n+2)])`
-/

namespace A344090.P14100590045959527121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000700 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249821 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A344090.P14100590045959527121

/-!
# A344091: Flattened tetrangle of all finite multisets of positive integers sorted first by sum, then by length, then colexicographically.

The programs for A344091, there is no canonical definition to state claims against.
-/

/-! ## A344091.P9681357029536524248

`A334302(n+1)%7`
-/

namespace A344091.P9681357029536524248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A334302 (n + 1)) 7

end

end A344091.P9681357029536524248

/-! ## A344091.P13615520597652587059

`A002330(A334302(n+1))`
-/

namespace A344091.P13615520597652587059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002330 (A334302 (n + 1)).toNat

end

end A344091.P13615520597652587059

/-! ## A344091.P13868518788734576296

`A334302(A296882(n+1))`
-/

namespace A344091.P13868518788734576296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334302 (A296882 (n + 1)).toNat

end

end A344091.P13868518788734576296

/-! ## A344091.P7040765204866676036

`A334302(A304042(n)+n)`
-/

namespace A344091.P7040765204866676036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334302 (A304042 n + (n : ℤ)).toNat

end

end A344091.P7040765204866676036

/-! ## A344091.P18416908101889501141

`A354257(A334302(n+1)²)`
-/

namespace A344091.P18416908101889501141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354257 (A334302 (n + 1) ^ 2).toNat

end

end A344091.P18416908101889501141

/-! ## A344091.P18330162902481672422

`A004901(A334302(n+1)+1)`
-/

namespace A344091.P18330162902481672422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004901 (A334302 (n + 1) + 1).toNat

end

end A344091.P18330162902481672422

/-! ## A344091.P18048297897248002180

`A029954(A334302(n+1)+1)`
-/

namespace A344091.P18048297897248002180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029954 (A334302 (n + 1) + 1).toNat

end

end A344091.P18048297897248002180

/-! ## A344091.P12180075263748550194

`A029964(A334302(n+1)+1)`
-/

namespace A344091.P12180075263748550194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029964 (A334302 (n + 1) + 1).toNat

end

end A344091.P12180075263748550194

/-!
# A344094: a(n) = [x^n] Product_{k>=1} (1 + n^(k+1)*x^k).

The programs for A344094, there is no canonical definition to state claims against.
-/

/-! ## A344094.P7757357262999408949

`n^n*A291698(n)`
-/

namespace A344094.P7757357262999408949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ n : ℤ) * A291698 n

end

end A344094.P7757357262999408949

/-! ## A344094.P10826374326125294137

`A000312(n)*A286957(∑[4*n])`
-/

namespace A344094.P10826374326125294137
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000312 n * A286957 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A344094.P10826374326125294137

/-! ## A344094.P1641063215108858061

`n^n*A286957(A106232(n+1))`
-/

namespace A344094.P1641063215108858061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ n : ℤ) * A286957 (A106232 (n + 1)).toNat

end

end A344094.P1641063215108858061

/-! ## A344094.P7596099944994416547

`A291698(n)/A000009(n)*A292305(n)`
-/

namespace A344094.P7596099944994416547
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A291698 n : ℚ) / (A000009 n : ℚ) * (A292305 n : ℚ)

end

end A344094.P7596099944994416547

/-! ## A344094.P11432299114333846378

`A000027(A291698(n))*A000312(n)`
-/

namespace A344094.P11432299114333846378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A291698 n).toNat * A000312 n

end

end A344094.P11432299114333846378

/-!
# A344095: a(n) = [x^n] Product_{k>=1} 1 / (1 - n^(k+1)*x^k).

The programs for A344095, there is no canonical definition to state claims against.
-/

/-! ## A344095.P10111651238142201700

`n^n*A124577(n)`
-/

namespace A344095.P10111651238142201700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ n : ℤ) * A124577 n

end

end A344095.P10111651238142201700

/-! ## A344095.P1256353883625997514

`A000312(n)*A209664(A028310(∑[n]))`
-/

namespace A344095.P1256353883625997514
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000312 n * A209664 (A028310 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A344095.P1256353883625997514

/-! ## A344095.P16849500238535696587

`A000312(n)*A246935(A106232(n+1))`
-/

namespace A344095.P16849500238535696587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000312 n * A246935 (A106232 (n + 1)).toNat

end

end A344095.P16849500238535696587

/-! ## A344095.P14511119744371529123

`A000312(n)*A209664(A179865(n+1))`
-/

namespace A344095.P14511119744371529123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000312 n * A209664 (A179865 (n + 1)).toNat

end

end A344095.P14511119744371529123

/-! ## A344095.P5720203586512325831

`A124577(n)/A000009(n)*A292305(n)`
-/

namespace A344095.P5720203586512325831
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A124577 n : ℚ) / (A000009 n : ℚ) * (A292305 n : ℚ)

end

end A344095.P5720203586512325831

/-!
# A344096: A055932(n) is the a(n)-th positive integer having its distinct prime factors.

The programs for A344096, there is no canonical definition to state claims against.
-/

/-! ## A344096.P14627394062683732546

`A078899(A124833(n+1))`
-/

namespace A344096.P14627394062683732546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078899 (A124833 (n + 1)).toNat

end

end A344096.P14627394062683732546

/-! ## A344096.P15442616151028742924

`A008479(A055932(n+1))`
-/

namespace A344096.P15442616151028742924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008479 (A055932 (n + 1)).toNat

end

end A344096.P15442616151028742924

/-! ## A344096.P2913740882880800095

`A008479(record[A071364(n+1)])`
-/

namespace A344096.P2913740882880800095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071364 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008479 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A344096.P2913740882880800095

/-! ## A344096.P6830395895953751041

`A008479(record[A083259(n+1)])`
-/

namespace A344096.P6830395895953751041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083259 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008479 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A344096.P6830395895953751041

/-! ## A344096.P9461586850714359914

`A008479(record[A340346(n+1)])`
-/

namespace A344096.P9461586850714359914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340346 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008479 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A344096.P9461586850714359914

/-!
# A344097: Expansion of Product_{k>=1} (1 + x^k)^binomial(k+4,4).

The programs for A344097, there is no canonical definition to state claims against.
-/

/-! ## A344097.P4526772779918750735

`∑[A070086(A087798(n))]`
-/

namespace A344097.P4526772779918750735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070086 (A087798 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A344097.P4526772779918750735

/-!
# A344098: a(n) = [x^n] Product_{k>=1} (1 + x^k)^binomial(k+n-1,n-1).

The programs for A344098, there is no canonical definition to state claims against.
-/

/-! ## A344098.P12747126460036678270

`A182112(A292078(n+1))-3`
-/

namespace A344098.P12747126460036678270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182112 (A292078 (n + 1)).toNat - 3

end

end A344098.P12747126460036678270

/-! ## A344098.P3184184573139195220

`A311259(A120970(n)-A001349(n))`
-/

namespace A344098.P3184184573139195220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311259 (A120970 n - A001349 n).toNat

end

end A344098.P3184184573139195220

/-!
# A344099: Expansion of Product_{k>=1} (1 + x^k)^binomial(k+3,4).

The programs for A344099, there is no canonical definition to state claims against.
-/

/-! ## A344099.P18122453463279856383

`A184197(n+2)%A129286(A259090(n+1))`
-/

namespace A344099.P18122453463279856383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A184197 (n + 2)) (A129286 (A259090 (n + 1)).toNat)

end

end A344099.P18122453463279856383

/-! ## A344099.P6887664751794711326

`A061017((comp[∑[n]]-n)^(n-char[1]))`
-/

namespace A344099.P6887664751794711326
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061017 (SequenceMachineLib.roundAway (((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ) : ℚ) ^ ((n : ℤ) - ((if ∃ j, f3 j = n then 1 else 0 : ℕ) : ℤ) : ℤ))).toNat

end

end A344099.P6887664751794711326

