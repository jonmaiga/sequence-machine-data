import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C037
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C007
import Seq.B001.C008
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
import Seq.B004.C002
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
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A224200: Number of nX4 0..3 arrays with rows unimodal and antidiagonals nondecreasing.

The programs for A224200, there is no canonical definition to state claims against.
-/

/-! ## A224200.P16679667882270780247

`A224204(A141214(n+1))`
-/

namespace A224200.P16679667882270780247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224204 (A141214 (n + 1)).toNat

end

end A224200.P16679667882270780247

/-! ## A224200.P4068895052692912106

`A224204(A027379(n+2))`
-/

namespace A224200.P4068895052692912106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224204 (A027379 (n + 2)).toNat

end

end A224200.P4068895052692912106

/-! ## A224200.P358059839471521189

`A224204(A155212(n)+5)`
-/

namespace A224200.P358059839471521189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224204 (A155212 n + 5).toNat

end

end A224200.P358059839471521189

/-! ## A224200.P10460917404325800368

`A224204(A056000(n)+7)`
-/

namespace A224200.P10460917404325800368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224204 (A056000 n + 7).toNat

end

end A224200.P10460917404325800368

/-! ## A224200.P11343701817859854963

`A224204(Δ[A034857(n+1)])`
-/

namespace A224200.P11343701817859854963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034857 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224204 (f1 (n + 1) - f1 n).toNat

end

end A224200.P11343701817859854963

/-!
# A224201: Number of nX5 0..3 arrays with rows unimodal and antidiagonals nondecreasing.

The programs for A224201, there is no canonical definition to state claims against.
-/

/-! ## A224201.P17201114287398475552

`A224204(Δ[A264443(n)])`
-/

namespace A224201.P17201114287398475552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224204 (f1 (n + 1) - f1 n).toNat

end

end A224201.P17201114287398475552

/-! ## A224201.P4562230087221489110

`A224204(A060577(n+4))`
-/

namespace A224201.P4562230087221489110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224204 (A060577 (n + 4)).toNat

end

end A224201.P4562230087221489110

/-! ## A224201.P11611518062646254985

`A224204(eq[2, A092921(n)])`
-/

namespace A224201.P11611518062646254985
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092921 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224204 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A224201.P11611518062646254985

/-! ## A224201.P15707569232233589987

`A224204(Δ[A023545(n+1)])`
-/

namespace A224201.P15707569232233589987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224204 (f1 (n + 1) - f1 n).toNat

end

end A224201.P15707569232233589987

/-! ## A224201.P5427522579554505057

`A224204(A052905(n+2)+1)`
-/

namespace A224201.P5427522579554505057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224204 (A052905 (n + 2) + 1).toNat

end

end A224201.P5427522579554505057

/-!
# A224202: Number of nX6 0..3 arrays with rows unimodal and antidiagonals nondecreasing.

The programs for A224202, there is no canonical definition to state claims against.
-/

/-! ## A224202.P1031914568373253259

`A224204(A052905(n+3))`
-/

namespace A224202.P1031914568373253259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224204 (A052905 (n + 3)).toNat

end

end A224202.P1031914568373253259

/-! ## A224202.P1091169825594620798

`A224204(eq[3, A219347(n)])`
-/

namespace A224202.P1091169825594620798
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224204 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A224202.P1091169825594620798

/-! ## A224202.P9600536430854980074

`A224204(eq[8, A258709(n)])`
-/

namespace A224202.P9600536430854980074
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258709 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224204 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A224202.P9600536430854980074

/-! ## A224202.P9603565150156567479

`A224204(A027379(n+4)-2)`
-/

namespace A224202.P9603565150156567479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224204 (A027379 (n + 4) - 2).toNat

end

end A224202.P9603565150156567479

/-! ## A224202.P7050321482249515927

`A224204(eq[8, A185782(n+1)])`
-/

namespace A224202.P7050321482249515927
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224204 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A224202.P7050321482249515927

/-!
# A224203: Number of nX7 0..3 arrays with rows unimodal and antidiagonals nondecreasing.

The programs for A224203, there is no canonical definition to state claims against.
-/

/-! ## A224203.P9465727909155387040

`A224204(A055999(n+4))`
-/

namespace A224203.P9465727909155387040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224204 (A055999 (n + 4)).toNat

end

end A224203.P9465727909155387040

/-! ## A224203.P7358265684632883398

`A224204(eq[4, A219347(n)])`
-/

namespace A224203.P7358265684632883398
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224204 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A224203.P7358265684632883398

/-! ## A224203.P10644909246739218198

`A224204(eq[6, A193592(n)])`
-/

namespace A224203.P10644909246739218198
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224204 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A224203.P10644909246739218198

/-! ## A224203.P4867480363435511771

`A224204(eq[10, A185782(n+1)])`
-/

namespace A224203.P4867480363435511771
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224204 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A224203.P4867480363435511771

/-! ## A224203.P13934276707560654188

`A224204(eq[7, A200370(n+1)])`
-/

namespace A224203.P13934276707560654188
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224204 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A224203.P13934276707560654188

/-!
# A224204: T(n,k)=Number of nXk 0..3 arrays with rows unimodal and antidiagonals nondecreasing.

The programs for A224204, there is no canonical definition to state claims against.
-/

/-! ## A224204.P5039123207947496688

`∑{e}[3^(n+1), A224281(#)]`
-/

namespace A224204.P5039123207947496688
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A224281 (Nat.factorization (f1 n) p)

end

end A224204.P5039123207947496688

/-! ## A224204.P4222767353988561403

`A224281(A084192(∑[n]))`
-/

namespace A224204.P4222767353988561403
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224281 (A084192 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A224204.P4222767353988561403

/-! ## A224204.P7303605040052039045

`A224281(A084193(∑[n]))`
-/

namespace A224204.P7303605040052039045
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224281 (A084193 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A224204.P7303605040052039045

/-! ## A224204.P3208163529624734627

`A005451(A224281(n+1))`
-/

namespace A224204.P3208163529624734627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005451 (A224281 (n + 1)).toNat

end

end A224204.P3208163529624734627

/-! ## A224204.P2214336804198319212

`A224281(A062003(n)+1)`
-/

namespace A224204.P2214336804198319212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224281 (A062003 n + 1).toNat

end

end A224204.P2214336804198319212

/-!
# A224205: Number of 3Xn 0..3 arrays with rows unimodal and antidiagonals nondecreasing.

The programs for A224205, there is no canonical definition to state claims against.
-/

/-! ## A224205.P1061708932866217631

`A224204(∑[n+2]+4)`
-/

namespace A224205.P1061708932866217631
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224204 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A224205.P1061708932866217631

/-! ## A224205.P13665443275069083390

`A224204(A167614(n+1))+A025466(n)`
-/

namespace A224205.P13665443275069083390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224204 (A167614 (n + 1)).toNat + A025466 n

end

end A224205.P13665443275069083390

/-! ## A224205.P15425935827544821360

`A224204(A167614(n+1))%A017216(n)`
-/

namespace A224205.P15425935827544821360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A224204 (A167614 (n + 1)).toNat) (A017216 n)

end

end A224205.P15425935827544821360

/-! ## A224205.P14299627539817469195

`lcm(A033999(n), A224204(A167614(n+1)))`
-/

namespace A224205.P14299627539817469195
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A224204 (A167614 (n + 1)).toNat)

end

end A224205.P14299627539817469195

/-! ## A224205.P18400118278475091774

`A224204(A167614(n+1))+A034461(n+1)`
-/

namespace A224205.P18400118278475091774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224204 (A167614 (n + 1)).toNat + A034461 (n + 1)

end

end A224205.P18400118278475091774

/-!
# A224206: Number of 4Xn 0..3 arrays with rows unimodal and antidiagonals nondecreasing.

The programs for A224206, there is no canonical definition to state claims against.
-/

/-! ## A224206.P7699094009073189898

`A224204(A141214(n)+7)`
-/

namespace A224206.P7699094009073189898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224204 (A141214 n + 7).toNat

end

end A224206.P7699094009073189898

/-! ## A224206.P5231434073080300475

`A224204(A052905(n)+9)`
-/

namespace A224206.P5231434073080300475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224204 (A052905 n + 9).toNat

end

end A224206.P5231434073080300475

/-! ## A224206.P4144672707283902462

`A224204(A055999(n)+10)`
-/

namespace A224206.P4144672707283902462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224204 (A055999 n + 10).toNat

end

end A224206.P4144672707283902462

/-! ## A224206.P18062344516651388190

`A224204(A167614(n+2)+1)`
-/

namespace A224206.P18062344516651388190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224204 (A167614 (n + 2) + 1).toNat

end

end A224206.P18062344516651388190

/-! ## A224206.P9656682923648793339

`A224204(A167499(n+2)-1)`
-/

namespace A224206.P9656682923648793339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224204 (A167499 (n + 2) - 1).toNat

end

end A224206.P9656682923648793339

/-!
# A224207: Number of 5Xn 0..3 arrays with rows unimodal and antidiagonals nondecreasing.

The programs for A224207, there is no canonical definition to state claims against.
-/

/-! ## A224207.P913327986754386239

`A224204(A167499(n+3))`
-/

namespace A224207.P913327986754386239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224204 (A167499 (n + 3)).toNat

end

end A224207.P913327986754386239

/-! ## A224207.P1836110601317267456

`A224204(A077169(n+5))`
-/

namespace A224207.P1836110601317267456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224204 (A077169 (n + 5)).toNat

end

end A224207.P1836110601317267456

/-! ## A224207.P4599063470536676221

`A224204(A155212(n)+13)`
-/

namespace A224207.P4599063470536676221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224204 (A155212 n + 13).toNat

end

end A224207.P4599063470536676221

/-! ## A224207.P15020892623373780244

`A224204(A056000(n)+15)`
-/

namespace A224207.P15020892623373780244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224204 (A056000 n + 15).toNat

end

end A224207.P15020892623373780244

/-! ## A224207.P3374644303359443096

`A224204(A027379(n+2)+8)`
-/

namespace A224207.P3374644303359443096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224204 (A027379 (n + 2) + 8).toNat

end

end A224207.P3374644303359443096

/-!
# A224208: Number of 6 X n 0..3 arrays with rows unimodal and antidiagonals nondecreasing.

The programs for A224208, there is no canonical definition to state claims against.
-/

/-! ## A224208.P15629866427420096379

`A224204(A056115(n)+21)`
-/

namespace A224208.P15629866427420096379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224204 (A056115 n + 21).toNat

end

end A224208.P15629866427420096379

/-! ## A224208.P17427825774839773764

`A224204(A000217(n+5)+6)`
-/

namespace A224208.P17427825774839773764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224204 (A000217 (n + 5) + 6).toNat

end

end A224208.P17427825774839773764

/-! ## A224208.P7046077832373973460

`A224204(eq[7, A131818(n+1)])`
-/

namespace A224208.P7046077832373973460
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224204 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A224208.P7046077832373973460

/-! ## A224208.P17462720264869651561

`A224204(eq[6, A185782(n+1)]+10)`
-/

namespace A224208.P17462720264869651561
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224204 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 10)

end

end A224208.P17462720264869651561

/-! ## A224208.P7147626129953641163

`A224204(A052905(n+3)-(n-5))`
-/

namespace A224208.P7147626129953641163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224204 (A052905 (n + 3) - ((n : ℤ) - 5)).toNat

end

end A224208.P7147626129953641163

/-!
# A224209: Number of 7Xn 0..3 arrays with rows unimodal and antidiagonals nondecreasing.

The programs for A224209, there is no canonical definition to state claims against.
-/

/-! ## A224209.P9102604202278661661

`A224204(A056119(n)+28)`
-/

namespace A224209.P9102604202278661661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224204 (A056119 n + 28).toNat

end

end A224209.P9102604202278661661

/-! ## A224209.P16842667013863696764

`A224204(eq[11, A066657(n)])`
-/

namespace A224209.P16842667013863696764
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224204 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A224209.P16842667013863696764

/-! ## A224209.P1363112491802157771

`A224204(A000096(n+5)+8)`
-/

namespace A224209.P1363112491802157771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224204 (A000096 (n + 5) + 8).toNat

end

end A224209.P1363112491802157771

/-! ## A224209.P1675855333386929760

`A224204(eq[8, A131818(n+1)])`
-/

namespace A224209.P1675855333386929760
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224204 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A224209.P1675855333386929760

/-! ## A224209.P8843750685258284739

`A224204(A052905(n+4)-(n-5))`
-/

namespace A224209.P8843750685258284739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224204 (A052905 (n + 4) - ((n : ℤ) - 5)).toNat

end

end A224209.P8843750685258284739

/-!
# A224212: Number of nonnegative solutions to x^2 + y^2 <= n.

The programs for A224212, the canonical program `A224212.P18102868260642251365` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A224212 has offset 0).

The definition of A224212 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A224212.P13361374076245347232

`∑[A000925(n)]`
-/

namespace A224212.P13361374076245347232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000925 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A224212.P13361374076245347232

namespace A224212

/-- `∑[A000925(n)]` -/
def P13361374076245347232.Spec : Prop :=
  ∀ n, P13361374076245347232.a n = A224212 n

end A224212

/-! ## A224212.P9073974552528849902

`A014200(n)+∑[char[n²]]`
-/

namespace A224212.P9073974552528849902
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014200 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A224212.P9073974552528849902

namespace A224212

/-- `A014200(n)+∑[char[n²]]` -/
def P9073974552528849902.Spec : Prop :=
  ∀ n, P9073974552528849902.a n = A224212 n

end A224212

/-! ## A224212.P15629821343062870435

`∑[A063725(n)+char[(n+1)²]+char[n²]]`
-/

