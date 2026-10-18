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
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
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
# A235900: Number of (n+1)X(6+1) 0..2 arrays with the minimum plus the maximum equal to the lower median plus the upper median in every 2X2 subblock.

The programs for A235900, there is no canonical definition to state claims against.
-/

/-! ## A235900.P10775393615174594369

`A235902(A374007(n+1))`
-/

namespace A235900.P10775393615174594369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235902 (A374007 (n + 1)).toNat

end

end A235900.P10775393615174594369

/-! ## A235900.P15056248401667689347

`A235902(eq[7, A131818(n+1)])`
-/

namespace A235900.P15056248401667689347
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235902 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A235900.P15056248401667689347

/-! ## A235900.P13129115591985931240

`A235902(A052905(n+3))`
-/

namespace A235900.P13129115591985931240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235902 (A052905 (n + 3)).toNat

end

end A235900.P13129115591985931240

/-! ## A235900.P5609258375565442329

`A235902(eq[3, A219347(n)])`
-/

namespace A235900.P5609258375565442329
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235902 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A235900.P5609258375565442329

/-! ## A235900.P7445713819974026513

`A235902(eq[5, A193592(n)])`
-/

namespace A235900.P7445713819974026513
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235902 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A235900.P7445713819974026513

/-!
# A235901: Number of (n+1)X(7+1) 0..2 arrays with the minimum plus the maximum equal to the lower median plus the upper median in every 2X2 subblock.

The programs for A235901, there is no canonical definition to state claims against.
-/

/-! ## A235901.P17645618696517161019

`A235902(A374008(n+1))`
-/

namespace A235901.P17645618696517161019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235902 (A374008 (n + 1)).toNat

end

end A235901.P17645618696517161019

/-! ## A235901.P16461483936814821882

`A235902(eq[8, A131818(n+1)])`
-/

namespace A235901.P16461483936814821882
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235902 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A235901.P16461483936814821882

/-! ## A235901.P13904787408476490798

`A235902(eq[4, A219347(n)])`
-/

namespace A235901.P13904787408476490798
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235902 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A235901.P13904787408476490798

/-! ## A235901.P2181769581071548785

`A235902(eq[6, A193592(n)])`
-/

namespace A235901.P2181769581071548785
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235902 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A235901.P2181769581071548785

/-! ## A235901.P18397787997807564273

`A235902(Δ[A023551(n+2)])`
-/

namespace A235901.P18397787997807564273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235902 (f1 (n + 1) - f1 n).toNat

end

end A235901.P18397787997807564273

/-!
# A235903: Number of (n+1)X(n+1) 0..2 arrays with the minimum plus the maximum unequal to the lower median plus the upper median in every 2X2 subblock.

The programs for A235903, there is no canonical definition to state claims against.
-/

/-! ## A235903.P16238216497180712474

`A235911((n+1)²+n²)`
-/

namespace A235903.P16238216497180712474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235911 ((n + 1) ^ 2 + n ^ 2)

end

end A235903.P16238216497180712474

/-! ## A235903.P8651033711675703972

`lcm(2, A235911(A001844(n)))`
-/

namespace A235903.P8651033711675703972
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A235911 (A001844 n).toNat)

end

end A235903.P8651033711675703972

/-!
# A235904: Number of (n+1) X (1+1) 0..2 arrays with the minimum plus the maximum unequal to the lower median plus the upper median in every 2 X 2 subblock.

The programs for A235904, there is no canonical definition to state claims against.
-/

/-! ## A235904.P10079458536014607093

`A235911(∑[n]+1)`
-/

namespace A235904.P10079458536014607093
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235911 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A235904.P10079458536014607093

/-! ## A235904.P7612468824494051536

`lcm(2, A235911(A000124(n)))`
-/

namespace A235904.P7612468824494051536
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A235911 (A000124 n).toNat)

end

end A235904.P7612468824494051536

/-! ## A235904.P14648247237834145375

`record[A235911(n+1)/A022166(n)]`
-/

namespace A235904.P14648247237834145375
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A235911 (n + 1) : ℚ) / (A022166 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235904.P14648247237834145375

/-! ## A235904.P470559839371203391

`record[root(A235911(n+1), A026725(n))]`
-/

namespace A235904.P470559839371203391
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A235911 (n + 1) : ℝ) ^ (1 / (A026725 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235904.P470559839371203391

/-! ## A235904.P5171286828615272125

`record[gcd(A002262(n), A235911(n+1))]`
-/

namespace A235904.P5171286828615272125
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A235911 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235904.P5171286828615272125

/-!
# A235905: Number of (n+1) X (2+1) 0..2 arrays with the minimum plus the maximum unequal to the lower median plus the upper median in every 2 X 2 subblock.

The programs for A235905, there is no canonical definition to state claims against.
-/

/-! ## A235905.P16560075474876261697

`A235911(∑[n+1]+2)`
-/

namespace A235905.P16560075474876261697
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235911 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A235905.P16560075474876261697

/-! ## A235905.P14949505048941306278

`record[gcd(A002262(n), A235911(n+2))]`
-/

namespace A235905.P14949505048941306278
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A235911 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235905.P14949505048941306278

/-! ## A235905.P11043652107331812960

`record[gcd(A025581(n), A235911(n+3))]`
-/

namespace A235905.P11043652107331812960
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A025581 n) (A235911 (n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235905.P11043652107331812960

/-! ## A235905.P2573047106108080924

`record[A235911(Δ[A003453(n+5)])]`
-/

namespace A235905.P2573047106108080924
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235911 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235905.P2573047106108080924

/-! ## A235905.P7893384352683070868

`A235911(A000096(n+1))%A182609(n+3)`
-/

namespace A235905.P7893384352683070868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A235911 (A000096 (n + 1)).toNat) (A182609 (n + 3))

end

end A235905.P7893384352683070868

/-!
# A235906: Number of (n+1)X(3+1) 0..2 arrays with the minimum plus the maximum unequal to the lower median plus the upper median in every 2X2 subblock.

The programs for A235906, there is no canonical definition to state claims against.
-/

/-! ## A235906.P567119269832452060

`A235911(∑[n+2]+4)`
-/

namespace A235906.P567119269832452060
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235911 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A235906.P567119269832452060

/-! ## A235906.P44163218703302065

`lcm(2, A235911(A167614(n+1)))`
-/

namespace A235906.P44163218703302065
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A235911 (A167614 (n + 1)).toNat)

end

end A235906.P44163218703302065

/-! ## A235906.P17411261098885235480

`A235911(A167614(n+1))+A185238(n)`
-/

namespace A235906.P17411261098885235480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235911 (A167614 (n + 1)).toNat + A185238 n

end

end A235906.P17411261098885235480

/-! ## A235906.P15298897223361850922

`A235911(A167614(n+1))+A070097(n+1)`
-/

namespace A235906.P15298897223361850922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235911 (A167614 (n + 1)).toNat + A070097 (n + 1)

end

end A235906.P15298897223361850922

/-! ## A235906.P15927920729579533177

`A235911(A167614(n+1))+A003849(A001950(n+1))`
-/

namespace A235906.P15927920729579533177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235911 (A167614 (n + 1)).toNat + A003849 (A001950 (n + 1)).toNat

end

end A235906.P15927920729579533177

/-!
# A235907: Number of (n+1)X(4+1) 0..2 arrays with the minimum plus the maximum unequal to the lower median plus the upper median in every 2X2 subblock.

The programs for A235907, there is no canonical definition to state claims against.
-/

/-! ## A235907.P1045039781634762144

`A235911(A374004(n+1))`
-/

namespace A235907.P1045039781634762144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235911 (A374004 (n + 1)).toNat

end

end A235907.P1045039781634762144

/-! ## A235907.P497073677457301026

`A235911(A055999(n)+10)`
-/

namespace A235907.P497073677457301026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235911 (A055999 n + 10).toNat

end

end A235907.P497073677457301026

/-! ## A235907.P17281045188017125115

`A235911(A167614(n+2)+1)`
-/

namespace A235907.P17281045188017125115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235911 (A167614 (n + 2) + 1).toNat

end

end A235907.P17281045188017125115

/-! ## A235907.P17111042146982106652

`A235911(Δ[A264443(n)-n²])`
-/

namespace A235907.P17111042146982106652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235911 (f1 (n + 1) - f1 n).toNat

end

end A235907.P17111042146982106652

/-! ## A235907.P11304532475608071451

`A235911(A141214(n+1))`
-/

namespace A235907.P11304532475608071451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235911 (A141214 (n + 1)).toNat

end

end A235907.P11304532475608071451

/-!
# A235908: Number of (n+1)X(5+1) 0..2 arrays with the minimum plus the maximum unequal to the lower median plus the upper median in every 2X2 subblock.

The programs for A235908, there is no canonical definition to state claims against.
-/

/-! ## A235908.P11716323455711163242

`A235911(A374005(n+1))`
-/

namespace A235908.P11716323455711163242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235911 (A374005 (n + 1)).toNat

end

end A235908.P11716323455711163242

/-! ## A235908.P1656682905138164098

`A235911(A167499(n+3))`
-/

namespace A235908.P1656682905138164098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235911 (A167499 (n + 3)).toNat

end

end A235908.P1656682905138164098

/-! ## A235908.P17033649917602855003

`A235911(A056000(n)+15)`
-/

namespace A235908.P17033649917602855003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235911 (A056000 n + 15).toNat

end

end A235908.P17033649917602855003

/-! ## A235908.P6674141689969888341

`A235911(Δ[A264443(n)])`
-/

namespace A235908.P6674141689969888341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235911 (f1 (n + 1) - f1 n).toNat

end

end A235908.P6674141689969888341

/-! ## A235908.P617863690155834317

`A235911(A046691(n+3))`
-/

namespace A235908.P617863690155834317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235911 (A046691 (n + 3)).toNat

end

end A235908.P617863690155834317

/-!
# A235909: Number of (n+1)X(6+1) 0..2 arrays with the minimum plus the maximum unequal to the lower median plus the upper median in every 2X2 subblock.

The programs for A235909, there is no canonical definition to state claims against.
-/

/-! ## A235909.P13520405820076349908

`A235911(A374007(n+1))`
-/

namespace A235909.P13520405820076349908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235911 (A374007 (n + 1)).toNat

end

end A235909.P13520405820076349908

/-! ## A235909.P18212012554975851430

`A235911(A000217(n+5)+6)`
-/

namespace A235909.P18212012554975851430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235911 (A000217 (n + 5) + 6).toNat

end

end A235909.P18212012554975851430

/-! ## A235909.P4998832668316451533

`A235911(A052905(n+3))`
-/

namespace A235909.P4998832668316451533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235911 (A052905 (n + 3)).toNat

end

end A235909.P4998832668316451533

/-! ## A235909.P1549304783532024472

`A235911(Δ[A264443(n+1)]-1)`
-/

namespace A235909.P1549304783532024472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235911 (f1 (n + 1) - f1 n - 1).toNat

end

end A235909.P1549304783532024472

/-!
# A235910: Number of (n+1)X(7+1) 0..2 arrays with the minimum plus the maximum unequal to the lower median plus the upper median in every 2X2 subblock.

The programs for A235910, there is no canonical definition to state claims against.
-/

/-! ## A235910.P5117260652048576618

`A235911(A374008(n+1))`
-/

namespace A235910.P5117260652048576618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235911 (A374008 (n + 1)).toNat

end

end A235910.P5117260652048576618

/-! ## A235910.P12398101508941513114

`A235911(eq[8, A131818(n+1)])`
-/

namespace A235910.P12398101508941513114
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235911 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A235910.P12398101508941513114

/-! ## A235910.P2297185899963440389

`A235911(eq[6, A193592(n)])`
-/

namespace A235910.P2297185899963440389
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235911 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A235910.P2297185899963440389

/-!
# A235915: a(1) = 1, a(n) = a(n-1) + (digsum(a(n-1)) mod 5) + 1, digsum = A007953.

The programs for A235915, there is no canonical definition to state claims against.
-/

/-! ## A235915.P1423541786786974340

`∑[A287556(n+1)+A000265(2^(n+1))]`
-/

namespace A235915.P1423541786786974340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287556 (n + 1) + A000265 (2 ^ (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A235915.P1423541786786974340

/-! ## A235915.P14222662290807488753

`∑[A287556(n+1)+A287532(A287541(n))]`
-/

namespace A235915.P14222662290807488753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287556 (n + 1) + A287532 (A287541 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A235915.P14222662290807488753

/-! ## A235915.P4266318962432097189

`∑[A287556(n+1)-A164660(A102488(n+1))]`
-/

namespace A235915.P4266318962432097189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287556 (n + 1) - A164660 (A102488 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A235915.P4266318962432097189

/-! ## A235915.P13274340055729905599

`∑[(A262457(∑[n]+1)+3)%5+1]`
-/

namespace A235915.P13274340055729905599
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A262457 (∑ j ∈ Finset.range (n + 1), f2 j + 1) + 3) 5 + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A235915.P13274340055729905599

/-! ## A235915.P5741832727266546021

`∑[∑[A117444(A115451(n))]]`
-/

namespace A235915.P5741832727266546021
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117444 (A115451 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A235915.P5741832727266546021

/-!
# A235917: a(n) = |{0 < k < n - 2: p = prime(k) + phi(n-k)/2, p^2 - 1 - prime(p) and (p^2 - 1)/2 - prime(p) are all prime}|, where phi(.) is Euler's totient function.

The programs for A235917, there is no canonical definition to state claims against.
-/

/-! ## A235917.P6690021826857278113

`A173920(C(A303040(n+1), 4))`
-/

namespace A235917.P6690021826857278113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173920 (Nat.choose (A303040 (n + 1)).toNat 4)

end

end A235917.P6690021826857278113

/-!
# A235918: 

The programs for A235918, there is no canonical definition to state claims against.
-/

/-! ## A235918.P16717339176841600284

`A055874(∑[A206544(n+1)])`
-/

namespace A235918.P16717339176841600284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206544 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055874 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A235918.P16717339176841600284

/-! ## A235918.P16218981346232762767

`A007978(∑[51^and(1, n)])-1`
-/

namespace A235918.P16218981346232762767
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  51 ^ Nat.land 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007978 (∑ j ∈ Finset.range (n + 1), f1 j) - 1

end

end A235918.P16218981346232762767

/-! ## A235918.P10921638924626727896

`A055874(A342768(n+1)/A008833(n+1))`
-/

namespace A235918.P10921638924626727896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055874 (SequenceMachineLib.roundAway ((A342768 (n + 1) : ℚ) / (A008833 (n + 1) : ℚ))).toNat

end

end A235918.P10921638924626727896

/-! ## A235918.P16995661243291076993

`A290338(A020639(n+1))%A053669(n+1)`
-/

namespace A235918.P16995661243291076993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A290338 (A020639 (n + 1)).toNat) (A053669 (n + 1))

end

end A235918.P16995661243291076993

/-!
# A235920: Primes p with prime(p) - p + 1 and (p^2 - 1)/4 - prime(p) both prime.

The programs for A235920, there is no canonical definition to state claims against.
-/

/-! ## A235920.P2552173719919941531

`A256864(n+4)-A256852(A256859(n+3))`
-/

namespace A235920.P2552173719919941531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256864 (n + 4) - A256852 (A256859 (n + 3)).toNat

end

end A235920.P2552173719919941531

/-! ## A235920.P2991878478066748284

`A256864(n+4)-A359511(A023701(n+1))`
-/

namespace A235920.P2991878478066748284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256864 (n + 4) - A359511 (A023701 (n + 1)).toNat

end

end A235920.P2991878478066748284

/-!
# A235921: Numbers n such that smallest number not dividing n^2 (A236454) is different from smallest prime not dividing n (A053669).

The programs for A235921, the canonical program `A235921.P17826723354672893133` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A235921 has offset 1).

The definition of A235921 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A235921.P17826723354672893133

`21*(20*n+10)`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A235921

/-- `21*(20*n+10)` -/
def P17826723354672893133.Spec : Prop :=
  ∀ n, (P17826723354672893133.a n : ℤ) = A235921 (n + 1)

theorem P17826723354672893133.correct : P17826723354672893133.Spec := by
  intro n
  simp only [A235921, Nat.add_sub_cancel]

end A235921

/-!
# A235922: Minimal k > 1 such that the base-k representation of the n-th palindrome in A002113, read in decimal, is also palindrome.

The programs for A235922, there is no canonical definition to state claims against.
-/

/-! ## A235922.P15296524094228253359

`A016026(floor(sqrt(A002113(n+1)²+1)))`
-/

namespace A235922.P15296524094228253359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016026 (Int.sqrt (A002113 (n + 1) ^ 2 + 1)).toNat

end

end A235922.P15296524094228253359

/-! ## A235922.P15697900595291021320

`A016026(gcd(C(n, n²), A002113(n+1)))`
-/

namespace A235922.P15697900595291021320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016026 (Int.gcd (Nat.choose n (n ^ 2) : ℤ) (A002113 (n + 1)))

end

end A235922.P15697900595291021320

/-! ## A235922.P10947464351706003074

`A016026(A002113(n+1)^ceil(sin(n)²))`
-/

namespace A235922.P10947464351706003074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016026 (SequenceMachineLib.roundAway ((A002113 (n + 1) : ℚ) ^ (⌈Real.sin (n : ℝ) ^ 2⌉ : ℤ))).toNat

end

end A235922.P10947464351706003074

/-! ## A235922.P13672022783309018642

`A016026(A000007(n)+record[A047813(n)])`
-/

namespace A235922.P13672022783309018642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047813 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016026 (A000007 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A235922.P13672022783309018642

/-! ## A235922.P7992765701156299064

`A016026(A000007(n)+record[A262087(n)])`
-/

namespace A235922.P7992765701156299064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262087 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016026 (A000007 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A235922.P7992765701156299064

/-! ## A235922.P6191708320827417124

`A016026(A000007(n)+record[A265525(n)])`
-/

namespace A235922.P6191708320827417124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265525 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016026 (A000007 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A235922.P6191708320827417124

/-! ## A235922.P10715489990228426151

`A016026(A000007(n)+record[A331472(n)])`
-/

namespace A235922.P10715489990228426151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331472 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016026 (A000007 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A235922.P10715489990228426151

/-! ## A235922.P12805052109121903544

`A016026(A002113(n+1)+A000007(n))`
-/

namespace A235922.P12805052109121903544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016026 (A002113 (n + 1) + A000007 n).toNat

end

end A235922.P12805052109121903544

/-!
# A235924: a(n) = |{0 < k < n: p = phi(k) + phi(n-k)/3 + 1, q = prime(p) - p + 1 and r = prime(q) - q + 1 are all prime}|, where phi(.) is Euler's totient function.

The programs for A235924, there is no canonical definition to state claims against.
-/

/-! ## A235924.P417152758692020694

`A236511(n+1)+A070109(A161772(n+2))`
-/

namespace A235924.P417152758692020694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236511 (n + 1) + A070109 (A161772 (n + 2)).toNat

end

end A235924.P417152758692020694

/-! ## A235924.P16052030970136462212

`A236511(A135381(n+1))`
-/

namespace A235924.P16052030970136462212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236511 (A135381 (n + 1)).toNat

end

end A235924.P16052030970136462212

/-! ## A235924.P16282571145294638685

`A236511(A135382(n+2))`
-/

namespace A235924.P16282571145294638685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236511 (A135382 (n + 2)).toNat

end

end A235924.P16282571145294638685

/-! ## A235924.P2594142324491016089

`and(A091736(n), A236511(n+1))`
-/

namespace A235924.P2594142324491016089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A091736 n) (A236511 (n + 1))

end

end A235924.P2594142324491016089

/-! ## A235924.P636257793365875616

`and(A095178(n), A236511(n+1))`
-/

namespace A235924.P636257793365875616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A095178 n) (A236511 (n + 1))

end

end A235924.P636257793365875616

/-!
# A235926: Number of (n+1) X (1+1) 0..3 arrays with the minimum plus the maximum unequal to the lower median plus the upper median in every 2 X 2 subblock.

The programs for A235926, there is no canonical definition to state claims against.
-/

/-! ## A235926.P9449722231296924376

`A235932(∑[n]+1)`
-/

namespace A235926.P9449722231296924376
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235932 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A235926.P9449722231296924376

/-! ## A235926.P1128517440235234633

`record[A010054(n)*A235932(n+1)]`
-/

namespace A235926.P1128517440235234633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A235932 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235926.P1128517440235234633

/-! ## A235926.P11144867851574885512

`record[A103451(n)*A235932(n+1)]`
-/

namespace A235926.P11144867851574885512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103451 n * A235932 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235926.P11144867851574885512

/-! ## A235926.P3089734277073637326

`record[A235932(n+1)/A022167(n)]`
-/

namespace A235926.P3089734277073637326
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A235932 (n + 1) : ℚ) / (A022167 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235926.P3089734277073637326

/-! ## A235926.P8136507571425195746

`record[root(A235932(n+1), A007318(n))]`
-/

namespace A235926.P8136507571425195746
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A235932 (n + 1) : ℝ) ^ (1 / (A007318 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235926.P8136507571425195746

/-!
# A235927: Number of (n+1) X (2+1) 0..3 arrays with the minimum plus the maximum unequal to the lower median plus the upper median in every 2 X 2 subblock.

The programs for A235927, there is no canonical definition to state claims against.
-/

/-! ## A235927.P5341623863552138427

`A235932(∑[n+1]+2)`
-/

namespace A235927.P5341623863552138427
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235932 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A235927.P5341623863552138427

/-! ## A235927.P11658821249743582666

`record[A010054(n)*A235932(n+2)]`
-/

namespace A235927.P11658821249743582666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A235932 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235927.P11658821249743582666

/-! ## A235927.P3938279225943702063

`record[root(A235932(n+2), A059268(n))]`
-/

namespace A235927.P3938279225943702063
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A235932 (n + 2) : ℝ) ^ (1 / (A059268 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235927.P3938279225943702063

/-! ## A235927.P9096423466608055250

`record[root(A235932(n+2), A002260(n+1))]`
-/

namespace A235927.P9096423466608055250
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A235932 (n + 2) : ℝ) ^ (1 / (A002260 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235927.P9096423466608055250

/-! ## A235927.P8013963975575675166

`record[A235932(Δ[A003453(n+5)])]`
-/

namespace A235927.P8013963975575675166
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235932 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235927.P8013963975575675166

/-!
# A235928: Number of (n+1)X(3+1) 0..3 arrays with the minimum plus the maximum unequal to the lower median plus the upper median in every 2X2 subblock.

The programs for A235928, there is no canonical definition to state claims against.
-/

/-! ## A235928.P13034586709107999719

`A235932(∑[n+2]+4)`
-/

namespace A235928.P13034586709107999719
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235932 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A235928.P13034586709107999719

/-! ## A235928.P16213664207186267857

`lcm(2, A235932(A167614(n+1)))`
-/

namespace A235928.P16213664207186267857
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A235932 (A167614 (n + 1)).toNat)

end

end A235928.P16213664207186267857

/-! ## A235928.P15625310957829636994

`A235932(A167614(n+1))+A069816(n)`
-/

namespace A235928.P15625310957829636994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235932 (A167614 (n + 1)).toNat + A069816 n

end

end A235928.P15625310957829636994

/-! ## A235928.P12916327287784509650

`A235932(A167614(n+1))+A185036(n)`
-/

namespace A235928.P12916327287784509650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235932 (A167614 (n + 1)).toNat + A185036 n

end

end A235928.P12916327287784509650

/-! ## A235928.P1332584949808806666

`A235932(A167614(n+1))%A235929(n+1)`
-/

namespace A235928.P1332584949808806666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A235932 (A167614 (n + 1)).toNat) (A235929 (n + 1))

end

end A235928.P1332584949808806666

/-!
# A235929: Number of (n+1)X(4+1) 0..3 arrays with the minimum plus the maximum unequal to the lower median plus the upper median in every 2X2 subblock.

The programs for A235929, there is no canonical definition to state claims against.
-/

/-! ## A235929.P15704815807593694540

`A235932(A141214(n)+7)`
-/

namespace A235929.P15704815807593694540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235932 (A141214 n + 7).toNat

end

end A235929.P15704815807593694540

/-! ## A235929.P5096106591271783619

`A235932(eq[3, A193592(n)])`
-/

namespace A235929.P5096106591271783619
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235932 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A235929.P5096106591271783619

/-! ## A235929.P2576827376458945431

`A235932(Δ[A167614(n+1)+A008778(n)])`
-/

namespace A235929.P2576827376458945431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167614 (n + 1) + A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235932 (f1 (n + 1) - f1 n).toNat

end

end A235929.P2576827376458945431

/-!
# A235930: 

The programs for A235930, there is no canonical definition to state claims against.
-/

/-! ## A235930.P3119091961074406868

`A235932(Δ[A264443(n)])`
-/

namespace A235930.P3119091961074406868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235932 (f1 (n + 1) - f1 n).toNat

end

end A235930.P3119091961074406868

/-! ## A235930.P5609814974489059878

`A235932(A056115(n)+11)`
-/

namespace A235930.P5609814974489059878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235932 (A056115 n + 11).toNat

end

end A235930.P5609814974489059878

/-! ## A235930.P5490648649398468129

`A235932(eq[2, A092921(n)])`
-/

namespace A235930.P5490648649398468129
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092921 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235932 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A235930.P5490648649398468129

/-! ## A235930.P18412755295998301847

`A235932(eq[4, A193592(n)])`
-/

namespace A235930.P18412755295998301847
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235932 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A235930.P18412755295998301847

/-!
# A235931: 

The programs for A235931, there is no canonical definition to state claims against.
-/

/-! ## A235931.P13719150641350236194

`A235932(A166136(n+4))`
-/

namespace A235931.P13719150641350236194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235932 (A166136 (n + 4)).toNat

end

end A235931.P13719150641350236194

/-!
# A235933: Numbers coprime to 35.

The programs for A235933, the canonical program `A235933.P9434459612068932756` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A235933 has offset 1).

The definition of A235933 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A235933.P9434459612068932756

`comp[∑[xor(1, 6-a(n-1))]]` with `a(0)=0`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A235933

/-- `comp[∑[xor(1, 6-a(n-1))]]` -/
def P9434459612068932756.Spec : Prop :=
  ∀ n, (P9434459612068932756.a n : ℤ) = A235933 (n + 1)

theorem P9434459612068932756.correct : P9434459612068932756.Spec := by
  intro n
  simp only [A235933, Nat.add_sub_cancel]

end A235933

/-! ## A235933.P12884709407760033676

`comp[3*n-A074305(n)]`
-/

namespace A235933.P12884709407760033676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n : ℤ) - A074305 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A235933.P12884709407760033676

namespace A235933

/-- `comp[3*n-A074305(n)]` -/
def P12884709407760033676.Spec : Prop :=
  ∀ n, (P12884709407760033676.a n : ℤ) = A235933 (n + 1)

end A235933

/-! ## A235933.P14552285231399044796

`comp[A047382(n+1)-A093178(n)]+1`
-/

namespace A235933.P14552285231399044796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047382 (n + 1) - A093178 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A235933.P14552285231399044796

namespace A235933

/-- `comp[A047382(n+1)-A093178(n)]+1` -/
def P14552285231399044796.Spec : Prop :=
  ∀ n, (P14552285231399044796.a n : ℤ) = A235933 (n + 1)

end A235933

/-! ## A235933.P1732269469358352222

`filter[A047304(n+1), A011558(#)]`
-/

namespace A235933.P1732269469358352222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047304 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A011558 (f1 j).toNat = 1) n)

end

end A235933.P1732269469358352222

namespace A235933

/-- `filter[A047304(n+1), A011558(#)]` -/
def P1732269469358352222.Spec : Prop :=
  ∀ n, P1732269469358352222.a n = A235933 (n + 1)

end A235933

/-! ## A235933.P2208737897956802114

`filter[A047304(n+1), A358847(#)]`
-/

namespace A235933.P2208737897956802114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047304 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358847 (f1 j).toNat = 1) n)

