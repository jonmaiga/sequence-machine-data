import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C009
import Seq.B000.C012
import Seq.B000.C014
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C019
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C037
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C006
import Seq.B003.C000
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
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
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
import Seq.Opaque.C015
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024

/-!
# A252200: Number of (n+2)X(7+2) 0..3 arrays with every 3X3 subblock row, column, diagonal and antidiagonal sum not equal to 0 3 5 6 or 7.

The programs for A252200, there is no canonical definition to state claims against.
-/

/-! ## A252200.P11734388022838739207

`A252201(A374008(n+1))`
-/

namespace A252200.P11734388022838739207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252201 (A374008 (n + 1)).toNat

end

end A252200.P11734388022838739207

/-! ## A252200.P1209409283509664256

`A252201(A167499(n+5)+2)`
-/

namespace A252200.P1209409283509664256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252201 (A167499 (n + 5) + 2).toNat

end

end A252200.P1209409283509664256

/-! ## A252200.P4343475630068960858

`A252201(eq[8, A131818(n+1)])`
-/

namespace A252200.P4343475630068960858
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252201 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A252200.P4343475630068960858

/-! ## A252200.P269747007342280512

`A252201(A055999(n+4))`
-/

namespace A252200.P269747007342280512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252201 (A055999 (n + 4)).toNat

end

end A252200.P269747007342280512

/-! ## A252200.P17169209731855324649

`A252201(eq[4, A219347(n)])`
-/

namespace A252200.P17169209731855324649
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252201 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A252200.P17169209731855324649

/-!
# A252202: Number of (n+2)X(n+2) 0..3 arrays with every 3X3 subblock row and column sum equal to 1 3 4 6 or 7 and every 3X3 diagonal and antidiagonal sum not equal to 1 3 4 6 or 7.

The programs for A252202, there is no canonical definition to state claims against.
-/

/-! ## A252202.P7629349566790313860

`A252210((n+1)²+n²)`
-/

namespace A252202.P7629349566790313860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252210 ((n + 1) ^ 2 + n ^ 2)

end

end A252202.P7629349566790313860

/-! ## A252202.P78711161329065711

`lcm(2, A252210(A001844(n)))`
-/

namespace A252202.P78711161329065711
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A252210 (A001844 n).toNat)

end

end A252202.P78711161329065711

/-! ## A252202.P15132302202778158437

`record[A003982(n)*A252210(n+1)]`
-/

namespace A252202.P15132302202778158437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A252210 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252202.P15132302202778158437

/-! ## A252202.P9372882387113551286

`record[root(A252210(n+1), A143182(n))]`
-/

namespace A252202.P9372882387113551286
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A252210 (n + 1) : ℝ) ^ (1 / (A143182 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252202.P9372882387113551286

/-! ## A252202.P9640295520340647756

`record[gcd(A114327(n), A252210(n+1))]`
-/

namespace A252202.P9640295520340647756
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A252210 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252202.P9640295520340647756

/-!
# A252203: Number of (n+2)X(1+2) 0..3 arrays with every 3X3 subblock row and column sum equal to 1 3 4 6 or 7 and every 3X3 diagonal and antidiagonal sum not equal to 1 3 4 6 or 7.

The programs for A252203, there is no canonical definition to state claims against.
-/

/-! ## A252203.P14181217404277493653

`A252210(∑[n]+1)`
-/

namespace A252203.P14181217404277493653
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252210 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A252203.P14181217404277493653

/-! ## A252203.P8870864085601497504

`or(char[1], A252210(A000124(n)))`
-/

namespace A252203.P8870864085601497504
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A252210 (A000124 n).toNat)

end

end A252203.P8870864085601497504

/-! ## A252203.P2106601206947518719

`record[A252210(n+1)/A022166(n)]`
-/

namespace A252203.P2106601206947518719
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A252210 (n + 1) : ℚ) / (A022166 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252203.P2106601206947518719

/-! ## A252203.P4052781739812437338

`record[gcd(A002262(n), A252210(n+1))]`
-/

namespace A252203.P4052781739812437338
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A252210 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252203.P4052781739812437338

/-! ## A252203.P16041730318536658832

`A252210(A000124(n))+A000035(2*n)`
-/

namespace A252203.P16041730318536658832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252210 (A000124 n).toNat + A000035 (2 * n)

end

end A252203.P16041730318536658832

/-!
# A252204: Number of (n+2)X(2+2) 0..3 arrays with every 3X3 subblock row and column sum equal to 1 3 4 6 or 7 and every 3X3 diagonal and antidiagonal sum not equal to 1 3 4 6 or 7.

The programs for A252204, there is no canonical definition to state claims against.
-/

/-! ## A252204.P673350574301732749

`A252210(∑[n+1]+2)`
-/

namespace A252204.P673350574301732749
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252210 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A252204.P673350574301732749

/-! ## A252204.P14789166425595298467

`record[gcd(A002262(n), A252210(n+2))]`
-/

namespace A252204.P14789166425595298467
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A252210 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252204.P14789166425595298467

/-! ## A252204.P6726706639263294828

`record[A252210(A133263(A008611(n)))]`
-/

namespace A252204.P6726706639263294828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252210 (A133263 (A008611 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252204.P6726706639263294828

/-! ## A252204.P15920415354461264609

`record[A252210(A133263(A103221(n)))]`
-/

namespace A252204.P15920415354461264609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252210 (A133263 (A103221 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252204.P15920415354461264609

/-! ## A252204.P15835601105265811523

`or(A000038(n), A252210(A133263(n+1)))`
-/

namespace A252204.P15835601105265811523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000038 n) (A252210 (A133263 (n + 1)).toNat)

end

end A252204.P15835601105265811523

/-!
# A252205: Number of (n+2)X(3+2) 0..3 arrays with every 3X3 subblock row and column sum equal to 1 3 4 6 or 7 and every 3X3 diagonal and antidiagonal sum not equal to 1 3 4 6 or 7.

The programs for A252205, there is no canonical definition to state claims against.
-/

/-! ## A252205.P4664819999454417418

`A252210(∑[n+2]+4)`
-/

namespace A252205.P4664819999454417418
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252210 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A252205.P4664819999454417418

/-! ## A252205.P4152518349885052238

`lcm(2, A252210(A167614(n+1)))`
-/

namespace A252205.P4152518349885052238
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A252210 (A167614 (n + 1)).toNat)

end

end A252205.P4152518349885052238

/-! ## A252205.P3475588802465571877

`A252210(A167614(n+1))%A252206(n+1)`
-/

namespace A252205.P3475588802465571877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A252210 (A167614 (n + 1)).toNat) (A252206 (n + 1))

end

end A252205.P3475588802465571877

/-! ## A252205.P8996503083197025895

`A252210(A034856(n+2))+A151934(n+1)`
-/

namespace A252205.P8996503083197025895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252210 (A034856 (n + 2)).toNat + A151934 (n + 1)

end

end A252205.P8996503083197025895

/-! ## A252205.P2946989177111615395

`lcm(A252210(A034856(n+2)), A290104(n+1))`
-/

namespace A252205.P2946989177111615395
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A252210 (A034856 (n + 2)).toNat) (A290104 (n + 1))

end

end A252205.P2946989177111615395

/-!
# A252206: Number of (n+2)X(4+2) 0..3 arrays with every 3X3 subblock row and column sum equal to 1 3 4 6 or 7 and every 3X3 diagonal and antidiagonal sum not equal to 1 3 4 6 or 7.

The programs for A252206, there is no canonical definition to state claims against.
-/

/-! ## A252206.P3794398494728918546

`A252210(A374004(n+1))`
-/

namespace A252206.P3794398494728918546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252210 (A374004 (n + 1)).toNat

end

end A252206.P3794398494728918546

/-! ## A252206.P1167454068173254802

`A252210(A052905(n)+9)`
-/

namespace A252206.P1167454068173254802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252210 (A052905 n + 9).toNat

end

end A252206.P1167454068173254802

/-! ## A252206.P14559581772742080258

`A252210(A055999(n)+10)`
-/

namespace A252206.P14559581772742080258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252210 (A055999 n + 10).toNat

end

end A252206.P14559581772742080258

/-! ## A252206.P18278245259708614497

`A252210(A167614(n+2)+1)`
-/

namespace A252206.P18278245259708614497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252210 (A167614 (n + 2) + 1).toNat

end

end A252206.P18278245259708614497

/-! ## A252206.P3253564457209447375

`A252210(A166136(n+2)-2)`
-/

namespace A252206.P3253564457209447375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252210 (A166136 (n + 2) - 2).toNat

end

end A252206.P3253564457209447375

/-!
# A252207: Number of (n+2)X(5+2) 0..3 arrays with every 3X3 subblock row and column sum equal to 1 3 4 6 or 7 and every 3X3 diagonal and antidiagonal sum not equal to 1 3 4 6 or 7.

The programs for A252207, there is no canonical definition to state claims against.
-/

/-! ## A252207.P12224210964333047446

`A252210(A374005(n+1))`
-/

namespace A252207.P12224210964333047446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252210 (A374005 (n + 1)).toNat

end

end A252207.P12224210964333047446

/-! ## A252207.P4532665730940109988

`A252210(A000217(n+4)+5)`
-/

namespace A252207.P4532665730940109988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252210 (A000217 (n + 4) + 5).toNat

end

end A252207.P4532665730940109988

/-! ## A252207.P8389972933936435149

`A252210(A046691(n+3))`
-/

namespace A252207.P8389972933936435149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252210 (A046691 (n + 3)).toNat

end

end A252207.P8389972933936435149

/-! ## A252207.P14579363901176994573

`A252210(Δ[A023545(n+1)])`
-/

namespace A252207.P14579363901176994573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252210 (f1 (n + 1) - f1 n).toNat

end

end A252207.P14579363901176994573

/-! ## A252207.P18418643961377419782

`A252210(eq[8, A057728(n+1)])`
-/

namespace A252207.P18418643961377419782
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057728 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252210 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A252207.P18418643961377419782

/-!
# A252208: Number of (n+2)X(6+2) 0..3 arrays with every 3X3 subblock row and column sum equal to 1 3 4 6 or 7 and every 3X3 diagonal and antidiagonal sum not equal to 1 3 4 6 or 7.

The programs for A252208, there is no canonical definition to state claims against.
-/

/-! ## A252208.P4445825305699164490

`A252210(A374007(n+1))`
-/

namespace A252208.P4445825305699164490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252210 (A374007 (n + 1)).toNat

end

end A252208.P4445825305699164490

/-! ## A252208.P2206991836032687404

`A252210(A166136(n+4))`
-/

namespace A252208.P2206991836032687404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252210 (A166136 (n + 4)).toNat

end

end A252208.P2206991836032687404

/-! ## A252208.P3438963734552291767

`A252210(A000217(n+5)+6)`
-/

namespace A252208.P3438963734552291767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252210 (A000217 (n + 5) + 6).toNat

end

end A252208.P3438963734552291767

/-! ## A252208.P958751484806579048

`A252210(eq[3, A219347(n)])`
-/

namespace A252208.P958751484806579048
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252210 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A252208.P958751484806579048

/-! ## A252208.P6338797015963385908

`A252210(eq[16, A057728(n+1)])`
-/

namespace A252208.P6338797015963385908
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057728 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252210 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A252208.P6338797015963385908

/-!
# A252209: Number of (n+2)X(7+2) 0..3 arrays with every 3X3 subblock row and column sum equal to 1 3 4 6 or 7 and every 3X3 diagonal and antidiagonal sum not equal to 1 3 4 6 or 7.

The programs for A252209, there is no canonical definition to state claims against.
-/

/-! ## A252209.P10931203989197584255

`A252210(A374008(n+1))`
-/

namespace A252209.P10931203989197584255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252210 (A374008 (n + 1)).toNat

end

end A252209.P10931203989197584255

/-! ## A252209.P13237595056713846770

`A252210(eq[8, A131818(n+1)])`
-/

namespace A252209.P13237595056713846770
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252210 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A252209.P13237595056713846770

/-! ## A252209.P1274901571979936528

`A252210(A055999(n+4))`
-/

namespace A252209.P1274901571979936528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252210 (A055999 (n + 4)).toNat

end

end A252209.P1274901571979936528

/-! ## A252209.P4230876538109944783

`A252210(eq[4, A219347(n)])`
-/

namespace A252209.P4230876538109944783
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252210 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A252209.P4230876538109944783

/-! ## A252209.P15836781033500884351

`A252210(eq[10, A185782(n+1)])`
-/

namespace A252209.P15836781033500884351
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252210 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A252209.P15836781033500884351

/-!
# A252211: Number of (n+2)X(n+2) 0..3 arrays with every 3X3 subblock row, column, diagonal and antidiagonal sum not equal to 0 2 5 6 or 7.

The programs for A252211, there is no canonical definition to state claims against.
-/

/-! ## A252211.P2257703158242982765

`A252219(∑[4*n]+1)`
-/

namespace A252211.P2257703158242982765
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252219 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A252211.P2257703158242982765

/-! ## A252211.P11975364914788701563

`record[gcd(A049581(n), A252219(n+1))]`
-/

namespace A252211.P11975364914788701563
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A049581 n) (A252219 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252211.P11975364914788701563

/-! ## A252211.P6086821557379056480

`or(A000038(n), A252219(A001844(n)))`
-/

namespace A252211.P6086821557379056480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000038 n) (A252219 (A001844 n).toNat)

end

end A252211.P6086821557379056480

/-! ## A252211.P5826650176128113649

`A326291(n+1)+A252219(A001844(n))`
-/

namespace A252211.P5826650176128113649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326291 (n + 1) + A252219 (A001844 n).toNat

end

end A252211.P5826650176128113649

/-! ## A252211.P17171869715858677317

`lcm(A008836(n+1), A252219(A001844(n)))`
-/

namespace A252211.P17171869715858677317
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A008836 (n + 1)) (A252219 (A001844 n).toNat)

end

end A252211.P17171869715858677317

/-!
# A252212: Number of (n+2)X(1+2) 0..3 arrays with every 3X3 subblock row, column, diagonal and antidiagonal sum not equal to 0 2 5 6 or 7.

The programs for A252212, there is no canonical definition to state claims against.
-/

/-! ## A252212.P11186438189713404394

`A252219(∑[n]+1)`
-/

namespace A252212.P11186438189713404394
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252219 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A252212.P11186438189713404394

/-! ## A252212.P3202714988752795095

`record[gcd(A014473(n), A252219(n+1))]`
-/

namespace A252212.P3202714988752795095
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A014473 n) (A252219 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252212.P3202714988752795095

/-! ## A252212.P7181661867065635044

`record[A252219(n+1)/A126065(n+1)]`
-/

namespace A252212.P7181661867065635044
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A252219 (n + 1) : ℚ) / (A126065 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252212.P7181661867065635044

/-! ## A252212.P7932573313453269199

`record[root(A252219(n+1), A002260(n+1))]`
-/

namespace A252212.P7932573313453269199
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A252219 (n + 1) : ℝ) ^ (1 / (A002260 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252212.P7932573313453269199

/-! ## A252212.P3957542894779821004

`lcm(A016303(n), A252219(A000124(n)))`
-/

namespace A252212.P3957542894779821004
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A016303 n) (A252219 (A000124 n).toNat)

end

end A252212.P3957542894779821004

/-!
# A252213: Number of (n+2)X(2+2) 0..3 arrays with every 3X3 subblock row, column, diagonal and antidiagonal sum not equal to 0 2 5 6 or 7.

The programs for A252213, there is no canonical definition to state claims against.
-/

/-! ## A252213.P2718042975709529175

`A252219(∑[n+1]+2)`
-/

namespace A252213.P2718042975709529175
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252219 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A252213.P2718042975709529175

/-! ## A252213.P11957170353424283402

`A252219(A000096(n+1))+char[41]`
-/

namespace A252213.P11957170353424283402
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  41

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252219 (A000096 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A252213.P11957170353424283402

/-! ## A252213.P16924932623843000591

`A000035(2*n+1)*A252219(A000096(n+1))`
-/

namespace A252213.P16924932623843000591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (2 * n + 1) * A252219 (A000096 (n + 1)).toNat

end

end A252213.P16924932623843000591

/-! ## A252213.P623338281135220333

`A007318(A000925(n))*A252219(A000096(n+1))`
-/

namespace A252213.P623338281135220333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A000925 n).toNat * A252219 (A000096 (n + 1)).toNat

end

end A252213.P623338281135220333

/-! ## A252213.P6669413048291631133

`A252219(A000096(n+1))/A007318(A000925(n+1))`
-/

namespace A252213.P6669413048291631133
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A252219 (A000096 (n + 1)).toNat : ℚ) / (A007318 (A000925 (n + 1)).toNat : ℚ)

end

end A252213.P6669413048291631133

/-!
# A252214: Number of (n+2)X(3+2) 0..3 arrays with every 3X3 subblock row, column, diagonal and antidiagonal sum not equal to 0 2 5 6 or 7.

The programs for A252214, there is no canonical definition to state claims against.
-/

