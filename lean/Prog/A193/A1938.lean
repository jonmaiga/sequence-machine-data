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
import Seq.B000.C017
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
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
import Seq.Opaque.C008
import Seq.Opaque.C009
import Seq.Opaque.C010
import Seq.Opaque.C011
import Seq.Opaque.C012
import Seq.Opaque.C014
import Seq.Opaque.C015
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024

/-!
# A193800: Least m > 0 such that (n+m)^2 - m^2 (= n^2 + 2*m*n) is a square.

The programs for A193800, the canonical program `A193800.P17352765723987985871` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A193800 has offset 1).

The definition of A193800 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A193800.P17352765723987985871

`(A379705(n+1)-(n+1))/2`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A193800

/-- `(A379705(n+1)-(n+1))/2` -/
def P17352765723987985871.Spec : Prop :=
  ∀ n, P17352765723987985871.a n = (A193800 (n + 1) : ℚ)

end A193800

/-! ## A193800.P10810441159068244220

`(4*(n+1))%A067722(2*(n+1))`
-/

namespace A193800.P10810441159068244220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (4 * (n + 1) : ℤ) (A067722 (2 * (n + 1)))

end

end A193800.P10810441159068244220

namespace A193800

/-- `(4*(n+1))%A067722(2*(n+1))` -/
def P10810441159068244220.Spec : Prop :=
  ∀ n, P10810441159068244220.a n = A193800 (n + 1)

end A193800

/-! ## A193800.P18344219893166789093

`A019554(A072905(2*(n+1)))`
-/

namespace A193800.P18344219893166789093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019554 (A072905 (2 * (n + 1))).toNat

end

end A193800.P18344219893166789093

namespace A193800

/-- `A019554(A072905(2*(n+1)))` -/
def P18344219893166789093.Spec : Prop :=
  ∀ n, P18344219893166789093.a n = A193800 (n + 1)

end A193800

/-! ## A193800.P3139314425821587098

`A019554(2*(n+1))+A007913(2*(n+1))`
-/

namespace A193800.P3139314425821587098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019554 (2 * (n + 1)) + A007913 (2 * (n + 1))

end

end A193800.P3139314425821587098

namespace A193800

/-- `A019554(2*(n+1))+A007913(2*(n+1))` -/
def P3139314425821587098.Spec : Prop :=
  ∀ n, P3139314425821587098.a n = A193800 (n + 1)

end A193800

/-! ## A193800.P7689416686396435183

`A072905(2*(n+1))-A254732(2*(n+1))`
-/

namespace A193800.P7689416686396435183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072905 (2 * (n + 1)) - A254732 (2 * (n + 1))

end

end A193800.P7689416686396435183

namespace A193800

/-- `A072905(2*(n+1))-A254732(2*(n+1))` -/
def P7689416686396435183.Spec : Prop :=
  ∀ n, P7689416686396435183.a n = A193800 (n + 1)

end A193800

/-! ## A193800.P410564014277381856

`A254732(2*(n+1))/A000188(2*(n+1))`
-/

namespace A193800.P410564014277381856
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A254732 (2 * (n + 1)) : ℚ) / (A000188 (2 * (n + 1)) : ℚ)

end

end A193800.P410564014277381856

namespace A193800

/-- `A254732(2*(n+1))/A000188(2*(n+1))` -/
def P410564014277381856.Spec : Prop :=
  ∀ n, P410564014277381856.a n = (A193800 (n + 1) : ℚ)

end A193800

/-! ## A193800.P16713987692370165771

`gcd(A072905(2*n+2), A254732(2*n+2))`
-/

namespace A193800.P16713987692370165771
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A072905 (2 * n + 2)) (A254732 (2 * n + 2))

end

end A193800.P16713987692370165771

namespace A193800

/-- `gcd(A072905(2*n+2), A254732(2*n+2))` -/
def P16713987692370165771.Spec : Prop :=
  ∀ n, (P16713987692370165771.a n : ℤ) = A193800 (n + 1)

end A193800

/-! ## A193800.P6637081586851688059

`(A000188(2*(n+1))+1)*A007913(2*(n+1))`
-/

namespace A193800.P6637081586851688059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000188 (2 * (n + 1)) + 1) * A007913 (2 * (n + 1))

end

end A193800.P6637081586851688059

namespace A193800

/-- `(A000188(2*(n+1))+1)*A007913(2*(n+1))` -/
def P6637081586851688059.Spec : Prop :=
  ∀ n, P6637081586851688059.a n = A193800 (n + 1)

end A193800

/-! ## A193800.P15180461768899810039

`A072905(2*(n+1))/(A000188(2*(n+1))+1)`
-/

namespace A193800.P15180461768899810039
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A072905 (2 * (n + 1)) : ℚ) / (A000188 (2 * (n + 1)) + 1 : ℚ)

end

end A193800.P15180461768899810039

namespace A193800

/-- `A072905(2*(n+1))/(A000188(2*(n+1))+1)` -/
def P15180461768899810039.Spec : Prop :=
  ∀ n, P15180461768899810039.a n = (A193800 (n + 1) : ℚ)

end A193800

/-! ## A193800.P5005550814895576149

`A072905(2*(n+1))/(A057918(2*(n+1))+2)`
-/

namespace A193800.P5005550814895576149
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A072905 (2 * (n + 1)) : ℚ) / (A057918 (2 * (n + 1)) + 2 : ℚ)

end

end A193800.P5005550814895576149

namespace A193800

/-- `A072905(2*(n+1))/(A057918(2*(n+1))+2)` -/
def P5005550814895576149.Spec : Prop :=
  ∀ n, P5005550814895576149.a n = (A193800 (n + 1) : ℚ)

end A193800

/-! ## A193800.P15862458478094299617

`A019554(2*(n+1))+2*(n+1)/A008833(2*(n+1))`
-/

namespace A193800.P15862458478094299617
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A019554 (2 * (n + 1)) : ℚ) + (2 * (n + 1) : ℚ) / (A008833 (2 * (n + 1)) : ℚ)

end

end A193800.P15862458478094299617

namespace A193800

/-- `A019554(2*(n+1))+2*(n+1)/A008833(2*(n+1))` -/
def P15862458478094299617.Spec : Prop :=
  ∀ n, P15862458478094299617.a n = (A193800 (n + 1) : ℚ)

end A193800

/-! ## A193800.P943927563167001350

`A007913(2*(n+1))*A020725(A000188(2*(n+1)))`
-/

namespace A193800.P943927563167001350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (2 * (n + 1)) * A020725 (A000188 (2 * (n + 1))).toNat

end

end A193800.P943927563167001350

namespace A193800

/-- `A007913(2*(n+1))*A020725(A000188(2*(n+1)))` -/
def P943927563167001350.Spec : Prop :=
  ∀ n, P943927563167001350.a n = A193800 (n + 1)

end A193800

/-! ## A193800.P1451537155914652785

`A019554(2*(n+1))+A019554(2*(n+1))/A000188(2*(n+1))`
-/

namespace A193800.P1451537155914652785
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A019554 (2 * (n + 1)) : ℚ) + (A019554 (2 * (n + 1)) : ℚ) / (A000188 (2 * (n + 1)) : ℚ)

end

end A193800.P1451537155914652785

namespace A193800

/-- `A019554(2*(n+1))+A019554(2*(n+1))/A000188(2*(n+1))` -/
def P1451537155914652785.Spec : Prop :=
  ∀ n, P1451537155914652785.a n = (A193800 (n + 1) : ℚ)

end A193800

/-! ## A193800.P11381406850087519428

`A019554(2*(n+1))+gcd(A019554(2*(n+1)), A056135(2*(n+1)))`
-/

namespace A193800.P11381406850087519428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019554 (2 * (n + 1)) + (Int.gcd (A019554 (2 * (n + 1))) (A056135 (2 * (n + 1))) : ℤ)

end

end A193800.P11381406850087519428

namespace A193800

/-- `A019554(2*(n+1))+gcd(A019554(2*(n+1)), A056135(2*(n+1)))` -/
def P11381406850087519428.Spec : Prop :=
  ∀ n, P11381406850087519428.a n = A193800 (n + 1)

end A193800

/-!
# A193801: Semiprimes in Gica-Panaitopol recursion A193298.

The programs for A193801, there is no canonical definition to state claims against.
-/

/-! ## A193801.P16865250000709455909

`filter[A193299(n+1), A064911(#)]`
-/

namespace A193801.P16865250000709455909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193299 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A193801.P16865250000709455909

/-! ## A193801.P14946214463724526898

`∩[A001358(n+1), A193299(n+1)]`
-/

namespace A193801.P14946214463724526898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193299 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A193801.P14946214463724526898

/-! ## A193801.P9265520305643196950

`∩[A088707(n+1)-1, A193299(n+1)]`
-/

namespace A193801.P9265520305643196950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088707 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193299 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A193801.P9265520305643196950

/-! ## A193801.P16655401832342696782

`∩[A023443(A088707(n+1)), A193299(n+1)]`
-/

namespace A193801.P16655401832342696782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A088707 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193299 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A193801.P16655401832342696782

/-! ## A193801.P10156765314807752777

`A001358(∑[A322320(A032157(n))])`
-/

namespace A193801.P10156765314807752777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322320 (A032157 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A193801.P10156765314807752777

/-!
# A193802: Length of optimal Wichmann rulers.

The programs for A193802, there is no canonical definition to state claims against.
-/

/-! ## A193802.P1063705530120829427

`∩[A004137(n+1), A289761(n+2)]`
-/

namespace A193802.P1063705530120829427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004137 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289761 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A193802.P1063705530120829427

/-! ## A193802.P12311663915801386967

`∩[A090864(n+1), A289761(n+2)]`
-/

namespace A193802.P12311663915801386967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090864 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289761 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A193802.P12311663915801386967

/-! ## A193802.P8267254981585534987

`record[gcd(A004137(n+3), A289761(n+2))]`
-/

namespace A193802.P8267254981585534987
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A004137 (n + 3)) (A289761 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A193802.P8267254981585534987

/-! ## A193802.P6278467141694108279

`∩[A004137(n+1), A289873(n+2)+2+n]`
-/

namespace A193802.P6278467141694108279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004137 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289873 (n + 2) + 2 + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A193802.P6278467141694108279

/-! ## A193802.P16079130868992052647

`∩[A090864(n+1), A289873(n+2)+2+n]`
-/

namespace A193802.P16079130868992052647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090864 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289873 (n + 2) + 2 + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A193802.P16079130868992052647

/-!
# A193803: Length of perfect Wichmann rulers.

The programs for A193803, there is no canonical definition to state claims against.
-/

/-! ## A193803.P10460250961461765747

`∑[A083349(∏[A101479(n)])]`
-/

namespace A193803.P10460250961461765747
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101479 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083349 (∏ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A193803.P10460250961461765747

/-! ## A193803.P15262074603711607561

`∑[A198465(∏[A101479(n)])]`
-/

namespace A193803.P15262074603711607561
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101479 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198465 (∏ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A193803.P15262074603711607561

/-! ## A193803.P6801276568790910237

`∑[A231343(∏[A101479(n)])]`
-/

namespace A193803.P6801276568790910237
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101479 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231343 (∏ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A193803.P6801276568790910237

/-! ## A193803.P1181966702609542368

`∑[A198465(∏[A136170(n)])]`
-/

namespace A193803.P1181966702609542368
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136170 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198465 (∏ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A193803.P1181966702609542368

/-! ## A193803.P16082713766448229749

`∑[A169787(A374022(n+1)!)+2]`
-/

namespace A193803.P16082713766448229749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169787 (Nat.factorial (A374022 (n + 1)).toNat) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A193803.P16082713766448229749

/-!
# A193804: Square array read by antidiagonals: S(n,k) = n - A193805(n,k).

The programs for A193804, there is no canonical definition to state claims against.
-/

/-! ## A193804.P7060283123455105479

`A025660(A198066(n+1)+A198067(n+1)+n)`
-/

namespace A193804.P7060283123455105479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025660 (A198066 (n + 1) + (A198067 (n + 1) + (n : ℤ))).toNat

end

end A193804.P7060283123455105479

/-! ## A193804.P5366905081112901582

`A025669(A198066(n+1)+A198067(n+1)+n)`
-/

namespace A193804.P5366905081112901582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025669 (A198066 (n + 1) + (A198067 (n + 1) + (n : ℤ))).toNat

end

end A193804.P5366905081112901582

/-! ## A193804.P3107309831891100313

`A004736(n+1)-(A198067(n+1)+A198066(n+1))`
-/

namespace A193804.P3107309831891100313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1) - (A198067 (n + 1) + A198066 (n + 1))

end

end A193804.P3107309831891100313

/-! ## A193804.P14435677800367243831

`sqrt(A055461(n+1))-(A198067(n+1)+A198066(n+1))`
-/

namespace A193804.P14435677800367243831
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A055461 (n + 1) : ℝ) - (A198067 (n + 1) + A198066 (n + 1) : ℝ)

end

end A193804.P14435677800367243831

/-! ## A193804.P6089172440769934747

`A000005(A130321(n))-(A198067(n+1)+A198066(n+1))`
-/

namespace A193804.P6089172440769934747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A130321 n).toNat - (A198067 (n + 1) + A198066 (n + 1))

end

end A193804.P6089172440769934747

/-! ## A193804.P17503843008234588661

`A002260(A038722(n+1))-(A198067(n+1)+A198066(n+1))`
-/

namespace A193804.P17503843008234588661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A038722 (n + 1)).toNat - (A198067 (n + 1) + A198066 (n + 1))

end

end A193804.P17503843008234588661

/-! ## A193804.P10460586379196801352

`C(comp[∑[n]]-n, 2)-n-A193805(n+1)`
-/

namespace A193804.P10460586379196801352
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ) - A193805 (n + 1)

end

end A193804.P10460586379196801352

/-! ## A193804.P2838044711550841262

`A025660(A193805(n+1)+n)`
-/

namespace A193804.P2838044711550841262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025660 (A193805 (n + 1) + (n : ℤ)).toNat

end

end A193804.P2838044711550841262

/-! ## A193804.P16210011691651119056

`A025669(A193805(n+1)+n)`
-/

namespace A193804.P16210011691651119056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025669 (A193805 (n + 1) + (n : ℤ)).toNat

end

end A193804.P16210011691651119056

/-! ## A193804.P9858444408547136123

`A004736(n+1)-A193805(n+1)`
-/

namespace A193804.P9858444408547136123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1) - A193805 (n + 1)

end

end A193804.P9858444408547136123

/-!
# A193805: Square array read by antidiagonals: S(n,k) is the number of m which are prime to n and are not strong divisors of k.

The programs for A193805, there is no canonical definition to state claims against.
-/

/-! ## A193805.P9076105165515221163

`C(comp[∑[n]]-n, 2)-(A193804(n+1)+n)`
-/

namespace A193805.P9076105165515221163
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (A193804 (n + 1) + (n : ℤ))

end

end A193805.P9076105165515221163

/-! ## A193805.P14303729468845610166

`A193592(A193804(n+1)+n)`
-/

namespace A193805.P14303729468845610166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 (A193804 (n + 1) + (n : ℤ)).toNat

end

end A193805.P14303729468845610166

/-! ## A193805.P7081194314364108712

`A193739(A193804(n+1)+n)`
-/

namespace A193805.P7081194314364108712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 (A193804 (n + 1) + (n : ℤ)).toNat

end

end A193805.P7081194314364108712

/-! ## A193805.P13839602509124375479

`A004736(A193804(n+1)+1+n)`
-/

namespace A193805.P13839602509124375479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (A193804 (n + 1) + 1 + (n : ℤ)).toNat

end

end A193805.P13839602509124375479

/-! ## A193805.P7219456871560269148

`A025581(A193804(n+1)+n)+1`
-/

namespace A193805.P7219456871560269148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (A193804 (n + 1) + (n : ℤ)).toNat + 1

end

end A193805.P7219456871560269148

/-! ## A193805.P2625723169237767091

`A198067(n+1)+A198066(n+1)`
-/

namespace A193805.P2625723169237767091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198067 (n + 1) + A198066 (n + 1)

end

end A193805.P2625723169237767091

/-! ## A193805.P5431765741226145340

`sqrt(A055461(n+1))-A193804(n+1)`
-/

namespace A193805.P5431765741226145340
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A055461 (n + 1) : ℝ) - (A193804 (n + 1) : ℝ)

end

end A193805.P5431765741226145340

/-! ## A193805.P14958969028571093634

`A005555(A025581(n)-A193804(n+1))`
-/

namespace A193805.P14958969028571093634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005555 (A025581 n - A193804 (n + 1)).toNat

end

end A193805.P14958969028571093634

/-! ## A193805.P13960972612625671372

`A001057(A099375(n))-A193804(n+1)`
-/

namespace A193805.P13960972612625671372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A099375 n).toNat - A193804 (n + 1)

end

end A193805.P13960972612625671372

/-! ## A193805.P8704835146057607603

`A000005(A130321(n))-A193804(n+1)`
-/

namespace A193805.P8704835146057607603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A130321 n).toNat - A193804 (n + 1)

end

end A193805.P8704835146057607603

/-!
# A193807: Smallest positive integer k such that n*k^2 + 1 is a prime.

The programs for A193807, there is no canonical definition to state claims against.
-/

/-! ## A193807.P9290267625969256451

`A085099(n+1)^A146457(A053000(n))`
-/

namespace A193807.P9290267625969256451
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A085099 (n + 1) : ℚ) ^ (A146457 (A053000 n).toNat : ℤ)

end

end A193807.P9290267625969256451

/-! ## A193807.P10203090118066132050

`A085099(n+1)^A014963(A301131(n))`
-/

namespace A193807.P10203090118066132050
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A085099 (n + 1) : ℚ) ^ (A014963 (A301131 n).toNat : ℤ)

end

end A193807.P10203090118066132050

/-! ## A193807.P14946028318768254572

`A085099(n+1)^A152656(A171882(n))`
-/

namespace A193807.P14946028318768254572
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A085099 (n + 1) : ℚ) ^ (A152656 (A171882 n).toNat : ℤ)

end

end A193807.P14946028318768254572

/-! ## A193807.P9014774060968810854

`A085099(n+1)^A000213(A331126(n))`
-/

namespace A193807.P9014774060968810854
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A085099 (n + 1) : ℚ) ^ (A000213 (A331126 n).toNat : ℤ)

end

end A193807.P9014774060968810854

/-! ## A193807.P1747690213990510807

`A085099(n+1)^A136462(A333901(n))`
-/

namespace A193807.P1747690213990510807
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A085099 (n + 1) : ℚ) ^ (A136462 (A333901 n).toNat : ℤ)

end

end A193807.P1747690213990510807

/-!
# A193813: Least k such that n^n + k + 1 is a prime.

The programs for A193813, there is no canonical definition to state claims against.
-/

/-! ## A193813.P3352239040386929958

`A098682(n+1)-(n+1)^(n+1)-1`
-/

namespace A193813.P3352239040386929958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098682 (n + 1) - ((n + 1) ^ (n + 1) : ℤ) - 1

end

end A193813.P3352239040386929958

/-! ## A193813.P10204483382563395930

`A074966(n+1)-1`
-/

namespace A193813.P10204483382563395930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074966 (n + 1) - 1

end

end A193813.P10204483382563395930

/-! ## A193813.P7946500925432669827

`A260196(n+2)+A074966(n+1)`
-/

namespace A193813.P7946500925432669827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 (n + 2) + A074966 (n + 1)

end

end A193813.P7946500925432669827

/-! ## A193813.P12100479219373472177

`A165326(A017569(n))+A074966(n+1)`
-/

namespace A193813.P12100479219373472177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165326 (A017569 n).toNat + A074966 (n + 1)

end

end A193813.P12100479219373472177

/-! ## A193813.P6249086442448404728

`A085384(A062304(n+1))+A074966(n+1)`
-/

namespace A193813.P6249086442448404728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085384 (A062304 (n + 1)).toNat + A074966 (n + 1)

end

end A193813.P6249086442448404728

/-! ## A193813.P7333264525258053023

`A085384(A151800(n+2))+A074966(n+1)`
-/

namespace A193813.P7333264525258053023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085384 (A151800 (n + 2)).toNat + A074966 (n + 1)

end

end A193813.P7333264525258053023

/-! ## A193813.P15164723791140409521

`(A074966(n+1)+A034856(n+1))%A000096(n+1)`
-/

namespace A193813.P15164723791140409521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A074966 (n + 1) + A034856 (n + 1)) (A000096 (n + 1))

end

end A193813.P15164723791140409521

/-! ## A193813.P5174125779805793658

`A023443(A074966(n+1))`
-/

namespace A193813.P5174125779805793658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A074966 (n + 1)).toNat

end

end A193813.P5174125779805793658

/-! ## A193813.P1967268850321793190

`A023444(A074966(n+1)+1)`
-/

namespace A193813.P1967268850321793190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A074966 (n + 1) + 1).toNat

end

end A193813.P1967268850321793190

/-! ## A193813.P17516406782055066250

`A165326(2*A074966(n+1))+A074966(n+1)`
-/

namespace A193813.P17516406782055066250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165326 (2 * A074966 (n + 1)).toNat + A074966 (n + 1)

end

end A193813.P17516406782055066250

/-! ## A193813.P7468252116488819201

`A034856(2*A074966(n+1))%A074966(n+1)`
-/

namespace A193813.P7468252116488819201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A034856 (2 * A074966 (n + 1)).toNat) (A074966 (n + 1))

end

end A193813.P7468252116488819201

/-!
# A193814: Least k such that n! + k + 1 is a prime.

The programs for A193814, there is no canonical definition to state claims against.
-/

/-! ## A193814.P9321095038489333654

`A033932(n)-1`
-/

namespace A193814.P9321095038489333654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033932 n - 1

end

end A193814.P9321095038489333654

/-! ## A193814.P11203520921549071882

`xor(1, A033932(char[1]+n))`
-/

namespace A193814.P11203520921549071882
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A033932 ((if ∃ j, f1 j = n then 1 else 0) + n))

end

end A193814.P11203520921549071882

/-! ## A193814.P9458502299678408722

`floor(acot(n+1)*A245695(n+1))`
-/

namespace A193814.P9458502299678408722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (n + 1 : ℝ) * (A245695 (n + 1) : ℝ)⌋

end

end A193814.P9458502299678408722

/-! ## A193814.P141492899354740103

`A004442(A033932(n))`
-/

namespace A193814.P141492899354740103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A033932 n).toNat

end

end A193814.P141492899354740103

/-! ## A193814.P741059855537048176

`A023444(A033932(n)+1)`
-/

namespace A193814.P741059855537048176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A033932 n + 1).toNat

end

end A193814.P741059855537048176

/-! ## A193814.P17872071452943888482

`A046666(A033932(n)+1)`
-/

namespace A193814.P17872071452943888482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046666 (A033932 n + 1).toNat

end

end A193814.P17872071452943888482

/-! ## A193814.P10746598595349387174

`A097141(A033932(n)+1)`
-/

namespace A193814.P10746598595349387174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097141 (A033932 n + 1).toNat

end

end A193814.P10746598595349387174

/-! ## A193814.P11218299662553641420

`A249744(A033932(n)+1)`
-/

namespace A193814.P11218299662553641420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249744 (A033932 n + 1).toNat

end

end A193814.P11218299662553641420

/-! ## A193814.P12846908459207193113

`A004524(2*A033932(n))`
-/

namespace A193814.P12846908459207193113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (2 * A033932 n).toNat

end

end A193814.P12846908459207193113

/-! ## A193814.P7897938008029115436

`and(A002446(n), A033932(n))`
-/

namespace A193814.P7897938008029115436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A002446 n) (A033932 n)

end

end A193814.P7897938008029115436

/-!
# A193815: Triangular array: the fusion of polynomial sequences P and Q given by p(n,x) = x^n + x^(n-1) + ... + x+1 and q(n,x)=(x+1)^n.

The programs for A193815, the canonical program `A193815.P12377440765464689058` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A193815 has offset 0).

The definition of A193815 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A193815.P13812833308656194788

`A074909(n)-char[∑[n+2]]`
-/

namespace A193815.P13812833308656194788
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 n - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A193815.P13812833308656194788

namespace A193815

/-- `A074909(n)-char[∑[n+2]]` -/
def P13812833308656194788.Spec : Prop :=
  ∀ n, P13812833308656194788.a n = A193815 n

end A193815

/-! ## A193815.P4321122665098054980

`A193818(n)/A130321(n)`
-/

namespace A193815.P4321122665098054980
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A193818 n : ℚ) / (A130321 n : ℚ)

end

end A193815.P4321122665098054980

namespace A193815

/-- `A193818(n)/A130321(n)` -/
def P4321122665098054980.Spec : Prop :=
  ∀ n, P4321122665098054980.a n = (A193815 n : ℚ)

end A193815

/-! ## A193815.P12377440765464689058

`A074909(abs(n-A127648(n)))`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A193815

/-- `A074909(abs(n-A127648(n)))` -/
def P12377440765464689058.Spec : Prop :=
  ∀ n, P12377440765464689058.a n = A193815 n

theorem P12377440765464689058.correct : P12377440765464689058.Spec := by
  intro n
  simp only [A193815]

end A193815

/-! ## A193815.P8434438556298452075

`A198321(n+1)+A198321(n)`
-/

namespace A193815.P8434438556298452075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198321 (n + 1) + A198321 n

end

end A193815.P8434438556298452075

namespace A193815

/-- `A198321(n+1)+A198321(n)` -/
def P8434438556298452075.Spec : Prop :=
  ∀ n, P8434438556298452075.a n = A193815 n

end A193815

/-! ## A193815.P14753983247907322694

`A007318(A080036(n)-A131843(n))`
-/

namespace A193815.P14753983247907322694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A080036 n - A131843 n).toNat

end

end A193815.P14753983247907322694

namespace A193815

/-- `A007318(A080036(n)-A131843(n))` -/
def P14753983247907322694.Spec : Prop :=
  ∀ n, P14753983247907322694.a n = A193815 n

end A193815

/-! ## A193815.P304552962491913861

`A051597(A028310(n))-A007318(n+1)`
-/

namespace A193815.P304552962491913861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051597 (A028310 n).toNat - A007318 (n + 1)

end

end A193815.P304552962491913861

namespace A193815

/-- `A051597(A028310(n))-A007318(n+1)` -/
def P304552962491913861.Spec : Prop :=
  ∀ n, P304552962491913861.a n = A193815 n

end A193815

/-! ## A193815.P11532765201138886631

`A057428(n)+A074909(n)-A057428(A025581(n))`
-/

namespace A193815.P11532765201138886631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n + (A074909 n - A057428 (A025581 n).toNat)

end

end A193815.P11532765201138886631

namespace A193815

/-- `A057428(n)+A074909(n)-A057428(A025581(n))` -/
def P11532765201138886631.Spec : Prop :=
  ∀ n, P11532765201138886631.a n = A193815 n

end A193815

/-! ## A193815.P14796487418730942831

`A153861(A061579(n))`
-/

namespace A193815.P14796487418730942831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153861 (A061579 n).toNat

end

end A193815.P14796487418730942831

namespace A193815

/-- `A153861(A061579(n))` -/
def P14796487418730942831.Spec : Prop :=
  ∀ n, P14796487418730942831.a n = A193815 n

end A193815

/-! ## A193815.P7096394294342133103

`A153861(A114327(n)+n)`
-/

namespace A193815.P7096394294342133103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153861 (A114327 n + (n : ℤ)).toNat

end

end A193815.P7096394294342133103

namespace A193815

/-- `A153861(A114327(n)+n)` -/
def P7096394294342133103.Spec : Prop :=
  ∀ n, P7096394294342133103.a n = A193815 n

