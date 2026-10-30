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
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C041
import Seq.B000.C043
import Seq.B000.C044
import Seq.B000.C045
import Seq.B000.C046
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
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
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
import SequenceMachineLib.Triangle

/-!
# A321700: Base-5 deletable primes (written in base 10).

The programs for A321700, there is no canonical definition to state claims against.
-/

/-! ## A321700.P15221146056091944524

`p?[comp[A321701(n+1)]]`
-/

namespace A321700.P15221146056091944524
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321701 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A321700.P15221146056091944524

/-! ## A321700.P11097391326678079507

`p?[∑[A000034(A140115(n))]]`
-/

namespace A321700.P11097391326678079507
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A140115 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A321700.P11097391326678079507

/-! ## A321700.P16252192795890752713

`p?[∑[A277822(A088897(n+1))]]`
-/

namespace A321700.P16252192795890752713
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277822 (A088897 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A321700.P16252192795890752713

/-! ## A321700.P11141033869931260750

`p?[∑[A255326(A132207(n+3))]]`
-/

namespace A321700.P11141033869931260750
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255326 (A132207 (n + 3)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A321700.P11141033869931260750

/-! ## A321700.P16536345408716315479

`p?[lt[n^(n%2)+1, A354721(n+1)]]`
-/

namespace A321700.P16536345408716315479
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ (n % 2) + 1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354721 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A321700.P16536345408716315479

/-!
# A321701: Primes that are not base-5 deletable primes (written in base 10).

The programs for A321701, there is no canonical definition to state claims against.
-/

/-! ## A321701.P10511654931398899835

`p?[A318241(n+1)+eq[1, A266364(n)]]`
-/

namespace A321701.P10511654931398899835
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266364 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318241 (n + 1) + (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A321701.P10511654931398899835

/-! ## A321701.P6201808542493904546

`A000040(eq[A186713(n+6), A186714(3*n+5)])`
-/

namespace A321701.P6201808542493904546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186713 (n + 6)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186714 (3 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A321701.P6201808542493904546

/-!
# A321702: Numbers that are still valid after a horizontal reflection on a calculator display.

The programs for A321702, there is no canonical definition to state claims against.
-/

/-! ## A321702.P6380864132099255223

`A222252(A202267(n+1))`
-/

namespace A321702.P6380864132099255223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222252 (A202267 (n + 1)).toNat

end

end A321702.P6380864132099255223

/-! ## A321702.P8282421338910707052

`lt[A054055(A222243(n)), 6]`
-/

namespace A321702.P8282421338910707052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 (A222243 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A321702.P8282421338910707052

/-! ## A321702.P16306584737090657853

`eq[n, A222251(A222242(n))]`
-/

namespace A321702.P16306584737090657853
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222251 (A222242 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A321702.P16306584737090657853

/-! ## A321702.P2258221922126464931

`eq[n, A222249(A222244(n))]`
-/

namespace A321702.P2258221922126464931
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222249 (A222244 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A321702.P2258221922126464931

/-! ## A321702.P681797158322908612

`eq[n, A222253(A222241(n))]`
-/

namespace A321702.P681797158322908612
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222253 (A222241 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A321702.P681797158322908612

/-! ## A321702.P4749170550567302164

`record[gcd(A222242(n), A222251(n))]`
-/

namespace A321702.P4749170550567302164
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A222242 n) (A222251 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A321702.P4749170550567302164

/-! ## A321702.P6015148816994025218

`record[A222250(gcd(n, A222244(n)))]`
-/

namespace A321702.P6015148816994025218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222250 (Int.gcd (n : ℤ) (A222244 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A321702.P6015148816994025218

/-! ## A321702.P9066341550245428651

`record[gcd(A222241(n), A222253(n))]`
-/

namespace A321702.P9066341550245428651
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A222241 n) (A222253 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A321702.P9066341550245428651

/-! ## A321702.P273066466648989995

`record[A222253(n)-A136400(2*n)]`
-/

namespace A321702.P273066466648989995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222253 n - A136400 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A321702.P273066466648989995

/-!
# A321703: a(n) = 3*a(n-1) + 4*a(n-2) + a(n-3), a(0) = 1, a(1) = 1, a(2) = 5.

The programs for A321703, the canonical program `A321703.P15535657896170768555` is in `Seq.B000.C044`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A321703 has offset 0).

The definition of A321703 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*a(n-1)+4*a(n-2)+a(n-3)` (program `A321703.P15535657896170768555`, by `A321703.P15535657896170768555.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A321703.P9657194378013369125

`ogf((1-2x-2x^2)/(1-3x-4x^2-x^3))`
-/

namespace A321703.P9657194378013369125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2, -2] [1, -3, -4, -1] n

end

end A321703.P9657194378013369125

namespace A321703

/-- `ogf((1-2x-2x^2)/(1-3x-4x^2-x^3))` -/
def P9657194378013369125.Spec : Prop :=
  ∀ n, P9657194378013369125.a n = A321703 n

end A321703

/-! ## A321703.P15535657896170768555

`3*a(n-1)+4*a(n-2)+a(n-3)` with `a(0)=1, a(1)=1, a(2)=5`

The canonical program, it is in `Seq.B000.C044`.
-/

namespace A321703

/-- `3*a(n-1)+4*a(n-2)+a(n-3)` -/
def P15535657896170768555.Spec : Prop :=
  ∀ n, (P15535657896170768555.a n : ℤ) = A321703 n

theorem P15535657896170768555.correct : P15535657896170768555.Spec := by
  intro n
  simp only [A321703]

end A321703

/-! ## A321703.P16122190909918775947

`A181879(abs(1-n))+A181879(n)`
-/

namespace A321703.P16122190909918775947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181879 |1 - (n : ℤ)|.toNat + A181879 n

end

end A321703.P16122190909918775947

namespace A321703

/-- `A181879(abs(1-n))+A181879(n)` -/
def P16122190909918775947.Spec : Prop :=
  ∀ n, P16122190909918775947.a n = A321703 n

end A321703

/-! ## A321703.P17437739749234650850

`Δ[A181879(n)]-A120757(n+1)`
-/

namespace A321703.P17437739749234650850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181879 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A120757 (n + 1)

end

end A321703.P17437739749234650850

namespace A321703

/-- `Δ[A181879(n)]-A120757(n+1)` -/
def P17437739749234650850.Spec : Prop :=
  ∀ n, P17437739749234650850.a n = A321703 n

end A321703

/-! ## A321703.P13049146566749947686

`A215076(n)+2*A321715(n+1)`
-/

namespace A321703.P13049146566749947686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215076 n + 2 * A321715 (n + 1)

end

end A321703.P13049146566749947686

namespace A321703

/-- `A215076(n)+2*A321715(n+1)` -/
def P13049146566749947686.Spec : Prop :=
  ∀ n, P13049146566749947686.a n = A321703 n

end A321703

/-! ## A321703.P3174230400301891587

`A181879(n+1)-(A181879(n)+A120757(n+1))`
-/

namespace A321703.P3174230400301891587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181879 (n + 1) - (A181879 n + A120757 (n + 1))

end

end A321703.P3174230400301891587

namespace A321703

/-- `A181879(n+1)-(A181879(n)+A120757(n+1))` -/
def P3174230400301891587.Spec : Prop :=
  ∀ n, P3174230400301891587.a n = A321703 n

end A321703

/-!
# A321704: Number of words w of length n over an n-ary alphabet such that for every prefix z of w we have #(z,a_i) = 0 or #(z,a_i) >= #(z,a_j) for all j>i and #(z,a_i) counts the occurrences of the i-th letter in z.

The programs for A321704, there is no canonical definition to state claims against.
-/

/-! ## A321704.P1714559016436754173

`A213276(C(n+n+1, 2)+n)`
-/

namespace A321704.P1714559016436754173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213276 (Nat.choose (n + n + 1) 2 + n)

end

end A321704.P1714559016436754173

/-! ## A321704.P15994769022694430305

`A213276(∑[4*n])`
-/

namespace A321704.P15994769022694430305
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213276 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A321704.P15994769022694430305

/-! ## A321704.P7037963319353129972

`A213276(A046092(n))+char[13]`
-/

namespace A321704.P7037963319353129972
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213276 (A046092 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A321704.P7037963319353129972

/-! ## A321704.P2667261942988904661

`lcm((-1)^n, A213276(A106232(n+1)))`
-/

namespace A321704.P2667261942988904661
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A213276 (A106232 (n + 1)).toNat)

end

end A321704.P2667261942988904661

/-! ## A321704.P8121748531204165869

`A213276(2*(n²+n))%A113042(2*n+5)`
-/

namespace A321704.P8121748531204165869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A213276 (2 * (n ^ 2 + n))) (A113042 (2 * n + 5))

end

end A321704.P8121748531204165869

/-!
# A321712: Number of partitions of a 2n-set into colored blocks, such that exactly n colors are used and the colors are introduced in increasing order.

The programs for A321712, there is no canonical definition to state claims against.
-/

/-! ## A321712.P12106667150222367086

`A130191(C(2*n+1, 2)+n)`
-/

namespace A321712.P12106667150222367086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130191 (Nat.choose (2 * n + 1) 2 + n)

end

end A321712.P12106667150222367086

/-! ## A321712.P9499212122834439515

`A046817(2*n²)`
-/

namespace A321712.P9499212122834439515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046817 (2 * n ^ 2)

end

end A321712.P9499212122834439515

/-! ## A321712.P11281031556326737324

`A130191(∑[4*n])`
-/

namespace A321712.P11281031556326737324
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130191 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A321712.P11281031556326737324

/-! ## A321712.P13863959344675539563

`A039810(A004277(n²))`
-/

namespace A321712.P13863959344675539563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039810 (A004277 (n ^ 2)).toNat

end

end A321712.P13863959344675539563

/-! ## A321712.P11692756020090661391

`A039810(A028310(2*n²))`
-/

namespace A321712.P11692756020090661391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039810 (A028310 (2 * n ^ 2)).toNat

end

end A321712.P11692756020090661391

/-!
# A321714: Numbers k such that lambda(k) = 12.

The programs for A321714, there is no canonical definition to state claims against.
-/

/-! ## A321714.P1349201458148017755

`A143417(n+49)`
-/

namespace A321714.P1349201458148017755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143417 (n + 49)

end

end A321714.P1349201458148017755

/-! ## A321714.P11474552399247502211

`eq[6, A002616(n+3)]+3`
-/

namespace A321714.P11474552399247502211
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002616 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 3

end

end A321714.P11474552399247502211

/-! ## A321714.P8244852898382907467

`1+eq[12, A002322(n+1)]`
-/

namespace A321714.P8244852898382907467
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002322 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A321714.P8244852898382907467

/-! ## A321714.P1354488639900956430

`eq[13, A263027(n+1)]+1`
-/

namespace A321714.P1354488639900956430
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263027 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A321714.P1354488639900956430

/-! ## A321714.P12484776658488438817

`eq[12, A002322(A028310(n))]`
-/

namespace A321714.P12484776658488438817
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002322 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A321714.P12484776658488438817

/-! ## A321714.P13278594281110238255

`A020725(eq[12, A002322(n+1)])`
-/

namespace A321714.P13278594281110238255
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002322 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A321714.P13278594281110238255

/-! ## A321714.P2429322823548406064

`A065475(eq[12, A002322(n+1)])`
-/

namespace A321714.P2429322823548406064
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002322 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A321714.P2429322823548406064

/-! ## A321714.P17754672202944966629

`A153152(eq[12, A002322(n+1)])`
-/

namespace A321714.P17754672202944966629
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002322 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A321714.P17754672202944966629

/-! ## A321714.P10725828062090810115

`A326178(eq[12, A277030(n+1)])`
-/

namespace A321714.P10725828062090810115
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277030 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326178 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A321714.P10725828062090810115

/-! ## A321714.P6832904522429903963

`eq[12, A002322(A233583(n+1))]`
-/

namespace A321714.P6832904522429903963
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002322 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A321714.P6832904522429903963

/-!
# A321715: a(n) = 3*a(n-1) + 4*a(n-2) + a(n-3), a(0) = 1, a(1) = -1, a(2) = -1 .

The programs for A321715, the canonical program `A321715.P7889089140073733628` is in `Seq.B000.C044`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A321715 has offset 0).

The definition of A321715 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*a(n-1)+4*a(n-2)+a(n-3)` (program `A321715.P7889089140073733628`, by `A321715.P7889089140073733628.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A321715.P10777463668611099101

`ogf((1-4x-2x^2)/(1-3x-4x^2-x^3))`
-/

namespace A321715.P10777463668611099101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -4, -2] [1, -3, -4, -1] n

end

end A321715.P10777463668611099101

namespace A321715

/-- `ogf((1-4x-2x^2)/(1-3x-4x^2-x^3))` -/
def P10777463668611099101.Spec : Prop :=
  ∀ n, P10777463668611099101.a n = A321715 n

end A321715

/-! ## A321715.P7889089140073733628

`3*a(n-1)+4*a(n-2)+a(n-3)` with `a(0)=1, a(1)=-1, a(2)=-1`

The canonical program, it is in `Seq.B000.C044`.
-/

namespace A321715

/-- `3*a(n-1)+4*a(n-2)+a(n-3)` -/
def P7889089140073733628.Spec : Prop :=
  ∀ n, P7889089140073733628.a n = A321715 n

theorem P7889089140073733628.correct : P7889089140073733628.Spec := by
  intro n
  simp only [A321715]

end A321715

/-! ## A321715.P3718260286925403537

`A181879(n)+A215076(n)-A215100(n)`
-/

namespace A321715.P3718260286925403537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181879 n + (A215076 n - A215100 n)

end

end A321715.P3718260286925403537

namespace A321715

/-- `A181879(n)+A215076(n)-A215100(n)` -/
def P3718260286925403537.Spec : Prop :=
  ∀ n, P3718260286925403537.a n = A321715 n

end A321715

/-! ## A321715.P10183446833744862776

`A181879(n+2)-Δ[A215100(n)]`
-/

namespace A321715.P10183446833744862776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215100 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181879 (n + 2) - (f1 (n + 1) - f1 n)

end

end A321715.P10183446833744862776

namespace A321715

/-- `A181879(n+2)-Δ[A215100(n)]` -/
def P10183446833744862776.Spec : Prop :=
  ∀ n, P10183446833744862776.a n = A321715 n

end A321715

/-! ## A321715.P2542068562075048849

`A181879(n+2)-A215076(n+1)`
-/

namespace A321715.P2542068562075048849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181879 (n + 2) - A215076 (n + 1)

end

end A321715.P2542068562075048849

namespace A321715

/-- `A181879(n+2)-A215076(n+1)` -/
def P2542068562075048849.Spec : Prop :=
  ∀ n, P2542068562075048849.a n = A321715 n

end A321715

/-! ## A321715.P10414903215017219158

`A181879(n+2)-Δ[Δ[A120757(n+1)]]`
-/

namespace A321715.P10414903215017219158
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120757 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181879 (n + 2) - (f1 (n + 1) - f1 n)

end

end A321715.P10414903215017219158

namespace A321715

/-- `A181879(n+2)-Δ[Δ[A120757(n+1)]]` -/
def P10414903215017219158.Spec : Prop :=
  ∀ n, P10414903215017219158.a n = A321715 n

end A321715

/-! ## A321715.P11170397472376490033

`A181879(n+3)%A122600(n+1)-A181879(n)`
-/

namespace A321715.P11170397472376490033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A181879 (n + 3)) (A122600 (n + 1)) - A181879 n

end

end A321715.P11170397472376490033

namespace A321715

/-- `A181879(n+3)%A122600(n+1)-A181879(n)` -/
def P11170397472376490033.Spec : Prop :=
  ∀ n, P11170397472376490033.a n = A321715 n

end A321715

/-!
# A321716: Triangle read by rows: T(n,k) is the number of n X k Young tableaux, where 0 <= k <= n.

The programs for A321716, there is no canonical definition to state claims against.
-/

/-! ## A321716.P4771667538263770340

`A153452(A120458(n))`
-/

namespace A321716.P4771667538263770340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153452 (A120458 n).toNat

end

end A321716.P4771667538263770340

/-! ## A321716.P103257436242457507

`A179930(A042603(n))`
-/

namespace A321716.P103257436242457507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179930 (A042603 n).toNat

end

end A321716.P103257436242457507

/-! ## A321716.P6191603380461169859

`A137753(A098789(n))`
-/

namespace A321716.P6191603380461169859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137753 (A098789 n).toNat

end

end A321716.P6191603380461169859

/-! ## A321716.P1234721491044114858

`A155050(A245619(n))`
-/

namespace A321716.P1234721491044114858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155050 (A245619 n).toNat

end

end A321716.P1234721491044114858

/-! ## A321716.P11882204171454188975

`A081664(A329185(n))`
-/

namespace A321716.P11882204171454188975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081664 (A329185 n).toNat

end

end A321716.P11882204171454188975

/-!
# A321717: Number of non-normal (0,1) semi-magic rectangles with sum of all entries equal to n.

The programs for A321717, there is no canonical definition to state claims against.
-/

/-! ## A321717.P11914595627013392780

`A352131(3*(∑[n]+or(1, n)))`
-/

namespace A321717.P11914595627013392780
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352131 (3 * (∑ j ∈ Finset.range (n + 1), f1 j + Nat.lor 1 n))

end

end A321717.P11914595627013392780

/-! ## A321717.P14195129524011599550

`A139555(A150785(n))`
-/

namespace A321717.P14195129524011599550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139555 (A150785 n).toNat

end

end A321717.P14195129524011599550

/-!
# A321718: Number of coupled non-normal semi-magic rectangles with sum of entries equal to n.

The programs for A321718, there is no canonical definition to state claims against.
-/

/-! ## A321718.P9210557059478729227

`A238690(floor(π*n/2)!)`
-/

namespace A321718.P9210557059478729227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238690 (Nat.factorial ⌊Real.pi * ((n : ℚ) / 2 : ℝ)⌋.toNat)

end

end A321718.P9210557059478729227

/-! ## A321718.P18056769735664108498

`A151916(A148515(n))`
-/

namespace A321718.P18056769735664108498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151916 (A148515 n).toNat

end

end A321718.P18056769735664108498

/-!
# A321719: Number of non-normal semi-magic squares with sum of entries equal to n.

The programs for A321719, there is no canonical definition to state claims against.
-/

/-! ## A321719.P16218109762711665678

`or(A148593(n), A171481(A161881(n)))`
-/

namespace A321719.P16218109762711665678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A148593 n) (A171481 (A161881 n).toNat)

end

end A321719.P16218109762711665678

/-! ## A321719.P11943081100053642291

`A333362(n+1)+A109466(A333379(n+2))`
-/

namespace A321719.P11943081100053642291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333362 (n + 1) + A109466 (A333379 (n + 2)).toNat

end

end A321719.P11943081100053642291

/-!
# A321720: Number of non-normal (0,1) semi-magic squares with sum of entries equal to n.

The programs for A321720, there is no canonical definition to state claims against.
-/

/-! ## A321720.P13405571287819159945

`n!+A070565(n!)%(n+1)`
-/

namespace A321720.P13405571287819159945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) + Int.tmod (A070565 (Nat.factorial n)) (n + 1 : ℤ)

end

end A321720.P13405571287819159945

/-! ## A321720.P8536224321950144137

`or(n!, A339012(∑[n!+1]-2))`
-/

namespace A321720.P8536224321950144137
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (Nat.factorial n : ℤ) (A339012 (∑ j ∈ Finset.range (n + 1), f1 j - 2))

end

end A321720.P8536224321950144137

/-! ## A321720.P6207078024236618244

`A166408(A265016(n))+n!`
-/

namespace A321720.P6207078024236618244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166408 (A265016 n).toNat + (Nat.factorial n : ℤ)

end

end A321720.P6207078024236618244

/-! ## A321720.P7568297844419659280

`or(A091894(n), A175068(n!))`
-/

namespace A321720.P7568297844419659280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A091894 n) (A175068 (Nat.factorial n))

end

end A321720.P7568297844419659280

/-!
# A321721: Number of non-isomorphic non-normal semi-magic square multiset partitions of weight n.

The programs for A321721, there is no canonical definition to state claims against.
-/

/-! ## A321721.P15187139691949452647

`gcd(A030123(A170815(n+1)), A202795(n+1))`
-/

namespace A321721.P15187139691949452647
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A030123 (A170815 (n + 1)).toNat) (A202795 (n + 1))

end

end A321721.P15187139691949452647

/-!
# A321722: Number of non-normal magic squares whose entries are nonnegative integers summing to n.

The programs for A321722, there is no canonical definition to state claims against.
-/

/-! ## A321722.P10455792403818749239

`A321723(n)+A057979(n!)`
-/

namespace A321722.P10455792403818749239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321723 n + A057979 (Nat.factorial n)

end

end A321722.P10455792403818749239

/-! ## A321722.P17430225472433845799

`A321723(n)+A059841(n!)`
-/

namespace A321722.P17430225472433845799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321723 n + A059841 (Nat.factorial n)

end

end A321722.P17430225472433845799

/-! ## A321722.P2908172455686546595

`A321723(n)%A319189(n)+1`
-/

namespace A321722.P2908172455686546595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A321723 n) (A319189 n) + 1