/-! ## A252214.P12060205672997103096

`A252219(∑[n+2]+4)`
-/

namespace A252214.P12060205672997103096
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252219 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A252214.P12060205672997103096

/-! ## A252214.P155570283253938561

`A252219(A167614(n+1))+A185238(n)`
-/

namespace A252214.P155570283253938561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252219 (A167614 (n + 1)).toNat + A185238 n

end

end A252214.P155570283253938561

/-! ## A252214.P6520240871017293251

`A252219(A167614(n+1))%A252198(n+1)`
-/

namespace A252214.P6520240871017293251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A252219 (A167614 (n + 1)).toNat) (A252198 (n + 1))

end

end A252214.P6520240871017293251

/-! ## A252214.P3828009013047744956

`or(A000038(n), A252219(A055999(n)+4))`
-/

namespace A252214.P3828009013047744956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000038 n) (A252219 (A055999 n + 4).toNat)

end

end A252214.P3828009013047744956

/-! ## A252214.P3267496209442249507

`and(1, A055580(n))*A252219(A055999(n)+4)`
-/

namespace A252214.P3267496209442249507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A055580 n) * A252219 (A055999 n + 4).toNat

end

end A252214.P3267496209442249507

/-!
# A252215: Number of (n+2)X(4+2) 0..3 arrays with every 3X3 subblock row, column, diagonal and antidiagonal sum not equal to 0 2 5 6 or 7.

The programs for A252215, there is no canonical definition to state claims against.
-/

/-! ## A252215.P11146157567062536379

`A252219(A374004(n+1))`
-/

namespace A252215.P11146157567062536379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252219 (A374004 (n + 1)).toNat

end

end A252215.P11146157567062536379

/-! ## A252215.P17505852039303218652

`A252219(A141214(n)+7)`
-/

namespace A252215.P17505852039303218652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252219 (A141214 n + 7).toNat

end

end A252215.P17505852039303218652

/-! ## A252215.P15466710875668129134

`A252219(A167614(n+2)+1)`
-/

namespace A252215.P15466710875668129134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252219 (A167614 (n + 2) + 1).toNat

end

end A252215.P15466710875668129134

/-! ## A252215.P17800764243296020079

`A252219(Δ[A023545(n+1)-n²])`
-/

namespace A252215.P17800764243296020079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1) - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252219 (f1 (n + 1) - f1 n).toNat

end

end A252215.P17800764243296020079

/-! ## A252215.P1601008441402027558

`lcm((-1)^n, A252219(A000096(n+2)+5))`
-/

namespace A252215.P1601008441402027558
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A252219 (A000096 (n + 2) + 5).toNat)

end

end A252215.P1601008441402027558

/-!
# A252216: Number of (n+2)X(5+2) 0..3 arrays with every 3X3 subblock row, column, diagonal and antidiagonal sum not equal to 0 2 5 6 or 7.

The programs for A252216, there is no canonical definition to state claims against.
-/

/-! ## A252216.P1947913039509189826

`A252219(A374005(n+1))`
-/

namespace A252216.P1947913039509189826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252219 (A374005 (n + 1)).toNat

end

end A252216.P1947913039509189826

/-! ## A252216.P15484860666321539867

`A252219(A167499(n+3))`
-/

namespace A252216.P15484860666321539867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252219 (A167499 (n + 3)).toNat

end

end A252216.P15484860666321539867

/-! ## A252216.P1752318085239386881

`A252219(A056000(n)+15)`
-/

namespace A252216.P1752318085239386881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252219 (A056000 n + 15).toNat

end

end A252216.P1752318085239386881

/-! ## A252216.P14412943255082045323

`A252219(A000217(n+4)+5)`
-/

namespace A252216.P14412943255082045323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252219 (A000217 (n + 4) + 5).toNat

end

end A252216.P14412943255082045323

/-! ## A252216.P3386963608301033206

`A252219(A167614(n+1)+2*n+9)`
-/

namespace A252216.P3386963608301033206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252219 (A167614 (n + 1) + (2 * n + 9 : ℤ)).toNat

end

end A252216.P3386963608301033206

/-!
# A252217: Number of (n+2)X(6+2) 0..3 arrays with every 3X3 subblock row, column, diagonal and antidiagonal sum not equal to 0 2 5 6 or 7.

The programs for A252217, there is no canonical definition to state claims against.
-/

/-! ## A252217.P4601598090723868344

`A252219(A374007(n+1))`
-/

namespace A252217.P4601598090723868344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252219 (A374007 (n + 1)).toNat

end

end A252217.P4601598090723868344

/-! ## A252217.P17271312652795262840

`A252219(Δ[A111396(n)]+9)`
-/

namespace A252217.P17271312652795262840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111396 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252219 (f1 (n + 1) - f1 n + 9).toNat

end

end A252217.P17271312652795262840

/-! ## A252217.P9324606260045782362

`A252219(A000124(n+5)+5)`
-/

namespace A252217.P9324606260045782362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252219 (A000124 (n + 5) + 5).toNat

end

end A252217.P9324606260045782362

/-! ## A252217.P5546448781171151119

`A252219(A000217(n+5)+6)`
-/

namespace A252217.P5546448781171151119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252219 (A000217 (n + 5) + 6).toNat

end

end A252217.P5546448781171151119

/-! ## A252217.P14886414310667959960

`A252219(A055998(n+3)+9)`
-/

namespace A252217.P14886414310667959960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252219 (A055998 (n + 3) + 9).toNat

end

end A252217.P14886414310667959960

/-!
# A252218: Number of (n+2)X(7+2) 0..3 arrays with every 3X3 subblock row, column, diagonal and antidiagonal sum not equal to 0 2 5 6 or 7.

The programs for A252218, there is no canonical definition to state claims against.
-/

/-! ## A252218.P16057952025196003766

`A252219(A374008(n+1))`
-/

namespace A252218.P16057952025196003766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252219 (A374008 (n + 1)).toNat

end

end A252218.P16057952025196003766

/-! ## A252218.P17183055959418321859

`A252219(A167499(n+5)+2)`
-/

namespace A252218.P17183055959418321859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252219 (A167499 (n + 5) + 2).toNat

end

end A252218.P17183055959418321859

/-! ## A252218.P119679248604167243

`A252219(A000124(n+6)+6)`
-/

namespace A252218.P119679248604167243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252219 (A000124 (n + 6) + 6).toNat

end

end A252218.P119679248604167243

/-! ## A252218.P12409001269954089593

`A252219(A055999(n+3)+13)`
-/

namespace A252218.P12409001269954089593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252219 (A055999 (n + 3) + 13).toNat

end

end A252218.P12409001269954089593

/-! ## A252218.P7503185120551346623

`A252219(eq[8, A131818(n+1)])`
-/

namespace A252218.P7503185120551346623
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252219 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A252218.P7503185120551346623

/-!
# A252220: Number of (n+2)X(n+2) 0..2 arrays with every 3X3 subblock row and column sum 2 3 or 4 and every diagonal and antidiagonal sum not 2 3 or 4.

The programs for A252220, there is no canonical definition to state claims against.
-/

/-! ## A252220.P5317614113109197329

`A252228((n+1)²+n²)`
-/

namespace A252220.P5317614113109197329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252228 ((n + 1) ^ 2 + n ^ 2)

end

end A252220.P5317614113109197329

/-! ## A252220.P6495078136075719964

`lcm(2, A252228(A001844(n)))`
-/

namespace A252220.P6495078136075719964
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A252228 (A001844 n).toNat)

end

end A252220.P6495078136075719964

/-! ## A252220.P265809322829622289

`record[A003982(n)*A252228(n+1)]`
-/

namespace A252220.P265809322829622289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A252228 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252220.P265809322829622289

/-! ## A252220.P6705791066526046906

`record[gcd(A114327(n), A252228(n+1))]`
-/

namespace A252220.P6705791066526046906
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A252228 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252220.P6705791066526046906

/-! ## A252220.P6010563273854328593

`A000108(C(2, n+2))*A252228(A001844(n))`
-/

namespace A252220.P6010563273854328593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (Nat.choose 2 (n + 2)) * A252228 (A001844 n).toNat

end

end A252220.P6010563273854328593

/-!
# A252221: Number of (n+2) X (1+2) 0..2 arrays with every 3 X 3 subblock row and column sum 2 3 or 4 and every diagonal and antidiagonal sum not 2 3 or 4.

The programs for A252221, there is no canonical definition to state claims against.
-/

/-! ## A252221.P2471976459621984327

`A252228(∑[n]+1)`
-/

namespace A252221.P2471976459621984327
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252228 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A252221.P2471976459621984327

/-! ## A252221.P6297758904274719543

`lcm(2, A252228(A000124(n)))`
-/

namespace A252221.P6297758904274719543
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A252228 (A000124 n).toNat)

end

end A252221.P6297758904274719543

/-! ## A252221.P11957303784673482433

`record[A252228(A254052(n+1))]`
-/

namespace A252221.P11957303784673482433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252228 (A254052 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252221.P11957303784673482433

/-! ## A252221.P9183181003227909881

`record[gcd(A002262(n), A252228(n+1))]`
-/

namespace A252221.P9183181003227909881
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A252228 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252221.P9183181003227909881

/-! ## A252221.P16954888252638197802

`A029653(A000096(n))*A252228(A000124(n))`
-/

namespace A252221.P16954888252638197802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029653 (A000096 n).toNat * A252228 (A000124 n).toNat

end

end A252221.P16954888252638197802

/-!
# A252222: Number of (n+2) X (2+2) 0..2 arrays with every 3 X 3 subblock row and column sum 2 3 or 4 and every diagonal and antidiagonal sum not 2 3 or 4.

The programs for A252222, there is no canonical definition to state claims against.
-/

/-! ## A252222.P14136123269424076345

`A252228(∑[n+1]+2)`
-/

namespace A252222.P14136123269424076345
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252228 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A252222.P14136123269424076345

/-! ## A252222.P18413082915635160217

`record[gcd(A002262(n), A252228(n+2))]`
-/

namespace A252222.P18413082915635160217
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A252228 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252222.P18413082915635160217

/-! ## A252222.P18014371252538619777

`lcm(2, A252228(A000096(n+1)))`
-/

namespace A252222.P18014371252538619777
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A252228 (A000096 (n + 1)).toNat)

end

end A252222.P18014371252538619777

/-! ## A252222.P12107350135057577655

`record[A252228(A000096(A154958(n)))]`
-/

namespace A252222.P12107350135057577655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252228 (A000096 (A154958 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252222.P12107350135057577655

/-! ## A252222.P7947107200525427334

`char[A002262(n)]*A252228(A000096(n+1))`
-/

namespace A252222.P7947107200525427334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A252228 (A000096 (n + 1)).toNat

end

end A252222.P7947107200525427334

/-! ## A252222.P10085219078244396199

`A252228(A000096(n+1))+A000038(n+1)`
-/

namespace A252222.P10085219078244396199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252228 (A000096 (n + 1)).toNat + A000038 (n + 1)

end

end A252222.P10085219078244396199

/-! ## A252222.P14702418174454329265

`A252228(A000096(n+1))+A000035(2*n)`
-/

namespace A252222.P14702418174454329265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252228 (A000096 (n + 1)).toNat + A000035 (2 * n)

end

end A252222.P14702418174454329265

/-! ## A252222.P6790889211176578210

`A252228(A000096(n+1))+char[A127338(n+1)]`
-/

namespace A252222.P6790889211176578210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127338 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252228 (A000096 (n + 1)).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A252222.P6790889211176578210

/-! ## A252222.P9438547030434998258

`A001221(A001248(n+1))*A252228(A000096(n+1))`
-/

namespace A252222.P9438547030434998258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A001248 (n + 1)).toNat * A252228 (A000096 (n + 1)).toNat

end

end A252222.P9438547030434998258

/-!
# A252223: Number of (n+2) X (3+2) 0..2 arrays with every 3 X 3 subblock row and column sum 2 3 or 4 and every diagonal and antidiagonal sum not 2 3 or 4.

The programs for A252223, there is no canonical definition to state claims against.
-/

/-! ## A252223.P17323930529966364853

`A252228(A167614(n+1))`
-/

namespace A252223.P17323930529966364853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252228 (A167614 (n + 1)).toNat

end

end A252223.P17323930529966364853

/-! ## A252223.P13838758448973933591

`A252228(A373663(n+1))`
-/

namespace A252223.P13838758448973933591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252228 (A373663 (n + 1)).toNat

end

end A252223.P13838758448973933591

/-! ## A252223.P4415222231749643725

`A252228(A055998(n)+6)`
-/

namespace A252223.P4415222231749643725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252228 (A055998 n + 6).toNat

end

end A252223.P4415222231749643725

/-! ## A252223.P12652077676125994192

`A252228(A046691(n)+7)`
-/

namespace A252223.P12652077676125994192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252228 (A046691 n + 7).toNat

end

end A252223.P12652077676125994192

/-! ## A252223.P10247709205128809374

`A252228(A167499(n)+n)`
-/

namespace A252223.P10247709205128809374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252228 (A167499 n + (n : ℤ)).toNat

end

end A252223.P10247709205128809374

/-! ## A252223.P3226407791397337067

`A252228(A167487(n+1)-4)`
-/

namespace A252223.P3226407791397337067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252228 (A167487 (n + 1) - 4).toNat

end

end A252223.P3226407791397337067

/-! ## A252223.P18173830519229734713

`A252228(n-(2-A167487(n)))`
-/

namespace A252223.P18173830519229734713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252228 ((n : ℤ) - (2 - A167487 n)).toNat

end

end A252223.P18173830519229734713

/-! ## A252223.P12493839365404702379

`A252228(∑[n+3]+1)`
-/

namespace A252223.P12493839365404702379
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252228 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A252223.P12493839365404702379

/-! ## A252223.P4870326774859241085

`lcm(2, A252228(Δ[A008778(n)]))`
-/

namespace A252223.P4870326774859241085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A252228 (f1 (n + 1) - f1 n).toNat)

end

end A252223.P4870326774859241085

/-! ## A252223.P7166264029013196250

`A252228(Δ[A008778(n)])+A010673(2*n)`
-/

namespace A252223.P7166264029013196250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252228 (f1 (n + 1) - f1 n).toNat + A010673 (2 * n)

end

end A252223.P7166264029013196250

/-!
# A252224: Number of (n+2) X (4+2) 0..2 arrays with every 3 X 3 subblock row and column sum 2 3 or 4 and every diagonal and antidiagonal sum not 2 3 or 4.

The programs for A252224, there is no canonical definition to state claims against.
-/

/-! ## A252224.P10765530931792664130

`A252228(A374004(n+1))`
-/

namespace A252224.P10765530931792664130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252228 (A374004 (n + 1)).toNat

end

end A252224.P10765530931792664130

/-! ## A252224.P11782494438417268601

`A252228(A052905(n)+9)`
-/

namespace A252224.P11782494438417268601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252228 (A052905 n + 9).toNat

end

end A252224.P11782494438417268601

/-! ## A252224.P12100340144231979125

`A252228(A167614(n+2)+1)`
-/

namespace A252224.P12100340144231979125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252228 (A167614 (n + 2) + 1).toNat

end

end A252224.P12100340144231979125

/-! ## A252224.P11551251664791841251

`A252228(A166136(n+2)-2)`
-/

namespace A252224.P11551251664791841251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252228 (A166136 (n + 2) - 2).toNat

end

end A252224.P11551251664791841251

/-! ## A252224.P15084757928939640522

`A252228(A000124(n+3)+3)`
-/

namespace A252224.P15084757928939640522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252228 (A000124 (n + 3) + 3).toNat

end

end A252224.P15084757928939640522

/-! ## A252224.P5837057693820350327

`A252228(A167487(n+2)-3)`
-/

namespace A252224.P5837057693820350327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252228 (A167487 (n + 2) - 3).toNat

end

end A252224.P5837057693820350327

/-! ## A252224.P11389119711883829860

`A252228(A000217(n+3)+4)`
-/

namespace A252224.P11389119711883829860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252228 (A000217 (n + 3) + 4).toNat

end

end A252224.P11389119711883829860

/-! ## A252224.P8294746151706958561

`A252228(A166136(n+1)+1+n)`
-/

namespace A252224.P8294746151706958561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252228 (A166136 (n + 1) + 1 + (n : ℤ)).toNat

end

end A252224.P8294746151706958561

/-! ## A252224.P3583674496796368947

`A252228(∑[n+4]+3)`
-/

namespace A252224.P3583674496796368947
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252228 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A252224.P3583674496796368947

/-!
# A252225: Number of (n+2) X (5+2) 0..2 arrays with every 3 X 3 subblock row and column sum 2 3 or 4 and every diagonal and antidiagonal sum not 2 3 or 4.

The programs for A252225, there is no canonical definition to state claims against.
-/

/-! ## A252225.P5187377526468376076

`A252228(A374005(n+1))`
-/

namespace A252225.P5187377526468376076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252228 (A374005 (n + 1)).toNat

end

