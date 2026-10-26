import SequenceMachineLib
import Mathlib.Tactic
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
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A299600: Number of nX6 0..1 arrays with every element equal to 2, 3, 4, 5, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A299600, there is no canonical definition to state claims against.
-/

/-! ## A299600.P6716182348340195417

`A299602(A374007(n+1))`
-/

namespace A299600.P6716182348340195417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299602 (A374007 (n + 1)).toNat

end

end A299600.P6716182348340195417

/-! ## A299600.P17090025048612231150

`A299602(A000124(n+5)+5)`
-/

namespace A299600.P17090025048612231150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299602 (A000124 (n + 5) + 5).toNat

end

end A299600.P17090025048612231150

/-! ## A299600.P2799756976237620026

`A299602(eq[6, A130270(n+1)])`
-/

namespace A299600.P2799756976237620026
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130270 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299602 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A299600.P2799756976237620026

/-! ## A299600.P17079851754265405131

`A299602(eq[7, A131818(n+1)])`
-/

namespace A299600.P17079851754265405131
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299602 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A299600.P17079851754265405131

/-! ## A299600.P13816625116870242259

`A299602(Δ[A023545(n+1)]+10)`
-/

namespace A299600.P13816625116870242259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299602 (f1 (n + 1) - f1 n + 10).toNat

end

end A299600.P13816625116870242259

/-!
# A299601: Number of n X 7 0..1 arrays with every element equal to 2, 3, 4, 5, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A299601, there is no canonical definition to state claims against.
-/

/-! ## A299601.P1793850097602492196

`A299602(A374008(n+1))`
-/

namespace A299601.P1793850097602492196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299602 (A374008 (n + 1)).toNat

end

end A299601.P1793850097602492196

/-! ## A299601.P7896776096428933867

`A299602(A000217(n+6)+7)`
-/

namespace A299601.P7896776096428933867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299602 (A000217 (n + 6) + 7).toNat

end

end A299601.P7896776096428933867

/-! ## A299601.P16039962828076973873

`A299602(eq[8, A131818(n+1)])`
-/

namespace A299601.P16039962828076973873
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299602 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A299601.P16039962828076973873

/-! ## A299601.P1039792274782117501

`A299602(A055999(n+4))`
-/

namespace A299601.P1039792274782117501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299602 (A055999 (n + 4)).toNat

end

end A299601.P1039792274782117501

/-! ## A299601.P5827930487641330766

`A299602(eq[4, A219347(n)])`
-/

namespace A299601.P5827930487641330766
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299602 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A299601.P5827930487641330766

/-!
# A299602: T(n,k)=Number of nXk 0..1 arrays with every element equal to 2, 3, 4, 5, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A299602, there is no canonical definition to state claims against.
-/

/-! ## A299602.P2962163260996969770

`A298629(n+1)+A121262(A228900(n))`
-/

namespace A299602.P2962163260996969770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298629 (n + 1) + A121262 (A228900 n).toNat

end

end A299602.P2962163260996969770

/-! ## A299602.P11261524127339212813

`A299554(n+1)-A065040(A296548(n))`
-/

namespace A299602.P11261524127339212813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299554 (n + 1) - A065040 (A296548 n).toNat

end

end A299602.P11261524127339212813

/-! ## A299602.P5216703937599158533

`or(A065040(n), A127288(A298461(n+1)))`
-/

namespace A299602.P5216703937599158533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A065040 n) (A127288 (A298461 (n + 1)).toNat)

end

end A299602.P5216703937599158533

/-! ## A299602.P16966559775458293410

`A297978(n+1)+A285097(A317525(n+1))`
-/

namespace A299602.P16966559775458293410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297978 (n + 1) + A285097 (A317525 (n + 1)).toNat

end

end A299602.P16966559775458293410

/-! ## A299602.P237977989233497321

`A300175(n+1)-A235943(A297978(n+1))`
-/

namespace A299602.P237977989233497321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300175 (n + 1) - A235943 (A297978 (n + 1)).toNat

end

end A299602.P237977989233497321

/-!
# A299603: Number of n X n 0..1 arrays with every element equal to 1, 2, 3, 6, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A299603, there is no canonical definition to state claims against.
-/

/-! ## A299603.P5816474480962669096

`A299607(∑[4*n]+1)`
-/

namespace A299603.P5816474480962669096
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299607 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A299603.P5816474480962669096

/-! ## A299603.P15012726014488370162

`record[A299607(Δ[A235355(n)])]`
-/

namespace A299603.P15012726014488370162
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299607 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A299603.P15012726014488370162

/-! ## A299603.P262011527850705172

`record[A299607(A330613(n+1))]`
-/

namespace A299603.P262011527850705172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299607 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A299603.P262011527850705172

/-! ## A299603.P7368328564600454677

`A299607(A001844(n))+char[23]`
-/

namespace A299603.P7368328564600454677
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  23

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299607 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A299603.P7368328564600454677

/-! ## A299603.P11813237549133315545

`record[A299607(A001844(∏{digits}[n, #]))]`
-/

namespace A299603.P11813237549133315545
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299607 (A001844 ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x).prod).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A299603.P11813237549133315545

/-!
# A299604: Number of nX5 0..1 arrays with every element equal to 1, 2, 3, 6, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A299604, there is no canonical definition to state claims against.
-/

/-! ## A299604.P4857578233235962230

`A299607(∑[n+4]+11)`
-/

namespace A299604.P4857578233235962230
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299607 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A299604.P4857578233235962230

/-! ## A299604.P2082089528402064893

`A299607(A167499(n+3))+char[20]`
-/

namespace A299604.P2082089528402064893
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  20

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299607 (A167499 (n + 3)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A299604.P2082089528402064893

/-! ## A299604.P282353434351068750

`or(A025469(n), A299607(A167499(n+3)))`
-/

namespace A299604.P282353434351068750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A025469 n) (A299607 (A167499 (n + 3)).toNat)

end

end A299604.P282353434351068750

/-! ## A299604.P4347495330441729086

`or(A235145(n), A299607(A167499(n+3)))`
-/

namespace A299604.P4347495330441729086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A235145 n) (A299607 (A167499 (n + 3)).toNat)

end

end A299604.P4347495330441729086

/-! ## A299604.P2515045335347389066

`A007318(C(2, n))*A299607(A167499(n+3))`
-/

namespace A299604.P2515045335347389066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A299607 (A167499 (n + 3)).toNat

end

end A299604.P2515045335347389066

/-!
# A299605: Number of nX6 0..1 arrays with every element equal to 1, 2, 3, 6, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A299605, there is no canonical definition to state claims against.
-/

/-! ## A299605.P17466847215546274209

`A299607(A374007(n+1))`
-/

namespace A299605.P17466847215546274209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299607 (A374007 (n + 1)).toNat

end

end A299605.P17466847215546274209

/-! ## A299605.P899834165344931693

`A299607(A056115(n)+21)`
-/

namespace A299605.P899834165344931693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299607 (A056115 n + 21).toNat

end

end A299605.P899834165344931693

/-! ## A299605.P11211109448742842149

`A299607(∑[A020710(n)]+16)`
-/

namespace A299605.P11211109448742842149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020710 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299607 (∑ j ∈ Finset.range (n + 1), f1 j + 16).toNat

end

end A299605.P11211109448742842149

/-! ## A299605.P16266608306214681275

`A299607(A167499(n+4)+1)`
-/

namespace A299605.P16266608306214681275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299607 (A167499 (n + 4) + 1).toNat

end

end A299605.P16266608306214681275

/-! ## A299605.P16132279037524140536

`A299607(A167487(n+4)-1)`
-/

namespace A299605.P16132279037524140536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299607 (A167487 (n + 4) - 1).toNat

end

end A299605.P16132279037524140536

/-!
# A299606: Number of nX7 0..1 arrays with every element equal to 1, 2, 3, 6, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A299606, there is no canonical definition to state claims against.
-/

/-! ## A299606.P15205432439504556533

`A299607(A374008(n+1))`
-/

namespace A299606.P15205432439504556533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299607 (A374008 (n + 1)).toNat

end

end A299606.P15205432439504556533

/-! ## A299606.P9179256543523701664

`A299607(A167487(n+5))`
-/

namespace A299606.P9179256543523701664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299607 (A167487 (n + 5)).toNat

end

end A299606.P9179256543523701664

/-! ## A299606.P4847362462425689851

`A299607(A056119(n)+28)`
-/

namespace A299606.P4847362462425689851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299607 (A056119 n + 28).toNat

end

end A299606.P4847362462425689851

/-! ## A299606.P8329935283358490180

`A299607(A167499(n+5)+2)`
-/

namespace A299606.P8329935283358490180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299607 (A167499 (n + 5) + 2).toNat

end

end A299606.P8329935283358490180

/-! ## A299606.P3021965094221894991

`A299607(A000124(n+6)+6)`
-/

namespace A299606.P3021965094221894991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299607 (A000124 (n + 6) + 6).toNat

end

end A299606.P3021965094221894991

/-!
# A299607: T(n,k)=Number of nXk 0..1 arrays with every element equal to 1, 2, 3, 6, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A299607, there is no canonical definition to state claims against.
-/

/-! ## A299607.P602735212855266552

`A298653(n+1)+A235145(A177944(n))`
-/

namespace A299607.P602735212855266552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298653 (n + 1) + A235145 (A177944 n).toNat

end

end A299607.P602735212855266552

/-! ## A299607.P9315933982075013206

`A298653(n+1)+A046660(A220054(n))`
-/

namespace A299607.P9315933982075013206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298653 (n + 1) + A046660 (A220054 n).toNat

end

end A299607.P9315933982075013206

/-! ## A299607.P14012550214452290393

`A298653(n+1)+A025469(A138381(n+1))`
-/

namespace A299607.P14012550214452290393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298653 (n + 1) + A025469 (A138381 (n + 1)).toNat

end

end A299607.P14012550214452290393

/-! ## A299607.P7056138492043774119

`A298653(n+1)+A025469(A080510(n+1))`
-/

namespace A299607.P7056138492043774119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298653 (n + 1) + A025469 (A080510 (n + 1)).toNat

end

end A299607.P7056138492043774119

/-! ## A299607.P11896752862819903390

`or(A235145(A220054(n+2)), A298653(n+1))`
-/

namespace A299607.P11896752862819903390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A235145 (A220054 (n + 2)).toNat) (A298653 (n + 1))

end

end A299607.P11896752862819903390

/-!
# A299608: Number of n X n 0..1 arrays with every element equal to 1, 2, 4, 6, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A299608, there is no canonical definition to state claims against.
-/

/-! ## A299608.P10833743705009238708

`A299612(∑[4*n]+1)`
-/

namespace A299608.P10833743705009238708
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299612 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A299608.P10833743705009238708

/-! ## A299608.P6801034495373948823

`record[A299612(Δ[A235355(n)])]`
-/

namespace A299608.P6801034495373948823
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299612 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A299608.P6801034495373948823

/-! ## A299608.P8584017570033078388

`and(-1, A299612(A001844(n)))`
-/

namespace A299608.P8584017570033078388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A299612 (A001844 n).toNat)

end

end A299608.P8584017570033078388

/-! ## A299608.P13845846685722575373

`record[A003982(n)*A299612(n+1)]`
-/

namespace A299608.P13845846685722575373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A299612 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A299608.P13845846685722575373

/-! ## A299608.P17851158884404450789

`record[A214505(n)*A299612(n+1)]`
-/

namespace A299608.P17851158884404450789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214505 n * A299612 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A299608.P17851158884404450789

/-!
# A299609: Number of nX5 0..1 arrays with every element equal to 1, 2, 4, 6, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A299609, there is no canonical definition to state claims against.
-/

/-! ## A299609.P9528108819226348907

`A299612(A374005(n+1))`
-/

namespace A299609.P9528108819226348907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299612 (A374005 (n + 1)).toNat

end

end A299609.P9528108819226348907

/-! ## A299609.P12838627265013021196

`A299612(A155212(n)+13)`
-/

namespace A299609.P12838627265013021196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299612 (A155212 n + 13).toNat

end

end A299609.P12838627265013021196

/-! ## A299609.P5299617442635444220

`A299612(A056000(n)+15)`
-/

namespace A299609.P5299617442635444220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299612 (A056000 n + 15).toNat

end

end A299609.P5299617442635444220

/-! ## A299609.P8871940610898611945

`A299612(eq[7, A066657(n)])`
-/

namespace A299609.P8871940610898611945
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299612 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A299609.P8871940610898611945

/-! ## A299609.P3452532272058370214

`A299612(A166136(n+3)-1)`
-/

namespace A299609.P3452532272058370214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299612 (A166136 (n + 3) - 1).toNat

end

end A299609.P3452532272058370214

/-!
# A299610: Number of nX6 0..1 arrays with every element equal to 1, 2, 4, 6, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A299610, there is no canonical definition to state claims against.
-/

/-! ## A299610.P6873214315263342810

`A299612(∑[n+5]+16)`
-/

namespace A299610.P6873214315263342810
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299612 (∑ j ∈ Finset.range (n + 1), f1 j + 16)

end

end A299610.P6873214315263342810

/-! ## A299610.P12347702347714443822

`A299612(A000217(n+5)+6)+char[20]`
-/

namespace A299610.P12347702347714443822
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  20

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299612 (A000217 (n + 5) + 6).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A299610.P12347702347714443822

/-! ## A299610.P17506584392007544710

`A299612(A166136(n+4))+A010894(n+2)`
-/

namespace A299610.P17506584392007544710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299612 (A166136 (n + 4)).toNat + A010894 (n + 2 + 21)

end

end A299610.P17506584392007544710

/-! ## A299610.P8949062846357773799

`A006519(2*n+3)*A299612(A374007(n+1))`
-/

namespace A299610.P8949062846357773799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (2 * n + 3) * A299612 (A374007 (n + 1)).toNat

end

end A299610.P8949062846357773799

/-! ## A299610.P17505866298014955500

`A057427(2*(n+1))*A299612(A166136(n+4))`
-/

namespace A299610.P17505866298014955500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (2 * (n + 1)) * A299612 (A166136 (n + 4)).toNat

end

end A299610.P17505866298014955500

/-!
# A299611: Number of nX7 0..1 arrays with every element equal to 1, 2, 4, 6, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A299611, there is no canonical definition to state claims against.
-/

/-! ## A299611.P1055533606338582460

`A299612(A374008(n+1))`
-/

namespace A299611.P1055533606338582460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299612 (A374008 (n + 1)).toNat

end

end A299611.P1055533606338582460

/-! ## A299611.P1101310885938018816

`A299612(A056119(n)+28)`
-/

namespace A299611.P1101310885938018816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299612 (A056119 n + 28).toNat

end

end A299611.P1101310885938018816

/-! ## A299611.P91636139077783716

`A299612(eq[11, A066657(n)])`
-/

namespace A299611.P91636139077783716
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299612 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A299611.P91636139077783716

/-! ## A299611.P13988900177659515933

`A299612(A166136(n+5)+1)`
-/

namespace A299611.P13988900177659515933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299612 (A166136 (n + 5) + 1).toNat

end

end A299611.P13988900177659515933

/-! ## A299611.P3324568845636261946

`A299612(A167614(n+5)+4)`
-/

namespace A299611.P3324568845636261946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299612 (A167614 (n + 5) + 4).toNat

end

end A299611.P3324568845636261946

/-!
# A299612: T(n,k)=Number of nXk 0..1 arrays with every element equal to 1, 2, 4, 6, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A299612, there is no canonical definition to state claims against.
-/

/-! ## A299612.P8704290785835375500

`A298660(n+1)-A275966(A094553(n+1))`
-/

namespace A299612.P8704290785835375500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298660 (n + 1) - A275966 (A094553 (n + 1)).toNat

end

end A299612.P8704290785835375500

/-! ## A299612.P9675244682617424008

`A298660(n+1)+A275966(2*A094553(n+1))`
-/

namespace A299612.P9675244682617424008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298660 (n + 1) + A275966 (2 * A094553 (n + 1)).toNat

end

end A299612.P9675244682617424008

/-! ## A299612.P631999242070200786

`or(A077655(A301900(n+1)), A298660(n+1))`
-/

namespace A299612.P631999242070200786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A077655 (A301900 (n + 1)).toNat) (A298660 (n + 1))

end

end A299612.P631999242070200786

/-! ## A299612.P18053442439406698252

`or(a(A010894(n)), A298660(n+1))` with `a(0)=0`
-/

namespace A299612.P18053442439406698252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  Int.lor (a (A010894 (n + 21)).toNat) (A298660 (n + 1))

end

end A299612.P18053442439406698252

/-! ## A299612.P4407274711816525895

`A298660(n+1)+A002265(A010894(n))`
-/

namespace A299612.P4407274711816525895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298660 (n + 1) + A002265 (A010894 (n + 21)).toNat

end

end A299612.P4407274711816525895

/-!
# A299634: Solution (a(n)) of the system of 3 complementary equations in Comments.

The programs for A299634, there is no canonical definition to state claims against.
-/

