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
import Seq.B000.C017
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
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
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
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

/-!
# A259800: Guttmann-Torrie series coefficients c_{2n}^{21} for square lattice rotated by Pi/4, with wedge angle Pi/2.

The programs for A259800, there is no canonical definition to state claims against.
-/

/-! ## A259800.P11804705183819689990

`A264810((n+1)*A123164(n))`
-/

namespace A259800.P11804705183819689990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264810 ((n + 1 : ℤ) * A123164 n).toNat

end

end A259800.P11804705183819689990

/-! ## A259800.P16333257940292807186

`A029917(A030841(n+1)+A000351(n))`
-/

namespace A259800.P16333257940292807186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029917 (A030841 (n + 1) + A000351 n).toNat

end

end A259800.P16333257940292807186

/-!
# A259802: Guttmann-Torrie series coefficients rho_n*c_{n}^{2} for square lattice, with wedge angle Pi/2.

The programs for A259802, there is no canonical definition to state claims against.
-/

/-! ## A259802.P14354658603527054681

`A303644(A303666(n+2))/2`
-/

namespace A259802.P14354658603527054681
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A303644 (A303666 (n + 2)).toNat : ℚ) / 2

end

end A259802.P14354658603527054681

/-!
# A259803: Guttmann-Torrie series coefficients c_{n}^{21} for square lattice, with wedge angle Pi/2.

The programs for A259803, there is no canonical definition to state claims against.
-/

/-! ## A259803.P15555384543281419530

`A156689(A145267(n))`
-/

namespace A259803.P15555384543281419530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156689 (A145267 n).toNat

end

end A259803.P15555384543281419530

/-! ## A259803.P17286658409853377991

`A352131(A186764(n))+A082499(n+1)`
-/

namespace A259803.P17286658409853377991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352131 (A186764 n).toNat + A082499 (n + 1)

end

end A259803.P17286658409853377991

/-! ## A259803.P14421584061350011831

`A259549(A259544(n+1)-A373362(n+1))`
-/

namespace A259803.P14421584061350011831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259549 (A259544 (n + 1) - A373362 (n + 1)).toNat

end

end A259803.P14421584061350011831

/-!
# A259804: Guttmann-Torrie series coefficients rho_n*c_{n}^{2} for square lattice, with wedge angle Pi/4.

The programs for A259804, there is no canonical definition to state claims against.
-/

/-! ## A259804.P2776718102197691537

`A198832(A002625(n))`
-/

namespace A259804.P2776718102197691537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198832 (A002625 n).toNat

end

end A259804.P2776718102197691537

/-!
# A259805: Guttmann-Torrie series coefficients c_{n}^{21} for square lattice, with wedge angle Pi/4.

The programs for A259805, there is no canonical definition to state claims against.
-/

/-! ## A259805.P11956083942016422523

`A257639(A245734(n)+A024430(n))`
-/

namespace A259805.P11956083942016422523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257639 (A245734 n + A024430 n).toNat

end

end A259805.P11956083942016422523

/-! ## A259805.P3982459476382045533

`or(A107246(n), A261104(A243838(n)))`
-/

namespace A259805.P3982459476382045533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A107246 n) (A261104 (A243838 n).toNat)

end

end A259805.P3982459476382045533

/-! ## A259805.P17373539510526016610

`A367512(A300509(2*(n+2)))+A202842(n)`
-/

namespace A259805.P17373539510526016610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367512 (A300509 (2 * (n + 2))).toNat + A202842 n

end

end A259805.P17373539510526016610

/-! ## A259805.P11767141749631058187

`A113619(A023431(n))`
-/

namespace A259805.P11767141749631058187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113619 (A023431 n).toNat

end

end A259805.P11767141749631058187

/-! ## A259805.P14700800682163978563

`A130148(A073191(n))`
-/

namespace A259805.P14700800682163978563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130148 (A073191 n).toNat

end

end A259805.P14700800682163978563

/-!
# A259807: Guttmann-Torrie simple cubic lattice series coefficients c_n^{22}(Pi).

The programs for A259807, there is no canonical definition to state claims against.
-/

/-! ## A259807.P10118259632794442996

`A364056(A148578(n))`
-/

namespace A259807.P10118259632794442996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364056 (A148578 n).toNat

end

end A259807.P10118259632794442996

/-! ## A259807.P850133151434332968

`2*A277620(A001255(n))`
-/

namespace A259807.P850133151434332968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A277620 (A001255 n).toNat

end

end A259807.P850133151434332968

/-!
# A259808: Guttmann-Torrie simple cubic lattice series coefficients c_n^{2}(Pi/2).

The programs for A259808, there is no canonical definition to state claims against.
-/

/-! ## A259808.P782972032762409270

`A336862(∑[4*n]+1)`
-/

namespace A259808.P782972032762409270
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336862 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A259808.P782972032762409270

/-!
# A259809: Guttmann-Torrie simple cubic lattice series coefficients c_n^{21}(Pi/2).

The programs for A259809, there is no canonical definition to state claims against.
-/

/-! ## A259809.P12580782523463286224

`∑[∑[xor(2, A321484(2*(n+1)))]]`
-/

namespace A259809.P12580782523463286224
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 2 (A321484 (2 * (n + 1)))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A259809.P12580782523463286224

/-!
# A259810: Guttmann-Torrie simple cubic lattice series coefficients c_n^{22}(Pi/2).

The programs for A259810, there is no canonical definition to state claims against.
-/

/-! ## A259810.P17283724786635288850

`A286636(2*a(n-2))` with `a(0)=2, a(1)=2, a(2)=6`
-/

namespace A259810.P17283724786635288850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 2, 6] fun n a =>
  A286636 (2 * a (n - 2)).toNat

end

end A259810.P17283724786635288850

/-! ## A259810.P13827693992169998507

`A140486(A148237(n))`
-/

namespace A259810.P13827693992169998507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140486 (A148237 n).toNat

end

end A259810.P13827693992169998507

/-!
# A259811: Guttmann-Torrie simple cubic lattice series coefficients c_n^{2}(Pi/4).

The programs for A259811, there is no canonical definition to state claims against.
-/

/-! ## A259811.P1467815504753639216

`A001462(Δ[A095676(n)])`
-/

namespace A259811.P1467815504753639216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095676 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (f1 (n + 1) - f1 n).toNat

end

end A259811.P1467815504753639216

/-!
# A259812: Guttmann-Torrie simple cubic lattice series coefficients c_n^{21}(Pi/4).

The programs for A259812, there is no canonical definition to state claims against.
-/

/-! ## A259812.P11094782863859058394

`A289780(n)+A055093(A002544(n))`
-/

namespace A259812.P11094782863859058394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289780 n + A055093 (A002544 n).toNat

end

end A259812.P11094782863859058394

/-! ## A259812.P8863749547357067538

`A009004(A003501(n)-A318683(n))`
-/

namespace A259812.P8863749547357067538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009004 (A003501 n - A318683 n).toNat

end

end A259812.P8863749547357067538

/-!
# A259813: Guttmann-Torrie simple cubic lattice series coefficients c_n^{22}(Pi/4).

The programs for A259813, there is no canonical definition to state claims against.
-/

/-! ## A259813.P5911669845012250250

`A148230(n)+A003056(A149403(n))`
-/

namespace A259813.P5911669845012250250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148230 n + A003056 (A149403 n).toNat

end

end A259813.P5911669845012250250

/-! ## A259813.P15564069933291608076

`A104103(∏[A158745(n)])`
-/

namespace A259813.P15564069933291608076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158745 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104103 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A259813.P15564069933291608076

/-! ## A259813.P14288434332758743771

`2*A097285(A239837(n))`
-/

namespace A259813.P14288434332758743771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A097285 (A239837 n).toNat

end

end A259813.P14288434332758743771

/-!
# A259814: Total length of self-avoiding walks with n bonds on the square lattice with additional bridges of length 1.

The programs for A259814, there is no canonical definition to state claims against.
-/

/-! ## A259814.P6695434260277015032

`4*A006815(n+1)`
-/

namespace A259814.P6695434260277015032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A006815 (n + 1)

end

end A259814.P6695434260277015032

/-! ## A259814.P14658763037201992910

`A008574(A006815(n+1))`
-/

namespace A259814.P14658763037201992910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (A006815 (n + 1)).toNat

end

end A259814.P14658763037201992910

/-! ## A259814.P15005976604577252167

`A004767(A006815(n+1)-1)+1`
-/

namespace A259814.P15005976604577252167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004767 (A006815 (n + 1) - 1).toNat + 1

end

end A259814.P15005976604577252167

/-! ## A259814.P1667479925980321733

`A016813(A006815(n+1))-A005134(n)`
-/

namespace A259814.P1667479925980321733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 (A006815 (n + 1)).toNat - A005134 n

end

end A259814.P1667479925980321733

/-!
# A259816: Total length of self-avoiding walks with n bonds on the square lattice with additional bridges of length 2.

The programs for A259816, there is no canonical definition to state claims against.
-/

/-! ## A259816.P15903279939045901390

`A356641(A058397(n+2))`
-/

namespace A259816.P15903279939045901390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356641 (A058397 (n + 2)).toNat

end

end A259816.P15903279939045901390

/-!
# A259821: a(n) = floor( (3^n+1)^2/3^n ).

The programs for A259821, the canonical program `A259821.P9663721276647778397` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A259821 has offset 0).

The definition of A259821 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor((3^n+1)²/3^n)` (program `A259821.P9663721276647778397`, by `A259821.P9663721276647778397.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A259821.P9936840158486962412

`4*a(n-1)-3*a(n-2)` with `a(0)=4, a(1)=5, a(2)=11`
-/

namespace A259821.P9936840158486962412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4, 5, 11] fun n a =>
  4 * a (n - 1) - 3 * a (n - 2)

end

end A259821.P9936840158486962412

namespace A259821

/-- `4*a(n-1)-3*a(n-2)` -/
def P9936840158486962412.Spec : Prop :=
  ∀ n, P9936840158486962412.a n = A259821 n

end A259821

/-! ## A259821.P9663721276647778397

`floor((3^n+1)²/3^n)`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A259821

/-- `floor((3^n+1)²/3^n)` -/
def P9663721276647778397.Spec : Prop :=
  ∀ n, P9663721276647778397.a n = A259821 n

theorem P9663721276647778397.correct : P9663721276647778397.Spec := by
  intro n
  simp only [A259821]

end A259821

/-! ## A259821.P14027808566261147880

`ceil(2^acot(n)+3^n)`
-/

namespace A259821.P14027808566261147880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 : ℝ) ^ (SequenceMachineLib.acot (n : ℝ)) + (3 ^ n : ℝ)⌉

end

end A259821.P14027808566261147880

namespace A259821

/-- `ceil(2^acot(n)+3^n)` -/
def P14027808566261147880.Spec : Prop :=
  ∀ n, P14027808566261147880.a n = A259821 n

end A259821

/-! ## A259821.P3518345898715373988

`3*a(n-1)-4` with `a(0)=4, a(1)=5`
-/

namespace A259821.P3518345898715373988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4, 5] fun n a =>
  3 * a (n - 1) - 4

end

end A259821.P3518345898715373988

namespace A259821

/-- `3*a(n-1)-4` -/
def P3518345898715373988.Spec : Prop :=
  ∀ n, P3518345898715373988.a n = A259821 n

end A259821

/-! ## A259821.P9883995782126273523

`lcm(3, a(n-1))-4` with `a(0)=4, a(1)=5`
-/

namespace A259821.P9883995782126273523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4, 5] fun n a =>
  (Int.lcm 3 (a (n - 1)) : ℤ) - 4

end

end A259821.P9883995782126273523

namespace A259821

/-- `lcm(3, a(n-1))-4` -/
def P9883995782126273523.Spec : Prop :=
  ∀ n, P9883995782126273523.a n = A259821 n

end A259821

/-! ## A259821.P9495671638686700097

`∑[a(n-1)/sqrt(1/9)]` with `a(0)=4, a(1)=1, a(2)=6`
-/

namespace A259821.P9495671638686700097
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.rec [4, 1, 6] fun n f1 =>
  f1 (n - 1) / Real.sqrt ((1 : ℚ) / 9 : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A259821.P9495671638686700097

namespace A259821

/-- `∑[a(n-1)/sqrt(1/9)]` -/
def P9495671638686700097.Spec : Prop :=
  ∀ n, P9495671638686700097.a n = (A259821 n : ℝ)

end A259821

/-! ## A259821.P15217994096126092320

`record[a(n-2)/(1-2/3)]+2` with `a(0)=2, a(1)=1, a(2)=1`
-/

namespace A259821.P15217994096126092320
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [2, 1, 1] fun n f1 =>
  f1 (n - 2) / (1 - (2 : ℚ) / 3)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 2

end

end A259821.P15217994096126092320

namespace A259821

/-- `record[a(n-2)/(1-2/3)]+2` -/
def P15217994096126092320.Spec : Prop :=
  ∀ n, P15217994096126092320.a n = (A259821 n : ℚ)

end A259821

/-! ## A259821.P17325422702625827327

`a(n-1)+a(n-1)+a(n-1)-4` with `a(0)=4, a(1)=5`
-/

namespace A259821.P17325422702625827327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4, 5] fun n a =>
  a (n - 1) + (a (n - 1) + (a (n - 1) - 4))