end A252225.P5187377526468376076

/-! ## A252225.P5404406964791734056

`A252228(A167499(n+3))`
-/

namespace A252225.P5404406964791734056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252228 (A167499 (n + 3)).toNat

end

end A252225.P5404406964791734056

/-! ## A252225.P7577866173703138755

`A252228(A027379(n+2)+8)`
-/

namespace A252225.P7577866173703138755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252228 (A027379 (n + 2) + 8).toNat

end

end A252225.P7577866173703138755

/-! ## A252225.P6019834428078077277

`A252228(A046691(n+2)+9)`
-/

namespace A252225.P6019834428078077277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252228 (A046691 (n + 2) + 9).toNat

end

end A252225.P6019834428078077277

/-! ## A252225.P11396862893246855395

`lcm(2, A252228(A000124(n+4)+4))`
-/

namespace A252225.P11396862893246855395
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A252228 (A000124 (n + 4) + 4).toNat)

end

end A252225.P11396862893246855395

/-! ## A252225.P5344384135243434248

`A252228(A008619(Δ[A026046(n+6)]))`
-/

namespace A252225.P5344384135243434248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026046 (n + 6)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252228 (A008619 (f1 (n + 1) - f1 n).toNat).toNat

end

end A252225.P5344384135243434248

/-! ## A252225.P1289757020169030083

`A252228(∑[n+5]+6)`
-/

namespace A252225.P1289757020169030083
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252228 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A252225.P1289757020169030083

/-!
# A252226: Number of (n+2) X (6+2) 0..2 arrays with every 3 X 3 subblock row and column sum 2 3 or 4 and every diagonal and antidiagonal sum not 2 3 or 4.

The programs for A252226, there is no canonical definition to state claims against.
-/

/-! ## A252226.P6802091423823606570

`A252228(A374007(n+1))`
-/

namespace A252226.P6802091423823606570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252228 (A374007 (n + 1)).toNat

end

end A252226.P6802091423823606570

/-! ## A252226.P7183242990161266483

`A252228(A166136(n+4))`
-/

namespace A252226.P7183242990161266483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252228 (A166136 (n + 4)).toNat

end

end A252226.P7183242990161266483

/-! ## A252226.P13710027268759505697

`A252228(A167499(n+4)+1)`
-/

namespace A252226.P13710027268759505697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252228 (A167499 (n + 4) + 1).toNat

end

end A252226.P13710027268759505697

/-! ## A252226.P6803942399942322820

`A252228(A000217(n+5)+6)`
-/

namespace A252226.P6803942399942322820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252228 (A000217 (n + 5) + 6).toNat

end

end A252226.P6803942399942322820

/-! ## A252226.P3724931065849757636

`A252228(A055999(n+2)+12)`
-/

namespace A252226.P3724931065849757636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252228 (A055999 (n + 2) + 12).toNat

end

end A252226.P3724931065849757636

/-! ## A252226.P13818927875561765266

`A252228(A052905(n+3))`
-/

namespace A252226.P13818927875561765266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252228 (A052905 (n + 3)).toNat

end

end A252226.P13818927875561765266

/-! ## A252226.P4826449847704737185

`A252228(A000124(n+6)-6)`
-/

namespace A252226.P4826449847704737185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252228 (A000124 (n + 6) - 6).toNat

end

end A252226.P4826449847704737185

/-! ## A252226.P620851861425402448

`A252228(A167487(n+5)-12)`
-/

namespace A252226.P620851861425402448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252228 (A167487 (n + 5) - 12).toNat

end

end A252226.P620851861425402448

/-! ## A252226.P13722030305587828981

`A252228(Δ[A026054(n+3)]+1)`
-/

namespace A252226.P13722030305587828981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252228 (f1 (n + 1) - f1 n + 1).toNat

end

end A252226.P13722030305587828981

/-!
# A252227: Number of (n+2) X (7+2) 0..2 arrays with every 3 X 3 subblock row and column sum 2 3 or 4 and every diagonal and antidiagonal sum not 2 3 or 4.

The programs for A252227, there is no canonical definition to state claims against.
-/

/-! ## A252227.P3858392702719467044

`A252228(A374008(n+1))`
-/

namespace A252227.P3858392702719467044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252228 (A374008 (n + 1)).toNat

end

end A252227.P3858392702719467044

/-! ## A252227.P18355378822877908236

`A252228(A077169(n+7)+2)`
-/

namespace A252227.P18355378822877908236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252228 (A077169 (n + 7) + 2).toNat

end

end A252227.P18355378822877908236

/-! ## A252227.P5604278557241264925

`A252228(A133263(n+6)+5)`
-/

namespace A252227.P5604278557241264925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252228 (A133263 (n + 6) + 5).toNat

end

end A252227.P5604278557241264925

/-! ## A252227.P13022257965953401461

`A252228(A000217(n+6)+7)`
-/

namespace A252227.P13022257965953401461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252228 (A000217 (n + 6) + 7).toNat

end

end A252227.P13022257965953401461

/-! ## A252227.P3138243584326265731

`A252228(A052905(n+3)+12)`
-/

namespace A252227.P3138243584326265731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252228 (A052905 (n + 3) + 12).toNat

end

end A252227.P3138243584326265731

/-! ## A252227.P17993803518311838168

`A252228(eq[8, A004736(n+1)]-2*n)`
-/

namespace A252227.P17993803518311838168
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252228 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n - 2 * n)

end

end A252227.P17993803518311838168

/-! ## A252227.P14764370983001216157

`A252228(A055999(n+4))`
-/

namespace A252227.P14764370983001216157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252228 (A055999 (n + 4)).toNat

end

end A252227.P14764370983001216157

/-! ## A252227.P5040202023429478101

`A252228(Δ[A026054(n+4)])`
-/

namespace A252227.P5040202023429478101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252228 (f1 (n + 1) - f1 n).toNat

end

end A252227.P5040202023429478101

/-! ## A252227.P14650917603599345644

`A252228(A000124(n+7)-7)`
-/

namespace A252227.P14650917603599345644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252228 (A000124 (n + 7) - 7).toNat

end

end A252227.P14650917603599345644

/-! ## A252227.P4980680329595917121

`A252228(A005408(n)+A167487(n+4)-1)`
-/

namespace A252227.P4980680329595917121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252228 (A005408 n + (A167487 (n + 4) - 1)).toNat

end

end A252227.P4980680329595917121

/-!
# A252229: The number of numbers j*r^k in the interval [n,n+1), where r = (1 + sqrt(5))/2, the golden ratio, and j >=0, k >= 0.

The programs for A252229, there is no canonical definition to state claims against.
-/

/-! ## A252229.P6713912228853117010

`A028310(Δ[A020959(A028310(n))])`
-/

namespace A252229.P6713912228853117010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020959 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (f1 (n + 1) - f1 n).toNat

end

end A252229.P6713912228853117010

/-! ## A252229.P1967582215117718317

`A373082(A313089(n))+1`
-/

namespace A252229.P1967582215117718317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373082 (A313089 n).toNat + 1

end

end A252229.P1967582215117718317

/-! ## A252229.P8672059925021707529

`A083399(and(A092217(2*(n+2)), A193953(3*n+1)))`
-/

namespace A252229.P8672059925021707529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083399 (Int.land (A092217 (2 * (n + 2))) (A193953 (3 * n + 1))).toNat

end

end A252229.P8672059925021707529

/-! ## A252229.P4887510001877637301

`A001221(A336313(n+1)+A207346(3*n+2))`
-/

namespace A252229.P4887510001877637301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A336313 (n + 1) + A207346 (3 * n + 2)).toNat

end

end A252229.P4887510001877637301

/-! ## A252229.P2661353464449113302

`A268317(A006995(n+2))`
-/

namespace A252229.P2661353464449113302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268317 (A006995 (n + 2)).toNat

end

end A252229.P2661353464449113302

/-!
# A252230: Triangular array T read by rows: for j = k+1..2*k, k >=1, T(j,k) = least number of iterations of (h,i) -> (i,h-i) needed to take (k,j) to (k',j') satisfying k' <= j'.

The programs for A252230, there is no canonical definition to state claims against.
-/

/-! ## A252230.P14995751459910123890

`A293444(A214676(n+2))`
-/

namespace A252230.P14995751459910123890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293444 (A214676 (n + 2)).toNat

end

end A252230.P14995751459910123890

/-! ## A252230.P15636286826188959654

`A001222(2*A214676(n+2))`
-/

namespace A252230.P15636286826188959654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (2 * A214676 (n + 2)).toNat

end

end A252230.P15636286826188959654

/-! ## A252230.P6737271336182172529

`A001222(lcm(5, A214676(n+2)))`
-/

namespace A252230.P6737271336182172529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.lcm 5 (A214676 (n + 2)))

end

end A252230.P6737271336182172529

/-! ## A252230.P6971721997316637168

`A031286(A307393(n+1)²)+1`
-/

namespace A252230.P6971721997316637168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031286 (A307393 (n + 1) ^ 2).toNat + 1

end

end A252230.P6971721997316637168

/-! ## A252230.P17768622468682957130

`A322813(A194987(n+1)^A194987(n+1))`
-/

namespace A252230.P17768622468682957130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322813 (SequenceMachineLib.roundAway ((A194987 (n + 1) : ℚ) ^ (A194987 (n + 1) : ℤ))).toNat

end

end A252230.P17768622468682957130

/-!
# A252231: Primes of the form (p+q)^2 + pq, where p and q are consecutive primes.

The programs for A252231, there is no canonical definition to state claims against.
-/

/-! ## A252231.P12980928002218185522

`p?[A006094(n+1)+A001043(n+1)²]`
-/

namespace A252231.P12980928002218185522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006094 (n + 1) + A001043 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A252231.P12980928002218185522

/-! ## A252231.P3659783043650398129

`p?[A006094(n+1)+A011974(n+2)²]`
-/

namespace A252231.P3659783043650398129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006094 (n + 1) + A011974 (n + 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A252231.P3659783043650398129

/-! ## A252231.P18330170111629422784

`p?[A037165(n+1)+A001043(n+1)*A092949(n+1)]`
-/

namespace A252231.P18330170111629422784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037165 (n + 1) + A001043 (n + 1) * A092949 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A252231.P18330170111629422784

/-! ## A252231.P9499024164736667433

`p?[A001043(n+1)²+A065091(n+1)+A037167(n+1)]`
-/

namespace A252231.P9499024164736667433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001043 (n + 1) ^ 2 + (A065091 (n + 1) + A037167 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A252231.P9499024164736667433

/-! ## A252231.P540020431257201409

`p?[A001043(n+1)²+A000040(n+1)*A000040(n+2)]`
-/

namespace A252231.P540020431257201409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001043 (n + 1) ^ 2 + A000040 (n + 1) * A000040 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A252231.P540020431257201409

/-!
# A252233: Characteristic function for the integers that are the product of an odd number of primes each with multiplicity one.

The programs for A252233, the canonical program `A252233.P13324621536471140803` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A252233 has offset 1).

The definition of A252233 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008683, A008966, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A252233.P13324621536471140803

`(A008966(n+1)-A008683(n+1))/2`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A252233

/-- `(A008966(n+1)-A008683(n+1))/2` -/
def P13324621536471140803.Spec : Prop :=
  ∀ n, P13324621536471140803.a n = (A252233 (n + 1) : ℚ)

end A252233

/-! ## A252233.P18436785927551860227

`C(2, ∏{p}[n+1, -#]+n+3)`
-/

namespace A252233.P18436785927551860227
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (∏ p ∈ Nat.primeFactors (f1 n), (-(p : ℤ)) + (n + 3 : ℤ)).toNat

end

end A252233.P18436785927551860227

namespace A252233

/-- `C(2, ∏{p}[n+1, -#]+n+3)` -/
def P18436785927551860227.Spec : Prop :=
  ∀ n, (P18436785927551860227.a n : ℤ) = A252233 (n + 1)

end A252233

/-! ## A252233.P15999388594604823747

`val(n+1, ∏{e}[n+1, -#]+n+2)`
-/

namespace A252233.P15999388594604823747
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) (∏ p ∈ Nat.primeFactors (f1 n), (-(Nat.factorization (f1 n) p : ℤ)) + (n + 2 : ℤ)).toNat

end

end A252233.P15999388594604823747

namespace A252233

/-- `val(n+1, ∏{e}[n+1, -#]+n+2)` -/
def P15999388594604823747.Spec : Prop :=
  ∀ n, (P15999388594604823747.a n : ℤ) = A252233 (n + 1)

end A252233

/-! ## A252233.P10656340923640218249

`ceil(round(-(∏{p}[n+1, -#]/(n+3)))/3)`
-/

namespace A252233.P10656340923640218249
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(SequenceMachineLib.roundAway (-(((∏ p ∈ Nat.primeFactors (f1 n), (-(p : ℤ)) : ℤ) : ℚ) / (n + 3 : ℚ))) : ℚ) / 3⌉

end

end A252233.P10656340923640218249

namespace A252233

/-- `ceil(round(-(∏{p}[n+1, -#]/(n+3)))/3)` -/
def P10656340923640218249.Spec : Prop :=
  ∀ n, P10656340923640218249.a n = A252233 (n + 1)

end A252233

/-! ## A252233.P1849861893772176492

`A344478(n+1)%2`
-/

namespace A252233.P1849861893772176492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A344478 (n + 1)) 2

end

end A252233.P1849861893772176492

namespace A252233

/-- `A344478(n+1)%2` -/
def P1849861893772176492.Spec : Prop :=
  ∀ n, P1849861893772176492.a n = A252233 (n + 1)

end A252233

/-! ## A252233.P2005041428452865716

`4%A129979(n+1)`
-/

namespace A252233.P2005041428452865716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 4 (A129979 (n + 1))

end

end A252233.P2005041428452865716

namespace A252233

/-- `4%A129979(n+1)` -/
def P2005041428452865716.Spec : Prop :=
  ∀ n, P2005041428452865716.a n = A252233 (n + 1)

end A252233

/-! ## A252233.P13641658370070281055

`7%A133695(n+1)`
-/

namespace A252233.P13641658370070281055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 7 (A133695 (n + 1))

end

end A252233.P13641658370070281055

namespace A252233

/-- `7%A133695(n+1)` -/
def P13641658370070281055.Spec : Prop :=
  ∀ n, P13641658370070281055.a n = A252233 (n + 1)

end A252233

/-! ## A252233.P16074737166362582668

`C(2, A231821(n+1))`
-/

namespace A252233.P16074737166362582668
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A231821 (n + 1)).toNat

end

end A252233.P16074737166362582668

namespace A252233

/-- `C(2, A231821(n+1))` -/
def P16074737166362582668.Spec : Prop :=
  ∀ n, (P16074737166362582668.a n : ℤ) = A252233 (n + 1)

end A252233

/-! ## A252233.P18297261446869580009

`and(1, A262804(n+1))`
-/

namespace A252233.P18297261446869580009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A262804 (n + 1))

end

end A252233.P18297261446869580009

namespace A252233

/-- `and(1, A262804(n+1))` -/
def P18297261446869580009.Spec : Prop :=
  ∀ n, P18297261446869580009.a n = A252233 (n + 1)

end A252233

/-! ## A252233.P15174538722994289806

`C(n, A061669(n+1))`
-/

namespace A252233.P15174538722994289806
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (A061669 (n + 1)).toNat

end

end A252233.P15174538722994289806

namespace A252233

/-- `C(n, A061669(n+1))` -/
def P15174538722994289806.Spec : Prop :=
  ∀ n, (P15174538722994289806.a n : ℤ) = A252233 (n + 1)

end A252233

/-! ## A252233.P15942359811676428583

`C(n, A076369(n+1))`
-/

namespace A252233.P15942359811676428583
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (A076369 (n + 1)).toNat

end

end A252233.P15942359811676428583

namespace A252233

/-- `C(n, A076369(n+1))` -/
def P15942359811676428583.Spec : Prop :=
  ∀ n, (P15942359811676428583.a n : ℤ) = A252233 (n + 1)

end A252233

/-! ## A252233.P6602592765049382723

`C(n, A140668(n+1))`
-/

namespace A252233.P6602592765049382723
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (A140668 (n + 1)).toNat

end

end A252233.P6602592765049382723

namespace A252233

/-- `C(n, A140668(n+1))` -/
def P6602592765049382723.Spec : Prop :=
  ∀ n, (P6602592765049382723.a n : ℤ) = A252233 (n + 1)

end A252233

/-! ## A252233.P17004425882085402713

`C(n, A323399(n+1))`
-/

namespace A252233.P17004425882085402713
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (A323399 (n + 1)).toNat

end

end A252233.P17004425882085402713

namespace A252233

/-- `C(n, A323399(n+1))` -/
def P17004425882085402713.Spec : Prop :=
  ∀ n, (P17004425882085402713.a n : ℤ) = A252233 (n + 1)

end A252233

/-! ## A252233.P13180489676714190975

`C(n, A323403(n+1))`
-/

namespace A252233.P13180489676714190975
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (A323403 (n + 1)).toNat

