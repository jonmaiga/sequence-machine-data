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
import Seq.B000.C016
import Seq.B000.C018
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C036
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
import Seq.B009.C000
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

/-!
# A299000: Number of nX7 0..1 arrays with every element equal to 0, 1, 2, 3, 4 or 6 king-move adjacent elements, with upper left element zero.

The programs for A299000, there is no canonical definition to state claims against.
-/

/-! ## A299000.P6903772022265567669

`A299001(A374008(n+1))`
-/

namespace A299000.P6903772022265567669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299001 (A374008 (n + 1)).toNat

end

end A299000.P6903772022265567669

/-! ## A299000.P7096991247670022886

`A299001(A056119(n)+28)`
-/

namespace A299000.P7096991247670022886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299001 (A056119 n + 28).toNat

end

end A299000.P7096991247670022886

/-! ## A299000.P7886618238502696385

`A299001(A055998(n+4)+10)`
-/

namespace A299000.P7886618238502696385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299001 (A055998 (n + 4) + 10).toNat

end

end A299000.P7886618238502696385

/-! ## A299000.P5748760334489394367

`A299001(eq[8, A131818(n+1)])`
-/

namespace A299000.P5748760334489394367
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299001 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A299000.P5748760334489394367

/-! ## A299000.P12170001181333512707

`A299001(eq[6, A193592(n)])`
-/

namespace A299000.P12170001181333512707
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299001 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A299000.P12170001181333512707

/-!
# A299001: T(n,k)=Number of nXk 0..1 arrays with every element equal to 0, 1, 2, 3, 4 or 6 king-move adjacent elements, with upper left element zero.

The programs for A299001, there is no canonical definition to state claims against.
-/

/-! ## A299001.P5012847335599361940

`A299746(∑[A010894(n)!])`
-/

namespace A299001.P5012847335599361940
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A010894 (n + 21)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299746 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A299001.P5012847335599361940

/-! ## A299001.P14291786077085472843

`A299746(A010894(n)!+n)`
-/

namespace A299001.P14291786077085472843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299746 (Nat.factorial (A010894 (n + 21)).toNat + n)

end

end A299001.P14291786077085472843

/-! ## A299001.P2856790559836675371

`A299746(n+1)%A046300(n)²`
-/

namespace A299001.P2856790559836675371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A299746 (n + 1)) (A046300 n ^ 2)

end

end A299001.P2856790559836675371

/-! ## A299001.P4501432090878609132

`A299746(n%A274234(n+5)+1)`
-/

namespace A299001.P4501432090878609132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299746 (Int.tmod (n : ℤ) (A274234 (n + 5)) + 1).toNat

end

end A299001.P4501432090878609132

/-! ## A299001.P9063642758552879000

`A299746(n+1)+val(A369176(n+4), 2)`
-/

namespace A299001.P9063642758552879000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299746 (n + 1) + (SequenceMachineLib.valuation (A369176 (n + 4)).toNat 2 : ℤ)

end

end A299001.P9063642758552879000

/-!
# A299002: Number of n X n 0..1 arrays with every element equal to 0, 1, 2, 3, 5 or 6 king-move adjacent elements, with upper left element zero.

The programs for A299002, there is no canonical definition to state claims against.
-/

/-! ## A299002.P242352056719779432

`A299008(∑[4*n]+1)`
-/

namespace A299002.P242352056719779432
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299008 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A299002.P242352056719779432

/-! ## A299002.P11058636558244139733

`record[A299008(A272267(n+1))]`
-/

namespace A299002.P11058636558244139733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299008 (A272267 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A299002.P11058636558244139733

/-! ## A299002.P10011682081781596221

`record[A299008(A330613(n+1))]`
-/

namespace A299002.P10011682081781596221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299008 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A299002.P10011682081781596221

/-! ## A299002.P14541445069738387184

`A299008(A001844(n))+char[9]`
-/

namespace A299002.P14541445069738387184
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299008 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A299002.P14541445069738387184

/-! ## A299002.P9827801194279314095

`record[A299008(Δ[A079824(n+1)])]`
-/

namespace A299002.P9827801194279314095
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079824 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299008 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A299002.P9827801194279314095

/-!
# A299003: Number of nX3 0..1 arrays with every element equal to 0, 1, 2, 3, 5 or 6 king-move adjacent elements, with upper left element zero.

The programs for A299003, there is no canonical definition to state claims against.
-/

/-! ## A299003.P15663787155872484869

`A299008(∑[n+2]+4)`
-/

namespace A299003.P15663787155872484869
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299008 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A299003.P15663787155872484869

/-! ## A299003.P4161789103568485985

`A026536(n²)*A299008(A000217(n+2)+3)`
-/

namespace A299003.P4161789103568485985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026536 (n ^ 2) * A299008 (A000217 (n + 2) + 3).toNat

end

end A299003.P4161789103568485985

/-! ## A299003.P13795306493207574400

`A299008(A000217(n+3)-n)/A026536((n+1)²)`
-/

namespace A299003.P13795306493207574400
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A299008 (A000217 (n + 3) - (n : ℤ)).toNat : ℚ) / (A026536 ((n + 1) ^ 2) : ℚ)

end

end A299003.P13795306493207574400

/-! ## A299003.P4049333793531835373

`A014963(A008527(n))*A299008(A167614(n+1))`
-/

namespace A299003.P4049333793531835373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A008527 n).toNat * A299008 (A167614 (n + 1)).toNat

end

end A299003.P4049333793531835373

/-! ## A299003.P7697169516148269289

`A001221(A118359(n+1))*A299008(A167614(n+1))`
-/

namespace A299003.P7697169516148269289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A118359 (n + 1)).toNat * A299008 (A167614 (n + 1)).toNat

end

end A299003.P7697169516148269289

/-!
# A299004: Number of nX4 0..1 arrays with every element equal to 0, 1, 2, 3, 5 or 6 king-move adjacent elements, with upper left element zero.

The programs for A299004, there is no canonical definition to state claims against.
-/

/-! ## A299004.P16591699930549000460

`A299008(A374004(n+1))`
-/

namespace A299004.P16591699930549000460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299008 (A374004 (n + 1)).toNat

end

end A299004.P16591699930549000460

/-! ## A299004.P17801525365680652329

`A299008(A052905(n)+9)`
-/

namespace A299004.P17801525365680652329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299008 (A052905 n + 9).toNat

end

end A299004.P17801525365680652329

/-! ## A299004.P6328324033620067452

`A299008(A055999(n)+10)`
-/

namespace A299004.P6328324033620067452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299008 (A055999 n + 10).toNat

end

end A299004.P6328324033620067452

/-! ## A299004.P2881140096474599160

`A299008(A167614(n+2)+1)`
-/

namespace A299004.P2881140096474599160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299008 (A167614 (n + 2) + 1).toNat

end

end A299004.P2881140096474599160

/-! ## A299004.P4545700541279012591

`A299008(A167499(n+2)-1)`
-/

namespace A299004.P4545700541279012591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299008 (A167499 (n + 2) - 1).toNat

end

end A299004.P4545700541279012591

/-!
# A299005: Number of nX5 0..1 arrays with every element equal to 0, 1, 2, 3, 5 or 6 king-move adjacent elements, with upper left element zero.

The programs for A299005, there is no canonical definition to state claims against.
-/

/-! ## A299005.P413084167326686753

`A299008(∑[n+4]+11)`
-/

namespace A299005.P413084167326686753
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299008 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A299005.P413084167326686753

/-! ## A299005.P6116277352764705869

`abs(A299008(A000217(n+4)+5)-1)+1`
-/

namespace A299005.P6116277352764705869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A299008 (A000217 (n + 4) + 5).toNat - 1| + 1

end

end A299005.P6116277352764705869

/-! ## A299005.P5826581428922984729

`A299008(A000217(n+4)+5)+A007814(2*n+5)`
-/

namespace A299005.P5826581428922984729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299008 (A000217 (n + 4) + 5).toNat + A007814 (2 * n + 5)

end

end A299005.P5826581428922984729

/-!
# A299006: Number of nX6 0..1 arrays with every element equal to 0, 1, 2, 3, 5 or 6 king-move adjacent elements, with upper left element zero.

The programs for A299006, there is no canonical definition to state claims against.
-/

/-! ## A299006.P1139193802812985748

`A299008(A374007(n+1))`
-/

namespace A299006.P1139193802812985748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299008 (A374007 (n + 1)).toNat

end

end A299006.P1139193802812985748

/-! ## A299006.P1745833141933752003

`A299008(A056115(n)+21)`
-/

namespace A299006.P1745833141933752003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299008 (A056115 n + 21).toNat

end

end A299006.P1745833141933752003

/-! ## A299006.P979050168929603081

`A299008(eq[7, A131818(n+1)])`
-/

namespace A299006.P979050168929603081
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299008 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A299006.P979050168929603081

/-! ## A299006.P14379462539280855461

`A299008(A052905(n+3))`
-/

namespace A299006.P14379462539280855461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299008 (A052905 (n + 3)).toNat

end

end A299006.P14379462539280855461

/-! ## A299006.P6312850041119392667

`A299008(A056119(n)+16)`
-/

namespace A299006.P6312850041119392667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299008 (A056119 n + 16).toNat

end

end A299006.P6312850041119392667

/-!
# A299007: Number of nX7 0..1 arrays with every element equal to 0, 1, 2, 3, 5 or 6 king-move adjacent elements, with upper left element zero.

The programs for A299007, there is no canonical definition to state claims against.
-/

/-! ## A299007.P13405966213253166345

`A299008(A374008(n+1))`
-/

namespace A299007.P13405966213253166345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299008 (A374008 (n + 1)).toNat

end

end A299007.P13405966213253166345

/-! ## A299007.P13584694462188635289

`A299008(A056119(n)+28)`
-/

namespace A299007.P13584694462188635289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299008 (A056119 n + 28).toNat

end

end A299007.P13584694462188635289

/-! ## A299007.P14597307899650657058

`A299008(eq[11, A066657(n)])`
-/

namespace A299007.P14597307899650657058
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299008 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A299007.P14597307899650657058

/-! ## A299007.P12324445235307632590

`A299008(A089071(n+8)+5)`
-/

namespace A299007.P12324445235307632590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299008 (A089071 (n + 8) + 5).toNat

end

end A299007.P12324445235307632590

/-! ## A299007.P9142069738591035827

`A299008(eq[8, A131818(n+1)])`
-/

namespace A299007.P9142069738591035827
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299008 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A299007.P9142069738591035827

/-!
# A299008: T(n,k)=Number of nXk 0..1 arrays with every element equal to 0, 1, 2, 3, 5 or 6 king-move adjacent elements, with upper left element zero.

The programs for A299008, there is no canonical definition to state claims against.
-/

/-! ## A299008.P16676489914474853682

`A299675(n+1)-A285007(A035607(n))`
-/

namespace A299008.P16676489914474853682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299675 (n + 1) - A285007 (A035607 n).toNat

end

end A299008.P16676489914474853682

/-! ## A299008.P6010275576628712557

`A299675(n+1)-A309785(A331562(n))`
-/

namespace A299008.P6010275576628712557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299675 (n + 1) - A309785 (A331562 n).toNat

end

end A299008.P6010275576628712557

/-! ## A299008.P2125399824043841690

`A299675(n+1)-A309785(A347621(n))`
-/

namespace A299008.P2125399824043841690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299675 (n + 1) - A309785 (A347621 n).toNat

end

end A299008.P2125399824043841690

/-! ## A299008.P2159386588050814602

`xor(A185284(A130348(n)), A299675(n+1))`
-/

namespace A299008.P2159386588050814602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A185284 (A130348 n).toNat) (A299675 (n + 1))

end

end A299008.P2159386588050814602

/-! ## A299008.P12973486598025729300

`xor(A185284(A206225(n+1)), A299675(n+1))`
-/

namespace A299008.P12973486598025729300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A185284 (A206225 (n + 1)).toNat) (A299675 (n + 1))

end

end A299008.P12973486598025729300

/-!
# A299009: Number of n X n 0..1 arrays with every element equal to 0, 1, 2, 4, 5 or 6 king-move adjacent elements, with upper left element zero.

The programs for A299009, there is no canonical definition to state claims against.
-/

/-! ## A299009.P9456014957850131881

`A299015(∑[4*n]+1)`
-/

namespace A299009.P9456014957850131881
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299015 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A299009.P9456014957850131881

/-! ## A299009.P7462695416875241989

`record[A299015(A330613(n+1))]`
-/

namespace A299009.P7462695416875241989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299015 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A299009.P7462695416875241989

/-! ## A299009.P3633289712861869176

`A299015(A001844(n))+char[9]`
-/

namespace A299009.P3633289712861869176
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299015 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A299009.P3633289712861869176

/-! ## A299009.P2894943056304238052

`record[A003982(n)*A299015(n+1)]`
-/

namespace A299009.P2894943056304238052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A299015 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A299009.P2894943056304238052

/-! ## A299009.P13154439782386111130

`A299015(A001844(n))/A055642(n)`
-/

namespace A299009.P13154439782386111130
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A299015 (A001844 n).toNat : ℚ) / (A055642 n : ℚ)

end

end A299009.P13154439782386111130

/-!
# A299010: Number of nX3 0..1 arrays with every element equal to 0, 1, 2, 4, 5 or 6 king-move adjacent elements, with upper left element zero.

The programs for A299010, there is no canonical definition to state claims against.
-/

/-! ## A299010.P18099493343259989390

`A299015(∑[n+2]+4)`
-/

namespace A299010.P18099493343259989390
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299015 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A299010.P18099493343259989390

/-! ## A299010.P13625294978978485684

`A299015(A167614(n+1))+char[18]`
-/

namespace A299010.P13625294978978485684
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  18

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299015 (A167614 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A299010.P13625294978978485684

/-! ## A299010.P16299083466170717047

`A299015(A167499(n)+n)+char[18]`
-/

namespace A299010.P16299083466170717047
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  18

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299015 (A167499 n + (n : ℤ)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A299010.P16299083466170717047

/-! ## A299010.P9144753732975753126

`A015198(n)*A299015(A167614(n+1))`
-/

namespace A299010.P9144753732975753126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015198 n * A299015 (A167614 (n + 1)).toNat

end

end A299010.P9144753732975753126

/-! ## A299010.P12275981652965381224

`A015600(n)*A299015(A167614(n+1))`
-/

namespace A299010.P12275981652965381224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015600 n * A299015 (A167614 (n + 1)).toNat

end

end A299010.P12275981652965381224

/-!
# A299011: Number of nX4 0..1 arrays with every element equal to 0, 1, 2, 4, 5 or 6 king-move adjacent elements, with upper left element zero.

The programs for A299011, there is no canonical definition to state claims against.
-/

/-! ## A299011.P13793287838372997744

`A299015(∑[n+3]+7)`
-/

namespace A299011.P13793287838372997744
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299015 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A299011.P13793287838372997744

/-! ## A299011.P1591421881701986841

`A299015(A141214(n)+7)+char[17]`
-/

namespace A299011.P1591421881701986841
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299015 (A141214 n + 7).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A299011.P1591421881701986841

/-! ## A299011.P13205177677908860735

`A007318(and(1, -n))*A299015(A141214(n)+7)`
-/

namespace A299011.P13205177677908860735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Int.land 1 (-(n : ℤ))).toNat * A299015 (A141214 n + 7).toNat

end

end A299011.P13205177677908860735

/-! ## A299011.P4018334889109617812

`A299015(A141214(n)+7)%A000032(3*(n+2))`
-/

namespace A299011.P4018334889109617812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A299015 (A141214 n + 7).toNat) (A000032 (3 * (n + 2)))

end

end A299011.P4018334889109617812

/-! ## A299011.P64105348015662334

`A000203(((-1)^n)²)*A299015(A141214(n)+7)`
-/

namespace A299011.P64105348015662334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (((-1) ^ n) ^ 2).toNat * A299015 (A141214 n + 7).toNat

end

end A299011.P64105348015662334

/-!
# A299012: Number of nX5 0..1 arrays with every element equal to 0, 1, 2, 4, 5 or 6 king-move adjacent elements, with upper left element zero.