end A193815

/-! ## A193815.P7749825905748808420

`A153861(∑[A198954(n)-1])`
-/

namespace A193815.P7749825905748808420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198954 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153861 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A193815.P7749825905748808420

namespace A193815

/-- `A153861(∑[A198954(n)-1])` -/
def P7749825905748808420.Spec : Prop :=
  ∀ n, P7749825905748808420.a n = A193815 n

end A193815

/-! ## A193815.P9873730663816239750

`A153861(A038722(n+1)-1)`
-/

namespace A193815.P9873730663816239750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153861 (A038722 (n + 1) - 1).toNat

end

end A193815.P9873730663816239750

namespace A193815

/-- `A153861(A038722(n+1)-1)` -/
def P9873730663816239750.Spec : Prop :=
  ∀ n, P9873730663816239750.a n = A193815 n

end A193815

/-! ## A193815.P14150988494060981859

`A153861(A002024(n+1)²-(n+1))`
-/

namespace A193815.P14150988494060981859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153861 (A002024 (n + 1) ^ 2 - (n + 1 : ℤ)).toNat

end

end A193815.P14150988494060981859

namespace A193815

/-- `A153861(A002024(n+1)²-(n+1))` -/
def P14150988494060981859.Spec : Prop :=
  ∀ n, P14150988494060981859.a n = A193815 n

end A193815

/-!
# A193816: Triangular array: the fusion of polynomial sequences P and Q given by p(n,x) = x^n + x^(n-1) + ... + x+1 and q(n,x) = (x+2)^n.

The programs for A193816, the canonical program `A193816.P13211586873865539970` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A193816 has offset 0).

The definition of A193816 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A193816.P13211586873865539970

`A193844(n)-char[∑[n+2]]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A193816

/-- `A193844(n)-char[∑[n+2]]` -/
def P13211586873865539970.Spec : Prop :=
  ∀ n, P13211586873865539970.a n = A193816 n

theorem P13211586873865539970.correct : P13211586873865539970.Spec := by
  intro n
  simp only [A193816]

end A193816

/-! ## A193816.P10423045843738188651

`A193817(A002378(n)%A080036(n))`
-/

namespace A193816.P10423045843738188651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193817 (Int.tmod (A002378 n) (A080036 n)).toNat

end

end A193816.P10423045843738188651

namespace A193816

/-- `A193817(A002378(n)%A080036(n))` -/
def P10423045843738188651.Spec : Prop :=
  ∀ n, P10423045843738188651.a n = A193816 n

end A193816

/-! ## A193816.P13618821948474413070

`A193817(A061579(n))`
-/

namespace A193816.P13618821948474413070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193817 (A061579 n).toNat

end

end A193816.P13618821948474413070

namespace A193816

/-- `A193817(A061579(n))` -/
def P13618821948474413070.Spec : Prop :=
  ∀ n, P13618821948474413070.a n = A193816 n

end A193816

/-! ## A193816.P16179007213513739292

`A193817(A114327(n)+n)`
-/

namespace A193816.P16179007213513739292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193817 (A114327 n + (n : ℤ)).toNat

end

end A193816.P16179007213513739292

namespace A193816

/-- `A193817(A114327(n)+n)` -/
def P16179007213513739292.Spec : Prop :=
  ∀ n, P16179007213513739292.a n = A193816 n

end A193816

/-! ## A193816.P322513286380457955

`A193817(∑[A198954(n)-1])`
-/

namespace A193816.P322513286380457955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198954 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193817 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A193816.P322513286380457955

namespace A193816

/-- `A193817(∑[A198954(n)-1])` -/
def P322513286380457955.Spec : Prop :=
  ∀ n, P322513286380457955.a n = A193816 n

end A193816

/-! ## A193816.P154253166262456096

`A193817(A038722(n+1)-1)`
-/

namespace A193816.P154253166262456096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193817 (A038722 (n + 1) - 1).toNat

end

end A193816.P154253166262456096

namespace A193816

/-- `A193817(A038722(n+1)-1)` -/
def P154253166262456096.Spec : Prop :=
  ∀ n, P154253166262456096.a n = A193816 n

end A193816

/-! ## A193816.P196961787142563690

`A193817(A093995(n+1)-(n+1))`
-/

namespace A193816.P196961787142563690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193817 (A093995 (n + 1) - (n + 1 : ℤ)).toNat

end

end A193816.P196961787142563690

namespace A193816

/-- `A193817(A093995(n+1)-(n+1))` -/
def P196961787142563690.Spec : Prop :=
  ∀ n, P196961787142563690.a n = A193816 n

end A193816

/-! ## A193816.P13436692686145041825

`A193817(∑[A023443(A198954(n))])`
-/

namespace A193816.P13436692686145041825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A198954 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193817 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A193816.P13436692686145041825

namespace A193816

/-- `A193817(∑[A023443(A198954(n))])` -/
def P13436692686145041825.Spec : Prop :=
  ∀ n, P13436692686145041825.a n = A193816 n

end A193816

/-!
# A193817: Mirror of the triangle A193816.

The programs for A193817, the canonical program `A193817.P14940633730507708577` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A193817 has offset 0).

The definition of A193817 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A193817.P5731786631964494789

`A193845(n)-char[∑[n+1]]`
-/

namespace A193817.P5731786631964494789
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193845 n - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A193817.P5731786631964494789

namespace A193817

/-- `A193845(n)-char[∑[n+1]]` -/
def P5731786631964494789.Spec : Prop :=
  ∀ n, P5731786631964494789.a n = A193817 n

end A193817

/-! ## A193817.P14940633730507708577

`xor(A073424(n), A193845(n))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A193817

/-- `xor(A073424(n), A193845(n))` -/
def P14940633730507708577.Spec : Prop :=
  ∀ n, P14940633730507708577.a n = A193817 n

theorem P14940633730507708577.correct : P14940633730507708577.Spec := by
  intro n
  simp only [A193817]

end A193817

/-! ## A193817.P15257923120932342850

`abs(A073423(n)-A193845(n))`
-/

namespace A193817.P15257923120932342850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A073423 n - A193845 n|

end

end A193817.P15257923120932342850

namespace A193817

/-- `abs(A073423(n)-A193845(n))` -/
def P15257923120932342850.Spec : Prop :=
  ∀ n, P15257923120932342850.a n = A193817 n

end A193817

/-! ## A193817.P17431464603374305880

`A193816(A061579(n))`
-/

namespace A193817.P17431464603374305880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193816 (A061579 n).toNat

end

end A193817.P17431464603374305880

namespace A193817

/-- `A193816(A061579(n))` -/
def P17431464603374305880.Spec : Prop :=
  ∀ n, P17431464603374305880.a n = A193817 n

end A193817

/-! ## A193817.P11285684710563772093

`A193816(A038722(n+1)-1)`
-/

namespace A193817.P11285684710563772093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193816 (A038722 (n + 1) - 1).toNat

end

end A193817.P11285684710563772093

namespace A193817

/-- `A193816(A038722(n+1)-1)` -/
def P11285684710563772093.Spec : Prop :=
  ∀ n, P11285684710563772093.a n = A193817 n

end A193817

/-! ## A193817.P11790451945048865914

`A193816(A038722(n+2))`
-/

namespace A193817.P11790451945048865914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193816 (A038722 (n + 2)).toNat

end

end A193817.P11790451945048865914

namespace A193817

/-- `A193816(A038722(n+2))` -/
def P11790451945048865914.Spec : Prop :=
  ∀ n, P11790451945048865914.a n = A193817 n

end A193817

/-!
# A193818: Triangular array: the fusion of polynomial sequences P and Q given by p(n,x) = x^n + x^(n-1) + ... + x+1 and q(n,x)=(2x+1)^n.

The programs for A193818, the canonical program `A193818.P1362525847201267007` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A193818 has offset 0).

The definition of A193818 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A193818.P5806606790696861627

`A115068(n+1)-char[∑[n+2]]`
-/

namespace A193818.P5806606790696861627
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115068 (n + 1) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A193818.P5806606790696861627

namespace A193818

/-- `A115068(n+1)-char[∑[n+2]]` -/
def P5806606790696861627.Spec : Prop :=
  ∀ n, P5806606790696861627.a n = A193818 n

end A193818

/-! ## A193818.P1362525847201267007

`A130321(n)*A193815(n)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A193818

/-- `A130321(n)*A193815(n)` -/
def P1362525847201267007.Spec : Prop :=
  ∀ n, P1362525847201267007.a n = A193818 n

theorem P1362525847201267007.correct : P1362525847201267007.Spec := by
  intro n
  simp only [A193818]

end A193818

/-! ## A193818.P2012749681268302721

`A000079(A025581(n))*A193815(n)`
-/

namespace A193818.P2012749681268302721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A025581 n).toNat * A193815 n

end

end A193818.P2012749681268302721

namespace A193818

/-- `A000079(A025581(n))*A193815(n)` -/
def P2012749681268302721.Spec : Prop :=
  ∀ n, P2012749681268302721.a n = A193818 n

end A193818

/-! ## A193818.P3481801133794451556

`A059268(A061579(n))*A193815(n)`
-/

namespace A193818.P3481801133794451556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 (A061579 n).toNat * A193815 n

end

end A193818.P3481801133794451556

namespace A193818

/-- `A059268(A061579(n))*A193815(n)` -/
def P3481801133794451556.Spec : Prop :=
  ∀ n, P3481801133794451556.a n = A193818 n

end A193818

/-! ## A193818.P12419796983064482265

`A011782(A004736(n+1))*A193815(n)`
-/

namespace A193818.P12419796983064482265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A004736 (n + 1)).toNat * A193815 n

end

end A193818.P12419796983064482265

namespace A193818

/-- `A011782(A004736(n+1))*A193815(n)` -/
def P12419796983064482265.Spec : Prop :=
  ∀ n, P12419796983064482265.a n = A193818 n

end A193818

/-! ## A193818.P6845372801666814843

`A115068(A028310(Δ[A002262(n)]+n))`
-/

namespace A193818.P6845372801666814843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115068 (A028310 (f1 (n + 1) - f1 n + (n : ℤ)).toNat).toNat

end

end A193818.P6845372801666814843

namespace A193818

/-- `A115068(A028310(Δ[A002262(n)]+n))` -/
def P6845372801666814843.Spec : Prop :=
  ∀ n, P6845372801666814843.a n = A193818 n

end A193818

/-! ## A193818.P8905427989474787101

`A193819(A061579(n))`
-/

namespace A193818.P8905427989474787101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193819 (A061579 n).toNat

end

end A193818.P8905427989474787101

namespace A193818

/-- `A193819(A061579(n))` -/
def P8905427989474787101.Spec : Prop :=
  ∀ n, P8905427989474787101.a n = A193818 n

end A193818

/-! ## A193818.P8078342679051850311

`A130321(n)*A153861(A061579(n))`
-/

namespace A193818.P8078342679051850311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 n * A153861 (A061579 n).toNat

end

end A193818.P8078342679051850311

namespace A193818

/-- `A130321(n)*A153861(A061579(n))` -/
def P8078342679051850311.Spec : Prop :=
  ∀ n, P8078342679051850311.a n = A193818 n

end A193818

/-!
# A193819: Mirror of the triangle A193818.

The programs for A193819, the canonical program `A193819.P15604382937138326338` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A193819 has offset 0).

The definition of A193819 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A193819.P7114362780429750515

`A193862(n)-char[∑[n+1]]`
-/

namespace A193819.P7114362780429750515
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193862 n - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A193819.P7114362780429750515

namespace A193819

/-- `A193862(n)-char[∑[n+1]]` -/
def P7114362780429750515.Spec : Prop :=
  ∀ n, P7114362780429750515.a n = A193819 n

end A193819

/-! ## A193819.P15604382937138326338

`A059268(n)*A153861(n)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A193819

/-- `A059268(n)*A153861(n)` -/
def P15604382937138326338.Spec : Prop :=
  ∀ n, P15604382937138326338.a n = A193819 n

theorem P15604382937138326338.correct : P15604382937138326338.Spec := by
  intro n
  simp only [A193819]

end A193819

/-! ## A193819.P9013395689980018076

`abs(A073423(n)-A193862(n))`
-/

namespace A193819.P9013395689980018076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A073423 n - A193862 n|

end

end A193819.P9013395689980018076

namespace A193819

/-- `abs(A073423(n)-A193862(n))` -/
def P9013395689980018076.Spec : Prop :=
  ∀ n, P9013395689980018076.a n = A193819 n

end A193819

/-! ## A193819.P16418887573409813839

`A000079(A002262(n))*A153861(n)`
-/

namespace A193819.P16418887573409813839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A002262 n).toNat * A153861 n

end

end A193819.P16418887573409813839

namespace A193819

/-- `A000079(A002262(n))*A153861(n)` -/
def P16418887573409813839.Spec : Prop :=
  ∀ n, P16418887573409813839.a n = A193819 n

end A193819

/-! ## A193819.P16562073091381634637

`A011782(A002260(n+1))*A153861(n)`
-/

namespace A193819.P16562073091381634637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A002260 (n + 1)).toNat * A153861 n

end

end A193819.P16562073091381634637

namespace A193819

/-- `A011782(A002260(n+1))*A153861(n)` -/
def P16562073091381634637.Spec : Prop :=
  ∀ n, P16562073091381634637.a n = A193819 n

end A193819

/-! ## A193819.P18297718467095563831

`A193818(A061579(n))`
-/

namespace A193819.P18297718467095563831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193818 (A061579 n).toNat

end

end A193819.P18297718467095563831

namespace A193819

/-- `A193818(A061579(n))` -/
def P18297718467095563831.Spec : Prop :=
  ∀ n, P18297718467095563831.a n = A193819 n

end A193819

/-! ## A193819.P11175148079728484064

`A059268(n)*A193815(A061579(n))`
-/

namespace A193819.P11175148079728484064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n * A193815 (A061579 n).toNat

end

end A193819.P11175148079728484064

namespace A193819

/-- `A059268(n)*A193815(A061579(n))` -/
def P11175148079728484064.Spec : Prop :=
  ∀ n, P11175148079728484064.a n = A193819 n

end A193819

/-! ## A193819.P13647364790139825760

`A130321(A061579(n))*A153861(n)`
-/

namespace A193819.P13647364790139825760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 (A061579 n).toNat * A153861 n

end

end A193819.P13647364790139825760

namespace A193819

/-- `A130321(A061579(n))*A153861(n)` -/
def P13647364790139825760.Spec : Prop :=
  ∀ n, P13647364790139825760.a n = A193819 n

end A193819

/-! ## A193819.P7055445300678738419

`A193862(A352520(n))`
-/

namespace A193819.P7055445300678738419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193862 (A352520 n).toNat

end

end A193819.P7055445300678738419

namespace A193819

/-- `A193862(A352520(n))` -/
def P7055445300678738419.Spec : Prop :=
  ∀ n, P7055445300678738419.a n = A193819 n

end A193819

/-!
# A193820: Triangular array: the fusion of polynomial sequences P and Q given by p(n,x)=(x+1)^n and q(n,x)=x^n+x^(n-1)+...+x+1.

The programs for A193820, the canonical program `A193820.P15219830096764478184` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A193820 has offset 0).

The definition of A193820 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A193820.P15219830096764478184

`A007318(n)+a(n-2)%a(n-1)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A193820

/-- `A007318(n)+a(n-2)%a(n-1)` -/
def P15219830096764478184.Spec : Prop :=
  ∀ n, P15219830096764478184.a n = A193820 n

theorem P15219830096764478184.correct : P15219830096764478184.Spec := by
  intro n
  simp only [A193820]

end A193820

/-! ## A193820.P10321043751671316831

`(A071919(n)+A008949(n))/2`
-/

namespace A193820.P10321043751671316831
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A071919 n + A008949 n : ℚ) / 2

end

end A193820.P10321043751671316831

namespace A193820

/-- `(A071919(n)+A008949(n))/2` -/
def P10321043751671316831.Spec : Prop :=
  ∀ n, P10321043751671316831.a n = (A193820 n : ℚ)

end A193820

/-! ## A193820.P15231102165895181268

`A008949(∑[--1%A277919(n)])`
-/

namespace A193820.P15231102165895181268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.tmod (-1) (A277919 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008949 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A193820.P15231102165895181268

namespace A193820

/-- `A008949(∑[--1%A277919(n)])` -/
def P15231102165895181268.Spec : Prop :=
  ∀ n, P15231102165895181268.a n = A193820 n

end A193820

/-! ## A193820.P17744838038780483395

`A128175(A038722(n+1))`
-/

namespace A193820.P17744838038780483395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128175 (A038722 (n + 1)).toNat

end

end A193820.P17744838038780483395

namespace A193820

/-- `A128175(A038722(n+1))` -/
def P17744838038780483395.Spec : Prop :=
  ∀ n, P17744838038780483395.a n = A193820 n

end A193820

/-! ## A193820.P17246435281469799964

`A128175(A061579(n)+1)`
-/

namespace A193820.P17246435281469799964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128175 (A061579 n + 1).toNat

end

end A193820.P17246435281469799964

namespace A193820

/-- `A128175(A061579(n)+1)` -/
def P17246435281469799964.Spec : Prop :=
  ∀ n, P17246435281469799964.a n = A193820 n

end A193820

/-! ## A193820.P13520053825789645805

`A008949(comp[2*n]%eq[0, A129186(n)])`
-/

namespace A193820.P13520053825789645805
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129186 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008949 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n % SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n)

end

end A193820.P13520053825789645805

namespace A193820

/-- `A008949(comp[2*n]%eq[0, A129186(n)])` -/
def P13520053825789645805.Spec : Prop :=
  ∀ n, P13520053825789645805.a n = A193820 n

end A193820

/-! ## A193820.P13928680773939365856

`A054123(A245300(n))`
-/

namespace A193820.P13928680773939365856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054123 (A245300 n).toNat

end

end A193820.P13928680773939365856

namespace A193820

/-- `A054123(A245300(n))` -/
def P13928680773939365856.Spec : Prop :=
  ∀ n, P13928680773939365856.a n = A193820 n

end A193820

/-! ## A193820.P5541940145963829163

`A054123((A214661(n+1)-1)/2)`
-/

namespace A193820.P5541940145963829163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054123 (SequenceMachineLib.roundAway ((A214661 (n + 1) - 1 : ℚ) / 2)).toNat

end

end A193820.P5541940145963829163

namespace A193820

/-- `A054123((A214661(n+1)-1)/2)` -/
def P5541940145963829163.Spec : Prop :=
  ∀ n, P5541940145963829163.a n = A193820 n

end A193820

/-! ## A193820.P16227499570009063646

`A054123(A028242(A214661(n+1)))`
-/

namespace A193820.P16227499570009063646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054123 (A028242 (A214661 (n + 1)).toNat).toNat

end

end A193820.P16227499570009063646

namespace A193820

/-- `A054123(A028242(A214661(n+1)))` -/
def P16227499570009063646.Spec : Prop :=
  ∀ n, P16227499570009063646.a n = A193820 n

end A193820

/-! ## A193820.P8634974659362463963

`A032742(A071919(n)+A008949(n))`
-/

namespace A193820.P8634974659362463963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A071919 n + A008949 n).toNat

end

end A193820.P8634974659362463963

namespace A193820

/-- `A032742(A071919(n)+A008949(n))` -/
def P8634974659362463963.Spec : Prop :=
  ∀ n, P8634974659362463963.a n = A193820 n

end A193820

/-!
# A193821: Triangular array: the fusion of polynomial sequences P and Q given by p(n,x)=(x+2)^n and q(n,x)=x^n+x^(n-1)+...+x+1.

The programs for A193821, there is no canonical definition to state claims against.
-/

/-! ## A193821.P11375306611714388771

`A193822(∑[2*n]%comp[∑[n]])`
-/

namespace A193821.P11375306611714388771
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193822 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A193821.P11375306611714388771

/-! ## A193821.P10419111374932530494

`A193822(∑[char[∑[n]]]²-n-1)`
-/

namespace A193821.P10419111374932530494
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193822 ((((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - (n : ℤ) - 1).toNat

end

end A193821.P10419111374932530494

/-! ## A193821.P11446829659372647203

`and(-1, A193822(A061579(n)))`
-/

namespace A193821.P11446829659372647203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A193822 (A061579 n).toNat)

end

end A193821.P11446829659372647203

/-! ## A193821.P14617035393126329790

`A193822(A061579(n))^A178334(n)`
-/

namespace A193821.P14617035393126329790
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A193822 (A061579 n).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A193821.P14617035393126329790

/-! ## A193821.P11892251238389255779

`A193822(A061579(n))%A159341(n)`
-/

namespace A193821.P11892251238389255779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A193822 (A061579 n).toNat) (A159341 n)

end

end A193821.P11892251238389255779

/-! ## A193821.P18223735020223508838

`gcd(A000038(n), A193822(A061579(n)))`
-/

namespace A193821.P18223735020223508838
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A193822 (A061579 n).toNat)

end

end A193821.P18223735020223508838

/-! ## A193821.P9566186014747153102

`lcm(A033999(n), A193822(A061579(n)))`
-/

namespace A193821.P9566186014747153102
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A193822 (A061579 n).toNat)

end

end A193821.P9566186014747153102

/-! ## A193821.P10362098063246528619

`A007318(∑[n])*A193822(A061579(n))`
-/

namespace A193821.P10362098063246528619
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A193822 (A061579 n).toNat

end

end A193821.P10362098063246528619

/-! ## A193821.P9791720272005640781

`A193822(A061579(n))/A007318(C(2, n))`
-/

namespace A193821.P9791720272005640781
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A193822 (A061579 n).toNat : ℚ) / (A007318 (Nat.choose 2 n) : ℚ)

end

end A193821.P9791720272005640781

/-!
# A193822: Mirror of the triangle A193821.

The programs for A193822, there is no canonical definition to state claims against.
-/

/-! ## A193822.P10469214439554711233

`A193821(∑[2*n]%comp[∑[n]])`
-/

namespace A193822.P10469214439554711233
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193821 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A193822.P10469214439554711233

/-! ## A193822.P7817058849694864224

`A193821(∑[char[∑[n]]]²-(n+1))`
-/

namespace A193822.P7817058849694864224
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193821 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - (n + 1))

end

end A193822.P7817058849694864224

/-! ## A193822.P17055455598955230694

`and(-1, A193821(A061579(n)))`
-/

namespace A193822.P17055455598955230694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A193821 (A061579 n).toNat)

end

end A193822.P17055455598955230694

/-! ## A193822.P9623758122714278567

`gcd(A000038(n), A193821(A061579(n)))`
-/

namespace A193822.P9623758122714278567
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A193821 (A061579 n).toNat)

end

end A193822.P9623758122714278567

/-! ## A193822.P13726657164846802912

`or(A000007(n), A193821(A061579(n)))`
-/

namespace A193822.P13726657164846802912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A193821 (A061579 n).toNat)

end

end A193822.P13726657164846802912

/-! ## A193822.P5188492196595859030

`A143431(n)²*A193821(A061579(n))`
-/

namespace A193822.P5188492196595859030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143431 n ^ 2 * A193821 (A061579 n).toNat

end

end A193822.P5188492196595859030

/-! ## A193822.P12981755309171345569

`A162285(n)²*A193821(A061579(n))`
-/

namespace A193822.P12981755309171345569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162285 n ^ 2 * A193821 (A061579 n).toNat

end

end A193822.P12981755309171345569

/-! ## A193822.P12389968754962341994

`A193821(A061579(n))+A008683(4*(n+1))`
-/

namespace A193822.P12389968754962341994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193821 (A061579 n).toNat + A008683 (4 * (n + 1))

end

end A193822.P12389968754962341994

/-! ## A193822.P8422464487936583872

`A193821(A061579(n))^(A000040(n+1)%2)`
-/

namespace A193822.P8422464487936583872
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A193821 (A061579 n).toNat : ℚ) ^ (Int.tmod (A000040 (n + 1)) 2 : ℤ)

end

end A193822.P8422464487936583872

/-! ## A193822.P11155922909479722361

`A193821(A061579(n))%(A005117(2*n+3)^7)`
-/

namespace A193822.P11155922909479722361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A193821 (A061579 n).toNat) (A005117 (2 * n + 3) ^ 7)

end

end A193822.P11155922909479722361

/-!
# A193823: Triangular array: the fusion of polynomial sequences P and Q given by p(n,x)=(2x+1)^n and q(n,x)=x^n+x^(n-1)+...+x+1.

The programs for A193823, there is no canonical definition to state claims against.
-/

/-! ## A193823.P13154479064043694082

`A193824(∑[2*n]%A080036(n))`
-/

namespace A193823.P13154479064043694082
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193824 (Int.tmod ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A080036 n)).toNat

end

end A193823.P13154479064043694082

/-! ## A193823.P8400541824342308923

`A193824(gcd(A010816(n), A061579(n)))`
-/

namespace A193823.P8400541824342308923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193824 (Int.gcd (A010816 n) (A061579 n))

end

end A193823.P8400541824342308923

/-! ## A193823.P9285602804066453833

`A193824(A061579(n))`
-/

namespace A193823.P9285602804066453833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193824 (A061579 n).toNat

end

end A193823.P9285602804066453833

/-! ## A193823.P8265757106249928214

`A193824(A114327(n)+n)`
-/

namespace A193823.P8265757106249928214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193824 (A114327 n + (n : ℤ)).toNat

end

end A193823.P8265757106249928214

/-! ## A193823.P14860110324227864417

`A193824(A038722(n+1)-1)`
-/

namespace A193823.P14860110324227864417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193824 (A038722 (n + 1) - 1).toNat

end

end A193823.P14860110324227864417

/-! ## A193823.P12477309979159239465

`A193824(A057944(n)+A025581(n))`
-/

namespace A193823.P12477309979159239465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193824 (A057944 n + A025581 n).toNat

end

end A193823.P12477309979159239465

/-! ## A193823.P9864133736834555231

`A193824(A233583(A038722(n+1)))`
-/

namespace A193823.P9864133736834555231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193824 (A233583 (A038722 (n + 1)).toNat).toNat

end

end A193823.P9864133736834555231

/-!
# A193824: Mirror of the triangle A193823.

The programs for A193824, there is no canonical definition to state claims against.
-/

/-! ## A193824.P4032792233126433359

`A112626(2*n-comp[C(n+2, 2)])`
-/

namespace A193824.P4032792233126433359
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 2) 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112626 (2 * n - SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A193824.P4032792233126433359

/-! ## A193824.P7609276105423292103

`A112626(n-A123578(n))`
-/

namespace A193824.P7609276105423292103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112626 ((n : ℤ) - A123578 n).toNat

end

end A193824.P7609276105423292103

/-! ## A193824.P8765547337669064013

`A112626(2*n+1-A080036(n))`
-/

namespace A193824.P8765547337669064013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112626 ((2 * n + 1 : ℤ) - A080036 n).toNat

end

end A193824.P8765547337669064013

/-! ## A193824.P145457445679352532

`A112626(A005408(n)%A080036(n))`
-/

namespace A193824.P145457445679352532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112626 (Int.tmod (A005408 n) (A080036 n)).toNat

end

end A193824.P145457445679352532

/-! ## A193824.P7500798037500811789

`A193823(A061579(n))`
-/

namespace A193824.P7500798037500811789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193823 (A061579 n).toNat

end

end A193824.P7500798037500811789

/-! ## A193824.P16188363421827765260

`A193823(A114327(n)+n)`
-/

namespace A193824.P16188363421827765260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193823 (A114327 n + (n : ℤ)).toNat

end

end A193824.P16188363421827765260

/-! ## A193824.P3984224919722534643

`A193823(A038722(n+1)-1)`
-/

namespace A193824.P3984224919722534643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193823 (A038722 (n + 1) - 1).toNat

end

end A193824.P3984224919722534643

/-! ## A193824.P2066677131599976695

`A193823(A002378(n)%A014132(n+1))`
-/

namespace A193824.P2066677131599976695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193823 (Int.tmod (A002378 n) (A014132 (n + 1))).toNat

end

end A193824.P2066677131599976695

/-! ## A193824.P12875169681409140531

`A193823(A038722(n+2))`
-/

namespace A193824.P12875169681409140531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193823 (A038722 (n + 2)).toNat

end

end A193824.P12875169681409140531

/-! ## A193824.P16535677884457726380

`A112626(n-A000194(2*n))`
-/

namespace A193824.P16535677884457726380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112626 ((n : ℤ) - A000194 (2 * n)).toNat

end

end A193824.P16535677884457726380

/-!
# A193826: Expansion of psi(x^2) * phi(x^7) / (f(-x) * f(-x^7)) in powers of x where phi(), psi(), f() are Ramanujan theta functions.

The programs for A193826, there is no canonical definition to state claims against.
-/

/-! ## A193826.P3041124723242516069

`A102314(4*n)`
-/

namespace A193826.P3041124723242516069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102314 (4 * n)

end

end A193826.P3041124723242516069

/-! ## A193826.P10539496561883324856

`A112212(4*n)`
-/

namespace A193826.P10539496561883324856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112212 (4 * n)

end

end A193826.P10539496561883324856

/-! ## A193826.P6780646888129533634

`abs(A102314(record[A257088(n)]))`
-/

namespace A193826.P6780646888129533634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A102314 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat|

end

end A193826.P6780646888129533634

/-! ## A193826.P8824514300651195745

`abs(A102314(Δ[A001105(n)]-2))`
-/

namespace A193826.P8824514300651195745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001105 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A102314 (f1 (n + 1) - f1 n - 2).toNat|

end

end A193826.P8824514300651195745

/-! ## A193826.P13823654588527175893

`abs(record[A102314(A055032(n+1))])`
-/

namespace A193826.P13823654588527175893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102314 (A055032 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)|

end

end A193826.P13823654588527175893

/-!
# A193828: Even generalized pentagonal numbers.

The programs for A193828, the canonical program `A193828.P7698008167923322003` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A193828 has offset 0).

The definition of A193828 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A193828.P7698008167923322003

`2*A154293(n+1)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A193828

