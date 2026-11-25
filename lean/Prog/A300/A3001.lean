import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C017
import Seq.B000.C019
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C043
import Seq.B000.C045
import Seq.B000.C047
import Seq.B000.C048
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C010
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
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
import Seq.Opaque.C024

/-!
# A300100: Expansion of sqrt(agm(1, 1 - 8*x)) in powers of x.

The programs for A300100, there is no canonical definition to state claims against.
-/

/-! ## A300100.P6283102496274748005

`A226177(n+1)-A002264(A052688(n+1))`
-/

namespace A300100.P6283102496274748005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226177 (n + 1) - A002264 (A052688 (n + 1)).toNat

end

end A300100.P6283102496274748005

/-!
# A300101: a(n) = (pp-1)/x, where pp = A001567(n) and x = ord(2,pp), the smallest positive integer such that 2^x == 1 (mod pp).

The programs for A300101, there is no canonical definition to state claims against.
-/

/-! ## A300101.P2722181868534427360

`(A001567(n+1)-1)/A306413(n+1)`
-/

namespace A300101.P2722181868534427360
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001567 (n + 1) - 1 : ℚ) / (A306413 (n + 1) : ℚ)

end

end A300101.P2722181868534427360

/-! ## A300101.P8509640270336993201

`floor(A001567(n+1)/A306413(n+1))`
-/

namespace A300101.P8509640270336993201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A001567 (n + 1) : ℚ) / (A306413 (n + 1) : ℚ)⌋

end

end A300101.P8509640270336993201

/-! ## A300101.P12222584092055679444

`round(A001567(A000027(n+1))/A306413(n+1))`
-/

namespace A300101.P12222584092055679444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A001567 (A000027 (n + 1)).toNat : ℚ) / (A306413 (n + 1) : ℚ))

end

end A300101.P12222584092055679444

/-! ## A300101.P14256713351437435460

`(∪[A050217(n+1), A080747(n+1)]-1)/A306413(n+1)`
-/

namespace A300101.P14256713351437435460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050217 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080747 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1 : ℚ) / (A306413 (n + 1) : ℚ)

end

end A300101.P14256713351437435460

/-! ## A300101.P8817039123842793139

`(∪[A066488(n+1), A080747(n+1)]-1)/A306413(n+1)`
-/

namespace A300101.P8817039123842793139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066488 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080747 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1 : ℚ) / (A306413 (n + 1) : ℚ)

end

end A300101.P8817039123842793139

/-! ## A300101.P12003087375758344622

`(∩[A020136(n+1), A122785(n+1)]-1)/A306413(n+1)`
-/

namespace A300101.P12003087375758344622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020136 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122785 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1 : ℚ) / (A306413 (n + 1) : ℚ)

end

end A300101.P12003087375758344622

/-! ## A300101.P7314502166678605441

`(∩[A020144(n+1), A122785(n+1)]-1)/A306413(n+1)`
-/

namespace A300101.P7314502166678605441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122785 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1 : ℚ) / (A306413 (n + 1) : ℚ)

end

end A300101.P7314502166678605441

/-!
# A300103: Number of n X n 0..1 arrays with every element equal to 1, 2, 3, 5, 6, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A300103, there is no canonical definition to state claims against.
-/

/-! ## A300103.P15532993462533427981

`A300108(∑[4*n]+1)`
-/

namespace A300103.P15532993462533427981
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300108 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A300103.P15532993462533427981

/-! ## A300103.P18056616376453160752

`∑{digits}[n, A300108(A001844(#))]`
-/

namespace A300103.P18056616376453160752
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A300108 (A001844 x).toNat).sum

end

end A300103.P18056616376453160752

/-! ## A300103.P1616311940638846747

`record[A300108(Δ[A235355(n)])]`
-/

namespace A300103.P1616311940638846747
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300108 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A300103.P1616311940638846747

/-! ## A300103.P2015669464694214982

`record[A300108(A330613(n+1))]`
-/

namespace A300103.P2015669464694214982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300108 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A300103.P2015669464694214982

/-!
# A300104: Number of nX4 0..1 arrays with every element equal to 1, 2, 3, 5, 6, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A300104, there is no canonical definition to state claims against.
-/

/-! ## A300104.P11801152015724428550

`A300108(A374004(n+1))`
-/

namespace A300104.P11801152015724428550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300108 (A374004 (n + 1)).toNat

end

end A300104.P11801152015724428550

/-! ## A300104.P4316366587651118576

`A300108(A141214(n+1))`
-/

namespace A300104.P4316366587651118576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300108 (A141214 (n + 1)).toNat

end

end A300104.P4316366587651118576

/-!
# A300105: Number of n X 5 0..1 arrays with every element equal to 1, 2, 3, 5, 6, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A300105, there is no canonical definition to state claims against.
-/

/-! ## A300105.P725730859782441869

`A300108(A374005(n+1))`
-/

namespace A300105.P725730859782441869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300108 (A374005 (n + 1)).toNat

end

end A300105.P725730859782441869

/-!
# A300106: Number of nX6 0..1 arrays with every element equal to 1, 2, 3, 5, 6, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A300106, there is no canonical definition to state claims against.
-/

/-! ## A300106.P16514228717622966061

`A300108(A374007(n+1))`
-/

namespace A300106.P16514228717622966061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300108 (A374007 (n + 1)).toNat

end

end A300106.P16514228717622966061

/-!
# A300107: Number of nX7 0..1 arrays with every element equal to 1, 2, 3, 5, 6, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A300107, there is no canonical definition to state claims against.
-/

/-! ## A300107.P14799557049420184267

`A300108(A374008(n+1))`
-/

namespace A300107.P14799557049420184267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300108 (A374008 (n + 1)).toNat

end

end A300107.P14799557049420184267

/-!
# A300109: Number of n X n 0..1 arrays with every element equal to 1, 2, 4, 5, 6, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A300109, there is no canonical definition to state claims against.
-/

/-! ## A300109.P5985506966267717488

`A300115(∑[4*n]+1)`
-/

namespace A300109.P5985506966267717488
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300115 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A300109.P5985506966267717488

/-! ## A300109.P3377287112272186271

`record[A300115(Δ[A235355(n)])]`
-/

namespace A300109.P3377287112272186271
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300115 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A300109.P3377287112272186271

/-! ## A300109.P6330507885950573273

`record[A300115(A330613(n+1))]`
-/

namespace A300109.P6330507885950573273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300115 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A300109.P6330507885950573273

/-! ## A300109.P17842826665906177530

`record[A300115(Δ[A079824(n+1)])]`
-/

namespace A300109.P17842826665906177530
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079824 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300115 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A300109.P17842826665906177530

/-!
# A300110: Number of nX3 0..1 arrays with every element equal to 1, 2, 4, 5, 6, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A300110, there is no canonical definition to state claims against.
-/

/-! ## A300110.P18398335665691389331

`A300115(∑[n+2]+4)`
-/

namespace A300110.P18398335665691389331
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300115 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A300110.P18398335665691389331

/-! ## A300110.P6950162216755200940

`record[A300115(n+4)^A112295(n)]`
-/

namespace A300110.P6950162216755200940
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A300115 (n + 4) : ℚ) ^ (A112295 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A300110.P6950162216755200940

/-!
# A300111: Number of nX4 0..1 arrays with every element equal to 1, 2, 4, 5, 6, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A300111, there is no canonical definition to state claims against.
-/

/-! ## A300111.P14173701993512136267

`A300115(∑[n+3]+7)`
-/

namespace A300111.P14173701993512136267
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300115 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A300111.P14173701993512136267

/-!
# A300112: Number of nX5 0..1 arrays with every element equal to 1, 2, 4, 5, 6, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A300112, there is no canonical definition to state claims against.
-/

/-! ## A300112.P16587180726000828571

`A300115(∑[n+4]+11)`
-/

namespace A300112.P16587180726000828571
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300115 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A300112.P16587180726000828571

/-!
# A300113: Number of nX6 0..1 arrays with every element equal to 1, 2, 4, 5, 6, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A300113, there is no canonical definition to state claims against.
-/

/-! ## A300113.P9743755965901771044

`A300115(A374007(n+1))`
-/

namespace A300113.P9743755965901771044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300115 (A374007 (n + 1)).toNat

end

end A300113.P9743755965901771044

/-!
# A300114: Number of nX7 0..1 arrays with every element equal to 1, 2, 4, 5, 6, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A300114, there is no canonical definition to state claims against.
-/

/-! ## A300114.P11950666377054311989

`A300115(A374008(n+1))`
-/

namespace A300114.P11950666377054311989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300115 (A374008 (n + 1)).toNat

end

end A300114.P11950666377054311989

/-!
# A300116: a(n) = Sum_{k=0..n} binomial(2k,k)^3 * binomial(2n-2k,n-k) * 2^(4*(n-k)).

The programs for A300116, there is no canonical definition to state claims against.
-/

/-! ## A300116.P4766118930172930165

`∑{#}[n, C(2*#, #)^3*C(2*n-2*#, n-#)*16^(n-#)]`
-/

namespace A300116.P4766118930172930165
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose (2 * k) k ^ 3 * Nat.choose ((2 * n : ℤ) - (2 * k : ℤ)).toNat ((n : ℤ) - (k : ℤ)).toNat : ℚ) * (16 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ)

end

end A300116.P4766118930172930165

/-!
# A300117: Squarefree odd composite numbers n having a prime factor p such that (p-1)|(n-1).

The programs for A300117, there is no canonical definition to state claims against.
-/

/-! ## A300117.P5436416831574526784

`A052410(record[A000463(A306330(n+1))])`
-/

namespace A300117.P5436416831574526784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A306330 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052410 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A300117.P5436416831574526784

/-! ## A300117.P6609865198249699867

`∩[A100660(n+1), A136410(n+1)]`
-/

namespace A300117.P6609865198249699867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100660 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136410 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A300117.P6609865198249699867

/-!
# A300118: Number of skew partitions whose quotient diagram is connected and whose numerator is the integer partition with Heinz number n.

The programs for A300118, there is no canonical definition to state claims against.
-/

/-! ## A300118.P11146596339503128500

`A056239(n+1)+A000070(A325135(n+1))`
-/