end

end A259821.P17325422702625827327

namespace A259821

/-- `a(n-1)+a(n-1)+a(n-1)-4` -/
def P17325422702625827327.Spec : Prop :=
  ∀ n, P17325422702625827327.a n = A259821 n

end A259821

/-! ## A259821.P13771864237977499350

`a(n-1)-(4-a(n-1)-a(n-1))` with `a(0)=4, a(1)=5`
-/

namespace A259821.P13771864237977499350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4, 5] fun n a =>
  a (n - 1) - (4 - a (n - 1) - a (n - 1))

end

end A259821.P13771864237977499350

namespace A259821

/-- `a(n-1)-(4-a(n-1)-a(n-1))` -/
def P13771864237977499350.Spec : Prop :=
  ∀ n, P13771864237977499350.a n = A259821 n

end A259821

/-! ## A259821.P17612179960550450003

`A103453(n)+3`
-/

namespace A259821.P17612179960550450003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103453 n + 3

end

end A259821.P17612179960550450003

namespace A259821

/-- `A103453(n)+3` -/
def P17612179960550450003.Spec : Prop :=
  ∀ n, P17612179960550450003.a n = A259821 n

end A259821

/-! ## A259821.P1948214861027558248

`A376478(n+2)+2`
-/

namespace A259821.P1948214861027558248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376478 (n + 2) + 2

end

end A259821.P1948214861027558248

namespace A259821

/-- `A376478(n+2)+2` -/
def P1948214861027558248.Spec : Prop :=
  ∀ n, P1948214861027558248.a n = A259821 n

end A259821

/-! ## A259821.P7683987175757415877

`record[A125824(n)+C(2, n+2)+2]`
-/

namespace A259821.P7683987175757415877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125824 n + (Nat.choose 2 (n + 2) + 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A259821.P7683987175757415877

namespace A259821

/-- `record[A125824(n)+C(2, n+2)+2]` -/
def P7683987175757415877.Spec : Prop :=
  ∀ n, P7683987175757415877.a n = A259821 n

end A259821

/-! ## A259821.P2470658692491540425

`A054977(n)+A034472(n)`
-/

namespace A259821.P2470658692491540425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n + A034472 n

end

end A259821.P2470658692491540425

namespace A259821

/-- `A054977(n)+A034472(n)` -/
def P2470658692491540425.Spec : Prop :=
  ∀ n, P2470658692491540425.a n = A259821 n

end A259821

/-! ## A259821.P15732420283026825199

`A168607(n)+A000007(n)`
-/

namespace A259821.P15732420283026825199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168607 n + A000007 n

end

end A259821.P15732420283026825199

namespace A259821

/-- `A168607(n)+A000007(n)` -/
def P15732420283026825199.Spec : Prop :=
  ∀ n, P15732420283026825199.a n = A259821 n

end A259821

/-! ## A259821.P10943505890054894323

`A178674(n)+A057428(n)`
-/

namespace A259821.P10943505890054894323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178674 n + A057428 n

end

end A259821.P10943505890054894323

namespace A259821

/-- `A178674(n)+A057428(n)` -/
def P10943505890054894323.Spec : Prop :=
  ∀ n, P10943505890054894323.a n = A259821 n

end A259821

/-! ## A259821.P10077085240723044383

`A198633(n)+A101052(n)`
-/

namespace A259821.P10077085240723044383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198633 n + A101052 n

end

end A259821.P10077085240723044383

namespace A259821

/-- `A198633(n)+A101052(n)` -/
def P10077085240723044383.Spec : Prop :=
  ∀ n, P10077085240723044383.a n = A259821 n

end A259821

/-! ## A259821.P15662179285022457716

`A240506(n)+A171559(n)`
-/

namespace A259821.P15662179285022457716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240506 n + A171559 n

end

end A259821.P15662179285022457716

namespace A259821

/-- `A240506(n)+A171559(n)` -/
def P15662179285022457716.Spec : Prop :=
  ∀ n, P15662179285022457716.a n = A259821 n

end A259821

/-! ## A259821.P2186225860075049133

`A362316(n)+A062709(n)`
-/

namespace A259821.P2186225860075049133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362316 n + A062709 n

end

end A259821.P2186225860075049133

namespace A259821

/-- `A362316(n)+A062709(n)` -/
def P2186225860075049133.Spec : Prop :=
  ∀ n, P2186225860075049133.a n = A259821 n

end A259821

/-!
# A259822: E.g.f. A(x) satisfies: A( Integral 1/A(x)^3 dx ) = exp(x).

The programs for A259822, there is no canonical definition to state claims against.
-/

/-! ## A259822.P14196361735624780323

`A054637(n!²)`
-/

namespace A259822.P14196361735624780323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054637 (Nat.factorial n ^ 2)

end

end A259822.P14196361735624780323

/-!
# A259823: a(0)=0, a(1)=1, a(n)=min{3 a(k) + 2^(n-k)-1, k=0..(n-1)} for n>=2.

The programs for A259823, there is no canonical definition to state claims against.
-/

/-! ## A259823.P16323220112680855017

`A003586(n)+a(n-1)` with `a(0)=0`
-/

namespace A259823.P16323220112680855017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A003586 n + a (n - 1)

end

end A259823.P16323220112680855017

/-! ## A259823.P2161458320526499000

`(∑[A007694(n+1)]-1)/2`
-/

namespace A259823.P2161458320526499000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007694 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j - 1 : ℤ) : ℚ) / 2

end

end A259823.P2161458320526499000

/-! ## A259823.P2792312033333690753

`(∑[A187778(n+1)]-1)/6`
-/

namespace A259823.P2792312033333690753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187778 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j - 1 : ℤ) : ℚ) / 6

end

end A259823.P2792312033333690753

/-! ## A259823.P16709452213016008032

`a(n-1)+A069353(n)+1` with `a(0)=0`
-/

namespace A259823.P16709452213016008032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (A069353 n + 1)

end

end A259823.P16709452213016008032

/-! ## A259823.P4429785894978082893

`∑[∑[A061987(n)]-A061987(n)]`
-/

namespace A259823.P4429785894978082893
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061987 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A061987 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A259823.P4429785894978082893

/-! ## A259823.P11524171589477797762

`∑[A003586(n+1)]-A003586(n+1)`
-/

namespace A259823.P11524171589477797762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003586 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A003586 (n + 1)

end

end A259823.P11524171589477797762

/-! ## A259823.P11891944928415327297

`∑[A069353(n+1)]-A069353(n+1)+n`
-/

namespace A259823.P11891944928415327297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069353 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A069353 (n + 1) + (n : ℤ)

end

end A259823.P11891944928415327297

/-! ## A259823.P8312524943968268346

`(A291876(n+1)-A190812(n+1)-1)/2`
-/

namespace A259823.P8312524943968268346
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A291876 (n + 1) - A190812 (n + 1) - 1 : ℚ) / 2

end

end A259823.P8312524943968268346

/-! ## A259823.P9749813169045967099

`(A174030(n+1)-1)/2`
-/

namespace A259823.P9749813169045967099
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A174030 (n + 1) - 1 : ℚ) / 2

end

end A259823.P9749813169045967099

/-! ## A259823.P384670432235776579

`∑[lt[∑{p}[n, #-2], 2]]`
-/

namespace A259823.P384670432235776579
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), ((p : ℤ) - 2)

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f4 j : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A259823.P384670432235776579

/-!
# A259824: A Catalan-type triangle read by rows, generated by iteration of convolution squares.

The programs for A259824, there is no canonical definition to state claims against.
-/

/-! ## A259824.P13182105487386088523

`A206916(A002265(A082137(n)²))`
-/

namespace A259824.P13182105487386088523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206916 (A002265 (A082137 n ^ 2).toNat).toNat

end

end A259824.P13182105487386088523

/-! ## A259824.P13037713339093872004

`A082137(n)+A014707(A022171(n))`
-/

namespace A259824.P13037713339093872004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082137 n + A014707 (A022171 n).toNat

end

end A259824.P13037713339093872004

/-! ## A259824.P11032036682506100968

`A082137(n)+A025465(A023105(n))`
-/

namespace A259824.P11032036682506100968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082137 n + A025465 (A023105 n).toNat

end

end A259824.P11032036682506100968

/-! ## A259824.P8780273395629576519

`A082137(n)+A037824(A022173(n))`
-/

namespace A259824.P8780273395629576519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082137 n + A037824 (A022173 n).toNat

end

end A259824.P8780273395629576519

/-! ## A259824.P14462701513051907497

`A082137(n)+A010051(A003176(n+1))`
-/

namespace A259824.P14462701513051907497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082137 n + A010051 (A003176 (n + 1)).toNat

end

end A259824.P14462701513051907497

/-!
# A259825: a(n) = 12*H(n) where H() is the Hurwitz class number.

The programs for A259825, there is no canonical definition to state claims against.
-/

/-! ## A259825.P5651146451686793584

`12*A058305(n)/A058306(n)`
-/

namespace A259825.P5651146451686793584
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (12 * A058305 n : ℚ) / (A058306 n : ℚ)

end

end A259825.P5651146451686793584

/-! ## A259825.P9259080332738943947

`gcd(12, A004013(n))*A058305(n)`
-/

namespace A259825.P9259080332738943947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 12 (A004013 n) : ℤ) * A058305 n

end

end A259825.P9259080332738943947

/-! ## A259825.P11604019562051688837

`A051725(A058306(n))*A058305(n)`
-/

namespace A259825.P11604019562051688837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051725 (A058306 n).toNat * A058305 n

end

end A259825.P11604019562051688837

/-! ## A259825.P8175729785119240364

`-(A153182(4*n)+A153182(n))/2`
-/

namespace A259825.P8175729785119240364
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  -((A153182 (4 * n) + A153182 n : ℚ) / 2)

end

end A259825.P8175729785119240364

/-! ## A259825.P453930910723984243

`(A153182(4*n)+A153182(n))/A256187(4*n+1)`
-/

namespace A259825.P453930910723984243
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A153182 (4 * n) + A153182 n : ℚ) / (A256187 (4 * n + 1) : ℚ)

end

end A259825.P453930910723984243

/-! ## A259825.P16367883292476943848

`(A153182(4*n)+A153182(n))/(A005926(A005843(n))-2)`
-/

namespace A259825.P16367883292476943848
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A153182 (4 * n) + A153182 n : ℚ) / (A005926 (A005843 n).toNat - 2 : ℚ)

end

end A259825.P16367883292476943848

/-! ## A259825.P11043300145182915727

`abs(A256624(n))-A117726(A028310(n))`
-/

namespace A259825.P11043300145182915727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A256624 n| - A117726 (A028310 n).toNat

end

end A259825.P11043300145182915727

/-!
# A259826: Numbers n such that n is a multiple of 6 and both n-1 and n+1 are composite.

The programs for A259826, the canonical program `A259826.P6433926168437489858` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A259826 has offset 1).

The definition of A259826 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A060461, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A259826.P6433926168437489858

`6*A060461(n+1)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A259826

/-- `6*A060461(n+1)` -/
def P6433926168437489858.Spec : Prop :=
  ∀ n, P6433926168437489858.a n = A259826 (n + 1)

theorem P6433926168437489858.correct : P6433926168437489858.Spec := by
  intro n
  simp only [A259826, Nat.add_sub_cancel]

end A259826

/-! ## A259826.P16778493211152366751

`3*A120382(n+1)`
-/

namespace A259826.P16778493211152366751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A120382 (n + 1)

end

end A259826.P16778493211152366751

namespace A259826

/-- `3*A120382(n+1)` -/
def P16778493211152366751.Spec : Prop :=
  ∀ n, P16778493211152366751.a n = A259826 (n + 1)

end A259826

/-! ## A259826.P16931957719897389031

`6*A171696(n+2)`
-/

namespace A259826.P16931957719897389031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A171696 (n + 2)

end

end A259826.P16931957719897389031

namespace A259826

/-- `6*A171696(n+2)` -/
def P16931957719897389031.Spec : Prop :=
  ∀ n, P16931957719897389031.a n = A259826 (n + 1)

end A259826

/-! ## A259826.P10318970074192397195

`filter[A047779(n+1), A079979(#)]`
-/

namespace A259826.P10318970074192397195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047779 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A079979 (f1 j).toNat = 1) n)

end

end A259826.P10318970074192397195

namespace A259826

/-- `filter[A047779(n+1), A079979(#)]` -/
def P10318970074192397195.Spec : Prop :=
  ∀ n, P10318970074192397195.a n = A259826 (n + 1)

end A259826

/-! ## A259826.P5086776135637410870

`∩[A047779(n+1), A054775(n+1)]`
-/

namespace A259826.P5086776135637410870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047779 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054775 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A259826.P5086776135637410870

namespace A259826