end

end A252233.P13180489676714190975

namespace A252233

/-- `C(n, A323403(n+1))` -/
def P13180489676714190975.Spec : Prop :=
  ∀ n, (P13180489676714190975.a n : ℤ) = A252233 (n + 1)

end A252233

/-! ## A252233.P15072400044322519420

`C(n, A347091(n+1))`
-/

namespace A252233.P15072400044322519420
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (A347091 (n + 1)).toNat

end

end A252233.P15072400044322519420

namespace A252233

/-- `C(n, A347091(n+1))` -/
def P15072400044322519420.Spec : Prop :=
  ∀ n, (P15072400044322519420.a n : ℤ) = A252233 (n + 1)

end A252233

/-! ## A252233.P1126954701162789827

`C(n, A347093(n+1))`
-/

namespace A252233.P1126954701162789827
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (A347093 (n + 1)).toNat

end

end A252233.P1126954701162789827

namespace A252233

/-- `C(n, A347093(n+1))` -/
def P1126954701162789827.Spec : Prop :=
  ∀ n, (P1126954701162789827.a n : ℤ) = A252233 (n + 1)

end A252233

/-! ## A252233.P15608499733536934567

`C(n, A347094(n+1))`
-/

namespace A252233.P15608499733536934567
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (A347094 (n + 1)).toNat

end

end A252233.P15608499733536934567

namespace A252233

/-- `C(n, A347094(n+1))` -/
def P15608499733536934567.Spec : Prop :=
  ∀ n, (P15608499733536934567.a n : ℤ) = A252233 (n + 1)

end A252233

/-! ## A252233.P15458995161871813183

`C(n, A347095(n+1))`
-/

namespace A252233.P15458995161871813183
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (A347095 (n + 1)).toNat

end

end A252233.P15458995161871813183

namespace A252233

/-- `C(n, A347095(n+1))` -/
def P15458995161871813183.Spec : Prop :=
  ∀ n, (P15458995161871813183.a n : ℤ) = A252233 (n + 1)

end A252233

/-! ## A252233.P1074535455338790636

`floor(1/A080847(n+1))`
-/

namespace A252233.P1074535455338790636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / (A080847 (n + 1) : ℚ)⌋

end

end A252233.P1074535455338790636

namespace A252233

/-- `floor(1/A080847(n+1))` -/
def P1074535455338790636.Spec : Prop :=
  ∀ n, P1074535455338790636.a n = A252233 (n + 1)

end A252233

/-! ## A252233.P13505776308112025747

`(n+2)%A080305(n+1)`
-/

namespace A252233.P13505776308112025747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 2 : ℤ) (A080305 (n + 1))

end

end A252233.P13505776308112025747

namespace A252233

/-- `(n+2)%A080305(n+1)` -/
def P13505776308112025747.Spec : Prop :=
  ∀ n, P13505776308112025747.a n = A252233 (n + 1)

end A252233

/-!
# A252234: Numbers n such that there exists an m so that squarefree kernel of n = squarefree kernel of m, and n is the sum of the proper divisors of m (m may equal n).

The programs for A252234, there is no canonical definition to state claims against.
-/

/-! ## A252234.P9453570766545873057

`A217921(A210427(n+4))*A280345(n)`
-/

namespace A252234.P9453570766545873057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217921 (A210427 (n + 4)).toNat * A280345 n

end

end A252234.P9453570766545873057

/-!
# A252235: Number of (n+2)X(n+2) 0..3 arrays with every 3X3 subblock row and column sum not equal to 1 3 4 6 or 7 and every 3X3 diagonal and antidiagonal sum equal to 1 3 4 6 or 7.

The programs for A252235, there is no canonical definition to state claims against.
-/

/-! ## A252235.P9048997985010967375

`A252243((n+1)²+n²)`
-/

namespace A252235.P9048997985010967375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252243 ((n + 1) ^ 2 + n ^ 2)

end

end A252235.P9048997985010967375

/-! ## A252235.P11204575979867969329

`lcm(2, A252243(A001844(n)))`
-/

namespace A252235.P11204575979867969329
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A252243 (A001844 n).toNat)

end

end A252235.P11204575979867969329

/-! ## A252235.P1269672483122514580

`record[A003982(n)*A252243(n+1)]`
-/

namespace A252235.P1269672483122514580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A252243 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252235.P1269672483122514580

/-! ## A252235.P2873857322204249334

`record[gcd(A008482(n), A252243(n+1))]`
-/

namespace A252235.P2873857322204249334
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008482 n) (A252243 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252235.P2873857322204249334

/-! ## A252235.P620338116618761558

`A152847(n)*A252243(A001844(n))`
-/

namespace A252235.P620338116618761558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152847 n * A252243 (A001844 n).toNat

end

end A252235.P620338116618761558

/-!
# A252236: Number of (n+2) X (1+2) 0..3 arrays with every 3 X 3 subblock row and column sum not equal to 1 3 4 6 or 7 and every 3 X 3 diagonal and antidiagonal sum equal to 1 3 4 6 or 7.

The programs for A252236, there is no canonical definition to state claims against.
-/

/-! ## A252236.P10227291418692637390

`A252243(∑[n]+1)`
-/

namespace A252236.P10227291418692637390
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252243 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A252236.P10227291418692637390

/-! ## A252236.P15875621525496217118

`lcm(2, A252243(A000124(n)))`
-/

namespace A252236.P15875621525496217118
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A252243 (A000124 n).toNat)

end

end A252236.P15875621525496217118

/-! ## A252236.P8705009654272146398

`record[A103451(n)*A252243(n+1)]`
-/

namespace A252236.P8705009654272146398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103451 n * A252243 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252236.P8705009654272146398

/-! ## A252236.P15154036961349735094

`record[root(A252243(n+1), A059268(n))]`
-/

namespace A252236.P15154036961349735094
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A252243 (n + 1) : ℝ) ^ (1 / (A059268 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252236.P15154036961349735094

/-! ## A252236.P4174348374425596946

`record[gcd(A002262(n), A252243(n+1))]`
-/

namespace A252236.P4174348374425596946
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A252243 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252236.P4174348374425596946

/-!
# A252237: Number of (n+2)X(2+2) 0..3 arrays with every 3X3 subblock row and column sum not equal to 1 3 4 6 or 7 and every 3X3 diagonal and antidiagonal sum equal to 1 3 4 6 or 7.

The programs for A252237, there is no canonical definition to state claims against.
-/

/-! ## A252237.P2205827714540639280

`A252243(∑[n+1]+2)`
-/

namespace A252237.P2205827714540639280
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252243 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A252237.P2205827714540639280

/-! ## A252237.P13384004680674382125

`record[root(A252243(n+2), A059268(n))]`
-/

namespace A252237.P13384004680674382125
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A252243 (n + 2) : ℝ) ^ (1 / (A059268 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252237.P13384004680674382125

/-! ## A252237.P4519864579606216162

`record[gcd(A002262(n), A252243(n+2))]`
-/

namespace A252237.P4519864579606216162
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A252243 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252237.P4519864579606216162

/-! ## A252237.P7030169883861286307

`record[gcd(A072233(n+1), A252243(n+3))]`
-/

namespace A252237.P7030169883861286307
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A072233 (n + 1)) (A252243 (n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252237.P7030169883861286307

/-! ## A252237.P17970767659556303993

`record[A252243(A133263(A008611(n)))]`
-/

namespace A252237.P17970767659556303993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252243 (A133263 (A008611 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252237.P17970767659556303993

/-!
# A252238: Number of (n+2)X(3+2) 0..3 arrays with every 3X3 subblock row and column sum not equal to 1 3 4 6 or 7 and every 3X3 diagonal and antidiagonal sum equal to 1 3 4 6 or 7.

The programs for A252238, there is no canonical definition to state claims against.
-/

/-! ## A252238.P8252526026765932550

`A252243(∑[n+2]+4)`
-/

namespace A252238.P8252526026765932550
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252243 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A252238.P8252526026765932550

/-! ## A252238.P8492610626538711207

`lcm(2, A252243(A167614(n+1)))`
-/

namespace A252238.P8492610626538711207
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A252243 (A167614 (n + 1)).toNat)

end

end A252238.P8492610626538711207

/-! ## A252238.P11263116612496699041

`A252243(A167614(n+1))+A178798(n)`
-/

namespace A252238.P11263116612496699041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252243 (A167614 (n + 1)).toNat + A178798 n

end

end A252238.P11263116612496699041

/-! ## A252238.P8879671065060156501

`A177849(n)*A252243(A167614(n+1))`
-/

namespace A252238.P8879671065060156501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177849 n * A252243 (A167614 (n + 1)).toNat

end

end A252238.P8879671065060156501

/-! ## A252238.P5608738323577009279

`or(A000038(n), A252243(A167614(n+1)))`
-/

namespace A252238.P5608738323577009279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000038 n) (A252243 (A167614 (n + 1)).toNat)

end

end A252238.P5608738323577009279

/-!
# A252239: Number of (n+2) X (4+2) 0..3 arrays with every 3 X 3 subblock row and column sum not equal to 1 3 4 6 or 7 and every 3 X 3 diagonal and antidiagonal sum equal to 1 3 4 6 or 7.

The programs for A252239, there is no canonical definition to state claims against.
-/

/-! ## A252239.P1805107075602894863

`A252243(∑[n+3]+7)`
-/

namespace A252239.P1805107075602894863
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252243 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A252239.P1805107075602894863

/-! ## A252239.P5472206809975574160

`lcm(2, A252243(A055998(n+1)+7))`
-/

namespace A252239.P5472206809975574160
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A252243 (A055998 (n + 1) + 7).toNat)

end

end A252239.P5472206809975574160

/-! ## A252239.P18213097158132101025

`lcm(2, A252243(A055998(n+2)))`
-/

namespace A252239.P18213097158132101025
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A252243 (A055998 (n + 2)).toNat)

end

end A252239.P18213097158132101025

/-! ## A252239.P12684624377819382508

`A252243(A055998(n+2))+A178798(n)`
-/

namespace A252239.P12684624377819382508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252243 (A055998 (n + 2)).toNat + A178798 n

end

end A252239.P12684624377819382508

/-! ## A252239.P12223817977230898871

`A252243(A055998(n+2))+A034432(n+1)`
-/

namespace A252239.P12223817977230898871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252243 (A055998 (n + 2)).toNat + A034432 (n + 1)

end

end A252239.P12223817977230898871

/-!
# A252240: Number of (n+2) X (5+2) 0..3 arrays with every 3 X 3 subblock row and column sum not equal to 1 3 4 6 or 7 and every 3 X 3 diagonal and antidiagonal sum equal to 1 3 4 6 or 7.

The programs for A252240, there is no canonical definition to state claims against.
-/

/-! ## A252240.P8602621833813521557

`A252243(A167499(n+3))`
-/

namespace A252240.P8602621833813521557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252243 (A167499 (n + 3)).toNat

end

end A252240.P8602621833813521557

/-! ## A252240.P14421426860228955992

`A252243(A000124(n+4)+4)`
-/

namespace A252240.P14421426860228955992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252243 (A000124 (n + 4) + 4).toNat

end

end A252240.P14421426860228955992

/-! ## A252240.P7863318935083249321

`A252243(A055998(n+2)+8)`
-/

namespace A252240.P7863318935083249321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252243 (A055998 (n + 2) + 8).toNat

end

end A252240.P7863318935083249321

/-! ## A252240.P927108164889074828

`A252243(A046691(n+2)+9)`
-/

namespace A252240.P927108164889074828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252243 (A046691 (n + 2) + 9).toNat

end

end A252240.P927108164889074828

/-! ## A252240.P18257828788112091575

`A252243(Δ[A264443(n)])`
-/

namespace A252240.P18257828788112091575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252243 (f1 (n + 1) - f1 n).toNat

end

end A252240.P18257828788112091575

/-!
# A252241: Number of (n+2)X(6+2) 0..3 arrays with every 3X3 subblock row and column sum not equal to 1 3 4 6 or 7 and every 3X3 diagonal and antidiagonal sum equal to 1 3 4 6 or 7.

The programs for A252241, there is no canonical definition to state claims against.
-/

/-! ## A252241.P6781058035067539654

`A252243(A000096(n+4)+7)`
-/

namespace A252241.P6781058035067539654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252243 (A000096 (n + 4) + 7).toNat

end

end A252241.P6781058035067539654

/-! ## A252241.P4513419985483202405

`A252243(eq[7, A131818(n+1)])`
-/

namespace A252241.P4513419985483202405
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252243 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A252241.P4513419985483202405

/-! ## A252241.P16755542335606134785

`A252243(A374007(n+1))`
-/

namespace A252241.P16755542335606134785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252243 (A374007 (n + 1)).toNat

end

end A252241.P16755542335606134785

/-! ## A252241.P13205146045658958642

`A252243(A052905(n+3))`
-/

namespace A252241.P13205146045658958642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252243 (A052905 (n + 3)).toNat

end

end A252241.P13205146045658958642

/-! ## A252241.P7960210698692817997

`A252243(eq[3, A219347(n)])`
-/

namespace A252241.P7960210698692817997
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252243 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A252241.P7960210698692817997

/-!
# A252242: Number of (n+2) X (7+2) 0..3 arrays with every 3 X 3 subblock row and column sum not equal to 1 3 4 6 or 7 and every 3 X 3 diagonal and antidiagonal sum equal to 1 3 4 6 or 7.

The programs for A252242, there is no canonical definition to state claims against.
-/

/-! ## A252242.P16569239207784569164

`A252243(eq[8, A131818(n+1)])`
-/

namespace A252242.P16569239207784569164
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252243 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A252242.P16569239207784569164

/-! ## A252242.P3592338257387779397

`A252243(A374008(n+1))`
-/

namespace A252242.P3592338257387779397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252243 (A374008 (n + 1)).toNat

end

end A252242.P3592338257387779397

/-! ## A252242.P18126342394890554353

`A252243(A055999(n+4))`
-/

namespace A252242.P18126342394890554353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252243 (A055999 (n + 4)).toNat

end

end A252242.P18126342394890554353

/-! ## A252242.P11569137989319521971

`A252243(eq[4, A219347(n)])`
-/

namespace A252242.P11569137989319521971
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252243 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A252242.P11569137989319521971

/-! ## A252242.P16794592176030560843

`A252243(eq[6, A193592(n)])`
-/

namespace A252242.P16794592176030560843
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252243 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A252242.P16794592176030560843

/-!
# A252246: Number of (n+2)X(n+2) 0..3 arrays with every 3X3 subblock row and column sum not equal to 0 3 5 6 or 7 and every 3X3 diagonal and antidiagonal sum equal to 0 3 5 6 or 7.

The programs for A252246, there is no canonical definition to state claims against.
-/

/-! ## A252246.P9876949157379397954

`A252254(∑[4*n]+1)`
-/

namespace A252246.P9876949157379397954
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252254 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A252246.P9876949157379397954

/-! ## A252246.P7293401580816470797

`A252254(A001844(n))+char[22]`
-/

namespace A252246.P7293401580816470797
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  22

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252254 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A252246.P7293401580816470797

/-! ## A252246.P3054707741872914816

`A252254(A001844(n))%A017500(n)`
-/

namespace A252246.P3054707741872914816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A252254 (A001844 n).toNat) (A017500 n)

end

end A252246.P3054707741872914816

/-! ## A252246.P9127595476449983397

`A007318(∑[n])*A252254(A001844(n))`
-/

namespace A252246.P9127595476449983397
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A252254 (A001844 n).toNat

end

end A252246.P9127595476449983397

/-! ## A252246.P13854014452103075751

`A252254(A001844(n))/A007318(C(2, n))`
-/

namespace A252246.P13854014452103075751
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A252254 (A001844 n).toNat : ℚ) / (A007318 (Nat.choose 2 n) : ℚ)

end

end A252246.P13854014452103075751

/-!
# A252247: Number of (n+2)X(1+2) 0..3 arrays with every 3X3 subblock row and column sum not equal to 0 3 5 6 or 7 and every 3X3 diagonal and antidiagonal sum equal to 0 3 5 6 or 7.

The programs for A252247, there is no canonical definition to state claims against.
-/

/-! ## A252247.P18236770294908779436

`A252254(∑[n]+1)`
-/

namespace A252247.P18236770294908779436
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252254 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A252247.P18236770294908779436

/-! ## A252247.P4685377211115155413

`and(-1, A252254(A000124(n)))`
-/

namespace A252247.P4685377211115155413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A252254 (A000124 n).toNat)

end

end A252247.P4685377211115155413

/-! ## A252247.P14454360905635129167

`or(A000038(n), A252254(A000124(n)))`
-/

namespace A252247.P14454360905635129167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000038 n) (A252254 (A000124 n).toNat)

end

end A252247.P14454360905635129167

/-! ## A252247.P5095888185660189076

`A007318(∑[n])*A252254(A000124(n))`
-/

namespace A252247.P5095888185660189076
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A252254 (A000124 n).toNat

end

end A252247.P5095888185660189076

