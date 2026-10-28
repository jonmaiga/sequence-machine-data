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
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C039
import Seq.B000.C043
import Seq.B000.C044
import Seq.B000.C047
import Seq.B001.C000
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B002.C000
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
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
# A237201: Smallest integer m such that the n consecutive numbers m, m+1, ..., m+n-1 have n prime factors each, counted with multiplicity; a(n) = 0 if no such number exists.

The programs for A237201, there is no canonical definition to state claims against.
-/

/-! ## A237201.P275553841452457913

`A374449(2^(n+1))`
-/

namespace A237201.P275553841452457913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374449 (2 ^ (n + 1))

end

end A237201.P275553841452457913

/-!
# A237203: Least positive integer k < n/2 with phi(k)*phi(n-k) a square, or 0 if such a number k does not exist.

The programs for A237203, there is no canonical definition to state claims against.
-/

/-! ## A237203.P17653348528722846798

`A328311(A251685(n))`
-/

namespace A237203.P17653348528722846798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328311 (A251685 n).toNat

end

end A237203.P17653348528722846798

/-! ## A237203.P10405000497370715461

`A275948(A077999(n)+2)`
-/

namespace A237203.P10405000497370715461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275948 (A077999 n + 2).toNat

end

end A237203.P10405000497370715461

/-! ## A237203.P4376188353433074491

`A234323(A032198(n+4)+2)`
-/

namespace A237203.P4376188353433074491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234323 (A032198 (n + 4) + 2).toNat

end

end A237203.P4376188353433074491

/-! ## A237203.P8530638996043568786

`A081129(n)-A081120(A087074(n+1))`
-/

namespace A237203.P8530638996043568786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081129 n - A081120 (A087074 (n + 1)).toNat

end

end A237203.P8530638996043568786

/-! ## A237203.P16191825729173516049

`A217522(A313825(n))`
-/

namespace A237203.P16191825729173516049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217522 (A313825 n).toNat

end

end A237203.P16191825729173516049

/-!
# A237204: Number of (n+1)X(1+1) 0..3 arrays with the upper median plus the lower median minus the minimum of every 2X2 subblock equal.

The programs for A237204, there is no canonical definition to state claims against.
-/

/-! ## A237204.P4258394485339400050

`A237211(∑[n]+1)`
-/

namespace A237204.P4258394485339400050
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237211 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A237204.P4258394485339400050

/-! ## A237204.P4224382746840246432

`lcm(2, A237211(A000124(n)))`
-/

namespace A237204.P4224382746840246432
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A237211 (A000124 n).toNat)

end

end A237204.P4224382746840246432

/-! ## A237204.P7401276106752079549

`record[A010054(n)*A237211(n+1)]`
-/

namespace A237204.P7401276106752079549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A237211 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237204.P7401276106752079549

/-! ## A237204.P4104933492446650590

`record[A237211(n+1)/A008958(n)]`
-/