end

end A235933.P2208737897956802114

namespace A235933

/-- `filter[A047304(n+1), A358847(#)]` -/
def P2208737897956802114.Spec : Prop :=
  ∀ n, P2208737897956802114.a n = A235933 (n + 1)

end A235933

/-! ## A235933.P17238681351669150712

`∩[A047201(n+1), A047304(n+1)]`
-/

namespace A235933.P17238681351669150712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047201 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047304 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A235933.P17238681351669150712

namespace A235933

/-- `∩[A047201(n+1), A047304(n+1)]` -/
def P17238681351669150712.Spec : Prop :=
  ∀ n, (P17238681351669150712.a n : ℤ) = A235933 (n + 1)

end A235933

/-! ## A235933.P14682197327619126974

`record[gcd(n, A126904(n))]`
-/

namespace A235933.P14682197327619126974
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A126904 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235933.P14682197327619126974

namespace A235933

/-- `record[gcd(n, A126904(n))]` -/
def P14682197327619126974.Spec : Prop :=
  ∀ n, (P14682197327619126974.a n : ℤ) = A235933 (n + 1)

end A235933

/-! ## A235933.P16696422777721377642

`record[A060791(comp[7*n])]`
-/

namespace A235933.P16696422777721377642
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 * n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060791 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235933.P16696422777721377642

namespace A235933

/-- `record[A060791(comp[7*n])]` -/
def P16696422777721377642.Spec : Prop :=
  ∀ n, P16696422777721377642.a n = A235933 (n + 1)

end A235933

/-! ## A235933.P10811177739708453342

`record[gcd(n+1, ∑[3*A166810(n+2)])]`
-/

namespace A235933.P10811177739708453342
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A166810 (n + 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235933.P10811177739708453342

namespace A235933

/-- `record[gcd(n+1, ∑[3*A166810(n+2)])]` -/
def P10811177739708453342.Spec : Prop :=
  ∀ n, (P10811177739708453342.a n : ℤ) = A235933 (n + 1)

end A235933

/-! ## A235933.P7622949266060467676

`filter[A091703(n), A109720(#)]`
-/

namespace A235933.P7622949266060467676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091703 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A109720 (f1 j).toNat = 1) n)

end

end A235933.P7622949266060467676

namespace A235933

/-- `filter[A091703(n), A109720(#)]` -/
def P7622949266060467676.Spec : Prop :=
  ∀ n, P7622949266060467676.a n = A235933 (n + 1)

end A235933

/-! ## A235933.P18445712491415151418

`record[A106608(A060791(n+1))]`
-/

namespace A235933.P18445712491415151418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106608 (A060791 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235933.P18445712491415151418

namespace A235933

/-- `record[A106608(A060791(n+1))]` -/
def P18445712491415151418.Spec : Prop :=
  ∀ n, P18445712491415151418.a n = A235933 (n + 1)

end A235933

/-! ## A235933.P3012055256031144253

`filter[A047201(n+1), A109720(#)]`
-/

namespace A235933.P3012055256031144253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047201 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A109720 (f1 j).toNat = 1) n)

end

end A235933.P3012055256031144253

namespace A235933

/-- `filter[A047201(n+1), A109720(#)]` -/
def P3012055256031144253.Spec : Prop :=
  ∀ n, P3012055256031144253.a n = A235933 (n + 1)

end A235933

/-! ## A235933.P12180881662085300199

`eq[n, A091703(A082784(n)+n)]`
-/

