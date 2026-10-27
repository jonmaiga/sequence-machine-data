import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C014
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C037
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C002
import Seq.B001.C006
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C002
import Seq.B003.C005
import Seq.B003.C006
import Seq.B004.C000
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.Opaque.C000
import Seq.Opaque.C001
import Seq.Opaque.C003
import Seq.Opaque.C005
import Seq.Opaque.C006
import Seq.Opaque.C007
import Seq.Opaque.C008
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

/-!
# A177500: Divisors of 8064.

The programs for A177500, there is no canonical definition to state claims against.
-/

/-! ## A177500.P4852438084378013698

`eq[n, gcd(n, A192829(n+3))]`
-/

namespace A177500.P4852438084378013698
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A192829 (n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A177500.P4852438084378013698

/-! ## A177500.P18129722230083412461

`record[gcd(A032780(n+2), n+1)]`
-/

namespace A177500.P18129722230083412461
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A032780 (n + 2)) (n + 1 : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A177500.P18129722230083412461

/-! ## A177500.P3332959333049347742

`eq[lcm(n, A032780(n+1)), A032780(n+1)]`
-/

namespace A177500.P3332959333049347742
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (A032780 (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032780 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A177500.P3332959333049347742

/-! ## A177500.P2615739947969059688

`record[gcd(A008619(n), A168194(2*n))]`
-/

namespace A177500.P2615739947969059688
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008619 n) (A168194 (2 * n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A177500.P2615739947969059688

/-! ## A177500.P2147860942123478382

`∩[A108319(n+1), A333762(n+1)]`
-/

namespace A177500.P2147860942123478382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333762 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A177500.P2147860942123478382

/-!
# A177501: The number of entries in row n of table A174625 which are multiples of n.

The programs for A177501, there is no canonical definition to state claims against.
-/

/-! ## A177501.P16732678142673436511

`A178101(n+1)+A004525(Δ[A002088(n)])`
-/

namespace A177501.P16732678142673436511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178101 (n + 1) + A004525 (f1 (n + 1) - f1 n).toNat

end

end A177501.P16732678142673436511

/-! ## A177501.P13878533658300405305

`A178101(n+1)+A004525(Δ[A005728(n)])`
-/

namespace A177501.P13878533658300405305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178101 (n + 1) + A004525 (f1 (n + 1) - f1 n).toNat

end

end A177501.P13878533658300405305

/-! ## A177501.P3612555799054657415

`A178101(n+1)+A004525(A000010(n+1))`
-/

namespace A177501.P3612555799054657415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178101 (n + 1) + A004525 (A000010 (n + 1)).toNat

end

end A177501.P3612555799054657415

/-! ## A177501.P7537870266765189152

`A178101(n+1)+A004525(sqrt(A127473(n+1)))`
-/

namespace A177501.P7537870266765189152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178101 (n + 1) + A004525 (SequenceMachineLib.roundAway (Real.sqrt (A127473 (n + 1) : ℝ))).toNat

end

end A177501.P7537870266765189152

/-! ## A177501.P10820857179862563822

`A316388(sqrt(A127473(n+1)))+A178101(n+1)`
-/

namespace A177501.P10820857179862563822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316388 (SequenceMachineLib.roundAway (Real.sqrt (A127473 (n + 1) : ℝ))).toNat + A178101 (n + 1)

end

end A177501.P10820857179862563822

/-! ## A177501.P10984735185554168532

`A178101(n+1)+A004525(A349137(2*n+1))`
-/

namespace A177501.P10984735185554168532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178101 (n + 1) + A004525 (A349137 (2 * n + 1)).toNat

end

end A177501.P10984735185554168532

/-!
# A177502: Prime numbers p such that (p-2)! + 1 is prime.

The programs for A177502, there is no canonical definition to state claims against.
-/

/-! ## A177502.P6095666643559456840

`p?[A002981(n+1)+2]`
-/

namespace A177502.P6095666643559456840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002981 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A177502.P6095666643559456840

/-! ## A177502.P6523789361937806325

`record[A020639(A002981(n+1)+2)]`
-/

namespace A177502.P6523789361937806325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A002981 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A177502.P6523789361937806325

/-! ## A177502.P14540133870221751119

`p?[eq[1, A033932(n)]+2]`
-/

namespace A177502.P14540133870221751119
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033932 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A177502.P14540133870221751119

/-!
# A177503: Primes of the form (44*10^n+1)/9.

The programs for A177503, there is no canonical definition to state claims against.
-/

/-! ## A177503.P15266557543119902713

`A328333(2*A103000(n+1)+1)`
-/

namespace A177503.P15266557543119902713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328333 (2 * A103000 (n + 1) + 1).toNat

end

end A177503.P15266557543119902713

/-!
# A177505: Base 2i representation of n reinterpreted in base 4.

The programs for A177505, there is no canonical definition to state claims against.
-/

/-! ## A177505.P10073873475069649500

`A102489(A007608(n))`
-/

namespace A177505.P10073873475069649500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102489 (A007608 n).toNat

end

end A177505.P10073873475069649500

/-! ## A177505.P7383043841200302252

`A006015(A066321(n))/2`
-/

namespace A177505.P7383043841200302252
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006015 (A066321 n).toNat : ℚ) / 2

end

end A177505.P7383043841200302252

/-! ## A177505.P4876549090531692810

`A005044((or(3, n)-2)!)+n`
-/

namespace A177505.P4876549090531692810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005044 (Nat.factorial ((Nat.lor 3 n : ℤ) - 2).toNat) + (n : ℤ)

end

end A177505.P4876549090531692810

/-! ## A177505.P13906903700625879433

`A290447(A286863(n))+n`
-/

namespace A177505.P13906903700625879433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290447 (A286863 n).toNat + (n : ℤ)

end

end A177505.P13906903700625879433

/-!
# A177506: Primes of the form 4*10^n+1.

The programs for A177506, there is no canonical definition to state claims against.
-/

/-! ## A177506.P13360990772513247395

`A199684(A133201(n))`
-/

namespace A177506.P13360990772513247395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199684 (A133201 n).toNat

end

end A177506.P13360990772513247395

/-!
# A177507: Primes of the form 4*10^n+3.

The programs for A177507, there is no canonical definition to state claims against.
-/

/-! ## A177507.P10334251257718349648

`A108817(lt[4, A275734(n)])`
-/

namespace A177507.P10334251257718349648
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275734 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108817 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A177507.P10334251257718349648

/-!
# A177508: Primes of the form 2*10^k-7.

The programs for A177508, there is no canonical definition to state claims against.
-/

/-! ## A177508.P7996795155928063489

`A086940(A102946(n+1))-3`
-/

namespace A177508.P7996795155928063489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086940 (A102946 (n + 1)).toNat - 3

end

end A177508.P7996795155928063489

/-!
# A177509: Primes of the form (4*10^n+11)/3.

The programs for A177509, there is no canonical definition to state claims against.
-/

/-! ## A177509.P7753019662819500070

`p?[∑[10*a(n-1)]]` with `a(0)=5, a(1)=12`
-/

namespace A177509.P7753019662819500070
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [5, 12] fun n f2 =>
  10 * f2 (n - 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A177509.P7753019662819500070

/-!
# A177510: Number of compositions (p0, p1, p2, ...) of n with pi - p0 <= i and pi >= p0.

The programs for A177510, there is no canonical definition to state claims against.
-/

/-! ## A177510.P7860982320775818922

`A008930(n-1)+a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A177510.P7860982320775818922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A008930 (n - 1) + a (n - 1)

end

end A177510.P7860982320775818922

/-! ## A177510.P13804192073495192400

`A352525(A006463(n)+1)`
-/

namespace A177510.P13804192073495192400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352525 (A006463 n + 1).toNat

end

end A177510.P13804192073495192400

/-! ## A177510.P1836756538940531030

`C(2, n+2)+∑[A008930(n)]-A008930(n)`
-/

namespace A177510.P1836756538940531030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008930 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose 2 (n + 2) : ℤ) + (∑ j ∈ Finset.range (n + 1), f1 j - A008930 n)

end

end A177510.P1836756538940531030

/-! ## A177510.P12185260658045581338

`A000007(n)+∑[A008930(n)]-A008930(n)`
-/

namespace A177510.P12185260658045581338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008930 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (∑ j ∈ Finset.range (n + 1), f1 j - A008930 n)

end

end A177510.P12185260658045581338

/-! ## A177510.P16531652766697388183

`∑[A008930(n)]-A008930(n)%A004413(n)`
-/

namespace A177510.P16531652766697388183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008930 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - Int.tmod (A008930 n) (A004413 n)

end

end A177510.P16531652766697388183

/-!
# A177512: A053735-deficient numbers.

The programs for A177512, there is no canonical definition to state claims against.
-/

/-! ## A177512.P2352051207309989629

`record[A053585(A001318(n+1))]`
-/

namespace A177512.P2352051207309989629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053585 (A001318 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A177512.P2352051207309989629

/-! ## A177512.P4822376949230307458

`eq[A004526(A304442(3*n)), A304442(n)]`
-/

namespace A177512.P4822376949230307458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A304442 (3 * n)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304442 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A177512.P4822376949230307458

/-! ## A177512.P3788805179388247283

`eq[A224226(n), A326852(n)]`
-/

namespace A177512.P3788805179388247283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224226 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326852 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A177512.P3788805179388247283

/-! ## A177512.P12511782169788703008

`eq[A326843(n), A356122(n)]`
-/

namespace A177512.P12511782169788703008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326843 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356122 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A177512.P12511782169788703008

/-! ## A177512.P16832368102846646480

`record[A000015(A352774(n+1))]`
-/

namespace A177512.P16832368102846646480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000015 (A352774 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A177512.P16832368102846646480

/-!
# A177516: Odd numbers m = p*q such that p and q are distinct primes and (p-1) divides (q-1).

The programs for A177516, there is no canonical definition to state claims against.
-/

/-! ## A177516.P437845304793882637

`filter[A300117(n+1), A064911(#)]`
-/

namespace A177516.P437845304793882637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300117 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A177516.P437845304793882637

/-! ## A177516.P10041117986667530058

`filter[A300117(n+1), A101040(#)]`
-/

namespace A177516.P10041117986667530058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300117 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101040 (f1 j).toNat = 1) n)

end

end A177516.P10041117986667530058

/-! ## A177516.P13330414286396523464

`filter[A300117(n+1), A123927(#)]`
-/

namespace A177516.P13330414286396523464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300117 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A123927 (f1 j).toNat = 1) n)

end

end A177516.P13330414286396523464

/-! ## A177516.P7328522211311334045

`filter[A300117(n+1), A280710(#)]`
-/

namespace A177516.P7328522211311334045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300117 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A280710 (f1 j).toNat = 1) n)