/-- `∩[A047779(n+1), A054775(n+1)]` -/
def P5086776135637410870.Spec : Prop :=
  ∀ n, (P5086776135637410870.a n : ℤ) = A259826 (n + 1)

end A259826

/-! ## A259826.P2532800776018669798

`A008458(A060461(n+1))`
-/

namespace A259826.P2532800776018669798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 (A060461 (n + 1)).toNat

end

end A259826.P2532800776018669798

namespace A259826

/-- `A008458(A060461(n+1))` -/
def P2532800776018669798.Spec : Prop :=
  ∀ n, P2532800776018669798.a n = A259826 (n + 1)

end A259826

/-! ## A259826.P7162228700506142981

`A008458(A171696(n+2))`
-/

namespace A259826.P7162228700506142981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 (A171696 (n + 2)).toNat

end

end A259826.P7162228700506142981

namespace A259826

/-- `A008458(A171696(n+2))` -/
def P7162228700506142981.Spec : Prop :=
  ∀ n, P7162228700506142981.a n = A259826 (n + 1)

end A259826

/-! ## A259826.P11803330796221597971

`∩[A047779(n+1), A008458(n)]`
-/

namespace A259826.P11803330796221597971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047779 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A259826.P11803330796221597971

namespace A259826

/-- `∩[A047779(n+1), A008458(n)]` -/
def P11803330796221597971.Spec : Prop :=
  ∀ n, (P11803330796221597971.a n : ℤ) = A259826 (n + 1)

end A259826

/-! ## A259826.P4120938516557488159

`∩[A047779(n+1), A008588(n)]`
-/

namespace A259826.P4120938516557488159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047779 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008588 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A259826.P4120938516557488159

namespace A259826

/-- `∩[A047779(n+1), A008588(n)]` -/
def P4120938516557488159.Spec : Prop :=
  ∀ n, (P4120938516557488159.a n : ℤ) = A259826 (n + 1)

end A259826

/-! ## A259826.P3464901441808733082

`∩[A047779(n+1), A230628(n+1)]`
-/

namespace A259826.P3464901441808733082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047779 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230628 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A259826.P3464901441808733082

namespace A259826

/-- `∩[A047779(n+1), A230628(n+1)]` -/
def P3464901441808733082.Spec : Prop :=
  ∀ n, (P3464901441808733082.a n : ℤ) = A259826 (n + 1)

end A259826

/-! ## A259826.P10653467590485145163

`∩[A047779(n+1), A231960(n+1)]`
-/

namespace A259826.P10653467590485145163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047779 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231960 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A259826.P10653467590485145163

namespace A259826

/-- `∩[A047779(n+1), A231960(n+1)]` -/
def P10653467590485145163.Spec : Prop :=
  ∀ n, (P10653467590485145163.a n : ℤ) = A259826 (n + 1)

end A259826

/-! ## A259826.P6434244657144117835

`∩[6*n, A061673(n+1)]`
-/

namespace A259826.P6434244657144117835
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061673 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A259826.P6434244657144117835

namespace A259826

/-- `∩[6*n, A061673(n+1)]` -/
def P6434244657144117835.Spec : Prop :=
  ∀ n, (P6434244657144117835.a n : ℤ) = A259826 (n + 1)

end A259826

/-! ## A259826.P8101976465427373310

`filter[A061673(n+1), A079979(#)]`
-/

namespace A259826.P8101976465427373310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061673 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A079979 (f1 j).toNat = 1) n)

end

end A259826.P8101976465427373310

namespace A259826

/-- `filter[A061673(n+1), A079979(#)]` -/
def P8101976465427373310.Spec : Prop :=
  ∀ n, P8101976465427373310.a n = A259826 (n + 1)

end A259826

/-! ## A259826.P5552179692587123332

`filter[A061673(n+1), A093719(#)]`
-/

namespace A259826.P5552179692587123332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061673 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A093719 (f1 j).toNat = 1) n)

end

end A259826.P5552179692587123332

namespace A259826

/-- `filter[A061673(n+1), A093719(#)]` -/
def P5552179692587123332.Spec : Prop :=
  ∀ n, P5552179692587123332.a n = A259826 (n + 1)

end A259826

/-! ## A259826.P4715459403334225689

`∩[A061673(n+1), A008458(n)]`
-/

namespace A259826.P4715459403334225689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061673 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A259826.P4715459403334225689

namespace A259826

/-- `∩[A061673(n+1), A008458(n)]` -/
def P4715459403334225689.Spec : Prop :=
  ∀ n, (P4715459403334225689.a n : ℤ) = A259826 (n + 1)

end A259826

/-! ## A259826.P14817757001169238936

`∩[A061673(n+1), A008588(n)]`
-/

namespace A259826.P14817757001169238936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061673 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008588 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A259826.P14817757001169238936

namespace A259826

/-- `∩[A061673(n+1), A008588(n)]` -/
def P14817757001169238936.Spec : Prop :=
  ∀ n, (P14817757001169238936.a n : ℤ) = A259826 (n + 1)

end A259826

/-! ## A259826.P2347883763060324348

`∩[A061673(n+1), A319451(n)]`
-/

namespace A259826.P2347883763060324348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061673 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319451 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A259826.P2347883763060324348

namespace A259826

/-- `∩[A061673(n+1), A319451(n)]` -/
def P2347883763060324348.Spec : Prop :=
  ∀ n, (P2347883763060324348.a n : ℤ) = A259826 (n + 1)

end A259826

/-! ## A259826.P15562851079140172074

`∩[A061673(n+1), A230628(n+1)]`
-/

namespace A259826.P15562851079140172074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061673 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230628 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A259826.P15562851079140172074

namespace A259826

/-- `∩[A061673(n+1), A230628(n+1)]` -/
def P15562851079140172074.Spec : Prop :=
  ∀ n, (P15562851079140172074.a n : ℤ) = A259826 (n + 1)

end A259826

/-! ## A259826.P8798791212867617443

`∩[A061673(n+1), A231960(n+1)]`
-/

namespace A259826.P8798791212867617443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061673 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231960 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A259826.P8798791212867617443

namespace A259826

/-- `∩[A061673(n+1), A231960(n+1)]` -/
def P8798791212867617443.Spec : Prop :=
  ∀ n, (P8798791212867617443.a n : ℤ) = A259826 (n + 1)

end A259826

/-! ## A259826.P987912359503312763

`∩[A061673(n+1), A256882(n+1)]`
-/

namespace A259826.P987912359503312763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061673 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256882 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A259826.P987912359503312763

namespace A259826

/-- `∩[A061673(n+1), A256882(n+1)]` -/
def P987912359503312763.Spec : Prop :=
  ∀ n, (P987912359503312763.a n : ℤ) = A259826 (n + 1)

end A259826

/-!
# A259827: Expansion of phi(x) * f(-x^12)^3 / f(-x^4) in powers of x where phi(), f() are Ramanujan theta functions.

The programs for A259827, there is no canonical definition to state claims against.
-/

/-! ## A259827.P16747829152070329579

`A259825(3*n+4)/6`
-/

namespace A259827.P16747829152070329579
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A259825 (3 * n + 4) : ℚ) / 6

end

end A259827.P16747829152070329579

/-! ## A259827.P15794925508485603154

`A350034(A259825(3*n+4))`
-/

namespace A259827.P15794925508485603154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350034 (A259825 (3 * n + 4)).toNat

end

end A259827.P15794925508485603154

/-! ## A259827.P7351102860702721495

`A103221(A259825(3*n+4)+1)`
-/

namespace A259827.P7351102860702721495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (A259825 (3 * n + 4) + 1).toNat

end

end A259827.P7351102860702721495

/-! ## A259827.P4521301257948010344

`abs(A259657(3*n+4)/3)`
-/

namespace A259827.P4521301257948010344
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A259657 (3 * n + 4) : ℚ) / 3|

end

end A259827.P4521301257948010344

/-! ## A259827.P889612301223923399

`Δ[A008612(∑[A259825(3*n+1)])]`
-/

namespace A259827.P889612301223923399
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259825 (3 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008612 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A259827.P889612301223923399

/-!
# A259828: a(1)=a(2)=2; thereafter, a(n)=gpf(1+a(n-1)a(n-2)), where gpf is greatest prime factor.

The programs for A259828, there is no canonical definition to state claims against.
-/

/-! ## A259828.P15053873631961845387

`A006530(a(n-1)*a(n-2)+1)` with `a(0)=2, a(1)=2`
-/

namespace A259828.P15053873631961845387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 2] fun n a =>
  A006530 (a (n - 1) * a (n - 2) + 1).toNat

end

end A259828.P15053873631961845387

/-! ## A259828.P17537054777996017678

`A006530(lcm(a(n-1), a(n-2))+1)` with `a(0)=2, a(1)=2, a(2)=5`
-/

namespace A259828.P17537054777996017678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 2, 5] fun n a =>
  A006530 (Int.lcm (a (n - 1)) (a (n - 2)) + 1)

end

end A259828.P17537054777996017678

/-! ## A259828.P3116888575341013258

`A006530(1-ceil(-a(n-1))*a(n-2))` with `a(0)=2, a(1)=2`

`ceil` is left out, it is the identity on integers.
-/

namespace A259828.P3116888575341013258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 2] fun n a =>
  A006530 (1 - (-a (n - 1)) * a (n - 2)).toNat

end

end A259828.P3116888575341013258

/-! ## A259828.P10402995473175459864

`A006530(1-round(-a(n-1))*a(n-2))` with `a(0)=2, a(1)=2`

`round` is left out, it is the identity on integers.
-/

namespace A259828.P10402995473175459864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 2] fun n a =>
  A006530 (1 - (-a (n - 1)) * a (n - 2)).toNat

end

end A259828.P10402995473175459864

/-! ## A259828.P5799584912099541739

`A006530(a(n-1)/a(n-2)^(-1)+1)` with `a(0)=2, a(1)=2`
-/

namespace A259828.P5799584912099541739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 2] fun n a =>
  A006530 (SequenceMachineLib.roundAway ((a (n - 1) : ℚ) / (a (n - 2) : ℚ) ^ (-1 : ℤ) + 1)).toNat

end

end A259828.P5799584912099541739

/-!
# A259829: a(n) = (-1)^floor(n/2) * A035185(n).

The programs for A259829, the canonical program `A259829.P12670832268435850877` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A259829 has offset 1).

The definition of A259829 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A035185, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A259829.P12670832268435850877