namespace A235933.P12180881662085300199
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091703 (A082784 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A235933.P12180881662085300199

namespace A235933

/-- `eq[n, A091703(A082784(n)+n)]` -/
def P12180881662085300199.Spec : Prop :=
  ∀ n, (P12180881662085300199.a n : ℤ) = A235933 (n + 1)

end A235933

/-! ## A235933.P6426560963991844226

`eq[n-A082784(n), A091703(n)]`
-/

namespace A235933.P6426560963991844226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A082784 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091703 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A235933.P6426560963991844226

namespace A235933

/-- `eq[n-A082784(n), A091703(n)]` -/
def P6426560963991844226.Spec : Prop :=
  ∀ n, (P6426560963991844226.a n : ℤ) = A235933 (n + 1)

end A235933

/-! ## A235933.P3949987682493831568

`A060791(eq[A060791(n+1), A106608(n+1)]+1)`
-/

namespace A235933.P3949987682493831568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060791 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106608 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060791 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A235933.P3949987682493831568

namespace A235933

/-- `A060791(eq[A060791(n+1), A106608(n+1)]+1)` -/
def P3949987682493831568.Spec : Prop :=
  ∀ n, P3949987682493831568.a n = A235933 (n + 1)

end A235933

/-! ## A235933.P2907517012120452293

`record[A106615(A060791(2*(n+1)))]`
-/

namespace A235933.P2907517012120452293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106615 (A060791 (2 * (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235933.P2907517012120452293

namespace A235933

/-- `record[A106615(A060791(2*(n+1)))]` -/
def P2907517012120452293.Spec : Prop :=
  ∀ n, P2907517012120452293.a n = A235933 (n + 1)

end A235933

/-! ## A235933.P12549819432994995757

`A008619(lt[10, A020639(9*(3*n+2)+1)]+1)`
-/

namespace A235933.P12549819432994995757
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (9 * (3 * n + 2) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A235933.P12549819432994995757

namespace A235933

/-- `A008619(lt[10, A020639(9*(3*n+2)+1)]+1)` -/
def P12549819432994995757.Spec : Prop :=
  ∀ n, P12549819432994995757.a n = A235933 (n + 1)

end A235933

/-! ## A235933.P12490965056619986220

`lt[3, A214062(6*n+9)]`
-/

namespace A235933.P12490965056619986220
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214062 (6 * n + 9)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A235933.P12490965056619986220

namespace A235933

/-- `lt[3, A214062(6*n+9)]` -/
def P12490965056619986220.Spec : Prop :=
  ∀ n, (P12490965056619986220.a n : ℤ) = A235933 (n + 1)

end A235933

/-!
# A235934: Primes p with f(p), f(f(p)) and f(f(f(p))) all prime, where f(n) = prime(n) - n + 1.

The programs for A235934, there is no canonical definition to state claims against.
-/

/-! ## A235934.P18298750413692209208

`A000040(A056537(∏[or(1, 2^n)-n]))`
-/

namespace A235934.P18298750413692209208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 1 (2 ^ n) : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A056537 (∏ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A235934.P18298750413692209208

/-!
# A235937: Number of circular permutations with exactly one specified increasing or decreasing modular run (3-sequence), with clockwise and counterclockwise traversals not counted as distinct.

The programs for A235937, there is no canonical definition to state claims against.
-/

/-! ## A235937.P4762563993227485037

`A235938(n+1)/2`
-/

namespace A235937.P4762563993227485037
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A235938 (n + 1) : ℚ) / 2

end

end A235937.P4762563993227485037

/-! ## A235937.P11952512063035900384

`A235939(n+1)/(n+1)`
-/

namespace A235937.P11952512063035900384
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A235939 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A235937.P11952512063035900384

/-! ## A235937.P4223681704005851203

`A235941(n+1)/(n+1)²`
-/

namespace A235937.P4223681704005851203
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A235941 (n + 1) : ℚ) / ((n + 1) ^ 2 : ℚ)

end

end A235937.P4223681704005851203

/-! ## A235937.P3738205170856911917

`A235940(n+1)/(2*(n+1))`
-/

namespace A235937.P3738205170856911917
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A235940 (n + 1) : ℚ) / (2 * (n + 1) : ℚ)

end

end A235937.P3738205170856911917

/-! ## A235937.P1993881863066068532

`A235942(n+1)/(2*(n+1)²)`
-/

namespace A235937.P1993881863066068532
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A235942 (n + 1) : ℚ) / (2 * (n + 1) ^ 2 : ℚ)

end

end A235937.P1993881863066068532

/-!
# A235938: Number of circular permutations with exactly one specified increasing or decreasing modular run (3-sequence), with clockwise and counterclockwise traversals counted as distinct.

The programs for A235938, there is no canonical definition to state claims against.
-/

/-! ## A235938.P9455652851631434891

`2*A235937(n+1)`
-/

namespace A235938.P9455652851631434891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A235937 (n + 1)

end

end A235938.P9455652851631434891

/-! ## A235938.P1023148501523075149

`A235940(n+1)/(n+1)`
-/

namespace A235938.P1023148501523075149
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A235940 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A235938.P1023148501523075149

/-! ## A235938.P13862994589278547672

`A235942(n+1)/(n+1)²`
-/

namespace A235938.P13862994589278547672
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A235942 (n + 1) : ℚ) / ((n + 1) ^ 2 : ℚ)

end

end A235938.P13862994589278547672

/-! ## A235938.P8306579354760685109

`2/(n+1)*A235939(n+1)`
-/

namespace A235938.P8306579354760685109
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (n + 1 : ℚ) * (A235939 (n + 1) : ℚ)

end

end A235938.P8306579354760685109

/-! ## A235938.P17605584765645010929

`2*A235939(n+1)/A348553(n)`
-/

namespace A235938.P17605584765645010929
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((A235939 (n + 1) : ℚ) / (A348553 n : ℚ))

end

end A235938.P17605584765645010929

/-!
# A235939: Number of circular permutations with exactly one (unspecified) increasing or decreasing modular 3-sequence, with clockwise and counterclockwise traversals not counted as distinct.

The programs for A235939, there is no canonical definition to state claims against.
-/

/-! ## A235939.P492566584406248439

`(n+1)*A235937(n+1)`
-/

namespace A235939.P492566584406248439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A235937 (n + 1)

end

end A235939.P492566584406248439

/-! ## A235939.P9962920878071812336

`A235940(n+1)/2`
-/

namespace A235939.P9962920878071812336
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A235940 (n + 1) : ℚ) / 2

end

end A235939.P9962920878071812336

/-! ## A235939.P10983063568560376294

`A235941(n+1)/(n+1)`
-/

namespace A235939.P10983063568560376294
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A235941 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A235939.P10983063568560376294

/-! ## A235939.P5637935472727140223

`(n+1)/2*A235938(n+1)`
-/

namespace A235939.P5637935472727140223
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 2 * (A235938 (n + 1) : ℚ)

end

end A235939.P5637935472727140223

/-! ## A235939.P10387464670829745744

`A235942(n+1)/(2*(n+1))`
-/

namespace A235939.P10387464670829745744
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A235942 (n + 1) : ℚ) / (2 * (n + 1) : ℚ)

end

end A235939.P10387464670829745744

/-!
# A235940: Number of circular permutations with exactly one (unspecified) increasing or decreasing modular 3-sequence, with clockwise and counterclockwise traversals counted as distinct.

The programs for A235940, there is no canonical definition to state claims against.
-/

/-! ## A235940.P17866958143332551735

`2*A235939(n+1)`
-/

namespace A235940.P17866958143332551735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A235939 (n + 1)

end

end A235940.P17866958143332551735

/-! ## A235940.P2497225572156441959

`(n+1)*A235938(n+1)`
-/

namespace A235940.P2497225572156441959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A235938 (n + 1)

end

end A235940.P2497225572156441959

/-! ## A235940.P10066239887051585280

`2*(n+1)*A235937(n+1)`
-/

namespace A235940.P10066239887051585280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n + 1 : ℤ) * A235937 (n + 1))

end

end A235940.P10066239887051585280

/-! ## A235940.P13561137705741572878

`A235942(n+1)/(n+1)`
-/

namespace A235940.P13561137705741572878
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A235942 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A235940.P13561137705741572878

/-! ## A235940.P1685247863463404835

`2/(n+1)*A235941(n+1)`
-/

namespace A235940.P1685247863463404835
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (n + 1 : ℚ) * (A235941 (n + 1) : ℚ)

end

end A235940.P1685247863463404835

/-!
# A235941: Positions (cyclic permutations) of circular permutations with exactly one (unspecified) increasing or decreasing modular 3-sequence, with clockwise and counterclockwise traversals not counted as distinct.

The programs for A235941, there is no canonical definition to state claims against.
-/

/-! ## A235941.P11900349197592440408

`(n+1)*A235939(n+1)`
-/

namespace A235941.P11900349197592440408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A235939 (n + 1)

end

end A235941.P11900349197592440408

/-! ## A235941.P11104809376982252892

`(n+1)²*A235937(n+1)`
-/

namespace A235941.P11104809376982252892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) * A235937 (n + 1)

end

end A235941.P11104809376982252892

/-! ## A235941.P588928125004194985

`A235942(n+1)/2`
-/

namespace A235941.P588928125004194985
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A235942 (n + 1) : ℚ) / 2

end

end A235941.P588928125004194985

/-! ## A235941.P8319256645566414582

`(n+1)/2*A235940(n+1)`
-/

namespace A235941.P8319256645566414582
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 2 * (A235940 (n + 1) : ℚ)

end

end A235941.P8319256645566414582

/-! ## A235941.P15924447495860106187

`A235939(n+1)*A348553(n)`
-/

namespace A235941.P15924447495860106187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235939 (n + 1) * A348553 n

end

end A235941.P15924447495860106187

/-!
# A235942: Number of positions (cyclic permutations) of circular permutations with exactly one (unspecified) increasing or decreasing modular 3-sequence, with clockwise and counterclockwise traversals counted as distinct.

The programs for A235942, there is no canonical definition to state claims against.
-/

/-! ## A235942.P10983757749286236294

`2*A235941(n+1)`
-/

namespace A235942.P10983757749286236294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A235941 (n + 1)

end

end A235942.P10983757749286236294

/-! ## A235942.P4240934192673797842

`(n+1)*A235940(n+1)`
-/

namespace A235942.P4240934192673797842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A235940 (n + 1)

end

end A235942.P4240934192673797842

/-! ## A235942.P10880390321896945309

`(n+1)²*A235938(n+1)`
-/

namespace A235942.P10880390321896945309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) * A235938 (n + 1)

end

end A235942.P10880390321896945309

/-! ## A235942.P12831521309204918682

`2*(n+1)*A235939(n+1)`
-/

namespace A235942.P12831521309204918682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n + 1 : ℤ) * A235939 (n + 1))

end

end A235942.P12831521309204918682

/-! ## A235942.P11703785013848533951

`2*(n+1)²*A235937(n+1)`
-/

namespace A235942.P11703785013848533951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) ^ 2 : ℤ) * A235937 (n + 1)

end

end A235942.P11703785013848533951

/-!
# A235944: Digital roots of squares of Lucas numbers.

The programs for A235944, the canonical program `A235944.P3001479549671488632` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A235944 has offset 0).

The definition of A235944 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A235944.P3001479549671488632