end

end A321722.P2908172455686546595

/-! ## A321722.P15029736745190508858

`A008619(floor(sqrt(n))*A321723(n))`
-/

namespace A321722.P15029736745190508858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 ((Nat.sqrt n : ℤ) * A321723 n).toNat

end

end A321722.P15029736745190508858

/-!
# A321723: Number of non-normal magic squares whose entries are all 0 or 1 and sum to n.

The programs for A321723, there is no canonical definition to state claims against.
-/

/-! ## A321723.P6053757674108190915

`A007016(n)+A000161(A002184(n))`
-/

namespace A321723.P6053757674108190915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007016 n + A000161 (A002184 n).toNat

end

end A321723.P6053757674108190915

/-! ## A321723.P18426546770296210353

`A010054(A001870(n))+A007016(n)`
-/

namespace A321723.P18426546770296210353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (A001870 n).toNat + A007016 n

end

end A321723.P18426546770296210353

/-! ## A321723.P4796067617001158323

`A008683(A081671(n))+A007016(n)`
-/

namespace A321723.P4796067617001158323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A081671 n).toNat + A007016 n

end

end A321723.P4796067617001158323

/-! ## A321723.P1900167159054328750

`A121373(A059738(n))+A007016(n)`
-/

namespace A321723.P1900167159054328750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121373 (A059738 n).toNat + A007016 n

end

end A321723.P1900167159054328750

/-!
# A321724: Irregular triangle read by rows where T(n,k) is the number of non-isomorphic non-normal semi-magic square multiset partitions of weight n and length d = A027750(n, k).

The programs for A321724, there is no canonical definition to state claims against.
-/

/-! ## A321724.P3884580889029741557

`A038548(2^A213919(n+1))`
-/

namespace A321724.P3884580889029741557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038548 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A213919 (n + 1) : ℤ))).toNat

end

end A321724.P3884580889029741557

/-! ## A321724.P14496147057915957613

`A046951(2^A213919(n+1))`
-/

namespace A321724.P14496147057915957613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046951 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A213919 (n + 1) : ℤ))).toNat

end

end A321724.P14496147057915957613

/-! ## A321724.P12610835884630818463

`A062362(2^A213919(n+1))`
-/

namespace A321724.P12610835884630818463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062362 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A213919 (n + 1) : ℤ))).toNat

end

end A321724.P12610835884630818463

/-! ## A321724.P18291226137479268568

`A341675(3^A213919(n+1))`
-/

namespace A321724.P18291226137479268568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341675 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (A213919 (n + 1) : ℤ))).toNat

end

end A321724.P18291226137479268568

/-! ## A321724.P917300159522667078

`A006530(A008619(A213919(n+1))!)`
-/

namespace A321724.P917300159522667078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Nat.factorial (A008619 (A213919 (n + 1)).toNat).toNat)

end

end A321724.P917300159522667078

/-!
# A321725: Irregular triangle read by rows where T(n,k) is the number of d X d non-normal semi-magic squares with d = A027750(n,k) and sum of all entries equal to n.

The programs for A321725, there is no canonical definition to state claims against.
-/

/-! ## A321725.P9237823931192486122

`A079210(A272919(n+1)%A073162(n+1))`
-/

namespace A321725.P9237823931192486122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079210 (Int.tmod (A272919 (n + 1)) (A073162 (n + 1))).toNat

end

end A321725.P9237823931192486122

/-! ## A321725.P14860948862525986391

`A079210(lt[A079210(n+1), A037271(n+1)])`
-/

namespace A321725.P14860948862525986391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079210 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037271 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079210 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A321725.P14860948862525986391

/-! ## A321725.P14480286253877484019

`A306286((A064896(n+2)-1)/2*A000079(n))`
-/

namespace A321725.P14480286253877484019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306286 (SequenceMachineLib.roundAway ((A064896 (n + 2) - 1 : ℚ) / 2 * (A000079 n : ℚ))).toNat

end

end A321725.P14480286253877484019

/-! ## A321725.P17893699843722204423

`A351539(A351510(n))+A000142(A027750(n+1))`
-/

namespace A321725.P17893699843722204423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351539 (A351510 n).toNat + A000142 (A027750 (n + 1)).toNat

end

end A321725.P17893699843722204423

/-! ## A321725.P5915006976753581828

`A351539(A000219(2*n))+A000142(A027750(n+1))`
-/

namespace A321725.P5915006976753581828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351539 (A000219 (2 * n)).toNat + A000142 (A027750 (n + 1)).toNat

end

end A321725.P5915006976753581828

/-!
# A321726: Reverse each run of nonzero digits in ternary expansion of n and convert back to decimal.

The programs for A321726, there is no canonical definition to state claims against.
-/

/-! ## A321726.P13584018518042080942

`A321767(A321464(n)+A185255(n))-A185255(n)`
-/

namespace A321726.P13584018518042080942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321767 (A321464 n + A185255 n).toNat - A185255 n

end

end A321726.P13584018518042080942

/-! ## A321726.P14547247026767763839

`A321767(A321464(n)%A344231(2*(n+2)))`
-/

namespace A321726.P14547247026767763839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321767 (Int.tmod (A321464 n) (A344231 (2 * (n + 2)))).toNat

end

end A321726.P14547247026767763839

/-! ## A321726.P15669169509479236927

`A321767(A321464(n))+A185255(A185255(n))`
-/

namespace A321726.P15669169509479236927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321767 (A321464 n).toNat + A185255 (A185255 n).toNat

end

end A321726.P15669169509479236927

/-! ## A321726.P7030124786281592339

`A321464(A321767(n))-A185255(A185255(n))`
-/

namespace A321726.P7030124786281592339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321464 (A321767 n).toNat - A185255 (A185255 n).toNat

end

end A321726.P7030124786281592339

/-! ## A321726.P10893390790491481082

`A007953(10^A001222(n+1))*A321464(A321767(n))`
-/

namespace A321726.P10893390790491481082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (SequenceMachineLib.roundAway ((10 : ℚ) ^ (A001222 (n + 1) : ℤ))).toNat * A321464 (A321767 n).toNat

end

end A321726.P10893390790491481082

/-!
# A321728: Number of integer partitions of n whose Young diagram cannot be partitioned into vertical sections of the same sizes as the parts of the original partition.

The programs for A321728, there is no canonical definition to state claims against.
-/

/-! ## A321728.P15361328942260472684

`A000041(n)-A321729(n)`
-/

namespace A321728.P15361328942260472684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A321729 n

end

end A321728.P15361328942260472684

/-! ## A321728.P1003193534933769804

`round(A346823(n)/53)`
-/

namespace A321728.P1003193534933769804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A346823 n : ℚ) / 53)

end

end A321728.P1003193534933769804

/-! ## A321728.P7772258383490230509

`round(∑[A361394(n)/5])`
-/

namespace A321728.P7772258383490230509
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A361394 n : ℚ) / 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A321728.P7772258383490230509

/-! ## A321728.P13131529212478100120

`round(A293806(2*n)/10)`
-/

namespace A321728.P13131529212478100120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A293806 (2 * n) : ℚ) / 10)

end

end A321728.P13131529212478100120

/-! ## A321728.P8033769081585190486

`floor(A280709(n+2)/16)`
-/

namespace A321728.P8033769081585190486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A280709 (n + 2) : ℚ) / 16⌋

end

end A321728.P8033769081585190486

/-!
# A321729: Number of integer partitions of n whose Young diagram can be partitioned into vertical sections of the same sizes as the parts of the original partition.

The programs for A321729, there is no canonical definition to state claims against.
-/

/-! ## A321729.P5705818035382609722

`A000041(n)-A321728(n)`
-/

namespace A321729.P5705818035382609722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A321728 n

end

end A321729.P5705818035382609722

/-! ## A321729.P3571037200157612810

`ceil(A005987(n)^sin(8))`
-/

namespace A321729.P3571037200157612810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A005987 n : ℝ) ^ (Real.sin (8 : ℝ))⌉

end

end A321729.P3571037200157612810

/-! ## A321729.P18236974897103758286

`A046699(∑[A327691(n)])`
-/

namespace A321729.P18236974897103758286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327691 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046699 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A321729.P18236974897103758286

/-! ## A321729.P6249398005969501251

`row(A304686(A351018(n)))`
-/

namespace A321729.P6249398005969501251
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triRow (A304686 (A351018 n).toNat).toNat

end

end A321729.P6249398005969501251

/-! ## A321729.P17882406864397538986

`A026819(A238569(n)+1)`
-/

namespace A321729.P17882406864397538986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026819 (A238569 n + 1).toNat

end

end A321729.P17882406864397538986

/-!
# A321730: Number of ways to partition the Young diagram of an integer partition of n into vertical sections of the same sizes as the parts of the original partition.

The programs for A321730, there is no canonical definition to state claims against.
-/

/-! ## A321730.P16557533738563456987

`A008616(A149380(n)+A058331(n))`
-/

namespace A321730.P16557533738563456987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008616 (A149380 n + A058331 n).toNat

end

end A321730.P16557533738563456987

/-! ## A321730.P6519829811845919511

`A216265(A088305(n))+A058122(n)`
-/

namespace A321730.P6519829811845919511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216265 (A088305 n).toNat + A058122 n

end

end A321730.P6519829811845919511

/-! ## A321730.P7850907210596596608

`A110266(or(A140427(n), A202059(n)))`
-/

namespace A321730.P7850907210596596608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110266 (Int.lor (A140427 n) (A202059 n)).toNat

end

end A321730.P7850907210596596608

/-! ## A321730.P11949357472361091064

`A126349(n+1)-A003056(A229162(n+1))`
-/

namespace A321730.P11949357472361091064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126349 (n + 1) - A003056 (A229162 (n + 1)).toNat

end

end A321730.P11949357472361091064

/-!
# A321731: Number of ways to partition the Young diagram of the integer partition with Heinz number n into vertical sections of the same sizes as the parts of the original partition.

The programs for A321731, there is no canonical definition to state claims against.
-/

/-! ## A321731.P6669071314911956898

`A008687(C(A014681(n), A329033(n+1)))`
-/

namespace A321731.P6669071314911956898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008687 (Nat.choose (A014681 n).toNat (A329033 (n + 1)).toNat)

end

end A321731.P6669071314911956898

/-! ## A321731.P11644862905671347247

`and(A006530(A066808(n+1)), A008315(n))`
-/

namespace A321731.P11644862905671347247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A006530 (A066808 (n + 1)).toNat) (A008315 n)

end

end A321731.P11644862905671347247

/-! ## A321731.P12443355253517054576

`C(A332453(n+1), A076279(A006530(n+1)))`
-/

namespace A321731.P12443355253517054576
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A332453 (n + 1)).toNat (A076279 (A006530 (n + 1)).toNat).toNat

end

end A321731.P12443355253517054576

/-! ## A321731.P7448529161328245142

`A273302(lt[A359477(2*n+3), A255330(n)])`
-/

namespace A321731.P7448529161328245142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359477 (2 * n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255330 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273302 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A321731.P7448529161328245142

/-! ## A321731.P1374976817716388800

`and(A050379(A083582(n)), A291006(n))`
-/

namespace A321731.P1374976817716388800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A050379 (A083582 n).toNat) (A291006 n)

end

end A321731.P1374976817716388800

/-!
# A321732: Number of nonnegative integer square matrices with sum of entries equal to n, no zero rows or columns, and the same row sums as column sums.

The programs for A321732, there is no canonical definition to state claims against.
-/

/-! ## A321732.P733404902677578581

`A012884(A018078(n))`
-/

namespace A321732.P733404902677578581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012884 (A018078 n).toNat

end

end A321732.P733404902677578581

/-! ## A321732.P10786973990625366489

`A175944(A017982(n²))`
-/

namespace A321732.P10786973990625366489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175944 (A017982 (n ^ 2)).toNat

end

end A321732.P10786973990625366489

/-!
# A321733: Number of (0,1)-matrices with n ones, no zero rows or columns, and the same row sums as column sums.

The programs for A321733, there is no canonical definition to state claims against.
-/

/-! ## A321733.P4915832730403144856

`A057363(A190669(n+1)+2*n*a(n-1))` with `a(0)=1`
-/

namespace A321733.P4915832730403144856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A057363 (A190669 (n + 1) + 2 * ((n : ℤ) * a (n - 1))).toNat

end

end A321733.P4915832730403144856

/-! ## A321733.P1280561747031113958

`A187790(A002868(n))+A165012(n)`
-/

namespace A321733.P1280561747031113958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187790 (A002868 n).toNat + A165012 n

end

end A321733.P1280561747031113958

/-!
# A321734: Number of nonnegative integer square matrices with sum of entries equal to n, no zero rows or columns, weakly decreasing row and column sums, and the same row sums as column sums.

The programs for A321734, there is no canonical definition to state claims against.
-/

/-! ## A321734.P18116608722548636836

`A161153(A308726(n))`
-/

namespace A321734.P18116608722548636836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161153 (A308726 n).toNat

end

end A321734.P18116608722548636836

/-! ## A321734.P3944150298132759294

`A161153(A129442(n)-A001791(n))`
-/

namespace A321734.P3944150298132759294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161153 (A129442 n - A001791 n).toNat

end

end A321734.P3944150298132759294

/-!
# A321735: Number of (0,1)-matrices with sum of entries equal to n, no zero rows or columns, weakly decreasing row and column sums, and the same row sums as column sums.

The programs for A321735, there is no canonical definition to state claims against.
-/

/-! ## A321735.P14054495158795323504

`A057354(A230960(n)+2)`
-/

namespace A321735.P14054495158795323504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057354 (A230960 n + 2).toNat

end

end A321735.P14054495158795323504

/-! ## A321735.P1487821880299989405

`A054404(A099952(n+1))+n!`
-/

namespace A321735.P1487821880299989405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054404 (A099952 (n + 1)).toNat + (Nat.factorial n : ℤ)

end

end A321735.P1487821880299989405

/-! ## A321735.P13098686739332919398

`A065033(A052709(n)+A000254(n))`
-/

namespace A321735.P13098686739332919398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A052709 n + A000254 n).toNat

end

end A321735.P13098686739332919398

/-!
# A321737: Number of ways to partition the Young diagram of an integer partition of n into vertical sections.

The programs for A321737, there is no canonical definition to state claims against.
-/

/-! ## A321737.P8063561532754708376

`A010373(n+1)-A158924(A150883(n))`
-/

namespace A321737.P8063561532754708376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010373 (n + 1) - A158924 (A150883 n).toNat

end

end A321737.P8063561532754708376

/-! ## A321737.P8058983635566586204

`A176065(A000108(n))`
-/

namespace A321737.P8058983635566586204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176065 (A000108 n).toNat

end

end A321737.P8058983635566586204

/-!
# A321738: Number of ways to partition the Young diagram of the integer partition with Heinz number n into vertical sections.

The programs for A321738, there is no canonical definition to state claims against.
-/

/-! ## A321738.P16873792859565335099

`A003558(A216952(n+1)^A143632(n))`
-/

namespace A321738.P16873792859565335099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003558 (SequenceMachineLib.roundAway ((A216952 (n + 1) : ℚ) ^ (A143632 n : ℤ))).toNat

end

end A321738.P16873792859565335099

/-! ## A321738.P15008114451162114421

`A215526(A325642(n+1)%A339845(n))`
-/

namespace A321738.P15008114451162114421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215526 (Int.tmod (A325642 (n + 1)) (A339845 n)).toNat

end

end A321738.P15008114451162114421

/-! ## A321738.P9887980226446051944

`A000005(A085392(n+1)^A112307(n+1))`
-/

namespace A321738.P9887980226446051944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((A085392 (n + 1) : ℚ) ^ (A112307 (n + 1) : ℤ))).toNat

end

end A321738.P9887980226446051944

/-! ## A321738.P17898569476558824981

`A072649(A014673(n+1)^A196786(n+1))`
-/

namespace A321738.P17898569476558824981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072649 (SequenceMachineLib.roundAway ((A014673 (n + 1) : ℚ) ^ (A196786 (n + 1) : ℤ))).toNat

end

end A321738.P17898569476558824981

/-! ## A321738.P10535823410291848913

`A000005(A051953(n+1)^A126749(n+2))`
-/

namespace A321738.P10535823410291848913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((A051953 (n + 1) : ℚ) ^ (A126749 (n + 2) : ℤ))).toNat

end

end A321738.P10535823410291848913

/-!
# A321739: Number of non-isomorphic weight-n set multipartitions (multisets of sets) whose part-sizes are also their vertex-degrees.

The programs for A321739, there is no canonical definition to state claims against.
-/

/-! ## A321739.P668395382899099829

`A330697(A072523(n+1)+1)`
-/

namespace A321739.P668395382899099829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330697 (A072523 (n + 1) + 1).toNat

end

end A321739.P668395382899099829

/-! ## A321739.P2970681094248099697

`A055086(or(A001256(n), A274936(n)))`
-/

namespace A321739.P2970681094248099697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055086 (Int.lor (A001256 n) (A274936 n)).toNat

end

end A321739.P2970681094248099697

/-! ## A321739.P8073914024767042929

`A003056(A337187(n))+A001222(A006206(n+1))`
-/

namespace A321739.P8073914024767042929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A337187 n).toNat + A001222 (A006206 (n + 1)).toNat

end

end A321739.P8073914024767042929

/-! ## A321739.P10517640606670760198

`A340327(A148275(n))`
-/

namespace A321739.P10517640606670760198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340327 (A148275 n).toNat

end

end A321739.P10517640606670760198

/-! ## A321739.P17113015973680207641

`A206767(A026530(n)+1)`
-/

namespace A321739.P17113015973680207641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206767 (A026530 n + 1).toNat

end

end A321739.P17113015973680207641

/-!
# A321740: Number of representations of n as a truncated triangular number.

The programs for A321740, there is no canonical definition to state claims against.
-/

/-! ## A321740.P3705156636590599984

`round(sqrt(A035186(4*n+3)))`
-/

namespace A321740.P3705156636590599984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A035186 (4 * n + 3) : ℝ))

end

end A321740.P3705156636590599984

/-! ## A321740.P6213254571377190198

`ceil(A035194(3*(n+1)+n)/2)`
-/

namespace A321740.P6213254571377190198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A035194 (3 * (n + 1) + n) : ℚ) / 2⌉

end

end A321740.P6213254571377190198

/-! ## A321740.P16047007330879874678

`ceil(A035186(4*n+3)/A040000(n))`
-/

namespace A321740.P16047007330879874678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A035186 (4 * n + 3) : ℚ) / (A040000 n : ℚ)⌉

end

end A321740.P16047007330879874678

/-! ## A321740.P14342881152663402165

`ceil(A035186(A004280(2*(n+1)+1))/2)`
-/

namespace A321740.P14342881152663402165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A035186 (A004280 (2 * (n + 1) + 1)).toNat : ℚ) / 2⌉

end

end A321740.P14342881152663402165

/-! ## A321740.P16473621921711563129

`A000523(∑{d}[3*(n+1)+n, A091338(#)]+1)`
-/

namespace A321740.P16473621921711563129
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (n + 1) + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (∑ d ∈ Nat.divisors (f1 n), A091338 d + 1).toNat

end

end A321740.P16473621921711563129

/-! ## A321740.P7977197566322879325

`ceil(A035186(4*n+3)/A000005(2*n+1))`
-/

namespace A321740.P7977197566322879325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A035186 (4 * n + 3) : ℚ) / (A000005 (2 * n + 1) : ℚ)⌉

end

end A321740.P7977197566322879325

/-! ## A321740.P9975161680137974024

`ceil(A035186(4*n+3)/A141310(A141310(n)))`
-/

namespace A321740.P9975161680137974024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A035186 (4 * n + 3) : ℚ) / (A141310 (A141310 n).toNat : ℚ)⌉

end

end A321740.P9975161680137974024

/-! ## A321740.P17020180684225728116

`floor(sqrt(A035186(4*n+3)))^A008459(n)`
-/

namespace A321740.P17020180684225728116
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.sqrt (A035186 (4 * n + 3)) : ℚ) ^ (A008459 n : ℤ)

end

end A321740.P17020180684225728116

/-! ## A321740.P14474428291643086407

`floor(sqrt(A035186(4*n+3)))^A022166(n)`
-/

namespace A321740.P14474428291643086407
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.sqrt (A035186 (4 * n + 3)) : ℚ) ^ (A022166 n : ℤ)

end

end A321740.P14474428291643086407

/-! ## A321740.P5899366479982635007

`floor(sqrt(A035186(4*n+3)))^A039756(n)`
-/

namespace A321740.P5899366479982635007
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.sqrt (A035186 (4 * n + 3)) : ℚ) ^ (A039756 n : ℤ)

end

end A321740.P5899366479982635007

/-!
# A321741: Product of the first n terms of A007318 (Pascal), read as a sequence.

The programs for A321741, there is no canonical definition to state claims against.
-/

/-! ## A321741.P4791372886079867416

`∏[T(n-1,k)+T(n-1,k-1)]` with `a(0)=1`
-/

namespace A321741.P4791372886079867416
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  SequenceMachineLib.triUp f1 n + SequenceMachineLib.triUpLeft f1 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A321741.P4791372886079867416