The programs for A299012, there is no canonical definition to state claims against.
-/

/-! ## A299012.P16639833957773239147

`A299015(A374005(n+1))`
-/

namespace A299012.P16639833957773239147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299015 (A374005 (n + 1)).toNat

end

end A299012.P16639833957773239147

/-! ## A299012.P7007212979320921483

`A299015(A155212(n)+13)`
-/

namespace A299012.P7007212979320921483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299015 (A155212 n + 13).toNat

end

end A299012.P7007212979320921483

/-! ## A299012.P1066042492663484619

`A299015(A056000(n)+15)`
-/

namespace A299012.P1066042492663484619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299015 (A056000 n + 15).toNat

end

end A299012.P1066042492663484619

/-! ## A299012.P10870278680979790971

`A299015(eq[7, A066657(n)])`
-/

namespace A299012.P10870278680979790971
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299015 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A299012.P10870278680979790971

/-! ## A299012.P6683007474372749329

`A299015(A167614(n+3)+2)`
-/

namespace A299012.P6683007474372749329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299015 (A167614 (n + 3) + 2).toNat

end

end A299012.P6683007474372749329

/-!
# A299013: Number of nX6 0..1 arrays with every element equal to 0, 1, 2, 4, 5 or 6 king-move adjacent elements, with upper left element zero.

The programs for A299013, there is no canonical definition to state claims against.
-/

/-! ## A299013.P4454221091046317505

`A299015(A374007(n+1))`
-/

namespace A299013.P4454221091046317505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299015 (A374007 (n + 1)).toNat

end

end A299013.P4454221091046317505

/-! ## A299013.P13499545574603260557

`A299015(A166136(n+4))`
-/

namespace A299013.P13499545574603260557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299015 (A166136 (n + 4)).toNat

end

end A299013.P13499545574603260557

/-! ## A299013.P7905730949457449672

`A299015(A056115(n)+21)`
-/

namespace A299013.P7905730949457449672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299015 (A056115 n + 21).toNat

end

end A299013.P7905730949457449672

/-! ## A299013.P892564485725092708

`A299015(A167499(n+4)+1)`
-/

namespace A299013.P892564485725092708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299015 (A167499 (n + 4) + 1).toNat

end

end A299013.P892564485725092708

/-! ## A299013.P13158410931452231859

`A299015(A167487(n+4)-1)`
-/

namespace A299013.P13158410931452231859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299015 (A167487 (n + 4) - 1).toNat

end

end A299013.P13158410931452231859

/-!
# A299014: Number of nX7 0..1 arrays with every element equal to 0, 1, 2, 4, 5 or 6 king-move adjacent elements, with upper left element zero.

The programs for A299014, there is no canonical definition to state claims against.
-/

/-! ## A299014.P7908525211338614206

`A299015(A374008(n+1))`
-/

namespace A299014.P7908525211338614206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299015 (A374008 (n + 1)).toNat

end

end A299014.P7908525211338614206

/-! ## A299014.P6632564540623659363

`A299015(A056119(n)+28)`
-/

namespace A299014.P6632564540623659363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299015 (A056119 n + 28).toNat

end

end A299014.P6632564540623659363

/-! ## A299014.P8175377650201243933

`A299015(eq[11, A066657(n)])`
-/

namespace A299014.P8175377650201243933
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299015 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A299014.P8175377650201243933

/-! ## A299014.P7991256887455243165

`A299015(A000124(n+6)+6)`
-/

namespace A299014.P7991256887455243165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299015 (A000124 (n + 6) + 6).toNat

end

end A299014.P7991256887455243165

/-! ## A299014.P15214962269734520570

`A299015(A253145(n+5)+7)`
-/

namespace A299014.P15214962269734520570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299015 (A253145 (n + 5) + 7).toNat

end

end A299014.P15214962269734520570

/-!
# A299015: T(n,k) = Number of n X k 0..1 arrays with every element equal to 0, 1, 2, 4, 5 or 6 king-move adjacent elements, with upper left element zero.

The programs for A299015, there is no canonical definition to state claims against.
-/

/-! ## A299015.P12834274639299749510

`A171181(2*A299806(n+1))`
-/

namespace A299015.P12834274639299749510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171181 (2 * A299806 (n + 1)).toNat

end

end A299015.P12834274639299749510

/-! ## A299015.P5069273105227216344

`A059995(10*A299806(n+1))`
-/

namespace A299015.P5069273105227216344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 (10 * A299806 (n + 1)).toNat

end

end A299015.P5069273105227216344

/-! ## A299015.P9143107869214921245

`A076309(10*A299806(n+1))`
-/

namespace A299015.P9143107869214921245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076309 (10 * A299806 (n + 1)).toNat

end

end A299015.P9143107869214921245

/-! ## A299015.P6307657610826490399

`A106611(10*A299806(n+1))`
-/

namespace A299015.P6307657610826490399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106611 (10 * A299806 (n + 1)).toNat

end

end A299015.P6307657610826490399

/-! ## A299015.P10899386362159135725

`A194524(11*A299806(n+1))`
-/

namespace A299015.P10899386362159135725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194524 (11 * A299806 (n + 1)).toNat

end

end A299015.P10899386362159135725

/-!
# A299017: Intersection of A264041 and A000217.

The programs for A299017, the canonical program `A299017.P13728732516335843163` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A299017 has offset 1).

The definition of A299017 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A299017.P13728732516335843163

`3*a(n-1)-3*a(n-2)+a(n-3)` with `a(0)=1, a(1)=3, a(2)=6, a(3)=10, a(4)=21, a(5)=36`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A299017

/-- `3*a(n-1)-3*a(n-2)+a(n-3)` -/
def P13728732516335843163.Spec : Prop :=
  ∀ n, P13728732516335843163.a n = A299017 (n + 1)

theorem P13728732516335843163.correct : P13728732516335843163.Spec := by
  intro n
  simp only [A299017, Nat.add_sub_cancel]

end A299017

/-! ## A299017.P4553972895639602528

`C(gcd(n-2, C(2, n))+n+1, 2)`
-/

namespace A299017.P4553972895639602528
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Int.gcd ((n : ℤ) - 2) (Nat.choose 2 n : ℤ) + (n + 1)) 2

end

end A299017.P4553972895639602528

namespace A299017

/-- `C(gcd(n-2, C(2, n))+n+1, 2)` -/
def P4553972895639602528.Spec : Prop :=
  ∀ n, (P4553972895639602528.a n : ℤ) = A299017 (n + 1)

end A299017

/-! ## A299017.P15503335809811777401

`record[gcd((3*n)%or(1, n), C(n+2, 2))]`
-/

namespace A299017.P15503335809811777401
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (3 * n % Nat.lor 1 n) (Nat.choose (n + 2) 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A299017.P15503335809811777401

namespace A299017

/-- `record[gcd((3*n)%or(1, n), C(n+2, 2))]` -/
def P15503335809811777401.Spec : Prop :=
  ∀ n, (P15503335809811777401.a n : ℤ) = A299017 (n + 1)

end A299017

/-! ## A299017.P10688790178751878208

`C(floor(2*n-(n-2)/a(n-1)), 2)` with `a(0)=1`
-/

namespace A299017.P10688790178751878208
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.choose ⌊(2 * n : ℚ) - ((n : ℤ) - 2 : ℚ) / (a (n - 1) : ℚ)⌋.toNat 2

end

end A299017.P10688790178751878208

namespace A299017

/-- `C(floor(2*n-(n-2)/a(n-1)), 2)` -/
def P10688790178751878208.Spec : Prop :=
  ∀ n, (P10688790178751878208.a n : ℤ) = A299017 (n + 1)

end A299017

/-! ## A299017.P4345094727126027194

`C(A004274(n)+2, 2)`
-/

namespace A299017.P4345094727126027194
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A004274 n + 2).toNat 2

end

end A299017.P4345094727126027194

namespace A299017

/-- `C(A004274(n)+2, 2)` -/
def P4345094727126027194.Spec : Prop :=
  ∀ n, (P4345094727126027194.a n : ℤ) = A299017 (n + 1)

end A299017

/-! ## A299017.P14375782175064139420

`A000217(comp[2*(n+2)]+1)`
-/

namespace A299017.P14375782175064139420
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1)

end

end A299017.P14375782175064139420

namespace A299017

/-- `A000217(comp[2*(n+2)]+1)` -/
def P14375782175064139420.Spec : Prop :=
  ∀ n, P14375782175064139420.a n = A299017 (n + 1)

end A299017

/-! ## A299017.P9638123247025250693

`C(A004281(n+1), 2)`
-/

namespace A299017.P9638123247025250693
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A004281 (n + 1)).toNat 2

end

end A299017.P9638123247025250693

namespace A299017

/-- `C(A004281(n+1), 2)` -/
def P9638123247025250693.Spec : Prop :=
  ∀ n, (P9638123247025250693.a n : ℤ) = A299017 (n + 1)

end A299017

/-! ## A299017.P9364150483981886627

`C(A004276(n+2), 2)`
-/

namespace A299017.P9364150483981886627
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A004276 (n + 2)).toNat 2

end

end A299017.P9364150483981886627

namespace A299017

/-- `C(A004276(n+2), 2)` -/
def P9364150483981886627.Spec : Prop :=
  ∀ n, (P9364150483981886627.a n : ℤ) = A299017 (n + 1)

end A299017

/-! ## A299017.P6499781204500343591

`C(floor(2*n-(n-2)/A000041(n)), 2)`
-/

namespace A299017.P6499781204500343591
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ⌊(2 * n : ℚ) - ((n : ℤ) - 2 : ℚ) / (A000041 n : ℚ)⌋.toNat 2

end

end A299017.P6499781204500343591

namespace A299017

/-- `C(floor(2*n-(n-2)/A000041(n)), 2)` -/
def P6499781204500343591.Spec : Prop :=
  ∀ n, (P6499781204500343591.a n : ℤ) = A299017 (n + 1)

end A299017

/-! ## A299017.P9740603492576094608

`record[∑[n+1]/gcd(1-n, n%2)]`
-/

namespace A299017.P9740603492576094608
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℚ) / (Int.gcd (1 - (n : ℤ)) ((n % 2 : ℕ) : ℤ) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A299017.P9740603492576094608

namespace A299017

/-- `record[∑[n+1]/gcd(1-n, n%2)]` -/
def P9740603492576094608.Spec : Prop :=
  ∀ n, P9740603492576094608.a n = (A299017 (n + 1) : ℚ)

end A299017

/-! ## A299017.P7049080489604856504

`record[gcd((3*n)%or(1, n), ∑[n+1])]`
-/

namespace A299017.P7049080489604856504
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (3 * n % Nat.lor 1 n) (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A299017.P7049080489604856504

namespace A299017

/-- `record[gcd((3*n)%or(1, n), ∑[n+1])]` -/
def P7049080489604856504.Spec : Prop :=
  ∀ n, (P7049080489604856504.a n : ℤ) = A299017 (n + 1)

end A299017

/-! ## A299017.P11336366418039185169

`A000096(A004274(n))+1`
-/

namespace A299017.P11336366418039185169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 (A004274 n).toNat + 1

end

end A299017.P11336366418039185169

namespace A299017

/-- `A000096(A004274(n))+1` -/
def P11336366418039185169.Spec : Prop :=
  ∀ n, P11336366418039185169.a n = A299017 (n + 1)

end A299017

/-! ## A299017.P12933938569581024604

`A034856(A004274(n)+1)-A004274(n)`
-/

namespace A299017.P12933938569581024604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034856 (A004274 n + 1).toNat - A004274 n

end

end A299017.P12933938569581024604

namespace A299017

/-- `A034856(A004274(n)+1)-A004274(n)` -/
def P12933938569581024604.Spec : Prop :=
  ∀ n, P12933938569581024604.a n = A299017 (n + 1)

end A299017

/-! ## A299017.P12034999493191048161

`A161680(A004271(n+1))+A004271(n+1)`
-/

namespace A299017.P12034999493191048161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (A004271 (n + 1)).toNat + A004271 (n + 1)

end

end A299017.P12034999493191048161

namespace A299017

/-- `A161680(A004271(n+1))+A004271(n+1)` -/
def P12034999493191048161.Spec : Prop :=
  ∀ n, P12034999493191048161.a n = A299017 (n + 1)

end A299017

/-! ## A299017.P3845690432987982681

`A161680(A004281(n+1))`
-/

namespace A299017.P3845690432987982681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (A004281 (n + 1)).toNat

end

end A299017.P3845690432987982681

namespace A299017

/-- `A161680(A004281(n+1))` -/
def P3845690432987982681.Spec : Prop :=
  ∀ n, P3845690432987982681.a n = A299017 (n + 1)

end A299017

/-! ## A299017.P12572490848392479479

`A161680(A004274(n)+2)`
-/

namespace A299017.P12572490848392479479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (A004274 n + 2).toNat

end

end A299017.P12572490848392479479

namespace A299017

/-- `A161680(A004274(n)+2)` -/
def P12572490848392479479.Spec : Prop :=
  ∀ n, P12572490848392479479.a n = A299017 (n + 1)

end A299017

/-! ## A299017.P4830462418219134613

`A161680(A004271(n+1)+1)`
-/

namespace A299017.P4830462418219134613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (A004271 (n + 1) + 1).toNat

end

end A299017.P4830462418219134613

namespace A299017

/-- `A161680(A004271(n+1)+1)` -/
def P4830462418219134613.Spec : Prop :=
  ∀ n, P4830462418219134613.a n = A299017 (n + 1)

end A299017

/-! ## A299017.P13483760888929133831

`∩[A264041(n+1), A000217(n)]`
-/

namespace A299017.P13483760888929133831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264041 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A299017.P13483760888929133831

namespace A299017

/-- `∩[A264041(n+1), A000217(n)]` -/
def P13483760888929133831.Spec : Prop :=
  ∀ n, (P13483760888929133831.a n : ℤ) = A299017 (n + 1)

end A299017

/-! ## A299017.P17465321196019535984

`∩[A264041(n+1), A122493(n)]`
-/

namespace A299017.P17465321196019535984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264041 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122493 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A299017.P17465321196019535984

namespace A299017

/-- `∩[A264041(n+1), A122493(n)]` -/
def P17465321196019535984.Spec : Prop :=
  ∀ n, (P17465321196019535984.a n : ℤ) = A299017 (n + 1)

end A299017

/-! ## A299017.P5139918064104954265

`∩[A264041(n+1), A334129(n+1)]`
-/

namespace A299017.P5139918064104954265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264041 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334129 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A299017.P5139918064104954265

namespace A299017

/-- `∩[A264041(n+1), A334129(n+1)]` -/
def P5139918064104954265.Spec : Prop :=
  ∀ n, (P5139918064104954265.a n : ℤ) = A299017 (n + 1)

end A299017

/-!
# A299018: Triangle read by rows: T(n,k) is the coefficient of x^k in the polynomial P(n) = n*(x + 1)*P(n - 1) - (n - 2)^2*x*P(n - 2).

The programs for A299018, there is no canonical definition to state claims against.
-/

/-! ## A299018.P8777116344847217359

`A156992(n+1)-A180047(A269946(n))`
-/

namespace A299018.P8777116344847217359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156992 (n + 1) - A180047 (A269946 n).toNat

end

end A299018.P8777116344847217359

/-! ## A299018.P2220991807993921181

`A337413(A296804(n+1))+A269565(n+1)`
-/

namespace A299018.P2220991807993921181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337413 (A296804 (n + 1)).toNat + A269565 (n + 1)

end

end A299018.P2220991807993921181

/-! ## A299018.P17657260823754531795

`A316511(A014963(n+1))+A221916(A240347(n+1))`
-/

namespace A299018.P17657260823754531795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316511 (A014963 (n + 1)).toNat + A221916 (A240347 (n + 1)).toNat

end

end A299018.P17657260823754531795

/-!
# A299020: a(n) is the maximum digit in the factorial base expansion of 1/n.

The programs for A299020, there is no canonical definition to state claims against.
-/

/-! ## A299020.P10381366294696627360

`A000120(or(A007599(n), A226305(n+1)))`
-/

namespace A299020.P10381366294696627360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (Int.lor (A007599 n) (A226305 (n + 1))).toNat

end

end A299020.P10381366294696627360

/-! ## A299020.P16899844488869162372

`A000010(n+1)-A124764(A238620(n+1))`
-/

namespace A299020.P16899844488869162372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) - A124764 (A238620 (n + 1)).toNat

end

end A299020.P16899844488869162372

/-! ## A299020.P10650542843668896253

`A181935(A055032(n+1)+A000225(n))`
-/

namespace A299020.P10650542843668896253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181935 (A055032 (n + 1) + A000225 n).toNat

end

end A299020.P10650542843668896253

/-! ## A299020.P10217364432580704493

`A173636(A052401(n+1))+A072211(n+1)`
-/

namespace A299020.P10217364432580704493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173636 (A052401 (n + 1)).toNat + A072211 (n + 1)

end

end A299020.P10217364432580704493

/-! ## A299020.P2316104951031390398

`A001222(A000051(n)*A318833(n+1)-1)`
-/

namespace A299020.P2316104951031390398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A000051 n * A318833 (n + 1) - 1).toNat

