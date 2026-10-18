import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C012
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
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
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C002
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
import Seq.B006.C002
import Seq.B007.C000
import Seq.B008.C000
import Seq.B010.C000
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
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C021
import Seq.Opaque.C023
import Seq.Opaque.C024

/-!
# A201300: Primes of the form 9n^3+5.

The programs for A201300, there is no canonical definition to state claims against.
-/

/-! ## A201300.P9528021762522355112

`p?[9*n^3+5]`
-/

namespace A201300.P9528021762522355112
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 * n ^ 3 + 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A201300.P9528021762522355112

/-!
# A201301: Primes of the form 9*k^3+7.

The programs for A201301, there is no canonical definition to state claims against.
-/

/-! ## A201301.P11563653522699423309

`p?[9*n^3+7]`
-/

namespace A201301.P11563653522699423309
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 * n ^ 3 + 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A201301.P11563653522699423309

/-! ## A201301.P3878269189071049281

`record[A020639(9*n^3+7)]`
-/

namespace A201301.P3878269189071049281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (9 * n ^ 3 + 7)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A201301.P3878269189071049281

/-!
# A201302: Primes of the form 9n^3+8.

The programs for A201302, there is no canonical definition to state claims against.
-/

/-! ## A201302.P18051897072787510136

`p?[9*n^3+8]`
-/

namespace A201302.P18051897072787510136
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 * n ^ 3 + 8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A201302.P18051897072787510136

/-!
# A201304: Primes of the form 10n^3+3.

The programs for A201304, there is no canonical definition to state claims against.
-/

/-! ## A201304.P383602137888038662

`p?[10*n^3+3]`
-/

namespace A201304.P383602137888038662
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 * n ^ 3 + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A201304.P383602137888038662

/-! ## A201304.P15818808225780780903

`∏{d}[p?[5*(2*n*n²+1)-2], #]`
-/

namespace A201304.P15818808225780780903
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 * (2 * (n * n ^ 2) + 1) : ℤ) - 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A201304.P15818808225780780903

/-! ## A201304.P7781078234252207896

`p?[A244729(n)+3]%A017152(n)`
-/

namespace A201304.P7781078234252207896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244729 n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A017152 n)

end

end A201304.P7781078234252207896

/-! ## A201304.P8059309986871156033

`p?[n*A008592(n²)+3]+n-A010888(n)`
-/

namespace A201304.P8059309986871156033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A008592 (n ^ 2) + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + ((n : ℤ) - A010888 n)

end

end A201304.P8059309986871156033

/-! ## A201304.P3141363448045054388

`p?[A008592(n)*A253909(n)+3]+n-A010888(n)`
-/

namespace A201304.P3141363448045054388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008592 n * A253909 n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + ((n : ℤ) - A010888 n)

end

end A201304.P3141363448045054388

/-!
# A201305: Primes of the form 10n^3+7.

The programs for A201305, there is no canonical definition to state claims against.
-/

/-! ## A201305.P17423007006556878963

`p?[10*n^3+7]`
-/

namespace A201305.P17423007006556878963
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 * n ^ 3 + 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A201305.P17423007006556878963

/-! ## A201305.P9779207278947313591

`∏{p}[p?[A244729(n)+7], #]`
-/

namespace A201305.P9779207278947313591
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244729 n + 7

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A201305.P9779207278947313591

/-! ## A201305.P14616741896756174486

`A185245(n)+p?[A244729(n)+7]`
-/

namespace A201305.P14616741896756174486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244729 n + 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185245 n + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A201305.P14616741896756174486

/-! ## A201305.P2078648003425479338

`p?[A244729(n)+7]*A015600(n)`
-/

namespace A201305.P2078648003425479338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244729 n + 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * A015600 n

end

end A201305.P2078648003425479338

/-! ## A201305.P12113912240077597337

`p?[A244729(n)+7]*A013610(∑[n])`
-/

namespace A201305.P12113912240077597337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244729 n + 7

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * A013610 (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A201305.P12113912240077597337

/-!
# A201306: Primes of the form 10n^3+9.

The programs for A201306, there is no canonical definition to state claims against.
-/

/-! ## A201306.P17924977358575928338

`p?[10*n^3+9]`
-/

namespace A201306.P17924977358575928338
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 * n ^ 3 + 9

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A201306.P17924977358575928338

/-! ## A201306.P18057567888011974731

`A017377(A331605(n+1)^3)`
-/

namespace A201306.P18057567888011974731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017377 (A331605 (n + 1) ^ 3).toNat

end

end A201306.P18057567888011974731

/-!
# A201307: Primes of the form k^3+4.

The programs for A201307, there is no canonical definition to state claims against.
-/

/-! ## A201307.P13637349966547415065

`A073573(n+1)^3+4`
-/

namespace A201307.P13637349966547415065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073573 (n + 1) ^ 3 + 4

end

end A201307.P13637349966547415065

/-! ## A201307.P16152130372016752027

`A274077(A073573(n+1))`
-/

namespace A201307.P16152130372016752027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274077 (A073573 (n + 1)).toNat

end

end A201307.P16152130372016752027

/-! ## A201307.P9805638655239986998

`A105397(2*(n+2))+A000578(A073573(n+1))`
-/

namespace A201307.P9805638655239986998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105397 (2 * (n + 2)) + A000578 (A073573 (n + 1)).toNat

end

end A201307.P9805638655239986998

/-! ## A201307.P6552966643115034198

`A105397(A016921(n))+A000578(A073573(n+1))+2`
-/

namespace A201307.P6552966643115034198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105397 (A016921 n).toNat + (A000578 (A073573 (n + 1)).toNat + 2)

end

end A201307.P6552966643115034198

/-!
# A201308: Primes of the form k^3 + 6.

The programs for A201308, there is no canonical definition to state claims against.
-/

/-! ## A201308.P10188016054576434212

`A084382(A073574(n+1))`
-/

namespace A201308.P10188016054576434212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084382 (A073574 (n + 1)).toNat

end

end A201308.P10188016054576434212

/-! ## A201308.P16436675248771729991

`p?[n^3+6]`
-/

namespace A201308.P16436675248771729991
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3 + 6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A201308.P16436675248771729991

/-! ## A201308.P6679457114734752079

`∏{p}[p?[n*n²+6], #]`
-/

namespace A201308.P6679457114734752079
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * n ^ 2 + 6

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), p

end

end A201308.P6679457114734752079

/-!
# A201309: Primes of the form k^3 - 4.

The programs for A201309, there is no canonical definition to state claims against.
-/

/-! ## A201309.P1591266654561707617

`p?[n^3-4]`
-/

namespace A201309.P1591266654561707617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 3 : ℤ) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A201309.P1591266654561707617

/-! ## A201309.P4338592623236416247

`or(1, p?[n*n²-4])`
-/

namespace A201309.P4338592623236416247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n * n ^ 2 : ℤ) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A201309.P4338592623236416247

/-! ## A201309.P17425946786021170248

`∏{d}[p?[n*n²-4], #]`
-/

namespace A201309.P17425946786021170248
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n * n ^ 2 : ℤ) - 4

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A201309.P17425946786021170248

/-! ## A201309.P10856209965812714252

`∏{p}[p?[Δ[∑[n+1]²]-4], #]`
-/

namespace A201309.P10856209965812714252
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f4 j) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f3 (n + 1) : ℤ) - (f3 n : ℤ) - 4

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A201309.P10856209965812714252

/-!
# A201310: Primes of the form n^3-6.

The programs for A201310, there is no canonical definition to state claims against.
-/

/-! ## A201310.P5027397805379932545

`p?[n^3-6]`
-/

namespace A201310.P5027397805379932545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 3 : ℤ) - 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A201310.P5027397805379932545

/-! ## A201310.P11167744741867177995

`∑{p}[p?[((2-n)²+n-1)*n-7], #]`
-/

namespace A201310.P11167744741867177995
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 - (n : ℤ)) ^ 2 + ((n : ℤ) - 1)) * (n : ℤ) - 7

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A201310.P11167744741867177995

/-! ## A201310.P18409002094245244932

`∏{p}[p?[A000578(n)-6], #]`
-/

namespace A201310.P18409002094245244932
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 n - 6

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A201310.P18409002094245244932

/-! ## A201310.P17841407159930886599

`record[p?[A126951(n+1)-6]]`
-/

namespace A201310.P17841407159930886599
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126951 (n + 1) - 6

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A201310.P17841407159930886599

/-!
# A201311: Primes of the form n^3-10.

The programs for A201311, there is no canonical definition to state claims against.
-/

/-! ## A201311.P1019706914975504714

`p?[n^3-10]`
-/

namespace A201311.P1019706914975504714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 3 : ℤ) - 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A201311.P1019706914975504714

/-! ## A201311.P4126195905830558466

`or(1, p?[A000578(n)-10])`
-/

namespace A201311.P4126195905830558466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 n - 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A201311.P4126195905830558466

/-! ## A201311.P3741213982561928384

`record[p?[A017670(n+1)-10]]`
-/

namespace A201311.P3741213982561928384
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017670 (n + 1) - 10

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A201311.P3741213982561928384

/-! ## A201311.P8223808831829657577

`record[p?[A109594(n+1)-10]]`
-/

namespace A201311.P8223808831829657577
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109594 (n + 1) - 10

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A201311.P8223808831829657577

/-! ## A201311.P12838855491068956967

`record[p?[A109595(n+1)-10]]`
-/

namespace A201311.P12838855491068956967
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109595 (n + 1) - 10

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A201311.P12838855491068956967

/-!
# A201312: Primes of the form n^3+10.

The programs for A201312, there is no canonical definition to state claims against.
-/

/-! ## A201312.P10092377349803448424

`p?[n^3+10]`
-/

namespace A201312.P10092377349803448424
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3 + 10

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A201312.P10092377349803448424

/-! ## A201312.P5489711915124760398

`or(1, p?[n*n²+10])`
-/

namespace A201312.P5489711915124760398
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * n ^ 2 + 10

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A201312.P5489711915124760398

/-! ## A201312.P12168122887145130409

`∏{p}[p?[n*n²+10], #]`
-/

namespace A201312.P12168122887145130409
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * n ^ 2 + 10

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), p

end

end A201312.P12168122887145130409

/-! ## A201312.P582470506286240432

`xor(1, p?[n*n²+10])+1`
-/

namespace A201312.P582470506286240432
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * n ^ 2 + 10

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)) + 1