end

end A177516.P7328522211311334045

/-! ## A177516.P1659892034418130973

`filter[A300117(n+1), A340370(#)]`
-/

namespace A177516.P1659892034418130973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300117 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340370 (f1 j).toNat = 1) n)

end

end A177516.P1659892034418130973

/-! ## A177516.P8966392419626509314

`filter[A300117(n+1), A353471(#)]`
-/

namespace A177516.P8966392419626509314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300117 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353471 (f1 j).toNat = 1) n)

end

end A177516.P8966392419626509314

/-! ## A177516.P2289763745427625471

`filter[A300117(n+1), A353480(#)]`
-/

namespace A177516.P2289763745427625471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300117 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353480 (f1 j).toNat = 1) n)

end

end A177516.P2289763745427625471

/-! ## A177516.P10513113067840788756

`filter[A300117(n+1), A353481(#)]`
-/

namespace A177516.P10513113067840788756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300117 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353481 (f1 j).toNat = 1) n)

end

end A177516.P10513113067840788756

/-! ## A177516.P13448237605272252796

`filter[A300117(n+1), A353676(#)]`
-/

namespace A177516.P13448237605272252796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300117 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353676 (f1 j).toNat = 1) n)

end

end A177516.P13448237605272252796

/-! ## A177516.P10869673938406947896

`filter[A300117(n+1), A353788(#)]`
-/

namespace A177516.P10869673938406947896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300117 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353788 (f1 j).toNat = 1) n)

end

end A177516.P10869673938406947896

/-! ## A177516.P2189447770271415722

`filter[A300117(n+1), A353799(#)]`
-/

namespace A177516.P2189447770271415722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300117 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353799 (f1 j).toNat = 1) n)

end

end A177516.P2189447770271415722

/-! ## A177516.P17050262957114804755

`filter[A300117(n+1), A354927(#)]`
-/

namespace A177516.P17050262957114804755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300117 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354927 (f1 j).toNat = 1) n)

end

end A177516.P17050262957114804755

/-! ## A177516.P2536860431676044162

`∩[A001358(n+1), A300117(n+1)]`
-/

namespace A177516.P2536860431676044162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300117 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A177516.P2536860431676044162

/-! ## A177516.P5671150612190927808

`∩[A046315(n+1), A276818(n+1)]`
-/

namespace A177516.P5671150612190927808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046315 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276818 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A177516.P5671150612190927808

/-! ## A177516.P7394343346876202050

`∩[A006881(n+1), A300117(n+1)]`
-/

namespace A177516.P7394343346876202050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006881 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300117 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A177516.P7394343346876202050

/-! ## A177516.P14392124168807514797

`∩[A068993(n+1), A300117(n+1)]`
-/

namespace A177516.P14392124168807514797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068993 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300117 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A177516.P14392124168807514797

/-! ## A177516.P9550510890536769915

`∩[A030513(n+1), A300117(n+1)]`
-/

namespace A177516.P9550510890536769915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030513 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300117 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A177516.P9550510890536769915

/-! ## A177516.P5800346562648446410

`∩[A007422(n+1), A300117(n+1)]`
-/

namespace A177516.P5800346562648446410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007422 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300117 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A177516.P5800346562648446410

/-! ## A177516.P4725557875691083426

`∩[A085155(n+1), A300117(n+1)]`
-/

namespace A177516.P4725557875691083426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085155 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300117 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A177516.P4725557875691083426

/-! ## A177516.P14188505888928810101

`∩[A065985(n+1), A300117(n+1)]`
-/

namespace A177516.P14188505888928810101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065985 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300117 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A177516.P14188505888928810101

/-!
# A177517: Triangle T(n,k) read by rows defined by recurrence T(n,1)=A000007(n-1) and T(n,k) = sum_{i=1..k-1} T(n-i,k-1) if k>1.

The programs for A177517, there is no canonical definition to state claims against.
-/

/-! ## A177517.P3162723058707197950

`A257564(A137252(n))`
-/

namespace A177517.P3162723058707197950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257564 (A137252 n).toNat

end

end A177517.P3162723058707197950

/-! ## A177517.P16938607948369270767

`A005811(A137252(n)^A000034(n))`
-/

namespace A177517.P16938607948369270767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 (SequenceMachineLib.roundAway ((A137252 n : ℚ) ^ (A000034 n : ℤ))).toNat

end

end A177517.P16938607948369270767

/-! ## A177517.P8022317285485102502