/-- `2*A154293(n+1)` -/
def P7698008167923322003.Spec : Prop :=
  ∀ n, P7698008167923322003.a n = A193828 n

theorem P7698008167923322003.correct : P7698008167923322003.Spec := by
  intro n
  simp only [A193828]

end A193828

/-! ## A193828.P17745185137308288211

`A000217(A108752(n+1))/3`
-/

namespace A193828.P17745185137308288211
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000217 (A108752 (n + 1)).toNat : ℚ) / 3

end

end A193828.P17745185137308288211

namespace A193828

/-- `A000217(A108752(n+1))/3` -/
def P17745185137308288211.Spec : Prop :=
  ∀ n, P17745185137308288211.a n = (A193828 n : ℚ)

end A193828

/-! ## A193828.P17387654971150047159

`∑[n]+∑[gcd(4, n)%4]²`
-/

namespace A193828.P17387654971150047159
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 4 n % 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

end

end A193828.P17387654971150047159

namespace A193828

/-- `∑[n]+∑[gcd(4, n)%4]²` -/
def P17387654971150047159.Spec : Prop :=
  ∀ n, (P17387654971150047159.a n : ℤ) = A193828 n

end A193828

/-! ## A193828.P997801406116752970

`C(and(3*(n+1), -3), 2)/3`
-/

namespace A193828.P997801406116752970
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (Int.land (3 * (n + 1) : ℤ) (-3)).toNat 2 : ℚ) / 3

end

end A193828.P997801406116752970

namespace A193828

/-- `C(and(3*(n+1), -3), 2)/3` -/
def P997801406116752970.Spec : Prop :=
  ∀ n, P997801406116752970.a n = (A193828 n : ℚ)

end A193828

/-! ## A193828.P5158159139260772988

`C(∑[6-a(n-2)], 2)/3` with `a(0)=1, a(1)=3`
-/

namespace A193828.P5158159139260772988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n f1 =>
  6 - f1 (n - 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j).toNat 2 : ℚ) / 3

end

end A193828.P5158159139260772988

namespace A193828

/-- `C(∑[6-a(n-2)], 2)/3` -/
def P5158159139260772988.Spec : Prop :=
  ∀ n, P5158159139260772988.a n = (A193828 n : ℚ)

end A193828

/-! ## A193828.P13799667747513205540

`∑[n]+∑[2-a(n-2)]²` with `a(0)=0, a(1)=1`
-/

namespace A193828.P13799667747513205540
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f2 =>
  2 - f2 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

end

end A193828.P13799667747513205540

namespace A193828

/-- `∑[n]+∑[2-a(n-2)]²` -/
def P13799667747513205540.Spec : Prop :=
  ∀ n, P13799667747513205540.a n = A193828 n

end A193828

/-! ## A193828.P14443444626233166448

`∑[n]+(n+1-∑[n+1]%2)²`
-/

namespace A193828.P14443444626233166448
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + ((n + 1 : ℤ) - (((∑ j ∈ Finset.range (n + 1), f2 j) % 2 : ℕ) : ℤ)) ^ 2

end

end A193828.P14443444626233166448

namespace A193828

/-- `∑[n]+(n+1-∑[n+1]%2)²` -/
def P14443444626233166448.Spec : Prop :=
  ∀ n, P14443444626233166448.a n = A193828 n

end A193828

/-! ## A193828.P13662202303082382397

`A069497(n+1)/3`
-/

namespace A193828.P13662202303082382397
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069497 (n + 1) : ℚ) / 3

end

end A193828.P13662202303082382397

namespace A193828

/-- `A069497(n+1)/3` -/
def P13662202303082382397.Spec : Prop :=
  ∀ n, P13662202303082382397.a n = (A193828 n : ℚ)

end A193828

/-! ## A193828.P12235798973968357094

`∑[n]+∑[A007877(n)]²`
-/

namespace A193828.P12235798973968357094
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007877 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

end

end A193828.P12235798973968357094

namespace A193828

/-- `∑[n]+∑[A007877(n)]²` -/
def P12235798973968357094.Spec : Prop :=
  ∀ n, P12235798973968357094.a n = A193828 n

end A193828

/-! ## A193828.P11479930975674243519

`A046092(n)+1-C(or(2, n), 2)`
-/

namespace A193828.P11479930975674243519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046092 n + 1 - (Nat.choose (Nat.lor 2 n) 2 : ℤ)

end

end A193828.P11479930975674243519

namespace A193828

/-- `A046092(n)+1-C(or(2, n), 2)` -/
def P11479930975674243519.Spec : Prop :=
  ∀ n, P11479930975674243519.a n = A193828 n

end A193828

/-! ## A193828.P11484620152544868335

`∑[A008706(n)]-A098180(n)²`
-/

namespace A193828.P11484620152544868335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A098180 n ^ 2

end

end A193828.P11484620152544868335

namespace A193828

/-- `∑[A008706(n)]-A098180(n)²` -/
def P11484620152544868335.Spec : Prop :=
  ∀ n, P11484620152544868335.a n = A193828 n

end A193828

/-! ## A193828.P17436976286631099587

`A000217(n)+(A021913(n)+n)²`
-/

namespace A193828.P17436976286631099587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n + (A021913 n + (n : ℤ)) ^ 2

end

end A193828.P17436976286631099587

namespace A193828

/-- `A000217(n)+(A021913(n)+n)²` -/
def P17436976286631099587.Spec : Prop :=
  ∀ n, P17436976286631099587.a n = A193828 n

end A193828

/-! ## A193828.P4643465264466786057

`2*(A045943(n)-A268539(n+1))`
-/

namespace A193828.P4643465264466786057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A045943 n - A268539 (n + 1))

end

end A193828.P4643465264466786057

namespace A193828

/-- `2*(A045943(n)-A268539(n+1))` -/
def P4643465264466786057.Spec : Prop :=
  ∀ n, P4643465264466786057.a n = A193828 n

end A193828

/-! ## A193828.P11024331475003619693

`A000217(n)+(A047481(n+1)-n)²`
-/

namespace A193828.P11024331475003619693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n + (A047481 (n + 1) - (n : ℤ)) ^ 2

end

end A193828.P11024331475003619693

namespace A193828

/-- `A000217(n)+(A047481(n+1)-n)²` -/
def P11024331475003619693.Spec : Prop :=
  ∀ n, P11024331475003619693.a n = A193828 n

end A193828

/-! ## A193828.P14731323363524359254

`2*(∑[A287746(n+1)]-A287746(n+1))`
-/

namespace A193828.P14731323363524359254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287746 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j - A287746 (n + 1))

end

end A193828.P14731323363524359254

namespace A193828

/-- `2*(∑[A287746(n+1)]-A287746(n+1))` -/
def P14731323363524359254.Spec : Prop :=
  ∀ n, P14731323363524359254.a n = A193828 n

end A193828

/-! ## A193828.P6711902275540652537

`A000217(A047481(n+1))-A000217(n)`
-/

namespace A193828.P6711902275540652537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A047481 (n + 1)).toNat - A000217 n

end

end A193828.P6711902275540652537

namespace A193828

/-- `A000217(A047481(n+1))-A000217(n)` -/
def P6711902275540652537.Spec : Prop :=
  ∀ n, P6711902275540652537.a n = A193828 n

end A193828

/-! ## A193828.P11105633563332595888

`A219391(n+1)+A204221(n)-A152749(n)`
-/

namespace A193828.P11105633563332595888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219391 (n + 1) + (A204221 n - A152749 n)

end

end A193828.P11105633563332595888

namespace A193828

/-- `A219391(n+1)+A204221(n)-A152749(n)` -/
def P11105633563332595888.Spec : Prop :=
  ∀ n, P11105633563332595888.a n = A193828 n

end A193828

/-! ## A193828.P10350947995678267309

`A154293(n+1)+A154293(n+2)-A287746(n+1)`
-/

namespace A193828.P10350947995678267309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154293 (n + 1) + (A154293 (n + 2) - A287746 (n + 1))

end

end A193828.P10350947995678267309

namespace A193828

/-- `A154293(n+1)+A154293(n+2)-A287746(n+1)` -/
def P10350947995678267309.Spec : Prop :=
  ∀ n, P10350947995678267309.a n = A193828 n

end A193828

/-! ## A193828.P7096956380938787047

`A001318(A047481(n+1))`
-/

namespace A193828.P7096956380938787047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001318 (A047481 (n + 1)).toNat

end

end A193828.P7096956380938787047

namespace A193828

/-- `A001318(A047481(n+1))` -/
def P7096956380938787047.Spec : Prop :=
  ∀ n, P7096956380938787047.a n = A193828 n

end A193828

/-!
# A193829: Irregular triangle read by rows in which row n lists the differences between consecutive divisors of n.

The programs for A193829, the canonical program `A193829.P10500776787776175054` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A193829 has offset 2).

The definition of A193829 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A193829.P10500776787776175054

`A208460(n+2)%A208460(n+3)`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A193829

/-- `A208460(n+2)%A208460(n+3)` -/
def P10500776787776175054.Spec : Prop :=
  ∀ n, P10500776787776175054.a n = A193829 (n + 2)

theorem P10500776787776175054.correct : P10500776787776175054.Spec := by
  intro n
  simp only [A193829, Nat.add_sub_cancel]

end A193829

/-! ## A193829.P3731640935824449907

`A027749(n+2)-A027751(n+2)`
-/

namespace A193829.P3731640935824449907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027749 (n + 2) - A027751 (n + 2)

end

end A193829.P3731640935824449907

namespace A193829

/-- `A027749(n+2)-A027751(n+2)` -/
def P3731640935824449907.Spec : Prop :=
  ∀ n, P3731640935824449907.a n = A193829 (n + 2)

end A193829

/-! ## A193829.P10793490709561737317

`A027749(n+2)+A027749(n+2)-A136195(n+2)`
-/

namespace A193829.P10793490709561737317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027749 (n + 2) + (A027749 (n + 2) - A136195 (n + 2))

end

end A193829.P10793490709561737317

namespace A193829

/-- `A027749(n+2)+A027749(n+2)-A136195(n+2)` -/
def P10793490709561737317.Spec : Prop :=
  ∀ n, P10793490709561737317.a n = A193829 (n + 2)

end A193829

/-! ## A193829.P1208208554698800580

`A136195(n+2)-(A027751(n+2)+A027751(n+2))`
-/

namespace A193829.P1208208554698800580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136195 (n + 2) - (A027751 (n + 2) + A027751 (n + 2))

end

end A193829.P1208208554698800580

namespace A193829

/-- `A136195(n+2)-(A027751(n+2)+A027751(n+2))` -/
def P1208208554698800580.Spec : Prop :=
  ∀ n, P1208208554698800580.a n = A193829 (n + 2)

end A193829

/-! ## A193829.P11953843189055574415

`Δ[eq[n+1, A286101(n+1)]]`
-/

namespace A193829.P11953843189055574415
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286101 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A193829.P11953843189055574415

namespace A193829

/-- `Δ[eq[n+1, A286101(n+1)]]` -/
def P11953843189055574415.Spec : Prop :=
  ∀ n, P11953843189055574415.a n = A193829 (n + 2)

end A193829

/-! ## A193829.P13449943638869295633

`Δ[lt[A051127(n+1), 1]]`
-/

namespace A193829.P13449943638869295633
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051127 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A193829.P13449943638869295633

namespace A193829

/-- `Δ[lt[A051127(n+1), 1]]` -/
def P13449943638869295633.Spec : Prop :=
  ∀ n, P13449943638869295633.a n = A193829 (n + 2)

end A193829

/-! ## A193829.P6863576009440623419

`Δ[eq[A003990(n+1), A004736(n+1)]]`
-/

namespace A193829.P6863576009440623419
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003990 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A193829.P6863576009440623419

namespace A193829

/-- `Δ[eq[A003990(n+1), A004736(n+1)]]` -/
def P6863576009440623419.Spec : Prop :=
  ∀ n, P6863576009440623419.a n = A193829 (n + 2)

end A193829

/-! ## A193829.P18306388945053504348

`Δ[eq[A054526(n+1), A054534(n+1)]]`
-/

namespace A193829.P18306388945053504348
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054526 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054534 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A193829.P18306388945053504348

namespace A193829

/-- `Δ[eq[A054526(n+1), A054534(n+1)]]` -/
def P18306388945053504348.Spec : Prop :=
  ∀ n, P18306388945053504348.a n = A193829 (n + 2)

end A193829

/-! ## A193829.P6053869162831081317

`Δ[eq[A004736(n+1), A123229(n+1)]]`
-/

namespace A193829.P6053869162831081317
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123229 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A193829.P6053869162831081317

namespace A193829

/-- `Δ[eq[A004736(n+1), A123229(n+1)]]` -/
def P6053869162831081317.Spec : Prop :=
  ∀ n, P6053869162831081317.a n = A193829 (n + 2)

end A193829

/-! ## A193829.P12486021831924362392

`Δ[lt[A332342(n+1), 1]]`
-/

namespace A193829.P12486021831924362392
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332342 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A193829.P12486021831924362392

namespace A193829

/-- `Δ[lt[A332342(n+1), 1]]` -/
def P12486021831924362392.Spec : Prop :=
  ∀ n, P12486021831924362392.a n = A193829 (n + 2)

end A193829

/-!
# A193830: Even partition numbers of prime numbers.

The programs for A193830, there is no canonical definition to state claims against.
-/

/-! ## A193830.P3714579918049076624

`A000041(A163997(n+1))`
-/

namespace A193830.P3714579918049076624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A163997 (n + 1)).toNat

end

end A193830.P3714579918049076624

/-! ## A193830.P14605811205583423071

`A000041(p?[A001560(n+1)])`
-/

namespace A193830.P14605811205583423071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001560 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A193830.P14605811205583423071

/-! ## A193830.P2888862419801812697

`A141670(p?[A001560(n+1)])`
-/

namespace A193830.P2888862419801812697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001560 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141670 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A193830.P2888862419801812697

/-! ## A193830.P10110855301146654961

`A097359(p?[A163997(n+1)])`
-/

namespace A193830.P10110855301146654961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163997 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097359 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A193830.P10110855301146654961

/-! ## A193830.P10807552649630905987

`A141670(p?[A163997(n+1)])`
-/

namespace A193830.P10807552649630905987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163997 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141670 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A193830.P10807552649630905987

/-!
# A193831: Odd partition numbers of prime numbers.

The programs for A193831, there is no canonical definition to state claims against.
-/

/-! ## A193831.P1946699676928044865

`A000041(A163998(n+2))`
-/

namespace A193831.P1946699676928044865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A163998 (n + 2)).toNat

end

end A193831.P1946699676928044865

/-! ## A193831.P5895474832080008461

`A000041(p?[A052002(n+1)])`
-/

namespace A193831.P5895474832080008461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052002 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A193831.P5895474832080008461

/-! ## A193831.P11985435665496342514

`A000041(p?[A067567(n+1)])`
-/

namespace A193831.P11985435665496342514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067567 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A193831.P11985435665496342514

/-! ## A193831.P9834473744580698626

`A097359(p?[A067567(n+1)])`
-/

namespace A193831.P9834473744580698626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067567 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097359 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A193831.P9834473744580698626

/-! ## A193831.P3977421183107476449

`A141670(p?[A052002(n+1)])`
-/

namespace A193831.P3977421183107476449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052002 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141670 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A193831.P3977421183107476449

/-!
# A193832: Irregular triangle read by rows in which row n lists 2n-1 copies of 2n-1 and n copies of 2n, for n >= 1.

The programs for A193832, the canonical program `A193832.P6849096457617838116` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A193832 has offset 1).

The definition of A193832 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A193832.P1033440036703916868

`∑[char[∑[gcd(n, ∑[n])]]]`
-/

namespace A193832.P1033440036703916868
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd n (∑ j ∈ Finset.range (n + 1), f4 j)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A193832.P1033440036703916868

namespace A193832

/-- `∑[char[∑[gcd(n, ∑[n])]]]` -/
def P1033440036703916868.Spec : Prop :=
  ∀ n, (P1033440036703916868.a n : ℤ) = A193832 (n + 1)

end A193832

/-! ## A193832.P10927413921210737810

`Δ[A260706(n)]`
-/

namespace A193832.P10927413921210737810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260706 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A193832.P10927413921210737810

namespace A193832

/-- `Δ[A260706(n)]` -/
def P10927413921210737810.Spec : Prop :=
  ∀ n, P10927413921210737810.a n = A193832 (n + 1)

end A193832

/-! ## A193832.P6849096457617838116

`A235963(n)+1`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A193832

/-- `A235963(n)+1` -/
def P6849096457617838116.Spec : Prop :=
  ∀ n, P6849096457617838116.a n = A193832 (n + 1)

theorem P6849096457617838116.correct : P6849096457617838116.Spec := by
  intro n
  simp only [A193832, Nat.add_sub_cancel]

end A193832

/-! ## A193832.P400886481827723686

`ceil(log2(A226806(n+1)))`
-/

namespace A193832.P400886481827723686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A226806 (n + 1) : ℝ)⌉

end

end A193832.P400886481827723686

namespace A193832

/-- `ceil(log2(A226806(n+1)))` -/
def P400886481827723686.Spec : Prop :=
  ∀ n, P400886481827723686.a n = A193832 (n + 1)

end A193832

/-! ## A193832.P573214783301589127

`∑[abs(A203568(n))]+1`
-/

namespace A193832.P573214783301589127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A203568 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A193832.P573214783301589127

namespace A193832

/-- `∑[abs(A203568(n))]+1` -/
def P573214783301589127.Spec : Prop :=
  ∀ n, P573214783301589127.a n = A193832 (n + 1)

end A193832

/-! ## A193832.P10217494044002251162

`∑[abs(A257628(n))]+1`
-/

namespace A193832.P10217494044002251162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A257628 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A193832.P10217494044002251162

namespace A193832

/-- `∑[abs(A257628(n))]+1` -/
def P10217494044002251162.Spec : Prop :=
  ∀ n, P10217494044002251162.a n = A193832 (n + 1)

end A193832

/-! ## A193832.P1122526156129106782

`2*∑[A080995(n)/2]`
-/

namespace A193832.P1122526156129106782
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080995 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A193832.P1122526156129106782

namespace A193832

/-- `2*∑[A080995(n)/2]` -/
def P1122526156129106782.Spec : Prop :=
  ∀ n, P1122526156129106782.a n = (A193832 (n + 1) : ℚ)

end A193832

/-! ## A193832.P989106901402633470

`comp[A001318(n)+n]-n`
-/

namespace A193832.P989106901402633470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001318 n + (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A193832.P989106901402633470

namespace A193832

/-- `comp[A001318(n)+n]-n` -/
def P989106901402633470.Spec : Prop :=
  ∀ n, P989106901402633470.a n = A193832 (n + 1)

end A193832

/-! ## A193832.P7398513613766110726

`∑[char[A001318(n+1)]]+1`
-/

namespace A193832.P7398513613766110726
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001318 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A193832.P7398513613766110726

namespace A193832

/-- `∑[char[A001318(n+1)]]+1` -/
def P7398513613766110726.Spec : Prop :=
  ∀ n, (P7398513613766110726.a n : ℤ) = A193832 (n + 1)

end A193832

/-! ## A193832.P2104186892710560809

`A008620(2*(A073188(n)+1))`
-/

namespace A193832.P2104186892710560809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (2 * (A073188 n + 1)).toNat

end

end A193832.P2104186892710560809

namespace A193832

/-- `A008620(2*(A073188(n)+1))` -/
def P2104186892710560809.Spec : Prop :=
  ∀ n, P2104186892710560809.a n = A193832 (n + 1)

end A193832

/-! ## A193832.P844080530425576421

`A085141(n)+A083277(n+1)`
-/

namespace A193832.P844080530425576421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085141 n + A083277 (n + 1)

end

end A193832.P844080530425576421

namespace A193832

/-- `A085141(n)+A083277(n+1)` -/
def P844080530425576421.Spec : Prop :=
  ∀ n, P844080530425576421.a n = A193832 (n + 1)

end A193832

/-! ## A193832.P1566537130307349682

`n+1-A180446(A180446(n))`
-/

namespace A193832.P1566537130307349682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A180446 (A180446 n).toNat

end

end A193832.P1566537130307349682

namespace A193832

/-- `n+1-A180446(A180446(n))` -/
def P1566537130307349682.Spec : Prop :=
  ∀ n, P1566537130307349682.a n = A193832 (n + 1)

end A193832

/-! ## A193832.P10642642995185851605

`A260706(n+1)-A260706(n)`
-/

namespace A193832.P10642642995185851605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260706 (n + 1) - A260706 n

end

end A193832.P10642642995185851605

namespace A193832

/-- `A260706(n+1)-A260706(n)` -/
def P10642642995185851605.Spec : Prop :=
  ∀ n, P10642642995185851605.a n = A193832 (n + 1)

end A193832

/-! ## A193832.P8308988713432252450

`A186354(n+1)-A183295(n+1)`
-/

namespace A193832.P8308988713432252450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186354 (n + 1) - A183295 (n + 1)

end

end A193832.P8308988713432252450

namespace A193832

/-- `A186354(n+1)-A183295(n+1)` -/
def P8308988713432252450.Spec : Prop :=
  ∀ n, P8308988713432252450.a n = A193832 (n + 1)

end A193832

/-!
# A193842: Triangular array: the fission of the polynomial sequence ((x+1)^n: n >= 0) by the polynomial sequence ((x+2)^n: n >= 0). (Fission is defined at Comments.)

The programs for A193842, the canonical program `A193842.P15840078129144065471` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A193842 has offset 0).

The definition of A193842 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9860 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A193842.P16471757475334810122

`A193848(n)/A130321(n)`
-/

namespace A193842.P16471757475334810122
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A193848 n : ℚ) / (A130321 n : ℚ)

end

end A193842.P16471757475334810122

namespace A193842

/-- `A193848(n)/A130321(n)` -/
def P16471757475334810122.Spec : Prop :=
  ∀ n, P16471757475334810122.a n = (A193842 n : ℚ)

end A193842

/-! ## A193842.P14333296019544156330

`A193843(A061579(n))`
-/

namespace A193842.P14333296019544156330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193843 (A061579 n).toNat

end

end A193842.P14333296019544156330

namespace A193842

/-- `A193843(A061579(n))` -/
def P14333296019544156330.Spec : Prop :=
  ∀ n, P14333296019544156330.a n = A193842 n

end A193842

/-! ## A193842.P5260659009833611372

`A193843(A038722(n+1)-1)`
-/

namespace A193842.P5260659009833611372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193843 (A038722 (n + 1) - 1).toNat

end

end A193842.P5260659009833611372

namespace A193842

/-- `A193843(A038722(n+1)-1)` -/
def P5260659009833611372.Spec : Prop :=
  ∀ n, P5260659009833611372.a n = A193842 n

end A193842

/-! ## A193842.P1755683153152296798

`A193843(A014132(n+1)-2*A002260(n+1))`
-/

namespace A193842.P1755683153152296798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193843 (A014132 (n + 1) - 2 * A002260 (n + 1)).toNat

end

end A193842.P1755683153152296798

namespace A193842

/-- `A193843(A014132(n+1)-2*A002260(n+1))` -/
def P1755683153152296798.Spec : Prop :=
  ∀ n, P1755683153152296798.a n = A193842 n

end A193842

/-! ## A193842.P1012877542943384079

`A193843(A014132(n+1)-A002260(n+1)-A002260(n+1))`
-/

namespace A193842.P1012877542943384079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193843 (A014132 (n + 1) - A002260 (n + 1) - A002260 (n + 1)).toNat

end

end A193842.P1012877542943384079

namespace A193842

/-- `A193843(A014132(n+1)-A002260(n+1)-A002260(n+1))` -/
def P1012877542943384079.Spec : Prop :=
  ∀ n, P1012877542943384079.a n = A193842 n

end A193842

/-! ## A193842.P15840078129144065471