namespace A224212.P15629821343062870435
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063725 n + (((if ∃ j, f2 j = n then 1 else 0) + (if ∃ j, f3 j = n then 1 else 0) : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A224212.P15629821343062870435

namespace A224212

/-- `∑[A063725(n)+char[(n+1)²]+char[n²]]` -/
def P15629821343062870435.Spec : Prop :=
  ∀ n, P15629821343062870435.a n = A224212 n

end A224212

/-! ## A224212.P16369733021470802548

`∑[A025435(n)+A000161(n)]`
-/

namespace A224212.P16369733021470802548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025435 n + A000161 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A224212.P16369733021470802548

namespace A224212

/-- `∑[A025435(n)+A000161(n)]` -/
def P16369733021470802548.Spec : Prop :=
  ∀ n, P16369733021470802548.a n = A224212 n

end A224212

/-! ## A224212.P18102868260642251365

`A000196(n)+A014200(n)+1`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A224212

/-- `A000196(n)+A014200(n)+1` -/
def P18102868260642251365.Spec : Prop :=
  ∀ n, P18102868260642251365.a n = A224212 n

theorem P18102868260642251365.correct : P18102868260642251365.Spec := by
  intro n
  simp only [A224212]

end A224212

/-! ## A224212.P15703438000275043916

`A237526(n)+A001650(n+1)`
-/

namespace A224212.P15703438000275043916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237526 n + A001650 (n + 1)

end

end A224212.P15703438000275043916

namespace A224212

/-- `A237526(n)+A001650(n+1)` -/
def P15703438000275043916.Spec : Prop :=
  ∀ n, P15703438000275043916.a n = A224212 n

theorem P15703438000275043916.correct : P15703438000275043916.Spec := by
  intro n
  simp only [A224212, Nat.add_sub_cancel, A224212.P15703438000275043916.a, A224212.P18102868260642251365.a, A000196, A000196.P15434771586934192083.a, A001650, A001650.P4146515097473183330.a, A014200, A014200.P16970295702573526038.a, A237526, A237526.P3622557248388023722.a, A014198, A014198.P2354480518814049901.a, A105673, A105673.P14538287794614071707.a, A002654, A002654.P11574922253888480122.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A224212

/-! ## A224212.P11779668037283604851

`A247367(n+1)+A014200(n+1)`
-/

namespace A224212.P11779668037283604851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247367 (n + 1) + A014200 (n + 1)

end

end A224212.P11779668037283604851

namespace A224212

/-- `A247367(n+1)+A014200(n+1)` -/
def P11779668037283604851.Spec : Prop :=
  ∀ n, P11779668037283604851.a n = A224212 n

end A224212

/-! ## A224212.P2690397812395093164

`A000925(9*n)+a(n-1)` with `a(0)=1`
-/

namespace A224212.P2690397812395093164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000925 (9 * n) + a (n - 1)

end

end A224212.P2690397812395093164

namespace A224212

/-- `A000925(9*n)+a(n-1)` -/
def P2690397812395093164.Spec : Prop :=
  ∀ n, P2690397812395093164.a n = A224212 n

end A224212

/-! ## A224212.P3113307201734247234

`∑[A045847(∑[n+3])]`
-/

namespace A224212.P3113307201734247234
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045847 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A224212.P3113307201734247234

namespace A224212

/-- `∑[A045847(∑[n+3])]` -/
def P3113307201734247234.Spec : Prop :=
  ∀ n, P3113307201734247234.a n = A224212 n

end A224212

/-! ## A224212.P2106041952221391564

`A003059((A014200(n)+A003059(n+1))²)`
-/

namespace A224212.P2106041952221391564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003059 ((A014200 n + A003059 (n + 1)) ^ 2).toNat

end

end A224212.P2106041952221391564

namespace A224212

/-- `A003059((A014200(n)+A003059(n+1))²)` -/
def P2106041952221391564.Spec : Prop :=
  ∀ n, P2106041952221391564.a n = A224212 n

end A224212

/-!
# A224213: Number of nonnegative solutions to x^2 + y^2 + z^2 + u^2 <= n.

The programs for A224213, there is no canonical definition to state claims against.
-/

/-! ## A224213.P9808280060224183669

`∑[A014110(n)]`
-/

namespace A224213.P9808280060224183669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014110 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A224213.P9808280060224183669

/-! ## A224213.P1139534667067532083

`A014110(round(sqrt(n²+1)))+a(n-1)` with `a(0)=1`
-/

namespace A224213.P1139534667067532083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A014110 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat + a (n - 1)

end

end A224213.P1139534667067532083

/-! ## A224213.P6623329761341246957

`a(n-1)+A014110(n)%A014088(n+1)` with `a(0)=1`
-/

namespace A224213.P6623329761341246957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.tmod (A014110 n) (A014088 (n + 1))

end

end A224213.P6623329761341246957

/-! ## A224213.P11330302026358253557

`∑[A045847(∑[n+5]+5)]`
-/

namespace A224213.P11330302026358253557
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045847 (∑ j ∈ Finset.range (n + 1), f2 j + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A224213.P11330302026358253557

/-! ## A224213.P1819873453477692911

`A045847(A052905(n+2))+a(n-1)` with `a(0)=1`
-/

namespace A224213.P1819873453477692911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A045847 (A052905 (n + 2)).toNat + a (n - 1)

end

end A224213.P1819873453477692911

/-! ## A224213.P17270558933111164577

`∑[A239355(2*(n+1))-A239355(2*n+1)]`
-/

namespace A224213.P17270558933111164577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239355 (2 * (n + 1)) - A239355 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A224213.P17270558933111164577

/-!
# A224214: Number of nonnegative solutions to x^3 + y^3 <= n^3.

The programs for A224214, there is no canonical definition to state claims against.
-/

/-! ## A224214.P12563689182891499718

`A303484(∑[n+3])`
-/

namespace A224214.P12563689182891499718
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303484 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A224214.P12563689182891499718

/-! ## A224214.P17950866094065523752

`A114886(A023601(n+1))`
-/

namespace A224214.P17950866094065523752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114886 (A023601 (n + 1)).toNat

end

end A224214.P17950866094065523752

/-! ## A224214.P10056513419906112794

`record[A303484(n)-A277295(n+3)]`
-/

namespace A224214.P10056513419906112794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303484 n - A277295 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A224214.P10056513419906112794

/-! ## A224214.P7377902314286847716

`∑[2*n+1-A001221(A047849(n))]`
-/

namespace A224214.P7377902314286847716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) - A001221 (A047849 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A224214.P7377902314286847716

/-! ## A224214.P16647760336475470050

`A102800(A119639(n+1))`
-/

namespace A224214.P16647760336475470050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102800 (A119639 (n + 1)).toNat

end

end A224214.P16647760336475470050

/-!
# A224215: Number of nonnegative solutions to x^3 + y^3 + z^3 <= n^3.

The programs for A224215, there is no canonical definition to state claims against.
-/

/-! ## A224215.P15364576174351098403

`A303484(∑[n+3]+n+3)`
-/

namespace A224215.P15364576174351098403
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303484 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A224215.P15364576174351098403

/-! ## A224215.P7176282671533539951

`record[A303484(∑[A256450(n)])]`
-/

namespace A224215.P7176282671533539951
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256450 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303484 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A224215.P7176282671533539951

/-! ## A224215.P15017964620531660433

`record[A303484(∑[A268231(n+1)])]`
-/

namespace A224215.P15017964620531660433
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268231 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303484 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A224215.P15017964620531660433

/-!
# A224216: Expansion of q * f(-q,-q^7)^2 / (phi(q^2) * psi(-q)) in powers of q where phi(), psi(), f(,) are Ramanujan theta functions.

The programs for A224216, there is no canonical definition to state claims against.
-/

/-! ## A224216.P18036449450326653934

`A087960(n)*A208856(n)`
-/

namespace A224216.P18036449450326653934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087960 n * A208856 n

end

end A224216.P18036449450326653934

/-! ## A224216.P17353765764092217423

`A245432(n+1)`
-/

namespace A224216.P17353765764092217423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245432 (n + 1)

end

end A224216.P17353765764092217423

/-! ## A224216.P3113194778859085015

`A080015(n+1)/2`
-/

namespace A224216.P3113194778859085015
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080015 (n + 1) : ℚ) / 2

end

end A224216.P3113194778859085015

/-! ## A224216.P5947655044136291592

`A057077(n+1)*A115671(n+1)`
-/

namespace A224216.P5947655044136291592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 (n + 1) * A115671 (n + 1)

end

end A224216.P5947655044136291592

/-! ## A224216.P7976144241193960705

`A210030(n+1)/A280560(n+1)`
-/

namespace A224216.P7976144241193960705
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A210030 (n + 1) : ℚ) / (A280560 (n + 1) : ℚ)

end

end A224216.P7976144241193960705

/-! ## A224216.P6356148042623288297

`A057077(n+1)/2*A080054(n+1)`
-/

namespace A224216.P6356148042623288297
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057077 (n + 1) : ℚ) / 2 * (A080054 (n + 1) : ℚ)

end

end A224216.P6356148042623288297

/-! ## A224216.P3289779440078470910

`A087960(n+1)/2*A108494(n+1)`
-/

namespace A224216.P3289779440078470910
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A087960 (n + 1) : ℚ) / 2 * (A108494 (n + 1) : ℚ)

end

end A224216.P3289779440078470910

/-! ## A224216.P8663195920281499819

`A033999(n+1)/2*A210030(n+1)`
-/

namespace A224216.P8663195920281499819
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033999 (n + 1) : ℚ) / 2 * (A210030 (n + 1) : ℚ)

end

end A224216.P8663195920281499819

/-! ## A224216.P388734266476947373

`(A056594(n+1)+A056594(n))*A208856(n)`
-/

namespace A224216.P388734266476947373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A056594 (n + 1) + A056594 n) * A208856 n

end

end A224216.P388734266476947373

/-! ## A224216.P9700774370634340864

`A210030(n+1)/A210065(n+1)*A208851(n)`
-/

namespace A224216.P9700774370634340864
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A210030 (n + 1) : ℚ) / (A210065 (n + 1) : ℚ) * (A208851 n : ℚ)

end

end A224216.P9700774370634340864

/-! ## A224216.P11161997400258801533

`A087960(2*n+1)/2*A210030(n+1)`
-/

namespace A224216.P11161997400258801533
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A087960 (2 * n + 1) : ℚ) / 2 * (A210030 (n + 1) : ℚ)

end

end A224216.P11161997400258801533

/-! ## A224216.P3037341463590377159

`A230535(2*(n+1))/2-A230535(2*(n+1))`
-/

namespace A224216.P3037341463590377159
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A230535 (2 * (n + 1)) : ℚ) / 2 - (A230535 (2 * (n + 1)) : ℚ)

end

end A224216.P3037341463590377159

/-! ## A224216.P15392174899961301069

`A214639(2*(n+1))`
-/

namespace A224216.P15392174899961301069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214639 (2 * (n + 1))

end

end A224216.P15392174899961301069

/-! ## A224216.P1837385371650100440

`A185083(n+1)*A210030(n+1)/A210065(n+1)`
-/

namespace A224216.P1837385371650100440
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A185083 (n + 1) * A210030 (n + 1) : ℚ) / (A210065 (n + 1) : ℚ)

end

end A224216.P1837385371650100440

/-! ## A224216.P3562037259683490571

`A208856(n)*A218171(A154293(n+1))`
-/

namespace A224216.P3562037259683490571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208856 n * A218171 (A154293 (n + 1)).toNat

end

end A224216.P3562037259683490571

/-! ## A224216.P13695101752216357412

`A115671(n+1)*A218171(A154293(n+1))`
-/

namespace A224216.P13695101752216357412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115671 (n + 1) * A218171 (A154293 (n + 1)).toNat

end

end A224216.P13695101752216357412

/-!
# A224217: Numbers b such that b^2 + 4*b + 9 is prime.

The programs for A224217, there is no canonical definition to state claims against.
-/

/-! ## A224217.P7685712785654554093

`A078402(n+2)-2`
-/

namespace A224217.P7685712785654554093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078402 (n + 2) - 2

end

end A224217.P7685712785654554093

/-! ## A224217.P6887455795232971640

`A306653(A006530(n+2))+A078402(n+2)`
-/

namespace A224217.P6887455795232971640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306653 (A006530 (n + 2)).toNat + A078402 (n + 2)

end

end A224217.P6887455795232971640

/-! ## A224217.P14481937944016091805

`A008458(A056906(n+2))-2`
-/

namespace A224217.P14481937944016091805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 (A056906 (n + 2)).toNat - 2

end

end A224217.P14481937944016091805

/-! ## A224217.P11235711961867495497

`A306653(A045391(n+1))+A078402(n+2)`
-/

namespace A224217.P11235711961867495497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306653 (A045391 (n + 1)).toNat + A078402 (n + 2)

end

end A224217.P11235711961867495497

/-! ## A224217.P12579632193276475977

`A306653(A215390(n+1))+A078402(n+2)`
-/

namespace A224217.P12579632193276475977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306653 (A215390 (n + 1)).toNat + A078402 (n + 2)

end

end A224217.P12579632193276475977

/-! ## A224217.P7196160186779986722

`eq[5, A300817(n+2)]`
-/

namespace A224217.P7196160186779986722
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300817 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A224217.P7196160186779986722

/-! ## A224217.P536239426270267670

`A023444(A078402(n+2))`
-/

namespace A224217.P536239426270267670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A078402 (n + 2)).toNat

end

end A224217.P536239426270267670

/-! ## A224217.P16083750889832577145

`eq[A168092(A300817(n)), A300817(n)]-2`
-/

