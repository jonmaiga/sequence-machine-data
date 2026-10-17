import SequenceMachineLib.Basic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C021
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C034
import Seq.B001.C000
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C005
import Seq.B002.C006
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
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
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
import Seq.Opaque.C024
import Seq.Opaque.C025
import Seq.Opaque.C026

/-!
# A393001: Number of one-sided polyquarcs with n cells, with cusp connections allowed.

The programs for A393001, there is no canonical definition to state claims against.
-/

/-! ## A393001.P16255868000905256120

`A376189(A149407(n+1))`
-/

namespace A393001.P16255868000905256120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376189 (A149407 (n + 1)).toNat

end

end A393001.P16255868000905256120

/-!
# A393002: Number of fixed polyquarcs with n cells, with cusp connections allowed.

The programs for A393002, there is no canonical definition to state claims against.
-/

/-! ## A393002.P1215672978480433087

`2*A096267(n+1)`
-/

namespace A393002.P1215672978480433087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A096267 (n + 1)

end

end A393002.P1215672978480433087

/-! ## A393002.P3942355227390907428

`A096267(A000027(n+1))+A096267(n+1)`
-/

namespace A393002.P3942355227390907428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096267 (A000027 (n + 1)).toNat + A096267 (n + 1)

end

end A393002.P3942355227390907428

/-! ## A393002.P13485723908907597678

`A096267(n+1)+A096267(A132033(n+1))`
-/

namespace A393002.P13485723908907597678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096267 (n + 1) + A096267 (A132033 (n + 1)).toNat

end

end A393002.P13485723908907597678

/-! ## A393002.P18248945317918048175

`A096267(n+1)+A096267(A174228(n+1))`
-/

namespace A393002.P18248945317918048175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096267 (n + 1) + A096267 (A174228 (n + 1)).toNat

end

end A393002.P18248945317918048175

/-! ## A393002.P16698246340829017890

`A096267(n+1)+A096267(A249818(n+1))`
-/

namespace A393002.P16698246340829017890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096267 (n + 1) + A096267 (A249818 (n + 1)).toNat

end

end A393002.P16698246340829017890

/-!
# A393004: Number of one-sided polyjogs with n cells.

The programs for A393004, there is no canonical definition to state claims against.
-/

/-! ## A393004.P2512760847767235275

`A347831(A006012(n))`
-/

namespace A393004.P2512760847767235275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347831 (A006012 n).toNat

end

end A393004.P2512760847767235275

/-!
# A393005: Number of fixed polyjogs with n cells.

The programs for A393005, there is no canonical definition to state claims against.
-/

/-! ## A393005.P6001827531590941356

`A352226(A116406(2*n)²)+1`
-/

namespace A393005.P6001827531590941356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352226 (A116406 (2 * n) ^ 2).toNat + 1

end

end A393005.P6001827531590941356

/-!
# A393006: The number of positive integers below the (n+1)-st primorial number that are the product of exactly n distinct primes.

The programs for A393006, there is no canonical definition to state claims against.
-/

/-! ## A393006.P2479782818556066886

`A292922(A134189(n+1))`
-/

namespace A393006.P2479782818556066886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292922 (A134189 (n + 1)).toNat

end

end A393006.P2479782818556066886

/-! ## A393006.P3638204697813016840

`A292922(A212342(n+1))`
-/

namespace A393006.P3638204697813016840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292922 (A212342 (n + 1)).toNat

end

end A393006.P3638204697813016840

/-! ## A393006.P17820089850257880248

`A292922(A048093(n+2))`
-/

namespace A393006.P17820089850257880248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292922 (A048093 (n + 2)).toNat

end

end A393006.P17820089850257880248

/-!
# A393007: The number of positive integers below the smallest number with exactly 2^(n+1) divisors that are the product of exactly n distinct Fermi-Dirac primes.

The programs for A393007, there is no canonical definition to state claims against.
-/

/-! ## A393007.P6836534069476939045

`A191845(A304792(n+1))`
-/

namespace A393007.P6836534069476939045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191845 (A304792 (n + 1)).toNat

end

end A393007.P6836534069476939045

/-! ## A393007.P12207430785733067531

`∑[A169866(∑[A213411(n)])]`
-/

namespace A393007.P12207430785733067531
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213411 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169866 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A393007.P12207430785733067531

/-!
# A393011: a(n) = (7*n)!/((5*n)!*(2*n)!).

The programs for A393011, there is no canonical definition to state claims against.
-/

/-! ## A393011.P18357634051731380231

`A004355(n)/A000984(n)*A004368(n)`
-/

namespace A393011.P18357634051731380231
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004355 n : ℚ) / (A000984 n : ℚ) * (A004368 n : ℚ)

end

end A393011.P18357634051731380231

/-! ## A393011.P16048391216167990832

`C(7*n, 2*n)`
-/

namespace A393011.P16048391216167990832
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (7 * n) (2 * n)

end

end A393011.P16048391216167990832

/-! ## A393011.P2052319681076000122

`record[C(A195159(n), n)]`
-/

namespace A393011.P2052319681076000122
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A195159 n).toNat n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A393011.P2052319681076000122

/-! ## A393011.P5367642699938288537

`A159965(A062725(n))`
-/

namespace A393011.P5367642699938288537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159965 (A062725 n).toNat

end

end A393011.P5367642699938288537

/-! ## A393011.P16732080334501746238

`A193635(A062728(n))`
-/

namespace A393011.P16732080334501746238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193635 (A062728 n).toNat

end

end A393011.P16732080334501746238

/-!
# A393012: List giving least 5-rough number (A007310) of each prime signature.

The programs for A393012, there is no canonical definition to state claims against.
-/

/-! ## A393012.P18345184079550581651

`A058035(A361615(n+1))`
-/

namespace A393012.P18345184079550581651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058035 (A361615 (n + 1)).toNat

end

end A393012.P18345184079550581651

/-! ## A393012.P14099002278834939167

`record[A360997(A003152(n+1)²)]`
-/