`A005811(A137252(n)^A007875(n+1))`
-/

namespace A177517.P8022317285485102502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 (SequenceMachineLib.roundAway ((A137252 n : ℚ) ^ (A007875 (n + 1) : ℤ))).toNat

end

end A177517.P8022317285485102502

/-! ## A177517.P1500314070090677874

`A005811(A137252(n)^A187279(n+1))`
-/

namespace A177517.P1500314070090677874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 (SequenceMachineLib.roundAway ((A137252 n : ℚ) ^ (A187279 (n + 1) : ℤ))).toNat

end

end A177517.P1500314070090677874

/-! ## A177517.P3436923806086078023

`C(A227819(n+1), A292375(A215561(n)))`
-/

namespace A177517.P3436923806086078023
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A227819 (n + 1)).toNat (A292375 (A215561 n).toNat).toNat

end

end A177517.P3436923806086078023

/-!
# A177518: Number of permutations of 1..n avoiding adjacent step pattern up, down, down, down.

The programs for A177518, there is no canonical definition to state claims against.
-/

/-! ## A177518.P6799989720224195258

`A242820(A008619(∑[A008619(n)]))`
-/

namespace A177518.P6799989720224195258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242820 (A008619 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A177518.P6799989720224195258

/-! ## A177518.P14577993724562263998

`A242820(∑[A065033(A065033(n))])`
-/

namespace A177518.P14577993724562263998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A065033 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242820 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A177518.P14577993724562263998

/-! ## A177518.P8522073721400452848

`A242784(eq[9, A193592(n)])`
-/

namespace A177518.P8522073721400452848
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242784 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A177518.P8522073721400452848

/-! ## A177518.P13803136839964454136

`A242784(A000124(n+6)+4*(n+6))`
-/

namespace A177518.P13803136839964454136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242784 (A000124 (n + 6) + (4 * (n + 6) : ℤ)).toNat

end

end A177518.P13803136839964454136

/-! ## A177518.P6975581313667364705

`record[A242820(n)%A218350(n+1)]`
-/

namespace A177518.P6975581313667364705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A242820 n) (A218350 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A177518.P6975581313667364705

/-!
# A177519: Number of permutations of 1..n avoiding adjacent step pattern up, down, down, up.

The programs for A177519, there is no canonical definition to state claims against.
-/

/-! ## A177519.P5528256306114399461

`A230695(A008750(n))`
-/

namespace A177519.P5528256306114399461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230695 (A008750 n).toNat

end

end A177519.P5528256306114399461

/-! ## A177519.P6061437367016785460

`A242784(A055999(n+7)-4)`
-/

namespace A177519.P6061437367016785460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242784 (A055999 (n + 7) - 4).toNat

end

end A177519.P6061437367016785460

/-! ## A177519.P1245378920845887424

`A242784(A052905(n+7)-5)`
-/

namespace A177519.P1245378920845887424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242784 (A052905 (n + 7) - 5).toNat

end

end A177519.P1245378920845887424

/-! ## A177519.P3444914930901153950

`A242784(A034856(n+9)-8)`
-/

namespace A177519.P3444914930901153950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242784 (A034856 (n + 9) - 8).toNat

end

end A177519.P3444914930901153950

/-! ## A177519.P3007662686169132050

`A242784(A000096(n+9)-9)`
-/

namespace A177519.P3007662686169132050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242784 (A000096 (n + 9) - 9).toNat

end

end A177519.P3007662686169132050

/-! ## A177519.P15992498687902450052

`A242784(A253145(n+9)-10)`
-/

namespace A177519.P15992498687902450052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242784 (A253145 (n + 9) - 10).toNat

end

end A177519.P15992498687902450052

/-! ## A177519.P9472478490510814668

`A242784(2*n+A161680(n+9)+9)`
-/

namespace A177519.P9472478490510814668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242784 ((2 * n : ℤ) + (A161680 (n + 9) + 9)).toNat

end

end A177519.P9472478490510814668

/-! ## A177519.P9951409207699703470

`A242784(A023443(n)+A000124(n+9))`
-/

namespace A177519.P9951409207699703470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242784 (A023443 n + A000124 (n + 9)).toNat

end

end A177519.P9951409207699703470

/-!
# A177520: Number of permutations of 1..n avoiding adjacent step pattern up, down, up, down.

The programs for A177520, there is no canonical definition to state claims against.
-/

/-! ## A177520.P9397056271628360975

`A242784(eq[10, A025581(n)])`
-/

namespace A177520.P9397056271628360975
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242784 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A177520.P9397056271628360975

/-! ## A177520.P7026174882389552470

`A242784(eq[11, A193739(n)])`
-/

namespace A177520.P7026174882389552470
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242784 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A177520.P7026174882389552470

/-! ## A177520.P11162705915557391505

`A242784(eq[12, A116598(n)])`
-/

namespace A177520.P11162705915557391505
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116598 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242784 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A177520.P11162705915557391505

/-! ## A177520.P3708463973720436184

`A242784(eq[21, A099375(n)])`
-/

namespace A177520.P3708463973720436184
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  21

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242784 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A177520.P3708463973720436184

/-! ## A177520.P7110158609386863766

`A242784(eq[11, A004736(n+1)])`
-/

namespace A177520.P7110158609386863766
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242784 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A177520.P7110158609386863766

/-!
# A177521: Number of permutations of 1..n avoiding adjacent step pattern up, down, up, up.

The programs for A177521, there is no canonical definition to state claims against.
-/

/-! ## A177521.P15435306444500346977

`A242784(eq[11, A025581(n)])`
-/

namespace A177521.P15435306444500346977
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242784 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A177521.P15435306444500346977

/-! ## A177521.P15149293204862857478

`A242784(eq[12, A193739(n)])`
-/

namespace A177521.P15149293204862857478
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242784 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A177521.P15149293204862857478

/-! ## A177521.P12583908647618841369

`A242784(eq[14, A116598(n)])`
-/

namespace A177521.P12583908647618841369
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  14

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116598 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242784 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A177521.P12583908647618841369

/-! ## A177521.P4579560827228293162

`A242784(eq[12, A004736(n+1)])`
-/

namespace A177521.P4579560827228293162
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242784 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A177521.P4579560827228293162

/-! ## A177521.P2858805263828044120

`A242784(eq[27, A099375(n)])`
-/

namespace A177521.P2858805263828044120
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  27

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242784 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A177521.P2858805263828044120

/-!
# A177522: Number of permutations of 1..n avoiding adjacent step pattern up, up, down, down.

The programs for A177522, there is no canonical definition to state claims against.
-/

/-! ## A177522.P6339976444359822865

`A242784(eq[12, A025581(n)])`
-/

namespace A177522.P6339976444359822865
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242784 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A177522.P6339976444359822865

/-! ## A177522.P13749438650624918546

`A242784(eq[13, A193739(n)])`
-/

namespace A177522.P13749438650624918546
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242784 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A177522.P13749438650624918546

/-! ## A177522.P3653843853296568392

`A242784(eq[25, A099375(n)])`
-/

namespace A177522.P3653843853296568392
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  25

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242784 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A177522.P3653843853296568392

/-! ## A177522.P10325291731916956535

`A242784(eq[13, A004736(n+1)])`
-/

namespace A177522.P10325291731916956535
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242784 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A177522.P10325291731916956535

/-! ## A177522.P18106871307289896934

`A242784(A000217(n+12)+n)`
-/

namespace A177522.P18106871307289896934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242784 (A000217 (n + 12) + (n : ℤ)).toNat

end

end A177522.P18106871307289896934

/-!
# A177523: Number of permutations of 1..n avoiding adjacent step pattern up, up, up, up.

The programs for A177523, there is no canonical definition to state claims against.
-/

/-! ## A177523.P748931921506304342

`A117158(n)+A000434(A028310(n))`
-/

namespace A177523.P748931921506304342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117158 n + A000434 (A028310 n).toNat

end

end A177523.P748931921506304342

/-! ## A177523.P2001134503841805887

`A117158(n)+A000434(A233583(n+1))`
-/

namespace A177523.P2001134503841805887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117158 n + A000434 (A233583 (n + 1)).toNat

end

end A177523.P2001134503841805887

/-! ## A177523.P18016515040607869235

`A117158(n)+A000434(A000007(n)+n)`
-/

namespace A177523.P18016515040607869235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117158 n + A000434 (A000007 n + (n : ℤ)).toNat

end

end A177523.P18016515040607869235

/-! ## A177523.P12443283694343234982

`A242784(A155212(n+4))+A000434(A028310(n))`
-/

namespace A177523.P12443283694343234982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242784 (A155212 (n + 4)).toNat + A000434 (A028310 n).toNat

end

end A177523.P12443283694343234982

/-! ## A177523.P10693940399932244185

`A242784(A155212(n+4))+A000434(A233583(n+1))`
-/

namespace A177523.P10693940399932244185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242784 (A155212 (n + 4)).toNat + A000434 (A233583 (n + 1)).toNat

end

end A177523.P10693940399932244185

/-! ## A177523.P3857192666714628213

`A177533(n)-A000456(A028310(n))`
-/

namespace A177523.P3857192666714628213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177533 n - A000456 (A028310 n).toNat

end

end A177523.P3857192666714628213

/-! ## A177523.P15785549080391279818

`A177533(n)-A000456(A233583(n+1))`
-/

namespace A177523.P15785549080391279818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177533 n - A000456 (A233583 (n + 1)).toNat

end

end A177523.P15785549080391279818

/-! ## A177523.P5430970321901511226

`A177533(n)-A000456(A000007(n)+n)`
-/

namespace A177523.P5430970321901511226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177533 n - A000456 (A000007 n + (n : ℤ)).toNat

end

end A177523.P5430970321901511226

/-!
# A177524: Number of permutations of {1,...,n} avoiding adjacent step pattern up, down, down, down, down.

The programs for A177524, there is no canonical definition to state claims against.
-/

/-! ## A177524.P7215397298241437800

`A242784(eq[16, A025581(n)])`
-/

namespace A177524.P7215397298241437800
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242784 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A177524.P7215397298241437800

/-! ## A177524.P2144539979413977917

`A266642(A029588(n))+A177523(n)`
-/

namespace A177524.P2144539979413977917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266642 (A029588 n).toNat + A177523 n

end

end A177524.P2144539979413977917

/-! ## A177524.P11369681261297779666

`A177523(A029966(n+1))+A029588(n)`
-/

namespace A177524.P11369681261297779666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177523 (A029966 (n + 1)).toNat + A029588 n

end

end A177524.P11369681261297779666

/-! ## A177524.P7721636879369137131

`A266642(A029572(n)/24)+A177523(n)`
-/

namespace A177524.P7721636879369137131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266642 (SequenceMachineLib.roundAway ((A029572 n : ℚ) / 24)).toNat + A177523 n

end

end A177524.P7721636879369137131

/-! ## A177524.P6089861105774653029

`A177523(A029966(n+1))+A029572(n)/24`
-/

namespace A177524.P6089861105774653029
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A177523 (A029966 (n + 1)).toNat : ℚ) + (A029572 n : ℚ) / 24

