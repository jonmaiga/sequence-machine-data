import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C005
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C017
import Seq.B000.C019
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C043
import Seq.B000.C051
import Seq.B001.C000
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C008
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C013
import Seq.B001.C014
import Seq.B002.C000
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C002
import Seq.B005.C003
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B009.C000
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
import Seq.Opaque.C012
import Seq.Opaque.C013
import Seq.Opaque.C014
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

/-!
# A401211: Number of simple graphs on n unlabled vertices rooted at a triangle.

The programs for A401211, there is no canonical definition to state claims against.
-/

/-! ## A401211.P9758525066293468909

`A344548(A148445(n))`
-/

namespace A401211.P9758525066293468909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344548 (A148445 n).toNat

end

end A401211.P9758525066293468909

/-! ## A401211.P13460641140202112463

`A328607(A362607(∑[n]))`
-/

namespace A401211.P13460641140202112463
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328607 (A362607 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A401211.P13460641140202112463

/-!
# A401212: Total number of undirected cycles in all labeled graphs on n vertices.

The programs for A401212, there is no canonical definition to state claims against.
-/

/-! ## A401212.P1577135944120779820

`A003415(n*A390884(n))`
-/

namespace A401212.P1577135944120779820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 ((n : ℤ) * A390884 n).toNat

end

end A401212.P1577135944120779820

/-!
# A401213: Total number of undirected paths in all labeled graphs on n vertices, singleton paths excluded.

The programs for A401213, the canonical program `A401213.P15491154047137647949` is in `Seq.B000.C051`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A401213 has offset 1).

The definition of A401213 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A401213.P15491154047137647949

`∑{#}[n-1, C(n+1, #+2)*(#+2)!*2^(C(n+1, 2)-(#+2))]`

The canonical program, it is in `Seq.B000.C051`.
-/

namespace A401213

/-- `∑{#}[n-1, C(n+1, #+2)*(#+2)!*2^(C(n+1, 2)-(#+2))]` -/
def P15491154047137647949.Spec : Prop :=
  ∀ n, P15491154047137647949.a n = (A401213 (n + 1) : ℚ)

end A401213

/-!
# A401216: Total number of triangles in all distinct simple graphs on n unlabeled vertices.

The programs for A401216, there is no canonical definition to state claims against.
-/

/-! ## A401216.P14437427577189549266

`A054899(∑[C(2*n, n)/(n+1)]²)`
-/

namespace A401216.P14437427577189549266
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (2 * n) n : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054899 (SequenceMachineLib.roundAway ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2)).toNat

end

end A401216.P14437427577189549266

/-! ## A401216.P16604723938522803282

`A054899(A014137(n)²)`
-/

namespace A401216.P16604723938522803282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054899 (A014137 n ^ 2).toNat

end

end A401216.P16604723938522803282

/-!
# A401218: Number of distinct primes in the Pratt primality certificate for the n-th prime.

The programs for A401218, there is no canonical definition to state claims against.
-/

/-! ## A401218.P3038498912651485851

`∑{p}[A127699(A000040(n+1)), A001221(#)]`
-/

namespace A401218.P3038498912651485851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127699 (A000040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A001221 p

end

end A401218.P3038498912651485851

/-! ## A401218.P12216460105735307098

`∑{p}[A127699(2+2*(A000040(n+1)-1)), A005361(#)]`
-/

namespace A401218.P12216460105735307098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127699 (2 + 2 * (A000040 (n + 1) - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A005361 p

end

end A401218.P12216460105735307098

/-! ## A401218.P10883803348897018528

`A366927(A000040(1+n))`
-/

namespace A401218.P10883803348897018528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366927 (A000040 (1 + n)).toNat

end

end A401218.P10883803348897018528

/-! ## A401218.P15754218514544314042

`A366927(A049551(n+1))`
-/

namespace A401218.P15754218514544314042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366927 (A049551 (n + 1)).toNat

end

end A401218.P15754218514544314042

/-! ## A401218.P5340997033073499744

`A366927(A049569(n+1))`
-/

namespace A401218.P5340997033073499744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366927 (A049569 (n + 1)).toNat

end

end A401218.P5340997033073499744

/-!
# A401219: Smallest prime that has n distinct primes in its Pratt primality certificate.

The programs for A401219, there is no canonical definition to state claims against.
-/

/-! ## A401219.P3288821947504214863

`filter[A366929(n+1), A021913(#)]`
-/

namespace A401219.P3288821947504214863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366929 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A021913 (f1 j).toNat = 1) n)

end

end A401219.P3288821947504214863

/-! ## A401219.P16471283618825515646

`filter[A366929(n+1), A092248(#)]`
-/

namespace A401219.P16471283618825515646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366929 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A092248 (f1 j).toNat = 1) n)

end

end A401219.P16471283618825515646

/-! ## A401219.P1546693111111422227

`filter[A366929(n+1), A144101(#)]`
-/

namespace A401219.P1546693111111422227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366929 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A144101 (f1 j).toNat = 1) n)

end

end A401219.P1546693111111422227

/-! ## A401219.P12330433174469014744

`filter[A366929(n+1), A165560(#)]`
-/

namespace A401219.P12330433174469014744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366929 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A165560 (f1 j).toNat = 1) n)