end

end A299020.P2316104951031390398

/-!
# A299021: G.f.: A(x) = Sum_{n>=1} a(n)*x^n = x*Product_{n>=1} (1 + a(n)*x^n)/(1 - a(n)*x^n).

The programs for A299021, there is no canonical definition to state claims against.
-/

/-! ## A299021.P5746096833815465835

`or(A073075(n), A084928(A003262(n+1)))`
-/

namespace A299021.P5746096833815465835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A073075 n) (A084928 (A003262 (n + 1)).toNat)

end

end A299021.P5746096833815465835

/-! ## A299021.P386856390436432783

`or(A001223(A129012(3*n)), A073075(n))`
-/

namespace A299021.P386856390436432783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001223 (A129012 (3 * n)).toNat) (A073075 n)

end

end A299021.P386856390436432783

/-! ## A299021.P8436157042389204782

`A354767(A291653(n)+n)`
-/

namespace A299021.P8436157042389204782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354767 (A291653 n + (n : ℤ)).toNat

end

end A299021.P8436157042389204782

/-!
# A299022: a(n) is the number of primes of the form 2*n - 1 + k!.

The programs for A299022, there is no canonical definition to state claims against.
-/

/-! ## A299022.P1236267283726557940

`A125162(2*n+3)`
-/

namespace A299022.P1236267283726557940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125162 (2 * n + 3)

end

end A299022.P1236267283726557940

/-! ## A299022.P14914336284515561871

`A125162(n+3+n)%12`
-/

namespace A299022.P14914336284515561871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A125162 (n + 3 + n)) 12

end

end A299022.P14914336284515561871

/-! ## A299022.P8732450201708169321

`A000027(A125162(Δ[n²]+2)+2)-2`
-/

namespace A299022.P8732450201708169321
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A125162 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + 2).toNat + 2).toNat - 2

end

end A299022.P8732450201708169321

/-! ## A299022.P9332031530325307596

`A125162(Δ[n²]+2)+A000007(n+1)`
-/

namespace A299022.P9332031530325307596
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125162 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + 2).toNat + A000007 (n + 1)

end

end A299022.P9332031530325307596

/-! ## A299022.P13935908915876519560

`A125162(Δ[n²]+2)+val(A242856(n+2), 3)`
-/

namespace A299022.P13935908915876519560
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125162 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + 2).toNat + (SequenceMachineLib.valuation (A242856 (n + 2)).toNat 3 : ℤ)

end

end A299022.P13935908915876519560

/-! ## A299022.P2954518619562049959

`A333149(val(n+2, 3))+A125162(Δ[n²]+2)`
-/

namespace A299022.P2954518619562049959
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333149 (SequenceMachineLib.valuation (n + 2) 3) + A125162 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + 2).toNat

end

end A299022.P2954518619562049959

/-! ## A299022.P17670804060258695726

`∑{d}[A125162(A005408(n+1)), A000010(#)]`
-/

namespace A299022.P17670804060258695726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125162 (A005408 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A299022.P17670804060258695726

/-! ## A299022.P13319193642603859185

`A125162(A005408(n+1))/A000041(C(2, n+2))`
-/

namespace A299022.P13319193642603859185
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A125162 (A005408 (n + 1)).toNat : ℚ) / (A000041 (Nat.choose 2 (n + 2)) : ℚ)

end

end A299022.P13319193642603859185

/-! ## A299022.P4272052648908492552

`A125162(A005408(n+1))/A000108(C(2, n+2))`
-/

namespace A299022.P4272052648908492552
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A125162 (A005408 (n + 1)).toNat : ℚ) / (A000108 (Nat.choose 2 (n + 2)) : ℚ)

end

end A299022.P4272052648908492552

/-! ## A299022.P12116170901865514585

`A125162(A005408(n+1))+floor(A001222(n+2)/9)`
-/

namespace A299022.P12116170901865514585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125162 (A005408 (n + 1)).toNat + ⌊(A001222 (n + 2) : ℚ) / 9⌋

end

end A299022.P12116170901865514585

/-!
# A299023: Number of compositions of n whose standard factorization into Lyndon words has all strict compositions as factors.

The programs for A299023, there is no canonical definition to state claims against.
-/

/-! ## A299023.P9700425390833328589

`A100617(A121486(n+2))`
-/

namespace A299023.P9700425390833328589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100617 (A121486 (n + 2)).toNat

end

end A299023.P9700425390833328589

/-! ## A299023.P515875667328879971

`A069623(A052541(n)+n)`
-/

namespace A299023.P515875667328879971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069623 (A052541 n + (n : ℤ)).toNat

end

end A299023.P515875667328879971

/-! ## A299023.P14452725776695546216

`A003056(or(n², A095127(n+1)))`
-/

namespace A299023.P14452725776695546216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (Int.lor (n ^ 2 : ℤ) (A095127 (n + 1))).toNat

end

end A299023.P14452725776695546216

/-! ## A299023.P1456393505643735818

`record[A007323(n)-A014378(n+2)]`
-/

namespace A299023.P1456393505643735818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007323 n - A014378 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A299023.P1456393505643735818

/-! ## A299023.P18403046295210158551

`A003056(A083323(n))+A002487(n)`
-/

namespace A299023.P18403046295210158551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A083323 n).toNat + A002487 n

end

end A299023.P18403046295210158551

/-!
# A299024: Number of compositions of n whose standard factorization into Lyndon words has distinct strict compositions as factors.

The programs for A299024, there is no canonical definition to state claims against.
-/

/-! ## A299024.P15525512378690675169

`A003056(or(A052946(n), A231668(n)))`
-/

namespace A299024.P15525512378690675169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (Int.lor (A052946 n) (A231668 n)).toNat

end

end A299024.P15525512378690675169

/-! ## A299024.P13126386492063763554

`A156246(or(A061265(n+1), A217283(n)))`
-/

namespace A299024.P13126386492063763554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156246 (Int.lor (A061265 (n + 1)) (A217283 n)).toNat

end

end A299024.P13126386492063763554

/-! ## A299024.P6427156502622383617

`A003056(or(A246281(n+1), A261788(n)))`
-/

namespace A299024.P6427156502622383617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (Int.lor (A246281 (n + 1)) (A261788 n)).toNat

end

end A299024.P6427156502622383617

/-! ## A299024.P15370599081654516523

`A004001(n+1)+A000196(A121532(n+1))`
-/

namespace A299024.P15370599081654516523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004001 (n + 1) + A000196 (A121532 (n + 1)).toNat

end

end A299024.P15370599081654516523

/-! ## A299024.P12649694901398784978

`A381018(A052933(n))`
-/

namespace A299024.P12649694901398784978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381018 (A052933 n).toNat

end

end A299024.P12649694901398784978

/-!
# A299025: a(n) = the fractional part of 1 / A003592(n) read backwards.

The programs for A299025, there is no canonical definition to state claims against.
-/

/-! ## A299025.P11598242788922883330

`A004086(A025625(3*n+2)*A102113(n+1))`
-/

namespace A299025.P11598242788922883330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (A025625 (3 * n + 2) * A102113 (n + 1)).toNat

end

end A299025.P11598242788922883330

/-!
# A299026: Number of compositions of n whose standard factorization into Lyndon words has all weakly increasing factors.

The programs for A299026, there is no canonical definition to state claims against.
-/

/-! ## A299026.P2433101472594536606

`ceil(sqrt(A006093(Δ[floor(3^(n-1))])))`
-/

namespace A299026.P2433101472594536606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A006093 (f1 (n + 1) - f1 n).toNat : ℝ)⌉

end

end A299026.P2433101472594536606

/-! ## A299026.P16040993100097993496

`ceil(sqrt(A008578(Δ[floor(3^(n-1))])))`
-/

namespace A299026.P16040993100097993496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A008578 (f1 (n + 1) - f1 n).toNat : ℝ)⌉

end

end A299026.P16040993100097993496

/-! ## A299026.P9821662667787868782

`round(sqrt(A250120(n*ceil(3^n/6))))`
-/

namespace A299026.P9821662667787868782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A250120 ((n : ℤ) * ⌈(3 ^ n : ℚ) / 6⌉).toNat : ℝ))

end

end A299026.P9821662667787868782

/-! ## A299026.P13386133116546393941

`A000006(A367484(n))`
-/

namespace A299026.P13386133116546393941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000006 (A367484 n).toNat

end

end A299026.P13386133116546393941

/-! ## A299026.P14421176498903898917

`∑[A003056(A275863(n))]`
-/

namespace A299026.P14421176498903898917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A275863 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A299026.P14421176498903898917

/-!
# A299027: Number of compositions of n whose standard factorization into Lyndon words has all distinct weakly increasing factors.

The programs for A299027, there is no canonical definition to state claims against.
-/

/-! ## A299027.P15083713462709145719

`A000006(A099216(n)+A028242(n))`
-/

namespace A299027.P15083713462709145719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000006 (A099216 n + A028242 n).toNat

end

end A299027.P15083713462709145719

/-! ## A299027.P18301741630400234252

`A265370(A003018(n+1)+A000045(2*(n+1)))`
-/

namespace A299027.P18301741630400234252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265370 (A003018 (n + 1) + A000045 (2 * (n + 1))).toNat

end

end A299027.P18301741630400234252

/-! ## A299027.P15288610364284814443

`Δ[(n-1)*A156070(∑[n+2]-2)]`
-/

namespace A299027.P15288610364284814443
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * A156070 (∑ j ∈ Finset.range (n + 1), f2 j - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A299027.P15288610364284814443

/-! ## A299027.P14939801537422472192

`A094588(A151938(n)+n)`
-/

namespace A299027.P14939801537422472192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094588 (A151938 n + (n : ℤ)).toNat

end

end A299027.P14939801537422472192

/-! ## A299027.P17587799334982114318

`∏{e}[A000351(n), A094588(#)]`
-/

namespace A299027.P17587799334982114318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000351 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A094588 (Nat.factorization (f1 n).natAbs p)

end

end A299027.P17587799334982114318

/-!
# A299028: Number of vertices in the iterated clique graphs of the 1-skeleton of Plato's icosahedron.

The programs for A299028, there is no canonical definition to state claims against.
-/

/-! ## A299028.P13956914032996085061

`or(3, A155432(n+6))+1`
-/

namespace A299028.P13956914032996085061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 3 (A155432 (n + 6)) + 1

end

end A299028.P13956914032996085061

/-!
# A299029: Triangle read by rows: Independent domination number for rectangular queens graph Q(n,m), 1 <= n <= m.

The programs for A299029, there is no canonical definition to state claims against.
-/

/-! ## A299029.P11470758898801846038

`A001221(A233862(n+1)-A353449(n+3))`
-/

namespace A299029.P11470758898801846038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A233862 (n + 1) - A353449 (n + 3)).toNat

end

end A299029.P11470758898801846038

/-!
# A299030: 

The programs for A299030, there is no canonical definition to state claims against.
-/

/-! ## A299030.P17512158958830068997

`sqrt(2)^a(n-1)` with `a(0)=6`
-/

namespace A299030.P17512158958830068997
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [6] fun n a =>
  Real.sqrt (2 : ℝ) ^ (a (n - 1))

end

end A299030.P17512158958830068997

/-!
# A299031: Number of ordered ways of writing n-th triangular number as a sum of n squares of nonnegative integers.

The programs for A299031, there is no canonical definition to state claims against.
-/

/-! ## A299031.P13082555330506245080

`A045847(∑[∑[A045943(n)]+n])`
-/

namespace A299031.P13082555330506245080
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045943 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045847 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A299031.P13082555330506245080

/-! ## A299031.P6356938840222990785

`A045847(∑[n*A000124(n+1)])`
-/

namespace A299031.P6356938840222990785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000124 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045847 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A299031.P6356938840222990785

/-! ## A299031.P18185314821060176792

`A122203(A035401(n+1))*A273873(n+1)`
-/

namespace A299031.P18185314821060176792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122203 (A035401 (n + 1)).toNat * A273873 (n + 1)

end

end A299031.P18185314821060176792

/-!
# A299032: Number of ordered ways of writing n-th triangular number as a sum of n squares of positive integers.

The programs for A299032, there is no canonical definition to state claims against.
-/

/-! ## A299032.P9797461764985352751

`A337165(A002817(n)+n)`
-/

namespace A299032.P9797461764985352751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337165 (A002817 n + (n : ℤ)).toNat

end

end A299032.P9797461764985352751

/-! ## A299032.P10122605254468420709

`A337165(A000217(∑[n])+n)`
-/

namespace A299032.P10122605254468420709
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337165 (A000217 (∑ j ∈ Finset.range (n + 1), f1 j) + (n : ℤ)).toNat

end

end A299032.P10122605254468420709

/-! ## A299032.P9015373589363660958

`A337165(A004255(n+1)-1)`
-/

namespace A299032.P9015373589363660958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337165 (A004255 (n + 1) - 1).toNat

end

end A299032.P9015373589363660958

/-! ## A299032.P9512535040345789718

`A337165(A133252(n)-A064999(n))`
-/

namespace A299032.P9512535040345789718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337165 (A133252 n - A064999 n).toNat

end

end A299032.P9512535040345789718

/-! ## A299032.P17507972063320992042

`A337165(A260196(n)+A004255(n+1))`
-/

namespace A299032.P17507972063320992042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337165 (A260196 n + A004255 (n + 1)).toNat

end

end A299032.P17507972063320992042

/-!
# A299033: a(n) = n! * [x^n] Product_{k>=1} (1 - x^k)^(n/k).

The programs for A299033, there is no canonical definition to state claims against.
-/

/-! ## A299033.P2569532921644759312

`A066325(A134486(n)+A108798(n))`
-/

namespace A299033.P2569532921644759312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066325 (A134486 n + A108798 n).toNat

end

end A299033.P2569532921644759312

/-!
# A299034: a(n) = n! * [x^n] Product_{k>=1} 1/(1 - x^k)^(n/k).

The programs for A299034, there is no canonical definition to state claims against.
-/

/-! ## A299034.P2587436353903692257

`A060677(A001674(n))`
-/

namespace A299034.P2587436353903692257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060677 (A001674 n).toNat

end

end A299034.P2587436353903692257

/-!
# A299037: a(n) is the number of rooted binary trees with minimal Sackin index and n leaves.

The programs for A299037, there is no canonical definition to state claims against.
-/

/-! ## A299037.P10839784837823537801

`abs(Δ[A299767(abs(1-n)+1)])`
-/

namespace A299037.P10839784837823537801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299767 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A299037.P10839784837823537801

/-! ## A299037.P17304099790257572170

`Δ[A299767(A028310(n))]+C(2, n+2)`
-/

namespace A299037.P17304099790257572170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299767 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (Nat.choose 2 (n + 2) : ℤ)

end

end A299037.P17304099790257572170

/-! ## A299037.P8120399091828060684

`A000007(n)+Δ[A299767(A028310(n))]`
-/

namespace A299037.P8120399091828060684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299767 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (f1 (n + 1) - f1 n)

end

end A299037.P8120399091828060684

/-! ## A299037.P5795789954887052749