namespace A300118.P11146596339503128500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (n + 1) + A000070 (A325135 (n + 1)).toNat

end

end A300118.P11146596339503128500

/-! ## A300118.P9737324022948992327

`A252464(n+1)+A025747(A325135(n+1))`
-/

namespace A300118.P9737324022948992327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252464 (n + 1) + A025747 (A325135 (n + 1)).toNat

end

end A300118.P9737324022948992327

/-! ## A300118.P1552027663570881089

`A325134(1+n)+A000096(A325135(n+1))`
-/

namespace A300118.P1552027663570881089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325134 (1 + n) + A000096 (A325135 (n + 1)).toNat

end

end A300118.P1552027663570881089

/-! ## A300118.P1294626838350947927

`A000070(A325135(n+1))+log2(A248692(n+1))`
-/

namespace A300118.P1294626838350947927
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A000070 (A325135 (n + 1)).toNat : ℝ) + Real.logb 2 (A248692 (n + 1) : ℝ)

end

end A300118.P1294626838350947927

/-! ## A300118.P5437407317745232200

`A252464(n+1)+A000217(A325135(n+1)+1)`
-/

namespace A300118.P5437407317745232200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252464 (n + 1) + A000217 (A325135 (n + 1) + 1).toNat

end

end A300118.P5437407317745232200

/-! ## A300118.P10226287051236469317

`A316436(2*(n+1))+A000217(A325135(n+1))`
-/

namespace A300118.P10226287051236469317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316436 (2 * (n + 1)) + A000217 (A325135 (n + 1)).toNat

end

end A300118.P10226287051236469317

/-! ## A300118.P837019580266485435

`A000070(A325135(n+1))+∑{d}[n+1, A297109(#)]`
-/

namespace A300118.P837019580266485435
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 (A325135 (n + 1)).toNat + ∑ d ∈ Nat.divisors (f1 n), A297109 d

end

end A300118.P837019580266485435

/-! ## A300118.P2205725760115236934

`A318995(A003961(n+1))+A000124(A325135(n+1))`
-/

namespace A300118.P2205725760115236934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318995 (A003961 (n + 1)).toNat + A000124 (A325135 (n + 1)).toNat

end

end A300118.P2205725760115236934

/-! ## A300118.P17809059064333225112

`A318995(A045965(n+1))+A000124(A325135(n+1))`
-/

namespace A300118.P17809059064333225112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318995 (A045965 (n + 1)).toNat + A000124 (A325135 (n + 1)).toNat

end

end A300118.P17809059064333225112

/-! ## A300118.P15796133456022453899

`A001222(n+1)+A318995(n+1)+A000070(A325135(n+1))`
-/

namespace A300118.P15796133456022453899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) + (A318995 (n + 1) + A000070 (A325135 (n + 1)).toNat)

end

end A300118.P15796133456022453899

/-!
# A300119: Square array T(n, k) read by antidiagonals, n > 0 and k > 0: T(n, k) is the value where Collatz sequences starting at n and at k meet.

The programs for A300119, there is no canonical definition to state claims against.
-/

/-! ## A300119.P6467480479684829714

`A094235(ceil(sqrt(A309876(n))))`
-/

namespace A300119.P6467480479684829714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094235 ⌈Real.sqrt (A309876 n : ℝ)⌉.toNat

end

end A300119.P6467480479684829714

/-! ## A300119.P78073544411796141

`A160385(A202549(n+1)+3)`
-/

namespace A300119.P78073544411796141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160385 (A202549 (n + 1) + 3).toNat

end

end A300119.P78073544411796141

/-! ## A300119.P2089932123731021828

`A000120(A003968(A174546(n)))`
-/

namespace A300119.P2089932123731021828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A003968 (A174546 n).toNat).toNat

end

end A300119.P2089932123731021828

/-! ## A300119.P8475666342188917965

`A047999(n)+A001222(A152936(n))`
-/

namespace A300119.P8475666342188917965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047999 n + A001222 (A152936 n).toNat

end

end A300119.P8475666342188917965

/-! ## A300119.P12573145668278651087

`gcd(A300700(n), A326376(n+1))`
-/

namespace A300119.P12573145668278651087
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A300700 n) (A326376 (n + 1))

end

end A300119.P12573145668278651087

/-!
# A300120: Number of skew partitions whose quotient diagram is connected and whose numerator has weight n.

The programs for A300120, there is no canonical definition to state claims against.
-/

/-! ## A300120.P3152829894638319202

`∑[∑[A054844(A161633(n))]]`
-/