end

end A401219.P12330433174469014744

/-! ## A401219.P15707075380364590194

`filter[A366929(n+1), A189727(#)]`
-/

namespace A401219.P15707075380364590194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366929 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A189727 (f1 j).toNat = 1) n)

end

end A401219.P15707075380364590194

/-!
# A401223: Number of largest sets S of points of the 3 X n grid such that any two distinct rectangles with all four corners at grid points (tilted rectangles included) have distinct sets of corners outside S.

The programs for A401223, there is no canonical definition to state claims against.
-/

/-! ## A401223.P11066681823191009047

`A399580(A000064(n+1))`
-/

namespace A401223.P11066681823191009047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399580 (A000064 (n + 1)).toNat

end

end A401223.P11066681823191009047

/-! ## A401223.P6903588268630287077

`A399580(A001304(n+1))`
-/

namespace A401223.P6903588268630287077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399580 (A001304 (n + 1)).toNat

end

end A401223.P6903588268630287077

/-! ## A401223.P3162285432075052058

`A399580(A001305(n+1))`
-/

namespace A401223.P3162285432075052058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399580 (A001305 (n + 1)).toNat

end

end A401223.P3162285432075052058

/-!
# A401224: Number of largest sets S of points of the 4 X n grid such that any two distinct rectangles with all four corners at grid points (tilted rectangles included) have distinct sets of corners outside S.

The programs for A401224, there is no canonical definition to state claims against.
-/

/-! ## A401224.P13840955144621730381

`A399580(A024669(n+1))`
-/

namespace A401224.P13840955144621730381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399580 (A024669 (n + 1)).toNat

end

end A401224.P13840955144621730381

/-!
# A401228: Numbers of the form p^2*q where p and q are primes, with p taken from the first column of irregular array A401051, and q from the subsequent columns.

The programs for A401228, there is no canonical definition to state claims against.
-/

/-! ## A401228.P10935719034951502662

`A020639(A401051(2*n+1)²)²*A401062(n+1)`
-/

namespace A401228.P10935719034951502662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A401051 (2 * n + 1) ^ 2).toNat ^ 2 * A401062 (n + 1)

end

end A401228.P10935719034951502662

/-!
# A401229: Numbers of the form p^2*q where p and q are primes with p > q, and p divides A276085(p^2*q), where A276085 is fully additive with a(p) = p#/p.

The programs for A401229, there is no canonical definition to state claims against.
-/

/-! ## A401229.P17522041473043509094

`A401228(A109960(n)+A002944(n+2))`
-/

namespace A401229.P17522041473043509094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A401228 (A109960 n + A002944 (n + 2)).toNat

end

end A401229.P17522041473043509094

/-!
# A401231: Numbers of the form p^2*q*r where p, q, r are primes with p > q > r, and p divides A276085(p^2*q*r), where A276085 is fully additive with a(p) = p#/p.

The programs for A401231, there is no canonical definition to state claims against.
-/

/-! ## A401231.P5183328351379974506

`∩[A398863(n+1), A401232(n+1)]`
-/

namespace A401231.P5183328351379974506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398863 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A401232 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A401231.P5183328351379974506

/-! ## A401231.P3568447584824192266

`∩[A398863(n+1), A401233(n+1)]`
-/

namespace A401231.P3568447584824192266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398863 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A401233 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A401231.P3568447584824192266

/-! ## A401231.P16604076746170184299

`∩[A391866(n+1), A398863(n+1)]`
-/

namespace A401231.P16604076746170184299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391866 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398863 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A401231.P16604076746170184299

/-!
# A401232: Numbers k such that A006530(k) divides A276085(k), where A006530(k) is the largest prime dividing k, 1 if k is 1, and A276085 is fully additive with a(p) = p#/p.

The programs for A401232, there is no canonical definition to state claims against.
-/

/-! ## A401232.P7500020941983931709

`lt[A401066(n+1), 1]+1`
-/

namespace A401232.P7500020941983931709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A401066 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A401232.P7500020941983931709

/-! ## A401232.P8396363025692137186

`eq[3, A066499(A401066(n+1)+1)]+1`
-/

namespace A401232.P8396363025692137186
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066499 (A401066 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A401232.P8396363025692137186

/-! ## A401232.P14273153482448951022

`eq[3, A051755(A401066(n+1)+2)]+1`
-/

namespace A401232.P14273153482448951022
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051755 (A401066 (n + 1) + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A401232.P14273153482448951022

/-!
# A401233: Numbers k with no p^p factors and such that A006530(k) divides A276085(k), where A006530(k) is the largest prime dividing k (with 1 if k is 1), and A276085 is fully additive with a(p) = p#/p.

The programs for A401233, there is no canonical definition to state claims against.
-/

/-! ## A401233.P6384652756716139633

`filter[A401232(n+1), A359550(#)]`
-/

namespace A401233.P6384652756716139633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A401232 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359550 (f1 j).toNat = 1) n)

end

end A401233.P6384652756716139633

/-! ## A401233.P15196811406867294858

`∩[A048103(n+1), A401232(n+1)]`
-/

namespace A401233.P15196811406867294858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048103 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A401232 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A401233.P15196811406867294858