namespace A237204.P4104933492446650590
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A237211 (n + 1) : ℚ) / (A008958 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237204.P4104933492446650590

/-! ## A237204.P12989407411361810136

`record[A237211(n+1)/A056588(n)]`
-/

namespace A237204.P12989407411361810136
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A237211 (n + 1) : ℚ) / (A056588 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237204.P12989407411361810136

/-!
# A237205: Number of (n+1)X(2+1) 0..3 arrays with the upper median plus the lower median minus the minimum of every 2X2 subblock equal.

The programs for A237205, there is no canonical definition to state claims against.
-/

/-! ## A237205.P15294823856355425049

`A237211(∑[n+1]+2)`
-/

namespace A237205.P15294823856355425049
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237211 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A237205.P15294823856355425049

/-! ## A237205.P8645995543415599595

`record[A010054(n)*A237211(n+2)]`
-/

namespace A237205.P8645995543415599595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A237211 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237205.P8645995543415599595

/-! ## A237205.P5135355187646372155

`record[A237211(lt[A008958(n), n])]`
-/

namespace A237205.P5135355187646372155
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008958 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237211 (SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237205.P5135355187646372155

/-! ## A237205.P740835941139831230

`record[A237211(A259604(n+1)-1)]`
-/

namespace A237205.P740835941139831230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237211 (A259604 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237205.P740835941139831230

/-! ## A237205.P6180810220308751990

`record[A237211(A198453(n+1))]`
-/

namespace A237205.P6180810220308751990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237211 (A198453 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237205.P6180810220308751990

/-!
# A237206: Number of (n+1)X(3+1) 0..3 arrays with the upper median plus the lower median minus the minimum of every 2X2 subblock equal.

The programs for A237206, there is no canonical definition to state claims against.
-/

/-! ## A237206.P14847004667020228111

`A237211(∑[n+2]+4)`
-/

namespace A237206.P14847004667020228111
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237211 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A237206.P14847004667020228111

/-! ## A237206.P14268220456563256873

`lcm(A033999(n), A237211(A167614(n+1)))`
-/

namespace A237206.P14268220456563256873
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A237211 (A167614 (n + 1)).toNat)

end

end A237206.P14268220456563256873

/-! ## A237206.P5927339793508543438

`or(A000038(n), A237211(A167614(n+1)))`
-/

namespace A237206.P5927339793508543438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000038 n) (A237211 (A167614 (n + 1)).toNat)

end

end A237206.P5927339793508543438

/-! ## A237206.P16440714887016392040

`A237211(A167614(n+1))+A160990(n+1)`
-/

namespace A237206.P16440714887016392040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237211 (A167614 (n + 1)).toNat + A160990 (n + 1)

end

end A237206.P16440714887016392040

/-! ## A237206.P5403564292262851925

`A297235(n+1)+A237211(A167614(n+1))`
-/

namespace A237206.P5403564292262851925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297235 (n + 1) + A237211 (A167614 (n + 1)).toNat

end

end A237206.P5403564292262851925

/-!
# A237207: Number of (n+1)X(4+1) 0..3 arrays with the upper median plus the lower median minus the minimum of every 2X2 subblock equal.

The programs for A237207, there is no canonical definition to state claims against.
-/

/-! ## A237207.P4466455562762616416

`A237211(A374004(n+1))`
-/

namespace A237207.P4466455562762616416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237211 (A374004 (n + 1)).toNat

end

end A237207.P4466455562762616416

/-! ## A237207.P12817922897677518627

`A237211(A141214(n)+7)`
-/

namespace A237207.P12817922897677518627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237211 (A141214 n + 7).toNat

end

end A237207.P12817922897677518627

/-! ## A237207.P16815808991139646354

`A237211(A052905(n)+9)`
-/

namespace A237207.P16815808991139646354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237211 (A052905 n + 9).toNat

end

end A237207.P16815808991139646354

/-! ## A237207.P3330923179505059447

`A237211(A055999(n)+10)`
-/

namespace A237207.P3330923179505059447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237211 (A055999 n + 10).toNat

end

end A237207.P3330923179505059447

/-! ## A237207.P12654222610919279335

`A237211(A167614(n+2)+1)`
-/

namespace A237207.P12654222610919279335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237211 (A167614 (n + 2) + 1).toNat

end

end A237207.P12654222610919279335

/-!
# A237208: Number of (n+1)X(5+1) 0..3 arrays with the upper median plus the lower median minus the minimum of every 2X2 subblock equal.

The programs for A237208, there is no canonical definition to state claims against.
-/

/-! ## A237208.P14309130792851143859

`A237211(A374005(n+1))`
-/

namespace A237208.P14309130792851143859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237211 (A374005 (n + 1)).toNat

end

end A237208.P14309130792851143859

/-! ## A237208.P3314901818288059614

`A237211(A056000(n)+15)`
-/

namespace A237208.P3314901818288059614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237211 (A056000 n + 15).toNat

end

end A237208.P3314901818288059614

/-! ## A237208.P5830136320448519163

`A237211(A297284(n+1)+A055999(n)-1)`
-/

namespace A237208.P5830136320448519163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237211 (A297284 (n + 1) + (A055999 n - 1)).toNat

end

end A237208.P5830136320448519163

/-! ## A237208.P3207356084968521848

`A237211(A046691(n+3))`
-/

namespace A237208.P3207356084968521848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237211 (A046691 (n + 3)).toNat

end

end A237208.P3207356084968521848

/-! ## A237208.P16049155916634552692

`A237211(A056115(n)+11)`
-/

namespace A237208.P16049155916634552692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237211 (A056115 n + 11).toNat

end

end A237208.P16049155916634552692

/-!
# A237209: Number of (n+1) X (6+1) 0..3 arrays with the upper median plus the lower median minus the minimum of every 2 X 2 subblock equal.

The programs for A237209, there is no canonical definition to state claims against.
-/

/-! ## A237209.P10527148417581981141

`A237211(A374007(n+1))`
-/

namespace A237209.P10527148417581981141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237211 (A374007 (n + 1)).toNat

end

end A237209.P10527148417581981141

/-! ## A237209.P15434592485990189997

`A237211(A297284(n+2)+A055999(n+1))`
-/

namespace A237209.P15434592485990189997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237211 (A297284 (n + 2) + A055999 (n + 1)).toNat

end

end A237209.P15434592485990189997

/-! ## A237209.P11712057532069152917

`A237211(eq[8, A258709(n)])`
-/

namespace A237209.P11712057532069152917
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258709 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237211 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A237209.P11712057532069152917

/-! ## A237209.P10285812066857540695

`A237211(A055999(n+3)+1)`
-/

namespace A237209.P10285812066857540695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237211 (A055999 (n + 3) + 1).toNat

end

end A237209.P10285812066857540695

/-! ## A237209.P16183479403186943051

`A237211(lt[A038301(n+4), A038296(n)])`
-/

namespace A237209.P16183479403186943051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038301 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038296 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237211 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A237209.P16183479403186943051

/-!
# A237210: Number of (n+1) X (7+1) 0..3 arrays with the upper median plus the lower median minus the minimum of every 2 X 2 subblock equal.

The programs for A237210, there is no canonical definition to state claims against.
-/

/-! ## A237210.P9688217489374921910

`A237211(A374008(n+1))`
-/

namespace A237210.P9688217489374921910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237211 (A374008 (n + 1)).toNat

end

end A237210.P9688217489374921910

/-! ## A237210.P3825932255486602051

`A237211(eq[8, A131818(n+1)])`
-/

namespace A237210.P3825932255486602051
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237211 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A237210.P3825932255486602051

/-! ## A237210.P7864490394613521681

`A237211(eq[6, A193592(n)])`
-/

namespace A237210.P7864490394613521681
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237211 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A237210.P7864490394613521681

/-! ## A237210.P845448752561069691

`A237211(A297235(n+1)+A052905(n+4)-1)`
-/

namespace A237210.P845448752561069691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237211 (A297235 (n + 1) + (A052905 (n + 4) - 1)).toNat

end

end A237210.P845448752561069691

/-!
# A237212: Number of (n+1)X(1+1) 0..3 arrays with the maximum plus the upper median minus the lower median minus the minimum of every 2X2 subblock equal.

The programs for A237212, there is no canonical definition to state claims against.
-/

/-! ## A237212.P10210394834573603295

`A237218(∑[n]+1)`
-/

namespace A237212.P10210394834573603295
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237218 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A237212.P10210394834573603295

/-! ## A237212.P16402121477160904337

`record[A010054(n)*A237218(n+1)]`
-/

namespace A237212.P16402121477160904337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A237218 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237212.P16402121477160904337

/-! ## A237212.P7120127960116302113

`record[A237218(n+1)/A013617(n)]`
-/

namespace A237212.P7120127960116302113
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A237218 (n + 1) : ℚ) / (A013617 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237212.P7120127960116302113

/-! ## A237212.P9320111300661643958

`record[A237218(n+1)/A022167(n)]`
-/

namespace A237212.P9320111300661643958
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A237218 (n + 1) : ℚ) / (A022167 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237212.P9320111300661643958

/-! ## A237212.P2862508952465358516

`record[root(A237218(n+1), A135837(n+1))]`
-/

namespace A237212.P2862508952465358516
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A237218 (n + 1) : ℝ) ^ (1 / (A135837 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237212.P2862508952465358516

/-!
# A237213: Number of (n+1)X(2+1) 0..3 arrays with the maximum plus the upper median minus the lower median minus the minimum of every 2X2 subblock equal.

The programs for A237213, there is no canonical definition to state claims against.
-/

/-! ## A237213.P5462103514408672070

`A237218(∑[n+1]+2)`
-/

namespace A237213.P5462103514408672070
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237218 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A237213.P5462103514408672070

/-! ## A237213.P13928139806024487019

`record[A237218(A286237(n+1)+1)]`
-/

namespace A237213.P13928139806024487019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237218 (A286237 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237213.P13928139806024487019

/-! ## A237213.P10144333451421805997

`record[A010054(n)*A237218(n+2)]`
-/

namespace A237213.P10144333451421805997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A237218 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237213.P10144333451421805997

/-! ## A237213.P16651181801291133189

`record[A237218(n+2)/A013617(n)]`
-/

namespace A237213.P16651181801291133189
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A237218 (n + 2) : ℚ) / (A013617 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237213.P16651181801291133189

/-! ## A237213.P17386818145830124495

`A237218(A133263(n+1))+A000007(3*n+2)`
-/

namespace A237213.P17386818145830124495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237218 (A133263 (n + 1)).toNat + A000007 (3 * n + 2)

end

end A237213.P17386818145830124495

/-!
# A237214: Number of (n+1)X(3+1) 0..3 arrays with the maximum plus the upper median minus the lower median minus the minimum of every 2X2 subblock equal.

The programs for A237214, there is no canonical definition to state claims against.
-/

/-! ## A237214.P15054576240275605487

`A237218(∑[n+2]+4)`
-/

namespace A237214.P15054576240275605487
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237218 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A237214.P15054576240275605487

/-! ## A237214.P4108822812958701440

`lcm(2, A237218(A167614(n+1)))`
-/

namespace A237214.P4108822812958701440
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A237218 (A167614 (n + 1)).toNat)

end

end A237214.P4108822812958701440

/-! ## A237214.P9766600615208311866

`A237218(A167614(n+1))+A011745(n)`
-/

namespace A237214.P9766600615208311866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237218 (A167614 (n + 1)).toNat + A011745 n

end

end A237214.P9766600615208311866

/-! ## A237214.P6027871016891616655

`or(A000038(n), A237218(A167614(n+1)))`
-/

namespace A237214.P6027871016891616655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000038 n) (A237218 (A167614 (n + 1)).toNat)

end

end A237214.P6027871016891616655

/-! ## A237214.P10057428404721135721

`A237218(A167499(n)+n)+A185274(n)`
-/

namespace A237214.P10057428404721135721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237218 (A167499 n + (n : ℤ)).toNat + A185274 n

end

end A237214.P10057428404721135721

/-!
# A237215: Number of (n+1)X(4+1) 0..3 arrays with the maximum plus the upper median minus the lower median minus the minimum of every 2X2 subblock equal.

The programs for A237215, there is no canonical definition to state claims against.
-/

/-! ## A237215.P2756568786789074942

`A237218(∑[n+3]+7)`
-/

namespace A237215.P2756568786789074942
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237218 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A237215.P2756568786789074942

/-!
# A237216: Number of (n+1)X(5+1) 0..3 arrays with the maximum plus the upper median minus the lower median minus the minimum of every 2X2 subblock equal.

The programs for A237216, there is no canonical definition to state claims against.
-/

/-! ## A237216.P12132485989813365307

`A237218(A374005(n+1))`
-/

namespace A237216.P12132485989813365307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237218 (A374005 (n + 1)).toNat

end

end A237216.P12132485989813365307

/-! ## A237216.P5449577664014868325

`A237218(A155212(n)+13)`
-/

namespace A237216.P5449577664014868325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237218 (A155212 n + 13).toNat

end

end A237216.P5449577664014868325

/-! ## A237216.P14857825331764581452

`A237218(eq[6, A131818(n+1)])`
-/

namespace A237216.P14857825331764581452
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237218 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A237216.P14857825331764581452

/-! ## A237216.P12362976064259302231

`A237218(eq[4, A193592(n)])`
-/

namespace A237216.P12362976064259302231
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237218 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A237216.P12362976064259302231

/-! ## A237216.P12022284045463773426

`A237218(eq[8, A140996(n)])`
-/

namespace A237216.P12022284045463773426
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140996 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237218 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A237216.P12022284045463773426

/-!
# A237217: Number of (n+1)X(6+1) 0..3 arrays with the maximum plus the upper median minus the lower median minus the minimum of every 2X2 subblock equal.

The programs for A237217, there is no canonical definition to state claims against.
-/

/-! ## A237217.P9610748163961800915

`A237218(A374007(n+1))`
-/

namespace A237217.P9610748163961800915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237218 (A374007 (n + 1)).toNat

end

end A237217.P9610748163961800915

/-! ## A237217.P15442434485146499079

`A237218(A000217(n+5)+6)`
-/

namespace A237217.P15442434485146499079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237218 (A000217 (n + 5) + 6).toNat

end

end A237217.P15442434485146499079

/-! ## A237217.P1329412514087888818

`A237218(eq[7, A131818(n+1)])`
-/

namespace A237217.P1329412514087888818
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237218 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A237217.P1329412514087888818

/-! ## A237217.P14472106014598033507

`A237218(A052905(n+3))`
-/

namespace A237217.P14472106014598033507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237218 (A052905 (n + 3)).toNat

end

end A237217.P14472106014598033507

/-! ## A237217.P10184138444946476732

`A237218(eq[5, A193592(n)])`
-/

namespace A237217.P10184138444946476732
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237218 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A237217.P10184138444946476732

/-!
# A237219: Number of (n+1)X(1+1) 0..3 arrays with the maximum plus the lower median minus the upper median of every 2X2 subblock equal.

The programs for A237219, there is no canonical definition to state claims against.
-/

/-! ## A237219.P17757613318415161806

`A237225(∑[n]+1)`
-/

namespace A237219.P17757613318415161806
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237225 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A237219.P17757613318415161806

/-! ## A237219.P17423411936238333633

`lcm(2, A237225(A000124(n)))`
-/

namespace A237219.P17423411936238333633
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A237225 (A000124 n).toNat)

end

end A237219.P17423411936238333633

/-! ## A237219.P14210665666279163509

`record[A237225(n+1)/A156765(n)]`
-/

namespace A237219.P14210665666279163509
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A237225 (n + 1) : ℚ) / (A156765 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237219.P14210665666279163509

/-! ## A237219.P6785618250495141158

`record[root(A237225(n+1), A026769(n))]`
-/

namespace A237219.P6785618250495141158
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A237225 (n + 1) : ℝ) ^ (1 / (A026769 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237219.P6785618250495141158

/-! ## A237219.P10346928822213598729

`record[root(A237225(n+1), A116925(n))]`
-/

namespace A237219.P10346928822213598729
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A237225 (n + 1) : ℝ) ^ (1 / (A116925 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237219.P10346928822213598729

/-!
# A237220: Number of (n+1)X(2+1) 0..3 arrays with the maximum plus the lower median minus the upper median of every 2X2 subblock equal.

The programs for A237220, there is no canonical definition to state claims against.
-/

/-! ## A237220.P3397303379364602168

`A237225(∑[n+1]+2)`
-/

namespace A237220.P3397303379364602168
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237225 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A237220.P3397303379364602168

/-! ## A237220.P1569105897038578470

`record[root(A237225(n+2), A116925(n))]`
-/

namespace A237220.P1569105897038578470
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A237225 (n + 2) : ℝ) ^ (1 / (A116925 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237220.P1569105897038578470

/-! ## A237220.P8808295394059929894

`lcm(2, A237225(A000096(n+1)))`
-/

namespace A237220.P8808295394059929894
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A237225 (A000096 (n + 1)).toNat)

end

end A237220.P8808295394059929894

/-! ## A237220.P8640214461277958085

`record[A237225(A198465(n+1)-1)]`
-/

namespace A237220.P8640214461277958085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237225 (A198465 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237220.P8640214461277958085

/-! ## A237220.P9200810007292310377

`A237225(A000096(n+1))+A000007(n+1)`
-/

namespace A237220.P9200810007292310377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237225 (A000096 (n + 1)).toNat + A000007 (n + 1)

end

end A237220.P9200810007292310377

/-!
# A237221: Number of (n+1)X(3+1) 0..3 arrays with the maximum plus the lower median minus the upper median of every 2X2 subblock equal.

The programs for A237221, there is no canonical definition to state claims against.
-/

/-! ## A237221.P749256704339687589

`A237225(∑[n+2]+4)`
-/

namespace A237221.P749256704339687589
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237225 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A237221.P749256704339687589

/-! ## A237221.P4627277820727180072

`lcm(2, A237225(A167614(n+1)))`
-/

namespace A237221.P4627277820727180072
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A237225 (A167614 (n + 1)).toNat)

end

end A237221.P4627277820727180072

/-! ## A237221.P9734222197930769477

`A237225(A167614(n+1))+A210716(n)`
-/

namespace A237221.P9734222197930769477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237225 (A167614 (n + 1)).toNat + A210716 n

end

end A237221.P9734222197930769477

/-! ## A237221.P9060328443974358485

`A237225(A167614(n+1))*A294775(n)`
-/

namespace A237221.P9060328443974358485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237225 (A167614 (n + 1)).toNat * A294775 n

end

end A237221.P9060328443974358485

/-! ## A237221.P10901054365908824871

`or(A000038(n), A237225(A167614(n+1)))`
-/

namespace A237221.P10901054365908824871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000038 n) (A237225 (A167614 (n + 1)).toNat)

end

end A237221.P10901054365908824871

/-!
# A237222: Number of (n+1)X(4+1) 0..3 arrays with the maximum plus the lower median minus the upper median of every 2X2 subblock equal.

The programs for A237222, there is no canonical definition to state claims against.
-/

/-! ## A237222.P2417644202357562083

`A237225(A374004(n+1))`
-/

namespace A237222.P2417644202357562083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237225 (A374004 (n + 1)).toNat

end

end A237222.P2417644202357562083

/-! ## A237222.P17332442185128812574

`A237225(A141214(n)+7)`
-/

namespace A237222.P17332442185128812574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237225 (A141214 n + 7).toNat

end

end A237222.P17332442185128812574

/-! ## A237222.P15645665855474833852

`A237225(A052905(n)+9)`
-/

namespace A237222.P15645665855474833852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237225 (A052905 n + 9).toNat

end

end A237222.P15645665855474833852

/-! ## A237222.P12955823777838016457

`A237225(A055999(n)+10)`
-/

namespace A237222.P12955823777838016457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237225 (A055999 n + 10).toNat

end

end A237222.P12955823777838016457

/-! ## A237222.P17080816973501955724

`A237225(A167614(n+2)+1)`
-/

namespace A237222.P17080816973501955724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237225 (A167614 (n + 2) + 1).toNat

end

end A237222.P17080816973501955724

/-!
# A237223: Number of (n+1)X(5+1) 0..3 arrays with the maximum plus the lower median minus the upper median of every 2X2 subblock equal.

The programs for A237223, there is no canonical definition to state claims against.
-/

/-! ## A237223.P9631606039725165447

`A237225(A374005(n+1))`
-/

namespace A237223.P9631606039725165447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237225 (A374005 (n + 1)).toNat

end

end A237223.P9631606039725165447

/-! ## A237223.P13499357872360229544

`A237225(A056115(n)+11)`
-/

namespace A237223.P13499357872360229544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237225 (A056115 n + 11).toNat

end

end A237223.P13499357872360229544

/-! ## A237223.P14294007195466563239

`A237225(Δ[A023545(n+1)])`
-/

namespace A237223.P14294007195466563239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237225 (f1 (n + 1) - f1 n).toNat

end

end A237223.P14294007195466563239

/-! ## A237223.P17226718318140643295

`A237225(A052905(n+2)+1)`
-/

namespace A237223.P17226718318140643295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237225 (A052905 (n + 2) + 1).toNat

end

end A237223.P17226718318140643295

/-!
# A237224: Number of (n+1)X(6+1) 0..3 arrays with the maximum plus the lower median minus the upper median of every 2X2 subblock equal.

The programs for A237224, there is no canonical definition to state claims against.
-/

/-! ## A237224.P12273231653079796381

`A237225(A374007(n+1))`
-/

namespace A237224.P12273231653079796381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237225 (A374007 (n + 1)).toNat

end

end A237224.P12273231653079796381

/-! ## A237224.P14430191227980124991

`A237225(A167499(n+4)+1)`
-/

namespace A237224.P14430191227980124991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237225 (A167499 (n + 4) + 1).toNat

end

end A237224.P14430191227980124991

/-! ## A237224.P5567034108351687545

`A237225(A167487(n+4)-1)`
-/

namespace A237224.P5567034108351687545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237225 (A167487 (n + 4) - 1).toNat

end

end A237224.P5567034108351687545

/-! ## A237224.P17694523360441747165

`A237225(eq[7, A131818(n+1)])`
-/

namespace A237224.P17694523360441747165
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237225 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A237224.P17694523360441747165

/-!
# A237226: Number of (n+1) X (n+1) 0..2 arrays with the maximum plus the minimum of every 2 X 2 subblock differing from its horizontal and vertical neighbors by exactly one.

The programs for A237226, there is no canonical definition to state claims against.
-/

/-! ## A237226.P453637041094365212

`A237234((n+1)²+n²)`
-/

namespace A237226.P453637041094365212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237234 ((n + 1) ^ 2 + n ^ 2)

end

end A237226.P453637041094365212

/-! ## A237226.P4222386036646148593

`record[gcd(A114327(n), A237234(n+1))]`
-/

namespace A237226.P4222386036646148593
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A237234 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237226.P4222386036646148593

/-! ## A237226.P10702443148704380062

`A007318(∑[n])*A237234(A001844(n))`
-/

namespace A237226.P10702443148704380062
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A237234 (A001844 n).toNat

end

end A237226.P10702443148704380062

/-! ## A237226.P6252579585678214042

`A237234(A001844(n))+A000010(n+3)%2`
-/

namespace A237226.P6252579585678214042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237234 (A001844 n).toNat + Int.tmod (A000010 (n + 3)) 2

end

end A237226.P6252579585678214042

/-!
# A237227: Number of (n+1) X (1+1) 0..2 arrays with the maximum plus the minimum of every 2 X 2 subblock differing from its horizontal and vertical neighbors by exactly one.

The programs for A237227, the canonical program `A237227.P12430342605277218545` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A237227 has offset 1).

The definition of A237227 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 193 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A237227.P12430342605277218545

`ogf((81+268x+280x^2+640x^3+260x^4+208x^5+64x^6)/(1-8x^2-24x^4-8x^6))`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A237227

/-- `ogf((81+268x+280x^2+640x^3+260x^4+208x^5+64x^6)/(1-8x^2-24x^4-8x^6))` -/
def P12430342605277218545.Spec : Prop :=
  ∀ n, P12430342605277218545.a n = A237227 (n + 1)

theorem P12430342605277218545.correct : P12430342605277218545.Spec := by
  intro n
  simp only [A237227, Nat.add_sub_cancel]

end A237227

/-! ## A237227.P13977469987647093142

`A237234(∑[n]+1)`
-/

namespace A237227.P13977469987647093142
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237234 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A237227.P13977469987647093142

namespace A237227

/-- `A237234(∑[n]+1)` -/
def P13977469987647093142.Spec : Prop :=
  ∀ n, P13977469987647093142.a n = A237227 (n + 1)

end A237227

/-! ## A237227.P5574027910214097338

`record[A010054(n)*A237234(n+1)]`
-/

namespace A237227.P5574027910214097338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A237234 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237227.P5574027910214097338

namespace A237227

/-- `record[A010054(n)*A237234(n+1)]` -/
def P5574027910214097338.Spec : Prop :=
  ∀ n, P5574027910214097338.a n = A237227 (n + 1)

end A237227

/-! ## A237227.P1045582292589970394

`record[A237234(n+1)/A007318(n)]`
-/

namespace A237227.P1045582292589970394
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A237234 (n + 1) : ℚ) / (A007318 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237227.P1045582292589970394

namespace A237227

/-- `record[A237234(n+1)/A007318(n)]` -/
def P1045582292589970394.Spec : Prop :=
  ∀ n, P1045582292589970394.a n = (A237227 (n + 1) : ℚ)

end A237227

/-! ## A237227.P13624532084539045346

`record[A237234(n+1)/A008459(n)]`
-/

namespace A237227.P13624532084539045346
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A237234 (n + 1) : ℚ) / (A008459 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237227.P13624532084539045346

namespace A237227

/-- `record[A237234(n+1)/A008459(n)]` -/
def P13624532084539045346.Spec : Prop :=
  ∀ n, P13624532084539045346.a n = (A237227 (n + 1) : ℚ)

end A237227

/-!
# A237228: Number of (n+1) X (2+1) 0..2 arrays with the maximum plus the minimum of every 2 X 2 subblock differing from its horizontal and vertical neighbors by exactly one.

The programs for A237228, there is no canonical definition to state claims against.
-/

/-! ## A237228.P15124458279120290030

`A237234(A133263(n+1))`
-/

namespace A237228.P15124458279120290030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237234 (A133263 (n + 1)).toNat

end

end A237228.P15124458279120290030

/-! ## A237228.P9613649240973777432

`A237234(A373662(n+1))`
-/

namespace A237228.P9613649240973777432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237234 (A373662 (n + 1)).toNat

end

end A237228.P9613649240973777432

/-! ## A237228.P16010268045682713541

`A237234(A000096(n)+3)`
-/

namespace A237228.P16010268045682713541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237234 (A000096 n + 3).toNat

end

end A237228.P16010268045682713541

/-! ## A237228.P16028185458937008842

`A237234(A167499(n)-3)`
-/

namespace A237228.P16028185458937008842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237234 (A167499 n - 3).toNat

end

end A237228.P16028185458937008842

/-! ## A237228.P15363798243407062112

`record[A237234(A061579(n)+3)]`
-/

namespace A237228.P15363798243407062112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237234 (A061579 n + 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237228.P15363798243407062112

/-!
# A237229: Number of (n+1)X(3+1) 0..2 arrays with the maximum plus the minimum of every 2X2 subblock differing from its horizontal and vertical neighbors by exactly one.

The programs for A237229, there is no canonical definition to state claims against.
-/

/-! ## A237229.P16086645200511636568

`A237234(∑[n+2]+4)`
-/

namespace A237229.P16086645200511636568
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237234 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A237229.P16086645200511636568

/-! ## A237229.P17568402837542906394

`lcm(2, A237234(A167614(n+1)))`
-/

namespace A237229.P17568402837542906394
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A237234 (A167614 (n + 1)).toNat)

end

end A237229.P17568402837542906394

/-! ## A237229.P13877018827906080711

`A237234(A167614(n+1))+A000007(n+1)`
-/

namespace A237229.P13877018827906080711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237234 (A167614 (n + 1)).toNat + A000007 (n + 1)

end

end A237229.P13877018827906080711

/-! ## A237229.P6333960245789722659

`A237234(A167614(n+1))+A000038(n+1)`
-/

namespace A237229.P6333960245789722659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237234 (A167614 (n + 1)).toNat + A000038 (n + 1)

end

end A237229.P6333960245789722659

/-! ## A237229.P3527096861409802138

`A237234(A000217(n+2)+3)+A000007(n+1)`
-/

namespace A237229.P3527096861409802138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237234 (A000217 (n + 2) + 3).toNat + A000007 (n + 1)

end

end A237229.P3527096861409802138

/-!
# A237230: Number of (n+1)X(4+1) 0..2 arrays with the maximum plus the minimum of every 2X2 subblock differing from its horizontal and vertical neighbors by exactly one.

The programs for A237230, there is no canonical definition to state claims against.
-/

/-! ## A237230.P280576658231158324

`A237234(A374004(n+1))`
-/

namespace A237230.P280576658231158324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237234 (A374004 (n + 1)).toNat

end

end A237230.P280576658231158324

/-! ## A237230.P17203877380060104018

`A237234(A141214(n)+7)`
-/

namespace A237230.P17203877380060104018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237234 (A141214 n + 7).toNat

end

end A237230.P17203877380060104018

/-! ## A237230.P8653572090582776661

`A237234(A055999(n)+10)`
-/

namespace A237230.P8653572090582776661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237234 (A055999 n + 10).toNat

end

end A237230.P8653572090582776661

/-! ## A237230.P1179141481210611849

`A237234(A167614(n+2)+1)`
-/

namespace A237230.P1179141481210611849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237234 (A167614 (n + 2) + 1).toNat

end

end A237230.P1179141481210611849

/-! ## A237230.P8085948486104166749

`A237234(A166136(n+2)-2)`
-/

namespace A237230.P8085948486104166749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237234 (A166136 (n + 2) - 2).toNat

end

end A237230.P8085948486104166749

/-!
# A237231: Number of (n+1) X (5+1) 0..2 arrays with the maximum plus the minimum of every 2 X 2 subblock differing from its horizontal and vertical neighbors by exactly one.

The programs for A237231, there is no canonical definition to state claims against.
-/

/-! ## A237231.P8269438118675245348

`A237234(A374005(n+1))`
-/

namespace A237231.P8269438118675245348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237234 (A374005 (n + 1)).toNat

end

end A237231.P8269438118675245348

/-! ## A237231.P7685258750699996203

`A237234(A167499(n+3))`
-/

namespace A237231.P7685258750699996203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237234 (A167499 (n + 3)).toNat

end

end A237231.P7685258750699996203

/-! ## A237231.P3213778487585228576

`A237234(A000124(n+4)+4)`
-/

namespace A237231.P3213778487585228576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237234 (A000124 (n + 4) + 4).toNat

end

end A237231.P3213778487585228576

/-! ## A237231.P2329593305044681056

`A237234(A000217(n+4)+5)`
-/

namespace A237231.P2329593305044681056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237234 (A000217 (n + 4) + 5).toNat

end

end A237231.P2329593305044681056

/-! ## A237231.P11327015957337186179

`A237234(A046691(n+3))`
-/

namespace A237231.P11327015957337186179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237234 (A046691 (n + 3)).toNat

end

end A237231.P11327015957337186179

/-!
# A237232: Number of (n+1) X (6+1) 0..2 arrays with the maximum plus the minimum of every 2 X 2 subblock differing from its horizontal and vertical neighbors by exactly one.

The programs for A237232, there is no canonical definition to state claims against.
-/

/-! ## A237232.P10885972328504325663

`A237234(A374007(n+1))`
-/

namespace A237232.P10885972328504325663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237234 (A374007 (n + 1)).toNat

end

end A237232.P10885972328504325663

/-! ## A237232.P13695596569266539545

`A237234(A000124(n+5)+5)`
-/

namespace A237232.P13695596569266539545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237234 (A000124 (n + 5) + 5).toNat

end

end A237232.P13695596569266539545

/-! ## A237232.P9622764454383120507

`A237234(A055998(n+3)+9)`
-/

namespace A237232.P9622764454383120507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237234 (A055998 (n + 3) + 9).toNat

end

end A237232.P9622764454383120507

/-! ## A237232.P18300622924939765920

`A237234(Δ[A023545(n+1)]+10)`
-/

namespace A237232.P18300622924939765920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237234 (f1 (n + 1) - f1 n + 10).toNat

end

end A237232.P18300622924939765920

/-! ## A237232.P12341447834582029980

`A237234(A052905(n+3))`
-/

namespace A237232.P12341447834582029980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237234 (A052905 (n + 3)).toNat

end

end A237232.P12341447834582029980

/-!
# A237233: Number of (n+1)X(7+1) 0..2 arrays with the maximum plus the minimum of every 2X2 subblock differing from its horizontal and vertical neighbors by exactly one.

The programs for A237233, there is no canonical definition to state claims against.
-/

/-! ## A237233.P14683635282285149597

`A237234(A374008(n+1))`
-/

namespace A237233.P14683635282285149597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237234 (A374008 (n + 1)).toNat

end

end A237233.P14683635282285149597

/-! ## A237233.P8349545452572012364

`A237234(A166136(n+5)+1)`
-/

namespace A237233.P8349545452572012364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237234 (A166136 (n + 5) + 1).toNat

end

end A237233.P8349545452572012364

/-! ## A237233.P14797446599617937616

`A237234(A000124(n+6)+6)`
-/

namespace A237233.P14797446599617937616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237234 (A000124 (n + 6) + 6).toNat

end

end A237233.P14797446599617937616

/-! ## A237233.P1265621160560832432

`A237234(A000217(n+6)+7)`
-/

namespace A237233.P1265621160560832432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237234 (A000217 (n + 6) + 7).toNat

end

end A237233.P1265621160560832432

/-! ## A237233.P2464480611309194213

`A237234(A055998(n)+A008574(n+7))`
-/

namespace A237233.P2464480611309194213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237234 (A055998 n + A008574 (n + 7)).toNat

end

end A237233.P2464480611309194213

/-!
# A237235: Number of (n+1)X(1+1) 0..3 arrays with the maximum plus the lower median minus the upper median minus the minimum of every 2X2 subblock equal.

The programs for A237235, there is no canonical definition to state claims against.
-/

/-! ## A237235.P10434763132123041484

`A237241(∑[n]+1)`
-/

namespace A237235.P10434763132123041484
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237241 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A237235.P10434763132123041484

/-! ## A237235.P17903110948609658578

`lcm(2, A237241(A000124(n)))`
-/

namespace A237235.P17903110948609658578
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A237241 (A000124 n).toNat)