namespace A393012.P14099002278834939167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360997 (A003152 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A393012.P14099002278834939167

/-!
# A393014: Primes that are palindromic in both base 2 and base 9.

The programs for A393014, there is no canonical definition to state claims against.
-/

/-! ## A393014.P2224825371662723118

`∩[A016041(n+1), A029977(n+1)]`
-/

namespace A393014.P2224825371662723118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016041 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029977 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A393014.P2224825371662723118

/-!
# A393015: Palindromic canyon numbers.

The programs for A393015, there is no canonical definition to state claims against.
-/

/-! ## A393015.P10729688103006668201

`∩[A002113(n+1), A183086(n+1)]`
-/

namespace A393015.P10729688103006668201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183086 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A393015.P10729688103006668201

/-! ## A393015.P8541532348542583562

`∩[A050783(n+1), A183086(n+1)]`
-/

namespace A393015.P8541532348542583562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050783 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183086 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A393015.P8541532348542583562

/-! ## A393015.P3637999989353789929

`∩[A056525(n+1), A183086(n+1)]`
-/

namespace A393015.P3637999989353789929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056525 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183086 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A393015.P3637999989353789929

/-! ## A393015.P2432244022689710555

`∩[A061917(n+1), A183086(n+1)]`
-/

namespace A393015.P2432244022689710555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061917 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183086 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A393015.P2432244022689710555

/-! ## A393015.P14527462383593226134

`∩[A062697(n+1), A183086(n+1)]`
-/

namespace A393015.P14527462383593226134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062697 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183086 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A393015.P14527462383593226134

/-! ## A393015.P2651048375390638674

`∩[A083158(n+1), A183086(n+1)]`
-/

namespace A393015.P2651048375390638674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083158 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183086 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A393015.P2651048375390638674

/-! ## A393015.P7443945995804142783

`∩[A088882(n+1), A183086(n+1)]`
-/

namespace A393015.P7443945995804142783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088882 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183086 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A393015.P7443945995804142783

/-!
# A393022: List points (x,y,z) having integer coordinates, sorted first by L = |x| + |y| + |z| and in case of ties, then by z and last by polar angle 0 <= phi < 2*Pi in a polar coordinate system. Sequence gives y-coordinates.

The programs for A393022, there is no canonical definition to state claims against.
-/

/-! ## A393022.P14979391523981207998

`A350950(A315822(n+1))`
-/

namespace A393022.P14979391523981207998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350950 (A315822 (n + 1)).toNat

end

end A393022.P14979391523981207998

/-! ## A393022.P15376772295672836032

`A361017(A165822(n+1)*A253249(n+2))`
-/

namespace A393022.P15376772295672836032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361017 (A165822 (n + 1) * A253249 (n + 2)).toNat

end

end A393022.P15376772295672836032

/-!
# A393027: Minimum number of addends needed to represent numbers in A393024.

The programs for A393027, there is no canonical definition to state claims against.
-/

/-! ## A393027.P10150312856796809185

`gcd(A296868(n+1), A333218(3*(n+1)))`
-/

namespace A393027.P10150312856796809185
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A296868 (n + 1)) (A333218 (3 * (n + 1)))

end

end A393027.P10150312856796809185

/-! ## A393027.P16918540453697429654

`gcd(A103465(n+1), A286622(A035170(n+1)))`
-/

namespace A393027.P16918540453697429654
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A103465 (n + 1)) (A286622 (A035170 (n + 1)).toNat)

end

end A393027.P16918540453697429654

/-! ## A393027.P16720375618053767308

`gcd(A329362(n), A351014(A345168(3*n+1)))`
-/

namespace A393027.P16720375618053767308
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A329362 n) (A351014 (A345168 (3 * n + 1)).toNat)

end

end A393027.P16720375618053767308

/-! ## A393027.P12933194896808372208

`A257993(A363782(n+1)-A373817(2*n+2))`
-/

namespace A393027.P12933194896808372208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257993 (A363782 (n + 1) - A373817 (2 * n + 2)).toNat

end

end A393027.P12933194896808372208

/-! ## A393027.P15473700764710034760

`gcd(6*n-a(n-1)-1, A110789(n+1))` with `a(0)=1`
-/

namespace A393027.P15473700764710034760
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Int.gcd ((6 * n : ℤ) - (a (n - 1) : ℤ) - 1) (A110789 (n + 1))

end

end A393027.P15473700764710034760

/-!
# A393033: a(n) = min{k | k can be represented in n different ways as s_1^x_1 + ... + s_t^x_t, with 0 < s_1 < ... < s_t and x_1 > ... > x_t > 1 for some t > 0, with the restriction that if s_1 = 1 then x_1 is the least possible}.

The programs for A393033, there is no canonical definition to state claims against.
-/

/-! ## A393033.P12004776204477903120

`A123291(A031160(n+1))`
-/

namespace A393033.P12004776204477903120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123291 (A031160 (n + 1)).toNat

end

end A393033.P12004776204477903120

/-!
# A393034: a(n) is the number of possible ways in which the n-th number in A393024 can be represented as s_1^x_1 + ... + s_t^x_t, with 0 < s_1 < ... < s_t and x_1 > ... > x_t > 1 for some t > 0, with the restriction that if s_1 = 1 then x_1 is the least possible.

The programs for A393034, there is no canonical definition to state claims against.
-/

/-! ## A393034.P1227366613960405856

`A333381(A056230(n+1)-A000720(n+1))`
-/

namespace A393034.P1227366613960405856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333381 (A056230 (n + 1) - A000720 (n + 1)).toNat

end

end A393034.P1227366613960405856

/-! ## A393034.P10762405599339654787

`A285202(A065336(n))`
-/

namespace A393034.P10762405599339654787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285202 (A065336 n).toNat

end

end A393034.P10762405599339654787

/-! ## A393034.P8487745977950765780

`gcd(A079726(A004149(n)), A249948(3*n+5))`
-/

namespace A393034.P8487745977950765780
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A079726 (A004149 n).toNat) (A249948 (3 * n + 5))

end

end A393034.P8487745977950765780

/-! ## A393034.P11945265855844139711

`A115581(A187227(n+1)-A074290(3*n+2))`
-/

namespace A393034.P11945265855844139711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115581 (A187227 (n + 1) - A074290 (3 * n + 2)).toNat

end

end A393034.P11945265855844139711

/-! ## A393034.P9466734305662828693

`A102820(xor(A072066(3*n+5), A167884(n+1)))`
-/

namespace A393034.P9466734305662828693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102820 (Int.xor (A072066 (3 * n + 5)) (A167884 (n + 1))).toNat

end

end A393034.P9466734305662828693

/-!
# A393037: Number of permutations on n letters with cycle type set [k] for some k, row sums of A393036 and A392215.

The programs for A393037, there is no canonical definition to state claims against.
-/

/-! ## A393037.P14194828079450379469

`A095757(A059177(n+1))`
-/

namespace A393037.P14194828079450379469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095757 (A059177 (n + 1)).toNat

end

end A393037.P14194828079450379469

/-!
# A393040: Numbers k such that A276086(k) <= A348507(k).

The programs for A393040, there is no canonical definition to state claims against.
-/

/-! ## A393040.P15165220202564760393

`∪[A351228(n+1), A392602(n+1)]`
-/

namespace A393040.P15165220202564760393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351228 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392602 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A393040.P15165220202564760393

/-!
# A393041: Number of trailing zeros in the primorial base representation of the arithmetic derivative of n.

The programs for A393041, there is no canonical definition to state claims against.
-/

/-! ## A393041.P11346140411261592941

`A276084(A003415(n+2))`
-/

namespace A393041.P11346140411261592941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276084 (A003415 (n + 2)).toNat

end

end A393041.P11346140411261592941

/-! ## A393041.P16684587510021233698

`A055396(A327859(n+2))-1`
-/

namespace A393041.P16684587510021233698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (A327859 (n + 2)).toNat - 1

end

end A393041.P16684587510021233698

/-! ## A393041.P11311576909750270222

`A055396(A055396(A327859(n+2)))`
-/

namespace A393041.P11311576909750270222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (A055396 (A327859 (n + 2)).toNat).toNat

end

end A393041.P11311576909750270222

/-!
# A393042: a(n) is the least integer whose arithmetic derivative has n trailing zeros in its primorial base representation (A049345).

The programs for A393042, there is no canonical definition to state claims against.
-/

/-! ## A393042.P8405227007823200958

`A237264(A261192(n))`
-/

namespace A393042.P8405227007823200958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237264 (A261192 n).toNat

end

end A393042.P8405227007823200958

/-!
# A393043: Numbers such that the least prime not dividing their arithmetic derivative is 3.

