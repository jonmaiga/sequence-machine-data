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
import Seq.B000.C015
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
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C035
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
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
import Seq.B009.C001
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
# A228002: Alternate partial sums of binomial(2n,n)^2.

The programs for A228002, there is no canonical definition to state claims against.
-/

/-! ## A228002.P16102681657458582324

`C(2*n, n)²-a(n-1)` with `a(0)=1`
-/

namespace A228002.P16102681657458582324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (Nat.choose (2 * n) n ^ 2 : ℤ) - a (n - 1)

end

end A228002.P16102681657458582324

/-! ## A228002.P15714729462473388341

`A002894(n)-a(n-1)` with `a(0)=1`
-/

namespace A228002.P15714729462473388341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A002894 n - a (n - 1)

end

end A228002.P15714729462473388341

/-! ## A228002.P12544985442946554207

`A000984(n)²-a(n-1)` with `a(0)=1`
-/

namespace A228002.P12544985442946554207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000984 n ^ 2 - a (n - 1)

end

end A228002.P12544985442946554207

/-! ## A228002.P2998218159697672249

`A018224(2*n)-a(n-1)` with `a(0)=1`
-/

namespace A228002.P2998218159697672249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A018224 (2 * n) - a (n - 1)

end

end A228002.P2998218159697672249

/-! ## A228002.P10120369036960528044

`A241530(2*n)-a(n-1)` with `a(0)=1`
-/

namespace A228002.P10120369036960528044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A241530 (2 * n) - a (n - 1)

end

end A228002.P10120369036960528044

/-! ## A228002.P13909078124530643285

`A001405(2*n)²-a(n-1)` with `a(0)=1`
-/

namespace A228002.P13909078124530643285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A001405 (2 * n) ^ 2 - a (n - 1)

end

end A228002.P13909078124530643285

/-! ## A228002.P9517550734852929839

`((n+1)*A000108(n))²-a(n-1)` with `a(0)=1`
-/

namespace A228002.P9517550734852929839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ((n + 1 : ℤ) * A000108 n) ^ 2 - a (n - 1)

end

end A228002.P9517550734852929839

/-! ## A228002.P15766904332602120592

`A007318(∑[4*n])²-a(n-1)` with `a(0)=1`
-/

namespace A228002.P15766904332602120592
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - a (n - 1)

end

end A228002.P15766904332602120592

/-!
# A228004: Prime powers p^m with m >= 2 which are not the sum of consecutive cubes.

The programs for A228004, there is no canonical definition to state claims against.
-/

/-! ## A228004.P1797560678714269711

`∩[A340585(n+1), A345531(n+1)]`
-/

namespace A228004.P1797560678714269711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340585 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345531 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A228004.P1797560678714269711

/-! ## A228004.P12245704625983132424

`record[A008475(A340585(A052938(n)))]`
-/

namespace A228004.P12245704625983132424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008475 (A340585 (A052938 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A228004.P12245704625983132424

/-! ## A228004.P15551263772679231518

`∩[A340585(n+1), A175106(n)]`
-/

namespace A228004.P15551263772679231518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340585 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175106 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A228004.P15551263772679231518

/-! ## A228004.P11819511358752615356

`A195942(lt[A285331(2*n+5), A220993(2*n+1)])`
-/

namespace A228004.P11819511358752615356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285331 (2 * n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220993 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195942 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A228004.P11819511358752615356

/-! ## A228004.P4361639021990078990

`A001597(eq[n%2, A186725(n)]+1)`
-/

namespace A228004.P4361639021990078990
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186725 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A228004.P4361639021990078990

/-!
# A228012: The 2-color Rado number for the equation x_1 + x_2 + ... + x_n = 2*x_0.

The programs for A228012, there is no canonical definition to state claims against.
-/

/-! ## A228012.P17863660159214988291

`record[A331153(n+1)/A271206(n)]`
-/

namespace A228012.P17863660159214988291
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A331153 (n + 1) : ℚ) / (A271206 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A228012.P17863660159214988291

/-! ## A228012.P10518939199138109027

`eq[A010054(2*n+1), A169611(A299757(2*(n+1)))]`
-/

namespace A228012.P10518939199138109027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169611 (A299757 (2 * (n + 1))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A228012.P10518939199138109027

/-!
# A228013: The smallest n-digit number whose last k digits are divisible by k^2 for k = 1..n, otherwise 0 (for n > 1).

The programs for A228013, there is no canonical definition to state claims against.
-/

/-! ## A228013.P10676043770401747627

`A326055(A163413(n)+A108209(n))`
-/

namespace A228013.P10676043770401747627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326055 (A163413 n + A108209 n).toNat

end

end A228013.P10676043770401747627

/-!
# A228014: Numbers k whose Collatz sequence length is greater than k+1 (counting both the x/2 and the 3x+1 steps).

The programs for A228014, there is no canonical definition to state claims against.
-/

/-! ## A228014.P15662468703198910476

`lt[n, A139399(n+2)]+2`
-/

namespace A228014.P15662468703198910476
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139399 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 2

end

end A228014.P15662468703198910476

/-! ## A228014.P8509972396408013032

`record[(n+3)%A006577(n+3)]`
-/

namespace A228014.P8509972396408013032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 3 : ℤ) (A006577 (n + 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A228014.P8509972396408013032

/-! ## A228014.P2598088168055322654

`A082984(ceil(sqrt(∑[2*n]))+3)`
-/

namespace A228014.P2598088168055322654
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082984 (⌈Real.sqrt ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ)⌉ + 3).toNat

end

end A228014.P2598088168055322654

/-! ## A228014.P3396080363014313926

`lt[n, A006577(round(sqrt(n²+1)))]`
-/

namespace A228014.P3396080363014313926
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006577 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A228014.P3396080363014313926

/-! ## A228014.P10975368088128532843

`A082984(n+4)-floor(acot(n)²)`
-/

namespace A228014.P10975368088128532843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082984 (n + 4) - ⌊SequenceMachineLib.acot (n : ℝ) ^ 2⌋

end

end A228014.P10975368088128532843

/-!
# A228015: Smallest integer m > n such that phi(m+n) = sigma(m-n).

The programs for A228015, there is no canonical definition to state claims against.
-/

/-! ## A228015.P16917439666379072272

`A094466(2*(n+1))+n+1`
-/

namespace A228015.P16917439666379072272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094466 (2 * (n + 1)) + (n + 1 : ℤ)

end

end A228015.P16917439666379072272

/-!
# A228016: a(1) = least k such that 1/1+1/2+1/3+1/4+1/5 < H(k) - H(5); a(2) = least k such that H(a(1)) - H(5) < H(k) -H(a(1)), and for n > 2, a(n) = least k such that H(a(n-1)) - H(a(n-2)) > H(k) - H(a(n-1)), where H = harmonic number.

The programs for A228016, there is no canonical definition to state claims against.
-/

/-! ## A228016.P9697970030016474915

`A087125(n+2)`
-/

namespace A228016.P9697970030016474915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087125 (n + 2)

end

end A228016.P9697970030016474915

/-! ## A228016.P2298859905266149226

`A253475(n+3)-1`
-/

namespace A228016.P2298859905266149226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253475 (n + 3) - 1

end

end A228016.P2298859905266149226

/-! ## A228016.P1754141219348058734

`A157084(n+2)/2`
-/

namespace A228016.P1754141219348058734
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A157084 (n + 2) : ℚ) / 2

end

end A228016.P1754141219348058734

/-! ## A228016.P8880224042008513255

`record[A087125(abs(2-n))]`
-/

namespace A228016.P8880224042008513255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087125 |2 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A228016.P8880224042008513255

/-! ## A228016.P11115332115156766166

`floor(A054320(n+2)/2)`
-/

namespace A228016.P11115332115156766166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A054320 (n + 2) : ℚ) / 2⌋

end

end A228016.P11115332115156766166

/-! ## A228016.P18419814680832222552

`∑[A001079(n+2)]+5`
-/

namespace A228016.P18419814680832222552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001079 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 5

end

end A228016.P18419814680832222552

/-! ## A228016.P17227204471743195056

`∑[A041006(2*n+3)]+5`
-/

namespace A228016.P17227204471743195056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041006 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 5

end

end A228016.P17227204471743195056

/-! ## A228016.P16313478974717630202

`A105038(n+2)+A004189(n+2)`
-/

namespace A228016.P16313478974717630202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105038 (n + 2) + A004189 (n + 2)

end

end A228016.P16313478974717630202

/-!
# A228017: Numbers m divisible by the sum of any k-subset of digits of m with k >= 1.

The programs for A228017, there is no canonical definition to state claims against.
-/

/-! ## A228017.P18090558068500788764

`record[∏{digits}[n+1, 12*#]/12]`
-/

namespace A228017.P18090558068500788764
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => 12 * x).prod : ℕ) : ℚ) / 12

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A228017.P18090558068500788764

/-! ## A228017.P8762369503171310576

`lt[n²*round(atan(n%12)), 10*n]`
-/

namespace A228017.P8762369503171310576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * SequenceMachineLib.roundAway (Real.arctan ((n % 12 : ℕ) : ℝ))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A228017.P8762369503171310576

/-! ## A228017.P362556860833275458

`∑[lt[n, ∏{digits}[n, 3*#]]-∑{digits}[n, #]]`
-/

namespace A228017.P362556860833275458
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f4 n)).map fun (x : ℕ) => 3 * x).prod

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f2 j < f3 j) n : ℤ) - ((((SequenceMachineLib.digits10 (f5 n)).map fun (x : ℕ) => x).sum : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A228017.P362556860833275458

/-! ## A228017.P14407705599882754804

`comp[(∑{digits}[n+1, (#%2)!]-1)*comp[12*n]]`
-/

namespace A228017.P14407705599882754804
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12 * n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => Nat.factorial (x % 2)).sum : ℕ) : ℤ) - 1) * (SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A228017.P14407705599882754804

/-!
# A228018: Prime powers p (A025475) such that the sum of the proper divisors of p is also a prime power.

The programs for A228018, there is no canonical definition to state claims against.
-/

/-! ## A228018.P11830855489479207121

`A318649(A376337(n+1))`
-/

namespace A228018.P11830855489479207121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318649 (A376337 (n + 1)).toNat

end

end A228018.P11830855489479207121

/-!
# A228019: Composite numbers whose sum of digits is a composite number.

The programs for A228019, there is no canonical definition to state claims against.
-/

/-! ## A228019.P10733559880381365569

`lt[A055671(n), A107393(A007953(n))]`
-/

namespace A228019.P10733559880381365569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055671 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107393 (A007953 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A228019.P10733559880381365569

/-! ## A228019.P17703958083210116534

`lt[A055672(n), A107393(A007953(n))]`
-/

namespace A228019.P17703958083210116534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055672 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107393 (A007953 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A228019.P17703958083210116534

/-! ## A228019.P13564723180683579946

`eq[A055672(n), A339579(A007953(n)+1)]`
-/

namespace A228019.P13564723180683579946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055672 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339579 (A007953 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A228019.P13564723180683579946

/-! ## A228019.P4386677986961503336

`lt[A105700(2*n), A107393(A007953(n))]`
-/

namespace A228019.P4386677986961503336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107393 (A007953 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A228019.P4386677986961503336

/-!
# A228020: Composite numbers whose initial, all intermediate and final iterated digit sums are composite numbers.

The programs for A228020, there is no canonical definition to state claims against.
-/

/-! ## A228020.P3786128453132653604

`record[A228019(n+1)%A154095(n+5)]`
-/

namespace A228020.P3786128453132653604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A228019 (n + 1)) (A154095 (n + 5))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A228020.P3786128453132653604

/-! ## A228020.P7089436355238275717

`A228019(A064807(n+1)%A075216(n+5))`
-/

namespace A228020.P7089436355238275717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228019 (Int.tmod (A064807 (n + 1)) (A075216 (n + 5))).toNat

end

end A228020.P7089436355238275717

/-!
# A228021: Prime(k) such that 2^(k - 1) + prime(k) is also prime.

The programs for A228021, there is no canonical definition to state claims against.
-/

/-! ## A228021.P12445922619235374844

`A368278(A116734(n+1))`
-/

namespace A228021.P12445922619235374844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368278 (A116734 (n + 1)).toNat

end

end A228021.P12445922619235374844

/-! ## A228021.P9011612281223860044

`A000040(A072292((2*n-1)*4^n+2)+1)`
-/

namespace A228021.P9011612281223860044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A072292 (((2 * n : ℤ) - 1) * (4 ^ n : ℤ) + 2).toNat + 1).toNat

end

end A228021.P9011612281223860044

/-!
# A228023: Primitive antiharmonic numbers.

The programs for A228023, there is no canonical definition to state claims against.
-/

/-! ## A228023.P9366447027758947194

`A069133(n+1)-A225336(A002939(n))`
-/

namespace A228023.P9366447027758947194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069133 (n + 1) - A225336 (A002939 n).toNat

end

end A228023.P9366447027758947194

/-!
# A228024: Antiharmonic mean of the divisors of A228023(n) (the n-th primitive antiharmonic number).

The programs for A228024, there is no canonical definition to state claims against.
-/

/-! ## A228024.P2033773373344486784

`A158274(A228023(n+1))`
-/

namespace A228024.P2033773373344486784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158274 (A228023 (n + 1)).toNat

end

end A228024.P2033773373344486784

/-! ## A228024.P14390720439539349296

`A176800(A314479(n))`
-/

namespace A228024.P14390720439539349296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176800 (A314479 n).toNat

end

end A228024.P14390720439539349296

/-! ## A228024.P969675495162055386

`A176800(A250120(n)-A032741(n))`
-/

namespace A228024.P969675495162055386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176800 (A250120 n - A032741 n).toNat

end

end A228024.P969675495162055386

/-!
# A228025: a(1) = least k such that 1/2+1/3+1/4+1/5 < H(k) - H(5); a(2) = least k such that H(a(1)) - H(5) < H(k) -H(a(1)), and for n > 2, a(n) = least k such that H(a(n-1)) - H(a(n-2)) > H(k) - H(a(n-1)), where H = harmonic number.

The programs for A228025, the canonical program `A228025.P9421536422606138428` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A228025 has offset 1).

The definition of A228025 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A228025.P10257535540935526932

`ceil((sqrt(3)+2)*a(n-1))+1` with `a(0)=20`
-/

namespace A228025.P10257535540935526932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [20] fun n a =>
  ⌈(Real.sqrt (3 : ℝ) + 2) * (a (n - 1) : ℝ)⌉ + 1

end

end A228025.P10257535540935526932

namespace A228025

/-- `ceil((sqrt(3)+2)*a(n-1))+1` -/
def P10257535540935526932.Spec : Prop :=
  ∀ n, P10257535540935526932.a n = A228025 (n + 1)

end A228025

/-! ## A228025.P9421536422606138428

`5*a(n-1)-5*a(n-2)+a(n-3)` with `a(0)=20, a(1)=76, a(2)=285`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A228025

/-- `5*a(n-1)-5*a(n-2)+a(n-3)` -/
def P9421536422606138428.Spec : Prop :=
  ∀ n, P9421536422606138428.a n = A228025 (n + 1)

theorem P9421536422606138428.correct : P9421536422606138428.Spec := by
  intro n
  simp only [A228025, Nat.add_sub_cancel]

end A228025

/-! ## A228025.P14138892022405327084

`A061278(n+3)`
-/

namespace A228025.P14138892022405327084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061278 (n + 3)

end

end A228025.P14138892022405327084

namespace A228025

/-- `A061278(n+3)` -/
def P14138892022405327084.Spec : Prop :=
  ∀ n, P14138892022405327084.a n = A228025 (n + 1)

end A228025

/-! ## A228025.P12162106170195531825

`A101265(n+4)-1`
-/

namespace A228025.P12162106170195531825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101265 (n + 4) - 1

end

end A228025.P12162106170195531825

namespace A228025

/-- `A101265(n+4)-1` -/
def P12162106170195531825.Spec : Prop :=
  ∀ n, P12162106170195531825.a n = A228025 (n + 1)

end A228025

/-! ## A228025.P15322162999277193528

`A101879(n+4)-1`
-/

namespace A228025.P15322162999277193528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101879 (n + 4) - 1

end

end A228025.P15322162999277193528

namespace A228025

/-- `A101879(n+4)-1` -/
def P15322162999277193528.Spec : Prop :=
  ∀ n, P15322162999277193528.a n = A228025 (n + 1)

end A228025

/-! ## A228025.P9458756176752244570

`record[A061278(abs(3-n))]`
-/

namespace A228025.P9458756176752244570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061278 |3 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A228025.P9458756176752244570

namespace A228025

/-- `record[A061278(abs(3-n))]` -/
def P9458756176752244570.Spec : Prop :=
  ∀ n, P9458756176752244570.a n = A228025 (n + 1)

end A228025

/-! ## A228025.P15236866102844572726

`∑[A010905(n+1)]+5`
-/

namespace A228025.P15236866102844572726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010905 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 5

end

end A228025.P15236866102844572726

namespace A228025

/-- `∑[A010905(n+1)]+5` -/
def P15236866102844572726.Spec : Prop :=
  ∀ n, P15236866102844572726.a n = A228025 (n + 1)

end A228025

/-! ## A228025.P1356074587938221134

`∑[A001353(n+3)]+5`
-/

namespace A228025.P1356074587938221134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001353 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 5

end

end A228025.P1356074587938221134

namespace A228025

/-- `∑[A001353(n+3)]+5` -/
def P1356074587938221134.Spec : Prop :=
  ∀ n, P1356074587938221134.a n = A228025 (n + 1)

end A228025

/-! ## A228025.P12017547201757287459

`5-∑[A106707(n+3)]`
-/

namespace A228025.P12017547201757287459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106707 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A228025.P12017547201757287459

namespace A228025

/-- `5-∑[A106707(n+3)]` -/
def P12017547201757287459.Spec : Prop :=
  ∀ n, P12017547201757287459.a n = A228025 (n + 1)

end A228025

/-! ## A228025.P1476564855408891943

`(A001835(n+4)-1)/2`
-/

namespace A228025.P1476564855408891943
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001835 (n + 4) - 1 : ℚ) / 2

end

end A228025.P1476564855408891943

namespace A228025

/-- `(A001835(n+4)-1)/2` -/
def P1476564855408891943.Spec : Prop :=
  ∀ n, P1476564855408891943.a n = (A228025 (n + 1) : ℚ)

end A228025

/-! ## A228025.P14461783099592021128

`A102207(n+1)+A001835(n+2)`
-/

namespace A228025.P14461783099592021128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102207 (n + 1) + A001835 (n + 2)

end

end A228025.P14461783099592021128

namespace A228025

/-- `A102207(n+1)+A001835(n+2)` -/
def P14461783099592021128.Spec : Prop :=
  ∀ n, P14461783099592021128.a n = A228025 (n + 1)

end A228025

/-! ## A228025.P14055590955117193959

`A072335(n+1)+A072335(n+2)`
-/

namespace A228025.P14055590955117193959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072335 (n + 1) + A072335 (n + 2)

end

end A228025.P14055590955117193959

namespace A228025

/-- `A072335(n+1)+A072335(n+2)` -/
def P14055590955117193959.Spec : Prop :=
  ∀ n, P14055590955117193959.a n = A228025 (n + 1)

end A228025

/-! ## A228025.P15725146509567479969

`A054491(n+2)-A102871(n+1)`
-/

namespace A228025.P15725146509567479969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054491 (n + 2) - A102871 (n + 1)

end

end A228025.P15725146509567479969

namespace A228025

/-- `A054491(n+2)-A102871(n+1)` -/
def P15725146509567479969.Spec : Prop :=
  ∀ n, P15725146509567479969.a n = A228025 (n + 1)

end A228025

/-! ## A228025.P5086848480190536115

`A001835(n+3)+A001571(n+2)`
-/

namespace A228025.P5086848480190536115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001835 (n + 3) + A001571 (n + 2)

end

end A228025.P5086848480190536115

namespace A228025

/-- `A001835(n+3)+A001571(n+2)` -/
def P5086848480190536115.Spec : Prop :=
  ∀ n, P5086848480190536115.a n = A228025 (n + 1)

end A228025

/-! ## A228025.P5184680063862778169

`A133161(n+3)+A001353(n+2)`
-/

namespace A228025.P5184680063862778169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133161 (n + 3) + A001353 (n + 2)

end

end A228025.P5184680063862778169

namespace A228025

/-- `A133161(n+3)+A001353(n+2)` -/
def P5184680063862778169.Spec : Prop :=
  ∀ n, P5184680063862778169.a n = A228025 (n + 1)

end A228025

/-! ## A228025.P8321099945400203087

`A263942(n+2)-A082840(n+2)`
-/

namespace A228025.P8321099945400203087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263942 (n + 2) - A082840 (n + 2)

end

end A228025.P8321099945400203087

namespace A228025

/-- `A263942(n+2)-A082840(n+2)` -/
def P8321099945400203087.Spec : Prop :=
  ∀ n, P8321099945400203087.a n = A228025 (n + 1)

end A228025

/-! ## A228025.P11723817733870364305

`A001571(n+3)-A001353(n+3)`
-/

namespace A228025.P11723817733870364305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001571 (n + 3) - A001353 (n + 3)

end

end A228025.P11723817733870364305

namespace A228025

/-- `A001571(n+3)-A001353(n+3)` -/
def P11723817733870364305.Spec : Prop :=
  ∀ n, P11723817733870364305.a n = A228025 (n + 1)

end A228025

/-! ## A228025.P4934804807877418903

`A108412(n+2)*A108412(n+3)`
-/

namespace A228025.P4934804807877418903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108412 (n + 2) * A108412 (n + 3)

end

end A228025.P4934804807877418903

namespace A228025

/-- `A108412(n+2)*A108412(n+3)` -/
def P4934804807877418903.Spec : Prop :=
  ∀ n, P4934804807877418903.a n = A228025 (n + 1)

end A228025

/-! ## A228025.P17632998036533846204

`Δ[A001835(n+3)]-A102871(n+2)`
-/

namespace A228025.P17632998036533846204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001835 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A102871 (n + 2)

end

end A228025.P17632998036533846204

namespace A228025

/-- `Δ[A001835(n+3)]-A102871(n+2)` -/
def P17632998036533846204.Spec : Prop :=
  ∀ n, P17632998036533846204.a n = A228025 (n + 1)

end A228025

/-!
# A228026: Primes of the form 4^k + 3.

The programs for A228026, there is no canonical definition to state claims against.
-/

/-! ## A228026.P14408865805273125047

`4^A089437(n+1)+3`
-/

namespace A228026.P14408865805273125047
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 : ℚ) ^ (A089437 (n + 1) : ℤ) + 3