/-!
# A401234: Squarefree numbers k such that A006530(k) divides A276085(k), where A006530(k) is the largest prime dividing k (with 1 if k is 1), and A276085 is fully additive with a(p) = p#/p.

The programs for A401234, there is no canonical definition to state claims against.
-/

/-! ## A401234.P7045811185176352010

`record[A007913(A401232(1+n))]`
-/

namespace A401234.P7045811185176352010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A401232 (1 + n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A401234.P7045811185176352010

/-! ## A401234.P3136258281779324620

`filter[A401232(n+1), A008966(#)]`
-/

namespace A401234.P3136258281779324620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A401232 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A401234.P3136258281779324620

/-! ## A401234.P5881381107182701988

`filter[A401233(1+n), A008966(#)]`
-/

namespace A401234.P5881381107182701988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A401233 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A401234.P5881381107182701988

/-! ## A401234.P4750783079321122614

`filter[A401232(n+1), A354819(#)]`
-/

namespace A401234.P4750783079321122614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A401232 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354819 (f1 j).toNat = 1) n)

end

end A401234.P4750783079321122614

/-! ## A401234.P6897846703558090118

`filter[A401233(n+1), A354819(#)]`
-/

namespace A401234.P6897846703558090118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A401233 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354819 (f1 j).toNat = 1) n)

end

end A401234.P6897846703558090118

/-! ## A401234.P16373316977094844876

`filter[A401233(n+1), A359834(#)]`
-/

namespace A401234.P16373316977094844876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A401233 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359834 (f1 j).toNat = 1) n)

end

end A401234.P16373316977094844876

/-! ## A401234.P4569433982549743860

`∩[A005117(n+1), A401232(n+1)]`
-/

namespace A401234.P4569433982549743860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A401232 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A401234.P4569433982549743860

/-! ## A401234.P7185785021135739989

`∩[A005117(n+1), A401233(n+1)]`
-/

namespace A401234.P7185785021135739989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A401233 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A401234.P7185785021135739989

/-! ## A401234.P2818937476570403366

`filter[A401232(n+1), A323154(#)]`
-/

namespace A401234.P2818937476570403366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A401232 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323154 (f1 j).toNat = 1) n)

end

end A401234.P2818937476570403366

/-! ## A401234.P15656555397297819543

`filter[A401233(n+1), A323154(#)]`
-/

namespace A401234.P15656555397297819543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A401233 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323154 (f1 j).toNat = 1) n)

end

end A401234.P15656555397297819543

/-! ## A401234.P1403559368431859182

`filter[A401233(n+1), A353559(#)]`
-/

namespace A401234.P1403559368431859182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A401233 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353559 (f1 j).toNat = 1) n)

end

end A401234.P1403559368431859182

/-! ## A401234.P15044434446119115491

`filter[A401233(n+1), A353627(#)]`
-/

namespace A401234.P15044434446119115491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A401233 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353627 (f1 j).toNat = 1) n)

end

end A401234.P15044434446119115491

/-!
# A401235: a(n) = A276086(A005235(n)), where A276086 is the primorial base exp-function, and A005235 lists fortunate numbers.

The programs for A401235, there is no canonical definition to state claims against.
-/

/-! ## A401235.P13105393913903082426

`A401236(n+1)/A000040(1+n+1)`
-/

namespace A401235.P13105393913903082426
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A401236 (n + 1) : ℚ) / (A000040 (1 + (n + 1)) : ℚ)

end

end A401235.P13105393913903082426

/-! ## A401235.P5748297806250730129