/-! ## A299634.P16627887103544846866

`A299636(n)-A299635(n)`
-/

namespace A299634.P16627887103544846866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299636 n - A299635 n

end

end A299634.P16627887103544846866

/-! ## A299634.P16165417359843283795

`A299636(n)+-A299635(n)%A092404(3*n+2)`
-/

namespace A299634.P16165417359843283795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299636 n + Int.tmod (-A299635 n) (A092404 (3 * n + 2))

end

end A299634.P16165417359843283795

/-! ## A299634.P656453281697147939

`A296484(n)+A299636(n)%(A299635(n)+A296484(n))`
-/

namespace A299634.P656453281697147939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296484 n + Int.tmod (A299636 n) (A299635 n + A296484 n)

end

end A299634.P656453281697147939

/-! ## A299634.P1441109983079141719

`(A299636(n)+A296502(n))%(A299635(n)+A296502(n))`
-/

namespace A299634.P1441109983079141719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A299636 n + A296502 n) (A299635 n + A296502 n)

end

end A299634.P1441109983079141719

/-! ## A299634.P8972426140641597413

`(A299636(n)+A297149(n))%(A299635(n)+A297149(n))`
-/

namespace A299634.P8972426140641597413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A299636 n + A297149 n) (A299635 n + A297149 n)

end

end A299634.P8972426140641597413

/-!
# A299635: Solution (b(n)) of the system of 3 complementary equations in Comments.

The programs for A299635, there is no canonical definition to state claims against.
-/

/-! ## A299635.P7764781101003654851

`A299636(n)-A299634(n)`
-/

namespace A299635.P7764781101003654851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299636 n - A299634 n

end

end A299635.P7764781101003654851

/-! ## A299635.P8019042460460384184

`floor(A299634(n+1)/2)`
-/

namespace A299635.P8019042460460384184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A299634 (n + 1) : ℚ) / 2⌋

end

end A299635.P8019042460460384184

/-! ## A299635.P12110396103858657734

`A004526(A299634(n+1))`
-/

namespace A299635.P12110396103858657734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A299634 (n + 1)).toNat

end

end A299635.P12110396103858657734

/-! ## A299635.P538045032266638458

`ceil((A299634(n+1)-A057427(n))/2)`
-/

namespace A299635.P538045032266638458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A299634 (n + 1) - A057427 n : ℚ) / 2⌉

end

end A299635.P538045032266638458

/-! ## A299635.P12958360483671913965

`ceil((A299634(n+1)-abs(A106400(n)))/2)`
-/

namespace A299635.P12958360483671913965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A299634 (n + 1) - |A106400 n| : ℚ) / 2⌉

end

end A299635.P12958360483671913965

/-!
# A299636: Solution (c(n)) of the system of 3 complementary equations in Comments.

The programs for A299636, there is no canonical definition to state claims against.
-/

/-! ## A299636.P4360114374006775606

`A299635(n)+A299634(n)`
-/

namespace A299636.P4360114374006775606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299635 n + A299634 n

end

end A299636.P4360114374006775606

/-! ## A299636.P16748921298904655925

`A299634(n)-(A000035(2*n)-A299635(n))`
-/

namespace A299636.P16748921298904655925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299634 n - (A000035 (2 * n) - A299635 n)

end

end A299636.P16748921298904655925

/-! ## A299636.P13275621218515094554

`A299634(n)-(val(A296502(n), 3)-A299635(n))`
-/

namespace A299636.P13275621218515094554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299634 n - ((SequenceMachineLib.valuation (A296502 n).toNat 3 : ℤ) - A299635 n)

end

end A299636.P13275621218515094554

/-! ## A299636.P18225689992246289001

`floor(A299634(n)+A299634(n+1)/2)`
-/

namespace A299636.P18225689992246289001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A299634 n : ℚ) + (A299634 (n + 1) : ℚ) / 2⌋

end

end A299636.P18225689992246289001

/-! ## A299636.P5708439348836552256

`A299634(n)+A123108(A299634(n+1))`
-/

namespace A299636.P5708439348836552256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299634 n + A123108 (A299634 (n + 1)).toNat

end

end A299636.P5708439348836552256

/-! ## A299636.P1609595734690774156

`A299634(n)-(A000007(A029025(n))-A299635(n))`
-/

namespace A299636.P1609595734690774156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299634 n - (A000007 (A029025 n).toNat - A299635 n)

end

end A299636.P1609595734690774156

/-!
# A299637: Solution (b(n)) of the system of 5 complementary equations in Comments.

The programs for A299637, there is no canonical definition to state claims against.
-/

/-! ## A299637.P16435843165973151576

`A002264(A299409(n)-A299638(n))`
-/

namespace A299637.P16435843165973151576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A299409 n - A299638 n).toNat

end

end A299637.P16435843165973151576

/-! ## A299637.P10771298145673900738

`A008619(A008619(A299409(n)-7))`
-/

namespace A299637.P10771298145673900738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A008619 (A299409 n - 7).toNat).toNat

end

end A299637.P10771298145673900738

/-! ## A299637.P10628465877927787470

`A002265(A299409(n)-1)`
-/

namespace A299637.P10628465877927787470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A299409 n - 1).toNat

end

end A299637.P10628465877927787470

/-! ## A299637.P13949516840079148970

`A110655(A299409(n)-4)`
-/

namespace A299637.P13949516840079148970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110655 (A299409 n - 4).toNat

end

end A299637.P13949516840079148970

/-! ## A299637.P8880647190866412967

`A008621(A299409(n)-5)`
-/

namespace A299637.P8880647190866412967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (A299409 n - 5).toNat

end

end A299637.P8880647190866412967

/-! ## A299637.P2656343156874349319

`A110654(A110654(A299409(n))-2)`
-/

namespace A299637.P2656343156874349319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A110654 (A299409 n).toNat - 2).toNat

end

end A299637.P2656343156874349319

/-!
# A299638: Solution (c(n)) of the system of 5 complementary equations in Comments.

The programs for A299638, there is no canonical definition to state claims against.
-/

/-! ## A299638.P18073208776647514373

`A008621(A299409(n))`
-/

namespace A299638.P18073208776647514373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (A299409 n).toNat

end

end A299638.P18073208776647514373

/-! ## A299638.P8957204710983653402

`A110655(A299409(n)+1)`
-/

namespace A299638.P8957204710983653402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110655 (A299409 n + 1).toNat

end

end A299638.P8957204710983653402

/-! ## A299638.P7331645454174366981

`A226782(or(3, A299409(n)))`
-/

namespace A299638.P7331645454174366981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226782 (Int.lor 3 (A299409 n)).toNat

end

end A299638.P7331645454174366981

/-! ## A299638.P12851234031396333528

`A110654(A110654(A299409(n)+1))`
-/

namespace A299638.P12851234031396333528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A110654 (A299409 n + 1).toNat).toNat

end

end A299638.P12851234031396333528

/-! ## A299638.P6231708327267472721

`A008619(A008619(A299409(n))-1)`
-/

namespace A299638.P6231708327267472721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A008619 (A299409 n).toNat - 1).toNat

end

end A299638.P6231708327267472721

/-! ## A299638.P9339719141933901826

`A110654(A110654(or(1, A299409(n))))`
-/

namespace A299638.P9339719141933901826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A110654 (Int.lor 1 (A299409 n)).toNat).toNat

end

end A299638.P9339719141933901826

/-! ## A299638.P8939588398875498765

`A299637(n)+A000010(A001511(A299409(n)))`
-/

namespace A299638.P8939588398875498765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299637 n + A000010 (A001511 (A299409 n).toNat).toNat

end

end A299638.P8939588398875498765

/-! ## A299638.P10398690989136723601

`A008619(A004524(A299409(n))%A299409(n))`
-/

namespace A299638.P10398690989136723601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (Int.tmod (A004524 (A299409 n).toNat) (A299409 n)).toNat

end

end A299638.P10398690989136723601

/-! ## A299638.P10536820209371323173

`A081753(3*A299409(n))`
-/

namespace A299638.P10536820209371323173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081753 (3 * A299409 n).toNat

end

end A299638.P10536820209371323173

/-!
# A299640: a(0) = 0, and for n > 0, (a(n)) gives the indices n for which d(n) < d(k) for k < n, where d is the difference sequence of (cos k + sin k).

The programs for A299640, there is no canonical definition to state claims against.
-/

/-! ## A299640.P9719218259835867740

`record[A240853(A185215(n))]`
-/

namespace A299640.P9719218259835867740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240853 (A185215 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A299640.P9719218259835867740

/-!
# A299641: Solution (d(n)) of the system of 5 complementary equations in Comments.

The programs for A299641, the canonical program `A299641.P12124779047206357815` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A299641 has offset 0).

The definition of A299641 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A299641.P12124779047206357815

`round((17*n+16)/4)`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A299641

/-- `round((17*n+16)/4)` -/
def P12124779047206357815.Spec : Prop :=
  ∀ n, P12124779047206357815.a n = A299641 n

theorem P12124779047206357815.correct : P12124779047206357815.Spec := by
  intro n
  simp only [A299641]

end A299641

/-! ## A299641.P6648006120827539845

`∑[gcd(4, n)%3+3]`
-/

namespace A299641.P6648006120827539845
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 4 n % 3 + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A299641.P6648006120827539845

namespace A299641

/-- `∑[gcd(4, n)%3+3]` -/
def P6648006120827539845.Spec : Prop :=
  ∀ n, (P6648006120827539845.a n : ℤ) = A299641 n

end A299641

/-! ## A299641.P4506689157126014404

`a(n-4)+17` with `a(0)=4, a(1)=8, a(2)=13, a(3)=17`
-/

namespace A299641.P4506689157126014404
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [4, 8, 13, 17] fun n a =>
  a (n - 4) + 17

end

end A299641.P4506689157126014404

namespace A299641

/-- `a(n-4)+17` -/
def P4506689157126014404.Spec : Prop :=
  ∀ n, (P4506689157126014404.a n : ℤ) = A299641 n

end A299641

/-! ## A299641.P7035101440899681825

`∑[abs(a(n-4))]` with `a(0)=4, a(1)=4, a(2)=5, a(3)=4`
-/