/-! ## A252247.P4942049789413002998

`A252254(A000124(n))+A000038(n+1)`
-/

namespace A252247.P4942049789413002998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252254 (A000124 n).toNat + A000038 (n + 1)

end

end A252247.P4942049789413002998

/-!
# A252248: Number of (n+2) X (2+2) 0..3 arrays with every 3 X 3 subblock row and column sum not equal to 0 3 5 6 or 7 and every 3 X 3 diagonal and antidiagonal sum equal to 0 3 5 6 or 7.

The programs for A252248, there is no canonical definition to state claims against.
-/

/-! ## A252248.P8242410287677189034

`A252254(∑[n+1]+2)`
-/

namespace A252248.P8242410287677189034
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252254 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A252248.P8242410287677189034

/-! ## A252248.P1717038052430266285

`or(char[1], A252254(A000096(n)+3))`
-/

namespace A252248.P1717038052430266285
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A252254 (A000096 n + 3).toNat)

end

end A252248.P1717038052430266285

/-! ## A252248.P3556802945092568460

`A178334(n+1)*A252254(A133263(n+1))`
-/

namespace A252248.P3556802945092568460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 (n + 1) * A252254 (A133263 (n + 1)).toNat

end

end A252248.P3556802945092568460

/-! ## A252248.P2591059609537213218

`A252254(A133263(n+1))%A022013(n+1)`
-/

namespace A252248.P2591059609537213218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A252254 (A133263 (n + 1)).toNat) (A022013 (n + 1))

end

end A252248.P2591059609537213218

/-! ## A252248.P17609459622985521204

`A007318(C(2, n))*A252254(A000096(n)+3)`
-/

namespace A252248.P17609459622985521204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A252254 (A000096 n + 3).toNat

end

end A252248.P17609459622985521204

/-!
# A252249: Number of (n+2) X (3+2) 0..3 arrays with every 3 X 3 subblock row and column sum not equal to 0 3 5 6 or 7 and every 3 X 3 diagonal and antidiagonal sum equal to 0 3 5 6 or 7.

The programs for A252249, the canonical program `A252249.P7155688555273878023` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A252249 has offset 1).

The definition of A252249 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 706 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A252249.P7155688555273878023

`a(n-1)+3*a(n-3)-3*a(n-4)-a(n-6)+a(n-7)` with `a(0)=278, a(1)=242, a(2)=231, a(3)=249, a(4)=279, a(5)=318, a(6)=366, a(7)=444, a(8)=546`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A252249

/-- `a(n-1)+3*a(n-3)-3*a(n-4)-a(n-6)+a(n-7)` -/
def P7155688555273878023.Spec : Prop :=
  ∀ n, P7155688555273878023.a n = A252249 (n + 1)

theorem P7155688555273878023.correct : P7155688555273878023.Spec := by
  intro n
  simp only [A252249, Nat.add_sub_cancel]

end A252249

/-! ## A252249.P6036261300964296495

`A252254(∑[n+2]+4)`
-/

namespace A252249.P6036261300964296495
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252254 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A252249.P6036261300964296495

namespace A252249

/-- `A252254(∑[n+2]+4)` -/
def P6036261300964296495.Spec : Prop :=
  ∀ n, P6036261300964296495.a n = A252249 (n + 1)

end A252249

/-! ## A252249.P17376659712855831185

`and(-1, A252254(A167614(n+1)))`
-/

namespace A252249.P17376659712855831185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A252254 (A167614 (n + 1)).toNat)

end

end A252249.P17376659712855831185

namespace A252249

/-- `and(-1, A252254(A167614(n+1)))` -/
def P17376659712855831185.Spec : Prop :=
  ∀ n, P17376659712855831185.a n = A252249 (n + 1)

end A252249

/-! ## A252249.P6345589943450169335

`or(char[2], A252254(A000217(n+2)+3))`
-/

namespace A252249.P6345589943450169335
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A252254 (A000217 (n + 2) + 3).toNat)

end

end A252249.P6345589943450169335

namespace A252249

/-- `or(char[2], A252254(A000217(n+2)+3))` -/
def P6345589943450169335.Spec : Prop :=
  ∀ n, P6345589943450169335.a n = A252249 (n + 1)

end A252249

/-! ## A252249.P11631389633314613530

`or(char[2], A252254(A034856(n+1)+5))`
-/

namespace A252249.P11631389633314613530
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A252254 (A034856 (n + 1) + 5).toNat)

end

end A252249.P11631389633314613530

namespace A252249

/-- `or(char[2], A252254(A034856(n+1)+5))` -/
def P11631389633314613530.Spec : Prop :=
  ∀ n, P11631389633314613530.a n = A252249 (n + 1)

end A252249

/-!
# A252250: Number of (n+2) X (4+2) 0..3 arrays with every 3 X 3 subblock row and column sum not equal to 0 3 5 6 or 7 and every 3 X 3 diagonal and antidiagonal sum equal to 0 3 5 6 or 7.

The programs for A252250, the canonical program `A252250.P18367108250355643025` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A252250 has offset 1).

The definition of A252250 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 706 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A252250.P18367108250355643025

`a(n-1)+3*a(n-3)-3*a(n-4)-a(n-6)+a(n-7)` with `a(0)=352, a(1)=268, a(2)=249, a(3)=267, a(4)=297, a(5)=336, a(6)=384, a(7)=462, a(8)=564`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A252250

/-- `a(n-1)+3*a(n-3)-3*a(n-4)-a(n-6)+a(n-7)` -/
def P18367108250355643025.Spec : Prop :=
  ∀ n, P18367108250355643025.a n = A252250 (n + 1)

theorem P18367108250355643025.correct : P18367108250355643025.Spec := by
  intro n
  simp only [A252250, Nat.add_sub_cancel]

end A252250

/-! ## A252250.P4501940312637606314

`A252254(∑[n+3]+7)`
-/

namespace A252250.P4501940312637606314
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252254 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A252250.P4501940312637606314

namespace A252250

/-- `A252254(∑[n+3]+7)` -/
def P4501940312637606314.Spec : Prop :=
  ∀ n, P4501940312637606314.a n = A252250 (n + 1)

end A252250

/-! ## A252250.P13435276023293061254

`or(char[2], A252254(A167614(n+2)+1))`
-/

namespace A252250.P13435276023293061254
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A252254 (A167614 (n + 2) + 1).toNat)

end

end A252250.P13435276023293061254

namespace A252250

/-- `or(char[2], A252254(A167614(n+2)+1))` -/
def P13435276023293061254.Spec : Prop :=
  ∀ n, P13435276023293061254.a n = A252250 (n + 1)

end A252250

/-! ## A252250.P1353102025568597075

`ceil(1/A000041(n))*A252254(A167614(n+2)+1)`
-/

namespace A252250.P1353102025568597075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈1 / (A000041 n : ℚ)⌉ * A252254 (A167614 (n + 2) + 1).toNat

end

end A252250.P1353102025568597075

namespace A252250

/-- `ceil(1/A000041(n))*A252254(A167614(n+2)+1)` -/
def P1353102025568597075.Spec : Prop :=
  ∀ n, P1353102025568597075.a n = A252250 (n + 1)

end A252250

/-! ## A252250.P12440995387863462876

`A252254(A167614(n+2)+1)+A008683(8*(n+1))`
-/

namespace A252250.P12440995387863462876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252254 (A167614 (n + 2) + 1).toNat + A008683 (8 * (n + 1))

end

end A252250.P12440995387863462876

namespace A252250

/-- `A252254(A167614(n+2)+1)+A008683(8*(n+1))` -/
def P12440995387863462876.Spec : Prop :=
  ∀ n, P12440995387863462876.a n = A252250 (n + 1)

end A252250

/-!
# A252251: Number of (n+2) X (5+2) 0..3 arrays with every 3 X 3 subblock row and column sum not equal to 0 3 5 6 or 7 and every 3 X 3 diagonal and antidiagonal sum equal to 0 3 5 6 or 7.

The programs for A252251, the canonical program `A252251.P11124343189638800866` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A252251 has offset 1).

The definition of A252251 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 706 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A252251.P11124343189638800866

`a(n-1)+3*a(n-3)-3*a(n-4)-a(n-6)+a(n-7)` with `a(0)=463, a(1)=302, a(2)=279, a(3)=297, a(4)=327, a(5)=366, a(6)=414, a(7)=492, a(8)=594`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A252251

/-- `a(n-1)+3*a(n-3)-3*a(n-4)-a(n-6)+a(n-7)` -/
def P11124343189638800866.Spec : Prop :=
  ∀ n, P11124343189638800866.a n = A252251 (n + 1)

theorem P11124343189638800866.correct : P11124343189638800866.Spec := by
  intro n
  simp only [A252251, Nat.add_sub_cancel]

end A252251

/-! ## A252251.P8540849480727295787

`A252254(C(n+6, 2)-n)`
-/

namespace A252251.P8540849480727295787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252254 (Nat.choose (n + 6) 2 - n)

end

end A252251.P8540849480727295787

namespace A252251

/-- `A252254(C(n+6, 2)-n)` -/
def P8540849480727295787.Spec : Prop :=
  ∀ n, P8540849480727295787.a n = A252251 (n + 1)

end A252251

/-! ## A252251.P5951638151911977500

`A252254(A167499(n+3))`
-/

namespace A252251.P5951638151911977500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252254 (A167499 (n + 3)).toNat

end

end A252251.P5951638151911977500

namespace A252251

/-- `A252254(A167499(n+3))` -/
def P5951638151911977500.Spec : Prop :=
  ∀ n, P5951638151911977500.a n = A252251 (n + 1)

end A252251

/-! ## A252251.P8489092345866062367

`A252254(A155212(n)+13)`
-/

namespace A252251.P8489092345866062367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252254 (A155212 n + 13).toNat

end

end A252251.P8489092345866062367

namespace A252251

/-- `A252254(A155212(n)+13)` -/
def P8489092345866062367.Spec : Prop :=
  ∀ n, P8489092345866062367.a n = A252251 (n + 1)

end A252251

/-! ## A252251.P15091984296349478298

`A252254(A056000(n)+15)`
-/

namespace A252251.P15091984296349478298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252254 (A056000 n + 15).toNat

end

end A252251.P15091984296349478298

namespace A252251

/-- `A252254(A056000(n)+15)` -/
def P15091984296349478298.Spec : Prop :=
  ∀ n, P15091984296349478298.a n = A252251 (n + 1)

end A252251

/-!
# A252252: Number of (n+2) X (6+2) 0..3 arrays with every 3 X 3 subblock row and column sum not equal to 0 3 5 6 or 7 and every 3 X 3 diagonal and antidiagonal sum equal to 0 3 5 6 or 7.

The programs for A252252, the canonical program `A252252.P13229102193186164982` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A252252 has offset 1).

The definition of A252252 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 706 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A252252.P13229102193186164982

`a(n-1)+3*a(n-3)-3*a(n-4)-a(n-6)+a(n-7)` with `a(0)=616, a(1)=359, a(2)=318, a(3)=336, a(4)=366, a(5)=405, a(6)=453, a(7)=531, a(8)=633`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A252252

/-- `a(n-1)+3*a(n-3)-3*a(n-4)-a(n-6)+a(n-7)` -/
def P13229102193186164982.Spec : Prop :=
  ∀ n, P13229102193186164982.a n = A252252 (n + 1)

theorem P13229102193186164982.correct : P13229102193186164982.Spec := by
  intro n
  simp only [A252252, Nat.add_sub_cancel]

end A252252

/-! ## A252252.P6259005279095338021

`A252254(∑[n+1]+4*(n+5))`
-/

namespace A252252.P6259005279095338021
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252254 (∑ j ∈ Finset.range (n + 1), f1 j + 4 * (n + 5))

end

end A252252.P6259005279095338021

namespace A252252

/-- `A252254(∑[n+1]+4*(n+5))` -/
def P6259005279095338021.Spec : Prop :=
  ∀ n, P6259005279095338021.a n = A252252 (n + 1)

end A252252

/-!
# A252253: Number of (n+2) X (7+2) 0..3 arrays with every 3 X 3 subblock row and column sum not equal to 0 3 5 6 or 7 and every 3 X 3 diagonal and antidiagonal sum equal to 0 3 5 6 or 7.

The programs for A252253, the canonical program `A252253.P8105009422330173491` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A252253 has offset 1).

The definition of A252253 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 706 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A252253.P8105009422330173491

`a(n-1)+3*a(n-3)-3*a(n-4)-a(n-6)+a(n-7)` with `a(0)=847, a(1)=437, a(2)=366, a(3)=384, a(4)=414, a(5)=453, a(6)=501, a(7)=579, a(8)=681`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A252253

/-- `a(n-1)+3*a(n-3)-3*a(n-4)-a(n-6)+a(n-7)` -/
def P8105009422330173491.Spec : Prop :=
  ∀ n, P8105009422330173491.a n = A252253 (n + 1)

theorem P8105009422330173491.correct : P8105009422330173491.Spec := by
  intro n
  simp only [A252253, Nat.add_sub_cancel]

end A252253

/-! ## A252253.P1518075786205307616

`A252254(A167499(n+5)+2)`
-/

namespace A252253.P1518075786205307616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252254 (A167499 (n + 5) + 2).toNat

end

end A252253.P1518075786205307616

namespace A252253

/-- `A252254(A167499(n+5)+2)` -/
def P1518075786205307616.Spec : Prop :=
  ∀ n, P1518075786205307616.a n = A252253 (n + 1)

end A252253

/-! ## A252253.P9847092467164741347

`A252254(A167614(n+5)+4)`
-/

namespace A252253.P9847092467164741347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252254 (A167614 (n + 5) + 4).toNat

end

end A252253.P9847092467164741347

namespace A252253

/-- `A252254(A167614(n+5)+4)` -/
def P9847092467164741347.Spec : Prop :=
  ∀ n, P9847092467164741347.a n = A252253 (n + 1)

end A252253

/-! ## A252253.P11881986905883596944

`A252254(A000124(n+6)+6)`
-/

namespace A252253.P11881986905883596944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252254 (A000124 (n + 6) + 6).toNat

end

end A252253.P11881986905883596944

namespace A252253

/-- `A252254(A000124(n+6)+6)` -/
def P11881986905883596944.Spec : Prop :=
  ∀ n, P11881986905883596944.a n = A252253 (n + 1)

end A252253

/-! ## A252253.P6869353295640069832

`A252254(A000096(n+5)+8)`
-/

namespace A252253.P6869353295640069832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252254 (A000096 (n + 5) + 8).toNat

end

end A252253.P6869353295640069832

namespace A252253

/-- `A252254(A000096(n+5)+8)` -/
def P6869353295640069832.Spec : Prop :=
  ∀ n, P6869353295640069832.a n = A252253 (n + 1)

end A252253

/-!
# A252256: Number of (n+2)X(n+2) 0..3 arrays with every 3X3 subblock row and column sum not equal to 0 2 3 6 or 7 and every 3X3 diagonal and antidiagonal sum equal to 0 2 3 6 or 7.

The programs for A252256, there is no canonical definition to state claims against.
-/

/-! ## A252256.P3041437446890517698

`A252260(∑[4*n]+1)`
-/

namespace A252256.P3041437446890517698
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252260 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A252256.P3041437446890517698

/-! ## A252256.P10651556320843757756

`lcm(2, A252260(A001844(n)))`
-/

namespace A252256.P10651556320843757756
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A252260 (A001844 n).toNat)

end

end A252256.P10651556320843757756

/-! ## A252256.P8438696114059250491

`A252260(A001844(n))+A025466(n)`
-/

namespace A252256.P8438696114059250491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252260 (A001844 n).toNat + A025466 n

end

end A252256.P8438696114059250491

/-! ## A252256.P10921320285763990427

`A252260(A001844(n))+A185245(n)`
-/

namespace A252256.P10921320285763990427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252260 (A001844 n).toNat + A185245 n

end

end A252256.P10921320285763990427

/-! ## A252256.P11622050790694344914

`A252260(A001844(n))+A122698(3*(n+1))`
-/

namespace A252256.P11622050790694344914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252260 (A001844 n).toNat + A122698 (3 * (n + 1))

end

end A252256.P11622050790694344914

/-!
# A252257: Number of (n+2)X(1+2) 0..3 arrays with every 3X3 subblock row and column sum not equal to 0 2 3 6 or 7 and every 3X3 diagonal and antidiagonal sum equal to 0 2 3 6 or 7.

The programs for A252257, there is no canonical definition to state claims against.
-/

/-! ## A252257.P7165667773125393974

`A252260(∑[n]+1)`
-/

namespace A252257.P7165667773125393974
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252260 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A252257.P7165667773125393974

/-! ## A252257.P12080081340560171282

`or(char[1], A252260(A000124(n)))`
-/

namespace A252257.P12080081340560171282
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A252260 (A000124 n).toNat)

end

end A252257.P12080081340560171282

/-! ## A252257.P17542318013203541029

`A252260(A000124(n))+A025466(n)`
-/