namespace A300120.P3152829894638319202
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054844 (A161633 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A300120.P3152829894638319202

/-! ## A300120.P5838661582538008263

`∑[∑[A077168(A283378(n))]]`
-/

namespace A300120.P5838661582538008263
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077168 (A283378 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A300120.P5838661582538008263

/-! ## A300120.P5177861433937035355

`∑[∑[A181819(A219212(n+2))]]`
-/

namespace A300120.P5177861433937035355
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181819 (A219212 (n + 2)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A300120.P5177861433937035355

/-!
# A300121: Number of normal generalized Young tableaux, of shape the integer partition with Heinz number n, with all rows and columns weakly increasing and all regions connected skew partitions.

The programs for A300121, there is no canonical definition to state claims against.
-/

/-! ## A300121.P195152865191846197

`A296561(n+1)+A268159(A046096(n))`
-/

namespace A300121.P195152865191846197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296561 (n + 1) + A268159 (A046096 n).toNat

end

end A300121.P195152865191846197

/-! ## A300121.P9585462462770484792

`A296561(n+1)+A243046(A276532(n))`
-/

namespace A300121.P9585462462770484792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296561 (n + 1) + A243046 (A276532 n).toNat

end

end A300121.P9585462462770484792

/-! ## A300121.P1209215122722416211

`A296561(n+1)+A240850(A327449(n+2))`
-/

namespace A300121.P1209215122722416211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296561 (n + 1) + A240850 (A327449 (n + 2)).toNat

end

end A300121.P1209215122722416211

/-! ## A300121.P12389600598674917886

`A296561(n+1)+A188973(A064230(n))`
-/

namespace A300121.P12389600598674917886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296561 (n + 1) + A188973 (A064230 n).toNat

end

end A300121.P12389600598674917886

/-!
# A300122: Number of normal generalized Young tableaux of size n with all rows and columns weakly increasing and all regions connected skew partitions.

The programs for A300122, there is no canonical definition to state claims against.
-/

/-! ## A300122.P16262003207975102891

`A221859(n)-A221861(A228923(n))`
-/

namespace A300122.P16262003207975102891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221859 n - A221861 (A228923 n).toNat

end

end A300122.P16262003207975102891

/-!
# A300123: Number of ways to tile the diagram of the integer partition with Heinz number n using connected skew partitions.

The programs for A300123, there is no canonical definition to state claims against.
-/

/-! ## A300123.P14334636917812560532

`A062570(A300121(n+1))`
-/

namespace A300123.P14334636917812560532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062570 (A300121 (n + 1)).toNat

end

end A300123.P14334636917812560532

/-!
# A300124: Number of ways to tile the diagram of an integer partition of n using connected skew partitions.

The programs for A300124, there is no canonical definition to state claims against.
-/

/-! ## A300124.P4203879446747897244

`∑[∑[A364918(A000351(n))]]`
-/

namespace A300124.P4203879446747897244
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364918 (A000351 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A300124.P4203879446747897244

/-! ## A300124.P15682848259937167662

`A377059(A226560(n))+A001411(n)`
-/

namespace A300124.P15682848259937167662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377059 (A226560 n).toNat + A001411 n

end

end A300124.P15682848259937167662

/-!
# A300125: Number of closable Motzkin trees.

The programs for A300125, there is no canonical definition to state claims against.
-/

/-! ## A300125.P13872469792693588470

`A300129(n)+A300128(n)`
-/

namespace A300125.P13872469792693588470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300129 n + A300128 n

end

end A300125.P13872469792693588470

/-! ## A300125.P9305675983536156601

`A300128(n)-(A185238(n)-A300129(n))`
-/

namespace A300125.P9305675983536156601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300128 n - (A185238 n - A300129 n)

end

end A300125.P9305675983536156601

/-! ## A300125.P14722015535821540085

`A008617(∑[∑[A001006(n+1)]])`
-/

namespace A300125.P14722015535821540085
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001006 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008617 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A300125.P14722015535821540085

/-! ## A300125.P11202687115399534001

`A262249(A235648(n+2))`
-/

namespace A300125.P11202687115399534001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262249 (A235648 (n + 2)).toNat

end

end A300125.P11202687115399534001

/-! ## A300125.P1469993431728331576

`A023193(A246563(n))%(2^n)`
-/

namespace A300125.P1469993431728331576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A023193 (A246563 n).toNat) (2 ^ n : ℤ)

end

end A300125.P1469993431728331576

/-!
# A300128: Number of Motzkin trees that are "typable closable skeletons".

The programs for A300128, there is no canonical definition to state claims against.
-/

/-! ## A300128.P10674105380382358321

`A300125(n)-A300129(n)`
-/

namespace A300128.P10674105380382358321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300125 n - A300129 n

end

end A300128.P10674105380382358321

/-! ## A300128.P6737784307157654990

`A023193(A246563(n))%(2^n)-A300129(n)`
-/

namespace A300128.P6737784307157654990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A023193 (A246563 n).toNat) (2 ^ n : ℤ) - A300129 n

end

end A300128.P6737784307157654990

/-! ## A300128.P7441065774332557785

`A300125(n)-A004197(∑[(-1)^(n%3)]*A349401(n))`
-/

namespace A300128.P7441065774332557785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ (n % 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300125 n - A004197 ((∑ j ∈ Finset.range (n + 1), f1 j) * A349401 n).toNat

end

end A300128.P7441065774332557785

/-! ## A300128.P16407534220302294283

`A300125(n)-A048158(A054519(n)+A054515(n))`
-/

namespace A300128.P16407534220302294283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300125 n - A048158 (A054519 n + A054515 n).toNat

end

end A300128.P16407534220302294283

/-!
# A300129: Number of Motzkin trees that are "untypable closable skeletons".

The programs for A300129, there is no canonical definition to state claims against.
-/

/-! ## A300129.P17380537752808720505

`A300125(n)-A300128(n)`
-/

namespace A300129.P17380537752808720505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300125 n - A300128 n

end

end A300129.P17380537752808720505

/-! ## A300129.P17064481504182929961

`A393710(Δ[Δ[A000900(n)]])`
-/

namespace A300129.P17064481504182929961
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000900 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393710 (f1 (n + 1) - f1 n).toNat

end

end A300129.P17064481504182929961

/-! ## A300129.P7244021838124050366

`Δ[A020986(round(A178011(n)/9))]`
-/

namespace A300129.P7244021838124050366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020986 (SequenceMachineLib.roundAway ((A178011 n : ℚ) / 9)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A300129.P7244021838124050366

/-! ## A300129.P7408679062275897225

`A048158(A054515(n)+∑[∏{e}[n, #+1]])`
-/

namespace A300129.P7408679062275897225
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048158 (A054515 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A300129.P7408679062275897225

/-! ## A300129.P4174446685470173775

`A004197(∑[(-1)^(n%3)]*A349401(n))`
-/

namespace A300129.P4174446685470173775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ (n % 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004197 ((∑ j ∈ Finset.range (n + 1), f1 j) * A349401 n).toNat

end

end A300129.P4174446685470173775

/-!
# A300131: Largest number of points that can be placed on an n X n point grid so that no point is equally distant from two other points on the same straight line.

The programs for A300131, there is no canonical definition to state claims against.
-/

/-! ## A300131.P7883275454652406314

`lt[A186430(2*n+3)², A138798(n+2)]`
-/

namespace A300131.P7883275454652406314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186430 (2 * n + 3) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138798 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A300131.P7883275454652406314

/-! ## A300131.P6767638214492714615

`lt[A286653(2*n+3), log(A344320(2*n+5))]`
-/

namespace A300131.P6767638214492714615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286653 (2 * n + 3)

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.log (A344320 (2 * n + 5) : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A300131.P6767638214492714615

/-! ## A300131.P10822164571994587268

`A214066(n)-A033999(A278301(n))`
-/

namespace A300131.P10822164571994587268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214066 n - A033999 (A278301 n).toNat

end

end A300131.P10822164571994587268

/-! ## A300131.P8661738653058801467

`A310707(n)-A138885(A299473(n))`
-/

namespace A300131.P8661738653058801467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310707 n - A138885 (A299473 n).toNat

end

end A300131.P8661738653058801467

/-! ## A300131.P269404249106300807

`lt[A000404(A303648(n)), A261333(2*n)]`
-/

namespace A300131.P269404249106300807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000404 (A303648 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261333 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A300131.P269404249106300807

/-!
# A300132: Number of n X n 0..1 arrays with every element equal to 0, 3, 4, 5, 6, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A300132, there is no canonical definition to state claims against.
-/

/-! ## A300132.P4795053203854053226

`A300138(∑[4*n]+1)`
-/

namespace A300132.P4795053203854053226
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300138 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A300132.P4795053203854053226

/-!
# A300133: Number of nX3 0..1 arrays with every element equal to 0, 3, 4, 5, 6, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A300133, there is no canonical definition to state claims against.
-/

/-! ## A300133.P12307396186002947913

`A300138(∑[n+2]+4)`
-/

namespace A300133.P12307396186002947913
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300138 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A300133.P12307396186002947913

/-!
# A300134: Number of nX4 0..1 arrays with every element equal to 0, 3, 4, 5, 6, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A300134, there is no canonical definition to state claims against.
-/

/-! ## A300134.P7473834037244619055

`A300138(A141214(n)+7)`
-/

namespace A300134.P7473834037244619055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300138 (A141214 n + 7).toNat

end

end A300134.P7473834037244619055

/-! ## A300134.P3859837574829165949

`A300138(A141214(n+1))`
-/

namespace A300134.P3859837574829165949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300138 (A141214 (n + 1)).toNat

end

end A300134.P3859837574829165949

/-!
# A300135: Number of nX5 0..1 arrays with every element equal to 0, 3, 4, 5, 6, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A300135, there is no canonical definition to state claims against.
-/

/-! ## A300135.P16789963294101315164

`A300138(∑[n+4]+11)`
-/

namespace A300135.P16789963294101315164
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300138 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A300135.P16789963294101315164

/-! ## A300135.P2659074228061000036

`record[A300138(A167499(A008612(n)))]`
-/

namespace A300135.P2659074228061000036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300138 (A167499 (A008612 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A300135.P2659074228061000036

/-! ## A300135.P10500810537289296847

`record[A300138(A167499(A028242(n)))]`
-/

namespace A300135.P10500810537289296847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300138 (A167499 (A028242 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A300135.P10500810537289296847

/-! ## A300135.P1042296240033249944

`record[A300138(A167499(A052938(n)))]`
-/

namespace A300135.P1042296240033249944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300138 (A167499 (A052938 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A300135.P1042296240033249944

/-!
# A300136: Number of nX6 0..1 arrays with every element equal to 0, 3, 4, 5, 6, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A300136, there is no canonical definition to state claims against.
-/

/-! ## A300136.P15168656148475394890

`A300138(A056115(n)+21)`
-/

namespace A300136.P15168656148475394890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300138 (A056115 n + 21).toNat

end

end A300136.P15168656148475394890

/-! ## A300136.P7721194159126944699

`A300138(A374007(n+1))`
-/

namespace A300136.P7721194159126944699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300138 (A374007 (n + 1)).toNat

end

end A300136.P7721194159126944699

/-!
# A300137: Number of nX7 0..1 arrays with every element equal to 0, 3, 4, 5, 6, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A300137, there is no canonical definition to state claims against.
-/

/-! ## A300137.P2498881647296328169

`A300138(A167487(n+5))`
-/

namespace A300137.P2498881647296328169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300138 (A167487 (n + 5)).toNat

end

end A300137.P2498881647296328169

/-! ## A300137.P14734878269729490935

`A300138(A374008(n+1))`
-/

namespace A300137.P14734878269729490935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300138 (A374008 (n + 1)).toNat

end

end A300137.P14734878269729490935

/-!
# A300138: T(n,k)=Number of nXk 0..1 arrays with every element equal to 0, 3, 4, 5, 6, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A300138, there is no canonical definition to state claims against.
-/

/-! ## A300138.P16749430895813715904

`A299321(n+1)+A173636(A334709(n+1))`
-/

namespace A300138.P16749430895813715904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299321 (n + 1) + A173636 (A334709 (n + 1)).toNat

end

end A300138.P16749430895813715904

/-!
# A300140: Number of n X n 0..1 arrays with every element equal to 1, 3, 4, 5, 6, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A300140, there is no canonical definition to state claims against.
-/

/-! ## A300140.P13127469988952250557

`A300146(∑[4*n]+1)`
-/

namespace A300140.P13127469988952250557
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300146 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A300140.P13127469988952250557

/-! ## A300140.P17296739072455172160

`∑{digits}[n, A300146(A001844(#))]`
-/

namespace A300140.P17296739072455172160
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A300146 (A001844 x).toNat).sum

end

end A300140.P17296739072455172160

/-!
# A300141: Number of nX3 0..1 arrays with every element equal to 1, 3, 4, 5, 6, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A300141, there is no canonical definition to state claims against.
-/

/-! ## A300141.P13579497838851339949

`A300146(∑[n+2]+4)`
-/

namespace A300141.P13579497838851339949
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300146 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A300141.P13579497838851339949

/-!
# A300142: Number of nX4 0..1 arrays with every element equal to 1, 3, 4, 5, 6, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A300142, there is no canonical definition to state claims against.
-/

/-! ## A300142.P14081320749745029401

`A300146(A374004(n+1))`
-/

namespace A300142.P14081320749745029401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300146 (A374004 (n + 1)).toNat

end

end A300142.P14081320749745029401

/-! ## A300142.P1569054283738329447

`A300146(A141214(n+1))`
-/

namespace A300142.P1569054283738329447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300146 (A141214 (n + 1)).toNat

end

end A300142.P1569054283738329447

/-!
# A300143: Number of nX5 0..1 arrays with every element equal to 1, 3, 4, 5, 6, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A300143, there is no canonical definition to state claims against.
-/

/-! ## A300143.P16451193522892354030

`A300146(A374005(n+1))`
-/

namespace A300143.P16451193522892354030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300146 (A374005 (n + 1)).toNat

end

end A300143.P16451193522892354030

/-!
# A300144: Number of nX6 0..1 arrays with every element equal to 1, 3, 4, 5, 6, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A300144, there is no canonical definition to state claims against.
-/

/-! ## A300144.P2754871984871806770

`A300146(A374007(n+1))`
-/

namespace A300144.P2754871984871806770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300146 (A374007 (n + 1)).toNat

end

end A300144.P2754871984871806770

/-!
# A300145: Number of nX7 0..1 arrays with every element equal to 1, 3, 4, 5, 6, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A300145, there is no canonical definition to state claims against.
-/

/-! ## A300145.P9630567209324561457

`A300146(A374008(n+1))`
-/

namespace A300145.P9630567209324561457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300146 (A374008 (n + 1)).toNat

end

end A300145.P9630567209324561457

/-!
# A300146: T(n,k)=Number of nXk 0..1 arrays with every element equal to 1, 3, 4, 5, 6, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A300146, there is no canonical definition to state claims against.
-/

/-! ## A300146.P4281581192145214360

`A309785(A174116(n))+A298454(n+1)`
-/

namespace A300146.P4281581192145214360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309785 (A174116 n).toNat + A298454 (n + 1)

end

end A300146.P4281581192145214360

/-! ## A300146.P873116445915130429

`A298834(n+1)+A166301(A174545(n)+1)`
-/

namespace A300146.P873116445915130429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298834 (n + 1) + A166301 (A174545 n + 1).toNat

end

end A300146.P873116445915130429

/-! ## A300146.P2818475432102987003

`(A166301(A174116(n))+1)*A298834(n+1)`
-/

namespace A300146.P2818475432102987003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A166301 (A174116 n).toNat + 1) * A298834 (n + 1)

end

end A300146.P2818475432102987003

/-! ## A300146.P17099308065808289137

`(A347689(A289481(n))+1)*A298834(n+1)`
-/

namespace A300146.P17099308065808289137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A347689 (A289481 n).toNat + 1) * A298834 (n + 1)

end

end A300146.P17099308065808289137

/-!
# A300147: a(n) = (1/8) * Sum_{d|n} d * A110163(d).

The programs for A300147, there is no canonical definition to state claims against.
-/

/-! ## A300147.P6986667181994579018

`1/8*∑{d}[n+1, #*A110163(#)]`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A300147.P6986667181994579018
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 8 * ((∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A110163 d : ℤ) : ℚ)

end

end A300147.P6986667181994579018

/-! ## A300147.P7074204166731138152

`A289636(n+1)/8`
-/

namespace A300147.P7074204166731138152
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A289636 (n + 1) : ℚ) / 8

end

end A300147.P7074204166731138152

/-! ## A300147.P13690985205915245821

`A289638(n+1)/16`
-/

namespace A300147.P13690985205915245821
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A289638 (n + 1) : ℚ) / 16

end

end A300147.P13690985205915245821

/-! ## A300147.P3730323507737917346

`A289633(n+1)/48`
-/

namespace A300147.P3730323507737917346
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A289633 (n + 1) : ℚ) / 48

end

end A300147.P3730323507737917346

/-! ## A300147.P2806283938955335677

`(A289640(n+1)-A289637(n+1))/16`
-/

namespace A300147.P2806283938955335677
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A289640 (n + 1) - A289637 (n + 1) : ℚ) / 16

end

end A300147.P2806283938955335677

/-!
# A300148: Trajectory of the "Erase or triple" protocol applied to 1 (see Comments section for how the protocol works).

The programs for A300148, there is no canonical definition to state claims against.
-/

/-! ## A300148.P5549122515338620646

`A000244(n)%A031533(A190152(n))`
-/

namespace A300148.P5549122515338620646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000244 n) (A031533 (A190152 n).toNat)

end

end A300148.P5549122515338620646

/-!
# A300150: "Erase or triple": list of the successive integers that produce the next "altitude" record (see the comments section).

The programs for A300150, there is no canonical definition to state claims against.
-/

/-! ## A300150.P16454031577250335292

`A054353(or(A016861(n), A245043(n)))`
-/

namespace A300150.P16454031577250335292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054353 (Int.lor (A016861 n) (A245043 n)).toNat

end

end A300150.P16454031577250335292

/-!
# A300154: Consider a spiral on an infinite hexagonal grid. a(n) is the number of cells in the part of the spiral from 1st to n-th cell that are on the same column or diagonal (in any of three directions) as the n-th cell along the spiral, including that cell itself.

The programs for A300154, the canonical program `A300154.P12598035812061489662` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A300154 has offset 1).

The definition of A300154 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A300154.P12598035812061489662

`n+1-A069905(∑[char[A001399(n)]])`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A300154

/-- `n+1-A069905(∑[char[A001399(n)]])` -/
def P12598035812061489662.Spec : Prop :=
  ∀ n, P12598035812061489662.a n = A300154 (n + 1)

theorem P12598035812061489662.correct : P12598035812061489662.Spec := by
  intro n
  simp only [A300154, Nat.add_sub_cancel]

end A300154

/-! ## A300154.P13207128013478470815

`(A216522(n)+A087466(n+1))/2+1`
-/

namespace A300154.P13207128013478470815
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A216522 n + A087466 (n + 1) : ℚ) / 2 + 1

end

end A300154.P13207128013478470815

namespace A300154

/-- `(A216522(n)+A087466(n+1))/2+1` -/
def P13207128013478470815.Spec : Prop :=
  ∀ n, P13207128013478470815.a n = (A300154 (n + 1) : ℚ)

end A300154

/-! ## A300154.P8661152895922291364

`A008619(A216522(n)+A087466(n+1))`
-/

namespace A300154.P8661152895922291364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A216522 n + A087466 (n + 1)).toNat

end

end A300154.P8661152895922291364

namespace A300154

/-- `A008619(A216522(n)+A087466(n+1))` -/
def P8661152895922291364.Spec : Prop :=
  ∀ n, P8661152895922291364.a n = A300154 (n + 1)

end A300154

/-! ## A300154.P17198934473195895600

`A027656(A216522(n)+A087466(n+1))`
-/

namespace A300154.P17198934473195895600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027656 (A216522 n + A087466 (n + 1)).toNat

end

end A300154.P17198934473195895600

namespace A300154

/-- `A027656(A216522(n)+A087466(n+1))` -/
def P17198934473195895600.Spec : Prop :=
  ∀ n, P17198934473195895600.a n = A300154 (n + 1)

end A300154

/-! ## A300154.P18420545224480842468

`A052938(A216522(n)+A087466(n+1))`
-/

namespace A300154.P18420545224480842468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052938 (A216522 n + A087466 (n + 1)).toNat

end

end A300154.P18420545224480842468

namespace A300154

/-- `A052938(A216522(n)+A087466(n+1))` -/
def P18420545224480842468.Spec : Prop :=
  ∀ n, P18420545224480842468.a n = A300154 (n + 1)

end A300154

/-! ## A300154.P616016829479494081

`A004525(A216522(n)+A087466(n+1))+1`
-/

namespace A300154.P616016829479494081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A216522 n + A087466 (n + 1)).toNat + 1

end

end A300154.P616016829479494081

namespace A300154

/-- `A004525(A216522(n)+A087466(n+1))+1` -/
def P616016829479494081.Spec : Prop :=
  ∀ n, P616016829479494081.a n = A300154 (n + 1)

end A300154

/-! ## A300154.P9240338165111931144

`A004526(A216522(n)+A087466(n+1))+1`
-/

namespace A300154.P9240338165111931144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A216522 n + A087466 (n + 1)).toNat + 1

end

end A300154.P9240338165111931144

namespace A300154

/-- `A004526(A216522(n)+A087466(n+1))+1` -/
def P9240338165111931144.Spec : Prop :=
  ∀ n, P9240338165111931144.a n = A300154 (n + 1)

end A300154

/-! ## A300154.P5829315677516718607

`A002260(eq[2, A010783(n+1)])`
-/

namespace A300154.P5829315677516718607
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010783 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A300154.P5829315677516718607

namespace A300154

/-- `A002260(eq[2, A010783(n+1)])` -/
def P5829315677516718607.Spec : Prop :=
  ∀ n, P5829315677516718607.a n = A300154 (n + 1)

end A300154

/-! ## A300154.P5228797333937602263

`A002262(eq[2, A010783(n+1)])`
-/

namespace A300154.P5228797333937602263
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010783 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A300154.P5228797333937602263

namespace A300154

/-- `A002262(eq[2, A010783(n+1)])` -/
def P5228797333937602263.Spec : Prop :=
  ∀ n, P5228797333937602263.a n = A300154 (n + 1)

end A300154

/-! ## A300154.P3268335921564915115

`A048151(eq[2, A010783(n+1)])`
-/

namespace A300154.P3268335921564915115
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010783 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048151 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A300154.P3268335921564915115

namespace A300154

/-- `A048151(eq[2, A010783(n+1)])` -/
def P3268335921564915115.Spec : Prop :=
  ∀ n, P3268335921564915115.a n = A300154 (n + 1)

end A300154

/-! ## A300154.P12657800933441360992

`A122197(eq[3, A013942(n+1)])`
-/

namespace A300154.P12657800933441360992
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013942 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122197 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A300154.P12657800933441360992

namespace A300154

/-- `A122197(eq[3, A013942(n+1)])` -/
def P12657800933441360992.Spec : Prop :=
  ∀ n, P12657800933441360992.a n = A300154 (n + 1)

end A300154

/-! ## A300154.P8743158066990784391

`A196199(eq[3, A013942(n+1)])`
-/

namespace A300154.P8743158066990784391
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013942 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196199 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A300154.P8743158066990784391

namespace A300154

/-- `A196199(eq[3, A013942(n+1)])` -/
def P8743158066990784391.Spec : Prop :=
  ∀ n, P8743158066990784391.a n = A300154 (n + 1)

end A300154

/-!
# A300155: Numbers n for which A243822(n) = A000005(n).

The programs for A300155, the canonical program `A300155.P11709344862786057600` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A300155 has offset 1).