`A119673(A007401(n+1))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A193842

/-- `A119673(A007401(n+1))` -/
def P15840078129144065471.Spec : Prop :=
  ∀ n, P15840078129144065471.a n = A193842 n

theorem P15840078129144065471.correct : P15840078129144065471.Spec := by
  intro n
  simp only [A193842]

end A193842

/-! ## A193842.P17827680351769538417

`A119673(A080036(n)-1)`
-/

namespace A193842.P17827680351769538417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119673 (A080036 n - 1).toNat

end

end A193842.P17827680351769538417

namespace A193842

/-- `A119673(A080036(n)-1)` -/
def P17827680351769538417.Spec : Prop :=
  ∀ n, P17827680351769538417.a n = A193842 n

end A193842

/-! ## A193842.P3362908592177055947

`A119673(eq[0, A073424(n)])`
-/

namespace A193842.P3362908592177055947
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073424 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119673 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A193842.P3362908592177055947

namespace A193842

/-- `A119673(eq[0, A073424(n)])` -/
def P3362908592177055947.Spec : Prop :=
  ∀ n, P3362908592177055947.a n = A193842 n

end A193842

/-! ## A193842.P8505728953894722507

`A119673(eq[1, A023532(n)])`
-/

namespace A193842.P8505728953894722507
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023532 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119673 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A193842.P8505728953894722507

namespace A193842

/-- `A119673(eq[1, A023532(n)])` -/
def P8505728953894722507.Spec : Prop :=
  ∀ n, P8505728953894722507.a n = A193842 n

end A193842

/-! ## A193842.P10664540604191594439

`A119673(A014132(n+1)-1)`
-/

namespace A193842.P10664540604191594439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119673 (A014132 (n + 1) - 1).toNat

end

end A193842.P10664540604191594439

namespace A193842

/-- `A119673(A014132(n+1)-1)` -/
def P10664540604191594439.Spec : Prop :=
  ∀ n, P10664540604191594439.a n = A193842 n

end A193842

/-! ## A193842.P1973987680752367176

`A119673(A002024(n+1)+n)`
-/

namespace A193842.P1973987680752367176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119673 (A002024 (n + 1) + (n : ℤ)).toNat

end

end A193842.P1973987680752367176

namespace A193842

/-- `A119673(A002024(n+1)+n)` -/
def P1973987680752367176.Spec : Prop :=
  ∀ n, P1973987680752367176.a n = A193842 n

end A193842

/-! ## A193842.P2868352060655553898

`A119673(A003056(n)+1+n)`
-/

namespace A193842.P2868352060655553898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119673 (A003056 n + 1 + (n : ℤ)).toNat

end

end A193842.P2868352060655553898

namespace A193842

/-- `A119673(A003056(n)+1+n)` -/
def P2868352060655553898.Spec : Prop :=
  ∀ n, P2868352060655553898.a n = A193842 n

end A193842

/-! ## A193842.P12644941371989789958

`A119673(A195437(n)-(n+1))`
-/

namespace A193842.P12644941371989789958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119673 (A195437 n - (n + 1 : ℤ)).toNat

end

end A193842.P12644941371989789958

namespace A193842

/-- `A119673(A195437(n)-(n+1))` -/
def P12644941371989789958.Spec : Prop :=
  ∀ n, P12644941371989789958.a n = A193842 n

end A193842

/-! ## A193842.P14831333139376537380

`A119673(A195437(n)-1-n)`
-/

namespace A193842.P14831333139376537380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119673 (A195437 n - 1 - (n : ℤ)).toNat

end

end A193842.P14831333139376537380

namespace A193842

/-- `A119673(A195437(n)-1-n)` -/
def P14831333139376537380.Spec : Prop :=
  ∀ n, P14831333139376537380.a n = A193842 n

end A193842

/-! ## A193842.P2137348995406022038

`A119673(lt[0, A256311(n)])`
-/

namespace A193842.P2137348995406022038
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256311 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119673 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A193842.P2137348995406022038

namespace A193842

/-- `A119673(lt[0, A256311(n)])` -/
def P2137348995406022038.Spec : Prop :=
  ∀ n, P2137348995406022038.a n = A193842 n

end A193842

/-! ## A193842.P15351886712899254917

`A193846(n)/A090988(n+1)`
-/

namespace A193842.P15351886712899254917
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A193846 n : ℚ) / (A090988 (n + 1) : ℚ)

end

end A193842.P15351886712899254917

namespace A193842

/-- `A193846(n)/A090988(n+1)` -/
def P15351886712899254917.Spec : Prop :=
  ∀ n, P15351886712899254917.a n = (A193842 n : ℚ)

end A193842

/-!
# A193843: Mirror image of the triangle A193842.

The programs for A193843, the canonical program `A193843.P10306456707657252884` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A193843 has offset 0).

The definition of A193843 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9870 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A193843.P692201653505812156

`A193849(n)/A059268(n)`
-/

namespace A193843.P692201653505812156
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A193849 n : ℚ) / (A059268 n : ℚ)

end

end A193843.P692201653505812156

namespace A193843

/-- `A193849(n)/A059268(n)` -/
def P692201653505812156.Spec : Prop :=
  ∀ n, P692201653505812156.a n = (A193843 n : ℚ)

end A193843

/-! ## A193843.P13618379618771990663

`A193842(∑[char[∑[n]]]²-(n+1))`
-/

namespace A193843.P13618379618771990663
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193842 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - (n + 1))

end

end A193843.P13618379618771990663

namespace A193843

/-- `A193842(∑[char[∑[n]]]²-(n+1))` -/
def P13618379618771990663.Spec : Prop :=
  ∀ n, P13618379618771990663.a n = A193843 n

end A193843

/-! ## A193843.P10306456707657252884

`xor(1, xor(1, A193842(A061579(n))))`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A193843

/-- `xor(1, xor(1, A193842(A061579(n))))` -/
def P10306456707657252884.Spec : Prop :=
  ∀ n, P10306456707657252884.a n = A193843 n

theorem P10306456707657252884.correct : P10306456707657252884.Spec := by
  intro n
  simp only [A193843]

end A193843

/-! ## A193843.P11521764484171366678

`gcd(A000038(n), A193842(A061579(n)))`
-/

namespace A193843.P11521764484171366678
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A193842 (A061579 n).toNat)

end

end A193843.P11521764484171366678

namespace A193843

/-- `gcd(A000038(n), A193842(A061579(n)))` -/
def P11521764484171366678.Spec : Prop :=
  ∀ n, (P11521764484171366678.a n : ℤ) = A193843 n

end A193843

/-! ## A193843.P16051533957999896333

`lcm(A020985(n), A193842(A061579(n)))`
-/

namespace A193843.P16051533957999896333
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A193842 (A061579 n).toNat)

end

end A193843.P16051533957999896333

namespace A193843

/-- `lcm(A020985(n), A193842(A061579(n)))` -/
def P16051533957999896333.Spec : Prop :=
  ∀ n, (P16051533957999896333.a n : ℤ) = A193843 n

end A193843

/-! ## A193843.P10423304272522374813

`or(A000007(n), A193842(A061579(n)))`
-/

namespace A193843.P10423304272522374813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A193842 (A061579 n).toNat)

end

end A193843.P10423304272522374813

namespace A193843

/-- `or(A000007(n), A193842(A061579(n)))` -/
def P10423304272522374813.Spec : Prop :=
  ∀ n, P10423304272522374813.a n = A193843 n

end A193843

/-! ## A193843.P16178230232245156659

`A193842(A061579(n))^Δ[A108872(n+1)]`
-/

namespace A193843.P16178230232245156659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108872 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A193842 (A061579 n).toNat : ℚ) ^ (f1 (n + 1) - f1 n : ℤ)

end

end A193843.P16178230232245156659

namespace A193843

/-- `A193842(A061579(n))^Δ[A108872(n+1)]` -/
def P16178230232245156659.Spec : Prop :=
  ∀ n, P16178230232245156659.a n = (A193843 n : ℚ)

end A193843

/-! ## A193843.P7168588578508277744

`A193842(A061579(n))+and(1, A047467(n+1))`
-/

namespace A193843.P7168588578508277744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193842 (A061579 n).toNat + Int.land 1 (A047467 (n + 1))

end

end A193843.P7168588578508277744

namespace A193843

/-- `A193842(A061579(n))+and(1, A047467(n+1))` -/
def P7168588578508277744.Spec : Prop :=
  ∀ n, P7168588578508277744.a n = A193843 n

end A193843

/-! ## A193843.P10874234150581936920

`lcm(A008836(n+1), A193842(A038722(n+1)-1))`
-/

namespace A193843.P10874234150581936920
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A008836 (n + 1)) (A193842 (A038722 (n + 1) - 1).toNat)

end

end A193843.P10874234150581936920

namespace A193843

/-- `lcm(A008836(n+1), A193842(A038722(n+1)-1))` -/
def P10874234150581936920.Spec : Prop :=
  ∀ n, (P10874234150581936920.a n : ℤ) = A193843 n

end A193843

/-! ## A193843.P3099451871471319031

`A193842(A061579(n))+val(A002618(n+1), 23*n+3)`
-/

namespace A193843.P3099451871471319031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193842 (A061579 n).toNat + (SequenceMachineLib.valuation (A002618 (n + 1)).toNat (23 * n + 3) : ℤ)

end

end A193843.P3099451871471319031

namespace A193843

/-- `A193842(A061579(n))+val(A002618(n+1), 23*n+3)` -/
def P3099451871471319031.Spec : Prop :=
  ∀ n, P3099451871471319031.a n = A193843 n

end A193843

/-! ## A193843.P14243057182390927002

`A193842(A061579(n))+val(A004736(n+1), 23*n+3)`
-/

namespace A193843.P14243057182390927002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193842 (A061579 n).toNat + (SequenceMachineLib.valuation (A004736 (n + 1)).toNat (23 * n + 3) : ℤ)

end

end A193843.P14243057182390927002

namespace A193843

/-- `A193842(A061579(n))+val(A004736(n+1), 23*n+3)` -/
def P14243057182390927002.Spec : Prop :=
  ∀ n, P14243057182390927002.a n = A193843 n

end A193843

/-! ## A193843.P4178438846917505275

`A193842(A061579(n))+val(A010554(n+1), 23*n+3)`
-/

namespace A193843.P4178438846917505275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193842 (A061579 n).toNat + (SequenceMachineLib.valuation (A010554 (n + 1)).toNat (23 * n + 3) : ℤ)

end

end A193843.P4178438846917505275

namespace A193843

/-- `A193842(A061579(n))+val(A010554(n+1), 23*n+3)` -/
def P4178438846917505275.Spec : Prop :=
  ∀ n, P4178438846917505275.a n = A193843 n

end A193843

/-! ## A193843.P4705087845118839909

`A001511(A000265(n+1))*A193842(A061579(n))`
-/

namespace A193843.P4705087845118839909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A000265 (n + 1)).toNat * A193842 (A061579 n).toNat

end

end A193843.P4705087845118839909

namespace A193843

/-- `A001511(A000265(n+1))*A193842(A061579(n))` -/
def P4705087845118839909.Spec : Prop :=
  ∀ n, P4705087845118839909.a n = A193843 n

end A193843

/-! ## A193843.P5817820797381417747

`A119673(A099375(n)+n)`
-/

namespace A193843.P5817820797381417747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119673 (A099375 n + (n : ℤ)).toNat

end

end A193843.P5817820797381417747

namespace A193843

/-- `A119673(A099375(n)+n)` -/
def P5817820797381417747.Spec : Prop :=
  ∀ n, P5817820797381417747.a n = A193843 n

end A193843

/-! ## A193843.P7033628059155741390

`A119673(A038722(n+1)+A003056(n))`
-/

namespace A193843.P7033628059155741390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119673 (A038722 (n + 1) + A003056 n).toNat

end

end A193843.P7033628059155741390

namespace A193843

/-- `A119673(A038722(n+1)+A003056(n))` -/
def P7033628059155741390.Spec : Prop :=
  ∀ n, P7033628059155741390.a n = A193843 n

end A193843

/-! ## A193843.P3795243744136104296

`A119673(A061579(n)+A002024(n+1))`
-/

namespace A193843.P3795243744136104296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119673 (A061579 n + A002024 (n + 1)).toNat

end

end A193843.P3795243744136104296

namespace A193843

/-- `A119673(A061579(n)+A002024(n+1))` -/
def P3795243744136104296.Spec : Prop :=
  ∀ n, P3795243744136104296.a n = A193843 n

end A193843

/-! ## A193843.P4212140147273764055

`A193842(A061579(n))%A000041(n+4)`
-/

namespace A193843.P4212140147273764055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A193842 (A061579 n).toNat) (A000041 (n + 4))

end

end A193843.P4212140147273764055

namespace A193843

/-- `A193842(A061579(n))%A000041(n+4)` -/
def P4212140147273764055.Spec : Prop :=
  ∀ n, P4212140147273764055.a n = A193843 n

end A193843

/-! ## A193843.P11508599830088167368

`A193842(A061579(n))+A035444(2*n+1)`
-/

namespace A193843.P11508599830088167368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193842 (A061579 n).toNat + A035444 (2 * n + 1)

end

end A193843.P11508599830088167368

namespace A193843

/-- `A193842(A061579(n))+A035444(2*n+1)` -/
def P11508599830088167368.Spec : Prop :=
  ∀ n, P11508599830088167368.a n = A193843 n

end A193843

/-! ## A193843.P12115476437222424079

`A000034(2*n)*A193842(A061579(n))`
-/

namespace A193843.P12115476437222424079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (2 * n) * A193842 (A061579 n).toNat

end

end A193843.P12115476437222424079

namespace A193843

/-- `A000034(2*n)*A193842(A061579(n))` -/
def P12115476437222424079.Spec : Prop :=
  ∀ n, P12115476437222424079.a n = A193843 n

end A193843

/-! ## A193843.P15660974695173302467

`A193842(A061579(n))^A014963(2*A000040(n+1))`
-/

namespace A193843.P15660974695173302467
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A193842 (A061579 n).toNat : ℚ) ^ (A014963 (2 * A000040 (n + 1)).toNat : ℤ)

end

end A193843.P15660974695173302467

namespace A193843

/-- `A193842(A061579(n))^A014963(2*A000040(n+1))` -/
def P15660974695173302467.Spec : Prop :=
  ∀ n, P15660974695173302467.a n = (A193843 n : ℚ)

end A193843

/-!
# A193844: Triangular array: the fission of ((x+1)^n) by ((x+1)^n); i.e., the self-fission of Pascal's triangle.

The programs for A193844, the canonical program `A193844.P14945394421984348747` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A193844 has offset 0).

The definition of A193844 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A193844.P12001293911245101738

`or(1, A193816(n))`
-/

namespace A193844.P12001293911245101738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A193816 n)

end

end A193844.P12001293911245101738

namespace A193844

/-- `or(1, A193816(n))` -/
def P12001293911245101738.Spec : Prop :=
  ∀ n, P12001293911245101738.a n = A193844 n

end A193844

/-! ## A193844.P14945394421984348747

`A276985(n)-a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A193844

/-- `A276985(n)-a(n-1)` -/
def P14945394421984348747.Spec : Prop :=
  ∀ n, P14945394421984348747.a n = A193844 n

theorem P14945394421984348747.correct : P14945394421984348747.Spec := by
  intro n
  simp only [A193844]

end A193844

/-! ## A193844.P14597843422124567259

`A193845(A061579(n))`
-/

namespace A193844.P14597843422124567259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193845 (A061579 n).toNat

end

end A193844.P14597843422124567259

namespace A193844

/-- `A193845(A061579(n))` -/
def P14597843422124567259.Spec : Prop :=
  ∀ n, P14597843422124567259.a n = A193844 n

end A193844

/-! ## A193844.P12868191799499871625

`A193858(n)/A130321(n)`
-/

namespace A193844.P12868191799499871625
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A193858 n : ℚ) / (A130321 n : ℚ)

end

end A193844.P12868191799499871625

namespace A193844

/-- `A193858(n)/A130321(n)` -/
def P12868191799499871625.Spec : Prop :=
  ∀ n, P12868191799499871625.a n = (A193844 n : ℚ)

end A193844

/-! ## A193844.P7210966051947158082

`A119258(comp[A000096(n)])`
-/

namespace A193844.P7210966051947158082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119258 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A193844.P7210966051947158082

namespace A193844

/-- `A119258(comp[A000096(n)])` -/
def P7210966051947158082.Spec : Prop :=
  ∀ n, P7210966051947158082.a n = A193844 n

end A193844

/-! ## A193844.P15133622592730156763

`A119258(A007401(n+1))`
-/

namespace A193844.P15133622592730156763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119258 (A007401 (n + 1)).toNat

end

end A193844.P15133622592730156763

namespace A193844

/-- `A119258(A007401(n+1))` -/
def P15133622592730156763.Spec : Prop :=
  ∀ n, P15133622592730156763.a n = A193844 n

end A193844

/-! ## A193844.P16361298683566567721

`A119258(eq[0, A023531(n)])`
-/

namespace A193844.P16361298683566567721
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119258 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A193844.P16361298683566567721

namespace A193844

/-- `A119258(eq[0, A023531(n)])` -/
def P16361298683566567721.Spec : Prop :=
  ∀ n, P16361298683566567721.a n = A193844 n

end A193844

/-! ## A193844.P10940985614576618105

`A119258(eq[0, A073424(n)])`
-/

namespace A193844.P10940985614576618105
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073424 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119258 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A193844.P10940985614576618105

namespace A193844

/-- `A119258(eq[0, A073424(n)])` -/
def P10940985614576618105.Spec : Prop :=
  ∀ n, P10940985614576618105.a n = A193844 n

end A193844

/-! ## A193844.P4227430955951968533

`A119258(eq[1, A023532(n)])`
-/

namespace A193844.P4227430955951968533
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023532 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119258 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A193844.P4227430955951968533

namespace A193844

/-- `A119258(eq[1, A023532(n)])` -/
def P4227430955951968533.Spec : Prop :=
  ∀ n, P4227430955951968533.a n = A193844 n

end A193844

/-! ## A193844.P6434344041159825391

`A119258(lt[0, A173787(n)])`
-/

namespace A193844.P6434344041159825391
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173787 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119258 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A193844.P6434344041159825391

namespace A193844

/-- `A119258(lt[0, A173787(n)])` -/
def P6434344041159825391.Spec : Prop :=
  ∀ n, P6434344041159825391.a n = A193844 n

end A193844

/-! ## A193844.P1184733000811566691

`A119258(lt[1, A055249(n)])`
-/

namespace A193844.P1184733000811566691
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055249 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119258 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A193844.P1184733000811566691

namespace A193844

/-- `A119258(lt[1, A055249(n)])` -/
def P1184733000811566691.Spec : Prop :=
  ∀ n, P1184733000811566691.a n = A193844 n

end A193844

/-! ## A193844.P7374652976429314842

`A119258(lt[1, A055584(n)])`
-/

namespace A193844.P7374652976429314842
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055584 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119258 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A193844.P7374652976429314842

namespace A193844

/-- `A119258(lt[1, A055584(n)])` -/
def P7374652976429314842.Spec : Prop :=
  ∀ n, P7374652976429314842.a n = A193844 n

end A193844

/-! ## A193844.P9083389535952912454

`A119258(A123578(n)+n)`
-/

namespace A193844.P9083389535952912454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119258 (A123578 n + (n : ℤ)).toNat

end

end A193844.P9083389535952912454

namespace A193844

/-- `A119258(A123578(n)+n)` -/
def P9083389535952912454.Spec : Prop :=
  ∀ n, P9083389535952912454.a n = A193844 n

end A193844

/-! ## A193844.P10545828208807896343

`A119258(A014132(n+1)-1)`
-/

namespace A193844.P10545828208807896343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119258 (A014132 (n + 1) - 1).toNat

end

end A193844.P10545828208807896343

namespace A193844

/-- `A119258(A014132(n+1)-1)` -/
def P10545828208807896343.Spec : Prop :=
  ∀ n, P10545828208807896343.a n = A193844 n

end A193844

/-! ## A193844.P13746176078756652974

`A119258(lt[1, A004736(n+1)])`
-/

namespace A193844.P13746176078756652974
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119258 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A193844.P13746176078756652974

namespace A193844

/-- `A119258(lt[1, A004736(n+1)])` -/
def P13746176078756652974.Spec : Prop :=
  ∀ n, P13746176078756652974.a n = A193844 n

end A193844

/-! ## A193844.P10187314489425415800

`A119258(lt[1, A209562(n+1)])`
-/

namespace A193844.P10187314489425415800
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209562 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119258 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A193844.P10187314489425415800

namespace A193844

/-- `A119258(lt[1, A209562(n+1)])` -/
def P10187314489425415800.Spec : Prop :=
  ∀ n, P10187314489425415800.a n = A193844 n

end A193844

/-! ## A193844.P13666161959048473716

`A119258(lt[1, A002260(n+2)])`
-/

namespace A193844.P13666161959048473716
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119258 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A193844.P13666161959048473716

namespace A193844

/-- `A119258(lt[1, A002260(n+2)])` -/
def P13666161959048473716.Spec : Prop :=
  ∀ n, P13666161959048473716.a n = A193844 n

end A193844

/-! ## A193844.P10929808227233345093

`A119258(A002024(n+1)+n)`
-/

namespace A193844.P10929808227233345093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119258 (A002024 (n + 1) + (n : ℤ)).toNat

end

end A193844.P10929808227233345093

namespace A193844

/-- `A119258(A002024(n+1)+n)` -/
def P10929808227233345093.Spec : Prop :=
  ∀ n, P10929808227233345093.a n = A193844 n

end A193844

/-! ## A193844.P3880214743893886561

`A119258(A003056(n)+1+n)`
-/

namespace A193844.P3880214743893886561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119258 (A003056 n + 1 + (n : ℤ)).toNat

end

end A193844.P3880214743893886561

namespace A193844

/-- `A119258(A003056(n)+1+n)` -/
def P3880214743893886561.Spec : Prop :=
  ∀ n, P3880214743893886561.a n = A193844 n

end A193844

/-! ## A193844.P14258598012845977315

`A119258(A003057(n+2)+abs(1-n))`
-/

namespace A193844.P14258598012845977315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119258 (A003057 (n + 2) + |1 - (n : ℤ)|).toNat

end

end A193844.P14258598012845977315

namespace A193844

/-- `A119258(A003057(n+2)+abs(1-n))` -/
def P14258598012845977315.Spec : Prop :=
  ∀ n, P14258598012845977315.a n = A193844 n

end A193844

/-!
# A193845: Mirror of the triangle A193844.

The programs for A193845, the canonical program `A193845.P9516992958703024881` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A193845 has offset 0).

The definition of A193845 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A193845.P4589213657121784911

`or(1, A193817(n))`
-/

namespace A193845.P4589213657121784911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A193817 n)

end

end A193845.P4589213657121784911

namespace A193845

/-- `or(1, A193817(n))` -/
def P4589213657121784911.Spec : Prop :=
  ∀ n, P4589213657121784911.a n = A193845 n

end A193845

/-! ## A193845.P899702881904091948

`A193817(n)+A073424(n)`
-/

namespace A193845.P899702881904091948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193817 n + A073424 n

end

end A193845.P899702881904091948

namespace A193845

/-- `A193817(n)+A073424(n)` -/
def P899702881904091948.Spec : Prop :=
  ∀ n, P899702881904091948.a n = A193845 n

end A193845

/-! ## A193845.P15337353381769651375

`A193859(n)/A059268(n)`
-/

namespace A193845.P15337353381769651375
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A193859 n : ℚ) / (A059268 n : ℚ)

end

end A193845.P15337353381769651375

namespace A193845

/-- `A193859(n)/A059268(n)` -/
def P15337353381769651375.Spec : Prop :=
  ∀ n, P15337353381769651375.a n = (A193845 n : ℚ)

end A193845

/-! ## A193845.P9516992958703024881

`2*A038207(n)-A112857(n)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A193845

/-- `2*A038207(n)-A112857(n)` -/
def P9516992958703024881.Spec : Prop :=
  ∀ n, P9516992958703024881.a n = A193845 n

theorem P9516992958703024881.correct : P9516992958703024881.Spec := by
  intro n
  simp only [A193845]

end A193845

/-! ## A193845.P17627400831053026401

`A115068(n+1)+A038207(n)-A105728(n+1)`
-/

namespace A193845.P17627400831053026401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115068 (n + 1) + (A038207 n - A105728 (n + 1))

end

end A193845.P17627400831053026401

namespace A193845

/-- `A115068(n+1)+A038207(n)-A105728(n+1)` -/
def P17627400831053026401.Spec : Prop :=
  ∀ n, P17627400831053026401.a n = A193845 n

end A193845

/-! ## A193845.P5226203585780979769

`A193844(A061579(n))`
-/

namespace A193845.P5226203585780979769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193844 (A061579 n).toNat

end

end A193845.P5226203585780979769

namespace A193845

/-- `A193844(A061579(n))` -/
def P5226203585780979769.Spec : Prop :=
  ∀ n, P5226203585780979769.a n = A193845 n

end A193845

/-! ## A193845.P12961804493892022502

`A193844(A038722(n+1)-1)`
-/

namespace A193845.P12961804493892022502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193844 (A038722 (n + 1) - 1).toNat

end

end A193845.P12961804493892022502

namespace A193845

/-- `A193844(A038722(n+1)-1)` -/
def P12961804493892022502.Spec : Prop :=
  ∀ n, P12961804493892022502.a n = A193845 n

end A193845

/-! ## A193845.P10187954494414240230

`A193844(A038722(n+2))`
-/

namespace A193845.P10187954494414240230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193844 (A038722 (n + 2)).toNat

end

end A193845.P10187954494414240230

namespace A193845

/-- `A193844(A038722(n+2))` -/
def P10187954494414240230.Spec : Prop :=
  ∀ n, P10187954494414240230.a n = A193845 n

end A193845

/-! ## A193845.P14032777308302464653

`A112857(comp[∑[n]])`
-/

namespace A193845.P14032777308302464653
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112857 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A193845.P14032777308302464653

namespace A193845

/-- `A112857(comp[∑[n]])` -/
def P14032777308302464653.Spec : Prop :=
  ∀ n, P14032777308302464653.a n = A193845 n

end A193845

/-! ## A193845.P11200079427024629902

`A135233(comp[∑[n]])`
-/

namespace A193845.P11200079427024629902
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135233 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A193845.P11200079427024629902

namespace A193845

/-- `A135233(comp[∑[n]])` -/
def P11200079427024629902.Spec : Prop :=
  ∀ n, P11200079427024629902.a n = A193845 n

end A193845

/-! ## A193845.P6595643554333170420

`A119258(A061579(n)+A002024(n+1))`
-/

namespace A193845.P6595643554333170420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119258 (A061579 n + A002024 (n + 1)).toNat

end

end A193845.P6595643554333170420

namespace A193845

/-- `A119258(A061579(n)+A002024(n+1))` -/
def P6595643554333170420.Spec : Prop :=
  ∀ n, P6595643554333170420.a n = A193845 n

end A193845

/-! ## A193845.P2908395686424488735

`A210197(A056537(n+1))`
-/

namespace A193845.P2908395686424488735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210197 (A056537 (n + 1)).toNat

end

end A193845.P2908395686424488735

namespace A193845

/-- `A210197(A056537(n+1))` -/
def P2908395686424488735.Spec : Prop :=
  ∀ n, P2908395686424488735.a n = A193845 n

end A193845

/-!
# A193846: Triangular array: the fission of ((x+2)^n) by ((x+1)^n).

The programs for A193846, the canonical program `A193846.P9935074766537536262` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A193846 has offset 0).

The definition of A193846 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A193846.P14867793575820177891

`2*A193848(n)`
-/

namespace A193846.P14867793575820177891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A193848 n

end

end A193846.P14867793575820177891

namespace A193846

/-- `2*A193848(n)` -/
def P14867793575820177891.Spec : Prop :=
  ∀ n, P14867793575820177891.a n = A193846 n

end A193846

/-! ## A193846.P4347179996045493724

`2*A193849(∑[2*n]%comp[∑[n]])`
-/

namespace A193846.P4347179996045493724
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A193849 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A193846.P4347179996045493724

namespace A193846

/-- `2*A193849(∑[2*n]%comp[∑[n]])` -/
def P4347179996045493724.Spec : Prop :=
  ∀ n, P4347179996045493724.a n = A193846 n

end A193846

/-! ## A193846.P4034072754547589920

`2^(C(comp[∑[n]]-n, 2)-n)*A193842(n)`
-/

namespace A193846.P4034072754547589920
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ) : ℤ) * (A193842 n : ℚ)

end

end A193846.P4034072754547589920

namespace A193846

/-- `2^(C(comp[∑[n]]-n, 2)-n)*A193842(n)` -/
def P4034072754547589920.Spec : Prop :=
  ∀ n, P4034072754547589920.a n = (A193846 n : ℚ)

end A193846

/-! ## A193846.P12252527088890865397

`2*A193849(A061579(n))`
-/

namespace A193846.P12252527088890865397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A193849 (A061579 n).toNat

end

end A193846.P12252527088890865397

namespace A193846

/-- `2*A193849(A061579(n))` -/
def P12252527088890865397.Spec : Prop :=
  ∀ n, P12252527088890865397.a n = A193846 n

end A193846

/-! ## A193846.P9935074766537536262

`A090988(n+1)*A193842(n)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A193846