`Δ[A299767(A028310(n))+A057427(n)]`
-/

namespace A299037.P5795789954887052749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299767 (A028310 n).toNat + A057427 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A299037.P5795789954887052749

/-! ## A299037.P10044508538318157119

`Δ[A299767(A028310(n))-A054977(n)]`
-/

namespace A299037.P10044508538318157119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299767 (A028310 n).toNat - A054977 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A299037.P10044508538318157119

/-! ## A299037.P4665990491170767972

`Δ[A299767(A028310(n))-A057428(n)]`
-/

namespace A299037.P4665990491170767972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299767 (A028310 n).toNat - A057428 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A299037.P4665990491170767972

/-! ## A299037.P6692416691560706268

`Δ[A299767(A028310(n))+A019427(2*n)]`
-/

namespace A299037.P6692416691560706268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299767 (A028310 n).toNat + A019427 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A299037.P6692416691560706268

/-! ## A299037.P15495476347252792283

`Δ[A299767(A028310(n))]^(1-A023533(n²))`
-/

namespace A299037.P15495476347252792283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299767 (A028310 n).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) ^ (1 - A023533 (n ^ 2) : ℤ)

end

end A299037.P15495476347252792283

/-! ## A299037.P14233206965170753830

`Δ[A299767(A028310(n))]-A000040(2*n+1)%2+1`
-/

namespace A299037.P14233206965170753830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299767 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - Int.tmod (A000040 (2 * n + 1)) 2 + 1

end

end A299037.P14233206965170753830

/-!
# A299038: Number A(n,k) of rooted trees with n nodes where each node has at most k children; square array A(n,k), n>=0, k>=0, read by antidiagonals.

The programs for A299038, there is no canonical definition to state claims against.
-/

/-! ## A299038.P12564663115709449250

`A007895(A273693(n)^4)`
-/

namespace A299038.P12564663115709449250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007895 (A273693 n ^ 4).toNat

end

end A299038.P12564663115709449250

/-! ## A299038.P15564210698129965454

`A007895(A273693(n)²²)`
-/

namespace A299038.P15564210698129965454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007895 ((A273693 n ^ 2) ^ 2).toNat

end

end A299038.P15564210698129965454

/-! ## A299038.P10026355099463569295

`A273665(A273693(n)%p?[A014418(n)])`
-/

namespace A299038.P10026355099463569295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014418 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273665 (Int.tmod (A273693 n) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))).toNat

end

end A299038.P10026355099463569295

/-! ## A299038.P5384648332342781907

`A273665(A273693(n))%A273691(n+2)`
-/

namespace A299038.P5384648332342781907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A273665 (A273693 n).toNat) (A273691 (n + 2))

end

end A299038.P5384648332342781907

/-! ## A299038.P8499421354350411200

`and(A038013(n), A273693(n))`
-/

namespace A299038.P8499421354350411200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A038013 n) (A273693 n)

end

end A299038.P8499421354350411200

/-!
# A299039: Number of rooted trees with 2n nodes where each node has at most n children.

The programs for A299039, there is no canonical definition to state claims against.
-/

/-! ## A299039.P10797977355061570105

`A299038(A062728(n))`
-/

namespace A299039.P10797977355061570105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299038 (A062728 n).toNat

end

end A299039.P10797977355061570105

/-! ## A299039.P8270520950116661875

`A299038(A062725(n)+n)`
-/

namespace A299039.P8270520950116661875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299038 (A062725 n + (n : ℤ)).toNat

end

end A299039.P8270520950116661875

/-! ## A299039.P13114665962955692130

`A299038(A000217(3*n)+floor(2/acot(n)))`
-/

namespace A299039.P13114665962955692130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299038 (A000217 (3 * n) + ⌊2 / SequenceMachineLib.acot (n : ℝ)⌋).toNat

end

end A299039.P13114665962955692130

/-! ## A299039.P10642251040133739934

`A299038(A002943(n)+A000096(n))`
-/

namespace A299039.P10642251040133739934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299038 (A002943 n + A000096 n).toNat

end

end A299039.P10642251040133739934

/-! ## A299039.P8844366177735427154

`A299038(A033954(n)+A000217(n))`
-/

namespace A299039.P8844366177735427154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299038 (A033954 n + A000217 n).toNat

end

end A299039.P8844366177735427154

/-!
# A299042: G.f.: Sum_{n>=0} x^(n^2) * C(x^n)^n, where C(x) = 1 + x*C(x)^2 is the g.f. of the Catalan numbers (A000108).

The programs for A299042, there is no canonical definition to state claims against.
-/

/-! ## A299042.P18434605005305736956

`A256502(A007123(n+1)-A007122(n+1))`
-/

namespace A299042.P18434605005305736956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256502 (A007123 (n + 1) - A007122 (n + 1)).toNat

end

end A299042.P18434605005305736956

/-! ## A299042.P8284719844968351344

`A120588(A004881(n+1))+A000719(A025480(n))`
-/

namespace A299042.P8284719844968351344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120588 (A004881 (n + 1)).toNat + A000719 (A025480 n).toNat

end

end A299042.P8284719844968351344

/-! ## A299042.P10106511987912593774

`A120588(A029965(n+1))+A000719(A025480(n))`
-/

namespace A299042.P10106511987912593774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120588 (A029965 (n + 1)).toNat + A000719 (A025480 n).toNat

end

end A299042.P10106511987912593774

/-! ## A299042.P10554584298364866467

`A239621(abs(1-n)!*floor(n/2)+1)`
-/

namespace A299042.P10554584298364866467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239621 ((Nat.factorial |1 - (n : ℤ)|.toNat : ℤ) * ⌊(n : ℚ) / 2⌋ + 1).toNat

end

end A299042.P10554584298364866467

/-!
# A299043: G.f. Sum_{n>=0} Series_Reversion( x*(1-x)^n )^n.

The programs for A299043, there is no canonical definition to state claims against.
-/

/-! ## A299043.P17969059936126240759

`A057386(n)+A004183(A104981(n))`
-/

namespace A299043.P17969059936126240759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057386 n + A004183 (A104981 n).toNat

end

end A299043.P17969059936126240759

/-! ## A299043.P7515462361330021097

`A053166(A104981(n)+A057386(n))`
-/

namespace A299043.P7515462361330021097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053166 (A104981 n + A057386 n).toNat

end

end A299043.P7515462361330021097

/-! ## A299043.P11074326666284116470

`A106618(A104981(n)+A057386(n))`
-/

namespace A299043.P11074326666284116470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106618 (A104981 n + A057386 n).toNat

end

end A299043.P11074326666284116470

/-!
# A299044: G.f. Sum_{n>=0} Series_Reversion( x/(1+x)^n )^n.

The programs for A299044, there is no canonical definition to state claims against.
-/

/-! ## A299044.P9293595195212379895

`A289122(xor(6, A173316(n)))`
-/

namespace A299044.P9293595195212379895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289122 (Int.xor 6 (A173316 n)).toNat

end

end A299044.P9293595195212379895

/-! ## A299044.P11814018550463050998

`n!+A209899(A055775(n))²`
-/

namespace A299044.P11814018550463050998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) + A209899 (A055775 n).toNat ^ 2

end

end A299044.P11814018550463050998

/-!
# A299046: Number of n X n 0..1 arrays with every element equal to 0, 1, 3, 4, 5 or 6 king-move adjacent elements, with upper left element zero.

The programs for A299046, there is no canonical definition to state claims against.
-/

/-! ## A299046.P5657464696970453205

`A299052(∑[4*n]+1)`
-/

namespace A299046.P5657464696970453205
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299052 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A299046.P5657464696970453205

/-! ## A299046.P4724704077726911840

`record[A299052(Δ[A235355(n)])]`
-/

namespace A299046.P4724704077726911840
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299052 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A299046.P4724704077726911840

/-! ## A299046.P1324119201935695259

`and(-1, A299052(A001844(n)))`
-/

namespace A299046.P1324119201935695259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A299052 (A001844 n).toNat)

end

end A299046.P1324119201935695259

/-! ## A299046.P18431912599911115308

`record[A299052(A330613(n+1))]`
-/

namespace A299046.P18431912599911115308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299052 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A299046.P18431912599911115308

/-! ## A299046.P14432227925274330674

`record[A003982(n)*A299052(n+1)]`
-/

namespace A299046.P14432227925274330674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A299052 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A299046.P14432227925274330674

/-!
# A299047: Number of n X 3 0..1 arrays with every element equal to 0, 1, 3, 4, 5 or 6 king-move adjacent elements, with upper left element zero.

The programs for A299047, there is no canonical definition to state claims against.
-/

/-! ## A299047.P5134088052019435939

`A299052(∑[n+2]+4)`
-/

namespace A299047.P5134088052019435939
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299052 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A299047.P5134088052019435939

/-! ## A299047.P13037338519903553904

`and(-1, A299052(A167614(n+1)))`
-/

namespace A299047.P13037338519903553904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A299052 (A167614 (n + 1)).toNat)

end

end A299047.P13037338519903553904

/-! ## A299047.P4115526937790903648

`A299052(A167614(n+1))+A025439(n)`
-/

namespace A299047.P4115526937790903648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299052 (A167614 (n + 1)).toNat + A025439 n

end

end A299047.P4115526937790903648

/-! ## A299047.P1685121428353877903

`A299052(A167614(n+1))+A025469(n)`
-/

namespace A299047.P1685121428353877903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299052 (A167614 (n + 1)).toNat + A025469 n

end

end A299047.P1685121428353877903

/-! ## A299047.P8941239131602052162

`A299052(A167614(n+1))/A000034(2*n)`
-/

namespace A299047.P8941239131602052162
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A299052 (A167614 (n + 1)).toNat : ℚ) / (A000034 (2 * n) : ℚ)

end

end A299047.P8941239131602052162

/-!
# A299048: Number of nX4 0..1 arrays with every element equal to 0, 1, 3, 4, 5 or 6 king-move adjacent elements, with upper left element zero.

The programs for A299048, there is no canonical definition to state claims against.
-/

/-! ## A299048.P1105068762392353250

`A299052(A374004(n+1))`
-/

namespace A299048.P1105068762392353250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299052 (A374004 (n + 1)).toNat

end

end A299048.P1105068762392353250

/-! ## A299048.P4732628846656787522

`A299052(A141214(n)+7)`
-/

namespace A299048.P4732628846656787522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299052 (A141214 n + 7).toNat

end

end A299048.P4732628846656787522

/-! ## A299048.P8120980558378744436

`A299052(A052905(n)+9)`
-/

namespace A299048.P8120980558378744436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299052 (A052905 n + 9).toNat

end

end A299048.P8120980558378744436

/-! ## A299048.P13032353221802663144

`A299052(A055999(n)+10)`
-/

namespace A299048.P13032353221802663144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299052 (A055999 n + 10).toNat

end

end A299048.P13032353221802663144

/-! ## A299048.P4389929213356401069

`A299052(A167614(n+2)+1)`
-/

namespace A299048.P4389929213356401069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299052 (A167614 (n + 2) + 1).toNat

end

end A299048.P4389929213356401069

/-!
# A299049: Number of nX5 0..1 arrays with every element equal to 0, 1, 3, 4, 5 or 6 king-move adjacent elements, with upper left element zero.

The programs for A299049, there is no canonical definition to state claims against.
-/

/-! ## A299049.P806073117336425397

`A299052(A374005(n+1))`
-/

namespace A299049.P806073117336425397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299052 (A374005 (n + 1)).toNat

end

end A299049.P806073117336425397

/-! ## A299049.P4025215149090189131

`A299052(A167499(n+3))`
-/

namespace A299049.P4025215149090189131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299052 (A167499 (n + 3)).toNat

end

end A299049.P4025215149090189131

/-! ## A299049.P17766300062403637205

`A299052(A155212(n)+13)`
-/

namespace A299049.P17766300062403637205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299052 (A155212 n + 13).toNat

end

end A299049.P17766300062403637205

/-! ## A299049.P2722007019892346725

`A299052(A056000(n)+15)`
-/

namespace A299049.P2722007019892346725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299052 (A056000 n + 15).toNat

end

end A299049.P2722007019892346725

/-! ## A299049.P13352906131894477900

`A299052(eq[6, A131818(n+1)])`
-/

namespace A299049.P13352906131894477900
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299052 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A299049.P13352906131894477900

/-!
# A299050: Number of nX6 0..1 arrays with every element equal to 0, 1, 3, 4, 5 or 6 king-move adjacent elements, with upper left element zero.

The programs for A299050, there is no canonical definition to state claims against.
-/

/-! ## A299050.P2920596634005728116

`A299052(A374007(n+1))`
-/

namespace A299050.P2920596634005728116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299052 (A374007 (n + 1)).toNat

end

end A299050.P2920596634005728116

/-! ## A299050.P17577404916843065775

`A299052(A056115(n)+21)`
-/

namespace A299050.P17577404916843065775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299052 (A056115 n + 21).toNat

end

end A299050.P17577404916843065775

/-! ## A299050.P2093966585959400830

`A299052(eq[7, A131818(n+1)])`
-/

namespace A299050.P2093966585959400830
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299052 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A299050.P2093966585959400830

/-! ## A299050.P3313688654219942033

`A299052(A052905(n+3))`
-/

namespace A299050.P3313688654219942033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299052 (A052905 (n + 3)).toNat

end

end A299050.P3313688654219942033

/-! ## A299050.P1761899091229459366

`A299052(A056119(n)+16)`
-/

namespace A299050.P1761899091229459366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299052 (A056119 n + 16).toNat

end

end A299050.P1761899091229459366

/-!
# A299051: Number of nX7 0..1 arrays with every element equal to 0, 1, 3, 4, 5 or 6 king-move adjacent elements, with upper left element zero.

The programs for A299051, there is no canonical definition to state claims against.
-/

/-! ## A299051.P9007819883942258388

`A299052(A374008(n+1))`
-/

namespace A299051.P9007819883942258388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299052 (A374008 (n + 1)).toNat

end

end A299051.P9007819883942258388

/-! ## A299051.P2966961649013503586

`A299052(eq[8, A131818(n+1)])`
-/

namespace A299051.P2966961649013503586
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299052 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A299051.P2966961649013503586

/-! ## A299051.P6921281737618310898

`A299052(A055999(n+4))`
-/

namespace A299051.P6921281737618310898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299052 (A055999 (n + 4)).toNat

end

end A299051.P6921281737618310898

/-! ## A299051.P11728895946415771530

`A299052(eq[6, A193592(n)])`
-/

namespace A299051.P11728895946415771530
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299052 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A299051.P11728895946415771530

/-! ## A299051.P7788962144650093914

`A299052(eq[7, A200370(n+1)])`
-/

namespace A299051.P7788962144650093914
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299052 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A299051.P7788962144650093914

/-!
# A299052: T(n,k)=Number of nXk 0..1 arrays with every element equal to 0, 1, 3, 4, 5 or 6 king-move adjacent elements, with upper left element zero.

The programs for A299052, there is no canonical definition to state claims against.
-/

/-! ## A299052.P12190290855475625182

`A299814(n+1)-A069283(A301443(n+1))`
-/

namespace A299052.P12190290855475625182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299814 (n + 1) - A069283 (A301443 (n + 1)).toNat

end

end A299052.P12190290855475625182

/-! ## A299052.P17413374603740102810

`A299814(n+1)-A082858(A334709(n+1))`
-/

namespace A299052.P17413374603740102810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299814 (n + 1) - A082858 (A334709 (n + 1)).toNat

end

end A299052.P17413374603740102810

/-! ## A299052.P16079165181680988531

`A299814(n+1)-A001221(A273712(n)!)`
-/

namespace A299052.P16079165181680988531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299814 (n + 1) - A001221 (Nat.factorial (A273712 n).toNat)

end

end A299052.P16079165181680988531

/-! ## A299052.P17533844203878712877

`A299814(n+1)-A061395(A273712(n)!)`
-/

namespace A299052.P17533844203878712877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299814 (n + 1) - A061395 (Nat.factorial (A273712 n).toNat)

end

end A299052.P17533844203878712877

/-! ## A299052.P9265811433661579735

`A299886(n+1)+A016389(A086645(n))`
-/