end

end A201312.P582470506286240432

/-! ## A201312.P16248338666419343154

`lcm(7, p?[n*n²+10])/7`
-/

namespace A201312.P16248338666419343154
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * n ^ 2 + 10

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 7 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)) : ℚ) / 7

end

end A201312.P16248338666419343154

/-!
# A201313: Primes of the form n^2 - 10.

The programs for A201313, there is no canonical definition to state claims against.
-/

/-! ## A201313.P5067279707548244278

`A186815(n+1)²-10`
-/

namespace A201313.P5067279707548244278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186815 (n + 1) ^ 2 - 10

end

end A201313.P5067279707548244278

/-! ## A201313.P8475862970309012868

`∩[A190091(n+1), A295835(n+1)]`
-/

namespace A201313.P8475862970309012868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295835 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A201313.P8475862970309012868

/-! ## A201313.P12752764096504105186

`∩[A142111(n+1), A190091(n+1)]`
-/

namespace A201313.P12752764096504105186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142111 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190091 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A201313.P12752764096504105186

/-! ## A201313.P3061704710554003664

`p?[n²-10]`
-/

namespace A201313.P3061704710554003664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A201313.P3061704710554003664

/-! ## A201313.P14573048431102050128

`or(1, p?[n^2-10])`
-/

namespace A201313.P14573048431102050128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A201313.P14573048431102050128

/-! ## A201313.P2536649618296734326

`∑{p}[p?[n^2-10], #]`
-/

namespace A201313.P2536649618296734326
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - 10

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A201313.P2536649618296734326

/-! ## A201313.P2686460525183257608

`∏{p}[p?[n^2-10], #]`
-/

namespace A201313.P2686460525183257608
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - 10

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A201313.P2686460525183257608

/-! ## A201313.P12402477591388463305

`∩[A134517(n+1), A190091(n+1)]`
-/

namespace A201313.P12402477591388463305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134517 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190091 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A201313.P12402477591388463305

/-! ## A201313.P14994396577883676207

`∩[A141302(n+1), A190091(n+1)]`
-/

namespace A201313.P14994396577883676207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141302 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190091 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A201313.P14994396577883676207

/-! ## A201313.P14533255564499791582

`∩[A061242(n+1), A190091(n+1)]`
-/

namespace A201313.P14533255564499791582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061242 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190091 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A201313.P14533255564499791582

/-!
# A201314: Primes of the form n^2 - 17.

The programs for A201314, the canonical program `A201314.P3485459216833196286` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A201314 has offset 1).

The definition of A201314 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 207 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A201314.P3485459216833196286

`p?[n²-17]`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A201314

/-- `p?[n²-17]` -/
def P3485459216833196286.Spec : Prop :=
  ∀ n, P3485459216833196286.a n = A201314 (n + 1)

theorem P3485459216833196286.correct : P3485459216833196286.Spec := by
  intro n
  simp only [A201314, Nat.add_sub_cancel]

end A201314

/-! ## A201314.P17538641065431248545

`or(1, p?[n^2-17])`
-/

namespace A201314.P17538641065431248545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - 17

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A201314.P17538641065431248545

namespace A201314

/-- `or(1, p?[n^2-17])` -/
def P17538641065431248545.Spec : Prop :=
  ∀ n, P17538641065431248545.a n = A201314 (n + 1)

end A201314

/-! ## A201314.P16482012705373893286

`∏{d}[p?[n^2-17], #]`
-/

namespace A201314.P16482012705373893286
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - 17

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A201314.P16482012705373893286

namespace A201314

/-- `∏{d}[p?[n^2-17], #]` -/
def P16482012705373893286.Spec : Prop :=
  ∀ n, (P16482012705373893286.a n : ℤ) = A201314 (n + 1)

end A201314

/-! ## A201314.P16499001182475846136

`∏{p}[p?[n^2-17], #]`
-/

namespace A201314.P16499001182475846136
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - 17

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A201314.P16499001182475846136

namespace A201314

/-- `∏{p}[p?[n^2-17], #]` -/
def P16499001182475846136.Spec : Prop :=
  ∀ n, (P16499001182475846136.a n : ℤ) = A201314 (n + 1)

end A201314

/-! ## A201314.P822340410290538450

`∑{p}[p?[n*n-17], #]`
-/

namespace A201314.P822340410290538450
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n * n : ℤ) - 17

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A201314.P822340410290538450

namespace A201314

/-- `∑{p}[p?[n*n-17], #]` -/
def P822340410290538450.Spec : Prop :=
  ∀ n, (P822340410290538450.a n : ℤ) = A201314 (n + 1)

end A201314

/-! ## A201314.P15262799381775475872

`∩[A000040(n+1), A133655(n)+n²]`
-/