namespace A224217.P16083750889832577145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168092 (A300817 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300817 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j = f2 j) n : ℤ) - 2

end

end A224217.P16083750889832577145

/-! ## A224217.P6716841086384166464

`A306653(A215393(n+1))+A078402(n+2)`
-/

namespace A224217.P6716841086384166464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306653 (A215393 (n + 1)).toNat + A078402 (n + 2)

end

end A224217.P6716841086384166464

/-!
# A224219: Number of set partitions of {1,2,...,n} such that the size of the smallest block is unique.

The programs for A224219, there is no canonical definition to state claims against.
-/

/-! ## A224219.P560973887582969855

`abs(record[Δ[A372762(n)]])`
-/

namespace A224219.P560973887582969855
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372762 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)|

end

end A224219.P560973887582969855

/-! ## A224219.P421024114489127475

`A372762(∑[n+1]+1)`
-/

namespace A224219.P421024114489127475
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372762 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A224219.P421024114489127475

/-!
# A224224: Numerators of continued fraction convergents to ( sqrt(4*sqrt(3)-3) - 1 )/4.

The programs for A224224, there is no canonical definition to state claims against.
-/

/-! ## A224224.P13551871002258879516

`Δ[A022103(n)]%A003205(n)`
-/

namespace A224224.P13551871002258879516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022103 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A003205 n)

end

end A224224.P13551871002258879516

/-! ## A224224.P14812548309403691068

`Δ[A022317(n)]%A003205(n)`
-/

namespace A224224.P14812548309403691068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022317 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A003205 n)

end

end A224224.P14812548309403691068

/-! ## A224224.P1258441328381869327

`A022103(A032555(n+1))%A022103(n)`
-/

namespace A224224.P1258441328381869327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A022103 (A032555 (n + 1)).toNat) (A022103 n)

end

end A224224.P1258441328381869327

/-! ## A224224.P14259216529155808099

`A022103(A032559(n+1))%A022103(n)`
-/

namespace A224224.P14259216529155808099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A022103 (A032559 (n + 1)).toNat) (A022103 n)

end

end A224224.P14259216529155808099

/-!
# A224226: a(0)=1; thereafter a(n) =s(n,3)-s(n,4)-s(n,6)+s(n,12), where s(n,k) = sigma(n/k) if k divides n, otherwise 0.

The programs for A224226, there is no canonical definition to state claims against.
-/

/-! ## A224226.P1127915392938592015

`A321527(n)+A000007(n)`
-/

namespace A224226.P1127915392938592015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321527 n + A000007 n

end

end A224226.P1127915392938592015

/-! ## A224226.P388630529561249121

`A321527(n)^abs(A057428(n))`
-/

namespace A224226.P388630529561249121
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A321527 n : ℚ) ^ (|A057428 n| : ℤ)

end

end A224226.P388630529561249121

/-! ## A224226.P10514121016446801305

`A321527(n)^abs(A062157(n))`
-/

namespace A224226.P10514121016446801305
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A321527 n : ℚ) ^ (|A062157 n| : ℤ)

end

end A224226.P10514121016446801305

/-! ## A224226.P6665102718258065270

`A321527(n)+char[A016807(n)]`
-/

namespace A224226.P6665102718258065270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016807 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321527 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A224226.P6665102718258065270

/-! ## A224226.P14408736364111345999

`A321527(n)+A000038(n)/2`
-/

namespace A224226.P14408736364111345999
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A321527 n : ℚ) + (A000038 n : ℚ) / 2

end

end A224226.P14408736364111345999

/-! ## A224226.P651614575218837714

`A321527(n)+A008616(round(n/(n+1)))`
-/

namespace A224226.P651614575218837714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321527 n + A008616 (SequenceMachineLib.roundAway ((n : ℚ) / (n + 1 : ℚ))).toNat

end

end A224226.P651614575218837714

/-! ## A224226.P9066311216245452458

`A321527(n)+A008683(A008574(n))`
-/

namespace A224226.P9066311216245452458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321527 n + A008683 (A008574 n).toNat

end

end A224226.P9066311216245452458

/-! ## A224226.P15068859950071083554

`A321527(n)^A001221(A001316(n))`
-/

namespace A224226.P15068859950071083554
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A321527 n : ℚ) ^ (A001221 (A001316 n).toNat : ℤ)

end

end A224226.P15068859950071083554

/-! ## A224226.P5872147603980342010

`A321527(n)+A007920(A006530(n+1))`
-/

namespace A224226.P5872147603980342010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321527 n + A007920 (A006530 (n + 1)).toNat

end

end A224226.P5872147603980342010

/-! ## A224226.P13186541367193038093

`A321527(n)-A008683(2*A008574(n))`
-/

namespace A224226.P13186541367193038093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321527 n - A008683 (2 * A008574 n).toNat

end

end A224226.P13186541367193038093

/-! ## A224226.P2450843252374234964

`A321527(n)+A010054(A010054(n)+n)`
-/

namespace A224226.P2450843252374234964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321527 n + A010054 (A010054 n + (n : ℤ)).toNat

end

end A224226.P2450843252374234964

/-! ## A224226.P3928079904848650477

`or(A000007(2*n), A321527(n))`
-/

namespace A224226.P3928079904848650477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 (2 * n)) (A321527 n)

end

end A224226.P3928079904848650477

/-! ## A224226.P12987073597813760959

`A321527(n)+A008683(A004011(n))`
-/

namespace A224226.P12987073597813760959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321527 n + A008683 (A004011 n).toNat

end

end A224226.P12987073597813760959

/-! ## A224226.P14425368734443727636

`A321527(n)-A008683(2*A004011(n))`
-/

namespace A224226.P14425368734443727636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321527 n - A008683 (2 * A004011 n).toNat

end

end A224226.P14425368734443727636

/-! ## A224226.P2661769919759885008

`A321527(A004011(n)+2)+A321527(n)`
-/

namespace A224226.P2661769919759885008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321527 (A004011 n + 2).toNat + A321527 n

end

end A224226.P2661769919759885008

/-!
# A224227: a(n) = (1/50)*((15*n^2-20*n+4)*Fibonacci(n) - (5*n^2-6*n)*A000032(n)).

The programs for A224227, the canonical program `A224227.P8919765967966025148` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A224227 has offset 0).

The definition of A224227 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A224227.P8919765967966025148

`1/50*((15*n²-20*n+4)*A000045(n)-(5*n²-6*n)*A000032(n))`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A224227

/-- `1/50*((15*n²-20*n+4)*A000045(n)-(5*n²-6*n)*A000032(n))` -/
def P8919765967966025148.Spec : Prop :=
  ∀ n, P8919765967966025148.a n = (A224227 n : ℚ)

end A224227

/-! ## A224227.P17440552122200826835

`A348960(A356507(n))`
-/

namespace A224227.P17440552122200826835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348960 (A356507 n).toNat

end

end A224227.P17440552122200826835

namespace A224227

/-- `A348960(A356507(n))` -/
def P17440552122200826835.Spec : Prop :=
  ∀ n, P17440552122200826835.a n = A224227 n

end A224227

/-! ## A224227.P17455287185873906658

`A116939(A056015(n+2))`
-/

namespace A224227.P17455287185873906658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116939 (A056015 (n + 2)).toNat

end

end A224227.P17455287185873906658

namespace A224227

/-- `A116939(A056015(n+2))` -/
def P17455287185873906658.Spec : Prop :=
  ∀ n, P17455287185873906658.a n = A224227 n

end A224227

/-! ## A224227.P1917284740514356044

`A260505(A173588(∑[n+1]))`
-/

namespace A224227.P1917284740514356044
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260505 (A173588 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A224227.P1917284740514356044

namespace A224227

/-- `A260505(A173588(∑[n+1]))` -/
def P1917284740514356044.Spec : Prop :=
  ∀ n, P1917284740514356044.a n = A224227 n

end A224227

/-! ## A224227.P13197128666779712947

`A260505(A032555(n+1)+1)`
-/

namespace A224227.P13197128666779712947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260505 (A032555 (n + 1) + 1).toNat

end

end A224227.P13197128666779712947

namespace A224227

/-- `A260505(A032555(n+1)+1)` -/
def P13197128666779712947.Spec : Prop :=
  ∀ n, P13197128666779712947.a n = A224227 n

end A224227

/-!
# A224229: a(0)=2; for n>0, a(n) = smallest prime not occurring earlier in the sequence such that a(n-1)+a(n) is a multiple of floor(sqrt(n)). If no such prime exists, the sequence terminates.

The programs for A224229, there is no canonical definition to state claims against.
-/

/-! ## A224229.P17204967699807321611

`p?[A107896(A107896(n+1))-1]`
-/

namespace A224229.P17204967699807321611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107896 (A107896 (n + 1)).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A224229.P17204967699807321611

/-! ## A224229.P12264102043908934440

`xor(A110923(n+1), A350386(A005578(n)))`
-/

namespace A224229.P12264102043908934440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A110923 (n + 1)) (A350386 (A005578 n).toNat)

end

end A224229.P12264102043908934440

/-! ## A224229.P4464434089848875746

`xor(A000040(n+1), A249093(A034386(n+2)))`
-/

namespace A224229.P4464434089848875746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000040 (n + 1)) (A249093 (A034386 (n + 2)).toNat)

end

end A224229.P4464434089848875746

/-! ## A224229.P8038638135755850504

`xor(A000040(n+1), A349797(A000041(n)))`
-/

namespace A224229.P8038638135755850504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000040 (n + 1)) (A349797 (A000041 n).toNat)

end

end A224229.P8038638135755850504

/-! ## A224229.P9943406443070457230

`A379830(A069796(n+1))+A358798(n+1)`
-/

namespace A224229.P9943406443070457230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379830 (A069796 (n + 1)).toNat + A358798 (n + 1)

end

end A224229.P9943406443070457230

/-!
# A224230: Egyptian fraction expansion of Pi.

The programs for A224230, there is no canonical definition to state claims against.
-/

/-! ## A224230.P1518757588001115120

`record[or(A182257(n), A278105(n+1))]`
-/

namespace A224230.P1518757588001115120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A182257 n) (A278105 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A224230.P1518757588001115120

/-!
# A224231: Egyptian fraction expansion of sqrt(3).

The programs for A224231, there is no canonical definition to state claims against.
-/

/-! ## A224231.P12109461860831881294

`∏{e}[2^n, A118325(#)]`
-/

namespace A224231.P12109461860831881294
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A118325 (Nat.factorization (f1 n) p)

end

end A224231.P12109461860831881294

/-! ## A224231.P459485464166690975

`A118325(round(sqrt(n²+1)))-A058276(n)`
-/

namespace A224231.P459485464166690975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118325 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat - A058276 n

end

end A224231.P459485464166690975

/-! ## A224231.P15537497905893333390

`A118325(A028310(n))-A000007(n)`
-/

namespace A224231.P15537497905893333390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118325 (A028310 n).toNat - A000007 n

end

end A224231.P15537497905893333390

/-! ## A224231.P13505036749215698133

`A118325(A028310(n))-A114099(n)`
-/

namespace A224231.P13505036749215698133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118325 (A028310 n).toNat - A114099 n

end

end A224231.P13505036749215698133

/-! ## A224231.P5728372649099921735

`A118325(A028310(n))-A151878(n)`
-/

namespace A224231.P5728372649099921735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118325 (A028310 n).toNat - A151878 n

end

end A224231.P5728372649099921735

/-!
# A224232: a(n) = n! if n <= 3, otherwise a(n) = 2*(a(n-1) + a(n-3)) + a(n-2).

The programs for A224232, the canonical program `A224232.P10103781980325146721` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A224232 has offset 0).

The definition of A224232 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*(a(n-1)+a(n-3))+a(n-2)` (program `A224232.P10103781980325146721`, by `A224232.P10103781980325146721.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A224232.P10103781980325146721

`2*(a(n-1)+a(n-3))+a(n-2)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=6`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A224232

/-- `2*(a(n-1)+a(n-3))+a(n-2)` -/
def P10103781980325146721.Spec : Prop :=
  ∀ n, (P10103781980325146721.a n : ℤ) = A224232 n

theorem P10103781980325146721.correct : P10103781980325146721.Spec := by
  intro n
  simp only [A224232]

end A224232

/-! ## A224232.P9152141877276040381

`ogf((-1+x+x^2+x^3)/(-1+2x+x^2+2x^3))`
-/

namespace A224232.P9152141877276040381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, -1, -1] [1, -2, -1, -2] n

end

end A224232.P9152141877276040381

namespace A224232

/-- `ogf((-1+x+x^2+x^3)/(-1+2x+x^2+2x^3))` -/
def P9152141877276040381.Spec : Prop :=
  ∀ n, P9152141877276040381.a n = A224232 n

end A224232

/-! ## A224232.P10988001321048439402

`A054576(Δ[Δ[A077996(n)]])`
-/

namespace A224232.P10988001321048439402
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077996 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054576 (f1 (n + 1) - f1 n).toNat

end

end A224232.P10988001321048439402

namespace A224232

/-- `A054576(Δ[Δ[A077996(n)]])` -/
def P10988001321048439402.Spec : Prop :=
  ∀ n, P10988001321048439402.a n = A224232 n

end A224232

/-! ## A224232.P7086587855956377866

`A060819(Δ[Δ[A077996(n)]])`
-/

namespace A224232.P7086587855956377866
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077996 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060819 (f1 (n + 1) - f1 n).toNat

end

end A224232.P7086587855956377866

namespace A224232

/-- `A060819(Δ[Δ[A077996(n)]])` -/
def P7086587855956377866.Spec : Prop :=
  ∀ n, P7086587855956377866.a n = A224232 n