namespace A252257.P17542318013203541029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252260 (A000124 n).toNat + A025466 n

end

end A252257.P17542318013203541029

/-! ## A252257.P4731211994535156892

`A252260(A000124(n))%A017513(n)`
-/

namespace A252257.P4731211994535156892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A252260 (A000124 n).toNat) (A017513 n)

end

end A252257.P4731211994535156892

/-! ## A252257.P15000086478384446241

`A007318(∑[n])*A252260(A000124(n))`
-/

namespace A252257.P15000086478384446241
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A252260 (A000124 n).toNat

end

end A252257.P15000086478384446241

/-!
# A252258: Number of (n+2) X (2+2) 0..3 arrays with every 3 X 3 subblock row and column sum not equal to 0 2 3 6 or 7 and every 3 X 3 diagonal and antidiagonal sum equal to 0 2 3 6 or 7.

The programs for A252258, there is no canonical definition to state claims against.
-/

/-! ## A252258.P11700826994078600551

`A252260(∑[n+1]+2)`
-/

namespace A252258.P11700826994078600551
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252260 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A252258.P11700826994078600551

/-! ## A252258.P3344746099413243824

`A252260(A000217(n+1)+2)%A252239(n+1)`
-/

namespace A252258.P3344746099413243824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A252260 (A000217 (n + 1) + 2).toNat) (A252239 (n + 1))

end

end A252258.P3344746099413243824

/-! ## A252258.P14528417141988325662

`A007318(A000217(n))*A252260(A000096(n)+3)`
-/

namespace A252258.P14528417141988325662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A000217 n).toNat * A252260 (A000096 n + 3).toNat

end

end A252258.P14528417141988325662

/-! ## A252258.P9275541225424642906

`A252260(A000096(n+1))+char[A252260(n+2)]`
-/

namespace A252258.P9275541225424642906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252260 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252260 (A000096 (n + 1)).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A252258.P9275541225424642906

/-! ## A252258.P17871258030673386327

`A168185(2*n+1)*A252260(A000096(n+1))`
-/

namespace A252258.P17871258030673386327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168185 (2 * n + 1) * A252260 (A000096 (n + 1)).toNat

end

end A252258.P17871258030673386327

/-!
# A252259: Number of (n+2) X (3+2) 0..3 arrays with every 3 X 3 subblock row and column sum not equal to 0 2 3 6 or 7 and every 3 X 3 diagonal and antidiagonal sum equal to 0 2 3 6 or 7.

The programs for A252259, there is no canonical definition to state claims against.
-/

/-! ## A252259.P12844067937645240945

`A252260(∑[n+2]+4)`
-/

namespace A252259.P12844067937645240945
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252260 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A252259.P12844067937645240945

/-! ## A252259.P4647671455385598402

`A252260(A000096(n+1)+4)+char[31]`
-/

namespace A252259.P4647671455385598402
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  31

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252260 (A000096 (n + 1) + 4).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A252259.P4647671455385598402

/-! ## A252259.P10369729316390300712

`A252260(A166136(n+1)-3)+char[36]`
-/

namespace A252259.P10369729316390300712
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  36

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252260 (A166136 (n + 1) - 3).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A252259.P10369729316390300712

/-! ## A252259.P17782974405764049683

`A252260(A167614(n+1))+A178798(n)`
-/

namespace A252259.P17782974405764049683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252260 (A167614 (n + 1)).toNat + A178798 n

end

end A252259.P17782974405764049683

/-! ## A252259.P18342787223898750717

`A252260(A167614(n+1))+A000007(3*(n+1))`
-/

namespace A252259.P18342787223898750717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252260 (A167614 (n + 1)).toNat + A000007 (3 * (n + 1))

end

end A252259.P18342787223898750717

/-!
# A252261: Number of (n+2)X(n+2) 0..3 arrays with every 3X3 subblock row, column, diagonal and antidiagonal sum not equal to 2 3 4 6 or 7.

The programs for A252261, there is no canonical definition to state claims against.
-/

/-! ## A252261.P6825265717213070422

`A252269(∑[4*n]+1)`
-/

namespace A252261.P6825265717213070422
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252269 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A252261.P6825265717213070422

/-! ## A252261.P3023150302853350405

`record[A003982(n)*A252269(n+1)]`
-/

namespace A252261.P3023150302853350405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A252269 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252261.P3023150302853350405

/-! ## A252261.P15695752947983090219

`record[gcd(A156732(n), A252269(n+1))]`
-/

namespace A252261.P15695752947983090219
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A156732 n) (A252269 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252261.P15695752947983090219

/-! ## A252261.P13927593055858075074

`A119335(n)*A252269(A001844(n))`
-/

namespace A252261.P13927593055858075074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119335 n * A252269 (A001844 n).toNat

end

end A252261.P13927593055858075074

/-! ## A252261.P1412928241792325868

`A007318(C(n+2, 2))*A252269(A001844(n))`
-/

namespace A252261.P1412928241792325868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose (n + 2) 2) * A252269 (A001844 n).toNat

end

end A252261.P1412928241792325868

/-!
# A252262: Number of (n+2) X (1+2) 0..3 arrays with every 3 X 3 subblock row, column, diagonal and antidiagonal sum not equal to 2 3 4 6 or 7.

The programs for A252262, there is no canonical definition to state claims against.
-/

/-! ## A252262.P373902459140450895

`A252269(∑[n]+1)`
-/

namespace A252262.P373902459140450895
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252269 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A252262.P373902459140450895

/-! ## A252262.P16004411892459049660

`record[A010054(n)*A252269(n+1)]`
-/

namespace A252262.P16004411892459049660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A252269 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252262.P16004411892459049660

/-! ## A252262.P13323996793323134681

`record[A252269(n+1)/A111910(n)]`
-/

namespace A252262.P13323996793323134681
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A252269 (n + 1) : ℚ) / (A111910 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252262.P13323996793323134681

/-! ## A252262.P7382518301712689957

`record[root(A252269(n+1), A007318(n))]`
-/

namespace A252262.P7382518301712689957
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A252269 (n + 1) : ℝ) ^ (1 / (A007318 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252262.P7382518301712689957

/-! ## A252262.P15994447914677266274

`record[gcd(A002262(n), A252269(n+1))]`
-/

namespace A252262.P15994447914677266274
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A252269 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252262.P15994447914677266274

/-!
# A252263: Number of (n+2) X (2+2) 0..3 arrays with every 3 X 3 subblock row, column, diagonal and antidiagonal sum not equal to 2 3 4 6 or 7.

The programs for A252263, there is no canonical definition to state claims against.
-/

/-! ## A252263.P18038274419394024573

`(A252363(n+1)+A252337(n+1))/2`
-/

namespace A252263.P18038274419394024573
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A252363 (n + 1) + A252337 (n + 1) : ℚ) / 2

end

end A252263.P18038274419394024573

/-! ## A252263.P14220493159807110901

`A252269(∑[n+1]+2)`
-/

namespace A252263.P14220493159807110901
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252269 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A252263.P14220493159807110901

/-! ## A252263.P16180792474989251860

`record[A010054(n)*A252269(n+2)]`
-/

namespace A252263.P16180792474989251860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A252269 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252263.P16180792474989251860

/-! ## A252263.P1643687167946405485

`record[gcd(A002262(n), A252269(n+2))]`
-/

namespace A252263.P1643687167946405485
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A252269 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252263.P1643687167946405485

/-! ## A252263.P1671951652679534735

`record[or(A174233(2*n+1), A252269(n+2))]`
-/

namespace A252263.P1671951652679534735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A174233 (2 * n + 1)) (A252269 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252263.P1671951652679534735

/-!
# A252264: Number of (n+2) X (3+2) 0..3 arrays with every 3 X 3 subblock row, column, diagonal and antidiagonal sum not equal to 2 3 4 6 or 7.

The programs for A252264, there is no canonical definition to state claims against.
-/

/-! ## A252264.P9338468251120119370

`A252269(∑[n+2]+4)`
-/

namespace A252264.P9338468251120119370
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252269 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A252264.P9338468251120119370

/-! ## A252264.P8178963939400848674

`lcm(2, A252269(A167614(n+1)))`
-/

namespace A252264.P8178963939400848674
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A252269 (A167614 (n + 1)).toNat)

end

end A252264.P8178963939400848674

/-! ## A252264.P14439666528294350974

`or(A000038(n), A252269(A167614(n+1)))`
-/

namespace A252264.P14439666528294350974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000038 n) (A252269 (A167614 (n + 1)).toNat)

end

end A252264.P14439666528294350974

/-! ## A252264.P496602997683691613

`A252269(A167614(n+1))^A033999(n)²`
-/

namespace A252264.P496602997683691613
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A252269 (A167614 (n + 1)).toNat : ℚ) ^ (A033999 n ^ 2 : ℤ)

end

end A252264.P496602997683691613

/-! ## A252264.P9930288287659461718

`A324803(n+1)+A252269(A167614(n+1))`
-/

namespace A252264.P9930288287659461718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324803 (n + 1) + A252269 (A167614 (n + 1)).toNat

end

end A252264.P9930288287659461718

/-!
# A252265: Number of (n+2)X(4+2) 0..3 arrays with every 3X3 subblock row, column, diagonal and antidiagonal sum not equal to 2 3 4 6 or 7.

The programs for A252265, there is no canonical definition to state claims against.
-/

/-! ## A252265.P6945713285756259466

`A252269(A141214(n)+7)`
-/

namespace A252265.P6945713285756259466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252269 (A141214 n + 7).toNat

end

end A252265.P6945713285756259466

/-! ## A252265.P10468379433252433647

`A252269(A052905(n)+9)`
-/

namespace A252265.P10468379433252433647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252269 (A052905 n + 9).toNat

end

end A252265.P10468379433252433647

/-! ## A252265.P12536246588118729972

`A252269(A055999(n)+10)`
-/

namespace A252265.P12536246588118729972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252269 (A055999 n + 10).toNat

end

end A252265.P12536246588118729972

/-! ## A252265.P9034967162895941024

`A252269(A167614(n+2)+1)`
-/

namespace A252265.P9034967162895941024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252269 (A167614 (n + 2) + 1).toNat

end

end A252265.P9034967162895941024

/-! ## A252265.P3511589390609306454

`A252269(A340266(n+2)+2)`
-/

namespace A252265.P3511589390609306454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252269 (A340266 (n + 2) + 2).toNat

end

end A252265.P3511589390609306454

/-!
# A252266: Number of (n+2)X(5+2) 0..3 arrays with every 3X3 subblock row, column, diagonal and antidiagonal sum not equal to 2 3 4 6 or 7.

The programs for A252266, there is no canonical definition to state claims against.
-/

/-! ## A252266.P466376271149994215

`A252269(A167499(n+3))`
-/

namespace A252266.P466376271149994215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252269 (A167499 (n + 3)).toNat

end

end A252266.P466376271149994215

/-! ## A252266.P468312486796195383

`A252269(A000124(n+4)+4)`
-/

namespace A252266.P468312486796195383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252269 (A000124 (n + 4) + 4).toNat

end

end A252266.P468312486796195383

/-! ## A252266.P462707889602971532

`A252269(A000096(n+3)+6)`
-/

namespace A252266.P462707889602971532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252269 (A000096 (n + 3) + 6).toNat

end

end A252266.P462707889602971532

/-! ## A252266.P4287669841075941380

`A252269(A038722(Δ[A023545(n+1)]))`
-/

namespace A252266.P4287669841075941380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252269 (A038722 (f1 (n + 1) - f1 n).toNat).toNat

end

end A252266.P4287669841075941380

/-! ## A252266.P6367182334005365267

`A252269(Δ[A264443(n)])`
-/

namespace A252266.P6367182334005365267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252269 (f1 (n + 1) - f1 n).toNat

end

end A252266.P6367182334005365267

/-!
# A252267: Number of (n+2) X (6+2) 0..3 arrays with every 3 X 3 subblock row, column, diagonal and antidiagonal sum not equal to 2 3 4 6 or 7.

The programs for A252267, there is no canonical definition to state claims against.
-/

/-! ## A252267.P8338359159397142058

`A252269(A167499(n+4)+1)`
-/

namespace A252267.P8338359159397142058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252269 (A167499 (n + 4) + 1).toNat

end

end A252267.P8338359159397142058

/-! ## A252267.P7972321124081075826

`A252269(A133263(n+5)+4)`
-/

namespace A252267.P7972321124081075826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252269 (A133263 (n + 5) + 4).toNat

end

end A252267.P7972321124081075826

/-! ## A252267.P3081879815189855176

`A252269(A000124(n+5)+5)`
-/

namespace A252267.P3081879815189855176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252269 (A000124 (n + 5) + 5).toNat

end

end A252267.P3081879815189855176

/-! ## A252267.P620359563871017013

`A252269(A000096(n+4)+7)`
-/

namespace A252267.P620359563871017013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252269 (A000096 (n + 4) + 7).toNat

end

end A252267.P620359563871017013

/-! ## A252267.P14951218008813500430

`A252269(A000217(n+5)+6)`
-/

namespace A252267.P14951218008813500430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252269 (A000217 (n + 5) + 6).toNat

end

end A252267.P14951218008813500430

/-!
# A252268: Number of (n+2)X(7+2) 0..3 arrays with every 3X3 subblock row, column, diagonal and antidiagonal sum not equal to 2 3 4 6 or 7.

The programs for A252268, there is no canonical definition to state claims against.
-/

/-! ## A252268.P2006329503174723916

`A252269(eq[11, A066657(n)])`
-/

namespace A252268.P2006329503174723916
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252269 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A252268.P2006329503174723916

/-! ## A252268.P13414730337937132748

`A252269(eq[8, A131818(n+1)])`
-/

namespace A252268.P13414730337937132748
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252269 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A252268.P13414730337937132748

/-! ## A252268.P6534490371169638172

`A252269(A374008(n+1))`
-/

namespace A252268.P6534490371169638172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252269 (A374008 (n + 1)).toNat

end

end A252268.P6534490371169638172

/-! ## A252268.P3393153111162436547

`A252269(eq[4, A219347(n)])`
-/

namespace A252268.P3393153111162436547
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252269 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A252268.P3393153111162436547

/-! ## A252268.P6001060616019334070

`A252269(eq[6, A193592(n)])`
-/

namespace A252268.P6001060616019334070
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252269 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A252268.P6001060616019334070

/-!
# A252270: Number of (n+2)X(n+2) 0..3 arrays with every 3X3 subblock row and column sum not equal to 2 3 4 6 or 7 and every 3X3 diagonal and antidiagonal sum equal to 2 3 4 6 or 7.

The programs for A252270, there is no canonical definition to state claims against.
-/

/-! ## A252270.P11973861059094974771

`A252278((n+1)²+n²)`
-/

namespace A252270.P11973861059094974771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252278 ((n + 1) ^ 2 + n ^ 2)

end

end A252270.P11973861059094974771

/-! ## A252270.P3254890306921316926

`record[A003982(n)*A252278(n+1)]`
-/

namespace A252270.P3254890306921316926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A252278 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252270.P3254890306921316926

/-! ## A252270.P11188909241037327115

`record[gcd(A114327(n), A252278(n+1))]`
-/

namespace A252270.P11188909241037327115
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A252278 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252270.P11188909241037327115

/-! ## A252270.P17000668475226197642

`record[root(A252278(n+1), A113881(n+1))]`
-/

namespace A252270.P17000668475226197642
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A252278 (n + 1) : ℝ) ^ (1 / (A113881 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252270.P17000668475226197642

/-! ## A252270.P3628422851288759350

`A252278(A001844(n))+A011737(n)`
-/

namespace A252270.P3628422851288759350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252278 (A001844 n).toNat + A011737 n

end

end A252270.P3628422851288759350

/-!
# A252271: Number of (n+2) X (1+2) 0..3 arrays with every 3 X 3 subblock row and column sum not equal to 2 3 4 6 or 7 and every 3 X 3 diagonal and antidiagonal sum equal to 2 3 4 6 or 7.

The programs for A252271, there is no canonical definition to state claims against.
-/

/-! ## A252271.P13802425951365287911

`A252278(∑[n]+1)`
-/

namespace A252271.P13802425951365287911
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252278 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A252271.P13802425951365287911

/-! ## A252271.P2511112999929079624

`A252278(A000124(n))%A017216(n)`
-/

namespace A252271.P2511112999929079624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A252278 (A000124 n).toNat) (A017216 n)

end

end A252271.P2511112999929079624

/-! ## A252271.P12996416357660045977

`lcm(A054977(n), A252278(A000124(n)))`
-/

namespace A252271.P12996416357660045977
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A054977 n) (A252278 (A000124 n).toNat)

end

end A252271.P12996416357660045977

/-! ## A252271.P17283303538728766450

`A252278(A000124(n))/A014422(n)!`
-/

namespace A252271.P17283303538728766450
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A252278 (A000124 n).toNat : ℚ) / (Nat.factorial (A014422 n).toNat : ℚ)

end

end A252271.P17283303538728766450

/-! ## A252271.P10653772725310876063