end

end A228026.P14408865805273125047

/-! ## A228026.P2520027200126691321

`record[A162491(2*(n+1))]`
-/

namespace A228026.P2520027200126691321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162491 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A228026.P2520027200126691321

/-! ## A228026.P806080481608120094

`A253208(A089437(n+1))`
-/

namespace A228026.P806080481608120094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253208 (A089437 (n + 1)).toNat

end

end A228026.P806080481608120094

/-! ## A228026.P2827240514157034338

`A056208(2*A089437(n+1))`
-/

namespace A228026.P2827240514157034338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056208 (2 * A089437 (n + 1)).toNat

end

end A228026.P2827240514157034338

/-! ## A228026.P11996262849323460818

`A062709(2*A089437(n+1))`
-/

namespace A228026.P11996262849323460818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062709 (2 * A089437 (n + 1)).toNat

end

end A228026.P11996262849323460818

/-!
# A228027: Primes of the form 4^k + 9.

The programs for A228027, there is no canonical definition to state claims against.
-/

/-! ## A228027.P1888212846891211618

`4^A217350(n+1)+9`
-/

namespace A228027.P1888212846891211618
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 : ℚ) ^ (A217350 (n + 1) : ℤ) + 9

end

end A228027.P1888212846891211618

/-! ## A228027.P15545926949549707553

`A000302(A217350(n+1))+9`
-/

namespace A228027.P15545926949549707553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000302 (A217350 (n + 1)).toNat + 9

end

end A228027.P15545926949549707553

/-!
# A228029: Primes of the form 5^k + 6.

The programs for A228029, there is no canonical definition to state claims against.
-/

/-! ## A228029.P17127405924543927741

`A178671(A089142(n+1))+11`
-/

namespace A228029.P17127405924543927741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178671 (A089142 (n + 1)).toNat + 11

end

end A228029.P17127405924543927741

/-!
# A228031: Primes of the form 7^k + 10.

The programs for A228031, there is no canonical definition to state claims against.
-/

/-! ## A228031.P6922025607927266751

`A000420(A217132(n+1))+10`
-/

namespace A228031.P6922025607927266751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000420 (A217132 (n + 1)).toNat + 10

end

end A228031.P6922025607927266751

/-! ## A228031.P11556223720043369683

`A253210(lt[A147955(n)%A005185(n+1), 2])+4`
-/

namespace A228031.P11556223720043369683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A147955 n) (A005185 (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253210 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n) + 4

end

end A228031.P11556223720043369683

/-! ## A228031.P9310013348848606396

`p?[7^n+10]`
-/

namespace A228031.P9310013348848606396
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 ^ n + 10

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A228031.P9310013348848606396

/-!
# A228032: Primes of the form 8^k + 3.

The programs for A228032, there is no canonical definition to state claims against.
-/

/-! ## A228032.P16054662672409600757

`record[A162491(3*(n+1))]`
-/

namespace A228032.P16054662672409600757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162491 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A228032.P16054662672409600757

/-! ## A228032.P7434843410455672798

`∩[A057733(n+1), A358079(n+1)]`
-/

namespace A228032.P7434843410455672798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057733 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358079 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A228032.P7434843410455672798

/-! ## A228032.P15838385174563072004

`∩[A038484(n+1)+2, A239712(n+1)]`
-/

namespace A228032.P15838385174563072004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038484 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239712 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A228032.P15838385174563072004

/-!
# A228034: Primes of the form 9^k + 2.

The programs for A228034, there is no canonical definition to state claims against.
-/

/-! ## A228034.P9454908475887380093

`A062396(A090649(n+1))+1`
-/

namespace A228034.P9454908475887380093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062396 (A090649 (n + 1)).toNat + 1

end

end A228034.P9454908475887380093

/-! ## A228034.P10818687157172989495

`A080443(2*A090649(n+1))`
-/

namespace A228034.P10818687157172989495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080443 (2 * A090649 (n + 1)).toNat

end

end A228034.P10818687157172989495

/-! ## A228034.P9423187519378475954

`A168607(2*A090649(n+1))`
-/

namespace A228034.P9423187519378475954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168607 (2 * A090649 (n + 1)).toNat

end

end A228034.P9423187519378475954

/-! ## A228034.P10979844189836240914

`A080443(eq[A019431(n), A123359(n)])`
-/

namespace A228034.P10979844189836240914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019431 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123359 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080443 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A228034.P10979844189836240914

/-! ## A228034.P5737352028430124606

`A080443(A090649(n+1)+A090649(n+1))`
-/

namespace A228034.P5737352028430124606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080443 (A090649 (n + 1) + A090649 (n + 1)).toNat

end

end A228034.P5737352028430124606

/-!
# A228035: Triangle T(n,k), read by rows: T(n,k) is the denominator of (1-2^(n-k+1))/(1-2^(k+1)).

The programs for A228035, the canonical program `A228035.P16229329400387151927` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A228035 has offset 0).

The definition of A228035 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A228035.P16229329400387151927

`A143088(n)/gcd(A130328(n)², A143088(n))`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A228035

/-- `A143088(n)/gcd(A130328(n)², A143088(n))` -/
def P16229329400387151927.Spec : Prop :=
  ∀ n, P16229329400387151927.a n = (A228035 n : ℚ)

end A228035

/-! ## A228035.P16238177930530695252

`A000225(A002260(n+1))/A204116(n+1)`
-/

namespace A228035.P16238177930530695252
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000225 (A002260 (n + 1)).toNat : ℚ) / (A204116 (n + 1) : ℚ)

end

end A228035.P16238177930530695252

namespace A228035

/-- `A000225(A002260(n+1))/A204116(n+1)` -/
def P16238177930530695252.Spec : Prop :=
  ∀ n, P16238177930530695252.a n = (A228035 n : ℚ)

end A228035

/-! ## A228035.P5110794791627921453

`A227984(A002378(n)%A080036(n))`
-/

namespace A228035.P5110794791627921453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227984 (Int.tmod (A002378 n) (A080036 n)).toNat

end

end A228035.P5110794791627921453

namespace A228035

/-- `A227984(A002378(n)%A080036(n))` -/
def P5110794791627921453.Spec : Prop :=
  ∀ n, P5110794791627921453.a n = A228035 n

end A228035

/-! ## A228035.P16460676111385312859

`A227984(A061579(n))`
-/

namespace A228035.P16460676111385312859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227984 (A061579 n).toNat

end

end A228035.P16460676111385312859

namespace A228035

/-- `A227984(A061579(n))` -/
def P16460676111385312859.Spec : Prop :=
  ∀ n, P16460676111385312859.a n = A228035 n

end A228035

/-! ## A228035.P5375918797722820165

`A227984(A114327(n)+n)`
-/

namespace A228035.P5375918797722820165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227984 (A114327 n + (n : ℤ)).toNat

end

end A228035.P5375918797722820165

namespace A228035

/-- `A227984(A114327(n)+n)` -/
def P5375918797722820165.Spec : Prop :=
  ∀ n, P5375918797722820165.a n = A228035 n

end A228035

/-! ## A228035.P16970307891419595168

`A227984(A038722(n+1)-1)`
-/

namespace A228035.P16970307891419595168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227984 (A038722 (n + 1) - 1).toNat

end

end A228035.P16970307891419595168

namespace A228035

/-- `A227984(A038722(n+1)-1)` -/
def P16970307891419595168.Spec : Prop :=
  ∀ n, P16970307891419595168.a n = A228035 n

end A228035

/-! ## A228035.P6664935723098153032

`A000203(A059268(n))/A204116(n+1)`
-/

namespace A228035.P6664935723098153032
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (A059268 n).toNat : ℚ) / (A204116 (n + 1) : ℚ)

end

end A228035.P6664935723098153032

namespace A228035

/-- `A000203(A059268(n))/A204116(n+1)` -/
def P6664935723098153032.Spec : Prop :=
  ∀ n, P6664935723098153032.a n = (A228035 n : ℚ)

end A228035

/-! ## A228035.P17378504008993296777

`gcd(A043569(n+1), A360965(n+1))`
-/

namespace A228035.P17378504008993296777
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A043569 (n + 1)) (A360965 (n + 1))

end

end A228035.P17378504008993296777

namespace A228035

/-- `gcd(A043569(n+1), A360965(n+1))` -/
def P17378504008993296777.Spec : Prop :=
  ∀ n, (P17378504008993296777.a n : ℤ) = A228035 n

end A228035

/-!
# A228036: (10^n)-th primitive antiharmonic number.

The programs for A228036, there is no canonical definition to state claims against.
-/

/-! ## A228036.P6274976431306146156

`A228023(10^n)`
-/

namespace A228036.P6274976431306146156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228023 (10 ^ n)

end

end A228036.P6274976431306146156

/-!
# A228037: Odd-indexed terms of Agoh's congruence A046094: a(n) is conjectured to be 1 iff 2n+1 is prime.

The programs for A228037, there is no canonical definition to state claims against.
-/

/-! ## A228037.P10711644887130432940

`A046094(Δ[n²])`
-/

namespace A228037.P10711644887130432940
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046094 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A228037.P10711644887130432940

/-! ## A228037.P1828442469211521665

`A046094(2*n+1)%(2*n+1)`
-/

namespace A228037.P1828442469211521665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A046094 (2 * n + 1)) (2 * n + 1 : ℤ)

end

end A228037.P1828442469211521665

/-! ## A228037.P14837041681505028196

`filter[A046094(2*n+1), A267579(#)]`
-/

namespace A228037.P14837041681505028196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046094 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267579 (f1 j).toNat = 1) n)

end

end A228037.P14837041681505028196

/-! ## A228037.P8864029353619066644

`gcd(A159075(n)², A046094(2*n+1))`
-/

namespace A228037.P8864029353619066644
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A159075 n ^ 2) (A046094 (2 * n + 1))

end

end A228037.P8864029353619066644

/-! ## A228037.P3385228841702182661

`-(A046094(A005843(n)+1)/(1-4/2))`
-/

namespace A228037.P3385228841702182661
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  -((A046094 (A005843 n + 1).toNat : ℚ) / (1 - (4 : ℚ) / 2))

end

end A228037.P3385228841702182661

/-! ## A228037.P9572210098164982895

`A158118(A070939(n))+A046094(n+1+n)`
-/

namespace A228037.P9572210098164982895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158118 (A070939 n).toNat + A046094 (n + 1 + n)

end

end A228037.P9572210098164982895

/-! ## A228037.P1566925830847020128

`A046094(A005843(n)+1)/A001221(A001316(n))!`
-/

namespace A228037.P1566925830847020128
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046094 (A005843 n + 1).toNat : ℚ) / (Nat.factorial (A001221 (A001316 n).toNat).toNat : ℚ)

end

end A228037.P1566925830847020128

/-! ## A228037.P12634822227271823260

`A087893(A000961(n+1))+A046094(A005843(n)+1)`
-/

namespace A228037.P12634822227271823260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087893 (A000961 (n + 1)).toNat + A046094 (A005843 n + 1).toNat

end

end A228037.P12634822227271823260

/-! ## A228037.P4500702146915506325

`A063691(A034444(n+1))+A046094(A005843(n)+1)`
-/

namespace A228037.P4500702146915506325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063691 (A034444 (n + 1)).toNat + A046094 (A005843 n + 1).toNat

end

end A228037.P4500702146915506325

/-! ## A228037.P17939288669370512592

`A046094(2*n+1)+A046094(2*(n+2))`
-/

namespace A228037.P17939288669370512592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046094 (2 * n + 1) + A046094 (2 * (n + 2))

end

end A228037.P17939288669370512592

/-!
# A228038: Dimensions in which nonzero Arf-Kervaire invariants exist.

The programs for A228038, the canonical program `A228038.P7226811291591007691` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A228038 has offset 2).

The definition of A228038 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A228038.P7226811291591007691

`2^(n+2)-2`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A228038

/-- `2^(n+2)-2` -/
def P7226811291591007691.Spec : Prop :=
  ∀ n, P7226811291591007691.a n = A228038 (n + 2)

theorem P7226811291591007691.correct : P7226811291591007691.Spec := by
  intro n
  simp only [A228038, Nat.add_sub_cancel]

end A228038

/-!
# A228039: Thue-Morse sequence along the squares: A010060(n^2).

The programs for A228039, the canonical program `A228039.P4227557278893953699` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A228039 has offset 0).

The definition of A228039 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A228039.P4227557278893953699