end A224232

/-! ## A224232.P802619579474346974

`A106621(Δ[Δ[A077996(n)]])`
-/

namespace A224232.P802619579474346974
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077996 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106621 (f1 (n + 1) - f1 n).toNat

end

end A224232.P802619579474346974

namespace A224232

/-- `A106621(Δ[Δ[A077996(n)]])` -/
def P802619579474346974.Spec : Prop :=
  ∀ n, P802619579474346974.a n = A224232 n

end A224232

/-!
# A224233: Decimal expansion of number of inches in a meter.

The programs for A224233, there is no canonical definition to state claims against.
-/

/-! ## A224233.P7560582883820469191

`A021258(n+2)`
-/

namespace A224233.P7560582883820469191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021258 (n + 2)

end

end A224233.P7560582883820469191

/-!
# A224239: Number of inequivalent ways to cut an n X n square into squares with integer sides.

The programs for A224239, there is no canonical definition to state claims against.
-/

/-! ## A224239.P11589342634672125138

`A226978(n+1)+A226979(n+1)+A226980(n+1)+A226981(n+1)`
-/

namespace A224239.P11589342634672125138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226978 (n + 1) + A226979 (n + 1) + A226980 (n + 1) + A226981 (n + 1)

end

end A224239.P11589342634672125138

/-! ## A224239.P9007501867658222650

`∑{d}[n+1, A221844(#)]`
-/

namespace A224239.P9007501867658222650
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A221844 d

end

end A224239.P9007501867658222650

/-! ## A224239.P953596171312383932

`A227690(∑[4*(n+1)])`
-/

namespace A224239.P953596171312383932
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227690 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A224239.P953596171312383932

/-!
# A224240: Number of rationally smooth Schubert varieties of type B_n (also type C_n).

The programs for A224240, there is no canonical definition to state claims against.
-/

/-! ## A224240.P18234616295476109684

`A061539(n)+A224066(n)-A032351(n+1)`
-/

namespace A224240.P18234616295476109684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061539 n + A224066 n - A032351 (n + 1)

end

end A224240.P18234616295476109684

/-! ## A224240.P12421127766941964002

`A262978(A279567(n+1))`
-/

namespace A224240.P12421127766941964002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262978 (A279567 (n + 1)).toNat

end

end A224240.P12421127766941964002

/-!
# A224242: Numbers k such that k^2 XOR (k+1)^2 is a square, and k^2 XOR (k-1)^2 is a square, where XOR is the bitwise logical XOR operator.

The programs for A224242, there is no canonical definition to state claims against.
-/

/-! ## A224242.P8026253572622037918

`eq[A163239(n), A213064(A286145(n))]`
-/

namespace A224242.P8026253572622037918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163239 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213064 (A286145 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A224242.P8026253572622037918

/-! ## A224242.P10639435479795225876

`eq[A030109(A195063(n+1)), A035327(n)]`
-/

namespace A224242.P10639435479795225876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030109 (A195063 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035327 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A224242.P10639435479795225876

/-! ## A224242.P14850678767861164436

`eq[A030109(A195063(n+1)), A080079(n+1)]`
-/

namespace A224242.P14850678767861164436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030109 (A195063 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080079 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A224242.P14850678767861164436

/-!
# A224245: Number of n-permutations in which there is a unique smallest cycle.

The programs for A224245, there is no canonical definition to state claims against.
-/

/-! ## A224245.P14010927515490889032

`A064542(A056205(n)+A004525(n))`
-/

namespace A224245.P14010927515490889032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064542 (A056205 n + A004525 n).toNat

end

end A224245.P14010927515490889032

/-! ## A224245.P11570153776136531006

`A064542(A056205(n)+A027187(n))`
-/

namespace A224245.P11570153776136531006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064542 (A056205 n + A027187 n).toNat

end

end A224245.P11570153776136531006

/-!
# A224246: The number of n-permutations that have a unique smallest cycle and this cycle contains the element 1.

The programs for A224246, there is no canonical definition to state claims against.
-/

/-! ## A224246.P4732407242743537254

`A289496(Δ[3*n!]+n+1)`
-/

namespace A224246.P4732407242743537254
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * Nat.factorial n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289496 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + (n + 1 : ℤ)).toNat

end

end A224246.P4732407242743537254

/-! ## A224246.P9695317628942902230

`A130420(A148363(n))`
-/

namespace A224246.P9695317628942902230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130420 (A148363 n).toNat

end

end A224246.P9695317628942902230

/-!
# A224248: Number of permutations in S_n containing exactly one increasing subsequence of length 5.

The programs for A224248, there is no canonical definition to state claims against.
-/

/-! ## A224248.P625952467369669630

`∑[A349395(A139516(n))]`
-/

namespace A224248.P625952467369669630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349395 (A139516 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A224248.P625952467369669630

/-! ## A224248.P1530773952095037405

`A210717(A188381(n+2))`
-/

namespace A224248.P1530773952095037405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210717 (A188381 (n + 2)).toNat

end

end A224248.P1530773952095037405

/-! ## A224248.P9655333806797142733

`A210717(A165477(n)+A006171(n))`
-/

namespace A224248.P9655333806797142733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210717 (A165477 n + A006171 n).toNat

end

end A224248.P9655333806797142733

/-! ## A224248.P4071737206480070143

`A113226(n)-A368171(A263780(n))`
-/

namespace A224248.P4071737206480070143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113226 n - A368171 (A263780 n).toNat

end

end A224248.P4071737206480070143

/-!
# A224249: Number of permutations in S_n containing exactly 2 increasing subsequences of length 4.

The programs for A224249, there is no canonical definition to state claims against.
-/

/-! ## A224249.P17943397124324386716

`A061217(∏[A030118(n)])`
-/

namespace A224249.P17943397124324386716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030118 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061217 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A224249.P17943397124324386716

/-! ## A224249.P9823280612350889702

`A144740(∏[A078840(n)])`
-/

namespace A224249.P9823280612350889702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078840 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144740 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A224249.P9823280612350889702

/-! ## A224249.P13774836752570712540

`A144740(∏[A185974(n)])`
-/

namespace A224249.P13774836752570712540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185974 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144740 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A224249.P13774836752570712540

/-!
# A224250: Number of permutations in S_n containing exactly 2 increasing subsequences of length 5.

The programs for A224250, there is no canonical definition to state claims against.
-/

/-! ## A224250.P10305360494255113819

`A344639(A016993(n))%A128936(2*n+1)`
-/

namespace A224250.P10305360494255113819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A344639 (A016993 n).toNat) (A128936 (2 * n + 1))

end

end A224250.P10305360494255113819

/-! ## A224250.P1018337488750355698

`floor(A324327(n)/2)`
-/

namespace A224250.P1018337488750355698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A324327 n : ℚ) / 2⌋

end

end A224250.P1018337488750355698

/-! ## A224250.P11839883222627676813

`A289814(floor(n^n/9))`
-/

namespace A224250.P11839883222627676813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289814 ⌊(n ^ n : ℚ) / 9⌋.toNat

end

end A224250.P11839883222627676813

/-!
# A224251: Numbers, a(n) where binomial(a(n), 5n-1) == 0 (mod 5) and binomial(a(n), k) != 0 (mod 5) for k != 5n - 1.

The programs for A224251, the canonical program `A224251.P16511171723725799977` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A224251 has offset 1).

The definition of A224251 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A224251.P16511171723725799977

`a(n-1)+5*a(n-4)-5*a(n-5)` with `a(0)=8, a(1)=13, a(2)=18, a(3)=23, a(4)=48`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A224251

/-- `a(n-1)+5*a(n-4)-5*a(n-5)` -/
def P16511171723725799977.Spec : Prop :=
  ∀ n, P16511171723725799977.a n = A224251 (n + 1)

theorem P16511171723725799977.correct : P16511171723725799977.Spec := by
  intro n
  simp only [A224251, Nat.add_sub_cancel]

end A224251

/-! ## A224251.P4493530164262697006

`∑[5*a(n-4)]+3` with `a(0)=5, a(1)=5, a(2)=5, a(3)=5`
-/

namespace A224251.P4493530164262697006
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [5, 5, 5, 5] fun n f1 =>
  5 * f1 (n - 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 3

end

end A224251.P4493530164262697006

namespace A224251

/-- `∑[5*a(n-4)]+3` -/
def P4493530164262697006.Spec : Prop :=
  ∀ n, (P4493530164262697006.a n : ℤ) = A224251 (n + 1)

end A224251

/-! ## A224251.P12399375698182913377

`A140730(n+5)-2`
-/

namespace A224251.P12399375698182913377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140730 (n + 5) - 2

end

end A224251.P12399375698182913377

namespace A224251

/-- `A140730(n+5)-2` -/
def P12399375698182913377.Spec : Prop :=
  ∀ n, P12399375698182913377.a n = A224251 (n + 1)

end A224251

/-! ## A224251.P425484930716978567

`∑[5^A008621(n)]+3`
-/

namespace A224251.P425484930716978567
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 : ℚ) ^ (A008621 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 3

end

end A224251.P425484930716978567

namespace A224251

/-- `∑[5^A008621(n)]+3` -/
def P425484930716978567.Spec : Prop :=
  ∀ n, P425484930716978567.a n = (A224251 (n + 1) : ℚ)

end A224251

/-! ## A224251.P12523866883693108156

`∑[5^(A002265(n)+1)]+3`
-/

namespace A224251.P12523866883693108156
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 : ℚ) ^ (A002265 n + 1 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 3

end

end A224251.P12523866883693108156

namespace A224251

/-- `∑[5^(A002265(n)+1)]+3` -/
def P12523866883693108156.Spec : Prop :=
  ∀ n, P12523866883693108156.a n = (A224251 (n + 1) : ℚ)

end A224251

/-! ## A224251.P12515532099353509365

`∑[A056451(∑[and(1, n+1)])]+3`
-/

namespace A224251.P12515532099353509365
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056451 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 3

end

end A224251.P12515532099353509365

namespace A224251

/-- `∑[A056451(∑[and(1, n+1)])]+3` -/
def P12515532099353509365.Spec : Prop :=
  ∀ n, P12515532099353509365.a n = A224251 (n + 1)

end A224251

/-! ## A224251.P14820282297820380184

`∑[A056451(∑[A025155(a(n-1))])]+3` with `a(0)=1`
-/

namespace A224251.P14820282297820380184
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  A025155 (f2 (n - 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056451 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 3

end

end A224251.P14820282297820380184

namespace A224251

/-- `∑[A056451(∑[A025155(a(n-1))])]+3` -/
def P14820282297820380184.Spec : Prop :=
  ∀ n, P14820282297820380184.a n = A224251 (n + 1)

end A224251

/-!
# A224254: Full cycle lengths in the Collatz (3x+1) problem when the negative integers are used.

The programs for A224254, there is no canonical definition to state claims against.
-/

/-! ## A224254.P2379172250237340259

`floor(2^sqrt(A056957(n+1)+1))`
-/

namespace A224254.P2379172250237340259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 : ℝ) ^ (Real.sqrt (A056957 (n + 1) + 1 : ℝ))⌋

end

end A224254.P2379172250237340259

/-! ## A224254.P7228433013964917758

`A171178(A056957(n+1))`
-/

namespace A224254.P7228433013964917758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171178 (A056957 (n + 1)).toNat

end

end A224254.P7228433013964917758

/-! ## A224254.P3431826122511747313

`A014321(A056957(n+1)+1)`
-/

namespace A224254.P3431826122511747313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014321 (A056957 (n + 1) + 1).toNat

end

end A224254.P3431826122511747313

/-! ## A224254.P14069710119285598119

`A057508(A056957(n+1)+1)`
-/

namespace A224254.P14069710119285598119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057508 (A056957 (n + 1) + 1).toNat

end

end A224254.P14069710119285598119

/-! ## A224254.P15388884072339418188

`A057509(A056957(n+1)+1)`
-/

namespace A224254.P15388884072339418188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057509 (A056957 (n + 1) + 1).toNat

end

end A224254.P15388884072339418188

/-! ## A224254.P7724184545869741408

`A072796(A056957(n+1)+1)`
-/

namespace A224254.P7724184545869741408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072796 (A056957 (n + 1) + 1).toNat

end

end A224254.P7724184545869741408

/-! ## A224254.P9973632597269486709

`A082354(A056957(n+1)+1)`
-/

namespace A224254.P9973632597269486709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082354 (A056957 (n + 1) + 1).toNat

end

end A224254.P9973632597269486709

/-! ## A224254.P12691515580746073329

`A089853(A056957(n+1)+1)`
-/

namespace A224254.P12691515580746073329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089853 (A056957 (n + 1) + 1).toNat

end

end A224254.P12691515580746073329

/-! ## A224254.P13915503649050052396

`A132284(A056957(n+1)+1)`
-/

namespace A224254.P13915503649050052396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132284 (A056957 (n + 1) + 1).toNat

end

end A224254.P13915503649050052396

/-! ## A224254.P9376881426405378670

`A039732(A056957(n+1)+2)`
-/

namespace A224254.P9376881426405378670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039732 (A056957 (n + 1) + 2).toNat

end

end A224254.P9376881426405378670

/-!
# A224255: Number of permutations w in S_n whose Kazhdan-Lusztig polynomial evaluated at q=1 is less than or equal to 2; P_{id,w}(1) <= 2.

The programs for A224255, there is no canonical definition to state claims against.
-/

/-! ## A224255.P18157127219345476374

`record[A008306(n+2)-A368409(n+1)]`
-/

namespace A224255.P18157127219345476374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008306 (n + 2) - A368409 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A224255.P18157127219345476374

/-! ## A224255.P5279580132349293214

`A085939(n)+A081651(A000041(n+1))`
-/

namespace A224255.P5279580132349293214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085939 n + A081651 (A000041 (n + 1)).toNat

end

end A224255.P5279580132349293214

/-!
# A224256: Number of n X n 0..2 arrays with rows, diagonals and antidiagonals unimodal and columns nondecreasing.

The programs for A224256, there is no canonical definition to state claims against.
-/

/-! ## A224256.P12454627513711454735

`A224262(∑[4*n]+1)`
-/

namespace A224256.P12454627513711454735
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224262 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A224256.P12454627513711454735

/-! ## A224256.P13442544004570800012

`record[A224262(Δ[A235355(n)])]`
-/

namespace A224256.P13442544004570800012
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224262 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A224256.P13442544004570800012

/-! ## A224256.P6484895075650187927

`record[A224262(A330613(n+1))]`
-/

namespace A224256.P6484895075650187927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224262 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A224256.P6484895075650187927

/-! ## A224256.P11674952961406881981

`A224262(A001844(n))+char[20]`
-/

namespace A224256.P11674952961406881981
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  20

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224262 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A224256.P11674952961406881981

/-! ## A224256.P10776806804421227145

`record[A224262(Δ[A079824(n+1)])]`
-/

namespace A224256.P10776806804421227145
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079824 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224262 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A224256.P10776806804421227145

/-!
# A224257: Number of n X 3 0..2 arrays with rows, diagonals and antidiagonals unimodal and columns nondecreasing.

The programs for A224257, there is no canonical definition to state claims against.
-/

/-! ## A224257.P1679996733765318297

`A224262(∑[n+3]+1)`
-/

namespace A224257.P1679996733765318297
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224262 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A224257.P1679996733765318297

/-! ## A224257.P5176299834122145128

`A224262(A034856(n+2))+char[20]`
-/

namespace A224257.P5176299834122145128
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  20

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224262 (A034856 (n + 2)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A224257.P5176299834122145128

/-! ## A224257.P1931467973885383835

`A224262(A034856(n+2))%A337915(n+1)`
-/

namespace A224257.P1931467973885383835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A224262 (A034856 (n + 2)).toNat) (A337915 (n + 1))

end

end A224257.P1931467973885383835

/-! ## A224257.P16620252512068448714

`lcm(A001221(n+2), A224262(A034856(n+2)))`
-/

namespace A224257.P16620252512068448714
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A001221 (n + 2)) (A224262 (A034856 (n + 2)).toNat)

end

end A224257.P16620252512068448714

/-! ## A224257.P12508794301268992131

`A007318(C(2, n))*A224262(A034856(n+2))`
-/

namespace A224257.P12508794301268992131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A224262 (A034856 (n + 2)).toNat

end

end A224257.P12508794301268992131

/-!
# A224258: Number of n X 4 0..2 arrays with rows, diagonals and antidiagonals unimodal and columns nondecreasing.

The programs for A224258, there is no canonical definition to state claims against.
-/

/-! ## A224258.P717589128577884044

`A224262(∑[n+4]+3)`
-/

namespace A224258.P717589128577884044
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224262 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A224258.P717589128577884044

/-! ## A224258.P1159963228617009478

`A224262(A141214(n+1))+char[22]`
-/

namespace A224258.P1159963228617009478
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  22

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224262 (A141214 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A224258.P1159963228617009478

/-! ## A224258.P3061052066792843119

`A224262(A055998(n+2))+A000035(2*n)`
-/

namespace A224258.P3061052066792843119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224262 (A055998 (n + 2)).toNat + A000035 (2 * n)

end

end A224258.P3061052066792843119

/-! ## A224258.P11697870450442473951

`lcm(A001221(n+2), A224262(A141214(n+1)))`
-/

namespace A224258.P11697870450442473951
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A001221 (n + 2)) (A224262 (A141214 (n + 1)).toNat)

end

end A224258.P11697870450442473951

/-! ## A224258.P3967745953306491106

`A007318(C(2, n²))*A224262(A141214(n+1))`
-/

namespace A224258.P3967745953306491106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 (n ^ 2)) * A224262 (A141214 (n + 1)).toNat