end

end A237235.P17903110948609658578

/-! ## A237235.P10890336648454846038

`record[gcd(A185651(n), A237241(n+1))]`
-/

namespace A237235.P10890336648454846038
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A185651 n) (A237241 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237235.P10890336648454846038

/-! ## A237235.P17524496788063439429

`record[root(A237241(n+1), A002260(n+1))]`
-/

namespace A237235.P17524496788063439429
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A237241 (n + 1) : ℝ) ^ (1 / (A002260 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237235.P17524496788063439429

/-! ## A237235.P14500076987735368266

`record[(A286235(n+1)-n)*A237241(n+1)]`
-/

namespace A237235.P14500076987735368266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A286235 (n + 1) - (n : ℤ)) * A237241 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237235.P14500076987735368266

/-!
# A237236: Number of (n+1)X(2+1) 0..3 arrays with the maximum plus the lower median minus the upper median minus the minimum of every 2X2 subblock equal.

The programs for A237236, there is no canonical definition to state claims against.
-/

/-! ## A237236.P6982609902916481498

`A237241(∑[n+1]+2)`
-/

namespace A237236.P6982609902916481498
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237241 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A237236.P6982609902916481498

/-! ## A237236.P1739065152034713953

`record[A237241(A286235(n+1)+1)]`
-/

namespace A237236.P1739065152034713953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237241 (A286235 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237236.P1739065152034713953

/-! ## A237236.P10053140134507035409

`record[A237241(A286237(n+1)+1)]`
-/

namespace A237236.P10053140134507035409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237241 (A286237 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237236.P10053140134507035409

/-! ## A237236.P17940840858696093006

`record[root(A237241(n+2), A002260(n+1))]`
-/

namespace A237236.P17940840858696093006
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A237241 (n + 2) : ℝ) ^ (1 / (A002260 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237236.P17940840858696093006

/-! ## A237236.P4971500931276013564

`A001222(A064543(n+1))*A237241(A133263(n+1))`
-/

namespace A237236.P4971500931276013564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A064543 (n + 1)).toNat * A237241 (A133263 (n + 1)).toNat

end

end A237236.P4971500931276013564

/-!
# A237237: Number of (n+1)X(3+1) 0..3 arrays with the maximum plus the lower median minus the upper median minus the minimum of every 2X2 subblock equal.

The programs for A237237, there is no canonical definition to state claims against.
-/

/-! ## A237237.P4975553070278175271

`A237241(∑[n+2]+4)`
-/

namespace A237237.P4975553070278175271
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237241 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A237237.P4975553070278175271

/-! ## A237237.P13413884396499467578

`lcm(2, A237241(A167614(n+1)))`
-/

namespace A237237.P13413884396499467578
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A237241 (A167614 (n + 1)).toNat)

end

end A237237.P13413884396499467578

/-! ## A237237.P2258250195968501883

`A347323(n)+A237241(A167614(n+1))`
-/

namespace A237237.P2258250195968501883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347323 n + A237241 (A167614 (n + 1)).toNat

end

end A237237.P2258250195968501883

/-! ## A237237.P3538737631794189985

`A014802(n)*A237241(A167614(n+1))`
-/

namespace A237237.P3538737631794189985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014802 n * A237241 (A167614 (n + 1)).toNat

end

end A237237.P3538737631794189985

/-! ## A237237.P12772702790592446856

`A237241(A167614(n+1))+A000035(2*n)`
-/

namespace A237237.P12772702790592446856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237241 (A167614 (n + 1)).toNat + A000035 (2 * n)

end

end A237237.P12772702790592446856

/-!
# A237238: Number of (n+1)X(4+1) 0..3 arrays with the maximum plus the lower median minus the upper median minus the minimum of every 2X2 subblock equal.

The programs for A237238, there is no canonical definition to state claims against.
-/

/-! ## A237238.P2745998806982423473

`A237241(A374004(n+1))`
-/

namespace A237238.P2745998806982423473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237241 (A374004 (n + 1)).toNat

end

end A237238.P2745998806982423473

/-! ## A237238.P17236840778586205494

`A237241(A141214(n)+7)`
-/

namespace A237238.P17236840778586205494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237241 (A141214 n + 7).toNat

end

end A237238.P17236840778586205494

/-! ## A237238.P926866302131522597

`A237241(A052905(n)+9)`
-/

namespace A237238.P926866302131522597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237241 (A052905 n + 9).toNat

end

end A237238.P926866302131522597

/-! ## A237238.P8807768950609540391

`A237241(A055999(n)+10)`
-/

namespace A237238.P8807768950609540391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237241 (A055999 n + 10).toNat

end

end A237238.P8807768950609540391

/-! ## A237238.P11883447885715914208

`A237241(A167614(n+2)+1)`
-/

namespace A237238.P11883447885715914208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237241 (A167614 (n + 2) + 1).toNat

end

end A237238.P11883447885715914208

/-!
# A237239: Number of (n+1)X(5+1) 0..3 arrays with the maximum plus the lower median minus the upper median minus the minimum of every 2X2 subblock equal.

The programs for A237239, there is no canonical definition to state claims against.
-/

/-! ## A237239.P12129406640616340156

`A237241(A374005(n+1))`
-/

namespace A237239.P12129406640616340156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237241 (A374005 (n + 1)).toNat

end

end A237239.P12129406640616340156

/-! ## A237239.P4780486659741116879

`A237241(A167499(n+3))`
-/

namespace A237239.P4780486659741116879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237241 (A167499 (n + 3)).toNat

end

end A237239.P4780486659741116879

/-! ## A237239.P1409949294117797697

`A237241(A155212(n)+13)`
-/

namespace A237239.P1409949294117797697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237241 (A155212 n + 13).toNat

end

end A237239.P1409949294117797697

/-! ## A237239.P16264607858243531526

`A237241(A056000(n)+15)`
-/

namespace A237239.P16264607858243531526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237241 (A056000 n + 15).toNat

end

end A237239.P16264607858243531526

/-! ## A237239.P2145481741758233460

`A237241(eq[7, A066657(n)])`
-/

namespace A237239.P2145481741758233460
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237241 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A237239.P2145481741758233460

/-!
# A237240: Number of (n+1)X(6+1) 0..3 arrays with the maximum plus the lower median minus the upper median minus the minimum of every 2X2 subblock equal.

The programs for A237240, there is no canonical definition to state claims against.
-/

/-! ## A237240.P15041556058774030690

`A237241(A374007(n+1))`
-/

namespace A237240.P15041556058774030690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237241 (A374007 (n + 1)).toNat

end

end A237240.P15041556058774030690

/-! ## A237240.P9257138049178744653

`A237241(eq[8, A185782(n+1)])`
-/

namespace A237240.P9257138049178744653
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237241 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A237240.P9257138049178744653

/-!
# A237242: Number of (n+1) X (1+1) 0..2 arrays with the maximum plus the upper median minus the lower median minus the minimum of every 2 X 2 subblock differing from its horizontal and vertical neighbors by exactly one.

The programs for A237242, there is no canonical definition to state claims against.
-/

/-! ## A237242.P14754917113867241468

`A237249(∑[n]+1)`
-/

namespace A237242.P14754917113867241468
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237249 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A237242.P14754917113867241468

/-! ## A237242.P17112722196619545412

`record[A237249(n+1)/A225476(n)]`
-/

namespace A237242.P17112722196619545412
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A237249 (n + 1) : ℚ) / (A225476 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237242.P17112722196619545412

/-! ## A237242.P15238945264779379340

`record[gcd(A185651(n), A237249(n+1))]`
-/

namespace A237242.P15238945264779379340
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A185651 n) (A237249 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237242.P15238945264779379340

/-! ## A237242.P1454923769467131724

`lcm(1-and(2, n), A237249(A000124(n)))`
-/

namespace A237242.P1454923769467131724
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (1 - (Nat.land 2 n : ℤ)) (A237249 (A000124 n).toNat)

end

end A237242.P1454923769467131724

/-! ## A237242.P5006848650615397088

`record[A237249(n+1)/A081720(n+1)]`
-/

namespace A237242.P5006848650615397088
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A237249 (n + 1) : ℚ) / (A081720 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237242.P5006848650615397088

/-!
# A237243: Number of (n+1) X (2+1) 0..2 arrays with the maximum plus the upper median minus the lower median minus the minimum of every 2 X 2 subblock differing from its horizontal and vertical neighbors by exactly one.

The programs for A237243, there is no canonical definition to state claims against.
-/

/-! ## A237243.P12820036430703538923

`A237249(∑[n+1]+2)`
-/

namespace A237243.P12820036430703538923
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237249 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A237243.P12820036430703538923

/-! ## A237243.P9559133611355556674

`record[A237249(n+3)/A027467(n)]`
-/

namespace A237243.P9559133611355556674
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A237249 (n + 3) : ℚ) / (A027467 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237243.P9559133611355556674

/-! ## A237243.P17947244371214657941

`record[A237249(n+2)/A241171(n+1)]`
-/

namespace A237243.P17947244371214657941
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A237249 (n + 2) : ℚ) / (A241171 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237243.P17947244371214657941

/-! ## A237243.P6548531972638166042

`record[A237249(abs(A201163(n)))]`
-/

namespace A237243.P6548531972638166042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237249 |A201163 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237243.P6548531972638166042

/-! ## A237243.P15472216903530209064

`record[A237249(Δ[A003453(n+5)])]`
-/

namespace A237243.P15472216903530209064
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237249 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237243.P15472216903530209064

/-!
# A237244: Number of (n+1)X(3+1) 0..2 arrays with the maximum plus the upper median minus the lower median minus the minimum of every 2X2 subblock differing from its horizontal and vertical neighbors by exactly one.

The programs for A237244, there is no canonical definition to state claims against.
-/

/-! ## A237244.P7039913619288241197

`A237249(∑[n+2]+4)`
-/

namespace A237244.P7039913619288241197
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237249 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A237244.P7039913619288241197

/-! ## A237244.P7626382268586374924

`lcm(2, A237249(A167614(n+1)))`
-/

namespace A237244.P7626382268586374924
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A237249 (A167614 (n + 1)).toNat)

end

end A237244.P7626382268586374924

/-! ## A237244.P4279009056154219112

`A043568(n)*A237249(A167614(n+1))`
-/

namespace A237244.P4279009056154219112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043568 n * A237249 (A167614 (n + 1)).toNat

end

end A237244.P4279009056154219112

/-! ## A237244.P15071209461031837193

`A237249(A167614(n+1))%A017600(n)`
-/

namespace A237244.P15071209461031837193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A237249 (A167614 (n + 1)).toNat) (A017600 n)

end

end A237244.P15071209461031837193

/-! ## A237244.P1904370677547461

`A069291(n+1)*A237249(A167614(n+1))`
-/

namespace A237244.P1904370677547461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069291 (n + 1) * A237249 (A167614 (n + 1)).toNat

end

end A237244.P1904370677547461

/-!
# A237245: Number of (n+1) X (4+1) 0..2 arrays with the maximum plus the upper median minus the lower median minus the minimum of every 2 X 2 subblock differing from its horizontal and vertical neighbors by exactly one.

The programs for A237245, there is no canonical definition to state claims against.
-/

/-! ## A237245.P12633586427436570946

`A237249(A374004(n+1))`
-/

namespace A237245.P12633586427436570946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237249 (A374004 (n + 1)).toNat

end

end A237245.P12633586427436570946

/-! ## A237245.P8657828794843801085

`A237249(A052905(n)+9)`
-/

namespace A237245.P8657828794843801085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237249 (A052905 n + 9).toNat

end

end A237245.P8657828794843801085

/-! ## A237245.P3224187270374524586

`A237249(A055999(n)+10)`
-/

namespace A237245.P3224187270374524586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237249 (A055999 n + 10).toNat

end

end A237245.P3224187270374524586

/-! ## A237245.P16983720827484756577

`A237249(A167614(n+2)+1)`
-/

namespace A237245.P16983720827484756577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237249 (A167614 (n + 2) + 1).toNat

end

end A237245.P16983720827484756577

/-! ## A237245.P7992408035059214995

`A237249(Δ[A023545(n+1)-n²])`
-/

namespace A237245.P7992408035059214995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1) - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237249 (f1 (n + 1) - f1 n).toNat

end

end A237245.P7992408035059214995

/-!
# A237246: Number of (n+1)X(5+1) 0..2 arrays with the maximum plus the upper median minus the lower median minus the minimum of every 2X2 subblock differing from its horizontal and vertical neighbors by exactly one.

The programs for A237246, there is no canonical definition to state claims against.
-/

/-! ## A237246.P12385099727529936575

`A237249(A374005(n+1))`
-/

namespace A237246.P12385099727529936575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237249 (A374005 (n + 1)).toNat

end

end A237246.P12385099727529936575

/-! ## A237246.P6909003185345659783

`A237249(eq[6, A131818(n+1)])`
-/

namespace A237246.P6909003185345659783
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237249 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A237246.P6909003185345659783

/-! ## A237246.P8308524470525180247

`A237249(eq[4, A193592(n)])`
-/

namespace A237246.P8308524470525180247
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237249 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A237246.P8308524470525180247

/-! ## A237246.P8424015731205765525

`A237249(Δ[A023545(n+1)])`
-/

namespace A237246.P8424015731205765525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237249 (f1 (n + 1) - f1 n).toNat

end

end A237246.P8424015731205765525

/-! ## A237246.P15018045263137293584

`A237249(eq[3, A144018(n+1)])`
-/

namespace A237246.P15018045263137293584
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144018 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237249 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A237246.P15018045263137293584

/-!
# A237247: Number of (n+1)X(6+1) 0..2 arrays with the maximum plus the upper median minus the lower median minus the minimum of every 2X2 subblock differing from its horizontal and vertical neighbors by exactly one.

The programs for A237247, there is no canonical definition to state claims against.
-/

/-! ## A237247.P2067730275186893279

`A237249(A374007(n+1))`
-/

namespace A237247.P2067730275186893279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237249 (A374007 (n + 1)).toNat

end

end A237247.P2067730275186893279

/-! ## A237247.P13433940360622472260

`A237249(eq[7, A131818(n+1)])`
-/

namespace A237247.P13433940360622472260
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237249 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A237247.P13433940360622472260

/-! ## A237247.P558448096969983502

`A237249(A052905(n+3))`
-/

namespace A237247.P558448096969983502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237249 (A052905 (n + 3)).toNat

end

end A237247.P558448096969983502

/-! ## A237247.P10215050566692918978

`A237249(eq[3, A219347(n)])`
-/

namespace A237247.P10215050566692918978
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237249 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A237247.P10215050566692918978

/-! ## A237247.P17702303967995939079

`A237249(eq[5, A193592(n)])`
-/

namespace A237247.P17702303967995939079
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237249 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A237247.P17702303967995939079

/-!
# A237248: Number of (n+1)X(7+1) 0..2 arrays with the maximum plus the upper median minus the lower median minus the minimum of every 2X2 subblock differing from its horizontal and vertical neighbors by exactly one.

The programs for A237248, there is no canonical definition to state claims against.
-/

/-! ## A237248.P6998891384148133477

`A237249(A374008(n+1))`
-/

namespace A237248.P6998891384148133477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237249 (A374008 (n + 1)).toNat

end

end A237248.P6998891384148133477

/-! ## A237248.P2609103177683353703

`A237249(eq[8, A131818(n+1)])`
-/

namespace A237248.P2609103177683353703
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237249 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A237248.P2609103177683353703

/-! ## A237248.P1590246526867086311

`A237249(A055999(n+4))`
-/

namespace A237248.P1590246526867086311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237249 (A055999 (n + 4)).toNat

end

end A237248.P1590246526867086311

/-! ## A237248.P9340284544660668651

`A237249(eq[4, A219347(n)])`
-/

namespace A237248.P9340284544660668651
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237249 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A237248.P9340284544660668651

/-! ## A237248.P4639803350427773403

`A237249(eq[6, A193592(n)])`
-/

namespace A237248.P4639803350427773403
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237249 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A237248.P4639803350427773403

/-!
# A237249: T(n,k)=Number of (n+1)X(k+1) 0..2 arrays with the maximum plus the upper median minus the lower median minus the minimum of every 2X2 subblock differing from its horizontal and vertical neighbors by exactly one.

The programs for A237249, there is no canonical definition to state claims against.
-/