`dr(A030133(n)²)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A235944

/-- `dr(A030133(n)²)` -/
def P3001479549671488632.Spec : Prop :=
  ∀ n, (P3001479549671488632.a n : ℤ) = A235944 n

theorem P3001479549671488632.correct : P3001479549671488632.Spec := by
  intro n
  simp only [A235944]

end A235944

/-!
# A235945: Number of partitions of n containing at least one prime.

The programs for A235945, there is no canonical definition to state claims against.
-/

/-! ## A235945.P13002195716249901339

`A000041(n)-A002095(n)`
-/

namespace A235945.P13002195716249901339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A002095 n

end

end A235945.P13002195716249901339

/-! ## A235945.P3117307908518072396

`∑[A002865(n)]-A002095(n)`
-/

namespace A235945.P3117307908518072396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A002095 n

end

end A235945.P3117307908518072396

/-! ## A235945.P4931806771266166282

`A000041(n)-∑[A023895(n)]`
-/

namespace A235945.P4931806771266166282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023895 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A235945.P4931806771266166282

/-! ## A235945.P3708465951845872277

`∑[A002865(n)-A023895(n)]`
-/

namespace A235945.P3708465951845872277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n - A023895 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A235945.P3708465951845872277

/-! ## A235945.P14995286920185860388

`A000065(n)+1-A002095(n)`
-/

namespace A235945.P14995286920185860388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000065 n + (1 - A002095 n)

end

end A235945.P14995286920185860388

/-! ## A235945.P1138193173352057237

`A155515(n)+A355306(n)-A002095(n)`
-/

namespace A235945.P1138193173352057237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155515 n + (A355306 n - A002095 n)

end

end A235945.P1138193173352057237

/-!
# A235946: Number of (n+1) X (n+1) 0..2 arrays colored with the upper median value of each 2 X 2 subblock.

The programs for A235946, there is no canonical definition to state claims against.
-/

/-! ## A235946.P7683392263039836513

`A235954((n+1)²+n²)`
-/

namespace A235946.P7683392263039836513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235954 ((n + 1) ^ 2 + n ^ 2)

end

end A235946.P7683392263039836513

/-! ## A235946.P2104113849786878889

`record[A003982(n)*A235954(n+1)]`
-/

namespace A235946.P2104113849786878889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A235954 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235946.P2104113849786878889

/-! ## A235946.P12644454063508504257

`record[gcd(A141692(n), A235954(n+1))]`
-/

namespace A235946.P12644454063508504257
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A141692 n) (A235954 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235946.P12644454063508504257

/-! ## A235946.P1524126510751581575

`A007318(∑[n+1])*A235954(A001844(n))`
-/

namespace A235946.P1524126510751581575
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A235954 (A001844 n).toNat

end

end A235946.P1524126510751581575

/-! ## A235946.P13753667228357448513

`A235954(A001844(n))^A007318(∑[n+2])`
-/

namespace A235946.P13753667228357448513
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A235954 (A001844 n).toNat : ℚ) ^ (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ)

end

end A235946.P13753667228357448513

/-!
# A235947: Number of (n+1) X (1+1) 0..2 arrays colored with the upper median value of each 2 X 2 subblock.

The programs for A235947, there is no canonical definition to state claims against.
-/

/-! ## A235947.P15605315904558557409

`A235954(∑[n]+1)`
-/

namespace A235947.P15605315904558557409
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235954 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A235947.P15605315904558557409

/-! ## A235947.P7814732643655224024

`record[A235954(n+1)]`
-/

namespace A235947.P7814732643655224024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235954 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235947.P7814732643655224024

/-! ## A235947.P5213761365592506512

`lcm(A096825(n+1), A235954(A000124(n)))`
-/

namespace A235947.P5213761365592506512
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A096825 (n + 1)) (A235954 (A000124 n).toNat)

end

end A235947.P5213761365592506512

/-! ## A235947.P10575708420188048124

`A001065(A000040(n+1))*A235954(A000124(n))`
-/

namespace A235947.P10575708420188048124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (A000040 (n + 1)).toNat * A235954 (A000124 n).toNat

end

end A235947.P10575708420188048124

/-! ## A235947.P8641498635334010315

`A001065(A006530(n+2))*A235954(A000124(n))`
-/

namespace A235947.P8641498635334010315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (A006530 (n + 2)).toNat * A235954 (A000124 n).toNat

end

end A235947.P8641498635334010315

/-! ## A235947.P6781341781772655183

`A235954(A000124(n))/A096825(A096825(n+1)²)`
-/

namespace A235947.P6781341781772655183
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A235954 (A000124 n).toNat : ℚ) / (A096825 (A096825 (n + 1) ^ 2).toNat : ℚ)

end

end A235947.P6781341781772655183

/-!
# A235948: Number of (n+1) X (2+1) 0..2 arrays colored with the upper median value of each 2 X 2 subblock.

The programs for A235948, there is no canonical definition to state claims against.
-/

/-! ## A235948.P10668721551744273320

`A235954(∑[n+1]+2)`
-/

namespace A235948.P10668721551744273320
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235954 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A235948.P10668721551744273320

/-! ## A235948.P6237127554064538629

`lcm(2, A235954(A133263(n+1)))`
-/

namespace A235948.P6237127554064538629
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A235954 (A133263 (n + 1)).toNat)

end

end A235948.P6237127554064538629

/-! ## A235948.P2503044417583486024

`A235954(A133263(n+1))+A000038(n+1)`
-/

namespace A235948.P2503044417583486024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235954 (A133263 (n + 1)).toNat + A000038 (n + 1)

end

end A235948.P2503044417583486024

/-! ## A235948.P2640820283033915027

`A033999(2*n)*A235954(A133263(n+1))`
-/

namespace A235948.P2640820283033915027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (2 * n) * A235954 (A133263 (n + 1)).toNat

end

end A235948.P2640820283033915027

/-! ## A235948.P11065704065123996074

`A235954(A133263(n+1))%(3-A271749(n))`
-/

namespace A235948.P11065704065123996074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A235954 (A133263 (n + 1)).toNat) (3 - A271749 (n + 10))

end

end A235948.P11065704065123996074

/-! ## A235948.P2641798995621692888

`A235954(A133263(n+1))+A008683(xor(3, n)+n+1)`
-/

namespace A235948.P2641798995621692888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235954 (A133263 (n + 1)).toNat + A008683 (Nat.xor 3 n + (n + 1))

end

end A235948.P2641798995621692888

/-! ## A235948.P8951717343735403968

`A235954(A133263(n+1))+A008683(A008574(n+1))`
-/

namespace A235948.P8951717343735403968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235954 (A133263 (n + 1)).toNat + A008683 (A008574 (n + 1)).toNat

end

end A235948.P8951717343735403968

/-! ## A235948.P13380517888504263432

`A235954(A000096(n+1))+A048298(3*n)`
-/

namespace A235948.P13380517888504263432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235954 (A000096 (n + 1)).toNat + A048298 (3 * n)

end

end A235948.P13380517888504263432

/-!
# A235949: Number of (n+1) X (3+1) 0..2 arrays colored with the upper median value of each 2 X 2 subblock.

The programs for A235949, there is no canonical definition to state claims against.
-/

/-! ## A235949.P9086094641171576718

`record[A235954(∑[n-2]+6)]`
-/

namespace A235949.P9086094641171576718
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235954 (∑ j ∈ Finset.range (n + 1), f2 j + 6).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235949.P9086094641171576718

/-! ## A235949.P10628007008042189649

`A235954(A167614(n+1))`
-/

namespace A235949.P10628007008042189649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235954 (A167614 (n + 1)).toNat

end

end A235949.P10628007008042189649

/-! ## A235949.P3515489512042482023

`A235954(A046691(n)+7)`
-/

namespace A235949.P3515489512042482023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235954 (A046691 n + 7).toNat

end

end A235949.P3515489512042482023

/-! ## A235949.P5675593398651675087

`A235954(A167499(n)+n)`
-/

namespace A235949.P5675593398651675087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235954 (A167499 n + (n : ℤ)).toNat

end

end A235949.P5675593398651675087

/-! ## A235949.P6783874895794589457

`A235954(A034856(n+1)+5)`
-/

namespace A235949.P6783874895794589457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235954 (A034856 (n + 1) + 5).toNat

end

end A235949.P6783874895794589457

/-! ## A235949.P17492152990338342794

`A235954(Δ[A034857(n+1)-n²])`
-/

namespace A235949.P17492152990338342794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034857 (n + 1) - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235954 (f1 (n + 1) - f1 n).toNat

end

end A235949.P17492152990338342794

/-! ## A235949.P14681724184978059963

`A235954(∑[n+3]+1)`
-/

namespace A235949.P14681724184978059963
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235954 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A235949.P14681724184978059963

/-!
# A235950: Number of (n+1) X (4+1) 0..2 arrays colored with the upper median value of each 2 X 2 subblock.

The programs for A235950, there is no canonical definition to state claims against.
-/

/-! ## A235950.P16334654339593459122

`A235954(∑[n+3]+7)`
-/

namespace A235950.P16334654339593459122
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235954 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A235950.P16334654339593459122

/-! ## A235950.P11595266936595832127

`abs(A235954(Δ[A005586(n)]+5)-1)+1`
-/

namespace A235950.P11595266936595832127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005586 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A235954 (f1 (n + 1) - f1 n + 5).toNat - 1| + 1

end

end A235950.P11595266936595832127

/-! ## A235950.P2272440369359779153

`A235954(Δ[A005586(n)]+5)%A235952(n+1)`
-/

namespace A235950.P2272440369359779153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005586 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A235954 (f1 (n + 1) - f1 n + 5).toNat) (A235952 (n + 1))

end

end A235950.P2272440369359779153

/-! ## A235950.P5267074712586757720

`A008288(n)%2*A235954(Δ[A005586(n)]+5)`
-/

namespace A235950.P5267074712586757720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005586 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008288 n) 2 * A235954 (f1 (n + 1) - f1 n + 5).toNat

end

end A235950.P5267074712586757720

/-! ## A235950.P10449008706425296139

`A235954(A167614(n+2)+1)%A235952(n+1)`
-/

namespace A235950.P10449008706425296139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A235954 (A167614 (n + 2) + 1).toNat) (A235952 (n + 1))

end

end A235950.P10449008706425296139

/-! ## A235950.P10096929102957028771

`A235954(Δ[A005586(n)]+5)/A003653(n+1)²%3`
-/

namespace A235950.P10096929102957028771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005586 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A235954 (f1 (n + 1) - f1 n + 5).toNat : ℚ) / (Int.tmod (A003653 (n + 1) ^ 2) 3 : ℚ)

end

end A235950.P10096929102957028771

/-! ## A235950.P18306149527919635663

`lcm(2, A235954(A027379(n+2)))`
-/

namespace A235950.P18306149527919635663
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A235954 (A027379 (n + 2)).toNat)

end

end A235950.P18306149527919635663

/-! ## A235950.P17662513200379605697

`A158388(A103486(n))*A235954(A055998(n+2))`
-/

namespace A235950.P17662513200379605697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158388 (A103486 n).toNat * A235954 (A055998 (n + 2)).toNat

end

end A235950.P17662513200379605697

/-!
# A235951: Number of (n+1) X (5+1) 0..2 arrays colored with the upper median value of each 2 X 2 subblock.

The programs for A235951, there is no canonical definition to state claims against.
-/

/-! ## A235951.P10480846860885133371

`A235954(A167499(n+3))`
-/

namespace A235951.P10480846860885133371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235954 (A167499 (n + 3)).toNat

end

end A235951.P10480846860885133371

/-! ## A235951.P8575611093363140827

`A235954(A056000(n)+15)`
-/

namespace A235951.P8575611093363140827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235954 (A056000 n + 15).toNat

end

end A235951.P8575611093363140827

/-! ## A235951.P2206233703350934384

`A235954(A166136(n+3)-1)+A000038(n+1)`
-/

namespace A235951.P2206233703350934384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235954 (A166136 (n + 3) - 1).toNat + A000038 (n + 1)

end

end A235951.P2206233703350934384

/-! ## A235951.P17985565182866718542

`A235954(A166136(n+3)-1)%A235952(n+1)`
-/

namespace A235951.P17985565182866718542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A235954 (A166136 (n + 3) - 1).toNat) (A235952 (n + 1))

end

end A235951.P17985565182866718542

/-! ## A235951.P8561185461309687061

`A235954(A055998(n+2)+8)%A235952(n+1)`
-/

namespace A235951.P8561185461309687061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A235954 (A055998 (n + 2) + 8).toNat) (A235952 (n + 1))

end

end A235951.P8561185461309687061

/-! ## A235951.P5970922815866919622

`A235954(∑[n+5]+6)`
-/

namespace A235951.P5970922815866919622
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235954 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A235951.P5970922815866919622

/-!
# A235952: Number of (n+1) X (6+1) 0..2 arrays colored with the upper median value of each 2 X 2 subblock.

The programs for A235952, there is no canonical definition to state claims against.
-/

/-! ## A235952.P6695625552831291521

`A235954(A056115(n)+21)`
-/

namespace A235952.P6695625552831291521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235954 (A056115 n + 21).toNat

end

end A235952.P6695625552831291521

/-! ## A235952.P15521471893699894466

`A235954(A000217(n+5)+6)`
-/

namespace A235952.P15521471893699894466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235954 (A000217 (n + 5) + 6).toNat

end

end A235952.P15521471893699894466

/-! ## A235952.P18291306852417041769

`lcm(2, A235954(A055999(n)+A004280(n+12)))`
-/

namespace A235952.P18291306852417041769
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A235954 (A055999 n + A004280 (n + 12)).toNat)

end

end A235952.P18291306852417041769

/-! ## A235952.P11968322779289560833

`A235954((n+4)²-∑[n+1]+1)`
-/

namespace A235952.P11968322779289560833
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235954 (((n + 4) ^ 2 : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + 1).toNat

end

end A235952.P11968322779289560833

/-! ## A235952.P10032571803356162725

`lcm(2, A235954(A052905(n+3)))`
-/

namespace A235952.P10032571803356162725
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A235954 (A052905 (n + 3)).toNat)

end

end A235952.P10032571803356162725

/-! ## A235952.P12118425019124166029

`A235954(A052905(n+3))+A048298(3*n)`
-/

namespace A235952.P12118425019124166029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235954 (A052905 (n + 3)).toNat + A048298 (3 * n)

end

end A235952.P12118425019124166029

/-! ## A235952.P16074667568048459031

`A235954(A052905(n+3))+A117054(A014973(2*(n+1)))`
-/

namespace A235952.P16074667568048459031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235954 (A052905 (n + 3)).toNat + A117054 (A014973 (2 * (n + 1))).toNat

end

end A235952.P16074667568048459031

/-!
# A235953: Number of (n+1) X (7+1) 0..2 arrays colored with the upper median value of each 2 X 2 subblock.

The programs for A235953, there is no canonical definition to state claims against.
-/

/-! ## A235953.P17372237459852468128

`A235954(A000217(n+6)+7)`
-/

namespace A235953.P17372237459852468128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235954 (A000217 (n + 6) + 7).toNat

end

end A235953.P17372237459852468128

/-! ## A235953.P15700047487158815133

`A235954(A052905(n+3)+12)`
-/

namespace A235953.P15700047487158815133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235954 (A052905 (n + 3) + 12).toNat

end

end A235953.P15700047487158815133

/-! ## A235953.P15735448860735215700

`A235954(A374008(n+1))`
-/

namespace A235953.P15735448860735215700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235954 (A374008 (n + 1)).toNat

end

end A235953.P15735448860735215700

/-! ## A235953.P7972969263478899782

`A235954(A055999(n+4))`
-/

namespace A235953.P7972969263478899782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235954 (A055999 (n + 4)).toNat

end

end A235953.P7972969263478899782

/-! ## A235953.P266993896152590974

`A235954(A000124(n+7)-7)`
-/

namespace A235953.P266993896152590974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235954 (A000124 (n + 7) - 7).toNat

end

end A235953.P266993896152590974

/-!
# A235956: Number of (n+1) X (2+1) 0..1 arrays with the difference of the upper and lower median value of each 2 X 2 subblock in lexicographically nondecreasing order columnwise and nonincreasing rowwise.

The programs for A235956, there is no canonical definition to state claims against.
-/

/-! ## A235956.P6333786060502563023

`A235962(∑[n+1]+2)`
-/

namespace A235956.P6333786060502563023
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235962 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A235956.P6333786060502563023

/-! ## A235956.P5812526015362488225

`record[A235962(A114091(n+1)+1)]`
-/

namespace A235956.P5812526015362488225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235962 (A114091 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235956.P5812526015362488225

/-! ## A235956.P14701871472564324174

`record[A235962(A024163(n+1)+2)]`
-/

namespace A235956.P14701871472564324174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235962 (A024163 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235956.P14701871472564324174

/-! ## A235956.P1455573550657028320

`record[gcd(A002262(n), A235962(n+2))]`
-/

namespace A235956.P1455573550657028320
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A235962 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235956.P1455573550657028320

/-! ## A235956.P9538594167205312213

`A235962(A000096(n)+3)-A011655(3*n)`
-/

namespace A235956.P9538594167205312213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235962 (A000096 n + 3).toNat - A011655 (3 * n)

end

end A235956.P9538594167205312213

/-!
# A235957: Number of (n+1)X(3+1) 0..1 arrays with the difference of the upper and lower median value of each 2X2 subblock in lexicographically nondecreasing order columnwise and nonincreasing rowwise.

The programs for A235957, there is no canonical definition to state claims against.
-/

/-! ## A235957.P15163386303107372079

`A235962(∑[n+2]+4)`
-/

namespace A235957.P15163386303107372079
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235962 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A235957.P15163386303107372079

/-! ## A235957.P4500687555798978338

`lcm(2, A235962(A167614(n+1)))`
-/

namespace A235957.P4500687555798978338
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A235962 (A167614 (n + 1)).toNat)

end

end A235957.P4500687555798978338

/-! ## A235957.P2563708403768284005

`A235962(A167614(n+1))+A185284(n)`
-/

namespace A235957.P2563708403768284005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235962 (A167614 (n + 1)).toNat + A185284 n

end

end A235957.P2563708403768284005

/-! ## A235957.P4821170381132897402

`A235962(A167614(n+1))+A089457(n+1)`
-/

namespace A235957.P4821170381132897402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235962 (A167614 (n + 1)).toNat + A089457 (n + 1)

end

end A235957.P4821170381132897402

/-! ## A235957.P10766789598935824872

`A235962(A167614(n+1))+A000007(n+2)`
-/

namespace A235957.P10766789598935824872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235962 (A167614 (n + 1)).toNat + A000007 (n + 2)

end

end A235957.P10766789598935824872

/-!
# A235958: Number of (n+1)X(4+1) 0..1 arrays with the difference of the upper and lower median value of each 2X2 subblock in lexicographically nondecreasing order columnwise and nonincreasing rowwise.

The programs for A235958, there is no canonical definition to state claims against.
-/

/-! ## A235958.P2799041658983674162

`A235962(∑[n+3]+7)`
-/

namespace A235958.P2799041658983674162
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235962 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A235958.P2799041658983674162

/-! ## A235958.P12582991028853396093

`A235962(A052905(n)+9)%A235959(n+1)`
-/

namespace A235958.P12582991028853396093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A235962 (A052905 n + 9).toNat) (A235959 (n + 1))

end

end A235958.P12582991028853396093

/-! ## A235958.P953285308672126849

`A053164(n+1)*A235962(A167499(n+2)-1)`
-/

namespace A235958.P953285308672126849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053164 (n + 1) * A235962 (A167499 (n + 2) - 1).toNat

end

end A235958.P953285308672126849

/-! ## A235958.P3480180637803545871

`A235962(A052905(n)+9)/A283149(3*n+5)`
-/

namespace A235958.P3480180637803545871
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A235962 (A052905 n + 9).toNat : ℚ) / (A283149 (3 * n + 5) : ℚ)

end

end A235958.P3480180637803545871

/-! ## A235958.P9059312402283779222

`A235962(Δ[A034857(n+1)])*A317145(2*n+1)`
-/

namespace A235958.P9059312402283779222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034857 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235962 (f1 (n + 1) - f1 n).toNat * A317145 (2 * n + 1)

end

end A235958.P9059312402283779222

/-!
# A235959: Number of (n+1)X(5+1) 0..1 arrays with the difference of the upper and lower median value of each 2X2 subblock in lexicographically nondecreasing order columnwise and nonincreasing rowwise.

The programs for A235959, there is no canonical definition to state claims against.
-/

/-! ## A235959.P6141808082348621917

`A235962(A374005(n+1))`
-/

namespace A235959.P6141808082348621917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235962 (A374005 (n + 1)).toNat

end

end A235959.P6141808082348621917

/-! ## A235959.P11863370403339567592

`A235962(A167499(n+3))`
-/

namespace A235959.P11863370403339567592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235962 (A167499 (n + 3)).toNat

end

end A235959.P11863370403339567592

/-! ## A235959.P10674377525823186643

`A235962(A155212(n)+13)`
-/

namespace A235959.P10674377525823186643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235962 (A155212 n + 13).toNat

end

end A235959.P10674377525823186643

/-! ## A235959.P1025864067751445592

`A235962(A056000(n)+15)`
-/

namespace A235959.P1025864067751445592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235962 (A056000 n + 15).toNat

end

end A235959.P1025864067751445592

/-! ## A235959.P9197571361750994007

`A235962(eq[7, A066657(n)])`
-/

namespace A235959.P9197571361750994007
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235962 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A235959.P9197571361750994007

/-!
# A235960: Number of (n+1)X(6+1) 0..1 arrays with the difference of the upper and lower median value of each 2X2 subblock in lexicographically nondecreasing order columnwise and nonincreasing rowwise.

The programs for A235960, there is no canonical definition to state claims against.
-/

/-! ## A235960.P7987979411626049201

`A235962(A374007(n+1))`
-/

namespace A235960.P7987979411626049201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235962 (A374007 (n + 1)).toNat

end

end A235960.P7987979411626049201

/-! ## A235960.P1263460927885443554

`A235962(A056115(n)+21)`
-/

namespace A235960.P1263460927885443554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235962 (A056115 n + 21).toNat

end

end A235960.P1263460927885443554

/-! ## A235960.P4592203063917397569

`A235962(A167499(n+4)+1)`
-/

namespace A235960.P4592203063917397569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235962 (A167499 (n + 4) + 1).toNat

end

end A235960.P4592203063917397569

/-! ## A235960.P9698077444738987496

`A235962(A167487(n+4)-1)`
-/

namespace A235960.P9698077444738987496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235962 (A167487 (n + 4) - 1).toNat

end

end A235960.P9698077444738987496

/-! ## A235960.P4685555513097736660

`A235962(A000217(n+5)+6)`
-/

namespace A235960.P4685555513097736660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235962 (A000217 (n + 5) + 6).toNat

end

end A235960.P4685555513097736660

/-!
# A235961: Number of (n+1)X(7+1) 0..1 arrays with the difference of the upper and lower median value of each 2X2 subblock in lexicographically nondecreasing order columnwise and nonincreasing rowwise.

The programs for A235961, there is no canonical definition to state claims against.
-/

/-! ## A235961.P11127228674951384311

`A235962(A374008(n+1))`
-/

namespace A235961.P11127228674951384311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235962 (A374008 (n + 1)).toNat

end

end A235961.P11127228674951384311

/-! ## A235961.P338288553783950002

`A235962(A056119(n)+28)`
-/

namespace A235961.P338288553783950002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235962 (A056119 n + 28).toNat

end

end A235961.P338288553783950002

/-! ## A235961.P16084269145193148236

`A235962(A166136(n+5)+1)`
-/

namespace A235961.P16084269145193148236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235962 (A166136 (n + 5) + 1).toNat

end

end A235961.P16084269145193148236

/-! ## A235961.P2445201927026188154

`A235962(A000096(n+5)+8)`
-/

namespace A235961.P2445201927026188154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235962 (A000096 (n + 5) + 8).toNat

end

end A235961.P2445201927026188154

/-! ## A235961.P6553925451717413586

`A235962(eq[8, A131818(n+1)])`
-/

namespace A235961.P6553925451717413586
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235962 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A235961.P6553925451717413586

/-!
# A235962: T(n,k)=Number of (n+1)X(k+1) 0..1 arrays with the difference of the upper and lower median value of each 2X2 subblock in lexicographically nondecreasing order columnwise and nonincreasing rowwise.

The programs for A235962, there is no canonical definition to state claims against.
-/

/-! ## A235962.P16417767213658880004

`xor(A235573(n+1), A277043(A173882(n)))`
-/

namespace A235962.P16417767213658880004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A235573 (n + 1)) (A277043 (A173882 n).toNat)

end

end A235962.P16417767213658880004

/-! ## A235962.P15663184881210249128

`xor(A235573(n+1), A277043(A252820(n+1)))`
-/

namespace A235962.P15663184881210249128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A235573 (n + 1)) (A277043 (A252820 (n + 1)).toNat)

end

end A235962.P15663184881210249128

/-!
# A235963: n appears (n+1)/(1 + (n mod 2)) times.

The programs for A235963, the canonical program `A235963.P8917601203416474347` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A235963 has offset 0).

The definition of A235963 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A235963.P8917601203416474347

`A180447(n)+A085141(n)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A235963