end

end A224258.P3967745953306491106

/-!
# A224259: Number of n X 5 0..2 arrays with rows, diagonals and antidiagonals unimodal and columns nondecreasing.

The programs for A224259, there is no canonical definition to state claims against.
-/

/-! ## A224259.P17062267889670695244

`A224262(∑[n+5]+6)`
-/

namespace A224259.P17062267889670695244
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224262 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A224259.P17062267889670695244

/-! ## A224259.P7714293999106789316

`A224262(A052905(n+2)+1)+A192541(n)`
-/

namespace A224259.P7714293999106789316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224262 (A052905 (n + 2) + 1).toNat + A192541 n

end

end A224259.P7714293999106789316

/-! ## A224259.P16222745858593765730

`A326683(n)+A224262(A052905(n+2)+1)`
-/

namespace A224259.P16222745858593765730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326683 n + A224262 (A052905 (n + 2) + 1).toNat

end

end A224259.P16222745858593765730

/-!
# A224260: Number of n X 6 0..2 arrays with rows, diagonals and antidiagonals unimodal and columns nondecreasing.

The programs for A224260, there is no canonical definition to state claims against.
-/

/-! ## A224260.P11967098537247949752

`A224262(A052905(n+3))`
-/

namespace A224260.P11967098537247949752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224262 (A052905 (n + 3)).toNat

end

end A224260.P11967098537247949752

/-! ## A224260.P8462805312054372801

`A224262(A056119(n)+16)`
-/

namespace A224260.P8462805312054372801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224262 (A056119 n + 16).toNat

end

end A224260.P8462805312054372801

/-! ## A224260.P79620488002018500

`A224262(eq[3, A219347(n)])`
-/

namespace A224260.P79620488002018500
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224262 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A224260.P79620488002018500

/-! ## A224260.P16211328709603573897

`A224262(eq[5, A193592(n)])`
-/

namespace A224260.P16211328709603573897
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224262 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A224260.P16211328709603573897

/-! ## A224260.P13451578594991509228

`A224262(eq[8, A258709(n)])`
-/

namespace A224260.P13451578594991509228
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258709 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224262 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A224260.P13451578594991509228

/-!
# A224261: Number of n X 7 0..2 arrays with rows, diagonals and antidiagonals unimodal and columns nondecreasing.

The programs for A224261, there is no canonical definition to state claims against.
-/

/-! ## A224261.P2226097068646216489

`A224262(A055999(n+4))`
-/

namespace A224261.P2226097068646216489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224262 (A055999 (n + 4)).toNat

end

end A224261.P2226097068646216489

/-! ## A224261.P10255614145672912871

`A224262(eq[4, A219347(n)])`
-/

namespace A224261.P10255614145672912871
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224262 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A224261.P10255614145672912871

/-! ## A224261.P3013383775258994512

`A224262(eq[6, A193592(n)])`
-/

namespace A224261.P3013383775258994512
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224262 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A224261.P3013383775258994512

/-! ## A224261.P15016716640985088162

`A224262(Δ[A023551(n+2)])`
-/

namespace A224261.P15016716640985088162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224262 (f1 (n + 1) - f1 n).toNat

end

end A224261.P15016716640985088162

/-! ## A224261.P17349176820246386875

`A224262(A052905(n+4)-1)`
-/

namespace A224261.P17349176820246386875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224262 (A052905 (n + 4) - 1).toNat

end

end A224261.P17349176820246386875

/-!
# A224262: T(n,k) = number of n X k 0..2 arrays with rows, diagonals and antidiagonals unimodal and columns nondecreasing.

The programs for A224262, there is no canonical definition to state claims against.
-/

/-! ## A224262.P9209810647566474324

`A004277(A223918(n+1))-A224190(n+1)`
-/

namespace A224262.P9209810647566474324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A223918 (n + 1)).toNat - A224190 (n + 1)

end

end A224262.P9209810647566474324

/-! ## A224262.P11652927086676755335

`A224190(n+1)-A160086(A152654(n)²)`
-/

namespace A224262.P11652927086676755335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224190 (n + 1) - A160086 (A152654 n ^ 2).toNat

end

end A224262.P11652927086676755335

/-! ## A224262.P9059536678811644842

`A223918(n+1)-A326814(A234921(n+1))`
-/

namespace A224262.P9059536678811644842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223918 (n + 1) - A326814 (A234921 (n + 1)).toNat

end

end A224262.P9059536678811644842

/-! ## A224262.P14292730445110282935

`and(A223918(A187829(n+1)), A224190(n+1))`
-/

namespace A224262.P14292730445110282935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A223918 (A187829 (n + 1)).toNat) (A224190 (n + 1))

end

end A224262.P14292730445110282935

/-! ## A224262.P1328173999106857281

`A224190(A187829(n+1))-A160086(A160086(3*n))`
-/

namespace A224262.P1328173999106857281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224190 (A187829 (n + 1)).toNat - A160086 (A160086 (3 * n)).toNat

end

end A224262.P1328173999106857281

/-!
# A224263: Number of 3 X n 0..2 arrays with rows, diagonals and antidiagonals unimodal and columns nondecreasing.

The programs for A224263, there is no canonical definition to state claims against.
-/

/-! ## A224263.P13550183685069222798

`A224262(∑[n+2]+4)`
-/

namespace A224263.P13550183685069222798
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224262 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A224263.P13550183685069222798

/-! ## A224263.P1566647247728621857

`A224262(A167614(n+1))+char[21]`
-/

namespace A224263.P1566647247728621857
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  21

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224262 (A167614 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A224263.P1566647247728621857

/-! ## A224263.P3786393686203081466

`A224262(A167499(n)+n)+char[27]`
-/

namespace A224263.P3786393686203081466
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  27

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224262 (A167499 n + (n : ℤ)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A224263.P3786393686203081466

/-! ## A224263.P2128576179379393051

`A224262(A167614(n+1))*A304042(n)`
-/

namespace A224263.P2128576179379393051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224262 (A167614 (n + 1)).toNat * A304042 n

end

end A224263.P2128576179379393051

/-! ## A224263.P3860651017976835638

`A224262(A167614(n+1))%A016890(n)`
-/

namespace A224263.P3860651017976835638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A224262 (A167614 (n + 1)).toNat) (A016890 n)

end

end A224263.P3860651017976835638

/-!
# A224264: Number of 4 X n 0..2 arrays with rows, diagonals and antidiagonals unimodal and columns nondecreasing.

The programs for A224264, there is no canonical definition to state claims against.
-/

/-! ## A224264.P11076522403919455839

`A224262(∑[n+3]+7)`
-/

namespace A224264.P11076522403919455839
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224262 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A224264.P11076522403919455839

/-! ## A224264.P12434440306464776004

`A224262(A055999(n)+10)+char[19]`
-/

namespace A224264.P12434440306464776004
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224262 (A055999 n + 10).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A224264.P12434440306464776004

/-! ## A224264.P11003235268992299645

`A224262(A000124(n+3)+3)+char[24]`
-/

namespace A224264.P11003235268992299645
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  24

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224262 (A000124 (n + 3) + 3).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A224264.P11003235268992299645

/-! ## A224264.P9346680559532503852

`A007318(C(2, n))*A224262(A055999(n)+10)`
-/

namespace A224264.P9346680559532503852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A224262 (A055999 n + 10).toNat

end

end A224264.P9346680559532503852

/-! ## A224264.P6873736162165126048

`(A000041(n)%2)!*A224262(A055999(n)+10)`
-/

namespace A224264.P6873736162165126048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (Int.tmod (A000041 n) 2).toNat : ℤ) * A224262 (A055999 n + 10).toNat

end

end A224264.P6873736162165126048

/-!
# A224265: Number of 5 X n 0..2 arrays with rows, diagonals and antidiagonals unimodal and columns nondecreasing.

The programs for A224265, there is no canonical definition to state claims against.
-/

/-! ## A224265.P2406189603368804406

`A224262(A167499(n+3))`
-/

namespace A224265.P2406189603368804406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224262 (A167499 (n + 3)).toNat

end

end A224265.P2406189603368804406

/-! ## A224265.P12595048131128899732

`A224262(A155212(n)+13)`
-/

namespace A224265.P12595048131128899732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224262 (A155212 n + 13).toNat

end

end A224265.P12595048131128899732

/-! ## A224265.P12961701444995722310

`A224262(A056000(n)+15)`
-/

namespace A224265.P12961701444995722310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224262 (A056000 n + 15).toNat

end

end A224265.P12961701444995722310

/-! ## A224265.P17326113079015479068

`A224262(eq[7, A066657(n)])`
-/

namespace A224265.P17326113079015479068
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224262 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A224265.P17326113079015479068

/-! ## A224265.P16914557716539842462

`A224262(A000124(n+4)+4)`
-/

namespace A224265.P16914557716539842462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224262 (A000124 (n + 4) + 4).toNat

end

end A224265.P16914557716539842462

/-!
# A224266: Number of 6 X n 0..2 arrays with rows, diagonals and antidiagonals unimodal and columns nondecreasing.

The programs for A224266, there is no canonical definition to state claims against.
-/

/-! ## A224266.P1102247162605099568

`A224262(A056115(n)+21)`
-/

namespace A224266.P1102247162605099568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224262 (A056115 n + 21).toNat

end

end A224266.P1102247162605099568

/-! ## A224266.P8844546842829494044

`A224262(Δ[A264443(n)]+10)`
-/

namespace A224266.P8844546842829494044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224262 (f1 (n + 1) - f1 n + 10).toNat

end

end A224266.P8844546842829494044

/-! ## A224266.P8210622214497504440

`A224262(∑[A020710(n)]+16)`
-/