/-- `A090988(n+1)*A193842(n)` -/
def P9935074766537536262.Spec : Prop :=
  ∀ n, P9935074766537536262.a n = A193846 n

theorem P9935074766537536262.correct : P9935074766537536262.Spec := by
  intro n
  simp only [A193846]

end A193846

/-! ## A193846.P17697724861829749140

`2*A130321(n)*A193842(n)`
-/

namespace A193846.P17697724861829749140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A130321 n * A193842 n)

end

end A193846.P17697724861829749140

namespace A193846

/-- `2*A130321(n)*A193842(n)` -/
def P17697724861829749140.Spec : Prop :=
  ∀ n, P17697724861829749140.a n = A193846 n

end A193846

/-!
# A193847: Mirror of the triangle A193846.

The programs for A193847, there is no canonical definition to state claims against.
-/

/-! ## A193847.P12490396991106318383

`2*A193849(n)`
-/

namespace A193847.P12490396991106318383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A193849 n

end

end A193847.P12490396991106318383

/-! ## A193847.P2136941734912059635

`A193846(∑[2*n]%comp[∑[n]])`
-/

namespace A193847.P2136941734912059635
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193846 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A193847.P2136941734912059635

/-! ## A193847.P8016241605919695764

`A193846(∑[char[∑[n]]]²-(n+1))`
-/

namespace A193847.P8016241605919695764
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193846 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - (n + 1))

end

end A193847.P8016241605919695764

/-! ## A193847.P18220935190991496031

`A004277(A193849(n))`
-/

namespace A193847.P18220935190991496031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A193849 n).toNat

end

end A193847.P18220935190991496031

/-!
# A193848: Triangular array: (1/2)*A193846.

The programs for A193848, the canonical program `A193848.P11847408491001959917` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A193848 has offset 0).

The definition of A193848 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A193848.P16953372655265545039

`2^(C(comp[∑[n]]-n, 2)-(n+1))*A193842(n)`
-/

namespace A193848.P16953372655265545039
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n + 1 : ℤ) : ℤ) * (A193842 n : ℚ)

end

end A193848.P16953372655265545039

namespace A193848

/-- `2^(C(comp[∑[n]]-n, 2)-(n+1))*A193842(n)` -/
def P16953372655265545039.Spec : Prop :=
  ∀ n, P16953372655265545039.a n = (A193848 n : ℚ)

end A193848

/-! ## A193848.P11847408491001959917

`A130321(n)*A193842(n)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A193848

/-- `A130321(n)*A193842(n)` -/
def P11847408491001959917.Spec : Prop :=
  ∀ n, P11847408491001959917.a n = A193848 n

theorem P11847408491001959917.correct : P11847408491001959917.Spec := by
  intro n
  simp only [A193848]

end A193848

/-! ## A193848.P7098733972307523445

`sqrt(A262616(n))*A193842(n)`
-/

namespace A193848.P7098733972307523445
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A262616 n : ℝ) * (A193842 n : ℝ)

end

end A193848.P7098733972307523445

namespace A193848

/-- `sqrt(A262616(n))*A193842(n)` -/
def P7098733972307523445.Spec : Prop :=
  ∀ n, P7098733972307523445.a n = (A193848 n : ℝ)

end A193848

/-! ## A193848.P3529474262384321601

`2^A025581(n)*A193842(n)`
-/

namespace A193848.P3529474262384321601
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A025581 n : ℤ) * (A193842 n : ℚ)

end

end A193848.P3529474262384321601

namespace A193848

/-- `2^A025581(n)*A193842(n)` -/
def P3529474262384321601.Spec : Prop :=
  ∀ n, P3529474262384321601.a n = (A193848 n : ℚ)

end A193848

/-! ## A193848.P15701919888964104735

`A090988(n+1)/2*A193842(n)`
-/

namespace A193848.P15701919888964104735
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A090988 (n + 1) : ℚ) / 2 * (A193842 n : ℚ)

end

end A193848.P15701919888964104735

namespace A193848

/-- `A090988(n+1)/2*A193842(n)` -/
def P15701919888964104735.Spec : Prop :=
  ∀ n, P15701919888964104735.a n = (A193848 n : ℚ)

end A193848

/-! ## A193848.P16428019312374694539

`A059268(A061579(n))*A193842(n)`
-/

namespace A193848.P16428019312374694539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 (A061579 n).toNat * A193842 n

end

end A193848.P16428019312374694539

namespace A193848

/-- `A059268(A061579(n))*A193842(n)` -/
def P16428019312374694539.Spec : Prop :=
  ∀ n, P16428019312374694539.a n = A193848 n

end A193848

/-! ## A193848.P8761711986548677689

`A038207(n)/A007318(n)*A193842(n)`
-/

namespace A193848.P8761711986548677689
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038207 n : ℚ) / (A007318 n : ℚ) * (A193842 n : ℚ)

end

end A193848.P8761711986548677689

namespace A193848

/-- `A038207(n)/A007318(n)*A193842(n)` -/
def P8761711986548677689.Spec : Prop :=
  ∀ n, P8761711986548677689.a n = (A193848 n : ℚ)

end A193848

/-! ## A193848.P9175310296123038722

`A193842(n)/A193844(n)*A193858(n)`
-/

namespace A193848.P9175310296123038722
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A193842 n : ℚ) / (A193844 n : ℚ) * (A193858 n : ℚ)

end

end A193848.P9175310296123038722

namespace A193848

/-- `A193842(n)/A193844(n)*A193858(n)` -/
def P9175310296123038722.Spec : Prop :=
  ∀ n, P9175310296123038722.a n = (A193848 n : ℚ)

end A193848

/-! ## A193848.P12818795858946699457

`A193849(A061579(n))`
-/

namespace A193848.P12818795858946699457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193849 (A061579 n).toNat

end

end A193848.P12818795858946699457

namespace A193848

/-- `A193849(A061579(n))` -/
def P12818795858946699457.Spec : Prop :=
  ∀ n, P12818795858946699457.a n = A193848 n

end A193848

/-! ## A193848.P11480041465883489239

`A193846(n)/2`
-/

namespace A193848.P11480041465883489239
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A193846 n : ℚ) / 2

end

end A193848.P11480041465883489239

namespace A193848

/-- `A193846(n)/2` -/
def P11480041465883489239.Spec : Prop :=
  ∀ n, P11480041465883489239.a n = (A193848 n : ℚ)

end A193848

/-!
# A193849: Triangular array: (1/2)*A193847.

The programs for A193849, the canonical program `A193849.P10773639131772552231` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A193849 has offset 0).

The definition of A193849 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A193849.P10773639131772552231

`A059268(n)*A193843(n)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A193849

/-- `A059268(n)*A193843(n)` -/
def P10773639131772552231.Spec : Prop :=
  ∀ n, P10773639131772552231.a n = A193849 n

theorem P10773639131772552231.correct : P10773639131772552231.Spec := by
  intro n
  simp only [A193849]

end A193849

/-! ## A193849.P5436529065890123253

`2^A002262(n)*A193843(n)`
-/

namespace A193849.P5436529065890123253
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A002262 n : ℤ) * (A193843 n : ℚ)

end

end A193849.P5436529065890123253

namespace A193849

/-- `2^A002262(n)*A193843(n)` -/
def P5436529065890123253.Spec : Prop :=
  ∀ n, P5436529065890123253.a n = (A193849 n : ℚ)

end A193849

/-! ## A193849.P11073554742637974104

`2^A002260(n+1)*A193843(n)/2`
-/

namespace A193849.P11073554742637974104
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A002260 (n + 1) : ℤ) * (A193843 n : ℚ) / 2

end

end A193849.P11073554742637974104

namespace A193849

/-- `2^A002260(n+1)*A193843(n)/2` -/
def P11073554742637974104.Spec : Prop :=
  ∀ n, P11073554742637974104.a n = (A193849 n : ℚ)

end A193849

/-! ## A193849.P13069622977886283805

`A000079(A002262(n))*A193843(n)`
-/

namespace A193849.P13069622977886283805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A002262 n).toNat * A193843 n

end

end A193849.P13069622977886283805

namespace A193849

/-- `A000079(A002262(n))*A193843(n)` -/
def P13069622977886283805.Spec : Prop :=
  ∀ n, P13069622977886283805.a n = A193849 n

end A193849

/-! ## A193849.P5609004338898913045

`A193848(A061579(n))`
-/

namespace A193849.P5609004338898913045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193848 (A061579 n).toNat

end

end A193849.P5609004338898913045

namespace A193849

/-- `A193848(A061579(n))` -/
def P5609004338898913045.Spec : Prop :=
  ∀ n, P5609004338898913045.a n = A193849 n

end A193849

/-! ## A193849.P6297120370367871003

`A059268(n)*A193842(A061579(n))`
-/

namespace A193849.P6297120370367871003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n * A193842 (A061579 n).toNat

end

end A193849.P6297120370367871003

namespace A193849

/-- `A059268(n)*A193842(A061579(n))` -/
def P6297120370367871003.Spec : Prop :=
  ∀ n, P6297120370367871003.a n = A193849 n

end A193849

/-!
# A193850: Triangular array: the fission of ((x+2)^n) by (q(n,x)) given by q(n,x)=x^n+x^(n-1)+...+x+1.

The programs for A193850, there is no canonical definition to state claims against.
-/

/-! ## A193850.P9677613082478403783

`2*A193852(n)`
-/

namespace A193850.P9677613082478403783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A193852 n

end

end A193850.P9677613082478403783

/-! ## A193850.P3047642131646920518

`A004277(A193852(n))`
-/

namespace A193850.P3047642131646920518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A193852 n).toNat

end

end A193850.P3047642131646920518

/-! ## A193850.P11051353509864897061

`A004275(A193852(n)+1)`
-/

namespace A193850.P11051353509864897061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A193852 n + 1).toNat

end

end A193850.P11051353509864897061

/-! ## A193850.P1739665396328818102

`2*A193853(A061579(n))`
-/

namespace A193850.P1739665396328818102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A193853 (A061579 n).toNat

end

end A193850.P1739665396328818102

/-!
# A193851: Mirror of the triangle A193850.

The programs for A193851, there is no canonical definition to state claims against.
-/

/-! ## A193851.P5586489644359783945

`2*A193853(n)`
-/

namespace A193851.P5586489644359783945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A193853 n

end

end A193851.P5586489644359783945

/-! ## A193851.P16083049954459470905

`2*A193852(A061579(n))`
-/

namespace A193851.P16083049954459470905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A193852 (A061579 n).toNat

end

end A193851.P16083049954459470905

/-! ## A193851.P14453051867097312582

`3*A098355(n)-A193860(n)`
-/

namespace A193851.P14453051867097312582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A098355 n - A193860 n

end

end A193851.P14453051867097312582

/-! ## A193851.P3589597820002251852

`A000027(A193853(n)+A193853(n))`
-/

namespace A193851.P3589597820002251852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A193853 n + A193853 n).toNat

end

end A193851.P3589597820002251852

/-! ## A193851.P8513911652993974367

`A193853(n)+A193852(A061579(n))`
-/

namespace A193851.P8513911652993974367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193853 n + A193852 (A061579 n).toNat

end

end A193851.P8513911652993974367

/-!
# A193852: Triangular array: (1/2)*A193850.

The programs for A193852, there is no canonical definition to state claims against.
-/

/-! ## A193852.P12383301890878815459

`A193853(∑[char[∑[n]]]²-(n+1))`
-/

namespace A193852.P12383301890878815459
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193853 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - (n + 1))

end

end A193852.P12383301890878815459

/-! ## A193852.P7325836021966734778

`A193850(n)/2`
-/

namespace A193852.P7325836021966734778
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A193850 n : ℚ) / 2

end

end A193852.P7325836021966734778

/-! ## A193852.P1439769318783290036

`A014682(A193850(n))`
-/

namespace A193852.P1439769318783290036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A193850 n).toNat

end

end A193852.P1439769318783290036

/-! ## A193852.P3166808426093288772

`A328399(A193850(n)-2)`
-/

namespace A193852.P3166808426093288772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328399 (A193850 n - 2).toNat

end

end A193852.P3166808426093288772

/-! ## A193852.P161549090896502925

`A273943(lcm(2, A193850(n)))`
-/

namespace A193852.P161549090896502925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (Int.lcm 2 (A193850 n))

end

end A193852.P161549090896502925

/-!
# A193853: Triangular array: (1/2)*A193851.

The programs for A193853, there is no canonical definition to state claims against.
-/

/-! ## A193853.P10991864098347739367

`(3*A098355(n)-A193860(n))/2`
-/

namespace A193853.P10991864098347739367
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 * A098355 n - A193860 n : ℚ) / 2

end

end A193853.P10991864098347739367

/-! ## A193853.P3025840059019239993

`A193852(A061579(n))`
-/

namespace A193853.P3025840059019239993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193852 (A061579 n).toNat

end

end A193853.P3025840059019239993

/-! ## A193853.P6240922887585994841

`A193852(A114327(n)+n)`
-/

namespace A193853.P6240922887585994841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193852 (A114327 n + (n : ℤ)).toNat

end

end A193853.P6240922887585994841

/-! ## A193853.P3056899570539774107

`(A098355(A007401(n+1))-A193860(n))/2`
-/

namespace A193853.P3056899570539774107
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A098355 (A007401 (n + 1)).toNat - A193860 n : ℚ) / 2

end

end A193853.P3056899570539774107

/-! ## A193853.P9377099089315167757

`A059268(n)*A106516(A014132(n+1))`
-/

namespace A193853.P9377099089315167757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n * A106516 (A014132 (n + 1)).toNat

end

end A193853.P9377099089315167757

/-! ## A193853.P9978117266723200140

`A014682(3*A098355(n)-A193860(n))`
-/

namespace A193853.P9978117266723200140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (3 * A098355 n - A193860 n).toNat

end

end A193853.P9978117266723200140

/-! ## A193853.P10780981914550404537

`A273943(3*A098355(n)-A193860(n))`
-/

namespace A193853.P10780981914550404537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (3 * A098355 n - A193860 n).toNat

end

end A193853.P10780981914550404537

/-!
# A193854: Numbers m such that A062039(m) = 1.

The programs for A193854, there is no canonical definition to state claims against.
-/

/-! ## A193854.P726320035199369431

`eq[1, A062039(n)]`
-/

namespace A193854.P726320035199369431
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062039 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A193854.P726320035199369431

/-! ## A193854.P12689293472123392729

`lt[A062039(round(sqrt(n²+1))), 2]`
-/

namespace A193854.P12689293472123392729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062039 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A193854.P12689293472123392729

/-! ## A193854.P5677042418023915501

`eq[0, A193926(n-1)+a(n-1)]` with `a(0)=0`
-/

namespace A193854.P5677042418023915501
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f2 =>
  A193926 (n - 1) + f2 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A193854.P5677042418023915501

/-! ## A193854.P9399034410085817209

`lt[A000217(A062039(n)+2), 9]`
-/

namespace A193854.P9399034410085817209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A062039 n + 2).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A193854.P9399034410085817209

/-!
# A193856: Triangular array: the fission of (p(n,x)) by ((2x+1)^n), where p(n,x)=(x+1)^n.

The programs for A193856, there is no canonical definition to state claims against.
-/

/-! ## A193856.P12158094405981068281

`A193857(char[A014132(n+1)]*A061579(n))`
-/

namespace A193856.P12158094405981068281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014132 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193857 (((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A061579 n).toNat

end

end A193856.P12158094405981068281

/-! ## A193856.P14871288157304191866

`A193857(∑[A198954(n)-1]%A074909(n)²)`
-/

namespace A193856.P14871288157304191866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198954 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193857 (Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A074909 n ^ 2)).toNat

end

end A193856.P14871288157304191866

/-! ## A193856.P10276125391408491702

`A193857(A061579(n))`
-/

namespace A193856.P10276125391408491702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193857 (A061579 n).toNat

end

end A193856.P10276125391408491702

/-! ## A193856.P2856787420000365511

`A193857(A114327(n)+n)`
-/

namespace A193856.P2856787420000365511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193857 (A114327 n + (n : ℤ)).toNat

end

end A193856.P2856787420000365511

/-! ## A193856.P1919267471811243271

`A193857(∑[A198954(n)-1])`
-/

namespace A193856.P1919267471811243271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198954 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193857 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A193856.P1919267471811243271

/-! ## A193856.P14573020765501110885

`A193857(A038722(n+1)-1)`
-/

namespace A193856.P14573020765501110885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193857 (A038722 (n + 1) - 1).toNat

end

end A193856.P14573020765501110885

/-!
# A193857: Mirror of the triangle A193856.

The programs for A193857, there is no canonical definition to state claims against.
-/

/-! ## A193857.P6790699871647059023

`A193856(A061579(n))`
-/

namespace A193857.P6790699871647059023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193856 (A061579 n).toNat

end

end A193857.P6790699871647059023

/-! ## A193857.P16871137733481633873

`A193856(A114327(n)+n)`
-/

namespace A193857.P16871137733481633873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193856 (A114327 n + (n : ℤ)).toNat

end

end A193857.P16871137733481633873

/-! ## A193857.P12372308684437845368

`A193856(∑[A198954(n)-1])`
-/

namespace A193857.P12372308684437845368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198954 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193856 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A193857.P12372308684437845368

/-! ## A193857.P1257895848486401675

`A193856(A038722(n+1)-1)`
-/

namespace A193857.P1257895848486401675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193856 (A038722 (n + 1) - 1).toNat

end

end A193857.P1257895848486401675

/-! ## A193857.P3655480209991660725

`A193856(A023443(A038722(n+1)))`
-/

namespace A193857.P3655480209991660725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193856 (A023443 (A038722 (n + 1)).toNat).toNat

end

end A193857.P3655480209991660725

/-! ## A193857.P15891571288817937899

`A193856(A038722(n+2))`
-/

namespace A193857.P15891571288817937899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193856 (A038722 (n + 2)).toNat

end

end A193857.P15891571288817937899

/-!
# A193858: Triangular array: the fission of ((x+1)^n) by ((2x+1)^n).

The programs for A193858, the canonical program `A193858.P7170798059563055956` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A193858 has offset 0).

The definition of A193858 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A193858.P6840048618209986758

`2^(C(comp[∑[n]]-n, 2)-(n+1))*A193844(n)`
-/

namespace A193858.P6840048618209986758
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n + 1 : ℤ) : ℤ) * (A193844 n : ℚ)

end

end A193858.P6840048618209986758

namespace A193858

/-- `2^(C(comp[∑[n]]-n, 2)-(n+1))*A193844(n)` -/
def P6840048618209986758.Spec : Prop :=
  ∀ n, P6840048618209986758.a n = (A193858 n : ℚ)

end A193858

/-! ## A193858.P7170798059563055956

`A130321(n)*A193844(n)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A193858

/-- `A130321(n)*A193844(n)` -/
def P7170798059563055956.Spec : Prop :=
  ∀ n, P7170798059563055956.a n = A193858 n

theorem P7170798059563055956.correct : P7170798059563055956.Spec := by
  intro n
  simp only [A193858]

end A193858

/-! ## A193858.P4351343277035624843

`sqrt(A262616(n))*A193844(n)`
-/

namespace A193858.P4351343277035624843
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A262616 n : ℝ) * (A193844 n : ℝ)

end

end A193858.P4351343277035624843

namespace A193858

/-- `sqrt(A262616(n))*A193844(n)` -/
def P4351343277035624843.Spec : Prop :=
  ∀ n, P4351343277035624843.a n = (A193858 n : ℝ)

end A193858

/-! ## A193858.P17638876878152225240

`A000079(A025581(n))*A193844(n)`
-/

namespace A193858.P17638876878152225240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A025581 n).toNat * A193844 n

end

end A193858.P17638876878152225240

namespace A193858

/-- `A000079(A025581(n))*A193844(n)` -/
def P17638876878152225240.Spec : Prop :=
  ∀ n, P17638876878152225240.a n = A193858 n

end A193858

/-! ## A193858.P15044966385189159821

`A059268(A061579(n))*A193844(n)`
-/

namespace A193858.P15044966385189159821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 (A061579 n).toNat * A193844 n

end

end A193858.P15044966385189159821

namespace A193858

/-- `A059268(A061579(n))*A193844(n)` -/
def P15044966385189159821.Spec : Prop :=
  ∀ n, P15044966385189159821.a n = A193858 n

end A193858

/-! ## A193858.P18115123606920979079

`A130321(n)*A193845(A061579(n))`
-/

namespace A193858.P18115123606920979079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 n * A193845 (A061579 n).toNat

end

end A193858.P18115123606920979079

namespace A193858

/-- `A130321(n)*A193845(A061579(n))` -/
def P18115123606920979079.Spec : Prop :=
  ∀ n, P18115123606920979079.a n = A193858 n

end A193858

/-! ## A193858.P8282830376189177202

`A193859(A061579(n))`
-/

namespace A193858.P8282830376189177202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193859 (A061579 n).toNat

end

end A193858.P8282830376189177202

namespace A193858

/-- `A193859(A061579(n))` -/
def P8282830376189177202.Spec : Prop :=
  ∀ n, P8282830376189177202.a n = A193858 n

end A193858

/-! ## A193858.P9839066882717637898

`A006519(A099884(n))*A193844(n)`
-/

namespace A193858.P9839066882717637898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (A099884 n).toNat * A193844 n

end

end A193858.P9839066882717637898

namespace A193858

/-- `A006519(A099884(n))*A193844(n)` -/
def P9839066882717637898.Spec : Prop :=
  ∀ n, P9839066882717637898.a n = A193858 n

end A193858

/-! ## A193858.P9356936195843111190

`A109613(A193816(n))*A130321(n)`
-/

namespace A193858.P9356936195843111190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 (A193816 n).toNat * A130321 n

end

end A193858.P9356936195843111190

namespace A193858

/-- `A109613(A193816(n))*A130321(n)` -/
def P9356936195843111190.Spec : Prop :=
  ∀ n, P9356936195843111190.a n = A193858 n

end A193858

/-! ## A193858.P13595584879164090773

`A193844(n)*A346905(n)/A346906(n)`
-/

namespace A193858.P13595584879164090773
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A193844 n * A346905 n : ℚ) / (A346906 n : ℚ)

end

end A193858.P13595584879164090773

namespace A193858

/-- `A193844(n)*A346905(n)/A346906(n)` -/
def P13595584879164090773.Spec : Prop :=
  ∀ n, P13595584879164090773.a n = (A193858 n : ℚ)

end A193858

/-!
# A193859: Mirror of the triangle A193858.

The programs for A193859, the canonical program `A193859.P4797482589767653868` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A193859 has offset 0).

The definition of A193859 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A193859.P10375622355373385614

`2^(n-C(∑[char[∑[n]]], 2))*A193845(n)`
-/

namespace A193859.P10375622355373385614
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) : ℤ) * (A193845 n : ℚ)

end

end A193859.P10375622355373385614

namespace A193859

/-- `2^(n-C(∑[char[∑[n]]], 2))*A193845(n)` -/
def P10375622355373385614.Spec : Prop :=
  ∀ n, P10375622355373385614.a n = (A193859 n : ℚ)

end A193859

/-! ## A193859.P4797482589767653868

`A059268(n)*A193845(n)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A193859

/-- `A059268(n)*A193845(n)` -/
def P4797482589767653868.Spec : Prop :=
  ∀ n, P4797482589767653868.a n = A193859 n

theorem P4797482589767653868.correct : P4797482589767653868.Spec := by
  intro n
  simp only [A193859]

end A193859

/-! ## A193859.P4718531191825635957

`2^A002262(n)*A193845(n)`
-/

namespace A193859.P4718531191825635957
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A002262 n : ℤ) * (A193845 n : ℚ)

end

end A193859.P4718531191825635957

namespace A193859

/-- `2^A002262(n)*A193845(n)` -/
def P4718531191825635957.Spec : Prop :=
  ∀ n, P4718531191825635957.a n = (A193859 n : ℚ)

end A193859

/-! ## A193859.P14376091355322808645

`or(1, A193817(n))*A059268(n)`
-/

namespace A193859.P14376091355322808645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A193817 n) * A059268 n

end

end A193859.P14376091355322808645

namespace A193859

/-- `or(1, A193817(n))*A059268(n)` -/
def P14376091355322808645.Spec : Prop :=
  ∀ n, P14376091355322808645.a n = A193859 n

end A193859

/-! ## A193859.P6268166780582080183

`A193858(A061579(n))`
-/

namespace A193859.P6268166780582080183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193858 (A061579 n).toNat

end

end A193859.P6268166780582080183

namespace A193859

/-- `A193858(A061579(n))` -/
def P6268166780582080183.Spec : Prop :=
  ∀ n, P6268166780582080183.a n = A193859 n

end A193859

/-! ## A193859.P10970886082834149645

`A059268(n)*A193844(A061579(n))`
-/

namespace A193859.P10970886082834149645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n * A193844 (A061579 n).toNat

end

end A193859.P10970886082834149645

namespace A193859

/-- `A059268(n)*A193844(A061579(n))` -/
def P10970886082834149645.Spec : Prop :=
  ∀ n, P10970886082834149645.a n = A193859 n

end A193859

/-! ## A193859.P3489539635762177879

`A130321(A061579(n))*A193845(n)`
-/

namespace A193859.P3489539635762177879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 (A061579 n).toNat * A193845 n

end

end A193859.P3489539635762177879

namespace A193859

/-- `A130321(A061579(n))*A193845(n)` -/
def P3489539635762177879.Spec : Prop :=
  ∀ n, P3489539635762177879.a n = A193859 n

end A193859

/-! ## A193859.P2913672507623946592

`A059268(n)*A112857(comp[∑[n]])`
-/

namespace A193859.P2913672507623946592
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n * A112857 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A193859.P2913672507623946592

namespace A193859

/-- `A059268(n)*A112857(comp[∑[n]])` -/
def P2913672507623946592.Spec : Prop :=
  ∀ n, P2913672507623946592.a n = A193859 n

end A193859

/-!
# A193860: Triangular array: the fission of ((2x+1)^n) by (q(n,x)), where q(n,x)=x^n+x^(n-1)+...+x+1.

The programs for A193860, there is no canonical definition to state claims against.
-/

/-! ## A193860.P7177234578356419299

`A193861(A061579(n))`
-/

namespace A193860.P7177234578356419299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193861 (A061579 n).toNat

end

end A193860.P7177234578356419299

/-! ## A193860.P5778582690362671137

`A112626(A099375(n)+1+n)`
-/

namespace A193860.P5778582690362671137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112626 (A099375 n + 1 + (n : ℤ)).toNat

end

end A193860.P5778582690362671137

/-! ## A193860.P12155410947084162357

`A112626(A061579(A007401(n+1)))`
-/

namespace A193860.P12155410947084162357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112626 (A061579 (A007401 (n + 1)).toNat).toNat

end

end A193860.P12155410947084162357

/-! ## A193860.P11746871051391682946

`A112626(A061579(n)+∑[A073423(n)])`
-/