/-! ## A321741.P6498220903844594521

`abs(∏[T(n-1,k)-T(n-1,k-1)])` with `a(0)=1`
-/

namespace A321741.P6498220903844594521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  SequenceMachineLib.triUp f1 n - SequenceMachineLib.triUpLeft f1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∏ j ∈ Finset.range (n + 1), f1 j|

end

end A321741.P6498220903844594521

/-! ## A321741.P9858531724850477296

`∏[C(row(n), col(n))]`
-/

namespace A321741.P9858531724850477296
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.triRow n) (SequenceMachineLib.triCol n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A321741.P9858531724850477296

/-! ## A321741.P9362588970693730674

`∏[T(n-1,k-1)+T(n-2,k)+T(n-2,k-1)]` with `a(0)=1, a(1)=1`
-/

namespace A321741.P9362588970693730674
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  SequenceMachineLib.triUpLeft f1 n + SequenceMachineLib.triUp2 f1 n + SequenceMachineLib.triUp2Left f1 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A321741.P9362588970693730674

/-! ## A321741.P1666553901787851372

`∏[2*T(n-1,k-1)-(T(n-1,k-1)-T(n-1,k))]` with `a(0)=1`
-/

namespace A321741.P1666553901787851372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  2 * SequenceMachineLib.triUpLeft f1 n - (SequenceMachineLib.triUpLeft f1 n - SequenceMachineLib.triUp f1 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A321741.P1666553901787851372

/-! ## A321741.P1144223647215605758

`a(n-1)*C(row(n), col(n))` with `a(0)=1`
-/

namespace A321741.P1144223647215605758
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * Nat.choose (SequenceMachineLib.triRow n) (SequenceMachineLib.triCol n)

end

end A321741.P1144223647215605758

/-! ## A321741.P16011324305194210021

`∏[A007318(n)]`
-/

namespace A321741.P16011324305194210021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A321741.P16011324305194210021

/-! ## A321741.P8083832265482383113

`∏[abs(A108086(n))]`
-/

namespace A321741.P8083832265482383113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A108086 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A321741.P8083832265482383113

/-! ## A321741.P7138440429388745210

`∏[abs(A117440(n))]`
-/

namespace A321741.P7138440429388745210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A117440 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A321741.P7138440429388745210

/-! ## A321741.P5279180779475329068

`∏[abs(A130595(n))]`
-/

namespace A321741.P5279180779475329068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A130595 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A321741.P5279180779475329068

/-!
# A321742: Irregular triangle read by rows where T(H(u),H(v)) is the coefficient of m(v) in e(u), where H is Heinz number, m is monomial symmetric functions, and e is elementary symmetric functions.

The programs for A321742, there is no canonical definition to state claims against.
-/

/-! ## A321742.P17375332301932980579

`A321756(n+1)+A321722(n)%A321744(n+1)`
-/

namespace A321742.P17375332301932980579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321756 (n + 1) + Int.tmod (A321722 n) (A321744 (n + 1))

end

end A321742.P17375332301932980579

/-! ## A321742.P13299438532544729997

`A327931(A011782(n))%A051600(A051584(n+1))`
-/

namespace A321742.P13299438532544729997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A327931 (A011782 n).toNat) (A051600 (A051584 (n + 1)).toNat)

end

end A321742.P13299438532544729997

/-! ## A321742.P12595713979860639515

`A321892(n+1)+A033683(A171522(n))`
-/

namespace A321742.P12595713979860639515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321892 (n + 1) + A033683 (A171522 n).toNat

end

end A321742.P12595713979860639515

/-! ## A321742.P17292612697012446676

`A002877(A052125(n+1))*A321756(n+1)`
-/

namespace A321742.P17292612697012446676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002877 (A052125 (n + 1)).toNat * A321756 (n + 1)

end

end A321742.P17292612697012446676

/-! ## A321742.P5605490217264492285

`A288636(A030052(n+1))*A321756(n+1)`
-/

namespace A321742.P5605490217264492285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288636 (A030052 (n + 1)).toNat * A321756 (n + 1)

end

end A321742.P5605490217264492285

/-!
# A321744: Irregular triangle read by rows where T(H(u),H(v)) is the coefficient of m(v) in h(u), where H is Heinz number, m is monomial symmetric functions, and h is homogeneous symmetric functions.

The programs for A321744, there is no canonical definition to state claims against.
-/

/-! ## A321744.P5114516876563635853

`gcd(A302496(A113321(n+1)), A341991(n+1))`
-/

namespace A321744.P5114516876563635853
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A302496 (A113321 (n + 1)).toNat) (A341991 (n + 1))

end

end A321744.P5114516876563635853

/-!
# A321746: Irregular triangle read by rows where T(H(u),H(v)) is the coefficient of e(v) in m(u), where H is Heinz number, m is monomial symmetric functions, and e is elementary symmetric functions.

The programs for A321746, there is no canonical definition to state claims against.
-/

/-! ## A321746.P6581289941667101919

`A321914(gcd(n, A321940(n)))`
-/

namespace A321746.P6581289941667101919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321914 (Int.gcd (n : ℤ) (A321940 n))

end

end A321746.P6581289941667101919

/-! ## A321746.P14129409192611110234

`A321914(A028310(n)^A219866(n))`
-/

namespace A321746.P14129409192611110234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321914 (SequenceMachineLib.roundAway ((A028310 n : ℚ) ^ (A219866 n : ℤ))).toNat

end

end A321746.P14129409192611110234

/-! ## A321746.P16587382333329440847

`A321914(A028310(n))%A323605(n)`
-/

namespace A321746.P16587382333329440847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A321914 (A028310 n).toNat) (A323605 n)

end

end A321746.P16587382333329440847

/-! ## A321746.P16237750124230082576

`A321914(A088599(n+1)-A178334(n))`
-/

namespace A321746.P16237750124230082576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321914 (A088599 (n + 1) - A178334 n).toNat

end

end A321746.P16237750124230082576

/-! ## A321746.P10248783630311480808

`A321914(A028310(n)*A219866(2*n+1))`
-/

namespace A321746.P10248783630311480808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321914 (A028310 n * A219866 (2 * n + 1)).toNat

end

end A321746.P10248783630311480808

/-!
# A321747: Sum of coefficients of elementary symmetric functions in the monomial symmetric function of the integer partition with Heinz number n.

The programs for A321747, the canonical program `A321747.P6789525213740818006` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A321747 has offset 1).

The definition of A321747 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008480, A056239, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A321747.P6789525213740818006

`(-1)^(A056239(n+1)-A001222(n+1))*A008480(n+1)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A321747

/-- `(-1)^(A056239(n+1)-A001222(n+1))*A008480(n+1)` -/
def P6789525213740818006.Spec : Prop :=
  ∀ n, P6789525213740818006.a n = (A321747 (n + 1) : ℚ)

end A321747

/-! ## A321747.P17978301965154759854

`A008480(n+1)*A321753(n+1)`
-/

namespace A321747.P17978301965154759854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008480 (n + 1) * A321753 (n + 1)

end

end A321747.P17978301965154759854

namespace A321747

/-- `A008480(n+1)*A321753(n+1)` -/
def P17978301965154759854.Spec : Prop :=
  ∀ n, P17978301965154759854.a n = A321747 (n + 1)

end A321747

/-! ## A321747.P6717113260954071586

`(A335447(n+1)+1)/(-1)^A318995(n+1)`
-/

namespace A321747.P6717113260954071586
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A335447 (n + 1) + 1 : ℚ) / (-1 : ℚ) ^ (A318995 (n + 1) : ℤ)

end

end A321747.P6717113260954071586

namespace A321747

/-- `(A335447(n+1)+1)/(-1)^A318995(n+1)` -/
def P6717113260954071586.Spec : Prop :=
  ∀ n, P6717113260954071586.a n = (A321747 (n + 1) : ℚ)

end A321747

/-! ## A321747.P6885619273887762352

`A001222(n+1)!/∏{e}[n+1, #!]*(-1)^A331415((n+1)/2^val(n+1, 2))`
-/

namespace A321747.P6885619273887762352
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A001222 (n + 1)).toNat : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), Nat.factorial (Nat.factorization (f1 n) p) : ℕ) : ℚ) * (-1 : ℚ) ^ (A331415 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat : ℤ)

end

end A321747.P6885619273887762352

namespace A321747

/-- `A001222(n+1)!/∏{e}[n+1, #!]*(-1)^A331415((n+1)/2^val(n+1, 2))` -/
def P6885619273887762352.Spec : Prop :=
  ∀ n, P6885619273887762352.a n = (A321747 (n + 1) : ℚ)

end A321747

/-! ## A321747.P2187998500795986845

`abs(A355939(n+1))*A353458(A364900(n))`
-/

namespace A321747.P2187998500795986845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A355939 (n + 1)| * A353458 (A364900 n).toNat

end

end A321747.P2187998500795986845

namespace A321747

/-- `abs(A355939(n+1))*A353458(A364900(n))` -/
def P2187998500795986845.Spec : Prop :=
  ∀ n, P2187998500795986845.a n = A321747 (n + 1)

end A321747

/-! ## A321747.P1284955521063855844

`A008480(n+1)*A034947(A108548(n+1))`
-/

namespace A321747.P1284955521063855844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008480 (n + 1) * A034947 (A108548 (n + 1)).toNat

end

end A321747.P1284955521063855844

namespace A321747

/-- `A008480(n+1)*A034947(A108548(n+1))` -/
def P1284955521063855844.Spec : Prop :=
  ∀ n, P1284955521063855844.a n = A321747 (n + 1)

end A321747

/-! ## A321747.P5220501142070790599

`A008480(n+1)*A008836(A248101(n+1))`
-/

namespace A321747.P5220501142070790599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008480 (n + 1) * A008836 (A248101 (n + 1)).toNat

end

end A321747.P5220501142070790599

namespace A321747

/-- `A008480(n+1)*A008836(A248101(n+1))` -/
def P5220501142070790599.Spec : Prop :=
  ∀ n, P5220501142070790599.a n = A321747 (n + 1)

end A321747

/-! ## A321747.P16145929468455702767

`A008480(n+1)*A015343(A318994(n+1))`
-/

namespace A321747.P16145929468455702767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008480 (n + 1) * A015343 (A318994 (n + 1)).toNat

end

end A321747.P16145929468455702767

namespace A321747

/-- `A008480(n+1)*A015343(A318994(n+1))` -/
def P16145929468455702767.Spec : Prop :=
  ∀ n, P16145929468455702767.a n = A321747 (n + 1)

end A321747

/-! ## A321747.P769398852446747540

`A008480(n+1)*A015343(A318995(n+1))`
-/

namespace A321747.P769398852446747540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008480 (n + 1) * A015343 (A318995 (n + 1)).toNat

end

end A321747.P769398852446747540

namespace A321747

/-- `A008480(n+1)*A015343(A318995(n+1))` -/
def P769398852446747540.Spec : Prop :=
  ∀ n, P769398852446747540.a n = A321747 (n + 1)

end A321747

/-! ## A321747.P12108954945295141737

`(A335447(n+1)+1)*A015343(A318994(n+1))`
-/

namespace A321747.P12108954945295141737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A335447 (n + 1) + 1) * A015343 (A318994 (n + 1)).toNat

end

end A321747.P12108954945295141737

namespace A321747

/-- `(A335447(n+1)+1)*A015343(A318994(n+1))` -/
def P12108954945295141737.Spec : Prop :=
  ∀ n, P12108954945295141737.a n = A321747 (n + 1)

end A321747

/-!
# A321748: Irregular triangle read by rows where T(H(u),H(v)) is the coefficient of h(v) in m(u), where H is Heinz number, m is monomial symmetric functions, and h is homogeneous symmetric functions.

The programs for A321748, there is no canonical definition to state claims against.
-/

/-! ## A321748.P6150286587143670313

`A321915(gcd(n, A321940(n)))`
-/

namespace A321748.P6150286587143670313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321915 (Int.gcd (n : ℤ) (A321940 n))

end

end A321748.P6150286587143670313

/-! ## A321748.P18176514242037153621

`A321915(A000007(n)*A092955(n+2)+n)`
-/

namespace A321748.P18176514242037153621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321915 (A000007 n * A092955 (n + 2) + (n : ℤ)).toNat

end

end A321748.P18176514242037153621

/-! ## A321748.P2040929520641935347

`A321915(A000007(n)+n)%A092955(n+2)`
-/

namespace A321748.P2040929520641935347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A321915 (A000007 n + (n : ℤ)).toNat) (A092955 (n + 2))

end

end A321748.P2040929520641935347

/-!
# A321749: Irregular triangle read by rows where T(H(u),H(v)) is the coefficient of e(v) in h(u) or, equivalently, the coefficient of h(v) in e(u), where H is Heinz number, e is elementary symmetric functions, and h is homogeneous symmetric functions.

The programs for A321749, there is no canonical definition to state claims against.
-/

/-! ## A321749.P9121056814878942093

`xor(A008683(A148176(n)), A066247(n+1))`
-/

namespace A321749.P9121056814878942093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A008683 (A148176 n).toNat) (A066247 (n + 1))

end

end A321749.P9121056814878942093

/-! ## A321749.P9549996028234673487

`A321916(gcd(n, A321940(n)))`
-/

namespace A321749.P9549996028234673487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321916 (Int.gcd (n : ℤ) (A321940 n))

end

end A321749.P9549996028234673487

/-! ## A321749.P8742095320711361121

`Δ[A329326(A219046(n+1))]`
-/

namespace A321749.P8742095320711361121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329326 (A219046 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A321749.P8742095320711361121

/-! ## A321749.P12080326562486491430

`A321916(n^A321921(3*n+2))`
-/

namespace A321749.P12080326562486491430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321916 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A321921 (3 * n + 2) : ℤ))).toNat

end

end A321749.P12080326562486491430

/-! ## A321749.P2510553997531314586

`A162511(n+2)-A010059(A027826(n))`
-/

namespace A321749.P2510553997531314586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162511 (n + 2) - A010059 (A027826 n).toNat

end

end A321749.P2510553997531314586

/-!
# A321750: Irregular triangle read by rows where T(H(u),H(v)) is the coefficient of m(v) in p(u), where H is Heinz number, m is monomial symmetric functions, and p is power sum symmetric functions.

The programs for A321750, there is no canonical definition to state claims against.
-/

/-! ## A321750.P12866786358844429787

`abs(A321888(n+1))`
-/

namespace A321750.P12866786358844429787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A321888 (n + 1)|

end

end A321750.P12866786358844429787

/-! ## A321750.P11718095502534374535

`A000194(A321888(n+1)²)`
-/

namespace A321750.P11718095502534374535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A321888 (n + 1) ^ 2).toNat

end

end A321750.P11718095502534374535

/-! ## A321750.P11287535801794694747

`A000196(A321888(n+1)²)`
-/

namespace A321750.P11287535801794694747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A321888 (n + 1) ^ 2).toNat

end

end A321750.P11287535801794694747

/-! ## A321750.P16903189465058100643

`A037213(A321888(n+1)²)`
-/

namespace A321750.P16903189465058100643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037213 (A321888 (n + 1) ^ 2).toNat

end

end A321750.P16903189465058100643

/-! ## A321750.P13008178181027708651

`A165033(lcm(5, A321888(n+1)))`
-/

namespace A321750.P13008178181027708651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165033 (Int.lcm 5 (A321888 (n + 1)))

end

end A321750.P13008178181027708651

/-! ## A321750.P17505764767676051893

`gcd(A000038(n), A321888(n+1))`
-/

namespace A321750.P17505764767676051893
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A321888 (n + 1))

end

end A321750.P17505764767676051893

/-! ## A321750.P8038288657287652261

`∑{d}[A321888(n+1), A000010(#)]`
-/

namespace A321750.P8038288657287652261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321888 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A321750.P8038288657287652261

/-!
# A321751: Sum of coefficients of monomial symmetric functions in the power sum symmetric function of the integer partition with Heinz number n.

The programs for A321751, there is no canonical definition to state claims against.
-/

/-! ## A321751.P13654855709742664038

`abs(A321889(A348717(n+1)))`
-/

namespace A321751.P13654855709742664038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A321889 (A348717 (n + 1)).toNat|

end

end A321751.P13654855709742664038

/-! ## A321751.P17909888755558831827

`gcd(A000038(n), A321889(A348717(n+1)))`
-/

namespace A321751.P17909888755558831827
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A321889 (A348717 (n + 1)).toNat)

end

end A321751.P17909888755558831827

/-! ## A321751.P12668926037529854432

`lcm(A033999(n), A321889(A348717(n+1)))`
-/

namespace A321751.P12668926037529854432
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A321889 (A348717 (n + 1)).toNat)

end

end A321751.P12668926037529854432

/-! ## A321751.P14347387854428901487

`gcd(-A321889(A348717(n+1)), A151878(n))`
-/

namespace A321751.P14347387854428901487
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (-A321889 (A348717 (n + 1)).toNat) (A151878 n)

end

end A321751.P14347387854428901487

/-! ## A321751.P12922098208404368798

`abs(A321889(n+1))`
-/

namespace A321751.P12922098208404368798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A321889 (n + 1)|

end

end A321751.P12922098208404368798

/-!
# A321752: Irregular triangle read by rows where T(H(u),H(v)) is the coefficient of e(v) in p(u), where H is Heinz number, e is elementary symmetric functions, and p is power sum symmetric functions.

The programs for A321752, there is no canonical definition to state claims against.
-/

/-! ## A321752.P11382087708046622660

`A321918(A225640(∑[n]))`
-/

namespace A321752.P11382087708046622660
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321918 (A225640 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A321752.P11382087708046622660

/-! ## A321752.P5471911891807809305

`A321918(gcd(n, A321940(n)))`
-/

namespace A321752.P5471911891807809305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321918 (Int.gcd (n : ℤ) (A321940 n))

end

end A321752.P5471911891807809305

/-! ## A321752.P14094268002839735152

`A321918(A028310(n)^A165661(n))`
-/

namespace A321752.P14094268002839735152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321918 (SequenceMachineLib.roundAway ((A028310 n : ℚ) ^ (A165661 n : ℤ))).toNat

end

end A321752.P14094268002839735152

/-! ## A321752.P1015666084519149906

`A321918(A028310(n))%A323605(n)`
-/

namespace A321752.P1015666084519149906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A321918 (A028310 n).toNat) (A323605 n)

end

end A321752.P1015666084519149906

/-! ## A321752.P717721848713244136

`A321918(gcd(A206591(n), A217017(n)))`
-/

namespace A321752.P717721848713244136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321918 (Int.gcd (A206591 n) (A217017 n))

end

end A321752.P717721848713244136

/-!
# A321753: Sum of coefficients of elementary symmetric functions in the power sum symmetric function indexed by the integer partition with Heinz number n.

The programs for A321753, the canonical program `A321753.P16554838924399655051` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A321753 has offset 1).

The definition of A321753 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A321753.P16554838924399655051