/-- `A180447(n)+A085141(n)` -/
def P8917601203416474347.Spec : Prop :=
  ∀ n, P8917601203416474347.a n = A235963 n

theorem P8917601203416474347.correct : P8917601203416474347.Spec := by
  intro n
  simp only [A235963]

end A235963

/-! ## A235963.P8401340005118617886

`∑[char[∑[gcd(n+1, ∑[n])]]]`
-/

namespace A235963.P8401340005118617886
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (n + 1) (∑ j ∈ Finset.range (n + 1), f4 j)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A235963.P8401340005118617886

namespace A235963

/-- `∑[char[∑[gcd(n+1, ∑[n])]]]` -/
def P8401340005118617886.Spec : Prop :=
  ∀ n, (P8401340005118617886.a n : ℤ) = A235963 n

end A235963

/-! ## A235963.P3098647514574934080

`∑[char[∑[floor((n+2)²/3)%(n+2)]]]`
-/

namespace A235963.P3098647514574934080
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊((n + 2) ^ 2 : ℚ) / 3⌋ (n + 2 : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A235963.P3098647514574934080

namespace A235963

/-- `∑[char[∑[floor((n+2)²/3)%(n+2)]]]` -/
def P3098647514574934080.Spec : Prop :=
  ∀ n, (P3098647514574934080.a n : ℤ) = A235963 n

end A235963

/-! ## A235963.P16366485450293740650

`∑[char[∑[(∑[n+2]-1)%(n+1)+1]]]`
-/

namespace A235963.P16366485450293740650
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (((∑ j ∈ Finset.range (n + 1), f4 j : ℕ) : ℤ) - 1) (n + 1 : ℤ) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A235963.P16366485450293740650

namespace A235963

/-- `∑[char[∑[(∑[n+2]-1)%(n+1)+1]]]` -/
def P16366485450293740650.Spec : Prop :=
  ∀ n, (P16366485450293740650.a n : ℤ) = A235963 n

end A235963

/-! ## A235963.P14468488306700625969

`∑[abs(A203568(n))]`
-/

namespace A235963.P14468488306700625969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A203568 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A235963.P14468488306700625969

namespace A235963

/-- `∑[abs(A203568(n))]` -/
def P14468488306700625969.Spec : Prop :=
  ∀ n, P14468488306700625969.a n = A235963 n

end A235963

/-! ## A235963.P13062926508323797799

`∑[abs(A257628(n))]`
-/

namespace A235963.P13062926508323797799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A257628 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A235963.P13062926508323797799

namespace A235963

/-- `∑[abs(A257628(n))]` -/
def P13062926508323797799.Spec : Prop :=
  ∀ n, P13062926508323797799.a n = A235963 n

end A235963

/-! ## A235963.P4556537200620101418

`∑[A080995(n)]-1`
-/

namespace A235963.P4556537200620101418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080995 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A235963.P4556537200620101418

namespace A235963

/-- `∑[A080995(n)]-1` -/
def P4556537200620101418.Spec : Prop :=
  ∀ n, P4556537200620101418.a n = A235963 n

end A235963

/-! ## A235963.P17548582754830708504

`Δ[A260706(n)]-1`
-/

namespace A235963.P17548582754830708504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260706 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A235963.P17548582754830708504

namespace A235963

/-- `Δ[A260706(n)]-1` -/
def P17548582754830708504.Spec : Prop :=
  ∀ n, P17548582754830708504.a n = A235963 n

end A235963

/-! ## A235963.P856114814853271077

`A193832(n+1)-1`
-/

namespace A235963.P856114814853271077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193832 (n + 1) - 1

end

end A235963.P856114814853271077

namespace A235963

/-- `A193832(n+1)-1` -/
def P856114814853271077.Spec : Prop :=
  ∀ n, P856114814853271077.a n = A235963 n

end A235963

/-! ## A235963.P7506424632032977166

`∑[abs(A010815(n))]-1`
-/

namespace A235963.P7506424632032977166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A010815 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A235963.P7506424632032977166

namespace A235963

/-- `∑[abs(A010815(n))]-1` -/
def P7506424632032977166.Spec : Prop :=
  ∀ n, P7506424632032977166.a n = A235963 n

end A235963

/-! ## A235963.P8846905255116620280

`∑[abs(A121373(n))]-1`
-/

namespace A235963.P8846905255116620280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A121373 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A235963.P8846905255116620280

namespace A235963

/-- `∑[abs(A121373(n))]-1` -/
def P8846905255116620280.Spec : Prop :=
  ∀ n, P8846905255116620280.a n = A235963 n

end A235963

/-! ## A235963.P6258140324017838976

`∑[abs(A133985(n))]-1`
-/

namespace A235963.P6258140324017838976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A133985 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A235963.P6258140324017838976

namespace A235963

/-- `∑[abs(A133985(n))]-1` -/
def P6258140324017838976.Spec : Prop :=
  ∀ n, P6258140324017838976.a n = A235963 n

end A235963

/-! ## A235963.P9120453736157713404

`∑[abs(A199918(n))]-1`
-/

namespace A235963.P9120453736157713404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A199918 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A235963.P9120453736157713404

namespace A235963

/-- `∑[abs(A199918(n))]-1` -/
def P9120453736157713404.Spec : Prop :=
  ∀ n, P9120453736157713404.a n = A235963 n

end A235963

/-! ## A235963.P12229333356626264208

`∑[abs(A206958(n))]-1`
-/

namespace A235963.P12229333356626264208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A206958 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A235963.P12229333356626264208

namespace A235963

/-- `∑[abs(A206958(n))]-1` -/
def P12229333356626264208.Spec : Prop :=
  ∀ n, P12229333356626264208.a n = A235963 n

end A235963

/-! ## A235963.P18267098234970830937

`∑[abs(A206959(n))]-1`
-/

namespace A235963.P18267098234970830937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A206959 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A235963.P18267098234970830937

namespace A235963

/-- `∑[abs(A206959(n))]-1` -/
def P18267098234970830937.Spec : Prop :=
  ∀ n, P18267098234970830937.a n = A235963 n

end A235963

/-! ## A235963.P14418099604812827694

`∑[char[A001318(n+1)]]`
-/

namespace A235963.P14418099604812827694
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001318 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A235963.P14418099604812827694

namespace A235963

/-- `∑[char[A001318(n+1)]]` -/
def P14418099604812827694.Spec : Prop :=
  ∀ n, (P14418099604812827694.a n : ℤ) = A235963 n

end A235963

/-! ## A235963.P1883253268748776412

`∑[char[A144065(n)+1]]`
-/

namespace A235963.P1883253268748776412
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144065 n + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A235963.P1883253268748776412

namespace A235963

/-- `∑[char[A144065(n)+1]]` -/
def P1883253268748776412.Spec : Prop :=
  ∀ n, (P1883253268748776412.a n : ℤ) = A235963 n

end A235963

/-! ## A235963.P9703679662826841151

`∑[char[A001318(n)]]-1`
-/

namespace A235963.P9703679662826841151
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001318 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A235963.P9703679662826841151

namespace A235963

/-- `∑[char[A001318(n)]]-1` -/
def P9703679662826841151.Spec : Prop :=
  ∀ n, P9703679662826841151.a n = A235963 n

end A235963

/-!
# A235964: Number of (n+1)X(n+1) 0..3 arrays colored with the upper median value of each 2X2 subblock.

The programs for A235964, there is no canonical definition to state claims against.
-/

/-! ## A235964.P3272648743555773015

`A235972(∑[4*n]+1)`
-/

namespace A235964.P3272648743555773015
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235972 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A235964.P3272648743555773015

/-! ## A235964.P13532661257752553217

`lcm(2, A235972(A001844(n)))`
-/

namespace A235964.P13532661257752553217
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A235972 (A001844 n).toNat)

end

end A235964.P13532661257752553217

/-! ## A235964.P817193082464550142

`record[A235972(Δ[A235355(n)])]`
-/

namespace A235964.P817193082464550142
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235972 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235964.P817193082464550142

/-! ## A235964.P9574870060573551812

`record[A003982(n)*A235972(n+1)]`
-/

namespace A235964.P9574870060573551812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A235972 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235964.P9574870060573551812

/-!
# A235965: Number of (n+1)X(1+1) 0..3 arrays colored with the upper median value of each 2X2 subblock.

The programs for A235965, there is no canonical definition to state claims against.
-/

/-! ## A235965.P16190011282791877795

`A235972(∑[n]+1)`
-/

namespace A235965.P16190011282791877795
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235972 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A235965.P16190011282791877795

/-! ## A235965.P8873858934360075213

`record[A235972(n+1)/A046802(n)]`
-/

namespace A235965.P8873858934360075213
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A235972 (n + 1) : ℚ) / (A046802 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235965.P8873858934360075213

/-! ## A235965.P16453517666742393803

`record[gcd(A002262(n), A235972(n+1))]`
-/

namespace A235965.P16453517666742393803
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A235972 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235965.P16453517666742393803

/-! ## A235965.P4035509272437392766

`A235972(A000124(n))%A016833(n)`
-/

namespace A235965.P4035509272437392766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A235972 (A000124 n).toNat) (A016833 n)

end

end A235965.P4035509272437392766

/-! ## A235965.P3117915069991770530

`lcm(A235972(A000124(n)), A279758(n))`
-/

namespace A235965.P3117915069991770530
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A235972 (A000124 n).toNat) (A279758 n)

end

end A235965.P3117915069991770530

/-!
# A235966: Number of (n+1)X(2+1) 0..3 arrays colored with the upper median value of each 2X2 subblock.

The programs for A235966, there is no canonical definition to state claims against.
-/

/-! ## A235966.P11366216871621189185

`A235972(∑[n+1]+2)`
-/

namespace A235966.P11366216871621189185
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235972 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A235966.P11366216871621189185

/-! ## A235966.P15547887830186102042

`record[gcd(A002262(n), A235972(n+2))]`
-/

namespace A235966.P15547887830186102042
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A235972 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235966.P15547887830186102042

/-! ## A235966.P6404868681342124914

`record[A235972(A198455(n+1))]`
-/

namespace A235966.P6404868681342124914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235972 (A198455 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235966.P6404868681342124914

/-!
# A235967: Number of (n+1)X(3+1) 0..3 arrays colored with the upper median value of each 2X2 subblock.

The programs for A235967, there is no canonical definition to state claims against.
-/

/-! ## A235967.P17648201257194816498

`A235972(∑[n+2]+4)`
-/

namespace A235967.P17648201257194816498
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235972 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A235967.P17648201257194816498

/-! ## A235967.P12542860986210538321

`lcm(2, A235972(A167614(n+1)))`
-/

namespace A235967.P12542860986210538321
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A235972 (A167614 (n + 1)).toNat)

end

end A235967.P12542860986210538321

/-! ## A235967.P15603720280125727850

`A016240(n)*A235972(A167614(n+1))`
-/

namespace A235967.P15603720280125727850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016240 n * A235972 (A167614 (n + 1)).toNat

end

end A235967.P15603720280125727850

/-! ## A235967.P8180305052400561123

`A235972(A167614(n+1))*A269301(n)`
-/

namespace A235967.P8180305052400561123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235972 (A167614 (n + 1)).toNat * A269301 n

end

end A235967.P8180305052400561123

/-! ## A235967.P483774021719053943

`A235972(A167614(n+1))%A017517(n)`
-/

namespace A235967.P483774021719053943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A235972 (A167614 (n + 1)).toNat) (A017517 n)

end

end A235967.P483774021719053943

/-!
# A235968: Number of (n+1)X(4+1) 0..3 arrays colored with the upper median value of each 2X2 subblock.

The programs for A235968, there is no canonical definition to state claims against.
-/

/-! ## A235968.P16421481054705170848

`A235972(A374004(n+1))`
-/

namespace A235968.P16421481054705170848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235972 (A374004 (n + 1)).toNat

end

end A235968.P16421481054705170848

/-! ## A235968.P12038345411425873158

`A235972(A052905(n)+9)`
-/

namespace A235968.P12038345411425873158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235972 (A052905 n + 9).toNat

end

end A235968.P12038345411425873158

/-! ## A235968.P15154556047345650287

`A235972(A055999(n)+10)`
-/

namespace A235968.P15154556047345650287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235972 (A055999 n + 10).toNat

end

end A235968.P15154556047345650287

/-! ## A235968.P1059526839648287669

`A235972(A167614(n+2)+1)`
-/

namespace A235968.P1059526839648287669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235972 (A167614 (n + 2) + 1).toNat

end

end A235968.P1059526839648287669

/-! ## A235968.P17020227122891265864

`A235972(eq[5, A131818(n+1)])`
-/

namespace A235968.P17020227122891265864
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235972 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A235968.P17020227122891265864

/-!
# A235969: Number of (n+1)X(5+1) 0..3 arrays colored with the upper median value of each 2X2 subblock.

The programs for A235969, there is no canonical definition to state claims against.
-/

/-! ## A235969.P8327515330233314043

`A235972(A374005(n+1))`
-/

namespace A235969.P8327515330233314043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235972 (A374005 (n + 1)).toNat

end

end A235969.P8327515330233314043

/-! ## A235969.P1276609272530338540

`A235972(A155212(n)+13)`
-/

namespace A235969.P1276609272530338540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235972 (A155212 n + 13).toNat

end