`A010060(n²)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A228039

/-- `A010060(n²)` -/
def P4227557278893953699.Spec : Prop :=
  ∀ n, P4227557278893953699.a n = A228039 n

theorem P4227557278893953699.correct : P4227557278893953699.Spec := by
  intro n
  simp only [A228039]

end A228039

/-! ## A228039.P14293186985737250017

`A159918(n)%2`
-/

namespace A228039.P14293186985737250017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A159918 n) 2

end

end A228039.P14293186985737250017

namespace A228039

/-- `A159918(n)%2` -/
def P14293186985737250017.Spec : Prop :=
  ∀ n, P14293186985737250017.a n = A228039 n

end A228039

/-! ## A228039.P4135536954703134553

`char[A235331(n+1)]`
-/

namespace A228039.P4135536954703134553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235331 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A228039.P4135536954703134553

namespace A228039

/-- `char[A235331(n+1)]` -/
def P4135536954703134553.Spec : Prop :=
  ∀ n, (P4135536954703134553.a n : ℤ) = A228039 n

end A228039

/-! ## A228039.P3193256072366006422

`∑{digits}[A001737(n), #]%2`
-/

namespace A228039.P3193256072366006422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001737 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum % 2

end

end A228039.P3193256072366006422

namespace A228039

/-- `∑{digits}[A001737(n), #]%2` -/
def P3193256072366006422.Spec : Prop :=
  ∀ n, (P3193256072366006422.a n : ℤ) = A228039 n

end A228039

/-! ## A228039.P18252915644609256601

`A000035(A159918(n))`
-/

namespace A228039.P18252915644609256601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A159918 n).toNat

end

end A228039.P18252915644609256601

namespace A228039

/-- `A000035(A159918(n))` -/
def P18252915644609256601.Spec : Prop :=
  ∀ n, P18252915644609256601.a n = A228039 n

end A228039

/-! ## A228039.P18287036375188770774

`A010873(A159918(n)²)`
-/

namespace A228039.P18287036375188770774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010873 (A159918 n ^ 2).toNat

end

end A228039.P18287036375188770774

namespace A228039

/-- `A010873(A159918(n)²)` -/
def P18287036375188770774.Spec : Prop :=
  ∀ n, P18287036375188770774.a n = A228039 n

end A228039

/-! ## A228039.P201537037772843792

`and(A007664(n), A159918(n))`
-/

namespace A228039.P201537037772843792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A007664 n) (A159918 n)

end

end A228039.P201537037772843792

namespace A228039

/-- `and(A007664(n), A159918(n))` -/
def P201537037772843792.Spec : Prop :=
  ∀ n, P201537037772843792.a n = A228039 n

end A228039

/-! ## A228039.P4876775530016268966

`and(A016760(n), A159918(n))`
-/

namespace A228039.P4876775530016268966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A016760 n) (A159918 n)

end

end A228039.P4876775530016268966

namespace A228039

/-- `and(A016760(n), A159918(n))` -/
def P4876775530016268966.Spec : Prop :=
  ∀ n, P4876775530016268966.a n = A228039 n

end A228039

/-! ## A228039.P2305532696298257453

`and(A016820(n), A159918(n))`
-/

namespace A228039.P2305532696298257453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A016820 n) (A159918 n)

end

end A228039.P2305532696298257453

namespace A228039

/-- `and(A016820(n), A159918(n))` -/
def P2305532696298257453.Spec : Prop :=
  ∀ n, P2305532696298257453.a n = A228039 n

end A228039

/-! ## A228039.P16090418219581320357

`A007814(A159918(n)²+1)`
-/

namespace A228039.P16090418219581320357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A159918 n ^ 2 + 1).toNat

end

end A228039.P16090418219581320357

namespace A228039

/-- `A007814(A159918(n)²+1)` -/
def P16090418219581320357.Spec : Prop :=
  ∀ n, P16090418219581320357.a n = A228039 n

end A228039

/-! ## A228039.P15383860261054550499

`and(A006686(n+1), A159918(n))`
-/

namespace A228039.P15383860261054550499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A006686 (n + 1)) (A159918 n)

end

end A228039.P15383860261054550499

namespace A228039

/-- `and(A006686(n+1), A159918(n))` -/
def P15383860261054550499.Spec : Prop :=
  ∀ n, P15383860261054550499.a n = A228039 n

end A228039

/-! ## A228039.P2262073242813951782

`and(A159918(n), A179645(n+1))`
-/

namespace A228039.P2262073242813951782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A159918 n) (A179645 (n + 1))

end

end A228039.P2262073242813951782

namespace A228039

/-- `and(A159918(n), A179645(n+1))` -/
def P2262073242813951782.Spec : Prop :=
  ∀ n, P2262073242813951782.a n = A228039 n

end A228039

/-! ## A228039.P4301153703133965846

`and(1, A159918(n)²*A008349(n))`
-/

namespace A228039.P4301153703133965846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A159918 n ^ 2 * A008349 n)

end

end A228039.P4301153703133965846

namespace A228039

/-- `and(1, A159918(n)²*A008349(n))` -/
def P4301153703133965846.Spec : Prop :=
  ∀ n, P4301153703133965846.a n = A228039 n

end A228039

/-! ## A228039.P11890424050405572641

`and(A008349(A159918(n+1))², A159918(n))`
-/

namespace A228039.P11890424050405572641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A008349 (A159918 (n + 1)).toNat ^ 2) (A159918 n)

end

end A228039.P11890424050405572641

namespace A228039

/-- `and(A008349(A159918(n+1))², A159918(n))` -/
def P11890424050405572641.Spec : Prop :=
  ∀ n, P11890424050405572641.a n = A228039 n

end A228039

/-! ## A228039.P7385614955534194542

`and(A000051(A159918(n)²), A159918(n))`
-/

namespace A228039.P7385614955534194542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000051 (A159918 n ^ 2).toNat) (A159918 n)

end

end A228039.P7385614955534194542

namespace A228039

/-- `and(A000051(A159918(n)²), A159918(n))` -/
def P7385614955534194542.Spec : Prop :=
  ∀ n, P7385614955534194542.a n = A228039 n

end A228039

/-! ## A228039.P11267019477743776389

`and(A159918(n), A195744(A159918(n)²))`
-/

namespace A228039.P11267019477743776389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A159918 n) (A195744 (A159918 n ^ 2).toNat)

end

end A228039.P11267019477743776389

namespace A228039

/-- `and(A159918(n), A195744(A159918(n)²))` -/
def P11267019477743776389.Spec : Prop :=
  ∀ n, P11267019477743776389.a n = A228039 n

end A228039

/-! ## A228039.P164348589563172235

`and(A159918(n), A196657(A159918(n)²))`
-/

namespace A228039.P164348589563172235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A159918 n) (A196657 (A159918 n ^ 2).toNat)

end

end A228039.P164348589563172235

namespace A228039

/-- `and(A159918(n), A196657(A159918(n)²))` -/
def P164348589563172235.Spec : Prop :=
  ∀ n, P164348589563172235.a n = A228039 n

end A228039

/-! ## A228039.P13919271364286039941

`and(A159918(n), A206371(A159918(n)²))`
-/

namespace A228039.P13919271364286039941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A159918 n) (A206371 (A159918 n ^ 2).toNat)

end

end A228039.P13919271364286039941

namespace A228039

/-- `and(A159918(n), A206371(A159918(n)²))` -/
def P13919271364286039941.Spec : Prop :=
  ∀ n, P13919271364286039941.a n = A228039 n

end A228039

/-! ## A228039.P719305334736981105

`and(A159918(n), A305262(A159918(n)²))`
-/

namespace A228039.P719305334736981105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A159918 n) (A305262 (A159918 n ^ 2).toNat)

end

end A228039.P719305334736981105

namespace A228039

/-- `and(A159918(n), A305262(A159918(n)²))` -/
def P719305334736981105.Spec : Prop :=
  ∀ n, P719305334736981105.a n = A228039 n

end A228039

/-!
# A228053: A triangle formed like Pascal's triangle, but with (-1)^(n+1) on the borders instead of 1.

The programs for A228053, there is no canonical definition to state claims against.
-/

/-! ## A228053.P1538467936671747086

`A245618(n)-A000122(A300804(n+1))`
-/

namespace A228053.P1538467936671747086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245618 n - A000122 (A300804 (n + 1)).toNat

end

end A228053.P1538467936671747086

/-! ## A228053.P11055874538478703978

`A307433(n)-A000122(A301443(n+1))`
-/

namespace A228053.P11055874538478703978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307433 n - A000122 (A301443 (n + 1)).toNat

end

end A228053.P11055874538478703978

/-! ## A228053.P10175733248454767974

`A307433(n)-A000122(A302741(n+1))`
-/

namespace A228053.P10175733248454767974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307433 n - A000122 (A302741 (n + 1)).toNat

end

end A228053.P10175733248454767974

/-! ## A228053.P1108201552787383530

`A033999(A202409(n+1))*A307433(n)`
-/

namespace A228053.P1108201552787383530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A202409 (n + 1)).toNat * A307433 n

end

end A228053.P1108201552787383530

/-!
# A228054: Lower twin prime-indexed primes in the sequence of prime(prime(i)).

The programs for A228054, there is no canonical definition to state claims against.
-/

/-! ## A228054.P14892780006708821224

`A228055(n+1)-6`
-/

namespace A228054.P14892780006708821224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228055 (n + 1) - 6

end

end A228054.P14892780006708821224

/-! ## A228054.P14596638776157897505

`A064988(A261533(n+1))`
-/

namespace A228054.P14596638776157897505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064988 (A261533 (n + 1)).toNat

end

end A228054.P14596638776157897505

/-! ## A228054.P5261877452770166062

`A008578(A261533(n+1)+1)`
-/

namespace A228054.P5261877452770166062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A261533 (n + 1) + 1).toNat

end

end A228054.P5261877452770166062

/-!
# A228055: Upper twin prime-indexed primes in the sequence of prime(prime(i)).

The programs for A228055, there is no canonical definition to state claims against.
-/

/-! ## A228055.P14269557828270182484

`A228054(n+1)+6`
-/

namespace A228055.P14269557828270182484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228054 (n + 1) + 6

end

end A228055.P14269557828270182484

/-! ## A228055.P4752438370492036083

`record[root(A057473(n+1), A096474(n+1)-5)]`
-/

namespace A228055.P4752438370492036083
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A057473 (n + 1) : ℝ) ^ (1 / (A096474 (n + 1) - 5 : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A228055.P4752438370492036083

/-! ## A228055.P10645042286005860943

`A064988(A261533(n+1)+2)`
-/

namespace A228055.P10645042286005860943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064988 (A261533 (n + 1) + 2).toNat

end

end A228055.P10645042286005860943

/-!
# A228056: Numbers of the form p * m^2, where p is prime and m > 1.

The programs for A228056, the canonical program `A228056.P11606014909607671869` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A228056 has offset 1).

The definition of A228056 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4902 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A228056.P5686803685630925393

`filter[A376715(n+1), A066829(#)]`
-/

namespace A228056.P5686803685630925393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376715 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066829 (f1 j).toNat = 1) n)

end

end A228056.P5686803685630925393

namespace A228056

/-- `filter[A376715(n+1), A066829(#)]` -/
def P5686803685630925393.Spec : Prop :=
  ∀ n, P5686803685630925393.a n = A228056 (n + 1)

end A228056

/-! ## A228056.P13777945257048871667

`filter[A376715(n+1), A358769(#)]`
-/

namespace A228056.P13777945257048871667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376715 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358769 (f1 j).toNat = 1) n)

end

end A228056.P13777945257048871667

namespace A228056

/-- `filter[A376715(n+1), A358769(#)]` -/
def P13777945257048871667.Spec : Prop :=
  ∀ n, P13777945257048871667.a n = A228056 (n + 1)

end A228056

/-! ## A228056.P6114368934184520736

`filter[A376715(n+1), A049240(#)]`
-/

namespace A228056.P6114368934184520736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376715 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A049240 (f1 j).toNat = 1) n)

end

end A228056.P6114368934184520736

namespace A228056

/-- `filter[A376715(n+1), A049240(#)]` -/
def P6114368934184520736.Spec : Prop :=
  ∀ n, P6114368934184520736.a n = A228056 (n + 1)

end A228056

/-! ## A228056.P3822918141882331576

`eq[A001221(A007913(n+1)), A005171(n+1)]+1`
-/

namespace A228056.P3822918141882331576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A007913 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005171 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A228056.P3822918141882331576

namespace A228056

/-- `eq[A001221(A007913(n+1)), A005171(n+1)]+1` -/
def P3822918141882331576.Spec : Prop :=
  ∀ n, (P3822918141882331576.a n : ℤ) = A228056 (n + 1)

end A228056

/-! ## A228056.P11606014909607671869

`filter[A229125(n+1), A005171(#)]`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A228056

/-- `filter[A229125(n+1), A005171(#)]` -/
def P11606014909607671869.Spec : Prop :=
  ∀ n, P11606014909607671869.a n = A228056 (n + 1)

theorem P11606014909607671869.correct : P11606014909607671869.Spec := by
  intro n
  simp only [A228056, Nat.add_sub_cancel]

end A228056

/-! ## A228056.P15498613581450660866

`filter[A229125(n+1), A066247(#)]`
-/

namespace A228056.P15498613581450660866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229125 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A228056.P15498613581450660866

namespace A228056

/-- `filter[A229125(n+1), A066247(#)]` -/
def P15498613581450660866.Spec : Prop :=
  ∀ n, P15498613581450660866.a n = A228056 (n + 1)

end A228056

/-! ## A228056.P13135910992698568920

`filter[A229125(n+1), A087049(#)]`
-/

namespace A228056.P13135910992698568920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229125 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A087049 (f1 j).toNat = 1) n)

end

end A228056.P13135910992698568920

namespace A228056

/-- `filter[A229125(n+1), A087049(#)]` -/
def P13135910992698568920.Spec : Prop :=
  ∀ n, P13135910992698568920.a n = A228056 (n + 1)

end A228056

/-! ## A228056.P5757231706331411182

`∩[A013929(n+1), A229125(n+1)]`
-/

namespace A228056.P5757231706331411182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229125 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A228056.P5757231706331411182

namespace A228056

/-- `∩[A013929(n+1), A229125(n+1)]` -/
def P5757231706331411182.Spec : Prop :=
  ∀ n, (P5757231706331411182.a n : ℤ) = A228056 (n + 1)

end A228056

/-! ## A228056.P10954371859641184750

`filter[A051144(n+1), A358769(#)]`
-/

namespace A228056.P10954371859641184750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051144 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358769 (f1 j).toNat = 1) n)

end

end A228056.P10954371859641184750

namespace A228056

/-- `filter[A051144(n+1), A358769(#)]` -/
def P10954371859641184750.Spec : Prop :=
  ∀ n, P10954371859641184750.a n = A228056 (n + 1)

end A228056

/-! ## A228056.P11150130711426854502

`∩[A051144(n+1), A229125(n+1)]`
-/

namespace A228056.P11150130711426854502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229125 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A228056.P11150130711426854502

namespace A228056

/-- `∩[A051144(n+1), A229125(n+1)]` -/
def P11150130711426854502.Spec : Prop :=
  ∀ n, (P11150130711426854502.a n : ℤ) = A228056 (n + 1)

end A228056

/-! ## A228056.P14638480485294693785

`∩[A051144(n+1), A265640(n+1)]`
-/

namespace A228056.P14638480485294693785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265640 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A228056.P14638480485294693785

namespace A228056

/-- `∩[A051144(n+1), A265640(n+1)]` -/
def P14638480485294693785.Spec : Prop :=
  ∀ n, (P14638480485294693785.a n : ℤ) = A228056 (n + 1)

end A228056

/-! ## A228056.P16200275291697877150

`filter[A013929(n+1), A358769(#)]`
-/

namespace A228056.P16200275291697877150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358769 (f1 j).toNat = 1) n)

end

end A228056.P16200275291697877150

namespace A228056

/-- `filter[A013929(n+1), A358769(#)]` -/
def P16200275291697877150.Spec : Prop :=
  ∀ n, P16200275291697877150.a n = A228056 (n + 1)

end A228056

/-! ## A228056.P15996997077576165034

`filter[A080756(n+1), A358769(#)]`
-/

namespace A228056.P15996997077576165034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080756 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358769 (f1 j).toNat = 1) n)

end

end A228056.P15996997077576165034

namespace A228056

/-- `filter[A080756(n+1), A358769(#)]` -/
def P15996997077576165034.Spec : Prop :=
  ∀ n, P15996997077576165034.a n = A228056 (n + 1)

end A228056

/-! ## A228056.P11246866358889570467

`filter[A162966(n+1), A358769(#)]`
-/

namespace A228056.P11246866358889570467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162966 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358769 (f1 j).toNat = 1) n)

end

end A228056.P11246866358889570467

namespace A228056

/-- `filter[A162966(n+1), A358769(#)]` -/
def P11246866358889570467.Spec : Prop :=
  ∀ n, P11246866358889570467.a n = A228056 (n + 1)

end A228056

/-! ## A228056.P409114319970202953

`∩[A080756(n+1), A229125(n+1)]`
-/

namespace A228056.P409114319970202953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080756 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229125 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A228056.P409114319970202953

namespace A228056

/-- `∩[A080756(n+1), A229125(n+1)]` -/
def P409114319970202953.Spec : Prop :=
  ∀ n, (P409114319970202953.a n : ℤ) = A228056 (n + 1)

end A228056

/-! ## A228056.P7021552923725390222

`filter[A354360(n+3), A358769(#)]`
-/

namespace A228056.P7021552923725390222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354360 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358769 (f1 j).toNat = 1) n)

end

end A228056.P7021552923725390222

namespace A228056

/-- `filter[A354360(n+3), A358769(#)]` -/
def P7021552923725390222.Spec : Prop :=
  ∀ n, P7021552923725390222.a n = A228056 (n + 1)

end A228056