namespace A299052.P9265811433661579735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299886 (n + 1) + A016389 (A086645 n).toNat

end

end A299052.P9265811433661579735

/-!
# A299053: Minimum value of the cyclic autocorrelation of first n primes.

The programs for A299053, there is no canonical definition to state claims against.
-/

/-! ## A299053.P1397880828223849534

`A210528(2*A057222(n+2))`
-/

namespace A299053.P1397880828223849534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210528 (2 * A057222 (n + 2)).toNat

end

end A299053.P1397880828223849534

/-!
# A299054: Number of n X n 0..1 arrays with every element equal to 0, 2, 3, 4, 5 or 6 king-move adjacent elements, with upper left element zero.

The programs for A299054, there is no canonical definition to state claims against.
-/

/-! ## A299054.P13401524932237073218

`A299060(∑[4*n]+1)`
-/

namespace A299054.P13401524932237073218
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299060 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A299054.P13401524932237073218

/-! ## A299054.P8116258507653502506

`record[gcd(A166040(n), A299060(n+1))]`
-/

namespace A299054.P8116258507653502506
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A166040 n) (A299060 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A299054.P8116258507653502506

/-! ## A299054.P1681964005027551062

`record[lcm(A185917(n+1), A299060(n+1))]`
-/

namespace A299054.P1681964005027551062
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A185917 (n + 1)) (A299060 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A299054.P1681964005027551062

/-! ## A299054.P16121116860855567111

`A299060(A001844(n))+A011732(n)`
-/

namespace A299054.P16121116860855567111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299060 (A001844 n).toNat + A011732 n

end

end A299054.P16121116860855567111

/-! ## A299054.P5741974699006620179

`A007318(A007318(n))*A299060(A001844(n))`
-/

namespace A299054.P5741974699006620179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A007318 n).toNat * A299060 (A001844 n).toNat

end

end A299054.P5741974699006620179

/-!
# A299055: Number of nX3 0..1 arrays with every element equal to 0, 2, 3, 4, 5 or 6 king-move adjacent elements, with upper left element zero.

The programs for A299055, there is no canonical definition to state claims against.
-/

/-! ## A299055.P17022057372765553175

`A299060(∑[n+2]+4)`
-/

namespace A299055.P17022057372765553175
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299060 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A299055.P17022057372765553175

/-! ## A299055.P2965814918698613068

`or(C(n, n²), A299060(A167614(n+1)))`
-/

namespace A299055.P2965814918698613068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (Nat.choose n (n ^ 2) : ℤ) (A299060 (A167614 (n + 1)).toNat)

end

end A299055.P2965814918698613068

/-! ## A299055.P4585204491798904072

`A299060(A167614(n+1))+A011738(n)`
-/

namespace A299055.P4585204491798904072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299060 (A167614 (n + 1)).toNat + A011738 n

end

end A299055.P4585204491798904072

/-! ## A299055.P5622335254829252602

`A326292(n)+A299060(A167614(n+1))`
-/

namespace A299055.P5622335254829252602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326292 n + A299060 (A167614 (n + 1)).toNat

end

end A299055.P5622335254829252602

/-! ## A299055.P3678039935360633204

`A299060(A167614(n+1))%A198857(n)`
-/

namespace A299055.P3678039935360633204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A299060 (A167614 (n + 1)).toNat) (A198857 n)

end

end A299055.P3678039935360633204

/-!
# A299056: Number of nX4 0..1 arrays with every element equal to 0, 2, 3, 4, 5 or 6 king-move adjacent elements, with upper left element zero.

The programs for A299056, there is no canonical definition to state claims against.
-/

/-! ## A299056.P15604237443623943027

`A299060(A374004(n+1))`
-/

namespace A299056.P15604237443623943027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299060 (A374004 (n + 1)).toNat

end

end A299056.P15604237443623943027

/-! ## A299056.P8721011226566045470

`A299060(A141214(n)+7)`
-/

namespace A299056.P8721011226566045470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299060 (A141214 n + 7).toNat

end

end A299056.P8721011226566045470

/-! ## A299056.P3100083505488769583

`A299060(A052905(n)+9)`
-/

namespace A299056.P3100083505488769583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299060 (A052905 n + 9).toNat

end

end A299056.P3100083505488769583

/-! ## A299056.P13886356477276685202

`A299060(A055999(n)+10)`
-/

namespace A299056.P13886356477276685202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299060 (A055999 n + 10).toNat

end

end A299056.P13886356477276685202

/-! ## A299056.P5135196486454418161

`A299060(A167614(n+2)+1)`
-/

namespace A299056.P5135196486454418161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299060 (A167614 (n + 2) + 1).toNat

end

end A299056.P5135196486454418161

/-!
# A299057: Number of nX5 0..1 arrays with every element equal to 0, 2, 3, 4, 5 or 6 king-move adjacent elements, with upper left element zero.

The programs for A299057, there is no canonical definition to state claims against.
-/

/-! ## A299057.P10745117610079272535

`A299060(A374005(n+1))`
-/

namespace A299057.P10745117610079272535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299060 (A374005 (n + 1)).toNat

end

end A299057.P10745117610079272535

/-! ## A299057.P12318252481973688176

`A299060(A167499(n+3))`
-/

namespace A299057.P12318252481973688176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299060 (A167499 (n + 3)).toNat

end

end A299057.P12318252481973688176

/-! ## A299057.P15155407465463049064

`A299060(A155212(n)+13)`
-/

namespace A299057.P15155407465463049064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299060 (A155212 n + 13).toNat

end

end A299057.P15155407465463049064

/-! ## A299057.P5175282909043215488

`A299060(A056000(n)+15)`
-/

namespace A299057.P5175282909043215488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299060 (A056000 n + 15).toNat

end

end A299057.P5175282909043215488

/-! ## A299057.P17838894609113046883

`A299060(eq[7, A066657(n)])`
-/

namespace A299057.P17838894609113046883
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299060 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A299057.P17838894609113046883

/-!
# A299058: Number of nX6 0..1 arrays with every element equal to 0, 2, 3, 4, 5 or 6 king-move adjacent elements, with upper left element zero.

The programs for A299058, there is no canonical definition to state claims against.
-/

/-! ## A299058.P12289805959922389592

`A299060(A374007(n+1))`
-/

namespace A299058.P12289805959922389592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299060 (A374007 (n + 1)).toNat

end

end A299058.P12289805959922389592

/-! ## A299058.P3922162620690628478

`A299060(A167499(n+4)+1)`
-/

namespace A299058.P3922162620690628478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299060 (A167499 (n + 4) + 1).toNat

end

end A299058.P3922162620690628478

/-! ## A299058.P17015257979075543683

`A299060(A167487(n+4)-1)`
-/

namespace A299058.P17015257979075543683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299060 (A167487 (n + 4) - 1).toNat

end

end A299058.P17015257979075543683

/-! ## A299058.P6239349255938512620

`A299060(A000217(n+5)+6)`
-/

namespace A299058.P6239349255938512620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299060 (A000217 (n + 5) + 6).toNat

end

end A299058.P6239349255938512620

/-! ## A299058.P15206929238953584677

`A299060(eq[6, A130270(n+1)])`
-/

namespace A299058.P15206929238953584677
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130270 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299060 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A299058.P15206929238953584677

/-!
# A299059: Number of n X 7 0..1 arrays with every element equal to 0, 2, 3, 4, 5 or 6 king-move adjacent elements, with upper left element zero.

The programs for A299059, there is no canonical definition to state claims against.
-/

/-! ## A299059.P17027438755164503939

`A299060(A374008(n+1))`
-/

namespace A299059.P17027438755164503939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299060 (A374008 (n + 1)).toNat

end

end A299059.P17027438755164503939

/-! ## A299059.P963837296264110528

`A299060(eq[11, A066657(n)])`
-/

namespace A299059.P963837296264110528
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299060 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A299059.P963837296264110528

/-! ## A299059.P8757981594545154049

`A299060(A000217(n+6)+7)`
-/

namespace A299059.P8757981594545154049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299060 (A000217 (n + 6) + 7).toNat

end

end A299059.P8757981594545154049

/-! ## A299059.P6422155392340335135

`A299060(A055999(n+3)+13)`
-/

namespace A299059.P6422155392340335135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299060 (A055999 (n + 3) + 13).toNat

end

end A299059.P6422155392340335135

/-! ## A299059.P10576372026424759481

`A299060(eq[8, A131818(n+1)])`
-/

namespace A299059.P10576372026424759481
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299060 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A299059.P10576372026424759481

/-!
# A299060: T(n,k)=Number of nXk 0..1 arrays with every element equal to 0, 2, 3, 4, 5 or 6 king-move adjacent elements, with upper left element zero.

The programs for A299060, there is no canonical definition to state claims against.
-/

/-! ## A299060.P15009112651905794282

`A299821(n+1)-A081603(A022167(n))`
-/

namespace A299060.P15009112651905794282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299821 (n + 1) - A081603 (A022167 n).toNat

end

end A299060.P15009112651905794282

/-! ## A299060.P13413470465025746111

`A299821(n+1)+A016389(A022166(n))`
-/

namespace A299060.P13413470465025746111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299821 (n + 1) + A016389 (A022166 n).toNat

end

end A299060.P13413470465025746111

/-! ## A299060.P8319598231422565494

`A299821(n+1)+A016389(A176561(n))`
-/

namespace A299060.P8319598231422565494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299821 (n + 1) + A016389 (A176561 n).toNat

end

end A299060.P8319598231422565494

/-! ## A299060.P6270048925233128512

`A299821(n+1)-A014707(A022171(n))`
-/

namespace A299060.P6270048925233128512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299821 (n + 1) - A014707 (A022171 n).toNat

end

end A299060.P6270048925233128512

/-! ## A299060.P10211081888540163487

`A299821(n+1)-A025465(A022345(n))`
-/

namespace A299060.P10211081888540163487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299821 (n + 1) - A025465 (A022345 n).toNat

end

end A299060.P10211081888540163487

/-!
# A299061: Number of n X n 0..1 arrays with every element equal to 1, 2, 3, 4, 5 or 6 king-move adjacent elements, with upper left element zero.

The programs for A299061, there is no canonical definition to state claims against.
-/

/-! ## A299061.P8176388544789585950

`A299067(∑[4*n]+1)`
-/

namespace A299061.P8176388544789585950
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299067 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A299061.P8176388544789585950

/-! ## A299061.P13564056273207978296

`A299067(A001844(n))+A026831(n)`
-/

namespace A299061.P13564056273207978296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299067 (A001844 n).toNat + A026831 n

end

end A299061.P13564056273207978296

/-! ## A299061.P14623890275040391246

`A299067(A001844(n))+A035930(n)`
-/

namespace A299061.P14623890275040391246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299067 (A001844 n).toNat + A035930 n

end

end A299061.P14623890275040391246

/-! ## A299061.P16870173764275412896

`A299067(A001844(n))%A022507(n)`
-/

namespace A299061.P16870173764275412896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A299067 (A001844 n).toNat) (A022507 n)

end

end A299061.P16870173764275412896

/-! ## A299061.P13942865952146629002

`lcm(A124772(n), A299067(A001844(n)))`
-/

namespace A299061.P13942865952146629002
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A124772 n) (A299067 (A001844 n).toNat)

end

end A299061.P13942865952146629002

/-!
# A299062: Number of nX3 0..1 arrays with every element equal to 1, 2, 3, 4, 5 or 6 king-move adjacent elements, with upper left element zero.

The programs for A299062, there is no canonical definition to state claims against.
-/

/-! ## A299062.P4650975161767453044

`A299067(∑[n+2]+4)`
-/

namespace A299062.P4650975161767453044
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299067 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A299062.P4650975161767453044

/-! ## A299062.P2296552056250870420

`A299067(A167614(n+1))+A185284(n)`
-/

namespace A299062.P2296552056250870420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299067 (A167614 (n + 1)).toNat + A185284 n

end

end A299062.P2296552056250870420

/-! ## A299062.P15741279722306449269

`lcm(A033999(n), A299067(A167614(n+1)))`
-/

namespace A299062.P15741279722306449269
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A299067 (A167614 (n + 1)).toNat)

end

end A299062.P15741279722306449269

/-! ## A299062.P10173486268012776359

`or(A055641(n), A299067(A167614(n+1)))`
-/

namespace A299062.P10173486268012776359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A055641 n) (A299067 (A167614 (n + 1)).toNat)

end

end A299062.P10173486268012776359

/-! ## A299062.P10793351081378340099

`A249770(n+2)*A299067(A167614(n+1))`
-/

namespace A299062.P10793351081378340099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249770 (n + 2) * A299067 (A167614 (n + 1)).toNat

end

end A299062.P10793351081378340099

/-!
# A299063: Number of nX4 0..1 arrays with every element equal to 1, 2, 3, 4, 5 or 6 king-move adjacent elements, with upper left element zero.

The programs for A299063, there is no canonical definition to state claims against.
-/

/-! ## A299063.P5793294142151435265

`A299067(A052905(n)+9)`
-/

namespace A299063.P5793294142151435265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299067 (A052905 n + 9).toNat

end

end A299063.P5793294142151435265

/-! ## A299063.P13105327517631132303

`A299067(A055999(n)+10)`
-/

namespace A299063.P13105327517631132303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299067 (A055999 n + 10).toNat

end

end A299063.P13105327517631132303

/-! ## A299063.P1969182148582153135

`A299067(A167614(n+2)+1)`
-/

namespace A299063.P1969182148582153135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299067 (A167614 (n + 2) + 1).toNat

end

end A299063.P1969182148582153135

/-! ## A299063.P2154261701776590399

`A299067(A141214(n+1))`
-/

namespace A299063.P2154261701776590399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299067 (A141214 (n + 1)).toNat

end

end A299063.P2154261701776590399

/-! ## A299063.P8447148581366303654

`A299067(A374004(n+1))`
-/

namespace A299063.P8447148581366303654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299067 (A374004 (n + 1)).toNat

end

end A299063.P8447148581366303654

/-!
# A299064: Number of nX5 0..1 arrays with every element equal to 1, 2, 3, 4, 5 or 6 king-move adjacent elements, with upper left element zero.

The programs for A299064, there is no canonical definition to state claims against.
-/

/-! ## A299064.P8657649049523404397

`A299067(A167499(n+3))`
-/

namespace A299064.P8657649049523404397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299067 (A167499 (n + 3)).toNat

end

end A299064.P8657649049523404397

/-! ## A299064.P5504634324549166320

`A299067(A155212(n)+13)`
-/

namespace A299064.P5504634324549166320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299067 (A155212 n + 13).toNat

end

end A299064.P5504634324549166320

/-! ## A299064.P7112479906647612948

`A299067(A000124(n+4)+4)`
-/

namespace A299064.P7112479906647612948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299067 (A000124 (n + 4) + 4).toNat

end

end A299064.P7112479906647612948

/-! ## A299064.P3863420164528360593

`A299067(eq[6, A131818(n+1)])`
-/

namespace A299064.P3863420164528360593
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299067 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A299064.P3863420164528360593

/-! ## A299064.P2070253162539761456

`A299067(∑[n+5]+6)`
-/

namespace A299064.P2070253162539761456
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299067 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A299064.P2070253162539761456

/-!
# A299065: Number of nX6 0..1 arrays with every element equal to 1, 2, 3, 4, 5 or 6 king-move adjacent elements, with upper left element zero.

The programs for A299065, there is no canonical definition to state claims against.
-/

/-! ## A299065.P12666272167645375735

`A299067(eq[7, A131818(n+1)])`
-/

namespace A299065.P12666272167645375735
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299067 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A299065.P12666272167645375735

/-! ## A299065.P13484684576243504602

`A299067(A374007(n+1))`
-/

namespace A299065.P13484684576243504602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299067 (A374007 (n + 1)).toNat

end

end A299065.P13484684576243504602

/-! ## A299065.P676671769954618078

`A299067(A052905(n+3))`
-/

namespace A299065.P676671769954618078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299067 (A052905 (n + 3)).toNat

end

end A299065.P676671769954618078

/-! ## A299065.P3659494021131980322

`A299067(eq[3, A219347(n)])`
-/