namespace A299641.P7035101440899681825
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [4, 4, 5, 4] fun n f1 =>
  f1 (n - 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A299641.P7035101440899681825

namespace A299641

/-- `∑[abs(a(n-4))]` -/
def P7035101440899681825.Spec : Prop :=
  ∀ n, (P7035101440899681825.a n : ℤ) = A299641 n

end A299641

/-! ## A299641.P7208211334316397848

`∑[dr(a(n-4))]` with `a(0)=4, a(1)=4, a(2)=5, a(3)=4`
-/

namespace A299641.P7208211334316397848
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [4, 4, 5, 4] fun n f1 =>
  SequenceMachineLib.digitalRoot (f1 (n - 4) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A299641.P7208211334316397848

namespace A299641

/-- `∑[dr(a(n-4))]` -/
def P7208211334316397848.Spec : Prop :=
  ∀ n, (P7208211334316397848.a n : ℤ) = A299641 n

end A299641

/-! ## A299641.P7502504631168350155

`∑[floor(a(n-4))]` with `a(0)=4, a(1)=4, a(2)=5, a(3)=4`

`floor` is left out, it is the identity on integers.
-/

namespace A299641.P7502504631168350155
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [4, 4, 5, 4] fun n f1 =>
  f1 (n - 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A299641.P7502504631168350155

namespace A299641

/-- `∑[floor(a(n-4))]` -/
def P7502504631168350155.Spec : Prop :=
  ∀ n, (P7502504631168350155.a n : ℤ) = A299641 n

end A299641

/-! ## A299641.P12150269041152198385

`∑[4%(n%4+1)+4]`
-/

namespace A299641.P12150269041152198385
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 % (n % 4 + 1) + 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A299641.P12150269041152198385

namespace A299641

/-- `∑[4%(n%4+1)+4]` -/
def P12150269041152198385.Spec : Prop :=
  ∀ n, (P12150269041152198385.a n : ℤ) = A299641 n

end A299641

/-! ## A299641.P4855131644989356325

`∑[4-∑[n-∑[n]]%2]`
-/

namespace A299641.P4855131644989356325
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f3 j : ℕ) : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 - Int.tmod (∑ j ∈ Finset.range (n + 1), f2 j) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A299641.P4855131644989356325

namespace A299641

/-- `∑[4-∑[n-∑[n]]%2]` -/
def P4855131644989356325.Spec : Prop :=
  ∀ n, P4855131644989356325.a n = A299641 n

end A299641

/-! ## A299641.P16064106975056210826

`∑[gcd(2-n², ∑[n+1])+3]`
-/

namespace A299641.P16064106975056210826
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (2 - (n ^ 2 : ℤ)) ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A299641.P16064106975056210826

namespace A299641

/-- `∑[gcd(2-n², ∑[n+1])+3]` -/
def P16064106975056210826.Spec : Prop :=
  ∀ n, (P16064106975056210826.a n : ℤ) = A299641 n

end A299641

/-! ## A299641.P1035837645241720657

`∑[2*a(n-4)-a(n-4)]` with `a(0)=4, a(1)=4, a(2)=5, a(3)=4`
-/

namespace A299641.P1035837645241720657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [4, 4, 5, 4] fun n f1 =>
  2 * f1 (n - 4) - f1 (n - 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A299641.P1035837645241720657

namespace A299641

/-- `∑[2*a(n-4)-a(n-4)]` -/
def P1035837645241720657.Spec : Prop :=
  ∀ n, P1035837645241720657.a n = A299641 n

end A299641

/-! ## A299641.P847784897094565498

`∑[a(n-4)/gcd(3, a(n-1))]` with `a(0)=4, a(1)=4, a(2)=5, a(3)=4`
-/

namespace A299641.P847784897094565498
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [4, 4, 5, 4] fun n f1 =>
  f1 (n - 4) / (Int.gcd 3 (SequenceMachineLib.roundAway (f1 (n - 1))) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A299641.P847784897094565498

namespace A299641

/-- `∑[a(n-4)/gcd(3, a(n-1))]` -/
def P847784897094565498.Spec : Prop :=
  ∀ n, P847784897094565498.a n = (A299641 n : ℚ)

end A299641

/-! ## A299641.P11865513129420809293

`∑[gcd(a(n-4)²², a(n-4))]` with `a(0)=4, a(1)=4, a(2)=5, a(3)=4`
-/

namespace A299641.P11865513129420809293
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [4, 4, 5, 4] fun n f1 =>
  Nat.gcd ((f1 (n - 4) ^ 2) ^ 2) (f1 (n - 4))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A299641.P11865513129420809293

namespace A299641

/-- `∑[gcd(a(n-4)²², a(n-4))]` -/
def P11865513129420809293.Spec : Prop :=
  ∀ n, (P11865513129420809293.a n : ℤ) = A299641 n

end A299641

/-! ## A299641.P6561007066606473770

`∑[5-A152822(n)]`
-/

namespace A299641.P6561007066606473770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 - A152822 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A299641.P6561007066606473770

namespace A299641

/-- `∑[5-A152822(n)]` -/
def P6561007066606473770.Spec : Prop :=
  ∀ n, P6561007066606473770.a n = A299641 n

end A299641

/-! ## A299641.P2988431691828561473

`∑[A186181(n)+2]+1`
-/

namespace A299641.P2988431691828561473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186181 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A299641.P2988431691828561473

namespace A299641

/-- `∑[A186181(n)+2]+1` -/
def P2988431691828561473.Spec : Prop :=
  ∀ n, P2988431691828561473.a n = A299641 n

end A299641

/-! ## A299641.P1966824751082203271

`∑[A236398(n+1)+3]`
-/

namespace A299641.P1966824751082203271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236398 (n + 1) + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A299641.P1966824751082203271

namespace A299641

/-- `∑[A236398(n+1)+3]` -/
def P1966824751082203271.Spec : Prop :=
  ∀ n, P1966824751082203271.a n = A299641 n

end A299641

/-! ## A299641.P12307216202080606233

`∑[A121262(n+2)+4]`
-/

namespace A299641.P12307216202080606233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121262 (n + 2) + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A299641.P12307216202080606233

namespace A299641

/-- `∑[A121262(n+2)+4]` -/
def P12307216202080606233.Spec : Prop :=
  ∀ n, P12307216202080606233.a n = A299641 n

end A299641

/-! ## A299641.P6298722949381027531

`∑[5-A166486(n+2)]`
-/

namespace A299641.P6298722949381027531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 - A166486 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A299641.P6298722949381027531

namespace A299641

/-- `∑[5-A166486(n+2)]` -/
def P6298722949381027531.Spec : Prop :=
  ∀ n, P6298722949381027531.a n = A299641 n

end A299641

/-! ## A299641.P11045906820280350352

`∑[A249547(n)%2+4]`
-/

namespace A299641.P11045906820280350352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A249547 n) 2 + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A299641.P11045906820280350352

namespace A299641

/-- `∑[A249547(n)%2+4]` -/
def P11045906820280350352.Spec : Prop :=
  ∀ n, P11045906820280350352.a n = A299641 n

end A299641

/-! ## A299641.P1466790082792757955

`A016969(n)-A047298(n+1)`
-/

namespace A299641.P1466790082792757955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016969 n - A047298 (n + 1)

end

end A299641.P1466790082792757955

namespace A299641

/-- `A016969(n)-A047298(n+1)` -/
def P1466790082792757955.Spec : Prop :=
  ∀ n, P1466790082792757955.a n = A299641 n

end A299641

/-! ## A299641.P1123074605560112942

`A016957(n)-A047371(n+1)`
-/

namespace A299641.P1123074605560112942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016957 n - A047371 (n + 1)

end

end A299641.P1123074605560112942

namespace A299641

/-- `A016957(n)-A047371(n+1)` -/
def P1123074605560112942.Spec : Prop :=
  ∀ n, P1123074605560112942.a n = A299641 n

end A299641

/-!
# A299642: Numbers k such that 2^k + 5*k is a prime.

The programs for A299642, there is no canonical definition to state claims against.
-/

/-! ## A299642.P10314723752410249501

`lt[A329375(n+1), A329982(n+1)]`
-/

namespace A299642.P10314723752410249501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329375 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329982 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A299642.P10314723752410249501

/-! ## A299642.P7375049495840412452

`A272062(n+1)-A038573(A182922(n))`
-/

namespace A299642.P7375049495840412452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272062 (n + 1) - A038573 (A182922 n).toNat

end

end A299642.P7375049495840412452

/-! ## A299642.P13286450955205557426

`A272062(n+1)-A262681(A000110(n))`
-/

namespace A299642.P13286450955205557426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272062 (n + 1) - A262681 (A000110 n).toNat

end

end A299642.P13286450955205557426

/-! ## A299642.P4476256898521968649

`A272062(n+1)-A262681(A078707(n))`
-/

namespace A299642.P4476256898521968649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272062 (n + 1) - A262681 (A078707 n).toNat

end

end A299642.P4476256898521968649

/-! ## A299642.P5316529428048872085

`A272062(n+1)-A262681(A149151(n))`
-/

namespace A299642.P5316529428048872085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272062 (n + 1) - A262681 (A149151 n).toNat

end

end A299642.P5316529428048872085

/-!
# A299643: Primes of the form 2^k + 5*k.

The programs for A299643, there is no canonical definition to state claims against.
-/

/-! ## A299643.P11995009256964979950

`A297663(A299642(n+1))`
-/

namespace A299643.P11995009256964979950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297663 (A299642 (n + 1)).toNat

end

end A299643.P11995009256964979950

/-! ## A299643.P15553870696126666822

`A297663(lt[A329375(n+1), A329982(n+1)])`
-/

namespace A299643.P15553870696126666822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329375 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329982 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297663 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A299643.P15553870696126666822

/-!
# A299644: a(n) = prime(prime(n+1)) + prime(prime(n)).

The programs for A299644, the canonical program `A299644.P5470854347893814731` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A299644 has offset 1).

The definition of A299644 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(A000040(n+2))+A000040(A000040(n+1))` (program `A299644.P5470854347893814731`, by `A299644.P5470854347893814731.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A299644.P3252047608249761790

`A006450(n+2)+A006450(n+1)`
-/

namespace A299644.P3252047608249761790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006450 (n + 2) + A006450 (n + 1)

end

end A299644.P3252047608249761790

namespace A299644

/-- `A006450(n+2)+A006450(n+1)` -/
def P3252047608249761790.Spec : Prop :=
  ∀ n, P3252047608249761790.a n = A299644 (n + 1)

end A299644

/-! ## A299644.P5470854347893814731

`A000040(A000040(n+2))+A000040(A000040(n+1))`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A299644

/-- `A000040(A000040(n+2))+A000040(A000040(n+1))` -/
def P5470854347893814731.Spec : Prop :=
  ∀ n, P5470854347893814731.a n = A299644 (n + 1)

theorem P5470854347893814731.correct : P5470854347893814731.Spec := by
  intro n
  simp only [A299644, Nat.add_sub_cancel]

end A299644

/-! ## A299644.P10250252726194562745

`A175247(n+2)+A175247(n+3)`
-/

namespace A299644.P10250252726194562745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175247 (n + 2) + A175247 (n + 3)

end

end A299644.P10250252726194562745

namespace A299644

/-- `A175247(n+2)+A175247(n+3)` -/
def P10250252726194562745.Spec : Prop :=
  ∀ n, P10250252726194562745.a n = A299644 (n + 1)

end A299644

/-! ## A299644.P17558906532638394859

`A100484(A008578(n+2))+A073131(n+1)`
-/

namespace A299644.P17558906532638394859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100484 (A008578 (n + 2)).toNat + A073131 (n + 1)

end

end A299644.P17558906532638394859

namespace A299644

/-- `A100484(A008578(n+2))+A073131(n+1)` -/
def P17558906532638394859.Spec : Prop :=
  ∀ n, P17558906532638394859.a n = A299644 (n + 1)

end A299644

/-! ## A299644.P1309295891415360053

`A065091(A006093(n+1))+A006005(A065091(n+1))`
-/

namespace A299644.P1309295891415360053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (A006093 (n + 1)).toNat + A006005 (A065091 (n + 1)).toNat

end

end A299644.P1309295891415360053

namespace A299644

/-- `A065091(A006093(n+1))+A006005(A065091(n+1))` -/
def P1309295891415360053.Spec : Prop :=
  ∀ n, P1309295891415360053.a n = A299644 (n + 1)

end A299644

/-! ## A299644.P16417519897094585944

`A064988(A065091(n+1))+p?[A064988(n+1)]`
-/

namespace A299644.P16417519897094585944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064988 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064988 (A065091 (n + 1)).toNat + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A299644.P16417519897094585944

namespace A299644

/-- `A064988(A065091(n+1))+p?[A064988(n+1)]` -/
def P16417519897094585944.Spec : Prop :=
  ∀ n, P16417519897094585944.a n = A299644 (n + 1)

end A299644

/-! ## A299644.P10800654095205050979

`record[∑{p}[A116570(n), A000040(#)]]`
-/

namespace A299644.P10800654095205050979
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116570 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, A000040 p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A299644.P10800654095205050979

namespace A299644

/-- `record[∑{p}[A116570(n), A000040(#)]]` -/
def P10800654095205050979.Spec : Prop :=
  ∀ n, P10800654095205050979.a n = A299644 (n + 1)

end A299644

/-! ## A299644.P11136383458555614486

`∑{p}[A006094(n+1), A000040(#)]`
-/

namespace A299644.P11136383458555614486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006094 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A000040 p

end

end A299644.P11136383458555614486

namespace A299644

/-- `∑{p}[A006094(n+1), A000040(#)]` -/
def P11136383458555614486.Spec : Prop :=
  ∀ n, P11136383458555614486.a n = A299644 (n + 1)

end A299644

/-! ## A299644.P6066030248671733869

`∑{p}[A006094(n+1), A006005(#)]`
-/

namespace A299644.P6066030248671733869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006094 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A006005 p

end

end A299644.P6066030248671733869

namespace A299644

/-- `∑{p}[A006094(n+1), A006005(#)]` -/
def P6066030248671733869.Spec : Prop :=
  ∀ n, P6066030248671733869.a n = A299644 (n + 1)

end A299644

/-! ## A299644.P15795279076729615118

`∑{p}[A116570(2*n), A000040(#)]`
-/

namespace A299644.P15795279076729615118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116570 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A000040 p

end

end A299644.P15795279076729615118

namespace A299644

/-- `∑{p}[A116570(2*n), A000040(#)]` -/
def P15795279076729615118.Spec : Prop :=
  ∀ n, P15795279076729615118.a n = A299644 (n + 1)

end A299644

/-! ## A299644.P6496189452114292226

`∑{p}[sqrt(A166329(n+1)), A000040(#)]`
-/

namespace A299644.P6496189452114292226
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A166329 (n + 1) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, A000040 p

end

end A299644.P6496189452114292226

namespace A299644

/-- `∑{p}[sqrt(A166329(n+1)), A000040(#)]` -/
def P6496189452114292226.Spec : Prop :=
  ∀ n, P6496189452114292226.a n = A299644 (n + 1)

end A299644

/-! ## A299644.P8728559571341180537

`∑{p}[A033476(2*n+1), A000040(#)]`
-/

namespace A299644.P8728559571341180537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033476 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A000040 p

end

end A299644.P8728559571341180537

namespace A299644

/-- `∑{p}[A033476(2*n+1), A000040(#)]` -/
def P8728559571341180537.Spec : Prop :=
  ∀ n, P8728559571341180537.a n = A299644 (n + 1)

end A299644

/-! ## A299644.P419759438228639597

`∑{p}[A013637(A000040(n+2)), A000040(#)]`
-/

namespace A299644.P419759438228639597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013637 (A000040 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A000040 p

end

end A299644.P419759438228639597

namespace A299644

/-- `∑{p}[A013637(A000040(n+2)), A000040(#)]` -/
def P419759438228639597.Spec : Prop :=
  ∀ n, P419759438228639597.a n = A299644 (n + 1)

end A299644

/-!
# A299645: Numbers of the form m*(8*m + 5), where m is an integer.

The programs for A299645, the canonical program `A299645.P15618354668102227947` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A299645 has offset 1).

The definition of A299645 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A299645.P15092696834812527532

`(8*(n+1)*n-(2*(n+1)-1)*(-1)^(n+1)-1)/4`
-/

namespace A299645.P15092696834812527532
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((8 * (n + 1) * n : ℤ) - ((2 * (n + 1) : ℤ) - 1) * (-1) ^ (n + 1) - 1 : ℚ) / 4

end

end A299645.P15092696834812527532

namespace A299645

/-- `(8*(n+1)*n-(2*(n+1)-1)*(-1)^(n+1)-1)/4` -/
def P15092696834812527532.Spec : Prop :=
  ∀ n, P15092696834812527532.a n = (A299645 (n + 1) : ℚ)

theorem P15092696834812527532.correct : P15092696834812527532.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 | 4 =>
      simp [A299645, Nat.add_sub_cancel, A299645.P15092696834812527532.a, A299645.P15618354668102227947.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 5 =>
      have h1 := ih (m + 4) (by omega)
      have h2 := ih (m + 3) (by omega)
      have h3 := ih (m + 2) (by omega)
      have h4 := ih (m + 1) (by omega)
      have h5 := ih m (by omega)
      simp only [A299645, Nat.add_sub_cancel, A299645.P15092696834812527532.a, A299645.P15618354668102227947.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 h5 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 5 - 1 = m + 4 by omega, show m + 5 - 2 = m + 3 by omega, show m + 5 - 3 = m + 2 by omega, show m + 5 - 4 = m + 1 by omega, show m + 5 - 5 = m by omega, show m + 4 < m + 5 by omega, show m + 3 < m + 5 by omega, show m + 2 < m + 5 by omega, show m + 1 < m + 5 by omega, show m < m + 5 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 h5 ⊢
      rw [← h1, ← h2, ← h3, ← h4, ← h5]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A299645

/-! ## A299645.P15618354668102227947

`a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` with `a(0)=0, a(1)=3, a(2)=13, a(3)=22, a(4)=42`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A299645

/-- `a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` -/
def P15618354668102227947.Spec : Prop :=
  ∀ n, P15618354668102227947.a n = A299645 (n + 1)

theorem P15618354668102227947.correct : P15618354668102227947.Spec := by
  intro n
  simp only [A299645, Nat.add_sub_cancel]

end A299645

/-! ## A299645.P7015639784891443068

`∑[n*(2*gcd(2, n)+1)]`
-/

namespace A299645.P7015639784891443068
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (2 * Nat.gcd 2 n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A299645.P7015639784891443068

namespace A299645

/-- `∑[n*(2*gcd(2, n)+1)]` -/
def P7015639784891443068.Spec : Prop :=
  ∀ n, (P7015639784891443068.a n : ℤ) = A299645 (n + 1)

end A299645

/-! ## A299645.P9249701244520801037

`∑[n*(5-2*and(1, n))]`
-/

namespace A299645.P9249701244520801037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (5 - (2 * Nat.land 1 n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A299645.P9249701244520801037

namespace A299645

/-- `∑[n*(5-2*and(1, n))]` -/
def P9249701244520801037.Spec : Prop :=
  ∀ n, P9249701244520801037.a n = A299645 (n + 1)

end A299645

/-! ## A299645.P13617057778047941453

`∑[7*n]-∑[2*lcm(2, n)]`
-/

namespace A299645.P13617057778047941453
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.lcm 2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A299645.P13617057778047941453

namespace A299645

/-- `∑[7*n]-∑[2*lcm(2, n)]` -/
def P13617057778047941453.Spec : Prop :=
  ∀ n, P13617057778047941453.a n = A299645 (n + 1)

end A299645

/-! ## A299645.P13536529742125828589

`∑[n*(n+3-xor(1, n-1))]`
-/

namespace A299645.P13536529742125828589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ((n + 3 : ℤ) - Int.xor 1 ((n : ℤ) - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A299645.P13536529742125828589

namespace A299645

/-- `∑[n*(n+3-xor(1, n-1))]` -/
def P13536529742125828589.Spec : Prop :=
  ∀ n, P13536529742125828589.a n = A299645 (n + 1)

end A299645

/-! ## A299645.P8174661728595121454

`floor(n*∑[3/floor(a(n-1))])` with `a(0)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A299645.P8174661728595121454
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [2] fun n f1 =>
  3 / (⌊f1 (n - 1)⌋ : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) * (∑ j ∈ Finset.range (n + 1), f1 j)⌋

end

end A299645.P8174661728595121454

namespace A299645

/-- `floor(n*∑[3/floor(a(n-1))])` -/
def P8174661728595121454.Spec : Prop :=
  ∀ n, P8174661728595121454.a n = A299645 (n + 1)

end A299645

/-! ## A299645.P10515793762274360791

`(2*n)²-(a(n-1)+and(1, n))` with `a(0)=0`
-/

namespace A299645.P10515793762274360791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ((2 * n) ^ 2 : ℤ) - (a (n - 1) + (Nat.land 1 n : ℤ))

end

end A299645.P10515793762274360791

namespace A299645

/-- `(2*n)²-(a(n-1)+and(1, n))` -/
def P10515793762274360791.Spec : Prop :=
  ∀ n, P10515793762274360791.a n = A299645 (n + 1)

end A299645

/-! ## A299645.P17938646560893596785

`(2*n)²-and(1, n)-a(n-1)` with `a(0)=0`
-/

namespace A299645.P17938646560893596785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ((2 * n) ^ 2 : ℤ) - (Nat.land 1 n : ℤ) - a (n - 1)

end

end A299645.P17938646560893596785

namespace A299645

/-- `(2*n)²-and(1, n)-a(n-1)` -/
def P17938646560893596785.Spec : Prop :=
  ∀ n, P17938646560893596785.a n = A299645 (n + 1)

end A299645

/-! ## A299645.P1957583566396401168

`∑[gcd(5, a(n-2))+5]+a(n-2)` with `a(0)=0, a(1)=3`
-/

namespace A299645.P1957583566396401168
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 3] fun n f1 =>
  Nat.gcd 5 (f1 (n - 2)) + 5

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 3] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + a (n - 2)

end

end A299645.P1957583566396401168

namespace A299645

/-- `∑[gcd(5, a(n-2))+5]+a(n-2)` -/
def P1957583566396401168.Spec : Prop :=
  ∀ n, (P1957583566396401168.a n : ℤ) = A299645 (n + 1)

end A299645

/-! ## A299645.P14010231936224471671

`A213399(n)-1`
-/

namespace A299645.P14010231936224471671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213399 n - 1

end

end A299645.P14010231936224471671

namespace A299645

/-- `A213399(n)-1` -/
def P14010231936224471671.Spec : Prop :=
  ∀ n, P14010231936224471671.a n = A299645 (n + 1)

end A299645

/-! ## A299645.P4163137198648578167

`A273368(n)-∑[n]`
-/

namespace A299645.P4163137198648578167
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273368 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A299645.P4163137198648578167

namespace A299645

/-- `A273368(n)-∑[n]` -/
def P4163137198648578167.Spec : Prop :=
  ∀ n, P4163137198648578167.a n = A299645 (n + 1)

end A299645

/-! ## A299645.P2794090874966167377

`∑[n]+A186424(n)-1`
-/

namespace A299645.P2794090874966167377
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + (A186424 n - 1)

end

end A299645.P2794090874966167377

namespace A299645

/-- `∑[n]+A186424(n)-1` -/
def P2794090874966167377.Spec : Prop :=
  ∀ n, P2794090874966167377.a n = A299645 (n + 1)

end A299645

/-! ## A299645.P14119630735840253647

`A074377(n)+∑[2*n]`
-/

namespace A299645.P14119630735840253647
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074377 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A299645.P14119630735840253647

namespace A299645

/-- `A074377(n)+∑[2*n]` -/
def P14119630735840253647.Spec : Prop :=
  ∀ n, P14119630735840253647.a n = A299645 (n + 1)

end A299645

/-! ## A299645.P15127036586396763692

`∑[4*n]-A001057(n)`
-/

namespace A299645.P15127036586396763692
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A001057 n

end

end A299645.P15127036586396763692

namespace A299645

/-- `∑[4*n]-A001057(n)` -/
def P15127036586396763692.Spec : Prop :=
  ∀ n, P15127036586396763692.a n = A299645 (n + 1)

end A299645

/-! ## A299645.P8949233768109976899

`A245524(n+1)+n²-1`
-/

namespace A299645.P8949233768109976899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245524 (n + 1) + ((n ^ 2 : ℤ) - 1)

end

end A299645.P8949233768109976899

namespace A299645

/-- `A245524(n+1)+n²-1` -/
def P8949233768109976899.Spec : Prop :=
  ∀ n, P8949233768109976899.a n = A299645 (n + 1)

end A299645

/-! ## A299645.P13368139445894923832

`A220082(n+1)-(∑[n]+1)`
-/

namespace A299645.P13368139445894923832
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220082 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℕ) : ℤ)

end

end A299645.P13368139445894923832

namespace A299645

/-- `A220082(n+1)-(∑[n]+1)` -/
def P13368139445894923832.Spec : Prop :=
  ∀ n, P13368139445894923832.a n = A299645 (n + 1)

end A299645

/-! ## A299645.P5432758575675080763

`∑[n]+2*A001082(n+1)`
-/

namespace A299645.P5432758575675080763
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + 2 * A001082 (n + 1)

end

end A299645.P5432758575675080763

namespace A299645

/-- `∑[n]+2*A001082(n+1)` -/
def P5432758575675080763.Spec : Prop :=
  ∀ n, P5432758575675080763.a n = A299645 (n + 1)

end A299645

/-! ## A299645.P2679231972928126401

`Δ[n²]²-A057029(n+1)`
-/

namespace A299645.P2679231972928126401
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 2 - A057029 (n + 1)

end

end A299645.P2679231972928126401

namespace A299645

/-- `Δ[n²]²-A057029(n+1)` -/
def P2679231972928126401.Spec : Prop :=
  ∀ n, P2679231972928126401.a n = A299645 (n + 1)

end A299645

/-! ## A299645.P5477567246635482621

`∑[n*A010703(n+1)]`
-/

namespace A299645.P5477567246635482621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A010703 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A299645.P5477567246635482621

namespace A299645

/-- `∑[n*A010703(n+1)]` -/
def P5477567246635482621.Spec : Prop :=
  ∀ n, P5477567246635482621.a n = A299645 (n + 1)

end A299645

/-!
# A299646: a(n) = Sum_{k = n..2*n+1} k^2.

The programs for A299646, the canonical program `A299646.P7705273115812080617` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A299646 has offset 0).

The definition of A299646 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A299646.P3891653480260367481

`(n+2)*(14*n²+11*n+3)/6`
-/

namespace A299646.P3891653480260367481
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 2) * (14 * n ^ 2 + 11 * n + 3) : ℚ) / 6

end

end A299646.P3891653480260367481

namespace A299646

/-- `(n+2)*(14*n²+11*n+3)/6` -/
def P3891653480260367481.Spec : Prop :=
  ∀ n, P3891653480260367481.a n = (A299646 n : ℚ)

theorem P3891653480260367481.correct : P3891653480260367481.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A299646, Nat.add_sub_cancel, A299646.P3891653480260367481.a, A299646.P7705273115812080617.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A299646, Nat.add_sub_cancel, A299646.P3891653480260367481.a, A299646.P7705273115812080617.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A299646

/-! ## A299646.P7705273115812080617

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=1, a(1)=14, a(2)=54, a(3)=135`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A299646

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P7705273115812080617.Spec : Prop :=
  ∀ n, P7705273115812080617.a n = A299646 n

theorem P7705273115812080617.correct : P7705273115812080617.Spec := by
  intro n
  simp only [A299646]

end A299646

/-! ## A299646.P68770436125338075

`Δ[C(n², 2)/6+C(n², 2)+n^3]`
-/

namespace A299646.P68770436125338075
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n ^ 2) 2 : ℚ) / 6 + (Nat.choose (n ^ 2) 2 + n ^ 3 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A299646.P68770436125338075

namespace A299646

/-- `Δ[C(n², 2)/6+C(n², 2)+n^3]` -/
def P68770436125338075.Spec : Prop :=
  ∀ n, P68770436125338075.a n = (A299646 n : ℚ)

end A299646

/-! ## A299646.P17417791457682293085

`∑[(n+1)²]+(n+2)*C(2*n+1, 2)`
-/

namespace A299646.P17417791457682293085
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n + 2) * Nat.choose (2 * n + 1) 2

end

end A299646.P17417791457682293085

namespace A299646

/-- `∑[(n+1)²]+(n+2)*C(2*n+1, 2)` -/
def P17417791457682293085.Spec : Prop :=
  ∀ n, (P17417791457682293085.a n : ℤ) = A299646 n

end A299646

/-! ## A299646.P3036646247131025092

`A220084(n)-n^3`
-/

namespace A299646.P3036646247131025092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220084 n - (n ^ 3 : ℤ)

end

end A299646.P3036646247131025092

namespace A299646

/-- `A220084(n)-n^3` -/
def P3036646247131025092.Spec : Prop :=
  ∀ n, P3036646247131025092.a n = A299646 n

end A299646

/-! ## A299646.P11776112088250030259

`∑[A005892(n)]+n²`
-/

namespace A299646.P11776112088250030259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005892 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n ^ 2 : ℤ)

end

end A299646.P11776112088250030259

namespace A299646

/-- `∑[A005892(n)]+n²` -/
def P11776112088250030259.Spec : Prop :=
  ∀ n, P11776112088250030259.a n = A299646 n

end A299646

/-! ## A299646.P9570435982838638851

`∑[A387883(n+1)-1]`
-/

namespace A299646.P9570435982838638851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387883 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A299646.P9570435982838638851

namespace A299646

/-- `∑[A387883(n+1)-1]` -/
def P9570435982838638851.Spec : Prop :=
  ∀ n, P9570435982838638851.a n = A299646 n

end A299646

/-! ## A299646.P3717459613376041868

`∑[A069127(n+1)-n]-n`
-/

namespace A299646.P3717459613376041868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069127 (n + 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A299646.P3717459613376041868

namespace A299646

/-- `∑[A069127(n+1)-n]-n` -/
def P3717459613376041868.Spec : Prop :=
  ∀ n, P3717459613376041868.a n = A299646 n

end A299646

/-! ## A299646.P5292682275993003712

`A050409(n)+A016754(n)`
-/

namespace A299646.P5292682275993003712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050409 n + A016754 n

end

end A299646.P5292682275993003712

namespace A299646

/-- `A050409(n)+A016754(n)` -/
def P5292682275993003712.Spec : Prop :=
  ∀ n, P5292682275993003712.a n = A299646 n

end A299646

/-! ## A299646.P15908570221083907187

`A102083(n)+A050410(n)`
-/

namespace A299646.P15908570221083907187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102083 n + A050410 n

end

end A299646.P15908570221083907187

namespace A299646

/-- `A102083(n)+A050410(n)` -/
def P15908570221083907187.Spec : Prop :=
  ∀ n, P15908570221083907187.a n = A299646 n

end A299646

/-! ## A299646.P12401550327159884954

`A169607(n)+A003215(n)`
-/

namespace A299646.P12401550327159884954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169607 n + A003215 n

end

end A299646.P12401550327159884954

namespace A299646

/-- `A169607(n)+A003215(n)` -/
def P12401550327159884954.Spec : Prop :=
  ∀ n, P12401550327159884954.a n = A299646 n

end A299646

/-! ## A299646.P3244006157580403525

`A163815(n)+A047732(n)`
-/

namespace A299646.P3244006157580403525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163815 n + A047732 n

end

end A299646.P3244006157580403525

namespace A299646

/-- `A163815(n)+A047732(n)` -/
def P3244006157580403525.Spec : Prop :=
  ∀ n, P3244006157580403525.a n = A299646 n

end A299646

/-! ## A299646.P4591685982726543105

`A135712(n)+A084990(n)`
-/

namespace A299646.P4591685982726543105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135712 n + A084990 n

end

end A299646.P4591685982726543105

namespace A299646

/-- `A135712(n)+A084990(n)` -/
def P4591685982726543105.Spec : Prop :=
  ∀ n, P4591685982726543105.a n = A299646 n

end A299646

/-! ## A299646.P5876198767454285693

`A220083(n)+A214659(n)`
-/

namespace A299646.P5876198767454285693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220083 n + A214659 n

end

end A299646.P5876198767454285693

namespace A299646

/-- `A220083(n)+A214659(n)` -/
def P5876198767454285693.Spec : Prop :=
  ∀ n, P5876198767454285693.a n = A299646 n

end A299646

/-! ## A299646.P3941672301042619641

`A085474(n)-A005945(n)`
-/

namespace A299646.P3941672301042619641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085474 n - A005945 n

end

end A299646.P3941672301042619641

namespace A299646

/-- `A085474(n)-A005945(n)` -/
def P3941672301042619641.Spec : Prop :=
  ∀ n, P3941672301042619641.a n = A299646 n

end A299646

/-! ## A299646.P13195797216826311875

`abs(A000578(n)-A220084(n))`
-/

namespace A299646.P13195797216826311875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000578 n - A220084 n|

end

end A299646.P13195797216826311875

namespace A299646

/-- `abs(A000578(n)-A220084(n))` -/
def P13195797216826311875.Spec : Prop :=
  ∀ n, P13195797216826311875.a n = A299646 n

end A299646

/-! ## A299646.P9458524677097581722

`∑[A033582(n)+A008458(n)]`
-/

namespace A299646.P9458524677097581722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033582 n + A008458 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A299646.P9458524677097581722

namespace A299646

/-- `∑[A033582(n)+A008458(n)]` -/
def P9458524677097581722.Spec : Prop :=
  ∀ n, P9458524677097581722.a n = A299646 n

end A299646

/-! ## A299646.P15645065122240023770

`A063490(n+1)+A049451(n)`
-/

namespace A299646.P15645065122240023770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063490 (n + 1) + A049451 n

end

end A299646.P15645065122240023770

namespace A299646

/-- `A063490(n+1)+A049451(n)` -/
def P15645065122240023770.Spec : Prop :=
  ∀ n, P15645065122240023770.a n = A299646 n

end A299646

/-! ## A299646.P12259518246962881939

`A172076(n)+A003154(n+1)`
-/

namespace A299646.P12259518246962881939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172076 n + A003154 (n + 1)

end

end A299646.P12259518246962881939

namespace A299646

/-- `A172076(n)+A003154(n+1)` -/
def P12259518246962881939.Spec : Prop :=
  ∀ n, P12259518246962881939.a n = A299646 n

end A299646

/-! ## A299646.P17370209332692176292

`A163832(n)+A131820(n+1)`
-/

namespace A299646.P17370209332692176292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163832 n + A131820 (n + 1)

end

end A299646.P17370209332692176292

namespace A299646

/-- `A163832(n)+A131820(n+1)` -/
def P17370209332692176292.Spec : Prop :=
  ∀ n, P17370209332692176292.a n = A299646 n

end A299646

/-!
# A299647: Positive solutions to x^2 == -2 (mod 11).

The programs for A299647, the canonical program `A299647.P6032321218528371599` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A299647 has offset 1).

The definition of A299647 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A299647.P6032321218528371599

`a(n-1)+a(n-2)-a(n-3)` with `a(0)=3, a(1)=8, a(2)=14`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A299647

/-- `a(n-1)+a(n-2)-a(n-3)` -/
def P6032321218528371599.Spec : Prop :=
  ∀ n, P6032321218528371599.a n = A299647 (n + 1)

theorem P6032321218528371599.correct : P6032321218528371599.Spec := by
  intro n
  simp only [A299647, Nat.add_sub_cancel]

end A299647

/-! ## A299647.P8661754729473833178

`4*(n+1)-1+floor(n/2)+floor((3*(n+1)-1)/3)`
-/

namespace A299647.P8661754729473833178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * (n + 1) : ℤ) - 1 + ⌊(n : ℚ) / 2⌋ + ⌊((3 * (n + 1) : ℤ) - 1 : ℚ) / 3⌋

end

end A299647.P8661754729473833178

namespace A299647

/-- `4*(n+1)-1+floor(n/2)+floor((3*(n+1)-1)/3)` -/
def P8661754729473833178.Spec : Prop :=
  ∀ n, P8661754729473833178.a n = A299647 (n + 1)

end A299647

/-! ## A299647.P14555929617471374413

`∑[∑{d}[n, C(2, #)]+3]`
-/

namespace A299647.P14555929617471374413
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), Nat.choose 2 d + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A299647.P14555929617471374413

namespace A299647

/-- `∑[∑{d}[n, C(2, #)]+3]` -/
def P14555929617471374413.Spec : Prop :=
  ∀ n, (P14555929617471374413.a n : ℤ) = A299647 (n + 1)

end A299647

/-! ## A299647.P4483338921340390215

`∑[abs(a(n-2))]` with `a(0)=3, a(1)=5, a(2)=6`
-/

namespace A299647.P4483338921340390215
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 5, 6] fun n f1 =>
  f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A299647.P4483338921340390215

namespace A299647

/-- `∑[abs(a(n-2))]` -/
def P4483338921340390215.Spec : Prop :=
  ∀ n, (P4483338921340390215.a n : ℤ) = A299647 (n + 1)

end A299647

/-! ## A299647.P1869507864323241436

`∑[11-a(n-1)]` with `a(0)=3, a(1)=5`
-/

namespace A299647.P1869507864323241436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3, 5] fun n f1 =>
  11 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A299647.P1869507864323241436

namespace A299647

/-- `∑[11-a(n-1)]` -/
def P1869507864323241436.Spec : Prop :=
  ∀ n, P1869507864323241436.a n = A299647 (n + 1)

end A299647

/-! ## A299647.P9581454962786151360

`∑[∑[ogf((3+5x+3x^2)/(1+x))]]`
-/

namespace A299647.P9581454962786151360
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 5, 3] [1, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A299647.P9581454962786151360

namespace A299647

/-- `∑[∑[ogf((3+5x+3x^2)/(1+x))]]` -/
def P9581454962786151360.Spec : Prop :=
  ∀ n, P9581454962786151360.a n = A299647 (n + 1)

end A299647

/-! ## A299647.P2891244372414306671

`ogf((3+5x+3x^2)/(1-x-x^2+x^3))`
-/

namespace A299647.P2891244372414306671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 5, 3] [1, -1, -1, 1] n

end

end A299647.P2891244372414306671

namespace A299647

/-- `ogf((3+5x+3x^2)/(1-x-x^2+x^3))` -/
def P2891244372414306671.Spec : Prop :=
  ∀ n, P2891244372414306671.a n = A299647 (n + 1)

end A299647

/-! ## A299647.P712015849612817293

`∑[dr(A040422(n))]`
-/

namespace A299647.P712015849612817293
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A040422 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A299647.P712015849612817293

namespace A299647

/-- `∑[dr(A040422(n))]` -/
def P712015849612817293.Spec : Prop :=
  ∀ n, (P712015849612817293.a n : ℤ) = A299647 (n + 1)

end A299647

/-! ## A299647.P1172876956913346982

`∑[dr(A040881(n))]`
-/

namespace A299647.P1172876956913346982
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A040881 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A299647.P1172876956913346982

namespace A299647

/-- `∑[dr(A040881(n))]` -/
def P1172876956913346982.Spec : Prop :=
  ∀ n, (P1172876956913346982.a n : ℤ) = A299647 (n + 1)

end A299647

/-! ## A299647.P18202371249281389338

`ceil(A017449(n)/2)`
-/

namespace A299647.P18202371249281389338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A017449 n : ℚ) / 2⌉