The definition of A300155 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 434 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A300155.P11709344862786057600

`eq[0, A299990(n+1)]+1`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A300155

/-- `eq[0, A299990(n+1)]+1` -/
def P11709344862786057600.Spec : Prop :=
  ∀ n, (P11709344862786057600.a n : ℤ) = A300155 (n + 1)

theorem P11709344862786057600.correct : P11709344862786057600.Spec := by
  intro n
  simp only [A300155, Nat.add_sub_cancel]

end A300155

/-! ## A300155.P14492673099151034107

`eq[0, A299990(A028310(n))]`
-/

namespace A300155.P14492673099151034107
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299990 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A300155.P14492673099151034107

namespace A300155

/-- `eq[0, A299990(A028310(n))]` -/
def P14492673099151034107.Spec : Prop :=
  ∀ n, (P14492673099151034107.a n : ℤ) = A300155 (n + 1)

end A300155

/-! ## A300155.P9075879525850092960

`A020725(eq[0, A299990(n+1)])`
-/

namespace A300155.P9075879525850092960
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299990 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A300155.P9075879525850092960

namespace A300155

/-- `A020725(eq[0, A299990(n+1)])` -/
def P9075879525850092960.Spec : Prop :=
  ∀ n, P9075879525850092960.a n = A300155 (n + 1)

end A300155

/-! ## A300155.P4703187706562445306

`A061767(eq[0, A299990(n+1)])`
-/

namespace A300155.P4703187706562445306
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299990 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061767 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A300155.P4703187706562445306

namespace A300155

/-- `A061767(eq[0, A299990(n+1)])` -/
def P4703187706562445306.Spec : Prop :=
  ∀ n, P4703187706562445306.a n = A300155 (n + 1)

end A300155

/-! ## A300155.P16911793447164584927

`A113484(eq[0, A299990(n+1)])`
-/