end A235969.P1276609272530338540

/-! ## A235969.P5561825183943731388

`A235972(eq[6, A131818(n+1)])`
-/

namespace A235969.P5561825183943731388
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235972 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A235969.P5561825183943731388

/-! ## A235969.P17453748542068783964

`A235972(Δ[A264443(n)])`
-/

namespace A235969.P17453748542068783964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235972 (f1 (n + 1) - f1 n).toNat

end

end A235969.P17453748542068783964

/-! ## A235969.P13160355744499227441

`A235972(A056115(n)+11)`
-/

namespace A235969.P13160355744499227441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235972 (A056115 n + 11).toNat

end

end A235969.P13160355744499227441

/-!
# A235970: Number of (n+1)X(6+1) 0..3 arrays colored with the upper median value of each 2X2 subblock.

The programs for A235970, there is no canonical definition to state claims against.
-/

/-! ## A235970.P7108548758867045055

`A235972(A374007(n+1))`
-/

namespace A235970.P7108548758867045055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235972 (A374007 (n + 1)).toNat

end

end A235970.P7108548758867045055

/-! ## A235970.P13902359078649403976

`A235972(A056115(n)+21)`
-/

namespace A235970.P13902359078649403976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235972 (A056115 n + 21).toNat

end

end A235970.P13902359078649403976

/-! ## A235970.P44046961213155757

`A235972(eq[7, A131818(n+1)])`
-/

namespace A235970.P44046961213155757
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235972 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A235970.P44046961213155757

/-! ## A235970.P11222927529072741051

`A235972(eq[3, A219347(n)])`
-/

namespace A235970.P11222927529072741051
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235972 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A235970.P11222927529072741051

/-! ## A235970.P4608878310802274475

`A235972(eq[5, A193592(n)])`
-/

namespace A235970.P4608878310802274475
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235972 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A235970.P4608878310802274475

/-!
# A235971: Number of (n+1)X(7+1) 0..3 arrays colored with the upper median value of each 2X2 subblock.

The programs for A235971, there is no canonical definition to state claims against.
-/

/-! ## A235971.P13109127817649538123

`A235972(A374008(n+1))`
-/

namespace A235971.P13109127817649538123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235972 (A374008 (n + 1)).toNat

end

end A235971.P13109127817649538123

/-! ## A235971.P10153598517534283619

`A235972(eq[11, A066657(n)])`
-/

namespace A235971.P10153598517534283619
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235972 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A235971.P10153598517534283619

/-! ## A235971.P12849969071704921883

`A235972(eq[8, A131818(n+1)])`
-/

namespace A235971.P12849969071704921883
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235972 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A235971.P12849969071704921883

/-! ## A235971.P1341087707256358177

`A235972(eq[4, A219347(n)])`
-/

namespace A235971.P1341087707256358177
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235972 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A235971.P1341087707256358177

/-! ## A235971.P12997501183806686782

`A235972(eq[6, A193592(n)])`
-/

namespace A235971.P12997501183806686782
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235972 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A235971.P12997501183806686782

/-!
# A235973: Number of (n+1) X (n+1) 0..2 arrays with the upper median equal to the lower median in every 2 X 2 subblock.

The programs for A235973, there is no canonical definition to state claims against.
-/

/-! ## A235973.P3160377323143514662

`A235981((n+1)²+n²)`
-/

namespace A235973.P3160377323143514662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235981 ((n + 1) ^ 2 + n ^ 2)

end

end A235973.P3160377323143514662

/-!
# A235974: Number of (n+1) X (1+1) 0..2 arrays with the upper median equal to the lower median in every 2 X 2 subblock.

The programs for A235974, there is no canonical definition to state claims against.
-/

/-! ## A235974.P8786432371362562765

`A235981(∑[n]+1)`
-/

namespace A235974.P8786432371362562765
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235981 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A235974.P8786432371362562765

/-! ## A235974.P5965017737225148430

`or(1, A235981(A000124(n)))`
-/

namespace A235974.P5965017737225148430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A235981 (A000124 n).toNat)

end

end A235974.P5965017737225148430

/-! ## A235974.P11385805708645882179

`record[gcd(A002262(n), A235981(n+1))]`
-/

namespace A235974.P11385805708645882179
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A235981 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235974.P11385805708645882179

/-! ## A235974.P16558861384999356954

`record[A235981(n+1)/A186695(n+1)]`
-/

namespace A235974.P16558861384999356954
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A235981 (n + 1) : ℚ) / (A186695 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235974.P16558861384999356954

/-! ## A235974.P13603463534720210354

`record[root(A235981(n+1), A002260(n+1))]`
-/

namespace A235974.P13603463534720210354
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A235981 (n + 1) : ℝ) ^ (1 / (A002260 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235974.P13603463534720210354

/-!
# A235975: Number of (n+1)X(2+1) 0..2 arrays with the upper median equal to the lower median in every 2X2 subblock.

The programs for A235975, there is no canonical definition to state claims against.
-/

/-! ## A235975.P13949331703951766058

`A235981(∑[n+1]+2)`
-/

namespace A235975.P13949331703951766058
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235981 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A235975.P13949331703951766058

/-! ## A235975.P7388987711897740625

`record[gcd(A002262(n), A235981(n+2))]`
-/

namespace A235975.P7388987711897740625
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A235981 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235975.P7388987711897740625

/-! ## A235975.P15078267939424854959

`or(1, A235981(A000124(n+1)+1))`
-/

namespace A235975.P15078267939424854959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A235981 (A000124 (n + 1) + 1).toNat)

end

end A235975.P15078267939424854959

/-! ## A235975.P17684683720393619451

`record[root(A235981(n+3), A221596(n+2)+1)]`
-/

namespace A235975.P17684683720393619451
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A235981 (n + 3) : ℝ) ^ (1 / (A221596 (n + 2) + 1 : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235975.P17684683720393619451

/-! ## A235975.P12582487513900334988

`record[A235981(abs(A201163(n)))]`
-/

namespace A235975.P12582487513900334988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235981 |A201163 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235975.P12582487513900334988

/-!
# A235976: Number of (n+1)X(3+1) 0..2 arrays with the upper median equal to the lower median in every 2X2 subblock.

The programs for A235976, there is no canonical definition to state claims against.
-/

/-! ## A235976.P10594855254812516308

`A235981(∑[n+2]+4)`
-/

namespace A235976.P10594855254812516308
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235981 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A235976.P10594855254812516308

/-! ## A235976.P9665375566609441990

`or(1, A235981(A167614(n+1)))`
-/

namespace A235976.P9665375566609441990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A235981 (A167614 (n + 1)).toNat)

end

end A235976.P9665375566609441990

/-! ## A235976.P7360663632669693418

`A235981(A167614(n+1))+A025469(n)`
-/

namespace A235976.P7360663632669693418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235981 (A167614 (n + 1)).toNat + A025469 n

end

end A235976.P7360663632669693418

/-! ## A235976.P10553087735961917826

`A235981(A167614(n+1))+A185284(n)`
-/

namespace A235976.P10553087735961917826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235981 (A167614 (n + 1)).toNat + A185284 n

end

end A235976.P10553087735961917826

/-! ## A235976.P11005980612697279406

`lcm(A020985(n), A235981(A167614(n+1)))`
-/

namespace A235976.P11005980612697279406
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A235981 (A167614 (n + 1)).toNat)

end

end A235976.P11005980612697279406

/-!
# A235977: Number of (n+1)X(4+1) 0..2 arrays with the upper median equal to the lower median in every 2X2 subblock.

The programs for A235977, there is no canonical definition to state claims against.
-/

/-! ## A235977.P10284524274832944592

`A235981(A052905(n)+9)`
-/

namespace A235977.P10284524274832944592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235981 (A052905 n + 9).toNat

end

end A235977.P10284524274832944592

/-! ## A235977.P14508298633052198201

`A235981(A055999(n)+10)`
-/

namespace A235977.P14508298633052198201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235981 (A055999 n + 10).toNat

end

end A235977.P14508298633052198201

/-! ## A235977.P18244843211053591577

`A235981(A167614(n+2)+1)`
-/

namespace A235977.P18244843211053591577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235981 (A167614 (n + 2) + 1).toNat

end

end A235977.P18244843211053591577

/-! ## A235977.P1568251538917741125

`A235981(Δ[A023545(n+1)-n²])`
-/

namespace A235977.P1568251538917741125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1) - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235981 (f1 (n + 1) - f1 n).toNat

end

end A235977.P1568251538917741125

/-! ## A235977.P10126983602682098550

`A235981(A141214(n+1))`
-/

namespace A235977.P10126983602682098550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235981 (A141214 (n + 1)).toNat

end

end A235977.P10126983602682098550

/-!
# A235978: Number of (n+1)X(5+1) 0..2 arrays with the upper median equal to the lower median in every 2X2 subblock.

The programs for A235978, there is no canonical definition to state claims against.
-/

/-! ## A235978.P3369220629847375565

`A235981(A167499(n+3))`
-/

namespace A235978.P3369220629847375565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235981 (A167499 (n + 3)).toNat

end

end A235978.P3369220629847375565

/-! ## A235978.P5518540111488794609

`A235981(A155212(n)+13)`
-/

namespace A235978.P5518540111488794609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235981 (A155212 n + 13).toNat

end

end A235978.P5518540111488794609

/-! ## A235978.P10626042072437672313

`A235981(A374005(n+1))`
-/

namespace A235978.P10626042072437672313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235981 (A374005 (n + 1)).toNat

end

end A235978.P10626042072437672313

/-! ## A235978.P881365074971106903

`A235981(eq[4, A193592(n)])`
-/

namespace A235978.P881365074971106903
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235981 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A235978.P881365074971106903

/-! ## A235978.P14254699728814570251

`A235981(Δ[A023545(n+1)])`
-/

namespace A235978.P14254699728814570251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235981 (f1 (n + 1) - f1 n).toNat

end

end A235978.P14254699728814570251

/-!
# A235979: Number of (n+1)X(6+1) 0..2 arrays with the upper median equal to the lower median in every 2X2 subblock.

The programs for A235979, there is no canonical definition to state claims against.
-/

/-! ## A235979.P15895046746991408217

`A235981(A374007(n+1))`
-/

namespace A235979.P15895046746991408217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235981 (A374007 (n + 1)).toNat

end

end A235979.P15895046746991408217

/-! ## A235979.P1415827699578424134

`A235981(Δ[Δ[A006504(n+1)]])`
-/

namespace A235979.P1415827699578424134
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235981 (f1 (n + 1) - f1 n).toNat

end

end A235979.P1415827699578424134

/-! ## A235979.P10671854835053816405

`A235981(Δ[A023545(n+2)]-1)`
-/

namespace A235979.P10671854835053816405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235981 (f1 (n + 1) - f1 n - 1).toNat

end

end A235979.P10671854835053816405

/-!
# A235980: Number of (n+1)X(7+1) 0..2 arrays with the upper median equal to the lower median in every 2X2 subblock.

The programs for A235980, there is no canonical definition to state claims against.
-/

/-! ## A235980.P14898787053610300883

`A235981(A374008(n+1))`
-/

namespace A235980.P14898787053610300883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235981 (A374008 (n + 1)).toNat

end

end A235980.P14898787053610300883

/-! ## A235980.P17967130864068190766

`A235981(A055999(n+4))`
-/

namespace A235980.P17967130864068190766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235981 (A055999 (n + 4)).toNat

end

end A235980.P17967130864068190766

/-! ## A235980.P16017314334506196205

`A235981(eq[6, A193592(n)])`
-/

namespace A235980.P16017314334506196205
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235981 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A235980.P16017314334506196205

/-!
# A235982: Numbers n of the form p^4 + 1 (for prime p) such that n^4 + 1 is also prime.

The programs for A235982, there is no canonical definition to state claims against.
-/

/-! ## A235982.P15791957861601146204

`A236069(n+1)^4+1`
-/

namespace A235982.P15791957861601146204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236069 (n + 1) ^ 4 + 1

end

end A235982.P15791957861601146204

/-! ## A235982.P15280522052761145617

`A001159(A236069(n+1))`
-/

namespace A235982.P15280522052761145617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001159 (A236069 (n + 1)).toNat

end

end A235982.P15280522052761145617

/-! ## A235982.P15551092776802256836

`A002523(p?[A236069(n+1)])`
-/

namespace A235982.P15551092776802256836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236069 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002523 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A235982.P15551092776802256836

/-! ## A235982.P10556131934089669159

`A285989(p?[A236069(n+1)])`
-/

namespace A235982.P10556131934089669159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236069 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285989 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A235982.P10556131934089669159

/-! ## A235982.P11885418735386702697

`A002523(or(1, A236069(n+1)))`
-/

namespace A235982.P11885418735386702697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002523 (Int.lor 1 (A236069 (n + 1))).toNat

end

end A235982.P11885418735386702697

/-!
# A235985: Primes p such that 3p-1 has even Hamming weight.

The programs for A235985, the canonical program `A235985.P10362651167329117926` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A235985 has offset 1).

The definition of A235985 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1002 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A235985.P10362651167329117926

`p?[n*(2-A293162(n))]`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A235985

/-- `p?[n*(2-A293162(n))]` -/
def P10362651167329117926.Spec : Prop :=
  ∀ n, P10362651167329117926.a n = A235985 (n + 1)

theorem P10362651167329117926.correct : P10362651167329117926.Spec := by
  intro n
  simp only [A235985, Nat.add_sub_cancel]

end A235985

/-! ## A235985.P11904764694004461956

`p?[A293162(2*n+1)+2*n]`
-/