end

end A177524.P6089861105774653029

/-!
# A177525: Number of permutations of {1,...,n} avoiding adjacent step pattern up, down, down, down, up.

The programs for A177525, there is no canonical definition to state claims against.
-/

/-! ## A177525.P8315311693711936413

`A177532(A171679(n))`
-/

namespace A177525.P8315311693711936413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177532 (A171679 n).toNat

end

end A177525.P8315311693711936413

/-! ## A177525.P6116401421984838830

`A177532(A029965(n+1))`
-/

namespace A177525.P6116401421984838830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177532 (A029965 (n + 1)).toNat

end

end A177525.P6116401421984838830

/-! ## A177525.P16875816271230490635

`A177532(A303167(n+1))`
-/

namespace A177525.P16875816271230490635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177532 (A303167 (n + 1)).toNat

end

end A177525.P16875816271230490635

/-! ## A177525.P8529337806304982405

`A177532(n)%A176692(n)`
-/

namespace A177525.P8529337806304982405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A177532 n) (A176692 n)

end

end A177525.P8529337806304982405

/-!
# A177526: Number of permutations of {1,...,n} avoiding adjacent step pattern up, down, down, up, down.

The programs for A177526, there is no canonical definition to state claims against.
-/

/-! ## A177526.P8260428811628467246

`A001281(A177529(n)+A177525(n))`
-/

namespace A177526.P8260428811628467246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A177529 n + A177525 n).toNat

end

end A177526.P8260428811628467246

/-! ## A177526.P9061178912555369262

`A001281(A177532(n)+A177529(n))`
-/

namespace A177526.P9061178912555369262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A177532 n + A177529 n).toNat

end

end A177526.P9061178912555369262

/-! ## A177526.P12245264446136404448

`A004525(A177529(n)+A177525(n))`
-/

namespace A177526.P12245264446136404448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A177529 n + A177525 n).toNat

end

end A177526.P12245264446136404448

/-! ## A177526.P14076372098082256201

`A004526(A177529(n)+A177525(n))`
-/

namespace A177526.P14076372098082256201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A177529 n + A177525 n).toNat

end

end A177526.P14076372098082256201

/-!
# A177527: Number of permutations of {1,...,n} avoiding adjacent step pattern up, down, down, up, up.

The programs for A177527, there is no canonical definition to state claims against.
-/

/-! ## A177527.P14208406881726521826

`A130372(A177533(n))`
-/

namespace A177527.P14208406881726521826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130372 (A177533 n).toNat

end

end A177527.P14208406881726521826

/-! ## A177527.P10255286365023412508

`A008621(A056232(n!))`
-/

namespace A177527.P10255286365023412508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (A056232 (Nat.factorial n)).toNat

end

end A177527.P10255286365023412508

/-! ## A177527.P8629817362702707931

`A072747(3*A116485(n))`
-/

namespace A177527.P8629817362702707931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072747 (3 * A116485 n).toNat

end

end A177527.P8629817362702707931

/-!
# A177528: Number of permutations of {1,...,n} avoiding adjacent step pattern up, down, up, down, down.

The programs for A177528, there is no canonical definition to state claims against.
-/

/-! ## A177528.P7150123697494208871

`A383278(A088714(n)+1)`
-/

namespace A177528.P7150123697494208871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383278 (A088714 n + 1).toNat

end

end A177528.P7150123697494208871

/-! ## A177528.P11148882485174987006

`A214611(n^A060128(n))`
-/

namespace A177528.P11148882485174987006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214611 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A060128 n : ℤ))).toNat

end

end A177528.P11148882485174987006

/-! ## A177528.P2016094289945524047

`n!-A185044(A005355(n))`
-/

namespace A177528.P2016094289945524047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) - A185044 (A005355 n).toNat

end

end A177528.P2016094289945524047

/-!
# A177529: Number of permutations of {1,...,n} avoiding adjacent step pattern up, down, up, down, up.

The programs for A177529, there is no canonical definition to state claims against.
-/

/-! ## A177529.P16734262778808402455