namespace A300155.P16911793447164584927
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299990 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113484 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A300155.P16911793447164584927

namespace A300155

/-- `A113484(eq[0, A299990(n+1)])` -/
def P16911793447164584927.Spec : Prop :=
  ∀ n, P16911793447164584927.a n = A300155 (n + 1)

end A300155

/-! ## A300155.P17751830199322761500

`eq[0, A299990(A233583(n+1))]`
-/

namespace A300155.P17751830199322761500
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299990 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A300155.P17751830199322761500

namespace A300155

/-- `eq[0, A299990(A233583(n+1))]` -/
def P17751830199322761500.Spec : Prop :=
  ∀ n, (P17751830199322761500.a n : ℤ) = A300155 (n + 1)

end A300155

/-!
# A300156: Indices of records in A299990.

The programs for A300156, there is no canonical definition to state claims against.
-/

/-! ## A300156.P13879386519662405718

`A008458(A348748(n+1)%A318566(3*n+1))`
-/

namespace A300156.P13879386519662405718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 (Int.tmod (A348748 (n + 1)) (A318566 (3 * n + 1))).toNat

end

end A300156.P13879386519662405718

/-! ## A300156.P4901181847670817285

`gcd(A333928(2*(n+1)), A377778(A102928(n+1)))`
-/

namespace A300156.P4901181847670817285
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A333928 (2 * (n + 1))) (A377778 (A102928 (n + 1)).toNat)

end

end A300156.P4901181847670817285

/-! ## A300156.P8765927020021604326

`A315721(A179458(n+2)%A321722(2*(n+1)))`
-/

namespace A300156.P8765927020021604326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315721 (Int.tmod (A179458 (n + 2)) (A321722 (2 * (n + 1)))).toNat

end

end A300156.P8765927020021604326

/-!
# A300157: Records in A299990.

The programs for A300157, there is no canonical definition to state claims against.
-/

/-! ## A300157.P14940573380944466099

`record[A299990(n+1)]`
-/

namespace A300157.P14940573380944466099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299990 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A300157.P14940573380944466099

/-! ## A300157.P15195916654719040300

`A299990(A300156(n+1))`
-/

namespace A300157.P15195916654719040300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299990 (A300156 (n + 1)).toNat

end

end A300157.P15195916654719040300

/-! ## A300157.P339851021493680286

`record[A010846(n+1)-A062011(n+1)]`
-/

namespace A300157.P339851021493680286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010846 (n + 1) - A062011 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A300157.P339851021493680286

/-! ## A300157.P9699130105326513499

`record[A243822(n+1)-A000005(n+1)]`
-/

namespace A300157.P9699130105326513499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243822 (n + 1) - A000005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A300157.P9699130105326513499

/-! ## A300157.P16451479423329067522

`record[A010846(n+1)-2*A000005(n+1)]`
-/

namespace A300157.P16451479423329067522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010846 (n + 1) - 2 * A000005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A300157.P16451479423329067522

/-!
# A300158: Absolute value of product of nonzero eigenvalues of upper left (n+1)X(n+1) rank 2 submatrix of Wythoff array.

The programs for A300158, there is no canonical definition to state claims against.
-/

/-! ## A300158.P11303110081751862178

`A175088(A214255(n))`
-/

namespace A300158.P11303110081751862178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175088 (A214255 n).toNat

end

end A300158.P11303110081751862178

/-! ## A300158.P16077772367331626503

`A350628(n+1)+A187108(A079969(n))`
-/

namespace A300158.P16077772367331626503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350628 (n + 1) + A187108 (A079969 n).toNat

end

end A300158.P16077772367331626503

/-! ## A300158.P1653318767708853493

`A333222(A114921(n+2))+A143587(n+1)`
-/

namespace A300158.P1653318767708853493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333222 (A114921 (n + 2)).toNat + A143587 (n + 1)

end

end A300158.P1653318767708853493

/-!
# A300159: Number of ways of converting one set of lists containing n elements to another set of lists containing n elements by removing the last element from one of the lists and either appending it to an existing list or treating it as a new list.

The programs for A300159, there is no canonical definition to state claims against.
-/

/-! ## A300159.P14482730638656490285

`Δ[A000262(abs(1-n))]*n`
-/

namespace A300159.P14482730638656490285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000262 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * (n : ℤ)

end

end A300159.P14482730638656490285

/-! ## A300159.P11754235301129698840

`n*Δ[A059110(A161680(n))]`
-/

namespace A300159.P11754235301129698840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059110 (A161680 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (f1 (n + 1) - f1 n)

end

end A300159.P11754235301129698840

/-! ## A300159.P546912696602171333

`n*Δ[A253286(A000124(n))]`
-/

namespace A300159.P546912696602171333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253286 (A000124 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (f1 (n + 1) - f1 n)

end

end A300159.P546912696602171333

/-! ## A300159.P12575489730535772454

`n*Δ[A293053(A212342(n))]`
-/

namespace A300159.P12575489730535772454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293053 (A212342 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (f1 (n + 1) - f1 n)

end

end A300159.P12575489730535772454

/-! ## A300159.P13447751142712644724

`n*Δ[A291709(A027379(n))]`
-/

namespace A300159.P13447751142712644724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291709 (A027379 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (f1 (n + 1) - f1 n)

end

end A300159.P13447751142712644724

/-! ## A300159.P13343665191005732005

`n*Δ[A291709(A055998(n))]`
-/

namespace A300159.P13343665191005732005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291709 (A055998 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (f1 (n + 1) - f1 n)

end

end A300159.P13343665191005732005

/-!
# A300161: Numbers n such that n^2 + 1 can be expressed as j^2 + k^2, j > k > 1, in more ways than for any smaller n.

The programs for A300161, there is no canonical definition to state claims against.
-/

/-! ## A300161.P9829711483774057744

`floor(sqrt(A300162(n+1)))`
-/

namespace A300161.P9829711483774057744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A300162 (n + 1))

end

end A300161.P9829711483774057744

/-! ## A300161.P3763544410739365974

`round(sqrt(A300162(n+1)+A000051(n)))`
-/

namespace A300161.P3763544410739365974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A300162 (n + 1) + A000051 n : ℝ))

end

end A300161.P3763544410739365974

/-! ## A300161.P15140336069132669306

`ceil(sqrt(A300162(n+1)-A016777(n)))`
-/

namespace A300161.P15140336069132669306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A300162 (n + 1) - A016777 n : ℝ)⌉

end

end A300161.P15140336069132669306

/-! ## A300161.P15339016551131160165

`ceil(sqrt(A300162(n+1)-A313228(n)))`
-/

namespace A300161.P15339016551131160165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A300162 (n + 1) - A313228 n : ℝ)⌉

end

end A300161.P15339016551131160165

/-! ## A300161.P17029028573004158098

`round(sqrt(A300162(n+1)+A050796(n+1)))`
-/

namespace A300161.P17029028573004158098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A300162 (n + 1) + A050796 (n + 1) : ℝ))

end

end A300161.P17029028573004158098

/-!
# A300162: Numbers of the form n^2 + 1 that can be expressed as j^2 + k^2, j > k > 1, in more ways than any smaller number of this form.

The programs for A300162, there is no canonical definition to state claims against.
-/

/-! ## A300162.P902312878331476449

`1+A300161(n+1)²`
-/

namespace A300162.P902312878331476449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A300161 (n + 1) ^ 2

end

end A300162.P902312878331476449

/-! ## A300162.P5634403036976865577

`A002522(A300161(n+1))`
-/

namespace A300162.P5634403036976865577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002522 (A300161 (n + 1)).toNat

end

end A300162.P5634403036976865577

/-!
# A300163: Records in the number of ways to express a number of the form n^2 + 1 as j^2 + k^2 with j > k > 1.

The programs for A300163, there is no canonical definition to state claims against.
-/

/-! ## A300163.P2306013186905315489

`lt[A063942(A286378(2*n+3)), A188581(n+1)]`
-/