/-! ## A237249.P1763396155674876938

`or(A040554(A001147(n)), A237384(n+1))`
-/

namespace A237249.P1763396155674876938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A040554 (A001147 n).toNat) (A237384 (n + 1))

end

end A237249.P1763396155674876938

/-! ## A237249.P7043302251646553724

`or(A040554(A121572(n)), A237384(n+1))`
-/

namespace A237249.P7043302251646553724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A040554 (A121572 n).toNat) (A237384 (n + 1))

end

end A237249.P7043302251646553724

/-!
# A237250: Values of x in the solutions to x^2 - 4xy + y^2 + 11 = 0, where 0 < x < y.

The programs for A237250, the canonical program `A237250.P5058989911834232645` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A237250 has offset 1).

The definition of A237250 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A237250.P6684804556444694968

`ogf((2+3x-3x^2-2x^3)/(1-4x^2+x^4))`
-/

namespace A237250.P6684804556444694968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 3, -3, -2] [1, 0, -4, 0, 1] n

end

end A237250.P6684804556444694968

namespace A237250

/-- `ogf((2+3x-3x^2-2x^3)/(1-4x^2+x^4))` -/
def P6684804556444694968.Spec : Prop :=
  ∀ n, P6684804556444694968.a n = A237250 (n + 1)

end A237250

/-! ## A237250.P5058989911834232645

`4*a(n-2)-a(n-4)` with `a(0)=2, a(1)=3, a(2)=5, a(3)=10`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A237250

/-- `4*a(n-2)-a(n-4)` -/
def P5058989911834232645.Spec : Prop :=
  ∀ n, P5058989911834232645.a n = A237250 (n + 1)

theorem P5058989911834232645.correct : P5058989911834232645.Spec := by
  intro n
  simp only [A237250, Nat.add_sub_cancel]

end A237250

/-! ## A237250.P18062666793859466489

`A082630(n)+a(n-1)` with `a(0)=2`
-/

namespace A237250.P18062666793859466489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A082630 n + a (n - 1)

end

end A237250.P18062666793859466489

namespace A237250

/-- `A082630(n)+a(n-1)` -/
def P18062666793859466489.Spec : Prop :=
  ∀ n, P18062666793859466489.a n = A237250 (n + 1)

end A237250

/-! ## A237250.P14822899927306986218

`A005246(n+1)+A005246(n+2)`
-/

namespace A237250.P14822899927306986218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005246 (n + 1) + A005246 (n + 2)

end

end A237250.P14822899927306986218

namespace A237250

/-- `A005246(n+1)+A005246(n+2)` -/
def P14822899927306986218.Spec : Prop :=
  ∀ n, P14822899927306986218.a n = A237250 (n + 1)

end A237250

/-! ## A237250.P3309039785122744013

`A002531(n)+A048788(n)+A005246(n)`
-/

namespace A237250.P3309039785122744013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002531 n + (A048788 n + A005246 n)

end

end A237250.P3309039785122744013

namespace A237250

/-- `A002531(n)+A048788(n)+A005246(n)` -/
def P3309039785122744013.Spec : Prop :=
  ∀ n, P3309039785122744013.a n = A237250 (n + 1)

end A237250

/-! ## A237250.P13160238375467997413

`A048788(n+1)+A002531(n-A000035(n))`
-/

namespace A237250.P13160238375467997413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048788 (n + 1) + A002531 ((n : ℤ) - A000035 n).toNat

end

end A237250.P13160238375467997413

namespace A237250

/-- `A048788(n+1)+A002531(n-A000035(n))` -/
def P13160238375467997413.Spec : Prop :=
  ∀ n, P13160238375467997413.a n = A237250 (n + 1)

end A237250

/-! ## A237250.P7781780773642837935

`∪[A144720(n), A144721(n)]`
-/

namespace A237250.P7781780773642837935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144720 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144721 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A237250.P7781780773642837935

namespace A237250

/-- `∪[A144720(n), A144721(n)]` -/
def P7781780773642837935.Spec : Prop :=
  ∀ n, (P7781780773642837935.a n : ℤ) = A237250 (n + 1)

end A237250

/-! ## A237250.P11575235702873699924

`A131887(n+1)-A077237(n)`
-/

namespace A237250.P11575235702873699924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131887 (n + 1) - A077237 n

end

end A237250.P11575235702873699924

namespace A237250

/-- `A131887(n+1)-A077237(n)` -/
def P11575235702873699924.Spec : Prop :=
  ∀ n, P11575235702873699924.a n = A237250 (n + 1)

end A237250

/-!
# A237251: Primes p such that p*2^(p-1)-1 is prime.

The programs for A237251, there is no canonical definition to state claims against.
-/

/-! ## A237251.P4438929295567296705

`p?[A230769(n+1)+1]`
-/

namespace A237251.P4438929295567296705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230769 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A237251.P4438929295567296705

/-!
# A237252: Irregular triangle read by rows: T(n,k) = Sum_{i=0..k} (-1)^i * binomial(6*n+1,i) * binomial(k+6-i,6)^n, 0 <= k <= 6*(n-1).

The programs for A237252, there is no canonical definition to state claims against.
-/

/-! ## A237252.P18422917584391527232

`C(6, A327201(3*n+1))²`
-/

namespace A237252.P18422917584391527232
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 6 (A327201 (3 * n + 1)).toNat ^ 2

end

end A237252.P18422917584391527232

/-! ## A237252.P8918675090294889195

`C(6, ∑{e}[A326243(2*n)+1, #])²`
-/

namespace A237252.P8918675090294889195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326243 (2 * n) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 6 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p) ^ 2

end

end A237252.P8918675090294889195

/-!
# A237253: Number of ordered ways to write n = k + m with k > 0 and m > 0 such that phi(k) - 1, phi(k) + 1 and prime(prime(prime(m))) - 2 are all prime, where phi(.) is Euler's totient function.

The programs for A237253, there is no canonical definition to state claims against.
-/

/-! ## A237253.P4456321755612162178

`A076142(∑[∑[A049989(n+3)]])`
-/

namespace A237253.P4456321755612162178
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049989 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076142 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A237253.P4456321755612162178

/-! ## A237253.P18148956098438245116

`A126304(A050076(2*n+3)%A332746(n))`
-/

namespace A237253.P18148956098438245116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126304 (Int.tmod (A050076 (2 * n + 3)) (A332746 n)).toNat

end

end A237253.P18148956098438245116

/-! ## A237253.P14831395340752310206

`A275947(A368110(3*n+4)+A000578(2*n+1))`
-/

namespace A237253.P14831395340752310206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275947 (A368110 (3 * n + 4) + A000578 (2 * n + 1)).toNat

end

end A237253.P14831395340752310206

/-! ## A237253.P12721017249002215821

`A306615(A329688(n+1))`
-/

namespace A237253.P12721017249002215821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306615 (A329688 (n + 1)).toNat

end

end A237253.P12721017249002215821

/-! ## A237253.P15525867589993016381

`A213911(A208825(∑[n+2])%A001399(n))`
-/

namespace A237253.P15525867589993016381
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213911 (Int.tmod (A208825 (∑ j ∈ Finset.range (n + 1), f1 j)) (A001399 n)).toNat

end

end A237253.P15525867589993016381

/-!
# A237254: Values of x in the solutions to x^2 - 5xy + y^2 + 5 = 0, where 0 < x < y.

The programs for A237254, the canonical program `A237254.P14404993906430102971` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A237254 has offset 1).

The definition of A237254 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A237254.P10331261618003393054

`ogf((1+2x-2x^2-x^3)/(1-5x^2+x^4))`
-/

namespace A237254.P10331261618003393054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, -2, -1] [1, 0, -5, 0, 1] n

end

end A237254.P10331261618003393054

namespace A237254

/-- `ogf((1+2x-2x^2-x^3)/(1-5x^2+x^4))` -/
def P10331261618003393054.Spec : Prop :=
  ∀ n, P10331261618003393054.a n = A237254 (n + 1)

end A237254

/-! ## A237254.P14404993906430102971

`5*a(n-2)-a(n-4)` with `a(0)=1, a(1)=2, a(2)=3, a(3)=9`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A237254

/-- `5*a(n-2)-a(n-4)` -/
def P14404993906430102971.Spec : Prop :=
  ∀ n, P14404993906430102971.a n = A237254 (n + 1)

theorem P14404993906430102971.correct : P14404993906430102971.Spec := by
  intro n
  simp only [A237254, Nat.add_sub_cancel]

end A237254

/-! ## A237254.P14089678375381363400

`A217787(∑[3-a(n-1)]+1)` with `a(0)=1`
-/

namespace A237254.P14089678375381363400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  3 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217787 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A237254.P14089678375381363400

namespace A237254

/-- `A217787(∑[3-a(n-1)]+1)` -/
def P14089678375381363400.Spec : Prop :=
  ∀ n, P14089678375381363400.a n = A237254 (n + 1)

end A237254

/-! ## A237254.P2951366846463995967

`A217787(A001651(n+2))`
-/

namespace A237254.P2951366846463995967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217787 (A001651 (n + 2)).toNat

end

end A237254.P2951366846463995967

namespace A237254

/-- `A217787(A001651(n+2))` -/
def P2951366846463995967.Spec : Prop :=
  ∀ n, P2951366846463995967.a n = A237254 (n + 1)

end A237254

/-! ## A237254.P5473605044967532387

`A217787(A097482(n+2))`
-/

namespace A237254.P5473605044967532387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217787 (A097482 (n + 2)).toNat

end

end A237254.P5473605044967532387

namespace A237254

/-- `A217787(A097482(n+2))` -/
def P5473605044967532387.Spec : Prop :=
  ∀ n, P5473605044967532387.a n = A237254 (n + 1)

end A237254

/-! ## A237254.P784230827989335489

`A217787(A133223(n+2))`
-/

namespace A237254.P784230827989335489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217787 (A133223 (n + 2)).toNat

end

end A237254.P784230827989335489

namespace A237254

/-- `A217787(A133223(n+2))` -/
def P784230827989335489.Spec : Prop :=
  ∀ n, P784230827989335489.a n = A237254 (n + 1)

end A237254

/-! ## A237254.P3983396437717990332

`A217787(∑[3-A040001(n)])`
-/

namespace A237254.P3983396437717990332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - A040001 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217787 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A237254.P3983396437717990332

namespace A237254

/-- `A217787(∑[3-A040001(n)])` -/
def P3983396437717990332.Spec : Prop :=
  ∀ n, P3983396437717990332.a n = A237254 (n + 1)

end A237254

/-! ## A237254.P12677609726725456572

`A217787(∑[2/A040001(n)])`
-/

namespace A237254.P12677609726725456572
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (A040001 n : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217787 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A237254.P12677609726725456572

namespace A237254

/-- `A217787(∑[2/A040001(n)])` -/
def P12677609726725456572.Spec : Prop :=
  ∀ n, P12677609726725456572.a n = A237254 (n + 1)

end A237254

/-! ## A237254.P10445652263995388243

`A217787(∑[A040001(n+1)]+1)`
-/

namespace A237254.P10445652263995388243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217787 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A237254.P10445652263995388243

namespace A237254

/-- `A217787(∑[A040001(n+1)]+1)` -/
def P10445652263995388243.Spec : Prop :=
  ∀ n, P10445652263995388243.a n = A237254 (n + 1)

end A237254

/-!
# A237255: Values of x in the solutions to x^2 - 5xy + y^2 + 17 = 0, where 0 < x < y.

The programs for A237255, the canonical program `A237255.P14793515063881370596` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A237255 has offset 1).

The definition of A237255 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A237255.P15651413785680960998

`ogf((2+3x-3x^2-2x^3)/(1-5x^2+x^4))`
-/

namespace A237255.P15651413785680960998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 3, -3, -2] [1, 0, -5, 0, 1] n

end

end A237255.P15651413785680960998

namespace A237255

/-- `ogf((2+3x-3x^2-2x^3)/(1-5x^2+x^4))` -/
def P15651413785680960998.Spec : Prop :=
  ∀ n, P15651413785680960998.a n = A237255 (n + 1)

end A237255

/-! ## A237255.P14793515063881370596

`5*a(n-2)-a(n-4)` with `a(0)=2, a(1)=3, a(2)=7, a(3)=13`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A237255

/-- `5*a(n-2)-a(n-4)` -/
def P14793515063881370596.Spec : Prop :=
  ∀ n, P14793515063881370596.a n = A237255 (n + 1)

theorem P14793515063881370596.correct : P14793515063881370596.Spec := by
  intro n
  simp only [A237255, Nat.add_sub_cancel]

end A237255

/-! ## A237255.P3764956805483282524

`A237254(n+1)+A136210(or(1, n))`
-/

namespace A237255.P3764956805483282524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237254 (n + 1) + A136210 (Nat.lor 1 n)

end

end A237255.P3764956805483282524

namespace A237255

/-- `A237254(n+1)+A136210(or(1, n))` -/
def P3764956805483282524.Spec : Prop :=
  ∀ n, P3764956805483282524.a n = A237255 (n + 1)

end A237255

/-! ## A237255.P15656578415679483091

`A237254(n+1)+A004253(A008619(n))`
-/

namespace A237255.P15656578415679483091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237254 (n + 1) + A004253 (A008619 n).toNat

end

end A237255.P15656578415679483091

namespace A237255

/-- `A237254(n+1)+A004253(A008619(n))` -/
def P15656578415679483091.Spec : Prop :=
  ∀ n, P15656578415679483091.a n = A237255 (n + 1)

end A237255

/-! ## A237255.P7408783987493451238

`A237254(n+1)+A136210(A109613(n))`
-/

namespace A237255.P7408783987493451238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237254 (n + 1) + A136210 (A109613 n).toNat

end

end A237255.P7408783987493451238

namespace A237255

/-- `A237254(n+1)+A136210(A109613(n))` -/
def P7408783987493451238.Spec : Prop :=
  ∀ n, P7408783987493451238.a n = A237255 (n + 1)

end A237255

/-! ## A237255.P3588683921569543215

`A237254(n+1)+A004253(∑[A059841(n)])`
-/

namespace A237255.P3588683921569543215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237254 (n + 1) + A004253 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A237255.P3588683921569543215

namespace A237255

/-- `A237254(n+1)+A004253(∑[A059841(n)])` -/
def P3588683921569543215.Spec : Prop :=
  ∀ n, P3588683921569543215.a n = A237255 (n + 1)

end A237255

/-!
# A237258: Number of strict partitions of 2n that include a partition of n.

The programs for A237258, there is no canonical definition to state claims against.
-/

/-! ## A237258.P6593609110351190630

`A035294(n)-A321142(n)`
-/

namespace A237258.P6593609110351190630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035294 n - A321142 n

end

end A237258.P6593609110351190630

/-! ## A237258.P5491372460455144542

`A000009(2*n)-A321142(n)`
-/

namespace A237258.P5491372460455144542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 (2 * n) - A321142 n

end

end A237258.P5491372460455144542

/-! ## A237258.P9905478360833071178

`A081360(2*n)-A321142(n)`
-/

namespace A237258.P9905478360833071178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081360 (2 * n) - A321142 n

end

end A237258.P9905478360833071178

/-! ## A237258.P8951637222494637556

`(A333147(2*n)+1)/2-A321142(n)`
-/

namespace A237258.P8951637222494637556
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A333147 (2 * n) + 1 : ℚ) / 2 - (A321142 n : ℚ)

end

end A237258.P8951637222494637556

/-! ## A237258.P9018863651970815671

`A035457(A008586(n))-A321142(n)`
-/

namespace A237258.P9018863651970815671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035457 (A008586 n).toNat - A321142 n

end

end A237258.P9018863651970815671

/-!
# A237260: Least positive integer m < n with prime(prime(m)) + 2 and prime(n-m) + 2 both prime, or 0 if such a number m does not exist.

The programs for A237260, there is no canonical definition to state claims against.
-/

/-! ## A237260.P2338333133070786020

`A122197(A028310(n))%A332337(n+1)`
-/

namespace A237260.P2338333133070786020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A122197 (A028310 n).toNat) (A332337 (n + 1))

end

end A237260.P2338333133070786020

/-! ## A237260.P7527813374298531651

`A339443(A004277(n))%A215073(n+1)`
-/

namespace A237260.P7527813374298531651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A339443 (A004277 n).toNat) (A215073 (n + 1))

end

end A237260.P7527813374298531651

/-! ## A237260.P8740333822801938868

`A002262(lt[A333525(n+2), A144299(n)])`
-/

namespace A237260.P8740333822801938868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333525 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144299 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A237260.P8740333822801938868

/-! ## A237260.P16823907847826893451

`A055087(lt[A333628(3*n+1), A136394(n)])`
-/

namespace A237260.P16823907847826893451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333628 (3 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136394 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055087 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A237260.P16823907847826893451

/-! ## A237260.P893040534717208256

`A122197(A028310(n))%A000005(A060818(n))`
-/

namespace A237260.P893040534717208256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A122197 (A028310 n).toNat) (A000005 (A060818 n).toNat)

end

end A237260.P893040534717208256

/-!
# A237261: Number of ways to write the n-th odd number in the form of 2^k+p^m*q^h, where p < q are 1 or odd prime numbers, and k, m, h >= 1.

The programs for A237261, there is no canonical definition to state claims against.
-/

/-! ## A237261.P3055125431378660301

`ceil(log2(A178602(n)+n))`
-/

namespace A237261.P3055125431378660301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A178602 n + (n : ℤ) : ℝ)⌉

end

end A237261.P3055125431378660301

/-! ## A237261.P17504894347727174822

`ceil(log2(gcd(n, A001813(n))))`
-/

namespace A237261.P17504894347727174822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (Int.gcd (n : ℤ) (A001813 n) : ℝ)⌉

end

end A237261.P17504894347727174822

/-! ## A237261.P12550940714625400867

`ceil(log2(C(A219107(n), n²)+n))`
-/

namespace A237261.P12550940714625400867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (Nat.choose (A219107 n).toNat (n ^ 2) + n : ℝ)⌉