The programs for A393043, there is no canonical definition to state claims against.
-/

/-! ## A393043.P8976235517628757700

`eq[1, A040250(A003415(n))]`
-/

namespace A393043.P8976235517628757700
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040250 (A003415 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A393043.P8976235517628757700

/-! ## A393043.P5691111833200792498

`eq[A305080(n+1), A327219(n)]`
-/

namespace A393043.P5691111833200792498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305080 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327219 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A393043.P5691111833200792498

/-!
# A393044: Numbers whose smallest prime factor is not 3, while the least prime not dividing their arithmetic derivative is 3.

The programs for A393044, there is no canonical definition to state claims against.
-/

/-! ## A393044.P6153328826995573235

`filter[A393043(n+1), A374045(#)]`
-/

namespace A393044.P6153328826995573235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393043 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374045 (f1 j).toNat = 1) n)

end

end A393044.P6153328826995573235

/-! ## A393044.P779098013046484263

`∩[A374046(n+1), A393043(n+1)]`
-/

namespace A393044.P779098013046484263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374046 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393043 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A393044.P779098013046484263

/-! ## A393044.P10903281521107593064

`∩[A191276(n+1), A393043(n+1)]`
-/

namespace A393044.P10903281521107593064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191276 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393043 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A393044.P10903281521107593064

/-! ## A393044.P811613244405661427

`∩[A047263(n+1), A393043(n+1)]`
-/

namespace A393044.P811613244405661427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047263 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393043 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A393044.P811613244405661427

/-!
# A393050: Composite numbers k such that A003415(k) is in A048103 and k is a multiple of A276085(A003415(k)), where A003415 is the arithmetic derivative and A276085 is fully additive with a(p) = p#/p.

The programs for A393050, there is no canonical definition to state claims against.
-/

/-! ## A393050.P4055775049748158963

`filter[A393049(n+1), A368915(#)]`
-/

namespace A393050.P4055775049748158963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393049 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A368915 (f1 j).toNat = 1) n)

end

end A393050.P4055775049748158963

/-!
# A393051: Number of divisors d of n such that d and A276086(d) are coprime, where A276086 is the primorial base exp-function.

The programs for A393051, there is no canonical definition to state claims against.
-/

/-! ## A393051.P13758010704051771284

`A000005(n+1)-A393052(n+1)`
-/

namespace A393051.P13758010704051771284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A393052 (n + 1)

end

end A393051.P13758010704051771284

/-! ## A393051.P5144449806358480311

`∑{d}[n+1, A356162(#)]`
-/

namespace A393051.P5144449806358480311
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A356162 d

end

end A393051.P5144449806358480311

/-! ## A393051.P11611731055382837855

`A393053(n+1)+A393054(n+1)-A393052(n+1)`
-/

namespace A393051.P11611731055382837855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393053 (n + 1) + (A393054 (n + 1) - A393052 (n + 1))

end

end A393051.P11611731055382837855

/-! ## A393051.P5118601971684066574

`A335458(n)-A374646(A001006(n))`
-/

namespace A393051.P5118601971684066574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335458 n - A374646 (A001006 n).toNat

end

end A393051.P5118601971684066574

/-! ## A393051.P3476044452200868041

`A000120(A286674(n)+A253249(n+1))`
-/

namespace A393051.P3476044452200868041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A286674 n + A253249 (n + 1)).toNat

end

end A393051.P3476044452200868041

/-!
# A393052: Number of divisors d of n such that d and A276086(d) are not coprime, where A276086 is the primorial base exp-function.

The programs for A393052, there is no canonical definition to state claims against.
-/

/-! ## A393052.P5949760866379889649

`A000005(n+1)-A393051(n+1)`
-/

namespace A393052.P5949760866379889649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A393051 (n + 1)

end

end A393052.P5949760866379889649

/-! ## A393052.P2517483173330391661

`A393053(n+1)+A393054(n+1)-A393051(n+1)`
-/

namespace A393052.P2517483173330391661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393053 (n + 1) + (A393054 (n + 1) - A393051 (n + 1))

end

end A393052.P2517483173330391661

/-! ## A393052.P15956195710870013977

`A361561(A313891(n+1))`
-/

namespace A393052.P15956195710870013977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361561 (A313891 (n + 1)).toNat

end

end A393052.P15956195710870013977

/-! ## A393052.P16783297605424326054

`A001222(gcd(A000204(n+1), A324944(n+1)))`
-/

namespace A393052.P16783297605424326054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.gcd (A000204 (n + 1)) (A324944 (n + 1)))

end

end A393052.P16783297605424326054

/-! ## A393052.P2095797000560233519

`A274820(A094518(2*(n+1))%A383707(n+1))`
-/

namespace A393052.P2095797000560233519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274820 (Int.tmod (A094518 (2 * (n + 1))) (A383707 (n + 1))).toNat

end

end A393052.P2095797000560233519

/-!
# A393053: Number of divisors d of n such that d and A276086(n) are coprime, where A276086 is the primorial base exp-function.

The programs for A393053, there is no canonical definition to state claims against.
-/

/-! ## A393053.P266713833161990543

`A000005(n+1)-A393054(n+1)`
-/

namespace A393053.P266713833161990543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A393054 (n + 1)

end

end A393053.P266713833161990543

/-! ## A393053.P11971716616951385622

`A393051(n+1)+A393052(n+1)-A393054(n+1)`
-/

namespace A393053.P11971716616951385622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393051 (n + 1) + (A393052 (n + 1) - A393054 (n + 1))

end

end A393053.P11971716616951385622

/-! ## A393053.P7094536260454122067

`gcd(∏{e}[n+1, #+1], A276156(A132972(3*n+1)))`
-/

namespace A393053.P7094536260454122067
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ) (A276156 (A132972 (3 * n + 1)).toNat)

end

end A393053.P7094536260454122067

/-! ## A393053.P7403470110962722926

`gcd(A000005(n+1), A071574(A006951(n)))`
-/

namespace A393053.P7403470110962722926
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000005 (n + 1)) (A071574 (A006951 n).toNat)

end

end A393053.P7403470110962722926

/-! ## A393053.P4015364984331256249

`gcd(A302051(n+1), A358506(A056798(3*n+4)))`
-/

namespace A393053.P4015364984331256249
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A302051 (n + 1)) (A358506 (A056798 (3 * n + 4)).toNat)

end

end A393053.P4015364984331256249

/-!
# A393054: Number of divisors d of n such that d and A276086(n) are not coprime, where A276086 is the primorial base exp-function.

The programs for A393054, there is no canonical definition to state claims against.
-/

/-! ## A393054.P6527738520185984565

`A000005(n+1)-A393053(n+1)`
-/

namespace A393054.P6527738520185984565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A393053 (n + 1)

end

end A393054.P6527738520185984565

/-! ## A393054.P13777677928731077242

`A393051(n+1)+A393052(n+1)-A393053(n+1)`
-/

namespace A393054.P13777677928731077242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393051 (n + 1) + (A393052 (n + 1) - A393053 (n + 1))

end

end A393054.P13777677928731077242

/-! ## A393054.P9407324347925746282

`A024450(A294950(n))%A324198(n+1)`
-/

namespace A393054.P9407324347925746282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A024450 (A294950 n).toNat) (A324198 (n + 1))

end