`(-1)^floor((n+1)/2)*A035185(n+1)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A259829

/-- `(-1)^floor((n+1)/2)*A035185(n+1)` -/
def P12670832268435850877.Spec : Prop :=
  ∀ n, P12670832268435850877.a n = (A259829 (n + 1) : ℚ)

end A259829

/-! ## A259829.P10818487155544032777

`A035185(n+1)*A087960(n)`
-/

namespace A259829.P10818487155544032777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035185 (n + 1) * A087960 n

end

end A259829.P10818487155544032777

namespace A259829

/-- `A035185(n+1)*A087960(n)` -/
def P10818487155544032777.Spec : Prop :=
  ∀ n, P10818487155544032777.a n = A259829 (n + 1)

end A259829

/-! ## A259829.P7005532706516749100

`A035185(n+1)*A102587(∑[A188510(n)])`
-/

namespace A259829.P7005532706516749100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188510 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035185 (n + 1) * A102587 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A259829.P7005532706516749100

namespace A259829

/-- `A035185(n+1)*A102587(∑[A188510(n)])` -/
def P7005532706516749100.Spec : Prop :=
  ∀ n, P7005532706516749100.a n = A259829 (n + 1)

end A259829

/-! ## A259829.P6414005078212087011

`A035185(n+1)/A087960(A186813(n))`
-/

namespace A259829.P6414005078212087011
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A035185 (n + 1) : ℚ) / (A087960 (A186813 n).toNat : ℚ)

end

end A259829.P6414005078212087011

namespace A259829

/-- `A035185(n+1)/A087960(A186813(n))` -/
def P6414005078212087011.Spec : Prop :=
  ∀ n, P6414005078212087011.a n = (A259829 (n + 1) : ℚ)

end A259829

/-! ## A259829.P11315706499593524722

`A035185(n+1)*A091337(2*n+1)`
-/

namespace A259829.P11315706499593524722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035185 (n + 1) * A091337 (2 * n + 1)

end

end A259829.P11315706499593524722

namespace A259829

/-- `A035185(n+1)*A091337(2*n+1)` -/
def P11315706499593524722.Spec : Prop :=
  ∀ n, P11315706499593524722.a n = A259829 (n + 1)

end A259829

/-! ## A259829.P6787559126434123231

`A035185(n+1)*A188510(2*n+3)`
-/

namespace A259829.P6787559126434123231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035185 (n + 1) * A188510 (2 * n + 3)

end

end A259829.P6787559126434123231

namespace A259829

/-- `A035185(n+1)*A188510(2*n+3)` -/
def P6787559126434123231.Spec : Prop :=
  ∀ n, P6787559126434123231.a n = A259829 (n + 1)

end A259829

/-!
# A259834: Number of permutations of [n] with no fixed points where the maximal displacement of an element equals n-1.

The programs for A259834, there is no canonical definition to state claims against.
-/

/-! ## A259834.P14967813073285594601

`A000166(n)-A331007(n)`
-/

namespace A259834.P14967813073285594601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000166 n - A331007 n

end

end A259834.P14967813073285594601

/-! ## A259834.P11774560205947055900

`abs(A182386(n))-A331007(n)`
-/

namespace A259834.P11774560205947055900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A182386 n| - A331007 n

end

end A259834.P11774560205947055900

/-! ## A259834.P2220003680349945810

`A068106(A000217(n))-A331007(n)`
-/

namespace A259834.P2220003680349945810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068106 (A000217 n).toNat - A331007 n

end

end A259834.P2220003680349945810

/-! ## A259834.P18160617137200607098

`A038205(n)+A158243(n)-A331007(n)`
-/

namespace A259834.P18160617137200607098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038205 n + (A158243 n - A331007 n)

end

end A259834.P18160617137200607098

/-! ## A259834.P12444835797281232688

`abs(A182386(n))+A331007(n)/A134824(n+2)`
-/

namespace A259834.P12444835797281232688
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (|A182386 n| : ℚ) + (A331007 n : ℚ) / (A134824 (n + 2) : ℚ)

end

end A259834.P12444835797281232688

/-! ## A259834.P731728650859952400

`A047920(A000096(n))-A331007(n)`
-/

namespace A259834.P731728650859952400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047920 (A000096 n).toNat - A331007 n

end

end A259834.P731728650859952400

/-!
# A259835: a(n) is the number of odd primes of the form b^(2^n)+1 that are less than A123599(n+1).

The programs for A259835, there is no canonical definition to state claims against.
-/

/-! ## A259835.P16075223701089412768

`A232635(C(∑[n], n+2))`
-/

namespace A259835.P16075223701089412768
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232635 (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) (n + 2))

end

end A259835.P16075223701089412768

/-! ## A259835.P3483759356181672501

`A213022(C(∑[n], ∑{d}[n+1, #]))`
-/

namespace A259835.P3483759356181672501
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213022 (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) (∑ d ∈ Nat.divisors (f2 n), d))

end

end A259835.P3483759356181672501

/-!
# A259839: Number of order-preserving Hamiltonian paths in the n-cube (Gray codes); see the comments for the precise definition of order-preserving.

The programs for A259839, there is no canonical definition to state claims against.
-/

/-! ## A259839.P5570866594722819553

`∏{p}[A133163(2*(n+1))², #]`
-/

namespace A259839.P5570866594722819553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133163 (2 * (n + 1)) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A259839.P5570866594722819553

/-! ## A259839.P14711762747907833788

`A324751(∑[C(n, 3)]+and(1, n))`
-/

namespace A259839.P14711762747907833788
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324751 (∑ j ∈ Finset.range (n + 1), f1 j + Nat.land 1 n)

end

end A259839.P14711762747907833788

/-! ## A259839.P14216230587784315385

`A291168(xor(2^n+6, xor(n, 2*n)))`
-/

namespace A259839.P14216230587784315385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291168 (Nat.xor (2 ^ n + 6) (Nat.xor n (2 * n)))

end

end A259839.P14216230587784315385

/-!
# A259840: a(1)=1, a(2)=2; a(n+2) is the smallest number not occurring earlier such that gcd(a(n),a(n+1)) * gcd(a(n+1),a(n+2)) = a(n+1).

The programs for A259840, there is no canonical definition to state claims against.
-/

/-! ## A259840.P9305466530929719795

`A240868(A014382(n))+A088178(n+1)`
-/

namespace A259840.P9305466530929719795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240868 (A014382 n).toNat + A088178 (n + 1)

end

end A259840.P9305466530929719795

/-!
# A259841: Number T(n,k) of elements k in all n X n Tesler matrices of nonnegative integers; triangle T(n,k), n>=1, 1<=k<=n, read by rows.

The programs for A259841, there is no canonical definition to state claims against.
-/

/-! ## A259841.P17548364428337344561

`A229994(record[A263714(n+1)²])`
-/

namespace A259841.P17548364428337344561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263714 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229994 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A259841.P17548364428337344561

/-! ## A259841.P14417725336778420900

`A324428(n+1)+A324414(A324495(n+1))`
-/

namespace A259841.P14417725336778420900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324428 (n + 1) + A324414 (A324495 (n + 1)).toNat

end

end A259841.P14417725336778420900

/-!
# A259842: Number of nonzero elements in all n X n Tesler matrices of nonnegative integers.

The programs for A259842, there is no canonical definition to state claims against.
-/

/-! ## A259842.P1233252702920789725

`∑[A130922(A024175(2*n))]`
-/

namespace A259842.P1233252702920789725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130922 (A024175 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A259842.P1233252702920789725

/-!
# A259843: Number of 1 elements in all n X n Tesler matrices of nonnegative integers.

The programs for A259843, there is no canonical definition to state claims against.
-/

/-! ## A259843.P5502568132279883135

`A259841(∑[n]+1)`
-/

namespace A259843.P5502568132279883135
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259841 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A259843.P5502568132279883135

/-! ## A259843.P7373249255363544873

`record[A259841(n+1)]`
-/

namespace A259843.P7373249255363544873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259841 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A259843.P7373249255363544873

/-! ## A259843.P8209838906834230771

`or(char[2], A259841(A000124(n)))`
-/

namespace A259843.P8209838906834230771
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A259841 (A000124 n).toNat)

end

end A259843.P8209838906834230771

/-! ## A259843.P9809305872677577846

`lcm(A033999(n), A259841(A000124(n)))`
-/

namespace A259843.P9809305872677577846
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A259841 (A000124 n).toNat)

end

end A259843.P9809305872677577846

/-! ## A259843.P11054425532643890736

`A259841(A000124(n))^A054977(n)²`
-/

namespace A259843.P11054425532643890736
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A259841 (A000124 n).toNat : ℚ) ^ (A054977 n ^ 2 : ℤ)

end

end A259843.P11054425532643890736

/-!
# A259845: a(0)=1, a(1)=3, and the INVERT transform of the sequence deletes the 3.

The programs for A259845, there is no canonical definition to state claims against.
-/

/-! ## A259845.P16138726429123414411

`A353848(A015128(n))+A119241(n+1)`
-/

namespace A259845.P16138726429123414411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353848 (A015128 n).toNat + A119241 (n + 1)

end

end A259845.P16138726429123414411

/-! ## A259845.P8147393956351180965

`A097935(A278391(n))-A324244(n+1)`
-/

namespace A259845.P8147393956351180965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097935 (A278391 n).toNat - A324244 (n + 1)

end

end A259845.P8147393956351180965

/-!
# A259846: Number of steps to get from n to 1 by process of replacing with sum of divisors if the result is odd, or dividing by 2 if even.

The programs for A259846, there is no canonical definition to state claims against.
-/

/-! ## A259846.P4075731925208935530

`A336361(n+1)+A334097(A002131(n+1))`
-/

namespace A259846.P4075731925208935530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336361 (n + 1) + A334097 (A002131 (n + 1)).toNat

end

end A259846.P4075731925208935530

/-! ## A259846.P5561894591108698205

`A334097(n+1)+A276167(A239632(n))`
-/

namespace A259846.P5561894591108698205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334097 (n + 1) + A276167 (A239632 n).toNat

end

end A259846.P5561894591108698205

/-! ## A259846.P17054812245641017283

`A334097(n+1)+A080791(n*A050361(A001405(n)))`
-/

namespace A259846.P17054812245641017283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334097 (n + 1) + A080791 ((n : ℤ) * A050361 (A001405 n).toNat).toNat

end

end A259846.P17054812245641017283

/-! ## A259846.P6725957851700957247

`A334097(n+1)+A334204(A137317(n+1))%A279624(n+1)`
-/

namespace A259846.P6725957851700957247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334097 (n + 1) + Int.tmod (A334204 (A137317 (n + 1)).toNat) (A279624 (n + 1))

end

end A259846.P6725957851700957247

/-!
# A259847: Number of steps to get from n to 1 by process of replacing with the Carmichael function lambda if the result is odd, or dividing by 2 if even.

The programs for A259847, there is no canonical definition to state claims against.
-/

/-! ## A259847.P14049558161434943205

`A259103(n+1)-A145649(A157040(n+1))`
-/

namespace A259847.P14049558161434943205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259103 (n + 1) - A145649 (A157040 (n + 1)).toNat

end

end A259847.P14049558161434943205

/-! ## A259847.P13860048397327087794

`xor(A064097(n+1), A351234(A169768(n+4)))`
-/

namespace A259847.P13860048397327087794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A064097 (n + 1)) (A351234 (A169768 (n + 4)).toNat)

end

end A259847.P13860048397327087794

/-! ## A259847.P8424886763188712231

`xor(A003313(n+1), A185036(A130125(n)))`
-/

namespace A259847.P8424886763188712231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A003313 (n + 1)) (A185036 (A130125 n).toNat)

end

end A259847.P8424886763188712231

/-! ## A259847.P14604702276322680338

`A003313(n+1)-A000122(A229185(n+3))`
-/

namespace A259847.P14604702276322680338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003313 (n + 1) - A000122 (A229185 (n + 3)).toNat

end

end A259847.P14604702276322680338

/-! ## A259847.P10268991057587946490

`A207034(n+1)/A043289(A074048(n+1))`
-/

namespace A259847.P10268991057587946490
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A207034 (n + 1) : ℚ) / (A043289 (A074048 (n + 1)).toNat : ℚ)

end

end A259847.P10268991057587946490

/-!
# A259849: Average of consecutive pairs of perfect numbers.

The programs for A259849, there is no canonical definition to state claims against.
-/

/-! ## A259849.P15235578274718627442

`(A000396(n+1)+A000396(n+2))/2`
-/

namespace A259849.P15235578274718627442
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000396 (n + 1) + A000396 (n + 2) : ℚ) / 2

end

end A259849.P15235578274718627442

/-! ## A259849.P16499610338129052702

`A139229(n+1)+A000396(n+1)`
-/

namespace A259849.P16499610338129052702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139229 (n + 1) + A000396 (n + 1)

end

end A259849.P16499610338129052702

/-! ## A259849.P9687952039510282267

`A133028(n+1)+A133028(n+2)`
-/

namespace A259849.P9687952039510282267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133028 (n + 1) + A133028 (n + 2)

end

end A259849.P9687952039510282267

/-! ## A259849.P617350798570228851

`A000396(n+1)+Δ[A133067(n+1)]`
-/

namespace A259849.P617350798570228851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133067 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000396 (n + 1) + (f1 (n + 1) - f1 n)

end

end A259849.P617350798570228851

/-! ## A259849.P15665405422554056937

`Δ[A185351(2^n)]+Δ[A133067(n+1)]`
-/

namespace A259849.P15665405422554056937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185351 (2 ^ n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133067 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (f2 (n + 1) - f2 n)

end

end A259849.P15665405422554056937

/-!
# A259852: Numerators of the terms of Lehmer's series S_2(2), where S_k(x) = Sum_{n>=1} n^k*x^n/binomial(2*n, n).

The programs for A259852, the canonical program `A259852.P5187732436782759166` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A259852 has offset 1).

The definition of A259852 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 173 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A259852.P5187732436782759166

`A014477(n)/gcd(A000108(n), A014477(n))`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A259852

/-- `A014477(n)/gcd(A000108(n), A014477(n))` -/
def P5187732436782759166.Spec : Prop :=
  ∀ n, P5187732436782759166.a n = (A259852 (n + 1) : ℚ)

end A259852

/-! ## A259852.P16244435553090176345

`(n+1)*A101020(A034856(n+1))`
-/

namespace A259852.P16244435553090176345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A101020 (A034856 (n + 1)).toNat

end

end A259852.P16244435553090176345

namespace A259852

/-- `(n+1)*A101020(A034856(n+1))` -/
def P16244435553090176345.Spec : Prop :=
  ∀ n, P16244435553090176345.a n = A259852 (n + 1)

end A259852

/-!
# A259853: Denominators of the terms of Lehmer's series S_2(2), where S_k(x) = Sum_{n>=1} n^k*x^n/binomial(2*n, n).

The programs for A259853, the canonical program `A259853.P5595594093719287469` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A259853 has offset 1).

The definition of A259853 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A259853.P5595594093719287469

`A001790(n+1)/gcd((n+1)², A001790(n+1))`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A259853

/-- `A001790(n+1)/gcd((n+1)², A001790(n+1))` -/
def P5595594093719287469.Spec : Prop :=
  ∀ n, P5595594093719287469.a n = (A259853 (n + 1) : ℚ)

end A259853

/-! ## A259853.P18014598959559558605

`lcm(A000265(n+1), A052468(n+1))/A000265(n+1)`
-/

namespace A259853.P18014598959559558605
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A000265 (n + 1)) (A052468 (n + 1)) : ℚ) / (A000265 (n + 1) : ℚ)

end

end A259853.P18014598959559558605

namespace A259853