`(-1)^A257992(n+1)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A321753

/-- `(-1)^A257992(n+1)` -/
def P16554838924399655051.Spec : Prop :=
  ∀ n, P16554838924399655051.a n = (A321753 (n + 1) : ℚ)

end A321753

/-! ## A321753.P5121736940716066817

`(-1)^A318994(n+1)`
-/

namespace A321753.P5121736940716066817
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (A318994 (n + 1) : ℤ)

end

end A321753.P5121736940716066817

namespace A321753

/-- `(-1)^A318994(n+1)` -/
def P5121736940716066817.Spec : Prop :=
  ∀ n, P5121736940716066817.a n = (A321753 (n + 1) : ℚ)

end A321753

/-! ## A321753.P59831796402755152

`(-1)^A318995(n+1)`
-/

namespace A321753.P59831796402755152
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (A318995 (n + 1) : ℤ)

end

end A321753.P59831796402755152

namespace A321753

/-- `(-1)^A318995(n+1)` -/
def P59831796402755152.Spec : Prop :=
  ∀ n, P59831796402755152.a n = (A321753 (n + 1) : ℚ)

end A321753

/-! ## A321753.P17248651915774844439

`(-1)^A331415((n+1)/2^val(n+1, 2))`
-/

namespace A321753.P17248651915774844439
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (A331415 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat : ℤ)

end

end A321753.P17248651915774844439

namespace A321753

/-- `(-1)^A331415((n+1)/2^val(n+1, 2))` -/
def P17248651915774844439.Spec : Prop :=
  ∀ n, P17248651915774844439.a n = (A321753 (n + 1) : ℚ)

end A321753

/-! ## A321753.P9437700998074856000

`∏{p}[(n+1)/∏{p}[n+1, #^val(n+1, #²)]², A353455(#)]`
-/

namespace A321753.P9437700998074856000
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (((∏ p ∈ Nat.primeFactors (f2 n), p ^ SequenceMachineLib.valuation (n + 1) (p ^ 2)) ^ 2 : ℕ) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, A353455 p

end

end A321753.P9437700998074856000

namespace A321753

/-- `∏{p}[(n+1)/∏{p}[n+1, #^val(n+1, #²)]², A353455(#)]` -/
def P9437700998074856000.Spec : Prop :=
  ∀ n, P9437700998074856000.a n = A321753 (n + 1)

end A321753

/-! ## A321753.P5834628395423609264

`A353458(A364900(n))`
-/

namespace A321753.P5834628395423609264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353458 (A364900 n).toNat

end

end A321753.P5834628395423609264

namespace A321753

/-- `A353458(A364900(n))` -/
def P5834628395423609264.Spec : Prop :=
  ∀ n, P5834628395423609264.a n = A321753 (n + 1)

end A321753

/-! ## A321753.P200999261536806577

`A008836(A248101(n+1))`
-/

namespace A321753.P200999261536806577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (A248101 (n + 1)).toNat

end

end A321753.P200999261536806577

namespace A321753

/-- `A008836(A248101(n+1))` -/
def P200999261536806577.Spec : Prop :=
  ∀ n, P200999261536806577.a n = A321753 (n + 1)

end A321753

/-! ## A321753.P11131081722199318275

`A008836(A319522(n+1))`
-/

namespace A321753.P11131081722199318275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (A319522 (n + 1)).toNat

end

end A321753.P11131081722199318275

namespace A321753

/-- `A008836(A319522(n+1))` -/
def P11131081722199318275.Spec : Prop :=
  ∀ n, P11131081722199318275.a n = A321753 (n + 1)

end A321753

/-! ## A321753.P11957263737803417129

`A353458(A007913(n+1))`
-/

namespace A321753.P11957263737803417129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353458 (A007913 (n + 1)).toNat

end

end A321753.P11957263737803417129

namespace A321753

/-- `A353458(A007913(n+1))` -/
def P11957263737803417129.Spec : Prop :=
  ∀ n, P11957263737803417129.a n = A321753 (n + 1)

end A321753

/-! ## A321753.P13808929781759402636

`A353458(A037449(n+1))`
-/

namespace A321753.P13808929781759402636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353458 (A037449 (n + 1)).toNat

end

end A321753.P13808929781759402636

namespace A321753

/-- `A353458(A037449(n+1))` -/
def P13808929781759402636.Spec : Prop :=
  ∀ n, P13808929781759402636.a n = A321753 (n + 1)

end A321753

/-! ## A321753.P13623116778846385959

`A353458(A038387(n+1))`
-/

namespace A321753.P13623116778846385959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353458 (A038387 (n + 1)).toNat

end

end A321753.P13623116778846385959

namespace A321753

/-- `A353458(A038387(n+1))` -/
def P13623116778846385959.Spec : Prop :=
  ∀ n, P13623116778846385959.a n = A321753 (n + 1)

end A321753

/-! ## A321753.P4096210568134442566

`A353458(A056135(n+1))`
-/

namespace A321753.P4096210568134442566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353458 (A056135 (n + 1)).toNat

end

end A321753.P4096210568134442566

namespace A321753

/-- `A353458(A056135(n+1))` -/
def P4096210568134442566.Spec : Prop :=
  ∀ n, P4096210568134442566.a n = A321753 (n + 1)

end A321753

/-! ## A321753.P6717821666303380562

`A353458(A204993(n+1))`
-/

namespace A321753.P6717821666303380562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353458 (A204993 (n + 1)).toNat

end

end A321753.P6717821666303380562

namespace A321753

/-- `A353458(A204993(n+1))` -/
def P6717821666303380562.Spec : Prop :=
  ∀ n, P6717821666303380562.a n = A321753 (n + 1)

end A321753

/-! ## A321753.P15481760903717673763

`(-1)^(A056239(n+1)-A001222(n+1))`
-/

namespace A321753.P15481760903717673763
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (A056239 (n + 1) - A001222 (n + 1) : ℤ)

end

end A321753.P15481760903717673763

namespace A321753

/-- `(-1)^(A056239(n+1)-A001222(n+1))` -/
def P15481760903717673763.Spec : Prop :=
  ∀ n, P15481760903717673763.a n = (A321753 (n + 1) : ℚ)

end A321753

/-! ## A321753.P10375808173190902333

`A034947(A108548(n+1))`
-/

namespace A321753.P10375808173190902333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034947 (A108548 (n + 1)).toNat

end

end A321753.P10375808173190902333

namespace A321753

/-- `A034947(A108548(n+1))` -/
def P10375808173190902333.Spec : Prop :=
  ∀ n, P10375808173190902333.a n = A321753 (n + 1)

end A321753

/-! ## A321753.P13379885896549412928

`(-1)^A359358(2*(n+1))`
-/

namespace A321753.P13379885896549412928
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (A359358 (2 * (n + 1)) : ℤ)

end

end A321753.P13379885896549412928

namespace A321753

/-- `(-1)^A359358(2*(n+1))` -/
def P13379885896549412928.Spec : Prop :=
  ∀ n, P13379885896549412928.a n = (A321753 (n + 1) : ℚ)

end A321753

/-! ## A321753.P10536059681483577351

`a(A257992((n+1)²))` with `a(0)=1, a(1)=1, a(2)=-1`
-/

namespace A321753.P10536059681483577351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, -1] fun n a =>
  a (A257992 ((n + 1) ^ 2)).toNat

end

end A321753.P10536059681483577351

namespace A321753

/-- `a(A257992((n+1)²))` -/
def P10536059681483577351.Spec : Prop :=
  ∀ n, P10536059681483577351.a n = A321753 (n + 1)

end A321753

/-! ## A321753.P4163392150564669775

`(-1)^A056239((n+1)*2^∑{e}[n+1, #])`
-/

namespace A321753.P4163392150564669775
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (A056239 ((n + 1) * 2 ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)) : ℤ)

end

end A321753.P4163392150564669775

namespace A321753

/-- `(-1)^A056239((n+1)*2^∑{e}[n+1, #])` -/
def P4163392150564669775.Spec : Prop :=
  ∀ n, P4163392150564669775.a n = (A321753 (n + 1) : ℚ)

end A321753

/-!
# A321754: Irregular triangle read by rows where T(H(u),H(v)) is the coefficient of h(v) in p(u), where H is Heinz number, p is power sum symmetric functions, and h is homogeneous symmetric functions.

The programs for A321754, there is no canonical definition to state claims against.
-/

/-! ## A321754.P4217279496011231341

`A321919(gcd(n, A321940(n)))`
-/

namespace A321754.P4217279496011231341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321919 (Int.gcd (n : ℤ) (A321940 n))

end

end A321754.P4217279496011231341

/-! ## A321754.P4303239718269068171

`A062157(A001006(n))*A321752(n+1)`
-/

namespace A321754.P4303239718269068171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (A001006 n).toNat * A321752 (n + 1)

end

end A321754.P4303239718269068171

/-! ## A321754.P16480658891130750341

`A321919(A000007(n)*A092955(n+2)+n)`
-/

namespace A321754.P16480658891130750341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321919 (A000007 n * A092955 (n + 2) + (n : ℤ)).toNat

end

end A321754.P16480658891130750341

/-! ## A321754.P9688302310877830711

`A321919(A000007(n)+n)%A092955(n+2)`
-/

namespace A321754.P9688302310877830711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A321919 (A000007 n + (n : ℤ)).toNat) (A092955 (n + 2))

end

end A321754.P9688302310877830711

/-!
# A321755: Irregular triangle read by rows where T(H(u),H(v)) is the coefficient of e(v) in s(u), where H is Heinz number, e is elementary symmetric functions, and s is Schur functions.

The programs for A321755, there is no canonical definition to state claims against.
-/

/-! ## A321755.P8642526011853788059

`A091603(A152260(n+1))`
-/

namespace A321755.P8642526011853788059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091603 (A152260 (n + 1)).toNat

end

end A321755.P8642526011853788059

/-! ## A321755.P9156439673332822027

`2-A112798(A080140(2*(n+1)))`
-/

namespace A321755.P9156439673332822027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A112798 (A080140 (2 * (n + 1))).toNat

end

end A321755.P9156439673332822027

/-! ## A321755.P5300753665897451531

`A321894(lcm(A266645(n+1), A321877(n)))`
-/

namespace A321755.P5300753665897451531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321894 (Int.lcm (A266645 (n + 1)) (A321877 n))

end

end A321755.P5300753665897451531

/-! ## A321755.P5538146656423475935

`A321920(gcd(n, A321940(n)))`
-/

namespace A321755.P5538146656423475935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321920 (Int.gcd (n : ℤ) (A321940 n))

end

end A321755.P5538146656423475935

/-! ## A321755.P18133551719179670237

`Δ[A193330(Δ[A032046(n)])]`
-/

namespace A321755.P18133551719179670237
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032046 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193330 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A321755.P18133551719179670237

/-!
# A321756: Irregular triangle read by rows where T(H(u),H(v)) is the coefficient of s(v) in e(u), where H is Heinz number, e is elementary symmetric functions, and s is Schur functions.

The programs for A321756, there is no canonical definition to state claims against.
-/

/-! ## A321756.P7399401065849939092

`ceil(A321742(n+1)/exp(A321757(n+1)))`
-/

namespace A321756.P7399401065849939092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A321742 (n + 1) : ℝ) / Real.exp (A321757 (n + 1) : ℝ)⌉

end

end A321756.P7399401065849939092

/-! ## A321756.P7108411068952489267

`A060130(A321742(n+1)*A325169(2*n+5))`
-/

namespace A321756.P7108411068952489267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060130 (A321742 (n + 1) * A325169 (2 * n + 5)).toNat

end

end A321756.P7108411068952489267

/-! ## A321756.P4174813404759970802

`A353849(A321742(n+1)^A353849(n))`
-/

namespace A321756.P4174813404759970802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353849 (SequenceMachineLib.roundAway ((A321742 (n + 1) : ℚ) ^ (A353849 n : ℤ))).toNat

end

end A321756.P4174813404759970802

/-! ## A321756.P5909610868915089590

`A124766(A321742(n+1)^A124766(n+3))`
-/

namespace A321756.P5909610868915089590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124766 (SequenceMachineLib.roundAway ((A321742 (n + 1) : ℚ) ^ (A124766 (n + 3) : ℤ))).toNat

end

end A321756.P5909610868915089590

/-! ## A321756.P7521842365550918028

`ceil(A321742(n+1)/A321751(2*(n+1)))`
-/

namespace A321756.P7521842365550918028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A321742 (n + 1) : ℚ) / (A321751 (2 * (n + 1)) : ℚ)⌉

end

end A321756.P7521842365550918028

/-!
# A321757: Sum of coefficients of Schur functions in the elementary symmetric function of the integer partition with Heinz number n.

The programs for A321757, there is no canonical definition to state claims against.
-/

/-! ## A321757.P8991561932710925163

`∑{d}[A181821(n+1), A320656(#)]`
-/

namespace A321757.P8991561932710925163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181821 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A320656 d

end

end A321757.P8991561932710925163

/-! ## A321757.P14050246328599299080

`A000720(A225773(A318360(n+1)))`
-/

namespace A321757.P14050246328599299080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A225773 (A318360 (n + 1)).toNat).toNat

end

end A321757.P14050246328599299080

/-! ## A321757.P14839321116519189258

`A332741(n+1)+A332671(∏{e}[n+1, C(#+4, 4)])`
-/

namespace A321757.P14839321116519189258
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332741 (n + 1) + A332671 (∏ p ∈ Nat.primeFactors (f1 n), Nat.choose (Nat.factorization (f1 n) p + 4) 4)

end

end A321757.P14839321116519189258

/-! ## A321757.P7413681185562398303

`A340792(gcd(A210443(n), A318360(n+1)))`
-/

namespace A321757.P7413681185562398303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340792 (Int.gcd (A210443 n) (A318360 (n + 1)))

end

end A321757.P7413681185562398303

/-! ## A321757.P2692516908769095712

`A124300(A070921(n+1))+A052126(n+1)`
-/

namespace A321757.P2692516908769095712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124300 (A070921 (n + 1)).toNat + A052126 (n + 1)

end

end A321757.P2692516908769095712

/-!
# A321758: Irregular triangle read by rows where T(H(u),H(v)) is the coefficient of h(v) in s(u), where H is Heinz number, h is homogeneous symmetric functions, and s is Schur functions.

The programs for A321758, there is no canonical definition to state claims against.
-/

/-! ## A321758.P1722770784410895739

`(-A321759(n+1))^A116732(n)`
-/

namespace A321758.P1722770784410895739
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-A321759 (n + 1) : ℚ) ^ (A116732 n : ℤ)

end

end A321758.P1722770784410895739

/-! ## A321758.P3017915482797932075

`A321895(∑[A321895(n+1)²!])`
-/

namespace A321758.P3017915482797932075
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A321895 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321895 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A321758.P3017915482797932075

/-! ## A321758.P7840013612645141749

`A321895(n+1)^A092969(n+1)`
-/

namespace A321758.P7840013612645141749
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A321895 (n + 1) : ℚ) ^ (A092969 (n + 1) : ℤ)

end

end A321758.P7840013612645141749

/-! ## A321758.P4655542721520412634

`A321895(n+1)^A327803(2*n+1)`
-/

namespace A321758.P4655542721520412634
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A321895 (n + 1) : ℚ) ^ (A327803 (2 * n + 1) : ℤ)

end

end A321758.P4655542721520412634

/-! ## A321758.P11712086412176218261

`A321895(n+1)^A264476(2*n+3)`
-/

namespace A321758.P11712086412176218261
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A321895 (n + 1) : ℚ) ^ (A264476 (2 * n + 3) : ℤ)

end

end A321758.P11712086412176218261

/-!
# A321759: Irregular triangle read by rows where T(H(u),H(v)) is the coefficient of s(v) in h(u), where H is Heinz number, h is homogeneous symmetric functions, and s is Schur functions.

The programs for A321759, there is no canonical definition to state claims against.
-/

/-! ## A321759.P11573251981670931365

`gcd(A073423(A131771(n)), A321758(n+1))`
-/

namespace A321759.P11573251981670931365
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A073423 (A131771 n).toNat) (A321758 (n + 1))

end

end A321759.P11573251981670931365

/-! ## A321759.P18204575981044873196

`gcd(-A321758(n+1), A321731(3*n+4))`
-/

namespace A321759.P18204575981044873196
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (-A321758 (n + 1)) (A321731 (3 * n + 4))

end

end A321759.P18204575981044873196

/-! ## A321759.P18421645045321180462

`abs(A321758(n+1))^A089239(A276625(n+1))`
-/

namespace A321759.P18421645045321180462
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (|A321758 (n + 1)| : ℚ) ^ (A089239 (A276625 (n + 1)).toNat : ℤ)

end

end A321759.P18421645045321180462

/-! ## A321759.P2305166191174178169

`A000045(gcd(A241690(n+1), A321895(n+1)))`
-/

namespace A321759.P2305166191174178169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Int.gcd (A241690 (n + 1)) (A321895 (n + 1)))

end

end A321759.P2305166191174178169

/-! ## A321759.P11124567913495911023

`A326753(A321750(n+1)%A284805(3*n+1))`
-/

namespace A321759.P11124567913495911023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326753 (Int.tmod (A321750 (n + 1)) (A284805 (3 * n + 1))).toNat

end

end A321759.P11124567913495911023

/-!
# A321760: Number of non-isomorphic multiset partitions of weight n with no constant parts or vertices that appear in only one part.

The programs for A321760, there is no canonical definition to state claims against.
-/

/-! ## A321760.P9142153737690579575

`A276611(A107293(n)^n)`
-/

namespace A321760.P9142153737690579575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276611 (A107293 n ^ n).toNat

end

end A321760.P9142153737690579575

/-! ## A321760.P11870865489872454497

`A276611(A286041(n)^n)`
-/

namespace A321760.P11870865489872454497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276611 (A286041 n ^ n).toNat

end

end A321760.P11870865489872454497

/-! ## A321760.P16913810855293831590

`A276611(A348323(n)^n)`
-/

namespace A321760.P16913810855293831590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276611 (A348323 n ^ n).toNat

end

end A321760.P16913810855293831590

/-! ## A321760.P9703483131568018461

`A214526(A284995(n+1)^3)`
-/

namespace A321760.P9703483131568018461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214526 (A284995 (n + 1) ^ 3).toNat

end

end A321760.P9703483131568018461

/-! ## A321760.P17400120496469228218

`A276611(A154258(n+1)^n)`
-/

namespace A321760.P17400120496469228218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276611 (A154258 (n + 1) ^ n).toNat

end

end A321760.P17400120496469228218

/-!
# A321761: Irregular triangle read by rows where T(H(u),H(v)) is the coefficient of m(v) in s(u), where H is Heinz number, m is monomial symmetric functions, and s is Schur functions.

The programs for A321761, there is no canonical definition to state claims against.
-/

/-! ## A321761.P8980222059225829544

`gcd(A238123(A229243(n)), A321763(n+1))`
-/

namespace A321761.P8980222059225829544
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A238123 (A229243 n).toNat) (A321763 (n + 1))

end

end A321761.P8980222059225829544

/-! ## A321761.P14490071383780270614

`A091492(A004074(5*A001401(n)))`
-/

namespace A321761.P14490071383780270614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091492 (A004074 (5 * A001401 n).toNat).toNat

end

end A321761.P14490071383780270614

/-! ## A321761.P6314676870122723383

`A290453(A106611(n)%A290469(n+1))`
-/

namespace A321761.P6314676870122723383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290453 (Int.tmod (A106611 n) (A290469 (n + 1))).toNat

end

end A321761.P6314676870122723383

/-! ## A321761.P7741294032430918948

`A352516(3*(n+1))^A352516(A000009(n))`
-/

namespace A321761.P7741294032430918948
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A352516 (3 * (n + 1)) : ℚ) ^ (A352516 (A000009 n).toNat : ℤ)

end

end A321761.P7741294032430918948

/-! ## A321761.P13982920020111124611

`A257217(A321439(n+1)%A231227(n+1))`
-/

namespace A321761.P13982920020111124611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257217 (Int.tmod (A321439 (n + 1)) (A231227 (n + 1))).toNat

end

end A321761.P13982920020111124611

/-!
# A321763: Irregular triangle read by rows where T(H(u),H(v)) is the coefficient of s(v) in m(u), where H is Heinz number, m is monomial symmetric functions, and s is Schur functions.

The programs for A321763, there is no canonical definition to state claims against.
-/

/-! ## A321763.P14090232238106222052

`A321925(A023927(n)+A004186(n))`
-/

namespace A321763.P14090232238106222052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321925 (A023927 n + A004186 n).toNat

end

end A321763.P14090232238106222052

/-! ## A321763.P7821126621597710167

`A378283(A118124(n))-A055212(n+5)`
-/

namespace A321763.P7821126621597710167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378283 (A118124 n).toNat - A055212 (n + 5)

end

end A321763.P7821126621597710167

/-! ## A321763.P4413619588874755090

`A321925(gcd(A004874(n+1), A321936(n)))`
-/

namespace A321763.P4413619588874755090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321925 (Int.gcd (A004874 (n + 1)) (A321936 n))

end

end A321763.P4413619588874755090

/-! ## A321763.P10613579985828273539

`A321925(A004874(n+1)+2*A321936(n))`
-/

namespace A321763.P10613579985828273539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321925 (A004874 (n + 1) + 2 * A321936 n).toNat

end

end A321763.P10613579985828273539

/-! ## A321763.P7579382919390218896

`A011630(A283701(n))-A121373(2*(n+2))`
-/

namespace A321763.P7579382919390218896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011630 (A283701 n).toNat - A121373 (2 * (n + 2))

end

end A321763.P7579382919390218896

/-!
# A321764: Sum of coefficients of Schur functions in the monomial symmetric function of the integer partition with Heinz number n.

The programs for A321764, there is no canonical definition to state claims against.
-/

/-! ## A321764.P7341004832685694886

`floor(γ*(A321747(n+1)+1))`
-/

namespace A321764.P7341004832685694886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.eulerMascheroniConstant * (A321747 (n + 1) + 1 : ℝ)⌋

end

end A321764.P7341004832685694886

/-! ## A321764.P1180610897016600660

`ceil(A321887(n+1)/(∑{e}[n+1, #]+1))`
-/

namespace A321764.P1180610897016600660
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A321887 (n + 1) : ℚ) / ((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p + 1 : ℕ) : ℚ)⌉

end

end A321764.P1180610897016600660

/-! ## A321764.P18341427121454569794

`ceil(A321887(n+1)/A348856(n+1))`
-/

namespace A321764.P18341427121454569794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A321887 (n + 1) : ℚ) / (A348856 (n + 1) : ℚ)⌉

end

end A321764.P18341427121454569794

/-! ## A321764.P15817211848501920559

`A005811(2*(n+1))-A336692(n+1)`
-/

namespace A321764.P15817211848501920559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 (2 * (n + 1)) - A336692 (n + 1)

end

end A321764.P15817211848501920559

/-! ## A321764.P16848851303277126490

`1-A324543(n+1)%A324830(n+1)`
-/

namespace A321764.P16848851303277126490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - Int.tmod (A324543 (n + 1)) (A324830 (n + 1))

end

end A321764.P16848851303277126490

/-!
# A321765: Irregular triangle read by rows where T(H(u),H(v)) is the coefficient of s(v) in p(u), where H is Heinz number, p is power sum symmetric functions, and s is Schur functions.

The programs for A321765, there is no canonical definition to state claims against.
-/

/-! ## A321765.P1754483162320404303