end A393054.P9407324347925746282

/-!
# A393056: Number of terms of A392867 <= n that are not odd numbers with an odd number of prime factors (A067019).

The programs for A393056, there is no canonical definition to state claims against.
-/

/-! ## A393056.P3807633625730451536

`A393055(A182049(n+2))`
-/

namespace A393056.P3807633625730451536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393055 (A182049 (n + 2)).toNat

end

end A393056.P3807633625730451536

/-!
# A393057: Number of terms of A392867 <= n.

The programs for A393057, there is no canonical definition to state claims against.
-/

/-! ## A393057.P14926280108501392548

`∑[A393067(n+1)]`
-/

namespace A393057.P14926280108501392548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393067 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A393057.P14926280108501392548

/-! ## A393057.P8064878092367786365

`∑[char[A392867(n+1)-1]]`
-/

namespace A393057.P8064878092367786365
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392867 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A393057.P8064878092367786365

/-! ## A393057.P13470317374675778819

`∑[comp[A234615(A114689(n))]%2]+1`
-/

namespace A393057.P13470317374675778819
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234615 (A114689 n).toNat

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n % 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A393057.P13470317374675778819

/-! ## A393057.P11350110272909109094

`A000523(A318678(3*(n+1))+A302698(2*(n+2)))`
-/

namespace A393057.P11350110272909109094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (A318678 (3 * (n + 1)) + A302698 (2 * (n + 2))).toNat

end

end A393057.P11350110272909109094

/-! ## A393057.P7965515447427731443

`A323665(A133585(n+1))`
-/

namespace A393057.P7965515447427731443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323665 (A133585 (n + 1)).toNat

end

end A393057.P7965515447427731443

/-!
# A393058: Number of terms of A392868 <= n.

The programs for A393058, there is no canonical definition to state claims against.
-/

/-! ## A393058.P1306025518518100883

`∑[A393068(n+1)]`
-/

namespace A393058.P1306025518518100883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393068 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A393058.P1306025518518100883

/-!
# A393059: a(n) = LCM_{d|n, d

The programs for A393059, there is no canonical definition to state claims against.
-/

/-! ## A393059.P14968008062858846965

`A276086(A393063(n+1))`
-/

namespace A393059.P14968008062858846965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276086 (A393063 (n + 1)).toNat

end

end A393059.P14968008062858846965

/-!
# A393060: Lexicographically earliest infinite sequence such that a(i) = a(j) => A393059(i) = A393059(j), for all i, j >= 1.

The programs for A393060, there is no canonical definition to state claims against.
-/

/-! ## A393060.P16700731063704732143

`A125747(A161951(n+1))`
-/

namespace A393060.P16700731063704732143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125747 (A161951 (n + 1)).toNat

end

end A393060.P16700731063704732143

/-!
# A393061: a(n) = LCM_{d|n} A276086(d), where LCM is the least common multiple, and A276086 is the primorial base exp-function.

The programs for A393061, there is no canonical definition to state claims against.
-/

/-! ## A393061.P6907679222004590813

`A276086(A393062(n+1))`
-/

namespace A393061.P6907679222004590813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276086 (A393062 (n + 1)).toNat

end

end A393061.P6907679222004590813

/-!
# A393062: a(n) = A276085(LCM_{d|n} A276086(d)), where LCM is the least common multiple, A276086 is the primorial base exp-function, and A276085 is its left inverse.

The programs for A393062, there is no canonical definition to state claims against.
-/

/-! ## A393062.P7842743917748838304

`A372576(A393061(n+1))`
-/

namespace A393062.P7842743917748838304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372576 (A393061 (n + 1)).toNat

end

end A393062.P7842743917748838304

/-!
# A393063: a(n) = A276085(LCM_{d|n, d

The programs for A393063, there is no canonical definition to state claims against.
-/

/-! ## A393063.P14038933198082830863

`A372576(A393059(n+1))`
-/

namespace A393063.P14038933198082830863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372576 (A393059 (n + 1)).toNat

end

end A393063.P14038933198082830863

/-! ## A393063.P10071293864728926734

`A385227(A143773(n+1))%A121964(n)`
-/

namespace A393063.P10071293864728926734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A385227 (A143773 (n + 1)).toNat) (A121964 (n + 30))

end

end A393063.P10071293864728926734

/-! ## A393063.P1975437130932633386

`A006034(A318746(n+1))%A046523(n+1)`
-/

namespace A393063.P1975437130932633386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006034 (A318746 (n + 1)).toNat) (A046523 (n + 1))

end

end A393063.P1975437130932633386

/-! ## A393063.P16862643554621151681

`A046523(n+1)-A230405(A056508(2*(n+1)))`
-/

namespace A393063.P16862643554621151681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (n + 1) - A230405 (A056508 (2 * (n + 1))).toNat

end

end A393063.P16862643554621151681

/-! ## A393063.P15744579319365650750

`A007202(A248489(n+4))%A046523(n+1)`
-/

namespace A393063.P15744579319365650750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007202 (A248489 (n + 4)).toNat) (A046523 (n + 1))

end

end A393063.P15744579319365650750

/-!
# A393064: a(n) = 1 if A020639(n') = A053669(n) and A053669(n') = A020639(n), otherwise 0, where n' stands for arithmetic derivative, A020639 returns the least prime factor of its argument, and A053669 is the least prime not dividing its argument.

The programs for A393064, there is no canonical definition to state claims against.
-/

/-! ## A393064.P16116274071899384899

`char[A393065(n+1)]`
-/

namespace A393064.P16116274071899384899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393065 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A393064.P16116274071899384899

/-! ## A393064.P10288449280709813946

`and(A331846(n), A370124(n))`
-/

namespace A393064.P10288449280709813946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A331846 n) (A370124 n)

end

end A393064.P10288449280709813946

/-! ## A393064.P3567337798873606842

`and(A325373(n+1), A370124(n))`
-/

namespace A393064.P3567337798873606842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A325373 (n + 1)) (A370124 n)

end

end A393064.P3567337798873606842

/-! ## A393064.P4446316061728156993

`and(A345387(n+1), A370124(n))`
-/

namespace A393064.P4446316061728156993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A345387 (n + 1)) (A370124 n)

end

end A393064.P4446316061728156993

/-! ## A393064.P17482402904766974913

`and(A163561(n+1), A370124(n))`
-/

namespace A393064.P17482402904766974913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A163561 (n + 1)) (A370124 n)

end

end A393064.P17482402904766974913

/-!
# A393065: Numbers k such that A020639(k') = A053669(k) and A053669(k') = A020639(k), where k' stands for the arithmetic derivative of k, A020639 returns the least prime factor of its argument, and A053669 is the least prime not dividing its argument.

The programs for A393065, there is no canonical definition to state claims against.
-/

/-! ## A393065.P1621503222532085575

`eq[1, A393064(n)]`
-/

namespace A393065.P1621503222532085575
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393064 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A393065.P1621503222532085575

/-! ## A393065.P14009294193134651905

`filter[A370125(n+1), A391844(#)]`
-/

namespace A393065.P14009294193134651905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370125 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A391844 (f1 j).toNat = 1) n)

end

end A393065.P14009294193134651905

/-! ## A393065.P9397720886981078580

`filter[A370125(n+1), A393064(#)]`
-/

namespace A393065.P9397720886981078580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370125 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A393064 (f1 j).toNat = 1) n)