`A252278(A000124(n))+A102683(2*(n+2))`
-/

namespace A252271.P10653772725310876063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252278 (A000124 n).toNat + A102683 (2 * (n + 2))

end

end A252271.P10653772725310876063

/-!
# A252272: Number of (n+2)X(2+2) 0..3 arrays with every 3X3 subblock row and column sum not equal to 2 3 4 6 or 7 and every 3X3 diagonal and antidiagonal sum equal to 2 3 4 6 or 7.

The programs for A252272, there is no canonical definition to state claims against.
-/

/-! ## A252272.P565918392266386494

`A252278(∑[n+1]+2)`
-/

namespace A252272.P565918392266386494
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252278 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A252272.P565918392266386494

/-! ## A252272.P2501844156312570630

`xor(1, xor(1, A252278(A000096(n)+3)))`
-/

namespace A252272.P2501844156312570630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (Int.xor 1 (A252278 (A000096 n + 3).toNat))

end

end A252272.P2501844156312570630

/-! ## A252272.P2398368146794765826

`A020985(n)²*A252278(A000096(n)+3)`
-/

namespace A252272.P2398368146794765826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020985 n ^ 2 * A252278 (A000096 n + 3).toNat

end

end A252272.P2398368146794765826

/-! ## A252272.P7056176941905899259

`A252278(A000096(n)+3)+A000007(n+1)`
-/

namespace A252272.P7056176941905899259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252278 (A000096 n + 3).toNat + A000007 (n + 1)

end

end A252272.P7056176941905899259

/-! ## A252272.P5556767017277697777

`A252278(A000096(n)+3)+A008683(4*(n+1))`
-/

namespace A252272.P5556767017277697777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252278 (A000096 n + 3).toNat + A008683 (4 * (n + 1))

end

end A252272.P5556767017277697777

/-!
# A252273: Number of (n+2)X(3+2) 0..3 arrays with every 3X3 subblock row and column sum not equal to 2 3 4 6 or 7 and every 3X3 diagonal and antidiagonal sum equal to 2 3 4 6 or 7.

The programs for A252273, there is no canonical definition to state claims against.
-/

/-! ## A252273.P14253863001789452226

`A252278(∑[n+2]+4)`
-/

namespace A252273.P14253863001789452226
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252278 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A252273.P14253863001789452226

/-! ## A252273.P2982607956483838993

`A252278(A167614(n+1))%A017216(n)`
-/

namespace A252273.P2982607956483838993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A252278 (A167614 (n + 1)).toNat) (A017216 n)

end

end A252273.P2982607956483838993

/-! ## A252273.P10863350510889767056

`A252278(A167614(n+1))^A033999(n)²`
-/

namespace A252273.P10863350510889767056
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A252278 (A167614 (n + 1)).toNat : ℚ) ^ (A033999 n ^ 2 : ℤ)

end

end A252273.P10863350510889767056

/-! ## A252273.P15020979424565052773

`A252278(A167614(n+1))+A154388(A141214(n))`
-/

namespace A252273.P15020979424565052773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252278 (A167614 (n + 1)).toNat + A154388 (A141214 n).toNat

end

end A252273.P15020979424565052773

/-! ## A252273.P11761006170344243031

`A001222(A154385(n+1))*A252278(A167614(n+1))`
-/

namespace A252273.P11761006170344243031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A154385 (n + 1)).toNat * A252278 (A167614 (n + 1)).toNat

end

end A252273.P11761006170344243031

/-!
# A252274: Number of (n+2)X(4+2) 0..3 arrays with every 3X3 subblock row and column sum not equal to 2 3 4 6 or 7 and every 3X3 diagonal and antidiagonal sum equal to 2 3 4 6 or 7.

The programs for A252274, there is no canonical definition to state claims against.
-/

/-! ## A252274.P15201599475808227784

`A252278(∑[n+1]+2*n+9)`
-/

namespace A252274.P15201599475808227784
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252278 (∑ j ∈ Finset.range (n + 1), f1 j + (2 * n + 9))

end

end A252274.P15201599475808227784

/-! ## A252274.P911553581158598571

`lcm(A020985(n), A252278(A141214(n+1)))`
-/

namespace A252274.P911553581158598571
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A252278 (A141214 (n + 1)).toNat)

end

end A252274.P911553581158598571

/-! ## A252274.P3467121154447043575

`A252278(A056000(n)+7)^A033999(n)²`
-/

namespace A252274.P3467121154447043575
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A252278 (A056000 n + 7).toNat : ℚ) ^ (A033999 n ^ 2 : ℤ)

end

end A252274.P3467121154447043575

/-! ## A252274.P6021765707825854482

`A252278(A141214(n+1))+A000007(n+4)`
-/

namespace A252274.P6021765707825854482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252278 (A141214 (n + 1)).toNat + A000007 (n + 4)

end

end A252274.P6021765707825854482

/-! ## A252274.P18139300369059219079

`A054977(n+2)*A252278(A141214(n+1))`
-/

namespace A252274.P18139300369059219079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 (n + 2) * A252278 (A141214 (n + 1)).toNat

end

end A252274.P18139300369059219079

/-!
# A252275: Number of (n+2)X(5+2) 0..3 arrays with every 3X3 subblock row and column sum not equal to 2 3 4 6 or 7 and every 3X3 diagonal and antidiagonal sum equal to 2 3 4 6 or 7.

The programs for A252275, there is no canonical definition to state claims against.
-/

/-! ## A252275.P6160196572571089484

`A252278(A374005(n+1))`
-/

namespace A252275.P6160196572571089484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252278 (A374005 (n + 1)).toNat

end

end A252275.P6160196572571089484

/-! ## A252275.P4489357963472208288

`A252278(A167499(n+3))`
-/

namespace A252275.P4489357963472208288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252278 (A167499 (n + 3)).toNat

end

end A252275.P4489357963472208288

/-! ## A252275.P14532222328043153611

`A252278(A000096(n+3)+6)`
-/

namespace A252275.P14532222328043153611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252278 (A000096 (n + 3) + 6).toNat

end

end A252275.P14532222328043153611

/-! ## A252275.P6628701542202094925

`A252278(A000217(n+4)+5)`
-/

namespace A252275.P6628701542202094925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252278 (A000217 (n + 4) + 5).toNat

end

end A252275.P6628701542202094925

/-! ## A252275.P16508668810545895637

`A252278(A167614(n+4)-(n+3))`
-/

namespace A252275.P16508668810545895637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252278 (A167614 (n + 4) - (n + 3 : ℤ)).toNat

end

end A252275.P16508668810545895637

/-!
# A252276: Number of (n+2)X(6+2) 0..3 arrays with every 3X3 subblock row and column sum not equal to 2 3 4 6 or 7 and every 3X3 diagonal and antidiagonal sum equal to 2 3 4 6 or 7.

The programs for A252276, there is no canonical definition to state claims against.
-/

/-! ## A252276.P12725101460504326017

`A252278(A374007(n+1))`
-/

namespace A252276.P12725101460504326017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252278 (A374007 (n + 1)).toNat

end

end A252276.P12725101460504326017

/-! ## A252276.P1789947854068952182

`A252278(A167499(n+4)+1)`
-/

namespace A252276.P1789947854068952182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252278 (A167499 (n + 4) + 1).toNat

end

end A252276.P1789947854068952182

/-! ## A252276.P11928927620581730948

`A252278(A167614(n+4)+3)`
-/

namespace A252276.P11928927620581730948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252278 (A167614 (n + 4) + 3).toNat

end

end A252276.P11928927620581730948

/-! ## A252276.P10740243266984961620

`A252278(A000217(n+5)+6)`
-/

namespace A252276.P10740243266984961620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252278 (A000217 (n + 5) + 6).toNat

end

end A252276.P10740243266984961620

/-! ## A252276.P13175447736723748069

`A252278(A000124(n+6)-6)`
-/

namespace A252276.P13175447736723748069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252278 (A000124 (n + 6) - 6).toNat

end

end A252276.P13175447736723748069

/-!
# A252277: Number of (n+2)X(7+2) 0..3 arrays with every 3X3 subblock row and column sum not equal to 2 3 4 6 or 7 and every 3X3 diagonal and antidiagonal sum equal to 2 3 4 6 or 7.

The programs for A252277, there is no canonical definition to state claims against.
-/

/-! ## A252277.P8503706914515720898

`A252278(A374008(n+1))`
-/

namespace A252277.P8503706914515720898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252278 (A374008 (n + 1)).toNat

end

end A252277.P8503706914515720898

/-! ## A252277.P12624725319032357166

`A252278(A000217(n+6)+7)`
-/

namespace A252277.P12624725319032357166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252278 (A000217 (n + 6) + 7).toNat

end

end A252277.P12624725319032357166

/-! ## A252277.P18401830425659095371

`A252278(A046691(n+4)+11)`
-/

namespace A252277.P18401830425659095371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252278 (A046691 (n + 4) + 11).toNat

end

end A252277.P18401830425659095371

/-! ## A252277.P12782703268154050251

`A252278(A055999(n+4))`
-/

namespace A252277.P12782703268154050251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252278 (A055999 (n + 4)).toNat

end

end A252277.P12782703268154050251

/-! ## A252277.P10483133481864054139

`A252278(A000124(n+7)-7)`
-/

namespace A252277.P10483133481864054139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252278 (A000124 (n + 7) - 7).toNat

end

end A252277.P10483133481864054139

/-!
# A252279: Primes p congruent to 1 mod 16 such that x^8 = 2 has a solution mod p.

The programs for A252279, there is no canonical definition to state claims against.
-/

/-! ## A252279.P10213787179442182974

`∩[A051073(n+1), A094407(n+1)]`
-/

namespace A252279.P10213787179442182974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051073 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094407 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A252279.P10213787179442182974

/-! ## A252279.P8696496079922485653

`∩[A051073(n+1), A105389(n+1)]`
-/

namespace A252279.P8696496079922485653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051073 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105389 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A252279.P8696496079922485653

/-! ## A252279.P2672840092245650527

`∩[A045315(n+1), A094407(n+1)]`
-/

namespace A252279.P2672840092245650527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045315 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094407 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A252279.P2672840092245650527

/-! ## A252279.P3613165605849254244

`∩[A045315(n+1), A105389(n+1)]`
-/

namespace A252279.P3613165605849254244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045315 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105389 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A252279.P3613165605849254244

/-! ## A252279.P9847153800839792075

`∩[A045315(n+1), A158057(n)]`
-/

namespace A252279.P9847153800839792075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045315 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158057 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A252279.P9847153800839792075

/-! ## A252279.P6935887869172157653

`∩[A051073(n+1), A158057(n)]`
-/

namespace A252279.P6935887869172157653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051073 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158057 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A252279.P6935887869172157653

/-! ## A252279.P18253861305499096910

`∩[A045315(n+1), A319281(n+1)]`
-/

namespace A252279.P18253861305499096910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045315 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319281 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A252279.P18253861305499096910

/-! ## A252279.P941723610325063346

`∩[A051073(n+1), A319281(n+1)]`
-/

namespace A252279.P941723610325063346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051073 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319281 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A252279.P941723610325063346

/-! ## A252279.P11963759343863462446

`∩[A045315(n+1), A151977(n+1)]`
-/

namespace A252279.P11963759343863462446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045315 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151977 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A252279.P11963759343863462446

/-! ## A252279.P15427428187805556870

`∩[A051073(n+1), A151977(n+1)]`
-/

namespace A252279.P15427428187805556870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051073 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151977 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A252279.P15427428187805556870

/-! ## A252279.P2869768626238096636

`∩[A045315(n+1), A247061(n+1)]`
-/

namespace A252279.P2869768626238096636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045315 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247061 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A252279.P2869768626238096636

/-! ## A252279.P11797474076049812310

`∩[A051073(n+1), A016813(4*n)]`
-/

namespace A252279.P11797474076049812310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051073 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 (4 * n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A252279.P11797474076049812310

/-!
# A252280: For a prime p, denote by s(p,k) the odd part of the digital sum of p^k. Let k_1 be the smallest k such that s(p,k) is divisible by 7. Sequence lists primes p for which s(p,k_1)=7.

The programs for A252280, there is no canonical definition to state claims against.
-/

/-! ## A252280.P13330451299377312093

`eq[A353860(A348052(n+2)), A353860(n)]`
-/

namespace A252280.P13330451299377312093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353860 (A348052 (n + 2)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353860 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A252280.P13330451299377312093

/-! ## A252280.P1488680408167112258

`A340759(A062399(n+1))`
-/

namespace A252280.P1488680408167112258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340759 (A062399 (n + 1)).toNat

end

end A252280.P1488680408167112258

/-! ## A252280.P17014757112421515822

`A340759(A351870(n+1))`
-/

namespace A252280.P17014757112421515822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340759 (A351870 (n + 1)).toNat

end

end A252280.P17014757112421515822

/-! ## A252280.P4180517478862558023

`A340759(A227549(n+1)+1)`
-/

namespace A252280.P4180517478862558023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340759 (A227549 (n + 1) + 1).toNat

end

end A252280.P4180517478862558023

/-! ## A252280.P4673747406078832722

`A006530(A340759(n+1)^3)`
-/

namespace A252280.P4673747406078832722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A340759 (n + 1) ^ 3).toNat

end

end A252280.P4673747406078832722

/-!
# A252281: For a prime p, denote by s(p,k) the odd part of the digital sum of p^k. Let k_1 be the smallest k such that s(p,k) is divisible by 11. Sequence lists primes p for which s(p,k_1)=11.

The programs for A252281, there is no canonical definition to state claims against.
-/

/-! ## A252281.P12550279005497023310

`A045344(A308469(n+1)^A250131(n+1))`
-/

namespace A252281.P12550279005497023310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (SequenceMachineLib.roundAway ((A308469 (n + 1) : ℚ) ^ (A250131 (n + 1) : ℤ))).toNat

end

end A252281.P12550279005497023310

/-! ## A252281.P13337961893541608136

`A045344(C(A308469(n+1), A250131(n+1)))`
-/

namespace A252281.P13337961893541608136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (Nat.choose (A308469 (n + 1)).toNat (A250131 (n + 1)).toNat)

end

end A252281.P13337961893541608136

/-! ## A252281.P11749747583370615702

`A045344(A250131(n+1)²²*A308469(n+1))`
-/

namespace A252281.P11749747583370615702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 ((A250131 (n + 1) ^ 2) ^ 2 * A308469 (n + 1)).toNat

end

end A252281.P11749747583370615702

/-! ## A252281.P5702061701073252358

`p?[A069924(∑[A160664(n)])]`
-/

namespace A252281.P5702061701073252358
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069924 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A252281.P5702061701073252358

/-! ## A252281.P11088496582773489532

`filter[A120242(2*(n+1)), A373338(#)]`
-/

namespace A252281.P11088496582773489532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120242 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373338 (f1 j).toNat = 1) n)

end

end A252281.P11088496582773489532

/-!
# A252282: Intersection of A251964 and A252280.

The programs for A252282, there is no canonical definition to state claims against.
-/

/-! ## A252282.P13904038455200490900

`∩[A251964(n+1), A252280(n+1)]`
-/

namespace A252282.P13904038455200490900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251964 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252280 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A252282.P13904038455200490900

/-! ## A252282.P3301607350477260617

`∩[A251964(n+1), A371123(n+1)]`
-/

namespace A252282.P3301607350477260617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251964 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371123 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A252282.P3301607350477260617

/-! ## A252282.P6498346695171565236

`∩[A028804(n+1), A251964(n+1)]`
-/

namespace A252282.P6498346695171565236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028804 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251964 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A252282.P6498346695171565236

/-! ## A252282.P5070914243466023749

`∩[A099649(n+1), A251964(n+1)]`
-/

namespace A252282.P5070914243466023749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099649 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251964 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A252282.P5070914243466023749

/-! ## A252282.P8045192278702134833

`∩[A122546(n+1), A251964(n+1)]`
-/

namespace A252282.P8045192278702134833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122546 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251964 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A252282.P8045192278702134833

/-!
# A252283: Intersection of A251964, A252280 and A252281.

The programs for A252283, there is no canonical definition to state claims against.
-/

/-! ## A252283.P8560796815704086883

`∩[A252281(n+1), A252282(n+1)]`
-/

namespace A252283.P8560796815704086883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252281 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252282 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A252283.P8560796815704086883

/-! ## A252283.P14175737054835014590

`A000040(lt[2, A252670(n+1)]+1)`
-/

namespace A252283.P14175737054835014590
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252670 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A252283.P14175737054835014590

/-!
# A252285: Number of (n+2)X(n+2) 0..2 arrays with every 3X3 subblock row, column, diagonal and antidiagonal sum not equal to 0 1 or 4.

The programs for A252285, there is no canonical definition to state claims against.
-/

/-! ## A252285.P18109413326276655701

`A252293(∑[4*n]+1)`
-/

namespace A252285.P18109413326276655701
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252293 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A252285.P18109413326276655701

/-! ## A252285.P18290140585137043682