namespace A300163.P2306013186905315489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063942 (A286378 (2 * n + 3)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188581 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A300163.P2306013186905315489

/-! ## A300163.P1326595220414804527

`lt[A383247(n+1), A129863(A001222(n+1))]`
-/

namespace A300163.P1326595220414804527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383247 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129863 (A001222 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A300163.P1326595220414804527

/-! ## A300163.P9668786819101316006

`lt[A337485(A289506(n+1)), A001222(n+1)]`
-/

namespace A300163.P9668786819101316006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337485 (A289506 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A300163.P9668786819101316006

/-! ## A300163.P7274213740818979297

`lt[A064283(n+1), A001359(A003961(n+1))]`
-/

namespace A300163.P7274213740818979297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064283 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (A003961 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A300163.P7274213740818979297

/-! ## A300163.P2319348408018008114

`lt[A117144(A353842(n+1)), A046523(n+1)]`
-/

namespace A300163.P2319348408018008114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117144 (A353842 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A300163.P2319348408018008114

/-!
# A300164: Numbers of the form n^2+1 not expressible as j^2+k^2 with j>k>1.

The programs for A300164, the canonical program `A300164.P1924434180453968299` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A300164 has offset 1).

The definition of A300164 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1302 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A300164.P7959572704413769632

`record[A065876(n)+C(n, n²)+n]`
-/

namespace A300164.P7959572704413769632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065876 n + (Nat.choose n (n ^ 2) + n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A300164.P7959572704413769632

namespace A300164

/-- `record[A065876(n)+C(n, n²)+n]` -/
def P7959572704413769632.Spec : Prop :=
  ∀ n, P7959572704413769632.a n = A300164 (n + 1)

end A300164

/-! ## A300164.P1924434180453968299

`A054977(n)+A071557(n+1)²`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A300164

/-- `A054977(n)+A071557(n+1)²` -/
def P1924434180453968299.Spec : Prop :=
  ∀ n, P1924434180453968299.a n = A300164 (n + 1)

theorem P1924434180453968299.correct : P1924434180453968299.Spec := by
  intro n
  simp only [A300164, Nat.add_sub_cancel]

end A300164

/-! ## A300164.P7048427279103303057

`A057428(n)+2+A071557(n+1)²`
-/

namespace A300164.P7048427279103303057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n + (2 + A071557 (n + 1) ^ 2)

end

end A300164.P7048427279103303057

namespace A300164

/-- `A057428(n)+2+A071557(n+1)²` -/
def P7048427279103303057.Spec : Prop :=
  ∀ n, P7048427279103303057.a n = A300164 (n + 1)

end A300164

/-! ## A300164.P1893537376385199625

`A036987(2*n)+1+A071557(n+1)²`
-/

namespace A300164.P1893537376385199625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 (2 * n) + (1 + A071557 (n + 1) ^ 2)

end

end A300164.P1893537376385199625

namespace A300164

/-- `A036987(2*n)+1+A071557(n+1)²` -/
def P1893537376385199625.Spec : Prop :=
  ∀ n, P1893537376385199625.a n = A300164 (n + 1)

end A300164

/-! ## A300164.P2570442222262699219

`record[A065876(n)+A001057(A004275(n)+1)]`
-/

namespace A300164.P2570442222262699219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065876 n + A001057 (A004275 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A300164.P2570442222262699219

namespace A300164

/-- `record[A065876(n)+A001057(A004275(n)+1)]` -/
def P2570442222262699219.Spec : Prop :=
  ∀ n, P2570442222262699219.a n = A300164 (n + 1)

end A300164

/-! ## A300164.P17036043692163342674

`∩[A224450(n+1), n²+1]`
-/

namespace A300164.P17036043692163342674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224450 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A300164.P17036043692163342674

namespace A300164

/-- `∩[A224450(n+1), n²+1]` -/
def P17036043692163342674.Spec : Prop :=
  ∀ n, (P17036043692163342674.a n : ℤ) = A300164 (n + 1)

end A300164

/-! ## A300164.P11551076367370886994

`∩[A002522(n), A224450(n+1)]`
-/

namespace A300164.P11551076367370886994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002522 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224450 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A300164.P11551076367370886994

namespace A300164

/-- `∩[A002522(n), A224450(n+1)]` -/
def P11551076367370886994.Spec : Prop :=
  ∀ n, (P11551076367370886994.a n : ℤ) = A300164 (n + 1)

end A300164

/-! ## A300164.P4375718441184791519

`∩[A087279(n+1), A224450(n+1)]`
-/

namespace A300164.P4375718441184791519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087279 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224450 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A300164.P4375718441184791519

namespace A300164

/-- `∩[A087279(n+1), A224450(n+1)]` -/
def P4375718441184791519.Spec : Prop :=
  ∀ n, (P4375718441184791519.a n : ℤ) = A300164 (n + 1)

end A300164

/-! ## A300164.P8727913755416435539

`filter[A002522(n+1), A354924(#)]`
-/

namespace A300164.P8727913755416435539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002522 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354924 (f1 j).toNat = 1) n)

end

end A300164.P8727913755416435539

namespace A300164

/-- `filter[A002522(n+1), A354924(#)]` -/
def P8727913755416435539.Spec : Prop :=
  ∀ n, P8727913755416435539.a n = A300164 (n + 1)

end A300164

/-! ## A300164.P18173909850449345940

`filter[A160457(n+2), A354924(#)]`
-/

namespace A300164.P18173909850449345940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160457 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354924 (f1 j).toNat = 1) n)

end

end A300164.P18173909850449345940

namespace A300164

/-- `filter[A160457(n+2), A354924(#)]` -/
def P18173909850449345940.Spec : Prop :=
  ∀ n, P18173909850449345940.a n = A300164 (n + 1)

end A300164

/-! ## A300164.P14473109513294905168

`filter[A013945(2*(n+1)), A354924(#)]`
-/

namespace A300164.P14473109513294905168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013945 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354924 (f1 j).toNat = 1) n)

end

end A300164.P14473109513294905168

namespace A300164

/-- `filter[A013945(2*(n+1)), A354924(#)]` -/
def P14473109513294905168.Spec : Prop :=
  ∀ n, P14473109513294905168.a n = A300164 (n + 1)

end A300164

/-! ## A300164.P9035345086406365523

`filter[A087279(2*(n+1)), A354924(#)]`
-/

namespace A300164.P9035345086406365523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087279 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354924 (f1 j).toNat = 1) n)

end

end A300164.P9035345086406365523

namespace A300164

/-- `filter[A087279(2*(n+1)), A354924(#)]` -/
def P9035345086406365523.Spec : Prop :=
  ∀ n, P9035345086406365523.a n = A300164 (n + 1)

end A300164

/-! ## A300164.P10560443431313218245

`filter[A338284(2*(n+1)), A354924(#)]`
-/

namespace A300164.P10560443431313218245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338284 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354924 (f1 j).toNat = 1) n)

end

end A300164.P10560443431313218245

namespace A300164

/-- `filter[A338284(2*(n+1)), A354924(#)]` -/
def P10560443431313218245.Spec : Prop :=
  ∀ n, P10560443431313218245.a n = A300164 (n + 1)

end A300164

/-!
# A300165: Numbers m such that m^2 + 1 can be expressed in more than one way as j^2 + k^2 with j > k > 1 and gcd(j,k) = 1.

The programs for A300165, there is no canonical definition to state claims against.
-/

/-! ## A300165.P12007995959053390388

`floor(sqrt(A300166(1+n)))`
-/

namespace A300165.P12007995959053390388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A300166 (1 + n))

end

end A300165.P12007995959053390388

/-! ## A300165.P7586993403331072989

`round(sqrt(A300166(n+1)))`
-/

namespace A300165.P7586993403331072989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A300166 (n + 1) : ℝ))

end

end A300165.P7586993403331072989

/-! ## A300165.P8156619837005678238

`A262689(A300166(n+1))`
-/

namespace A300165.P8156619837005678238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262689 (A300166 (n + 1)).toNat

end

end A300165.P8156619837005678238

/-! ## A300165.P2437362887117348147

`A133388(A300166(n+1))`
-/

namespace A300165.P2437362887117348147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133388 (A300166 (n + 1)).toNat

end

end A300165.P2437362887117348147

/-!
# A300166: Numbers of the form m^2 + 1 that can be expressed in more than one way as j^2 + k^2 with j > k > 1 and gcd(j,k) = 1.

The programs for A300166, there is no canonical definition to state claims against.
-/

/-! ## A300166.P15271428272370792662

`1+A300165(1+n)²`
-/

namespace A300166.P15271428272370792662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A300165 (1 + n) ^ 2

end

end A300166.P15271428272370792662

/-! ## A300166.P990730641120572815

`A300165(n+1)^2+1`
-/

namespace A300166.P990730641120572815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300165 (n + 1) ^ 2 + 1

end

end A300166.P990730641120572815

/-! ## A300166.P3960896953281623284

`A002522(A300165(n+1))`
-/

namespace A300166.P3960896953281623284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002522 (A300165 (n + 1)).toNat

end

end A300166.P3960896953281623284

/-! ## A300166.P9668381850396746806

`A033638(2*A300165(n+1))`
-/

namespace A300166.P9668381850396746806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033638 (2 * A300165 (n + 1)).toNat

end

end A300166.P9668381850396746806

/-! ## A300166.P16658518223323255905

`A087279(2*A300165(n+1))`
-/

namespace A300166.P16658518223323255905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087279 (2 * A300165 (n + 1)).toNat

end

end A300166.P16658518223323255905

/-! ## A300166.P8212024792956215940

`∩[A281877(n+1), n²+1]`
-/

namespace A300166.P8212024792956215940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281877 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A300166.P8212024792956215940

/-! ## A300166.P920453394276227895

`∩[A002522(n), A281877(n+1)]`
-/

namespace A300166.P920453394276227895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002522 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281877 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A300166.P920453394276227895

/-! ## A300166.P1508313515049370154

`∩[A034106(n+1), A281877(n+1)]`
-/

namespace A300166.P1508313515049370154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034106 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281877 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A300166.P1508313515049370154

/-! ## A300166.P14948409086383252499

`∩[A050800(n+1), A281877(n+1)]`
-/

namespace A300166.P14948409086383252499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050800 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281877 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A300166.P14948409086383252499

/-! ## A300166.P6814599087727303021

`∩[A087279(n+1), A281877(n+1)]`
-/

namespace A300166.P6814599087727303021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087279 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281877 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A300166.P6814599087727303021

/-! ## A300166.P18339162416999420637

`∩[A134406(n+1), A281877(n+1)]`
-/

namespace A300166.P18339162416999420637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134406 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281877 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A300166.P18339162416999420637

/-! ## A300166.P1861364445121789698

`∩[A216765(n+1), A281877(n+1)]`
-/

namespace A300166.P1861364445121789698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216765 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281877 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A300166.P1861364445121789698

/-! ## A300166.P16250111089702875227

`∩[A299708(n+1), A281877(n+1)]`
-/

namespace A300166.P16250111089702875227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299708 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281877 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A300166.P16250111089702875227

/-! ## A300166.P13429656474330681289

`∩[A080262(2*n+1), A281877(n+2)]`
-/

namespace A300166.P13429656474330681289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080262 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281877 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A300166.P13429656474330681289

/-!
# A300167: Numbers n such that n^2+1 can be expressed as j^2+k^2, j>k>1, gcd(j,k)=1, in more ways than for any smaller n.

The programs for A300167, there is no canonical definition to state claims against.
-/

/-! ## A300167.P6545262884468278872

`floor(sqrt(A300168(n+1)))`
-/

namespace A300167.P6545262884468278872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A300168 (n + 1))

end

end A300167.P6545262884468278872

/-! ## A300167.P18373858782119400538

`sqrt(A300168(n+1)-A061901(n))`
-/

namespace A300167.P18373858782119400538
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A300168 (n + 1) - A061901 n : ℝ)

end

end A300167.P18373858782119400538

/-! ## A300167.P19159779298248724

`sqrt(A300168(n+1)-A196222(n))`
-/

namespace A300167.P19159779298248724
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A300168 (n + 1) - A196222 n : ℝ)

end

end A300167.P19159779298248724

/-! ## A300167.P1601431420886606904

`sqrt(A300168(n+1)-A133707(n+1))`
-/

namespace A300167.P1601431420886606904
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A300168 (n + 1) - A133707 (n + 1) : ℝ)

end