end

end A393065.P9397720886981078580

/-! ## A393065.P13988272647795599134

`filter[A391845(n+1), A370124(#)]`
-/

namespace A393065.P13988272647795599134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391845 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A370124 (f1 j).toNat = 1) n)

end

end A393065.P13988272647795599134

/-! ## A393065.P5657286477664801394

`filter[A391845(n+1), A393064(#)]`
-/

namespace A393065.P5657286477664801394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391845 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A393064 (f1 j).toNat = 1) n)

end

end A393065.P5657286477664801394

/-! ## A393065.P7380543971759564483

`∩[A370125(n+1), A391845(n+1)]`
-/

namespace A393065.P7380543971759564483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370125 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391845 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A393065.P7380543971759564483

/-! ## A393065.P12548950054397449824

`filter[A359821(n+1), A393064(#)]`
-/

namespace A393065.P12548950054397449824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359821 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A393064 (f1 j).toNat = 1) n)

end

end A393065.P12548950054397449824

/-! ## A393065.P16960924375443921071

`filter[A356312(n+1), A393064(#)]`
-/

namespace A393065.P16960924375443921071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356312 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A393064 (f1 j).toNat = 1) n)

end

end A393065.P16960924375443921071

/-! ## A393065.P14319543629376296305

`filter[A014528(n), A393064(#)]`
-/

namespace A393065.P14319543629376296305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014528 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A393064 (f1 j).toNat = 1) n)

end

end A393065.P14319543629376296305

/-! ## A393065.P15898404634714583816

`filter[A042968(n+1), A393064(#)]`
-/

namespace A393065.P15898404634714583816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042968 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A393064 (f1 j).toNat = 1) n)

end

end A393065.P15898404634714583816

/-! ## A393065.P16710015989542108527

`filter[A119316(n+1), A393064(#)]`
-/

namespace A393065.P16710015989542108527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119316 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A393064 (f1 j).toNat = 1) n)

end

end A393065.P16710015989542108527

/-! ## A393065.P8508315823044663358

`filter[A361102(n+1), A393064(#)]`
-/

namespace A393065.P8508315823044663358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361102 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A393064 (f1 j).toNat = 1) n)

end

end A393065.P8508315823044663358

/-! ## A393065.P12682065933038911074

`filter[A387335(n+1), A393064(#)]`
-/

namespace A393065.P12682065933038911074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387335 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A393064 (f1 j).toNat = 1) n)

end

end A393065.P12682065933038911074

/-! ## A393065.P10067197372150515941

`filter[A139118(n+1), A393064(#)]`
-/

namespace A393065.P10067197372150515941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139118 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A393064 (f1 j).toNat = 1) n)

end

end A393065.P10067197372150515941

/-! ## A393065.P8852822390067291578

`filter[A018252(n+1), A393064(#)]`
-/

namespace A393065.P8852822390067291578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A393064 (f1 j).toNat = 1) n)

end

end A393065.P8852822390067291578

/-! ## A393065.P9540850527791958667

`filter[A056653(n+1), A393064(#)]`
-/

namespace A393065.P9540850527791958667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056653 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A393064 (f1 j).toNat = 1) n)

end

end A393065.P9540850527791958667

/-! ## A393065.P9701360069415603286

`filter[A065090(n+1), A393064(#)]`
-/

namespace A393065.P9701360069415603286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065090 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A393064 (f1 j).toNat = 1) n)

end

end A393065.P9701360069415603286

/-! ## A393065.P8412255771926949840

`filter[A141468(n+1), A393064(#)]`
-/

namespace A393065.P8412255771926949840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A393064 (f1 j).toNat = 1) n)

end

end A393065.P8412255771926949840

/-! ## A393065.P17983154410764051557

`filter[A171581(n+1), A393064(#)]`
-/

namespace A393065.P17983154410764051557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171581 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A393064 (f1 j).toNat = 1) n)

end

end A393065.P17983154410764051557

/-! ## A393065.P13982294095285186239

`filter[A173905(n+1), A393064(#)]`
-/

namespace A393065.P13982294095285186239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173905 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A393064 (f1 j).toNat = 1) n)

end

end A393065.P13982294095285186239

/-!
# A393066: Numbers k in A393065 such that k+1 is also in A393065.

The programs for A393066, there is no canonical definition to state claims against.
-/

/-! ## A393066.P131873273124079849

`A374442(A002144(n+1))`
-/

namespace A393066.P131873273124079849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374442 (A002144 (n + 1)).toNat

end

end A393066.P131873273124079849

/-! ## A393066.P14075035241280316678

`A374442(A077426(n+1))`
-/

namespace A393066.P14075035241280316678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374442 (A077426 (n + 1)).toNat

end

end A393066.P14075035241280316678

/-! ## A393066.P13763148394552418857

`A374442(A175768(n+1))`
-/

namespace A393066.P13763148394552418857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374442 (A175768 (n + 1)).toNat

end

end A393066.P13763148394552418857

/-!
# A393067: a(n) = 1 if A276086(A003415(n)) <= n, otherwise 0, where A003415 is the arithmetic derivative and A276086 is the primorial base exp-function.

The programs for A393067, there is no canonical definition to state claims against.
-/

/-! ## A393067.P9368115917178572774

`char[A392867(n+1)-1]`
-/

namespace A393067.P9368115917178572774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392867 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A393067.P9368115917178572774

/-! ## A393067.P15168755414553195508

`A010054(A001222(n+1)^A071648(n+1))`
-/

namespace A393067.P15168755414553195508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (SequenceMachineLib.roundAway ((A001222 (n + 1) : ℚ) ^ (A071648 (n + 1) : ℤ))).toNat

end

end A393067.P15168755414553195508

/-! ## A393067.P7715776415050353596

`A010054(A144494(n+1)^A071648(n+1))`
-/

namespace A393067.P7715776415050353596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (SequenceMachineLib.roundAway ((A144494 (n + 1) : ℚ) ^ (A071648 (n + 1) : ℤ))).toNat

end

end A393067.P7715776415050353596

/-! ## A393067.P10592081316856657797

`A057427(C(A014963(3*n+5), A326334(n+1)))`
-/

namespace A393067.P10592081316856657797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (Nat.choose (A014963 (3 * n + 5)).toNat (A326334 (n + 1)).toNat)

end

end A393067.P10592081316856657797

/-!
# A393068: a(n) = A391844(n) * A393067(n).

The programs for A393068, there is no canonical definition to state claims against.
-/

/-! ## A393068.P12028907334772120372