`A004277(A177526(n))-A177525(n)`
-/

namespace A177529.P16734262778808402455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A177526 n).toNat - A177525 n

end

end A177529.P16734262778808402455

/-! ## A177529.P5582442543186165931

`A004277(A177526(n))-A177532(n)`
-/

namespace A177529.P5582442543186165931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A177526 n).toNat - A177532 n

end

end A177529.P5582442543186165931

/-! ## A177529.P14182934091869651211

`A138398(A134955(n))`
-/

namespace A177529.P14182934091869651211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138398 (A134955 n).toNat

end

end A177529.P14182934091869651211

/-!
# A177530: Number of permutations of {1,...,n} avoiding adjacent step pattern up, down, up, up, up.

The programs for A177530, there is no canonical definition to state claims against.
-/

/-! ## A177530.P11937140540167887879

`n!-A185284(n²)`
-/

namespace A177530.P11937140540167887879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) - A185284 (n ^ 2)

end

end A177530.P11937140540167887879

/-! ## A177530.P3299764833075881826

`A214701(char[5]+n!)+char[6]`
-/

namespace A177530.P3299764833075881826
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214701 ((if ∃ j, f1 j = n then 1 else 0) + Nat.factorial n) + ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A177530.P3299764833075881826

/-! ## A177530.P12968531794622899092

`A000142(n)-A185284(n²)`
-/

namespace A177530.P12968531794622899092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n - A185284 (n ^ 2)

end

end A177530.P12968531794622899092

/-!
# A177531: Number of permutations of {1,...,n} avoiding adjacent step pattern up, up, down, down, down.

The programs for A177531, there is no canonical definition to state claims against.
-/

/-! ## A177531.P5644645418623552427

`A005843(A177524(n))-n!`
-/

namespace A177531.P5644645418623552427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A177524 n).toNat - (Nat.factorial n : ℤ)

end

end A177531.P5644645418623552427

/-! ## A177531.P13533696861784542985

`A004526(A177533(n)+A177525(n))`
-/

namespace A177531.P13533696861784542985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A177533 n + A177525 n).toNat

end

end A177531.P13533696861784542985

/-! ## A177531.P14521897264974635301

`A004526(A177533(n)+A177532(n))`
-/

namespace A177531.P14521897264974635301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A177533 n + A177532 n).toNat

end

end A177531.P14521897264974635301

/-! ## A177531.P18128088192237809820

`A175126(A177533(n)+A177525(n))`
-/

namespace A177531.P18128088192237809820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175126 (A177533 n + A177525 n).toNat

end

end A177531.P18128088192237809820

/-!
# A177533: Number of permutations of 1..n avoiding adjacent step pattern up, up, up, up, up.

The programs for A177533, there is no canonical definition to state claims against.
-/

/-! ## A177533.P16473319844284838954

`A177523(n)+A000456(A028310(n))`
-/

namespace A177533.P16473319844284838954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177523 n + A000456 (A028310 n).toNat

end

end A177533.P16473319844284838954

/-! ## A177533.P12863340533725154748

`A177553(n)-A000467(A028310(n))`
-/

namespace A177533.P12863340533725154748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177553 n - A000467 (A028310 n).toNat

end

end A177533.P12863340533725154748

/-! ## A177533.P9953959886968054053

`A177523(n)+A000456(A233583(n+1))`
-/

namespace A177533.P9953959886968054053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177523 n + A000456 (A233583 (n + 1)).toNat

end

end A177533.P9953959886968054053

/-! ## A177533.P2323729631567151476

`A177523(n)+A000456(A065033(2*n))`
-/

namespace A177533.P2323729631567151476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177523 n + A000456 (A065033 (2 * n)).toNat

end

end A177533.P2323729631567151476

/-! ## A177533.P8432722190315998770

`A177523(n)+A000456(A000007(n)+n)`
-/

namespace A177533.P8432722190315998770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177523 n + A000456 (A000007 n + (n : ℤ)).toNat

end

end A177533.P8432722190315998770

/-! ## A177533.P7096841285321676877

`A177523(n)+A000456(A003056(∑[n]+1))`
-/

namespace A177533.P7096841285321676877
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177523 n + A000456 (A003056 (∑ j ∈ Finset.range (n + 1), f1 j + 1)).toNat

end

end A177533.P7096841285321676877

/-!
# A177534: Number of permutations of {1,...,n} avoiding adjacent step pattern up, down, down, down, down, down.

The programs for A177534, there is no canonical definition to state claims against.
-/

/-! ## A177534.P6812343003897284496

`A327722(∑[n+2]-1)+A062919(n)-A117156(n)`
-/

namespace A177534.P6812343003897284496
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327722 (∑ j ∈ Finset.range (n + 1), f1 j - 1) + (A062919 n - A117156 n)

end

end A177534.P6812343003897284496

/-! ## A177534.P15116054720833719750

`n!-A051344(n!-1)`
-/

namespace A177534.P15116054720833719750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) - A051344 (Nat.factorial n - 1)

end

end A177534.P15116054720833719750

/-! ## A177534.P5930273306591060455

`ϕ²-(ϕ-n!)-A140213(∏[round(1/acot(n))])`
-/

namespace A177534.P5930273306591060455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (1 / SequenceMachineLib.acot (n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.goldenRatio ^ 2 - (Real.goldenRatio - (Nat.factorial n : ℝ)) - (A140213 (∏ j ∈ Finset.range (n + 1), f1 j).toNat : ℝ)

end

end A177534.P5930273306591060455

/-! ## A177534.P3711599765905348263

`n!-A005811((n-6)*(n-5)*(n-4)*(n-3)*(n-2)*(n²-n))`
-/

namespace A177534.P3711599765905348263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) - A005811 (((n : ℤ) - 6) * (((n : ℤ) - 5) * (((n : ℤ) - 4) * (((n : ℤ) - 3) * (((n : ℤ) - 2) * ((n ^ 2 : ℤ) - (n : ℤ))))))).toNat

end

end A177534.P3711599765905348263

/-!
# A177535: Number of permutations of {1,...,n} avoiding adjacent step pattern up, down, down, down, down, up.

The programs for A177535, there is no canonical definition to state claims against.
-/

/-! ## A177535.P4299844828557195422

`A351253(A177548(n))`
-/

namespace A177535.P4299844828557195422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351253 (A177548 n).toNat

end

end A177535.P4299844828557195422

/-! ## A177535.P595373367302335537

`xor(n!, A185234(A014372(n)))`
-/

namespace A177535.P595373367302335537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (Nat.factorial n : ℤ) (A185234 (A014372 n).toNat)

end

end A177535.P595373367302335537

/-! ## A177535.P10426106331608639220

`xor(n!, A185234(A185335(n)))`
-/

namespace A177535.P10426106331608639220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (Nat.factorial n : ℤ) (A185234 (A185335 n).toNat)

end

end A177535.P10426106331608639220

/-! ## A177535.P13296096395696707986

`n!-A332640(A060538(n+1))`
-/

namespace A177535.P13296096395696707986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) - A332640 (A060538 (n + 1)).toNat

end

end A177535.P13296096395696707986

/-!
# A177536: Number of permutations of {1,...,n} avoiding adjacent step pattern up, down, down, down, up, down.

The programs for A177536, there is no canonical definition to state claims against.
-/

/-! ## A177536.P8725654870109334905

`A376214(n!)`
-/

namespace A177536.P8725654870109334905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376214 (Nat.factorial n)

end

end A177536.P8725654870109334905

/-! ## A177536.P12910382755900672424

`A376214(n*a(n-1))` with `a(0)=1`
-/