end

end A299647.P18202371249281389338

namespace A299647

/-- `ceil(A017449(n)/2)` -/
def P18202371249281389338.Spec : Prop :=
  ∀ n, P18202371249281389338.a n = A299647 (n + 1)

end A299647

/-! ## A299647.P3935207999386685429

`A166959(n+1)/4`
-/

namespace A299647.P3935207999386685429
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166959 (n + 1) : ℚ) / 4

end

end A299647.P3935207999386685429

namespace A299647

/-- `A166959(n+1)/4` -/
def P3935207999386685429.Spec : Prop :=
  ∀ n, P3935207999386685429.a n = (A299647 (n + 1) : ℚ)

end A299647

/-! ## A299647.P7697695063595800377

`∑[A025511(a(n-1))]` with `a(0)=3`
-/

namespace A299647.P7697695063595800377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f1 =>
  A025511 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A299647.P7697695063595800377

namespace A299647

/-- `∑[A025511(a(n-1))]` -/
def P7697695063595800377.Spec : Prop :=
  ∀ n, P7697695063595800377.a n = A299647 (n + 1)

end A299647

/-! ## A299647.P10992706609573772547

`∑[A077464(a(n-1))]` with `a(0)=3`
-/

namespace A299647.P10992706609573772547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f1 =>
  A077464 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A299647.P10992706609573772547