namespace A299065.P3659494021131980322
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299067 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A299065.P3659494021131980322

/-! ## A299065.P10296148245389009607

`A299067(eq[5, A193592(n)])`
-/

namespace A299065.P10296148245389009607
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299067 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A299065.P10296148245389009607

/-!
# A299066: Number of nX7 0..1 arrays with every element equal to 1, 2, 3, 4, 5 or 6 king-move adjacent elements, with upper left element zero.

The programs for A299066, there is no canonical definition to state claims against.
-/

/-! ## A299066.P8142797243914951861

`A299067(eq[8, A131818(n+1)])`
-/

namespace A299066.P8142797243914951861
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299067 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A299066.P8142797243914951861

/-! ## A299066.P7251901802268135813

`A299067(A374008(n+1))`
-/

namespace A299066.P7251901802268135813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299067 (A374008 (n + 1)).toNat

end

end A299066.P7251901802268135813

/-! ## A299066.P16116685447396453693

`A299067(A055999(n+4))`
-/

namespace A299066.P16116685447396453693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299067 (A055999 (n + 4)).toNat

end

end A299066.P16116685447396453693

/-! ## A299066.P8500846186061269510

`A299067(eq[4, A219347(n)])`
-/

namespace A299066.P8500846186061269510
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299067 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A299066.P8500846186061269510

/-! ## A299066.P1826376136508937658

`A299067(eq[6, A193592(n)])`
-/

namespace A299066.P1826376136508937658
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299067 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A299066.P1826376136508937658

/-!
# A299067: T(n,k) = Number of n X k 0..1 arrays with every element equal to 1, 2, 3, 4, 5 or 6 king-move adjacent elements, with upper left element zero.

The programs for A299067, there is no canonical definition to state claims against.
-/

/-! ## A299067.P12547539549977693031

`A299728(n+1)%(2^n^20)`
-/

namespace A299067.P12547539549977693031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A299728 (n + 1)) ((2 ^ n) ^ 20 : ℤ)

end

end A299067.P12547539549977693031

/-! ## A299067.P16492704696432375311

`A299728(A000005(2^n))`
-/

namespace A299067.P16492704696432375311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299728 (A000005 (2 ^ n)).toNat

end

end A299067.P16492704696432375311

/-! ## A299067.P18173343587491423920

`A299728(∑[A155797(n)!])`
-/

namespace A299067.P18173343587491423920
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A155797 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299728 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A299067.P18173343587491423920

/-! ## A299067.P6414182096819465719

`A299728(∑[A278657(n)!])`
-/

namespace A299067.P6414182096819465719
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A278657 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299728 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A299067.P6414182096819465719

/-! ## A299067.P1707218618738371572

`A056926(A299728(n+1)²)`
-/

namespace A299067.P1707218618738371572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 (A299728 (n + 1) ^ 2).toNat

end

end A299067.P1707218618738371572

/-!
# A299069: Expansion of Product_{k>=1} (1 + x^k)^phi(k), where phi() is the Euler totient function (A000010).

The programs for A299069, there is no canonical definition to state claims against.
-/

/-! ## A299069.P2942051050117715917

`A081386(∏{e}[A136591(n+1), #+1])`
-/

namespace A299069.P2942051050117715917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136591 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081386 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1))

end

end A299069.P2942051050117715917

/-! ## A299069.P4378190801278956513

`xor(A024786(n+1), A343380(A305082(n)))`
-/

namespace A299069.P4378190801278956513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A024786 (n + 1)) (A343380 (A305082 n).toNat)

end

end A299069.P4378190801278956513

/-! ## A299069.P5073597031024885161

`A081386(∏{e}[A000142(n)*A061347(n+1), #+1])`
-/

namespace A299069.P5073597031024885161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A061347 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081386 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1))

end

end A299069.P5073597031024885161

/-!
# A299070: Regular triangle T(n,k) is the number of compositions of n whose standard factorization into Lyndon words has k distinct factors.

The programs for A299070, there is no canonical definition to state claims against.
-/

/-! ## A299070.P12396318413016725143

`A238343(lt[1, A337890(n+2)])`
-/

namespace A299070.P12396318413016725143
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337890 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238343 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A299070.P12396318413016725143

/-! ## A299070.P9925637093288769029

`A238343(comp[∑[n-1]])%A175427(3*n+4)`
-/

namespace A299070.P9925637093288769029
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A238343 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)) (A175427 (3 * n + 4))

end

end A299070.P9925637093288769029

/-! ## A299070.P2248172795096514912

`A238343(A187829(n+1)+A003056(n))`
-/

namespace A299070.P2248172795096514912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238343 (A187829 (n + 1) + A003056 n).toNat

end

end A299070.P2248172795096514912

/-! ## A299070.P3627676887259213832

`A071673(C(A188448(n+1), A120562(n)))`
-/

namespace A299070.P3627676887259213832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071673 (Nat.choose (A188448 (n + 1)).toNat (A120562 n).toNat)

end

end A299070.P3627676887259213832

/-! ## A299070.P8076925894924106630

`A238343(lt[A293076(n+1), A094216(2*n+3)])`
-/

namespace A299070.P8076925894924106630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293076 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094216 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238343 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A299070.P8076925894924106630

/-!
# A299072: Sequence is an irregular triangle read by rows with zeros removed where T(n,k) is the number of compositions of n whose standard factorization into Lyndon words has k distinct factors.

The programs for A299072, there is no canonical definition to state claims against.
-/

/-! ## A299072.P16945446976320939175

`A299070(record[n%(A299070(n+1)+n)]+1)`
-/

namespace A299072.P16945446976320939175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (A299070 (n + 1) + (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299070 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1).toNat

end

end A299072.P16945446976320939175

/-!
# A299074: Expansion of 1/((1-x)*(1-2*x)*(1-6*x)*(1-24*x)).

The programs for A299074, there is no canonical definition to state claims against.
-/

/-! ## A299074.P16569679986050094606

`∑[2^n*∑[A016147(n)]]`
-/

namespace A299074.P16569679986050094606
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016147 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A299074.P16569679986050094606

/-! ## A299074.P6223751635796243713

`∑[A000079(n)*A016217(n)]`
-/

namespace A299074.P6223751635796243713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n * A016217 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A299074.P6223751635796243713

/-! ## A299074.P1841831539003036719

`∑[∑[A016147(n)]*A000079(n)]`
-/

namespace A299074.P1841831539003036719
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016147 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) * A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A299074.P1841831539003036719

/-! ## A299074.P3349463271504830182

`∑[∑[A011782(n)]*A016217(n)]`
-/

namespace A299074.P3349463271504830182
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) * A016217 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A299074.P3349463271504830182

/-! ## A299074.P10978118976817136579

`∑[record[A130123(n)]*A016217(n)]`
-/

namespace A299074.P10978118976817136579
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130123 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) * A016217 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A299074.P10978118976817136579

/-! ## A299074.P13607402245605801329

`∑[∑[A016147(n)]*A131577(n+1)]`
-/

namespace A299074.P13607402245605801329
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016147 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) * A131577 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A299074.P13607402245605801329

/-!
# A299075: Number of n X n 0..1 arrays with every element equal to 0, 1, 2, 3, 4 or 7 king-move adjacent elements, with upper left element zero.

The programs for A299075, there is no canonical definition to state claims against.
-/

/-! ## A299075.P12309178339614253758

`A299081(∑[4*n]+1)`
-/

namespace A299075.P12309178339614253758
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299081 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A299075.P12309178339614253758

/-! ## A299075.P13428350354294644371

`record[A003982(n)*A299081(n+1)]`
-/

namespace A299075.P13428350354294644371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A299081 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A299075.P13428350354294644371

/-! ## A299075.P12819060054262931325

`A299081(A001844(n))+A025469(n)`
-/

namespace A299075.P12819060054262931325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299081 (A001844 n).toNat + A025469 n

end

end A299075.P12819060054262931325

/-! ## A299075.P9861168799442208424

`A063065(n)*A299081(A001844(n))`
-/

namespace A299075.P9861168799442208424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063065 n * A299081 (A001844 n).toNat

end

end A299075.P9861168799442208424

/-! ## A299075.P5015806271492944372

`lcm(A033999(n), A299081(A001844(n)))`
-/

namespace A299075.P5015806271492944372
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A299081 (A001844 n).toNat)

end

end A299075.P5015806271492944372

/-!
# A299076: Number of nX3 0..1 arrays with every element equal to 0, 1, 2, 3, 4 or 7 king-move adjacent elements, with upper left element zero.

The programs for A299076, there is no canonical definition to state claims against.
-/

/-! ## A299076.P9629341335337844781

`A299081(∑[n+2]+4)`
-/

namespace A299076.P9629341335337844781
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299081 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A299076.P9629341335337844781

/-! ## A299076.P7007271662112178951

`A299844(∑[n+2]+4)`
-/

namespace A299076.P7007271662112178951
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299844 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A299076.P7007271662112178951

/-! ## A299076.P8797200516391323331

`or(char[1], A299081(A167614(n+1)))`
-/

namespace A299076.P8797200516391323331
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A299081 (A167614 (n + 1)).toNat)

end

end A299076.P8797200516391323331

/-! ## A299076.P3502158744317144721

`A299081(A167614(n+1))+A185294(n)`
-/

namespace A299076.P3502158744317144721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299081 (A167614 (n + 1)).toNat + A185294 n

end

end A299076.P3502158744317144721

/-! ## A299076.P9220165800372791796

`A299844(A167614(n+1))+A185284(n)`
-/

namespace A299076.P9220165800372791796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299844 (A167614 (n + 1)).toNat + A185284 n

end

end A299076.P9220165800372791796

/-!
# A299077: Number of nX4 0..1 arrays with every element equal to 0, 1, 2, 3, 4 or 7 king-move adjacent elements, with upper left element zero.

The programs for A299077, there is no canonical definition to state claims against.
-/

/-! ## A299077.P14151689785759925462

`A299081(A374004(n+1))`
-/

namespace A299077.P14151689785759925462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299081 (A374004 (n + 1)).toNat

end

end A299077.P14151689785759925462

/-! ## A299077.P15922125427337812456

`A299081(A141214(n)+7)`
-/

namespace A299077.P15922125427337812456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299081 (A141214 n + 7).toNat

end

end A299077.P15922125427337812456

/-! ## A299077.P12656942053875513266

`A299081(A052905(n)+9)`
-/

namespace A299077.P12656942053875513266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299081 (A052905 n + 9).toNat

end

end A299077.P12656942053875513266

/-! ## A299077.P4453494378456497825

`A299081(A167614(n+2)+1)`
-/

namespace A299077.P4453494378456497825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299081 (A167614 (n + 2) + 1).toNat

end

end A299077.P4453494378456497825

/-! ## A299077.P3482837881903058796

`A299844(A167614(n+2)+1)`
-/

namespace A299077.P3482837881903058796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299844 (A167614 (n + 2) + 1).toNat

end

end A299077.P3482837881903058796

/-!
# A299078: Number of nX5 0..1 arrays with every element equal to 0, 1, 2, 3, 4 or 7 king-move adjacent elements, with upper left element zero.

The programs for A299078, there is no canonical definition to state claims against.
-/

/-! ## A299078.P11979388334773083189

`A299081(A374005(n+1))`
-/

namespace A299078.P11979388334773083189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299081 (A374005 (n + 1)).toNat

end

end A299078.P11979388334773083189

/-! ## A299078.P17439215176205589636

`A299081(A167614(n+3)+2)`
-/

namespace A299078.P17439215176205589636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299081 (A167614 (n + 3) + 2).toNat

end

end A299078.P17439215176205589636

/-! ## A299078.P15372267158182931757

`A299081(A034856(n+3)+7)`
-/

namespace A299078.P15372267158182931757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299081 (A034856 (n + 3) + 7).toNat

end

end A299078.P15372267158182931757

/-! ## A299078.P2874960084269811138

`A299081(A038722(Δ[A264443(n)]))`
-/

namespace A299078.P2874960084269811138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299081 (A038722 (f1 (n + 1) - f1 n).toNat).toNat

end

end A299078.P2874960084269811138

/-! ## A299078.P6505457718637359928

`A299081(∑[n+5]+6)`
-/

namespace A299078.P6505457718637359928
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299081 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A299078.P6505457718637359928

/-!
# A299079: Number of nX6 0..1 arrays with every element equal to 0, 1, 2, 3, 4 or 7 king-move adjacent elements, with upper left element zero.

The programs for A299079, there is no canonical definition to state claims against.
-/

/-! ## A299079.P989258366911148952

`A299081(A374007(n+1))`
-/

namespace A299079.P989258366911148952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299081 (A374007 (n + 1)).toNat

end

end A299079.P989258366911148952

/-! ## A299079.P649086844507736209

`A299081(eq[7, A131818(n+1)])`
-/

namespace A299079.P649086844507736209
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299081 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A299079.P649086844507736209

/-! ## A299079.P1038585968238523622

`A299081(eq[3, A219347(n)])`
-/

namespace A299079.P1038585968238523622
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299081 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A299079.P1038585968238523622

/-! ## A299079.P218489662557425660

`A299081(eq[5, A193592(n)])`
-/

namespace A299079.P218489662557425660
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299081 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A299079.P218489662557425660

/-! ## A299079.P7212456651430451190

`A299081(A155212(n+2)+3)`
-/

namespace A299079.P7212456651430451190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299081 (A155212 (n + 2) + 3).toNat

end

end A299079.P7212456651430451190

/-!
# A299080: Number of nX7 0..1 arrays with every element equal to 0, 1, 2, 3, 4 or 7 king-move adjacent elements, with upper left element zero.

The programs for A299080, there is no canonical definition to state claims against.
-/

/-! ## A299080.P5059097547344510414

`A299081(A374008(n+1))`
-/

namespace A299080.P5059097547344510414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299081 (A374008 (n + 1)).toNat

end

end A299080.P5059097547344510414

/-! ## A299080.P7928839946344878198

`A299081(A155212(n+2)+15)`
-/

namespace A299080.P7928839946344878198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299081 (A155212 (n + 2) + 15).toNat

end

end A299080.P7928839946344878198

/-! ## A299080.P9857825930005503348

`A299081(eq[8, A131818(n+1)])`
-/

namespace A299080.P9857825930005503348
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299081 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A299080.P9857825930005503348

/-! ## A299080.P6902467451069184767

`A299081(A055999(n+4))`
-/

namespace A299080.P6902467451069184767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299081 (A055999 (n + 4)).toNat

end

end A299080.P6902467451069184767

/-! ## A299080.P3373858718812076170

`A299081(eq[4, A219347(n)])`
-/

namespace A299080.P3373858718812076170
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299081 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A299080.P3373858718812076170

/-!
# A299081: T(n,k) = Number of n X k 0..1 arrays with every element equal to 0, 1, 2, 3, 4 or 7 king-move adjacent elements, with upper left element zero.

The programs for A299081, there is no canonical definition to state claims against.
-/

/-! ## A299081.P516500501315840020

`A299844(n+1)-A046660(A119307(n))`
-/

namespace A299081.P516500501315840020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299844 (n + 1) - A046660 (A119307 n).toNat

end

end A299081.P516500501315840020

/-! ## A299081.P811101892225938605

`A299844(n+1)-A002265(A010894(n))`
-/

namespace A299081.P811101892225938605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299844 (n + 1) - A002265 (A010894 (n + 21)).toNat

end

end A299081.P811101892225938605

/-! ## A299081.P16962329253364116042

`A299844(n+1)-A086134(A186748(n))`
-/

namespace A299081.P16962329253364116042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299844 (n + 1) - A086134 (A186748 n).toNat

end

end A299081.P16962329253364116042

/-! ## A299081.P551911667476754800

`A299844(∑[A010894(n)!])`
-/

namespace A299081.P551911667476754800
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A010894 (n + 21)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299844 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A299081.P551911667476754800

/-! ## A299081.P7287688688824899374

`A299844(n+1)%A236262(n+1)`
-/

namespace A299081.P7287688688824899374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A299844 (n + 1)) (A236262 (n + 1))

end

end A299081.P7287688688824899374