`A276086(A005235(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A401235.P5748297806250730129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276086 (A005235 (n + 1)).toNat

end

end A401235.P5748297806250730129

/-! ## A401235.P8214742633867249878

`A359423(or(1, A005235(n+1)))`
-/

namespace A401235.P8214742633867249878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359423 (Int.lor 1 (A005235 (n + 1))).toNat

end

end A401235.P8214742633867249878

/-! ## A401235.P17724222609000251536

`∑{d}[A005235(n+1), A358669(#)]`
-/

namespace A401235.P17724222609000251536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005235 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A358669 d

end

end A401235.P17724222609000251536

/-! ## A401235.P17326486303690281208

`∑{d}[A005235(n+1), A359423(#)]`
-/

namespace A401235.P17326486303690281208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005235 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A359423 d

end

end A401235.P17326486303690281208

/-! ## A401235.P8098386051986900970

`2*A324895(A281318(n+1)+2)`
-/

namespace A401235.P8098386051986900970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A324895 (A281318 (n + 1) + 2).toNat

end

end A401235.P8098386051986900970

/-! ## A401235.P18300715320646087409

`A351225(A005235(n+1))+A281318(n+1)+2`
-/

namespace A401235.P18300715320646087409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351225 (A005235 (n + 1)).toNat + (A281318 (n + 1) + 2)

end

end A401235.P18300715320646087409

/-! ## A401235.P16968164494808959409

`A276086(A281318(n+1)+2)`
-/

namespace A401235.P16968164494808959409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276086 (A281318 (n + 1) + 2).toNat

end

end A401235.P16968164494808959409

/-! ## A401235.P5443250398304371504

`∑{p}[A000040(A348424(n+1)+1+n), A276086(#)]`
-/

namespace A401235.P5443250398304371504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A348424 (n + 1) + 1 + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A276086 p

end

end A401235.P5443250398304371504

/-! ## A401235.P3217449115779421895

`A351225(A005235(n+1))+A000040(A348424(n+1)+1+n)`
-/

namespace A401235.P3217449115779421895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351225 (A005235 (n + 1)).toNat + A000040 (A348424 (n + 1) + 1 + (n : ℤ)).toNat

end

end A401235.P3217449115779421895

/-!
# A401236: a(n) = A276086(A035345(n)), where A276086 is the primorial base exp-function, and A035345 is the smallest prime > 1 + (prime(1)*prime(2)*...*prime(n)).

The programs for A401236, there is no canonical definition to state claims against.
-/

/-! ## A401236.P8947604109576286999

`A276086(A035345(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A401236.P8947604109576286999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276086 (A035345 n).toNat

end

end A401236.P8947604109576286999

/-! ## A401236.P12134767918516963718

`A276086(A233862(n+1)+A002110(n))`
-/

namespace A401236.P12134767918516963718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276086 (A233862 (n + 1) + A002110 n).toNat

end

end A401236.P12134767918516963718

/-!
# A401237: Numbers k such that prime(A235224(k)) divides k. Here we assume that prime(0) = 1, thus the initial term is 0.

The programs for A401237, the canonical program `A401237.P4794551307874443117` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A401237 has offset 1).

The definition of A401237 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 813 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A401237.P3133586535412514268

`eq[A078595(n+1), A401238(n)]`
-/

namespace A401237.P3133586535412514268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078595 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A401238 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A401237.P3133586535412514268

namespace A401237

/-- `eq[A078595(n+1), A401238(n)]` -/
def P3133586535412514268.Spec : Prop :=
  ∀ n, (P3133586535412514268.a n : ℤ) = A401237 (n + 1)

end A401237

/-! ## A401237.P4794551307874443117

`eq[A185012(n), A401238(n)]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A401237

/-- `eq[A185012(n), A401238(n)]` -/
def P4794551307874443117.Spec : Prop :=
  ∀ n, (P4794551307874443117.a n : ℤ) = A401237 (n + 1)

theorem P4794551307874443117.correct : P4794551307874443117.Spec := by
  intro n
  simp only [A401237, Nat.add_sub_cancel]

end A401237

/-! ## A401237.P8042082856040403564

`eq[A185015(n), A401238(n)]`
-/

namespace A401237.P8042082856040403564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185015 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A401238 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A401237.P8042082856040403564

namespace A401237

/-- `eq[A185015(n), A401238(n)]` -/
def P8042082856040403564.Spec : Prop :=
  ∀ n, (P8042082856040403564.a n : ℤ) = A401237 (n + 1)

end A401237

/-! ## A401237.P9047566712408318901

`eq[A185017(n), A401238(n)]`
-/

namespace A401237.P9047566712408318901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185017 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A401238 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A401237.P9047566712408318901

namespace A401237

/-- `eq[A185017(n), A401238(n)]` -/
def P9047566712408318901.Spec : Prop :=
  ∀ n, (P9047566712408318901.a n : ℤ) = A401237 (n + 1)

end A401237

/-! ## A401237.P5024278547194811129

`eq[A181405(n+1), A401238(n)]`
-/

namespace A401237.P5024278547194811129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181405 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A401238 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A401237.P5024278547194811129

namespace A401237

/-- `eq[A181405(n+1), A401238(n)]` -/
def P5024278547194811129.Spec : Prop :=
  ∀ n, (P5024278547194811129.a n : ℤ) = A401237 (n + 1)

end A401237

/-!
# A401238: a(n) = n mod A008578(1+A235224(n)).

The programs for A401238, the canonical program `A401238.P3135409349228925586` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A401238 has offset 0).

The definition of A401238 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A235224, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A401238.P3135409349228925586

`n%A008578(1+A235224(n))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A401238

/-- `n%A008578(1+A235224(n))` -/
def P3135409349228925586.Spec : Prop :=
  ∀ n, P3135409349228925586.a n = A401238 n

theorem P3135409349228925586.correct : P3135409349228925586.Spec := by
  intro n
  simp only [A401238]

end A401238

/-!
# A401239: The number of prime powers with odd exponents (A246551) that divide n.

The programs for A401239, the canonical program `A401239.P11563209216477383801` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A401239 has offset 1).

The definition of A401239 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A401239.P8357119769890322982

`∑{d}[n+1, A353817(#)]`
-/

namespace A401239.P8357119769890322982
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A353817 d

end

end A401239.P8357119769890322982

namespace A401239

/-- `∑{d}[n+1, A353817(#)]` -/
def P8357119769890322982.Spec : Prop :=
  ∀ n, P8357119769890322982.a n = A401239 (n + 1)

end A401239

/-! ## A401239.P11563209216477383801

`A001222(A019554(n+1))`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A401239

/-- `A001222(A019554(n+1))` -/
def P11563209216477383801.Spec : Prop :=
  ∀ n, P11563209216477383801.a n = A401239 (n + 1)

theorem P11563209216477383801.correct : P11563209216477383801.Spec := by
  intro n
  simp only [A401239, Nat.add_sub_cancel]

end A401239

/-! ## A401239.P17227991138791165434

`A001222(n+1)-A362412(n+1)`
-/

namespace A401239.P17227991138791165434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) - A362412 (n + 1)

end

end A401239.P17227991138791165434

namespace A401239

/-- `A001222(n+1)-A362412(n+1)` -/
def P17227991138791165434.Spec : Prop :=
  ∀ n, P17227991138791165434.a n = A401239 (n + 1)

end A401239

/-! ## A401239.P5002602650284147606

`(A001222(n+1)+A162642(n+1))/2`
-/

namespace A401239.P5002602650284147606
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001222 (n + 1) + A162642 (n + 1) : ℚ) / 2

end

end A401239.P5002602650284147606

namespace A401239

/-- `(A001222(n+1)+A162642(n+1))/2` -/
def P5002602650284147606.Spec : Prop :=
  ∀ n, P5002602650284147606.a n = (A401239 (n + 1) : ℚ)

end A401239

/-! ## A401239.P17732408052488647356

`A001222(A053143(n+1))/2`
-/

namespace A401239.P17732408052488647356
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001222 (A053143 (n + 1)).toNat : ℚ) / 2