namespace A193860.P11746871051391682946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073423 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112626 (A061579 n + ∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A193860.P11746871051391682946

/-! ## A193860.P674819587591392870

`A112626(A114327(n)+∑[A035214(n)])`
-/

namespace A193860.P674819587591392870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035214 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112626 (A114327 n + ∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A193860.P674819587591392870

/-! ## A193860.P17460253853995250675

`A112626(A114327(n)+A014132(n+1))`
-/

namespace A193860.P17460253853995250675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112626 (A114327 n + A014132 (n + 1)).toNat

end

end A193860.P17460253853995250675

/-! ## A193860.P2692157160672819472

`A112626(A061579(n)+A003057(n+2))`
-/

namespace A193860.P2692157160672819472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112626 (A061579 n + A003057 (n + 2)).toNat

end

end A193860.P2692157160672819472

/-! ## A193860.P15678959370670506451

`A112626(A038722(n+1)+A002024(n+1))`
-/

namespace A193860.P15678959370670506451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112626 (A038722 (n + 1) + A002024 (n + 1)).toNat

end

end A193860.P15678959370670506451

/-! ## A193860.P8062931475500438122

`A112626(A007401(n+1)+A114327(n)+1)`
-/

namespace A193860.P8062931475500438122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112626 (A007401 (n + 1) + (A114327 n + 1)).toNat

end

end A193860.P8062931475500438122

/-! ## A193860.P617106958324807672

`A193823(lt[1, A007318(n+1)])`
-/

namespace A193860.P617106958324807672
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193823 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A193860.P617106958324807672

/-! ## A193860.P2981892658428125063

`A193823(lt[1, A108625(n+1)])`
-/

namespace A193860.P2981892658428125063
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108625 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193823 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A193860.P2981892658428125063

/-! ## A193860.P10201757000524018284

`A193823(lt[1, A007318(n)]-1)`
-/

namespace A193860.P10201757000524018284
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193823 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n - 1)

end

end A193860.P10201757000524018284

/-! ## A193860.P17317307884610599430

`A193823(lt[1, A108625(n)]-1)`
-/

namespace A193860.P17317307884610599430
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108625 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193823 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n - 1)

end

end A193860.P17317307884610599430

/-! ## A193860.P2413522473013760295

`A193823(lt[2, A002260(n+1)]-2)`
-/

namespace A193860.P2413522473013760295
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193823 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n - 2)

end

end A193860.P2413522473013760295

/-! ## A193860.P8011407649476744189

`A193823(lt[A001358(n+1), A193843(n)])`
-/

namespace A193860.P8011407649476744189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193843 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193823 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A193860.P8011407649476744189

/-! ## A193860.P8405632224926205275

`A193823(lt[2, A193843(n)-A004277(n)])`
-/

namespace A193860.P8405632224926205275
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193843 n - A004277 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193823 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A193860.P8405632224926205275

/-! ## A193860.P9882899894126524536

`A193823(lt[2*A004277(n), A193843(n)])`
-/

namespace A193860.P9882899894126524536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A004277 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193843 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193823 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A193860.P9882899894126524536

/-! ## A193860.P17160824825216525122

`A193823(lt[2, A193843(n)/A004277(n)])`
-/

namespace A193860.P17160824825216525122
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A193843 n : ℚ) / (A004277 n : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193823 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n)

end

end A193860.P17160824825216525122

/-! ## A193860.P2235277109360572153

`A193823(lt[1, A193592(n+1)])`
-/

namespace A193860.P2235277109360572153
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193823 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A193860.P2235277109360572153

/-! ## A193860.P2887529914727544318

`A193823(lt[1, A193592(n)]-1)`
-/

namespace A193860.P2887529914727544318
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193823 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n - 1)

end

end A193860.P2887529914727544318

/-!
# A193861: Mirror of the triangle A193860.

The programs for A193861, there is no canonical definition to state claims against.
-/

/-! ## A193861.P9013898520560831573

`A193860(A061579(n))`
-/

namespace A193861.P9013898520560831573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193860 (A061579 n).toNat

end

end A193861.P9013898520560831573

/-! ## A193861.P12263198440273225161

`A193860(A038722(n+1)-1)`
-/

namespace A193861.P12263198440273225161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193860 (A038722 (n + 1) - 1).toNat

end

end A193861.P12263198440273225161

/-! ## A193861.P9000137285929807351

`A193860(A038722(n+2))`
-/

namespace A193861.P9000137285929807351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193860 (A038722 (n + 2)).toNat

end

end A193861.P9000137285929807351

/-! ## A193861.P12529889381830709801

`A112626(comp[∑[n]])`
-/

namespace A193861.P12529889381830709801
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112626 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A193861.P12529889381830709801

/-! ## A193861.P7345561815897491283

`A193824(lt[1, A002262(n)])`
-/

namespace A193861.P7345561815897491283
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193824 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A193861.P7345561815897491283

/-! ## A193861.P5618695098198619072

`A193824(lt[n, A193824(n)]+2)`
-/

namespace A193861.P5618695098198619072
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193824 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193824 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 2)

end

end A193861.P5618695098198619072

/-!
# A193862: Mirror of the triangle A115068.

The programs for A193862, the canonical program `A193862.P608042678390646429` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A193862 has offset 0).

The definition of A193862 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A193862.P10911702425125676029

`A276985(n+1)/2`
-/

namespace A193862.P10911702425125676029
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A276985 (n + 1) : ℚ) / 2

end

end A193862.P10911702425125676029

namespace A193862

/-- `A276985(n+1)/2` -/
def P10911702425125676029.Spec : Prop :=
  ∀ n, P10911702425125676029.a n = (A193862 n : ℚ)

end A193862

/-! ## A193862.P9878258552199224584

`A193819(n)+char[∑[n+1]]`
-/

namespace A193862.P9878258552199224584
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193819 n + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A193862.P9878258552199224584

namespace A193862

/-- `A193819(n)+char[∑[n+1]]` -/
def P9878258552199224584.Spec : Prop :=
  ∀ n, P9878258552199224584.a n = A193862 n

end A193862

/-! ## A193862.P608042678390646429

`A059268(n)*A135278(n)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A193862

/-- `A059268(n)*A135278(n)` -/
def P608042678390646429.Spec : Prop :=
  ∀ n, P608042678390646429.a n = A193862 n

theorem P608042678390646429.correct : P608042678390646429.Spec := by
  intro n
  simp only [A193862]

end A193862

/-! ## A193862.P5311905234433237705

`A133341(n)*A238303(n)`
-/

namespace A193862.P5311905234433237705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133341 n * A238303 n

end

end A193862.P5311905234433237705

namespace A193862

/-- `A133341(n)*A238303(n)` -/
def P5311905234433237705.Spec : Prop :=
  ∀ n, P5311905234433237705.a n = A193862 n

end A193862

/-! ## A193862.P11608592595054882092

`A059268(n)*A074909(n+1)`
-/

namespace A193862.P11608592595054882092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n * A074909 (n + 1)

end

end A193862.P11608592595054882092

namespace A193862

/-- `A059268(n)*A074909(n+1)` -/
def P11608592595054882092.Spec : Prop :=
  ∀ n, P11608592595054882092.a n = A193862 n

end A193862

/-! ## A193862.P1824126250383449745

`A143376(n+1)/A130321(n)`
-/

namespace A193862.P1824126250383449745
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143376 (n + 1) : ℚ) / (A130321 n : ℚ)

end

end A193862.P1824126250383449745

namespace A193862

/-- `A143376(n+1)/A130321(n)` -/
def P1824126250383449745.Spec : Prop :=
  ∀ n, P1824126250383449745.a n = (A193862 n : ℚ)

end A193862

/-! ## A193862.P15352205589935891095

`A007318(comp[∑[n]])*A059268(n)`
-/

namespace A193862.P15352205589935891095
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) * A059268 n

end

end A193862.P15352205589935891095

namespace A193862

/-- `A007318(comp[∑[n]])*A059268(n)` -/
def P15352205589935891095.Spec : Prop :=
  ∀ n, P15352205589935891095.a n = A193862 n

end A193862

/-! ## A193862.P12608074657288360025

`(A209757(n+1)+A013609(n))/2`
-/

namespace A193862.P12608074657288360025
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A209757 (n + 1) + A013609 n : ℚ) / 2

end

end A193862.P12608074657288360025

namespace A193862

/-- `(A209757(n+1)+A013609(n))/2` -/
def P12608074657288360025.Spec : Prop :=
  ∀ n, P12608074657288360025.a n = (A193862 n : ℚ)

end A193862

/-! ## A193862.P4162229941810707150

`(A209761(n+1)+A209706(n+1))/2`
-/

namespace A193862.P4162229941810707150
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A209761 (n + 1) + A209706 (n + 1) : ℚ) / 2

end

end A193862.P4162229941810707150

namespace A193862

/-- `(A209761(n+1)+A209706(n+1))/2` -/
def P4162229941810707150.Spec : Prop :=
  ∀ n, P4162229941810707150.a n = (A193862 n : ℚ)

end A193862

/-! ## A193862.P8924904047799687883

`(A210234(n+1)+A210233(n+1))/2`
-/

namespace A193862.P8924904047799687883
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A210234 (n + 1) + A210233 (n + 1) : ℚ) / 2

end

end A193862.P8924904047799687883

namespace A193862

/-- `(A210234(n+1)+A210233(n+1))/2` -/
def P8924904047799687883.Spec : Prop :=
  ∀ n, P8924904047799687883.a n = (A193862 n : ℚ)

end A193862

/-! ## A193862.P4531523050766541660

`A193844(n)+Δ[A193844(n)/2]`
-/

namespace A193862.P4531523050766541660
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A193844 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A193844 n : ℚ) + (f1 (n + 1) - f1 n)

end

end A193862.P4531523050766541660

namespace A193862

/-- `A193844(n)+Δ[A193844(n)/2]` -/
def P4531523050766541660.Spec : Prop :=
  ∀ n, P4531523050766541660.a n = (A193862 n : ℚ)

end A193862

/-! ## A193862.P1945064832464254304

`(A193844(n+1)+A193844(n))/2`
-/

namespace A193862.P1945064832464254304
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A193844 (n + 1) + A193844 n : ℚ) / 2

end

end A193862.P1945064832464254304

namespace A193862

/-- `(A193844(n+1)+A193844(n))/2` -/
def P1945064832464254304.Spec : Prop :=
  ∀ n, P1945064832464254304.a n = (A193862 n : ℚ)

end A193862

/-! ## A193862.P1689116169472509849

`A115068(A038722(n+1))`
-/

namespace A193862.P1689116169472509849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115068 (A038722 (n + 1)).toNat

end

end A193862.P1689116169472509849

namespace A193862

/-- `A115068(A038722(n+1))` -/
def P1689116169472509849.Spec : Prop :=
  ∀ n, P1689116169472509849.a n = A193862 n

end A193862

/-! ## A193862.P8918824424317966805

`A115068(A061579(n)+1)`
-/

namespace A193862.P8918824424317966805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115068 (A061579 n + 1).toNat

end

end A193862.P8918824424317966805

namespace A193862

/-- `A115068(A061579(n)+1)` -/
def P8918824424317966805.Spec : Prop :=
  ∀ n, P8918824424317966805.a n = A193862 n

end A193862

/-! ## A193862.P5545391894833113757

`A193819(A066182(n+1))`
-/

namespace A193862.P5545391894833113757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193819 (A066182 (n + 1)).toNat

end

end A193862.P5545391894833113757

namespace A193862

/-- `A193819(A066182(n+1))` -/
def P5545391894833113757.Spec : Prop :=
  ∀ n, P5545391894833113757.a n = A193862 n

end A193862

/-! ## A193862.P3630554364032265757

`A082137(comp[∑[n]])`
-/

namespace A193862.P3630554364032265757
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082137 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A193862.P3630554364032265757

namespace A193862

/-- `A082137(comp[∑[n]])` -/
def P3630554364032265757.Spec : Prop :=
  ∀ n, P3630554364032265757.a n = A193862 n

end A193862

/-! ## A193862.P67279176549428774

`A013609(comp[∑[n]])/2`
-/

namespace A193862.P67279176549428774
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013609 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) : ℚ) / 2

end

end A193862.P67279176549428774

namespace A193862

/-- `A013609(comp[∑[n]])/2` -/
def P67279176549428774.Spec : Prop :=
  ∀ n, P67279176549428774.a n = (A193862 n : ℚ)

end A193862

/-! ## A193862.P10785456941136544087

`A182059(comp[∑[n]])/2`
-/

namespace A193862.P10785456941136544087
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A182059 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) : ℚ) / 2

end

end A193862.P10785456941136544087

namespace A193862

/-- `A182059(comp[∑[n]])/2` -/
def P10785456941136544087.Spec : Prop :=
  ∀ n, P10785456941136544087.a n = (A193862 n : ℚ)

end A193862

/-! ## A193862.P15735573215052936741

`1/2*A013609(A014132(n+1))`
-/

namespace A193862.P15735573215052936741
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (A013609 (A014132 (n + 1)).toNat : ℚ)

end

end A193862.P15735573215052936741

namespace A193862

/-- `1/2*A013609(A014132(n+1))` -/
def P15735573215052936741.Spec : Prop :=
  ∀ n, P15735573215052936741.a n = (A193862 n : ℚ)

end A193862

/-! ## A193862.P7287761666533242724

`A038207(A099375(n)+n)/2`
-/

namespace A193862.P7287761666533242724
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038207 (A099375 n + (n : ℤ)).toNat : ℚ) / 2

end

end A193862.P7287761666533242724

namespace A193862

/-- `A038207(A099375(n)+n)/2` -/
def P7287761666533242724.Spec : Prop :=
  ∀ n, P7287761666533242724.a n = (A193862 n : ℚ)

end A193862

/-!
# A193865: a(n) = (A187108(n+1)-A187108(n))/2.

The programs for A193865, there is no canonical definition to state claims against.
-/

/-! ## A193865.P4429946743940621102

`(A187108(n+2)-A187108(n+1))/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A193865.P4429946743940621102
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A187108 (n + 2) - A187108 (n + 1) : ℚ) / 2

end

end A193865.P4429946743940621102

/-! ## A193865.P6268611830525810425

`Δ[record[A070167(2*n+1)/2]]`
-/

namespace A193865.P6268611830525810425
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A070167 (2 * n + 1) : ℚ) / 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A193865.P6268611830525810425

/-! ## A193865.P2550504248171895392

`Δ[∩[2*n+1, A061641(n+1)]/2]`
-/

namespace A193865.P2550504248171895392
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061641 (n + 1)

open Classical in
def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f2 j = x) ∧ ∃ j, f3 j = (x : ℤ)) n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A193865.P2550504248171895392

/-! ## A193865.P5416265698592989969

`Δ[∩[2*n+1, A177729(n+1)]/2]`
-/

namespace A193865.P5416265698592989969
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177729 (n + 1)

open Classical in
def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f2 j = x) ∧ ∃ j, f3 j = (x : ℤ)) n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A193865.P5416265698592989969

/-! ## A193865.P13994533466333025952

`A000006(Δ[∩[2*n+1, A177729(n+1)]])`
-/

namespace A193865.P13994533466333025952
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177729 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = x) ∧ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000006 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A193865.P13994533466333025952

/-! ## A193865.P18116907423728415865

`A000720(Δ[∩[2*n+1, A177729(n+1)]])`
-/

namespace A193865.P18116907423728415865
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177729 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = x) ∧ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A193865.P18116907423728415865

/-! ## A193865.P970569679998704543

`A001221(Δ[∩[2*n+1, A061641(n+1)]]!)`
-/

namespace A193865.P970569679998704543
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061641 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = x) ∧ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Nat.factorial ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat)

end

end A193865.P970569679998704543

/-! ## A193865.P16795153612358660053

`A001221(Δ[∩[2*n+1, A177729(n+1)]]!)`
-/

namespace A193865.P16795153612358660053
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177729 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = x) ∧ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Nat.factorial ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat)

end

end A193865.P16795153612358660053

/-!
# A193866: Even pentagonal numbers divided by 2.

The programs for A193866, the canonical program `A193866.P8340605696835954279` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A193866 has offset 0).

The definition of A193866 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A193866.P8340605696835954279

`a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` with `a(0)=0, a(1)=6, a(2)=11, a(3)=35, a(4)=46`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A193866

/-- `a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` -/
def P8340605696835954279.Spec : Prop :=
  ∀ n, P8340605696835954279.a n = A193866 n

theorem P8340605696835954279.correct : P8340605696835954279.Spec := by
  intro n
  simp only [A193866]

end A193866

/-! ## A193866.P18047041084562276404

`A014633(n)/2`
-/

namespace A193866.P18047041084562276404
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014633 n : ℚ) / 2

end

end A193866.P18047041084562276404

namespace A193866

/-- `A014633(n)/2` -/
def P18047041084562276404.Spec : Prop :=
  ∀ n, P18047041084562276404.a n = (A193866 n : ℚ)

end A193866

/-! ## A193866.P12691488487226212340

`∑[(3*n)²]/or(1, n)-comp[or(2, n)-1]`
-/

namespace A193866.P12691488487226212340
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (3 * n) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 2 n : ℤ) - 1

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (Nat.lor 1 n : ℚ) - (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n : ℚ)

end

end A193866.P12691488487226212340

namespace A193866

/-- `∑[(3*n)²]/or(1, n)-comp[or(2, n)-1]` -/
def P12691488487226212340.Spec : Prop :=
  ∀ n, P12691488487226212340.a n = (A193866 n : ℚ)

end A193866

/-! ## A193866.P10454430400457877154

`3*∑[2*lcm(2, n)]+1-∑[∑[5^(n%2)]]`
-/

namespace A193866.P10454430400457877154
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.lcm 2 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 ^ (n % 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((3 * (∑ j ∈ Finset.range (n + 1), f1 j) + 1 : ℕ) : ℤ) - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A193866.P10454430400457877154

namespace A193866

/-- `3*∑[2*lcm(2, n)]+1-∑[∑[5^(n%2)]]` -/
def P10454430400457877154.Spec : Prop :=
  ∀ n, P10454430400457877154.a n = A193866 n

end A193866

/-! ## A193866.P4919183631095714956

`sqrt(A014770(n))/2`
-/

namespace A193866.P4919183631095714956
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A014770 n : ℝ) / 2

end

end A193866.P4919183631095714956

namespace A193866

/-- `sqrt(A014770(n))/2` -/
def P4919183631095714956.Spec : Prop :=
  ∀ n, P4919183631095714956.a n = (A193866 n : ℝ)

end A193866

/-! ## A193866.P7377121384840246648

`∑[2*n]%(2*n+1)*A153285(n+1)`
-/

namespace A193866.P7377121384840246648
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j) % (2 * n + 1) : ℕ) : ℤ) * A153285 (n + 1)

end

end A193866.P7377121384840246648

namespace A193866

/-- `∑[2*n]%(2*n+1)*A153285(n+1)` -/
def P7377121384840246648.Spec : Prop :=
  ∀ n, P7377121384840246648.a n = A193866 n

end A193866

/-! ## A193866.P10610580940487989385

`A062725(n)-A322462(n)`
-/

namespace A193866.P10610580940487989385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062725 n - A322462 n

end

end A193866.P10610580940487989385

namespace A193866

/-- `A062725(n)-A322462(n)` -/
def P10610580940487989385.Spec : Prop :=
  ∀ n, P10610580940487989385.a n = A193866 n

end A193866

/-! ## A193866.P18408568598132112716

`A298037(n)-A095894(n)`
-/

namespace A193866.P18408568598132112716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298037 n - A095894 n

end

end A193866.P18408568598132112716

namespace A193866

/-- `A298037(n)-A095894(n)` -/
def P18408568598132112716.Spec : Prop :=
  ∀ n, P18408568598132112716.a n = A193866 n

end A193866

/-! ## A193866.P10684088478858221573

`A014601(n)²-A074378(n)`
-/

namespace A193866.P10684088478858221573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014601 n ^ 2 - A074378 n

end

end A193866.P10684088478858221573

namespace A193866

/-- `A014601(n)²-A074378(n)` -/
def P10684088478858221573.Spec : Prop :=
  ∀ n, P10684088478858221573.a n = A193866 n

end A193866

/-! ## A193866.P1841986765489649491

`A274757(n+1)-A014601(n)`
-/

namespace A193866.P1841986765489649491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274757 (n + 1) - A014601 n

end

end A193866.P1841986765489649491

namespace A193866

/-- `A274757(n+1)-A014601(n)` -/
def P1841986765489649491.Spec : Prop :=
  ∀ n, P1841986765489649491.a n = A193866 n

end A193866

/-! ## A193866.P15843321027381068962

`A014682(n)*A153285(n+1)`
-/

namespace A193866.P15843321027381068962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 n * A153285 (n + 1)

end

end A193866.P15843321027381068962

namespace A193866

/-- `A014682(n)*A153285(n+1)` -/
def P15843321027381068962.Spec : Prop :=
  ∀ n, P15843321027381068962.a n = A193866 n

end A193866

/-! ## A193866.P7485740944721311102

`A016921(n)*A110654(n)-n`
-/

namespace A193866.P7485740944721311102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016921 n * A110654 n - (n : ℤ)

end

end A193866.P7485740944721311102

namespace A193866

/-- `A016921(n)*A110654(n)-n` -/
def P7485740944721311102.Spec : Prop :=
  ∀ n, P7485740944721311102.a n = A193866 n

end A193866

/-! ## A193866.P6928883928260229855

`2*A007494(n)²-A005449(n)`
-/

namespace A193866.P6928883928260229855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007494 n ^ 2 - A005449 n

end

end A193866.P6928883928260229855

namespace A193866

/-- `2*A007494(n)²-A005449(n)` -/
def P6928883928260229855.Spec : Prop :=
  ∀ n, P6928883928260229855.a n = A193866 n

end A193866

/-! ## A193866.P10394907179613996229

`A014601(n)²-A014494(n)/2`
-/

namespace A193866.P10394907179613996229
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014601 n ^ 2 : ℚ) - (A014494 n : ℚ) / 2

end

end A193866.P10394907179613996229

namespace A193866

/-- `A014601(n)²-A014494(n)/2` -/
def P10394907179613996229.Spec : Prop :=
  ∀ n, P10394907179613996229.a n = (A193866 n : ℚ)

end A193866

/-! ## A193866.P14863980290104620334

`n*A168328(n+1)-A004526(n)`
-/

namespace A193866.P14863980290104620334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A168328 (n + 1) - A004526 n

end

end A193866.P14863980290104620334

namespace A193866

/-- `n*A168328(n+1)-A004526(n)` -/
def P14863980290104620334.Spec : Prop :=
  ∀ n, P14863980290104620334.a n = A193866 n

end A193866

/-! ## A193866.P6020316074288545036

`(A074378(n)-n²)*A153285(n+1)`
-/

namespace A193866.P6020316074288545036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A074378 n - (n ^ 2 : ℤ)) * A153285 (n + 1)

end

end A193866.P6020316074288545036

namespace A193866

/-- `(A074378(n)-n²)*A153285(n+1)` -/
def P6020316074288545036.Spec : Prop :=
  ∀ n, P6020316074288545036.a n = A193866 n

end A193866

/-! ## A193866.P12771456050051529554

`(n+1-Δ[gcd(n, A000217(n))])*A153285(n+1)`
-/

namespace A193866.P12771456050051529554
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A000217 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))) * A153285 (n + 1)

end

end A193866.P12771456050051529554

namespace A193866

/-- `(n+1-Δ[gcd(n, A000217(n))])*A153285(n+1)` -/
def P12771456050051529554.Spec : Prop :=
  ∀ n, P12771456050051529554.a n = A193866 n

end A193866

/-! ## A193866.P4952986086182442490

`A014494(n)+A074378(n)-A014601(n)`
-/

namespace A193866.P4952986086182442490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014494 n + (A074378 n - A014601 n)

end

end A193866.P4952986086182442490

namespace A193866

/-- `A014494(n)+A074378(n)-A014601(n)` -/
def P4952986086182442490.Spec : Prop :=
  ∀ n, P4952986086182442490.a n = A193866 n

end A193866

/-! ## A193866.P8704595372684524297

`A004526(n+1)*(6*n+1)-n`
-/

namespace A193866.P8704595372684524297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (n + 1) * (6 * n + 1 : ℤ) - (n : ℤ)

end

end A193866.P8704595372684524297

namespace A193866

/-- `A004526(n+1)*(6*n+1)-n` -/
def P8704595372684524297.Spec : Prop :=
  ∀ n, P8704595372684524297.a n = A193866 n

end A193866

/-! ## A193866.P12457064096282657948

`A123108(n+1)*(6*n+1)-n`
-/

namespace A193866.P12457064096282657948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (n + 1) * (6 * n + 1 : ℤ) - (n : ℤ)

end

end A193866.P12457064096282657948

namespace A193866

/-- `A123108(n+1)*(6*n+1)-n` -/
def P12457064096282657948.Spec : Prop :=
  ∀ n, P12457064096282657948.a n = A193866 n

end A193866

/-!
# A193867: Odd central polygonal numbers.

The programs for A193867, the canonical program `A193867.P15975463476327367108` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A193867 has offset 1).

The definition of A193867 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A193867.P15975463476327367108