/-- `lcm(A000265(n+1), A052468(n+1))/A000265(n+1)` -/
def P18014598959559558605.Spec : Prop :=
  ∀ n, P18014598959559558605.a n = (A259853 (n + 1) : ℚ)

end A259853

/-!
# A259855: Bridging trails on square lattice.

The programs for A259855, there is no canonical definition to state claims against.
-/

/-! ## A259855.P13031586971773251926

`A045686(n)+∑[A011776(A000244(n+1))]`
-/

namespace A259855.P13031586971773251926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011776 (A000244 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045686 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A259855.P13031586971773251926

/-! ## A259855.P12649298258490756040

`A045686(n)+∑[A011776(3^A048379(n))]`
-/

namespace A259855.P12649298258490756040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011776 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (A048379 n : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045686 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A259855.P12649298258490756040

/-! ## A259855.P8754944562145974727

`A248227(A326116(n+1)+A295572(n+1))`
-/

namespace A259855.P8754944562145974727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248227 (A326116 (n + 1) + A295572 (n + 1)).toNat

end

end A259855.P8754944562145974727

/-! ## A259855.P7240470757274079642

`A045686(n)+∑[A011776(3^A085079(n+1))]`
-/

namespace A259855.P7240470757274079642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011776 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (A085079 (n + 1) : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045686 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A259855.P7240470757274079642

/-!
# A259856: Irreducible bridging trails on square lattice.

The programs for A259856, there is no canonical definition to state claims against.
-/

/-! ## A259856.P5883908159653808801

`A056061(A065237(n)+2*(n+3))`
-/

namespace A259856.P5883908159653808801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056061 (A065237 n + (2 * (n + 3) : ℤ)).toNat

end

end A259856.P5883908159653808801

/-! ## A259856.P5199188854967820749

`A167489(A025237(n)+A010059(n))`
-/

namespace A259856.P5199188854967820749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167489 (A025237 n + A010059 n).toNat

end

end A259856.P5199188854967820749

/-! ## A259856.P3325964546771216912

`A229037(n+1)*A235791(A026596(n))`
-/

namespace A259856.P3325964546771216912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229037 (n + 1) * A235791 (A026596 n).toNat

end

end A259856.P3325964546771216912

/-! ## A259856.P14429162468286278233

`A006047(A235724(n+1)%A001003(n))`
-/

namespace A259856.P14429162468286278233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006047 (Int.tmod (A235724 (n + 1)) (A001003 n)).toNat

end

end A259856.P14429162468286278233

/-! ## A259856.P2012665224963274847

`and(A037466(A268093(n+1)), A099163(n))`
-/

namespace A259856.P2012665224963274847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A037466 (A268093 (n + 1)).toNat) (A099163 n)

end

end A259856.P2012665224963274847

/-!
# A259858: A bisection of A002083.

The programs for A259858, there is no canonical definition to state claims against.
-/

/-! ## A259858.P18081579629129415709

`A002083(2*n+1)`
-/

namespace A259858.P18081579629129415709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002083 (2 * n + 1)

end

end A259858.P18081579629129415709

/-! ## A259858.P422568610285263758

`or(char[1], A002083(A005408(n)))`
-/

namespace A259858.P422568610285263758
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A002083 (A005408 n).toNat)

end

end A259858.P422568610285263758

/-! ## A259858.P17375102532571260411

`or(A000007(n), A002083(comp[2*n]))`
-/

namespace A259858.P17375102532571260411
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A002083 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n))

end

end A259858.P17375102532571260411

/-! ## A259858.P18311389492887244861

`A002083(A005408(n))^A000041(C(2, n))`
-/

namespace A259858.P18311389492887244861
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002083 (A005408 n).toNat : ℚ) ^ (A000041 (Nat.choose 2 n) : ℤ)

end

end A259858.P18311389492887244861

/-! ## A259858.P4643575805561954668

`A002083(A005408(n))^or(1, A000045(n+1)%2)`
-/

namespace A259858.P4643575805561954668
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002083 (A005408 n).toNat : ℚ) ^ (Int.lor 1 (Int.tmod (A000045 (n + 1)) 2) : ℤ)

end

end A259858.P4643575805561954668

/-! ## A259858.P14731794636724839663

`A245904(n+1)/A036453(n+1)`
-/

namespace A259858.P14731794636724839663
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A245904 (n + 1) : ℚ) / (A036453 (n + 1) : ℚ)

end

end A259858.P14731794636724839663

/-! ## A259858.P11865408868895086126

`A005255(2*n)+1-A062178(2*n)`
-/

namespace A259858.P11865408868895086126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005255 (2 * n) + (1 - A062178 (2 * n))

end

end A259858.P11865408868895086126

/-! ## A259858.P4763108711478667048

`A062178(2*n+1)-A062178(2*n)`
-/

namespace A259858.P4763108711478667048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062178 (2 * n + 1) - A062178 (2 * n)

end

end A259858.P4763108711478667048

/-! ## A259858.P11980974137422267681

`A245904(n+1)/A055819(n)*A001519(n)`
-/

namespace A259858.P11980974137422267681
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A245904 (n + 1) : ℚ) / (A055819 n : ℚ) * (A001519 n : ℚ)

end

end A259858.P11980974137422267681

/-!
# A259859: a(0)=0; thereafter A003470(n-1) + A003470(n) - 1.

The programs for A259859, there is no canonical definition to state claims against.
-/

/-! ## A259859.P12312306332386101291

`∑[A276080(n)]`
-/

namespace A259859.P12312306332386101291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276080 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A259859.P12312306332386101291

/-! ## A259859.P11351573809198891126

`A276080(n)+a(A023443(n))` with `a(0)=0`
-/

namespace A259859.P11351573809198891126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A276080 n + a (A023443 n).toNat

end

end A259859.P11351573809198891126

/-! ## A259859.P14202369279646921643

`A004526(A059502(n)+A000254(n))`
-/

namespace A259859.P14202369279646921643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A059502 n + A000254 n).toNat

end

end A259859.P14202369279646921643

/-!
# A259860: a(n+8)+34*a(n+4)+a(n)=0 with a(0)-a(7) as shown.

The programs for A259860, there is no canonical definition to state claims against.
-/

/-! ## A259860.P13862856739466724382

`A259861(n)+round((sqrt(2)+2)*a(n-1))` with `a(0)=1`
-/

namespace A259860.P13862856739466724382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A259861 n + SequenceMachineLib.roundAway ((Real.sqrt (2 : ℝ) + 2) * (a (n - 1) : ℝ))

end

end A259860.P13862856739466724382

/-!
# A259861: a(n+8)+34*a(n+4)+a(n)=0 with a(0)-a(7) as shown.

The programs for A259861, there is no canonical definition to state claims against.
-/

/-! ## A259861.P7990060494959987818

`round((sqrt(2)+2)*a(n-1))-A259860(n)` with `a(0)=2`
-/

namespace A259861.P7990060494959987818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  SequenceMachineLib.roundAway ((Real.sqrt (2 : ℝ) + 2) * (a (n - 1) : ℝ)) - A259860 n

end

end A259861.P7990060494959987818

/-!
# A259862: Triangle read by rows: T(n,k) = number of unlabeled graphs with n nodes and connectivity exactly k (n>=1, 0<=k<=n-1).

The programs for A259862, there is no canonical definition to state claims against.
-/

/-! ## A259862.P15224152279588739860

`A327127(comp[∑[n-2]]+1)`
-/

namespace A259862.P15224152279588739860
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327127 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A259862.P15224152279588739860

/-! ## A259862.P14786854527994950819

`∏{d}[A327127(comp[∑[n-1]]), #]`
-/

namespace A259862.P14786854527994950819
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327127 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A259862.P14786854527994950819

/-! ## A259862.P1874224006723507592

`A363671(A101894(n))`
-/

namespace A259862.P1874224006723507592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363671 (A101894 n).toNat

end

end A259862.P1874224006723507592

/-! ## A259862.P3866242957948092133

`filter[A327127(n+1), A022930(#)]`
-/

namespace A259862.P3866242957948092133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327127 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A022930 (f1 j).toNat = 1) n)

end

end A259862.P3866242957948092133

/-! ## A259862.P11259504086818575293

`filter[A327127(n+1), A079421(#)]`
-/

namespace A259862.P11259504086818575293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327127 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A079421 (f1 j).toNat = 1) n)

end

end A259862.P11259504086818575293

/-!
# A259865: Exponent of 2 modulo the prime A039687(n).

The programs for A259865, there is no canonical definition to state claims against.
-/

/-! ## A259865.P15646835548569552999

`A366277(A077858(n))`
-/

namespace A259865.P15646835548569552999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366277 (A077858 n).toNat

end

end A259865.P15646835548569552999

/-! ## A259865.P5513414126490532211

`A007283(lt[A000010(n+1), A378038(n+4)])`
-/

namespace A259865.P5513414126490532211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378038 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007283 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A259865.P5513414126490532211

/-!
# A259866: 

The programs for A259866, there is no canonical definition to state claims against.
-/

/-! ## A259866.P9929075517805609394

`A199683(A056807(n+1))`
-/

namespace A259866.P9929075517805609394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199683 (A056807 (n + 1)).toNat

end

end A259866.P9929075517805609394

/-! ## A259866.P2644514248118782867

`A199683(A101823(n+1)+1)`
-/

namespace A259866.P2644514248118782867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199683 (A101823 (n + 1) + 1).toNat

end

end A259866.P2644514248118782867

/-!
# A259868: a(n) = n*A004141(n).

The programs for A259868, there is no canonical definition to state claims against.
-/

/-! ## A259868.P17898330832958027066