namespace A235985.P11904764694004461956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293162 (2 * n + 1) + (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A235985.P11904764694004461956

namespace A235985

/-- `p?[A293162(2*n+1)+2*n]` -/
def P11904764694004461956.Spec : Prop :=
  ∀ n, P11904764694004461956.a n = A235985 (n + 1)

end A235985

/-! ## A235985.P8291495569408825590

`p?[A026498(n)+2*n]`
-/

namespace A235985.P8291495569408825590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026498 n + (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A235985.P8291495569408825590

namespace A235985

/-- `p?[A026498(n)+2*n]` -/
def P8291495569408825590.Spec : Prop :=
  ∀ n, P8291495569408825590.a n = A235985 (n + 1)

end A235985

/-! ## A235985.P12479236394730008814

`p?[round(A092246(n+1)/3)]`
-/

namespace A235985.P12479236394730008814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A092246 (n + 1) : ℚ) / 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A235985.P12479236394730008814

namespace A235985

/-- `p?[round(A092246(n+1)/3)]` -/
def P12479236394730008814.Spec : Prop :=
  ∀ n, P12479236394730008814.a n = A235985 (n + 1)

end A235985

/-! ## A235985.P2093786616835309341

`p?[A026513(2*n)+2*n]`
-/

namespace A235985.P2093786616835309341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026513 (2 * n) + (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A235985.P2093786616835309341

namespace A235985

/-- `p?[A026513(2*n)+2*n]` -/
def P2093786616835309341.Spec : Prop :=
  ∀ n, P2093786616835309341.a n = A235985 (n + 1)

end A235985

/-! ## A235985.P8930768128422546478

`eq[A026492(n), A184727(n+1)]`
-/

namespace A235985.P8930768128422546478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026492 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184727 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A235985.P8930768128422546478

namespace A235985

/-- `eq[A026492(n), A184727(n+1)]` -/
def P8930768128422546478.Spec : Prop :=
  ∀ n, (P8930768128422546478.a n : ℤ) = A235985 (n + 1)

end A235985

/-! ## A235985.P10754545567357562444

`p?[n*A277822(3*n)]`
-/

namespace A235985.P10754545567357562444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A277822 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A235985.P10754545567357562444

namespace A235985

/-- `p?[n*A277822(3*n)]` -/
def P10754545567357562444.Spec : Prop :=
  ∀ n, P10754545567357562444.a n = A235985 (n + 1)

end A235985

/-! ## A235985.P13612256154480354723

`p?[n*A026498(2*n)]`
-/

namespace A235985.P13612256154480354723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A026498 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A235985.P13612256154480354723

namespace A235985

/-- `p?[n*A026498(2*n)]` -/
def P13612256154480354723.Spec : Prop :=
  ∀ n, P13612256154480354723.a n = A235985 (n + 1)

end A235985

/-! ## A235985.P974590790611571799

`p?[lt[A292118(3*n), 2]]`
-/

namespace A235985.P974590790611571799
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292118 (3 * n)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A235985.P974590790611571799

namespace A235985

/-- `p?[lt[A292118(3*n), 2]]` -/
def P974590790611571799.Spec : Prop :=
  ∀ n, (P974590790611571799.a n : ℤ) = A235985 (n + 1)

end A235985

/-! ## A235985.P4571656070321279542

`p?[A246159(3*n)+n]`
-/

namespace A235985.P4571656070321279542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246159 (3 * n) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A235985.P4571656070321279542

namespace A235985

/-- `p?[A246159(3*n)+n]` -/
def P4571656070321279542.Spec : Prop :=
  ∀ n, P4571656070321279542.a n = A235985 (n + 1)

end A235985

/-! ## A235985.P14247304972437385335

`p?[n+1-A246160(3*n+2)]`
-/

namespace A235985.P14247304972437385335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A246160 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A235985.P14247304972437385335

namespace A235985

/-- `p?[n+1-A246160(3*n+2)]` -/
def P14247304972437385335.Spec : Prop :=
  ∀ n, P14247304972437385335.a n = A235985 (n + 1)

end A235985

/-!
# A235986: Numbers n such that two of the primes between n^2 and (n+1)^2 add up to n^2+(n+1)^2 - 1.

The programs for A235986, there is no canonical definition to state claims against.
-/

/-! ## A235986.P1860788891888047173

`comp[ceil(abs((1-n)/2))*A008365(n+1)]`
-/

namespace A235986.P1860788891888047173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈|(1 - (n : ℤ) : ℚ) / 2|⌉ * A008365 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A235986.P1860788891888047173

/-! ## A235986.P12897685689391239101

`comp[ceil(abs((1-n)/2))*A132077(n+1)]`
-/

namespace A235986.P12897685689391239101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈|(1 - (n : ℤ) : ℚ) / 2|⌉ * A132077 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A235986.P12897685689391239101

/-! ## A235986.P6727778726865143391

`comp[ceil(abs((1-n)/2))*A334391(n+1)]`
-/

namespace A235986.P6727778726865143391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈|(1 - (n : ℤ) : ℚ) / 2|⌉ * A334391 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A235986.P6727778726865143391

/-! ## A235986.P6009776605951960808

`lt[A325142(A060798(n+1)), n]`
-/

namespace A235986.P6009776605951960808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325142 (A060798 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A235986.P6009776605951960808

/-! ## A235986.P3664970703817184183

`comp[A008365(n+1)*A123108(n)]`
-/

namespace A235986.P3664970703817184183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008365 (n + 1) * A123108 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A235986.P3664970703817184183

/-! ## A235986.P9676529804005789728

`lt[A160086(A318994(n+1)), A032741(n)]`
-/

namespace A235986.P9676529804005789728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160086 (A318994 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A235986.P9676529804005789728

/-! ## A235986.P5228643628807156667

`∑[A035214(A260985(n+1)-A008579(n))]`
-/

namespace A235986.P5228643628807156667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035214 (A260985 (n + 1) - A008579 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A235986.P5228643628807156667

/-! ## A235986.P18405715114089665543

`lt[A328308(n), A130321(A324599(n+1))]`
-/

namespace A235986.P18405715114089665543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328308 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 (A324599 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A235986.P18405715114089665543

/-!
# A235987: a(n) = |{0 < k < n: p = prime(k) + phi(n-k) is a Sophie prime having 2 as a primitive root}|.

The programs for A235987, there is no canonical definition to state claims against.
-/

/-! ## A235987.P12845218413203961831

`A331218(record[A052938(A336662(n))])`
-/

namespace A235987.P12845218413203961831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052938 (A336662 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331218 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A235987.P12845218413203961831

/-! ## A235987.P1469888529714037073

`A073204(n)%A073204(A315688(n))`
-/

namespace A235987.P1469888529714037073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A073204 n) (A073204 (A315688 n).toNat)

end

end A235987.P1469888529714037073

/-! ## A235987.P83941821747897583

`A093578(∑[A013634(A333784(n+1))])`
-/

namespace A235987.P83941821747897583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013634 (A333784 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093578 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A235987.P83941821747897583

/-! ## A235987.P18249774692959116474

`A297037(A167614(n+1)^A330667(n+1))`
-/

namespace A235987.P18249774692959116474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297037 (SequenceMachineLib.roundAway ((A167614 (n + 1) : ℚ) ^ (A330667 (n + 1) : ℤ))).toNat

end

end A235987.P18249774692959116474

/-! ## A235987.P2631842243972171253

`A339933(A370810(n+1))`
-/

namespace A235987.P2631842243972171253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339933 (A370810 (n + 1)).toNat

end

end A235987.P2631842243972171253

/-!
# A235988: Sum of the partition parts of 3n into 3 parts.

The programs for A235988, the canonical program `A235988.P9429098408141581644` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A235988 has offset 1).

The definition of A235988 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A235988.P9429098408141581644

`3*(n+1)^3-3*(n+1)*floor((n+1)²/4)`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A235988

/-- `3*(n+1)^3-3*(n+1)*floor((n+1)²/4)` -/
def P9429098408141581644.Spec : Prop :=
  ∀ n, P9429098408141581644.a n = A235988 (n + 1)

theorem P9429098408141581644.correct : P9429098408141581644.Spec := by
  intro n
  simp only [A235988, Nat.add_sub_cancel]

end A235988

/-! ## A235988.P6459359805263933227

`3*(n+1)*A077043(n+1)`
-/

namespace A235988.P6459359805263933227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * ((n + 1 : ℤ) * A077043 (n + 1))

end

end A235988.P6459359805263933227

namespace A235988

/-- `3*(n+1)*A077043(n+1)` -/
def P6459359805263933227.Spec : Prop :=
  ∀ n, P6459359805263933227.a n = A235988 (n + 1)

end A235988

/-! ## A235988.P12269773049726936982

`Δ[A077043(n+1)*A077043(n)]`
-/

namespace A235988.P12269773049726936982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077043 (n + 1) * A077043 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A235988.P12269773049726936982

namespace A235988

/-- `Δ[A077043(n+1)*A077043(n)]` -/
def P12269773049726936982.Spec : Prop :=
  ∀ n, P12269773049726936982.a n = A235988 (n + 1)

end A235988

/-! ## A235988.P880798338820390056

`∑[A135370(3*n+1)+2]`
-/

namespace A235988.P880798338820390056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135370 (3 * n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A235988.P880798338820390056

namespace A235988

/-- `∑[A135370(3*n+1)+2]` -/
def P880798338820390056.Spec : Prop :=
  ∀ n, P880798338820390056.a n = A235988 (n + 1)

end A235988

/-! ## A235988.P10508854724593497295

`A350042(3*(n+1))`
-/

namespace A235988.P10508854724593497295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350042 (3 * (n + 1))

end

end A235988.P10508854724593497295

namespace A235988

/-- `A350042(3*(n+1))` -/
def P10508854724593497295.Spec : Prop :=
  ∀ n, P10508854724593497295.a n = A235988 (n + 1)

end A235988

/-! ## A235988.P6711048211636215152

`A213389(3*(n+1))/3`
-/

namespace A235988.P6711048211636215152
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A213389 (3 * (n + 1)) : ℚ) / 3

end

end A235988.P6711048211636215152

namespace A235988

/-- `A213389(3*(n+1))/3` -/
def P6711048211636215152.Spec : Prop :=
  ∀ n, P6711048211636215152.a n = (A235988 (n + 1) : ℚ)

end A235988

/-!
# A235991: Numbers with an odd arithmetic derivative, cf. A003415.

The programs for A235991, the canonical program `A235991.P13557001372397782092` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A235991 has offset 1).

The definition of A235991 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A235991.P340099747211654922

`eq[0, A358680(n)]`
-/

namespace A235991.P340099747211654922
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358680 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A235991.P340099747211654922

namespace A235991

/-- `eq[0, A358680(n)]` -/
def P340099747211654922.Spec : Prop :=
  ∀ n, (P340099747211654922.a n : ℤ) = A235991 (n + 1)

end A235991

/-! ## A235991.P9984523340882571297

`comp[A235992(n+1)]`
-/

namespace A235991.P9984523340882571297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235992 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A235991.P9984523340882571297

namespace A235991

/-- `comp[A235992(n+1)]` -/
def P9984523340882571297.Spec : Prop :=
  ∀ n, (P9984523340882571297.a n : ℤ) = A235991 (n + 1)

end A235991

/-! ## A235991.P11518803458944879246

`eq[1, (2-A353493(n))²]`
-/

namespace A235991.P11518803458944879246
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A353493 n) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A235991.P11518803458944879246

namespace A235991

/-- `eq[1, (2-A353493(n))²]` -/
def P11518803458944879246.Spec : Prop :=
  ∀ n, (P11518803458944879246.a n : ℤ) = A235991 (n + 1)

end A235991

/-! ## A235991.P13557001372397782092

`lt[A359792(n+1), 0]+1`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A235991

/-- `lt[A359792(n+1), 0]+1` -/
def P13557001372397782092.Spec : Prop :=
  ∀ n, (P13557001372397782092.a n : ℤ) = A235991 (n + 1)

theorem P13557001372397782092.correct : P13557001372397782092.Spec := by
  intro n
  simp only [A235991, Nat.add_sub_cancel]

end A235991

/-! ## A235991.P17810482421620096381

`lt[1-A359820(3*n), 1]`
-/

namespace A235991.P17810482421620096381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A359820 (3 * n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A235991.P17810482421620096381

namespace A235991

/-- `lt[1-A359820(3*n), 1]` -/
def P17810482421620096381.Spec : Prop :=
  ∀ n, (P17810482421620096381.a n : ℤ) = A235991 (n + 1)

end A235991

/-! ## A235991.P1635983238222202006

`eq[A353494(n), A353495(n)]`
-/

namespace A235991.P1635983238222202006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353494 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353495 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A235991.P1635983238222202006

namespace A235991

/-- `eq[A353494(n), A353495(n)]` -/
def P1635983238222202006.Spec : Prop :=
  ∀ n, (P1635983238222202006.a n : ℤ) = A235991 (n + 1)

end A235991

/-! ## A235991.P244511648381282475

`eq[1, A358773(n)+A358771(n)]`
-/

namespace A235991.P244511648381282475
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358773 n + A358771 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A235991.P244511648381282475

namespace A235991

/-- `eq[1, A358773(n)+A358771(n)]` -/
def P244511648381282475.Spec : Prop :=
  ∀ n, (P244511648381282475.a n : ℤ) = A235991 (n + 1)

end A235991

/-! ## A235991.P7176995832574585828

`∪[A067019(n+1), A016825(n)]`
-/

namespace A235991.P7176995832574585828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067019 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A235991.P7176995832574585828

namespace A235991

/-- `∪[A067019(n+1), A016825(n)]` -/
def P7176995832574585828.Spec : Prop :=
  ∀ n, (P7176995832574585828.a n : ℤ) = A235991 (n + 1)

end A235991

/-! ## A235991.P5855747187020769677

`∪[A359373(n+1), A016825(n)]`
-/

namespace A235991.P5855747187020769677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359373 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A235991.P5855747187020769677

namespace A235991

/-- `∪[A359373(n+1), A016825(n)]` -/
def P5855747187020769677.Spec : Prop :=
  ∀ n, (P5855747187020769677.a n : ℤ) = A235991 (n + 1)

end A235991

/-! ## A235991.P16700104695004031873

`∪[A067019(n+1), A008586(n)+2]`
-/

namespace A235991.P16700104695004031873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067019 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008586 n + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A235991.P16700104695004031873

namespace A235991

/-- `∪[A067019(n+1), A008586(n)+2]` -/
def P16700104695004031873.Spec : Prop :=
  ∀ n, (P16700104695004031873.a n : ℤ) = A235991 (n + 1)

end A235991

/-! ## A235991.P14367616915643330364

`filter[A368999(n+1), A166486(#)]`
-/

namespace A235991.P14367616915643330364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368999 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A166486 (f1 j).toNat = 1) n)

end

end A235991.P14367616915643330364

namespace A235991

/-- `filter[A368999(n+1), A166486(#)]` -/
def P14367616915643330364.Spec : Prop :=
  ∀ n, P14367616915643330364.a n = A235991 (n + 1)

end A235991

/-! ## A235991.P9793765420282569386

`filter[A368999(n+1), A168181(#)]`
-/

namespace A235991.P9793765420282569386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368999 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168181 (f1 j).toNat = 1) n)

end

end A235991.P9793765420282569386

namespace A235991

/-- `filter[A368999(n+1), A168181(#)]` -/
def P9793765420282569386.Spec : Prop :=
  ∀ n, P9793765420282569386.a n = A235991 (n + 1)

end A235991

/-! ## A235991.P11639166410797539598

`filter[A373376(n+1), A166486(#)]`
-/

namespace A235991.P11639166410797539598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373376 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A166486 (f1 j).toNat = 1) n)

end

end A235991.P11639166410797539598

namespace A235991

/-- `filter[A373376(n+1), A166486(#)]` -/
def P11639166410797539598.Spec : Prop :=
  ∀ n, P11639166410797539598.a n = A235991 (n + 1)

end A235991

/-! ## A235991.P1418814583382166850

`filter[A369003(n+1), A166486(#)]`
-/

namespace A235991.P1418814583382166850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369003 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A166486 (f1 j).toNat = 1) n)

end

end A235991.P1418814583382166850

namespace A235991

/-- `filter[A369003(n+1), A166486(#)]` -/
def P1418814583382166850.Spec : Prop :=
  ∀ n, P1418814583382166850.a n = A235991 (n + 1)

end A235991

/-! ## A235991.P18157246442564538170

`∩[A042968(n+1), A368999(n+1)]`
-/

namespace A235991.P18157246442564538170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042968 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368999 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A235991.P18157246442564538170

namespace A235991

/-- `∩[A042968(n+1), A368999(n+1)]` -/
def P18157246442564538170.Spec : Prop :=
  ∀ n, (P18157246442564538170.a n : ℤ) = A235991 (n + 1)

end A235991

/-! ## A235991.P4183808043887968187

`∩[A042968(n+1), A369003(n+1)]`
-/

namespace A235991.P4183808043887968187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042968 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369003 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A235991.P4183808043887968187

namespace A235991

/-- `∩[A042968(n+1), A369003(n+1)]` -/
def P4183808043887968187.Spec : Prop :=
  ∀ n, (P4183808043887968187.a n : ℤ) = A235991 (n + 1)

end A235991

/-! ## A235991.P13820903119341567159

`∩[A042968(n+1), A373376(n+1)]`
-/

namespace A235991.P13820903119341567159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042968 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373376 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A235991.P13820903119341567159

namespace A235991

/-- `∩[A042968(n+1), A373376(n+1)]` -/
def P13820903119341567159.Spec : Prop :=
  ∀ n, (P13820903119341567159.a n : ℤ) = A235991 (n + 1)

end A235991

/-! ## A235991.P4303044762589784384

`∩[A047592(n+1), A368999(n+1)]`
-/

namespace A235991.P4303044762589784384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047592 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368999 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A235991.P4303044762589784384

namespace A235991

/-- `∩[A047592(n+1), A368999(n+1)]` -/
def P4303044762589784384.Spec : Prop :=
  ∀ n, (P4303044762589784384.a n : ℤ) = A235991 (n + 1)

end A235991

/-! ## A235991.P13478556570763034817

`lt[0, A165560(n)]`
-/

namespace A235991.P13478556570763034817
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165560 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A235991.P13478556570763034817

namespace A235991

/-- `lt[0, A165560(n)]` -/
def P13478556570763034817.Spec : Prop :=
  ∀ n, (P13478556570763034817.a n : ℤ) = A235991 (n + 1)

end A235991

/-!
# A235992: Numbers with an even arithmetic derivative, cf. A003415.

The programs for A235992, the canonical program `A235992.P5177798210499836503` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A235992 has offset 1).

The definition of A235992 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A235992.P5407778926877138300

`lt[0, A358680(n)]`
-/

namespace A235992.P5407778926877138300
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358680 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A235992.P5407778926877138300

namespace A235992

/-- `lt[0, A358680(n)]` -/
def P5407778926877138300.Spec : Prop :=
  ∀ n, (P5407778926877138300.a n : ℤ) = A235992 (n + 1)