/-!
# A299083: Number of n X n 0..1 arrays with every element equal to 0, 1, 2, 3, 5 or 7 king-move adjacent elements, with upper left element zero.

The programs for A299083, there is no canonical definition to state claims against.
-/

/-! ## A299083.P702531032334613109

`A299089(∑[4*n]+1)`
-/

namespace A299083.P702531032334613109
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299089 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A299083.P702531032334613109

/-! ## A299083.P9015456780207203631

`record[A299089(A272267(n+1))]`
-/

namespace A299083.P9015456780207203631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299089 (A272267 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A299083.P9015456780207203631

/-! ## A299083.P10796737902518656346

`record[A299089(A330613(n+1))]`
-/

namespace A299083.P10796737902518656346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299089 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A299083.P10796737902518656346

/-! ## A299083.P16417704434142960702

`A299089(A001844(n))+char[9]`
-/

namespace A299083.P16417704434142960702
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299089 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A299083.P16417704434142960702

/-! ## A299083.P12327615660914213258

`record[A299089(Δ[A079824(n+1)])]`
-/

namespace A299083.P12327615660914213258
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079824 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299089 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A299083.P12327615660914213258

/-!
# A299084: Number of nX3 0..1 arrays with every element equal to 0, 1, 2, 3, 5 or 7 king-move adjacent elements, with upper left element zero.

The programs for A299084, there is no canonical definition to state claims against.
-/

/-! ## A299084.P7300631619782609776

`A299089(∑[n+2]+4)`
-/

namespace A299084.P7300631619782609776
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299089 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A299084.P7300631619782609776

/-! ## A299084.P8916978363098687482

`A299089(A167614(n+1))+char[20]`
-/

namespace A299084.P8916978363098687482
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  20

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299089 (A167614 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A299084.P8916978363098687482

/-! ## A299084.P11381933838637681911

`A299089(A167614(n+1))%A017322(n)`
-/

namespace A299084.P11381933838637681911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A299089 (A167614 (n + 1)).toNat) (A017322 n)

end

end A299084.P11381933838637681911

/-! ## A299084.P15697213859012959074

`gcd(A025469(n), A299089(A167614(n+1)))`
-/

namespace A299084.P15697213859012959074
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A025469 n) (A299089 (A167614 (n + 1)).toNat)

end

end A299084.P15697213859012959074

/-! ## A299084.P9506323428055814571

`or(A185284(n), A299089(A167614(n+1)))`
-/

namespace A299084.P9506323428055814571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A185284 n) (A299089 (A167614 (n + 1)).toNat)

end

end A299084.P9506323428055814571

/-!
# A299085: Number of nX4 0..1 arrays with every element equal to 0, 1, 2, 3, 5 or 7 king-move adjacent elements, with upper left element zero.

The programs for A299085, there is no canonical definition to state claims against.
-/

/-! ## A299085.P7692961658826055067

`A299089(∑[n+3]+7)`
-/

namespace A299085.P7692961658826055067
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299089 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A299085.P7692961658826055067

/-! ## A299085.P14844498344460703385

`A299089(A141214(n)+7)+char[17]`
-/

namespace A299085.P14844498344460703385
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299089 (A141214 n + 7).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A299085.P14844498344460703385

/-! ## A299085.P2282074790163362839

`A007318(C(n, 2))*A299089(A141214(n)+7)`
-/

namespace A299085.P2282074790163362839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose n 2) * A299089 (A141214 n + 7).toNat

end

end A299085.P2282074790163362839

/-! ## A299085.P16709214191325229320

`A000041(C(n, n²))*A299089(A141214(n)+7)`
-/

namespace A299085.P16709214191325229320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose n (n ^ 2)) * A299089 (A141214 n + 7).toNat

end

end A299085.P16709214191325229320

/-! ## A299085.P12451277323140819907

`A000108(C(2, n+2))*A299089(A141214(n)+7)`
-/

namespace A299085.P12451277323140819907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (Nat.choose 2 (n + 2)) * A299089 (A141214 n + 7).toNat

end

end A299085.P12451277323140819907

/-!
# A299086: Number of nX5 0..1 arrays with every element equal to 0, 1, 2, 3, 5 or 7 king-move adjacent elements, with upper left element zero.

The programs for A299086, there is no canonical definition to state claims against.
-/

/-! ## A299086.P10066323189211370039

`A299089(A374005(n+1))`
-/

namespace A299086.P10066323189211370039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299089 (A374005 (n + 1)).toNat

end

end A299086.P10066323189211370039

/-! ## A299086.P6725707055340654744

`A299089(A167499(n+3))`
-/

namespace A299086.P6725707055340654744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299089 (A167499 (n + 3)).toNat

end

end A299086.P6725707055340654744

/-! ## A299086.P9286287210217142642

`A299089(A155212(n)+13)`
-/

namespace A299086.P9286287210217142642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299089 (A155212 n + 13).toNat

end

end A299086.P9286287210217142642

/-! ## A299086.P11052494666198892649

`A299089(A056000(n)+15)`
-/

namespace A299086.P11052494666198892649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299089 (A056000 n + 15).toNat

end

end A299086.P11052494666198892649

/-! ## A299086.P8785605648271946124

`A299089(eq[7, A066657(n)])`
-/

namespace A299086.P8785605648271946124
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299089 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A299086.P8785605648271946124

/-!
# A299087: Number of nX6 0..1 arrays with every element equal to 0, 1, 2, 3, 5 or 7 king-move adjacent elements, with upper left element zero.

The programs for A299087, there is no canonical definition to state claims against.
-/

/-! ## A299087.P2119209676914441305

`A299089(∑[n+5]+16)`
-/

namespace A299087.P2119209676914441305
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299089 (∑ j ∈ Finset.range (n + 1), f1 j + 16)

end

end A299087.P2119209676914441305

/-!
# A299088: Number of nX7 0..1 arrays with every element equal to 0, 1, 2, 3, 5 or 7 king-move adjacent elements, with upper left element zero.

The programs for A299088, there is no canonical definition to state claims against.
-/

/-! ## A299088.P16979248012519284640

`A299089(A374008(n+1))`
-/

namespace A299088.P16979248012519284640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299089 (A374008 (n + 1)).toNat

end

end A299088.P16979248012519284640

/-! ## A299088.P10386756429867349990

`A299089(A056119(n)+28)`
-/

namespace A299088.P10386756429867349990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299089 (A056119 n + 28).toNat

end

end A299088.P10386756429867349990

/-! ## A299088.P13761171485011768834

`A299089(eq[11, A066657(n)])`
-/

namespace A299088.P13761171485011768834
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299089 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A299088.P13761171485011768834

/-! ## A299088.P15868933859309723077

`A299089(A166136(n+5)+1)`
-/

namespace A299088.P15868933859309723077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299089 (A166136 (n + 5) + 1).toNat

end

end A299088.P15868933859309723077

/-! ## A299088.P5114973769821214584

`A299089(A167614(n+5)+4)`
-/

namespace A299088.P5114973769821214584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299089 (A167614 (n + 5) + 4).toNat

end

end A299088.P5114973769821214584

/-!
# A299089: T(n,k)=Number of nXk 0..1 arrays with every element equal to 0, 1, 2, 3, 5 or 7 king-move adjacent elements, with upper left element zero.

The programs for A299089, there is no canonical definition to state claims against.
-/

/-! ## A299089.P12202439954302320273

`A298195(n+1)+A285007(A035607(n))`
-/

namespace A299089.P12202439954302320273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298195 (n + 1) + A285007 (A035607 n).toNat

end

end A299089.P12202439954302320273

/-! ## A299089.P16176904187998396610

`A309785(A331562(n))+A298195(n+1)`
-/

namespace A299089.P16176904187998396610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309785 (A331562 n).toNat + A298195 (n + 1)

end

end A299089.P16176904187998396610

/-! ## A299089.P10307300185064647128

`A309785(A347621(n))+A298195(n+1)`
-/

namespace A299089.P10307300185064647128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309785 (A347621 n).toNat + A298195 (n + 1)

end

end A299089.P10307300185064647128

/-!
# A299090: Number of "digits" in the binary representation of the multiset of prime factors of n.

The programs for A299090, the canonical program `A299090.P6964279361835886871` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A299090 has offset 1).

The definition of A299090 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A299090.P15318716163300888432

`ceil(sqrt(A392278(n+1)))`
-/

namespace A299090.P15318716163300888432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A392278 (n + 1) : ℝ)⌉

end

end A299090.P15318716163300888432

namespace A299090

/-- `ceil(sqrt(A392278(n+1)))` -/
def P15318716163300888432.Spec : Prop :=
  ∀ n, P15318716163300888432.a n = A299090 (n + 1)

end A299090

/-! ## A299090.P1240631919029375145

`ceil(log2(A067132(n+1)))`
-/

namespace A299090.P1240631919029375145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A067132 (n + 1) : ℝ)⌉

end

end A299090.P1240631919029375145

namespace A299090

/-- `ceil(log2(A067132(n+1)))` -/
def P1240631919029375145.Spec : Prop :=
  ∀ n, P1240631919029375145.a n = A299090 (n + 1)

end A299090

/-! ## A299090.P10261459134554469240

`ceil(log2(A051903(n+1)+1))`
-/

namespace A299090.P10261459134554469240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A051903 (n + 1) + 1 : ℝ)⌉

end

end A299090.P10261459134554469240

namespace A299090

/-- `ceil(log2(A051903(n+1)+1))` -/
def P10261459134554469240.Spec : Prop :=
  ∀ n, P10261459134554469240.a n = A299090 (n + 1)

end A299090

/-! ## A299090.P15386089012544959951

`ceil(log2(A267116(n+1)+1))`
-/

namespace A299090.P15386089012544959951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A267116 (n + 1) + 1 : ℝ)⌉

end

end A299090.P15386089012544959951

namespace A299090

/-- `ceil(log2(A267116(n+1)+1))` -/
def P15386089012544959951.Spec : Prop :=
  ∀ n, P15386089012544959951.a n = A299090 (n + 1)

end A299090

/-! ## A299090.P4255790678265870725

`a(A000188(n+1)-1)+1` with `a(0)=0`
-/

namespace A299090.P4255790678265870725
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (A000188 (n + 1) - 1).toNat + 1

end

end A299090.P4255790678265870725

namespace A299090

/-- `a(A000188(n+1)-1)+1` -/
def P4255790678265870725.Spec : Prop :=
  ∀ n, (P4255790678265870725.a n : ℤ) = A299090 (n + 1)

end A299090

/-! ## A299090.P12365572971582853455

`ceil(log2(val(A046523(n+1), 2)+1))`
-/

namespace A299090.P12365572971582853455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (SequenceMachineLib.valuation (A046523 (n + 1)).toNat 2 + 1 : ℝ)⌉

end

end A299090.P12365572971582853455

namespace A299090

/-- `ceil(log2(val(A046523(n+1), 2)+1))` -/
def P12365572971582853455.Spec : Prop :=
  ∀ n, P12365572971582853455.a n = A299090 (n + 1)

end A299090

/-! ## A299090.P17869501897639471246

`A061395(A293442(n+1))`
-/

namespace A299090.P17869501897639471246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A293442 (n + 1)).toNat

end

end A299090.P17869501897639471246

namespace A299090

/-- `A061395(A293442(n+1))` -/
def P17869501897639471246.Spec : Prop :=
  ∀ n, P17869501897639471246.a n = A299090 (n + 1)

end A299090

/-! ## A299090.P5089199067157103286

`A061395(A293443(n+1))`
-/

namespace A299090.P5089199067157103286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A293443 (n + 1)).toNat

end

end A299090.P5089199067157103286

namespace A299090

/-- `A061395(A293443(n+1))` -/
def P5089199067157103286.Spec : Prop :=
  ∀ n, P5089199067157103286.a n = A299090 (n + 1)

end A299090

/-! ## A299090.P6964279361835886871