namespace A201314.P15262799381775475872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133655 n + (n ^ 2 : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A201314.P15262799381775475872

namespace A201314

/-- `∩[A000040(n+1), A133655(n)+n²]` -/
def P15262799381775475872.Spec : Prop :=
  ∀ n, (P15262799381775475872.a n : ℤ) = A201314 (n + 1)

end A201314

/-! ## A201314.P9242636286227809515

`record[A006530(2*(∑[4*n+10]-1)+1)]`
-/

namespace A201314.P9242636286227809515
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 10

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (2 * (((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A201314.P9242636286227809515

namespace A201314

/-- `record[A006530(2*(∑[4*n+10]-1)+1)]` -/
def P9242636286227809515.Spec : Prop :=
  ∀ n, P9242636286227809515.a n = A201314 (n + 1)

end A201314

/-!
# A201338: E.g.f.: log((2 - exp(x))/(3 - 2*exp(x))).

The programs for A201338, there is no canonical definition to state claims against.
-/

/-! ## A201338.P6817728196117261364

`A027882(n)-A000629(n)`
-/

namespace A201338.P6817728196117261364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027882 n - A000629 n

end

end A201338.P6817728196117261364

/-! ## A201338.P6721596057006072229

`A027882(n)-∑[A162509(n)]`
-/

namespace A201338.P6721596057006072229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162509 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027882 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A201338.P6721596057006072229

/-! ## A201338.P10207512303289386065

`2*A201339(n)-A000629(n)`
-/

namespace A201338.P10207512303289386065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A201339 n - A000629 n

end

end A201338.P10207512303289386065

/-! ## A201338.P1695970915164140428

`A027882(n)-record[A090665(n+1)]`
-/

namespace A201338.P1695970915164140428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090665 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027882 n - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A201338.P1695970915164140428

/-! ## A201338.P14562242794697411205

`3*A004123(n+1)-A076726(n)`
-/

namespace A201338.P14562242794697411205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A004123 (n + 1) - A076726 n

end

end A201338.P14562242794697411205

/-!
# A201339: Expansion of e.g.f. exp(x) / (3 - 2*exp(x)).

The programs for A201339, there is no canonical definition to state claims against.
-/

/-! ## A201339.P6580333462114379084

`A027882(n)/2`
-/

namespace A201339.P6580333462114379084
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027882 n : ℚ) / 2

end

end A201339.P6580333462114379084

/-! ## A201339.P14982453529417928865

`2*A004123(n+1)-A050351(n)`
-/

namespace A201339.P14982453529417928865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A004123 (n + 1) - A050351 n

end

end A201339.P14982453529417928865

/-! ## A201339.P6168817475157663013

`A029618(A000217(n))*A050351(n)`
-/

namespace A201339.P6168817475157663013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029618 (A000217 n).toNat * A050351 n

end

end A201339.P6168817475157663013

/-! ## A201339.P15234065766497281765

`A000032(A000032(A151878(n)))*A050351(n)`
-/

namespace A201339.P15234065766497281765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (A000032 (A151878 n).toNat).toNat * A050351 n

end

end A201339.P15234065766497281765

/-! ## A201339.P2619671464169088412

`A000670(A000629(n)/A000670(n))*A050351(n)`
-/

namespace A201339.P2619671464169088412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000670 (SequenceMachineLib.roundAway ((A000629 n : ℚ) / (A000670 n : ℚ))).toNat * A050351 n

end

end A201339.P2619671464169088412

/-! ## A201339.P17862147358846798617

`A000670(A004123(n+1)/A050351(n))*A050351(n)`
-/

namespace A201339.P17862147358846798617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000670 (SequenceMachineLib.roundAway ((A004123 (n + 1) : ℚ) / (A050351 n : ℚ))).toNat * A050351 n

end

end A201339.P17862147358846798617

/-! ## A201339.P6021300168701955516

`A032033(n)/A050352(n)*A050351(n)`
-/

namespace A201339.P6021300168701955516
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A032033 n : ℚ) / (A050352 n : ℚ) * (A050351 n : ℚ)

end

end A201339.P6021300168701955516

/-!
# A201340: Number of nX2 0..4 arrays with every row and column running average nondecreasing rightwards and downwards but some diagonal running average having a decrease.

The programs for A201340, there is no canonical definition to state claims against.
-/

/-! ## A201340.P8226430934968966836

`A201345(∑[n+1]+2)`
-/

namespace A201340.P8226430934968966836
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201345 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A201340.P8226430934968966836

/-! ## A201340.P2136631062279092890

`A326456(n)+A201345(A027379(n)+2)`
-/

namespace A201340.P2136631062279092890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326456 n + A201345 (A027379 n + 2).toNat

end

end A201340.P2136631062279092890

/-!
# A201341: Number of nX3 0..4 arrays with every row and column running average nondecreasing rightwards and downwards but some diagonal running average having a decrease.

The programs for A201341, there is no canonical definition to state claims against.
-/

/-! ## A201341.P11330537820746821273

`A201345(∑[n+2]+4)`
-/

namespace A201341.P11330537820746821273
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201345 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A201341.P11330537820746821273

/-! ## A201341.P11957458845275687491

`record[A010054(n)*A201345(n+3)]`
-/

namespace A201341.P11957458845275687491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A201345 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A201341.P11957458845275687491

/-! ## A201341.P601795034489475133

`record[A109466(n)*A201345(n+4)]`
-/

namespace A201341.P601795034489475133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109466 n * A201345 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A201341.P601795034489475133

/-! ## A201341.P17614708956660878552

`ceil(sin(n)²)*A201345(A167614(n+1))`
-/

namespace A201341.P17614708956660878552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sin (n : ℝ) ^ 2⌉ * A201345 (A167614 (n + 1)).toNat

end

end A201341.P17614708956660878552

/-! ## A201341.P6890123042931703890

`A201345(A167614(n+1))+A006927(n)`
-/

namespace A201341.P6890123042931703890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201345 (A167614 (n + 1)).toNat + A006927 n

end

end A201341.P6890123042931703890

/-!
# A201342: Number of n X 4 0..4 arrays with every row and column running average nondecreasing rightwards and downwards but some diagonal running average having a decrease.

The programs for A201342, there is no canonical definition to state claims against.
-/

/-! ## A201342.P3599539464911545066

`A201345(∑[n+3]+7)`
-/

namespace A201342.P3599539464911545066
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201345 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A201342.P3599539464911545066

/-! ## A201342.P14468183518661621994

`record[A010054(n)*A201345(n+4)]`
-/

namespace A201342.P14468183518661621994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A201345 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A201342.P14468183518661621994

/-! ## A201342.P10750261408839443392

`record[A201345(A019304(n))]`
-/

namespace A201342.P10750261408839443392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201345 (A019304 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A201342.P10750261408839443392

/-! ## A201342.P7104589067607444845

`A201345(A027379(n+2))+floor(n/10)`
-/

namespace A201342.P7104589067607444845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201345 (A027379 (n + 2)).toNat + ⌊(n : ℚ) / 10⌋

end

end A201342.P7104589067607444845

/-!
# A201343: Number of nX5 0..4 arrays with every row and column running average nondecreasing rightwards and downwards but some diagonal running average having a decrease.

The programs for A201343, there is no canonical definition to state claims against.
-/

/-! ## A201343.P12257644947375124894

`A201345(A167499(n+3))`
-/

namespace A201343.P12257644947375124894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201345 (A167499 (n + 3)).toNat

end

end A201343.P12257644947375124894

/-! ## A201343.P4780368237204047518

`A201345(A155212(n)+13)`
-/

namespace A201343.P4780368237204047518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201345 (A155212 n + 13).toNat

end

end A201343.P4780368237204047518

/-! ## A201343.P10884787989327443021

`A201345(A056000(n)+15)`
-/

namespace A201343.P10884787989327443021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201345 (A056000 n + 15).toNat

end

end A201343.P10884787989327443021

/-! ## A201343.P12149017217130237563

`A201345(eq[7, A066657(n)])`
-/

namespace A201343.P12149017217130237563
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201345 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A201343.P12149017217130237563

/-!
# A201344: Number of nX6 0..4 arrays with every row and column running average nondecreasing rightwards and downwards but some diagonal running average having a decrease.

The programs for A201344, there is no canonical definition to state claims against.
-/

/-! ## A201344.P11259100140503197948

`A201345(A374007(n+1))`
-/

namespace A201344.P11259100140503197948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201345 (A374007 (n + 1)).toNat

end

end A201344.P11259100140503197948

/-!
# A201345: T(n,k)=Number of nXk 0..4 arrays with every row and column running average nondecreasing rightwards and downwards but some diagonal running average having a decrease.

The programs for A201345, there is no canonical definition to state claims against.
-/

/-! ## A201345.P4937618431106037785

`A233970(A283347(n+1))`
-/

namespace A201345.P4937618431106037785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233970 (A283347 (n + 1)).toNat

end

end A201345.P4937618431106037785

/-! ## A201345.P4995127213401628276

`3*A056695(A172347(n))`
-/

namespace A201345.P4995127213401628276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A056695 (A172347 n).toNat

end

end A201345.P4995127213401628276

/-! ## A201345.P14121751636086086642

`A085860(A005574(3*n+5)*A202168(n+1))`
-/

namespace A201345.P14121751636086086642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085860 (A005574 (3 * n + 5) * A202168 (n + 1)).toNat

end

end A201345.P14121751636086086642

/-! ## A201345.P16312898286051378445

`A177984(A177984(n))*A344574(A177984(n))`
-/

namespace A201345.P16312898286051378445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177984 (A177984 n).toNat * A344574 (A177984 n).toNat

end

end A201345.P16312898286051378445

/-!
# A201346: Number of n X n 0..1 arrays with rows and columns lexicographically nondecreasing and every element equal to at least one horizontal or vertical neighbor.

The programs for A201346, there is no canonical definition to state claims against.
-/

/-! ## A201346.P12761596499626354550

`A201353(∑[4*n]+1)`
-/

namespace A201346.P12761596499626354550
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201353 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A201346.P12761596499626354550

/-! ## A201346.P17774460483340692585

`record[A201353(A272267(n+1))]`
-/

namespace A201346.P17774460483340692585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201353 (A272267 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A201346.P17774460483340692585

/-! ## A201346.P16903145788709939711

`A201353(A001844(n))+C(2, A000203(n+2))`
-/

namespace A201346.P16903145788709939711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201353 (A001844 n).toNat + (Nat.choose 2 (A000203 (n + 2)).toNat : ℤ)

end

end A201346.P16903145788709939711

/-! ## A201346.P14016101017153198845

`A201353(A001844(n))+C(n+1, 37)*A007318(n)`
-/

namespace A201346.P14016101017153198845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201353 (A001844 n).toNat + (Nat.choose (n + 1) 37 : ℤ) * A007318 n

end

end A201346.P14016101017153198845

/-! ## A201346.P2199931916516671183

`A201353(A001844(n))+C(n+1, 37)*A000045(n+2)`
-/

namespace A201346.P2199931916516671183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201353 (A001844 n).toNat + (Nat.choose (n + 1) 37 : ℤ) * A000045 (n + 2)

end

end A201346.P2199931916516671183

/-!
# A201347: Number of n X 2 0..1 arrays with rows and columns lexicographically nondecreasing and every element equal to at least one horizontal or vertical neighbor.

The programs for A201347, the canonical program `A201347.P18419925043797542016` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A201347 has offset 1).

The definition of A201347 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A201347.P18419925043797542016

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=2, a(1)=4, a(2)=8, a(3)=14, a(4)=23`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A201347

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P18419925043797542016.Spec : Prop :=
  ∀ n, P18419925043797542016.a n = A201347 (n + 1)

theorem P18419925043797542016.correct : P18419925043797542016.Spec := by
  intro n
  simp only [A201347, Nat.add_sub_cancel]

end A201347

/-! ## A201347.P3497713192051631838

`∑[∑[char[2]-1+n]+3]`
-/

namespace A201347.P3497713192051631838
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f3 j = n then 1 else 0 : ℕ) : ℤ) - 1 + (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A201347.P3497713192051631838

namespace A201347

/-- `∑[∑[char[2]-1+n]+3]` -/
def P3497713192051631838.Spec : Prop :=
  ∀ n, P3497713192051631838.a n = A201347 (n + 1)

end A201347

/-! ## A201347.P15331276897986775704

`∑[C(n, 2)]+ceil(3/acot(n))`
-/

namespace A201347.P15331276897986775704
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + ⌈3 / SequenceMachineLib.acot (n : ℝ)⌉

end

end A201347.P15331276897986775704

namespace A201347

/-- `∑[C(n, 2)]+ceil(3/acot(n))` -/
def P15331276897986775704.Spec : Prop :=
  ∀ n, P15331276897986775704.a n = A201347 (n + 1)

end A201347

/-! ## A201347.P16744440534707672742

`∑[∑[C(2, n)+n-1]]+2`
-/

namespace A201347.P16744440534707672742
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose 2 n : ℤ) + ((n : ℤ) - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A201347.P16744440534707672742

namespace A201347

/-- `∑[∑[C(2, n)+n-1]]+2` -/
def P16744440534707672742.Spec : Prop :=
  ∀ n, P16744440534707672742.a n = A201347 (n + 1)

end A201347

/-! ## A201347.P9487289156648200049

`C(n+1, 3)+ceil(3/acot(n))`
-/

namespace A201347.P9487289156648200049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 1) 3 : ℤ) + ⌈3 / SequenceMachineLib.acot (n : ℝ)⌉

end

end A201347.P9487289156648200049

namespace A201347

/-- `C(n+1, 3)+ceil(3/acot(n))` -/
def P9487289156648200049.Spec : Prop :=
  ∀ n, P9487289156648200049.a n = A201347 (n + 1)

end A201347

/-! ## A201347.P4967754327270866794

`a(n-1)+C(n, 2)+3` with `a(0)=2, a(1)=4`
-/

namespace A201347.P4967754327270866794
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 4] fun n a =>
  a (n - 1) + (Nat.choose n 2 + 3)

end

end A201347.P4967754327270866794

namespace A201347

/-- `a(n-1)+C(n, 2)+3` -/
def P4967754327270866794.Spec : Prop :=
  ∀ n, (P4967754327270866794.a n : ℤ) = A201347 (n + 1)

end A201347

/-! ## A201347.P7037273707567059554

`∑[n]-(n-3-a(n-1))` with `a(0)=2, a(1)=4`
-/

namespace A201347.P7037273707567059554
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 4] fun n a =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ((n : ℤ) - 3 - a (n - 1))

end

end A201347.P7037273707567059554

namespace A201347

/-- `∑[n]-(n-3-a(n-1))` -/
def P7037273707567059554.Spec : Prop :=
  ∀ n, P7037273707567059554.a n = A201347 (n + 1)

end A201347

/-! ## A201347.P14244501869928049519

`∑[A238531(n)]+1+n`
-/

namespace A201347.P14244501869928049519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238531 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1 + (n : ℤ)

end

end A201347.P14244501869928049519

namespace A201347

/-- `∑[A238531(n)]+1+n` -/
def P14244501869928049519.Spec : Prop :=
  ∀ n, P14244501869928049519.a n = A201347 (n + 1)

end A201347

/-! ## A201347.P12738065157384053691

`∑[∑[n]+3]-A133263(n)`
-/

namespace A201347.P12738065157384053691
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A133263 n

end

end A201347.P12738065157384053691

namespace A201347

/-- `∑[∑[n]+3]-A133263(n)` -/
def P12738065157384053691.Spec : Prop :=
  ∀ n, P12738065157384053691.a n = A201347 (n + 1)

end A201347

/-! ## A201347.P8855357509999312771

`a(n-1)+A089071(n)+n` with `a(0)=2`
-/

namespace A201347.P8855357509999312771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) + (A089071 n + (n : ℤ))

end

end A201347.P8855357509999312771

namespace A201347

/-- `a(n-1)+A089071(n)+n` -/
def P8855357509999312771.Spec : Prop :=
  ∀ n, P8855357509999312771.a n = A201347 (n + 1)

end A201347

/-! ## A201347.P16989163946021573506

`∑[A000217(n+1)-comp[2*n+3]]+1`
-/

namespace A201347.P16989163946021573506
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 3

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 1) - (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A201347.P16989163946021573506

namespace A201347

/-- `∑[A000217(n+1)-comp[2*n+3]]+1` -/
def P16989163946021573506.Spec : Prop :=
  ∀ n, P16989163946021573506.a n = A201347 (n + 1)

end A201347

/-! ## A201347.P14702284423673261373

`A004277(n)+A000125(n)`
-/

namespace A201347.P14702284423673261373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n + A000125 n

end

end A201347.P14702284423673261373

namespace A201347

/-- `A004277(n)+A000125(n)` -/
def P14702284423673261373.Spec : Prop :=
  ∀ n, P14702284423673261373.a n = A201347 (n + 1)

end A201347

/-! ## A201347.P10618540182240010697

`A140226(n)-A283551(n)`
-/

namespace A201347.P10618540182240010697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140226 n - A283551 n

end

end A201347.P10618540182240010697

namespace A201347

/-- `A140226(n)-A283551(n)` -/
def P10618540182240010697.Spec : Prop :=
  ∀ n, P10618540182240010697.a n = A201347 (n + 1)

end A201347

/-! ## A201347.P13319923286111350186

`A000125(n)+A004273(n)+1`
-/

namespace A201347.P13319923286111350186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000125 n + (A004273 n + 1)

end

end A201347.P13319923286111350186

namespace A201347

/-- `A000125(n)+A004273(n)+1` -/
def P13319923286111350186.Spec : Prop :=
  ∀ n, P13319923286111350186.a n = A201347 (n + 1)

end A201347

/-! ## A201347.P5412467991972047391

`A004006(n)+A004277(n)+1`
-/

namespace A201347.P5412467991972047391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004006 n + (A004277 n + 1)

end

end A201347.P5412467991972047391

namespace A201347

/-- `A004006(n)+A004277(n)+1` -/
def P5412467991972047391.Spec : Prop :=
  ∀ n, P5412467991972047391.a n = A201347 (n + 1)

end A201347

/-! ## A201347.P7191233021623020163

`A011826(n+1)+A004273(n)`
-/

namespace A201347.P7191233021623020163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011826 (n + 1) + A004273 n

end

end A201347.P7191233021623020163

namespace A201347

/-- `A011826(n+1)+A004273(n)` -/
def P7191233021623020163.Spec : Prop :=
  ∀ n, P7191233021623020163.a n = A201347 (n + 1)

end A201347

/-! ## A201347.P3921821020126212438

`A180415(n+1)+A028310(n)`
-/

namespace A201347.P3921821020126212438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180415 (n + 1) + A028310 n

end

end A201347.P3921821020126212438

namespace A201347

/-- `A180415(n+1)+A028310(n)` -/
def P3921821020126212438.Spec : Prop :=
  ∀ n, P3921821020126212438.a n = A201347 (n + 1)

end A201347

/-! ## A201347.P4143774384605177485

`A004006(n)+A004273(n)+2`
-/

namespace A201347.P4143774384605177485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004006 n + (A004273 n + 2)

end

end A201347.P4143774384605177485

namespace A201347

/-- `A004006(n)+A004273(n)+2` -/
def P4143774384605177485.Spec : Prop :=
  ∀ n, P4143774384605177485.a n = A201347 (n + 1)

end A201347

/-! ## A201347.P18051845228083137468

`A283551(n)+A051755(n+2)`
-/

namespace A201347.P18051845228083137468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283551 n + A051755 (n + 2)

end

end A201347.P18051845228083137468

namespace A201347

/-- `A283551(n)+A051755(n+2)` -/
def P18051845228083137468.Spec : Prop :=
  ∀ n, P18051845228083137468.a n = A201347 (n + 1)

end A201347

/-! ## A201347.P14008822363700085370

`A203292(n+1)-A267529(n)`
-/

namespace A201347.P14008822363700085370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203292 (n + 1) - A267529 n

end

end A201347.P14008822363700085370

namespace A201347

/-- `A203292(n+1)-A267529(n)` -/
def P14008822363700085370.Spec : Prop :=
  ∀ n, P14008822363700085370.a n = A201347 (n + 1)

end A201347

/-!
# A201348: Number of n X 3 0..1 arrays with rows and columns lexicographically nondecreasing and every element equal to at least one horizontal or vertical neighbor.

The programs for A201348, there is no canonical definition to state claims against.
-/

/-! ## A201348.P17278678043696200910

`A201353(∑[n+2]+4)`
-/

namespace A201348.P17278678043696200910
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201353 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A201348.P17278678043696200910

/-! ## A201348.P18394663772930796004

`lcm((-1)^n, A201353(A167614(n+1)))`
-/

namespace A201348.P18394663772930796004
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A201353 (A167614 (n + 1)).toNat)

end

end A201348.P18394663772930796004

/-! ## A201348.P321140558634438687

`A201353(A167614(n+1))%A016831(n)`
-/

namespace A201348.P321140558634438687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A201353 (A167614 (n + 1)).toNat) (A016831 n)

end

end A201348.P321140558634438687

/-! ## A201348.P7708362328702299999

`A201353(A167614(n+1))+A034500(n+1)`
-/

namespace A201348.P7708362328702299999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201353 (A167614 (n + 1)).toNat + A034500 (n + 1)

end

end A201348.P7708362328702299999

/-! ## A201348.P8675847304253232190

`A070672(n+1)*A201353(A167614(n+1))`
-/

namespace A201348.P8675847304253232190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070672 (n + 1) * A201353 (A167614 (n + 1)).toNat

end

end A201348.P8675847304253232190

/-!
# A201349: Number of nX4 0..1 arrays with rows and columns lexicographically nondecreasing and every element equal to at least one horizontal or vertical neighbor.

The programs for A201349, there is no canonical definition to state claims against.
-/

/-! ## A201349.P12881480586567244490

`A201353(A374004(n+1))`
-/

namespace A201349.P12881480586567244490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201353 (A374004 (n + 1)).toNat

end

end A201349.P12881480586567244490

/-! ## A201349.P18070720150712409322

`A201353(A141214(n)+7)`
-/

namespace A201349.P18070720150712409322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201353 (A141214 n + 7).toNat

end

end A201349.P18070720150712409322

/-! ## A201349.P14195065952648397570

`A201353(A052905(n)+9)`
-/

namespace A201349.P14195065952648397570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201353 (A052905 n + 9).toNat

end

end A201349.P14195065952648397570

/-! ## A201349.P9851261304101662196

`A201353(A167614(n+2)+1)`
-/

namespace A201349.P9851261304101662196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201353 (A167614 (n + 2) + 1).toNat

end

end A201349.P9851261304101662196

/-! ## A201349.P7751603454177732543

`A001405(A098173(n))*A201353(A055999(n)+10)`
-/

namespace A201349.P7751603454177732543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 (A098173 n).toNat * A201353 (A055999 n + 10).toNat

end

end A201349.P7751603454177732543

/-!
# A201350: Number of nX5 0..1 arrays with rows and columns lexicographically nondecreasing and every element equal to at least one horizontal or vertical neighbor.

The programs for A201350, there is no canonical definition to state claims against.
-/

/-! ## A201350.P13809158250226146843

`A201353(A374005(n+1))`
-/

namespace A201350.P13809158250226146843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201353 (A374005 (n + 1)).toNat

end

end A201350.P13809158250226146843

/-! ## A201350.P13564678022116298744

`A201353(A167499(n+3))`
-/

namespace A201350.P13564678022116298744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201353 (A167499 (n + 3)).toNat

end

end A201350.P13564678022116298744

/-! ## A201350.P4757540678968497197

`A201353(A155212(n)+13)`
-/

namespace A201350.P4757540678968497197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201353 (A155212 n + 13).toNat

end

end A201350.P4757540678968497197

/-! ## A201350.P11843201502285561764

`A201353(A056000(n)+15)`
-/

namespace A201350.P11843201502285561764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201353 (A056000 n + 15).toNat

end

end A201350.P11843201502285561764

/-! ## A201350.P16577325591829651863

`A201353(A000217(n+4)+5)`
-/

namespace A201350.P16577325591829651863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201353 (A000217 (n + 4) + 5).toNat

end

end A201350.P16577325591829651863

/-!
# A201351: Number of nX6 0..1 arrays with rows and columns lexicographically nondecreasing and every element equal to at least one horizontal or vertical neighbor.

The programs for A201351, there is no canonical definition to state claims against.
-/

/-! ## A201351.P17492530143087037280

`A201353(A374007(n+1))`
-/

namespace A201351.P17492530143087037280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201353 (A374007 (n + 1)).toNat

end

end A201351.P17492530143087037280

/-! ## A201351.P13185897052140188141

`A201353(Δ[A255994(n+2)])`
-/

namespace A201351.P13185897052140188141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255994 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201353 (f1 (n + 1) - f1 n).toNat

end

end A201351.P13185897052140188141

/-! ## A201351.P16891067263792153442

`A201353(A000217(n+5)+6)`
-/

namespace A201351.P16891067263792153442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201353 (A000217 (n + 5) + 6).toNat

end

end A201351.P16891067263792153442

/-! ## A201351.P7523721304164795254

`A201353(A055998(n+3)+9)`
-/

namespace A201351.P7523721304164795254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201353 (A055998 (n + 3) + 9).toNat

end

end A201351.P7523721304164795254

/-! ## A201351.P9235505386474666481

`A201353(eq[7, A131818(n+1)])`
-/

namespace A201351.P9235505386474666481
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201353 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A201351.P9235505386474666481

/-!
# A201352: Number of nX7 0..1 arrays with rows and columns lexicographically nondecreasing and every element equal to at least one horizontal or vertical neighbor.

The programs for A201352, there is no canonical definition to state claims against.
-/

/-! ## A201352.P2508437903041544554

`A201353(A374008(n+1))`
-/

namespace A201352.P2508437903041544554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201353 (A374008 (n + 1)).toNat

end

end A201352.P2508437903041544554

/-! ## A201352.P15092393460211099430

`A201353(eq[8, A131818(n+1)])`
-/

namespace A201352.P15092393460211099430
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201353 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A201352.P15092393460211099430

/-! ## A201352.P5093586391400375533

`A201353(eq[4, A219347(n)])`
-/

namespace A201352.P5093586391400375533
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201353 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A201352.P5093586391400375533

/-! ## A201352.P299276635769673772

`A201353(eq[6, A193592(n)])`
-/

namespace A201352.P299276635769673772
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201353 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A201352.P299276635769673772

/-! ## A201352.P8208872243687818509

`A201353(eq[10, A185782(n+1)])`
-/

namespace A201352.P8208872243687818509
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201353 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A201352.P8208872243687818509

/-!
# A201353: T(n,k)=Number of nXk 0..1 arrays with rows and columns lexicographically nondecreasing and every element equal to at least one horizontal or vertical neighbor.

The programs for A201353, there is no canonical definition to state claims against.
-/

/-! ## A201353.P18083806665597044942

`A297959(n+1)+A124010(A035244(n))`
-/

namespace A201353.P18083806665597044942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297959 (n + 1) + A124010 (A035244 n).toNat

end

end A201353.P18083806665597044942

/-! ## A201353.P3052864997467408221

`A298093(n+1)+A124010(A035244(n))`
-/

namespace A201353.P3052864997467408221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298093 (n + 1) + A124010 (A035244 n).toNat

end

end A201353.P3052864997467408221

/-!
# A201354: Expansion of e.g.f. exp(x) / (4 - 3*exp(x)).

The programs for A201354, there is no canonical definition to state claims against.
-/

/-! ## A201354.P17413575787392050869

`A032183(n+1)/3`
-/

namespace A201354.P17413575787392050869
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A032183 (n + 1) : ℚ) / 3

end

end A201354.P17413575787392050869

/-! ## A201354.P5541465657678673199

`A036453(n+1)²*A050352(n)`
-/

namespace A201354.P5541465657678673199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036453 (n + 1) ^ 2 * A050352 n

end

end A201354.P5541465657678673199

/-! ## A201354.P10964776099385694285

`A020639(A004277(n))²*A050352(n)`
-/

namespace A201354.P10964776099385694285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A004277 n).toNat ^ 2 * A050352 n

end

end A201354.P10964776099385694285

/-!
# A201355: Expansion of e.g.f.: 3*exp(3*x) / (4 - exp(3*x)).

The programs for A201355, there is no canonical definition to state claims against.
-/

/-! ## A201355.P8355944253240585903

`A036453(n+1)*A228938(n)`
-/

namespace A201355.P8355944253240585903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036453 (n + 1) * A228938 n

end

end A201355.P8355944253240585903

/-! ## A201355.P2007502447998556871

`A020639(A001316(n))*A228938(n)`
-/

namespace A201355.P2007502447998556871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A001316 n).toNat * A228938 n

end

end A201355.P2007502447998556871

/-! ## A201355.P15667742181045766103

`A020639(A008458(n))*A228938(n)`
-/

namespace A201355.P15667742181045766103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A008458 n).toNat * A228938 n

end

end A201355.P15667742181045766103

/-! ## A201355.P16561279767946249140

`A020639(A008574(n))*A228938(n)`
-/

namespace A201355.P16561279767946249140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A008574 n).toNat * A228938 n

end

end A201355.P16561279767946249140

/-! ## A201355.P8678326972176619714

`A020639(A008579(n))*A228938(n)`
-/

namespace A201355.P8678326972176619714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A008579 n).toNat * A228938 n

end

end A201355.P8678326972176619714

/-! ## A201355.P11769032765205132624

`A006530(A062383(n))*A228938(n)`
-/

namespace A201355.P11769032765205132624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A062383 n).toNat * A228938 n

end

end A201355.P11769032765205132624

/-! ## A201355.P7388823248792196689

`A059268(A000124(n))²*A255927(n)`
-/

namespace A201355.P7388823248792196689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 (A000124 n).toNat ^ 2 * A255927 n

end

end A201355.P7388823248792196689

/-!
# A201358: Numbers k such that (2^k + k - 1)*2^k + 1 is prime.

The programs for A201358, there is no canonical definition to state claims against.
-/

/-! ## A201358.P17505160929350882459

`or(A035316(n+1), A331010(A091127(n+1)))`
-/

namespace A201358.P17505160929350882459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A035316 (n + 1)) (A331010 (A091127 (n + 1)).toNat)

end

end A201358.P17505160929350882459

/-!
# A201359: Numbers k such that (2^k + k - 1)*2^k - 1 is prime.

The programs for A201359, there is no canonical definition to state claims against.
-/

/-! ## A201359.P17398785283012043162

`A273859(A117537(n)-A004526(n))`
-/

namespace A201359.P17398785283012043162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273859 (A117537 n - A004526 n).toNat

end

end A201359.P17398785283012043162

/-!
# A201364: Numbers k such that A057775(k) is the factor of a Fermat number 2^(2^m) + 1 for some m.

The programs for A201364, there is no canonical definition to state claims against.
-/

/-! ## A201364.P12936126510210365108

`∑[A164999(A148414(n))]`
-/

namespace A201364.P12936126510210365108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164999 (A148414 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A201364.P12936126510210365108

/-! ## A201364.P13813039394075933713

`eq[A029288(n), A029296(A068980(n))]`
-/

namespace A201364.P13813039394075933713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029288 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029296 (A068980 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A201364.P13813039394075933713

/-! ## A201364.P3955622394212670152

`eq[A005117(A228570(n)), A278043(n)]`
-/

namespace A201364.P3955622394212670152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (A228570 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278043 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A201364.P3955622394212670152

/-! ## A201364.P10912081604724024802

`A323638(A141796(3*(n+1))+A099463(n))`
-/

namespace A201364.P10912081604724024802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323638 (A141796 (3 * (n + 1)) + A099463 n).toNat

end

end A201364.P10912081604724024802

/-! ## A201364.P11096618006052387832

`or(A001013(n+1), A038698(A355336(n+1)))`
-/

namespace A201364.P11096618006052387832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001013 (n + 1)) (A038698 (A355336 (n + 1)).toNat)

end

end A201364.P11096618006052387832

/-!
# A201365: Expansion of e.g.f. exp(x) / (5 - 4*exp(x)).

The programs for A201365, there is no canonical definition to state claims against.
-/

/-! ## A201365.P10068744807999770496

`(A165471(n²)+4)*A094417(n)/4`
-/

namespace A201365.P10068744807999770496
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A165471 (n ^ 2) + 4 : ℚ) * ((A094417 n : ℚ) / 4)

end

end A201365.P10068744807999770496

/-! ## A201365.P3490551293339581996

`A038183(A178334(n))*A050353(n)`
-/

namespace A201365.P3490551293339581996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038183 (A178334 n).toNat * A050353 n

end

end A201365.P3490551293339581996

/-! ## A201365.P15985145577588605117

`A050353(n)*A201366(A178334(n)²)`
-/

namespace A201365.P15985145577588605117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050353 n * A201366 (A178334 n ^ 2).toNat

end

end A201365.P15985145577588605117

/-! ## A201365.P12381180331748388039

`A050353(n)*A201367(A178334(n)²)`
-/

namespace A201365.P12381180331748388039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050353 n * A201367 (A178334 n ^ 2).toNat

end

end A201365.P12381180331748388039

/-! ## A201365.P2233391122949103968

`A050353(n)*A201368(A178334(n)²)`
-/

namespace A201365.P2233391122949103968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050353 n * A201368 (A178334 n ^ 2).toNat

end

end A201365.P2233391122949103968

/-! ## A201365.P17190418636266941863

`A050353(n)+A094417(n)-A000007(n)`
-/

namespace A201365.P17190418636266941863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050353 n + (A094417 n - A000007 n)

end

end A201365.P17190418636266941863

/-! ## A201365.P3597503032608064578

`A050353(n)+A057427(n)*A094417(n)`
-/

namespace A201365.P3597503032608064578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050353 n + A057427 n * A094417 n

end

end A201365.P3597503032608064578

/-!
# A201366: E.g.f.: 2*exp(2*x) / (5 - 3*exp(2*x)).

The programs for A201366, there is no canonical definition to state claims against.
-/

/-! ## A201366.P5668359896777620106

`A195140(A376175(n+1)+A015585(n))`
-/

namespace A201366.P5668359896777620106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195140 (A376175 (n + 1) + A015585 n).toNat

end

end A201366.P5668359896777620106

/-!
# A201367: E.g.f.: 3*exp(3*x) / (5 - 2*exp(3*x)).

The programs for A201367, there is no canonical definition to state claims against.
-/

/-! ## A201367.P12734161032117490569

`A003961(A375449(n+1))`
-/

namespace A201367.P12734161032117490569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (A375449 (n + 1)).toNat

end

end A201367.P12734161032117490569

/-!
# A201368: E.g.f.: 4*exp(4*x) / (5 - exp(4*x)).

The programs for A201368, there is no canonical definition to state claims against.
-/

/-! ## A201368.P16596545678000972868

`A099375(A055998(n))*A326324(n)`
-/

namespace A201368.P16596545678000972868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 (A055998 n).toNat * A326324 n

end

end A201368.P16596545678000972868

/-! ## A201368.P15518628316711694985

`A005918(A178334(n))*A326324(n)`
-/

namespace A201368.P15518628316711694985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005918 (A178334 n).toNat * A326324 n

end

end A201368.P15518628316711694985

/-! ## A201368.P11086403286915665218

`A094418(n)%10*A326324(n)`
-/

namespace A201368.P11086403286915665218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A094418 n) 10 * A326324 n

end

end A201368.P11086403286915665218

/-!
# A201369: Number of ways to place 8 nonattacking kings on an n X n board.

The programs for A201369, there is no canonical definition to state claims against.
-/

/-! ## A201369.P14253029890571351649

`A060755(A327073(n))*A327146(n)`
-/

namespace A201369.P14253029890571351649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060755 (A327073 n).toNat * A327146 n

end

end A201369.P14253029890571351649

/-! ## A201369.P13808677570625508297

`A067661(A089072(n+1))*A327146(n)`
-/

namespace A201369.P13808677570625508297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067661 (A089072 (n + 1)).toNat * A327146 n

end

end A201369.P13808677570625508297

/-!
# A201370: Number of n X n 0..1 arrays with rows and columns lexicographically nondecreasing read forwards, and nonincreasing read backwards.

The programs for A201370, there is no canonical definition to state claims against.
-/

/-! ## A201370.P14899926867519800214

`A201375(∑[4*n]+1)`
-/

namespace A201370.P14899926867519800214
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201375 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A201370.P14899926867519800214

/-! ## A201370.P13739899999101621061

`record[A201375(∑[A266981(n)])]`
-/

namespace A201370.P13739899999101621061
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266981 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201375 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A201370.P13739899999101621061

/-! ## A201370.P16175512252092027096

`record[A201375(A330613(n+1))]`
-/

namespace A201370.P16175512252092027096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201375 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A201370.P16175512252092027096

/-! ## A201370.P13198925550613281444

`A201375(A001844(n))+char[11]`
-/

namespace A201370.P13198925550613281444
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201375 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A201370.P13198925550613281444

/-! ## A201370.P3735571061170532870

`lcm((-1)^n, A201375(A016813(∑[n])))`
-/

namespace A201370.P3735571061170532870
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A201375 (A016813 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat)

end

end A201370.P3735571061170532870

/-!
# A201371: Number of n X 4 0..1 arrays with rows and columns lexicographically nondecreasing read forwards, and nonincreasing read backwards.

The programs for A201371, the canonical program `A201371.P4978619889075734052` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A201371 has offset 1).

The definition of A201371 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A201371.P4978619889075734052

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=2, a(1)=5, a(2)=14, a(3)=36, a(4)=80`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A201371

/-- `5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` -/
def P4978619889075734052.Spec : Prop :=
  ∀ n, P4978619889075734052.a n = A201371 (n + 1)

theorem P4978619889075734052.correct : P4978619889075734052.Spec := by
  intro n
  simp only [A201371, Nat.add_sub_cancel]

end A201371

/-! ## A201371.P3300684062619769112

`∑[∑[abs(3-(n+1)²)]]`
-/

namespace A201371.P3300684062619769112
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |3 - ((n + 1) ^ 2 : ℤ)|

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A201371.P3300684062619769112

namespace A201371

/-- `∑[∑[abs(3-(n+1)²)]]` -/
def P3300684062619769112.Spec : Prop :=
  ∀ n, P3300684062619769112.a n = A201371 (n + 1)

end A201371

/-! ## A201371.P3130978374936581835

`floor(∑[∑[Δ[n²]+a(n-1)]])` with `a(0)=2, a(1)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A201371.P3130978374936581835
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2, 1] fun n f2 =>
  (f3 (n + 1) : ℤ) - (f3 n : ℤ) + f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A201371.P3130978374936581835

namespace A201371

/-- `floor(∑[∑[Δ[n²]+a(n-1)]])` -/
def P3130978374936581835.Spec : Prop :=
  ∀ n, P3130978374936581835.a n = A201371 (n + 1)

end A201371

/-! ## A201371.P10272620647704947612

`floor(∑[∑[a(n-1)+2*n+1]])` with `a(0)=2, a(1)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A201371.P10272620647704947612
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [2, 1] fun n f2 =>
  f2 (n - 1) + (2 * n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A201371.P10272620647704947612

namespace A201371

/-- `floor(∑[∑[a(n-1)+2*n+1]])` -/
def P10272620647704947612.Spec : Prop :=
  ∀ n, (P10272620647704947612.a n : ℤ) = A201371 (n + 1)

end A201371

/-! ## A201371.P7268686594463812317

`ceil(∑[∑[a(n-1)+2*n+1]])` with `a(0)=2, a(1)=1`

`ceil` is left out, it is the identity on integers.
-/

namespace A201371.P7268686594463812317
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [2, 1] fun n f2 =>
  f2 (n - 1) + (2 * n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A201371.P7268686594463812317

namespace A201371

/-- `ceil(∑[∑[a(n-1)+2*n+1]])` -/
def P7268686594463812317.Spec : Prop :=
  ∀ n, (P7268686594463812317.a n : ℤ) = A201371 (n + 1)

end A201371

/-! ## A201371.P2039133464642348815

`floor(∑[∑[n+1+a(n-1)+n]])` with `a(0)=2, a(1)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A201371.P2039133464642348815
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [2, 1] fun n f2 =>
  n + 1 + (f2 (n - 1) + n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A201371.P2039133464642348815

namespace A201371

/-- `floor(∑[∑[n+1+a(n-1)+n]])` -/
def P2039133464642348815.Spec : Prop :=
  ∀ n, (P2039133464642348815.a n : ℤ) = A201371 (n + 1)

end A201371

/-! ## A201371.P13442280042153084780

`∑[∑[a(n-1)+2*n+1]]+n+1` with `a(0)=1, a(1)=1`
-/

namespace A201371.P13442280042153084780
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f2 =>
  f2 (n - 1) + (2 * n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n + 1)

end

end A201371.P13442280042153084780

namespace A201371

/-- `∑[∑[a(n-1)+2*n+1]]+n+1` -/
def P13442280042153084780.Spec : Prop :=
  ∀ n, (P13442280042153084780.a n : ℤ) = A201371 (n + 1)

end A201371

/-! ## A201371.P6624088067408419671

`∑[∑[A267874(n)]]+1`
-/

namespace A201371.P6624088067408419671
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267874 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A201371.P6624088067408419671

namespace A201371

/-- `∑[∑[A267874(n)]]+1` -/
def P6624088067408419671.Spec : Prop :=
  ∀ n, P6624088067408419671.a n = A201371 (n + 1)

end A201371

/-! ## A201371.P5291114773572637336

`∑[A047732(n)]+1-n²`
-/

namespace A201371.P5291114773572637336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047732 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - (n ^ 2 : ℤ))

end

end A201371.P5291114773572637336

namespace A201371

/-- `∑[A047732(n)]+1-n²` -/
def P5291114773572637336.Spec : Prop :=
  ∀ n, P5291114773572637336.a n = A201371 (n + 1)

end A201371

/-! ## A201371.P16906831260401004144

`∑[A110610(n+1)-n]+1`
-/

namespace A201371.P16906831260401004144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110610 (n + 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A201371.P16906831260401004144

namespace A201371

/-- `∑[A110610(n+1)-n]+1` -/
def P16906831260401004144.Spec : Prop :=
  ∀ n, P16906831260401004144.a n = A201371 (n + 1)

end A201371

/-! ## A201371.P15031061066907856882

`∑[A116721(n+1)+∑[∑[n]]]+1`
-/

namespace A201371.P15031061066907856882
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116721 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A201371.P15031061066907856882

namespace A201371

/-- `∑[A116721(n+1)+∑[∑[n]]]+1` -/
def P15031061066907856882.Spec : Prop :=
  ∀ n, P15031061066907856882.a n = A201371 (n + 1)

end A201371

/-! ## A201371.P1082415846947986084

`∑[∑[A005563(n)]-2*n+1]+n+1`
-/

namespace A201371.P1082415846947986084
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005563 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - (2 * n : ℤ) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n + 1 : ℤ)

end

end A201371.P1082415846947986084

namespace A201371

/-- `∑[∑[A005563(n)]-2*n+1]+n+1` -/
def P1082415846947986084.Spec : Prop :=
  ∀ n, P1082415846947986084.a n = A201371 (n + 1)

end A201371

/-! ## A201371.P3120202721424105526

`A005701(n)-∑[A028884(n)]`
-/

namespace A201371.P3120202721424105526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028884 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005701 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A201371.P3120202721424105526

namespace A201371

/-- `A005701(n)-∑[A028884(n)]` -/
def P3120202721424105526.Spec : Prop :=
  ∀ n, P3120202721424105526.a n = A201371 (n + 1)

end A201371

/-! ## A201371.P1733679229602905024

`A005701(n)-A052153(n+1)`
-/

namespace A201371.P1733679229602905024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005701 n - A052153 (n + 1)

end

end A201371.P1733679229602905024

namespace A201371

/-- `A005701(n)-A052153(n+1)` -/
def P1733679229602905024.Spec : Prop :=
  ∀ n, P1733679229602905024.a n = A201371 (n + 1)

end A201371

/-! ## A201371.P14157539452028322438

`A006007(n)+A229183(n)+2`
-/

namespace A201371.P14157539452028322438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006007 n + (A229183 n + 2)

end

end A201371.P14157539452028322438

namespace A201371

/-- `A006007(n)+A229183(n)+2` -/
def P14157539452028322438.Spec : Prop :=
  ∀ n, P14157539452028322438.a n = A201371 (n + 1)

end A201371

/-! ## A201371.P11038019718821175927

`∑[A145066(n+1)]-A046092(n)`
-/

namespace A201371.P11038019718821175927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145066 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A046092 n

end

end A201371.P11038019718821175927

namespace A201371

/-- `∑[A145066(n+1)]-A046092(n)` -/
def P11038019718821175927.Spec : Prop :=
  ∀ n, P11038019718821175927.a n = A201371 (n + 1)

end A201371

/-! ## A201371.P12605731208371053493

`∑[A000330(n)]+2*A000125(n)`
-/

namespace A201371.P12605731208371053493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2 * A000125 n

end

end A201371.P12605731208371053493

namespace A201371

/-- `∑[A000330(n)]+2*A000125(n)` -/
def P12605731208371053493.Spec : Prop :=
  ∀ n, P12605731208371053493.a n = A201371 (n + 1)

end A201371

/-! ## A201371.P12508813728955234738

`A000292(n)+2*A116699(n+1)`
-/

namespace A201371.P12508813728955234738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 n + 2 * A116699 (n + 1)

end

end A201371.P12508813728955234738

namespace A201371

/-- `A000292(n)+2*A116699(n+1)` -/
def P12508813728955234738.Spec : Prop :=
  ∀ n, P12508813728955234738.a n = A201371 (n + 1)

end A201371

/-! ## A201371.P9053102375411426076

`A328152(n+2)-∑[n-2]`
-/

namespace A201371.P9053102375411426076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328152 (n + 2) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A201371.P9053102375411426076

namespace A201371

/-- `A328152(n+2)-∑[n-2]` -/
def P9053102375411426076.Spec : Prop :=
  ∀ n, P9053102375411426076.a n = A201371 (n + 1)

end A201371

/-! ## A201371.P16465093313861488664

`A002415(n+1)+2*A000125(n)`
-/

namespace A201371.P16465093313861488664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002415 (n + 1) + 2 * A000125 n

end

end A201371.P16465093313861488664

namespace A201371

/-- `A002415(n+1)+2*A000125(n)` -/
def P16465093313861488664.Spec : Prop :=
  ∀ n, P16465093313861488664.a n = A201371 (n + 1)

end A201371

/-!
# A201372: Number of n X 5 0..1 arrays with rows and columns lexicographically nondecreasing read forwards, and nonincreasing read backwards.

The programs for A201372, there is no canonical definition to state claims against.
-/

/-! ## A201372.P12965846440906717482

`A201375(∑[n+4]+11)`
-/

namespace A201372.P12965846440906717482
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201375 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A201372.P12965846440906717482

/-!
# A201373: Number of n X 6 0..1 arrays with rows and columns lexicographically nondecreasing read forwards, and nonincreasing read backwards.

The programs for A201373, there is no canonical definition to state claims against.
-/

/-! ## A201373.P2256967181189811512

`A201375(record[a(n-1)+n])` with `a(0)=21, a(1)=7`
-/

namespace A201373.P2256967181189811512
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [21, 7] fun n f1 =>
  f1 (n - 1) + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201375 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A201373.P2256967181189811512

/-! ## A201373.P777595603362865214

`A201375(A374007(n+1))`
-/

namespace A201373.P777595603362865214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201375 (A374007 (n + 1)).toNat

end

end A201373.P777595603362865214

/-! ## A201373.P12319628185410802375

`A201375(A166136(n+4))`
-/

namespace A201373.P12319628185410802375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201375 (A166136 (n + 4)).toNat

end

end A201373.P12319628185410802375

/-! ## A201373.P1698443811463282598

`A201375(A056115(n)+21)`
-/

namespace A201373.P1698443811463282598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201375 (A056115 n + 21).toNat

end

end A201373.P1698443811463282598

/-! ## A201373.P9735457060061136597

`A201375(A167499(n+4)+1)`
-/

namespace A201373.P9735457060061136597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201375 (A167499 (n + 4) + 1).toNat

end

end A201373.P9735457060061136597

/-!
# A201374: Number of nX7 0..1 arrays with rows and columns lexicographically nondecreasing read forwards, and nonincreasing read backwards.

The programs for A201374, there is no canonical definition to state claims against.
-/

/-! ## A201374.P705025099801281703

`A201375(A374008(n+1))`
-/

namespace A201374.P705025099801281703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201375 (A374008 (n + 1)).toNat

end

end A201374.P705025099801281703

/-! ## A201374.P8372050831335703950

`A201375(eq[11, A066657(n)])`
-/

namespace A201374.P8372050831335703950
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201375 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A201374.P8372050831335703950

/-! ## A201374.P9197803123151769239

`A201375(A166136(n+5)+1)`
-/

namespace A201374.P9197803123151769239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201375 (A166136 (n + 5) + 1).toNat

end

end A201374.P9197803123151769239

/-! ## A201374.P13002856758332706232

`A201375(A167499(n+5)+2)`
-/

namespace A201374.P13002856758332706232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201375 (A167499 (n + 5) + 2).toNat

end

end A201374.P13002856758332706232

/-! ## A201374.P17124680941552685148

`A201375(A000124(n+6)+6)`
-/

namespace A201374.P17124680941552685148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201375 (A000124 (n + 6) + 6).toNat

end

end A201374.P17124680941552685148

/-!
# A201375: T(n,k)=Number of nXk 0..1 arrays with rows and columns lexicographically nondecreasing read forwards, and nonincreasing read backwards.

The programs for A201375, there is no canonical definition to state claims against.
-/

/-! ## A201375.P7757111428721770574

`A130696(A101515(n))+2`
-/

namespace A201375.P7757111428721770574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130696 (A101515 n).toNat + 2

end

end A201375.P7757111428721770574

/-! ## A201375.P13522492060261782447

`2-A130696(A101515(n))*A260196(n)`
-/

namespace A201375.P13522492060261782447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A130696 (A101515 n).toNat * A260196 n

end

end A201375.P13522492060261782447

/-! ## A201375.P16154124163277393087

`A008619(2*n)-(n-1-A130696(A101515(n)))`
-/

namespace A201375.P16154124163277393087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * n) - ((n : ℤ) - 1 - A130696 (A101515 n).toNat)

end

end A201375.P16154124163277393087

/-! ## A201375.P8691531923928682407

`A132016(A088699(n))+1`
-/

namespace A201375.P8691531923928682407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132016 (A088699 n).toNat + 1

end

end A201375.P8691531923928682407

/-! ## A201375.P16550489689224369735

`A101515(n)+A014963(A121014(2*(n+1)))`
-/

namespace A201375.P16550489689224369735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101515 n + A014963 (A121014 (2 * (n + 1))).toNat

end

end A201375.P16550489689224369735

/-!
# A201376: Triangle read by rows: T(n,k) (0 <= k <= n) is the number of partitions of (n,k) into a sum of pairs.

The programs for A201376, there is no canonical definition to state claims against.
-/

/-! ## A201376.P2489393091487248767

`A054225(A245300(n))`
-/

namespace A201376.P2489393091487248767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054225 (A245300 n).toNat

end

end A201376.P2489393091487248767

/-! ## A201376.P17433922051671418362

`A054225((A214661(n+1)-1)/2)`
-/

namespace A201376.P17433922051671418362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054225 (SequenceMachineLib.roundAway ((A214661 (n + 1) - 1 : ℚ) / 2)).toNat

end

end A201376.P17433922051671418362

/-! ## A201376.P5617325463456419984

`A353378(A100851(n))`
-/

namespace A201376.P5617325463456419984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353378 (A100851 n).toNat

end

end A201376.P5617325463456419984

/-! ## A201376.P6566220226387935153

`A353378(A036561(n)*A059268(n))`
-/

namespace A201376.P6566220226387935153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353378 (A036561 n * A059268 n).toNat

end

end A201376.P6566220226387935153

/-! ## A201376.P15074539959406884909

`A353378(A038212(n)/A007318(n))`
-/

namespace A201376.P15074539959406884909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353378 (SequenceMachineLib.roundAway ((A038212 n : ℚ) / (A007318 n : ℚ))).toNat

end

end A201376.P15074539959406884909

/-!
# A201377: Triangle read by rows: T(n,k) (0 <= k <= n) is the number of partitions of (n,k) into a sum of distinct pairs.

The programs for A201377, there is no canonical definition to state claims against.
-/

/-! ## A201377.P15634495258918022808

`A054242(A245300(n))`
-/

namespace A201377.P15634495258918022808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054242 (A245300 n).toNat

end

end A201377.P15634495258918022808

/-! ## A201377.P8120607700352414382

`A045778(A100851(n))`
-/

namespace A201377.P8120607700352414382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045778 (A100851 n).toNat

end

end A201377.P8120607700352414382

/-! ## A201377.P747944288039850141

`A045778(A036561(n)*A059268(n))`
-/

namespace A201377.P747944288039850141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045778 (A036561 n * A059268 n).toNat

end

end A201377.P747944288039850141

/-! ## A201377.P12464474376038896087

`A045778(A038212(n)/A007318(n))`
-/

namespace A201377.P12464474376038896087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045778 (SequenceMachineLib.roundAway ((A038212 n : ℚ) / (A007318 n : ℚ))).toNat

end

end A201377.P12464474376038896087

/-! ## A201377.P13535254436867026146

`A045778(lcm(A036561(n), A137688(n)))`
-/

namespace A201377.P13535254436867026146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045778 (Int.lcm (A036561 n) (A137688 n))

end

end A201377.P13535254436867026146

/-!
# A201378: Number of n X n 0..1 arrays with rows and columns lexicographically nondecreasing and the instance counts of every value within one of each other.

The programs for A201378, there is no canonical definition to state claims against.
-/

/-! ## A201378.P15895383368666364392

`A201384(∑[4*n]+1)`
-/

namespace A201378.P15895383368666364392
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201384 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A201378.P15895383368666364392

/-! ## A201378.P15675737946471993103

`record[A003982(n)*A201384(n+1)]`
-/

namespace A201378.P15675737946471993103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A201384 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A201378.P15675737946471993103

/-! ## A201378.P14093236370923156862

`gcd(A000038(n), A201384(A001844(n)))`
-/

namespace A201378.P14093236370923156862
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A201384 (A001844 n).toNat)

end

end A201378.P14093236370923156862

/-! ## A201378.P16083534121446754235

`A201384(A001844(n))*A296554(n+1)`
-/

namespace A201378.P16083534121446754235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201384 (A001844 n).toNat * A296554 (n + 1)

end

end A201378.P16083534121446754235

/-! ## A201378.P7777401264857381581

`A108202(2*n)+A201384(A001844(n))-n`
-/

namespace A201378.P7777401264857381581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108202 (2 * n) + (A201384 (A001844 n).toNat - (n : ℤ))

end

end A201378.P7777401264857381581

/-!
# A201379: Number of nX3 0..1 arrays with rows and columns lexicographically nondecreasing and the instance counts of every value within one of each other.

The programs for A201379, there is no canonical definition to state claims against.
-/

/-! ## A201379.P9296567865847676864

`A201384(∑[n+2]+4)`
-/

namespace A201379.P9296567865847676864
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201384 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A201379.P9296567865847676864

/-! ## A201379.P11091160297386148688

`A201384(A167614(n+1))%A092251(n)`
-/

namespace A201379.P11091160297386148688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A201384 (A167614 (n + 1)).toNat) (A092251 n)

end

end A201379.P11091160297386148688

/-! ## A201379.P5392543219061622494

`lcm(A106400(n), A201384(A167614(n+1)))`
-/

namespace A201379.P5392543219061622494
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A106400 n) (A201384 (A167614 (n + 1)).toNat)

end

end A201379.P5392543219061622494

/-! ## A201379.P14839230985155637078

`A097807(n)²*A201384(A167614(n+1))`
-/

namespace A201379.P14839230985155637078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097807 n ^ 2 * A201384 (A167614 (n + 1)).toNat

end

end A201379.P14839230985155637078

/-! ## A201379.P7825705669027722744

`A201384(A167614(n+1))+A000045(C(n, n+1))`
-/

namespace A201379.P7825705669027722744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201384 (A167614 (n + 1)).toNat + A000045 (Nat.choose n (n + 1))

end

end A201379.P7825705669027722744

/-!
# A201380: Number of nX4 0..1 arrays with rows and columns lexicographically nondecreasing and the instance counts of every value within one of each other.

The programs for A201380, there is no canonical definition to state claims against.
-/

/-! ## A201380.P3655454321718484176

`A180979(A374004(n+1))`
-/

namespace A201380.P3655454321718484176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180979 (A374004 (n + 1)).toNat

end

end A201380.P3655454321718484176

/-! ## A201380.P10599066754511955359

`A201384(A141214(n)+7)`
-/

namespace A201380.P10599066754511955359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201384 (A141214 n + 7).toNat

end

end A201380.P10599066754511955359

/-! ## A201380.P5128398162388584676

`A180979(A052905(n)+9)`
-/

namespace A201380.P5128398162388584676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180979 (A052905 n + 9).toNat

end

end A201380.P5128398162388584676

/-! ## A201380.P11163821609077210301

`A201384(A052905(n)+9)`
-/

namespace A201380.P11163821609077210301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201384 (A052905 n + 9).toNat

end

end A201380.P11163821609077210301

/-! ## A201380.P1120718693028460674

`A180979(A055999(n)+10)`
-/

namespace A201380.P1120718693028460674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180979 (A055999 n + 10).toNat

end

end A201380.P1120718693028460674

/-!
# A201381: Number of nX5 0..1 arrays with rows and columns lexicographically nondecreasing and the instance counts of every value within one of each other.

The programs for A201381, there is no canonical definition to state claims against.
-/

/-! ## A201381.P5665130769552401752

`A201384(A374005(n+1))`
-/

namespace A201381.P5665130769552401752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201384 (A374005 (n + 1)).toNat

end

end A201381.P5665130769552401752

/-! ## A201381.P11810207046230340987

`A201384(A166136(n+3)-1)`
-/

namespace A201381.P11810207046230340987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201384 (A166136 (n + 3) - 1).toNat

end

end A201381.P11810207046230340987

/-! ## A201381.P12830092017871039956

`A201384(A046691(n+2)+9)`
-/

namespace A201381.P12830092017871039956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201384 (A046691 (n + 2) + 9).toNat

end

end A201381.P12830092017871039956

/-! ## A201381.P4404888417946037176

`A201384(A052905(n+1)+10)`
-/

namespace A201381.P4404888417946037176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201384 (A052905 (n + 1) + 10).toNat

end

end A201381.P4404888417946037176

/-! ## A201381.P9112910457985739781

`A201384(A055999(n+1)+11)`
-/

namespace A201381.P9112910457985739781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201384 (A055999 (n + 1) + 11).toNat

end

end A201381.P9112910457985739781

/-!
# A201382: Number of nX6 0..1 arrays with rows and columns lexicographically nondecreasing and the instance counts of every value within one of each other.

The programs for A201382, there is no canonical definition to state claims against.
-/

/-! ## A201382.P8368689663056281287

`A180979(A374007(n+1))`
-/

namespace A201382.P8368689663056281287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180979 (A374007 (n + 1)).toNat

end

end A201382.P8368689663056281287

/-! ## A201382.P6437762165667460234

`A201384(A056115(n)+21)`
-/

namespace A201382.P6437762165667460234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201384 (A056115 n + 21).toNat

end

end A201382.P6437762165667460234

/-! ## A201382.P5699868540264540998

`A180979(A000124(n+5)+5)`
-/

namespace A201382.P5699868540264540998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180979 (A000124 (n + 5) + 5).toNat

end

end A201382.P5699868540264540998

/-! ## A201382.P1065254528956462420

`A201384(A052905(n+2)+11)`
-/

namespace A201382.P1065254528956462420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201384 (A052905 (n + 2) + 11).toNat

end

end A201382.P1065254528956462420

/-! ## A201382.P8513666852474443127

`A201384(eq[7, A131818(n+1)])`
-/

namespace A201382.P8513666852474443127
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201384 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A201382.P8513666852474443127

/-!
# A201383: Number of nX7 0..1 arrays with rows and columns lexicographically nondecreasing and the instance counts of every value within one of each other.

The programs for A201383, there is no canonical definition to state claims against.
-/

/-! ## A201383.P7998595193029909408

`A201384(A374008(n+1))`
-/

namespace A201383.P7998595193029909408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201384 (A374008 (n + 1)).toNat

end

end A201383.P7998595193029909408

/-! ## A201383.P16956075062564228501

`A201384(A056119(n)+28)`
-/

namespace A201383.P16956075062564228501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201384 (A056119 n + 28).toNat

end

end A201383.P16956075062564228501

/-! ## A201383.P10010454264814310421

`A201384(eq[11, A066657(n)])`
-/

namespace A201383.P10010454264814310421
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201384 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A201383.P10010454264814310421

/-! ## A201383.P5074102655103640134

`A201384(eq[8, A131818(n+1)])`
-/

namespace A201383.P5074102655103640134
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201384 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A201383.P5074102655103640134

/-! ## A201383.P657382138742688216

`A201384(A055999(n+4))`
-/

namespace A201383.P657382138742688216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201384 (A055999 (n + 4)).toNat

end

end A201383.P657382138742688216

/-!
# A201386: Number of n X n 0..3 arrays with rows and columns lexicographically nondecreasing and the instance counts of every value within one of each other.

The programs for A201386, there is no canonical definition to state claims against.
-/

/-! ## A201386.P17951649156397567431

`A201393(∑[4*n]+1)`
-/

namespace A201386.P17951649156397567431
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201393 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A201386.P17951649156397567431

/-!
# A201387: Number of nX2 0..3 arrays with rows and columns lexicographically nondecreasing and the instance counts of every value within one of each other.

The programs for A201387, there is no canonical definition to state claims against.
-/

/-! ## A201387.P15689564029517084495

`A201393(∑[n+1]+2)`
-/

namespace A201387.P15689564029517084495
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201393 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A201387.P15689564029517084495

/-! ## A201387.P17356035265282039037

`A057427(n+1)*A201393(A000096(n+1))`
-/

namespace A201387.P17356035265282039037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (n + 1) * A201393 (A000096 (n + 1)).toNat

end

end A201387.P17356035265282039037

/-!
# A201388: Number of nX3 0..3 arrays with rows and columns lexicographically nondecreasing and the instance counts of every value within one of each other.

The programs for A201388, there is no canonical definition to state claims against.
-/

/-! ## A201388.P3044492097393090428

`A201393(∑[n+2]+4)`
-/

namespace A201388.P3044492097393090428
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201393 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A201388.P3044492097393090428

/-! ## A201388.P12659920036429563920

`record[A201393(A167614(∏{e}[n+1, #]))]`
-/

namespace A201388.P12659920036429563920
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201393 (A167614 (∏ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A201388.P12659920036429563920

/-! ## A201388.P12752927736101487393

`lcm((-1)^n, A201393(A167614(n+1)))`
-/

namespace A201388.P12752927736101487393
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A201393 (A167614 (n + 1)).toNat)

end

end A201388.P12752927736101487393

/-! ## A201388.P4565368845445041262

`A201393(A167614(n+1))+A011731(n)`
-/

namespace A201388.P4565368845445041262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201393 (A167614 (n + 1)).toNat + A011731 n

end

end A201388.P4565368845445041262

/-! ## A201388.P17075447738987007800

`A201393(A167614(n+1))+A011738(n)`
-/

namespace A201388.P17075447738987007800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201393 (A167614 (n + 1)).toNat + A011738 n

end

end A201388.P17075447738987007800

/-!
# A201389: Number of n X 4 0..3 arrays with rows and columns lexicographically nondecreasing and the instance counts of every value within one of each other.

The programs for A201389, there is no canonical definition to state claims against.
-/

/-! ## A201389.P4032678358337725104

`A201393(A141214(n)+7)`
-/

namespace A201389.P4032678358337725104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201393 (A141214 n + 7).toNat

end

end A201389.P4032678358337725104

/-! ## A201389.P536346586357183656

`A201393(A052905(n)+9)`
-/

namespace A201389.P536346586357183656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201393 (A052905 n + 9).toNat

end

end A201389.P536346586357183656

/-! ## A201389.P7265219269991867929

`A201393(A055999(n)+10)`
-/

namespace A201389.P7265219269991867929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201393 (A055999 n + 10).toNat

end

end A201389.P7265219269991867929

/-! ## A201389.P13051760706099880562

`A201393(eq[5, A066657(n)])`
-/

namespace A201389.P13051760706099880562
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201393 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A201389.P13051760706099880562

/-! ## A201389.P14136820091607535474

`A201393(Δ[A201618(n+5)])`
-/

namespace A201389.P14136820091607535474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201618 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201393 (f1 (n + 1) - f1 n).toNat

end

end A201389.P14136820091607535474

/-!
# A201390: Number of nX5 0..3 arrays with rows and columns lexicographically nondecreasing and the instance counts of every value within one of each other.

The programs for A201390, there is no canonical definition to state claims against.
-/

/-! ## A201390.P16593854005116988593

`A201393(A167499(n+3))`
-/

namespace A201390.P16593854005116988593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201393 (A167499 (n + 3)).toNat

end

end A201390.P16593854005116988593

/-! ## A201390.P7043292882344446827

`A201393(A155212(n)+13)`
-/

namespace A201390.P7043292882344446827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201393 (A155212 n + 13).toNat

end

end A201390.P7043292882344446827

/-! ## A201390.P11331784949584967399

`A201393(A056000(n)+15)`
-/

namespace A201390.P11331784949584967399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201393 (A056000 n + 15).toNat

end

end A201390.P11331784949584967399

/-! ## A201390.P12265594179770238549

`A201393(eq[7, A066657(n)])`
-/

namespace A201390.P12265594179770238549
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201393 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A201390.P12265594179770238549

/-!
# A201391: Number of n X 6 0..3 arrays with rows and columns lexicographically nondecreasing and the instance counts of every value within one of each other.

The programs for A201391, there is no canonical definition to state claims against.
-/

/-! ## A201391.P7587770399384524314

`A201393(C(n+6, 2)+1+n)`
-/

namespace A201391.P7587770399384524314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201393 (Nat.choose (n + 6) 2 + 1 + n)

end

end A201391.P7587770399384524314

/-!
# A201392: Number of nX7 0..3 arrays with rows and columns lexicographically nondecreasing and the instance counts of every value within one of each other.

The programs for A201392, there is no canonical definition to state claims against.
-/

/-! ## A201392.P14479751522953733595

`A201393(A374008(n+1))`
-/

namespace A201392.P14479751522953733595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201393 (A374008 (n + 1)).toNat

end

end A201392.P14479751522953733595