namespace A177536.P12910382755900672424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A376214 ((n : ℤ) * a (n - 1)).toNat

end

end A177536.P12910382755900672424

/-! ## A177536.P7004020577070261332

`A376214(lcm(n, a(n-1)-1)+n)` with `a(0)=1, a(1)=1`
-/

namespace A177536.P7004020577070261332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A376214 (Int.lcm (n : ℤ) (a (n - 1) - 1) + n)

end

end A177536.P7004020577070261332

/-! ## A177536.P5961969994761337439

`A376214(A000142(n))`
-/

namespace A177536.P5961969994761337439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376214 (A000142 n).toNat

end

end A177536.P5961969994761337439

/-!
# A177537: Number of permutations of {1,...,n} avoiding adjacent step pattern up, down, down, down, up, up.

The programs for A177537, there is no canonical definition to state claims against.
-/

/-! ## A177537.P13771592207761043987

`A177550(n)+A014682(A177547(n)-A177550(n))`
-/

namespace A177537.P13771592207761043987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177550 n + A014682 (A177547 n - A177550 n).toNat

end

end A177537.P13771592207761043987

/-! ## A177537.P1402934369941794701

`A177550(n)+A014682(A177552(n)-A177550(n))`
-/

namespace A177537.P1402934369941794701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177550 n + A014682 (A177552 n - A177550 n).toNat

end

end A177537.P1402934369941794701

/-! ## A177537.P9739805516735122282

`A273943(A177547(n)-A177550(n))+A177550(n)`
-/

namespace A177537.P9739805516735122282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A177547 n - A177550 n).toNat + A177550 n

end

end A177537.P9739805516735122282

/-! ## A177537.P6856824500999145934

`A273943(A177552(n)-A177550(n))+A177550(n)`
-/

namespace A177537.P6856824500999145934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A177552 n - A177550 n).toNat + A177550 n

end

end A177537.P6856824500999145934

/-! ## A177537.P7980403039399452420

`A014682(A177550(n)+A177547(n))`
-/

namespace A177537.P7980403039399452420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A177550 n + A177547 n).toNat

end

end A177537.P7980403039399452420

/-!
# A177538: Number of permutations of {1,...,n} avoiding adjacent step pattern up, down, down, up, down, down.

The programs for A177538, there is no canonical definition to state claims against.
-/

/-! ## A177538.P5631494605106461553

`A177546(n)+A014682(A177535(n)-A177546(n))`
-/

namespace A177538.P5631494605106461553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177546 n + A014682 (A177535 n - A177546 n).toNat

end

end A177538.P5631494605106461553

/-! ## A177538.P7682043587976645892

`A273943(A177535(n)-A177546(n))+A177546(n)`
-/

namespace A177538.P7682043587976645892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A177535 n - A177546 n).toNat + A177546 n

end

end A177538.P7682043587976645892

/-! ## A177538.P1604479363213459255

`A014682(A177546(n)+A177535(n))`
-/

namespace A177538.P1604479363213459255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A177546 n + A177535 n).toNat

end

end A177538.P1604479363213459255

/-! ## A177538.P13809750088956878716

`A273943(A177546(n)+A177535(n))`
-/

namespace A177538.P13809750088956878716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A177546 n + A177535 n).toNat

end

end A177538.P13809750088956878716

/-!
# A177539: Number of permutations of {1,...,n} avoiding adjacent step pattern up, down, down, up, down, up.

The programs for A177539, there is no canonical definition to state claims against.
-/

/-! ## A177539.P6835198089814890170

`A014682(A177550(n)+A177543(n))`
-/

namespace A177539.P6835198089814890170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A177550 n + A177543 n).toNat

end

end A177539.P6835198089814890170

/-! ## A177539.P2995641006576201649

`A273943(A177550(n)+A177543(n))`
-/

namespace A177539.P2995641006576201649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A177550 n + A177543 n).toNat

end

end A177539.P2995641006576201649

/-! ## A177539.P18066886362955391138

`A177543(n)+A004525(A177550(n)-A177543(n))`
-/

namespace A177539.P18066886362955391138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177543 n + A004525 (A177550 n - A177543 n).toNat

end

end A177539.P18066886362955391138

/-! ## A177539.P5793922580799556979

`A177543(n)+A004526(A177550(n)-A177543(n))`
-/

namespace A177539.P5793922580799556979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177543 n + A004526 (A177550 n - A177543 n).toNat

end

end A177539.P5793922580799556979

/-!
# A177540: Number of permutations of {1,...,n} avoiding adjacent step pattern up, down, down, up, up, down.

The programs for A177540, there is no canonical definition to state claims against.
-/

/-! ## A177540.P3669712205992665674

`xor(n!, A181995(A014384(n)))`
-/

namespace A177540.P3669712205992665674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (Nat.factorial n : ℤ) (A181995 (A014384 n).toNat)

end

end A177540.P3669712205992665674

/-! ## A177540.P586195665408544971

`A004726(n)!%A003684(n+2)`
-/

namespace A177540.P586195665408544971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Nat.factorial (A004726 n).toNat : ℤ) (A003684 (n + 2))

end

end A177540.P586195665408544971

/-! ## A177540.P8064083243283656968

`A029964(n+1)!%A186599(n+1)`
-/

namespace A177540.P8064083243283656968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Nat.factorial (A029964 (n + 1)).toNat : ℤ) (A186599 (n + 1))

end

end A177540.P8064083243283656968

/-! ## A177540.P574539737789110834

`A000142(n)-A212091(A014375(2*n))`
-/

namespace A177540.P574539737789110834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n - A212091 (A014375 (2 * n)).toNat

end

end A177540.P574539737789110834

/-!
# A177541: Number of permutations of {1,...,n} avoiding adjacent step pattern up, down, down, up, up, up.

The programs for A177541, there is no canonical definition to state claims against.
-/

/-! ## A177541.P11729688580382308836

`A273943(A177535(n)-A177549(n))+A177549(n)`
-/

namespace A177541.P11729688580382308836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A177535 n - A177549 n).toNat + A177549 n

end

end A177541.P11729688580382308836

/-! ## A177541.P10791411418590731529

`A273943(A177549(n)+A177535(n))`
-/

namespace A177541.P10791411418590731529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A177549 n + A177535 n).toNat

end

end A177541.P10791411418590731529

/-! ## A177541.P14821009403106071096

`A046699(A026424(n!))`
-/

namespace A177541.P14821009403106071096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046699 (A026424 (Nat.factorial n)).toNat

end

end A177541.P14821009403106071096

/-! ## A177541.P15139572416911427481

`A219651(A177551(n))+1`
-/

namespace A177541.P15139572416911427481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219651 (A177551 n).toNat + 1

end

end A177541.P15139572416911427481

/-!
# A177542: Number of permutations of {1,...,n} avoiding adjacent step pattern up, down, up, down, down, down.

The programs for A177542, there is no canonical definition to state claims against.
-/

/-! ## A177542.P11469998935754672529

`A177536(n)+A014682(A177541(n)-A177536(n))`
-/

namespace A177542.P11469998935754672529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177536 n + A014682 (A177541 n - A177536 n).toNat

end

end A177542.P11469998935754672529

/-! ## A177542.P4135356735529978569

`A273943(A177541(n)-A177536(n))+A177536(n)`
-/

namespace A177542.P4135356735529978569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A177541 n - A177536 n).toNat + A177536 n

end

end A177542.P4135356735529978569

/-! ## A177542.P11215153088755550604

`A177538(n)+A014682(A177535(n)-A177538(n))`
-/

namespace A177542.P11215153088755550604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177538 n + A014682 (A177535 n - A177538 n).toNat