`1+A014494(n)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A193867

/-- `1+A014494(n)` -/
def P15975463476327367108.Spec : Prop :=
  ∀ n, P15975463476327367108.a n = A193867 (n + 1)

theorem P15975463476327367108.correct : P15975463476327367108.Spec := by
  intro n
  simp only [A193867, Nat.add_sub_cancel]

end A193867

/-! ## A193867.P12213168771274361747

`A000124(A014601(n))`
-/

namespace A193867.P12213168771274361747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (A014601 n).toNat

end

end A193867.P12213168771274361747

namespace A193867

/-- `A000124(A014601(n))` -/
def P12213168771274361747.Spec : Prop :=
  ∀ n, P12213168771274361747.a n = A193867 (n + 1)

end A193867

/-! ## A193867.P17062621818479039607

`C(∑[3^(n%2)], 2)+1`
-/

namespace A193867.P17062621818479039607
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ (n % 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 + 1

end

end A193867.P17062621818479039607

namespace A193867

/-- `C(∑[3^(n%2)], 2)+1` -/
def P17062621818479039607.Spec : Prop :=
  ∀ n, (P17062621818479039607.a n : ℤ) = A193867 (n + 1)

end A193867

/-! ## A193867.P18239655612795117370

`C(∑[3^and(1, n)], 2)+1`
-/

namespace A193867.P18239655612795117370
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ Nat.land 1 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 + 1

end

end A193867.P18239655612795117370

namespace A193867

/-- `C(∑[3^and(1, n)], 2)+1` -/
def P18239655612795117370.Spec : Prop :=
  ∀ n, (P18239655612795117370.a n : ℤ) = A193867 (n + 1)

end A193867

/-! ## A193867.P7052989563881206804

`record[or(1-and(2, n), C(n, 2))]`
-/

namespace A193867.P7052989563881206804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (1 - (Nat.land 2 n : ℤ)) (Nat.choose n 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A193867.P7052989563881206804

namespace A193867

/-- `record[or(1-and(2, n), C(n, 2))]` -/
def P7052989563881206804.Spec : Prop :=
  ∀ n, P7052989563881206804.a n = A193867 (n + 1)

end A193867

/-! ## A193867.P2168704685384563430

`record[xor(1-and(2, n), C(n, 2))]`
-/

namespace A193867.P2168704685384563430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (1 - (Nat.land 2 n : ℤ)) (Nat.choose n 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A193867.P2168704685384563430

namespace A193867

/-- `record[xor(1-and(2, n), C(n, 2))]` -/
def P2168704685384563430.Spec : Prop :=
  ∀ n, P2168704685384563430.a n = A193867 (n + 1)

end A193867

/-! ## A193867.P15028044925689892779

`Δ[n*gcd(2, n)]+∑[4*n]`
-/

namespace A193867.P15028044925689892779
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.gcd 2 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) + ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A193867.P15028044925689892779

namespace A193867

/-- `Δ[n*gcd(2, n)]+∑[4*n]` -/
def P15028044925689892779.Spec : Prop :=
  ∀ n, P15028044925689892779.a n = A193867 (n + 1)

end A193867

/-! ## A193867.P3883329051822789713

`C(∑[4-a(n-1)], 2)+1` with `a(0)=1`
-/

namespace A193867.P3883329051822789713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  4 - f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j).toNat 2 + 1

end

end A193867.P3883329051822789713

namespace A193867

/-- `C(∑[4-a(n-1)], 2)+1` -/
def P3883329051822789713.Spec : Prop :=
  ∀ n, (P3883329051822789713.a n : ℤ) = A193867 (n + 1)

end A193867

/-! ## A193867.P12676034079559058295

`or(1, C(∑[4-a(n-1)], 2))` with `a(0)=1`
-/

namespace A193867.P12676034079559058295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  4 - f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j).toNat 2)

end

end A193867.P12676034079559058295

namespace A193867

/-- `or(1, C(∑[4-a(n-1)], 2))` -/
def P12676034079559058295.Spec : Prop :=
  ∀ n, (P12676034079559058295.a n : ℤ) = A193867 (n + 1)

end A193867

/-! ## A193867.P2581254393740382968

`2*∑[2*lcm(2, n)-n]+1`
-/

namespace A193867.P2581254393740382968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * Nat.lcm 2 n : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j) + 1

end

end A193867.P2581254393740382968

namespace A193867

/-- `2*∑[2*lcm(2, n)-n]+1` -/
def P2581254393740382968.Spec : Prop :=
  ∀ n, P2581254393740382968.a n = A193867 (n + 1)

end A193867

/-! ## A193867.P2186098063700673481

`C(and(1, n)+2*n+1, 2)+1`
-/

namespace A193867.P2186098063700673481
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.land 1 n + (2 * n + 1)) 2 + 1

end

end A193867.P2186098063700673481

namespace A193867

/-- `C(and(1, n)+2*n+1, 2)+1` -/
def P2186098063700673481.Spec : Prop :=
  ∀ n, (P2186098063700673481.a n : ℤ) = A193867 (n + 1)

end A193867

/-! ## A193867.P4337718276452148677

`(and(1, n)+n)*(2*n+1)+1`
-/

namespace A193867.P4337718276452148677
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.land 1 n + n) * (2 * n + 1) + 1

end

end A193867.P4337718276452148677

namespace A193867

/-- `(and(1, n)+n)*(2*n+1)+1` -/
def P4337718276452148677.Spec : Prop :=
  ∀ n, (P4337718276452148677.a n : ℤ) = A193867 (n + 1)

end A193867

/-! ## A193867.P8801540103771326425

`(2*n+1)*or(1, n+1)-2*n`
-/

namespace A193867.P8801540103771326425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n + 1) * Nat.lor 1 (n + 1) : ℤ) - (2 * n : ℤ)

end

end A193867.P8801540103771326425

namespace A193867

/-- `(2*n+1)*or(1, n+1)-2*n` -/
def P8801540103771326425.Spec : Prop :=
  ∀ n, P8801540103771326425.a n = A193867 (n + 1)

end A193867

/-! ## A193867.P5376778287347299078

`Δ[gcd(2*n, n²)]+(n+1)*2*n`
-/

namespace A193867.P5376778287347299078
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (2 * n) (n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) + ((n + 1) * (2 * n) : ℤ)

end

end A193867.P5376778287347299078

namespace A193867

/-- `Δ[gcd(2*n, n²)]+(n+1)*2*n` -/
def P5376778287347299078.Spec : Prop :=
  ∀ n, P5376778287347299078.a n = A193867 (n + 1)

end A193867

/-! ## A193867.P9453966725167843353

`(2*n+1)*∑[2-a(n-1)]+1` with `a(0)=0`
-/

namespace A193867.P9453966725167843353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  2 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j) + 1

end

end A193867.P9453966725167843353

namespace A193867

/-- `(2*n+1)*∑[2-a(n-1)]+1` -/
def P9453966725167843353.Spec : Prop :=
  ∀ n, P9453966725167843353.a n = A193867 (n + 1)

end A193867

/-! ## A193867.P13419903594189020415

`(2*n+1)*(char[2*n+1]+n)+1`
-/

namespace A193867.P13419903594189020415
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) * ((if ∃ j, f1 j = n then 1 else 0) + n) + 1

end

end A193867.P13419903594189020415

namespace A193867

/-- `(2*n+1)*(char[2*n+1]+n)+1` -/
def P13419903594189020415.Spec : Prop :=
  ∀ n, (P13419903594189020415.a n : ℤ) = A193867 (n + 1)

end A193867

/-! ## A193867.P5609947865914594910

`∪[A185438(n), A188135(n)]`
-/

namespace A193867.P5609947865914594910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185438 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188135 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A193867.P5609947865914594910

namespace A193867

/-- `∪[A185438(n), A188135(n)]` -/
def P5609947865914594910.Spec : Prop :=
  ∀ n, (P5609947865914594910.a n : ℤ) = A193867 (n + 1)

end A193867

/-! ## A193867.P17946866188749654549

`record[A213671(n+1)]`
-/

namespace A193867.P17946866188749654549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213671 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A193867.P17946866188749654549

namespace A193867

/-- `record[A213671(n+1)]` -/
def P17946866188749654549.Spec : Prop :=
  ∀ n, P17946866188749654549.a n = A193867 (n + 1)

end A193867

/-! ## A193867.P965023039409542843

`A089781(A042948(n+1))`
-/

namespace A193867.P965023039409542843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089781 (A042948 (n + 1)).toNat

end

end A193867.P965023039409542843

namespace A193867

/-- `A089781(A042948(n+1))` -/
def P965023039409542843.Spec : Prop :=
  ∀ n, P965023039409542843.a n = A193867 (n + 1)

end A193867

/-! ## A193867.P11773206516057148972

`A000124(Δ[A007590(n)]+n)`
-/

namespace A193867.P11773206516057148972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007590 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (f1 (n + 1) - f1 n + (n : ℤ)).toNat

end

end A193867.P11773206516057148972

namespace A193867

/-- `A000124(Δ[A007590(n)]+n)` -/
def P11773206516057148972.Spec : Prop :=
  ∀ n, P11773206516057148972.a n = A193867 (n + 1)

end A193867

/-!
# A193868: Even central polygonal numbers.

The programs for A193868, the canonical program `A193868.P775809306706313697` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A193868 has offset 1).

The definition of A193868 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A193868.P17286753023278516269

`(3+(-1)^(n+1)-2*(2+(-1)^(n+1))*(n+1)+4*(n+1)²)/2`
-/

namespace A193868.P17286753023278516269
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 + (-1) ^ (n + 1) - 2 * ((2 + (-1) ^ (n + 1)) * (n + 1 : ℤ)) + (4 * (n + 1) ^ 2 : ℤ) : ℚ) / 2

end

end A193868.P17286753023278516269

namespace A193868

/-- `(3+(-1)^(n+1)-2*(2+(-1)^(n+1))*(n+1)+4*(n+1)²)/2` -/
def P17286753023278516269.Spec : Prop :=
  ∀ n, P17286753023278516269.a n = (A193868 (n + 1) : ℚ)

end A193868

/-! ## A193868.P775809306706313697

`1+A014493(n+1)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A193868

/-- `1+A014493(n+1)` -/
def P775809306706313697.Spec : Prop :=
  ∀ n, P775809306706313697.a n = A193868 (n + 1)

theorem P775809306706313697.correct : P775809306706313697.Spec := by
  intro n
  simp only [A193868, Nat.add_sub_cancel]

end A193868

/-! ## A193868.P2287184282879359945

`2*A174114(n+1)`
-/

namespace A193868.P2287184282879359945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A174114 (n + 1)

end

end A193868.P2287184282879359945

namespace A193868

/-- `2*A174114(n+1)` -/
def P2287184282879359945.Spec : Prop :=
  ∀ n, P2287184282879359945.a n = A193868 (n + 1)

end A193868

/-! ## A193868.P15969816101364409185

`A000124(A042963(n+1))`
-/

namespace A193868.P15969816101364409185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (A042963 (n + 1)).toNat

end

end A193868.P15969816101364409185

namespace A193868

/-- `A000124(A042963(n+1))` -/
def P15969816101364409185.Spec : Prop :=
  ∀ n, P15969816101364409185.a n = A193868 (n + 1)

end A193868

/-! ## A193868.P12348276875022719308

`record[C(or(2, n), 2)]+1`
-/

namespace A193868.P12348276875022719308
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.lor 2 n) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1

end

end A193868.P12348276875022719308

namespace A193868

/-- `record[C(or(2, n), 2)]+1` -/
def P12348276875022719308.Spec : Prop :=
  ∀ n, (P12348276875022719308.a n : ℤ) = A193868 (n + 1)

end A193868

/-! ## A193868.P8692662486344249541

`record[C(xor(2, n), 2)]+1`
-/

namespace A193868.P8692662486344249541
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.xor 2 n) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1

end

end A193868.P8692662486344249541

namespace A193868

/-- `record[C(xor(2, n), 2)]+1` -/
def P8692662486344249541.Spec : Prop :=
  ∀ n, (P8692662486344249541.a n : ℤ) = A193868 (n + 1)

end A193868

/-! ## A193868.P3024863328873372277

`record[C(n, and(2, n))]+1`
-/

namespace A193868.P3024863328873372277
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (Nat.land 2 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1

end

end A193868.P3024863328873372277

namespace A193868

/-- `record[C(n, and(2, n))]+1` -/
def P3024863328873372277.Spec : Prop :=
  ∀ n, (P3024863328873372277.a n : ℤ) = A193868 (n + 1)

end A193868

/-! ## A193868.P7374092757373373281

`or(1, n)*Δ[n²]+1`
-/

namespace A193868.P7374092757373373281
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 1 n : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) + 1

end

end A193868.P7374092757373373281

namespace A193868

/-- `or(1, n)*Δ[n²]+1` -/
def P7374092757373373281.Spec : Prop :=
  ∀ n, P7374092757373373281.a n = A193868 (n + 1)

end A193868

/-! ## A193868.P3305014456896422570

`Δ[lcm(2, n)]+∑[4*n]`
-/

namespace A193868.P3305014456896422570
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) + ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A193868.P3305014456896422570

namespace A193868

/-- `Δ[lcm(2, n)]+∑[4*n]` -/
def P3305014456896422570.Spec : Prop :=
  ∀ n, P3305014456896422570.a n = A193868 (n + 1)

end A193868

/-! ## A193868.P1232772838596378664

`(2*n+1)*or(1, n)+1`
-/

namespace A193868.P1232772838596378664
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) * Nat.lor 1 n + 1

end

end A193868.P1232772838596378664

namespace A193868

/-- `(2*n+1)*or(1, n)+1` -/
def P1232772838596378664.Spec : Prop :=
  ∀ n, (P1232772838596378664.a n : ℤ) = A193868 (n + 1)

end A193868

/-! ## A193868.P11174087872788135665

`C(gcd(2, n)+2*n, 2)+1`
-/

namespace A193868.P11174087872788135665
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.gcd 2 n + 2 * n) 2 + 1

end

end A193868.P11174087872788135665

namespace A193868

/-- `C(gcd(2, n)+2*n, 2)+1` -/
def P11174087872788135665.Spec : Prop :=
  ∀ n, (P11174087872788135665.a n : ℤ) = A193868 (n + 1)

end A193868

/-! ## A193868.P15545328084745948369

`2*record[(or(2, n)²-n)/4]`
-/

namespace A193868.P15545328084745948369
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.lor 2 n ^ 2 : ℤ) - (n : ℤ) : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A193868.P15545328084745948369

namespace A193868

/-- `2*record[(or(2, n)²-n)/4]` -/
def P15545328084745948369.Spec : Prop :=
  ∀ n, P15545328084745948369.a n = (A193868 (n + 1) : ℚ)

end A193868

/-! ## A193868.P3157060692971205098

`2*(∑[n*gcd(3, n%2)]+1)`
-/

namespace A193868.P3157060692971205098
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.gcd 3 (n % 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A193868.P3157060692971205098

namespace A193868

/-- `2*(∑[n*gcd(3, n%2)]+1)` -/
def P3157060692971205098.Spec : Prop :=
  ∀ n, (P3157060692971205098.a n : ℤ) = A193868 (n + 1)

end A193868

/-! ## A193868.P15637335553912265292

`C(eq[n-2, and(n, n-2)], 2)+1`
-/

namespace A193868.P15637335553912265292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) ((n : ℤ) - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.nth (fun j => f1 j = f2 j) n) 2 + 1

end

end A193868.P15637335553912265292

namespace A193868

/-- `C(eq[n-2, and(n, n-2)], 2)+1` -/
def P15637335553912265292.Spec : Prop :=
  ∀ n, (P15637335553912265292.a n : ℤ) = A193868 (n + 1)

end A193868

/-! ## A193868.P9011594610631506100

`C(and(1, n+1)+2*n+1, 2)+1`
-/

namespace A193868.P9011594610631506100
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.land 1 (n + 1) + (2 * n + 1)) 2 + 1

end

end A193868.P9011594610631506100

namespace A193868

/-- `C(and(1, n+1)+2*n+1, 2)+1` -/
def P9011594610631506100.Spec : Prop :=
  ∀ n, (P9011594610631506100.a n : ℤ) = A193868 (n + 1)

end A193868

/-! ## A193868.P17755960579283909411

`(and(1, n+1)+n)*(2*n+1)+1`
-/

namespace A193868.P17755960579283909411
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.land 1 (n + 1) + n) * (2 * n + 1) + 1

end

end A193868.P17755960579283909411

namespace A193868

/-- `(and(1, n+1)+n)*(2*n+1)+1` -/
def P17755960579283909411.Spec : Prop :=
  ∀ n, (P17755960579283909411.a n : ℤ) = A193868 (n + 1)

end A193868

/-! ## A193868.P7865192248907964989

`(2*n+1)*∑[2-a(n-1)]-2*n` with `a(0)=2`
-/

namespace A193868.P7865192248907964989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  2 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j) - (2 * n : ℤ)

end

end A193868.P7865192248907964989

namespace A193868

/-- `(2*n+1)*∑[2-a(n-1)]-2*n` -/
def P7865192248907964989.Spec : Prop :=
  ∀ n, P7865192248907964989.a n = A193868 (n + 1)

end A193868

/-! ## A193868.P3176675508841929337

`(2*n+1)*(n+2-gcd(n+1, n-1))+1`
-/

namespace A193868.P3176675508841929337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * ((n + 2 : ℤ) - (Int.gcd (n + 1 : ℤ) ((n : ℤ) - 1) : ℤ)) + 1

end

end A193868.P3176675508841929337

namespace A193868

/-- `(2*n+1)*(n+2-gcd(n+1, n-1))+1` -/
def P3176675508841929337.Spec : Prop :=
  ∀ n, P3176675508841929337.a n = A193868 (n + 1)

end A193868

/-! ## A193868.P10615050309633798136

`sqrt(A014736(n))+1`
-/

namespace A193868.P10615050309633798136
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A014736 n : ℝ) + 1

end

end A193868.P10615050309633798136

namespace A193868

/-- `sqrt(A014736(n))+1` -/
def P10615050309633798136.Spec : Prop :=
  ∀ n, P10615050309633798136.a n = (A193868 (n + 1) : ℝ)

end A193868

/-! ## A193868.P1315493662484330939

`∑[A035877(n)]+1`
-/

namespace A193868.P1315493662484330939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035877 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A193868.P1315493662484330939

namespace A193868

/-- `∑[A035877(n)]+1` -/
def P1315493662484330939.Spec : Prop :=
  ∀ n, P1315493662484330939.a n = A193868 (n + 1)

end A193868

/-!
# A193870: Triangle of regions and partitions of integers (see Comments lines for definition).

The programs for A193870, there is no canonical definition to state claims against.
-/

/-! ## A193870.P6672437804281105526

`A186114(∑[char[∑[n]]]²-n)`
-/

namespace A193870.P6672437804281105526
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186114 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A193870.P6672437804281105526

/-! ## A193870.P1842962674812810647

`A186114(A038722(n+1))%(n+3)`
-/

namespace A193870.P1842962674812810647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A186114 (A038722 (n + 1)).toNat) (n + 3 : ℤ)

end

end A193870.P1842962674812810647

/-! ## A193870.P6203929785142130775

`A186114(A038722(n+1))+C(n, A000125(n))`
-/

namespace A193870.P6203929785142130775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186114 (A038722 (n + 1)).toNat + (Nat.choose n (A000125 n).toNat : ℤ)

end

end A193870.P6203929785142130775

/-! ## A193870.P7566035766220732057

`A186114(A038722(n+1))+C(n, A085473(n))`
-/

namespace A193870.P7566035766220732057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186114 (A038722 (n + 1)).toNat + (Nat.choose n (A085473 n).toNat : ℤ)

end

end A193870.P7566035766220732057

/-! ## A193870.P5100590040302660829

`A186114(A038722(n+1))+C(n, A001358(n+1))`
-/

namespace A193870.P5100590040302660829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186114 (A038722 (n + 1)).toNat + (Nat.choose n (A001358 (n + 1)).toNat : ℤ)

end

end A193870.P5100590040302660829

/-! ## A193870.P4841758206800978260

`A186114(A038722(n+1))+C(n, A003972(n+1))`
-/

namespace A193870.P4841758206800978260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186114 (A038722 (n + 1)).toNat + (Nat.choose n (A003972 (n + 1)).toNat : ℤ)

end

end A193870.P4841758206800978260

/-! ## A193870.P12776338238035630065

`A186114(A038722(n+1))+C(n, A084227(n+1))`
-/

namespace A193870.P12776338238035630065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186114 (A038722 (n + 1)).toNat + (Nat.choose n (A084227 (n + 1)).toNat : ℤ)

end

end A193870.P12776338238035630065

/-! ## A193870.P15696389751362708145

`A186114(A038722(n+1))+A019590(n+3)`
-/

namespace A193870.P15696389751362708145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186114 (A038722 (n + 1)).toNat + A019590 (n + 3)

end

end A193870.P15696389751362708145

/-! ## A193870.P15984915974783673019

`A186114(A038722(n+1))+C(n, A000566(3*n+2))`
-/

namespace A193870.P15984915974783673019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186114 (A038722 (n + 1)).toNat + (Nat.choose n (A000566 (3 * n + 2)).toNat : ℤ)

end

end A193870.P15984915974783673019

/-!
# A193871: Square array T(n,k) = k^n - k + 1 read by antidiagonals.

The programs for A193871, there is no canonical definition to state claims against.
-/

/-! ## A193871.P7890206175785840518

`A051129(n+1)-(n-C(∑[char[∑[n]]], 2))`
-/

namespace A193871.P7890206175785840518
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051129 (n + 1) - ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ))

end

end A193871.P7890206175785840518

/-! ## A193871.P10754573641315922559

`A051128(∑[char[∑[n]]]²-n)-(n-C(∑[char[∑[n]]], 2))`
-/

namespace A193871.P10754573641315922559
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

open Classical in
def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f5 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051128 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n) - ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f4 j) 2 : ℤ))

end

end A193871.P10754573641315922559

/-! ## A193871.P16201796392687398022

`A051129(n+1)-A002262(n)`
-/

namespace A193871.P16201796392687398022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051129 (n + 1) - A002262 n

end

end A193871.P16201796392687398022

/-! ## A193871.P7872437248515996085

`A051129(n+1)-sqrt(A143844(n))`
-/

namespace A193871.P7872437248515996085
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A051129 (n + 1) : ℝ) - Real.sqrt (A143844 n : ℝ)

end

end A193871.P7872437248515996085

/-! ## A193871.P6223022020435174860

`A051129(n+1)-log2(A059268(n))`
-/

namespace A193871.P6223022020435174860
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A051129 (n + 1) : ℝ) - Real.logb 2 (A059268 n : ℝ)

end

end A193871.P6223022020435174860

/-! ## A193871.P1530770790241283905

`A051129(n+1)-A025668(n+1)`
-/

namespace A193871.P1530770790241283905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051129 (n + 1) - A025668 (n + 1)

end

end A193871.P1530770790241283905

/-! ## A193871.P12727199308448897978

`A051129(n+1)-A025675(n+1)`
-/

namespace A193871.P12727199308448897978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051129 (n + 1) - A025675 (n + 1)

end

end A193871.P12727199308448897978

/-! ## A193871.P17534432335708545395

`A051129(n+1)+A057944(n)-n`
-/

namespace A193871.P17534432335708545395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051129 (n + 1) + (A057944 n - (n : ℤ))

end

end A193871.P17534432335708545395

/-!
# A193872: Even dodecagonal numbers: a(n) = 4*n*(5*n - 2).

The programs for A193872, the canonical program `A193872.P17072108020457419031` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A193872 has offset 0).

The definition of A193872 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*n*(5*n-2)` (program `A193872.P17072108020457419031`, by `A193872.P17072108020457419031.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A193872.P17072108020457419031

`4*n*(5*n-2)`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A193872

/-- `4*n*(5*n-2)` -/
def P17072108020457419031.Spec : Prop :=
  ∀ n, P17072108020457419031.a n = A193872 n

theorem P17072108020457419031.correct : P17072108020457419031.Spec := by
  intro n
  simp only [A193872]

end A193872

/-! ## A193872.P1613954361054175608

`∑[a(n-1)+40]` with `a(0)=0, a(1)=12`
-/

namespace A193872.P1613954361054175608
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 12] fun n f1 =>
  f1 (n - 1) + 40

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A193872.P1613954361054175608

namespace A193872

/-- `∑[a(n-1)+40]` -/
def P1613954361054175608.Spec : Prop :=
  ∀ n, (P1613954361054175608.a n : ℤ) = A193872 n

end A193872

/-! ## A193872.P9214042284325996952

`2*n+10*C(2*n, 2)`
-/

namespace A193872.P9214042284325996952
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 10 * Nat.choose (2 * n) 2

end

end A193872.P9214042284325996952

namespace A193872

/-- `2*n+10*C(2*n, 2)` -/
def P9214042284325996952.Spec : Prop :=
  ∀ n, (P9214042284325996952.a n : ℤ) = A193872 n

end A193872

/-! ## A193872.P1544916071638359574

`A144560(n)+2*n`
-/

namespace A193872.P1544916071638359574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144560 n + (2 * n : ℤ)

end

end A193872.P1544916071638359574

namespace A193872

/-- `A144560(n)+2*n` -/
def P1544916071638359574.Spec : Prop :=
  ∀ n, P1544916071638359574.a n = A193872 n

end A193872

/-! ## A193872.P8426587150393909585

`A152750(n)+(2*n)²`
-/

namespace A193872.P8426587150393909585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152750 n + ((2 * n) ^ 2 : ℤ)

end

end A193872.P8426587150393909585

namespace A193872

/-- `A152750(n)+(2*n)²` -/
def P8426587150393909585.Spec : Prop :=
  ∀ n, P8426587150393909585.a n = A193872 n

end A193872

/-! ## A193872.P10839809786544278035

`4*A000567(n)+8*n²`
-/

namespace A193872.P10839809786544278035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A000567 n + (8 * n ^ 2 : ℤ)

end

end A193872.P10839809786544278035

namespace A193872

/-- `4*A000567(n)+8*n²` -/
def P10839809786544278035.Spec : Prop :=
  ∀ n, P10839809786544278035.a n = A193872 n

end A193872

/-! ## A193872.P9857346600083707245

`A255185(n)+n*(8*n+3)`
-/

namespace A193872.P9857346600083707245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255185 n + (n * (8 * n + 3) : ℤ)

end

end A193872.P9857346600083707245

namespace A193872

/-- `A255185(n)+n*(8*n+3)` -/
def P9857346600083707245.Spec : Prop :=
  ∀ n, P9857346600083707245.a n = A193872 n

end A193872

/-! ## A193872.P8528708622727268013

`A028994(n)+A002939(n)`
-/

namespace A193872.P8528708622727268013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028994 n + A002939 n

end

end A193872.P8528708622727268013

namespace A193872

/-- `A028994(n)+A002939(n)` -/
def P8528708622727268013.Spec : Prop :=
  ∀ n, P8528708622727268013.a n = A193872 n

end A193872

/-! ## A193872.P13885087003196235381

`A051871(n)+A022280(n)`
-/

namespace A193872.P13885087003196235381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051871 n + A022280 n

end

end A193872.P13885087003196235381

namespace A193872

/-- `A051871(n)+A022280(n)` -/
def P13885087003196235381.Spec : Prop :=
  ∀ n, P13885087003196235381.a n = A193872 n

end A193872

/-! ## A193872.P10318707427868594527

`A051873(n)+A022279(n)`
-/

namespace A193872.P10318707427868594527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051873 n + A022279 n

end

end A193872.P10318707427868594527

namespace A193872

/-- `A051873(n)+A022279(n)` -/
def P10318707427868594527.Spec : Prop :=
  ∀ n, P10318707427868594527.a n = A193872 n

end A193872

/-! ## A193872.P4645800655370358082

`A051872(n)+A033584(n)`
-/

namespace A193872.P4645800655370358082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051872 n + A033584 n

end

end A193872.P4645800655370358082

namespace A193872

/-- `A051872(n)+A033584(n)` -/
def P4645800655370358082.Spec : Prop :=
  ∀ n, P4645800655370358082.a n = A193872 n

end A193872

/-! ## A193872.P17446895537480645833

`A064200(n)+A033586(n)`
-/

namespace A193872.P17446895537480645833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064200 n + A033586 n

end

end A193872.P17446895537480645833

namespace A193872

/-- `A064200(n)+A033586(n)` -/
def P17446895537480645833.Spec : Prop :=
  ∀ n, P17446895537480645833.a n = A193872 n

end A193872

/-! ## A193872.P1722326859932863536

`A085250(n)+A014642(n)`
-/

namespace A193872.P1722326859932863536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085250 n + A014642 n

end

end A193872.P1722326859932863536

namespace A193872

/-- `A085250(n)+A014642(n)` -/
def P1722326859932863536.Spec : Prop :=
  ∀ n, P1722326859932863536.a n = A193872 n

end A193872

/-! ## A193872.P11857149993145189091

`A153449(n)+A001106(n)`
-/

namespace A193872.P11857149993145189091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153449 n + A001106 n

end

end A193872.P11857149993145189091

namespace A193872

/-- `A153449(n)+A001106(n)` -/
def P11857149993145189091.Spec : Prop :=
  ∀ n, P11857149993145189091.a n = A193872 n

end A193872

/-! ## A193872.P6057402975908583967

`A152994(n)+A014105(n)`
-/

namespace A193872.P6057402975908583967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152994 n + A014105 n

end

end A193872.P6057402975908583967

namespace A193872

/-- `A152994(n)+A014105(n)` -/
def P6057402975908583967.Spec : Prop :=
  ∀ n, P6057402975908583967.a n = A193872 n

end A193872

/-! ## A193872.P11505632355873120806

`A152746(n)+A014635(n)`
-/

namespace A193872.P11505632355873120806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152746 n + A014635 n

end

end A193872.P11505632355873120806

namespace A193872

/-- `A152746(n)+A014635(n)` -/
def P11505632355873120806.Spec : Prop :=
  ∀ n, P11505632355873120806.a n = A193872 n

end A193872

/-! ## A193872.P16269306021216830213

`A152759(n)+A022276(n)`
-/

namespace A193872.P16269306021216830213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152759 n + A022276 n

end

end A193872.P16269306021216830213

namespace A193872

/-- `A152759(n)+A022276(n)` -/
def P16269306021216830213.Spec : Prop :=
  ∀ n, P16269306021216830213.a n = A193872 n

end A193872

/-! ## A193872.P6632539748667051846

`A153785(n)+A022272(n)`
-/

namespace A193872.P6632539748667051846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153785 n + A022272 n