namespace A299647

/-- `∑[A077464(a(n-1))]` -/
def P10992706609573772547.Spec : Prop :=
  ∀ n, P10992706609573772547.a n = A299647 (n + 1)

end A299647

/-! ## A299647.P940226298278481585

`∑[A131957(a(n-1))]` with `a(0)=3`
-/

namespace A299647.P940226298278481585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f1 =>
  A131957 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A299647.P940226298278481585

namespace A299647

/-- `∑[A131957(a(n-1))]` -/
def P940226298278481585.Spec : Prop :=
  ∀ n, P940226298278481585.a n = A299647 (n + 1)

end A299647

/-! ## A299647.P9486018651234732214

`∑[A138255(a(n-1))]` with `a(0)=3`
-/

namespace A299647.P9486018651234732214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f1 =>
  A138255 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A299647.P9486018651234732214

namespace A299647

/-- `∑[A138255(a(n-1))]` -/
def P9486018651234732214.Spec : Prop :=
  ∀ n, P9486018651234732214.a n = A299647 (n + 1)

end A299647

/-! ## A299647.P11342797736063413706

`∑[A143969(a(n-1))]` with `a(0)=3`
-/

namespace A299647.P11342797736063413706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f1 =>
  A143969 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A299647.P11342797736063413706

namespace A299647

/-- `∑[A143969(a(n-1))]` -/
def P11342797736063413706.Spec : Prop :=
  ∀ n, P11342797736063413706.a n = A299647 (n + 1)

end A299647

/-! ## A299647.P15854192833631375920

`∑[A199088(a(n-1))]` with `a(0)=3`
-/

namespace A299647.P15854192833631375920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f1 =>
  A199088 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A299647.P15854192833631375920

namespace A299647

/-- `∑[A199088(a(n-1))]` -/
def P15854192833631375920.Spec : Prop :=
  ∀ n, P15854192833631375920.a n = A299647 (n + 1)

end A299647

/-! ## A299647.P17055223066554270795

`∑[A204913(a(n-1))]` with `a(0)=3`
-/

namespace A299647.P17055223066554270795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f1 =>
  A204913 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A299647.P17055223066554270795

namespace A299647

/-- `∑[A204913(a(n-1))]` -/
def P17055223066554270795.Spec : Prop :=
  ∀ n, P17055223066554270795.a n = A299647 (n + 1)

end A299647

/-! ## A299647.P1509326445872094095

`∑[A230113(a(n-1))]` with `a(0)=3`
-/

namespace A299647.P1509326445872094095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f1 =>
  A230113 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A299647.P1509326445872094095

namespace A299647

/-- `∑[A230113(a(n-1))]` -/
def P1509326445872094095.Spec : Prop :=
  ∀ n, P1509326445872094095.a n = A299647 (n + 1)

end A299647

/-! ## A299647.P134533561379585923

`∑[A264105(a(n-1))]` with `a(0)=3`
-/

namespace A299647.P134533561379585923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f1 =>
  A264105 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A299647.P134533561379585923

namespace A299647

/-- `∑[A264105(a(n-1))]` -/
def P134533561379585923.Spec : Prop :=
  ∀ n, P134533561379585923.a n = A299647 (n + 1)

end A299647

/-!
# A299648: Number of n X n 0..1 arrays with every element equal to 0, 1, 2, 3, 4, 5 or 6 king-move adjacent elements, with upper left element zero.

The programs for A299648, there is no canonical definition to state claims against.
-/

/-! ## A299648.P8080791346095139958

`A299654(∑[4*n]+1)`
-/

namespace A299648.P8080791346095139958
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299654 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A299648.P8080791346095139958

/-! ## A299648.P10143620839404315931

`record[A299654(Δ[A079824(n+1)])]`
-/

namespace A299648.P10143620839404315931
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079824 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299654 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A299648.P10143620839404315931

/-! ## A299648.P2307225841299974609

`record[gcd(A008482(n), A299654(n+1))]`
-/

namespace A299648.P2307225841299974609
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008482 n) (A299654 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A299648.P2307225841299974609

/-! ## A299648.P6904083325757712031

`A299654(A001844(n))+A263787(n+1)`
-/

namespace A299648.P6904083325757712031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299654 (A001844 n).toNat + A263787 (n + 1)

end

end A299648.P6904083325757712031

/-! ## A299648.P12267075028840496835

`A056059(n+1)*A299654(A001844(n))`
-/

namespace A299648.P12267075028840496835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056059 (n + 1) * A299654 (A001844 n).toNat

end

end A299648.P12267075028840496835

/-!
# A299649: Number of nX3 0..1 arrays with every element equal to 0, 1, 2, 3, 4, 5 or 6 king-move adjacent elements, with upper left element zero.

The programs for A299649, there is no canonical definition to state claims against.
-/

/-! ## A299649.P16041038645288891457

`A299654(∑[n+2]+4)`
-/

namespace A299649.P16041038645288891457
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299654 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A299649.P16041038645288891457

/-! ## A299649.P15923063506636349534

`lcm(A054977(n), A299654(A167614(n+1)))`
-/

namespace A299649.P15923063506636349534
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A054977 n) (A299654 (A167614 (n + 1)).toNat)

end

end A299649.P15923063506636349534

/-! ## A299649.P2729038143865935355

`A299654(A167614(n+1))+A000007(n+1)`
-/

namespace A299649.P2729038143865935355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299654 (A167614 (n + 1)).toNat + A000007 (n + 1)

end

end A299649.P2729038143865935355

/-! ## A299649.P14521730950785350592

`A299654(A167614(n+1))%A262778(n+1)`
-/

namespace A299649.P14521730950785350592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A299654 (A167614 (n + 1)).toNat) (A262778 (n + 1))

end

end A299649.P14521730950785350592

/-! ## A299649.P12422631871140138063

`A054977(2*n+1)*A299654(A167614(n+1))`
-/

namespace A299649.P12422631871140138063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 (2 * n + 1) * A299654 (A167614 (n + 1)).toNat

end

end A299649.P12422631871140138063

/-!
# A299650: Number of nX4 0..1 arrays with every element equal to 0, 1, 2, 3, 4, 5 or 6 king-move adjacent elements, with upper left element zero.

The programs for A299650, there is no canonical definition to state claims against.
-/

/-! ## A299650.P11687398773392169088

`A299654(A141214(n)+7)`
-/

namespace A299650.P11687398773392169088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299654 (A141214 n + 7).toNat

end

end A299650.P11687398773392169088

/-! ## A299650.P11211840295218248328

`A299654(A052905(n)+9)`
-/

namespace A299650.P11211840295218248328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299654 (A052905 n + 9).toNat

end

end A299650.P11211840295218248328

/-! ## A299650.P14425149354965904927

`A299654(A055999(n)+10)`
-/

namespace A299650.P14425149354965904927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299654 (A055999 n + 10).toNat

end

end A299650.P14425149354965904927

/-! ## A299650.P621606671498078207

`A299654(A167614(n+2)+1)`
-/

namespace A299650.P621606671498078207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299654 (A167614 (n + 2) + 1).toNat

end

end A299650.P621606671498078207

/-! ## A299650.P4191224146700300712

`A299654(A374004(n+1))`
-/

namespace A299650.P4191224146700300712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299654 (A374004 (n + 1)).toNat

end

end A299650.P4191224146700300712

/-!
# A299651: Number of n X 5 0..1 arrays with every element equal to 0, 1, 2, 3, 4, 5 or 6 king-move adjacent elements, with upper left element zero.

The programs for A299651, there is no canonical definition to state claims against.
-/

/-! ## A299651.P12039882075359776014

`A299654(A167499(n+3))`
-/

namespace A299651.P12039882075359776014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299654 (A167499 (n + 3)).toNat

end

end A299651.P12039882075359776014

/-! ## A299651.P12487346615733664219

`A299654(eq[6, A131818(n+1)])`
-/

namespace A299651.P12487346615733664219
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299654 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A299651.P12487346615733664219

/-! ## A299651.P16183992413742739031

`A299654(A000124(n+6)-(2*n+7))`
-/

namespace A299651.P16183992413742739031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299654 (A000124 (n + 6) - (2 * n + 7 : ℤ)).toNat

end

end A299651.P16183992413742739031

/-! ## A299651.P16675556880670702328

`A299654(eq[8, A258709(n)]-(2*n+1))`
-/

namespace A299651.P16675556880670702328
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258709 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299654 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n - (2 * n + 1))

end

end A299651.P16675556880670702328

/-! ## A299651.P12230868307200506521

`A299654(Δ[Δ[A006504(n+1)]]-(2*n+1))`
-/

namespace A299651.P12230868307200506521
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299654 (f1 (n + 1) - f1 n - (2 * n + 1 : ℤ)).toNat

end

end A299651.P12230868307200506521

/-!
# A299652: Number of nX6 0..1 arrays with every element equal to 0, 1, 2, 3, 4, 5 or 6 king-move adjacent elements, with upper left element zero.

The programs for A299652, there is no canonical definition to state claims against.
-/

/-! ## A299652.P7519412242514249761

`A299654(A000217(n+5)+6)`
-/

namespace A299652.P7519412242514249761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299654 (A000217 (n + 5) + 6).toNat

end

end A299652.P7519412242514249761

/-! ## A299652.P2375971500804705498

`A299654(eq[7, A131818(n+1)])`
-/

namespace A299652.P2375971500804705498
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299654 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A299652.P2375971500804705498

/-! ## A299652.P3080498688659571178

`A299654(A374007(n+1))`
-/

namespace A299652.P3080498688659571178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299654 (A374007 (n + 1)).toNat

end

end A299652.P3080498688659571178

/-! ## A299652.P1833066429352927050

`A299654(eq[3, A219347(n)])`
-/

namespace A299652.P1833066429352927050
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299654 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A299652.P1833066429352927050

/-! ## A299652.P8257673339269212672

`A299654(eq[8, A258709(n)])`
-/

namespace A299652.P8257673339269212672
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258709 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299654 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A299652.P8257673339269212672

/-!
# A299653: Number of n X 7 0..1 arrays with every element equal to 0, 1, 2, 3, 4, 5 or 6 king-move adjacent elements, with upper left element zero.

The programs for A299653, there is no canonical definition to state claims against.
-/

/-! ## A299653.P3865094824942943073

`A299654(A000124(n+6)+6)`
-/

namespace A299653.P3865094824942943073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299654 (A000124 (n + 6) + 6).toNat

end

end A299653.P3865094824942943073

/-! ## A299653.P1475690115006486364

`A299654(A000217(n+6)+7)`
-/

namespace A299653.P1475690115006486364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299654 (A000217 (n + 6) + 7).toNat

end

end A299653.P1475690115006486364

/-! ## A299653.P7712209174810718612

`A299654(A027379(n+4)+10)`
-/

namespace A299653.P7712209174810718612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299654 (A027379 (n + 4) + 10).toNat

end

end A299653.P7712209174810718612

/-! ## A299653.P7595277213655159187

`A299654(eq[8, A131818(n+1)])`
-/

namespace A299653.P7595277213655159187
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299654 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A299653.P7595277213655159187

/-! ## A299653.P13270149374753102643

`A299654(A374008(n+1))`
-/

namespace A299653.P13270149374753102643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299654 (A374008 (n + 1)).toNat

end

end A299653.P13270149374753102643

/-!
# A299654: T(n,k)=Number of nXk 0..1 arrays with every element equal to 0, 1, 2, 3, 4, 5 or 6 king-move adjacent elements, with upper left element zero.

The programs for A299654, there is no canonical definition to state claims against.
-/

/-! ## A299654.P17934542882968636974

`A130891(A316808(n+1))`
-/

namespace A299654.P17934542882968636974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130891 (A316808 (n + 1)).toNat

end

end A299654.P17934542882968636974

/-! ## A299654.P2760763439891427841

`A316808(∑[A059117(n)!])`
-/

namespace A299654.P2760763439891427841
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A059117 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316808 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A299654.P2760763439891427841

/-! ## A299654.P10472914377051398653

`A164089(6*A213418(n+1))`
-/

namespace A299654.P10472914377051398653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164089 (6 * A213418 (n + 1)).toNat

end

end A299654.P10472914377051398653

/-! ## A299654.P7377839754318422466

`A316808(A003313(2^n+1))`
-/

namespace A299654.P7377839754318422466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316808 (A003313 (2 ^ n + 1)).toNat

end

end A299654.P7377839754318422466

/-! ## A299654.P4771399700324711608

`A053645(9*A300182(n+1))`
-/

namespace A299654.P4771399700324711608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053645 (9 * A300182 (n + 1)).toNat

end

end A299654.P4771399700324711608

/-!
# A299655: Number of n X n 0..1 arrays with every element equal to 0, 1, 2, 3, 4, 5 or 7 king-move adjacent elements, with upper left element zero.

The programs for A299655, there is no canonical definition to state claims against.
-/

/-! ## A299655.P4661851741786770607

`A299661(∑[4*n]+1)`
-/

namespace A299655.P4661851741786770607
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299661 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A299655.P4661851741786770607

/-! ## A299655.P13017195406418290629

`record[A003982(n)*A299661(n+1)]`
-/

namespace A299655.P13017195406418290629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A299661 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A299655.P13017195406418290629

/-! ## A299655.P5858106882512478002

`A299661(A001844(n))^A178334(n)`
-/

namespace A299655.P5858106882512478002
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A299661 (A001844 n).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A299655.P5858106882512478002

/-! ## A299655.P1534448972304485590

`or(A016391(n), A299661(A001844(n)))`
-/

namespace A299655.P1534448972304485590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A016391 n) (A299661 (A001844 n).toNat)

end

end A299655.P1534448972304485590

/-!
# A299656: Number of nX3 0..1 arrays with every element equal to 0, 1, 2, 3, 4, 5 or 7 king-move adjacent elements, with upper left element zero.

The programs for A299656, there is no canonical definition to state claims against.
-/

/-! ## A299656.P10326017965833658354

`A299661(∑[n+2]+4)`
-/

namespace A299656.P10326017965833658354
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299661 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A299656.P10326017965833658354

/-! ## A299656.P15502604372157503591

`and(-1, A299661(A167614(n+1)))`
-/

namespace A299656.P15502604372157503591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A299661 (A167614 (n + 1)).toNat)

end

end A299656.P15502604372157503591

/-! ## A299656.P12233947325454744014

`A299661(A167614(n+1))+A185284(n)`
-/

namespace A299656.P12233947325454744014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299661 (A167614 (n + 1)).toNat + A185284 n

end

end A299656.P12233947325454744014

/-! ## A299656.P15808606930182669030

`A015526(n)*A299661(A167614(n+1))`
-/

namespace A299656.P15808606930182669030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015526 n * A299661 (A167614 (n + 1)).toNat

end

end A299656.P15808606930182669030

/-! ## A299656.P985794885029092460

`lcm(A033999(n), A299661(A167614(n+1)))`
-/

namespace A299656.P985794885029092460
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A299661 (A167614 (n + 1)).toNat)

end

end A299656.P985794885029092460

/-!
# A299657: Number of nX4 0..1 arrays with every element equal to 0, 1, 2, 3, 4, 5 or 7 king-move adjacent elements, with upper left element zero.

The programs for A299657, there is no canonical definition to state claims against.
-/

/-! ## A299657.P11528825728675199600

`A299661(A374004(n+1))`
-/

namespace A299657.P11528825728675199600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299661 (A374004 (n + 1)).toNat

end

end A299657.P11528825728675199600

/-! ## A299657.P6174384140494676056

`A299661(A141214(n)+7)`
-/

namespace A299657.P6174384140494676056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299661 (A141214 n + 7).toNat

end

end A299657.P6174384140494676056

/-! ## A299657.P17096295026608773261

`A299661(A052905(n)+9)`
-/

namespace A299657.P17096295026608773261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299661 (A052905 n + 9).toNat

end

end A299657.P17096295026608773261

/-! ## A299657.P6135570717730071527

`A299661(A055999(n)+10)`
-/

namespace A299657.P6135570717730071527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299661 (A055999 n + 10).toNat

end

end A299657.P6135570717730071527

/-! ## A299657.P12750201589703800662

`A299661(A167614(n+2)+1)`
-/

namespace A299657.P12750201589703800662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299661 (A167614 (n + 2) + 1).toNat

end

end A299657.P12750201589703800662

/-!
# A299658: Number of nX5 0..1 arrays with every element equal to 0, 1, 2, 3, 4, 5 or 7 king-move adjacent elements, with upper left element zero.

The programs for A299658, there is no canonical definition to state claims against.
-/

/-! ## A299658.P279760858245514362

`A299661(A374005(n+1))`
-/