end

end A237261.P12550940714625400867

/-! ## A237261.P12110288989384351897

`∑[char[2^n+1]]%A064527(n+1)`
-/

namespace A237261.P12110288989384351897
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A064527 (n + 1))

end

end A237261.P12110288989384351897

/-! ## A237261.P14705724370882250714

`ceil(log2(C(A098707(n+2), (9*n)²)+n))`
-/

namespace A237261.P14705724370882250714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (Nat.choose (A098707 (n + 2)).toNat ((9 * n) ^ 2) + n : ℝ)⌉

end

end A237261.P14705724370882250714

/-! ## A237261.P11400607733754452999

`A029837(A178602(n)+n)`
-/

namespace A237261.P11400607733754452999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029837 (A178602 n + (n : ℤ)).toNat

end

end A237261.P11400607733754452999

/-! ## A237261.P2362623276379448998

`A102572(A054552(n))`
-/

namespace A237261.P2362623276379448998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102572 (A054552 n).toNat

end

end A237261.P2362623276379448998

/-! ## A237261.P521392010074808504

`A102572(A317384(n))`
-/

namespace A237261.P521392010074808504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102572 (A317384 n).toNat

end

end A237261.P521392010074808504

/-!
# A237262: Values of x in the solutions to x^2 - 8*x*y + y^2 + 11 = 0, where 0 < x < y.

The programs for A237262, the canonical program `A237262.P1154597669639329593` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A237262 has offset 1).

The definition of A237262 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A237262.P16799486593409745068

`ogf((1+2x-2x^2-x^3)/(1-8x^2+x^4))`
-/

namespace A237262.P16799486593409745068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, -2, -1] [1, 0, -8, 0, 1] n

end

end A237262.P16799486593409745068

namespace A237262

/-- `ogf((1+2x-2x^2-x^3)/(1-8x^2+x^4))` -/
def P16799486593409745068.Spec : Prop :=
  ∀ n, P16799486593409745068.a n = A237262 (n + 1)

end A237262

/-! ## A237262.P1154597669639329593

`8*a(n-2)-a(n-4)` with `a(0)=1, a(1)=2, a(2)=6, a(3)=15`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A237262

/-- `8*a(n-2)-a(n-4)` -/
def P1154597669639329593.Spec : Prop :=
  ∀ n, P1154597669639329593.a n = A237262 (n + 1)

theorem P1154597669639329593.correct : P1154597669639329593.Spec := by
  intro n
  simp only [A237262, Nat.add_sub_cancel]

end A237262

/-! ## A237262.P12829696992167555056

`A322780(n)+a(n-1)` with `a(0)=1`
-/

namespace A237262.P12829696992167555056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A322780 n + a (n - 1)

end

end A237262.P12829696992167555056

namespace A237262

/-- `A322780(n)+a(n-1)` -/
def P12829696992167555056.Spec : Prop :=
  ∀ n, P12829696992167555056.a n = A237262 (n + 1)

end A237262

/-! ## A237262.P835720301200933768

`∑[A322780(A028310(n))]`
-/

namespace A237262.P835720301200933768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322780 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A237262.P835720301200933768

namespace A237262

/-- `∑[A322780(A028310(n))]` -/
def P835720301200933768.Spec : Prop :=
  ∀ n, P835720301200933768.a n = A237262 (n + 1)

end A237262

/-! ## A237262.P17583715351928728145

`∑[A322780(A065033(2*n))]`
-/

namespace A237262.P17583715351928728145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322780 (A065033 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A237262.P17583715351928728145

namespace A237262

/-- `∑[A322780(A065033(2*n))]` -/
def P17583715351928728145.Spec : Prop :=
  ∀ n, P17583715351928728145.a n = A237262 (n + 1)

end A237262

/-! ## A237262.P10220950716176005182

`∑[A322780(A000007(n)+n)]`
-/

namespace A237262.P10220950716176005182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322780 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A237262.P10220950716176005182

namespace A237262

/-- `∑[A322780(A000007(n)+n)]` -/
def P10220950716176005182.Spec : Prop :=
  ∀ n, P10220950716176005182.a n = A237262 (n + 1)

end A237262

/-! ## A237262.P8554509718126766638

`∑[A322780(A004277(n)-n)]`
-/

namespace A237262.P8554509718126766638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322780 (A004277 n - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A237262.P8554509718126766638

namespace A237262

/-- `∑[A322780(A004277(n)-n)]` -/
def P8554509718126766638.Spec : Prop :=
  ∀ n, P8554509718126766638.a n = A237262 (n + 1)

end A237262

/-! ## A237262.P7107757408205571782

`∑[A322780(or(n, A000007(n)))]`
-/

namespace A237262.P7107757408205571782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322780 (Int.lor (n : ℤ) (A000007 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A237262.P7107757408205571782

namespace A237262

/-- `∑[A322780(or(n, A000007(n)))]` -/
def P7107757408205571782.Spec : Prop :=
  ∀ n, P7107757408205571782.a n = A237262 (n + 1)

end A237262

/-! ## A237262.P6409607382650484313

`∑[A322780(A008619(A004273(n)))]`
-/

namespace A237262.P6409607382650484313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322780 (A008619 (A004273 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A237262.P6409607382650484313

namespace A237262

/-- `∑[A322780(A008619(A004273(n)))]` -/
def P6409607382650484313.Spec : Prop :=
  ∀ n, P6409607382650484313.a n = A237262 (n + 1)

end A237262

/-! ## A237262.P16995894192118723042

`(A199336(n+1)+A077248(n))/3`
-/

namespace A237262.P16995894192118723042
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A199336 (n + 1) + A077248 n : ℚ) / 3

end

end A237262.P16995894192118723042

namespace A237262

/-- `(A199336(n+1)+A077248(n))/3` -/
def P16995894192118723042.Spec : Prop :=
  ∀ n, P16995894192118723042.a n = (A237262 (n + 1) : ℚ)

end A237262

/-! ## A237262.P10645659371154806008

`∑[A322780(n+1)]+1-A322780(n+1)`
-/

namespace A237262.P10645659371154806008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322780 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A322780 (n + 1))

end

end A237262.P10645659371154806008

namespace A237262

/-- `∑[A322780(n+1)]+1-A322780(n+1)` -/
def P10645659371154806008.Spec : Prop :=
  ∀ n, P10645659371154806008.a n = A237262 (n + 1)

end A237262

/-!
# A237263: Smallest prime such that if up to n copies of the final digit are appended to the number, it remains prime, but it does not for n+1 copies.

The programs for A237263, there is no canonical definition to state claims against.
-/

/-! ## A237263.P459038145981594333

`A130112(a(n-1))` with `a(0)=2, a(1)=31, a(2)=19, a(3)=23`
-/

namespace A237263.P459038145981594333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 31, 19, 23] fun n a =>
  A130112 (a (n - 1)).toNat

end

end A237263.P459038145981594333

/-!
# A237264: Number of partitions of 3n into 3 parts with largest part prime.

The programs for A237264, there is no canonical definition to state claims against.
-/

/-! ## A237264.P16251807855316478339

`A237669(n+1)-(A236762(n+1)+A236758(n+1))`
-/

namespace A237264.P16251807855316478339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237669 (n + 1) - (A236762 (n + 1) + A236758 (n + 1))

end

end A237264.P16251807855316478339

/-!
# A237265: Irregular table: n X n matrices (n=1,2,3,...), read by rows filled with numbers 1..n, with k moved to the front in the k-th row.

The programs for A237265, there is no canonical definition to state claims against.
-/

/-! ## A237265.P17064459467659458219

`A001221(A205193(n+1)+A002865(A002865(n)))`
-/

namespace A237265.P17064459467659458219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A205193 (n + 1) + A002865 (A002865 n).toNat).toNat

end

end A237265.P17064459467659458219

/-! ## A237265.P13699441220603303518

`A120964(A102848(n+1))`
-/

namespace A237265.P13699441220603303518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120964 (A102848 (n + 1)).toNat

end

end A237265.P13699441220603303518

/-! ## A237265.P14691703428840523433

`A173920(A217109(n)*A331348(n))`
-/

namespace A237265.P14691703428840523433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173920 (A217109 n * A331348 n).toNat

end

end A237265.P14691703428840523433

/-! ## A237265.P3396782154459649216

`A078734(A290132(n+1)-A003285(n+1))`
-/

namespace A237265.P3396782154459649216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078734 (A290132 (n + 1) - A003285 (n + 1)).toNat

end

end A237265.P3396782154459649216

/-! ## A237265.P930353238856817237

`A279387(or(A033110(n+1), A191723(n+1)))`
-/

namespace A237265.P930353238856817237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279387 (Int.lor (A033110 (n + 1)) (A191723 (n + 1))).toNat

end

end A237265.P930353238856817237

/-!
# A237266: The n-th base 2 pseudoprime is also a pseudoprime to base 2 through base prime(a(n)).

The programs for A237266, there is no canonical definition to state claims against.
-/

/-! ## A237266.P4427419113173615062

`ceil(A321790(n+1)/3)`
-/

namespace A237266.P4427419113173615062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A321790 (n + 1) : ℚ) / 3⌉

end

end A237266.P4427419113173615062

/-! ## A237266.P17699500089103614358

`A033270(A321790(n+1))`
-/

namespace A237266.P17699500089103614358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033270 (A321790 (n + 1)).toNat

end

end A237266.P17699500089103614358

/-! ## A237266.P1292999735488057965

`A083055(A321790(n+1)+1)`
-/

namespace A237266.P1292999735488057965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083055 (A321790 (n + 1) + 1).toNat

end

end A237266.P1292999735488057965

/-! ## A237266.P5843733025253639626

`A087847(A321790(n+1)+1)`
-/

namespace A237266.P5843733025253639626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087847 (A321790 (n + 1) + 1).toNat

end

end A237266.P5843733025253639626

/-! ## A237266.P15740120900571841821

`A000720(A321790(n+1)-1)`
-/

namespace A237266.P15740120900571841821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A321790 (n + 1) - 1).toNat

end

end A237266.P15740120900571841821

/-! ## A237266.P6267778462062148207

`A002264(A321790(n+1)+2)`
-/

namespace A237266.P6267778462062148207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A321790 (n + 1) + 2).toNat

end

end A237266.P6267778462062148207

/-! ## A237266.P11129007339170950834

`A008620(A321790(n+1)-1)`
-/

namespace A237266.P11129007339170950834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A321790 (n + 1) - 1).toNat

end

end A237266.P11129007339170950834

/-!
# A237267: The positions of records in A236747.

The programs for A237267, there is no canonical definition to state claims against.
-/

/-! ## A237267.P17092327207636596193

`A094530(a(n-2))` with `a(0)=1, a(1)=2, a(2)=5`
-/

namespace A237267.P17092327207636596193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 5] fun n a =>
  A094530 (a (n - 2)).toNat

end

end A237267.P17092327207636596193

/-!
# A237268: a(1)=1; for n > 1, a(n) is the smallest F(m) > F(n) such that F(n) divides F(m), where F(k) denotes the k-th Fibonacci number.

The programs for A237268, the canonical program `A237268.P2816683537388698953` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A237268 has offset 1).

The definition of A237268 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A237268.P10426193203223387172

`ogf((1-x+3x^2-x^3)/(1-3x+x^2))`
-/

namespace A237268.P10426193203223387172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, 3, -1] [1, -3, 1] n

end

end A237268.P10426193203223387172

namespace A237268

/-- `ogf((1-x+3x^2-x^3)/(1-3x+x^2))` -/
def P10426193203223387172.Spec : Prop :=
  ∀ n, P10426193203223387172.a n = A237268 (n + 1)

end A237268

/-! ## A237268.P2816683537388698953

`3*a(n-1)-a(n-2)` with `a(0)=1, a(1)=2, a(2)=8, a(3)=21`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A237268

/-- `3*a(n-1)-a(n-2)` -/
def P2816683537388698953.Spec : Prop :=
  ∀ n, P2816683537388698953.a n = A237268 (n + 1)

theorem P2816683537388698953.correct : P2816683537388698953.Spec := by
  intro n
  simp only [A237268, Nat.add_sub_cancel]

end A237268

/-! ## A237268.P718249651876504637

`ceil(ϕ²*a(n-1))` with `a(0)=1, a(1)=2, a(2)=8`
-/

namespace A237268.P718249651876504637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 8] fun n a =>
  ⌈Real.goldenRatio ^ 2 * (a (n - 1) : ℝ)⌉

end

end A237268.P718249651876504637

namespace A237268

/-- `ceil(ϕ²*a(n-1))` -/
def P718249651876504637.Spec : Prop :=
  ∀ n, P718249651876504637.a n = A237268 (n + 1)

end A237268

/-! ## A237268.P5372954209077789981

`round(ϕ²*a(n-1))` with `a(0)=1, a(1)=2, a(2)=8`
-/

namespace A237268.P5372954209077789981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 8] fun n a =>
  SequenceMachineLib.roundAway (Real.goldenRatio ^ 2 * (a (n - 1) : ℝ))

end

end A237268.P5372954209077789981

namespace A237268

/-- `round(ϕ²*a(n-1))` -/
def P5372954209077789981.Spec : Prop :=
  ∀ n, P5372954209077789981.a n = A237268 (n + 1)

end A237268

/-! ## A237268.P10485365109033763132

`ceil(ϕ*ϕ*a(n-1))` with `a(0)=1, a(1)=2, a(2)=8`
-/

namespace A237268.P10485365109033763132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 8] fun n a =>
  ⌈Real.goldenRatio * (Real.goldenRatio * (a (n - 1) : ℝ))⌉

end

end A237268.P10485365109033763132

namespace A237268

/-- `ceil(ϕ*ϕ*a(n-1))` -/
def P10485365109033763132.Spec : Prop :=
  ∀ n, P10485365109033763132.a n = A237268 (n + 1)

end A237268

/-! ## A237268.P10003694750675623957

`∑[A122367(n)]-char[1]`
-/

namespace A237268.P10003694750675623957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122367 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A237268.P10003694750675623957

namespace A237268

/-- `∑[A122367(n)]-char[1]` -/
def P10003694750675623957.Spec : Prop :=
  ∀ n, P10003694750675623957.a n = A237268 (n + 1)

end A237268

/-! ## A237268.P6476846491887386485

`A001906(n+1)-char[1]`
-/

namespace A237268.P6476846491887386485
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001906 (n + 1) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A237268.P6476846491887386485

namespace A237268

/-- `A001906(n+1)-char[1]` -/
def P6476846491887386485.Spec : Prop :=
  ∀ n, P6476846491887386485.a n = A237268 (n + 1)

end A237268

/-! ## A237268.P8097912252311441783

`A088305(n+1)-char[1]`
-/

namespace A237268.P8097912252311441783
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088305 (n + 1) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A237268.P8097912252311441783

namespace A237268

/-- `A088305(n+1)-char[1]` -/
def P8097912252311441783.Spec : Prop :=
  ∀ n, P8097912252311441783.a n = A237268 (n + 1)

end A237268

/-! ## A237268.P5979230605403654931

`A052952(2*n)-char[1]`
-/

namespace A237268.P5979230605403654931
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052952 (2 * n) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A237268.P5979230605403654931

namespace A237268

/-- `A052952(2*n)-char[1]` -/
def P5979230605403654931.Spec : Prop :=
  ∀ n, P5979230605403654931.a n = A237268 (n + 1)

end A237268

/-! ## A237268.P4382175677148923554

`A147600(2*n)-char[1]`
-/

namespace A237268.P4382175677148923554
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147600 (2 * n) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A237268.P4382175677148923554

namespace A237268

/-- `A147600(2*n)-char[1]` -/
def P4382175677148923554.Spec : Prop :=
  ∀ n, P4382175677148923554.a n = A237268 (n + 1)

end A237268

/-! ## A237268.P7174137931531360997

`∑[A001519(n+1)]-char[1]`
-/

namespace A237268.P7174137931531360997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001519 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A237268.P7174137931531360997

namespace A237268

/-- `∑[A001519(n+1)]-char[1]` -/
def P7174137931531360997.Spec : Prop :=
  ∀ n, P7174137931531360997.a n = A237268 (n + 1)

end A237268

/-! ## A237268.P10573953995631025198

`A000045(n*ceil(atan(n))+2)`
-/

namespace A237268.P10573953995631025198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 ((n : ℤ) * ⌈Real.arctan (n : ℝ)⌉ + 2).toNat

end

end A237268.P10573953995631025198

namespace A237268

/-- `A000045(n*ceil(atan(n))+2)` -/
def P10573953995631025198.Spec : Prop :=
  ∀ n, P10573953995631025198.a n = A237268 (n + 1)

end A237268

/-! ## A237268.P14222882799430194740

`∑[A000045(Δ[n²])]-char[1]`
-/

namespace A237268.P14222882799430194740
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ((if ∃ j, f3 j = n then 1 else 0 : ℕ) : ℤ)

end

end A237268.P14222882799430194740

namespace A237268

/-- `∑[A000045(Δ[n²])]-char[1]` -/
def P14222882799430194740.Spec : Prop :=
  ∀ n, P14222882799430194740.a n = A237268 (n + 1)

end A237268

/-! ## A237268.P11431307704877209150

`A000045(2*(n+1)-char[1])`
-/

namespace A237268.P11431307704877209150
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (2 * (n + 1) - (if ∃ j, f1 j = n then 1 else 0))

end

end A237268.P11431307704877209150

namespace A237268

/-- `A000045(2*(n+1)-char[1])` -/
def P11431307704877209150.Spec : Prop :=
  ∀ n, P11431307704877209150.a n = A237268 (n + 1)

end A237268

/-! ## A237268.P6508340708092508549

`A094966(2*(n+1))-char[1]`
-/

namespace A237268.P6508340708092508549
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094966 (2 * (n + 1)) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A237268.P6508340708092508549

namespace A237268

/-- `A094966(2*(n+1))-char[1]` -/
def P6508340708092508549.Spec : Prop :=
  ∀ n, P6508340708092508549.a n = A237268 (n + 1)