end

end A401239.P17732408052488647356

namespace A401239

/-- `A001222(A053143(n+1))/2` -/
def P17732408052488647356.Spec : Prop :=
  ∀ n, P17732408052488647356.a n = (A401239 (n + 1) : ℚ)

end A401239

/-! ## A401239.P7221476373738244069

`∑{e}[n+1, ceil(#/2)]`
-/

namespace A401239.P7221476373738244069
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), ⌈(Nat.factorization (f1 n) p : ℚ) / 2⌉

end

end A401239.P7221476373738244069

namespace A401239

/-- `∑{e}[n+1, ceil(#/2)]` -/
def P7221476373738244069.Spec : Prop :=
  ∀ n, P7221476373738244069.a n = A401239 (n + 1)

end A401239

/-! ## A401239.P9055691246310815607

`∑{p}[n+1, val(#*(n+1), #²)]`
-/

namespace A401239.P9055691246310815607
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), SequenceMachineLib.valuation (p * (n + 1)) (p ^ 2)

end

end A401239.P9055691246310815607

namespace A401239

/-- `∑{p}[n+1, val(#*(n+1), #²)]` -/
def P9055691246310815607.Spec : Prop :=
  ∀ n, (P9055691246310815607.a n : ℤ) = A401239 (n + 1)

end A401239

/-! ## A401239.P1382847026086899965

`A001222(A097246(n+1))`
-/

namespace A401239.P1382847026086899965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A097246 (n + 1)).toNat

end

end A401239.P1382847026086899965

namespace A401239

/-- `A001222(A097246(n+1))` -/
def P1382847026086899965.Spec : Prop :=
  ∀ n, P1382847026086899965.a n = A401239 (n + 1)

end A401239

/-! ## A401239.P6097228627439185104

`A362412(n+1)+A162642(n+1)`
-/

namespace A401239.P6097228627439185104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362412 (n + 1) + A162642 (n + 1)

end

end A401239.P6097228627439185104

namespace A401239

/-- `A362412(n+1)+A162642(n+1)` -/
def P6097228627439185104.Spec : Prop :=
  ∀ n, P6097228627439185104.a n = A401239 (n + 1)

end A401239

/-! ## A401239.P7176603526352302245

`A001222((n+1)/A000188(n+1))`
-/

namespace A401239.P7176603526352302245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A000188 (n + 1) : ℚ))).toNat

end

end A401239.P7176603526352302245

namespace A401239

/-- `A001222((n+1)/A000188(n+1))` -/
def P7176603526352302245.Spec : Prop :=
  ∀ n, P7176603526352302245.a n = A401239 (n + 1)

end A401239

/-! ## A401239.P15085452437170917108

`A347395((n+1)*A007913(n+1))`
-/

namespace A401239.P15085452437170917108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347395 ((n + 1 : ℤ) * A007913 (n + 1)).toNat

end

end A401239.P15085452437170917108

namespace A401239

/-- `A347395((n+1)*A007913(n+1))` -/
def P15085452437170917108.Spec : Prop :=
  ∀ n, P15085452437170917108.a n = A401239 (n + 1)

end A401239

/-! ## A401239.P6485468057774504119

`A385379((n+1)²)`
-/

namespace A401239.P6485468057774504119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385379 ((n + 1) ^ 2)

end

end A401239.P6485468057774504119

namespace A401239

/-- `A385379((n+1)²)` -/
def P6485468057774504119.Spec : Prop :=
  ∀ n, P6485468057774504119.a n = A401239 (n + 1)

end A401239

/-! ## A401239.P5919716192599127639

`A362412(A019554(n+1)²)`
-/

namespace A401239.P5919716192599127639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362412 (A019554 (n + 1) ^ 2).toNat

end

end A401239.P5919716192599127639

namespace A401239

/-- `A362412(A019554(n+1)²)` -/
def P5919716192599127639.Spec : Prop :=
  ∀ n, P5919716192599127639.a n = A401239 (n + 1)

end A401239