end

end A177542.P11215153088755550604

/-! ## A177542.P10318437318317147131

`A273943(A177535(n)-A177538(n))+A177538(n)`
-/

namespace A177542.P10318437318317147131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A177535 n - A177538 n).toNat + A177538 n

end

end A177542.P10318437318317147131

/-! ## A177542.P12431785412039209481

`A014682(A177538(n)+A177535(n))`
-/

namespace A177542.P12431785412039209481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A177538 n + A177535 n).toNat

end

end A177542.P12431785412039209481

/-!
# A177543: Number of permutations of {1,...,n} avoiding adjacent step pattern up, down, up, down, up, down.

The programs for A177543, there is no canonical definition to state claims against.
-/

/-! ## A177543.P717251891365019033

`A000027(A230832(n)+A177520(n))`
-/

namespace A177543.P717251891365019033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A230832 n + A177520 n).toNat

end

end A177543.P717251891365019033

/-! ## A177543.P6978334513923775378

`A230832(A002998(n))+A177520(n)`
-/

namespace A177543.P6978334513923775378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230832 (A002998 n).toNat + A177520 n

end

end A177543.P6978334513923775378

/-! ## A177543.P13117510011892132057

`A230832(A087036(n))+A177520(n)`
-/

namespace A177543.P13117510011892132057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230832 (A087036 n).toNat + A177520 n

end

end A177543.P13117510011892132057

/-! ## A177543.P6941386195397261701

`A230832(A004893(n+1))+A177520(n)`
-/

namespace A177543.P6941386195397261701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230832 (A004893 (n + 1)).toNat + A177520 n

end

end A177543.P6941386195397261701

/-!
# A177544: Number of permutations of {1,...,n} avoiding adjacent step pattern up, down, up, down, up, up.

The programs for A177544, there is no canonical definition to state claims against.
-/

/-! ## A177544.P6841915222244728919

`n!-A014376(A250167(n+1))`
-/

namespace A177544.P6841915222244728919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) - A014376 (A250167 (n + 1)).toNat

end

end A177544.P6841915222244728919

/-! ## A177544.P14418589731353338911

`A030451(A177540(n)+A177539(n))`
-/

namespace A177544.P14418589731353338911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030451 (A177540 n + A177539 n).toNat

end

end A177544.P14418589731353338911

/-! ## A177544.P7783921909930198372

`A177546(n)+A098851(A213207(n))`
-/

namespace A177544.P7783921909930198372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177546 n + A098851 (A213207 n).toNat

end

end A177544.P7783921909930198372

/-! ## A177544.P11343207181063104429

`A177546(n)+A098851(A227038(n))`
-/

namespace A177544.P11343207181063104429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177546 n + A098851 (A227038 n).toNat

end

end A177544.P11343207181063104429

/-!
# A177545: Number of permutations of {1,...,n} avoiding adjacent step pattern up, down, up, up, down, down.

The programs for A177545, there is no canonical definition to state claims against.
-/

/-! ## A177545.P16772327289318171672

`A177540(n)+A014682(A177550(n)-A177540(n))`
-/

namespace A177545.P16772327289318171672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177540 n + A014682 (A177550 n - A177540 n).toNat

end

end A177545.P16772327289318171672

/-! ## A177545.P5945217414980027127

`A273943(A177550(n)-A177540(n))+A177540(n)`
-/

namespace A177545.P5945217414980027127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A177550 n - A177540 n).toNat + A177540 n

end

end A177545.P5945217414980027127

/-! ## A177545.P16423332025658253798

`A014682(A177550(n)+A177540(n))`
-/

namespace A177545.P16423332025658253798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A177550 n + A177540 n).toNat

end

end A177545.P16423332025658253798

/-! ## A177545.P13376895815862391171

`A273943(A177550(n)+A177540(n))`
-/

namespace A177545.P13376895815862391171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A177550 n + A177540 n).toNat

end

end A177545.P13376895815862391171

/-!
# A177546: Number of permutations of {1,...,n} avoiding adjacent step pattern up, down, up, up, down, up.

The programs for A177546, there is no canonical definition to state claims against.
-/

/-! ## A177546.P14570334850131365046

`n!-A195120(A058832(n))`
-/

namespace A177546.P14570334850131365046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) - A195120 (A058832 n).toNat

end

end A177546.P14570334850131365046

/-! ## A177546.P5519731934573701565

`n!-A320751(A005578(n))`
-/

namespace A177546.P5519731934573701565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) - A320751 (A005578 n).toNat

end

end A177546.P5519731934573701565

/-! ## A177546.P8158670825127680835

`A000142(n)-A195120(A058832(n))`
-/

namespace A177546.P8158670825127680835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n - A195120 (A058832 n).toNat

end

end A177546.P8158670825127680835

/-! ## A177546.P6450568358738732411

`A000142(n)-A320751(A005578(n))`
-/

namespace A177546.P6450568358738732411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n - A320751 (A005578 n).toNat

end

end A177546.P6450568358738732411

/-!
# A177547: Number of permutations of {1,...,n} avoiding adjacent step pattern up, down, up, up, up, up.

The programs for A177547, there is no canonical definition to state claims against.
-/

/-! ## A177547.P1429427254426575450

`A177552(A049872(n))`
-/

namespace A177547.P1429427254426575450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177552 (A049872 n).toNat

end

end A177547.P1429427254426575450

/-! ## A177547.P9275549971065308038

`A177552(A140765(∑[n]))`
-/

namespace A177547.P9275549971065308038
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177552 (A140765 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A177547.P9275549971065308038

/-! ## A177547.P14604113202566707997

`A177552(n*A061906(n))`
-/

namespace A177547.P14604113202566707997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177552 ((n : ℤ) * A061906 n).toNat

end

end A177547.P14604113202566707997

/-! ## A177547.P6500671424888128569

`A177552(n^A061906(n))`
-/

namespace A177547.P6500671424888128569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177552 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A061906 n : ℤ))).toNat

end

end A177547.P6500671424888128569

/-! ## A177547.P3378534551793384041

`A177552(n^A242784(n))`
-/

namespace A177547.P3378534551793384041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177552 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A242784 n : ℤ))).toNat

end

end A177547.P3378534551793384041

/-!
# A177548: Number of permutations of {1,...,n} avoiding adjacent step pattern up, up, down, down, down, down.

The programs for A177548, there is no canonical definition to state claims against.
-/

/-! ## A177548.P10368099691392356227

`A324136(n^floor(n^(1/3))!)`
-/

namespace A177548.P10368099691392356227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324136 (n ^ Nat.factorial ⌊(n : ℝ) ^ ((1 : ℚ) / 3 : ℝ)⌋.toNat)

end

end A177548.P10368099691392356227

/-! ## A177548.P10201272117866962987

`A028310(A324136(n))`
-/

namespace A177548.P10201272117866962987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A324136 n).toNat

end

end A177548.P10201272117866962987

/-! ## A177548.P13389101754566746049

`A324136(A004880(n+1))`
-/

namespace A177548.P13389101754566746049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324136 (A004880 (n + 1)).toNat

end

end A177548.P13389101754566746049

/-! ## A177548.P8576503191703088256

`A038572(2*A324136(n))`
-/

namespace A177548.P8576503191703088256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038572 (2 * A324136 n).toNat

end

end A177548.P8576503191703088256

/-!
# A177549: Number of permutations of {1,...,n} avoiding adjacent step pattern up, up, down, down, up, up.

The programs for A177549, there is no canonical definition to state claims against.
-/

/-! ## A177549.P10454897346176984005

`A177536(n)+A014682(A177542(n)-A177536(n))`
-/