`A391844(n+1)*A393067(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A393068.P12028907334772120372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391844 (n + 1) * A393067 (n + 1)

end

end A393068.P12028907334772120372

/-! ## A393068.P7170307916036841326

`char[A392868(n+1)-1]`
-/

namespace A393068.P7170307916036841326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392868 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A393068.P7170307916036841326

/-! ## A393068.P15066185396342873610

`A010054(A328107(3*n+2)-A334947(2*n+1))`
-/

namespace A393068.P15066185396342873610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (A328107 (3 * n + 2) - A334947 (2 * n + 1)).toNat

end

end A393068.P15066185396342873610

/-! ## A393068.P2230016904509920324

`A010054(5*A053415(n))`
-/

namespace A393068.P2230016904509920324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (5 * A053415 n).toNat

end

end A393068.P2230016904509920324

/-! ## A393068.P6901296999561212935

`A354817(A137004(n+2))`
-/

namespace A393068.P6901296999561212935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354817 (A137004 (n + 2)).toNat

end

end A393068.P6901296999561212935

/-!
# A393069: Numbers whose prime divisors all start with the same digit.

The programs for A393069, there is no canonical definition to state claims against.
-/

/-! ## A393069.P4794123236691551409

`A000961(n+1)-A055641(A229345(n+1))`
-/

namespace A393069.P4794123236691551409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1) - A055641 (A229345 (n + 1)).toNat

end

end A393069.P4794123236691551409

/-! ## A393069.P4930385012551289036

`A000961(n+1)-A072401(A221072(n+1))`
-/

namespace A393069.P4930385012551289036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1) - A072401 (A221072 (n + 1)).toNat

end

end A393069.P4930385012551289036

/-!
# A393070: Numbers k such that A276086(k) <= A003959(k).

The programs for A393070, there is no canonical definition to state claims against.
-/

/-! ## A393070.P15707639398864882242

`lt[A005117(A276086(n)), A003415(3*n)]`
-/

namespace A393070.P15707639398864882242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (A276086 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (3 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A393070.P15707639398864882242

/-! ## A393070.P324547959769723518

`lt[A373849(n), A216345(A156251(2*(n+1)))]`
-/

namespace A393070.P324547959769723518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373849 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216345 (A156251 (2 * (n + 1))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A393070.P324547959769723518

/-! ## A393070.P14582349808383348154

`lt[A300841(A276086(n)), A297111(2*n+1)]`
-/

namespace A393070.P14582349808383348154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300841 (A276086 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297111 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A393070.P14582349808383348154

/-!
# A393071: Numbers k such that A276086(k) is a multiple of A003415(k) and A276087(k) is a multiple of A327859(k).

The programs for A393071, there is no canonical definition to state claims against.
-/

/-! ## A393071.P15362460820835867665

`filter[A383303(n+1), A358220(#)]`
-/

namespace A393071.P15362460820835867665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383303 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358220 (f1 j).toNat = 1) n)

end

end A393071.P15362460820835867665

/-! ## A393071.P17142653979494433247

`∩[A358221(n+1), A383303(n+1)]`
-/

namespace A393071.P17142653979494433247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358221 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383303 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A393071.P17142653979494433247

/-! ## A393071.P8767709245177707459

`eq[A351230(n), A383302(n)]`
-/

namespace A393071.P8767709245177707459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351230 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383302 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A393071.P8767709245177707459

/-!
# A393073: Convolution of the two tribonacci sequences A000073 and A001590.

The programs for A393073, the canonical program `A393073.P2538012477291526266` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A393073 has offset 0).

The definition of A393073 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A393073.P2538012477291526266

`2*a(n-1)+a(n-2)-3*a(n-4)-2*a(n-5)-a(n-6)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=1, a(4)=1, a(5)=3`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A393073

/-- `2*a(n-1)+a(n-2)-3*a(n-4)-2*a(n-5)-a(n-6)` -/
def P2538012477291526266.Spec : Prop :=
  ∀ n, P2538012477291526266.a n = A393073 n

theorem P2538012477291526266.correct : P2538012477291526266.Spec := by
  intro n
  simp only [A393073]

end A393073

/-! ## A393073.P6023438952441580462

`A073778(n+1)-A073778(n)`
-/

namespace A393073.P6023438952441580462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073778 (n + 1) - A073778 n

end

end A393073.P6023438952441580462

namespace A393073

/-- `A073778(n+1)-A073778(n)` -/
def P6023438952441580462.Spec : Prop :=
  ∀ n, P6023438952441580462.a n = A393073 n

end A393073

/-! ## A393073.P14248509068836803792

`Δ[A073778(n)]`
-/

namespace A393073.P14248509068836803792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A393073.P14248509068836803792

namespace A393073

/-- `Δ[A073778(n)]` -/
def P14248509068836803792.Spec : Prop :=
  ∀ n, P14248509068836803792.a n = A393073 n

end A393073

/-! ## A393073.P18356724741647028950

`A135660(A008930(n)²)`
-/

namespace A393073.P18356724741647028950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135660 (A008930 n ^ 2).toNat

end

end A393073.P18356724741647028950

namespace A393073

/-- `A135660(A008930(n)²)` -/
def P18356724741647028950.Spec : Prop :=
  ∀ n, P18356724741647028950.a n = A393073 n

end A393073

/-! ## A393073.P4142716447971306916

`A098357(A384614(n+1))`
-/

namespace A393073.P4142716447971306916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098357 (A384614 (n + 1)).toNat

end

end A393073.P4142716447971306916

namespace A393073

/-- `A098357(A384614(n+1))` -/
def P4142716447971306916.Spec : Prop :=
  ∀ n, P4142716447971306916.a n = A393073 n

end A393073

/-!
# A393076: a(n) is the last bit in the bit string s_n, where s_0 is 10 and s_n is the concatenation of s_{n-1} with itself with the last bit removed and then reversed.

The programs for A393076, there is no canonical definition to state claims against.
-/

/-! ## A393076.P7179886957418045854

`A284683(A286088(n+1))`
-/

namespace A393076.P7179886957418045854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284683 (A286088 (n + 1)).toNat

end

end A393076.P7179886957418045854

/-! ## A393076.P9322975799557509949

`A010059(A353744(n+1)+A275870(2*(n+1)))`
-/

namespace A393076.P9322975799557509949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010059 (A353744 (n + 1) + A275870 (2 * (n + 1))).toNat

end

end A393076.P9322975799557509949

/-! ## A393076.P3873640417477279430

`val(A282389(n+2), 2)`
-/

namespace A393076.P3873640417477279430
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A282389 (n + 2)).toNat 2

end

end A393076.P3873640417477279430

/-! ## A393076.P7520132474234863493

`A190224(A071907(2*n+5)^A007318(n))`
-/

namespace A393076.P7520132474234863493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190224 (SequenceMachineLib.roundAway ((A071907 (2 * n + 5) : ℚ) ^ (A007318 n : ℤ))).toNat

end

end A393076.P7520132474234863493

/-! ## A393076.P10906577089253964122

`A008683(A071907(2*n+5)^A035441(n+1))`
-/

namespace A393076.P10906577089253964122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (SequenceMachineLib.roundAway ((A071907 (2 * n + 5) : ℚ) ^ (A035441 (n + 1) : ℤ))).toNat

end

end A393076.P10906577089253964122

/-!
# A393077: Number of non-isomorphic arithmetic expressions with n variables that can be constructed using +,-,*,/ together with parentheses.

The programs for A393077, there is no canonical definition to state claims against.
-/

/-! ## A393077.P12376961631765688686

`A289495(xor(2, A138977(n+1)))`
-/

namespace A393077.P12376961631765688686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289495 (Int.xor 2 (A138977 (n + 1))).toNat

end

end A393077.P12376961631765688686

/-!
# A393081: Third column of A392806.

The programs for A393081, there is no canonical definition to state claims against.
-/

/-! ## A393081.P13290468726515886337

`A257850(2*n)%A335480(floor(sqrt(n))!)`
-/

namespace A393081.P13290468726515886337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A257850 (2 * n)) (A335480 (Nat.factorial (Nat.sqrt n)))