`(n+1)*A004141(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A259868.P17898330832958027066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A004141 (n + 1)

end

end A259868.P17898330832958027066

/-! ## A259868.P16362204787685457776

`A004141(A028242(2*n))*A028242(2*n)`
-/

namespace A259868.P16362204787685457776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004141 (A028242 (2 * n)).toNat * A028242 (2 * n)

end

end A259868.P16362204787685457776

/-! ## A259868.P4454695749840800902

`A004141(A029579(2*n))*A029579(2*n)`
-/

namespace A259868.P4454695749840800902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004141 (A029579 (2 * n)).toNat * A029579 (2 * n)

end

end A259868.P4454695749840800902

/-! ## A259868.P18124945240321654029

`A004141(A077168(n))*A077168(n)`
-/

namespace A259868.P18124945240321654029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004141 (A077168 n).toNat * A077168 n

end

end A259868.P18124945240321654029

/-!
# A259869: a(0) = -1; for n > 0, number of indecomposable derangements, i.e., no fixed points, and not fixing [1..j] for any 1 <= j < n.

The programs for A259869, there is no canonical definition to state claims against.
-/

/-! ## A259869.P598225383161244308

`A364056(a(n-1)+a(n-2))` with `a(0)=-1, a(1)=0, a(2)=1`
-/

namespace A259869.P598225383161244308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [-1, 0, 1] fun n a =>
  A364056 (a (n - 1) + a (n - 2)).toNat

end

end A259869.P598225383161244308

/-! ## A259869.P13988690134974526826

`A364056(a(n-1)-round(-a(n-2)))` with `a(0)=-1, a(1)=0, a(2)=1`

`round` is left out, it is the identity on integers.
-/

namespace A259869.P13988690134974526826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [-1, 0, 1] fun n a =>
  A364056 (a (n - 1) - (-a (n - 2))).toNat

end

end A259869.P13988690134974526826

/-! ## A259869.P5208779941810487543

`A194517(A112798(n+2)+A007526(n))`
-/

namespace A259869.P5208779941810487543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194517 (A112798 (n + 2) + A007526 n).toNat

end

end A259869.P5208779941810487543

/-!
# A259870: a(0)=0, a(1)=1; a(n) = n*a(n-1) + (n-2)*a(n-2) - Sum_{j=1..n-1} a(j)*a(n-j).

The programs for A259870, there is no canonical definition to state claims against.
-/

/-! ## A259870.P9774149569939811747

`or(A011655(n), A030603(A192744(n)))`
-/

namespace A259870.P9774149569939811747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A011655 n) (A030603 (A192744 n).toNat)

end

end A259870.P9774149569939811747

/-! ## A259870.P14328556335780359121

`A030603(A192744(n)+A030603(n+1))`
-/

namespace A259870.P14328556335780359121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030603 (A192744 n + A030603 (n + 1)).toNat

end

end A259870.P14328556335780359121

/-! ## A259870.P7933285415739319996

`A008615(A307997(n+1)+A002104(n))`
-/

namespace A259870.P7933285415739319996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A307997 (n + 1) + A002104 n).toNat

end

end A259870.P7933285415739319996

/-!
# A259871: a(0)=1/2, a(1)=1; a(n) = n*a(n-1) + (n-2)*a(n-2) - 2*Sum_{j=1..n-1} a(j)*a(n-j) + 2*Sum_{j=0..n-1} a(j)*a(n-1-j).

The programs for A259871, there is no canonical definition to state claims against.
-/

/-! ## A259871.P17522151304910379741

`A149881(n)+A008618(A035357(n+1))`
-/

namespace A259871.P17522151304910379741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149881 n + A008618 (A035357 (n + 1)).toNat

end

end A259871.P17522151304910379741

/-! ## A259871.P13541826586478743504

`A356065(ceil(∑[3^(n-2)]))+n`
-/

namespace A259871.P13541826586478743504
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ ((n : ℤ) - 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356065 ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉.toNat + (n : ℤ)

end

end A259871.P13541826586478743504

/-!
# A259873: Triangle read by rows: T(n,k) (n >= 3, 3 <= k <= n) = number of possible graphical partitions for simple graphs with n non-isolated nodes and k edges.

The programs for A259873, there is no canonical definition to state claims against.
-/

/-! ## A259873.P2309177587420831687

`A121462(n+1)-A327216(A200430(n+5))`
-/

namespace A259873.P2309177587420831687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121462 (n + 1) - A327216 (A200430 (n + 5)).toNat

end

end A259873.P2309177587420831687

/-! ## A259873.P9904004847951557396

`A349706(n)-A055641(A001970(n+3))`
-/

namespace A259873.P9904004847951557396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349706 n - A055641 (A001970 (n + 3)).toNat

end

end A259873.P9904004847951557396

/-! ## A259873.P18104864989651964461

`A265509(n)%A206916(A104601(n+1))`
-/

namespace A259873.P18104864989651964461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A265509 n) (A206916 (A104601 (n + 1)).toNat)

end

end A259873.P18104864989651964461

/-! ## A259873.P13320606942177559648

`and(A000195(A117075(n+1)), A102363(n))`
-/

namespace A259873.P13320606942177559648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000195 (A117075 (n + 1)).toNat) (A102363 n)

end

end A259873.P13320606942177559648

/-! ## A259873.P3341928446371242644

`and(A081604(A081615(n)), A081730(n+1))`
-/

namespace A259873.P3341928446371242644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A081604 (A081615 n).toNat) (A081730 (n + 1))

end

end A259873.P3341928446371242644

/-!
# A259874: Array read by antidiagonals upwards: Davenport-Schinzel numbers T(n,k), n >= 1, k >= 1.

The programs for A259874, there is no canonical definition to state claims against.
-/

/-! ## A259874.P771087811035952768

`A329314(3*n+1)+A004247(n)`
-/

namespace A259874.P771087811035952768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329314 (3 * n + 1) + A004247 n

end

end A259874.P771087811035952768

/-! ## A259874.P1517436562316036993

`A329314(3*n+1)+A077028(n)-1`
-/

namespace A259874.P1517436562316036993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329314 (3 * n + 1) + (A077028 n - 1)

end

end A259874.P1517436562316036993

/-! ## A259874.P12511062745667407361

`A350289(A001498(n))+A114225(n)`
-/

namespace A259874.P12511062745667407361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350289 (A001498 n).toNat + A114225 n

end

end A259874.P12511062745667407361

/-! ## A259874.P2047309246268022198

`A114225(n)+A102683(A116085(n+1))`
-/

namespace A259874.P2047309246268022198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114225 n + A102683 (A116085 (n + 1)).toNat

end

end A259874.P2047309246268022198

/-! ## A259874.P15185018867398952533

`A114225(n)+A102683(A156582(n+1))`
-/

namespace A259874.P15185018867398952533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114225 n + A102683 (A156582 (n + 1)).toNat

end

end A259874.P15185018867398952533

/-!
# A259875: Irregular triangle read by rows: coefficients (highest degree first) of polynomials defined by p_0(x)=0, p_1(x)=p_2(x)=1, p_3(x)=x+1; p_n(x)=x*p_{n-2}(x)-p_{n-4}(x).

The programs for A259875, there is no canonical definition to state claims against.
-/

/-! ## A259875.P6251456493584110741

`A202146(n)-A202146(A051767(n+1))`
-/

namespace A259875.P6251456493584110741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202146 n - A202146 (A051767 (n + 1)).toNat

end

end A259875.P6251456493584110741

/-!
# A259876: Triangle of numbers S(n,k) (0 <= k <= n) arising in the enumeration of interval orders without duplicated holdings.

The programs for A259876, there is no canonical definition to state claims against.
-/

/-! ## A259876.P5719759569284510818

`A286331(A061579(n))/A157963(n)`
-/

namespace A259876.P5719759569284510818
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A286331 (A061579 n).toNat : ℚ) / (A157963 n : ℚ)

end

end A259876.P5719759569284510818

/-! ## A259876.P3635428770354752318

`A379105(n)/A157963(n)`
-/

namespace A259876.P3635428770354752318
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A379105 n : ℚ) / (A157963 n : ℚ)

end

end A259876.P3635428770354752318

/-!
# A259877: If n is even then a(n) = n!/( 2^(n/2)*(n/2)! ), otherwise a(n) = n!/( 3*2^((n-1)/2)*((n-3)/2)! ).

The programs for A259877, the canonical program `A259877.P11459375870867924158` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A259877 has offset 2).

The definition of A259877 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 117 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A259877.P11459375870867924158

`A100861(A217571(n+1))`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A259877

/-- `A100861(A217571(n+1))` -/
def P11459375870867924158.Spec : Prop :=
  ∀ n, P11459375870867924158.a n = A259877 (n + 2)

theorem P11459375870867924158.correct : P11459375870867924158.Spec := by
  intro n
  simp only [A259877, Nat.add_sub_cancel]

end A259877

/-! ## A259877.P13453645454152349966

`A111924(A266725(n+1))`
-/

namespace A259877.P13453645454152349966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111924 (A266725 (n + 1)).toNat

end

end A259877.P13453645454152349966

namespace A259877

/-- `A111924(A266725(n+1))` -/
def P13453645454152349966.Spec : Prop :=
  ∀ n, P13453645454152349966.a n = A259877 (n + 2)

end A259877

/-! ## A259877.P11292415781740531183

`A100861(A265611(n+1))`
-/

namespace A259877.P11292415781740531183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100861 (A265611 (n + 1)).toNat

end

end A259877.P11292415781740531183

namespace A259877

/-- `A100861(A265611(n+1))` -/
def P11292415781740531183.Spec : Prop :=
  ∀ n, P11292415781740531183.a n = A259877 (n + 2)

end A259877

/-! ## A259877.P7644590316159419681

`A075856(A117142(n+1))`
-/

namespace A259877.P7644590316159419681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075856 (A117142 (n + 1)).toNat

end

end A259877.P7644590316159419681

namespace A259877

/-- `A075856(A117142(n+1))` -/
def P7644590316159419681.Spec : Prop :=
  ∀ n, P7644590316159419681.a n = A259877 (n + 2)

end A259877

/-! ## A259877.P579615009047045803

`A239098(A101881(n+1))`
-/

namespace A259877.P579615009047045803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239098 (A101881 (n + 1)).toNat

end

end A259877.P579615009047045803

namespace A259877

/-- `A239098(A101881(n+1))` -/
def P579615009047045803.Spec : Prop :=
  ∀ n, P579615009047045803.a n = A259877 (n + 2)

end A259877

/-! ## A259877.P2544428265645062199

`A308624(A080476(n+2))`
-/

namespace A259877.P2544428265645062199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308624 (A080476 (n + 2)).toNat

end

end A259877.P2544428265645062199

namespace A259877

/-- `A308624(A080476(n+2))` -/
def P2544428265645062199.Spec : Prop :=
  ∀ n, P2544428265645062199.a n = A259877 (n + 2)

end A259877

/-! ## A259877.P8337590049935596505

`A308624(A256137(n+3))`
-/

namespace A259877.P8337590049935596505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308624 (A256137 (n + 3)).toNat

end

end A259877.P8337590049935596505

namespace A259877

/-- `A308624(A256137(n+3))` -/
def P8337590049935596505.Spec : Prop :=
  ∀ n, P8337590049935596505.a n = A259877 (n + 2)

end A259877

/-! ## A259877.P16521098608140161676

`A358623(A074148(n+2))`
-/

namespace A259877.P16521098608140161676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358623 (A074148 (n + 2)).toNat

end

end A259877.P16521098608140161676

namespace A259877

/-- `A358623(A074148(n+2))` -/
def P16521098608140161676.Spec : Prop :=
  ∀ n, P16521098608140161676.a n = A259877 (n + 2)

end A259877

/-! ## A259877.P13086411614247205155

`A008299(A002620(n+2)+1)`
-/

namespace A259877.P13086411614247205155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008299 (A002620 (n + 2) + 1).toNat

end

end A259877.P13086411614247205155

namespace A259877

/-- `A008299(A002620(n+2)+1)` -/
def P13086411614247205155.Spec : Prop :=
  ∀ n, P13086411614247205155.a n = A259877 (n + 2)

end A259877

/-! ## A259877.P12858739325013826015

`A008299(lt[A008299(n+2), A000005(n+1)]+1)`
-/

namespace A259877.P12858739325013826015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008299 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008299 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1)

end

end A259877.P12858739325013826015

namespace A259877

/-- `A008299(lt[A008299(n+2), A000005(n+1)]+1)` -/
def P12858739325013826015.Spec : Prop :=
  ∀ n, P12858739325013826015.a n = A259877 (n + 2)

end A259877

/-!
# A259880: Right-hand diagonal of triangle A259879.

The programs for A259880, there is no canonical definition to state claims against.
-/

/-! ## A259880.P4536592650244090496

`A259879(∑[n]+n)`
-/

namespace A259880.P4536592650244090496
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259879 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A259880.P4536592650244090496

/-! ## A259880.P938744634419021523

`∑{digits}[n, A259879(A000096(#))]`
-/

namespace A259880.P938744634419021523
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A259879 (A000096 x).toNat).sum

end

end A259880.P938744634419021523

/-! ## A259880.P2122189171413919632

`A259879(A000096(n))+char[8]`
-/

namespace A259880.P2122189171413919632
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259879 (A000096 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A259880.P2122189171413919632

/-! ## A259880.P10220472410774610253

`A000040(n+2)%2*A259879(A000096(n))`
-/

namespace A259880.P10220472410774610253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 2)) 2 * A259879 (A000096 n).toNat

end

end A259880.P10220472410774610253

/-!
# A259882: Number of graphs with n edges having a proper labeling that is bilaterally symmetric and satisfies condition (4.1) of Sheppard (1976).

The programs for A259882, there is no canonical definition to state claims against.
-/

/-! ## A259882.P16416956929350600119

`∑{d}[n+1, A066318(#)*A335405((n+1)/#-1)]`
-/

namespace A259882.P16416956929350600119
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A066318 d * A335405 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A259882.P16416956929350600119

/-!
# A259883: A005204 written in base 2.

The programs for A259883, there is no canonical definition to state claims against.
-/

/-! ## A259883.P12341366422672411034

`A007088(A005204(n))`
-/

namespace A259883.P12341366422672411034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A005204 n).toNat

end

end A259883.P12341366422672411034

/-! ## A259883.P3514591861781418921

`A185544(2*A005204(n))`
-/

namespace A259883.P3514591861781418921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A005204 n).toNat

end

end A259883.P3514591861781418921

/-! ## A259883.P870239515651246584

`A105034(A105030(n)%ceil(2^(n-1)))`
-/

namespace A259883.P870239515651246584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105034 (Int.tmod (A105030 n) ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉).toNat

end

end A259883.P870239515651246584

/-!
# A259884: Expansion of phi(x) * f(-x^3)^3 / f(-x) in powers of x where phi(), f() are Ramanujan theta functions.

The programs for A259884, there is no canonical definition to state claims against.
-/

/-! ## A259884.P237836114958222897

`A259827(4*n)`
-/

namespace A259884.P237836114958222897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259827 (4 * n)

end

end A259884.P237836114958222897

/-! ## A259884.P2663783078622734537

`A259827(A008574(n))-A000007(n)`
-/

namespace A259884.P2663783078622734537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259827 (A008574 n).toNat - A000007 n

end

end A259884.P2663783078622734537

/-! ## A259884.P3548836434198978476

`A259827(A008586(n))%A000124(n+8)`
-/

namespace A259884.P3548836434198978476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A259827 (A008586 n).toNat) (A000124 (n + 8))

end

end A259884.P3548836434198978476

/-! ## A259884.P10701211441531862402

`A259827(A008574(n))-A151933(A007953(n))`
-/

namespace A259884.P10701211441531862402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259827 (A008574 n).toNat - A151933 (A007953 n).toNat

end

end A259884.P10701211441531862402

/-! ## A259884.P10508521626523494096

`A259827(A008574(n))-A151933(A277315(n))`
-/

namespace A259884.P10508521626523494096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259827 (A008574 n).toNat - A151933 (A277315 n).toNat

end

end A259884.P10508521626523494096

/-! ## A259884.P10245868505709810210

`A259827(A005843(A005843(n)))%A016789(n)`
-/

namespace A259884.P10245868505709810210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A259827 (A005843 (A005843 n).toNat).toNat) (A016789 n)

end

end A259884.P10245868505709810210

/-! ## A259884.P805353656136026328

`A259827(A008574(n))-A010051(A047235(n+1))`
-/

namespace A259884.P805353656136026328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259827 (A008574 n).toNat - A010051 (A047235 (n + 1)).toNat