/-!
# A401240: The number of divisors of n that are prime powers of the form p^(k*p), with p prime and k >= 1.

The programs for A401240, the canonical program `A401240.P6929582401376175809` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A401240 has offset 1).

The definition of A401240 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A401240.P6929582401376175809

`∑{e}[A342007(1+n), #]`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A401240

/-- `∑{e}[A342007(1+n), #]` -/
def P6929582401376175809.Spec : Prop :=
  ∀ n, (P6929582401376175809.a n : ℤ) = A401240 (n + 1)

theorem P6929582401376175809.correct : P6929582401376175809.Spec := by
  intro n
  simp only [A401240, Nat.add_sub_cancel]

end A401240

/-! ## A401240.P8794239108568374072

`A001222(A342007(1+n))`
-/

namespace A401240.P8794239108568374072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A342007 (1 + n)).toNat

end

end A401240.P8794239108568374072

namespace A401240

/-- `A001222(A342007(1+n))` -/
def P8794239108568374072.Spec : Prop :=
  ∀ n, P8794239108568374072.a n = A401240 (n + 1)

end A401240

/-! ## A401240.P4327915674334053926

`A057526(A342007(n+1))`
-/

namespace A401240.P4327915674334053926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057526 (A342007 (n + 1)).toNat

end

end A401240.P4327915674334053926

namespace A401240

/-- `A057526(A342007(n+1))` -/
def P4327915674334053926.Spec : Prop :=
  ∀ n, P4327915674334053926.a n = A401240 (n + 1)

end A401240

/-! ## A401240.P1577971699590150036

`A083345((n+1)/A327938(n+1))`
-/

namespace A401240.P1577971699590150036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083345 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A327938 (n + 1) : ℚ))).toNat

end

end A401240.P1577971699590150036

namespace A401240

/-- `A083345((n+1)/A327938(n+1))` -/
def P1577971699590150036.Spec : Prop :=
  ∀ n, P1577971699590150036.a n = A401240 (n + 1)

end A401240

/-! ## A401240.P4082026821758962033

`A046660(A327936(n+1)*A342007(n+1))`
-/

namespace A401240.P4082026821758962033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046660 (A327936 (n + 1) * A342007 (n + 1)).toNat

end

end A401240.P4082026821758962033

namespace A401240

/-- `A046660(A327936(n+1)*A342007(n+1))` -/
def P4082026821758962033.Spec : Prop :=
  ∀ n, P4082026821758962033.a n = A401240 (n + 1)

end A401240

/-! ## A401240.P16429116443429799483

`A037827(A342007(n+1)*A342007(n+1))`
-/

namespace A401240.P16429116443429799483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037827 (A342007 (n + 1) * A342007 (n + 1)).toNat

end

end A401240.P16429116443429799483

namespace A401240

/-- `A037827(A342007(n+1)*A342007(n+1))` -/
def P16429116443429799483.Spec : Prop :=
  ∀ n, P16429116443429799483.a n = A401240 (n + 1)

end A401240

/-! ## A401240.P13725833227065443420

`A003415(A327939(n+1))/A327939(n+1)`
-/

namespace A401240.P13725833227065443420
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003415 (A327939 (n + 1)).toNat : ℚ) / (A327939 (n + 1) : ℚ)

end

end A401240.P13725833227065443420

namespace A401240

/-- `A003415(A327939(n+1))/A327939(n+1)` -/
def P13725833227065443420.Spec : Prop :=
  ∀ n, P13725833227065443420.a n = (A401240 (n + 1) : ℚ)

end A401240

/-! ## A401240.P4597239680629479426

`floor(A368332(n+1)/2)%A394575(n+1)`
-/

namespace A401240.P4597239680629479426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊(A368332 (n + 1) : ℚ) / 2⌋ (A394575 (n + 1))

end

end A401240.P4597239680629479426

namespace A401240

/-- `floor(A368332(n+1)/2)%A394575(n+1)` -/
def P4597239680629479426.Spec : Prop :=
  ∀ n, P4597239680629479426.a n = A401240 (n + 1)

end A401240

/-! ## A401240.P12734762111037351500

`A306288(A327939(n+1)+8)`
-/

namespace A401240.P12734762111037351500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306288 (A327939 (n + 1) + 8).toNat

end

end A401240.P12734762111037351500

namespace A401240

/-- `A306288(A327939(n+1)+8)` -/
def P12734762111037351500.Spec : Prop :=
  ∀ n, P12734762111037351500.a n = A401240 (n + 1)

end A401240

/-! ## A401240.P4986524783087605179

`A342001(A342007(n+1)%A065853(n+2))`
-/

namespace A401240.P4986524783087605179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342001 (Int.tmod (A342007 (n + 1)) (A065853 (n + 2))).toNat

end

end A401240.P4986524783087605179

namespace A401240

/-- `A342001(A342007(n+1)%A065853(n+2))` -/
def P4986524783087605179.Spec : Prop :=
  ∀ n, P4986524783087605179.a n = A401240 (n + 1)

end A401240

/-! ## A401240.P18190959422730510275

`A144293(n)%A365632(n+1)`
-/

namespace A401240.P18190959422730510275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A144293 n) (A365632 (n + 1))

end