`A054527(A066372(n+1))^A002808(n+1)`
-/

namespace A321765.P1754483162320404303
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054527 (A066372 (n + 1)).toNat : ℚ) ^ (A002808 (n + 1) : ℤ)

end

end A321765.P1754483162320404303

/-! ## A321765.P13092398786516134594

`A054527(A066372(n+1))^A018252(n+2)`
-/

namespace A321765.P13092398786516134594
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054527 (A066372 (n + 1)).toNat : ℚ) ^ (A018252 (n + 2) : ℤ)

end

end A321765.P13092398786516134594

/-! ## A321765.P379501977790108754

`A054527(A066372(n+1))^A216153(n+2)`
-/

namespace A321765.P379501977790108754
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054527 (A066372 (n + 1)).toNat : ℚ) ^ (A216153 (n + 2) : ℤ)

end

end A321765.P379501977790108754

/-! ## A321765.P333903764553923393

`A332823(A218833(3*n+2)-A099408(n+1))`
-/

namespace A321765.P333903764553923393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332823 (A218833 (3 * n + 2) - A099408 (n + 1)).toNat

end

end A321765.P333903764553923393

/-! ## A321765.P6661004110962262495

`A054527(A066372(n+1))^A039029(A064808(n))`
-/

namespace A321765.P6661004110962262495
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054527 (A066372 (n + 1)).toNat : ℚ) ^ (A039029 (A064808 n).toNat : ℤ)

end

end A321765.P6661004110962262495

/-!
# A321767: Reverse runs of nonzero digits in ternary expansion of n and convert back to decimal.

The programs for A321767, there is no canonical definition to state claims against.
-/

/-! ## A321767.P11086984649551879927

`A321726(A321464(n)%A110752(n+1))`
-/

namespace A321767.P11086984649551879927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321726 (Int.tmod (A321464 n) (A110752 (n + 1))).toNat

end

end A321767.P11086984649551879927

/-!
# A321768: Consider the ternary tree of triples P(n, k) with n > 0 and 0 < k <= 3^(n-1), such that P(1, 1) = [3; 4; 5] and each triple t on some row branches to the triples A*t, B*t, C*t on the next row (with A = [1, -2, 2; 2, -1, 2; 2, -2, 3], B = [1, 2, 2; 2, 1, 2; 2, 2, 3] and C = [-1, 2, 2; -2, 1, 2; -2, 2, 3]); T(n, k) is the first component of P(n, k).

The programs for A321768, there is no canonical definition to state claims against.
-/

/-! ## A321768.P5266580732854057216

`A321784(n+1)*A321785(n+1)`
-/

namespace A321768.P5266580732854057216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321784 (n + 1) * A321785 (n + 1)

end

end A321768.P5266580732854057216

/-! ## A321768.P11709122506360674966

`A322181(n+1)-A321784(n+1)²`
-/

namespace A321768.P11709122506360674966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322181 (n + 1) - A321784 (n + 1) ^ 2

end

end A321768.P11709122506360674966

/-! ## A321768.P16820748508061351433

`2/A321769(n+1)*A322170(n+1)`
-/

namespace A321768.P16820748508061351433
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (A321769 (n + 1) : ℚ) * (A322170 (n + 1) : ℚ)

end

end A321768.P16820748508061351433

/-! ## A321768.P6358772410908425704

`A321782(n+1)²-A321783(n+1)²`
-/

namespace A321768.P6358772410908425704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321782 (n + 1) ^ 2 - A321783 (n + 1) ^ 2

end

end A321768.P6358772410908425704

/-! ## A321768.P6646981539591160850

`A322181(n+1)-(A321770(n+1)+A321769(n+1))`
-/

namespace A321768.P6646981539591160850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322181 (n + 1) - (A321770 (n + 1) + A321769 (n + 1))

end

end A321768.P6646981539591160850

/-! ## A321768.P6230332169979381598

`(A321783(n+1)+A321782(n+1))*A321785(n+1)`
-/

namespace A321768.P6230332169979381598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A321783 (n + 1) + A321782 (n + 1)) * A321785 (n + 1)

end

end A321768.P6230332169979381598

/-! ## A321768.P1003508093242388681

`(A321782(n+1)-A321783(n+1))*A321784(n+1)`
-/

namespace A321768.P1003508093242388681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A321782 (n + 1) - A321783 (n + 1)) * A321784 (n + 1)

end

end A321768.P1003508093242388681

/-! ## A321768.P2403027159411755109

`A322170(n+1)/(A321782(n+1)*A321783(n+1))`
-/

namespace A321768.P2403027159411755109
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A322170 (n + 1) : ℚ) / (A321782 (n + 1) * A321783 (n + 1) : ℚ)

end

end A321768.P2403027159411755109

/-! ## A321768.P13406826356171035613

`A321785(n+1)*A321785(3*n+4)`
-/

namespace A321768.P13406826356171035613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321785 (n + 1) * A321785 (3 * n + 4)

end

end A321768.P13406826356171035613

/-! ## A321768.P10059478193420329643

`A321783(A016789(n))²-A321783(n+1)²`
-/

namespace A321768.P10059478193420329643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321783 (A016789 n).toNat ^ 2 - A321783 (n + 1) ^ 2

end

end A321768.P10059478193420329643

/-! ## A321768.P7954595548786650365

`A321783(A047270(n+1))²-A321783(n+1)²`
-/

namespace A321768.P7954595548786650365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321783 (A047270 (n + 1)).toNat ^ 2 - A321783 (n + 1) ^ 2

end

end A321768.P7954595548786650365

/-! ## A321768.P14328885228961335331

`A321783(A284882(n+1))²-A321783(n+1)²`
-/

namespace A321768.P14328885228961335331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321783 (A284882 (n + 1)).toNat ^ 2 - A321783 (n + 1) ^ 2

end

end A321768.P14328885228961335331

/-! ## A321768.P12471566387670245284

`A321783(A285951(n+1))²-A321783(n+1)²`
-/

namespace A321768.P12471566387670245284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321783 (A285951 (n + 1)).toNat ^ 2 - A321783 (n + 1) ^ 2

end

end A321768.P12471566387670245284

/-! ## A321768.P14119829805249090895

`A321783(A285953(n+1))²-A321783(n+1)²`
-/

namespace A321768.P14119829805249090895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321783 (A285953 (n + 1)).toNat ^ 2 - A321783 (n + 1) ^ 2

end

end A321768.P14119829805249090895

/-! ## A321768.P16694722951751655444

`A321783(A287387(n+1))²-A321783(n+1)²`
-/

namespace A321768.P16694722951751655444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321783 (A287387 (n + 1)).toNat ^ 2 - A321783 (n + 1) ^ 2

end

end A321768.P16694722951751655444

/-! ## A321768.P16309119389570715668

`A321783(A287409(n+1))²-A321783(n+1)²`
-/

namespace A321768.P16309119389570715668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321783 (A287409 (n + 1)).toNat ^ 2 - A321783 (n + 1) ^ 2

end

end A321768.P16309119389570715668

/-! ## A321768.P16893861030378360504

`A321783(A287414(n+1))²-A321783(n+1)²`
-/

namespace A321768.P16893861030378360504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321783 (A287414 (n + 1)).toNat ^ 2 - A321783 (n + 1) ^ 2

end

end A321768.P16893861030378360504

/-! ## A321768.P13166466123210417437

`A321783(A287421(n+1))²-A321783(n+1)²`
-/

namespace A321768.P13166466123210417437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321783 (A287421 (n + 1)).toNat ^ 2 - A321783 (n + 1) ^ 2

end

end A321768.P13166466123210417437

/-!
# A321769: Consider the tree of triples P(n, k) with n > 0 and 0 < k <= 3^(n-1), such that P(1, 1) = [3; 4; 5] and each triple t on some row branches to the triples A*t, B*t, C*t on the next row (with A = [1, -2, 2; 2, -1, 2; 2, -2, 3], B = [1, 2, 2; 2, 1, 2; 2, 2, 3] and C = [-1, 2, 2; -2, 1, 2; -2, 2, 3]); T(n, k) is the second component of P(n, k).

The programs for A321769, there is no canonical definition to state claims against.
-/

/-! ## A321769.P794455283469477899

`A321784(n+1)²-A321770(n+1)`
-/

namespace A321769.P794455283469477899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321784 (n + 1) ^ 2 - A321770 (n + 1)

end

end A321769.P794455283469477899

/-! ## A321769.P7340770721439586632

`A321770(n+1)-A321785(n+1)²`
-/

namespace A321769.P7340770721439586632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321770 (n + 1) - A321785 (n + 1) ^ 2

end

end A321769.P7340770721439586632

/-! ## A321769.P2411649938898210942

`2*A321782(n+1)*A321783(n+1)`
-/

namespace A321769.P2411649938898210942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A321782 (n + 1) * A321783 (n + 1))

end

end A321769.P2411649938898210942

/-! ## A321769.P2482792365917532423

`2/A321768(n+1)*A322170(n+1)`
-/

namespace A321769.P2482792365917532423
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (A321768 (n + 1) : ℚ) * (A322170 (n + 1) : ℚ)

end

end A321769.P2482792365917532423

/-! ## A321769.P15331651552880654109

`A322181(n+1)-2*A321782(n+1)²`
-/

namespace A321769.P15331651552880654109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322181 (n + 1) - 2 * A321782 (n + 1) ^ 2

end

end A321769.P15331651552880654109

/-! ## A321769.P15926682176738894110

`A322181(n+1)-(A321770(n+1)+A321768(n+1))`
-/

namespace A321769.P15926682176738894110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322181 (n + 1) - (A321770 (n + 1) + A321768 (n + 1))

end

end A321769.P15926682176738894110

/-! ## A321769.P6282134256202508543

`(A321785(n+1)+A321784(n+1))*A321783(n+1)`
-/

namespace A321769.P6282134256202508543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A321785 (n + 1) + A321784 (n + 1)) * A321783 (n + 1)

end

end A321769.P6282134256202508543

/-! ## A321769.P9090830854019544741

`(A321784(n+1)-A321785(n+1))*A321782(n+1)`
-/

namespace A321769.P9090830854019544741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A321784 (n + 1) - A321785 (n + 1)) * A321782 (n + 1)

end

end A321769.P9090830854019544741

/-! ## A321769.P8312260102317998801

`A321783(n+1)/A321784(n+1)*A322181(n+1)`
-/

namespace A321769.P8312260102317998801
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A321783 (n + 1) : ℚ) / (A321784 (n + 1) : ℚ) * (A322181 (n + 1) : ℚ)

end

end A321769.P8312260102317998801

/-! ## A321769.P15785628933054595111

`2*A321783(n+1)*A321783(A016789(n))`
-/

namespace A321769.P15785628933054595111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A321783 (n + 1) * A321783 (A016789 n).toNat)

end

end A321769.P15785628933054595111

/-! ## A321769.P14261743561526573430

`2*A321783(A047270(n+1))*A321783(n+1)`
-/

namespace A321769.P14261743561526573430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A321783 (A047270 (n + 1)).toNat * A321783 (n + 1))

end

end A321769.P14261743561526573430

/-! ## A321769.P1091282431357035402

`2*A321783(A284882(n+1))*A321783(n+1)`
-/

namespace A321769.P1091282431357035402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A321783 (A284882 (n + 1)).toNat * A321783 (n + 1))

end

end A321769.P1091282431357035402

/-! ## A321769.P15277678238178858585

`2*A321783(A285951(n+1))*A321783(n+1)`
-/

namespace A321769.P15277678238178858585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A321783 (A285951 (n + 1)).toNat * A321783 (n + 1))

end

end A321769.P15277678238178858585

/-! ## A321769.P14929514497717385487

`2*A321783(A285953(n+1))*A321783(n+1)`
-/

namespace A321769.P14929514497717385487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A321783 (A285953 (n + 1)).toNat * A321783 (n + 1))

end

end A321769.P14929514497717385487

/-! ## A321769.P14558627897168560157

`2*A321783(A287387(n+1))*A321783(n+1)`
-/

namespace A321769.P14558627897168560157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A321783 (A287387 (n + 1)).toNat * A321783 (n + 1))

end

end A321769.P14558627897168560157

/-! ## A321769.P1017461367650307631

`2*A321783(A287409(n+1))*A321783(n+1)`
-/

namespace A321769.P1017461367650307631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A321783 (A287409 (n + 1)).toNat * A321783 (n + 1))

end

end A321769.P1017461367650307631

/-! ## A321769.P13882395768670965492

`2*A321783(A287414(n+1))*A321783(n+1)`
-/

namespace A321769.P13882395768670965492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A321783 (A287414 (n + 1)).toNat * A321783 (n + 1))

end

end A321769.P13882395768670965492

/-! ## A321769.P8718311349850790171

`2*A321783(A287421(n+1))*A321783(n+1)`
-/

namespace A321769.P8718311349850790171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A321783 (A287421 (n + 1)).toNat * A321783 (n + 1))

end

end A321769.P8718311349850790171

/-! ## A321769.P650713966445956031

`A014682(A321784(n+1)²-A321785(n+1)²)`
-/

namespace A321769.P650713966445956031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A321784 (n + 1) ^ 2 - A321785 (n + 1) ^ 2).toNat

end

end A321769.P650713966445956031

/-!
# A321770: Consider the tree of triples P(n, k) with n > 0 and 0 < k <= 3^(n-1), such that P(1, 1) = [3; 4; 5] and each triple t on some row branches to the triples A*t, B*t, C*t on the next row (with A = [1, -2, 2; 2, -1, 2; 2, -2, 3], B = [1, 2, 2; 2, 1, 2; 2, 2, 3] and C = [-1, 2, 2; -2, 1, 2; -2, 2, 3]); T(n, k) is the third component of P(n, k).

The programs for A321770, there is no canonical definition to state claims against.
-/

/-! ## A321770.P1067640536089121660

`A321769(n+1)+A321785(n+1)²`
-/

namespace A321770.P1067640536089121660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321769 (n + 1) + A321785 (n + 1) ^ 2

end

end A321770.P1067640536089121660

/-! ## A321770.P15478373641710248256

`A321784(n+1)²-A321769(n+1)`
-/

namespace A321770.P15478373641710248256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321784 (n + 1) ^ 2 - A321769 (n + 1)

end

end A321770.P15478373641710248256

/-! ## A321770.P3135880744754713476

`A321782(n+1)²+A321783(n+1)²`
-/

namespace A321770.P3135880744754713476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321782 (n + 1) ^ 2 + A321783 (n + 1) ^ 2

end

end A321770.P3135880744754713476

/-! ## A321770.P17607325349294444161

`A321768(n+1)+2*A321783(n+1)²`
-/

namespace A321770.P17607325349294444161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321768 (n + 1) + 2 * A321783 (n + 1) ^ 2

end

end A321770.P17607325349294444161

/-! ## A321770.P13342268736211580407

`2*A321782(n+1)²-A321768(n+1)`
-/

namespace A321770.P13342268736211580407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A321782 (n + 1) ^ 2 - A321768 (n + 1)

end

end A321770.P13342268736211580407

/-! ## A321770.P17614966255998134140

`A322181(n+1)-(A321769(n+1)+A321768(n+1))`
-/

namespace A321770.P17614966255998134140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322181 (n + 1) - (A321769 (n + 1) + A321768 (n + 1))

end

end A321770.P17614966255998134140

/-! ## A321770.P11364070558913617244

`A321783(n+1)²+A321783(A016789(n))²`
-/

namespace A321770.P11364070558913617244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321783 (n + 1) ^ 2 + A321783 (A016789 n).toNat ^ 2

end

end A321770.P11364070558913617244

/-! ## A321770.P16844686783279596040

`A321783(A047270(n+1))²+A321783(n+1)²`
-/

namespace A321770.P16844686783279596040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321783 (A047270 (n + 1)).toNat ^ 2 + A321783 (n + 1) ^ 2

end

end A321770.P16844686783279596040

/-! ## A321770.P3418514092674008420

`A321783(A284882(n+1))²+A321783(n+1)²`
-/

namespace A321770.P3418514092674008420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321783 (A284882 (n + 1)).toNat ^ 2 + A321783 (n + 1) ^ 2

end

end A321770.P3418514092674008420

/-! ## A321770.P13848477115814980005

`A321783(A285951(n+1))²+A321783(n+1)²`
-/

namespace A321770.P13848477115814980005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321783 (A285951 (n + 1)).toNat ^ 2 + A321783 (n + 1) ^ 2

end

end A321770.P13848477115814980005

/-! ## A321770.P9160998794572753079

`A321783(A285953(n+1))²+A321783(n+1)²`
-/

namespace A321770.P9160998794572753079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321783 (A285953 (n + 1)).toNat ^ 2 + A321783 (n + 1) ^ 2

end

end A321770.P9160998794572753079

/-! ## A321770.P11048074552288192842

`A321783(A287387(n+1))²+A321783(n+1)²`
-/

namespace A321770.P11048074552288192842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321783 (A287387 (n + 1)).toNat ^ 2 + A321783 (n + 1) ^ 2

end

end A321770.P11048074552288192842

/-! ## A321770.P13364510040697145381

`A321783(A287409(n+1))²+A321783(n+1)²`
-/

namespace A321770.P13364510040697145381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321783 (A287409 (n + 1)).toNat ^ 2 + A321783 (n + 1) ^ 2

end

end A321770.P13364510040697145381

/-! ## A321770.P96575619189454946

`A321783(A287414(n+1))²+A321783(n+1)²`
-/

namespace A321770.P96575619189454946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321783 (A287414 (n + 1)).toNat ^ 2 + A321783 (n + 1) ^ 2

end

end A321770.P96575619189454946

/-! ## A321770.P650559532175386374

`A321783(A287421(n+1))²+A321783(n+1)²`
-/

namespace A321770.P650559532175386374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321783 (A287421 (n + 1)).toNat ^ 2 + A321783 (n + 1) ^ 2

end

end A321770.P650559532175386374

/-! ## A321770.P6247901437897547375

`A014682(A321784(n+1)²+A321785(n+1)²)`
-/

namespace A321770.P6247901437897547375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A321784 (n + 1) ^ 2 + A321785 (n + 1) ^ 2).toNat

end

end A321770.P6247901437897547375

/-!
# A321771: Numbers whose digit product equals the number of their digits.

The programs for A321771, there is no canonical definition to state claims against.
-/

/-! ## A321771.P16512391250676203781

`eq[A007954(n), A055642(n)]`
-/

namespace A321771.P16512391250676203781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007954 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A321771.P16512391250676203781

/-! ## A321771.P16028985837684588012

`eq[A007954(n), A262190(n)]`
-/

namespace A321771.P16028985837684588012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007954 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262190 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A321771.P16028985837684588012

/-! ## A321771.P15939848917795597613

`eq[abs(A187844(n)), A055642(n)]`
-/

namespace A321771.P15939848917795597613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A187844 n|

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A321771.P15939848917795597613

/-! ## A321771.P3328045297940850186

`eq[dr(A348783(n)), A007954(n)]`
-/

namespace A321771.P3328045297940850186
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A348783 n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007954 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A321771.P3328045297940850186

/-! ## A321771.P17115728564219561144

`eq[A118764(n)+1, A230099(n)]`
-/

namespace A321771.P17115728564219561144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118764 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230099 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A321771.P17115728564219561144

/-!
# A321772: Number of compositions of 2n into parts with distinct multiplicities and with exactly n parts.

The programs for A321772, there is no canonical definition to state claims against.
-/

/-! ## A321772.P12589413098047964861

`A242887(C(2*n+1, 2)+n)`
-/

namespace A321772.P12589413098047964861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242887 (Nat.choose (2 * n + 1) 2 + n)

end

end A321772.P12589413098047964861

/-! ## A321772.P5914734077649144974

`A242887(∑[4*n])`
-/

namespace A321772.P5914734077649144974
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242887 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A321772.P5914734077649144974

/-! ## A321772.P17236729205265657853

`A242887(2*n*(n+1))^A178334(n)`
-/

namespace A321772.P17236729205265657853
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A242887 (2 * n * (n + 1)) : ℚ) ^ (A178334 n : ℤ)

end

end A321772.P17236729205265657853

/-! ## A321772.P11961064519498381794

`A242887(2*n*(n+1))+A003982(2*n+3)`
-/

namespace A321772.P11961064519498381794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242887 (2 * n * (n + 1)) + A003982 (2 * n + 3)

end

end A321772.P11961064519498381794

/-! ## A321772.P7292743654477122399

`gcd(A000038(n), A242887(A046092(n)))`
-/

namespace A321772.P7292743654477122399
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A242887 (A046092 n).toNat)

end

end A321772.P7292743654477122399

/-! ## A321772.P1325072185759621053

`or(A000007(n), A242887(A046092(n)))`
-/

namespace A321772.P1325072185759621053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A242887 (A046092 n).toNat)

end

end A321772.P1325072185759621053

/-! ## A321772.P4774218853024222378

`or(A209229(n), A242887(A046092(n)))`
-/

namespace A321772.P4774218853024222378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A209229 n) (A242887 (A046092 n).toNat)

end

end A321772.P4774218853024222378

/-! ## A321772.P8469581780389862328

`and(-A084642(n), A242887(A046092(n)))`
-/