/-! ## A228056.P5670162584766908405

`filter[A046339(n+1), A340372(#)]`
-/

namespace A228056.P5670162584766908405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046339 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340372 (f1 j).toNat = 1) n)

end

end A228056.P5670162584766908405

namespace A228056

/-- `filter[A046339(n+1), A340372(#)]` -/
def P5670162584766908405.Spec : Prop :=
  ∀ n, P5670162584766908405.a n = A228056 (n + 1)

end A228056

/-! ## A228056.P8410794408932969991

`filter[A046339(n+1), A358769(#)]`
-/

namespace A228056.P8410794408932969991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046339 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358769 (f1 j).toNat = 1) n)

end

end A228056.P8410794408932969991

namespace A228056

/-- `filter[A046339(n+1), A358769(#)]` -/
def P8410794408932969991.Spec : Prop :=
  ∀ n, P8410794408932969991.a n = A228056 (n + 1)

end A228056

/-! ## A228056.P6558407663120943133

`∩[A046339(n+1), A229125(n+1)]`
-/

namespace A228056.P6558407663120943133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046339 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229125 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A228056.P6558407663120943133

namespace A228056

/-- `∩[A046339(n+1), A229125(n+1)]` -/
def P6558407663120943133.Spec : Prop :=
  ∀ n, (P6558407663120943133.a n : ℤ) = A228056 (n + 1)

end A228056

/-! ## A228056.P11321881329622628654

`∩[A046339(n+1), A265640(n+1)]`
-/

namespace A228056.P11321881329622628654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046339 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265640 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A228056.P11321881329622628654

namespace A228056

/-- `∩[A046339(n+1), A265640(n+1)]` -/
def P11321881329622628654.Spec : Prop :=
  ∀ n, (P11321881329622628654.a n : ℤ) = A228056 (n + 1)

end A228056

/-!
# A228057: Odd numbers of the form p * m^2, where p is prime and m > 1.

The programs for A228057, the canonical program `A228057.P6773101563805670888` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A228057 has offset 1).

The definition of A228057 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3626 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A228057.P6773101563805670888

`∩[A053850(n+1), A228056(n+1)]`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A228057

/-- `∩[A053850(n+1), A228056(n+1)]` -/
def P6773101563805670888.Spec : Prop :=
  ∀ n, (P6773101563805670888.a n : ℤ) = A228057 (n + 1)

theorem P6773101563805670888.correct : P6773101563805670888.Spec := by
  intro n
  simp only [A228057, Nat.add_sub_cancel]

end A228057

/-! ## A228057.P1652744605193063356

`record[A000265(A228056(n+5))]`
-/

namespace A228057.P1652744605193063356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A228056 (n + 5)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A228057.P1652744605193063356

namespace A228057

/-- `record[A000265(A228056(n+5))]` -/
def P1652744605193063356.Spec : Prop :=
  ∀ n, P1652744605193063356.a n = A228057 (n + 1)

end A228057

/-! ## A228057.P5272211032258445079

`filter[A053850(n+1), A358769(#)]`
-/

namespace A228057.P5272211032258445079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053850 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358769 (f1 j).toNat = 1) n)

end

end A228057.P5272211032258445079

namespace A228057

/-- `filter[A053850(n+1), A358769(#)]` -/
def P5272211032258445079.Spec : Prop :=
  ∀ n, P5272211032258445079.a n = A228057 (n + 1)

end A228057

/-! ## A228057.P10599452973039954518

`filter[A053850(n+1), A358770(#)]`
-/

namespace A228057.P10599452973039954518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053850 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358770 (f1 j).toNat = 1) n)

end

end A228057.P10599452973039954518

namespace A228057

/-- `filter[A053850(n+1), A358770(#)]` -/
def P10599452973039954518.Spec : Prop :=
  ∀ n, P10599452973039954518.a n = A228057 (n + 1)

end A228057

/-! ## A228057.P2612148100755507895

`filter[A228056(n+1), A379952(#)]`
-/

namespace A228057.P2612148100755507895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228056 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379952 (f1 j).toNat = 1) n)

end

end A228057.P2612148100755507895

namespace A228057

/-- `filter[A228056(n+1), A379952(#)]` -/
def P2612148100755507895.Spec : Prop :=
  ∀ n, P2612148100755507895.a n = A228057 (n + 1)

end A228057

/-! ## A228057.P2545264070785197727

`filter[A046340(n+1), A358769(#)]`
-/

namespace A228057.P2545264070785197727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046340 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358769 (f1 j).toNat = 1) n)

end

end A228057.P2545264070785197727

namespace A228057

/-- `filter[A046340(n+1), A358769(#)]` -/
def P2545264070785197727.Spec : Prop :=
  ∀ n, P2545264070785197727.a n = A228057 (n + 1)

end A228057

/-! ## A228057.P17571954076904721236

`filter[A046340(n+1), A358770(#)]`
-/

namespace A228057.P17571954076904721236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046340 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358770 (f1 j).toNat = 1) n)

end

end A228057.P17571954076904721236

namespace A228057

/-- `filter[A046340(n+1), A358770(#)]` -/
def P17571954076904721236.Spec : Prop :=
  ∀ n, P17571954076904721236.a n = A228057 (n + 1)

end A228057

/-! ## A228057.P15347150868372763327

`∩[A046340(n+1), A228056(n+1)]`
-/

namespace A228057.P15347150868372763327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046340 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228056 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A228057.P15347150868372763327

namespace A228057

/-- `∩[A046340(n+1), A228056(n+1)]` -/
def P15347150868372763327.Spec : Prop :=
  ∀ n, (P15347150868372763327.a n : ℤ) = A228057 (n + 1)

end A228057

/-! ## A228057.P14116318541639066943

`∩[A046340(n+1), A376715(n+1)]`
-/

namespace A228057.P14116318541639066943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046340 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376715 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A228057.P14116318541639066943

namespace A228057

/-- `∩[A046340(n+1), A376715(n+1)]` -/
def P14116318541639066943.Spec : Prop :=
  ∀ n, (P14116318541639066943.a n : ℤ) = A228057 (n + 1)

end A228057

/-! ## A228057.P5443941564363761578

`filter[A046340(n+1), A340372(#)]`
-/

namespace A228057.P5443941564363761578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046340 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340372 (f1 j).toNat = 1) n)

end

end A228057.P5443941564363761578

namespace A228057

/-- `filter[A046340(n+1), A340372(#)]` -/
def P5443941564363761578.Spec : Prop :=
  ∀ n, P5443941564363761578.a n = A228057 (n + 1)

end A228057

/-! ## A228057.P9102485474779718725

`filter[A228056(n+1), A323158(#)]`
-/

namespace A228057.P9102485474779718725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228056 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323158 (f1 j).toNat = 1) n)

end

end A228057.P9102485474779718725

namespace A228057

/-- `filter[A228056(n+1), A323158(#)]` -/
def P9102485474779718725.Spec : Prop :=
  ∀ n, P9102485474779718725.a n = A228057 (n + 1)

end A228057

/-! ## A228057.P10728558089769077239

`filter[A228056(n+1), A324908(#)]`
-/

namespace A228057.P10728558089769077239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228056 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A324908 (f1 j).toNat = 1) n)

end

end A228057.P10728558089769077239

namespace A228057

/-- `filter[A228056(n+1), A324908(#)]` -/
def P10728558089769077239.Spec : Prop :=
  ∀ n, P10728558089769077239.a n = A228057 (n + 1)

end A228057

/-! ## A228057.P15710489923585051645

`filter[A228056(n+1), A353558(#)]`
-/

namespace A228057.P15710489923585051645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228056 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353558 (f1 j).toNat = 1) n)

end

end A228057.P15710489923585051645

namespace A228057

/-- `filter[A228056(n+1), A353558(#)]` -/
def P15710489923585051645.Spec : Prop :=
  ∀ n, P15710489923585051645.a n = A228057 (n + 1)

end A228057

/-! ## A228057.P9566555898292767990

`filter[A228056(n+1), A353569(#)]`
-/

namespace A228057.P9566555898292767990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228056 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353569 (f1 j).toNat = 1) n)

end

end A228057.P9566555898292767990

namespace A228057

/-- `filter[A228056(n+1), A353569(#)]` -/
def P9566555898292767990.Spec : Prop :=
  ∀ n, P9566555898292767990.a n = A228057 (n + 1)

end A228057

/-! ## A228057.P11719597856113732906

`filter[A274720(n+1), A358769(#)]`
-/

namespace A228057.P11719597856113732906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274720 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358769 (f1 j).toNat = 1) n)

end

end A228057.P11719597856113732906

namespace A228057

/-- `filter[A274720(n+1), A358769(#)]` -/
def P11719597856113732906.Spec : Prop :=
  ∀ n, P11719597856113732906.a n = A228057 (n + 1)

end A228057

/-! ## A228057.P9557603801673608226

`filter[A274720(n+1), A358770(#)]`
-/

namespace A228057.P9557603801673608226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274720 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358770 (f1 j).toNat = 1) n)

end

end A228057.P9557603801673608226

namespace A228057

/-- `filter[A274720(n+1), A358770(#)]` -/
def P9557603801673608226.Spec : Prop :=
  ∀ n, P9557603801673608226.a n = A228057 (n + 1)

end A228057

/-! ## A228057.P3315466078162579331

`∩[A228056(n+1), A274720(n+1)]`
-/

namespace A228057.P3315466078162579331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228056 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274720 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A228057.P3315466078162579331

namespace A228057

/-- `∩[A228056(n+1), A274720(n+1)]` -/
def P3315466078162579331.Spec : Prop :=
  ∀ n, (P3315466078162579331.a n : ℤ) = A228057 (n + 1)

end A228057

/-! ## A228057.P8998436937948924431

`filter[A139392(n+1), A358769(#)]`
-/

namespace A228057.P8998436937948924431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139392 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358769 (f1 j).toNat = 1) n)

end

end A228057.P8998436937948924431

namespace A228057

/-- `filter[A139392(n+1), A358769(#)]` -/
def P8998436937948924431.Spec : Prop :=
  ∀ n, P8998436937948924431.a n = A228057 (n + 1)

end A228057

/-! ## A228057.P10179784870803171034

`filter[A139392(n+1), A358770(#)]`
-/

namespace A228057.P10179784870803171034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139392 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358770 (f1 j).toNat = 1) n)

end

end A228057.P10179784870803171034

namespace A228057

/-- `filter[A139392(n+1), A358770(#)]` -/
def P10179784870803171034.Spec : Prop :=
  ∀ n, P10179784870803171034.a n = A228057 (n + 1)

end A228057

/-! ## A228057.P1659979761358524472

`∩[A139392(n+1), A228056(n+1)]`
-/

namespace A228057.P1659979761358524472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139392 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228056 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A228057.P1659979761358524472

namespace A228057

/-- `∩[A139392(n+1), A228056(n+1)]` -/
def P1659979761358524472.Spec : Prop :=
  ∀ n, (P1659979761358524472.a n : ℤ) = A228057 (n + 1)

end A228057

/-!
# A228058: Odd numbers of the form p^(1+4k) * r^2, where p is prime of the form 1+4m, r > 1, and gcd(p,r) = 1. (Euler's criteria for odd perfect numbers).

The programs for A228058, there is no canonical definition to state claims against.
-/

/-! ## A228058.P15010154326935524946

`A325379(n+1)+A325377(n+1)`
-/

namespace A228058.P15010154326935524946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325379 (n + 1) + A325377 (n + 1)

end

end A228058.P15010154326935524946

/-! ## A228058.P17150956534168860164

`A389164(n+1)+A325319(n+1)`
-/

namespace A228058.P17150956534168860164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389164 (n + 1) + A325319 (n + 1)

end

end A228058.P17150956534168860164

/-! ## A228058.P12060373622014030823

`A389096(n+1)-A325320(n+1)`
-/

namespace A228058.P12060373622014030823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389096 (n + 1) - A325320 (n + 1)

end

end A228058.P12060373622014030823

/-! ## A228058.P6507253405616020441

`A389203(n+1)-A325377(n+1)`
-/

namespace A228058.P6507253405616020441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389203 (n + 1) - A325377 (n + 1)

end

end A228058.P6507253405616020441

/-! ## A228058.P7504002844718537212

`A389198(n+1)-A325823(n+1)`
-/

namespace A228058.P7504002844718537212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389198 (n + 1) - A325823 (n + 1)

end

end A228058.P7504002844718537212

/-! ## A228058.P10378928314058296116

`A389163(n+1)-A389217(n+1)`
-/

namespace A228058.P10378928314058296116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389163 (n + 1) - A389217 (n + 1)

end

end A228058.P10378928314058296116

/-! ## A228058.P1030552665106353540

`A389206(n+1)-A389207(n+1)`
-/

namespace A228058.P1030552665106353540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389206 (n + 1) - A389207 (n + 1)

end

end A228058.P1030552665106353540

/-! ## A228058.P13402122122053660622

`A388997(n+1)*A389167(n+1)`
-/

namespace A228058.P13402122122053660622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388997 (n + 1) * A389167 (n + 1)

end

end A228058.P13402122122053660622

/-! ## A228058.P2212962292421008149

`A389160(n+1)*A389161(n+1)`
-/

namespace A228058.P2212962292421008149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389160 (n + 1) * A389161 (n + 1)

end

end A228058.P2212962292421008149

/-! ## A228058.P14677741692776857076

`∪[A351574(n+1), A386429(n+1)]`
-/

namespace A228058.P14677741692776857076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351574 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386429 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A228058.P14677741692776857076

/-! ## A228058.P3092983974272130374

`A325320(n+1)+A389164(n+1)+A325379(n+1)`
-/

namespace A228058.P3092983974272130374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325320 (n + 1) + (A389164 (n + 1) + A325379 (n + 1))

end

end A228058.P3092983974272130374

/-! ## A228058.P10724151673991601775

`A325319(n+1)+A325377(n+1)-A325320(n+1)`
-/

namespace A228058.P10724151673991601775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325319 (n + 1) + (A325377 (n + 1) - A325320 (n + 1))

end

end A228058.P10724151673991601775

/-! ## A228058.P16719095829931591413

`A325377(n+1)+A325824(n+1)-A325823(n+1)`
-/

namespace A228058.P16719095829931591413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325377 (n + 1) + (A325824 (n + 1) - A325823 (n + 1))

end

end A228058.P16719095829931591413

/-! ## A228058.P10927459592066471784

`A325378(n+1)+A389164(n+1)-A325320(n+1)`
-/

namespace A228058.P10927459592066471784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325378 (n + 1) + (A389164 (n + 1) - A325320 (n + 1))

end

end A228058.P10927459592066471784

/-! ## A228058.P7820717030459684341

`A325377(n+1)+A325378(n+1)-2*A325320(n+1)`
-/

namespace A228058.P7820717030459684341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325377 (n + 1) + (A325378 (n + 1) - 2 * A325320 (n + 1))

end

end A228058.P7820717030459684341

/-! ## A228058.P2469009812709835816

`∩[A191218(n+1), A389459(n+1)]`
-/

namespace A228058.P2469009812709835816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191218 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389459 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A228058.P2469009812709835816

/-! ## A228058.P12119024348967977748

`∩[A191218(n+1), A389458(n+1)]`
-/

namespace A228058.P12119024348967977748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191218 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389458 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A228058.P12119024348967977748

/-! ## A228058.P15584879023657373434

`∩[A191218(n+1), A388983(n+1)]`
-/

namespace A228058.P15584879023657373434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191218 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388983 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A228058.P15584879023657373434

/-!
# A228061: Numbers k such that k^2 = sigma(m) for some m.

The programs for A228061, there is no canonical definition to state claims against.
-/

/-! ## A228061.P6403473441259882765

`sqrt(A038688(n+1))`
-/

namespace A228061.P6403473441259882765
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A038688 (n + 1) : ℝ)

end

end A228061.P6403473441259882765

/-! ## A228061.P2778211786675560842

`A000027(root(A038688(n+1), 2))`
-/

namespace A228061.P2778211786675560842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.roundAway ((A038688 (n + 1) : ℝ) ^ (1 / (2 : ℝ)))).toNat

end

end A228061.P2778211786675560842

/-! ## A228061.P3022381322444483358

`root(A038688(n+1), gcd(2, A000122(n)))`
-/

namespace A228061.P3022381322444483358
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A038688 (n + 1) : ℝ) ^ (1 / (Int.gcd 2 (A000122 n) : ℝ))

end

end A228061.P3022381322444483358

/-! ## A228061.P4852839493478373432

`root(A038688(n+1), 2%A039915(n+1)²)`
-/

namespace A228061.P4852839493478373432
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A038688 (n + 1) : ℝ) ^ (1 / (Int.tmod 2 (A039915 (n + 1) ^ 2) : ℝ))

end

end A228061.P4852839493478373432

/-! ## A228061.P484102444546275161

`A038688(n+1)^(A008574(n)/A008574(2*n))`
-/

namespace A228061.P484102444546275161
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A038688 (n + 1) : ℝ) ^ ((A008574 n : ℚ) / (A008574 (2 * n) : ℚ) : ℝ)

end

end A228061.P484102444546275161

/-! ## A228061.P10328425877513832837

`root(A038688(n+1), A000122(n²))`
-/

namespace A228061.P10328425877513832837
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A038688 (n + 1) : ℝ) ^ (1 / (A000122 (n ^ 2) : ℝ))

end

end A228061.P10328425877513832837

/-! ## A228061.P17866322515148776437

`eq[1, A175192((n+1)²)]+1`
-/