end

end A193872.P6632539748667051846

namespace A193872

/-- `A153785(n)+A022272(n)` -/
def P6632539748667051846.Spec : Prop :=
  ∀ n, P6632539748667051846.a n = A193872 n

end A193872

/-! ## A193872.P3125680778249057421

`A152777(n)+A028895(n)`
-/

namespace A193872.P3125680778249057421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152777 n + A028895 n

end

end A193872.P3125680778249057421

namespace A193872

/-- `A152777(n)+A028895(n)` -/
def P3125680778249057421.Spec : Prop :=
  ∀ n, P3125680778249057421.a n = A193872 n

end A193872

/-! ## A193872.P10554243208160014932

`A152760(n)+A033580(n)`
-/

namespace A193872.P10554243208160014932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152760 n + A033580 n

end

end A193872.P10554243208160014932

namespace A193872

/-- `A152760(n)+A033580(n)` -/
def P10554243208160014932.Spec : Prop :=
  ∀ n, P10554243208160014932.a n = A193872 n

end A193872

/-!
# A193873: Smallest product of three distinct primes of the form n*k+1.

The programs for A193873, there is no canonical definition to state claims against.
-/

/-! ## A193873.P17033782535935145043

`(A194267(n+1)-A194266(n+1))*A194265(n+1)`
-/

namespace A193873.P17033782535935145043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A194267 (n + 1) - A194266 (n + 1)) * A194265 (n + 1)

end

end A193873.P17033782535935145043

/-!
# A193879: Different leap years in the Gregorian and the revised Julian calendars.

The programs for A193879, there is no canonical definition to state claims against.
-/

/-! ## A193879.P8812173362609449551

`eq[3, Δ[A052404(A052419(2*n+3))]]`
-/

namespace A193879.P8812173362609449551
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052404 (A052419 (2 * n + 3)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A193879.P8812173362609449551

/-! ## A193879.P5580219711972600432

`eq[∑{digits}[n, (#%2)!], A196563(A344748(n+1))]`
-/

namespace A193879.P5580219711972600432
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => Nat.factorial (x % 2)).sum

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196563 (A344748 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A193879.P5580219711972600432

/-! ## A193879.P15626888850027230162

`eq[A055642(n), A196563(A344748(n+1))]`
-/

namespace A193879.P15626888850027230162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196563 (A344748 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A193879.P15626888850027230162

/-!
# A193880: 0.75-Ramanujan primes R_{0.75,n}: a(n) is the smallest number such that for all x >= a(n), we have pi(x) - pi(0.75x) >= n, where pi(x) is the number of primes <= x.

The programs for A193880, there is no canonical definition to state claims against.
-/

/-! ## A193880.P14072243299400097825

`or(1, A111227(A090704(n+1)))`
-/

namespace A193880.P14072243299400097825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A111227 (A090704 (n + 1)).toNat)

end

end A193880.P14072243299400097825

/-! ## A193880.P9888177415974868425

`A247228(lt[A033638(n), A208981(3*n+4)])`
-/

namespace A193880.P9888177415974868425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033638 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208981 (3 * n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247228 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A193880.P9888177415974868425

/-!
# A193883: Expansion of x * phi(x) * psi(x^14) / (f(-x) * f(-x^7)) in powers of x where phi(), psi(), f() are Ramanujan theta functions.

The programs for A193883, there is no canonical definition to state claims against.
-/

/-! ## A193883.P4434400488693752173

`A102314(4*n+2)`
-/

namespace A193883.P4434400488693752173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102314 (4 * n + 2)

end

end A193883.P4434400488693752173

/-! ## A193883.P4716058742105816119

`record[A102314(or(2, n))]`
-/

namespace A193883.P4716058742105816119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102314 (Nat.lor 2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A193883.P4716058742105816119

/-! ## A193883.P5837961634942849507

`record[A102314(xor(2, n))]`
-/

namespace A193883.P5837961634942849507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102314 (Nat.xor 2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A193883.P5837961634942849507

/-! ## A193883.P16471356689373279504

`A112212(4*n+2)`
-/

namespace A193883.P16471356689373279504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112212 (4 * n + 2)

end

end A193883.P16471356689373279504

/-! ## A193883.P10881582141360723242

`record[A102314(lcm(2, n+2))]`
-/

namespace A193883.P10881582141360723242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102314 (Nat.lcm 2 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A193883.P10881582141360723242

/-! ## A193883.P16590115428181547866

`record[A102314(A004443(n))]`
-/

namespace A193883.P16590115428181547866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102314 (A004443 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A193883.P16590115428181547866

/-! ## A193883.P1621016707767929588

`abs(A102314(Δ[A001105(n)]))`
-/

namespace A193883.P1621016707767929588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001105 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A102314 (f1 (n + 1) - f1 n).toNat|

end

end A193883.P1621016707767929588

/-! ## A193883.P11220253689062823396

`record[A112212(2*A029579(n))]`
-/

namespace A193883.P11220253689062823396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112212 (2 * A029579 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A193883.P11220253689062823396

/-!
# A193884: Expansion of o.g.f. (1-x^2)/(1-x+x^4).

The programs for A193884, the canonical program `A193884.P16726564138146900502` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A193884 has offset 0).

The definition of A193884 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x^2)/(1-x+x^4))` (program `A193884.P16726564138146900502`, by `A193884.P16726564138146900502.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A193884.P16726564138146900502

`ogf((1-x^2)/(1-x+x^4))`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A193884

/-- `ogf((1-x^2)/(1-x+x^4))` -/
def P16726564138146900502.Spec : Prop :=
  ∀ n, P16726564138146900502.a n = A193884 n

theorem P16726564138146900502.correct : P16726564138146900502.Spec := by
  intro n
  simp only [A193884]

end A193884

/-! ## A193884.P13506400940506141556

`a(n-1)-a(n-4)` with `a(0)=1, a(1)=1, a(2)=0, a(3)=0`
-/

namespace A193884.P13506400940506141556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 0, 0] fun n a =>
  a (n - 1) - a (n - 4)

end

end A193884.P13506400940506141556

namespace A193884

/-- `a(n-1)-a(n-4)` -/
def P13506400940506141556.Spec : Prop :=
  ∀ n, P13506400940506141556.a n = A193884 n

end A193884

/-! ## A193884.P15781257376887416413

`A099530(n)+Δ[A099530(n+1)]`
-/

namespace A193884.P15781257376887416413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099530 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099530 n + (f1 (n + 1) - f1 n)

end

end A193884.P15781257376887416413

namespace A193884

/-- `A099530(n)+Δ[A099530(n+1)]` -/
def P15781257376887416413.Spec : Prop :=
  ∀ n, P15781257376887416413.a n = A193884 n

end A193884

/-!
# A193885: a(n) = 3*a(n-1) - 3*a(n-2) + a(n-3) - a(n-4), n>=4; a(0) = 1, a(1) = 1, a(2) = 2, a(3) = 3.

The programs for A193885, the canonical program `A193885.P822499396170291842` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A193885 has offset 0).

The definition of A193885 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*a(n-1)-3*a(n-2)+a(n-3)-a(n-4)` (program `A193885.P822499396170291842`, by `A193885.P822499396170291842.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A193885.P822499396170291842

`3*a(n-1)-3*a(n-2)+a(n-3)-a(n-4)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=3`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A193885

/-- `3*a(n-1)-3*a(n-2)+a(n-3)-a(n-4)` -/
def P822499396170291842.Spec : Prop :=
  ∀ n, P822499396170291842.a n = A193885 n

theorem P822499396170291842.correct : P822499396170291842.Spec := by
  intro n
  simp only [A193885]

end A193885

/-! ## A193885.P16884513977516641272

`(-1)^(n+1)*(A099531(n+4)+2*A099531(n+3)+2*A099531(n+2)+A099531(n+1))`
-/

namespace A193885.P16884513977516641272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ (n + 1) * (A099531 (n + 4) + 2 * A099531 (n + 3) + 2 * A099531 (n + 2) + A099531 (n + 1))

end

end A193885.P16884513977516641272

namespace A193885

/-- `(-1)^(n+1)*(A099531(n+4)+2*A099531(n+3)+2*A099531(n+2)+A099531(n+1))` -/
def P16884513977516641272.Spec : Prop :=
  ∀ n, P16884513977516641272.a n = A193885 n

end A193885

/-! ## A193885.P6490924389003862088

`ogf((1-2x+2x^2-x^3)/(1-3x+3x^2-x^3+x^4))`
-/

namespace A193885.P6490924389003862088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2, 2, -1] [1, -3, 3, -1, 1] n

end

end A193885.P6490924389003862088

namespace A193885

/-- `ogf((1-2x+2x^2-x^3)/(1-3x+3x^2-x^3+x^4))` -/
def P6490924389003862088.Spec : Prop :=
  ∀ n, P6490924389003862088.a n = A193885 n

end A193885

/-! ## A193885.P10656639805643704479

`A074279(A200753(n))-A000332(n)`
-/

namespace A193885.P10656639805643704479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074279 (A200753 n).toNat - A000332 n

end

end A193885.P10656639805643704479

namespace A193885

/-- `A074279(A200753(n))-A000332(n)` -/
def P10656639805643704479.Spec : Prop :=
  ∀ n, P10656639805643704479.a n = A193885 n

end A193885

/-! ## A193885.P16237770903059222714

`A045891(n)-A095941(A032555(n+1))`
-/

namespace A193885.P16237770903059222714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045891 n - A095941 (A032555 (n + 1)).toNat

end

end A193885.P16237770903059222714

namespace A193885

/-- `A045891(n)-A095941(A032555(n+1))` -/
def P16237770903059222714.Spec : Prop :=
  ∀ n, P16237770903059222714.a n = A193885 n

end A193885

/-!
# A193891: Triangular array: the self-fusion of (p(n,x)), where p(n,x)=x^n+2x^(n-1)+3x^(n-2)+...+nx+(n+1).

The programs for A193891, there is no canonical definition to state claims against.
-/

/-! ## A193891.P5785657787393125242

`A193892(∑[2*n]%comp[∑[n]])`
-/

namespace A193891.P5785657787393125242
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193892 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A193891.P5785657787393125242

/-! ## A193891.P18238619689195378717

`A193892(∑[char[∑[n]]]²-(n+1))`
-/

namespace A193891.P18238619689195378717
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193892 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - (n + 1))

end

end A193891.P18238619689195378717

/-! ## A193891.P5360508351016581841

`gcd(A000038(n), A193892(A061579(n)))`
-/

namespace A193891.P5360508351016581841
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A193892 (A061579 n).toNat)

end

end A193891.P5360508351016581841

/-! ## A193891.P13175305850103895488

`lcm(A033999(n), A193892(A061579(n)))`
-/

namespace A193891.P13175305850103895488
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A193892 (A061579 n).toNat)

end

end A193891.P13175305850103895488

/-! ## A193891.P6442501962709426393

`A004275(A082652(n+1))+2-A193975(n)`
-/

namespace A193891.P6442501962709426393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A082652 (n + 1)).toNat + (2 - A193975 n)

end

end A193891.P6442501962709426393

/-!
# A193892: Mirror of the triangle A193891.

The programs for A193892, there is no canonical definition to state claims against.
-/

/-! ## A193892.P171585840886232072

`A193891(∑[2*n]%comp[∑[n]])`
-/

namespace A193892.P171585840886232072
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193891 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A193892.P171585840886232072

/-! ## A193892.P6814102209132822430

`A193891(∑[char[∑[n]]]²-(n+1))`
-/

namespace A193892.P6814102209132822430
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193891 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - (n + 1))

end

end A193892.P6814102209132822430

/-! ## A193892.P5755748118425417112

`gcd(A000038(n), A193891(A061579(n)))`
-/

namespace A193892.P5755748118425417112
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A193891 (A061579 n).toNat)

end

end A193892.P5755748118425417112

/-! ## A193892.P2027261608390779380

`lcm(A033999(n), A193891(A061579(n)))`
-/

namespace A193892.P2027261608390779380
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A193891 (A061579 n).toNat)

end

end A193892.P2027261608390779380

/-! ## A193892.P3869880150408603112

`A007318(C(2, n))*A193891(A061579(n))`
-/

namespace A193892.P3869880150408603112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A193891 (A061579 n).toNat

end

end A193892.P3869880150408603112

/-! ## A193892.P5209840106027990840

`A193891(A061579(n))+A008683(4*(n+1))`
-/

namespace A193892.P5209840106027990840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193891 (A061579 n).toNat + A008683 (4 * (n + 1))

end

end A193892.P5209840106027990840

/-! ## A193892.P9523842523371480802

`A007318(C(3, n))+A193891(A061579(n))-1`
-/

namespace A193892.P9523842523371480802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 3 n) + (A193891 (A061579 n).toNat - 1)

end

end A193892.P9523842523371480802

/-!
# A193893: Triangular array: the self-fusion of (p(n,x)), where p(n,x)=sum{(k+1)(n+1)*x^(n-k) : 0<=k<=n}.

The programs for A193893, there is no canonical definition to state claims against.
-/

/-! ## A193893.P1561547901370957000

`A193894(∑[2*n]%comp[∑[n]])`
-/

namespace A193893.P1561547901370957000
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193894 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A193893.P1561547901370957000

/-! ## A193893.P18402606851041892319

`A193894(∑[char[∑[n]]]²-(n+1))`
-/

namespace A193893.P18402606851041892319
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193894 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - (n + 1))

end

end A193893.P18402606851041892319

/-! ## A193893.P5699173601175203312

`A193894(A061579(n))%A067983(n)`
-/

namespace A193893.P5699173601175203312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A193894 (A061579 n).toNat) (A067983 n)

end

end A193893.P5699173601175203312

/-! ## A193893.P2683965052260068008

`gcd(A000038(n), A193894(A061579(n)))`
-/

namespace A193893.P2683965052260068008
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A193894 (A061579 n).toNat)

end

end A193893.P2683965052260068008

/-! ## A193893.P2066937631759975317

`A193894(A061579(n))+A000038(n+1)`
-/

namespace A193893.P2066937631759975317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193894 (A061579 n).toNat + A000038 (n + 1)

end

end A193893.P2066937631759975317

/-!
# A193894: Mirror of the triangle A193893.

The programs for A193894, there is no canonical definition to state claims against.
-/

/-! ## A193894.P11802725525615969128

`A193893(∑[2*n]%comp[∑[n]])`
-/

namespace A193894.P11802725525615969128
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193893 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A193894.P11802725525615969128

/-! ## A193894.P9413837393587939174

`A193893(∑[char[∑[n]]]²-(n+1))`
-/

namespace A193894.P9413837393587939174
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193893 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - (n + 1))

end

end A193894.P9413837393587939174

/-! ## A193894.P3607936921158054802

`A193893(A061579(n))%A067983(n)`
-/

namespace A193894.P3607936921158054802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A193893 (A061579 n).toNat) (A067983 n)

end

end A193894.P3607936921158054802

/-! ## A193894.P7558414766638936933

`gcd(A000038(n), A193893(A061579(n)))`
-/

namespace A193894.P7558414766638936933
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A193893 (A061579 n).toNat)

end

end A193894.P7558414766638936933

/-! ## A193894.P10155555204711967178

`A193893(A061579(n))+A000038(A193893(n))`
-/

namespace A193894.P10155555204711967178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193893 (A061579 n).toNat + A000038 (A193893 n).toNat

end

end A193894.P10155555204711967178

/-!
# A193895: Triangular array: the fusion of (p(n,x)) by (q(n,x)), where p(n,x)=sum{(k+1)*x^(n-k) : 0<=k<=n} and q(n,x)=sum{(k+1)*x^k : 0<=k<=n}.

The programs for A193895, there is no canonical definition to state claims against.
-/

/-! ## A193895.P16331959873381325653

`floor(acot(n))+A004736(n+1)*A141418(n+1)`
-/

namespace A193895.P16331959873381325653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (n : ℝ)⌋ + A004736 (n + 1) * A141418 (n + 1)

end

end A193895.P16331959873381325653

/-! ## A193895.P17552228225978231549

`C(2, n+2)+A003991(n+1)*A294317(n)/2`
-/

namespace A193895.P17552228225978231549
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose 2 (n + 2) : ℚ) + (A003991 (n + 1) * A294317 n : ℚ) / 2

end

end A193895.P17552228225978231549

/-! ## A193895.P14305924098224002991

`A065033(A003991(n+1)*A294317(n))`
-/

namespace A193895.P14305924098224002991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A003991 (n + 1) * A294317 n).toNat

end

end A193895.P14305924098224002991

/-! ## A193895.P18036749574642458699

`A123108(A003991(n+1)*A294317(n))`
-/

namespace A193895.P18036749574642458699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A003991 (n + 1) * A294317 n).toNat

end

end A193895.P18036749574642458699

/-! ## A193895.P12921856850008814200

`A028310(A004736(n+1)*A141418(n+1))`
-/

namespace A193895.P12921856850008814200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A004736 (n + 1) * A141418 (n + 1)).toNat

end

end A193895.P12921856850008814200

/-! ## A193895.P8219246486205587368

`A003991(n+1)/2*A294317(A028310(n))`
-/

namespace A193895.P8219246486205587368
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003991 (n + 1) : ℚ) / 2 * (A294317 (A028310 n).toNat : ℚ)

end

end A193895.P8219246486205587368

/-! ## A193895.P15896622872272439854

`A123108(2*A004736(n+1)*A141418(n+1))`
-/

namespace A193895.P15896622872272439854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (2 * (A004736 (n + 1) * A141418 (n + 1))).toNat

end

end A193895.P15896622872272439854

/-! ## A193895.P16032766178383364828

`(A141418(n+1)+A000007(n))*A004736(n+1)`
-/

namespace A193895.P16032766178383364828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A141418 (n + 1) + A000007 n) * A004736 (n + 1)

end

end A193895.P16032766178383364828

/-! ## A193895.P12139739193287016215

`A000005(A130321(n))*A028310(A141418(n+1))`
-/

namespace A193895.P12139739193287016215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A130321 n).toNat * A028310 (A141418 (n + 1)).toNat

end

end A193895.P12139739193287016215

/-! ## A193895.P6004923848294164842

`(A141418(n+1)+A000007(n))*A000005(A130321(n))`
-/

namespace A193895.P6004923848294164842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A141418 (n + 1) + A000007 n) * A000005 (A130321 n).toNat

end

end A193895.P6004923848294164842

/-!
# A193896: Mirror of the triangle A193895.

The programs for A193896, there is no canonical definition to state claims against.
-/

/-! ## A193896.P18005038487573610319

`ceil(A003991(n+1)/2*A134478(n))`
-/

namespace A193896.P18005038487573610319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A003991 (n + 1) : ℚ) / 2 * (A134478 n : ℚ)⌉

end

end A193896.P18005038487573610319

/-! ## A193896.P16473901489318777413

`A003991(abs(1-n)+2)*A134478(n)/2`
-/

namespace A193896.P16473901489318777413
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003991 (|1 - (n : ℤ)| + 2).toNat * A134478 n : ℚ) / 2

end

end A193896.P16473901489318777413

/-! ## A193896.P2742871862234668460

`lcm(2, A003991(1-char[2]+n)*A134478(n))/2`
-/

namespace A193896.P2742871862234668460
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A003991 (1 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + (n : ℤ)).toNat * A134478 n) : ℚ) / 2

end

end A193896.P2742871862234668460

/-! ## A193896.P5195277257691254821

`floor(sqrt((A003991(n+1)*A051162(n)/2)²+1))`
-/

namespace A193896.P5195277257691254821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (((A003991 (n + 1) * A051162 n : ℚ) / 2) ^ 2 + 1 : ℝ)⌋

end

end A193896.P5195277257691254821

/-! ## A193896.P16169121404939193011

`A065033(A003991(n+1)*A051162(n))`
-/

namespace A193896.P16169121404939193011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A003991 (n + 1) * A051162 n).toNat

end

end A193896.P16169121404939193011

/-! ## A193896.P11992044958319293244

`A004525(A003991(n+1)*A134478(n))`
-/

namespace A193896.P11992044958319293244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A003991 (n + 1) * A134478 n).toNat

end

end A193896.P11992044958319293244

/-! ## A193896.P1026835512113060862

`A026741(A003991(n+1)*A134478(n))`
-/

namespace A193896.P1026835512113060862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A003991 (n + 1) * A134478 n).toNat

end

end A193896.P1026835512113060862

/-! ## A193896.P13617860334516442783

`A032742(A003991(n+1)*A134478(n))`
-/

namespace A193896.P13617860334516442783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A003991 (n + 1) * A134478 n).toNat

end

end A193896.P13617860334516442783

/-! ## A193896.P7239067165041867018

`A193895(A061579(n))`
-/

namespace A193896.P7239067165041867018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193895 (A061579 n).toNat

end

end A193896.P7239067165041867018

/-!
# A193897: Triangular array: the self-fusion of (p(n,x)), where p(n,x)=sum{(k+1)*x^k : 0<=k<=n}.

The programs for A193897, there is no canonical definition to state claims against.
-/

/-! ## A193897.P4151069088223089826

`(C(comp[∑[n]]-n, 2)-n)*A000217(A193738(n))`
-/

namespace A193897.P4151069088223089826
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ)) * A000217 (A193738 n).toNat

end

end A193897.P4151069088223089826

/-! ## A193897.P9663305334500006084

`A104633(A061579(n)+Δ[A051162(n)])`
-/

namespace A193897.P9663305334500006084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051162 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104633 (A061579 n + (f1 (n + 1) - f1 n)).toNat

end

end A193897.P9663305334500006084

/-! ## A193897.P16109360485842793469

`A000217(A193738(n))*A004736(n+1)`
-/

namespace A193897.P16109360485842793469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A193738 n).toNat * A004736 (n + 1)

end

end A193897.P16109360485842793469

/-! ## A193897.P4156137151607382919

`(A025581(n)+1)*A000217(A193738(n))`
-/

namespace A193897.P4156137151607382919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A025581 n + 1) * A000217 (A193738 n).toNat

end

end A193897.P4156137151607382919

/-! ## A193897.P4376453442624936989

`sqrt(A055461(n+1))*A000217(A193738(n))`
-/

namespace A193897.P4376453442624936989
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A055461 (n + 1) : ℝ) * (A000217 (A193738 n).toNat : ℝ)

end

end A193897.P4376453442624936989

/-! ## A193897.P14679635860743548561

`(A099375(n)+1)/2*A000217(A193738(n))`
-/

namespace A193897.P14679635860743548561
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A099375 n + 1 : ℚ) / 2 * (A000217 (A193738 n).toNat : ℚ)

end

end A193897.P14679635860743548561

/-! ## A193897.P4552836306190265476

`(val(A036561(n), 2)+1)*A000217(A193738(n))`
-/

namespace A193897.P4552836306190265476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (A036561 n).toNat 2 + 1 : ℤ) * A000217 (A193738 n).toNat

end

end A193897.P4552836306190265476

/-! ## A193897.P6864125318497543343

`val(A043569(n+1), 2)*A000217(A193738(n))`
-/

namespace A193897.P6864125318497543343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (A043569 (n + 1)).toNat 2 : ℤ) * A000217 (A193738 n).toNat

end

end A193897.P6864125318497543343

/-! ## A193897.P12052032376789623948

`A000217(A193738(n))*A005555(A025581(n))`
-/

namespace A193897.P12052032376789623948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A193738 n).toNat * A005555 (A025581 n).toNat

end

end A193897.P12052032376789623948

/-! ## A193897.P6761648311402162011

`A000005(A130321(n))*A000217(A193738(n))`
-/

namespace A193897.P6761648311402162011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A130321 n).toNat * A000217 (A193738 n).toNat

end

end A193897.P6761648311402162011

/-!
# A193898: Mirror of the triangle A193897.

The programs for A193898, there is no canonical definition to state claims against.
-/

/-! ## A193898.P11029164827105701936

`A104633(2-A130296(n+1)+n)`
-/

namespace A193898.P11029164827105701936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104633 (2 - A130296 (n + 1) + (n : ℤ)).toNat

end

end A193898.P11029164827105701936

/-! ## A193898.P5159850351600674041

`C(A193739(n)+1, 2)*A002260(n+1)`
-/

namespace A193898.P5159850351600674041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (A193739 n + 1).toNat 2 : ℤ) * A002260 (n + 1)

end

end A193898.P5159850351600674041

/-! ## A193898.P12308689473858186415

`A104633(A158405(n+1)+A056943(n))`
-/

namespace A193898.P12308689473858186415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104633 (A158405 (n + 1) + A056943 n).toNat

end

end A193898.P12308689473858186415

/-! ## A193898.P1603398041095839969

`(A002262(n)+1)*A000217(A193739(n))`
-/

namespace A193898.P1603398041095839969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002262 n + 1) * A000217 (A193739 n).toNat

end

end A193898.P1603398041095839969

/-! ## A193898.P11279272889668488449

`A000217(A193739(n))*A002260(n+1)`
-/

namespace A193898.P11279272889668488449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A193739 n).toNat * A002260 (n + 1)

end

end A193898.P11279272889668488449

/-! ## A193898.P3129354338103607358

`abs(A140756(n+1))*A000217(A193739(n))`
-/

namespace A193898.P3129354338103607358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A140756 (n + 1)| * A000217 (A193739 n).toNat

end

end A193898.P3129354338103607358

/-! ## A193898.P13440790748785728360

`A000217(A193739(n))*A097285(2*n+1)`
-/

namespace A193898.P13440790748785728360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A193739 n).toNat * A097285 (2 * n + 1)

end

end A193898.P13440790748785728360

/-! ## A193898.P17091090180435830672

`A028310(A104633(n+1)-A066182(n+1)+n)`
-/

namespace A193898.P17091090180435830672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A104633 (n + 1) - A066182 (n + 1) + (n : ℤ)).toNat

end

end A193898.P17091090180435830672

/-! ## A193898.P14826329378820425216

`A104633(n+1)/A066182(n+1)*A028310(n)`
-/

namespace A193898.P14826329378820425216
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A104633 (n + 1) : ℚ) / (A066182 (n + 1) : ℚ) * (A028310 n : ℚ)

end

end A193898.P14826329378820425216

/-! ## A193898.P8252507206398977218

`A000005(A059268(n))*A000217(A193739(n))`
-/

namespace A193898.P8252507206398977218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A059268 n).toNat * A000217 (A193739 n).toNat

end

end A193898.P8252507206398977218

/-!
# A193899: Triangular array: the self-fusion of (p(n,x)), where p(n,x)=x*p(n-1,x)+2^n, p(0,x)=1.

The programs for A193899, there is no canonical definition to state claims against.
-/

/-! ## A193899.P4090892843741983888

`A193900(∑[2*n]%comp[∑[n]])`
-/

namespace A193899.P4090892843741983888
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193900 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A193899.P4090892843741983888

/-! ## A193899.P16745721880687708383

`A193900(∑[char[∑[n]]]²-(n+1))`
-/

namespace A193899.P16745721880687708383
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193900 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - (n + 1))

end

end A193899.P16745721880687708383

/-! ## A193899.P2465330203404917362

`or(char[1], A193900(A061579(n)))`
-/

namespace A193899.P2465330203404917362
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A193900 (A061579 n).toNat)

end

end A193899.P2465330203404917362

/-! ## A193899.P15053392826088788193

`A115216(A245300(n)-A051162(n))`
-/

namespace A193899.P15053392826088788193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115216 (A245300 n - A051162 n).toNat

end

end A193899.P15053392826088788193

/-! ## A193899.P10649909818489543175

`A007318(∑[n])*A193900(A061579(n))`
-/

namespace A193899.P10649909818489543175
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A193900 (A061579 n).toNat

end

end A193899.P10649909818489543175