end A401240.P18190959422730510275

namespace A401240

/-- `A144293(n)%A365632(n+1)` -/
def P18190959422730510275.Spec : Prop :=
  ∀ n, P18190959422730510275.a n = A401240 (n + 1)

end A401240

/-! ## A401240.P16297206414604860708

`A046951(A342007(n+1)²)-A054977(A000290(n)+1)`
-/

namespace A401240.P16297206414604860708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046951 (A342007 (n + 1) ^ 2).toNat - A054977 (A000290 n + 1).toNat

end

end A401240.P16297206414604860708

namespace A401240

/-- `A046951(A342007(n+1)²)-A054977(A000290(n)+1)` -/
def P16297206414604860708.Spec : Prop :=
  ∀ n, P16297206414604860708.a n = A401240 (n + 1)

end A401240

/-!
# A401241: The number of divisors of n that are prime powers (A246655) whose number of divisors is a power of 2.

The programs for A401241, the canonical program `A401241.P16677631895232613569` is in `Seq.B005.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A401241 has offset 1).

The definition of A401241 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A359473, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A401241.P16677631895232613569

`∑{d}[n+1, A069513(#)*A359473(#)]`

The canonical program, it is in `Seq.B005.C003`.
-/

namespace A401241

/-- `∑{d}[n+1, A069513(#)*A359473(#)]` -/
def P16677631895232613569.Spec : Prop :=
  ∀ n, P16677631895232613569.a n = A401241 (n + 1)

theorem P16677631895232613569.correct : P16677631895232613569.Spec := by
  intro n
  simp only [A401241, Nat.add_sub_cancel]

end A401241

/-! ## A401241.P17282351974703327584

`log2(A372381(n+1))`
-/

namespace A401241.P17282351974703327584
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A372381 (n + 1) : ℝ)

end

end A401241.P17282351974703327584

namespace A401241

/-- `log2(A372381(n+1))` -/
def P17282351974703327584.Spec : Prop :=
  ∀ n, P17282351974703327584.a n = (A401241 (n + 1) : ℝ)

end A401241

/-! ## A401241.P15474810546970568870

`val(A253139(1+n), 2)`
-/

namespace A401241.P15474810546970568870
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A253139 (1 + n)).toNat 2

end

end A401241.P15474810546970568870

namespace A401241

/-- `val(A253139(1+n), 2)` -/
def P15474810546970568870.Spec : Prop :=
  ∀ n, (P15474810546970568870.a n : ℤ) = A401241 (n + 1)

end A401241

/-! ## A401241.P646817241131722598

`val(A265392(1+n), 2)`
-/

namespace A401241.P646817241131722598
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A265392 (1 + n)).toNat 2

end

end A401241.P646817241131722598

namespace A401241

/-- `val(A265392(1+n), 2)` -/
def P646817241131722598.Spec : Prop :=
  ∀ n, (P646817241131722598.a n : ℤ) = A401241 (n + 1)

end A401241

/-! ## A401241.P6493656957220741870

`A064415(A286324(1+n))`
-/

namespace A401241.P6493656957220741870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064415 (A286324 (1 + n)).toNat

end

end A401241.P6493656957220741870

namespace A401241

/-- `A064415(A286324(1+n))` -/
def P6493656957220741870.Spec : Prop :=
  ∀ n, P6493656957220741870.a n = A401241 (n + 1)

end A401241

/-! ## A401241.P17551298457222733865

`∑{e}[(n+1)², row(A000720(#))]`
-/

namespace A401241.P17551298457222733865
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), SequenceMachineLib.triRow (A000720 (Nat.factorization (f1 n) p)).toNat

end

end A401241.P17551298457222733865

namespace A401241

/-- `∑{e}[(n+1)², row(A000720(#))]` -/
def P17551298457222733865.Spec : Prop :=
  ∀ n, (P17551298457222733865.a n : ℤ) = A401241 (n + 1)

end A401241

/-! ## A401241.P17420066104216534520

`log2(A307848((n+1)²))`
-/

namespace A401241.P17420066104216534520
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A307848 ((n + 1) ^ 2) : ℝ)

end

end A401241.P17420066104216534520

namespace A401241

/-- `log2(A307848((n+1)²))` -/
def P17420066104216534520.Spec : Prop :=
  ∀ n, P17420066104216534520.a n = (A401241 (n + 1) : ℝ)

end A401241

/-!
# A401246: Number T(n,k) of nodes in the subtree whose root is located at position k in the inorder traversal of a complete binary tree (heap structure) on n elements; triangle T(n,k), n>=1, 1<=k<=n, read by rows.

The programs for A401246, there is no canonical definition to state claims against.
-/

/-! ## A401246.P1957440872614818615

`A098474(C(A137926(n+3), A010217(n)))`
-/

namespace A401246.P1957440872614818615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098474 (Nat.choose (A137926 (n + 3)).toNat (A010217 n).toNat)

end

end A401246.P1957440872614818615

/-! ## A401246.P148458590093208781

`A274225(A013615(n))`
-/

namespace A401246.P148458590093208781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274225 (A013615 n).toNat

end

end A401246.P148458590093208781

/-! ## A401246.P16765674547504427420

`A118383(A153590(n+1))`
-/