end

end A393081.P13290468726515886337

/-! ## A393081.P16614234933101380372

`A257297(2*n)%A233780(2*(n+2))`
-/

namespace A393081.P16614234933101380372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A257297 (2 * n)) (A233780 (2 * (n + 2)))

end

end A393081.P16614234933101380372

/-! ## A393081.P9350860733830658703

`A007954(2*n)%A000027(A003242(n))`
-/

namespace A393081.P9350860733830658703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007954 (2 * n)) (A000027 (A003242 n).toNat)

end

end A393081.P9350860733830658703

/-! ## A393081.P7380454909192637442

`A257850(2*n)%A000203(A055389(n))`
-/

namespace A393081.P7380454909192637442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A257850 (2 * n)) (A000203 (A055389 n).toNat)

end

end A393081.P7380454909192637442

/-! ## A393081.P9216445893107067458

`A257850(lt[A128504(3*n+4), A358507(n+1)])`
-/

namespace A393081.P9216445893107067458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128504 (3 * n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358507 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257850 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A393081.P9216445893107067458

/-!
# A393082: Fourth column of A392806.

The programs for A393082, there is no canonical definition to state claims against.
-/

/-! ## A393082.P17015571366439459232

`A257297(A024639(n))`
-/

namespace A393082.P17015571366439459232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257297 (A024639 n).toNat

end

end A393082.P17015571366439459232

/-!
# A393083: Anarboricity of the n-triangular honeycomb rook graph.

The programs for A393083, there is no canonical definition to state claims against.
-/

/-! ## A393083.P404332301171391824

`A217713(A058585(n))`
-/

namespace A393083.P404332301171391824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217713 (A058585 n).toNat

end

end A393083.P404332301171391824

/-! ## A393083.P6987320920543484502

`A347697(A148641(n))`
-/

namespace A393083.P6987320920543484502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347697 (A148641 n).toNat

end

end A393083.P6987320920543484502

/-! ## A393083.P6674849356857104754

`A347697(A148678(n))`
-/

namespace A393083.P6674849356857104754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347697 (A148678 n).toNat

end

end A393083.P6674849356857104754

/-! ## A393083.P832271887160740841

`A347697(A148681(n))`
-/

namespace A393083.P832271887160740841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347697 (A148681 n).toNat

end

end A393083.P832271887160740841

/-! ## A393083.P14552863114834763911

`A347697(A148682(n))`
-/

namespace A393083.P14552863114834763911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347697 (A148682 n).toNat

end

end A393083.P14552863114834763911

/-!
# A393085: Irregular table T(n,k) where row n lists exponents m such that A001597(n) = r^m for some integer r.

The programs for A393085, there is no canonical definition to state claims against.
-/

/-! ## A393085.P13639148815566594268

`A007305(A056450(n)+A027746(n+1))`
-/

namespace A393085.P13639148815566594268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007305 (A056450 n + A027746 (n + 1)).toNat

end

end A393085.P13639148815566594268

/-! ## A393085.P858512361316438843

`A159081(A265110(n+1)^A161511(n))`
-/

namespace A393085.P858512361316438843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159081 (SequenceMachineLib.roundAway ((A265110 (n + 1) : ℚ) ^ (A161511 n : ℤ))).toNat

end

end A393085.P858512361316438843

/-! ## A393085.P1813778410158853243

`A159081(A265110(n+1)^A159081(n+1))`
-/

namespace A393085.P1813778410158853243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159081 (SequenceMachineLib.roundAway ((A265110 (n + 1) : ℚ) ^ (A159081 (n + 1) : ℤ))).toNat

end

end A393085.P1813778410158853243

/-! ## A393085.P15249998764918478927

`A027749(A027749(n+1)%A068974(n+1))`
-/

namespace A393085.P15249998764918478927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027749 (Int.tmod (A027749 (n + 1)) (A068974 (n + 1))).toNat

end

end A393085.P15249998764918478927

/-! ## A393085.P14497515120306011755

`A235791(A027746(n+1)%A128024(n+1))`
-/

namespace A393085.P14497515120306011755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235791 (Int.tmod (A027746 (n + 1)) (A128024 (n + 1))).toNat

end

end A393085.P14497515120306011755

/-!
# A393092: Irregular triangle read by rows: T(n,k) is the number of ways to partition n labeled elements into pie slices whose part sizes are given by the k-th partition of n, allowing the pie to be turned over, partitions given in Abramowitz-Stegun order.

The programs for A393092, there is no canonical definition to state claims against.
-/

/-! ## A393092.P14291099842166380512

`or(A007814(A129852(n+2)), A036040(n+1))`
-/

namespace A393092.P14291099842166380512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A007814 (A129852 (n + 2)).toNat) (A036040 (n + 1))

end

end A393092.P14291099842166380512

/-! ## A393092.P798804041032386150

`A335446(A076571(n))+A080575(n+1)`
-/

namespace A393092.P798804041032386150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335446 (A076571 n).toNat + A080575 (n + 1)

end

end A393092.P798804041032386150

/-! ## A393092.P14054549854283382886

`A373954(A326523(n))+A036040(n+1)`
-/

namespace A393092.P14054549854283382886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373954 (A326523 n).toNat + A036040 (n + 1)

end

end A393092.P14054549854283382886

/-! ## A393092.P10738242113092562429

`A335446(A336163(n+3))+A036040(n+1)`
-/

namespace A393092.P10738242113092562429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335446 (A336163 (n + 3)).toNat + A036040 (n + 1)

end

end A393092.P10738242113092562429

/-! ## A393092.P4374432021950001375

`A036040(n+1)+A035185(A201998(3*n+5))`
-/

namespace A393092.P4374432021950001375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036040 (n + 1) + A035185 (A201998 (3 * n + 5)).toNat

end

end A393092.P4374432021950001375

/-!
# A393093: Group the partitions of n into 3 parts into sets whose smallest parts are equal. a(n) is the sum of the maximum values of all the middle parts in each set.

The programs for A393093, the canonical program `A393093.P5340454546163931360` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A393093 has offset 0).

The definition of A393093 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A393093.P5340454546163931360

`a(n-2)+2*a(n-3)-2*a(n-5)-a(n-6)+a(n-8)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=1, a(4)=1, a(5)=2, a(6)=4, a(7)=5`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A393093

/-- `a(n-2)+2*a(n-3)-2*a(n-5)-a(n-6)+a(n-8)` -/
def P5340454546163931360.Spec : Prop :=
  ∀ n, P5340454546163931360.a n = A393093 n

theorem P5340454546163931360.correct : P5340454546163931360.Spec := by
  intro n
  simp only [A393093]

end A393093

/-! ## A393093.P12977989905487363266

`A069905(n)+A211534(n)`
-/

namespace A393093.P12977989905487363266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069905 n + A211534 n

end

end A393093.P12977989905487363266

namespace A393093

/-- `A069905(n)+A211534(n)` -/
def P12977989905487363266.Spec : Prop :=
  ∀ n, P12977989905487363266.a n = A393093 n

end A393093

/-! ## A393093.P2902106686088084356

`A211546(n)-A393095(n)`
-/

namespace A393093.P2902106686088084356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211546 n - A393095 n

end

end A393093.P2902106686088084356

namespace A393093