`A029837(A051903(n+1)+1)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A299090

/-- `A029837(A051903(n+1)+1)` -/
def P6964279361835886871.Spec : Prop :=
  ∀ n, P6964279361835886871.a n = A299090 (n + 1)

theorem P6964279361835886871.correct : P6964279361835886871.Spec := by
  intro n
  simp only [A299090, Nat.add_sub_cancel]

end A299090

/-! ## A299090.P2097980424879223936

`A029837(A267116(n+1)+1)`
-/

namespace A299090.P2097980424879223936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029837 (A267116 (n + 1) + 1).toNat

end

end A299090.P2097980424879223936

namespace A299090

/-- `A029837(A267116(n+1)+1)` -/
def P2097980424879223936.Spec : Prop :=
  ∀ n, P2097980424879223936.a n = A299090 (n + 1)

end A299090

/-! ## A299090.P14146729128142009204

`A075172(val(A046523(n+1), 2))`
-/

namespace A299090.P14146729128142009204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075172 (SequenceMachineLib.valuation (A046523 (n + 1)).toNat 2)

end

end A299090.P14146729128142009204

namespace A299090

/-- `A075172(val(A046523(n+1), 2))` -/
def P14146729128142009204.Spec : Prop :=
  ∀ n, P14146729128142009204.a n = A299090 (n + 1)

end A299090

/-! ## A299090.P7438816801335313251

`A000523(2*A051903(n+1)+1)`
-/

namespace A299090.P7438816801335313251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (2 * A051903 (n + 1) + 1).toNat

end

end A299090.P7438816801335313251

namespace A299090

/-- `A000523(2*A051903(n+1)+1)` -/
def P7438816801335313251.Spec : Prop :=
  ∀ n, P7438816801335313251.a n = A299090 (n + 1)

end A299090

/-! ## A299090.P4430427511817559207

`A070939(2*A051903(n+1))-1`
-/

namespace A299090.P4430427511817559207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (2 * A051903 (n + 1)).toNat - 1

end

end A299090.P4430427511817559207

namespace A299090

/-- `A070939(2*A051903(n+1))-1` -/
def P4430427511817559207.Spec : Prop :=
  ∀ n, P4430427511817559207.a n = A299090 (n + 1)

end A299090

/-! ## A299090.P1095542036910498228

`A334871(A334866(A267116(n+1)))`
-/

namespace A299090.P1095542036910498228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334871 (A334866 (A267116 (n + 1)).toNat).toNat

end

end A299090.P1095542036910498228

namespace A299090

/-- `A334871(A334866(A267116(n+1)))` -/
def P1095542036910498228.Spec : Prop :=
  ∀ n, P1095542036910498228.a n = A299090 (n + 1)

end A299090

/-! ## A299090.P14381127368330151159

`A000523(A051903(n+1)+A051903(n+1)+1)`
-/

namespace A299090.P14381127368330151159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (A051903 (n + 1) + (A051903 (n + 1) + 1)).toNat

end

end A299090.P14381127368330151159

namespace A299090

/-- `A000523(A051903(n+1)+A051903(n+1)+1)` -/
def P14381127368330151159.Spec : Prop :=
  ∀ n, P14381127368330151159.a n = A299090 (n + 1)

end A299090

/-! ## A299090.P15187157105835977662

`A000523(A051903((n+1)²)+1)`
-/

namespace A299090.P15187157105835977662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (A051903 ((n + 1) ^ 2) + 1).toNat

end

end A299090.P15187157105835977662

namespace A299090

/-- `A000523(A051903((n+1)²)+1)` -/
def P15187157105835977662.Spec : Prop :=
  ∀ n, P15187157105835977662.a n = A299090 (n + 1)

end A299090

/-! ## A299090.P4726351257908988251

`A252735(A293442((n+1)²))`
-/

namespace A299090.P4726351257908988251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252735 (A293442 ((n + 1) ^ 2)).toNat

end

end A299090.P4726351257908988251

namespace A299090

/-- `A252735(A293442((n+1)²))` -/
def P4726351257908988251.Spec : Prop :=
  ∀ n, P4726351257908988251.a n = A299090 (n + 1)

end A299090

/-! ## A299090.P17628579402147702403

`A072086(A111218(n+1))`
-/

namespace A299090.P17628579402147702403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072086 (A111218 (n + 1)).toNat

end

end A299090.P17628579402147702403

namespace A299090

/-- `A072086(A111218(n+1))` -/
def P17628579402147702403.Spec : Prop :=
  ∀ n, P17628579402147702403.a n = A299090 (n + 1)

end A299090

/-! ## A299090.P11952112002063458273

`and(A203878(n+1), A375430(n+1))`
-/

namespace A299090.P11952112002063458273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A203878 (n + 1)) (A375430 (n + 1))

end

end A299090.P11952112002063458273

namespace A299090

/-- `and(A203878(n+1), A375430(n+1))` -/
def P11952112002063458273.Spec : Prop :=
  ∀ n, P11952112002063458273.a n = A299090 (n + 1)

end A299090

/-! ## A299090.P7396105758726862095

`A051903(A003418(A051903((n+1)*(n+1))))`
-/

namespace A299090.P7396105758726862095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A003418 (A051903 ((n + 1) * (n + 1))).toNat).toNat

end

end A299090.P7396105758726862095

namespace A299090

/-- `A051903(A003418(A051903((n+1)*(n+1))))` -/
def P7396105758726862095.Spec : Prop :=
  ∀ n, P7396105758726862095.a n = A299090 (n + 1)

end A299090

/-!
# A299091: Number of n X n 0..1 arrays with every element equal to 0, 1, 2, 4, 5 or 7 king-move adjacent elements, with upper left element zero.

The programs for A299091, there is no canonical definition to state claims against.
-/

/-! ## A299091.P35977472425282596

`A299097(∑[4*n]+1)`
-/

namespace A299091.P35977472425282596
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299097 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A299091.P35977472425282596

/-! ## A299091.P7790708178510197541

`record[A299097(A330613(n+1))]`
-/

namespace A299091.P7790708178510197541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299097 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A299091.P7790708178510197541

/-! ## A299091.P9487162451825037636

`A299097(A001844(n))+char[10]`
-/

namespace A299091.P9487162451825037636
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299097 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A299091.P9487162451825037636

/-! ## A299091.P12823863601348989564

`record[A003982(n)*A299097(n+1)]`
-/

namespace A299091.P12823863601348989564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A299097 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A299091.P12823863601348989564

/-! ## A299091.P16832132771552058676

`record[A214505(n)*A299097(n+1)]`
-/

namespace A299091.P16832132771552058676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214505 n * A299097 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A299091.P16832132771552058676

/-!
# A299092: Number of nX3 0..1 arrays with every element equal to 0, 1, 2, 4, 5 or 7 king-move adjacent elements, with upper left element zero.

The programs for A299092, there is no canonical definition to state claims against.
-/

/-! ## A299092.P4924682669015422323

`A299097(∑[n+2]+4)`
-/

namespace A299092.P4924682669015422323
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299097 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A299092.P4924682669015422323

/-! ## A299092.P16682616860833123471

`and(-1, A299097(A167614(n+1)))`
-/

namespace A299092.P16682616860833123471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A299097 (A167614 (n + 1)).toNat)

end

end A299092.P16682616860833123471

/-! ## A299092.P8767846493139626192

`A299097(A167499(n)+n)+char[20]`
-/

namespace A299092.P8767846493139626192
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  20

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299097 (A167499 n + (n : ℤ)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A299092.P8767846493139626192

/-! ## A299092.P10281831512139940262

`A299097(A167614(n+1))+A011736(n)`
-/

namespace A299092.P10281831512139940262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299097 (A167614 (n + 1)).toNat + A011736 n

end

end A299092.P10281831512139940262

/-! ## A299092.P6776907415680459717

`A015198(n)*A299097(A167614(n+1))`
-/

namespace A299092.P6776907415680459717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015198 n * A299097 (A167614 (n + 1)).toNat

end

end A299092.P6776907415680459717

/-!
# A299093: Number of n X 4 0..1 arrays with every element equal to 0, 1, 2, 4, 5 or 7 king-move adjacent elements, with upper left element zero.

The programs for A299093, there is no canonical definition to state claims against.
-/

/-! ## A299093.P7350150544546326927

`A299097(∑[n+3]+7)`
-/

namespace A299093.P7350150544546326927
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299097 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A299093.P7350150544546326927

/-! ## A299093.P16534914902037798115

`A299097(A141214(n)+7)+char[20]`
-/

namespace A299093.P16534914902037798115
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  20

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299097 (A141214 n + 7).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A299093.P16534914902037798115

/-! ## A299093.P9657519639723345260

`record[A073423(n)*A299097(n+4)]`
-/

namespace A299093.P9657519639723345260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073423 n * A299097 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A299093.P9657519639723345260

/-! ## A299093.P4603679807078264561

`A299097(Δ[A005586(n)]+5)+char[17]`
-/

namespace A299093.P4603679807078264561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005586 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299097 (f1 (n + 1) - f1 n + 5).toNat + ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A299093.P4603679807078264561

/-! ## A299093.P691197018488403495

`A299097(A167614(n+2)+1)+char[20]`
-/

namespace A299093.P691197018488403495
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  20

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299097 (A167614 (n + 2) + 1).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A299093.P691197018488403495

/-!
# A299094: Number of nX5 0..1 arrays with every element equal to 0, 1, 2, 4, 5 or 7 king-move adjacent elements, with upper left element zero.

The programs for A299094, there is no canonical definition to state claims against.
-/

/-! ## A299094.P9967967800970285193

`A299097(∑[n+4]+11)`
-/

namespace A299094.P9967967800970285193
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299097 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A299094.P9967967800970285193

/-! ## A299094.P5985761250663538035

`A299097(A056000(n)+15)+char[17]`
-/

namespace A299094.P5985761250663538035
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299097 (A056000 n + 15).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A299094.P5985761250663538035

/-! ## A299094.P17960514176050774887

`A007318(C(n, 2))*A299097(A155212(n)+13)`
-/

namespace A299094.P17960514176050774887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose n 2) * A299097 (A155212 n + 13).toNat

end

end A299094.P17960514176050774887

/-! ## A299094.P17765733710375139503

`A007318(C(2, n))*A299097(A056000(n)+15)`
-/

namespace A299094.P17765733710375139503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A299097 (A056000 n + 15).toNat

end

end A299094.P17765733710375139503

/-! ## A299094.P11760558740977963674

`A299097(A056000(n)+15)/A000108(and(1, -n))`
-/

namespace A299094.P11760558740977963674
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A299097 (A056000 n + 15).toNat : ℚ) / (A000108 (Int.land 1 (-(n : ℤ))).toNat : ℚ)

end

end A299094.P11760558740977963674

/-!
# A299095: Number of nX6 0..1 arrays with every element equal to 0, 1, 2, 4, 5 or 7 king-move adjacent elements, with upper left element zero.

The programs for A299095, there is no canonical definition to state claims against.
-/

/-! ## A299095.P5927012647288680311

`A299097(A056115(n)+21)`
-/

namespace A299095.P5927012647288680311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299097 (A056115 n + 21).toNat

end

end A299095.P5927012647288680311

/-! ## A299095.P14963457391806695224

`A299097(A167499(n+4)+1)`
-/

namespace A299095.P14963457391806695224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299097 (A167499 (n + 4) + 1).toNat

end

end A299095.P14963457391806695224

/-! ## A299095.P15861111382378916648

`A299097(A000124(n+5)+5)`
-/

namespace A299095.P15861111382378916648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299097 (A000124 (n + 5) + 5).toNat

end

end A299095.P15861111382378916648

/-! ## A299095.P11168700598696762972

`A299097(A000217(n+5)+6)`
-/

namespace A299095.P11168700598696762972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299097 (A000217 (n + 5) + 6).toNat

end

end A299095.P11168700598696762972

/-! ## A299095.P3729629141845803976

`A299097(A034856(n+4)+8)`
-/

namespace A299095.P3729629141845803976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299097 (A034856 (n + 4) + 8).toNat

end

end A299095.P3729629141845803976

/-!
# A299096: Number of nX7 0..1 arrays with every element equal to 0, 1, 2, 4, 5 or 7 king-move adjacent elements, with upper left element zero.

The programs for A299096, there is no canonical definition to state claims against.
-/

/-! ## A299096.P4975260552698592794

`A299097(A056119(n)+28)`
-/

namespace A299096.P4975260552698592794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299097 (A056119 n + 28).toNat

end

end A299096.P4975260552698592794

/-! ## A299096.P4789164670178771004

`A299097(eq[11, A066657(n)])`
-/

namespace A299096.P4789164670178771004
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299097 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A299096.P4789164670178771004

/-! ## A299096.P11181404490036951761

`A299097(A167499(n+5)+2)`
-/

namespace A299096.P11181404490036951761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299097 (A167499 (n + 5) + 2).toNat

end

end A299096.P11181404490036951761

/-! ## A299096.P15770199269465223538

`A299097(A000124(n+6)+6)`
-/

namespace A299096.P15770199269465223538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299097 (A000124 (n + 6) + 6).toNat

end

end A299096.P15770199269465223538

/-! ## A299096.P966792673959819342

`A299097(A000217(n+6)+7)`
-/

namespace A299096.P966792673959819342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299097 (A000217 (n + 6) + 7).toNat

end

end A299096.P966792673959819342

/-!
# A299097: T(n,k)=Number of nXk 0..1 arrays with every element equal to 0, 1, 2, 4, 5 or 7 king-move adjacent elements, with upper left element zero.

The programs for A299097, there is no canonical definition to state claims against.
-/

/-! ## A299097.P8378989016104613557

`A299879(n+1)-A316864(A240321(n+1))`
-/

namespace A299097.P8378989016104613557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299879 (n + 1) - A316864 (A240321 (n + 1)).toNat

end

end A299097.P8378989016104613557

/-! ## A299097.P7484120143990049939

`A299879(n+1)-A292251(A128434(n))`
-/

namespace A299097.P7484120143990049939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299879 (n + 1) - A292251 (A128434 n).toNat

end

end A299097.P7484120143990049939

/-! ## A299097.P12554550824509114524

`A299879(n+1)-A295659(A136170(n))`
-/

namespace A299097.P12554550824509114524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299879 (n + 1) - A295659 (A136170 n).toNat

end

end A299097.P12554550824509114524

/-! ## A299097.P5637979072799173320

`A299879(n+1)-A003982(A256748(n+1))`
-/

namespace A299097.P5637979072799173320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299879 (n + 1) - A003982 (A256748 (n + 1)).toNat

end

end A299097.P5637979072799173320

/-! ## A299097.P4540624299535198940

`A299879(n+1)%A216348(2*n+3)²`
-/

namespace A299097.P4540624299535198940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A299879 (n + 1)) (A216348 (2 * n + 3) ^ 2)

end

end A299097.P4540624299535198940

/-!
# A299098: Number of rooted identity trees with 2n nodes.

The programs for A299098, there is no canonical definition to state claims against.
-/

/-! ## A299098.P17478327594990125076

`A004111(2*n)`
-/

namespace A299098.P17478327594990125076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004111 (2 * n)

end

end A299098.P17478327594990125076

/-! ## A299098.P17189013198599487459

`record[A004111(A093178(n)-1)]`
-/

namespace A299098.P17189013198599487459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004111 (A093178 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A299098.P17189013198599487459

/-! ## A299098.P4383161047214839547

`record[A004111(n/A093178(n))]`
-/

namespace A299098.P4383161047214839547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004111 (SequenceMachineLib.roundAway ((n : ℚ) / (A093178 n : ℚ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A299098.P4383161047214839547

/-! ## A299098.P9280946581622542556

`record[A004111(A000265(n+1)-1)]`
-/

namespace A299098.P9280946581622542556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004111 (A000265 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A299098.P9280946581622542556

/-! ## A299098.P5233099775614353265

`record[A004111(n-A007814(n+1))]`
-/

namespace A299098.P5233099775614353265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004111 ((n : ℤ) - A007814 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A299098.P5233099775614353265

/-! ## A299098.P12414691278171253624

`record[A004111(n-A055396(n+1))]`
-/

namespace A299098.P12414691278171253624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004111 ((n : ℤ) - A055396 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A299098.P12414691278171253624

/-! ## A299098.P2284638434207270695

`record[A004111(n%A000593(n+1))]`
-/

namespace A299098.P2284638434207270695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004111 (Int.tmod (n : ℤ) (A000593 (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A299098.P2284638434207270695

/-! ## A299098.P6155684457083837161

`record[A004111(gcd(n, A007814(n+1)))]`
-/

namespace A299098.P6155684457083837161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004111 (Int.gcd (n : ℤ) (A007814 (n + 1)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A299098.P6155684457083837161

/-! ## A299098.P8610902546149338799

`record[A004111(A036044(A036044(n)))]`
-/

namespace A299098.P8610902546149338799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004111 (A036044 (A036044 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A299098.P8610902546149338799

/-! ## A299098.P5837572941173753801

`record[A004111(A004526(A257088(n)))]`
-/

namespace A299098.P5837572941173753801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004111 (A004526 (A257088 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A299098.P5837572941173753801

/-! ## A299098.P6196761080261280676

`record[A004111(A008611(A000265(n+1)))]`
-/

namespace A299098.P6196761080261280676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004111 (A008611 (A000265 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A299098.P6196761080261280676

/-! ## A299098.P11932656872848341929

`A318758(A130883(n)+1)`
-/

namespace A299098.P11932656872848341929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318758 (A130883 n + 1).toNat

end

end A299098.P11932656872848341929

/-! ## A299098.P11098992089165271130

`A318758(A000384(n)+2)`
-/

namespace A299098.P11098992089165271130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318758 (A000384 n + 2).toNat

end

end A299098.P11098992089165271130

/-! ## A299098.P1988691508964142734

`A318758(A238531(2*n)+A000007(n))`
-/

namespace A299098.P1988691508964142734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318758 (A238531 (2 * n) + A000007 n).toNat

end

end A299098.P1988691508964142734

/-! ## A299098.P14006571584824657102

`A318758(A238531(2*n))-A000007(2*n)`
-/

namespace A299098.P14006571584824657102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318758 (A238531 (2 * n)).toNat - A000007 (2 * n)

end

end A299098.P14006571584824657102

/-! ## A299098.P13265782735213055786

`A318757(A055998(2*n)+1)`
-/

namespace A299098.P13265782735213055786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318757 (A055998 (2 * n) + 1).toNat

end

end A299098.P13265782735213055786

/-! ## A299098.P8856467672957051562

`A318757(A046691(2*n)+2)`
-/

namespace A299098.P8856467672957051562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318757 (A046691 (2 * n) + 2).toNat

end

end A299098.P8856467672957051562

/-! ## A299098.P1181060354128787777

`A318757(A000096(2*n+1)-1)`
-/

namespace A299098.P1181060354128787777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318757 (A000096 (2 * n + 1) - 1).toNat

end

end A299098.P1181060354128787777

/-! ## A299098.P13141919580293641445

`A318757(A054977(n)+A027379(2*n))`
-/

namespace A299098.P13141919580293641445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318757 (A054977 n + A027379 (2 * n)).toNat

end

end A299098.P13141919580293641445

/-!
# A299099: Number of (n + 1, n + 2)-core partitions with odd parts and corresponding order ideals confined to the two outermost diagonals of P_{n + 1, n + 2}.

The programs for A299099, there is no canonical definition to state claims against.
-/

/-! ## A299099.P15327359745883320863

`A319755(n+2)-A000120(A184535(n+1))`
-/

namespace A299099.P15327359745883320863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319755 (n + 2) - A000120 (A184535 (n + 1)).toNat

end

end A299099.P15327359745883320863

/-! ## A299099.P12480285852447767290

`A176075(C(2*n, n))`
-/

namespace A299099.P12480285852447767290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176075 (Nat.choose (2 * n) n)

end

end A299099.P12480285852447767290

/-! ## A299099.P4489712917922699411

`∑[A232748(C(n+1, floor(n/2))+1)]`
-/

namespace A299099.P4489712917922699411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232748 (Nat.choose (n + 1) ⌊(n : ℚ) / 2⌋.toNat + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A299099.P4489712917922699411

/-! ## A299099.P9814877206778520382

`A176075(A000984(n))`
-/

namespace A299099.P9814877206778520382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176075 (A000984 n).toNat

end

end A299099.P9814877206778520382