namespace A228061.P17866322515148776437
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175192 ((n + 1) ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A228061.P17866322515148776437

/-!
# A228062: Numbers not expressible as a*b + b*c + a*c + 1 with positive numbers a, b, c.

The programs for A228062, there is no canonical definition to state claims against.
-/

/-! ## A228062.P1038383575261647204

`A025052(round(sqrt(n²+1)))+ceil(n/(n+1))`
-/

namespace A228062.P1038383575261647204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025052 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat + ⌈(n : ℚ) / (n + 1 : ℚ)⌉

end

end A228062.P1038383575261647204

/-! ## A228062.P7035931230696170969

`∪[A025052(n+1), A001017(n)]+1`
-/

namespace A228062.P7035931230696170969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025052 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001017 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A228062.P7035931230696170969

/-! ## A228062.P4829022466047587905

`∪[A025052(n+1), A008456(n)]+1`
-/

namespace A228062.P4829022466047587905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025052 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008456 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A228062.P4829022466047587905

/-! ## A228062.P7208695601625637451

`record[gcd(n+1, A066955(A000007(n)+n))]`
-/

namespace A228062.P7208695601625637451
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A066955 (A000007 n + (n : ℤ)).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A228062.P7208695601625637451

/-! ## A228062.P17604104184688445088

`A057427(n)+A025052(A028310(n))`
-/

namespace A228062.P17604104184688445088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + A025052 (A028310 n).toNat

end

end A228062.P17604104184688445088

/-!
# A228063: Integer nearest to F[4n](S(n)), where F[4n](x) are Fibonacci polynomials and S(n) = Sum_{i=0..3} (C(i)*(log(log(A*(B+n^2))))^i) (see coefficients A, B, C(i) in comments).

The programs for A228063, there is no canonical definition to state claims against.
-/

/-! ## A228063.P12101927588087731445

`Δ[A006880(n)]-A228064(n+1)`
-/

namespace A228063.P12101927588087731445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006880 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A228064 (n + 1)

end

end A228063.P12101927588087731445

/-! ## A228063.P1113697389321319446

`A006879(n+1)-A228064(n+1)`
-/

namespace A228063.P1113697389321319446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006879 (n + 1) - A228064 (n + 1)

end

end A228063.P1113697389321319446

/-! ## A228063.P9095359300619018715

`Δ[A090226(n+1)]-A228064(n+1)`
-/

namespace A228063.P9095359300619018715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090226 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A228064 (n + 1)

end

end A228063.P9095359300619018715

/-! ## A228063.P10210369137419239593

`Δ[A002283(n)-A065894(n)]-A228064(n+1)`
-/

namespace A228063.P10210369137419239593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002283 n - A065894 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A228064 (n + 1)

end

end A228063.P10210369137419239593

/-! ## A228063.P11436367943906626474

`A006880(n+1)-(A228064(n+1)+A006880(n))`
-/

namespace A228063.P11436367943906626474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006880 (n + 1) - (A228064 (n + 1) + A006880 n)

end

end A228063.P11436367943906626474

/-!
# A228064: Difference between the number of primes with n digits (A006879) and the nearest integer to F[4n](S(n)), where F[4n](x) are Fibonacci polynomials and S(n) = Sum_{i=0..3} (C(i)*(log(log(A*(B+n^2))))^i) (see A228063).

The programs for A228064, there is no canonical definition to state claims against.
-/

/-! ## A228064.P13587947377961722995

`A006879(n+1)-A228063(n+1)`
-/

namespace A228064.P13587947377961722995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006879 (n + 1) - A228063 (n + 1)

end

end A228064.P13587947377961722995

/-! ## A228064.P15845921066742721018

`Δ[A006880(n)]-A228063(n+1)`
-/

namespace A228064.P15845921066742721018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006880 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A228063 (n + 1)

end

end A228064.P15845921066742721018

/-! ## A228064.P15670339761253374105

`A228067(n+1)+A228068(n+1)-A228063(n+1)`
-/

namespace A228064.P15670339761253374105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228067 (n + 1) + (A228068 (n + 1) - A228063 (n + 1))

end

end A228064.P15670339761253374105

/-! ## A228064.P6334149113591508734

`A228113(n+1)+A228114(n+1)-A228063(n+1)`
-/

namespace A228064.P6334149113591508734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228113 (n + 1) + (A228114 (n + 1) - A228063 (n + 1))

end

end A228064.P6334149113591508734

/-! ## A228064.P18430680067716128550

`A228115(n+1)+A228116(n+1)-A228063(n+1)`
-/

namespace A228064.P18430680067716128550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228115 (n + 1) + (A228116 (n + 1) - A228063 (n + 1))

end

end A228064.P18430680067716128550

/-!
# A228065: Difference of consecutive integers nearest to (10^n)/log(10^n) (A057834).

The programs for A228065, there is no canonical definition to state claims against.
-/

/-! ## A228065.P9227793992509701776

`Δ[A006880(n)]-A228066(n+1)`
-/

namespace A228065.P9227793992509701776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006880 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A228066 (n + 1)

end

end A228065.P9227793992509701776

/-! ## A228065.P1190176588255485100

`A006879(n+1)-A228066(n+1)`
-/

namespace A228065.P1190176588255485100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006879 (n + 1) - A228066 (n + 1)

end

end A228065.P1190176588255485100

/-! ## A228065.P16197600300434420986

`Δ[A090226(n+1)]-A228066(n+1)`
-/

namespace A228065.P16197600300434420986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090226 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A228066 (n + 1)

end

end A228065.P16197600300434420986

/-! ## A228065.P8959912039398973821

`A006880(n+1)-(A228066(n+1)+A006880(n))`
-/

namespace A228065.P8959912039398973821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006880 (n + 1) - (A228066 (n + 1) + A006880 n)

end

end A228065.P8959912039398973821

/-! ## A228065.P967564349992065016

`Δ[A122121(A005843(n))]-A228066(n+1)`
-/

namespace A228065.P967564349992065016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122121 (A005843 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A228066 (n + 1)

end

end A228065.P967564349992065016

/-!
# A228066: a(n) = A006879(n) - A228065(n).

The programs for A228066, there is no canonical definition to state claims against.
-/

/-! ## A228066.P10145888864980012825

`A006879(n+1)-A228065(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A228066.P10145888864980012825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006879 (n + 1) - A228065 (n + 1)

end

end A228066.P10145888864980012825

/-! ## A228066.P10686273389694653127

`Δ[A057835(A028310(n))]`
-/

namespace A228066.P10686273389694653127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057835 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A228066.P10686273389694653127

/-! ## A228066.P13925023889830974998

`Δ[A057835(A000007(n)+n)]`
-/

namespace A228066.P13925023889830974998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057835 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A228066.P13925023889830974998

/-! ## A228066.P2505781582530822784

`Δ[A057835(A004277(n)-n)]`
-/

namespace A228066.P2505781582530822784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057835 (A004277 n - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A228066.P2505781582530822784

/-! ## A228066.P16406613690367316749

`Δ[A057835(gcd(n, A004277(n)))]`
-/

namespace A228066.P16406613690367316749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057835 (Int.gcd (n : ℤ) (A004277 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A228066.P16406613690367316749

/-!
# A228067: Difference of consecutive integers nearest to Li(10^n) - Li(2), where Li(x) = integral(0..x, dt/log(t)) (A190802, known as Gauss' approximation for the number of primes below 10^n).

The programs for A228067, there is no canonical definition to state claims against.
-/

/-! ## A228067.P15859382607866159200

`Δ[A006880(n)]-A228068(n+1)`
-/

namespace A228067.P15859382607866159200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006880 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A228068 (n + 1)

end

end A228067.P15859382607866159200

/-! ## A228067.P12695586681045256949

`A006879(n+1)-A228068(n+1)`
-/

namespace A228067.P12695586681045256949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006879 (n + 1) - A228068 (n + 1)

end

end A228067.P12695586681045256949

/-! ## A228067.P5996809527261605498

`Δ[A090226(n+1)]-A228068(n+1)`
-/

namespace A228067.P5996809527261605498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090226 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A228068 (n + 1)

end

end A228067.P5996809527261605498

/-! ## A228067.P4631147504316230583

`Δ[A122121(A005843(n))]-A228068(n+1)`
-/

namespace A228067.P4631147504316230583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122121 (A005843 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A228068 (n + 1)

end

end A228067.P4631147504316230583

/-! ## A228067.P12133292339473086624

`A006880(n+1)-(A228068(n+1)+A006880(n))`
-/

namespace A228067.P12133292339473086624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006880 (n + 1) - (A228068 (n + 1) + A006880 n)

end

end A228067.P12133292339473086624

/-!
# A228068: Difference between the number of primes with n digits (A006879) and the difference of consecutive integers nearest to Li(10^n) - Li(2) (see A228067).

The programs for A228068, there is no canonical definition to state claims against.
-/

/-! ## A228068.P15219505947655999832

`A006879(n+1)-A228067(n+1)`
-/

namespace A228068.P15219505947655999832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006879 (n + 1) - A228067 (n + 1)

end

end A228068.P15219505947655999832

/-! ## A228068.P17064097154289654207

`Δ[A006880(n)]-A228067(n+1)`
-/

namespace A228068.P17064097154289654207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006880 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A228067 (n + 1)

end

end A228068.P17064097154289654207

/-! ## A228068.P12935604129129269696

`Δ[A090226(n+1)]-A228067(n+1)`
-/

namespace A228068.P12935604129129269696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090226 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A228067 (n + 1)

end

end A228068.P12935604129129269696

/-! ## A228068.P2750295811206110901

`Δ[A000007(n)-A057752(A028310(n))]`
-/

namespace A228068.P2750295811206110901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n - A057752 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A228068.P2750295811206110901

/-! ## A228068.P9113322744163720390

`A006880(n+1)-(A228067(n+1)+A006880(n))`
-/

namespace A228068.P9113322744163720390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006880 (n + 1) - (A228067 (n + 1) + A006880 n)

end

end A228068.P9113322744163720390

/-!
# A228070: Signed pseudo characteristic function of primes by annihilation of composites up to p-1, here p=13 and sign (-).

The programs for A228070, there is no canonical definition to state claims against.
-/

/-! ## A228070.P11971648276479287166

`A000040(A340741(n+1)^A146141(n+1))`
-/

namespace A228070.P11971648276479287166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.roundAway ((A340741 (n + 1) : ℚ) ^ (A146141 (n + 1) : ℤ))).toNat

end

end A228070.P11971648276479287166

/-! ## A228070.P1084480148491872115

`A000040(A340741(n+1))%A103911(2*n+1)`
-/

namespace A228070.P1084480148491872115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (A340741 (n + 1)).toNat) (A103911 (2 * n + 1))

end

end A228070.P1084480148491872115

/-! ## A228070.P4658130324534471150

`A000040(A340741(n+1))*A146141(A146141(n+1)²)`
-/

namespace A228070.P4658130324534471150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A340741 (n + 1)).toNat * A146141 (A146141 (n + 1) ^ 2).toNat

end

end A228070.P4658130324534471150

/-! ## A228070.P17244831965152199419

`p?[∑[A124765(A020400(n+1))]]`
-/

namespace A228070.P17244831965152199419
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124765 (A020400 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A228070.P17244831965152199419

/-!
# A228071: Write n in binary and interpret as a decimal number; a(n) is this quantity minus n.

The programs for A228071, the canonical program `A228071.P9444289082571793754` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A228071 has offset 0).

The definition of A228071 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A228071.P9444289082571793754

`A007088(n)-n`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A228071

/-- `A007088(n)-n` -/
def P9444289082571793754.Spec : Prop :=
  ∀ n, P9444289082571793754.a n = A228071 n

theorem P9444289082571793754.correct : P9444289082571793754.Spec := by
  intro n
  simp only [A228071]

end A228071

/-! ## A228071.P14323748093282021475

`sqrt(A063009(n))-n`
-/

namespace A228071.P14323748093282021475
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A063009 n : ℝ) - (n : ℝ)

end

end A228071.P14323748093282021475

namespace A228071

/-- `sqrt(A063009(n))-n` -/
def P14323748093282021475.Spec : Prop :=
  ∀ n, P14323748093282021475.a n = (A228071 n : ℝ)

end A228071

/-! ## A228071.P7279315558870850642

`A269130(n)-2*n`
-/

namespace A228071.P7279315558870850642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269130 n - (2 * n : ℤ)

end

end A228071.P7279315558870850642

namespace A228071

/-- `A269130(n)-2*n` -/
def P7279315558870850642.Spec : Prop :=
  ∀ n, P7279315558870850642.a n = A228071 n

end A228071

/-! ## A228071.P12358548730149369255

`A204093(n)/6-n`
-/

namespace A228071.P12358548730149369255
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A204093 n : ℚ) / 6 - (n : ℚ)

end

end A228071.P12358548730149369255

namespace A228071

/-- `A204093(n)/6-n` -/
def P12358548730149369255.Spec : Prop :=
  ∀ n, P12358548730149369255.a n = (A228071 n : ℚ)

end A228071

/-! ## A228071.P11611983422404524420

`A204094(n)/7-n`
-/

namespace A228071.P11611983422404524420
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A204094 n : ℚ) / 7 - (n : ℚ)

end

end A228071.P11611983422404524420

namespace A228071

/-- `A204094(n)/7-n` -/
def P11611983422404524420.Spec : Prop :=
  ∀ n, P11611983422404524420.a n = (A228071 n : ℚ)

end A228071

/-! ## A228071.P1767841128249193500

`A204095(n)/8-n`
-/

namespace A228071.P1767841128249193500
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A204095 n : ℚ) / 8 - (n : ℚ)

end

end A228071.P1767841128249193500

namespace A228071

/-- `A204095(n)/8-n` -/
def P1767841128249193500.Spec : Prop :=
  ∀ n, P1767841128249193500.a n = (A228071 n : ℚ)

end A228071

/-! ## A228071.P10047106369607894053

`A097256(n)/9-n`
-/

namespace A228071.P10047106369607894053
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A097256 n : ℚ) / 9 - (n : ℚ)

end

end A228071.P10047106369607894053

namespace A228071

/-- `A097256(n)/9-n` -/
def P10047106369607894053.Spec : Prop :=
  ∀ n, P10047106369607894053.a n = (A228071 n : ℚ)

end A228071

/-! ## A228071.P5441958189117780067

`A099820(n)/10-n`
-/

namespace A228071.P5441958189117780067
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A099820 n : ℚ) / 10 - (n : ℚ)

end

end A228071.P5441958189117780067

namespace A228071

/-- `A099820(n)/10-n` -/
def P5441958189117780067.Spec : Prop :=
  ∀ n, P5441958189117780067.a n = (A228071 n : ℚ)

end A228071

/-! ## A228071.P17035203014366688174

`A169965(n+1)/2-n`
-/

namespace A228071.P17035203014366688174
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A169965 (n + 1) : ℚ) / 2 - (n : ℚ)

end

end A228071.P17035203014366688174

namespace A228071

/-- `A169965(n+1)/2-n` -/
def P17035203014366688174.Spec : Prop :=
  ∀ n, P17035203014366688174.a n = (A228071 n : ℚ)

end A228071

/-! ## A228071.P9533205828580238210

`A169966(n+1)/3-n`
-/

namespace A228071.P9533205828580238210
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A169966 (n + 1) : ℚ) / 3 - (n : ℚ)

end

end A228071.P9533205828580238210

namespace A228071

/-- `A169966(n+1)/3-n` -/
def P9533205828580238210.Spec : Prop :=
  ∀ n, P9533205828580238210.a n = (A228071 n : ℚ)

end A228071

/-! ## A228071.P9574099896454021019

`A169967(n+1)/4-n`
-/

namespace A228071.P9574099896454021019
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A169967 (n + 1) : ℚ) / 4 - (n : ℚ)

end

end A228071.P9574099896454021019

namespace A228071

/-- `A169967(n+1)/4-n` -/
def P9574099896454021019.Spec : Prop :=
  ∀ n, P9574099896454021019.a n = (A228071 n : ℚ)

end A228071

/-! ## A228071.P10924399228691146570

`A169964(n+1)/5-n`
-/

namespace A228071.P10924399228691146570
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A169964 (n + 1) : ℚ) / 5 - (n : ℚ)

end

end A228071.P10924399228691146570

namespace A228071

/-- `A169964(n+1)/5-n` -/
def P10924399228691146570.Spec : Prop :=
  ∀ n, P10924399228691146570.a n = (A228071 n : ℚ)

end A228071

/-! ## A228071.P15640075443055291536

`A303596(A372060(n))-n`
-/

namespace A228071.P15640075443055291536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303596 (A372060 n).toNat - (n : ℤ)

end

end A228071.P15640075443055291536

namespace A228071

/-- `A303596(A372060(n))-n` -/
def P15640075443055291536.Spec : Prop :=
  ∀ n, P15640075443055291536.a n = A228071 n

end A228071

/-! ## A228071.P6296346443304509179

`A169965(n+1)-A269130(n)`
-/

namespace A228071.P6296346443304509179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169965 (n + 1) - A269130 n

end

end A228071.P6296346443304509179

namespace A228071

/-- `A169965(n+1)-A269130(n)` -/
def P6296346443304509179.Spec : Prop :=
  ∀ n, P6296346443304509179.a n = A228071 n

end A228071

/-! ## A228071.P10189291528071422673

`A097256(n)-(A204095(n)+n)`
-/

namespace A228071.P10189291528071422673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097256 n - (A204095 n + (n : ℤ))

end

end A228071.P10189291528071422673

namespace A228071

/-- `A097256(n)-(A204095(n)+n)` -/
def P10189291528071422673.Spec : Prop :=
  ∀ n, P10189291528071422673.a n = A228071 n

end A228071

/-! ## A228071.P3448755946555026090

`A204095(n)-(A204094(n)+n)`
-/

namespace A228071.P3448755946555026090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204095 n - (A204094 n + (n : ℤ))

end

end A228071.P3448755946555026090

namespace A228071

/-- `A204095(n)-(A204094(n)+n)` -/
def P3448755946555026090.Spec : Prop :=
  ∀ n, P3448755946555026090.a n = A228071 n

end A228071

/-! ## A228071.P8940194162352096690

`A169964(n+1)-(A169967(n+1)+n)`
-/

namespace A228071.P8940194162352096690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169964 (n + 1) - (A169967 (n + 1) + (n : ℤ))

end

end A228071.P8940194162352096690

namespace A228071

/-- `A169964(n+1)-(A169967(n+1)+n)` -/
def P8940194162352096690.Spec : Prop :=
  ∀ n, P8940194162352096690.a n = A228071 n

end A228071

/-! ## A228071.P3423914191172035284

`A169966(n+1)-(A169965(n+1)+n)`
-/

namespace A228071.P3423914191172035284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169966 (n + 1) - (A169965 (n + 1) + (n : ℤ))

end

end A228071.P3423914191172035284

namespace A228071

/-- `A169966(n+1)-(A169965(n+1)+n)` -/
def P3423914191172035284.Spec : Prop :=
  ∀ n, P3423914191172035284.a n = A228071 n

end A228071

/-! ## A228071.P10421395674416218305

`A169967(n+1)-A169966(n+1)-n`
-/

namespace A228071.P10421395674416218305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169967 (n + 1) - A169966 (n + 1) - (n : ℤ)

end

end A228071.P10421395674416218305

namespace A228071

/-- `A169967(n+1)-A169966(n+1)-n` -/
def P10421395674416218305.Spec : Prop :=
  ∀ n, P10421395674416218305.a n = A228071 n

end A228071

/-! ## A228071.P12353230643650516461

`A304747(A303768(n))-n`
-/

namespace A228071.P12353230643650516461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304747 (A303768 n).toNat - (n : ℤ)

end

end A228071.P12353230643650516461

namespace A228071

/-- `A304747(A303768(n))-n` -/
def P12353230643650516461.Spec : Prop :=
  ∀ n, P12353230643650516461.a n = A228071 n

end A228071

/-!
# A228074: A Fibonacci-Pascal triangle read by rows: T(n,0) = Fibonacci(n), T(n,n) = n and for n > 0: T(n,k) = T(n-1,k-1) + T(n-1,k), 0 < k < n.

The programs for A228074, there is no canonical definition to state claims against.
-/

/-! ## A228074.P13200969438260436398

`A136431(A061579(n))+A097805(A007401(n+1))`
-/

namespace A228074.P13200969438260436398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136431 (A061579 n).toNat + A097805 (A007401 (n + 1)).toNat

end

end A228074.P13200969438260436398

/-! ## A228074.P8104768329782054737

`A354267(A007401(n+1))`
-/

namespace A228074.P8104768329782054737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354267 (A007401 (n + 1)).toNat

end

end A228074.P8104768329782054737

/-! ## A228074.P11742990745469503847

`A354267(A014132(n+1)-1)`
-/

namespace A228074.P11742990745469503847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354267 (A014132 (n + 1) - 1).toNat

end

end A228074.P11742990745469503847

/-! ## A228074.P13367643310713922892

`A354267(A003056(n)+1+n)`
-/

namespace A228074.P13367643310713922892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354267 (A003056 n + 1 + (n : ℤ)).toNat

end

end A228074.P13367643310713922892

/-! ## A228074.P7918564600714005807

`A105809(A007401(n+1))-A105809(n)`
-/

namespace A228074.P7918564600714005807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105809 (A007401 (n + 1)).toNat - A105809 n

end

end A228074.P7918564600714005807

/-! ## A228074.P6612633877905677798

`A105809(A014132(n+1)-1)-A105809(n)`
-/

namespace A228074.P6612633877905677798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105809 (A014132 (n + 1) - 1).toNat - A105809 n

end

end A228074.P6612633877905677798

/-! ## A228074.P17021591362198704741

`A105809(A002024(n+1)+n)-A105809(n)`
-/

namespace A228074.P17021591362198704741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105809 (A002024 (n + 1) + (n : ℤ)).toNat - A105809 n

end

end A228074.P17021591362198704741

/-! ## A228074.P7785136294222563555

`A105809(A003056(n)+1+n)-A105809(n)`
-/

namespace A228074.P7785136294222563555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105809 (A003056 n + 1 + (n : ℤ)).toNat - A105809 n

end

end A228074.P7785136294222563555

/-! ## A228074.P11357328923719283319

`A123736(A341706(n+1)-2*n)`
-/

namespace A228074.P11357328923719283319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123736 (A341706 (n + 1) - (2 * n : ℤ)).toNat

end

end A228074.P11357328923719283319

/-!
# A228075: Numbers n whose 10's complement is prime, i.e., 10^k-n, where k is the number of digits of n, is prime.

The programs for A228075, there is no canonical definition to state claims against.
-/

/-! ## A228075.P7422425511211919607

`A318785(n+1)+1`
-/

namespace A228075.P7422425511211919607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318785 (n + 1) + 1

end

end A228075.P7422425511211919607

/-! ## A228075.P8923211343018070886

`eq[1, A001222(A061601(n)+1)]`
-/

namespace A228075.P8923211343018070886
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A061601 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A228075.P8923211343018070886

/-! ## A228075.P8897571760834982479

`eq[1, A010051(A061601(n)+1)]`
-/

namespace A228075.P8897571760834982479
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A061601 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A228075.P8897571760834982479

/-! ## A228075.P10093549298102863204

`eq[2, A000005(A061601(n)+1)]`
-/

namespace A228075.P10093549298102863204
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A061601 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A228075.P10093549298102863204

/-! ## A228075.P13306558369046532391

`eq[A000010(A061601(n)+1), A061601(n)]`
-/

namespace A228075.P13306558369046532391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A061601 n + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061601 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A228075.P13306558369046532391

/-! ## A228075.P575936574283323950

`A020725(A318785(n+1))`
-/

namespace A228075.P575936574283323950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A318785 (n + 1)).toNat

end

end A228075.P575936574283323950

/-! ## A228075.P16649416226634133490

`eq[1, A010051(A178914(n))]`
-/

namespace A228075.P16649416226634133490
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A178914 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A228075.P16649416226634133490

/-! ## A228075.P9773967813861671804

`eq[1, A003415(A061601(n)+1)]`
-/

namespace A228075.P9773967813861671804
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A061601 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A228075.P9773967813861671804

/-! ## A228075.P2033174385249377399

`eq[1, A032741(A061601(n)+1)]`
-/

namespace A228075.P2033174385249377399
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (A061601 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A228075.P2033174385249377399

/-! ## A228075.P2679435167882086134

`eq[1, A284289(A061601(n)+1)]`
-/

namespace A228075.P2679435167882086134
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284289 (A061601 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A228075.P2679435167882086134

/-! ## A228075.P16249383440663727361

`eq[1, A328771(A061601(n)+1)]`
-/

namespace A228075.P16249383440663727361
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328771 (A061601 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A228075.P16249383440663727361

/-! ## A228075.P3701955512191780402

`eq[2, A046523(A061601(n)+1)]`
-/

namespace A228075.P3701955512191780402
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A061601 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A228075.P3701955512191780402

/-! ## A228075.P5415419982630813800

`A061601(p?[A061601(n)]+n)+n+1`
-/

namespace A228075.P5415419982630813800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061601 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061601 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + (n : ℤ)).toNat + (n + 1 : ℤ)

end

end A228075.P5415419982630813800

/-!
# A228076: Numbers k such that (19^k - 4^k)/15 is prime.

The programs for A228076, there is no canonical definition to state claims against.
-/

/-! ## A228076.P14560872881627809198

`p?[p?[A113470(3*n+2)]+2*n]`
-/

namespace A228076.P14560872881627809198
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113470 (3 * n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) + (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A228076.P14560872881627809198

/-! ## A228076.P13992072059829488447

`∩[A057459(n+1), A272631(n+1)]`
-/

namespace A228076.P13992072059829488447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057459 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272631 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A228076.P13992072059829488447

/-!
# A228078: a(n) = 2^n - Fibonacci(n) - 1.

The programs for A228078, the canonical program `A228078.P11542837147799092951` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A228078 has offset 0).

The definition of A228078 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A228078.P11542837147799092951

`A099036(n)-1`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A228078

/-- `A099036(n)-1` -/
def P11542837147799092951.Spec : Prop :=
  ∀ n, P11542837147799092951.a n = A228078 n

theorem P11542837147799092951.correct : P11542837147799092951.Spec := by
  intro n
  simp only [A228078]

end A228078

/-! ## A228078.P5852625736670741853

`A000225(n)-A000045(n)`
-/

namespace A228078.P5852625736670741853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n - A000045 n

end

end A228078.P5852625736670741853

namespace A228078

/-- `A000225(n)-A000045(n)` -/
def P5852625736670741853.Spec : Prop :=
  ∀ n, P5852625736670741853.a n = A228078 n

end A228078

/-! ## A228078.P8175457418150906919

`A000079(n)-A001611(n)`
-/

namespace A228078.P8175457418150906919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n - A001611 n

end

end A228078.P8175457418150906919

namespace A228078

/-- `A000079(n)-A001611(n)` -/
def P8175457418150906919.Spec : Prop :=
  ∀ n, P8175457418150906919.a n = A228078 n

end A228078

/-! ## A228078.P1200568804941524822

`A000079(n)-A000045(n)-1`
-/

namespace A228078.P1200568804941524822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n - A000045 n - 1

end

end A228078.P1200568804941524822

namespace A228078

/-- `A000079(n)-A000045(n)-1` -/
def P1200568804941524822.Spec : Prop :=
  ∀ n, P1200568804941524822.a n = A228078 n

end A228078

/-! ## A228078.P785946985955607567

`4*a(n-1)-4*a(n-2)-a(n-3)+2*a(n-4)` with `a(0)=0, a(1)=0, a(2)=2, a(3)=5`
-/

namespace A228078.P785946985955607567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 2, 5] fun n a =>
  4 * a (n - 1) - 4 * a (n - 2) - a (n - 3) + 2 * a (n - 4)

end

end A228078.P785946985955607567

namespace A228078

/-- `4*a(n-1)-4*a(n-2)-a(n-3)+2*a(n-4)` -/
def P785946985955607567.Spec : Prop :=
  ∀ n, P785946985955607567.a n = A228078 n

end A228078

/-! ## A228078.P3822933877842972896

`ogf((2x^2-3x^3)/(1-4x+4x^2+x^3-2x^4))`
-/

namespace A228078.P3822933877842972896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 2, -3] [1, -4, 4, 1, -2] n

end

end A228078.P3822933877842972896

namespace A228078

/-- `ogf((2x^2-3x^3)/(1-4x+4x^2+x^3-2x^4))` -/
def P3822933877842972896.Spec : Prop :=
  ∀ n, P3822933877842972896.a n = A228078 n

end A228078

/-! ## A228078.P10676443730550940865

`A052944(n)-A002062(n)`
-/

namespace A228078.P10676443730550940865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052944 n - A002062 n

end

end A228078.P10676443730550940865

namespace A228078

/-- `A052944(n)-A002062(n)` -/
def P10676443730550940865.Spec : Prop :=
  ∀ n, P10676443730550940865.a n = A228078 n

end A228078

/-! ## A228078.P5539775821685342499

`A000295(n)-A065220(n)`
-/

namespace A228078.P5539775821685342499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000295 n - A065220 n

end

end A228078.P5539775821685342499

namespace A228078

/-- `A000295(n)-A065220(n)` -/
def P5539775821685342499.Spec : Prop :=
  ∀ n, P5539775821685342499.a n = A228078 n

end A228078

/-! ## A228078.P14949745154758111221

`A099430(n)-A008346(n)`
-/

namespace A228078.P14949745154758111221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099430 n - A008346 n

end

end A228078.P14949745154758111221

namespace A228078

/-- `A099430(n)-A008346(n)` -/
def P14949745154758111221.Spec : Prop :=
  ∀ n, P14949745154758111221.a n = A228078 n

end A228078

/-! ## A228078.P8275145885853149949

`A117591(n)-A001588(n)`
-/

namespace A228078.P8275145885853149949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117591 n - A001588 n

end

end A228078.P8275145885853149949

namespace A228078

/-- `A117591(n)-A001588(n)` -/
def P8275145885853149949.Spec : Prop :=
  ∀ n, P8275145885853149949.a n = A228078 n

end A228078

/-! ## A228078.P1031547240029609475

`A000051(n)-A157725(n)`
-/

namespace A228078.P1031547240029609475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n - A157725 n

end

end A228078.P1031547240029609475

namespace A228078

/-- `A000051(n)-A157725(n)` -/
def P1031547240029609475.Spec : Prop :=
  ∀ n, P1031547240029609475.a n = A228078 n

end A228078

/-! ## A228078.P16496975360961399709

`A052548(n)-A157726(n)`
-/

namespace A228078.P16496975360961399709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052548 n - A157726 n

end

end A228078.P16496975360961399709

namespace A228078

/-- `A052548(n)-A157726(n)` -/
def P16496975360961399709.Spec : Prop :=
  ∀ n, P16496975360961399709.a n = A228078 n

end A228078

/-! ## A228078.P2821752493089286725

`A062709(n)-A157727(n)`
-/

namespace A228078.P2821752493089286725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062709 n - A157727 n

end

end A228078.P2821752493089286725

namespace A228078

/-- `A062709(n)-A157727(n)` -/
def P2821752493089286725.Spec : Prop :=
  ∀ n, P2821752493089286725.a n = A228078 n

end A228078

/-! ## A228078.P16654284925287226574

`A166920(n)-A109522(n)`
-/

namespace A228078.P16654284925287226574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166920 n - A109522 n

end

end A228078.P16654284925287226574

namespace A228078

/-- `A166920(n)-A109522(n)` -/
def P16654284925287226574.Spec : Prop :=
  ∀ n, P16654284925287226574.a n = A228078 n

end A228078

/-! ## A228078.P2980645344628077039

`A140504(n)-A157729(n)`
-/

namespace A228078.P2980645344628077039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140504 n - A157729 n

end

end A228078.P2980645344628077039

namespace A228078

/-- `A140504(n)-A157729(n)` -/
def P2980645344628077039.Spec : Prop :=
  ∀ n, P2980645344628077039.a n = A228078 n

end A228078

/-! ## A228078.P16497602935747439294

`A233411(n)-A174959(n)`
-/

namespace A228078.P16497602935747439294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233411 n - A174959 n

end

end A228078.P16497602935747439294

namespace A228078

/-- `A233411(n)-A174959(n)` -/
def P16497602935747439294.Spec : Prop :=
  ∀ n, P16497602935747439294.a n = A228078 n

end A228078

/-! ## A228078.P12292120600324113896

`∑[A131577(n)]-A000045(n)`
-/

namespace A228078.P12292120600324113896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A000045 n

end

end A228078.P12292120600324113896

namespace A228078

/-- `∑[A131577(n)]-A000045(n)` -/
def P12292120600324113896.Spec : Prop :=
  ∀ n, P12292120600324113896.a n = A228078 n

end A228078

/-! ## A228078.P14146235967784386281

`A008466(n)+A000071(n+1)`
-/

namespace A228078.P14146235967784386281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008466 n + A000071 (n + 1)

end

end A228078.P14146235967784386281

namespace A228078

/-- `A008466(n)+A000071(n+1)` -/
def P14146235967784386281.Spec : Prop :=
  ∀ n, P14146235967784386281.a n = A228078 n

end A228078

/-! ## A228078.P16765304695455882945

`A232580(n)+A019274(n+1)`
-/

namespace A228078.P16765304695455882945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232580 n + A019274 (n + 1)

end

end A228078.P16765304695455882945

namespace A228078

/-- `A232580(n)+A019274(n+1)` -/
def P16765304695455882945.Spec : Prop :=
  ∀ n, P16765304695455882945.a n = A228078 n

end A228078

/-! ## A228078.P2244625881577079046

`A000051(n)-(A001611(n)+1)`
-/

namespace A228078.P2244625881577079046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n - (A001611 n + 1)

end

end A228078.P2244625881577079046

namespace A228078

/-- `A000051(n)-(A001611(n)+1)` -/
def P2244625881577079046.Spec : Prop :=
  ∀ n, P2244625881577079046.a n = A228078 n

end A228078

/-!
# A228079: a(n) = round((5^n)*4 / 3^n).

The programs for A228079, the canonical program `A228079.P7807519301838001579` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A228079 has offset 0).

The definition of A228079 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `round(5^n*4/3^n)` (program `A228079.P7807519301838001579`, by `A228079.P7807519301838001579.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A228079.P7807519301838001579

`round(5^n*4/3^n)`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A228079

/-- `round(5^n*4/3^n)` -/
def P7807519301838001579.Spec : Prop :=
  ∀ n, P7807519301838001579.a n = A228079 n

theorem P7807519301838001579.correct : P7807519301838001579.Spec := by
  intro n
  simp only [A228079]

end A228079

/-! ## A228079.P12504325110982915621

`A121856(A007076(n+6)+A000040(n+1))`
-/

namespace A228079.P12504325110982915621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121856 (A007076 (n + 6) + A000040 (n + 1)).toNat

end

end A228079.P12504325110982915621

namespace A228079

/-- `A121856(A007076(n+6)+A000040(n+1))` -/
def P12504325110982915621.Spec : Prop :=
  ∀ n, P12504325110982915621.a n = A228079 n

end A228079

/-! ## A228079.P1773298963271886823

`A121856(A254667(2*n+1)+A007076(n+6))`
-/

namespace A228079.P1773298963271886823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121856 (A254667 (2 * n + 1) + A007076 (n + 6)).toNat

end

end A228079.P1773298963271886823

namespace A228079

/-- `A121856(A254667(2*n+1)+A007076(n+6))` -/
def P1773298963271886823.Spec : Prop :=
  ∀ n, P1773298963271886823.a n = A228079 n

end A228079

/-!
# A228080: (5*n+2)!/(2*(n!)^5), n >= 0.

The programs for A228080, there is no canonical definition to state claims against.
-/

/-! ## A228080.P13068339688596641976

`(5*n+2)!/(2*n!^5)`
-/

namespace A228080.P13068339688596641976
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (5 * n + 2) : ℚ) / (2 * Nat.factorial n ^ 5 : ℚ)

end

end A228080.P13068339688596641976

/-!
# A228081: a(n) = 64^n + 1.

The programs for A228081, the canonical program `A228081.P14414232650861949000` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A228081 has offset 0).