namespace A224266.P8210622214497504440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020710 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224262 (∑ j ∈ Finset.range (n + 1), f1 j + 16).toNat

end

end A224266.P8210622214497504440

/-! ## A224266.P7718379062970957191

`A224262(A167499(n+4)+1)`
-/

namespace A224266.P7718379062970957191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224262 (A167499 (n + 4) + 1).toNat

end

end A224266.P7718379062970957191

/-! ## A224266.P13325172643494165646

`A224262(A077169(n+6)+1)`
-/

namespace A224266.P13325172643494165646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224262 (A077169 (n + 6) + 1).toNat

end

end A224266.P13325172643494165646

/-!
# A224267: Number of 7 X n 0..2 arrays with rows, diagonals and antidiagonals unimodal and columns nondecreasing.

The programs for A224267, there is no canonical definition to state claims against.
-/

/-! ## A224267.P3874637406810803875

`A224262(∑[n+6]+22)`
-/

namespace A224267.P3874637406810803875
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224262 (∑ j ∈ Finset.range (n + 1), f1 j + 22)

end

end A224267.P3874637406810803875

/-! ## A224267.P2397600207959339202

`A224262(A000217(n+6)+7)+char[18]`
-/

namespace A224267.P2397600207959339202
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  18

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224262 (A000217 (n + 6) + 7).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A224267.P2397600207959339202

/-! ## A224267.P2602034554825292923

`A007318(C(n, 2))*A224262(A000217(n+6)+7)`
-/

namespace A224267.P2602034554825292923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose n 2) * A224262 (A000217 (n + 6) + 7).toNat

end

end A224267.P2602034554825292923

/-! ## A224267.P8632842004943754231

`A224262(A000217(n+6)+7)/A007318(C(2, n))`
-/

namespace A224267.P8632842004943754231
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A224262 (A000217 (n + 6) + 7).toNat : ℚ) / (A007318 (Nat.choose 2 n) : ℚ)

end

end A224267.P8632842004943754231

/-! ## A224267.P3659756021409897439

`A007318(A007318(2*n))*A224262(A000217(n+6)+7)`
-/

namespace A224267.P3659756021409897439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A007318 (2 * n)).toNat * A224262 (A000217 (n + 6) + 7).toNat

end

end A224267.P3659756021409897439

/-!
# A224269: Consider the spiral of Theodorus (A072895). This sequence gives the number of k successive triangles which is closer to 360 degrees than any previous k triangles.

The programs for A224269, there is no canonical definition to state claims against.
-/

/-! ## A224269.P11122163322609408540

`A137515(A227626(n+1))+A029298(n)`
-/

namespace A224269.P11122163322609408540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137515 (A227626 (n + 1)).toNat + A029298 n

end

end A224269.P11122163322609408540

/-! ## A224269.P5925248003348461190

`A278515(n)+A137515(A227626(n+1))`
-/

namespace A224269.P5925248003348461190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278515 n + A137515 (A227626 (n + 1)).toNat

end

end A224269.P5925248003348461190

/-!
# A224270: Absolute values of the numerators of the third column of ( 0 followed by (interleave 0 , A001803(n))/A060818(n) ) and its successive differences.

The programs for A224270, the canonical program `A224270.P12309449781339529055` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A224270 has offset 0).

The definition of A224270 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A224270.P12309449781339529055

`abs(A002596(n)*A110331(n))`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A224270

/-- `abs(A002596(n)*A110331(n))` -/
def P12309449781339529055.Spec : Prop :=
  ∀ n, P12309449781339529055.a n = A224270 n

theorem P12309449781339529055.correct : P12309449781339529055.Spec := by
  intro n
  simp only [A224270]

end A224270

/-! ## A224270.P6968013526239353110

`A002596(n)*A033999(n)*A110331(n)`
-/

namespace A224270.P6968013526239353110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002596 n * A033999 n * A110331 n

end

end A224270.P6968013526239353110

namespace A224270

/-- `A002596(n)*A033999(n)*A110331(n)` -/
def P6968013526239353110.Spec : Prop :=
  ∀ n, P6968013526239353110.a n = A224270 n

end A224270

/-! ## A224270.P4384728319715658953

`A002596(n)*A110331(n)*∑[A280560(n)]`
-/

namespace A224270.P4384728319715658953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280560 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002596 n * A110331 n * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A224270.P4384728319715658953

namespace A224270

/-- `A002596(n)*A110331(n)*∑[A280560(n)]` -/
def P4384728319715658953.Spec : Prop :=
  ∀ n, P4384728319715658953.a n = A224270 n

end A224270

/-! ## A224270.P2025928987436606148

`A002596(n)*A110331(n)/(A004442(n)-n)`
-/

namespace A224270.P2025928987436606148
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002596 n * A110331 n : ℚ) / (A004442 n - (n : ℤ) : ℚ)

end

end A224270.P2025928987436606148

namespace A224270

/-- `A002596(n)*A110331(n)/(A004442(n)-n)` -/
def P2025928987436606148.Spec : Prop :=
  ∀ n, P2025928987436606148.a n = (A224270 n : ℚ)

end A224270

/-! ## A224270.P5811870600236477961

`gcd(A002596(n)*A110331(n), A008683(4*(n+1)))`
-/

namespace A224270.P5811870600236477961
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002596 n * A110331 n) (A008683 (4 * (n + 1)))

end

end A224270.P5811870600236477961

namespace A224270

/-- `gcd(A002596(n)*A110331(n), A008683(4*(n+1)))` -/
def P5811870600236477961.Spec : Prop :=
  ∀ n, (P5811870600236477961.a n : ℤ) = A224270 n

end A224270

/-!
# A224271: Number of set partitions of {1,2,...,n} such that the element 1 is in an odd-sized block.

The programs for A224271, there is no canonical definition to state claims against.
-/

/-! ## A224271.P3061604520602863432