namespace A299658.P279760858245514362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299661 (A374005 (n + 1)).toNat

end

end A299658.P279760858245514362

/-! ## A299658.P1656178090677603208

`A299661(A167499(n+3))`
-/

namespace A299658.P1656178090677603208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299661 (A167499 (n + 3)).toNat

end

end A299658.P1656178090677603208

/-! ## A299658.P1695402346091411956

`A299661(eq[7, A066657(n)])`
-/

namespace A299658.P1695402346091411956
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299661 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A299658.P1695402346091411956

/-! ## A299658.P6507712275501008416

`A299661(eq[6, A131818(n+1)])`
-/

namespace A299658.P6507712275501008416
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299661 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A299658.P6507712275501008416

/-! ## A299658.P9325182490960898701

`A299661(eq[3, A106240(n+1)]+8)`
-/

namespace A299658.P9325182490960898701
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106240 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299661 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 8)

end

end A299658.P9325182490960898701

/-!
# A299659: Number of nX6 0..1 arrays with every element equal to 0, 1, 2, 3, 4, 5 or 7 king-move adjacent elements, with upper left element zero.

The programs for A299659, there is no canonical definition to state claims against.
-/

/-! ## A299659.P14789345904461098745

`A299661(A374007(n+1))`
-/

namespace A299659.P14789345904461098745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299661 (A374007 (n + 1)).toNat

end

end A299659.P14789345904461098745

/-! ## A299659.P15059966008494464202

`A299661(eq[7, A131818(n+1)])`
-/

namespace A299659.P15059966008494464202
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299661 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A299659.P15059966008494464202

/-! ## A299659.P17485607689437169727

`A299661(A052905(n+3))`
-/

namespace A299659.P17485607689437169727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299661 (A052905 (n + 3)).toNat

end

end A299659.P17485607689437169727

/-! ## A299659.P13464459727458317535

`A299661(eq[3, A219347(n)])`
-/

namespace A299659.P13464459727458317535
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299661 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A299659.P13464459727458317535

/-! ## A299659.P11218322683043259568

`A299661(eq[5, A193592(n)])`
-/

namespace A299659.P11218322683043259568
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299661 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A299659.P11218322683043259568

/-!
# A299660: Number of nX7 0..1 arrays with every element equal to 0, 1, 2, 3, 4, 5 or 7 king-move adjacent elements, with upper left element zero.

The programs for A299660, there is no canonical definition to state claims against.
-/

/-! ## A299660.P11930460052447189175

`A299661(A374008(n+1))`
-/

namespace A299660.P11930460052447189175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299661 (A374008 (n + 1)).toNat

end

end A299660.P11930460052447189175

/-! ## A299660.P16338102307120216972

`A299661(eq[11, A066657(n)])`
-/

namespace A299660.P16338102307120216972
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299661 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A299660.P16338102307120216972

/-! ## A299660.P15717387524263237074

`A299661(A000124(n+6)+6)`
-/

namespace A299660.P15717387524263237074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299661 (A000124 (n + 6) + 6).toNat

end

end A299660.P15717387524263237074

/-! ## A299660.P14992110247327771210

`A299661(eq[8, A131818(n+1)])`
-/

namespace A299660.P14992110247327771210
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299661 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A299660.P14992110247327771210

/-! ## A299660.P1518258708098097061

`A299661(A055999(n+4))`
-/

namespace A299660.P1518258708098097061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299661 (A055999 (n + 4)).toNat

end

end A299660.P1518258708098097061

/-!
# A299661: T(n,k)=Number of nXk 0..1 arrays with every element equal to 0, 1, 2, 3, 4, 5 or 7 king-move adjacent elements, with upper left element zero.

The programs for A299661, there is no canonical definition to state claims against.
-/

/-! ## A299661.P12600919887741463284

`A301784(n+1)-A247336(A260340(n))`
-/

namespace A299661.P12600919887741463284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301784 (n + 1) - A247336 (A260340 n).toNat

end

end A299661.P12600919887741463284

/-! ## A299661.P5910311257440936768

`A302010(n+1)-A247336(A260340(n))`
-/

namespace A299661.P5910311257440936768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302010 (n + 1) - A247336 (A260340 n).toNat

end

end A299661.P5910311257440936768

/-! ## A299661.P7149197122113268632

`A130044(A301443(n+1))`
-/

namespace A299661.P7149197122113268632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130044 (A301443 (n + 1)).toNat

end

end A299661.P7149197122113268632

/-! ## A299661.P14843806083863186490

`A130044(A303456(n+1))`
-/

namespace A299661.P14843806083863186490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130044 (A303456 (n + 1)).toNat

end

end A299661.P14843806083863186490

/-! ## A299661.P11979747152092207108

`A130044(A316815(n+1))`
-/

namespace A299661.P11979747152092207108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130044 (A316815 (n + 1)).toNat

end

end A299661.P11979747152092207108

/-!
# A299662: Number of n X n 0..1 arrays with every element equal to 0, 1, 2, 3, 4, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A299662, there is no canonical definition to state claims against.
-/

/-! ## A299662.P6350378829441169775

`A299668(∑[4*n]+1)`
-/

namespace A299662.P6350378829441169775
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299668 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A299662.P6350378829441169775

/-! ## A299662.P9320997271862512238

`record[A003982(n)*A299668(n+1)]`
-/

namespace A299662.P9320997271862512238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A299668 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A299662.P9320997271862512238

/-! ## A299662.P917862306815025314

`A007318(∑[n])*A299668(A001844(n))`
-/

namespace A299662.P917862306815025314
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A299668 (A001844 n).toNat

end

end A299662.P917862306815025314

/-! ## A299662.P12139444477679772928

`and(1, A000010(n+2))!*A299668(A001844(n))`
-/

namespace A299662.P12139444477679772928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (Int.land 1 (A000010 (n + 2))).toNat : ℤ) * A299668 (A001844 n).toNat

end

end A299662.P12139444477679772928

/-! ## A299662.P7127897940668229741

`A299668(A001844(n))+A008683(4*A007318(n))`
-/

namespace A299662.P7127897940668229741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299668 (A001844 n).toNat + A008683 (4 * A007318 n).toNat

end

end A299662.P7127897940668229741

/-!
# A299663: Number of nX3 0..1 arrays with every element equal to 0, 1, 2, 3, 4, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A299663, there is no canonical definition to state claims against.
-/

/-! ## A299663.P14615140522814823559

`A299668(∑[n+2]+4)`
-/

namespace A299663.P14615140522814823559
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299668 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A299663.P14615140522814823559

/-! ## A299663.P5858598796138765270

`A300259(∑[n+2]+4)`
-/

namespace A299663.P5858598796138765270
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300259 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A299663.P5858598796138765270

/-! ## A299663.P15458870648382347179

`and(-1, A300259(A167614(n+1)))`
-/

namespace A299663.P15458870648382347179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A300259 (A167614 (n + 1)).toNat)

end

end A299663.P15458870648382347179

/-! ## A299663.P10830324093369701042

`A299668(A167614(n+1))+A185284(n)`
-/

namespace A299663.P10830324093369701042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299668 (A167614 (n + 1)).toNat + A185284 n

end

end A299663.P10830324093369701042

/-! ## A299663.P10744646070104023043

`A014910(n)*A299668(A167614(n+1))`
-/

namespace A299663.P10744646070104023043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014910 n * A299668 (A167614 (n + 1)).toNat

end

end A299663.P10744646070104023043

/-!
# A299664: Number of nX4 0..1 arrays with every element equal to 0, 1, 2, 3, 4, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A299664, there is no canonical definition to state claims against.
-/

/-! ## A299664.P12177279130577501403

`A299668(A374004(n+1))`
-/

namespace A299664.P12177279130577501403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299668 (A374004 (n + 1)).toNat

end

end A299664.P12177279130577501403

/-! ## A299664.P6245528193286909314

`A299668(A141214(n)+7)`
-/

namespace A299664.P6245528193286909314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299668 (A141214 n + 7).toNat

end

end A299664.P6245528193286909314

/-! ## A299664.P11404028371543481410

`A300259(A141214(n)+7)`
-/

namespace A299664.P11404028371543481410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300259 (A141214 n + 7).toNat

end

end A299664.P11404028371543481410

/-! ## A299664.P1908981364084810967

`A299668(A052905(n)+9)`
-/

namespace A299664.P1908981364084810967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299668 (A052905 n + 9).toNat

end

end A299664.P1908981364084810967

/-! ## A299664.P13235568105552338121

`A300259(A055999(n)+10)`
-/

namespace A299664.P13235568105552338121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300259 (A055999 n + 10).toNat

end

end A299664.P13235568105552338121

/-!
# A299665: Number of nX5 0..1 arrays with every element equal to 0, 1, 2, 3, 4, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A299665, there is no canonical definition to state claims against.
-/

/-! ## A299665.P17388809967051430849

`A299668(A374005(n+1))`
-/

namespace A299665.P17388809967051430849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299668 (A374005 (n + 1)).toNat

end

end A299665.P17388809967051430849

/-! ## A299665.P10421657630186368531

`A299668(A155212(n)+13)`
-/

namespace A299665.P10421657630186368531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299668 (A155212 n + 13).toNat

end

end A299665.P10421657630186368531

/-! ## A299665.P5137035258461005634

`A299668(A167614(n+3)+2)`
-/

namespace A299665.P5137035258461005634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299668 (A167614 (n + 3) + 2).toNat

end

end A299665.P5137035258461005634

/-! ## A299665.P9502692682421983955

`A299668(A034856(n+3)+7)`
-/

namespace A299665.P9502692682421983955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299668 (A034856 (n + 3) + 7).toNat

end

end A299665.P9502692682421983955

/-! ## A299665.P1518327639046595362

`A299668(eq[6, A131818(n+1)])`
-/

namespace A299665.P1518327639046595362
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299668 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A299665.P1518327639046595362

/-!
# A299666: Number of nX6 0..1 arrays with every element equal to 0, 1, 2, 3, 4, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A299666, there is no canonical definition to state claims against.
-/

/-! ## A299666.P15327374807236937192

`A299668(A374007(n+1))`
-/

namespace A299666.P15327374807236937192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299668 (A374007 (n + 1)).toNat

end

end A299666.P15327374807236937192

/-! ## A299666.P4772308331120799867

`A299668(A166136(n+4))`
-/

namespace A299666.P4772308331120799867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299668 (A166136 (n + 4)).toNat

end

end A299666.P4772308331120799867

/-! ## A299666.P1629059472720291096

`A299668(A000217(n+5)+6)`
-/

namespace A299666.P1629059472720291096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299668 (A000217 (n + 5) + 6).toNat

end

end A299666.P1629059472720291096

/-! ## A299666.P7281029959062911689

`A299668(eq[5, A002262(n)]+1)`
-/

namespace A299666.P7281029959062911689
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299668 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A299666.P7281029959062911689

/-! ## A299666.P9466722326779651945

`A299668(eq[7, A131818(n+1)])`
-/

namespace A299666.P9466722326779651945
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299668 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A299666.P9466722326779651945

/-!
# A299667: Number of nX7 0..1 arrays with every element equal to 0, 1, 2, 3, 4, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A299667, there is no canonical definition to state claims against.
-/

/-! ## A299667.P15875345031582720022

`A299668(A374008(n+1))`
-/

namespace A299667.P15875345031582720022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299668 (A374008 (n + 1)).toNat

end

end A299667.P15875345031582720022

/-! ## A299667.P4907905076747991125

`A299668(A000124(n+6)+6)`
-/

namespace A299667.P4907905076747991125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299668 (A000124 (n + 6) + 6).toNat

end

end A299667.P4907905076747991125

/-! ## A299667.P5119284467693089231

`A299668(eq[8, A131818(n+1)])`
-/

namespace A299667.P5119284467693089231
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299668 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A299667.P5119284467693089231

/-! ## A299667.P8528146214925876007

`A299668(A055999(n+4))`
-/

namespace A299667.P8528146214925876007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299668 (A055999 (n + 4)).toNat

end

end A299667.P8528146214925876007

/-! ## A299667.P10883635549751806147

`A299668(eq[4, A219347(n)])`
-/

namespace A299667.P10883635549751806147
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299668 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A299667.P10883635549751806147

/-!
# A299668: T(n,k)=Number of nXk 0..1 arrays with every element equal to 0, 1, 2, 3, 4, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A299668, there is no canonical definition to state claims against.
-/

/-! ## A299668.P12147633806733654325

`A300259(∑[A010894(n)!])`
-/

namespace A299668.P12147633806733654325
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A010894 (n + 21)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300259 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A299668.P12147633806733654325

/-! ## A299668.P16011966182703923755

`A300259(Δ[A325692(∑[n])])`
-/

namespace A299668.P16011966182703923755
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325692 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300259 (f1 (n + 1) - f1 n).toNat

end

end A299668.P16011966182703923755

/-! ## A299668.P6965053171565727318

`A300259(A036445(2*(n+1)))`
-/

namespace A299668.P6965053171565727318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300259 (A036445 (2 * (n + 1))).toNat

end

end A299668.P6965053171565727318

/-! ## A299668.P162004663947262394

`A300259(n+1)%A046300(n)²`
-/

namespace A299668.P162004663947262394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A300259 (n + 1)) (A046300 n ^ 2)

end

end A299668.P162004663947262394

/-! ## A299668.P2723147308654367501

`A300259(n+1)^A010894(n)!`
-/

namespace A299668.P2723147308654367501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300259 (n + 1) ^ Nat.factorial (A010894 (n + 21)).toNat

end

end A299668.P2723147308654367501

/-!
# A299669: Number of n X n 0..1 arrays with every element equal to 0, 1, 2, 3, 5, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A299669, there is no canonical definition to state claims against.
-/

/-! ## A299669.P9430851924941175026

`A299675(∑[4*n]+1)`
-/

namespace A299669.P9430851924941175026
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299675 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A299669.P9430851924941175026

/-! ## A299669.P10273158530057423545

`record[A299675(A272267(n+1))]`
-/

namespace A299669.P10273158530057423545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299675 (A272267 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A299669.P10273158530057423545

/-! ## A299669.P3389397501580098356

`record[A299675(A330613(n+1))]`
-/

namespace A299669.P3389397501580098356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299675 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A299669.P3389397501580098356

/-! ## A299669.P7281830640388184342

`A299675(A001844(n))+char[9]`
-/

namespace A299669.P7281830640388184342
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299675 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A299669.P7281830640388184342

/-! ## A299669.P5826951911884502748

`record[A299675(Δ[A079824(n+1)])]`
-/

namespace A299669.P5826951911884502748
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079824 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299675 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A299669.P5826951911884502748

/-!
# A299670: Number of nX3 0..1 arrays with every element equal to 0, 1, 2, 3, 5, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A299670, there is no canonical definition to state claims against.
-/

/-! ## A299670.P4580438427512086829

`A299675(∑[n+2]+4)`
-/

namespace A299670.P4580438427512086829
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299675 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A299670.P4580438427512086829

/-! ## A299670.P1126854170801035262

`A299675(A046691(n)+7)%∑{d}[n+1, 5^#]`
-/

namespace A299670.P1126854170801035262
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A299675 (A046691 n + 7).toNat) ((∑ d ∈ Nat.divisors (f1 n), 5 ^ d : ℕ) : ℤ)

end

end A299670.P1126854170801035262

/-! ## A299670.P12100827909893029813

`A299675(A167614(n+1))%A008918(n+1)`
-/

namespace A299670.P12100827909893029813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A299675 (A167614 (n + 1)).toNat) (A008918 (n + 1))

end

end A299670.P12100827909893029813

/-! ## A299670.P15974273277586169736

`lcm(A008836(n+1), A299675(A167614(n+1)))`
-/

namespace A299670.P15974273277586169736
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A008836 (n + 1)) (A299675 (A167614 (n + 1)).toNat)

end

end A299670.P15974273277586169736

/-! ## A299670.P14600912926115095896

`A299675(A046691(n)+7)%A046324(n+1)`
-/

namespace A299670.P14600912926115095896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A299675 (A046691 n + 7).toNat) (A046324 (n + 1))

end

end A299670.P14600912926115095896

/-!
# A299671: Number of nX4 0..1 arrays with every element equal to 0, 1, 2, 3, 5, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A299671, there is no canonical definition to state claims against.
-/

/-! ## A299671.P13680450037521168184

`A299675(A374004(n+1))`
-/

namespace A299671.P13680450037521168184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299675 (A374004 (n + 1)).toNat

end

end A299671.P13680450037521168184

/-! ## A299671.P6937800867873347474

`A299675(A141214(n)+7)`
-/

namespace A299671.P6937800867873347474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299675 (A141214 n + 7).toNat

end

end A299671.P6937800867873347474

/-! ## A299671.P3818921792224929803

`A299675(A052905(n)+9)`
-/

namespace A299671.P3818921792224929803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299675 (A052905 n + 9).toNat

end

end A299671.P3818921792224929803

/-! ## A299671.P8932828841518290570

`A299675(A055999(n)+10)`
-/