end

end A259884.P805353656136026328

/-! ## A259884.P13296254400094161833

`A259827(A008574(n)+A000007(n))+A000007(n)`
-/

namespace A259884.P13296254400094161833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259827 (A008574 n + A000007 n).toNat + A000007 n

end

end A259884.P13296254400094161833

/-! ## A259884.P10987991256745782067

`A259825(A017569(n))/6`
-/

namespace A259884.P10987991256745782067
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A259825 (A017569 n).toNat : ℚ) / 6

end

end A259884.P10987991256745782067

/-! ## A259884.P17906616477044028847

`A259827(A008574(n))-A073424(A167614(n+1))`
-/

namespace A259884.P17906616477044028847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259827 (A008574 n).toNat - A073424 (A167614 (n + 1)).toNat

end

end A259884.P17906616477044028847

/-!
# A259885: a(n) = max{T(n,k), k=1..n}, where T(n,k) is the number of Dyck paths of length 2n and height k (1<=k<=n).

The programs for A259885, there is no canonical definition to state claims against.
-/

/-! ## A259885.P7075523996183690175

`A080936(A259899(n+1)+∑[n])`
-/

namespace A259885.P7075523996183690175
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080936 (A259899 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A259885.P7075523996183690175

/-! ## A259885.P335335378516203611

`A002487(A352861(n)-n)`
-/

namespace A259885.P335335378516203611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A352861 n - (n : ℤ)).toNat

end

end A259885.P335335378516203611

/-! ## A259885.P5389907279174245469

`A078508(n)+A057142(A001147(n))`
-/

namespace A259885.P5389907279174245469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078508 n + A057142 (A001147 n).toNat

end

end A259885.P5389907279174245469

/-!
# A259886: Number of (n+2)X(n+2) 0..1 arrays with each 3X3 subblock having clockwise perimeter pattern 00000000 00000001 or 00000011.

The programs for A259886, there is no canonical definition to state claims against.
-/

/-! ## A259886.P8746592977764247899

`A259894((n+1)²+n²)`
-/

namespace A259886.P8746592977764247899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259894 ((n + 1) ^ 2 + n ^ 2)

end

end A259886.P8746592977764247899

/-! ## A259886.P17294346439580637056

`A259894(A001844(n))+A054900(n)`
-/

namespace A259886.P17294346439580637056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259894 (A001844 n).toNat + A054900 n

end

end A259886.P17294346439580637056

/-! ## A259886.P5953226387823508416

`lcm(A121238(n), A259894(A001844(n)))`
-/

namespace A259886.P5953226387823508416
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A121238 n) (A259894 (A001844 n).toNat)

end

end A259886.P5953226387823508416

/-! ## A259886.P1487950721838269177

`or(A000038(n), A259894(A001844(n)))`
-/

namespace A259886.P1487950721838269177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000038 n) (A259894 (A001844 n).toNat)

end

end A259886.P1487950721838269177

/-! ## A259886.P12601913259532483625

`A000108(and(1, -n))*A259894(A001844(n))`
-/

namespace A259886.P12601913259532483625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (Int.land 1 (-(n : ℤ))).toNat * A259894 (A001844 n).toNat

end

end A259886.P12601913259532483625

/-!
# A259887: Number of (n+2) X (1+2) 0..1 arrays with each 3 X 3 subblock having clockwise perimeter pattern 00000000 00000001 or 00000011.

The programs for A259887, the canonical program `A259887.P1150592403877188975` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A259887 has offset 1).

The definition of A259887 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 280 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A259887.P1150592403877188975

`a(n-1)+5*a(n-3)+3*a(n-4)` with `a(0)=34, a(1)=67, a(2)=215, a(3)=499`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A259887

/-- `a(n-1)+5*a(n-3)+3*a(n-4)` -/
def P1150592403877188975.Spec : Prop :=
  ∀ n, (P1150592403877188975.a n : ℤ) = A259887 (n + 1)

theorem P1150592403877188975.correct : P1150592403877188975.Spec := by
  intro n
  simp only [A259887, Nat.add_sub_cancel]

end A259887

/-! ## A259887.P488915661223247233

`A259894(∑[n]+1)`
-/

namespace A259887.P488915661223247233
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259894 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A259887.P488915661223247233

namespace A259887

/-- `A259894(∑[n]+1)` -/
def P488915661223247233.Spec : Prop :=
  ∀ n, P488915661223247233.a n = A259887 (n + 1)

end A259887

/-! ## A259887.P15573220150124208192

`record[A259894(A056534(n+1))]`
-/

namespace A259887.P15573220150124208192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259894 (A056534 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A259887.P15573220150124208192

namespace A259887

/-- `record[A259894(A056534(n+1))]` -/
def P15573220150124208192.Spec : Prop :=
  ∀ n, P15573220150124208192.a n = A259887 (n + 1)

end A259887

/-! ## A259887.P3645833286942731879

`record[A010054(n)*A259894(n+1)]`
-/

namespace A259887.P3645833286942731879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A259894 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A259887.P3645833286942731879

namespace A259887

/-- `record[A010054(n)*A259894(n+1)]` -/
def P3645833286942731879.Spec : Prop :=
  ∀ n, P3645833286942731879.a n = A259887 (n + 1)

end A259887

/-! ## A259887.P7819070049815625094

`record[A103451(n)*A259894(n+1)]`
-/

namespace A259887.P7819070049815625094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103451 n * A259894 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A259887.P7819070049815625094

namespace A259887

/-- `record[A103451(n)*A259894(n+1)]` -/
def P7819070049815625094.Spec : Prop :=
  ∀ n, P7819070049815625094.a n = A259887 (n + 1)

end A259887

/-!
# A259888: Number of (n+2) X (2+2) 0..1 arrays with each 3 X 3 subblock having clockwise perimeter pattern 00000000 00000001 or 00000011.

The programs for A259888, there is no canonical definition to state claims against.
-/

/-! ## A259888.P5162134785602169145

`A259894(∑[n+1]+2)`
-/

namespace A259888.P5162134785602169145
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259894 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A259888.P5162134785602169145

/-! ## A259888.P9273716648130145265

`record[A259894(A133263(abs(1-n)))]`
-/

namespace A259888.P9273716648130145265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259894 (A133263 |1 - (n : ℤ)|.toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A259888.P9273716648130145265

/-! ## A259888.P3519596866266444932

`record[A010054(n)*A259894(n+2)]`
-/

namespace A259888.P3519596866266444932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A259894 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A259888.P3519596866266444932

/-! ## A259888.P902249757789533969

`A001222(A238699(n+1))*A259894(A152948(n+3))`
-/

namespace A259888.P902249757789533969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A238699 (n + 1)).toNat * A259894 (A152948 (n + 3)).toNat

end

end A259888.P902249757789533969

/-! ## A259888.P10168145084998474704

`A033999(n)²*A259894(A000096(n+1))`
-/

namespace A259888.P10168145084998474704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n ^ 2 * A259894 (A000096 (n + 1)).toNat

end

end A259888.P10168145084998474704

/-!
# A259889: Number of (n+2)X(3+2) 0..1 arrays with each 3X3 subblock having clockwise perimeter pattern 00000000 00000001 or 00000011.

The programs for A259889, there is no canonical definition to state claims against.
-/

/-! ## A259889.P5072239109161003394

`A259894(∑[n+2]+4)`
-/

namespace A259889.P5072239109161003394
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259894 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A259889.P5072239109161003394

/-! ## A259889.P1522928293593916627

`or(1, A259894(A167614(n+1)))`
-/

namespace A259889.P1522928293593916627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A259894 (A167614 (n + 1)).toNat)

end

end A259889.P1522928293593916627

/-! ## A259889.P4793372850720585357

`A020985(n)²*A259894(A167614(n+1))`
-/

namespace A259889.P4793372850720585357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020985 n ^ 2 * A259894 (A167614 (n + 1)).toNat

end

end A259889.P4793372850720585357

/-! ## A259889.P14708109432671289559

`char[A001057(n)]*A259894(A167614(n+1))`
-/

namespace A259889.P14708109432671289559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A259894 (A167614 (n + 1)).toNat

end

end A259889.P14708109432671289559

/-! ## A259889.P12118551589678199869

`A259894(A167614(n+1))%A244186(n+1)`
-/

namespace A259889.P12118551589678199869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A259894 (A167614 (n + 1)).toNat) (A244186 (n + 1))

end

end A259889.P12118551589678199869

/-!
# A259890: Number of (n+2)X(4+2) 0..1 arrays with each 3X3 subblock having clockwise perimeter pattern 00000000 00000001 or 00000011.

The programs for A259890, there is no canonical definition to state claims against.
-/

/-! ## A259890.P3118981112600350356

`A259894(∑[n+3]+7)`
-/

namespace A259890.P3118981112600350356
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259894 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A259890.P3118981112600350356

/-! ## A259890.P17790778979305098925

`A259894(A145018(n+4))+char[28]`
-/

namespace A259890.P17790778979305098925
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  28

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259894 (A145018 (n + 4)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A259890.P17790778979305098925

/-! ## A259890.P14151163398303172588

`A259894(A052905(n)+9)+char[28]`
-/

namespace A259890.P14151163398303172588
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  28

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259894 (A052905 n + 9).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A259890.P14151163398303172588

/-! ## A259890.P12203796768427436884

`A259894(A055999(n)+10)+char[28]`
-/

namespace A259890.P12203796768427436884
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  28

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259894 (A055999 n + 10).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A259890.P12203796768427436884

/-! ## A259890.P8820245473106513508

`A259894(A145018(n+4))/A152271(2*n)`
-/

namespace A259890.P8820245473106513508
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A259894 (A145018 (n + 4)).toNat : ℚ) / (A152271 (2 * n) : ℚ)

end

end A259890.P8820245473106513508

/-!
# A259891: Number of (n+2)X(5+2) 0..1 arrays with each 3X3 subblock having clockwise perimeter pattern 00000000 00000001 or 00000011.

The programs for A259891, there is no canonical definition to state claims against.
-/

/-! ## A259891.P15004826659475747570

`A259894(A374005(n+1))`
-/

namespace A259891.P15004826659475747570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259894 (A374005 (n + 1)).toNat

end

end A259891.P15004826659475747570

/-! ## A259891.P464168251981927685

`A259894(A167499(n+3))`
-/

namespace A259891.P464168251981927685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259894 (A167499 (n + 3)).toNat

end

end A259891.P464168251981927685

/-! ## A259891.P14977718337616484308

`A259894(A000217(n+4)+5)`
-/

namespace A259891.P14977718337616484308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259894 (A000217 (n + 4) + 5).toNat

end

end A259891.P14977718337616484308

/-! ## A259891.P7170095823389797493

`A259894(A141214(n+1)+8)`
-/

namespace A259891.P7170095823389797493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259894 (A141214 (n + 1) + 8).toNat

end

end A259891.P7170095823389797493

/-! ## A259891.P3365267940203722541

`A259894(A046691(n+3))`
-/

namespace A259891.P3365267940203722541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259894 (A046691 (n + 3)).toNat

end

end A259891.P3365267940203722541

/-!
# A259892: Number of (n+2)X(6+2) 0..1 arrays with each 3X3 subblock having clockwise perimeter pattern 00000000 00000001 or 00000011.

The programs for A259892, there is no canonical definition to state claims against.
-/

/-! ## A259892.P13122962921930276508

`A259894(A374007(n+1))`
-/

namespace A259892.P13122962921930276508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259894 (A374007 (n + 1)).toNat

end

end A259892.P13122962921930276508

/-! ## A259892.P4033447518444812500

`A259894(A166136(n+4))`
-/

namespace A259892.P4033447518444812500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259894 (A166136 (n + 4)).toNat

end

end A259892.P4033447518444812500

/-! ## A259892.P11665439621326265376

`A259894(A167499(n+4)+1)`
-/

namespace A259892.P11665439621326265376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259894 (A167499 (n + 4) + 1).toNat

end

end A259892.P11665439621326265376

/-! ## A259892.P1973746090039090016

`A259894(A167614(n+4)+3)`
-/

namespace A259892.P1973746090039090016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259894 (A167614 (n + 4) + 3).toNat

end

end A259892.P1973746090039090016

/-! ## A259892.P10260801850363322319

`A259894(A000124(n+5)+5)`
-/

namespace A259892.P10260801850363322319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259894 (A000124 (n + 5) + 5).toNat

end

end A259892.P10260801850363322319

/-!
# A259893: Number of (n+2)X(7+2) 0..1 arrays with each 3X3 subblock having clockwise perimeter pattern 00000000 00000001 or 00000011.

The programs for A259893, there is no canonical definition to state claims against.
-/

/-! ## A259893.P12448519420672313071

`A259894(A374008(n+1))`
-/

namespace A259893.P12448519420672313071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259894 (A374008 (n + 1)).toNat

end

end A259893.P12448519420672313071

/-! ## A259893.P6230885248900221710

`A259894(A166136(n+5)+1)`
-/

namespace A259893.P6230885248900221710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259894 (A166136 (n + 5) + 1).toNat