namespace A321772.P8469581780389862328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A084642 n) (A242887 (A046092 n).toNat)

end

end A321772.P8469581780389862328

/-! ## A321772.P1053181629447084184

`A242887(A046092(n))+A000007(n+1)`
-/

namespace A321772.P1053181629447084184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242887 (A046092 n).toNat + A000007 (n + 1)

end

end A321772.P1053181629447084184

/-! ## A321772.P14856026148910959393

`A084642(2*n)*A242887(A046092(n))`
-/

namespace A321772.P14856026148910959393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084642 (2 * n) * A242887 (A046092 n).toNat

end

end A321772.P14856026148910959393

/-!
# A321773: Number of compositions of n into parts with distinct multiplicities and with exactly three parts.

The programs for A321773, the canonical program `A321773.P4697706764734148102` is in `Seq.B000.C044`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A321773 has offset 3).

The definition of A321773 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A321773.P11572288863652036712

`∑[∑[ogf((1+3x+5x^2)/(1+2x+2x^2+x^3))]]`
-/

namespace A321773.P11572288863652036712
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3, 5] [1, 2, 2, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A321773.P11572288863652036712

namespace A321773

/-- `∑[∑[ogf((1+3x+5x^2)/(1+2x+2x^2+x^3))]]` -/
def P11572288863652036712.Spec : Prop :=
  ∀ n, P11572288863652036712.a n = A321773 (n + 3)

end A321773

/-! ## A321773.P5020946552477397257

`ogf((1+3x+5x^2)/(1-x^2-x^3+x^5))`
-/

namespace A321773.P5020946552477397257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3, 5] [1, 0, -1, -1, 0, 1] n

end

end A321773.P5020946552477397257

namespace A321773

/-- `ogf((1+3x+5x^2)/(1-x^2-x^3+x^5))` -/
def P5020946552477397257.Spec : Prop :=
  ∀ n, P5020946552477397257.a n = A321773 (n + 3)

end A321773

/-! ## A321773.P16064364606487171366

`a(gcd(2, n))+a(n-3)` with `a(0)=1, a(1)=3, a(2)=6`
-/

namespace A321773.P16064364606487171366
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 6] fun n a =>
  a (Nat.gcd 2 n) + a (n - 3)

end

end A321773.P16064364606487171366

namespace A321773

/-- `a(gcd(2, n))+a(n-3)` -/
def P16064364606487171366.Spec : Prop :=
  ∀ n, (P16064364606487171366.a n : ℤ) = A321773 (n + 3)

end A321773

/-! ## A321773.P7177345085282517069

`2*n%3+a(n-2)+1` with `a(0)=1, a(1)=3`
-/

namespace A321773.P7177345085282517069
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n a =>
  2 * (n % 3) + (a (n - 2) + 1)

end

end A321773.P7177345085282517069

namespace A321773

/-- `2*n%3+a(n-2)+1` -/
def P7177345085282517069.Spec : Prop :=
  ∀ n, (P7177345085282517069.a n : ℤ) = A321773 (n + 3)

end A321773

/-! ## A321773.P7956986076644552610

`a(n-2)+(n+1+n)%6` with `a(0)=1, a(1)=3`
-/

namespace A321773.P7956986076644552610
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n a =>
  a (n - 2) + (n + 1 + n) % 6

end

end A321773.P7956986076644552610

namespace A321773

/-- `a(n-2)+(n+1+n)%6` -/
def P7956986076644552610.Spec : Prop :=
  ∀ n, (P7956986076644552610.a n : ℤ) = A321773 (n + 3)

end A321773

/-! ## A321773.P4697706764734148102

`a(n-2)+a(n-3)-a(n-5)` with `a(0)=1, a(1)=3, a(2)=6, a(3)=4, a(4)=9`

The canonical program, it is in `Seq.B000.C044`.
-/

namespace A321773

/-- `a(n-2)+a(n-3)-a(n-5)` -/
def P4697706764734148102.Spec : Prop :=
  ∀ n, P4697706764734148102.a n = A321773 (n + 3)

theorem P4697706764734148102.correct : P4697706764734148102.Spec := by
  intro n
  simp only [A321773, Nat.add_sub_cancel]

end A321773

/-! ## A321773.P12538109361389240806

`A130793(n)+a(n-2)` with `a(0)=1, a(1)=3`
-/

namespace A321773.P12538109361389240806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  A130793 n + a (n - 2)

end

end A321773.P12538109361389240806

namespace A321773

/-- `A130793(n)+a(n-2)` -/
def P12538109361389240806.Spec : Prop :=
  ∀ n, P12538109361389240806.a n = A321773 (n + 3)

end A321773

/-! ## A321773.P11338608040494165879

`3/(n+3)*A320577(n+3)`
-/

namespace A321773.P11338608040494165879
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  3 / (n + 3 : ℚ) * (A320577 (n + 3) : ℚ)

end

end A321773.P11338608040494165879

namespace A321773

/-- `3/(n+3)*A320577(n+3)` -/
def P11338608040494165879.Spec : Prop :=
  ∀ n, P11338608040494165879.a n = (A321773 (n + 3) : ℚ)

end A321773

/-! ## A321773.P3679516743877996426