namespace A299671.P8932828841518290570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299675 (A055999 n + 10).toNat

end

end A299671.P8932828841518290570

/-! ## A299671.P16053447300614926873

`A299675(A167614(n+2)+1)`
-/

namespace A299671.P16053447300614926873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299675 (A167614 (n + 2) + 1).toNat

end

end A299671.P16053447300614926873

/-!
# A299672: Number of nX5 0..1 arrays with every element equal to 0, 1, 2, 3, 5, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A299672, there is no canonical definition to state claims against.
-/

/-! ## A299672.P1043670717093870293

`A299675(A374005(n+1))`
-/

namespace A299672.P1043670717093870293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299675 (A374005 (n + 1)).toNat

end

end A299672.P1043670717093870293

/-! ## A299672.P789232809105384739

`A299675(A155212(n)+13)`
-/

namespace A299672.P789232809105384739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299675 (A155212 n + 13).toNat

end

end A299672.P789232809105384739

/-! ## A299672.P9882650572808779941

`A299675(eq[6, A131818(n+1)])`
-/

namespace A299672.P9882650572808779941
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299675 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A299672.P9882650572808779941

/-! ## A299672.P1593323975286738551

`A299675(Δ[A264443(n)])`
-/

namespace A299672.P1593323975286738551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299675 (f1 (n + 1) - f1 n).toNat

end

end A299672.P1593323975286738551

/-! ## A299672.P14850269694939545180

`A299675(A046691(n+3))`
-/

namespace A299672.P14850269694939545180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299675 (A046691 (n + 3)).toNat

end

end A299672.P14850269694939545180

/-!
# A299673: Number of n X 6 0..1 arrays with every element equal to 0, 1, 2, 3, 5, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A299673, there is no canonical definition to state claims against.
-/

/-! ## A299673.P7126563476550049957

`A299675(A374007(n+1))`
-/

namespace A299673.P7126563476550049957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299675 (A374007 (n + 1)).toNat

end

end A299673.P7126563476550049957

/-! ## A299673.P10165554499379920615

`A299675(A166136(n+4))`
-/

namespace A299673.P10165554499379920615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299675 (A166136 (n + 4)).toNat

end

end A299673.P10165554499379920615

/-! ## A299673.P16427533666045025147

`A299675(A056115(n)+21)`
-/

namespace A299673.P16427533666045025147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299675 (A056115 n + 21).toNat

end

end A299673.P16427533666045025147

/-! ## A299673.P17430273877333393339

`A299675(A000217(n+5)+6)`
-/

namespace A299673.P17430273877333393339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299675 (A000217 (n + 5) + 6).toNat

end

end A299673.P17430273877333393339

/-! ## A299673.P17859201475502656731

`A299675(eq[7, A131818(n+1)])`
-/

namespace A299673.P17859201475502656731
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299675 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A299673.P17859201475502656731

/-!
# A299674: Number of nX7 0..1 arrays with every element equal to 0, 1, 2, 3, 5, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A299674, there is no canonical definition to state claims against.
-/

/-! ## A299674.P6218616526542716968

`A299675(A374008(n+1))`
-/

namespace A299674.P6218616526542716968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299675 (A374008 (n + 1)).toNat

end

end A299674.P6218616526542716968

/-! ## A299674.P12364859627452847221

`A299675(eq[8, A131818(n+1)])`
-/

namespace A299674.P12364859627452847221
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299675 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A299674.P12364859627452847221

/-! ## A299674.P17246811025102133148

`A299675(A055999(n+4))`
-/

namespace A299674.P17246811025102133148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299675 (A055999 (n + 4)).toNat

end

end A299674.P17246811025102133148

/-! ## A299674.P13558854537496032580

`A299675(eq[6, A193592(n)])`
-/

namespace A299674.P13558854537496032580
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299675 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A299674.P13558854537496032580

/-! ## A299674.P7294051736746712875

`A299675(eq[7, A200370(n+1)])`
-/

namespace A299674.P7294051736746712875
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299675 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A299674.P7294051736746712875

/-!
# A299675: T(n,k)=Number of nXk 0..1 arrays with every element equal to 0, 1, 2, 3, 5, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A299675, there is no canonical definition to state claims against.
-/

/-! ## A299675.P7887429743613299307

`A299008(n+1)+A285007(A035607(n))`
-/

namespace A299675.P7887429743613299307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299008 (n + 1) + A285007 (A035607 n).toNat

end

end A299675.P7887429743613299307

/-! ## A299675.P12846882722174907130

`A309785(A331562(n))+A299008(n+1)`
-/

namespace A299675.P12846882722174907130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309785 (A331562 n).toNat + A299008 (n + 1)

end

end A299675.P12846882722174907130

/-! ## A299675.P17495336610695238391

`A309785(A347621(n))+A299008(n+1)`
-/

namespace A299675.P17495336610695238391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309785 (A347621 n).toNat + A299008 (n + 1)

end

end A299675.P17495336610695238391

/-! ## A299675.P9840176882490026889

`xor(A185284(A130348(n)), A299008(n+1))`
-/

namespace A299675.P9840176882490026889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A185284 (A130348 n).toNat) (A299008 (n + 1))

end

end A299675.P9840176882490026889

/-! ## A299675.P6891711960833286677

`xor(A185284(A206225(n+1)), A299008(n+1))`
-/

namespace A299675.P6891711960833286677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A185284 (A206225 (n + 1)).toNat) (A299008 (n + 1))

end

end A299675.P6891711960833286677

/-!
# A299676: Number of n X n 0..1 arrays with every element equal to 0, 1, 2, 4, 5, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A299676, there is no canonical definition to state claims against.
-/

/-! ## A299676.P4647670778149511852

`A299682(∑[4*n]+1)`
-/

namespace A299676.P4647670778149511852
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299682 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A299676.P4647670778149511852

/-! ## A299676.P5674121203004954192

`record[A299682(A330613(n+1))]`
-/

namespace A299676.P5674121203004954192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299682 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A299676.P5674121203004954192

/-! ## A299676.P13134329153553439698

`A299682(A001844(n))+char[20]`
-/

namespace A299676.P13134329153553439698
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  20

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299682 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A299676.P13134329153553439698

/-! ## A299676.P10906543769841140015

`record[A003982(n)*A299682(n+1)]`
-/

namespace A299676.P10906543769841140015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A299682 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A299676.P10906543769841140015

/-! ## A299676.P11794495500265644750

`record[A299682(A115880(2*(n+1))+1)]`
-/

namespace A299676.P11794495500265644750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299682 (A115880 (2 * (n + 1)) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A299676.P11794495500265644750

/-!
# A299677: Number of nX3 0..1 arrays with every element equal to 0, 1, 2, 4, 5, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A299677, there is no canonical definition to state claims against.
-/

/-! ## A299677.P9753314625001761569

`A299682(∑[n+2]+4)`
-/

namespace A299677.P9753314625001761569
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299682 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A299677.P9753314625001761569

/-! ## A299677.P14621131301807221283

`A299682(A167614(n+1))+A185284(n)`
-/

namespace A299677.P14621131301807221283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299682 (A167614 (n + 1)).toNat + A185284 n

end

end A299677.P14621131301807221283

/-! ## A299677.P14143666609604110453

`A299682(A167614(n+1))%A002042(n)`
-/

namespace A299677.P14143666609604110453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A299682 (A167614 (n + 1)).toNat) (A002042 n)

end

end A299677.P14143666609604110453

/-! ## A299677.P4432468512818475560

`lcm(A008327(n), A299682(A167614(n+1)))`
-/

namespace A299677.P4432468512818475560
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A008327 n) (A299682 (A167614 (n + 1)).toNat)

end

end A299677.P4432468512818475560

/-! ## A299677.P9868704109059206209

`A299682(A167614(n+1))+A008683(4*(n+1))`
-/

namespace A299677.P9868704109059206209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299682 (A167614 (n + 1)).toNat + A008683 (4 * (n + 1))

end

end A299677.P9868704109059206209

/-!
# A299678: Number of n X 4 0..1 arrays with every element equal to 0, 1, 2, 4, 5, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A299678, there is no canonical definition to state claims against.
-/

/-! ## A299678.P16449453248506859137

`A299682(A374004(n+1))`
-/

namespace A299678.P16449453248506859137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299682 (A374004 (n + 1)).toNat

end

end A299678.P16449453248506859137

/-! ## A299678.P5599937589898638683

`A299682(A141214(n)+7)`
-/

namespace A299678.P5599937589898638683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299682 (A141214 n + 7).toNat

end

end A299678.P5599937589898638683

/-! ## A299678.P2415988189823409268

`A299682(A052905(n)+9)`
-/

namespace A299678.P2415988189823409268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299682 (A052905 n + 9).toNat

end

end A299678.P2415988189823409268

/-! ## A299678.P800789360592498735

`A299682(A055999(n)+10)`
-/

namespace A299678.P800789360592498735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299682 (A055999 n + 10).toNat

end

end A299678.P800789360592498735

/-! ## A299678.P14662582756093184930

`A299682(A167614(n+2)+1)`
-/

namespace A299678.P14662582756093184930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299682 (A167614 (n + 2) + 1).toNat

end

end A299678.P14662582756093184930

/-!
# A299679: Number of nX5 0..1 arrays with every element equal to 0, 1, 2, 4, 5, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A299679, there is no canonical definition to state claims against.
-/

/-! ## A299679.P12556018042814723572

`A299682(∑[n+4]+11)`
-/

namespace A299679.P12556018042814723572
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299682 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A299679.P12556018042814723572

/-!
# A299680: Number of nX6 0..1 arrays with every element equal to 0, 1, 2, 4, 5, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A299680, there is no canonical definition to state claims against.
-/

/-! ## A299680.P10458213031643181179

`A299682(A374007(n+1))`
-/

namespace A299680.P10458213031643181179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299682 (A374007 (n + 1)).toNat

end

end A299680.P10458213031643181179

/-! ## A299680.P10783823226800244850

`A299682(A056115(n)+21)`
-/

namespace A299680.P10783823226800244850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299682 (A056115 n + 21).toNat

end

end A299680.P10783823226800244850

/-! ## A299680.P16405055325086537881

`A299682(eq[5, A002262(n)]+1)`
-/

namespace A299680.P16405055325086537881
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299682 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A299680.P16405055325086537881

/-! ## A299680.P6189204610080192807

`A299682(eq[7, A131818(n+1)])`
-/

namespace A299680.P6189204610080192807
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299682 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A299680.P6189204610080192807

/-! ## A299680.P11000379447262878481

`A299682(Δ[A023545(n+1)]+10)`
-/

namespace A299680.P11000379447262878481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299682 (f1 (n + 1) - f1 n + 10).toNat

end

end A299680.P11000379447262878481

/-!
# A299681: Number of nX7 0..1 arrays with every element equal to 0, 1, 2, 4, 5, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A299681, there is no canonical definition to state claims against.
-/

/-! ## A299681.P13465307430148296123

`A299682(A374008(n+1))`
-/

namespace A299681.P13465307430148296123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299682 (A374008 (n + 1)).toNat

end

end A299681.P13465307430148296123

/-! ## A299681.P15302252012529617789

`A299682(A167487(n+5))`
-/

namespace A299681.P15302252012529617789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299682 (A167487 (n + 5)).toNat

end

end A299681.P15302252012529617789

/-! ## A299681.P702835563528563722

`A299682(A056119(n)+28)`
-/

namespace A299681.P702835563528563722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299682 (A056119 n + 28).toNat

end

end A299681.P702835563528563722

/-! ## A299681.P14682338969011639870

`A299682(eq[11, A066657(n)])`
-/

namespace A299681.P14682338969011639870
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299682 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A299681.P14682338969011639870

/-! ## A299681.P7131047097611845114

`A299682(eq[8, A131818(n+1)])`
-/

namespace A299681.P7131047097611845114
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299682 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A299681.P7131047097611845114

/-!
# A299682: T(n,k)=Number of nXk 0..1 arrays with every element equal to 0, 1, 2, 4, 5, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A299682, there is no canonical definition to state claims against.
-/

/-! ## A299682.P14808257646243226406

`A300314(n+1)-A025469(A240321(n+1))`
-/

namespace A299682.P14808257646243226406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300314 (n + 1) - A025469 (A240321 (n + 1)).toNat

end

end A299682.P14808257646243226406

/-! ## A299682.P17990653822761684427

`A300314(n+1)-A003982(A256748(n+1))`
-/

namespace A299682.P17990653822761684427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300314 (n + 1) - A003982 (A256748 (n + 1)).toNat

end

end A299682.P17990653822761684427

/-! ## A299682.P7360190374240513906

`A300314(n+1)-A102683(A072345(n))`
-/

namespace A299682.P7360190374240513906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300314 (n + 1) - A102683 (A072345 n).toNat

end

end A299682.P7360190374240513906

/-! ## A299682.P13231292999188304426

`A300314(n+1)-A262693(A123382(n))`
-/

namespace A299682.P13231292999188304426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300314 (n + 1) - A262693 (A123382 n).toNat

end

end A299682.P13231292999188304426

/-!
# A299683: Number of n X n 0..1 arrays with every element equal to 0, 1, 3, 4, 5, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A299683, there is no canonical definition to state claims against.
-/

/-! ## A299683.P15815772619415075294

`A299689(∑[4*n]+1)`
-/

namespace A299683.P15815772619415075294
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299689 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A299683.P15815772619415075294

/-! ## A299683.P702662731512472653

`record[A003982(n)*A299689(n+1)]`
-/

namespace A299683.P702662731512472653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A299689 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A299683.P702662731512472653

/-! ## A299683.P15048872839209220775

`record[gcd(A114327(n), A299689(n+1))]`
-/

namespace A299683.P15048872839209220775
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A299689 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A299683.P15048872839209220775

/-! ## A299683.P14127831922371391477

`A299689(A001844(n))+A025439(n)`
-/

namespace A299683.P14127831922371391477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299689 (A001844 n).toNat + A025439 n

end

end A299683.P14127831922371391477

/-! ## A299683.P3642207939899833736

`or(A115790(n), A299689(A001844(n)))`
-/

namespace A299683.P3642207939899833736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A115790 n) (A299689 (A001844 n).toNat)

end

end A299683.P3642207939899833736

/-!
# A299684: Number of nX3 0..1 arrays with every element equal to 0, 1, 3, 4, 5, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A299684, there is no canonical definition to state claims against.
-/

/-! ## A299684.P13765356234004560723

`A299689(∑[n+2]+4)`
-/

namespace A299684.P13765356234004560723
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299689 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A299684.P13765356234004560723

/-! ## A299684.P5541772646768173295

`or(A000007(n), A299689(A167614(n+1)))`
-/

namespace A299684.P5541772646768173295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A299689 (A167614 (n + 1)).toNat)

end

end A299684.P5541772646768173295

/-! ## A299684.P7144562903525810546

`or(A000038(n), A299689(A167614(n+1)))`
-/

namespace A299684.P7144562903525810546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000038 n) (A299689 (A167614 (n + 1)).toNat)

end

end A299684.P7144562903525810546

/-! ## A299684.P11251143346282725639

`A299689(A167614(n+1))%A008918(n+1)`
-/

namespace A299684.P11251143346282725639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A299689 (A167614 (n + 1)).toNat) (A008918 (n + 1))

end

end A299684.P11251143346282725639

/-! ## A299684.P837818735031830532

`lcm(A008836(n+1), A299689(A167614(n+1)))`
-/

namespace A299684.P837818735031830532
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A008836 (n + 1)) (A299689 (A167614 (n + 1)).toNat)

end

end A299684.P837818735031830532

/-!
# A299685: Number of nX4 0..1 arrays with every element equal to 0, 1, 3, 4, 5, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A299685, there is no canonical definition to state claims against.
-/

/-! ## A299685.P8518416008057198536

`A299689(A374004(n+1))`
-/

namespace A299685.P8518416008057198536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299689 (A374004 (n + 1)).toNat

end

end A299685.P8518416008057198536

/-! ## A299685.P18050143021347766747

`A299689(A141214(n)+7)`
-/

namespace A299685.P18050143021347766747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299689 (A141214 n + 7).toNat

end

end A299685.P18050143021347766747

/-! ## A299685.P1330589441520585528

`A299689(A052905(n)+9)`
-/

namespace A299685.P1330589441520585528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299689 (A052905 n + 9).toNat

end

end A299685.P1330589441520585528

/-! ## A299685.P16951040694067018730

`A299689(A167614(n+2)+1)`
-/

namespace A299685.P16951040694067018730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299689 (A167614 (n + 2) + 1).toNat

end

end A299685.P16951040694067018730

/-! ## A299685.P9787933316725266065

`A299689(A167499(n+2)-1)`
-/

namespace A299685.P9787933316725266065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299689 (A167499 (n + 2) - 1).toNat

end

end A299685.P9787933316725266065

/-!
# A299686: Number of nX5 0..1 arrays with every element equal to 0, 1, 3, 4, 5, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A299686, there is no canonical definition to state claims against.
-/