namespace A401246.P16765674547504427420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118383 (A153590 (n + 1)).toNat

end

end A401246.P16765674547504427420

/-! ## A401246.P7276567078227726791

`A107041(A277856(n+1))`
-/

namespace A401246.P7276567078227726791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107041 (A277856 (n + 1)).toNat

end

end A401246.P7276567078227726791

/-!
# A401255: Number of free polyforms with n cells in the honeycomb of the 15-faced Voronoi cell of the point (1/8, 1/6, 5/12) under space group Pn-3 (No. 201, origin choice 1).

The programs for A401255, there is no canonical definition to state claims against.
-/

/-! ## A401255.P5714452749578399590

`A360616(n+1)+A318518(A400461(n+1))`
-/

namespace A401255.P5714452749578399590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360616 (n + 1) + A318518 (A400461 (n + 1)).toNat

end

end A401255.P5714452749578399590

/-!
# A401258: Number of free polyforms with n cells in the honeycomb of the 11-faced Voronoi cell of the point (1/12, 3/8, 3/8) under space group Pn-3m (No. 224, origin choice 1).

The programs for A401258, there is no canonical definition to state claims against.
-/

/-! ## A401258.P1768675800185657162

`xor(A225857(A082032(n)), A275727(2*n))`
-/

namespace A401258.P1768675800185657162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A225857 (A082032 n).toNat) (A275727 (2 * n))

end

end A401258.P1768675800185657162

/-!
# A401270: Numbers k such that 10^(2*k+4) + 777*10^(k+1) + 1 is prime.

The programs for A401270, there is no canonical definition to state claims against.
-/

/-! ## A401270.P13729274390425396745

`A250042(∑[A310039(n)]+2)`
-/

namespace A401270.P13729274390425396745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310039 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250042 (∑ j ∈ Finset.range (n + 1), f1 j + 2).toNat

end

end A401270.P13729274390425396745

/-!
# A401278: Triangle read by rows: T(n,k) is the number of partitions of n which represent Chomp positions with Sprague-Grundy value k, 0 <= k < n.

The programs for A401278, there is no canonical definition to state claims against.
-/

/-! ## A401278.P513742309816433908

`A008966(A128981(n+1))*A271775(n)`
-/

namespace A401278.P513742309816433908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008966 (A128981 (n + 1)).toNat * A271775 n

end

end A401278.P513742309816433908

/-!
# A401279: Triangle read by rows: T(n,k) is the number of ways that an integer partition of n can be reduced to the empty partition with exactly k Chomp moves.

The programs for A401279, there is no canonical definition to state claims against.
-/

/-! ## A401279.P13698691357826292944

`A126302(A350463(n))`
-/

namespace A401279.P13698691357826292944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126302 (A350463 n).toNat

end

end A401279.P13698691357826292944

/-! ## A401279.P5552498078639427098

`A359043(A269940(n))`
-/

namespace A401279.P5552498078639427098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359043 (A269940 n).toNat

end

end A401279.P5552498078639427098

/-! ## A401279.P16977716691727879757

`A000120(A048993(n)*A061547(n))`
-/

namespace A401279.P16977716691727879757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A048993 n * A061547 n).toNat

end

end A401279.P16977716691727879757

/-! ## A401279.P10157299088779377324

`A374995(A007318(n)*A094385(n))`
-/

namespace A401279.P10157299088779377324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374995 (A007318 n * A094385 n).toNat

end

end A401279.P10157299088779377324

/-! ## A401279.P13331993937409092013

`A048993(n)*A384237(A327712(n))`
-/

namespace A401279.P13331993937409092013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048993 n * A384237 (A327712 n).toNat

end

end A401279.P13331993937409092013

/-!
# A401282: Number of binary matrices with n rows, all column sums 2 and row sums at most 2.

The programs for A401282, there is no canonical definition to state claims against.
-/

/-! ## A401282.P4290024553658069610

`A210719(a(n-1)*n)` with `a(0)=1`
-/

namespace A401282.P4290024553658069610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A210719 (a (n - 1) * (n : ℤ)).toNat

end

end A401282.P4290024553658069610

/-!
# A401283: Number of 2n X n binary matrices with all column sums 2 and row sums at most 2.

The programs for A401283, there is no canonical definition to state claims against.
-/

/-! ## A401283.P9670901372894322490

`A401281(C(2*n+1, 2)+n)`
-/

namespace A401283.P9670901372894322490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A401281 (Nat.choose (2 * n + 1) 2 + n)

end

end A401283.P9670901372894322490

/-! ## A401283.P17912529797142563378

`A401281(4*∑[n])`
-/

namespace A401283.P17912529797142563378
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A401281 (4 * (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A401283.P17912529797142563378

/-!
# A401284: Triangle read by rows: T(n,k) is the number of nonisomorphic n X k binary matrices with all column sums 2 and row sums at most 2, under row and column permutations.

The programs for A401284, there is no canonical definition to state claims against.
-/

/-! ## A401284.P10955753101068157263

`A212831(A292745(n))%A112633(n+1)`
-/

namespace A401284.P10955753101068157263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A212831 (A292745 n).toNat) (A112633 (n + 1))

end

end A401284.P10955753101068157263