`A028837(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A321773.P3679516743877996426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A028837 (n + 1) - a (n - 1)

end

end A321773.P3679516743877996426

namespace A321773

/-- `A028837(n+1)-a(n-1)` -/
def P3679516743877996426.Spec : Prop :=
  ∀ n, P3679516743877996426.a n = A321773 (n + 3)

end A321773

/-! ## A321773.P11057325513117251396

`A032766(A235451(n))`
-/

namespace A321773.P11057325513117251396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 (A235451 n).toNat

end

end A321773.P11057325513117251396

namespace A321773

/-- `A032766(A235451(n))` -/
def P11057325513117251396.Spec : Prop :=
  ∀ n, P11057325513117251396.a n = A321773 (n + 3)

end A321773

/-! ## A321773.P10044305594072752229

`A169609(n)+A168237(n)`
-/

namespace A321773.P10044305594072752229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169609 n + A168237 n

end

end A321773.P10044305594072752229

namespace A321773

/-- `A169609(n)+A168237(n)` -/
def P10044305594072752229.Spec : Prop :=
  ∀ n, P10044305594072752229.a n = A321773 (n + 3)

end A321773

/-! ## A321773.P10133444663365761708

`A235451(n)+A105637(n)`
-/

namespace A321773.P10133444663365761708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235451 n + A105637 n

end

end A321773.P10133444663365761708

namespace A321773

/-- `A235451(n)+A105637(n)` -/
def P10133444663365761708.Spec : Prop :=
  ∀ n, P10133444663365761708.a n = A321773 (n + 3)

end A321773

/-! ## A321773.P12131215862012490469

`A008619(n)+2*A105637(n)`
-/

namespace A321773.P12131215862012490469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n + 2 * A105637 n

end

end A321773.P12131215862012490469

namespace A321773

/-- `A008619(n)+2*A105637(n)` -/
def P12131215862012490469.Spec : Prop :=
  ∀ n, P12131215862012490469.a n = A321773 (n + 3)

end A321773

/-! ## A321773.P6419354354788298146

`A000027(A028242(n)+2*n²%3)+n`
-/

namespace A321773.P6419354354788298146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A028242 n + ((2 * (n ^ 2 % 3) : ℕ) : ℤ)).toNat + (n : ℤ)

end

end A321773.P6419354354788298146

namespace A321773

/-- `A000027(A028242(n)+2*n²%3)+n` -/
def P6419354354788298146.Spec : Prop :=
  ∀ n, P6419354354788298146.a n = A321773 (n + 3)

end A321773

/-! ## A321773.P12737030811617780631

`Δ[A168056(n)+A004652(n)]+n`
-/

namespace A321773.P12737030811617780631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168056 n + A004652 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (n : ℤ)

end

end A321773.P12737030811617780631

namespace A321773

/-- `Δ[A168056(n)+A004652(n)]+n` -/
def P12737030811617780631.Spec : Prop :=
  ∀ n, P12737030811617780631.a n = A321773 (n + 3)

end A321773

/-! ## A321773.P5759279116882906200

`A032766(Δ[A004396(n+1)+A000982(n)])`
-/

namespace A321773.P5759279116882906200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (n + 1) + A000982 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 (f1 (n + 1) - f1 n).toNat

end

end A321773.P5759279116882906200

namespace A321773

/-- `A032766(Δ[A004396(n+1)+A000982(n)])` -/
def P5759279116882906200.Spec : Prop :=
  ∀ n, P5759279116882906200.a n = A321773 (n + 3)

end A321773

/-! ## A321773.P7313226043619806887

`A032766(n+1)+A061800(n+1)-A004442(n+1)`
-/

namespace A321773.P7313226043619806887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 (n + 1) + (A061800 (n + 1) - A004442 (n + 1))

end

end A321773.P7313226043619806887

namespace A321773

/-- `A032766(n+1)+A061800(n+1)-A004442(n+1)` -/
def P7313226043619806887.Spec : Prop :=
  ∀ n, P7313226043619806887.a n = A321773 (n + 3)

end A321773

/-! ## A321773.P1165156725184589663

`A049347(n+1)+A047267(n+2)-A028242(n+1)`
-/

namespace A321773.P1165156725184589663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049347 (n + 1) + (A047267 (n + 2) - A028242 (n + 1))

end

end A321773.P1165156725184589663

namespace A321773

/-- `A049347(n+1)+A047267(n+2)-A028242(n+1)` -/
def P1165156725184589663.Spec : Prop :=
  ∀ n, P1165156725184589663.a n = A321773 (n + 3)

end A321773

/-! ## A321773.P8787147912503124350

`A052928(A061800(n+1))+A008619(n)`
-/

namespace A321773.P8787147912503124350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052928 (A061800 (n + 1)).toNat + A008619 n

end

end A321773.P8787147912503124350

namespace A321773

/-- `A052928(A061800(n+1))+A008619(n)` -/
def P8787147912503124350.Spec : Prop :=
  ∀ n, P8787147912503124350.a n = A321773 (n + 3)

end A321773

/-! ## A321773.P10511480935332737154

`A235451(n)+A140106(A235451(n)+2)`
-/

namespace A321773.P10511480935332737154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235451 n + A140106 (A235451 n + 2).toNat

end

end A321773.P10511480935332737154

namespace A321773

/-- `A235451(n)+A140106(A235451(n)+2)` -/
def P10511480935332737154.Spec : Prop :=
  ∀ n, P10511480935332737154.a n = A321773 (n + 3)

end A321773

/-!
# A321774: Number of compositions of n into parts with distinct multiplicities and with exactly four parts.

The programs for A321774, the canonical program `A321774.P16232909308658278851` is in `Seq.B000.C044`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A321774 has offset 4).

The definition of A321774 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A321774.P6656500657912170669

`ogf((1+4x+4x^2+7x^3)/(1-x^3-x^4+x^7))`
-/

namespace A321774.P6656500657912170669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 4, 4, 7] [1, 0, 0, -1, -1, 0, 0, 1] n

end

end A321774.P6656500657912170669

namespace A321774

/-- `ogf((1+4x+4x^2+7x^3)/(1-x^3-x^4+x^7))` -/
def P6656500657912170669.Spec : Prop :=
  ∀ n, P6656500657912170669.a n = A321774 (n + 4)

end A321774

/-! ## A321774.P16232909308658278851

`a(n-3)+a(n-4)-a(n-7)` with `a(0)=1, a(1)=4, a(2)=4, a(3)=8, a(4)=5, a(5)=8, a(6)=12`

The canonical program, it is in `Seq.B000.C044`.
-/

namespace A321774

/-- `a(n-3)+a(n-4)-a(n-7)` -/
def P16232909308658278851.Spec : Prop :=
  ∀ n, P16232909308658278851.a n = A321774 (n + 4)

theorem P16232909308658278851.correct : P16232909308658278851.Spec := by
  intro n
  simp only [A321774, Nat.add_sub_cancel]

end A321774

/-! ## A321774.P11143163859466420800

`A042948(A166486(n)+A130823(n+1))`
-/

namespace A321774.P11143163859466420800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042948 (A166486 n + A130823 (n + 1)).toNat

end

end A321774.P11143163859466420800

namespace A321774

/-- `A042948(A166486(n)+A130823(n+1))` -/
def P11143163859466420800.Spec : Prop :=
  ∀ n, P11143163859466420800.a n = A321774 (n + 4)

end A321774

/-! ## A321774.P8153508158174268392

`A042948(A047484(n+1)-A047487(n+1))`
-/

namespace A321774.P8153508158174268392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042948 (A047484 (n + 1) - A047487 (n + 1)).toNat

end

end A321774.P8153508158174268392

namespace A321774

/-- `A042948(A047484(n+1)-A047487(n+1))` -/
def P8153508158174268392.Spec : Prop :=
  ∀ n, P8153508158174268392.a n = A321774 (n + 4)

end A321774

/-! ## A321774.P6152560949350053932

`A010685(A004525(n))+A008586(A002264(n))`
-/

namespace A321774.P6152560949350053932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010685 (A004525 n).toNat + A008586 (A002264 n).toNat

end

end A321774.P6152560949350053932

namespace A321774

/-- `A010685(A004525(n))+A008586(A002264(n))` -/
def P6152560949350053932.Spec : Prop :=
  ∀ n, P6152560949350053932.a n = A321774 (n + 4)

end A321774

/-! ## A321774.P2554345240926571807

`A010685(A026741(n))+A008586(A002264(n))`
-/

namespace A321774.P2554345240926571807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010685 (A026741 n).toNat + A008586 (A002264 n).toNat

end

end A321774.P2554345240926571807

namespace A321774

/-- `A010685(A026741(n))+A008586(A002264(n))` -/
def P2554345240926571807.Spec : Prop :=
  ∀ n, P2554345240926571807.a n = A321774 (n + 4)

end A321774

/-! ## A321774.P5016346819787903729

`A042948(A008611(2*n)+Δ[A057353(n)])`
-/

namespace A321774.P5016346819787903729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057353 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042948 (A008611 (2 * n) + (f1 (n + 1) - f1 n)).toNat

end

end A321774.P5016346819787903729

namespace A321774

/-- `A042948(A008611(2*n)+Δ[A057353(n)])` -/
def P5016346819787903729.Spec : Prop :=
  ∀ n, P5016346819787903729.a n = A321774 (n + 4)

end A321774

/-! ## A321774.P615596293322341005

`A016825(A004773(n))-A047411(A047411(n+1))`
-/

namespace A321774.P615596293322341005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 (A004773 n).toNat - A047411 (A047411 (n + 1)).toNat

end

end A321774.P615596293322341005

namespace A321774

/-- `A016825(A004773(n))-A047411(A047411(n+1))` -/
def P615596293322341005.Spec : Prop :=
  ∀ n, P615596293322341005.a n = A321774 (n + 4)

end A321774

/-! ## A321774.P5970965166808598145

`A242887(A155212(n)+12)`
-/

namespace A321774.P5970965166808598145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242887 (A155212 n + 12).toNat

end

end A321774.P5970965166808598145

namespace A321774

/-- `A242887(A155212(n)+12)` -/
def P5970965166808598145.Spec : Prop :=
  ∀ n, P5970965166808598145.a n = A321774 (n + 4)

end A321774

/-! ## A321774.P12362599569037297507

`A242887(A056000(n)+14)`
-/

namespace A321774.P12362599569037297507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242887 (A056000 n + 14).toNat

end

end A321774.P12362599569037297507

namespace A321774

/-- `A242887(A056000(n)+14)` -/
def P12362599569037297507.Spec : Prop :=
  ∀ n, P12362599569037297507.a n = A321774 (n + 4)

end A321774

/-! ## A321774.P6644539925801876148

`A242887(eq[4, A002262(n)])`
-/

namespace A321774.P6644539925801876148
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242887 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A321774.P6644539925801876148

namespace A321774

/-- `A242887(eq[4, A002262(n)])` -/
def P6644539925801876148.Spec : Prop :=
  ∀ n, P6644539925801876148.a n = A321774 (n + 4)

end A321774

/-! ## A321774.P9906541973182546524

`A242887(A133263(n+4)+2)`
-/

namespace A321774.P9906541973182546524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242887 (A133263 (n + 4) + 2).toNat

end

end A321774.P9906541973182546524

namespace A321774

/-- `A242887(A133263(n+4)+2)` -/
def P9906541973182546524.Spec : Prop :=
  ∀ n, P9906541973182546524.a n = A321774 (n + 4)

end A321774

/-! ## A321774.P12420605054657491853

`A242887(A000096(n+3)+5)`
-/

namespace A321774.P12420605054657491853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242887 (A000096 (n + 3) + 5).toNat

end

end A321774.P12420605054657491853

namespace A321774

/-- `A242887(A000096(n+3)+5)` -/
def P12420605054657491853.Spec : Prop :=
  ∀ n, P12420605054657491853.a n = A321774 (n + 4)

end A321774

/-! ## A321774.P17769006160829385295

`A242887(n+11+A027379(n+1))`
-/

namespace A321774.P17769006160829385295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242887 ((n + 11 : ℤ) + A027379 (n + 1)).toNat

end

end A321774.P17769006160829385295

namespace A321774

/-- `A242887(n+11+A027379(n+1))` -/
def P17769006160829385295.Spec : Prop :=
  ∀ n, P17769006160829385295.a n = A321774 (n + 4)

end A321774

/-! ## A321774.P5921659668208736260

`A242887(A055999(n+3)-(2*n+1))`
-/

namespace A321774.P5921659668208736260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242887 (A055999 (n + 3) - (2 * n + 1 : ℤ)).toNat

end

end A321774.P5921659668208736260

namespace A321774

/-- `A242887(A055999(n+3)-(2*n+1))` -/
def P5921659668208736260.Spec : Prop :=
  ∀ n, P5921659668208736260.a n = A321774 (n + 4)

end A321774

/-!
# A321775: Number of compositions of n into parts with distinct multiplicities and with exactly five parts.

The programs for A321775, the canonical program `A321775.P10024541450317987312` is in `Seq.B000.C044`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A321775 has offset 5).

The definition of A321775 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A321775.P10024541450317987312

`ogf((1+6x+21x^2+35x^3+49x^4+34x^5+29x^6)/(1+x+x^2-x^4-2x^5-2x^6-x^7+x^9+x^10+x^11))`

The canonical program, it is in `Seq.B000.C044`.
-/

namespace A321775

/-- `ogf((1+6x+21x^2+35x^3+49x^4+34x^5+29x^6)/(1+x+x^2-x^4-2x^5-2x^6-x^7+x^9+x^10+x^11))` -/
def P10024541450317987312.Spec : Prop :=
  ∀ n, P10024541450317987312.a n = A321775 (n + 5)

theorem P10024541450317987312.correct : P10024541450317987312.Spec := by
  intro n
  simp only [A321775, Nat.add_sub_cancel]

end A321775

/-! ## A321775.P6164785528636358790

`A242887(A167499(n+4))`
-/

namespace A321775.P6164785528636358790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242887 (A167499 (n + 4)).toNat

end

end A321775.P6164785528636358790

namespace A321775

/-- `A242887(A167499(n+4))` -/
def P6164785528636358790.Spec : Prop :=
  ∀ n, P6164785528636358790.a n = A321775 (n + 5)

end A321775

/-! ## A321775.P6864001454484099989

`A242887(Δ[A264443(n)]+9)`
-/

namespace A321775.P6864001454484099989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242887 (f1 (n + 1) - f1 n + 9).toNat

end

end A321775.P6864001454484099989

namespace A321775

/-- `A242887(Δ[A264443(n)]+9)` -/
def P6864001454484099989.Spec : Prop :=
  ∀ n, P6864001454484099989.a n = A321775 (n + 5)

end A321775

/-! ## A321775.P8727131762229440111

`A242887(A000217(n+5)+5)`
-/

namespace A321775.P8727131762229440111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242887 (A000217 (n + 5) + 5).toNat

end

end A321775.P8727131762229440111

namespace A321775

/-- `A242887(A000217(n+5)+5)` -/
def P8727131762229440111.Spec : Prop :=
  ∀ n, P8727131762229440111.a n = A321775 (n + 5)

end A321775

/-! ## A321775.P11873895246135334748

`A242887(eq[6, A002260(n+1)])`
-/

namespace A321775.P11873895246135334748
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242887 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A321775.P11873895246135334748

namespace A321775

/-- `A242887(eq[6, A002260(n+1)])` -/
def P11873895246135334748.Spec : Prop :=
  ∀ n, P11873895246135334748.a n = A321775 (n + 5)

end A321775

/-! ## A321775.P10671473045088716885

`A242887(A000124(n+6)-(n+2))`
-/

namespace A321775.P10671473045088716885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242887 (A000124 (n + 6) - (n + 2 : ℤ)).toNat

end

end A321775.P10671473045088716885

namespace A321775

/-- `A242887(A000124(n+6)-(n+2))` -/
def P10671473045088716885.Spec : Prop :=
  ∀ n, P10671473045088716885.a n = A321775 (n + 5)

end A321775

/-! ## A321775.P4100995718636513070

`A242887(n+13+A027379(n+2))`
-/

namespace A321775.P4100995718636513070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242887 ((n + 13 : ℤ) + A027379 (n + 2)).toNat

end

end A321775.P4100995718636513070

namespace A321775

/-- `A242887(n+13+A027379(n+2))` -/
def P4100995718636513070.Spec : Prop :=
  ∀ n, P4100995718636513070.a n = A321775 (n + 5)

end A321775

/-! ## A321775.P4032824031956647794

`A242887(A055999(n+4)-2*(n+1))`
-/

namespace A321775.P4032824031956647794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242887 (A055999 (n + 4) - (2 * (n + 1) : ℤ)).toNat

end

end A321775.P4032824031956647794

namespace A321775

/-- `A242887(A055999(n+4)-2*(n+1))` -/
def P4032824031956647794.Spec : Prop :=
  ∀ n, P4032824031956647794.a n = A321775 (n + 5)

end A321775

/-!
# A321776: Number of compositions of n into parts with distinct multiplicities and with exactly six parts.

The programs for A321776, the canonical program `A321776.P11934929236621674782` is in `Seq.B000.C044`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A321776 has offset 6).

The definition of A321776 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A321776.P11934929236621674782

`ogf((1+7x+28x^2+33x^3+122x^4+286x^5+394x^6+638x^7+687x^8+652x^9+433x^10+319x^11)/(1+x+x^2-x^4-2x^5-3x^6-2x^7-x^8+x^9+2x^10+3x^11+2x^12+x^13-x^15-x^16-x^17))`

The canonical program, it is in `Seq.B000.C044`.
-/

namespace A321776

/-- `ogf((1+7x+28x^2+33x^3+122x^4+286x^5+394x^6+638x^7+687x^8+652x^9+433x^10+319x^11)/(1+x+x^2-x^4-2x^5-3x^6-2x^7-x^8+x^9+2x^10+3x^11+2x^12+x^13-x^15-x^16-x^17))` -/
def P11934929236621674782.Spec : Prop :=
  ∀ n, P11934929236621674782.a n = A321776 (n + 6)

theorem P11934929236621674782.correct : P11934929236621674782.Spec := by
  intro n
  simp only [A321776, Nat.add_sub_cancel]

end A321776

/-! ## A321776.P7408875908878185183

`A242887(eq[6, A002262(n)])`
-/

namespace A321776.P7408875908878185183
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242887 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A321776.P7408875908878185183

namespace A321776

/-- `A242887(eq[6, A002262(n)])` -/
def P7408875908878185183.Spec : Prop :=
  ∀ n, P7408875908878185183.a n = A321776 (n + 6)

end A321776

/-! ## A321776.P5597869409009095774

`A242887(A000096(n+5)+7)`
-/

namespace A321776.P5597869409009095774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242887 (A000096 (n + 5) + 7).toNat

end

end A321776.P5597869409009095774

namespace A321776

/-- `A242887(A000096(n+5)+7)` -/
def P5597869409009095774.Spec : Prop :=
  ∀ n, P5597869409009095774.a n = A321776 (n + 6)

end A321776

/-! ## A321776.P15185177824625398113

`A242887(eq[7, A002260(n+1)])`
-/

namespace A321776.P15185177824625398113
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242887 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A321776.P15185177824625398113

namespace A321776

/-- `A242887(eq[7, A002260(n+1)])` -/
def P15185177824625398113.Spec : Prop :=
  ∀ n, P15185177824625398113.a n = A321776 (n + 6)

end A321776

/-! ## A321776.P11425680161906718150

`A242887(eq[17, A037126(n+1)])`
-/

namespace A321776.P11425680161906718150
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037126 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242887 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A321776.P11425680161906718150

namespace A321776

/-- `A242887(eq[17, A037126(n+1)])` -/
def P11425680161906718150.Spec : Prop :=
  ∀ n, P11425680161906718150.a n = A321776 (n + 6)

end A321776

/-! ## A321776.P12147178581998527358

`A242887(n+15+A027379(n+3))`
-/

namespace A321776.P12147178581998527358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242887 ((n + 15 : ℤ) + A027379 (n + 3)).toNat

end

end A321776.P12147178581998527358

namespace A321776

/-- `A242887(n+15+A027379(n+3))` -/
def P12147178581998527358.Spec : Prop :=
  ∀ n, P12147178581998527358.a n = A321776 (n + 6)

end A321776

/-! ## A321776.P14719039178601225160

`A242887(A055999(n+5)-(2*n+3))`
-/

namespace A321776.P14719039178601225160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242887 (A055999 (n + 5) - (2 * n + 3 : ℤ)).toNat

end

end A321776.P14719039178601225160

namespace A321776

/-- `A242887(A055999(n+5)-(2*n+3))` -/
def P14719039178601225160.Spec : Prop :=
  ∀ n, P14719039178601225160.a n = A321776 (n + 6)

end A321776

/-!
# A321777: Number of compositions of n into parts with distinct multiplicities and with exactly seven parts.

The programs for A321777, there is no canonical definition to state claims against.
-/

/-! ## A321777.P12380508516709024322

`A242887(eq[7, A002262(n)])`
-/

namespace A321777.P12380508516709024322
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242887 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A321777.P12380508516709024322

/-! ## A321777.P15841783444777036972

`A242887(eq[8, A002260(n+1)])`
-/

namespace A321777.P15841783444777036972
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242887 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A321777.P15841783444777036972

/-! ## A321777.P7133604910825999758

`A242887(eq[19, A037126(n+1)])`
-/

namespace A321777.P7133604910825999758
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037126 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242887 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A321777.P7133604910825999758

/-! ## A321777.P11316169934103774469

`A242887(A055999(n+6)-2*(n+2))`
-/

namespace A321777.P11316169934103774469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242887 (A055999 (n + 6) - (2 * (n + 2) : ℤ)).toNat

end

end A321777.P11316169934103774469

/-! ## A321777.P8881748485557787249

`A242887(A000217(n+9)-9-Δ[n²])`
-/

namespace A321777.P8881748485557787249
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242887 (A000217 (n + 9) - 9 - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))).toNat

end

end A321777.P8881748485557787249

/-!
# A321778: Number of compositions of n into parts with distinct multiplicities and with exactly eight parts.

The programs for A321778, there is no canonical definition to state claims against.
-/

/-! ## A321778.P10647471722408935524

`A242887(A056126(n)+44)`
-/

namespace A321778.P10647471722408935524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242887 (A056126 n + 44).toNat

end

end A321778.P10647471722408935524

/-! ## A321778.P5257601749191819192

`A242887(eq[8, A002262(n)])`
-/

namespace A321778.P5257601749191819192
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242887 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A321778.P5257601749191819192

/-! ## A321778.P7544471976654404530

`A242887(A000096(n+7)+9)`
-/

namespace A321778.P7544471976654404530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242887 (A000096 (n + 7) + 9).toNat

end

end A321778.P7544471976654404530

/-! ## A321778.P15035716058244209163

`A242887(A000217(n+8)+8)`
-/

namespace A321778.P15035716058244209163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242887 (A000217 (n + 8) + 8).toNat

end

end A321778.P15035716058244209163

/-! ## A321778.P10105145433940234434

`A242887(eq[9, A002260(n+1)])`
-/

namespace A321778.P10105145433940234434
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242887 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A321778.P10105145433940234434

/-! ## A321778.P9120299610432591664

`A242887(A055999(n+7)-(2*n+5))`
-/

namespace A321778.P9120299610432591664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242887 (A055999 (n + 7) - (2 * n + 5 : ℤ)).toNat

end

end A321778.P9120299610432591664

/-!
# A321779: Number of compositions of n into parts with distinct multiplicities and with exactly nine parts.

The programs for A321779, there is no canonical definition to state claims against.
-/

/-! ## A321779.P1921188508512145362

`A242887(eq[9, A002262(n)])`
-/

namespace A321779.P1921188508512145362
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242887 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A321779.P1921188508512145362

/-! ## A321779.P11892118087934287443

`A242887(A000096(n+8)+10)`
-/

namespace A321779.P11892118087934287443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242887 (A000096 (n + 8) + 10).toNat

end

end A321779.P11892118087934287443

/-! ## A321779.P15385748783504236174

`A242887(A000217(n+9)+9)`
-/

namespace A321779.P15385748783504236174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242887 (A000217 (n + 9) + 9).toNat

end

end A321779.P15385748783504236174

/-! ## A321779.P15315071322357970952

`A242887(eq[10, A002260(n+1)])`
-/

namespace A321779.P15315071322357970952
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242887 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A321779.P15315071322357970952

/-! ## A321779.P5746187030082112131

`A242887(A000124(n+10)-(n+2))`
-/

namespace A321779.P5746187030082112131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242887 (A000124 (n + 10) - (n + 2 : ℤ)).toNat

end

end A321779.P5746187030082112131

/-! ## A321779.P14906830750254432012

`A242887(Δ[A000292(n+9)]-(n+1))`
-/

namespace A321779.P14906830750254432012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (n + 9)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242887 (f1 (n + 1) - f1 n - (n + 1 : ℤ)).toNat

end

end A321779.P14906830750254432012

/-! ## A321779.P16430387467598877734

`A242887(A055999(n+8)-2*(n+3))`
-/

namespace A321779.P16430387467598877734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242887 (A055999 (n + 8) - (2 * (n + 3) : ℤ)).toNat

end

end A321779.P16430387467598877734

/-!
# A321780: Number of compositions of n into parts with distinct multiplicities and with exactly ten parts.

The programs for A321780, there is no canonical definition to state claims against.
-/

/-! ## A321780.P6361289340491531304

`A242887(A167499(n+9)+5)`
-/

namespace A321780.P6361289340491531304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242887 (A167499 (n + 9) + 5).toNat

end

end A321780.P6361289340491531304

/-! ## A321780.P11031770643295182702

`A242887(A167614(n+9)+7)`
-/

namespace A321780.P11031770643295182702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242887 (A167614 (n + 9) + 7).toNat

end

end A321780.P11031770643295182702

/-! ## A321780.P5148914958105682635

`A242887(A000124(n+10)+9)`
-/

namespace A321780.P5148914958105682635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242887 (A000124 (n + 10) + 9).toNat

end

end A321780.P5148914958105682635

/-! ## A321780.P14626619505475625417

`A242887(A000096(n+9)+11)`
-/

namespace A321780.P14626619505475625417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242887 (A000096 (n + 9) + 11).toNat

end

end A321780.P14626619505475625417

/-! ## A321780.P5071274498914301955

`A242887(A000217(n+10)+10)`
-/

namespace A321780.P5071274498914301955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242887 (A000217 (n + 10) + 10).toNat

end

end A321780.P5071274498914301955

/-! ## A321780.P17894169360308354824

`A242887(A055999(n+9)-(2*n+7))`
-/

namespace A321780.P17894169360308354824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242887 (A055999 (n + 9) - (2 * n + 7 : ℤ)).toNat

end

end A321780.P17894169360308354824

/-!
# A321782: Triangle T(n, k) read by rows, n > 0 and 0 < k <= 3^(n-1): T(n, k) = sqrt((A321768(n, k) + A321770(n, k))/2).

The programs for A321782, there is no canonical definition to state claims against.
-/

/-! ## A321782.P4469659015620311218

`A321785(n+1)+A321783(n+1)`
-/

namespace A321782.P4469659015620311218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321785 (n + 1) + A321783 (n + 1)

end

end A321782.P4469659015620311218

/-! ## A321782.P11216303797208050090

`A321784(n+1)-A321783(n+1)`
-/

namespace A321782.P11216303797208050090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321784 (n + 1) - A321783 (n + 1)

end

end A321782.P11216303797208050090

/-! ## A321782.P817559136070360464

`(A321785(n+1)+A321784(n+1))/2`
-/

namespace A321782.P817559136070360464
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A321785 (n + 1) + A321784 (n + 1) : ℚ) / 2

end

end A321782.P817559136070360464

/-! ## A321782.P5182455703890311375

`A321769(n+1)/(2*A321783(n+1))`
-/

namespace A321782.P5182455703890311375
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A321769 (n + 1) : ℚ) / (2 * A321783 (n + 1) : ℚ)

end

end A321782.P5182455703890311375

/-! ## A321782.P2040409679122442792

`A322181(n+1)/(2*A321784(n+1))`
-/

namespace A321782.P2040409679122442792
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A322181 (n + 1) : ℚ) / (2 * A321784 (n + 1) : ℚ)

end

end A321782.P2040409679122442792

/-! ## A321782.P18122802450900630139

`A014682(A321785(n+1)+A321784(n+1))`
-/

namespace A321782.P18122802450900630139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A321785 (n + 1) + A321784 (n + 1)).toNat

end

end A321782.P18122802450900630139

/-! ## A321782.P499458947613953490

`A014682(A321769(n+1)/A321783(n+1))`
-/

namespace A321782.P499458947613953490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (SequenceMachineLib.roundAway ((A321769 (n + 1) : ℚ) / (A321783 (n + 1) : ℚ))).toNat

end

end A321782.P499458947613953490

/-! ## A321782.P12134164449844058603

`A014682(A322181(n+1)/A321784(n+1))`
-/

namespace A321782.P12134164449844058603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (SequenceMachineLib.roundAway ((A322181 (n + 1) : ℚ) / (A321784 (n + 1) : ℚ))).toNat

end

end A321782.P12134164449844058603

/-! ## A321782.P1799900911616073188

`A321783(n+1)+A321768(n+1)/A321784(n+1)`
-/

namespace A321782.P1799900911616073188
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A321783 (n + 1) : ℚ) + (A321768 (n + 1) : ℚ) / (A321784 (n + 1) : ℚ)

end

end A321782.P1799900911616073188

/-! ## A321782.P7672254565340609084

`A322170(n+1)/(A321768(n+1)*A321783(n+1))`
-/

namespace A321782.P7672254565340609084
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A322170 (n + 1) : ℚ) / (A321768 (n + 1) * A321783 (n + 1) : ℚ)

end

end A321782.P7672254565340609084

/-! ## A321782.P13356501665197172197

`A321783(3*(n+1))`
-/

namespace A321782.P13356501665197172197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321783 (3 * (n + 1))

end

end A321782.P13356501665197172197

/-! ## A321782.P2791172137834098059

`(A321785(A013574(n+1))+A321785(n+1))/2`
-/

namespace A321782.P2791172137834098059
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A321785 (A013574 (n + 1)).toNat + A321785 (n + 1) : ℚ) / 2

end

end A321782.P2791172137834098059

/-! ## A321782.P11164467072211385387

`(A321785(A284819(n+1))+A321785(n+1))/2`
-/

namespace A321782.P11164467072211385387
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A321785 (A284819 (n + 1)).toNat + A321785 (n + 1) : ℚ) / 2

end

end A321782.P11164467072211385387

/-! ## A321782.P11148933302788306105

`(A321785(n+1)+A321785(A017257(n)))/2`
-/

namespace A321782.P11148933302788306105
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A321785 (n + 1) + A321785 (A017257 n).toNat : ℚ) / 2

end

end A321782.P11148933302788306105

/-! ## A321782.P2616310299659810082

`(A321785(A320929(n+1))+A321785(n+1))/2`
-/

namespace A321782.P2616310299659810082
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A321785 (A320929 (n + 1)).toNat + A321785 (n + 1) : ℚ) / 2

end

end A321782.P2616310299659810082

/-!
# A321783: Triangle T(n, k) read by rows, n > 0 and 0 < k <= 3^(n-1): T(n, k) = sqrt((A321770(n, k) - A321768(n, k))/2).

The programs for A321783, there is no canonical definition to state claims against.
-/

/-! ## A321783.P5991183682061982522

`A321784(n+1)-A321782(n+1)`
-/

namespace A321783.P5991183682061982522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321784 (n + 1) - A321782 (n + 1)

end

end A321783.P5991183682061982522

/-! ## A321783.P9813469338062676224

`A321782(n+1)-A321785(n+1)`
-/

namespace A321783.P9813469338062676224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321782 (n + 1) - A321785 (n + 1)

end

end A321783.P9813469338062676224

/-! ## A321783.P4704668666099873755

`(A321784(n+1)-A321785(n+1))/2`
-/

namespace A321783.P4704668666099873755
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A321784 (n + 1) - A321785 (n + 1) : ℚ) / 2

end

end A321783.P4704668666099873755

/-! ## A321783.P9964142967371059685

`A321769(n+1)/(2*A321782(n+1))`
-/

namespace A321783.P9964142967371059685
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A321769 (n + 1) : ℚ) / (2 * A321782 (n + 1) : ℚ)

end

end A321783.P9964142967371059685

/-! ## A321783.P15736039935782676521

`A014682(A321784(n+1)-A321785(n+1))`
-/

namespace A321783.P15736039935782676521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A321784 (n + 1) - A321785 (n + 1)).toNat

end

end A321783.P15736039935782676521

/-! ## A321783.P16167514539946357442

`A014682(A321769(n+1)/A321782(n+1))`
-/

namespace A321783.P16167514539946357442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (SequenceMachineLib.roundAway ((A321769 (n + 1) : ℚ) / (A321782 (n + 1) : ℚ))).toNat

end

end A321783.P16167514539946357442

/-! ## A321783.P13490904488876134135

`A321769(n+1)/(A321785(n+1)+A321784(n+1))`
-/

namespace A321783.P13490904488876134135
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A321769 (n + 1) : ℚ) / (A321785 (n + 1) + A321784 (n + 1) : ℚ)

end

end A321783.P13490904488876134135

/-! ## A321783.P8603641237978295927

`A322170(n+1)/(A321768(n+1)*A321782(n+1))`
-/

namespace A321783.P8603641237978295927
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A322170 (n + 1) : ℚ) / (A321768 (n + 1) * A321782 (n + 1) : ℚ)

end

end A321783.P8603641237978295927

/-! ## A321783.P11251153792117103920

`A321769(n+1)*A321784(n+1)/A322181(n+1)`
-/

namespace A321783.P11251153792117103920
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A321769 (n + 1) * A321784 (n + 1) : ℚ) / (A322181 (n + 1) : ℚ)

end

end A321783.P11251153792117103920

/-! ## A321783.P7090261504276330341

`A321784(n+1)-A014682(A322181(n+1)/A321784(n+1))`
-/

namespace A321783.P7090261504276330341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321784 (n + 1) - A014682 (SequenceMachineLib.roundAway ((A322181 (n + 1) : ℚ) / (A321784 (n + 1) : ℚ))).toNat

end

end A321783.P7090261504276330341

/-! ## A321783.P4336791851740989763

`(A321785(A013574(n+1))-A321785(n+1))/2`
-/

namespace A321783.P4336791851740989763
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A321785 (A013574 (n + 1)).toNat - A321785 (n + 1) : ℚ) / 2

end

end A321783.P4336791851740989763

/-! ## A321783.P11414686654441474410

`(A321785(A284819(n+1))-A321785(n+1))/2`
-/

namespace A321783.P11414686654441474410
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A321785 (A284819 (n + 1)).toNat - A321785 (n + 1) : ℚ) / 2

end

end A321783.P11414686654441474410

/-! ## A321783.P5053342219186579180

`(A321785(A017257(n))-A321785(n+1))/2`
-/

namespace A321783.P5053342219186579180
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A321785 (A017257 n).toNat - A321785 (n + 1) : ℚ) / 2

end

end A321783.P5053342219186579180

/-! ## A321783.P6411825296328952320

`(A321785(A320929(n+1))-A321785(n+1))/2`
-/

namespace A321783.P6411825296328952320
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A321785 (A320929 (n + 1)).toNat - A321785 (n + 1) : ℚ) / 2

end

end A321783.P6411825296328952320

/-!
# A321784: Triangle T(n, k) read by rows, n > 0 and 0 < k <= 3^(n-1): T(n, k) = sqrt(A321769(n, k) + A321770(n, k)).

The programs for A321784, there is no canonical definition to state claims against.
-/

/-! ## A321784.P9767784903104113540

`A321783(n+1)+A321782(n+1)`
-/

namespace A321784.P9767784903104113540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321783 (n + 1) + A321782 (n + 1)

end

end A321784.P9767784903104113540

/-! ## A321784.P16900362226862210288

`A321768(n+1)/A321785(n+1)`
-/

namespace A321784.P16900362226862210288
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A321768 (n + 1) : ℚ) / (A321785 (n + 1) : ℚ)

end

end A321784.P16900362226862210288

/-! ## A321784.P1972597596838533597

`gcd(A321768(n+1), A322181(n+1))`
-/

namespace A321784.P1972597596838533597
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A321768 (n + 1)) (A322181 (n + 1))

end

end A321784.P1972597596838533597

/-! ## A321784.P9748712945941691377

`A321785(n+1)+2*A321783(n+1)`
-/

namespace A321784.P9748712945941691377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321785 (n + 1) + 2 * A321783 (n + 1)

end

end A321784.P9748712945941691377

/-! ## A321784.P16924211600476091892

`2*A321782(n+1)-A321785(n+1)`
-/

namespace A321784.P16924211600476091892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A321782 (n + 1) - A321785 (n + 1)

end

end A321784.P16924211600476091892

/-! ## A321784.P5355212971125889887

`A322181(n+1)/(2*A321782(n+1))`
-/

namespace A321784.P5355212971125889887
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A322181 (n + 1) : ℚ) / (2 * A321782 (n + 1) : ℚ)

end

end A321784.P5355212971125889887

/-! ## A321784.P3737073081585546084

`A321785(n+1)+A321769(n+1)/A321782(n+1)`
-/

namespace A321784.P3737073081585546084
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A321785 (n + 1) : ℚ) + (A321769 (n + 1) : ℚ) / (A321782 (n + 1) : ℚ)

end

end A321784.P3737073081585546084

/-! ## A321784.P9187788098313664343

`A321769(n+1)/A321783(n+1)-A321785(n+1)`
-/

namespace A321784.P9187788098313664343
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A321769 (n + 1) : ℚ) / (A321783 (n + 1) : ℚ) - (A321785 (n + 1) : ℚ)

end

end A321784.P9187788098313664343

/-! ## A321784.P7171789590475743176

`A321783(n+1)/A321769(n+1)*A322181(n+1)`
-/

namespace A321784.P7171789590475743176
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A321783 (n + 1) : ℚ) / (A321769 (n + 1) : ℚ) * (A322181 (n + 1) : ℚ)

end

end A321784.P7171789590475743176

/-! ## A321784.P17620921225381725549

`A321785(3*(n+1))`
-/

namespace A321784.P17620921225381725549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321785 (3 * (n + 1))

end

end A321784.P17620921225381725549

/-! ## A321784.P800848967391587580

`A321783(3*(n+1))+A321783(n+1)`
-/

namespace A321784.P800848967391587580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321783 (3 * (n + 1)) + A321783 (n + 1)

end

end A321784.P800848967391587580

/-!
# A321785: Triangle T(n, k) read by rows, n > 0 and 0 < k <= 3^(n-1): T(n, k) = sqrt(A321769(n, k)^2 - A321768(n, k)^2).

The programs for A321785, there is no canonical definition to state claims against.
-/

/-! ## A321785.P5204894127684345255

`A321782(n+1)-A321783(n+1)`
-/

namespace A321785.P5204894127684345255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321782 (n + 1) - A321783 (n + 1)

end

end A321785.P5204894127684345255

/-! ## A321785.P17818763538015833806

`A321768(n+1)/A321784(n+1)`
-/

namespace A321785.P17818763538015833806
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A321768 (n + 1) : ℚ) / (A321784 (n + 1) : ℚ)

end

end A321785.P17818763538015833806

/-! ## A321785.P7184112713966706233

`2*A321782(n+1)-A321784(n+1)`
-/

namespace A321785.P7184112713966706233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A321782 (n + 1) - A321784 (n + 1)

end

end A321785.P7184112713966706233

/-! ## A321785.P8971494787522040148

`A321784(n+1)-2*A321783(n+1)`
-/

namespace A321785.P8971494787522040148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321784 (n + 1) - 2 * A321783 (n + 1)

end

end A321785.P8971494787522040148

/-! ## A321785.P404365729737189713

`A004277(A321782(n+1))-A321784(n+1)`
-/

namespace A321785.P404365729737189713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A321782 (n + 1)).toNat - A321784 (n + 1)

end

end A321785.P404365729737189713

/-! ## A321785.P18287457563877792975

`A321768(n+1)/(A321783(n+1)+A321782(n+1))`
-/

namespace A321785.P18287457563877792975
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A321768 (n + 1) : ℚ) / (A321783 (n + 1) + A321782 (n + 1) : ℚ)

end

end A321785.P18287457563877792975

/-! ## A321785.P6032346685122784484

`A321784(n+1)-A321769(n+1)/A321782(n+1)`
-/

namespace A321785.P6032346685122784484
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A321784 (n + 1) : ℚ) - (A321769 (n + 1) : ℚ) / (A321782 (n + 1) : ℚ)

end

end A321785.P6032346685122784484

/-! ## A321785.P12968790857430782403

`A321769(n+1)/A321783(n+1)-A321784(n+1)`
-/

namespace A321785.P12968790857430782403
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A321769 (n + 1) : ℚ) / (A321783 (n + 1) : ℚ) - (A321784 (n + 1) : ℚ)

end

end A321785.P12968790857430782403

/-! ## A321785.P18237171296241078588

`A322181(n+1)/A321784(n+1)-A321784(n+1)`
-/

namespace A321785.P18237171296241078588
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A322181 (n + 1) : ℚ) / (A321784 (n + 1) : ℚ) - (A321784 (n + 1) : ℚ)

end

end A321785.P18237171296241078588

/-! ## A321785.P10043359070638699660

`A321768(n+1)/gcd(A321768(n+1), A322181(n+1))`
-/

namespace A321785.P10043359070638699660
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A321768 (n + 1) : ℚ) / (Int.gcd (A321768 (n + 1)) (A322181 (n + 1)) : ℚ)

end

end A321785.P10043359070638699660

/-! ## A321785.P6132577505617542114

`A321782(n+1)-A014682(A321769(n+1)/A321782(n+1))`
-/

namespace A321785.P6132577505617542114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321782 (n + 1) - A014682 (SequenceMachineLib.roundAway ((A321769 (n + 1) : ℚ) / (A321782 (n + 1) : ℚ))).toNat

end

end A321785.P6132577505617542114

/-! ## A321785.P9835166520889164603

`A014682(A321769(n+1)/A321783(n+1))-A321783(n+1)`
-/

namespace A321785.P9835166520889164603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (SequenceMachineLib.roundAway ((A321769 (n + 1) : ℚ) / (A321783 (n + 1) : ℚ))).toNat - A321783 (n + 1)

end

end A321785.P9835166520889164603

/-! ## A321785.P15761832588962373569

`A321783(3*(n+1))-A321783(n+1)`
-/

namespace A321785.P15761832588962373569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321783 (3 * (n + 1)) - A321783 (n + 1)

end

end A321785.P15761832588962373569

/-!
# A321787: Irregular triangle read by rows: row n gives the prime factorization of n-th average of twin prime pairs (A014574).

The programs for A321787, there is no canonical definition to state claims against.
-/

/-! ## A321787.P11148481170120883319

`A016484(A016114(n+1))%3`
-/

namespace A321787.P11148481170120883319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016484 (A016114 (n + 1)).toNat) 3

end

end A321787.P11148481170120883319

/-! ## A321787.P1414053062275384672

`C(2, A356931(A052816(n+2)))`
-/

namespace A321787.P1414053062275384672
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A356931 (A052816 (n + 2)).toNat).toNat

end

end A321787.P1414053062275384672

/-! ## A321787.P12930287952768740258

`A076451(A313694(2*round(8*n/7)-n)²)`
-/

namespace A321787.P12930287952768740258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076451 (A313694 (2 * SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7)) - (n : ℤ)).toNat ^ 2).toNat

end

end A321787.P12930287952768740258

/-! ## A321787.P1529169249356806218

`A326647(∑[∑[n+5]+4]%A376591(2*(n+2)))`
-/

namespace A321787.P1529169249356806218
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326647 (Int.tmod ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A376591 (2 * (n + 2)))).toNat

end

end A321787.P1529169249356806218

/-! ## A321787.P12918799881000967177

`A245977(n)-A266982(A247323(n))`
-/

namespace A321787.P12918799881000967177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245977 n - A266982 (A247323 n).toNat

end

end A321787.P12918799881000967177

/-!
# A321788: Product of semiprime factors using lunar arithmetic.

The programs for A321788, there is no canonical definition to state claims against.
-/

/-! ## A321788.P6215838304233258042

`A087062(C(A084126(n+1)+A084127(n+1)-1, 2)+A084126(n+1))`
-/

namespace A321788.P6215838304233258042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087062 ((Nat.choose (A084126 (n + 1) + A084127 (n + 1) - 1).toNat 2 : ℤ) + A084126 (n + 1)).toNat

end

end A321788.P6215838304233258042

/-!
# A321789: Factorials of terms of Pascal's triangle by row.

The programs for A321789, there is no canonical definition to state claims against.
-/

/-! ## A321789.P11677374956358166421

`C(row(n), col(n))!`
-/

namespace A321789.P11677374956358166421
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (Nat.choose (SequenceMachineLib.triRow n) (SequenceMachineLib.triCol n))

end

end A321789.P11677374956358166421

/-! ## A321789.P11297036233404772739

`C(∑[abs(T(n-1,k))], col(n))!` with `a(0)=0, a(1)=1`
-/

namespace A321789.P11297036233404772739
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  SequenceMachineLib.triUp f1 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) (SequenceMachineLib.triCol n))

end

end A321789.P11297036233404772739

/-! ## A321789.P17715141573672553077

`(row(n)!/(col(n)!*(row(n)-col(n))!))!`
-/

namespace A321789.P17715141573672553077
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (SequenceMachineLib.roundAway ((Nat.factorial (SequenceMachineLib.triRow n) : ℚ) / (Nat.factorial (SequenceMachineLib.triCol n) * Nat.factorial ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ)).toNat : ℚ))).toNat

end

end A321789.P17715141573672553077

/-! ## A321789.P2846868929524188776

`A007318(n)!`
-/

namespace A321789.P2846868929524188776
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A007318 n).toNat

end

end A321789.P2846868929524188776

/-! ## A321789.P17732271476815778809

`A094495(n)!`
-/

namespace A321789.P17732271476815778809
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A094495 n).toNat

end

end A321789.P17732271476815778809

/-!
# A321790: a(n) is the smallest base a > 2 such that a^(k-1) != 1 (mod k), where k = A001567(n), the n-th Fermat pseudoprime to base 2.

The programs for A321790, there is no canonical definition to state claims against.
-/

/-! ## A321790.P2561622082872267806

`A000978(A237266(n+1))`
-/

namespace A321790.P2561622082872267806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000978 (A237266 (n + 1)).toNat

end

end A321790.P2561622082872267806

/-! ## A321790.P15965746620371204495

`A000040(A237266(n+1)+1)`
-/

namespace A321790.P15965746620371204495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A237266 (n + 1) + 1).toNat

end

end A321790.P15965746620371204495

/-! ## A321790.P7893773247913644189

`A002267(A237266(n+1)+1)`
-/

namespace A321790.P7893773247913644189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002267 (A237266 (n + 1) + 1).toNat

end

end A321790.P7893773247913644189

/-! ## A321790.P4579021072348660401

`A004051(A237266(n+1)+1)`
-/

namespace A321790.P4579021072348660401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004051 (A237266 (n + 1) + 1).toNat

end

end A321790.P4579021072348660401

/-! ## A321790.P1994834736545509730

`A005728(A237266(n+1)+1)`
-/

namespace A321790.P1994834736545509730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 (A237266 (n + 1) + 1).toNat

end

end A321790.P1994834736545509730

/-! ## A321790.P9607799012114176593

`A006005(A237266(n+1)+1)`
-/

namespace A321790.P9607799012114176593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (A237266 (n + 1) + 1).toNat

end

end A321790.P9607799012114176593

/-! ## A321790.P1453461232346446244

`A038179(A237266(n+1)+1)`
-/

namespace A321790.P1453461232346446244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038179 (A237266 (n + 1) + 1).toNat

end

end A321790.P1453461232346446244

/-! ## A321790.P8839283432365419282

`A038618(A237266(n+1)+1)`
-/

namespace A321790.P8839283432365419282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038618 (A237266 (n + 1) + 1).toNat

end

end A321790.P8839283432365419282

/-! ## A321790.P17999170542687075562

`A003309(A237266(n+1)+2)`
-/

namespace A321790.P17999170542687075562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003309 (A237266 (n + 1) + 2).toNat

end

end A321790.P17999170542687075562

/-! ## A321790.P6678655183476874593

`A324050(A237266(n+1)+2)`
-/

namespace A321790.P6678655183476874593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324050 (A237266 (n + 1) + 2).toNat

end

end A321790.P6678655183476874593

/-!
# A321791: Table read by descending antidiagonals: T(n,k) is the number of unoriented cycles (bracelets) of length n using up to k available colors.

The programs for A321791, there is no canonical definition to state claims against.
-/

/-! ## A321791.P17380367731593852637

`A339649(n)%A339617(n+4)`
-/

namespace A321791.P17380367731593852637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A339649 n) (A339617 (n + 4))

end

end A321791.P17380367731593852637

/-! ## A321791.P15749989601274359591

`and(A157358(n+1), A339649(n))`
-/

namespace A321791.P15749989601274359591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A157358 (n + 1)) (A339649 n)

end

end A321791.P15749989601274359591

/-! ## A321791.P18179350339016587116

`and(A335067(n+1), A339649(n))`
-/

namespace A321791.P18179350339016587116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A335067 (n + 1)) (A339649 n)

end

end A321791.P18179350339016587116

/-! ## A321791.P10719636232231267910

`A339649(n)+A000007(A000041(n))`
-/

namespace A321791.P10719636232231267910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339649 n + A000007 (A000041 n).toNat

end

end A321791.P10719636232231267910

/-! ## A321791.P11103498430162069996

`A339649(n)+A000007(A000837(n))`
-/

namespace A321791.P11103498430162069996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339649 n + A000007 (A000837 n).toNat

end

end A321791.P11103498430162069996

/-!
# A321792: Lesser of twin primes of the form 6*Fibonacci(k)-1.

The programs for A321792, there is no canonical definition to state claims against.
-/

/-! ## A321792.P11046828460281922719

`p?[p?[6*A000045(n+2)+1]-2]`
-/

namespace A321792.P11046828460281922719
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A000045 (n + 2) + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A321792.P11046828460281922719

/-!
# A321793: Josephus problem: Records in the rows of A321781.

The programs for A321793, there is no canonical definition to state claims against.
-/

/-! ## A321793.P9818782475238366690

`A321781(A321794(n+2)+A000217(n+1))`
-/

namespace A321793.P9818782475238366690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321781 (A321794 (n + 2) + A000217 (n + 1)).toNat

end

end A321793.P9818782475238366690

/-!
# A321795: Numbers m such that m^2+1 is prime with (m-1)^2+1 and (m+1)^2+1 semiprimes.

The programs for A321795, there is no canonical definition to state claims against.
-/

/-! ## A321795.P16185580294109364202

`floor(sqrt(A234693(n+1)))`
-/

namespace A321795.P16185580294109364202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A234693 (n + 1))

end

end A321795.P16185580294109364202

/-! ## A321795.P16726421333306171595

`sqrt(A234693(n+1)-A033999(n)²)`
-/

namespace A321795.P16726421333306171595
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A234693 (n + 1) - A033999 n ^ 2 : ℝ)

end

end A321795.P16726421333306171595

/-! ## A321795.P8813190076109834719

`sqrt(A234693(n+1)-A158388(n)²)`
-/

namespace A321795.P8813190076109834719
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A234693 (n + 1) - A158388 n ^ 2 : ℝ)

end

end A321795.P8813190076109834719

/-! ## A321795.P14779489097842699651

`round(sqrt(A234693(n+1)))%A017342(n)`
-/

namespace A321795.P14779489097842699651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (Real.sqrt (A234693 (n + 1) : ℝ))) (A017342 n)

end

end A321795.P14779489097842699651

/-! ## A321795.P2421511201935269771

`sqrt(xor(A158388(n+1), A234693(n+1)))`
-/

namespace A321795.P2421511201935269771
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Int.xor (A158388 (n + 1)) (A234693 (n + 1)) : ℝ)

end

end A321795.P2421511201935269771

/-! ## A321795.P1965993060359044485

`sqrt(A234693(n+1)-A000027(n+1)+n)`
-/

namespace A321795.P1965993060359044485
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A234693 (n + 1) - A000027 (n + 1) + (n : ℤ) : ℝ)

end

end A321795.P1965993060359044485

/-! ## A321795.P4486861018919336334

`∩[A082612(n+1), A102751(n+1)-1]`
-/

namespace A321795.P4486861018919336334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082612 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102751 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A321795.P4486861018919336334

/-! ## A321795.P2407988998470460146

`A000027(round(sqrt(A234693(n+1))))`
-/

namespace A321795.P2407988998470460146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.roundAway (Real.sqrt (A234693 (n + 1) : ℝ))).toNat

end

end A321795.P2407988998470460146

/-! ## A321795.P7464814207241028789

`A000027(sqrt(A234693(n+1)-1))`
-/

namespace A321795.P7464814207241028789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.roundAway (Real.sqrt (A234693 (n + 1) - 1 : ℝ))).toNat

end

end A321795.P7464814207241028789

/-! ## A321795.P3919094301452710440

`round(sqrt(A234693(n+1)))+n*A008683(2*(n+1)²)`
-/

namespace A321795.P3919094301452710440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A234693 (n + 1) : ℝ)) + (n : ℤ) * A008683 (2 * (n + 1) ^ 2)

end

end A321795.P3919094301452710440

/-! ## A321795.P15170563868470154666

`∩[A005574(n+1), A082612(n+1)]`
-/

namespace A321795.P15170563868470154666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005574 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082612 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A321795.P15170563868470154666

/-! ## A321795.P3831833275210577483

`sqrt(A234693(n+1)-A007318(∑[n]))`
-/

namespace A321795.P3831833275210577483
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A234693 (n + 1) - A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℝ)

end

end A321795.P3831833275210577483

/-! ## A321795.P4898005088010753725

`filter[A082612(n+1), A295405(#)]`
-/

namespace A321795.P4898005088010753725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082612 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A295405 (f1 j).toNat = 1) n)