`∏{digits}[n, A252293(A001844(#))]`
-/

namespace A252285.P18290140585137043682
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A252293 (A001844 x).toNat).prod

end

end A252285.P18290140585137043682

/-! ## A252285.P1233093106670254450

`A252293(A001844(n))+char[10]`
-/

namespace A252285.P1233093106670254450
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252293 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A252285.P1233093106670254450

/-! ## A252285.P16120037440485220111

`record[A003982(n)*A252293(n+1)]`
-/

namespace A252285.P16120037440485220111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A252293 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252285.P16120037440485220111

/-! ## A252285.P10023862782791198842

`record[gcd(A003987(n), A252293(n+1))]`
-/

namespace A252285.P10023862782791198842
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003987 n) (A252293 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252285.P10023862782791198842

/-!
# A252286: Number of (n+2)X(1+2) 0..2 arrays with every 3X3 subblock row, column, diagonal and antidiagonal sum not equal to 0 1 or 4.

The programs for A252286, there is no canonical definition to state claims against.
-/

/-! ## A252286.P12038937825845171600

`A252293(∑[n]+1)`
-/

namespace A252286.P12038937825845171600
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252293 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A252286.P12038937825845171600

/-! ## A252286.P10266827746040302848

`record[A010054(n)*A252293(n+1)]`
-/

namespace A252286.P10266827746040302848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A252293 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252286.P10266827746040302848

/-! ## A252286.P13331239944810427591

`record[A252293(n+1)/A008459(n)]`
-/

namespace A252286.P13331239944810427591
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A252293 (n + 1) : ℚ) / (A008459 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252286.P13331239944810427591

/-! ## A252286.P4084377636954328540

`record[A252293(n+1)/A013612(n)]`
-/

namespace A252286.P4084377636954328540
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A252293 (n + 1) : ℚ) / (A013612 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252286.P4084377636954328540

/-! ## A252286.P4406081126048563872

`record[gcd(A002262(n), A252293(n+1))]`
-/

namespace A252286.P4406081126048563872
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A252293 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252286.P4406081126048563872

/-!
# A252287: Number of (n+2)X(2+2) 0..2 arrays with every 3X3 subblock row, column, diagonal and antidiagonal sum not equal to 0 1 or 4.

The programs for A252287, there is no canonical definition to state claims against.
-/

/-! ## A252287.P834999574268881025

`A252293(∑[n+1]+2)`
-/

namespace A252287.P834999574268881025
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252293 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A252287.P834999574268881025

/-! ## A252287.P11589815628942118807

`record[A010054(n)*A252293(n+2)]`
-/

namespace A252287.P11589815628942118807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A252293 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252287.P11589815628942118807

/-! ## A252287.P18194149238412471997

`record[A252293(n+2)/A013612(n)]`
-/

namespace A252287.P18194149238412471997
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A252293 (n + 2) : ℚ) / (A013612 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252287.P18194149238412471997

/-! ## A252287.P1636560229225057089

`record[A252293(gcd(n+2, A002262(n)))]`
-/

namespace A252287.P1636560229225057089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252293 (Int.gcd (n + 2 : ℤ) (A002262 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252287.P1636560229225057089

/-! ## A252287.P11182470707332381146

`A252293(A000096(n)+3)+A000038(n+1)`
-/

namespace A252287.P11182470707332381146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252293 (A000096 n + 3).toNat + A000038 (n + 1)

end

end A252287.P11182470707332381146

/-!
# A252288: Number of (n+2)X(3+2) 0..2 arrays with every 3X3 subblock row, column, diagonal and antidiagonal sum not equal to 0 1 or 4.

The programs for A252288, there is no canonical definition to state claims against.
-/

/-! ## A252288.P4237256732653313380

`A252293(∑[n+2]+4)`
-/

namespace A252288.P4237256732653313380
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252293 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A252288.P4237256732653313380

/-! ## A252288.P6140830261628975604

`A252293(A167614(n+1))+A185264(n)`
-/

namespace A252288.P6140830261628975604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252293 (A167614 (n + 1)).toNat + A185264 n

end

end A252288.P6140830261628975604

/-! ## A252288.P11244944852306699375

`A014598(n)*A252293(A167614(n+1))`
-/

namespace A252288.P11244944852306699375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014598 n * A252293 (A167614 (n + 1)).toNat

end

end A252288.P11244944852306699375

/-! ## A252288.P17566462399280202494

`A252293(A167614(n+1))%A017046(n)`
-/

namespace A252288.P17566462399280202494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A252293 (A167614 (n + 1)).toNat) (A017046 n)

end

end A252288.P17566462399280202494

/-! ## A252288.P8647650367680608676

`lcm(A000034(n), A252293(A167614(n+1)))`
-/

namespace A252288.P8647650367680608676
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000034 n) (A252293 (A167614 (n + 1)).toNat)

end

end A252288.P8647650367680608676

/-!
# A252289: Number of (n+2)X(4+2) 0..2 arrays with every 3X3 subblock row, column, diagonal and antidiagonal sum not equal to 0 1 or 4.

The programs for A252289, there is no canonical definition to state claims against.
-/

/-! ## A252289.P15537282154419824643

`A252293(A374004(n+1))`
-/

namespace A252289.P15537282154419824643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252293 (A374004 (n + 1)).toNat

end

end A252289.P15537282154419824643

/-! ## A252289.P2393040868410785024

`A252293(A141214(n)+7)`
-/

namespace A252289.P2393040868410785024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252293 (A141214 n + 7).toNat

end

end A252289.P2393040868410785024

/-! ## A252289.P14249837713401616536

`A252293(A055999(n)+10)`
-/

namespace A252289.P14249837713401616536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252293 (A055999 n + 10).toNat

end

end A252289.P14249837713401616536

/-! ## A252289.P2512320009024128531

`A252293(A167614(n+2)+1)`
-/

namespace A252289.P2512320009024128531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252293 (A167614 (n + 2) + 1).toNat

end

end A252289.P2512320009024128531

/-! ## A252289.P8365273933313495686

`A252293(A167487(n+2)-3)`
-/

namespace A252289.P8365273933313495686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252293 (A167487 (n + 2) - 3).toNat

end

end A252289.P8365273933313495686

/-!
# A252290: Number of (n+2)X(5+2) 0..2 arrays with every 3X3 subblock row, column, diagonal and antidiagonal sum not equal to 0 1 or 4.

The programs for A252290, there is no canonical definition to state claims against.
-/

/-! ## A252290.P18287776638995037778

`A252293(A374005(n+1))`
-/

namespace A252290.P18287776638995037778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252293 (A374005 (n + 1)).toNat

end

end A252290.P18287776638995037778

/-! ## A252290.P14132877400178641497

`A252293(A167499(n+3))`
-/

namespace A252290.P14132877400178641497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252293 (A167499 (n + 3)).toNat

end

end A252290.P14132877400178641497

/-! ## A252290.P9680302595026973432

`A252293(A077169(n+5))`
-/

namespace A252290.P9680302595026973432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252293 (A077169 (n + 5)).toNat

end

end A252290.P9680302595026973432

/-! ## A252290.P12806982320307766203

`A252293(A000124(n+4)+4)`
-/

namespace A252290.P12806982320307766203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252293 (A000124 (n + 4) + 4).toNat

end

end A252290.P12806982320307766203

/-! ## A252290.P11340137485991218330

`A252293(A000217(n+4)+5)`
-/

namespace A252290.P11340137485991218330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252293 (A000217 (n + 4) + 5).toNat

end

end A252290.P11340137485991218330

/-!
# A252291: Number of (n+2)X(6+2) 0..2 arrays with every 3X3 subblock row, column, diagonal and antidiagonal sum not equal to 0 1 or 4.

The programs for A252291, there is no canonical definition to state claims against.
-/

/-! ## A252291.P13298710523768194802

`A252293(A374007(n+1))`
-/

namespace A252291.P13298710523768194802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252293 (A374007 (n + 1)).toNat

end

end A252291.P13298710523768194802

/-! ## A252291.P13478443896005603328

`A252293(A167499(n+4)+1)`
-/

namespace A252291.P13478443896005603328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252293 (A167499 (n + 4) + 1).toNat

end

end A252291.P13478443896005603328

/-! ## A252291.P14856217826652981505

`A252293(A167487(n+4)-1)`
-/

namespace A252291.P14856217826652981505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252293 (A167487 (n + 4) - 1).toNat

end

end A252291.P14856217826652981505

/-! ## A252291.P17457723122961163432

`A252293(A000217(n+5)+6)`
-/

namespace A252291.P17457723122961163432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252293 (A000217 (n + 5) + 6).toNat

end

end A252291.P17457723122961163432

/-! ## A252291.P9688877164938417171

`A252293(A001478(n+1)+A000124(n+6))`
-/

namespace A252291.P9688877164938417171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252293 (A001478 (n + 1) + A000124 (n + 6)).toNat

end

end A252291.P9688877164938417171

/-!
# A252292: Number of (n+2)X(7+2) 0..2 arrays with every 3X3 subblock row, column, diagonal and antidiagonal sum not equal to 0 1 or 4.

The programs for A252292, there is no canonical definition to state claims against.
-/

/-! ## A252292.P9007331432059212343

`A252293(A374008(n+1))`
-/

namespace A252292.P9007331432059212343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252293 (A374008 (n + 1)).toNat

end

end A252292.P9007331432059212343

/-! ## A252292.P3996299057057364729

`A252293(A167487(n+5))`
-/

namespace A252292.P3996299057057364729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252293 (A167487 (n + 5)).toNat

end

end A252292.P3996299057057364729

/-! ## A252292.P4904974503905008210

`A252293(eq[11, A066657(n)])`
-/

namespace A252292.P4904974503905008210
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252293 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A252292.P4904974503905008210

/-! ## A252292.P14936867048732750734

`A252293(A167614(n+5)+4)`
-/

namespace A252292.P14936867048732750734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252293 (A167614 (n + 5) + 4).toNat

end

end A252292.P14936867048732750734

/-! ## A252292.P2245319411426154504

`A252293(eq[8, A131818(n+1)])`
-/

namespace A252292.P2245319411426154504
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252293 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A252292.P2245319411426154504

/-!
# A252294: Number of (n+2)X(1+2) 0..3 arrays with every 3X3 subblock row, column, diagonal and antidiagonal sum not equal to 0 2 3 6 or 7.

The programs for A252294, there is no canonical definition to state claims against.
-/

/-! ## A252294.P2660283457377230726

`A252295(∑[n]+1)`
-/

namespace A252294.P2660283457377230726
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252295 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A252294.P2660283457377230726

/-! ## A252294.P4448710926676037468

`char[A002487(n)]*A252295(A000124(n))`
-/

namespace A252294.P4448710926676037468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A252295 (A000124 n).toNat

end

end A252294.P4448710926676037468

/-! ## A252294.P2180287952392853939

`A252295(A000124(n))+A000007(2*n+3)`
-/

namespace A252294.P2180287952392853939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252295 (A000124 n).toNat + A000007 (2 * n + 3)

end

end A252294.P2180287952392853939

/-! ## A252294.P15585252518614739164

`A252295(A000124(n))%A252136(3*n+4)`
-/

namespace A252294.P15585252518614739164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A252295 (A000124 n).toNat) (A252136 (3 * n + 4))

end

end A252294.P15585252518614739164

/-! ## A252294.P3227195505732896645

`char[A003557(n+1)-1]*A252295(A000124(n))`
-/

namespace A252294.P3227195505732896645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A252295 (A000124 n).toNat

end

end A252294.P3227195505732896645

/-!
# A252296: Fibonacci numbers k for which the difference between k and the largest prime less than k is also prime.

The programs for A252296, there is no canonical definition to state claims against.
-/

/-! ## A252296.P15208990207870020733

`A246104(or(A033816(n), A088218(n)))`
-/

namespace A252296.P15208990207870020733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246104 (Int.lor (A033816 n) (A088218 n)).toNat

end

end A252296.P15208990207870020733

/-! ## A252296.P9311476257328256363

`A256654(or(A088218(n), A272708(n)))`
-/

namespace A252296.P9311476257328256363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256654 (Int.lor (A088218 n) (A272708 n)).toNat

end

end A252296.P9311476257328256363

/-! ## A252296.P433032131935276257

`A087172(or(A050183(n), A212457(n+1)))`
-/

namespace A252296.P433032131935276257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087172 (Int.lor (A050183 n) (A212457 (n + 1))).toNat

end

end A252296.P433032131935276257

/-! ## A252296.P1971576206771311445

`A246104(or(A079020(n+1), A088218(n)))`
-/

namespace A252296.P1971576206771311445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246104 (Int.lor (A079020 (n + 1)) (A088218 n)).toNat

end

end A252296.P1971576206771311445

/-! ## A252296.P17594103914563757556

`A087172(A340960(3*n+10)+A052787(n))`
-/

namespace A252296.P17594103914563757556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087172 (A340960 (3 * n + 10) + A052787 n).toNat

end

end A252296.P17594103914563757556

/-!
# A252297: Number of (n+2)X(n+2) 0..3 arrays with every 3X3 subblock row and diagonal sum equal to 0 1 3 6 or 7 and every 3X3 column and antidiagonal sum not equal to 0 1 3 6 or 7.

The programs for A252297, there is no canonical definition to state claims against.
-/

/-! ## A252297.P4025398986506875510

`A252305(∑[4*n]+1)`
-/

namespace A252297.P4025398986506875510
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252305 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A252297.P4025398986506875510

/-! ## A252297.P17552341954383451687

`record[gcd(abs(round(sqrt(2*(n+1)))²-(2*n+1)), A252305(n+1))]`
-/

namespace A252297.P17552341954383451687
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd |SequenceMachineLib.roundAway (Real.sqrt (2 * (n + 1) : ℝ)) ^ 2 - (2 * n + 1 : ℤ)| (A252305 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252297.P17552341954383451687

/-! ## A252297.P7127868561598867944

`and(-1, A252305(A001844(n)))`
-/

namespace A252297.P7127868561598867944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A252305 (A001844 n).toNat)

end

end A252297.P7127868561598867944

/-! ## A252297.P15930662736119515872

`A252305(A001844(n))+A067157(n)`
-/

namespace A252297.P15930662736119515872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252305 (A001844 n).toNat + A067157 (n + 10)

end

end A252297.P15930662736119515872

/-! ## A252297.P7298741938119853952

`lcm(A054977(n), A252305(A001844(n)))`
-/

namespace A252297.P7298741938119853952
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A054977 n) (A252305 (A001844 n).toNat)

end

end A252297.P7298741938119853952

/-!
# A252298: Number of (n+2)X(1+2) 0..3 arrays with every 3X3 subblock row and diagonal sum equal to 0 1 3 6 or 7 and every 3X3 column and antidiagonal sum not equal to 0 1 3 6 or 7.

The programs for A252298, there is no canonical definition to state claims against.
-/

/-! ## A252298.P2043501878299194432

`A252305(∑[n+1])`
-/

namespace A252298.P2043501878299194432
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252305 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A252298.P2043501878299194432

/-! ## A252298.P14919685168571934543

`record[A252305(A115017(n+1))]`
-/

namespace A252298.P14919685168571934543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252305 (A115017 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252298.P14919685168571934543

/-! ## A252298.P13285800660447168501

`record[A252305(A130270(n+1))]`
-/

namespace A252298.P13285800660447168501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252305 (A130270 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252298.P13285800660447168501

/-! ## A252298.P16992514326288808864

`A252305(A000217(n+1))+char[29]`
-/

namespace A252298.P16992514326288808864
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  29

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252305 (A000217 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A252298.P16992514326288808864

/-! ## A252298.P1001423374958012178

`record[A023531(n)*A252305(n+1)]`
-/

namespace A252298.P1001423374958012178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 n * A252305 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252298.P1001423374958012178

/-!
# A252299: Number of (n+2)X(2+2) 0..3 arrays with every 3X3 subblock row and diagonal sum equal to 0 1 3 6 or 7 and every 3X3 column and antidiagonal sum not equal to 0 1 3 6 or 7.

The programs for A252299, there is no canonical definition to state claims against.
-/

/-! ## A252299.P7666382919893526463

`A252305(∑[n+2])`
-/

namespace A252299.P7666382919893526463
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252305 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A252299.P7666382919893526463

/-! ## A252299.P10013573500992576186

`A252305(A000096(n+1))+char[23]`
-/

namespace A252299.P10013573500992576186
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  23

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252305 (A000096 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A252299.P10013573500992576186

/-! ## A252299.P6246070707230391327

`or(A025438(n), A252305(A000096(n+1)))`
-/

namespace A252299.P6246070707230391327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A025438 n) (A252305 (A000096 (n + 1)).toNat)

end

end A252299.P6246070707230391327

/-! ## A252299.P5643983072321430751

`A252305(A000096(n+1))%A252309(n+1)`
-/

namespace A252299.P5643983072321430751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A252305 (A000096 (n + 1)).toNat) (A252309 (n + 1))

end

end A252299.P5643983072321430751