namespace A177549.P10454897346176984005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177536 n + A014682 (A177542 n - A177536 n).toNat

end

end A177549.P10454897346176984005

/-! ## A177549.P11677803643920489635

`A273943(A177542(n)-A177536(n))+A177536(n)`
-/

namespace A177549.P11677803643920489635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A177542 n - A177536 n).toNat + A177536 n

end

end A177549.P11677803643920489635

/-! ## A177549.P12422349411008824963

`A177536(n)+A001281(A177542(n)-A177536(n))`
-/

namespace A177549.P12422349411008824963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177536 n + A001281 (A177542 n - A177536 n).toNat

end

end A177549.P12422349411008824963

/-! ## A177549.P11378338227358504209

`(A177542(n)+A177536(n))/A020639(A052991(n+1))`
-/

namespace A177549.P11378338227358504209
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A177542 n + A177536 n : ℚ) / (A020639 (A052991 (n + 1)).toNat : ℚ)

end

end A177549.P11378338227358504209

/-! ## A177549.P15565484469969451022

`A014682(A177542(n)+A177536(n))`
-/

namespace A177549.P15565484469969451022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A177542 n + A177536 n).toNat

end

end A177549.P15565484469969451022

/-!
# A177550: Number of permutations of {1,...,n} avoiding adjacent step pattern up, up, down, up, down, down.

The programs for A177550, there is no canonical definition to state claims against.
-/

/-! ## A177550.P12979239388076325498

`n!-A184955((3-n)²)`
-/

namespace A177550.P12979239388076325498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) - A184955 ((3 - (n : ℤ)) ^ 2).toNat

end

end A177550.P12979239388076325498

/-! ## A177550.P14123776090473228878

`n!-A205295(2*(n+1))`
-/

namespace A177550.P14123776090473228878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) - A205295 (2 * (n + 1))

end

end A177550.P14123776090473228878

/-! ## A177550.P6421869731630860726

`∑{digits}[n, #!]-A184955(2*(n+1))`
-/

namespace A177550.P6421869731630860726
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => Nat.factorial x).sum : ℕ) : ℤ) - A184955 (2 * (n + 1))

end

end A177550.P6421869731630860726

/-! ## A177550.P8558213801857600979

`n!-A002262((n-6)*(n-5)*(n-4)*(n-3)*(n-2)*(n²-n))`
-/

namespace A177550.P8558213801857600979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) - A002262 (((n : ℤ) - 6) * (((n : ℤ) - 5) * (((n : ℤ) - 4) * (((n : ℤ) - 3) * (((n : ℤ) - 2) * ((n ^ 2 : ℤ) - (n : ℤ))))))).toNat

end

end A177550.P8558213801857600979

/-!
# A177551: Number of permutations of {1,...,n} avoiding adjacent step pattern up, up, down, up, up, up.

The programs for A177551, there is no canonical definition to state claims against.
-/

/-! ## A177551.P15744602444547127472

`A219651(A177547(n)+2)`
-/

namespace A177551.P15744602444547127472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219651 (A177547 n + 2).toNat

end

end A177551.P15744602444547127472

/-! ## A177551.P467673310188432949

`A219651(A177552(n)+2)`
-/

namespace A177551.P467673310188432949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219651 (A177552 n + 2).toNat

end

end A177551.P467673310188432949

/-! ## A177551.P7423805085947476072

`n!-A102748(A102726(n))`
-/

namespace A177551.P7423805085947476072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) - A102748 (A102726 n).toNat

end

end A177551.P7423805085947476072

/-! ## A177551.P16131844141851136360

`n!-A102748(A188900(n))`
-/

namespace A177551.P16131844141851136360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) - A102748 (A188900 n).toNat

end

end A177551.P16131844141851136360

/-!
# A177553: Number of permutations of 1..n avoiding adjacent step pattern up, up, up, up, up, up.

The programs for A177553, there is no canonical definition to state claims against.
-/

/-! ## A177553.P13256838263550742321

`A177533(n)+A000467(A028310(n))`
-/

namespace A177553.P13256838263550742321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177533 n + A000467 (A028310 n).toNat

end

end A177553.P13256838263550742321

/-! ## A177553.P13563247614902644039

`A177533(n)+A000467(A233583(n+1))`
-/

namespace A177553.P13563247614902644039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177533 n + A000467 (A233583 (n + 1)).toNat

end

end A177553.P13563247614902644039

/-! ## A177553.P6112196482063390858

`n!-A185294(2*(n+2))`
-/

namespace A177553.P6112196482063390858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) - A185294 (2 * (n + 2))

end

end A177553.P6112196482063390858

/-! ## A177553.P4943285206257302875

`n*a(n-1)-A147809(a(n-1))` with `a(0)=1`
-/

namespace A177553.P4943285206257302875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℤ) * a (n - 1) - A147809 (a (n - 1)).toNat

end

end A177553.P4943285206257302875

/-! ## A177553.P327032905236971728

`n!-A004760(A309861(n))`
-/

namespace A177553.P327032905236971728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) - A004760 (A309861 n).toNat

end

end A177553.P327032905236971728

/-!
# A177554: Number of permutations of 2 copies of 1..n avoiding adjacent step pattern up, down.

The programs for A177554, there is no canonical definition to state claims against.
-/

/-! ## A177554.P4899829989552898203

`∏{p}[A002720(n), A171949(#)]`
-/

namespace A177554.P4899829989552898203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002720 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A171949 p

end

end A177554.P4899829989552898203

/-!
# A177555: Number of permutations of 2 copies of 1..n avoiding adjacent step pattern up, up.

The programs for A177555, there is no canonical definition to state claims against.
-/

/-! ## A177555.P8427160323002565802

`A250048(∑[(n-1)^(n%2)]!)`
-/

namespace A177555.P8427160323002565802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) ^ (n % 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250048 (Nat.factorial (∑ j ∈ Finset.range (n + 1), f1 j).toNat)

end

end A177555.P8427160323002565802

/-!
# A177558: Number of permutations of 2 copies of 1..n avoiding adjacent step pattern up, up, up.

The programs for A177558, there is no canonical definition to state claims against.
-/

/-! ## A177558.P18127232376209451063

`A064438(A221412(n))`
-/

namespace A177558.P18127232376209451063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064438 (A221412 n).toNat

end

end A177558.P18127232376209451063

/-!
# A177575: Number of permutations of 2 copies of 1..n avoiding adjacent step pattern up, down, down, down, down, down.

The programs for A177575, there is no canonical definition to state claims against.
-/

/-! ## A177575.P13460951752686557888

`∏[∑[A072649(8^n)]]`
-/

namespace A177575.P13460951752686557888
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072649 (8 ^ n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A177575.P13460951752686557888

/-!
# A177589: Number of permutations of 2 copies of 1..n avoiding adjacent step pattern up, up, down, down, down, down.

The programs for A177589, there is no canonical definition to state claims against.
-/

/-! ## A177589.P10275097921427192539

`A000680(n+1)-A275867(A011782(n))`
-/

namespace A177589.P10275097921427192539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000680 (n + 1) - A275867 (A011782 n).toNat

end

end A177589.P10275097921427192539

/-!
# A177593: Number of permutations of 2 copies of 1..n avoiding adjacent step pattern up, up, up, down, down, down.

The programs for A177593, there is no canonical definition to state claims against.
-/

/-! ## A177593.P18320365470161696146

`A177576(n+1)-A191893(A177447(n))`
-/

namespace A177593.P18320365470161696146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177576 (n + 1) - A191893 (A177447 n).toNat

end

end A177593.P18320365470161696146