`A035098(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A224271.P3061604520602863432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A035098 (n + 1) - a (n - 1)

end

end A224271.P3061604520602863432

/-! ## A224271.P17277571538577355372

`A126617(n)+A111724(n+1)`
-/

namespace A224271.P17277571538577355372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126617 n + A111724 (n + 1)

end

end A224271.P17277571538577355372

/-! ## A224271.P8250831384388992563

`(A000296(n)+A000110(n+1))/2`
-/

namespace A224271.P8250831384388992563
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000296 n + A000110 (n + 1) : ℚ) / 2

end

end A224271.P8250831384388992563

/-! ## A224271.P10766565715563873791

`(A011968(n+1)-A000296(n+1))/2`
-/

namespace A224271.P10766565715563873791
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A011968 (n + 1) - A000296 (n + 1) : ℚ) / 2

end

end A224271.P10766565715563873791

/-! ## A224271.P16872288241782909179

`A346500(A000124(n+1))-a(n-1)` with `a(0)=1`
-/

namespace A224271.P16872288241782909179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A346500 (A000124 (n + 1)).toNat - a (n - 1)

end

end A224271.P16872288241782909179

/-! ## A224271.P4564779890691035738

`A102287(A028310(n))+A000110(n)`
-/

namespace A224271.P4564779890691035738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102287 (A028310 n).toNat + A000110 n

end

end A224271.P4564779890691035738

/-! ## A224271.P12614136798096842178

`A102286(n+1)-A059606(n)`
-/

namespace A224271.P12614136798096842178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102286 (n + 1) - A059606 n

end

end A224271.P12614136798096842178

/-!
# A224274: a(n) = binomial(4*n,n)/4.

The programs for A224274, the canonical program `A224274.P7526504996366702607` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A224274 has offset 1).

The definition of A224274 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A224274.P7526504996366702607

`A005810(n+1)/4`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A224274

/-- `A005810(n+1)/4` -/
def P7526504996366702607.Spec : Prop :=
  ∀ n, P7526504996366702607.a n = (A224274 (n + 1) : ℚ)

end A224274

/-! ## A224274.P6925404477606304388

`A257633(n)*(4*(n+1)-1)/(3*(n+1))`
-/

namespace A224274.P6925404477606304388
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A257633 n * ((4 * (n + 1) : ℤ) - 1) : ℚ) / (3 * (n + 1) : ℚ)

end

end A224274.P6925404477606304388

namespace A224274

/-- `A257633(n)*(4*(n+1)-1)/(3*(n+1))` -/
def P6925404477606304388.Spec : Prop :=
  ∀ n, P6925404477606304388.a n = (A224274 (n + 1) : ℚ)

end A224274

/-! ## A224274.P15973532836699681559

`C(4*(n+1)-1, n)`
-/

namespace A224274.P15973532836699681559
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((4 * (n + 1) : ℤ) - 1).toNat n

end

end A224274.P15973532836699681559

namespace A224274

/-- `C(4*(n+1)-1, n)` -/
def P15973532836699681559.Spec : Prop :=
  ∀ n, (P15973532836699681559.a n : ℤ) = A224274 (n + 1)

end A224274

/-! ## A224274.P13765671865964463988

`C(4*(n+1), n+1)/4`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A224274.P13765671865964463988
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (4 * (n + 1)) (n + 1) : ℚ) / 4

end

end A224274.P13765671865964463988

namespace A224274

/-- `C(4*(n+1), n+1)/4` -/
def P13765671865964463988.Spec : Prop :=
  ∀ n, P13765671865964463988.a n = (A224274 (n + 1) : ℚ)

end A224274

/-! ## A224274.P1108896561796156008

`Δ[A024720(n)]`
-/

namespace A224274.P1108896561796156008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024720 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A224274.P1108896561796156008

namespace A224274

/-- `Δ[A024720(n)]` -/
def P1108896561796156008.Spec : Prop :=
  ∀ n, P1108896561796156008.a n = A224274 (n + 1)

end A224274

/-! ## A224274.P8229471061204148332

`A359108(n+1)/2`
-/

namespace A224274.P8229471061204148332
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A359108 (n + 1) : ℚ) / 2

end

end A224274.P8229471061204148332

namespace A224274

/-- `A359108(n+1)/2` -/
def P8229471061204148332.Spec : Prop :=
  ∀ n, P8229471061204148332.a n = (A224274 (n + 1) : ℚ)

end A224274

/-! ## A224274.P6160277368388020037

`A051036(4*n+3)`
-/

namespace A224274.P6160277368388020037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051036 (4 * n + 3)

end

end A224274.P6160277368388020037

namespace A224274

/-- `A051036(4*n+3)` -/
def P6160277368388020037.Spec : Prop :=
  ∀ n, P6160277368388020037.a n = A224274 (n + 1)

end A224274

/-! ## A224274.P12935215887751779126

`A208983(Δ[n²])/2`
-/

namespace A224274.P12935215887751779126
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208983 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 2

end

end A224274.P12935215887751779126

namespace A224274

/-- `A208983(Δ[n²])/2` -/
def P12935215887751779126.Spec : Prop :=
  ∀ n, P12935215887751779126.a n = (A224274 (n + 1) : ℚ)

end A224274

/-! ## A224274.P17409597319412272871

`(n+1-n/4)*A002293(n+1)`
-/

namespace A224274.P17409597319412272871
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℚ) - (n : ℚ) / 4) * (A002293 (n + 1) : ℚ)

end

end A224274.P17409597319412272871

namespace A224274

/-- `(n+1-n/4)*A002293(n+1)` -/
def P17409597319412272871.Spec : Prop :=
  ∀ n, P17409597319412272871.a n = (A224274 (n + 1) : ℚ)

end A224274

/-! ## A224274.P5827501628396227806

`record[A208983(n)/A141310(n)]`
-/

namespace A224274.P5827501628396227806
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208983 n : ℚ) / (A141310 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A224274.P5827501628396227806

namespace A224274

/-- `record[A208983(n)/A141310(n)]` -/
def P5827501628396227806.Spec : Prop :=
  ∀ n, P5827501628396227806.a n = (A224274 (n + 1) : ℚ)

end A224274

/-! ## A224274.P13021903570262237588

`A024720(n+1)-A024720(n)`
-/

namespace A224274.P13021903570262237588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024720 (n + 1) - A024720 n

end

end A224274.P13021903570262237588

namespace A224274

/-- `A024720(n+1)-A024720(n)` -/
def P13021903570262237588.Spec : Prop :=
  ∀ n, P13021903570262237588.a n = A224274 (n + 1)

end A224274

/-! ## A224274.P12794181762111243836

`Δ[A225612(n)/4]`
-/

namespace A224274.P12794181762111243836
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A225612 n : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A224274.P12794181762111243836

namespace A224274

/-- `Δ[A225612(n)/4]` -/
def P12794181762111243836.Spec : Prop :=
  ∀ n, P12794181762111243836.a n = (A224274 (n + 1) : ℚ)

end A224274

/-! ## A224274.P13197280486486514240

`A262977(n+1)/3`
-/

namespace A224274.P13197280486486514240
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A262977 (n + 1) : ℚ) / 3

end

end A224274.P13197280486486514240

namespace A224274

/-- `A262977(n+1)/3` -/
def P13197280486486514240.Spec : Prop :=
  ∀ n, P13197280486486514240.a n = (A224274 (n + 1) : ℚ)

end A224274

/-! ## A224274.P2395987413597844347

`A119304(∑[n+1]+1)`
-/

namespace A224274.P2395987413597844347
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119304 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A224274.P2395987413597844347

namespace A224274

/-- `A119304(∑[n+1]+1)` -/
def P2395987413597844347.Spec : Prop :=
  ∀ n, P2395987413597844347.a n = A224274 (n + 1)

end A224274

/-! ## A224274.P15142782573658533073

`A264773(∑[n+1])/4`
-/

namespace A224274.P15142782573658533073
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A264773 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / 4

end

end A224274.P15142782573658533073

namespace A224274

/-- `A264773(∑[n+1])/4` -/
def P15142782573658533073.Spec : Prop :=
  ∀ n, P15142782573658533073.a n = (A224274 (n + 1) : ℚ)

end A224274

/-! ## A224274.P2591323986153497983

`A005810(n+1)-A262977(n+1)`
-/

namespace A224274.P2591323986153497983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005810 (n + 1) - A262977 (n + 1)

end

end A224274.P2591323986153497983

namespace A224274

/-- `A005810(n+1)-A262977(n+1)` -/
def P2591323986153497983.Spec : Prop :=
  ∀ n, P2591323986153497983.a n = A224274 (n + 1)

end A224274

/-! ## A224274.P15975957314194115297

`A264773(A167614(n+2))`
-/

namespace A224274.P15975957314194115297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264773 (A167614 (n + 2)).toNat

end

end A224274.P15975957314194115297

namespace A224274

/-- `A264773(A167614(n+2))` -/
def P15975957314194115297.Spec : Prop :=
  ∀ n, P15975957314194115297.a n = A224274 (n + 1)

end A224274

/-!
# A224275: Number of n X n 0..3 arrays with diagonals and rows unimodal and antidiagonals nondecreasing.

The programs for A224275, there is no canonical definition to state claims against.
-/

/-! ## A224275.P14760401133182948347

`A224281(∑[4*n]+1)`
-/

namespace A224275.P14760401133182948347
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224281 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A224275.P14760401133182948347

/-! ## A224275.P17978641584041738582

`record[A003982(n)*A224281(n+1)]`
-/

namespace A224275.P17978641584041738582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A224281 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A224275.P17978641584041738582

/-! ## A224275.P18301626356228828952

`record[gcd(A114327(n), A224281(n+1))]`
-/

namespace A224275.P18301626356228828952
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A224281 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A224275.P18301626356228828952

/-! ## A224275.P5654250398969313864

`A224281(A001844(n))+A008683(4*(n+1))`
-/

namespace A224275.P5654250398969313864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224281 (A001844 n).toNat + A008683 (4 * (n + 1))

end

end A224275.P5654250398969313864

/-! ## A224275.P8622050394643006181

`A014963(10*(n+1))*A224281(A001844(n))`
-/

namespace A224275.P8622050394643006181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (10 * (n + 1)) * A224281 (A001844 n).toNat

end

end A224275.P8622050394643006181

/-!
# A224276: Number of nX3 0..3 arrays with diagonals and rows unimodal and antidiagonals nondecreasing.

The programs for A224276, there is no canonical definition to state claims against.
-/

/-! ## A224276.P16826959200067860543

`A224281(∑[n+3]+1)`
-/

namespace A224276.P16826959200067860543
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224281 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A224276.P16826959200067860543

/-! ## A224276.P1609128191071623547

`A224281(A034856(n+2))+A133851(3*n+1)`
-/

namespace A224276.P1609128191071623547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224281 (A034856 (n + 2)).toNat + A133851 (3 * n + 1)

end

end A224276.P1609128191071623547

/-! ## A224276.P15857954471951996257

`A224281(A034856(n+2))+A000007(2*n+3)`
-/

namespace A224276.P15857954471951996257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224281 (A034856 (n + 2)).toNat + A000007 (2 * n + 3)

end

end A224276.P15857954471951996257

/-!
# A224277: Number of nX4 0..3 arrays with diagonals and rows unimodal and antidiagonals nondecreasing.

The programs for A224277, there is no canonical definition to state claims against.
-/

/-! ## A224277.P364853853064321879

`A224281(A141214(n+1))`
-/

namespace A224277.P364853853064321879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224281 (A141214 (n + 1)).toNat

end

end A224277.P364853853064321879

/-! ## A224277.P11107986510198869620

`A224281(A155212(n)+5)`
-/

namespace A224277.P11107986510198869620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224281 (A155212 n + 5).toNat

end

end A224277.P11107986510198869620

/-! ## A224277.P4958165309766883139

`A224281(A056000(n)+7)`
-/

namespace A224277.P4958165309766883139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224281 (A056000 n + 7).toNat

end

end A224277.P4958165309766883139

/-! ## A224277.P2158768254422338878

`A224281(eq[4, A209434(n)])`
-/

namespace A224277.P2158768254422338878
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209434 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224281 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A224277.P2158768254422338878

/-! ## A224277.P14663117281685793668

`A224281(A052905(n+1)+2)`
-/

namespace A224277.P14663117281685793668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224281 (A052905 (n + 1) + 2).toNat

end

end A224277.P14663117281685793668

/-!
# A224278: Number of nX5 0..3 arrays with diagonals and rows unimodal and antidiagonals nondecreasing.

The programs for A224278, there is no canonical definition to state claims against.
-/

/-! ## A224278.P3985116497959379134

`A224281(Δ[A264443(n)])`
-/

namespace A224278.P3985116497959379134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224281 (f1 (n + 1) - f1 n).toNat

end

end A224278.P3985116497959379134

/-! ## A224278.P5764747404877081077

`A224281(A056115(n)+11)`
-/

namespace A224278.P5764747404877081077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224281 (A056115 n + 11).toNat

end

end A224278.P5764747404877081077

/-! ## A224278.P9381252973518676754

`A224281(eq[4, A193592(n)])`
-/

namespace A224278.P9381252973518676754
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224281 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A224278.P9381252973518676754

/-! ## A224278.P11734335037774158444

`A224281(Δ[A023545(n+1)])`
-/

namespace A224278.P11734335037774158444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224281 (f1 (n + 1) - f1 n).toNat

end

end A224278.P11734335037774158444

/-! ## A224278.P656823951900775208

`A224281(eq[5, A194921(n+1)])`
-/

namespace A224278.P656823951900775208
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194921 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224281 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A224278.P656823951900775208

/-!
# A224279: Number of nX6 0..3 arrays with diagonals and rows unimodal and antidiagonals nondecreasing.

The programs for A224279, there is no canonical definition to state claims against.
-/

/-! ## A224279.P4556992175079527589

`A224281(A052905(n+3))`
-/

namespace A224279.P4556992175079527589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224281 (A052905 (n + 3)).toNat

end

end A224279.P4556992175079527589

/-! ## A224279.P13132687316107960948

`A224281(eq[3, A219347(n)])`
-/

namespace A224279.P13132687316107960948
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224281 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A224279.P13132687316107960948

/-! ## A224279.P5685796404472385752

`A224281(eq[5, A193592(n)])`
-/

namespace A224279.P5685796404472385752
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224281 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A224279.P5685796404472385752

/-! ## A224279.P15916328706874516150

`A224281(eq[8, A258709(n)])`
-/

namespace A224279.P15916328706874516150
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258709 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224281 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A224279.P15916328706874516150

/-! ## A224279.P12788445843270274756

`A224281(eq[6, A200370(n+1)])`
-/

namespace A224279.P12788445843270274756
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224281 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A224279.P12788445843270274756

/-!
# A224280: Number of nX7 0..3 arrays with diagonals and rows unimodal and antidiagonals nondecreasing.

The programs for A224280, there is no canonical definition to state claims against.
-/

/-! ## A224280.P1720574839321286930

`A224281(A055999(n+4))`
-/

namespace A224280.P1720574839321286930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224281 (A055999 (n + 4)).toNat

end

end A224280.P1720574839321286930

/-! ## A224280.P5904724329645449513

`A224281(eq[4, A219347(n)])`
-/

namespace A224280.P5904724329645449513
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224281 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A224280.P5904724329645449513

/-! ## A224280.P1335628026272234265

`A224281(eq[6, A193592(n)])`
-/

namespace A224280.P1335628026272234265
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224281 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A224280.P1335628026272234265

/-! ## A224280.P11564909131505623162

`A224281(Δ[A023551(n+2)])`
-/

namespace A224280.P11564909131505623162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224281 (f1 (n + 1) - f1 n).toNat

end

end A224280.P11564909131505623162

/-! ## A224280.P5951526589758013001

`A224281(eq[7, A200370(n+1)])`
-/

namespace A224280.P5951526589758013001
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224281 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A224280.P5951526589758013001

/-!
# A224282: Number of 3 X n 0..3 arrays with diagonals and rows unimodal and antidiagonals nondecreasing.

The programs for A224282, there is no canonical definition to state claims against.
-/

/-! ## A224282.P3850205399156925457

`A224281(∑[n+2]+4)`
-/

namespace A224282.P3850205399156925457
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224281 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A224282.P3850205399156925457

/-! ## A224282.P8093886148721034706

`A224281(A167614(n+1))+A185255(n)`
-/

namespace A224282.P8093886148721034706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224281 (A167614 (n + 1)).toNat + A185255 n

end

end A224282.P8093886148721034706

/-! ## A224282.P9988994471909438267

`A224281(A167614(n+1))+A185284(n)`
-/

namespace A224282.P9988994471909438267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224281 (A167614 (n + 1)).toNat + A185284 n

end

end A224282.P9988994471909438267

/-! ## A224282.P8163036378216431462

`lcm(A033999(n), A224281(A167614(n+1)))`
-/

namespace A224282.P8163036378216431462
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A224281 (A167614 (n + 1)).toNat)

end

end A224282.P8163036378216431462

/-! ## A224282.P14747658623937009211

`or(A025460(n), A224281(A167614(n+1)))`
-/

namespace A224282.P14747658623937009211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A025460 n) (A224281 (A167614 (n + 1)).toNat)

end

end A224282.P14747658623937009211

/-!
# A224283: Number of 4Xn 0..3 arrays with diagonals and rows unimodal and antidiagonals nondecreasing.

The programs for A224283, there is no canonical definition to state claims against.
-/

/-! ## A224283.P14373245679010955394

`A224281(A141214(n)+7)`
-/

namespace A224283.P14373245679010955394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224281 (A141214 n + 7).toNat

end

end A224283.P14373245679010955394

/-! ## A224283.P11103735105398213524

`A224281(A052905(n)+9)`
-/

namespace A224283.P11103735105398213524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224281 (A052905 n + 9).toNat

end

end A224283.P11103735105398213524

/-! ## A224283.P15711723057114040308

`A224281(A055999(n)+10)`
-/

namespace A224283.P15711723057114040308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224281 (A055999 n + 10).toNat

end

end A224283.P15711723057114040308

/-! ## A224283.P205250684975297118

`A224281(A167614(n+2)+1)`
-/

namespace A224283.P205250684975297118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224281 (A167614 (n + 2) + 1).toNat

end

end A224283.P205250684975297118

/-! ## A224283.P6260107765798773750

`A224281(eq[5, A131818(n+1)])`
-/

namespace A224283.P6260107765798773750
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224281 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A224283.P6260107765798773750

/-!
# A224284: Number of 5Xn 0..3 arrays with diagonals and rows unimodal and antidiagonals nondecreasing.

The programs for A224284, there is no canonical definition to state claims against.
-/

/-! ## A224284.P8324089101420316158

`A224281(A167499(n+3))`
-/

namespace A224284.P8324089101420316158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224281 (A167499 (n + 3)).toNat

end

end A224284.P8324089101420316158

/-! ## A224284.P6892376485670518368

`A224281(A056000(n)+15)`
-/

namespace A224284.P6892376485670518368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224281 (A056000 n + 15).toNat

end

end A224284.P6892376485670518368

/-! ## A224284.P8143059229530007226

`A224281(eq[7, A066657(n)])`
-/

namespace A224284.P8143059229530007226
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224281 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A224284.P8143059229530007226

/-! ## A224284.P17729034810573187659

`A224281(A000096(n+3)+6)`
-/

namespace A224284.P17729034810573187659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224281 (A000096 (n + 3) + 6).toNat

end

end A224284.P17729034810573187659

/-! ## A224284.P2436697018696944696

`A224281(eq[6, A131818(n+1)])`
-/

namespace A224284.P2436697018696944696
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224281 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A224284.P2436697018696944696

/-!
# A224285: Number of 6Xn 0..3 arrays with diagonals and rows unimodal and antidiagonals nondecreasing.

The programs for A224285, there is no canonical definition to state claims against.
-/

/-! ## A224285.P10352351443225492164

`A224281(A056115(n)+21)`
-/

namespace A224285.P10352351443225492164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224281 (A056115 n + 21).toNat

end

end A224285.P10352351443225492164

/-! ## A224285.P6025723087394863300

`A224281(A167614(n+4)+3)`
-/

namespace A224285.P6025723087394863300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224281 (A167614 (n + 4) + 3).toNat

end

end A224285.P6025723087394863300

/-! ## A224285.P13784989172287218241

`A224281(A000217(n+5)+6)`
-/

namespace A224285.P13784989172287218241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224281 (A000217 (n + 5) + 6).toNat

end

end A224285.P13784989172287218241

/-! ## A224285.P17174843266981810036

`A224281(A055999(n+2)+12)`
-/

namespace A224285.P17174843266981810036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224281 (A055999 (n + 2) + 12).toNat

end

end A224285.P17174843266981810036

/-! ## A224285.P8176437300841185360

`A224281(eq[7, A131818(n+1)])`
-/

namespace A224285.P8176437300841185360
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224281 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A224285.P8176437300841185360

/-!
# A224286: Number of 7Xn 0..3 arrays with diagonals and rows unimodal and antidiagonals nondecreasing.

The programs for A224286, there is no canonical definition to state claims against.
-/

/-! ## A224286.P7125558732513459802

`A224281(A056119(n)+28)`
-/

namespace A224286.P7125558732513459802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224281 (A056119 n + 28).toNat

end

end A224286.P7125558732513459802

/-! ## A224286.P15168020775915278754

`A224281(eq[11, A066657(n)])`
-/

namespace A224286.P15168020775915278754
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224281 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A224286.P15168020775915278754

/-! ## A224286.P12758052898907006659

`A224281(A055999(n+3)+13)`
-/

namespace A224286.P12758052898907006659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224281 (A055999 (n + 3) + 13).toNat

end

end A224286.P12758052898907006659

/-! ## A224286.P10588270228160162003

`A224281(eq[8, A131818(n+1)])`
-/

namespace A224286.P10588270228160162003
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224281 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A224286.P10588270228160162003

/-! ## A224286.P12096432480679381217

`A224281(Δ[A023551(n+1)]+13)`
-/

namespace A224286.P12096432480679381217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224281 (f1 (n + 1) - f1 n + 13).toNat

end

end A224286.P12096432480679381217

/-!
# A224287: Number of multiplicity free permutations in S_n, i.e., permutations whose Stanley symmetric function is multiplicity free.

The programs for A224287, there is no canonical definition to state claims against.
-/

/-! ## A224287.P5878832896419971633

`or(A096994(A224288(n)), A164872(n+1))`
-/

namespace A224287.P5878832896419971633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A096994 (A224288 n).toNat) (A164872 (n + 1))

end

end A224287.P5878832896419971633

/-! ## A224287.P14958764908897388767

`Δ[A074286(∑[n*a(n-1)])]` with `a(0)=2`
-/

namespace A224287.P14958764908897388767
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f2 =>
  n * f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074286 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A224287.P14958764908897388767

/-!
# A224288: Number of permutations of length n containing exactly 2 occurrences of 123 and 2 occurrences of 132.

The programs for A224288, there is no canonical definition to state claims against.
-/

/-! ## A224288.P7082696592253903979

`A137722(A137842(n)+A137728(n+1))`
-/

namespace A224288.P7082696592253903979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137722 (A137842 n + A137728 (n + 1)).toNat

end

end A224288.P7082696592253903979

/-! ## A224288.P16542236426819958579

`A036638(n+3)-A137579(A036632(n+2))`
-/

namespace A224288.P16542236426819958579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036638 (n + 3) - A137579 (A036632 (n + 2)).toNat

end

end A224288.P16542236426819958579

/-!
# A224289: Number of permutations of length n containing exactly 1 occurrence of 123 and 2 occurrences of 132.

The programs for A224289, there is no canonical definition to state claims against.
-/

/-! ## A224289.P14871558491889518357

`A054896(A072853(n+1))+A054896(n)`
-/

namespace A224289.P14871558491889518357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054896 (A072853 (n + 1)).toNat + A054896 n

end

end A224289.P14871558491889518357

/-! ## A224289.P17365154012899855691

`A253586(C(A120588(n), 2))`
-/

namespace A224289.P17365154012899855691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253586 (Nat.choose (A120588 n).toNat 2)

end

end A224289.P17365154012899855691

/-! ## A224289.P10443739237457410604

`A054900(∑[A005056(n)-1])`
-/

namespace A224289.P10443739237457410604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005056 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054900 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A224289.P10443739237457410604

/-! ## A224289.P14200502970871538228

`A046108(A279557(n))-A000041(n)`
-/

namespace A224289.P14200502970871538228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046108 (A279557 n).toNat - A000041 n

end

end A224289.P14200502970871538228

/-!
# A224290: Number of permutations of length n containing exactly 3 occurrences of 123 and 3 occurrences of 132.

The programs for A224290, there is no canonical definition to state claims against.
-/

/-! ## A224290.P16217694545318762936

`A333762(C(n, 5)+1)`
-/

namespace A224290.P16217694545318762936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333762 (Nat.choose n 5 + 1)

end

end A224290.P16217694545318762936

/-! ## A224290.P6011615013274054533

`A206580(A023425(n))`
-/

namespace A224290.P6011615013274054533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206580 (A023425 n).toNat

end

end A224290.P6011615013274054533

/-! ## A224290.P6159703685820526666

`A206580(A114299(n))`
-/

namespace A224290.P6159703685820526666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206580 (A114299 n).toNat

end

end A224290.P6159703685820526666

/-! ## A224290.P13982002037774404503

`A333762(A139398(n))`
-/

namespace A224290.P13982002037774404503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333762 (A139398 n).toNat

end

end A224290.P13982002037774404503

/-! ## A224290.P12338229118943415129

`A333762(A212384(n))`
-/

namespace A224290.P12338229118943415129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333762 (A212384 n).toNat

end

end A224290.P12338229118943415129

/-!
# A224291: Number of permutations of length n containing exactly 4 occurrences of 123 and 4 occurrences of 132.

The programs for A224291, there is no canonical definition to state claims against.
-/

/-! ## A224291.P10648578243258050013

`A253138(A056301(n+1))`
-/

namespace A224291.P10648578243258050013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253138 (A056301 (n + 1)).toNat

end

end A224291.P10648578243258050013

/-! ## A224291.P15578689643934641043

`A077070(A001267(n)*A086246(n))`
-/

namespace A224291.P15578689643934641043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077070 (A001267 n * A086246 n).toNat

end

end A224291.P15578689643934641043

/-! ## A224291.P11501244502227875066

`A051038(A001764(n))%A020107(n)`
-/

namespace A224291.P11501244502227875066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A051038 (A001764 n).toNat) (A020107 n)

end

end A224291.P11501244502227875066

/-! ## A224291.P10236694471666965160

`A070097(A176697(n+1)+A176697(n))`
-/

namespace A224291.P10236694471666965160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070097 (A176697 (n + 1) + A176697 n).toNat

end

end A224291.P10236694471666965160

/-!
# A224292: Number of permutations of length n avoiding 1234 and containing exactly 1 occurrence of 1243.

The programs for A224292, there is no canonical definition to state claims against.
-/

/-! ## A224292.P4798774627209214372

`A065096(n)-∑[A110190(n)]`
-/

namespace A224292.P4798774627209214372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110190 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065096 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A224292.P4798774627209214372

/-! ## A224292.P13231260587598292476

`A065096(n)-A106579(A141214(n))`
-/

namespace A224292.P13231260587598292476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065096 n - A106579 (A141214 n).toNat

end

end A224292.P13231260587598292476

/-! ## A224292.P16012735459978642068

`A065096(n)%A033877(A034856(n+1))`
-/

namespace A224292.P16012735459978642068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A065096 n) (A033877 (A034856 (n + 1)).toNat)

end

end A224292.P16012735459978642068

/-!
# A224293: Number of permutations of length n containing exactly 1 occurrence of 1234 and 1 occurrence of 1243.

The programs for A224293, there is no canonical definition to state claims against.
-/

/-! ## A224293.P12938835331149968404

`A339170(floor(2^(n-1)))%ceil(∑[3^(n-2)])`
-/

namespace A224293.P12938835331149968404
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ ((n : ℤ) - 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A339170 ⌊(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋.toNat) ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉

end

end A224293.P12938835331149968404

/-! ## A224293.P15881570911390759376

`A087086(A229736(n))`
-/

namespace A224293.P15881570911390759376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087086 (A229736 n).toNat

end

end A224293.P15881570911390759376

/-! ## A224293.P16039950660401517618

`A025444(A000902(n)+4)`
-/

namespace A224293.P16039950660401517618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025444 (A000902 n + 4).toNat

end

end A224293.P16039950660401517618

/-! ## A224293.P6482965471203146057

`A110655(C(A068921(n), 5))`
-/

namespace A224293.P6482965471203146057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110655 (Nat.choose (A068921 n).toNat 5)

end

end A224293.P6482965471203146057

/-!
# A224294: Number of permutations of length n containing exactly 2 occurrences of 1234 and 2 occurrences of 1243.

The programs for A224294, there is no canonical definition to state claims against.
-/

/-! ## A224294.P5734041268125450450

`A349953(A378254(n))`
-/

namespace A224294.P5734041268125450450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349953 (A378254 n).toNat

end

end A224294.P5734041268125450450

/-! ## A224294.P10397997408887802060

`Δ[Δ[A326680(A000031(n))]]`
-/

namespace A224294.P10397997408887802060
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326680 (A000031 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A224294.P10397997408887802060

/-! ## A224294.P17104436359293872548

`2*A343344(A107857(n+1))`
-/

namespace A224294.P17104436359293872548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A343344 (A107857 (n + 1)).toNat

end

end A224294.P17104436359293872548

/-! ## A224294.P13279996494243219819

`A194440(A002664(n))+A002664(n)`
-/

namespace A224294.P13279996494243219819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194440 (A002664 n).toNat + A002664 n

end

end A224294.P13279996494243219819

/-!
# A224295: Number of permutations of length n avoiding 12345 and 12354.

The programs for A224295, there is no canonical definition to state claims against.
-/

/-! ## A224295.P4874489743373021213

`A247472(A004891(n+1))+char[7]`
-/

namespace A224295.P4874489743373021213
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247472 (A004891 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A224295.P4874489743373021213

/-! ## A224295.P18430805038904421556

`A247472(n)+(A264669(n+1)%5)%2`
-/

namespace A224295.P18430805038904421556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247472 n + Int.tmod (Int.tmod (A264669 (n + 1)) 5) 2

end

end A224295.P18430805038904421556

/-! ## A224295.P6686987688749529690

`A028310(A247472(n)+A014082(n))`
-/

namespace A224295.P6686987688749529690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A247472 n + A014082 n).toNat

end

end A224295.P6686987688749529690

/-! ## A224295.P13544428963490572990

`A247472(n)+A011737(A047106(n))`
-/

namespace A224295.P13544428963490572990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247472 n + A011737 (A047106 n).toNat

end

end A224295.P13544428963490572990

/-!
# A224296: Number of permutations of length n avoiding 12345 and containing exactly 1 occurrence of 12354.

The programs for A224296, there is no canonical definition to state claims against.
-/

/-! ## A224296.P8255182699456333934

`floor(p?[A079964(n)]/9)`
-/

namespace A224296.P8255182699456333934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079964 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / 9⌋

end

end A224296.P8255182699456333934

/-! ## A224296.P6293347764029784878

`A364451(A104545(n))`
-/

namespace A224296.P6293347764029784878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364451 (A104545 n).toNat

end

end A224296.P6293347764029784878

/-! ## A224296.P10713394731817074406

`A364451(A106336(n))`
-/

namespace A224296.P10713394731817074406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364451 (A106336 n).toNat

end

end A224296.P10713394731817074406

/-!
# A224297: Number of permutations of length n containing exactly 1 occurrence of 12345 and 1 occurrence of 12354.

The programs for A224297, there is no canonical definition to state claims against.
-/

/-! ## A224297.P6683518021007618562

`A056847(A079262(∑[floor(n/ϕ)]))`
-/

namespace A224297.P6683518021007618562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) / Real.goldenRatio⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056847 (A079262 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A224297.P6683518021007618562

/-! ## A224297.P17704701599813183513

`A343042(C(A087418(2*n+1), n))`
-/

namespace A224297.P17704701599813183513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343042 (Nat.choose (A087418 (2 * n + 1)).toNat n)

end

end A224297.P17704701599813183513

/-! ## A224297.P16839492438099615613

`A273919(A000009(n))-A226463(n)`
-/

namespace A224297.P16839492438099615613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273919 (A000009 n).toNat - A226463 n

end

end A224297.P16839492438099615613

/-! ## A224297.P12889772759200547871

`A174814(n)%A146401(A000792(n))`
-/

namespace A224297.P12889772759200547871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A174814 n) (A146401 (A000792 n).toNat)

end

end A224297.P12889772759200547871

/-! ## A224297.P15042963695264365709

`A023422(n)*A054898(A241461(n+1))`
-/

namespace A224297.P15042963695264365709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023422 n * A054898 (A241461 (n + 1)).toNat

end

end A224297.P15042963695264365709

/-!
# A224298: Number of permutations in S_n containing exactly 3 increasing subsequences of length 4.

The programs for A224298, there is no canonical definition to state claims against.
-/

/-! ## A224298.P972285060277432693

`A056847(A137745(n)*A340361(n))`
-/

namespace A224298.P972285060277432693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056847 (A137745 n * A340361 n).toNat

end

end A224298.P972285060277432693

/-! ## A224298.P12963390173087912292

`A056847(A137745(n)*A346660(n))`
-/

namespace A224298.P12963390173087912292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056847 (A137745 n * A346660 n).toNat

end

end A224298.P12963390173087912292

/-! ## A224298.P6149615143511779504

`A056847(A092492(n+1)*A340361(n))`
-/

namespace A224298.P6149615143511779504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056847 (A092492 (n + 1) * A340361 n).toNat

end

end A224298.P6149615143511779504

/-! ## A224298.P10409180027535348298

`A056847(A092492(n+1)*A346660(n))`
-/

namespace A224298.P10409180027535348298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056847 (A092492 (n + 1) * A346660 n).toNat

end

end A224298.P10409180027535348298

/-!
# A224299: Collatz problem with rational negative numbers: number of steps to reach the end of the cycle starting with 1/(2n+1) where n is negative (the initial term is not counted).

The programs for A224299, there is no canonical definition to state claims against.
-/

/-! ## A224299.P3567493713960681992

`A224300(n+1)-1`
-/

namespace A224299.P3567493713960681992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224300 (n + 1) - 1

end

end A224299.P3567493713960681992

/-! ## A224299.P5052789196025384117

`A023443(A224300(n+1))`
-/

namespace A224299.P5052789196025384117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A224300 (n + 1)).toNat

end

end A224299.P5052789196025384117

/-! ## A224299.P5419206226561011956

`A224360(∑[n+1])`
-/

namespace A224299.P5419206226561011956
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224360 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A224299.P5419206226561011956