end

end A259893.P6230885248900221710

/-! ## A259893.P875536318803510447

`A259894(eq[8, A131818(n+1)])`
-/

namespace A259893.P875536318803510447
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259894 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A259893.P875536318803510447

/-! ## A259893.P11555852646968951736

`A259894(A055999(n+4))`
-/

namespace A259893.P11555852646968951736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259894 (A055999 (n + 4)).toNat

end

end A259893.P11555852646968951736

/-! ## A259893.P11011898624680279722

`A259894(eq[4, A219347(n)])`
-/

namespace A259893.P11011898624680279722
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259894 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A259893.P11011898624680279722

/-!
# A259895: Expansion of psi(x^2) * psi(x^3) in powers of x where psi() is a Ramanujan theta function.

The programs for A259895, there is no canonical definition to state claims against.
-/

/-! ## A259895.P8827514384946731388

`A259896(3*n+1)`
-/

namespace A259895.P8827514384946731388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259896 (3 * n + 1)

end

end A259895.P8827514384946731388

/-! ## A259895.P13098107566462532480

`A261118(Δ[n²])/2`
-/

namespace A259895.P13098107566462532480
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A261118 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 2

end

end A259895.P13098107566462532480

/-! ## A259895.P7406528690932291659

`abs(A259668(2*n+1)/2)`
-/

namespace A259895.P7406528690932291659
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A259668 (2 * n + 1) : ℚ) / 2|

end

end A259895.P7406528690932291659

/-! ## A259895.P9656749265265984653

`A014682(A261118(2*n+1))`
-/

namespace A259895.P9656749265265984653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A261118 (2 * n + 1)).toNat

end

end A259895.P9656749265265984653

/-! ## A259895.P1271929449371996706

`A014682(abs(A259668(2*n+1)))`
-/

namespace A259895.P1271929449371996706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 |A259668 (2 * n + 1)|.toNat

end

end A259895.P1271929449371996706

/-! ## A259895.P9337327034138727668

`A014682(-A259668(2*n+1))`
-/

namespace A259895.P9337327034138727668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (-A259668 (2 * n + 1)).toNat

end

end A259895.P9337327034138727668

/-! ## A259895.P8279913869672365567

`gcd(A259668(2*n+1)/2, A000038(n))`
-/

namespace A259895.P8279913869672365567
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway ((A259668 (2 * n + 1) : ℚ) / 2)) (A000038 n)

end

end A259895.P8279913869672365567

/-! ## A259895.P4897230746952778683

`A259668(2*n+1)/(A000038(n+1)-2)`
-/

namespace A259895.P4897230746952778683
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A259668 (2 * n + 1) : ℚ) / (A000038 (n + 1) - 2 : ℚ)

end

end A259895.P4897230746952778683

/-! ## A259895.P4818449162403141266

`A259668(2*n+1)/(A005929(2*n)-2)`
-/

namespace A259895.P4818449162403141266
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A259668 (2 * n + 1) : ℚ) / (A005929 (2 * n) - 2 : ℚ)

end

end A259895.P4818449162403141266

/-! ## A259895.P10329669884121746758

`lcm(A000034(n+1), A259668(2*n+1))/2`
-/

namespace A259895.P10329669884121746758
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A000034 (n + 1)) (A259668 (2 * n + 1)) : ℚ) / 2

end

end A259895.P10329669884121746758

/-! ## A259895.P13371160638627621092

`A259668(2*n+1)/(A033999(2*n+1)-1)`
-/

namespace A259895.P13371160638627621092
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A259668 (2 * n + 1) : ℚ) / (A033999 (2 * n + 1) - 1 : ℚ)

end

end A259895.P13371160638627621092

/-! ## A259895.P9777515419692433937

`A259668(2*n+1)/A000034(2*n+1)-A259668(2*n+1)`
-/

namespace A259895.P9777515419692433937
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A259668 (2 * n + 1) : ℚ) / (A000034 (2 * n + 1) : ℚ) - (A259668 (2 * n + 1) : ℚ)

end

end A259895.P9777515419692433937

/-! ## A259895.P8223183371089668356

`A129402(4*n+2)/2`
-/

namespace A259895.P8223183371089668356
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A129402 (4 * n + 2) : ℚ) / 2

end

end A259895.P8223183371089668356

/-! ## A259895.P8071855823556048298

`A261119(6*n+3)/2`
-/

namespace A259895.P8071855823556048298
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A261119 (6 * n + 3) : ℚ) / 2

end

end A259895.P8071855823556048298

/-! ## A259895.P12165570830025014805

`A000377(8*n+5)/2`
-/

namespace A259895.P12165570830025014805
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000377 (8 * n + 5) : ℚ) / 2

end

end A259895.P12165570830025014805

/-! ## A259895.P13311834749531697677

`A084863(A004770(n+1))`
-/

namespace A259895.P13311834749531697677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084863 (A004770 (n + 1)).toNat

end

end A259895.P13311834749531697677

/-! ## A259895.P18368124912630678216

`A216513(A113770(n+1))`
-/

namespace A259895.P18368124912630678216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216513 (A113770 (n + 1)).toNat

end

end A259895.P18368124912630678216

/-! ## A259895.P12449398865188994885

`A001221(A261118(2*n+1)!)`
-/

namespace A259895.P12449398865188994885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Nat.factorial (A261118 (2 * n + 1)).toNat)

end

end A259895.P12449398865188994885

/-! ## A259895.P3825728543746282040

`A216513(A165372(n+3))`
-/

namespace A259895.P3825728543746282040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216513 (A165372 (n + 3)).toNat

end

end A259895.P3825728543746282040

/-!
# A259896: Expansion of psi(x) * psi(x^6) in powers of x where psi() is a Ramanujan theta function.

The programs for A259896, there is no canonical definition to state claims against.
-/

/-! ## A259896.P10921075366846765184

`A261119(Δ[n²])/2`
-/

namespace A259896.P10921075366846765184
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A261119 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 2

end

end A259896.P10921075366846765184

/-! ## A259896.P2351633591923562058

`abs(A257921(2*n+1)/2)`
-/

namespace A259896.P2351633591923562058
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A257921 (2 * n + 1) : ℚ) / 2|

end

end A259896.P2351633591923562058

/-! ## A259896.P523730154750983543

`ceil(A261119(2*n+1)/2)`
-/

namespace A259896.P523730154750983543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A261119 (2 * n + 1) : ℚ) / 2⌉

end

end A259896.P523730154750983543

/-! ## A259896.P9106630651861335603

`A071045(A261119(2*n+1)+1)`
-/

namespace A259896.P9106630651861335603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071045 (A261119 (2 * n + 1) + 1).toNat

end

end A259896.P9106630651861335603

/-! ## A259896.P7523171508444721681

`A071045(1-A257921(2*n+1))`
-/

namespace A259896.P7523171508444721681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071045 (1 - A257921 (2 * n + 1)).toNat

end

end A259896.P7523171508444721681

/-! ## A259896.P16730126385076470157

`gcd(A257921(2*n+1)/2, A000038(n))`
-/

namespace A259896.P16730126385076470157
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway ((A257921 (2 * n + 1) : ℚ) / 2)) (A000038 n)

end

end A259896.P16730126385076470157

/-! ## A259896.P10731952866307440613

`A257921(2*n+1)/(A000038(n+1)-2)`
-/

namespace A259896.P10731952866307440613
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A257921 (2 * n + 1) : ℚ) / (A000038 (n + 1) - 2 : ℚ)

end

end A259896.P10731952866307440613

/-! ## A259896.P3073803888677289728

`lcm(A000034(n+1), A257921(2*n+1))/2`
-/

namespace A259896.P3073803888677289728
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A000034 (n + 1)) (A257921 (2 * n + 1)) : ℚ) / 2

end

end A259896.P3073803888677289728

/-! ## A259896.P8128505108481196020

`A257921(2*n+1)/(A033999(2*n+1)-1)`
-/

namespace A259896.P8128505108481196020
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A257921 (2 * n + 1) : ℚ) / (A033999 (2 * n + 1) - 1 : ℚ)

end

end A259896.P8128505108481196020

/-! ## A259896.P2950610124696404163

`A257921(2*n+1)/A000034(2*n+1)-A257921(2*n+1)`
-/

namespace A259896.P2950610124696404163
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A257921 (2 * n + 1) : ℚ) / (A000034 (2 * n + 1) : ℚ) - (A257921 (2 * n + 1) : ℚ)

end

end A259896.P2950610124696404163

/-! ## A259896.P1503280216509346948

`A259895(3*n+2)`
-/

namespace A259896.P1503280216509346948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259895 (3 * n + 2)

end

end A259896.P1503280216509346948

/-! ## A259896.P5435345947217182440

`A129402(4*n+3)/2`
-/

namespace A259896.P5435345947217182440
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A129402 (4 * n + 3) : ℚ) / 2

end

end A259896.P5435345947217182440

/-! ## A259896.P6746707779981921048

`A261118(6*n+5)/2`
-/

namespace A259896.P6746707779981921048
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A261118 (6 * n + 5) : ℚ) / 2

end

end A259896.P6746707779981921048

/-! ## A259896.P13761765961054373018

`A000377(8*n+7)/2`
-/

namespace A259896.P13761765961054373018
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000377 (8 * n + 7) : ℚ) / 2

end

end A259896.P13761765961054373018

/-! ## A259896.P2313907837241521736

`A216513(A004771(n))`
-/

namespace A259896.P2313907837241521736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216513 (A004771 n).toNat

end

end A259896.P2313907837241521736

/-! ## A259896.P15128682147244158753

`A216513(A133655(n+1))`
-/

namespace A259896.P15128682147244158753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216513 (A133655 (n + 1)).toNat

end

end A259896.P15128682147244158753

/-! ## A259896.P11964829202859606353

`A115660(A017137(n)+1)/2`
-/

namespace A259896.P11964829202859606353
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A115660 (A017137 n + 1).toNat : ℚ) / 2

end

end A259896.P11964829202859606353

/-! ## A259896.P5412963636880475452

`A128581(A098502(n+1)+2)/2`
-/

namespace A259896.P5412963636880475452
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A128581 (A098502 (n + 1) + 2).toNat : ℚ) / 2

end

end A259896.P5412963636880475452

/-! ## A259896.P8692812321145844596

`A084863(A102603(n))`
-/

namespace A259896.P8692812321145844596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084863 (A102603 n).toNat

end

end A259896.P8692812321145844596

/-! ## A259896.P7704890796867698493

`A001221(A261119(2*n+1)!)`
-/

namespace A259896.P7704890796867698493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Nat.factorial (A261119 (2 * n + 1)).toNat)

end

end A259896.P7704890796867698493

/-!
# A259897: a(n) is the 2-adic valuation of phi(binomial(2*n,n)).

The programs for A259897, the canonical program `A259897.P2407533474827309403` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A259897 has offset 0).

The definition of A259897 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A259897.P2407533474827309403

`val(A066973(round(sqrt(n²+1))), 2)`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A259897

/-- `val(A066973(round(sqrt(n²+1))), 2)` -/
def P2407533474827309403.Spec : Prop :=
  ∀ n, (P2407533474827309403.a n : ℤ) = A259897 n

theorem P2407533474827309403.correct : P2407533474827309403.Spec := by
  intro n
  simp only [A259897]

end A259897

/-!
# A259898: Blease's b_n coefficients for 4-dimensional acyclic hypercubic lattice.

The programs for A259898, there is no canonical definition to state claims against.
-/

/-! ## A259898.P14567789459935403678

`A247914(A072197(n))`
-/

namespace A259898.P14567789459935403678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247914 (A072197 n).toNat

end

end A259898.P14567789459935403678

/-!
# A259899: a(n) is the minimal position at which the maximal value of row n appears in row n of triangle A080936.

The programs for A259899, there is no canonical definition to state claims against.
-/

/-! ## A259899.P15945201365853143264

`floor(sqrt(sqrt(A036438((n+1)²))))`
-/

namespace A259899.P15945201365853143264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (Real.sqrt (A036438 ((n + 1) ^ 2) : ℝ))⌋

end

end A259899.P15945201365853143264

/-! ## A259899.P17264837445788414724

`A259361(A184414(n+1)+A008624(n))`
-/

namespace A259899.P17264837445788414724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259361 (A184414 (n + 1) + A008624 n).toNat

end

end A259899.P17264837445788414724

/-! ## A259899.P2492710880257193831

`A135664(A110117(n+1)-A318370(n+1))`
-/

namespace A259899.P2492710880257193831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135664 (A110117 (n + 1) - A318370 (n + 1)).toNat

end

end A259899.P2492710880257193831

/-! ## A259899.P17534717014665904416

`A003056(A000196(∑[A327952(n+1)]))`
-/

namespace A259899.P17534717014665904416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327952 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A000196 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A259899.P17534717014665904416

/-! ## A259899.P3815187004942126369

`floor(sqrt(A342524(n+1)+n))`
-/

namespace A259899.P3815187004942126369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A342524 (n + 1) + (n : ℤ))

end

end A259899.P3815187004942126369