The definition of A228081 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `64^n+1` (program `A228081.P14414232650861949000`, by `A228081.P14414232650861949000.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A228081.P14414232650861949000

`64^n+1`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A228081

/-- `64^n+1` -/
def P14414232650861949000.Spec : Prop :=
  ∀ n, (P14414232650861949000.a n : ℤ) = A228081 n

theorem P14414232650861949000.correct : P14414232650861949000.Spec := by
  intro n
  simp only [A228081]

end A228081

/-!
# A228082: Numbers that are of the form k + sum of binary digits of k for some nonnegative integer k.

The programs for A228082, the canonical program `A228082.P10153708599017586567` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A228082 has offset 1).

The definition of A228082 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A228082.P10153708599017586567

`comp[A010061(n+1)]`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A228082

/-- `comp[A010061(n+1)]` -/
def P10153708599017586567.Spec : Prop :=
  ∀ n, (P10153708599017586567.a n : ℤ) = A228082 (n + 1)

theorem P10153708599017586567.correct : P10153708599017586567.Spec := by
  intro n
  simp only [A228082, Nat.add_sub_cancel]

end A228082

/-! ## A228082.P16404919762920457003

`comp[A230301(n+1)-1]`
-/

namespace A228082.P16404919762920457003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230301 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A228082.P16404919762920457003

namespace A228082

/-- `comp[A230301(n+1)-1]` -/
def P16404919762920457003.Spec : Prop :=
  ∀ n, (P16404919762920457003.a n : ℤ) = A228082 (n + 1)

end A228082

/-! ## A228082.P10429577491612951106

`∪[A228088(n+1), A230058(n+1)]`
-/

namespace A228082.P10429577491612951106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228088 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230058 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A228082.P10429577491612951106

namespace A228082

/-- `∪[A228088(n+1), A230058(n+1)]` -/
def P10429577491612951106.Spec : Prop :=
  ∀ n, (P10429577491612951106.a n : ℤ) = A228082 (n + 1)

end A228082

/-! ## A228082.P3267167429442117128

`eq[A054977(n), A054977(A227643(n)-1)]`
-/

namespace A228082.P3267167429442117128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 (A227643 n - 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A228082.P3267167429442117128

namespace A228082

/-- `eq[A054977(n), A054977(A227643(n)-1)]` -/
def P3267167429442117128.Spec : Prop :=
  ∀ n, (P3267167429442117128.a n : ℤ) = A228082 (n + 1)

end A228082

/-! ## A228082.P16976313764342614520

`eq[1, A057427(A227643(n)-A057427(n))]`
-/

namespace A228082.P16976313764342614520
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A227643 n - A057427 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A228082.P16976313764342614520

namespace A228082

/-- `eq[1, A057427(A227643(n)-A057427(n))]` -/
def P16976313764342614520.Spec : Prop :=
  ∀ n, (P16976313764342614520.a n : ℤ) = A228082 (n + 1)

end A228082

/-! ## A228082.P7974898340777184968

`eq[1, A158388(A227643(n)-A158388(n))]`
-/

namespace A228082.P7974898340777184968
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158388 (A227643 n - A158388 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A228082.P7974898340777184968

namespace A228082

/-- `eq[1, A158388(A227643(n)-A158388(n))]` -/
def P7974898340777184968.Spec : Prop :=
  ∀ n, (P7974898340777184968.a n : ℤ) = A228082 (n + 1)

end A228082

/-! ## A228082.P4224212275524286736

`lt[n, (A228086(n)+1)²]`
-/

namespace A228082.P4224212275524286736
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A228086 n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A228082.P4224212275524286736

namespace A228082

/-- `lt[n, (A228086(n)+1)²]` -/
def P4224212275524286736.Spec : Prop :=
  ∀ n, (P4224212275524286736.a n : ℤ) = A228082 (n + 1)

end A228082

/-! ## A228082.P7615754284201062847

`lt[n, (A228087(n)+1)²]`
-/

namespace A228082.P7615754284201062847
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A228087 n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A228082.P7615754284201062847

namespace A228082

/-- `lt[n, (A228087(n)+1)²]` -/
def P7615754284201062847.Spec : Prop :=
  ∀ n, (P7615754284201062847.a n : ℤ) = A228082 (n + 1)

end A228082

/-! ## A228082.P9671452766579482019

`record[A092391(A228086(n))]`
-/

namespace A228082.P9671452766579482019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092391 (A228086 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A228082.P9671452766579482019

namespace A228082

/-- `record[A092391(A228086(n))]` -/
def P9671452766579482019.Spec : Prop :=
  ∀ n, P9671452766579482019.a n = A228082 (n + 1)

end A228082

/-! ## A228082.P17688770523615144290

`record[A092391(A228087(n))]`
-/

namespace A228082.P17688770523615144290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092391 (A228087 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A228082.P17688770523615144290

namespace A228082

/-- `record[A092391(A228087(n))]` -/
def P17688770523615144290.Spec : Prop :=
  ∀ n, P17688770523615144290.a n = A228082 (n + 1)

end A228082

/-! ## A228082.P6412982646860490272

`lt[n, A005187(A228086(n)+1)]`
-/

namespace A228082.P6412982646860490272
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 (A228086 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A228082.P6412982646860490272

namespace A228082

/-- `lt[n, A005187(A228086(n)+1)]` -/
def P6412982646860490272.Spec : Prop :=
  ∀ n, (P6412982646860490272.a n : ℤ) = A228082 (n + 1)

end A228082

/-! ## A228082.P2635696873632415995

`lt[n, A005187(A228087(n)+1)]`
-/

namespace A228082.P2635696873632415995
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 (A228087 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A228082.P2635696873632415995

namespace A228082

/-- `lt[n, A005187(A228087(n)+1)]` -/
def P2635696873632415995.Spec : Prop :=
  ∀ n, (P2635696873632415995.a n : ℤ) = A228082 (n + 1)

end A228082

/-! ## A228082.P9184348850507341160

`lt[A038573(n)-1, A228087(n)²]`
-/

namespace A228082.P9184348850507341160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038573 n - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228087 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A228082.P9184348850507341160

namespace A228082

/-- `lt[A038573(n)-1, A228087(n)²]` -/
def P9184348850507341160.Spec : Prop :=
  ∀ n, (P9184348850507341160.a n : ℤ) = A228082 (n + 1)

end A228082

/-! ## A228082.P509275952521062319

`lt[A001316(n)-2, A228086(n)²]`
-/

namespace A228082.P509275952521062319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 n - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228086 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A228082.P509275952521062319

namespace A228082

/-- `lt[A001316(n)-2, A228086(n)²]` -/
def P509275952521062319.Spec : Prop :=
  ∀ n, (P509275952521062319.a n : ℤ) = A228082 (n + 1)

end A228082

/-! ## A228082.P3918376523458120909

`lt[A001316(n)-2, A228087(n)²]`
-/

namespace A228082.P3918376523458120909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 n - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228087 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A228082.P3918376523458120909

namespace A228082

/-- `lt[A001316(n)-2, A228087(n)²]` -/
def P3918376523458120909.Spec : Prop :=
  ∀ n, (P3918376523458120909.a n : ℤ) = A228082 (n + 1)

end A228082

/-! ## A228082.P12320002205596268488

`eq[A000007(n), A000007(A228086(n))]`
-/

namespace A228082.P12320002205596268488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A228086 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A228082.P12320002205596268488

namespace A228082

/-- `eq[A000007(n), A000007(A228086(n))]` -/
def P12320002205596268488.Spec : Prop :=
  ∀ n, (P12320002205596268488.a n : ℤ) = A228082 (n + 1)

end A228082

/-! ## A228082.P4168386473576578535

`record[n*char[A092391(n+1)]]`
-/

namespace A228082.P4168386473576578535
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092391 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (if ∃ j, f2 j = (n : ℤ) then 1 else 0)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A228082.P4168386473576578535

namespace A228082

/-- `record[n*char[A092391(n+1)]]` -/
def P4168386473576578535.Spec : Prop :=
  ∀ n, (P4168386473576578535.a n : ℤ) = A228082 (n + 1)

end A228082

/-! ## A228082.P11106932425422981496

`record[(n+1)*char[A000120(n+1)+n]]`
-/

namespace A228082.P11106932425422981496
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (n + 1) + (n : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (if ∃ j, f2 j = (n : ℤ) then 1 else 0)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A228082.P11106932425422981496

namespace A228082

/-- `record[(n+1)*char[A000120(n+1)+n]]` -/
def P11106932425422981496.Spec : Prop :=
  ∀ n, (P11106932425422981496.a n : ℤ) = A228082 (n + 1)

end A228082

/-! ## A228082.P6321113757132634315

`lt[0, char[A092391(n)]]`
-/

namespace A228082.P6321113757132634315
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092391 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A228082.P6321113757132634315

namespace A228082

/-- `lt[0, char[A092391(n)]]` -/
def P6321113757132634315.Spec : Prop :=
  ∀ n, (P6321113757132634315.a n : ℤ) = A228082 (n + 1)

end A228082

/-! ## A228082.P9425819811778827546

`eq[1, char[A000120(n)+n]]`
-/

namespace A228082.P9425819811778827546
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n + (n : ℤ)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A228082.P9425819811778827546

namespace A228082

/-- `eq[1, char[A000120(n)+n]]` -/
def P9425819811778827546.Spec : Prop :=
  ∀ n, (P9425819811778827546.a n : ℤ) = A228082 (n + 1)

end A228082

/-!
# A228083: Table of binary Self-numbers and their descendants; square array T(r,c), with row r>=1, column c>=1, read by antidiagonals.

The programs for A228083, there is no canonical definition to state claims against.
-/

/-! ## A228083.P6304304955388383438

`A228084(∑[char[∑[n]]]²-n)`
-/

namespace A228083.P6304304955388383438
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228084 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A228083.P6304304955388383438

/-! ## A228083.P866777540398014832

`A228084(A038722(n+1))%44`
-/

namespace A228083.P866777540398014832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A228084 (A038722 (n + 1)).toNat) 44

end

end A228083.P866777540398014832

/-! ## A228083.P10231961319940089754

`A228084(∑[A198954(n)]-n)%44`
-/

namespace A228083.P10231961319940089754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198954 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A228084 (∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)).toNat) 44

end

end A228083.P10231961319940089754

/-! ## A228083.P3802574672711979688

`gcd(A000038(n), A228084(A038722(n+1)))`
-/

namespace A228083.P3802574672711979688
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A228084 (A038722 (n + 1)).toNat)

end

end A228083.P3802574672711979688

/-! ## A228083.P11338923593007980879

`lcm(A033999(n), A228084(A038722(n+1)))`
-/

namespace A228083.P11338923593007980879
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A228084 (A038722 (n + 1)).toNat)

end

end A228083.P11338923593007980879

/-! ## A228083.P16083158354128335831

`or(A000007(n), A228084(A038722(n+1)))`
-/

namespace A228083.P16083158354128335831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A228084 (A038722 (n + 1)).toNat)

end

end A228083.P16083158354128335831

/-! ## A228083.P26952132119498776

`char[A014681(n)]*A228084(A038722(n+1))`
-/

namespace A228083.P26952132119498776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A228084 (A038722 (n + 1)).toNat

end

end A228083.P26952132119498776

/-! ## A228083.P16292636547520598498

`A228084(A038722(n+1))+A008683(44*(n+1))`
-/

namespace A228083.P16292636547520598498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228084 (A038722 (n + 1)).toNat + A008683 (44 * (n + 1))

end

end A228083.P16292636547520598498

/-!
# A228084: Transpose of A228083.

The programs for A228084, there is no canonical definition to state claims against.
-/

/-! ## A228084.P16005355682261332855

`A228083(∑[char[∑[n]]]²-n)`
-/

namespace A228084.P16005355682261332855
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228083 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A228084.P16005355682261332855

/-! ## A228084.P17457549051347424430

`A228083(A038722(n+1))%41`
-/

namespace A228084.P17457549051347424430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A228083 (A038722 (n + 1)).toNat) 41

end

end A228084.P17457549051347424430

/-! ## A228084.P147507703691097547

`A228083(A038722(n+1))^A178334(n)`
-/

namespace A228084.P147507703691097547
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A228083 (A038722 (n + 1)).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A228084.P147507703691097547

/-! ## A228084.P11617301116624763677

`abs(A020985(n)*A228083(A038722(n+1)))`
-/

namespace A228084.P11617301116624763677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A020985 n * A228083 (A038722 (n + 1)).toNat|

end

end A228084.P11617301116624763677

/-! ## A228084.P17922791059344249972

`C(A228083(A038722(n+1)), A033999(n)²)`
-/

namespace A228084.P17922791059344249972
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A228083 (A038722 (n + 1)).toNat).toNat (A033999 n ^ 2).toNat

end

end A228084.P17922791059344249972

/-! ## A228084.P5169779848806462218

`A007318(∑[n])*A228083(A038722(n+1))`
-/

namespace A228084.P5169779848806462218
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A228083 (A038722 (n + 1)).toNat

end

end A228084.P5169779848806462218

/-! ## A228084.P12527302954282365209

`A228083(A038722(n+1))/A007318(C(2, n))`
-/

namespace A228084.P12527302954282365209
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A228083 (A038722 (n + 1)).toNat : ℚ) / (A007318 (Nat.choose 2 n) : ℚ)

end

end A228084.P12527302954282365209

/-! ## A228084.P18440732069699716562

`A228083(A038722(n+1))+A008683(4*(n+1))`
-/

namespace A228084.P18440732069699716562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228083 (A038722 (n + 1)).toNat + A008683 (4 * (n + 1))

end

end A228084.P18440732069699716562

/-! ## A228084.P16701779948922606901

`A014963(6*(n+1))*A228083(A038722(n+1))`
-/

namespace A228084.P16701779948922606901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (6 * (n + 1)) * A228083 (A038722 (n + 1)).toNat

end

end A228084.P16701779948922606901

/-! ## A228084.P14498439063261503912

`∑{d}[A228083(A038722(n+1))+1, A000010(#)]-1`
-/

namespace A228084.P14498439063261503912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228083 (A038722 (n + 1)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d - 1

end

end A228084.P14498439063261503912

/-!
# A228085: a(n) = number of distinct k which satisfy n = k + wt(k), where wt(k) (A000120) gives the number of 1's in binary representation of a nonnegative integer k.

The programs for A228085, there is no canonical definition to state claims against.
-/

/-! ## A228085.P12207605994281190944

`A325144((A305893(n+1)^A039969(2*n+1))²)`
-/

namespace A228085.P12207605994281190944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325144 (SequenceMachineLib.roundAway (((A305893 (n + 1) : ℚ) ^ (A039969 (2 * n + 1) : ℤ)) ^ 2)).toNat

end

end A228085.P12207605994281190944

/-! ## A228085.P247533739412176676

`A137893(A000712(n))+A116178(n)`
-/

namespace A228085.P247533739412176676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137893 (A000712 n).toNat + A116178 n

end

end A228085.P247533739412176676

/-! ## A228085.P15278196555500093866

`and(A103900(A050975(n+1)), A103956(2*n+1))`
-/

namespace A228085.P15278196555500093866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A103900 (A050975 (n + 1)).toNat) (A103956 (2 * n + 1))

end

end A228085.P15278196555500093866

/-! ## A228085.P11967800496876328585

`A076662(A194060(n+1))-A001468(A183892(n+1))`
-/

namespace A228085.P11967800496876328585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076662 (A194060 (n + 1)).toNat - A001468 (A183892 (n + 1)).toNat

end

end A228085.P11967800496876328585

/-! ## A228085.P1189045254761262981

`A101660(A332279(n+1)-n)`
-/

namespace A228085.P1189045254761262981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101660 (A332279 (n + 1) - (n : ℤ)).toNat

end

end A228085.P1189045254761262981

/-!
# A228086: a(n) is the least k which satisfies n = k + bitcount(k), or 0 if no such k exists. Here bitcount(k) (or wt(k), A000120) gives the number of 1's in binary representation of nonnegative integer k.

The programs for A228086, there is no canonical definition to state claims against.
-/

/-! ## A228086.P6045690267515569464

`A228087(n)-A046660(A000213(n))`
-/

namespace A228086.P6045690267515569464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228087 n - A046660 (A000213 n).toNat

end

end A228086.P6045690267515569464

/-! ## A228086.P18107724315546070420

`A228087(n)-A005369(A240673(n+1))`
-/

namespace A228086.P18107724315546070420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228087 n - A005369 (A240673 (n + 1)).toNat

end

end A228086.P18107724315546070420

/-! ## A228086.P439870414359250107

`A000120(A228087(2^n-1))`
-/

namespace A228086.P439870414359250107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A228087 (2 ^ n - 1)).toNat

end

end A228086.P439870414359250107

/-! ## A228086.P5434387727398038827

`A228087(n)+A016389(A027379(n))`
-/

namespace A228086.P5434387727398038827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228087 n + A016389 (A027379 n).toNat

end

end A228086.P5434387727398038827

/-! ## A228086.P9449167726265906203

`A228087(n)-A169673(A000079(n))`
-/

namespace A228086.P9449167726265906203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228087 n - A169673 (A000079 n).toNat

end

end A228086.P9449167726265906203

/-!
# A228087: a(n) = largest k which satisfies n = k + bitcount(k), or 0 if no such k exists. Here bitcount(k) (A000120) gives the number of 1's in binary representation of nonnegative integer k.

The programs for A228087, there is no canonical definition to state claims against.
-/

/-! ## A228087.P1490345477227378414

`A228086(n)+A046660(A000213(n))`
-/

namespace A228087.P1490345477227378414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228086 n + A046660 (A000213 n).toNat

end

end A228087.P1490345477227378414

/-! ## A228087.P5533204765606876093

`A228086(n)+A010051(A010458(3*n+2))`
-/

namespace A228087.P5533204765606876093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228086 n + A010051 (A010458 (3 * n + 2)).toNat

end

end A228087.P5533204765606876093

/-! ## A228087.P6580288371219830289

`A228086(n)+A005369(A240673(n+1))`
-/

namespace A228087.P6580288371219830289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228086 n + A005369 (A240673 (n + 1)).toNat

end

end A228087.P6580288371219830289

/-! ## A228087.P4879202821323226081

`A228086(n)+A007814(A122556(A307150(n+1)))`
-/

namespace A228087.P4879202821323226081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228086 n + A007814 (A122556 (A307150 (n + 1)).toNat).toNat

end

end A228087.P4879202821323226081

/-! ## A228087.P9663805360899825845

`A000120(A228086(2^n-1))`
-/

namespace A228087.P9663805360899825845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A228086 (2 ^ n - 1)).toNat

end

end A228087.P9663805360899825845

/-!
# A228088: Numbers n for which there is a unique k which satisfies n = k + wt(k), where wt(k) (A000120) gives the number of 1's in binary representation of nonnegative integer k.

The programs for A228088, there is no canonical definition to state claims against.
-/

/-! ## A228088.P3662788606118349200

`A092391(A228089(n+1))`
-/

namespace A228088.P3662788606118349200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092391 (A228089 (n + 1)).toNat

end

end A228088.P3662788606118349200

/-! ## A228088.P17262100543778343928

`eq[n, A228086(n)+A000120(A228087(n))]`
-/

namespace A228088.P17262100543778343928
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228086 n + A000120 (A228087 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A228088.P17262100543778343928

/-! ## A228088.P7599876281458879267

`eq[1, A228085(n)]`
-/

namespace A228088.P7599876281458879267
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228085 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A228088.P7599876281458879267

/-! ## A228088.P690328094383288921

`record[(2-A228085(n+1))*(n+1)*A228085(n+1)]`
-/

namespace A228088.P690328094383288921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A228085 (n + 1)) * ((n + 1 : ℤ) * A228085 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A228088.P690328094383288921

/-! ## A228088.P9221622461958771087

`A228089(n+1)+A000120(2*A228089(n+1))`
-/

namespace A228088.P9221622461958771087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228089 (n + 1) + A000120 (2 * A228089 (n + 1)).toNat

end

end A228088.P9221622461958771087

/-!
# A228089: Integers k for which a sum k + bitcount(k) cannot be obtained as a sum k2 + bitcount(k2) for any other k2<>k.

The programs for A228089, there is no canonical definition to state claims against.
-/

/-! ## A228089.P14028131702507198316

`A228086(A228088(n+1))`
-/

namespace A228089.P14028131702507198316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228086 (A228088 (n + 1)).toNat

end

end A228089.P14028131702507198316

/-! ## A228089.P10582026991690885494

`A228087(A228088(2*n+1-n))`
-/

namespace A228089.P10582026991690885494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228087 (A228088 (2 * n + 1 - n)).toNat

end

end A228089.P10582026991690885494

/-! ## A228089.P6044249956882115227

`A228087(A228088(n+1)%∑[n+1])`
-/

namespace A228089.P6044249956882115227
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228087 (Int.tmod (A228088 (n + 1)) ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A228089.P6044249956882115227

/-! ## A228089.P3649189429563903292

`A228087(A228088(n+1)+A007814(2*n+3))`
-/

namespace A228089.P3649189429563903292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228087 (A228088 (n + 1) + A007814 (2 * n + 3)).toNat

end

end A228089.P3649189429563903292

/-! ## A228089.P16812606031983236317

`A228086(eq[1, A228085(n)])`
-/

namespace A228089.P16812606031983236317
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228085 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228086 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A228089.P16812606031983236317

/-! ## A228089.P4296897543723257324

`A228087(eq[1, A228085(n)])`
-/

namespace A228089.P4296897543723257324
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228085 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228087 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A228089.P4296897543723257324

/-!
# A228090: Numbers k for which a sum k + bitcount(k) cannot be obtained as a sum k2 + bitcount(k2) for any other k2<>k . Here bitcount(k) (A000120) gives the number of 1's in binary representation of nonnegative integer k.

The programs for A228090, there is no canonical definition to state claims against.
-/

/-! ## A228090.P6735586270369738993

`comp[A228236(n+1)]`
-/

namespace A228090.P6735586270369738993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228236 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A228090.P6735586270369738993

/-! ## A228090.P11328994777728941830

`eq[1, char[A228089(n+1)]]`
-/

namespace A228090.P11328994777728941830
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228089 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A228090.P11328994777728941830

/-! ## A228090.P501624149886532476

`eq[1, A228085(A092391(n))]`
-/

namespace A228090.P501624149886532476
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228085 (A092391 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A228090.P501624149886532476

/-! ## A228090.P13521612443691312914

`eq[1, A228085(A000120(n)+n)]`
-/

namespace A228090.P13521612443691312914
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228085 (A000120 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A228090.P13521612443691312914

/-! ## A228090.P2600666430692829983

`eq[1, char[A228086(A228088(n+1))]]`
-/

namespace A228090.P2600666430692829983
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228086 (A228088 (n + 1)).toNat

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A228090.P2600666430692829983

/-!
# A228091: Numbers n for which there exists such a natural number k < n that k + bitcount(k) = n + bitcount(n), where bitcount(k) (A000120) gives the number of 1's in binary representation of nonnegative integer k.

The programs for A228091, there is no canonical definition to state claims against.
-/

/-! ## A228091.P10835951303152860387

`lt[A228086(A092391(n)), n]`
-/

namespace A228091.P10835951303152860387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228086 (A092391 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A228091.P10835951303152860387

/-! ## A228091.P4958510701207754914

`lt[A228086(log2(A001316(n))+n), n]`
-/

namespace A228091.P4958510701207754914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228086 (SequenceMachineLib.roundAway (Real.logb 2 (A001316 n : ℝ) + (n : ℝ))).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A228091.P4958510701207754914

/-! ## A228091.P2065954348724783291

`lt[A228086(2*n-A011371(n)), n]`
-/

namespace A228091.P2065954348724783291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228086 ((2 * n : ℤ) - A011371 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A228091.P2065954348724783291

/-! ## A228091.P17863644417970690779

`lt[A228086(3*n-A005187(n)), n]`
-/

namespace A228091.P17863644417970690779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228086 ((3 * n : ℤ) - A005187 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A228091.P17863644417970690779

/-! ## A228091.P15440761251280846703

`lt[A228086(4*n-A004134(n)), n]`
-/

namespace A228091.P15440761251280846703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228086 ((4 * n : ℤ) - A004134 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A228091.P15440761251280846703

/-! ## A228091.P8486385341929162511

`lt[A228086(5*n-A120738(n)), n]`
-/

namespace A228091.P8486385341929162511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228086 ((5 * n : ℤ) - A120738 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A228091.P8486385341929162511

/-!
# A228093: Primes congruent to 5 (mod 504).

The programs for A228093, the canonical program `A228093.P7511362443758941122` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A228093 has offset 1).

The definition of A228093 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1653 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A228093.P7511362443758941122

`∩[A142643(n+1), A142892(n+1)]`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A228093

/-- `∩[A142643(n+1), A142892(n+1)]` -/
def P7511362443758941122.Spec : Prop :=
  ∀ n, (P7511362443758941122.a n : ℤ) = A228093 (n + 1)

theorem P7511362443758941122.correct : P7511362443758941122.Spec := by
  intro n
  simp only [A228093, Nat.add_sub_cancel]

end A228093

/-! ## A228093.P18397946350656352707

`∩[A140616(n+1), A142892(n+1)]`
-/

namespace A228093.P18397946350656352707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140616 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142892 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A228093.P18397946350656352707

namespace A228093

/-- `∩[A140616(n+1), A142892(n+1)]` -/
def P18397946350656352707.Spec : Prop :=
  ∀ n, (P18397946350656352707.a n : ℤ) = A228093 (n + 1)

end A228093

/-! ## A228093.P16989804309275502222

`∩[A142101(n+1), A142643(n+1)]`
-/

namespace A228093.P16989804309275502222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142101 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142643 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A228093.P16989804309275502222

namespace A228093

/-- `∩[A142101(n+1), A142643(n+1)]` -/
def P16989804309275502222.Spec : Prop :=
  ∀ n, (P16989804309275502222.a n : ℤ) = A228093 (n + 1)

end A228093

/-! ## A228093.P5666953971010038404

`∩[A107003(n+1), A142892(n+1)]`
-/

namespace A228093.P5666953971010038404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107003 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142892 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A228093.P5666953971010038404

namespace A228093

/-- `∩[A107003(n+1), A142892(n+1)]` -/
def P5666953971010038404.Spec : Prop :=
  ∀ n, (P5666953971010038404.a n : ℤ) = A228093 (n + 1)

end A228093

/-! ## A228093.P2747572820122996526

`p?[xor(5, 14*18*n)]`
-/

namespace A228093.P2747572820122996526
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 5 (14 * (18 * n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A228093.P2747572820122996526

namespace A228093

/-- `p?[xor(5, 14*18*n)]` -/
def P2747572820122996526.Spec : Prop :=
  ∀ n, (P2747572820122996526.a n : ℤ) = A228093 (n + 1)

end A228093

/-! ## A228093.P16054796906620743847

`p?[A102439(5*n)+4*n+1]`
-/

namespace A228093.P16054796906620743847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102439 (5 * n) + (4 * n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A228093.P16054796906620743847

namespace A228093

/-- `p?[A102439(5*n)+4*n+1]` -/
def P16054796906620743847.Spec : Prop :=
  ∀ n, P16054796906620743847.a n = A228093 (n + 1)

end A228093

/-! ## A228093.P15793499113817977811

`∩[A061240(n+1), A142643(n+1)]`
-/

namespace A228093.P15793499113817977811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061240 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142643 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A228093.P15793499113817977811

namespace A228093

/-- `∩[A061240(n+1), A142643(n+1)]` -/
def P15793499113817977811.Spec : Prop :=
  ∀ n, (P15793499113817977811.a n : ℤ) = A228093 (n + 1)

end A228093

/-! ## A228093.P4416145536056975928

`p?[A044102(A008596(n))+5]`
-/

namespace A228093.P4416145536056975928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044102 (A008596 n).toNat + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A228093.P4416145536056975928

namespace A228093

/-- `p?[A044102(A008596(n))+5]` -/
def P4416145536056975928.Spec : Prop :=
  ∀ n, P4416145536056975928.a n = A228093 (n + 1)

end A228093

/-! ## A228093.P4533621369179514486

`p?[A008606(A008603(n))+5]`
-/

namespace A228093.P4533621369179514486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008606 (A008603 n).toNat + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A228093.P4533621369179514486

namespace A228093

/-- `p?[A008606(A008603(n))+5]` -/
def P4533621369179514486.Spec : Prop :=
  ∀ n, P4533621369179514486.a n = A228093 (n + 1)

end A228093

/-! ## A228093.P14831942606664173461

`p?[A242215(28*n)]`
-/

namespace A228093.P14831942606664173461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242215 (28 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A228093.P14831942606664173461

namespace A228093

/-- `p?[A242215(28*n)]` -/
def P14831942606664173461.Spec : Prop :=
  ∀ n, P14831942606664173461.a n = A228093 (n + 1)

end A228093

/-!
# A228096: Numbers consisting of only odd digits such that no permutation of its digits yields a prime.

The programs for A228096, there is no canonical definition to state claims against.
-/

/-! ## A228096.P6031166443447810279

`∩[A014261(n+1), A067013(n+1)]`
-/

namespace A228096.P6031166443447810279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014261 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067013 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A228096.P6031166443447810279

/-! ## A228096.P15832461578452100195

`∩[A014261(n+1), A248010(n+1)]`
-/

namespace A228096.P15832461578452100195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014261 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248010 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A228096.P15832461578452100195

/-! ## A228096.P8695263562082811146

`∩[A067013(n+1), A320062(n+1)]`
-/

namespace A228096.P8695263562082811146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067013 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320062 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A228096.P8695263562082811146

/-! ## A228096.P13810198995886743770

`∩[A248010(n+1), A320062(n+1)]`
-/

namespace A228096.P13810198995886743770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248010 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320062 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A228096.P13810198995886743770

/-! ## A228096.P11516301947137120521

`∩[A014261(n+1), A067012(n+1)%A350536(n)]`
-/

namespace A228096.P11516301947137120521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014261 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A067012 (n + 1)) (A350536 n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A228096.P11516301947137120521

/-!
# A228098: Number of primes p > prime(n) and such that prime(n)*p < prime(n+1)^2.

The programs for A228098, there is no canonical definition to state claims against.
-/

/-! ## A228098.P11449779040626355050

`A247509(n+1)-A054977(n)`
-/

namespace A228098.P11449779040626355050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247509 (n + 1) - A054977 n

end

end A228098.P11449779040626355050

/-! ## A228098.P15677507679245050279

`A058197(n+1)%A247509(n+1)`
-/

namespace A228098.P15677507679245050279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A058197 (n + 1)) (A247509 (n + 1))

end

end A228098.P15677507679245050279

/-! ## A228098.P9796899064889931529

`A247509(n+1)-A177962(C(2, n²)+1)`
-/

namespace A228098.P9796899064889931529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247509 (n + 1) - A177962 (Nat.choose 2 (n ^ 2) + 1)

end

end A228098.P9796899064889931529

/-! ## A228098.P13633798703079782388

`A247509(n+1)-A067029(a(n-1)²+1)` with `a(0)=1`
-/

namespace A228098.P13633798703079782388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A247509 (n + 1) - A067029 (a (n - 1) ^ 2 + 1).toNat

end

end A228098.P13633798703079782388

/-! ## A228098.P15468480492363528263

`A247509(n+1)-A067029(10*a(n-1)+1)` with `a(0)=1`
-/

namespace A228098.P15468480492363528263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A247509 (n + 1) - A067029 (10 * a (n - 1) + 1).toNat

end

end A228098.P15468480492363528263

/-! ## A228098.P2668048178955825124

`A247509(n+1)-A000010(A089026(3*(n+1)))`
-/

namespace A228098.P2668048178955825124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247509 (n + 1) - A000010 (A089026 (3 * (n + 1))).toNat

end

end A228098.P2668048178955825124

/-! ## A228098.P10772916174563685842

`A247509(n+1)-A152714(A152714(a(n-1)))` with `a(0)=1`
-/

namespace A228098.P10772916174563685842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A247509 (n + 1) - A152714 (A152714 (a (n - 1)).toNat).toNat

end

end A228098.P10772916174563685842

/-! ## A228098.P9099915634663342652

`A282531(n+1)%A247509(n+1)`
-/

namespace A228098.P9099915634663342652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A282531 (n + 1)) (A247509 (n + 1))

end

end A228098.P9099915634663342652

/-! ## A228098.P11913305066768084798

`A002223(n+1)%A247509(n+1)`
-/

namespace A228098.P11913305066768084798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002223 (n + 1)) (A247509 (n + 1))

end

end A228098.P11913305066768084798

/-!
# A228099: Triangle read by rows, T(n, k) = prime(1)^p(k,1)*...*prime(n)^p(k,n) where p(k,j) is the j-th part of the k-th partition of n, additionally T(0,0) = 1. The partitions of n are ordered such that partitions of n into r parts appear in lexicographic order previous to the partitions of n into s parts if s < r. (Fenner-Loizou tree).

The programs for A228099, there is no canonical definition to state claims against.
-/

/-! ## A228099.P10917657323505967462

`A181821(A333485(n))`
-/

namespace A228099.P10917657323505967462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181821 (A333485 n).toNat

end

end A228099.P10917657323505967462

/-! ## A228099.P13211490386523917634

`A108951(A129129(n))`
-/

namespace A228099.P13211490386523917634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108951 (A129129 n).toNat

end

end A228099.P13211490386523917634

/-! ## A228099.P17682443611717904461

`∏{e}[A063008(n), A002110(#)]`
-/

namespace A228099.P17682443611717904461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063008 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A002110 (Nat.factorization (f1 n).natAbs p)

end

end A228099.P17682443611717904461

/-! ## A228099.P18190803405624028355

`∏{e}[A063008(n), A034386(A000040(#))]`
-/

namespace A228099.P18190803405624028355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063008 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A034386 (A000040 (Nat.factorization (f1 n).natAbs p)).toNat

end

end A228099.P18190803405624028355

/-! ## A228099.P1988393271121174672

`A124859(A063008(n))`
-/

namespace A228099.P1988393271121174672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124859 (A063008 n).toNat

end

end A228099.P1988393271121174672