end A300167.P1601431420886606904

/-! ## A300167.P13579508415652820988

`sqrt(A300168(n+1)-A196017(n+1))`
-/

namespace A300167.P13579508415652820988
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A300168 (n + 1) - A196017 (n + 1) : ℝ)

end

end A300167.P13579508415652820988

/-!
# A300168: Numbers of the form n^2+1 that can be expressed as j^2+k^2, j>k>1, gcd(j,k)=1, in more ways than any smaller number of this form.

The programs for A300168, there is no canonical definition to state claims against.
-/

/-! ## A300168.P13962708703663592380

`A300167(n+1)²+1`
-/

namespace A300168.P13962708703663592380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300167 (n + 1) ^ 2 + 1

end

end A300168.P13962708703663592380

/-!
# A300169: Number of n X n 0..1 arrays with every element equal to 2, 3, 4, 5, 6, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A300169, there is no canonical definition to state claims against.
-/

/-! ## A300169.P6803611498724643099

`A300175(∑[4*n]+1)`
-/

namespace A300169.P6803611498724643099
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300175 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A300169.P6803611498724643099

/-!
# A300170: Number of nX3 0..1 arrays with every element equal to 2, 3, 4, 5, 6, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A300170, there is no canonical definition to state claims against.
-/

/-! ## A300170.P297252175882221514

`A300175(∑[n+2]+4)`
-/

namespace A300170.P297252175882221514
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300175 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A300170.P297252175882221514

/-!
# A300171: Number of nX4 0..1 arrays with every element equal to 2, 3, 4, 5, 6, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A300171, there is no canonical definition to state claims against.
-/

/-! ## A300171.P2615236135303877206

`A300175(A141214(n)+7)`
-/

namespace A300171.P2615236135303877206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300175 (A141214 n + 7).toNat

end

end A300171.P2615236135303877206

/-! ## A300171.P11097485874062978119

`A300175(A141214(n+1))`
-/

namespace A300171.P11097485874062978119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300175 (A141214 (n + 1)).toNat

end

end A300171.P11097485874062978119

/-!
# A300172: Number of nX5 0..1 arrays with every element equal to 2, 3, 4, 5, 6, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A300172, there is no canonical definition to state claims against.
-/

/-! ## A300172.P2348716349733469687

`A300175(eq[6, A131818(n+1)])`
-/

namespace A300172.P2348716349733469687
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300175 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A300172.P2348716349733469687

/-! ## A300172.P2736744153288273892

`A300175(Δ[A264443(n)])`
-/

namespace A300172.P2736744153288273892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300175 (f1 (n + 1) - f1 n).toNat

end

end A300172.P2736744153288273892

/-!
# A300173: Number of nX6 0..1 arrays with every element equal to 2, 3, 4, 5, 6, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A300173, there is no canonical definition to state claims against.
-/

/-! ## A300173.P1711296681316613320

`A300175(A166136(n+4))`
-/

namespace A300173.P1711296681316613320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300175 (A166136 (n + 4)).toNat

end

end A300173.P1711296681316613320

/-! ## A300173.P15232184111641939072

`A300175(A374007(n+1))`
-/

namespace A300173.P15232184111641939072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300175 (A374007 (n + 1)).toNat

end

end A300173.P15232184111641939072

/-!
# A300174: Number of nX7 0..1 arrays with every element equal to 2, 3, 4, 5, 6, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A300174, there is no canonical definition to state claims against.
-/

/-! ## A300174.P14623657269998425507

`A300175(A167487(n+5))`
-/

namespace A300174.P14623657269998425507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300175 (A167487 (n + 5)).toNat

end

end A300174.P14623657269998425507

/-! ## A300174.P13996777920637538997

`A300175(A374008(n+1))`
-/

namespace A300174.P13996777920637538997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300175 (A374008 (n + 1)).toNat

end

end A300174.P13996777920637538997

/-!
# A300175: T(n,k)=Number of nXk 0..1 arrays with every element equal to 2, 3, 4, 5, 6, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A300175, there is no canonical definition to state claims against.
-/

/-! ## A300175.P6451562563610508939

`A299602(n+1)+A235943(A297978(n+1))`
-/

namespace A300175.P6451562563610508939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299602 (n + 1) + A235943 (A297978 (n + 1)).toNat

end

end A300175.P6451562563610508939

/-! ## A300175.P10320219666509793158

`A298461(n+1)+A285097(A317525(n+1))`
-/

namespace A300175.P10320219666509793158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298461 (n + 1) + A285097 (A317525 (n + 1)).toNat

end

end A300175.P10320219666509793158

/-! ## A300175.P10532168090558615386

`A285097(A317525(n+1))+A127288(A298629(n+1))`
-/

namespace A300175.P10532168090558615386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285097 (A317525 (n + 1)).toNat + A127288 (A298629 (n + 1)).toNat

end

end A300175.P10532168090558615386

/-! ## A300175.P4434730298256078429

`A299602(n+1)+A185255(A298461(n+1))`
-/

namespace A300175.P4434730298256078429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299602 (n + 1) + A185255 (A298461 (n + 1)).toNat

end

end A300175.P4434730298256078429

/-!
# A300176: Number of n X n 0..1 arrays with every element equal to 0, 1, 2, 3, 4, 5, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A300176, there is no canonical definition to state claims against.
-/

/-! ## A300176.P4861856302203593659

`A300182(∑[4*n]+1)`
-/

namespace A300176.P4861856302203593659
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300182 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A300176.P4861856302203593659

/-! ## A300176.P17632522828235804805

`record[A300182(A133265(n²)/2)]`
-/

namespace A300176.P17632522828235804805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300182 (SequenceMachineLib.roundAway ((A133265 (n ^ 2) : ℚ) / 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A300176.P17632522828235804805

/-!
# A300177: Number of nX3 0..1 arrays with every element equal to 0, 1, 2, 3, 4, 5, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A300177, the canonical program `A300177.P8645473972523018361` is in `Seq.B000.C043`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A300177 has offset 1).

The definition of A300177 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A300177.P8050366397697792325

`ogf((4+4x+3x^2)/(1-7x-7x^2-6x^3))`
-/

namespace A300177.P8050366397697792325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, 4, 3] [1, -7, -7, -6] n

end

end A300177.P8050366397697792325

namespace A300177

/-- `ogf((4+4x+3x^2)/(1-7x-7x^2-6x^3))` -/
def P8050366397697792325.Spec : Prop :=
  ∀ n, P8050366397697792325.a n = A300177 (n + 1)

end A300177

/-! ## A300177.P8645473972523018361

`7*a(n-1)+7*a(n-2)+6*a(n-3)` with `a(0)=4, a(1)=32, a(2)=255`

The canonical program, it is in `Seq.B000.C043`.
-/

namespace A300177

/-- `7*a(n-1)+7*a(n-2)+6*a(n-3)` -/
def P8645473972523018361.Spec : Prop :=
  ∀ n, (P8645473972523018361.a n : ℤ) = A300177 (n + 1)

theorem P8645473972523018361.correct : P8645473972523018361.Spec := by
  intro n
  simp only [A300177, Nat.add_sub_cancel]

end A300177

/-! ## A300177.P1383079572198769316

`A300182(∑[n+2]+4)`
-/

namespace A300177.P1383079572198769316
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300182 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A300177.P1383079572198769316

namespace A300177

/-- `A300182(∑[n+2]+4)` -/
def P1383079572198769316.Spec : Prop :=
  ∀ n, P1383079572198769316.a n = A300177 (n + 1)

end A300177

/-!
# A300178: Number of nX4 0..1 arrays with every element equal to 0, 1, 2, 3, 4, 5, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A300178, there is no canonical definition to state claims against.
-/

/-! ## A300178.P7099670582715760678

`A300182(A374004(n+1))`
-/

namespace A300178.P7099670582715760678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300182 (A374004 (n + 1)).toNat

end

end A300178.P7099670582715760678

/-! ## A300178.P11446561257603211491

`A300182(A141214(n+1))`
-/

namespace A300178.P11446561257603211491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300182 (A141214 (n + 1)).toNat

end

end A300178.P11446561257603211491

/-!
# A300179: Number of nX5 0..1 arrays with every element equal to 0, 1, 2, 3, 4, 5, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A300179, there is no canonical definition to state claims against.
-/

/-! ## A300179.P3418525456119678069

`A300182(A374005(n+1))`
-/

namespace A300179.P3418525456119678069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300182 (A374005 (n + 1)).toNat

end

end A300179.P3418525456119678069

/-! ## A300179.P10429934385700608961

`A300182(Δ[A264443(n)])`
-/

namespace A300179.P10429934385700608961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300182 (f1 (n + 1) - f1 n).toNat

end

end A300179.P10429934385700608961

/-!
# A300180: Number of nX6 0..1 arrays with every element equal to 0, 1, 2, 3, 4, 5, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A300180, there is no canonical definition to state claims against.
-/

/-! ## A300180.P15985903189406452773

`A300182(A374007(n+1))`
-/

namespace A300180.P15985903189406452773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300182 (A374007 (n + 1)).toNat

end

end A300180.P15985903189406452773

/-!
# A300181: Number of nX7 0..1 arrays with every element equal to 0, 1, 2, 3, 4, 5, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A300181, there is no canonical definition to state claims against.
-/

/-! ## A300181.P15141555247995650877

`A300182(A374008(n+1))`
-/

namespace A300181.P15141555247995650877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300182 (A374008 (n + 1)).toNat

end

end A300181.P15141555247995650877

/-!
# A300182: T(n,k)=Number of nXk 0..1 arrays with every element equal to 0, 1, 2, 3, 4, 5, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A300182, there is no canonical definition to state claims against.
-/

/-! ## A300182.P8485122384898960908

`A145342(A223569(n+1))/2`
-/

namespace A300182.P8485122384898960908
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A145342 (A223569 (n + 1)).toNat : ℚ) / 2

end

end A300182.P8485122384898960908

/-! ## A300182.P15064671684266960047

`A004525(A145342(A223569(n+1)))`
-/

namespace A300182.P15064671684266960047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A145342 (A223569 (n + 1)).toNat).toNat

end

end A300182.P15064671684266960047

/-! ## A300182.P2658591116129178907