end A237268

/-! ## A237268.P479772390694966032

`xor(A000045(2*(n+1)), char[1])`
-/

namespace A237268.P479772390694966032
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000045 (2 * (n + 1))) ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A237268.P479772390694966032

namespace A237268

/-- `xor(A000045(2*(n+1)), char[1])` -/
def P479772390694966032.Spec : Prop :=
  ∀ n, P479772390694966032.a n = A237268 (n + 1)

end A237268

/-! ## A237268.P15124141300586187649

`A000045(n+2+n)-char[1]`
-/

namespace A237268.P15124141300586187649
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 2 + n) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A237268.P15124141300586187649

namespace A237268

/-- `A000045(n+2+n)-char[1]` -/
def P15124141300586187649.Spec : Prop :=
  ∀ n, P15124141300586187649.a n = A237268 (n + 1)

end A237268

/-! ## A237268.P17512511753816548831

`∑[A005247(2*n+1)]-char[1]`
-/

namespace A237268.P17512511753816548831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005247 (2 * n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A237268.P17512511753816548831

namespace A237268

/-- `∑[A005247(2*n+1)]-char[1]` -/
def P17512511753816548831.Spec : Prop :=
  ∀ n, P17512511753816548831.a n = A237268 (n + 1)

end A237268

/-! ## A237268.P2543511690473388396

`A135992(A223134(n))`
-/

namespace A237268.P2543511690473388396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135992 (A223134 n).toNat

end

end A237268.P2543511690473388396

namespace A237268

/-- `A135992(A223134(n))` -/
def P2543511690473388396.Spec : Prop :=
  ∀ n, P2543511690473388396.a n = A237268 (n + 1)

end A237268

/-! ## A237268.P16784136240945866678

`A280688(A273315(n))`
-/

namespace A237268.P16784136240945866678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280688 (A273315 n).toNat

end

end A237268.P16784136240945866678

namespace A237268

/-- `A280688(A273315(n))` -/
def P16784136240945866678.Spec : Prop :=
  ∀ n, P16784136240945866678.a n = A237268 (n + 1)

end A237268

/-!
# A237269: Number of partitions of n such that at least half the parts are identical.

The programs for A237269, there is no canonical definition to state claims against.
-/

/-! ## A237269.P16133656359631379269

`A014723(A217498(n+1))+A003114(2*n+1)`
-/

namespace A237269.P16133656359631379269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014723 (A217498 (n + 1)).toNat + A003114 (2 * n + 1)

end

end A237269.P16133656359631379269

/-! ## A237269.P13596152865719014982

`A000196(A274005(n+1)-1)`
-/

namespace A237269.P13596152865719014982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A274005 (n + 1) - 1).toNat

end

end A237269.P13596152865719014982

/-! ## A237269.P14763047022637565658

`A000196(A240314(3*n+1)+n+1)`
-/

namespace A237269.P14763047022637565658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A240314 (3 * n + 1) + (n + 1 : ℤ)).toNat

end

end A237269.P14763047022637565658

/-! ## A237269.P14192025319783739022

`A321728(n)+A055086(A299069(n))`
-/

namespace A237269.P14192025319783739022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321728 n + A055086 (A299069 n).toNat

end

end A237269.P14192025319783739022

/-! ## A237269.P11462889564440705099

`A000196(record[A211971(n)/A072996(n)])`
-/

namespace A237269.P11462889564440705099
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A211971 n : ℚ) / (A072996 n : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A237269.P11462889564440705099

/-!
# A237270: Irregular triangle read by rows in which row n lists the parts of the symmetric representation of sigma(n).

The programs for A237270, there is no canonical definition to state claims against.
-/

/-! ## A237270.P3207114083638010165

`Δ[A239659(abs(1-n)+1)%(n+1)²]`
-/

namespace A237270.P3207114083638010165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A239659 (|1 - (n : ℤ)| + 1).toNat) ((n + 1) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A237270.P3207114083638010165

/-! ## A237270.P2316580584501166767

`A028310(Δ[A239659(A028310(n))])`
-/

namespace A237270.P2316580584501166767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239659 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (f1 (n + 1) - f1 n).toNat

end

end A237270.P2316580584501166767

/-! ## A237270.P18370778421132456110

`A245100(n+1)/A185283(A239659(n+1))`
-/

namespace A237270.P18370778421132456110
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A245100 (n + 1) : ℚ) / (A185283 (A239659 (n + 1)).toNat : ℚ)

end

end A237270.P18370778421132456110

/-! ## A237270.P17123301108666185579

`A299778(lt[A341591(n+1), A299778(n+1)]+1)`
-/

namespace A237270.P17123301108666185579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341591 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299778 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299778 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1)

end

end A237270.P17123301108666185579

/-! ## A237270.P1655573967515651544

`A001281(A279160(n+1))-A262808(A060455(n))`
-/

namespace A237270.P1655573967515651544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A279160 (n + 1)).toNat - A262808 (A060455 n).toNat

end

end A237270.P1655573967515651544

/-!
# A237271: Number of parts in the symmetric representation of sigma(n).

The programs for A237271, there is no canonical definition to state claims against.
-/

/-! ## A237271.P3832128176953934705

`A001227(n+1)-A239657(n+1)`
-/

namespace A237271.P3832128176953934705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (n + 1) - A239657 (n + 1)

end

end A237271.P3832128176953934705

/-! ## A237271.P4501943810649700685

`A000005(n+1)-A243982(n+1)`
-/

namespace A237271.P4501943810649700685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A243982 (n + 1)

end

end A237271.P4501943810649700685

/-! ## A237271.P7075303581246609847

`A340846(n+1)-A340833(n+1)+1`
-/

namespace A237271.P7075303581246609847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340846 (n + 1) - A340833 (n + 1) + 1

end

end A237271.P7075303581246609847

/-! ## A237271.P5194761116561396686

`A348327(n+1)+A262619(n+1)`
-/

namespace A237271.P5194761116561396686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348327 (n + 1) + A262619 (n + 1)

end

end A237271.P5194761116561396686

/-! ## A237271.P10842260202921998717

`round(round((A244971(n+1)+1)/2)/2)`
-/

namespace A237271.P10842260202921998717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((SequenceMachineLib.roundAway ((A244971 (n + 1) + 1 : ℚ) / 2) : ℚ) / 2)

end

end A237271.P10842260202921998717

/-! ## A237271.P644287996063057721

`A008621(A244971(n+1))`
-/

namespace A237271.P644287996063057721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (A244971 (n + 1)).toNat

end

end A237271.P644287996063057721

/-! ## A237271.P6385399154401497826

`Δ[A317109(n)-A294723(n)]`
-/

namespace A237271.P6385399154401497826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317109 n - A294723 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A237271.P6385399154401497826

/-! ## A237271.P10266519981685783815

`A008624(A244971(n+1)+2)`
-/

namespace A237271.P10266519981685783815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008624 (A244971 (n + 1) + 2).toNat

end

end A237271.P10266519981685783815

/-! ## A237271.P8444769372890205387

`A110622(A244971(n+1)+2)`
-/

namespace A237271.P8444769372890205387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110622 (A244971 (n + 1) + 2).toNat

end

end A237271.P8444769372890205387

/-! ## A237271.P18166944538501786552

`A390877(∑[n+1])`
-/

namespace A237271.P18166944538501786552
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390877 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A237271.P18166944538501786552

/-! ## A237271.P11559714467027773485

`A390879(∑[n+1])`
-/

namespace A237271.P11559714467027773485
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390879 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A237271.P11559714467027773485

/-!
# A237272: Number of overcompositions of n that contain at least two parts in increasing order and that contain at least one overlined part.

The programs for A237272, there is no canonical definition to state claims against.
-/

/-! ## A237272.P15937701226537798360

`A237045(n)-A056823(n)`
-/

namespace A237272.P15937701226537798360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237045 n - A056823 n

end

end A237272.P15937701226537798360

/-! ## A237272.P1006349364100128662

`A236002(n)-A230441(n)-A011782(n)`
-/

namespace A237272.P1006349364100128662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236002 n - A230441 n - A011782 n

end

end A237272.P1006349364100128662

/-! ## A237272.P11425390110180029902

`A236002(n)-A015128(n)+A000041(n)-A011782(n)`
-/

namespace A237272.P11425390110180029902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236002 n - A015128 n + A000041 n - A011782 n

end

end A237272.P11425390110180029902

/-! ## A237272.P2485564147131723265

`A236633(n)-A230441(n)`
-/

namespace A237272.P2485564147131723265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236633 n - A230441 n

end

end A237272.P2485564147131723265

/-! ## A237272.P4623415656348093097

`A237045(n)-ceil(2^(n-1)-A000041(n))`
-/

namespace A237272.P4623415656348093097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237045 n - ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) - (A000041 n : ℚ)⌉

end

end A237272.P4623415656348093097

/-!
# A237273: Triangle read by rows: T(n,k) = k+m, if k < m and k*m = n, or T(n,k) = k, if k^2 = n. Otherwise T(n,k) = 0. With n>=1 and 1<=k<=A000196(n).

The programs for A237273, there is no canonical definition to state claims against.
-/

/-! ## A237273.P12549626848442616999

`A212119(n+1)/2*A238288(n+1)`
-/

namespace A237273.P12549626848442616999
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A212119 (n + 1) : ℚ) / 2 * (A238288 (n + 1) : ℚ)

end

end A237273.P12549626848442616999

/-! ## A237273.P8211339551214004111

`A004525(A212119(n+1)*A238288(n+1))`
-/

namespace A237273.P8211339551214004111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A212119 (n + 1) * A238288 (n + 1)).toNat

end

end A237273.P8211339551214004111

/-! ## A237273.P1784441706198579725

`A006370(A212119(n+1)*A238288(n+1))`
-/

namespace A237273.P1784441706198579725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 (A212119 (n + 1) * A238288 (n + 1)).toNat

end

end A237273.P1784441706198579725

/-! ## A237273.P3691878433932775357

`A078898(A212119(n+1)*A238288(n+1))`
-/

namespace A237273.P3691878433932775357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A212119 (n + 1) * A238288 (n + 1)).toNat

end

end A237273.P3691878433932775357

/-!
# A237274: a(n) = A236283(n) mod 9.

The programs for A237274, the canonical program `A237274.P8039821619242556883` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A237274 has offset 0).

The definition of A237274 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A237274.P8039821619242556883

`dr(ceil(xor(3, n²)/2))`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A237274

/-- `dr(ceil(xor(3, n²)/2))` -/
def P8039821619242556883.Spec : Prop :=
  ∀ n, (P8039821619242556883.a n : ℤ) = A237274 n

theorem P8039821619242556883.correct : P8039821619242556883.Spec := by
  intro n
  simp only [A237274]

end A237274

/-!
# A237275: Smallest k divisible by the n-th power of its last decimal digit > 1.

The programs for A237275, there is no canonical definition to state claims against.
-/

/-! ## A237275.P10214146424010714608

`16*a(n-4)` with `a(0)=2, a(1)=2, a(2)=12, a(3)=32`
-/

namespace A237275.P10214146424010714608
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 2, 12, 32] fun n a =>
  16 * a (n - 4)

end

end A237275.P10214146424010714608

/-! ## A237275.P8442686996364652487

`2^n*Δ[3^n]%5`
-/

namespace A237275.P8442686996364652487
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * Int.tmod ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) 5

end

end A237275.P8442686996364652487

/-! ## A237275.P17041919579925222966

`2^n*A070402(3*n+1)`
-/

namespace A237275.P17041919579925222966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A070402 (3 * n + 1)

end

end A237275.P17041919579925222966

/-! ## A237275.P1712927004978697749

`2^n*A000032(or(n, -4)+4)`
-/

namespace A237275.P1712927004978697749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A000032 (Int.lor (n : ℤ) (-4) + 4).toNat

end

end A237275.P1712927004978697749

/-! ## A237275.P14699461750245696357

`A134142(A047605(n+2))`
-/

namespace A237275.P14699461750245696357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134142 (A047605 (n + 2)).toNat

end

end A237275.P14699461750245696357

/-!
# A237276: Numbers k such that A000041(k) == 1 (mod 3).

The programs for A237276, there is no canonical definition to state claims against.
-/

/-! ## A237276.P13346625706717203834

`eq[1, A068907(n)]`
-/

namespace A237276.P13346625706717203834
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068907 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A237276.P13346625706717203834

/-! ## A237276.P12751896157551514374

`eq[1, A004088(n)%3]`
-/

namespace A237276.P12751896157551514374
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004088 n) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A237276.P12751896157551514374

/-! ## A237276.P16998683005746129904

`eq[2, A238191(n)%3+1]`
-/

namespace A237276.P16998683005746129904
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A238191 n) 3 + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A237276.P16998683005746129904

/-! ## A237276.P13605972914262977647

`eq[1, A000041(n)%3]`
-/

namespace A237276.P13605972914262977647
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000041 n) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A237276.P13605972914262977647

/-! ## A237276.P16921281870885472846

`eq[1, A119620(2*n+1)%3]`
-/

namespace A237276.P16921281870885472846
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A119620 (2 * n + 1)) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A237276.P16921281870885472846

/-!
# A237277: Numbers k such that A000041(k) == 2 (mod 3).

The programs for A237277, there is no canonical definition to state claims against.
-/

/-! ## A237277.P17621296165236154241

`lt[1, A068907(n)]`
-/

namespace A237277.P17621296165236154241
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068907 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A237277.P17621296165236154241

/-! ## A237277.P7214317125768886961

`eq[2, A068907(n+1)]+1`
-/

namespace A237277.P7214317125768886961
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068907 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A237277.P7214317125768886961

/-! ## A237277.P12161375732385610438

`A000027(eq[2, A068907(n)])`
-/

namespace A237277.P12161375732385610438
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068907 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A237277.P12161375732385610438

/-! ## A237277.P11942964711655075910

`eq[2, A068907(A028310(n))]`
-/

namespace A237277.P11942964711655075910
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068907 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A237277.P11942964711655075910

/-! ## A237277.P8832343997546998664

`eq[A054977(n)+1, A068907(n)]`
-/

namespace A237277.P8832343997546998664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068907 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A237277.P8832343997546998664

/-! ## A237277.P9831651276689153164

`eq[A158388(n)+1, A068907(n)]`
-/

namespace A237277.P9831651276689153164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158388 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068907 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A237277.P9831651276689153164

/-! ## A237277.P14108123338570155163

`eq[2, A068907(n*A054977(n))]`
-/

namespace A237277.P14108123338570155163
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068907 ((n : ℤ) * A054977 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A237277.P14108123338570155163

/-! ## A237277.P7259501114999212757

`eq[2, A068907(n*A057427(n))]`
-/

namespace A237277.P7259501114999212757
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068907 ((n : ℤ) * A057427 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A237277.P7259501114999212757

/-! ## A237277.P1875544451707863893

`eq[2, A068907(n*A158388(n))]`
-/

namespace A237277.P1875544451707863893
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068907 ((n : ℤ) * A158388 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A237277.P1875544451707863893

/-! ## A237277.P18137111074327581509

`eq[2, A068907(n/A054977(n))]`
-/

namespace A237277.P18137111074327581509
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068907 (SequenceMachineLib.roundAway ((n : ℚ) / (A054977 n : ℚ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A237277.P18137111074327581509

/-! ## A237277.P11341739030574275263

`eq[A068907(n)/2, A057427(n)]`
-/

namespace A237277.P11341739030574275263
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A068907 n : ℚ) / 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℚ)) n

end

end A237277.P11341739030574275263

/-! ## A237277.P9510720369802865275

`eq[2, A068907(n/A158388(n))]`
-/

namespace A237277.P9510720369802865275
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068907 (SequenceMachineLib.roundAway ((n : ℚ) / (A158388 n : ℚ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A237277.P9510720369802865275

/-! ## A237277.P17745653797796277045

`eq[1, A000065(n)%3]`
-/

namespace A237277.P17745653797796277045
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000065 n) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A237277.P17745653797796277045

/-! ## A237277.P1361429953892727398

`lt[1, A000041(n)%3]`
-/

namespace A237277.P1361429953892727398
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000041 n) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A237277.P1361429953892727398

/-! ## A237277.P13651820250185473950

`eq[4, (∑[A002865(n)]%3)²]`
-/

namespace A237277.P13651820250185473950
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f3 j) 3 ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A237277.P13651820250185473950

/-! ## A237277.P6106760970553752063

`eq[2, A000041(n+1)%3]+1`
-/

namespace A237277.P6106760970553752063
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000041 (n + 1)) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A237277.P6106760970553752063

/-! ## A237277.P2869013576298978053

`eq[6, dr(A299473(n))]`
-/

namespace A237277.P2869013576298978053
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A299473 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A237277.P2869013576298978053

/-! ## A237277.P18247534475050117855

`lt[1, A035363(2*n)%3]`
-/

namespace A237277.P18247534475050117855
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A035363 (2 * n)) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A237277.P18247534475050117855

/-! ## A237277.P6515982906917893007

`eq[2, A266821(n)%3]`
-/

namespace A237277.P6515982906917893007
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A266821 n) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A237277.P6515982906917893007

/-!
# A237278: Numbers k such that A000041(k) == 0 (mod 4).

The programs for A237278, there is no canonical definition to state claims against.
-/

/-! ## A237278.P2083878791778062663

`eq[0, A121062(n)]`
-/

namespace A237278.P2083878791778062663
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121062 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A237278.P2083878791778062663

/-! ## A237278.P9041605731435325893

`lt[1, A278478(n)]`
-/

namespace A237278.P9041605731435325893
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278478 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A237278.P9041605731435325893

/-! ## A237278.P6505834798108725066

`eq[0, A000025(n)%4]`
-/

namespace A237278.P6505834798108725066
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000025 n) 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A237278.P6505834798108725066

/-! ## A237278.P9110738513618798054

`eq[4, gcd(4, A132969(n))]`
-/