end A235992

/-! ## A235992.P5914797456353471713

`eq[0, A359820(3*n)]`
-/

namespace A235992.P5914797456353471713
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359820 (3 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A235992.P5914797456353471713

namespace A235992

/-- `eq[0, A359820(3*n)]` -/
def P5914797456353471713.Spec : Prop :=
  ∀ n, (P5914797456353471713.a n : ℤ) = A235992 (n + 1)

end A235992

/-! ## A235992.P966432930874876268

`eq[1, (1-A353493(n))²]`
-/

namespace A235992.P966432930874876268
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A353493 n) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A235992.P966432930874876268

namespace A235992

/-- `eq[1, (1-A353493(n))²]` -/
def P966432930874876268.Spec : Prop :=
  ∀ n, (P966432930874876268.a n : ℤ) = A235992 (n + 1)

end A235992

/-! ## A235992.P8022493219069440596

`eq[0, val(A328772(n)+3, 2)]`
-/

namespace A235992.P8022493219069440596
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A328772 n + 3).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A235992.P8022493219069440596

namespace A235992

/-- `eq[0, val(A328772(n)+3, 2)]` -/
def P8022493219069440596.Spec : Prop :=
  ∀ n, (P8022493219069440596.a n : ℤ) = A235992 (n + 1)

end A235992

/-! ## A235992.P13164424944325799525

`eq[1, A059841(A328772(n))]`
-/

namespace A235992.P13164424944325799525
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (A328772 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A235992.P13164424944325799525

namespace A235992

/-- `eq[1, A059841(A328772(n))]` -/
def P13164424944325799525.Spec : Prop :=
  ∀ n, (P13164424944325799525.a n : ℤ) = A235992 (n + 1)

end A235992

/-! ## A235992.P4638276731056430881

`eq[A358771(n), A358773(n)]`
-/

namespace A235992.P4638276731056430881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358771 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358773 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A235992.P4638276731056430881

namespace A235992

/-- `eq[A358771(n), A358773(n)]` -/
def P4638276731056430881.Spec : Prop :=
  ∀ n, (P4638276731056430881.a n : ℤ) = A235992 (n + 1)

end A235992

/-! ## A235992.P10082050789390643241

`eq[1, A353495(n)+A353494(n)]`
-/

namespace A235992.P10082050789390643241
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353495 n + A353494 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A235992.P10082050789390643241

namespace A235992

/-- `eq[1, A353495(n)+A353494(n)]` -/
def P10082050789390643241.Spec : Prop :=
  ∀ n, (P10082050789390643241.a n : ℤ) = A235992 (n + 1)

end A235992

/-! ## A235992.P5177798210499836503

`∪[A046337(n+1), A008586(n)]`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A235992

/-- `∪[A046337(n+1), A008586(n)]` -/
def P5177798210499836503.Spec : Prop :=
  ∀ n, (P5177798210499836503.a n : ℤ) = A235992 (n + 1)

theorem P5177798210499836503.correct : P5177798210499836503.Spec := by
  intro n
  simp only [A235992, Nat.add_sub_cancel]

end A235992

/-! ## A235992.P14138518514855170751

`∪[A345452(n+1), A008586(n)]`
-/

namespace A235992.P14138518514855170751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345452 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008586 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A235992.P14138518514855170751

namespace A235992

/-- `∪[A345452(n+1), A008586(n)]` -/
def P14138518514855170751.Spec : Prop :=
  ∀ n, (P14138518514855170751.a n : ℤ) = A235992 (n + 1)

end A235992

/-! ## A235992.P16468946138984180616

`∪[A368998(n+1), A008586(n)]`
-/

namespace A235992.P16468946138984180616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368998 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008586 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A235992.P16468946138984180616

namespace A235992

/-- `∪[A368998(n+1), A008586(n)]` -/
def P16468946138984180616.Spec : Prop :=
  ∀ n, (P16468946138984180616.a n : ℤ) = A235992 (n + 1)

end A235992

/-! ## A235992.P3563601310795781537

`∪[A368998(n+1), A008590(n)]`
-/

namespace A235992.P3563601310795781537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368998 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008590 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A235992.P3563601310795781537

namespace A235992

/-- `∪[A368998(n+1), A008590(n)]` -/
def P3563601310795781537.Spec : Prop :=
  ∀ n, (P3563601310795781537.a n : ℤ) = A235992 (n + 1)

end A235992

/-! ## A235992.P12837591828355266790

`∪[A369002(n+1), A008586(n)]`
-/

namespace A235992.P12837591828355266790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369002 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008586 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A235992.P12837591828355266790

namespace A235992

/-- `∪[A369002(n+1), A008586(n)]` -/
def P12837591828355266790.Spec : Prop :=
  ∀ n, (P12837591828355266790.a n : ℤ) = A235992 (n + 1)

end A235992

/-! ## A235992.P994044886689339468

`∪[A373375(n+1), A008586(n)]`
-/

namespace A235992.P994044886689339468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373375 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008586 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A235992.P994044886689339468

namespace A235992

/-- `∪[A373375(n+1), A008586(n)]` -/
def P994044886689339468.Spec : Prop :=
  ∀ n, (P994044886689339468.a n : ℤ) = A235992 (n + 1)

end A235992

/-! ## A235992.P9829310411217579710

`∪[A046337(n+1), A327864(n+1)]`
-/

namespace A235992.P9829310411217579710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046337 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327864 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A235992.P9829310411217579710

namespace A235992

/-- `∪[A046337(n+1), A327864(n+1)]` -/
def P9829310411217579710.Spec : Prop :=
  ∀ n, (P9829310411217579710.a n : ℤ) = A235992 (n + 1)

end A235992

/-! ## A235992.P7516032474756764104

`∪[A327862(n+1), A327864(n+1)]`
-/

namespace A235992.P7516032474756764104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327862 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327864 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A235992.P7516032474756764104

namespace A235992

/-- `∪[A327862(n+1), A327864(n+1)]` -/
def P7516032474756764104.Spec : Prop :=
  ∀ n, (P7516032474756764104.a n : ℤ) = A235992 (n + 1)

end A235992

/-! ## A235992.P11235120081841375305

`eq[A040007(n), A040007(A353493(n)+n)]`
-/

namespace A235992.P11235120081841375305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040007 (A353493 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A235992.P11235120081841375305

namespace A235992

/-- `eq[A040007(n), A040007(A353493(n)+n)]` -/
def P11235120081841375305.Spec : Prop :=
  ∀ n, (P11235120081841375305.a n : ℤ) = A235992 (n + 1)

end A235992

/-! ## A235992.P15593326566802739920

`filter[A042965(n+1), A358680(#)]`
-/

namespace A235992.P15593326566802739920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042965 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358680 (f1 j).toNat = 1) n)

end

end A235992.P15593326566802739920

namespace A235992

/-- `filter[A042965(n+1), A358680(#)]` -/
def P15593326566802739920.Spec : Prop :=
  ∀ n, P15593326566802739920.a n = A235992 (n + 1)

end A235992

/-! ## A235992.P5274978874701331487

`filter[A107750(n), A358680(#)]`
-/

namespace A235992.P5274978874701331487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107750 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358680 (f1 j).toNat = 1) n)

end

end A235992.P5274978874701331487

namespace A235992

/-- `filter[A107750(n), A358680(#)]` -/
def P5274978874701331487.Spec : Prop :=
  ∀ n, P5274978874701331487.a n = A235992 (n + 1)

end A235992

/-! ## A235992.P10571148973801044280

`filter[A263715(n+1), A358680(#)]`
-/

namespace A235992.P10571148973801044280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263715 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358680 (f1 j).toNat = 1) n)

end

end A235992.P10571148973801044280

namespace A235992

/-- `filter[A263715(n+1), A358680(#)]` -/
def P10571148973801044280.Spec : Prop :=
  ∀ n, P10571148973801044280.a n = A235992 (n + 1)

end A235992

/-! ## A235992.P6569206335609309066

`filter[A079298(n+1), A358680(#)]`
-/

namespace A235992.P6569206335609309066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079298 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358680 (f1 j).toNat = 1) n)

end

end A235992.P6569206335609309066

namespace A235992

/-- `filter[A079298(n+1), A358680(#)]` -/
def P6569206335609309066.Spec : Prop :=
  ∀ n, P6569206335609309066.a n = A235992 (n + 1)

end A235992

/-!
# A235993: Numbers having at least one anagram which is a square.

The programs for A235993, there is no canonical definition to state claims against.
-/

/-! ## A235993.P1215526504579778937

`eq[A040442(n²), A062892(n)]`
-/

namespace A235993.P1215526504579778937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040442 (n ^ 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062892 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A235993.P1215526504579778937

/-! ## A235993.P5925606637382354283

`eq[A062892(n), A298486(A000124(n))]`
-/

namespace A235993.P5925606637382354283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062892 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298486 (A000124 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A235993.P5925606637382354283

/-! ## A235993.P12781813401270109503

`lt[A010052(A178863(n+4)), A062892(n)]`
-/

namespace A235993.P12781813401270109503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (A178863 (n + 4)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062892 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A235993.P12781813401270109503

/-! ## A235993.P13364280580389965254

`eq[A001221(A325394(n+1)), A062892(n)]`
-/

namespace A235993.P13364280580389965254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A325394 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062892 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A235993.P13364280580389965254

/-! ## A235993.P2829526474252198335

`∩[A007936(n+1), A239215(n+1)]`
-/

namespace A235993.P2829526474252198335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007936 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239215 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A235993.P2829526474252198335

/-!
# A235994: Numbers having at least one anagram which is a cube.

The programs for A235994, there is no canonical definition to state claims against.
-/

/-! ## A235994.P1661942365283366943

`∩[A007939(n+1), A093110(n)]`
-/

namespace A235994.P1661942365283366943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007939 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093110 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A235994.P1661942365283366943

/-!
# A235996: Number of length n binary words that contain at least one pair of consecutive 0's followed by (at some point in the word) at least one pair of consecutive 1's.

The programs for A235996, the canonical program `A235996.P612755675873609379` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A235996 has offset 0).

The definition of A235996 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A235996.P612755675873609379

`2^n-∑[A208354(n)]`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A235996

/-- `2^n-∑[A208354(n)]` -/
def P612755675873609379.Spec : Prop :=
  ∀ n, P612755675873609379.a n = A235996 n

theorem P612755675873609379.correct : P612755675873609379.Spec := by
  intro n
  simp only [A235996]

end A235996

/-! ## A235996.P14660381732013584013

`2^n-A029907(n+1)`
-/

namespace A235996.P14660381732013584013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A029907 (n + 1)

end

end A235996.P14660381732013584013

namespace A235996

/-- `2^n-A029907(n+1)` -/
def P14660381732013584013.Spec : Prop :=
  ∀ n, P14660381732013584013.a n = A235996 n

end A235996

/-! ## A235996.P17859138452898438670

`A099036(n)-A055244(n)`
-/

namespace A235996.P17859138452898438670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099036 n - A055244 n

end

end A235996.P17859138452898438670

namespace A235996

/-- `A099036(n)-A055244(n)` -/
def P17859138452898438670.Spec : Prop :=
  ∀ n, P17859138452898438670.a n = A235996 n

end A235996

/-! ## A235996.P12330149540541512361

`A232580(n)-A006478(n)`
-/

namespace A235996.P12330149540541512361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232580 n - A006478 n

end

end A235996.P12330149540541512361

namespace A235996

/-- `A232580(n)-A006478(n)` -/
def P12330149540541512361.Spec : Prop :=
  ∀ n, P12330149540541512361.a n = A235996 n

end A235996

/-! ## A235996.P12592343488195459715

`A027934(n)-A001629(n+1)`
-/

namespace A235996.P12592343488195459715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027934 n - A001629 (n + 1)

end

end A235996.P12592343488195459715

namespace A235996

/-- `A027934(n)-A001629(n+1)` -/
def P12592343488195459715.Spec : Prop :=
  ∀ n, P12592343488195459715.a n = A235996 n

end A235996

/-! ## A235996.P2575150698624739753

`A000079(n)-A211228(2*n+1)`
-/

namespace A235996.P2575150698624739753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n - A211228 (2 * n + 1)

end

end A235996.P2575150698624739753

namespace A235996

/-- `A000079(n)-A211228(2*n+1)` -/
def P2575150698624739753.Spec : Prop :=
  ∀ n, P2575150698624739753.a n = A235996 n

end A235996

/-! ## A235996.P1683266463023458297

`A000079(n)-A029907(n)-Δ[A029907(n)]`
-/

namespace A235996.P1683266463023458297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029907 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n - A029907 n - (f1 (n + 1) - f1 n)

end

end A235996.P1683266463023458297

namespace A235996

/-- `A000079(n)-A029907(n)-Δ[A029907(n)]` -/
def P1683266463023458297.Spec : Prop :=
  ∀ n, P1683266463023458297.a n = A235996 n

end A235996

/-! ## A235996.P5343647409474906011

`A000079(n)-(A010049(n)+A010049(n+1))`
-/

namespace A235996.P5343647409474906011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n - (A010049 n + A010049 (n + 1))

end

end A235996.P5343647409474906011

namespace A235996

/-- `A000079(n)-(A010049(n)+A010049(n+1))` -/
def P5343647409474906011.Spec : Prop :=
  ∀ n, P5343647409474906011.a n = A235996 n

end A235996

/-! ## A235996.P4425468891051086088

`A000079(n)-(A001629(n+1)+A000045(n+1))`
-/

namespace A235996.P4425468891051086088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n - (A001629 (n + 1) + A000045 (n + 1))

end

end A235996.P4425468891051086088

namespace A235996

/-- `A000079(n)-(A001629(n+1)+A000045(n+1))` -/
def P4425468891051086088.Spec : Prop :=
  ∀ n, P4425468891051086088.a n = A235996 n

end A235996

/-! ## A235996.P13292514984758277082

`Δ[A000079(n)-∑[A029907(n)]]`
-/

namespace A235996.P13292514984758277082
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029907 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A235996.P13292514984758277082

namespace A235996

/-- `Δ[A000079(n)-∑[A029907(n)]]` -/
def P13292514984758277082.Spec : Prop :=
  ∀ n, P13292514984758277082.a n = A235996 n

end A235996

/-! ## A235996.P17020955506176137327

`A027934(n+1)-(A055244(n)+A027934(n))`
-/

namespace A235996.P17020955506176137327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027934 (n + 1) - (A055244 n + A027934 n)

end

end A235996.P17020955506176137327

namespace A235996

/-- `A027934(n+1)-(A055244(n)+A027934(n))` -/
def P17020955506176137327.Spec : Prop :=
  ∀ n, P17020955506176137327.a n = A235996 n

end A235996

/-! ## A235996.P9023668327520365330

`A000051(n+1)-(A029907(n+1)+A000051(n))`
-/

namespace A235996.P9023668327520365330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 (n + 1) - (A029907 (n + 1) + A000051 n)

end

end A235996.P9023668327520365330

namespace A235996

/-- `A000051(n+1)-(A029907(n+1)+A000051(n))` -/
def P9023668327520365330.Spec : Prop :=
  ∀ n, P9023668327520365330.a n = A235996 n

end A235996

/-!
# A235998: Triangle read by rows: T(n,k) is the number of compositions of n having k distinct parts (n>=1, 1<=k<=floor((sqrt(1+8*n)-1)/2)).

The programs for A235998, there is no canonical definition to state claims against.
-/

/-! ## A235998.P12792318345400194116

`A116608(n+1)/A235790(n+1)*A235999(n+1)`
-/

namespace A235998.P12792318345400194116
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A116608 (n + 1) : ℚ) / (A235790 (n + 1) : ℚ) * (A235999 (n + 1) : ℚ)

end

end A235998.P12792318345400194116

/-!
# A235999: Triangle read by rows: T(n,k) = 2^k*A235998(n,k), n>=1, k>=1.

The programs for A235999, there is no canonical definition to state claims against.
-/

/-! ## A235999.P932904935654978067

`A235790(n+1)/A116608(n+1)*A235998(n+1)`
-/

namespace A235999.P932904935654978067
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A235790 (n + 1) : ℚ) / (A116608 (n + 1) : ℚ) * (A235998 (n + 1) : ℚ)

end

end A235999.P932904935654978067