`A317517(n+1)+A055641(A059328(n))`
-/

namespace A300182.P2658591116129178907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317517 (n + 1) + A055641 (A059328 n).toNat

end

end A300182.P2658591116129178907

/-! ## A300182.P14480283348627398284

`A317517(n+1)+A284976(A260340(n))`
-/

namespace A300182.P14480283348627398284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317517 (n + 1) + A284976 (A260340 n).toNat

end

end A300182.P14480283348627398284

/-! ## A300182.P1043550831210114911

`A357849(A321312(n))+A317517(n+1)`
-/

namespace A300182.P1043550831210114911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357849 (A321312 n).toNat + A317517 (n + 1)

end

end A300182.P1043550831210114911

/-!
# A300183: Number of partitions of n whose minimal excluded multiplicity is odd.

The programs for A300183, there is no canonical definition to state claims against.
-/

/-! ## A300183.P14570419452273239506

`A000041(n)-A299408(n)`
-/

namespace A300183.P14570419452273239506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A299408 n

end

end A300183.P14570419452273239506

/-! ## A300183.P2375683689795151166

`A213598(n)-A299408(n)`
-/

namespace A300183.P2375683689795151166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213598 n - A299408 n

end

end A300183.P2375683689795151166

/-! ## A300183.P14405519297336963444

`sqrt(A001255(n))-A299408(n)`
-/

namespace A300183.P14405519297336963444
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A001255 n : ℝ) - (A299408 n : ℝ)

end

end A300183.P14405519297336963444

/-! ## A300183.P3330749066981425856

`∑[A002865(n)]-A299408(n)`
-/

namespace A300183.P3330749066981425856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A299408 n

end

end A300183.P3330749066981425856

/-! ## A300183.P187945924734942465

`A000065(n)+1-A299408(n)`
-/

namespace A300183.P187945924734942465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000065 n + (1 - A299408 n)

end

end A300183.P187945924734942465

/-!
# A300185: Irregular triangle read by rows: T(n, {j,k}) is the number of partitions of n that have exactly j parts equal to k; 1 <= j <= n, 1 <= k <= n.

The programs for A300185, there is no canonical definition to state claims against.
-/

/-! ## A300185.P17605853353988148655

`A117944(gcd(A000975(n), A330050(n)))`
-/

namespace A300185.P17605853353988148655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117944 (Int.gcd (A000975 n) (A330050 n))

end

end A300185.P17605853353988148655

/-! ## A300185.P9837597994611800200

`A030308(A271269(n+1)+A217155(n+1))`
-/

namespace A300185.P9837597994611800200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030308 (A271269 (n + 1) + A217155 (n + 1)).toNat

end

end A300185.P9837597994611800200

/-! ## A300185.P476429206982915866

`A244735(eq[A016415(n), A165476(n)])`
-/

namespace A300185.P476429206982915866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016415 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165476 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244735 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A300185.P476429206982915866

/-! ## A300185.P16564461973198088698

`A010060(A248470(n)+A082797(n+1))`
-/

namespace A300185.P16564461973198088698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (A248470 n + A082797 (n + 1)).toNat

end

end A300185.P16564461973198088698

/-! ## A300185.P15373141079291768462

`A117872(A300671(n))`
-/

namespace A300185.P15373141079291768462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117872 (A300671 n).toNat

end

end A300185.P15373141079291768462

/-!
# A300186: Largest digit sum among all n-digit primes.

The programs for A300186, there is no canonical definition to state claims against.
-/

/-! ## A300186.P17396612001202930130

`∑{digits}[A069661(1+n), #]`
-/

namespace A300186.P17396612001202930130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069661 (1 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A300186.P17396612001202930130

/-! ## A300186.P8844091048087446038

`∑{digits}[A069662(n+1), #]`
-/

namespace A300186.P8844091048087446038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069662 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A300186.P8844091048087446038

/-! ## A300186.P380272085483235822

`A008591(n)+dr(A069661(n+1))`
-/

namespace A300186.P380272085483235822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008591 n + (SequenceMachineLib.digitalRoot (A069661 (n + 1)) : ℤ)

end

end A300186.P380272085483235822

/-! ## A300186.P5858511108434993203

`A008591(n)+dr(A069662(n+1))`
-/

namespace A300186.P5858511108434993203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008591 n + (SequenceMachineLib.digitalRoot (A069662 (n + 1)) : ℤ)

end

end A300186.P5858511108434993203

/-! ## A300186.P13580439838750969611

`A004236(A335457(n+1))`
-/

namespace A300186.P13580439838750969611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004236 (A335457 (n + 1)).toNat

end

end A300186.P13580439838750969611

/-!
# A300187: a(n) = n! * [x^n] Product_{k>=1} (1 + x^k)^(n/k).

The programs for A300187, there is no canonical definition to state claims against.
-/

/-! ## A300187.P14781361658192307515

`A330338(2^C(n, 2))`
-/

namespace A300187.P14781361658192307515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330338 (2 ^ Nat.choose n 2)

end

end A300187.P14781361658192307515

/-!
# A300188: a(n) = n! * [x^n] Product_{k>=1} 1/(1 + x^k)^(n/k).

The programs for A300188, there is no canonical definition to state claims against.
-/

/-! ## A300188.P9474761684322149763

`(-1)^n*A131010(A091695(n))`
-/

namespace A300188.P9474761684322149763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A131010 (A091695 n).toNat

end

end A300188.P9474761684322149763

/-!
# A300190: Number of solutions to 1 +- 2 +- 3 +- ... +- n == 0 (mod n).

The programs for A300190, the canonical program `A300190.P933532925247640132` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A300190 has offset 1).

The definition of A300190 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 341 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A300190.P17722652470094577547

`A276283(n)%3*A000016(n+1)`
-/

namespace A300190.P17722652470094577547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A276283 n) 3 * A000016 (n + 1)

end

end A300190.P17722652470094577547

namespace A300190

/-- `A276283(n)%3*A000016(n+1)` -/
def P17722652470094577547.Spec : Prop :=
  ∀ n, P17722652470094577547.a n = A300190 (n + 1)

end A300190

/-! ## A300190.P933532925247640132

`(A096010(n+1)-1)*Δ[A098180(n)]`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A300190

/-- `(A096010(n+1)-1)*Δ[A098180(n)]` -/
def P933532925247640132.Spec : Prop :=
  ∀ n, P933532925247640132.a n = A300190 (n + 1)

theorem P933532925247640132.correct : P933532925247640132.Spec := by
  intro n
  simp only [A300190, Nat.add_sub_cancel]

end A300190

/-! ## A300190.P2662016848996026508

`abs((1-A096010(n+1))*(1-A010873(n)))`
-/

namespace A300190.P2662016848996026508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(1 - A096010 (n + 1)) * (1 - A010873 n)|

end

end A300190.P2662016848996026508

namespace A300190

/-- `abs((1-A096010(n+1))*(1-A010873(n)))` -/
def P2662016848996026508.Spec : Prop :=
  ∀ n, P2662016848996026508.a n = A300190 (n + 1)

end A300190

/-! ## A300190.P18020142411230548395

`Δ[A098180(n)]*A053633(∑[n])`
-/

namespace A300190.P18020142411230548395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098180 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A053633 (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A300190.P18020142411230548395

namespace A300190

/-- `Δ[A098180(n)]*A053633(∑[n])` -/
def P18020142411230548395.Spec : Prop :=
  ∀ n, P18020142411230548395.a n = A300190 (n + 1)

end A300190

/-! ## A300190.P7634889004891801829

`and(1-n, A000034(n))*A053633(∑[n])`
-/

namespace A300190.P7634889004891801829
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (1 - (n : ℤ)) (A000034 n) * A053633 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A300190.P7634889004891801829

namespace A300190

/-- `and(1-n, A000034(n))*A053633(∑[n])` -/
def P7634889004891801829.Spec : Prop :=
  ∀ n, P7634889004891801829.a n = A300190 (n + 1)

end A300190

/-! ## A300190.P16415996582817457469

`A300328(∑[n]+1)/2`
-/

namespace A300190.P16415996582817457469
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A300328 (∑ j ∈ Finset.range (n + 1), f1 j + 1) : ℚ) / 2

end

end A300190.P16415996582817457469

namespace A300190

/-- `A300328(∑[n]+1)/2` -/
def P16415996582817457469.Spec : Prop :=
  ∀ n, P16415996582817457469.a n = (A300190 (n + 1) : ℚ)

end A300190

/-!
# A300192: Triangle read by rows: row n consists of the coefficients of the expansion of the polynomial (x^2 + 2*x + 1)^n + (x^2 - 1)*(x + 1)^n.

The programs for A300192, there is no canonical definition to state claims against.
-/

/-! ## A300192.P8591385550798663620

`A037835(n+1)*A337565(A000217(n))`
-/

namespace A300192.P8591385550798663620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037835 (n + 1) * A337565 (A000217 n).toNat

end

end A300192.P8591385550798663620

/-! ## A300192.P16968737327968704921

`A220354(A221715(2*n+5))*A331436(n+2)`
-/

namespace A300192.P16968737327968704921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220354 (A221715 (2 * n + 5)).toNat * A331436 (n + 2)

end

end A300192.P16968737327968704921

/-!
# A300193: Pseudo-safe-primes: numbers n = 2m+1 with 2^m congruent to n+1 or 3n-1 modulo m*n, but m composite.

The programs for A300193, there is no canonical definition to state claims against.
-/

/-! ## A300193.P1603453934052896237

`p?[2*A001567(n+1)+1]`
-/

namespace A300193.P1603453934052896237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001567 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A300193.P1603453934052896237

/-! ## A300193.P5720134838092407090

`p?[2*∩[A020136(n+1), A020137(n+1)]+1]`
-/

namespace A300193.P5720134838092407090
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020136 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020137 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∧ ∃ j, f3 j = (x : ℤ)) n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A300193.P5720134838092407090

/-! ## A300193.P15924858822114850696

`p?[2*(A300101(n+1)*A306413(n+1)+1)+1]`
-/

namespace A300193.P15924858822114850696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A300101 (n + 1) * A306413 (n + 1) + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A300193.P15924858822114850696