namespace A237278.P9110738513618798054
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 4 (A132969 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A237278.P9110738513618798054

/-! ## A237278.P6496953097805759373

`eq[0, A000041(n)%4]`
-/

namespace A237278.P6496953097805759373
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000041 n) 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A237278.P6496953097805759373

/-! ## A237278.P3815316811296221193

`eq[3, A000065(n)%4]`
-/

namespace A237278.P3815316811296221193
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000065 n) 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A237278.P3815316811296221193

/-! ## A237278.P12762528149319288462

`eq[and(2, A000041(n)), A040051(n)]`
-/

namespace A237278.P12762528149319288462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 2 (A000041 n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040051 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A237278.P12762528149319288462

/-! ## A237278.P10576978600662583868

`lt[lcm(4, A000041(n)), A000041(n+1)]`
-/

namespace A237278.P10576978600662583868
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 4 (A000041 n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A237278.P10576978600662583868

/-!
# A237279: Numbers k such that A000041(k) == 1 (mod 4).

The programs for A237279, there is no canonical definition to state claims against.
-/

/-! ## A237279.P2230255424871942275

`eq[1, A121062(n+1)]+1`
-/

namespace A237279.P2230255424871942275
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121062 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A237279.P2230255424871942275

/-! ## A237279.P16520825281158674368

`eq[1, and(3, A000025(n+1))]+1`
-/

namespace A237279.P16520825281158674368
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (A000025 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A237279.P16520825281158674368

/-! ## A237279.P11029393587993301245

`eq[A054977(n), A121062(n)]`
-/

namespace A237279.P11029393587993301245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121062 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A237279.P11029393587993301245

/-! ## A237279.P12843818829124587597

`eq[A057427(n), A121062(n)]`
-/

namespace A237279.P12843818829124587597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121062 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A237279.P12843818829124587597

/-! ## A237279.P8516661447910820563

`eq[A121062(n), A158388(n)]`
-/

namespace A237279.P8516661447910820563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121062 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158388 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A237279.P8516661447910820563

/-! ## A237279.P10208274253659321909

`eq[1, A000041(n+1)%4]+1`
-/

namespace A237279.P10208274253659321909
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000041 (n + 1)) 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A237279.P10208274253659321909

/-! ## A237279.P8636042913796990532

`eq[1, and(3, A000094(n+1)+n)]`
-/

namespace A237279.P8636042913796990532
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (A000094 (n + 1) + (n : ℤ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A237279.P8636042913796990532

/-! ## A237279.P7909069425769267904

`eq[A000065(n)%4, A000007(n)]`
-/

namespace A237279.P7909069425769267904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000065 n) 4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A237279.P7909069425769267904

/-! ## A237279.P17029428312779517098

`eq[and(3, A000041(n)), A019431(2*n)]`
-/

namespace A237279.P17029428312779517098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (A000041 n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019431 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A237279.P17029428312779517098

/-! ## A237279.P9858269722906833926

`eq[3, A183011(n)%4]`
-/

namespace A237279.P9858269722906833926
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A183011 n) 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A237279.P9858269722906833926

/-!
# A237280: Numbers k such that A000041(k) == 2 (mod 4).

The programs for A237280, there is no canonical definition to state claims against.
-/

/-! ## A237280.P10131121039742016698

`eq[1, A278478(n)]`
-/

namespace A237280.P10131121039742016698
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278478 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A237280.P10131121039742016698

/-! ## A237280.P8430968031751368131

`eq[2, A069935(n)]`
-/

namespace A237280.P8430968031751368131
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069935 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A237280.P8430968031751368131

/-! ## A237280.P7934969094116587792

`eq[2, A121062(n)]`
-/

namespace A237280.P7934969094116587792
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121062 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A237280.P7934969094116587792

/-! ## A237280.P11400778892953055851

`lt[A003106(A278478(n)²), 1]`
-/

namespace A237280.P11400778892953055851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003106 (A278478 n ^ 2).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A237280.P11400778892953055851

/-! ## A237280.P7958935304105484938

`lt[A003106(A278478(n)), A057427(n)]`
-/

namespace A237280.P7958935304105484938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003106 (A278478 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A237280.P7958935304105484938

/-! ## A237280.P10562128962917263437

`lt[A000065(A278478(n)²), A278478(n)]`
-/

namespace A237280.P10562128962917263437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000065 (A278478 n ^ 2).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278478 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A237280.P10562128962917263437

/-! ## A237280.P2526978553611302126

`eq[1, val(A000041(n), 2)]`
-/

namespace A237280.P2526978553611302126
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A000041 n).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A237280.P2526978553611302126

/-! ## A237280.P13061186045814663545

`eq[2, A000041(n+1)%4]+1`
-/

namespace A237280.P13061186045814663545
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000041 (n + 1)) 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A237280.P13061186045814663545

/-! ## A237280.P12877257187480461822

`eq[2, A000010(-xor(-A000041(n), A000041(n)))]`
-/

namespace A237280.P12877257187480461822
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (-Int.xor (-A000041 n) (A000041 n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A237280.P12877257187480461822

/-! ## A237280.P9850519789465541435

`eq[2, val(A139582(n), 2)]`
-/

namespace A237280.P9850519789465541435
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A139582 n).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A237280.P9850519789465541435

/-! ## A237280.P2355751587270380095

`eq[1, val(A299473(n), 2)]`
-/

namespace A237280.P2355751587270380095
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A299473 n).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A237280.P2355751587270380095

/-! ## A237280.P13367466529780057300

`eq[1, val(A035363(2*n), 2)]`
-/

namespace A237280.P13367466529780057300
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A035363 (2 * n)).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A237280.P13367466529780057300

/-!
# A237281: Numbers k such that A000041(k) == 3 (mod 4).

The programs for A237281, there is no canonical definition to state claims against.
-/

/-! ## A237281.P2060272995433598077

`eq[3, A121062(n)]`
-/

namespace A237281.P2060272995433598077
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121062 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A237281.P2060272995433598077

/-! ## A237281.P8394483932169529561

`eq[2, A000065(n)%4]`
-/

namespace A237281.P8394483932169529561
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000065 n) 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A237281.P8394483932169529561

/-! ## A237281.P16030581836893068093

`lt[2, A000041(n)%4]`
-/

namespace A237281.P16030581836893068093
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000041 n) 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A237281.P16030581836893068093

/-! ## A237281.P2435079184362104071

`lt[2, ∑[A002865(n)]%4]`
-/

namespace A237281.P2435079184362104071
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f3 j) 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A237281.P2435079184362104071

/-! ## A237281.P9524629003656309159

`lt[2, and(3, A000041(n+1))]+1`
-/

namespace A237281.P9524629003656309159
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (A000041 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A237281.P9524629003656309159

/-! ## A237281.P1163680402686380822

`eq[3, and(3, A000041(n%(n+1)))]`
-/

namespace A237281.P1163680402686380822
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (A000041 (n % (n + 1)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A237281.P1163680402686380822

/-! ## A237281.P31582419839354097

`eq[1, A183011(n)%4]`
-/

namespace A237281.P31582419839354097
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A183011 n) 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A237281.P31582419839354097

/-! ## A237281.P436646861900986984

`lt[2, record[A035377(n+1)]%4]`
-/

namespace A237281.P436646861900986984
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035377 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)) 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A237281.P436646861900986984

/-! ## A237281.P16232700013243054578

`eq[2, gcd(A000065(n), A011782(n))]`
-/

namespace A237281.P16232700013243054578
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000065 n) (A011782 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A237281.P16232700013243054578

/-!
# A237282: The sum of the totatives of n is a perfect cube.

The programs for A237282, there is no canonical definition to state claims against.
-/

/-! ## A237282.P15575202332017173480

`A000005(A179494(n))*A238616(n+1)`
-/

namespace A237282.P15575202332017173480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A179494 n).toNat * A238616 (n + 1)

end

end A237282.P15575202332017173480

/-! ## A237282.P15898940790982987849

`A000005(A179494(n))*A359754(n+1)`
-/

namespace A237282.P15898940790982987849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A179494 n).toNat * A359754 (n + 1)

end

end A237282.P15898940790982987849

/-!
# A237283: Primes p with prime(prime(p)) + 2 also prime.

The programs for A237283, the canonical program `A237283.P6867739282526891379` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A237283 has offset 1).

The definition of A237283 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 934 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A237283.P6867739282526891379

`p?[A096477(n+1)]`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A237283

/-- `p?[A096477(n+1)]` -/
def P6867739282526891379.Spec : Prop :=
  ∀ n, P6867739282526891379.a n = A237283 (n + 1)

theorem P6867739282526891379.correct : P6867739282526891379.Spec := by
  intro n
  simp only [A237283, Nat.add_sub_cancel]

end A237283

/-! ## A237283.P3871517477441274102

`∩[A000040(n+1), A096477(n+1)]`
-/

namespace A237283.P3871517477441274102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096477 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A237283.P3871517477441274102

namespace A237283

/-- `∩[A000040(n+1), A096477(n+1)]` -/
def P3871517477441274102.Spec : Prop :=
  ∀ n, (P3871517477441274102.a n : ℤ) = A237283 (n + 1)

end A237283

/-! ## A237283.P16763860772479667754

`∩[A045319(n+1), A096477(n+1)]`
-/

namespace A237283.P16763860772479667754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096477 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A237283.P16763860772479667754

namespace A237283

/-- `∩[A045319(n+1), A096477(n+1)]` -/
def P16763860772479667754.Spec : Prop :=
  ∀ n, (P16763860772479667754.a n : ℤ) = A237283 (n + 1)

end A237283

/-! ## A237283.P12459364095720184320

`∩[A096477(n+1), A106118(n+1)]`
-/

namespace A237283.P12459364095720184320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096477 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106118 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A237283.P12459364095720184320

namespace A237283

/-- `∩[A096477(n+1), A106118(n+1)]` -/
def P12459364095720184320.Spec : Prop :=
  ∀ n, (P12459364095720184320.a n : ℤ) = A237283 (n + 1)

end A237283

/-! ## A237283.P851127701436897727

`∩[A096477(n+1), A182140(n+1)]`
-/

namespace A237283.P851127701436897727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096477 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182140 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A237283.P851127701436897727

namespace A237283

/-- `∩[A096477(n+1), A182140(n+1)]` -/
def P851127701436897727.Spec : Prop :=
  ∀ n, (P851127701436897727.a n : ℤ) = A237283 (n + 1)

end A237283

/-! ## A237283.P3153483130867582834

`∩[A096477(n+1), A182986(n+1)]`
-/

namespace A237283.P3153483130867582834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096477 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A237283.P3153483130867582834

namespace A237283

/-- `∩[A096477(n+1), A182986(n+1)]` -/
def P3153483130867582834.Spec : Prop :=
  ∀ n, (P3153483130867582834.a n : ℤ) = A237283 (n + 1)

end A237283

/-! ## A237283.P4136359269514742085

`record[A006530(A096477(n+2))]`
-/

namespace A237283.P4136359269514742085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A096477 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237283.P4136359269514742085

namespace A237283

/-- `record[A006530(A096477(n+2))]` -/
def P4136359269514742085.Spec : Prop :=
  ∀ n, P4136359269514742085.a n = A237283 (n + 1)

end A237283

/-! ## A237283.P10312480159463833098

`filter[A096477(n+1), A010051(#)]`
-/

namespace A237283.P10312480159463833098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096477 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A237283.P10312480159463833098

namespace A237283

/-- `filter[A096477(n+1), A010051(#)]` -/
def P10312480159463833098.Spec : Prop :=
  ∀ n, P10312480159463833098.a n = A237283 (n + 1)

end A237283

/-! ## A237283.P3317411597044612646

`filter[A096477(n+2), A080339(#)]`
-/

namespace A237283.P3317411597044612646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096477 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A237283.P3317411597044612646

namespace A237283

/-- `filter[A096477(n+2), A080339(#)]` -/
def P3317411597044612646.Spec : Prop :=
  ∀ n, P3317411597044612646.a n = A237283 (n + 1)

end A237283

/-! ## A237283.P14039545581021047127

`p?[A000720(A096478(n+1))]`
-/

namespace A237283.P14039545581021047127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A096478 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A237283.P14039545581021047127

namespace A237283

/-- `p?[A000720(A096478(n+1))]` -/
def P14039545581021047127.Spec : Prop :=
  ∀ n, P14039545581021047127.a n = A237283 (n + 1)

end A237283

/-! ## A237283.P996126358814386753

`p?[A000720(p?[A029707(n+1)])]`
-/

namespace A237283.P996126358814386753
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029707 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A237283.P996126358814386753

namespace A237283

/-- `p?[A000720(p?[A029707(n+1)])]` -/
def P996126358814386753.Spec : Prop :=
  ∀ n, P996126358814386753.a n = A237283 (n + 1)

end A237283

/-! ## A237283.P9401856999231473343

`∩[A096477(n+1), A230606(n+1)]`
-/

namespace A237283.P9401856999231473343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096477 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230606 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A237283.P9401856999231473343

namespace A237283

/-- `∩[A096477(n+1), A230606(n+1)]` -/
def P9401856999231473343.Spec : Prop :=
  ∀ n, (P9401856999231473343.a n : ℤ) = A237283 (n + 1)

end A237283

/-! ## A237283.P9448159714869554997

`∩[A096477(n+1), A240960(n+1)]`
-/

namespace A237283.P9448159714869554997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096477 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240960 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A237283.P9448159714869554997

namespace A237283

/-- `∩[A096477(n+1), A240960(n+1)]` -/
def P9448159714869554997.Spec : Prop :=
  ∀ n, (P9448159714869554997.a n : ℤ) = A237283 (n + 1)

end A237283

/-!
# A237284: Number of ordered ways to write 2*n = p + q with p, q and A000720(p) all prime.

The programs for A237284, there is no canonical definition to state claims against.
-/

/-! ## A237284.P18431704571279287047

`A294185(A085079(n+1)^A124148(n+1))`
-/

namespace A237284.P18431704571279287047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294185 (SequenceMachineLib.roundAway ((A085079 (n + 1) : ℚ) ^ (A124148 (n + 1) : ℤ))).toNat

end

end A237284.P18431704571279287047

/-! ## A237284.P1184710320865081294

`A294185(A249816(n+1)^A124148(n+1))`
-/

namespace A237284.P1184710320865081294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294185 (SequenceMachineLib.roundAway ((A249816 (n + 1) : ℚ) ^ (A124148 (n + 1) : ℤ))).toNat

end

end A237284.P1184710320865081294

/-! ## A237284.P4041124129907126344

`gcd(A185238(A255509(n+1)), A294185(n+1))`
-/

namespace A237284.P4041124129907126344
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A185238 (A255509 (n + 1)).toNat) (A294185 (n + 1))

end

end A237284.P4041124129907126344

/-! ## A237284.P14424080614373276568

`xor(A185238(A255509(n+1)), A294186(n+2))`
-/

namespace A237284.P14424080614373276568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A185238 (A255509 (n + 1)).toNat) (A294186 (n + 2))

end

end A237284.P14424080614373276568

/-! ## A237284.P2684222178213001600

`A294185(n+1)/A073811(A212390(n))`
-/

namespace A237284.P2684222178213001600
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A294185 (n + 1) : ℚ) / (A073811 (A212390 n).toNat : ℚ)

end

end A237284.P2684222178213001600

/-!
# A237285: Lexicographically earliest sequence of primes such that a(n)*n / sum(i=1..n, a(n) ) is strictly increasing.

The programs for A237285, there is no canonical definition to state claims against.
-/

/-! ## A237285.P7477619379232908671

`A230775(A246148(n+1))`
-/

namespace A237285.P7477619379232908671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230775 (A246148 (n + 1)).toNat

end

end A237285.P7477619379232908671

/-! ## A237285.P1889365716572306007

`A230775(A256010(n+1))`
-/

namespace A237285.P1889365716572306007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230775 (A256010 (n + 1)).toNat

end

end A237285.P1889365716572306007

/-! ## A237285.P16471574876316679059

`A230775(A158144(n+2))`
-/

namespace A237285.P16471574876316679059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230775 (A158144 (n + 2)).toNat

end

end A237285.P16471574876316679059

/-!
# A237286: Numbers m such that sigma(m) - m is a perfect number (A000396).

The programs for A237286, there is no canonical definition to state claims against.
-/

/-! ## A237286.P12100647150643842718

`record[A382504(A382501(n+5))]`
-/

namespace A237286.P12100647150643842718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382504 (A382501 (n + 5)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237286.P12100647150643842718

/-! ## A237286.P9752653692959533153

`A382504(comp[A004403(n)]+1)`
-/

namespace A237286.P9752653692959533153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004403 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382504 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A237286.P9752653692959533153

/-!
# A237287: Numbers that are not practical: positive integers n such that there exists at least one number k <= sigma(n) that is not a sum of distinct divisors of n.

The programs for A237287, there is no canonical definition to state claims against.
-/

/-! ## A237287.P4787870595097674544

`lt[A322860(n+1), 1]+1`
-/

namespace A237287.P4787870595097674544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322860 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A237287.P4787870595097674544

/-! ## A237287.P5155259748118155795

`comp[A005153(n+1)-1]+1`
-/

namespace A237287.P5155259748118155795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005153 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A237287.P5155259748118155795

/-! ## A237287.P14326614805247827982

`a(n-1)+A322860(a(n-1)+1)+1` with `a(0)=3`
-/

namespace A237287.P14326614805247827982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  a (n - 1) + (A322860 (a (n - 1) + 1).toNat + 1)

end

end A237287.P14326614805247827982

/-! ## A237287.P1486361999357007732

`lt[1, A210445(n+1)]+1`
-/

namespace A237287.P1486361999357007732
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210445 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A237287.P1486361999357007732

/-! ## A237287.P6283040383447480703

`lt[A030057(n+1), n+1]+1`
-/

namespace A237287.P6283040383447480703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030057 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A237287.P6283040383447480703

/-! ## A237287.P14959845544709053076

`lt[A327832(n+1), A014085(n)]+1`
-/

namespace A237287.P14959845544709053076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327832 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014085 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A237287.P14959845544709053076

/-! ## A237287.P12545703802847908411

`lt[A000203(A327832(abs(1-n)+1)), n-1]`
-/

namespace A237287.P12545703802847908411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A327832 (|1 - (n : ℤ)| + 1).toNat).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A237287.P12545703802847908411