/-! ## A299686.P7331380466381702963

`A299689(A374005(n+1))`
-/

namespace A299686.P7331380466381702963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299689 (A374005 (n + 1)).toNat

end

end A299686.P7331380466381702963

/-! ## A299686.P7336494099643720803

`A299689(A167614(n+3)+2)`
-/

namespace A299686.P7336494099643720803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299689 (A167614 (n + 3) + 2).toNat

end

end A299686.P7336494099643720803

/-! ## A299686.P11756331806086468430

`A299689((n+4)²-A052905(n))`
-/

namespace A299686.P11756331806086468430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299689 (((n + 4) ^ 2 : ℤ) - A052905 n).toNat

end

end A299686.P11756331806086468430

/-! ## A299686.P13188213492924184575

`A299689(A167499(n+2)+n+4)`
-/

namespace A299686.P13188213492924184575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299689 (A167499 (n + 2) + (n + 4 : ℤ)).toNat

end

end A299686.P13188213492924184575

/-! ## A299686.P13189459066688194075

`A299689(Δ[A264443(n)])`
-/

namespace A299686.P13189459066688194075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299689 (f1 (n + 1) - f1 n).toNat

end

end A299686.P13189459066688194075

/-!
# A299687: Number of nX6 0..1 arrays with every element equal to 0, 1, 3, 4, 5, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A299687, there is no canonical definition to state claims against.
-/

/-! ## A299687.P13306122267078792412

`A299689(A374007(n+1))`
-/

namespace A299687.P13306122267078792412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299689 (A374007 (n + 1)).toNat

end

end A299687.P13306122267078792412

/-! ## A299687.P3510281264588618286

`A299689(eq[5, A002262(n)]+1)`
-/

namespace A299687.P3510281264588618286
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299689 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A299687.P3510281264588618286

/-! ## A299687.P3712742904321372045

`A299689(eq[7, A131818(n+1)])`
-/

namespace A299687.P3712742904321372045
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299689 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A299687.P3712742904321372045

/-! ## A299687.P6052444893615531864

`A299689(A052905(n+3))`
-/

namespace A299687.P6052444893615531864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299689 (A052905 (n + 3)).toNat

end

end A299687.P6052444893615531864

/-! ## A299687.P12912621177008905692

`A299689(eq[3, A219347(n)])`
-/

namespace A299687.P12912621177008905692
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299689 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A299687.P12912621177008905692

/-!
# A299688: Number of nX7 0..1 arrays with every element equal to 0, 1, 3, 4, 5, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A299688, there is no canonical definition to state claims against.
-/

/-! ## A299688.P12564295564082134504

`A299689(A374008(n+1))`
-/

namespace A299688.P12564295564082134504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299689 (A374008 (n + 1)).toNat

end

end A299688.P12564295564082134504

/-! ## A299688.P8547763453792161387

`A299689(eq[8, A131818(n+1)])`
-/

namespace A299688.P8547763453792161387
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299689 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A299688.P8547763453792161387

/-! ## A299688.P8239741811898621863

`A299689(A055999(n+4))`
-/

namespace A299688.P8239741811898621863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299689 (A055999 (n + 4)).toNat

end

end A299688.P8239741811898621863

/-! ## A299688.P15314571043101064650

`A299689(eq[4, A219347(n)])`
-/

namespace A299688.P15314571043101064650
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299689 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A299688.P15314571043101064650

/-! ## A299688.P2093345184304012067

`A299689(eq[6, A193592(n)])`
-/

namespace A299688.P2093345184304012067
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299689 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A299688.P2093345184304012067

/-!
# A299689: T(n,k)=Number of nXk 0..1 arrays with every element equal to 0, 1, 3, 4, 5, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A299689, there is no canonical definition to state claims against.
-/

/-! ## A299689.P2379358536686586652

`A300321(n+1)-A007660(A273712(n))`
-/

namespace A299689.P2379358536686586652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300321 (n + 1) - A007660 (A273712 n).toNat

end

end A299689.P2379358536686586652

/-! ## A299689.P16256179943450985113

`A300321(n+1)-A001222(A273712(n)!)`
-/

namespace A299689.P16256179943450985113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300321 (n + 1) - A001222 (Nat.factorial (A273712 n).toNat)

end

end A299689.P16256179943450985113

/-! ## A299689.P9942244503111867129

`A298154((n+1)*A273712(n)!)`
-/

namespace A299689.P9942244503111867129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298154 ((n + 1) * Nat.factorial (A273712 n).toNat)

end

end A299689.P9942244503111867129

/-! ## A299689.P7152251941362374033

`A298154((n+1)*A299905(n)!)`
-/

namespace A299689.P7152251941362374033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298154 ((n + 1) * Nat.factorial (A299905 n).toNat)

end

end A299689.P7152251941362374033

/-! ## A299689.P13588850337624536684

`A298154((n+1)*a(A299905(n)))` with `a(0)=1`
-/

namespace A299689.P13588850337624536684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A298154 ((n + 1 : ℤ) * a (A299905 n).toNat).toNat

end

end A299689.P13588850337624536684

/-!
# A299690: Numbers without digit 1 whose multiplicative digital root is not 0.

The programs for A299690, there is no canonical definition to state claims against.
-/

/-! ## A299690.P1398870169456647855

`record[A004176(A277061(n+2))]`
-/

namespace A299690.P1398870169456647855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004176 (A277061 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A299690.P1398870169456647855

/-! ## A299690.P5944809108927052136

`eq[char[A277061(n+1)], A261794(n)]`
-/

namespace A299690.P5944809108927052136
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277061 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261794 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A299690.P5944809108927052136

/-! ## A299690.P8462573820237286883

`lt[A268643(n), char[A277061(n+1)]]`
-/

namespace A299690.P8462573820237286883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268643 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277061 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A299690.P8462573820237286883

/-! ## A299690.P1433286604744921571

`∩[A037344(n+1), A277061(n+1)]`
-/

namespace A299690.P1433286604744921571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277061 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A299690.P1433286604744921571

/-! ## A299690.P3498569083207790329

`∩[A039112(n+1), A277061(n+1)]`
-/

namespace A299690.P3498569083207790329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039112 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277061 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A299690.P3498569083207790329

/-! ## A299690.P1781042344149982772

`∩[A052383(n+1), A277061(n+1)]`
-/

namespace A299690.P1781042344149982772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052383 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277061 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A299690.P1781042344149982772

/-!
# A299692: a(n) is the total area that is visible in the perspective view of the stepped pyramid with n levels described in A245092.

The programs for A299692, the canonical program `A299692.P2407571763722409211` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A299692 has offset 1).

The definition of A299692 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A299692.P201431958029446348

`A328366(n+1)/2`
-/

namespace A299692.P201431958029446348
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A328366 (n + 1) : ℚ) / 2

end

end A299692.P201431958029446348

namespace A299692

/-- `A328366(n+1)/2` -/
def P201431958029446348.Spec : Prop :=
  ∀ n, P201431958029446348.a n = (A299692 (n + 1) : ℚ)

theorem P201431958029446348.correct : P201431958029446348.Spec := by
  intro n
  simp only [A299692, Nat.add_sub_cancel, A299692.P201431958029446348.a, A299692.P2407571763722409211.a, A002378, A002378.P6342434596694243671.a, A024916, A024916.P6070136297472608546.a, A328366, A328366.P4444315487186983068.a, A160664, A160664.P14996881624845338289.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A299692

/-! ## A299692.P2407571763722409211

`A024916(n+1)+A002378(n+1)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A299692

/-- `A024916(n+1)+A002378(n+1)` -/
def P2407571763722409211.Spec : Prop :=
  ∀ n, P2407571763722409211.a n = A299692 (n + 1)

theorem P2407571763722409211.correct : P2407571763722409211.Spec := by
  intro n
  simp only [A299692, Nat.add_sub_cancel]

end A299692

/-! ## A299692.P3839099766120336239

`A153485(n+1)+A045943(n+1)`
-/

namespace A299692.P3839099766120336239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153485 (n + 1) + A045943 (n + 1)

end

end A299692.P3839099766120336239

namespace A299692

/-- `A153485(n+1)+A045943(n+1)` -/
def P3839099766120336239.Spec : Prop :=
  ∀ n, P3839099766120336239.a n = A299692 (n + 1)

end A299692

/-! ## A299692.P8379597133108462862

`∑[2*(n+1)+∑{d}[n+1, #]]`
-/

namespace A299692.P8379597133108462862
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1) + ∑ d ∈ Nat.divisors (f2 n), d

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A299692.P8379597133108462862

namespace A299692

/-- `∑[2*(n+1)+∑{d}[n+1, #]]` -/
def P8379597133108462862.Spec : Prop :=
  ∀ n, (P8379597133108462862.a n : ℤ) = A299692 (n + 1)

end A299692

/-! ## A299692.P14688931682125522421

`∑[∑{d}[n+1, #]+2+n+n]`
-/

namespace A299692.P14688931682125522421
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), d + 2 + (n + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A299692.P14688931682125522421

namespace A299692

/-- `∑[∑{d}[n+1, #]+2+n+n]` -/
def P14688931682125522421.Spec : Prop :=
  ∀ n, (P14688931682125522421.a n : ℤ) = A299692 (n + 1)

end A299692

/-! ## A299692.P15632577759363536235

`∑[A224880(n+1)]`
-/

namespace A299692.P15632577759363536235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224880 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A299692.P15632577759363536235

namespace A299692

/-- `∑[A224880(n+1)]` -/
def P15632577759363536235.Spec : Prop :=
  ∀ n, P15632577759363536235.a n = A299692 (n + 1)

end A299692

/-! ## A299692.P17421406867166637902

`∑[A387001(n+1)-1]`
-/

namespace A299692.P17421406867166637902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387001 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A299692.P17421406867166637902

namespace A299692

/-- `∑[A387001(n+1)-1]` -/
def P17421406867166637902.Spec : Prop :=
  ∀ n, P17421406867166637902.a n = A299692 (n + 1)

end A299692

/-! ## A299692.P12268520548049299357

`∑[∑[A340793(n+1)+2]]`
-/

namespace A299692.P12268520548049299357
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340793 (n + 1) + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A299692.P12268520548049299357

namespace A299692

/-- `∑[∑[A340793(n+1)+2]]` -/
def P12268520548049299357.Spec : Prop :=
  ∀ n, P12268520548049299357.a n = A299692 (n + 1)

end A299692

/-! ## A299692.P929106725342947968

`∑[A155085(n+1)+1+n]`
-/

namespace A299692.P929106725342947968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155085 (n + 1) + 1 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A299692.P929106725342947968

namespace A299692

/-- `∑[A155085(n+1)+1+n]` -/
def P929106725342947968.Spec : Prop :=
  ∀ n, P929106725342947968.a n = A299692 (n + 1)

end A299692

/-! ## A299692.P2362827865997752001

`∑[A088580(n+1)+Δ[n²]]`
-/

namespace A299692.P2362827865997752001
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088580 (n + 1) + ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A299692.P2362827865997752001

namespace A299692

/-- `∑[A088580(n+1)+Δ[n²]]` -/
def P2362827865997752001.Spec : Prop :=
  ∀ n, P2362827865997752001.a n = A299692 (n + 1)

end A299692

/-! ## A299692.P10843354883626967593

`∑[2*(n+1)+A000203(n+1)]`
-/

namespace A299692.P10843354883626967593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) + A000203 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A299692.P10843354883626967593

namespace A299692

/-- `∑[2*(n+1)+A000203(n+1)]` -/
def P10843354883626967593.Spec : Prop :=
  ∀ n, P10843354883626967593.a n = A299692 (n + 1)

end A299692

/-! ## A299692.P599173223276173724

`∑[A001065(n+1)+3*n+3]`
-/

namespace A299692.P599173223276173724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1) + (3 * n : ℤ) + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A299692.P599173223276173724

namespace A299692

/-- `∑[A001065(n+1)+3*n+3]` -/
def P599173223276173724.Spec : Prop :=
  ∀ n, P599173223276173724.a n = A299692 (n + 1)

end A299692

/-! ## A299692.P10357898167066510487

`∑[∑{d}[n+1, 2*A000010(#)+#]]`
-/

namespace A299692.P10357898167066510487
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), (2 * A000010 d + (d : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A299692.P10357898167066510487

namespace A299692

/-- `∑[∑{d}[n+1, 2*A000010(#)+#]]` -/
def P10357898167066510487.Spec : Prop :=
  ∀ n, P10357898167066510487.a n = A299692 (n + 1)

end A299692

/-! ## A299692.P4905172380762399269

`∑[A000203(C(n+1, n))+n+2+n]`
-/

namespace A299692.P4905172380762399269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (Nat.choose (n + 1) n) + (n + 2 : ℤ) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A299692.P4905172380762399269

namespace A299692

/-- `∑[A000203(C(n+1, n))+n+2+n]` -/
def P4905172380762399269.Spec : Prop :=
  ∀ n, P4905172380762399269.a n = A299692 (n + 1)

end A299692

/-! ## A299692.P16242896923336224354

`∑[A245092(2*n+1)+1]+(n+1)²`
-/

namespace A299692.P16242896923336224354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245092 (2 * n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ((n + 1) ^ 2 : ℤ)

end

end A299692.P16242896923336224354

namespace A299692

/-- `∑[A245092(2*n+1)+1]+(n+1)²` -/
def P16242896923336224354.Spec : Prop :=
  ∀ n, P16242896923336224354.a n = A299692 (n + 1)

end A299692

/-! ## A299692.P12665628918451203964

`A327329(n+1)+A111490(n+1)`
-/

namespace A299692.P12665628918451203964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327329 (n + 1) + A111490 (n + 1)

end

end A299692.P12665628918451203964

namespace A299692

/-- `A327329(n+1)+A111490(n+1)` -/
def P12665628918451203964.Spec : Prop :=
  ∀ n, P12665628918451203964.a n = A299692 (n + 1)

end A299692

/-! ## A299692.P3806250656703594211

`∑[A000203(n+1)+A005408(n)+1]`
-/

namespace A299692.P3806250656703594211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) + (A005408 n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A299692.P3806250656703594211

namespace A299692

/-- `∑[A000203(n+1)+A005408(n)+1]` -/
def P3806250656703594211.Spec : Prop :=
  ∀ n, P3806250656703594211.a n = A299692 (n + 1)

end A299692

/-! ## A299692.P5717106727708888418

`∑[A000203(n+1)+A005843(n+1)]`
-/

namespace A299692.P5717106727708888418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) + A005843 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A299692.P5717106727708888418

namespace A299692

/-- `∑[A000203(n+1)+A005843(n+1)]` -/
def P5717106727708888418.Spec : Prop :=
  ∀ n, P5717106727708888418.a n = A299692 (n + 1)

end A299692

/-! ## A299692.P6417451095098236285

`∑[A039653(n+1)+A005408(n+1)]`
-/

namespace A299692.P6417451095098236285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039653 (n + 1) + A005408 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A299692.P6417451095098236285

namespace A299692

/-- `∑[A039653(n+1)+A005408(n+1)]` -/
def P6417451095098236285.Spec : Prop :=
  ∀ n, P6417451095098236285.a n = A299692 (n + 1)

end A299692

/-! ## A299692.P8494229597379263742

`∑[A074400(n+1)+A033879(n+1)]`
-/

namespace A299692.P8494229597379263742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074400 (n + 1) + A033879 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A299692.P8494229597379263742

namespace A299692

/-- `∑[A074400(n+1)+A033879(n+1)]` -/
def P8494229597379263742.Spec : Prop :=
  ∀ n, P8494229597379263742.a n = A299692 (n + 1)

end A299692

/-!
# A299693: Irregular triangle read by rows in which row n lists the total sum of the divisors of all numbers k such that the largest Dyck path of the symmetric representation of sigma(k) contains the point (n,n); or row n is 0 if no such k exists.

The programs for A299693, there is no canonical definition to state claims against.
-/

/-! ## A299693.P6436813903211038666

`∑{d}[A279385(n+1), #]`
-/

namespace A299693.P6436813903211038666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279385 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A299693.P6436813903211038666

/-! ## A299693.P1046864523828134822

`∑{d}[A248148(n+1)%A108446(A284390(n+1)), #]`
-/

namespace A299693.P1046864523828134822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A248148 (n + 1)) (A108446 (A284390 (n + 1)).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A299693.P1046864523828134822

/-!
# A299699: Number of rim-hook (or border-strip) tableaux of size n.

The programs for A299699, there is no canonical definition to state claims against.
-/

/-! ## A299699.P14154243762717798184

`A256502(A150304(n+1))`
-/

namespace A299699.P14154243762717798184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256502 (A150304 (n + 1)).toNat

end

end A299699.P14154243762717798184

/-! ## A299699.P17557696312895313806

`A080069(n)+A057515(A079444(n+2))`
-/

namespace A299699.P17557696312895313806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080069 n + A057515 (A079444 (n + 2)).toNat

end

end A299699.P17557696312895313806