/-- `A211546(n)-A393095(n)` -/
def P2902106686088084356.Spec : Prop :=
  ∀ n, P2902106686088084356.a n = A393093 n

end A393093

/-! ## A393093.P5108818735553874554

`A033638(n+1)-A006446(n+1)`
-/

namespace A393093.P5108818735553874554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033638 (n + 1) - A006446 (n + 1)

end

end A393093.P5108818735553874554

namespace A393093

/-- `A033638(n+1)-A006446(n+1)` -/
def P5108818735553874554.Spec : Prop :=
  ∀ n, P5108818735553874554.a n = A393093 n

end A393093

/-! ## A393093.P3857865369725437347

`A211540(n)+A000217(A002264(n))`
-/

namespace A393093.P3857865369725437347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211540 n + A000217 (A002264 n).toNat

end

end A393093.P3857865369725437347

namespace A393093

/-- `A211540(n)+A000217(A002264(n))` -/
def P3857865369725437347.Spec : Prop :=
  ∀ n, P3857865369725437347.a n = A393093 n

end A393093

/-!
# A393095: Group the partitions of n into 3 parts into sets whose smallest parts are equal. a(n) is the sum of the minimum values of all the largest parts in each set.

The programs for A393095, the canonical program `A393095.P8856493313611828990` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A393095 has offset 0).

The definition of A393095 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A393095.P8856493313611828990

`a(n-2)+2*a(n-3)-2*a(n-5)-a(n-6)+a(n-8)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=1, a(4)=2, a(5)=2, a(6)=5, a(7)=6`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A393095

/-- `a(n-2)+2*a(n-3)-2*a(n-5)-a(n-6)+a(n-8)` -/
def P8856493313611828990.Spec : Prop :=
  ∀ n, P8856493313611828990.a n = A393095 n

theorem P8856493313611828990.correct : P8856493313611828990.Spec := by
  intro n
  simp only [A393095]

end A393095

/-! ## A393095.P12858645722068076717

`A211546(n)-A393093(n)`
-/

namespace A393095.P12858645722068076717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211546 n - A393093 n

end

end A393095.P12858645722068076717

namespace A393095

/-- `A211546(n)-A393093(n)` -/
def P12858645722068076717.Spec : Prop :=
  ∀ n, P12858645722068076717.a n = A393095 n

end A393095

/-! ## A393095.P1187600567928645403

`A002620(n)-A008133(n+1)`
-/

namespace A393095.P1187600567928645403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 n - A008133 (n + 1)

end

end A393095.P1187600567928645403

namespace A393095

/-- `A002620(n)-A008133(n+1)` -/
def P1187600567928645403.Spec : Prop :=
  ∀ n, P1187600567928645403.a n = A393095 n

end A393095

/-! ## A393095.P18289105635541772489

`A211546(n)-(A211534(n)+A069905(n))`
-/

namespace A393095.P18289105635541772489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211546 n - (A211534 n + A069905 n)

end

end A393095.P18289105635541772489

namespace A393095

/-- `A211546(n)-(A211534(n)+A069905(n))` -/
def P18289105635541772489.Spec : Prop :=
  ∀ n, P18289105635541772489.a n = A393095 n

end A393095

/-! ## A393095.P1375312493767891784

`A008217(2*n+1)-A008133(n+1)`
-/

namespace A393095.P1375312493767891784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008217 (2 * n + 1) - A008133 (n + 1)

end

end A393095.P1375312493767891784

namespace A393095

/-- `A008217(2*n+1)-A008133(n+1)` -/
def P1375312493767891784.Spec : Prop :=
  ∀ n, P1375312493767891784.a n = A393095 n

end A393095

/-! ## A393095.P11649277269765302783

`A005868(A317633(n+2))`
-/

namespace A393095.P11649277269765302783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005868 (A317633 (n + 2)).toNat

end

end A393095.P11649277269765302783

namespace A393095

/-- `A005868(A317633(n+2))` -/
def P11649277269765302783.Spec : Prop :=
  ∀ n, P11649277269765302783.a n = A393095 n

end A393095

/-!
# A393096: Numbers k such that sopf(k) and k-sopf(k) are prime, where sopf() is the sum of distinct prime factors.

The programs for A393096, there is no canonical definition to state claims against.
-/

/-! ## A393096.P5758559712093208522

`A394062(n+1)+A394061(n+1)`
-/

namespace A393096.P5758559712093208522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394062 (n + 1) + A394061 (n + 1)

end

end A393096.P5758559712093208522

/-! ## A393096.P17531313535076189918

`∩[A071179(n+1), A114522(n+1)]`
-/

namespace A393096.P17531313535076189918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071179 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114522 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A393096.P17531313535076189918

/-!
# A393097: Number of partitions p of n such that max(p) > 3*min(p).

The programs for A393097, there is no canonical definition to state claims against.
-/

/-! ## A393097.P15197973468798023005

`A000041(n+1)-A393973(n+1)`
-/

namespace A393097.P15197973468798023005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) - A393973 (n + 1)

end

end A393097.P15197973468798023005

/-! ## A393097.P5801125260754573600

`Δ[A025065(2*n)]-A393973(n+1)`
-/

namespace A393097.P5801125260754573600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025065 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A393973 (n + 1)

end

end A393097.P5801125260754573600

/-! ## A393097.P2380275332723717257

`A363211(n+1)-A237825(n+1)`
-/

namespace A393097.P2380275332723717257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363211 (n + 1) - A237825 (n + 1)

end

end A393097.P2380275332723717257

/-! ## A393097.P5203663676910432975

`A363211(n+1)+A393972(n+1)-A393973(n+1)`
-/

namespace A393097.P5203663676910432975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363211 (n + 1) + (A393972 (n + 1) - A393973 (n + 1))

end

end A393097.P5203663676910432975

/-! ## A393097.P5107149812263422957

`A000041(n)-A070939(A055775(n))`
-/

namespace A393097.P5107149812263422957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A070939 (A055775 n).toNat

end

end A393097.P5107149812263422957

/-!
# A393098: Number of partitions of [n] whose set of block sizes equals [k] for some k.

The programs for A393098, there is no canonical definition to state claims against.
-/

/-! ## A393098.P8707965234145037047

`A107819(A275309(n))`
-/

namespace A393098.P8707965234145037047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107819 (A275309 n).toNat

end

end A393098.P8707965234145037047

/-! ## A393098.P8929703849665838882

`A375502(A369268(n))`
-/

namespace A393098.P8929703849665838882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375502 (A369268 n).toNat

end

end A393098.P8929703849665838882

/-! ## A393098.P4771968105756956476

`A375502(A171711(n+1))`
-/

namespace A393098.P4771968105756956476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375502 (A171711 (n + 1)).toNat

end

end A393098.P4771968105756956476

/-!
# A393099: Number of 4-stack polyominoes having semiperimeter equal to n.

The programs for A393099, there is no canonical definition to state claims against.
-/

/-! ## A393099.P16313775122471358391

`A381991(A150436(n))`
-/

namespace A393099.P16313775122471358391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381991 (A150436 n).toNat

end

end A393099.P16313775122471358391

/-! ## A393099.P17837379948206913254

`filter[A128611(n), A011655(#)]`
-/

namespace A393099.P17837379948206913254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128611 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A011655 (f1 j).toNat = 1) n)

end

end A393099.P17837379948206913254