/-! ## A237287.P18030841054177806279

`eq[char[A005153(n+2)], A339579(2*n+1)]`
-/

namespace A237287.P18030841054177806279
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005153 (n + 2)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339579 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A237287.P18030841054177806279

/-! ## A237287.P6359527340884644194

`eq[char[A327832(n+1)], A339579(2*n+1)]`
-/

namespace A237287.P6359527340884644194
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327832 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339579 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A237287.P6359527340884644194

/-! ## A237287.P17338660701931796529

`eq[char[A275121(n+2)], A339579(2*n+1)]`
-/

namespace A237287.P17338660701931796529
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275121 (n + 2)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339579 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A237287.P17338660701931796529

/-!
# A237288: Lexicographically earliest sequence of noncomposite numbers such that a(n)*n / sum(i=1..n, a(n) ) is strictly increasing.

The programs for A237288, there is no canonical definition to state claims against.
-/

/-! ## A237288.P2665456273778431210

`A076272(∑[A181819(A011782(n))])`
-/

namespace A237288.P2665456273778431210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181819 (A011782 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076272 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A237288.P2665456273778431210

/-! ## A237288.P12174816519953140760

`A076272(A175965(n+1))*A093178(A000079(n))`
-/

namespace A237288.P12174816519953140760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076272 (A175965 (n + 1)).toNat * A093178 (A000079 n).toNat

end

end A237288.P12174816519953140760

/-! ## A237288.P6311816773909395459

`A076272(A175965(n+1))%A008864(A011782(n))`
-/

namespace A237288.P6311816773909395459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A076272 (A175965 (n + 1)).toNat) (A008864 (A011782 n).toNat)

end

end A237288.P6311816773909395459

/-! ## A237288.P2546081537787674491

`A076272(A175965(n+1))+A008683(A005010(n))`
-/

namespace A237288.P2546081537787674491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076272 (A175965 (n + 1)).toNat + A008683 (A005010 n).toNat

end

end A237288.P2546081537787674491

/-! ## A237288.P18253278608758493397

`A056813(A127811(n+1))`
-/

namespace A237288.P18253278608758493397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056813 (A127811 (n + 1)).toNat

end

end A237288.P18253278608758493397

/-!
# A237289: Sum of positive numbers k <= sigma(n) that are not a sum of any subset of distinct divisors of n.

The programs for A237289, there is no canonical definition to state claims against.
-/

/-! ## A237289.P6473027782075853739

`A184387(n+1)-A237290(n+1)`
-/

namespace A237289.P6473027782075853739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184387 (n + 1) - A237290 (n + 1)

end

end A237289.P6473027782075853739

/-! ## A237289.P11888458750183421068

`A000203(n+1)/2*A378450(n+1)`
-/

namespace A237289.P11888458750183421068
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) : ℚ) / 2 * (A378450 (n + 1) : ℚ)

end

end A237289.P11888458750183421068

/-! ## A237289.P17643518882738256313

`C(A088580(n+1), 2)-A237290(n+1)`
-/

namespace A237289.P17643518882738256313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (A088580 (n + 1)).toNat 2 : ℤ) - A237290 (n + 1)

end

end A237289.P17643518882738256313

/-! ## A237289.P7180805289469649644

`C(A000203(n+1)+1, 2)-A237290(n+1)`
-/

namespace A237289.P7180805289469649644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (A000203 (n + 1) + 1).toNat 2 : ℤ) - A237290 (n + 1)

end

end A237289.P7180805289469649644

/-! ## A237289.P7068902506003728143

`A000217(∑{d}[n+1, #])-A237290(n+1)`
-/

namespace A237289.P7068902506003728143
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (∑ d ∈ Nat.divisors (f1 n), d) - A237290 (n + 1)

end

end A237289.P7068902506003728143

/-! ## A237289.P17655073014513733020

`A000217(A000203(n+1))-A237290(n+1)`
-/

namespace A237289.P17655073014513733020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A000203 (n + 1)).toNat - A237290 (n + 1)

end

end A237289.P17655073014513733020

/-! ## A237289.P12837534430454059880

`A000217(A039653(n+1)+1)-A237290(n+1)`
-/

namespace A237289.P12837534430454059880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A039653 (n + 1) + 1).toNat - A237290 (n + 1)

end

end A237289.P12837534430454059880

/-! ## A237289.P11074105695140922718

`A161680(A088580(n+1))-A237290(n+1)`
-/

namespace A237289.P11074105695140922718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (A088580 (n + 1)).toNat - A237290 (n + 1)

end

end A237289.P11074105695140922718

/-!
# A237290: Sum of positive numbers k <= sigma(n) that are a sum of any subset of distinct divisors of n.

The programs for A237290, there is no canonical definition to state claims against.
-/

/-! ## A237290.P14225964031473980098

`A184387(n+1)-A237289(n+1)`
-/

namespace A237290.P14225964031473980098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184387 (n + 1) - A237289 (n + 1)

end

end A237290.P14225964031473980098

/-! ## A237290.P17770050920457376766

`A000203(n+1)*(A119347(n+1)+1)/2`
-/

namespace A237290.P17770050920457376766
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) * (A119347 (n + 1) + 1) : ℚ) / 2

end

end A237290.P17770050920457376766

/-! ## A237290.P12837325470805581291

`A000203(n+1)/2*A308605(n+1)`
-/

namespace A237290.P12837325470805581291
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) : ℚ) / 2 * (A308605 (n + 1) : ℚ)

end

end A237290.P12837325470805581291

/-! ## A237290.P606776588188498323

`A245092(Δ[n²])*A308605(n+1)/2`
-/

namespace A237290.P606776588188498323
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A245092 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat * A308605 (n + 1) : ℚ) / 2

end

end A237290.P606776588188498323

/-! ## A237290.P16611201180262558201

`C(A000203(n+1)+1, 2)-A237289(n+1)`
-/

namespace A237290.P16611201180262558201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (A000203 (n + 1) + 1).toNat 2 : ℤ) - A237289 (n + 1)

end

end A237290.P16611201180262558201

/-! ## A237290.P1205960374621843828

`floor(A245092(2*n+1)*A308605(n+1)/2)`
-/

namespace A237290.P1205960374621843828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A245092 (2 * n + 1) * A308605 (n + 1) : ℚ) / 2⌋

end

end A237290.P1205960374621843828

/-! ## A237290.P18160399690994519488

`A000217(∑{d}[n+1, #])-A237289(n+1)`
-/

namespace A237290.P18160399690994519488
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (∑ d ∈ Nat.divisors (f1 n), d) - A237289 (n + 1)

end

end A237290.P18160399690994519488

/-! ## A237290.P7809511225925357505

`A000217(A000203(n+1))-A237289(n+1)`
-/

namespace A237290.P7809511225925357505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A000203 (n + 1)).toNat - A237289 (n + 1)

end

end A237290.P7809511225925357505

/-! ## A237290.P17690040705298050828

`A302032(A000203(n+1)*A308605(n+1))`
-/

namespace A237290.P17690040705298050828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302032 (A000203 (n + 1) * A308605 (n + 1)).toNat

end

end A237290.P17690040705298050828

/-! ## A237290.P2842961437093876586

`A302032(A274536(n+1)/6*A308605(n+1))`
-/

namespace A237290.P2842961437093876586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302032 (SequenceMachineLib.roundAway ((A274536 (n + 1) : ℚ) / 6 * (A308605 (n + 1) : ℚ))).toNat

end

end A237290.P2842961437093876586

/-!
# A237292: a(n) = A002326(2n(n+1)) / A002326(n).

The programs for A237292, there is no canonical definition to state claims against.
-/

/-! ## A237292.P13693501157607776967

`(2*n+1)/gcd(A165781(n), 2*n+1)`
-/

namespace A237292.P13693501157607776967
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℚ) / (Int.gcd (A165781 n) (2 * n + 1 : ℤ) : ℚ)

end

end A237292.P13693501157607776967

/-! ## A237292.P14105217351294319298

`A002326(2*n*(n+1))/A002326(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A237292.P14105217351294319298
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002326 (2 * n * (n + 1)) : ℚ) / (A002326 n : ℚ)

end

end A237292.P14105217351294319298

/-! ## A237292.P17586683371384330144

`A295126((2*n+1)*A037226(n))`
-/

namespace A237292.P17586683371384330144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295126 ((2 * n + 1 : ℤ) * A037226 n).toNat

end

end A237292.P17586683371384330144

/-! ## A237292.P1691221217810814147

`A003573(n²+n)/A053447(n)`
-/

namespace A237292.P1691221217810814147
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003573 (n ^ 2 + n) : ℚ) / (A053447 n : ℚ)

end

end A237292.P1691221217810814147

/-! ## A237292.P13633150108227011897

`A003558(∑[4*n])/A003558(n)`
-/

namespace A237292.P13633150108227011897
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003558 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / (A003558 n : ℚ)

end

end A237292.P13633150108227011897

/-! ## A237292.P15474472913458155161

`A055388(∑[4*n]+1)/A055388(n+1)`
-/

namespace A237292.P15474472913458155161
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055388 (∑ j ∈ Finset.range (n + 1), f1 j + 1) : ℚ) / (A055388 (n + 1) : ℚ)

end

end A237292.P15474472913458155161

/-! ## A237292.P3960993904190057255

`A302141(A046092(n))/A302141(n)`
-/

namespace A237292.P3960993904190057255
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A302141 (A046092 n).toNat : ℚ) / (A302141 n : ℚ)

end

end A237292.P3960993904190057255

/-! ## A237292.P3423318457049720548

`A336843(A064216(n+1)²)/A336843(A064216(n+1))`
-/

namespace A237292.P3423318457049720548
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A336843 (A064216 (n + 1) ^ 2).toNat : ℚ) / (A336843 (A064216 (n + 1)).toNat : ℚ)

end

end A237292.P3423318457049720548

/-!
# A237293: Number of (n+1)X(1+1) 0..3 arrays with the maximum plus the minimum minus the upper median minus the lower median of every 2X2 subblock equal.

The programs for A237293, there is no canonical definition to state claims against.
-/

/-! ## A237293.P8567701728330627651

`A237299(∑[n]+1)`
-/

namespace A237293.P8567701728330627651
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237299 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A237293.P8567701728330627651

/-! ## A237293.P11940322570179438946

`lcm(2, A237299(A000124(n)))`
-/

namespace A237293.P11940322570179438946
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A237299 (A000124 n).toNat)

end

end A237293.P11940322570179438946

/-! ## A237293.P11709049490544743736

`record[gcd(A002262(n), A237299(n+1))]`
-/

namespace A237293.P11709049490544743736
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A237299 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237293.P11709049490544743736

/-! ## A237293.P2372814376825689957

`record[A237299(n+1)/A296974(n+1)]`
-/

namespace A237293.P2372814376825689957
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A237299 (n + 1) : ℚ) / (A296974 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237293.P2372814376825689957

/-! ## A237293.P7166609692815470144

`lcm(4, A237299(C(n+2, 2)))`
-/

namespace A237293.P7166609692815470144
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 4 (A237299 (Nat.choose (n + 2) 2))

end

end A237293.P7166609692815470144

/-!
# A237294: Number of (n+1)X(2+1) 0..3 arrays with the maximum plus the minimum minus the upper median minus the lower median of every 2X2 subblock equal.

The programs for A237294, there is no canonical definition to state claims against.
-/

/-! ## A237294.P15670394668802853098

`A237299(∑[n+1]+2)`
-/

namespace A237294.P15670394668802853098
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237299 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A237294.P15670394668802853098

/-! ## A237294.P14143904632338933931

`record[gcd(A002262(n), A237299(n+2))]`
-/

namespace A237294.P14143904632338933931
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A237299 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237294.P14143904632338933931

/-! ## A237294.P1485292488036559916

`record[gcd(A025581(n), A237299(n+3))]`
-/

namespace A237294.P1485292488036559916
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A025581 n) (A237299 (n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237294.P1485292488036559916

/-! ## A237294.P12853261758761082183

`record[A237299(n+2)/A296974(n+3)]`
-/

namespace A237294.P12853261758761082183
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A237299 (n + 2) : ℚ) / (A296974 (n + 3) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237294.P12853261758761082183

/-! ## A237294.P14926459059537444354

`record[root(A237299(n+2), A094587(n+2))]`
-/

namespace A237294.P14926459059537444354
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A237299 (n + 2) : ℝ) ^ (1 / (A094587 (n + 2) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237294.P14926459059537444354

/-!
# A237295: Number of (n+1) X (3+1) 0..3 arrays with the maximum plus the minimum minus the upper median minus the lower median of every 2 X 2 subblock equal.

The programs for A237295, there is no canonical definition to state claims against.
-/

/-! ## A237295.P10968560733631711491

`A237299(∑[n+2]+4)`
-/

namespace A237295.P10968560733631711491
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237299 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A237295.P10968560733631711491

/-! ## A237295.P2393569054914006750

`lcm(2, A237299(A167614(n+1)))`
-/

namespace A237295.P2393569054914006750
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A237299 (A167614 (n + 1)).toNat)

end

end A237295.P2393569054914006750

/-! ## A237295.P15457655786608704128

`record[gcd(A025581(n), A237299(n+4))]`
-/

namespace A237295.P15457655786608704128
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A025581 n) (A237299 (n + 4))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237295.P15457655786608704128

/-! ## A237295.P2130324378998343680

`A237299(A167614(n+1))+A184955(n)`
-/

namespace A237295.P2130324378998343680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237299 (A167614 (n + 1)).toNat + A184955 n

end

end A237295.P2130324378998343680

/-! ## A237295.P11530342730299572951

`A152830(n)*A237299(A167614(n+1))`
-/

namespace A237295.P11530342730299572951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152830 n * A237299 (A167614 (n + 1)).toNat

end

end A237295.P11530342730299572951

/-!
# A237296: Number of (n+1)X(4+1) 0..3 arrays with the maximum plus the minimum minus the upper median minus the lower median of every 2X2 subblock equal.

The programs for A237296, there is no canonical definition to state claims against.
-/

/-! ## A237296.P13058259865677211134

`A237299(A374004(n+1))`
-/

namespace A237296.P13058259865677211134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237299 (A374004 (n + 1)).toNat

end

end A237296.P13058259865677211134

/-! ## A237296.P8888932871850088450

`A237299(A052905(n)+9)`
-/

namespace A237296.P8888932871850088450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237299 (A052905 n + 9).toNat

end

end A237296.P8888932871850088450

/-! ## A237296.P5384439856380678285

`A237299(A055999(n)+10)`
-/

namespace A237296.P5384439856380678285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237299 (A055999 n + 10).toNat

end

end A237296.P5384439856380678285

/-! ## A237296.P7544138163399632804

`A237299(A167614(n+2)+1)`
-/

namespace A237296.P7544138163399632804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237299 (A167614 (n + 2) + 1).toNat

end

end A237296.P7544138163399632804

/-! ## A237296.P11254888524667518646

`A237299(A112355(n+1)+4)`
-/

namespace A237296.P11254888524667518646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237299 (A112355 (n + 1) + 4).toNat

end

end A237296.P11254888524667518646

/-!
# A237297: Number of (n+1)X(5+1) 0..3 arrays with the maximum plus the minimum minus the upper median minus the lower median of every 2X2 subblock equal.

The programs for A237297, there is no canonical definition to state claims against.
-/

/-! ## A237297.P4538991806118639181

`A237299(A374005(n+1))`
-/

namespace A237297.P4538991806118639181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237299 (A374005 (n + 1)).toNat

end

end A237297.P4538991806118639181

/-! ## A237297.P11858909709567503165

`A237299(A056000(n)+15)`
-/

namespace A237297.P11858909709567503165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237299 (A056000 n + 15).toNat

end

end A237297.P11858909709567503165

/-! ## A237297.P11499435514493842548

`A237299(eq[4, A193592(n)])`
-/

namespace A237297.P11499435514493842548
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237299 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A237297.P11499435514493842548

/-! ## A237297.P3121392908787863323

`A237299(Δ[A023545(n+1)])`
-/

namespace A237297.P3121392908787863323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237299 (f1 (n + 1) - f1 n).toNat

end

end A237297.P3121392908787863323

/-! ## A237297.P6321903072923893475

`A237299(eq[8, A057728(n+1)])`
-/

namespace A237297.P6321903072923893475
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057728 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237299 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A237297.P6321903072923893475

/-!
# A237298: Number of (n+1)X(6+1) 0..3 arrays with the maximum plus the minimum minus the upper median minus the lower median of every 2X2 subblock equal.

The programs for A237298, there is no canonical definition to state claims against.
-/

/-! ## A237298.P6659382246482758330

`A237299(A374007(n+1))`
-/

namespace A237298.P6659382246482758330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237299 (A374007 (n + 1)).toNat

end

end A237298.P6659382246482758330

/-! ## A237298.P11666061623962017626

`A237299(A052905(n+3))`
-/

namespace A237298.P11666061623962017626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237299 (A052905 (n + 3)).toNat

end

end A237298.P11666061623962017626

/-! ## A237298.P13165628758205207975

`A237299(eq[3, A219347(n)])`
-/

namespace A237298.P13165628758205207975
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237299 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A237298.P13165628758205207975

/-! ## A237298.P10061258799197417145

`A237299(eq[5, A193592(n)])`
-/

namespace A237298.P10061258799197417145
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237299 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A237298.P10061258799197417145

/-! ## A237298.P10757490319696565425

`A237299(Δ[A023545(n+2)]-1)`
-/

namespace A237298.P10757490319696565425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237299 (f1 (n + 1) - f1 n - 1).toNat

end

end A237298.P10757490319696565425