end

end A321795.P4898005088010753725

/-!
# A321796: Prime p such that the prime before p is a substring of p^3.

The programs for A321796, there is no canonical definition to state claims against.
-/

/-! ## A321796.P2897228164065918711

`p?[Δ[A083706(A025841(n))]]`
-/

namespace A321796.P2897228164065918711
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083706 (A025841 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A321796.P2897228164065918711

/-!
# A321797: Delete the decimal digits of n that appear exactly once; write 0 if all digits disappear.

The programs for A321797, there is no canonical definition to state claims against.
-/

/-! ## A321797.P3276962512484306392

`A321800(n)+A178788(n)`
-/

namespace A321797.P3276962512484306392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321800 n + A178788 n

end

end A321797.P3276962512484306392

/-! ## A321797.P9488359943729489898

`A321800(n)+A065803(A321800(n)+2)`
-/

namespace A321797.P9488359943729489898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321800 n + A065803 (A321800 n + 2).toNat

end

end A321797.P9488359943729489898

/-! ## A321797.P15335326405798699364

`A321800(n)+A000007(A321800(n)+1)`
-/

namespace A321797.P15335326405798699364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321800 n + A000007 (A321800 n + 1).toNat

end

end A321797.P15335326405798699364

/-! ## A321797.P10306824938538004868

`A267621(A321800(n)+3)*A321800(n)`
-/

namespace A321797.P10306824938538004868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267621 (A321800 n + 3).toNat * A321800 n

end

end A321797.P10306824938538004868

/-! ## A321797.P1890011398493727902

`A321800(n)+char[A137564(n)]`
-/

namespace A321797.P1890011398493727902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137564 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321800 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A321797.P1890011398493727902

/-! ## A321797.P162925319592523492

`A321800(n)+char[A320485(n)]`
-/

namespace A321797.P162925319592523492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320485 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321800 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A321797.P162925319592523492

/-! ## A321797.P4521040667583441855

`A321800(n)+char[A320486(n)]`
-/

namespace A321797.P4521040667583441855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320486 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321800 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A321797.P4521040667583441855

/-! ## A321797.P6691391432349010038

`A321537(A056142(n))`
-/

namespace A321797.P6691391432349010038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321537 (A056142 n).toNat

end

end A321797.P6691391432349010038

/-! ## A321797.P4713076600091351816

`∑{d}[n+1, A145459(#-1)*A321538((n+1)/#-1)]`
-/

namespace A321797.P4713076600091351816
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A145459 (d - 1) * A321538 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A321797.P4713076600091351816

/-! ## A321797.P7325121100592485541

`lcm(A321538(n), A338366(n))`
-/

namespace A321797.P7325121100592485541
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A321538 n) (A338366 n)

end

end A321797.P7325121100592485541

/-!
# A321798: G.f. A(x) satisfies A(x) = 1/(1 - x/(1 - x*A(x))^4).

The programs for A321798, there is no canonical definition to state claims against.
-/

/-! ## A321798.P16340503666630381568

`A108954(or(5, A099250(n)))`
-/

namespace A321798.P16340503666630381568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108954 (Int.lor 5 (A099250 n)).toNat

end

end A321798.P16340503666630381568

/-! ## A321798.P2396520518318386621

`A034887(or(2, A026295(n+1)))`
-/

namespace A321798.P2396520518318386621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034887 (Int.lor 2 (A026295 (n + 1))).toNat

end

end A321798.P2396520518318386621

/-!
# A321799: G.f. A(x) satisfies A(x) = 1/(1 - x/(1 - x*A(x))^5).

The programs for A321799, there is no canonical definition to state claims against.
-/

/-! ## A321799.P9774912718267159480

`A192661(n)+A002266(A192624(n))`
-/

namespace A321799.P9774912718267159480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192661 n + A002266 (A192624 n).toNat

end

end A321799.P9774912718267159480

/-! ## A321799.P7947964622028659339

`A324748(A228816(n+1))+A025174(n)`
-/

namespace A321799.P7947964622028659339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324748 (A228816 (n + 1)).toNat + A025174 n

end

end A321799.P7947964622028659339

