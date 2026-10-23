import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
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
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C036
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B003.C000
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
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
# A209900: Floor of the expected number of occupied cells in a random placement of 2n balls into n cells.

The programs for A209900, the canonical program `A209900.P7183521504004063701` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A209900 has offset 1).

The definition of A209900 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A209900.P7183521504004063701

`floor((n+1)*(1-(1-1/(n+1))^(2*(n+1))))`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A209900

/-- `floor((n+1)*(1-(1-1/(n+1))^(2*(n+1))))` -/
def P7183521504004063701.Spec : Prop :=
  ∀ n, P7183521504004063701.a n = A209900 (n + 1)

theorem P7183521504004063701.correct : P7183521504004063701.Spec := by
  intro n
  simp only [A209900, Nat.add_sub_cancel]

end A209900

/-! ## A209900.P16604228641562732287

`ceil((a(n-1)+n)*acot(2))` with `a(0)=1`
-/

namespace A209900.P16604228641562732287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌈(a (n - 1) + (n : ℤ) : ℝ) * SequenceMachineLib.acot (2 : ℝ)⌉

end

end A209900.P16604228641562732287

namespace A209900

/-- `ceil((a(n-1)+n)*acot(2))` -/
def P16604228641562732287.Spec : Prop :=
  ∀ n, P16604228641562732287.a n = A209900 (n + 1)

end A209900

/-! ## A209900.P1386768377185262585

`ceil((n+1)/sinh(5)+n/sinh(1))`
-/

namespace A209900.P1386768377185262585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℝ) / Real.sinh (5 : ℝ) + (n : ℝ) / Real.sinh (1 : ℝ)⌉

end

end A209900.P1386768377185262585

namespace A209900

/-- `ceil((n+1)/sinh(5)+n/sinh(1))` -/
def P1386768377185262585.Spec : Prop :=
  ∀ n, P1386768377185262585.a n = A209900 (n + 1)

end A209900

/-! ## A209900.P7839303200236220150

`or(ceil(n/log(log(24))), char[1-n²])`
-/

namespace A209900.P7839303200236220150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (n ^ 2 : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ⌈(n : ℝ) / Real.log (Real.log (24 : ℝ))⌉ ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A209900.P7839303200236220150

namespace A209900

/-- `or(ceil(n/log(log(24))), char[1-n²])` -/
def P7839303200236220150.Spec : Prop :=
  ∀ n, P7839303200236220150.a n = A209900 (n + 1)

end A209900

/-! ## A209900.P3047242968261455617

`round(log(A285794(n+2)))`
-/

namespace A209900.P3047242968261455617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.log (A285794 (n + 2) : ℝ))

end

end A209900.P3047242968261455617

namespace A209900

/-- `round(log(A285794(n+2)))` -/
def P3047242968261455617.Spec : Prop :=
  ∀ n, P3047242968261455617.a n = A209900 (n + 1)

end A209900

/-! ## A209900.P6431015459324201874

`A259361(∑[∑[gcd(2, n)]])`
-/

namespace A209900.P6431015459324201874
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259361 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A209900.P6431015459324201874

namespace A209900

/-- `A259361(∑[∑[gcd(2, n)]])` -/
def P6431015459324201874.Spec : Prop :=
  ∀ n, P6431015459324201874.a n = A209900 (n + 1)

end A209900

/-!
# A209901: 7^p - 6^p - 2 with p = prime(n).

The programs for A209901, the canonical program `A209901.P4568091037261450195` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A209901 has offset 1).

The definition of A209901 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A209901.P5285557822025444244

`A204768(n+1)-1`
-/

namespace A209901.P5285557822025444244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204768 (n + 1) - 1

end

end A209901.P5285557822025444244

namespace A209901

/-- `A204768(n+1)-1` -/
def P5285557822025444244.Spec : Prop :=
  ∀ n, P5285557822025444244.a n = A209901 (n + 1)

end A209901

/-! ## A209901.P4568091037261450195

`A016169(A000040(n+1))-2`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A209901

/-- `A016169(A000040(n+1))-2` -/
def P4568091037261450195.Spec : Prop :=
  ∀ n, P4568091037261450195.a n = A209901 (n + 1)

theorem P4568091037261450195.correct : P4568091037261450195.Spec := by
  intro n
  simp only [A209901, Nat.add_sub_cancel]

end A209901

/-! ## A209901.P7101640597321775857

`A155650(p?[A007989(n)])-3`
-/

namespace A209901.P7101640597321775857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007989 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155650 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat - 3

end

end A209901.P7101640597321775857

namespace A209901

/-- `A155650(p?[A007989(n)])-3` -/
def P7101640597321775857.Spec : Prop :=
  ∀ n, P7101640597321775857.a n = A209901 (n + 1)

end A209901

/-! ## A209901.P5296293895396459637

`A155650(p?[A091203(n)])-3`
-/

namespace A209901.P5296293895396459637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091203 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155650 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat - 3

end

end A209901.P5296293895396459637

namespace A209901

/-- `A155650(p?[A091203(n)])-3` -/
def P5296293895396459637.Spec : Prop :=
  ∀ n, P5296293895396459637.a n = A209901 (n + 1)

end A209901

/-! ## A209901.P14324098741468934777

`A155650(p?[A259153(n)])-3`
-/

namespace A209901.P14324098741468934777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259153 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155650 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat - 3

end

end A209901.P14324098741468934777

namespace A209901

/-- `A155650(p?[A259153(n)])-3` -/
def P14324098741468934777.Spec : Prop :=
  ∀ n, P14324098741468934777.a n = A209901 (n + 1)

end A209901

/-!
# A209902: E.g.f.: Product_{n>=1} 1/(1 - x^n)^(1/n!).

The programs for A209902, there is no canonical definition to state claims against.
-/

/-! ## A209902.P15323341733780471497

`A028342(n)-A059995(A331618(n))`
-/

namespace A209902.P15323341733780471497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028342 n - A059995 (A331618 n).toNat

end

end A209902.P15323341733780471497

/-! ## A209902.P15646203455036632381

`A033103(Δ[5*a(n-1)+7*a(n-2)])` with `a(0)=-10, a(1)=1, a(2)=6`
-/

namespace A209902.P15646203455036632381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [-10, 1, 6] fun n f1 =>
  5 * f1 (n - 1) + 7 * f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033103 (f1 (n + 1) - f1 n).toNat

end

end A209902.P15646203455036632381

/-!
# A209903: E.g.f.: Product_{n>=1} B(x^n) where B(x) = exp(exp(x)-1) = e.g.f. of Bell numbers.

The programs for A209903, there is no canonical definition to state claims against.
-/

/-! ## A209903.P2537054371586987906

`A313003(∑[A103609(n²)])`
-/

namespace A209903.P2537054371586987906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103609 (n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313003 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A209903.P2537054371586987906

/-! ## A209903.P17561165480848343321

`A289498(A073511(n+1)-n%2)`
-/

namespace A209903.P17561165480848343321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289498 (A073511 (n + 1) - ((n % 2 : ℕ) : ℤ)).toNat

end

end A209903.P17561165480848343321

/-!
# A209904: The number of 6 X 6 matrices of nonnegative integers such that the sum of the entries in the i-th row equals the sum of the i-th column for each i and the total sum equals n.

The programs for A209904, there is no canonical definition to state claims against.
-/

/-! ## A209904.P6481634967177396490

`(∑[round(sqrt(2*n))]+1)*A137735(10^n-1)`
-/

namespace A209904.P6481634967177396490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (2 * n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j + 1) * A137735 (10 ^ n - 1)

end

end A209904.P6481634967177396490

/-!
# A209905: Half the number of (n+1)X(n+1) 0..3 arrays with every 2X2 subblock having two or four distinct clockwise edge differences.

The programs for A209905, there is no canonical definition to state claims against.
-/

/-! ## A209905.P12197291666830764303

`A209913((n+1)²+n²)`
-/

namespace A209905.P12197291666830764303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209913 ((n + 1) ^ 2 + n ^ 2)

end

end A209905.P12197291666830764303

/-!
# A209906: Half the number of (n+1) X 2 0..3 arrays with every 2 X 2 subblock having two or four distinct clockwise edge differences.

The programs for A209906, there is no canonical definition to state claims against.
-/

/-! ## A209906.P5764378606212881130

`A209913(∑[n]+1)`
-/

namespace A209906.P5764378606212881130
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209913 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A209906.P5764378606212881130

/-! ## A209906.P4324107255169358964

`lcm(2, A209913(A000124(n)))`
-/

namespace A209906.P4324107255169358964
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A209913 (A000124 n).toNat)

end

end A209906.P4324107255169358964

/-! ## A209906.P12699222378184286731

`record[A209913(n+1)/A022171(n)]`
-/

namespace A209906.P12699222378184286731
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A209913 (n + 1) : ℚ) / (A022171 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A209906.P12699222378184286731

/-! ## A209906.P10896498684007573953

`record[A209913(n+1)/A118185(n)]`
-/

namespace A209906.P10896498684007573953
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A209913 (n + 1) : ℚ) / (A118185 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A209906.P10896498684007573953

/-! ## A209906.P13642581068001695241

`record[A209913(n+1)/A176642(n)]`
-/

namespace A209906.P13642581068001695241
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A209913 (n + 1) : ℚ) / (A176642 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A209906.P13642581068001695241

/-!
# A209907: Half the number of (n+1)X3 0..3 arrays with every 2X2 subblock having two or four distinct clockwise edge differences.

The programs for A209907, there is no canonical definition to state claims against.
-/

/-! ## A209907.P154095566822414950

`A209913(∑[n+1]+2)`
-/

namespace A209907.P154095566822414950
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209913 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A209907.P154095566822414950

/-! ## A209907.P2735905595840121663

`lcm(2, A209913(A167487(n)-5))`
-/

namespace A209907.P2735905595840121663
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A209913 (A167487 n - 5).toNat)

end

end A209907.P2735905595840121663

/-! ## A209907.P14954419271533839954

`record[A209913(Δ[A003453(n+5)])]`
-/

namespace A209907.P14954419271533839954
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209913 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A209907.P14954419271533839954

/-! ## A209907.P942385787648821904

`record[A209913(A071181(2^val(n+1, 2)))]`
-/

namespace A209907.P942385787648821904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209913 (A071181 (2 ^ SequenceMachineLib.valuation (n + 1) 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A209907.P942385787648821904

/-!
# A209908: Half the number of (n+1)X4 0..3 arrays with every 2X2 subblock having two or four distinct clockwise edge differences.

The programs for A209908, there is no canonical definition to state claims against.
-/

/-! ## A209908.P14213123434471516307

`A209913(A167614(n+1))`
-/

namespace A209908.P14213123434471516307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209913 (A167614 (n + 1)).toNat

end

end A209908.P14213123434471516307

/-! ## A209908.P5195182264068875145

`A209913(A373663(n+1))`
-/

namespace A209908.P5195182264068875145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209913 (A373663 (n + 1)).toNat

end

end A209908.P5195182264068875145

/-! ## A209908.P10926571691894833913

`A209913(A055998(n)+6)`
-/

namespace A209908.P10926571691894833913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209913 (A055998 n + 6).toNat

end

end A209908.P10926571691894833913

/-! ## A209908.P6508948729677996033

`A209913(A046691(n)+7)`
-/

namespace A209908.P6508948729677996033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209913 (A046691 n + 7).toNat

end

end A209908.P6508948729677996033

/-! ## A209908.P2593953933345882556

`A209913(A167499(n)+n)`
-/

namespace A209908.P2593953933345882556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209913 (A167499 n + (n : ℤ)).toNat

end

end A209908.P2593953933345882556

/-!
# A209909: Half the number of (n+1) X 5 0..3 arrays with every 2 X 2 subblock having two or four distinct clockwise edge differences.

The programs for A209909, there is no canonical definition to state claims against.
-/

/-! ## A209909.P566910228955653817

`A209913(A167614(n+2)+1)`
-/

namespace A209909.P566910228955653817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209913 (A167614 (n + 2) + 1).toNat

end

end A209909.P566910228955653817

/-! ## A209909.P5156654102088432464

`A209913(A055998(n+2))`
-/

namespace A209909.P5156654102088432464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209913 (A055998 (n + 2)).toNat

end

end A209909.P5156654102088432464

/-!
# A209910: Half the number of (n+1)X6 0..3 arrays with every 2X2 subblock having two or four distinct clockwise edge differences.

The programs for A209910, there is no canonical definition to state claims against.
-/

/-! ## A209910.P858511571985147350

`A209913(A374005(n+1))`
-/

namespace A209910.P858511571985147350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209913 (A374005 (n + 1)).toNat

end

end A209910.P858511571985147350

/-! ## A209910.P8011890540979996951

`A209913(A046691(n+3))`
-/

namespace A209910.P8011890540979996951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209913 (A046691 (n + 3)).toNat

end

end A209910.P8011890540979996951

/-! ## A209910.P3032879172666535391

`A209913(eq[10, A239829(n+1)])`
-/

namespace A209910.P3032879172666535391
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239829 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209913 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A209910.P3032879172666535391

/-! ## A209910.P15260622322317388856

`A209913(eq[8, A141020(n)])`
-/

namespace A209910.P15260622322317388856
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141020 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209913 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A209910.P15260622322317388856

/-!
# A209911: 

The programs for A209911, there is no canonical definition to state claims against.
-/

/-! ## A209911.P11098584520763173492

`A209913(A000124(n+5)+5)`
-/

namespace A209911.P11098584520763173492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209913 (A000124 (n + 5) + 5).toNat

end

end A209911.P11098584520763173492

/-!
# A209914: Number of ways n can be written as a multiple of its reversal A004086(n) +/ - a prime p < n.

The programs for A209914, there is no canonical definition to state claims against.
-/

/-! ## A209914.P14290834004016651486

`and(A001971(A077636(n+1)), A007737(n+1))`
-/

namespace A209914.P14290834004016651486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001971 (A077636 (n + 1)).toNat) (A007737 (n + 1))

end

end A209914.P14290834004016651486

/-! ## A209914.P14245342623232332349

`A154951(∑{p}[A002113(n+1), C(#, n)])`
-/

namespace A209914.P14245342623232332349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154951 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.choose p n)

end

end A209914.P14245342623232332349

/-! ## A209914.P12216222284347081004

`A018783(n)%A014963(A202186(n+1))`
-/

namespace A209914.P12216222284347081004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A018783 n) (A014963 (A202186 (n + 1)).toNat)

end

end A209914.P12216222284347081004

/-! ## A209914.P2979858000140295892

`A181502(A065033(A002322(n+1)²))`
-/

namespace A209914.P2979858000140295892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181502 (A065033 (A002322 (n + 1) ^ 2).toNat).toNat

end

end A209914.P2979858000140295892

/-! ## A209914.P11621871744827036830

`A031347(A280217(A002322(n+1))²)`
-/

namespace A209914.P11621871744827036830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031347 (A280217 (A002322 (n + 1)).toNat ^ 2).toNat

end

end A209914.P11621871744827036830

/-!
# A209915: Number of ways the n-th prime p(n) can be written as a multiple of its reversal A004086(p) +/ - a prime q < p(n).

The programs for A209915, there is no canonical definition to state claims against.
-/

/-! ## A209915.P15109250098498503227

`A209914(A162792(n+2))`
-/

namespace A209915.P15109250098498503227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209914 (A162792 (n + 2)).toNat

end

end A209915.P15109250098498503227

/-! ## A209915.P10272143876964241391

`A209914(p?[A032513(n)]%(∑[n]+1))`
-/

namespace A209915.P10272143876964241391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032513 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209914 (Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) ((∑ j ∈ Finset.range (n + 1), f2 j + 1 : ℕ) : ℤ)).toNat

end

end A209915.P10272143876964241391

/-! ## A209915.P18118323258839018133

`A209914(A000040(n+1)%(∑[n]+1))`
-/

namespace A209915.P18118323258839018133
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209914 (Int.tmod (A000040 (n + 1)) ((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℕ) : ℤ)).toNat

end

end A209915.P18118323258839018133

/-! ## A209915.P6521053747697224934

`A209914(A162207(2*n+1)+A000040(n+1))`
-/

namespace A209915.P6521053747697224934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209914 (A162207 (2 * n + 1) + A000040 (n + 1)).toNat

end

end A209915.P6521053747697224934

/-! ## A209915.P4824940431633039519

`A209914(p?[A018252(n+1)-7]%(A280218(n+1)+1))`
-/

namespace A209915.P4824940431633039519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1) - 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209914 (Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A280218 (n + 1) + 1)).toNat

end

end A209915.P4824940431633039519

/-!
# A209916: Kolmogorov's button, 2-color generic convex polygon version.

The programs for A209916, the canonical program `A209916.P14108694191549009848` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A209916 has offset 0).

The definition of A209916 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A209916.P14108694191549009848

`A047656(n)*2^A000332(n)-1`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A209916

/-- `A047656(n)*2^A000332(n)-1` -/
def P14108694191549009848.Spec : Prop :=
  ∀ n, P14108694191549009848.a n = (A209916 n : ℚ)

end A209916

/-! ## A209916.P1458768281812601500

`A008683((-1)^n+4)+2^A000332(n)*A047656(n)`
-/

namespace A209916.P1458768281812601500
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008683 ((-1) ^ n + 4).toNat : ℚ) + (2 : ℚ) ^ (A000332 n : ℤ) * (A047656 n : ℚ)

end

end A209916.P1458768281812601500

namespace A209916

/-- `A008683((-1)^n+4)+2^A000332(n)*A047656(n)` -/
def P1458768281812601500.Spec : Prop :=
  ∀ n, P1458768281812601500.a n = (A209916 n : ℚ)

end A209916

/-! ## A209916.P5950447107955468500

`-A000040(n+2)%2+2^A000332(n)*A047656(n)`
-/

namespace A209916.P5950447107955468500
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.tmod (-A000040 (n + 2)) 2 : ℚ) + (2 : ℚ) ^ (A000332 n : ℤ) * (A047656 n : ℚ)

end

end A209916.P5950447107955468500

namespace A209916

/-- `-A000040(n+2)%2+2^A000332(n)*A047656(n)` -/
def P5950447107955468500.Spec : Prop :=
  ∀ n, P5950447107955468500.a n = (A209916 n : ℚ)

end A209916

/-! ## A209916.P15892398613815441552

`A342026(A065648(n))+2^A000332(n)*A047656(n)`
-/

namespace A209916.P15892398613815441552
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A342026 (A065648 n).toNat : ℚ) + (2 : ℚ) ^ (A000332 n : ℤ) * (A047656 n : ℚ)

end

end A209916.P15892398613815441552

namespace A209916

/-- `A342026(A065648(n))+2^A000332(n)*A047656(n)` -/
def P15892398613815441552.Spec : Prop :=
  ∀ n, P15892398613815441552.a n = (A209916 n : ℚ)

end A209916

/-!
# A209917: E.g.f. A(x) satisfies: A(x/(1-x))/(1-x) = (1/x^2) * d/dx x^3*A(x)/3.

The programs for A209917, there is no canonical definition to state claims against.
-/

/-! ## A209917.P12675050878742281160

`A008619(A000522(n)*A150810(n))`
-/

namespace A209917.P12675050878742281160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A000522 n * A150810 n).toNat

end

end A209917.P12675050878742281160

/-!
# A209918: Tetrahedron in which the n-th slice is also one of the three views of the modular table of partitions of A207380 with n shells.

The programs for A209918, there is no canonical definition to state claims against.
-/

/-! ## A209918.P17342347206155480158

`A117500(∑[A261357(n)])`
-/

namespace A209918.P17342347206155480158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261357 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117500 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A209918.P17342347206155480158

/-! ## A209918.P11990447989720963900

`A333768(A366691(n+2)^A385392(3*n+4))`
-/

namespace A209918.P11990447989720963900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333768 (SequenceMachineLib.roundAway ((A366691 (n + 2) : ℚ) ^ (A385392 (3 * n + 4) : ℤ))).toNat

end

end A209918.P11990447989720963900

/-! ## A209918.P8086803459928990536

`gcd(Δ[A235779(2*n+1)], A348526(2*(n+1)))`
-/

namespace A209918.P8086803459928990536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235779 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (n + 1) - f1 n) (A348526 (2 * (n + 1)))

end

end A209918.P8086803459928990536

/-! ## A209918.P9889020733701997351

`A238949(A164225(n)+A036234(n+1))`
-/

namespace A209918.P9889020733701997351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238949 (A164225 n + A036234 (n + 1)).toNat

end

end A209918.P9889020733701997351

/-! ## A209918.P1943242298602547746

`A099244(A090144(n+1)*A334436(n+3))`
-/

namespace A209918.P1943242298602547746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099244 (A090144 (n + 1) * A334436 (n + 3)).toNat

end

end A209918.P1943242298602547746

/-!
# A209920: Numbers n having distinct parity as the number of partitions of n.

The programs for A209920, there is no canonical definition to state claims against.
-/

/-! ## A209920.P12610937661655733963

`∪[A163096(n+1), A163097(n+1)]`
-/

namespace A209920.P12610937661655733963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163096 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163097 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A209920.P12610937661655733963

/-! ## A209920.P13509314334745337454

`lt[0, (A000700(n)+n)%2]`
-/

namespace A209920.P13509314334745337454
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000700 n + (n : ℤ)) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A209920.P13509314334745337454

/-! ## A209920.P18199431104129218481

`eq[A040051(n), A059841(n)]`
-/

namespace A209920.P18199431104129218481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040051 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A209920.P18199431104129218481

/-! ## A209920.P16972858069553608878

`eq[1, A000035(A040051(n)+n)]`
-/

namespace A209920.P16972858069553608878
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A040051 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A209920.P16972858069553608878

/-! ## A209920.P4477640875015909360

`eq[1, A001051(A040051(n)+n)]`
-/

namespace A209920.P4477640875015909360
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001051 (A040051 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A209920.P4477640875015909360

/-! ## A209920.P244831167504060120

`eq[1, A001511(A040051(n)+n)]`
-/

namespace A209920.P244831167504060120
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A040051 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A209920.P244831167504060120

/-! ## A209920.P16124248922587966187

`eq[1, A003484(A040051(n)+n)]`
-/

namespace A209920.P16124248922587966187
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003484 (A040051 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A209920.P16124248922587966187

/-! ## A209920.P5017578439965621874

`eq[1, A006519(A040051(n)+n)]`
-/

namespace A209920.P5017578439965621874
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (A040051 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A209920.P5017578439965621874

/-! ## A209920.P12151933986913848166

`eq[1, A010123(A040051(n)+n)]`
-/

namespace A209920.P12151933986913848166
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010123 (A040051 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A209920.P12151933986913848166

/-! ## A209920.P17928753645883781560

`eq[1, A010127(A040051(n)+n)]`
-/

namespace A209920.P17928753645883781560
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010127 (A040051 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A209920.P17928753645883781560

/-! ## A209920.P18163495572355675848

`eq[1, A010131(A040051(n)+n)]`
-/

namespace A209920.P18163495572355675848
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010131 (A040051 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A209920.P18163495572355675848

/-! ## A209920.P5549465356329488246

`eq[1, A010132(A040051(n)+n)]`
-/

namespace A209920.P5549465356329488246
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010132 (A040051 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A209920.P5549465356329488246

/-! ## A209920.P1580683248647034966

`eq[1, A010137(A040051(n)+n)]`
-/

namespace A209920.P1580683248647034966
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010137 (A040051 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A209920.P1580683248647034966

/-! ## A209920.P6349980445750477250

`eq[1, A010146(A040051(n)+n)]`
-/

namespace A209920.P6349980445750477250
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010146 (A040051 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A209920.P6349980445750477250

/-! ## A209920.P3576133835280219735

`eq[1, A010156(A040051(n)+n)]`
-/

namespace A209920.P3576133835280219735
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010156 (A040051 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A209920.P3576133835280219735

/-! ## A209920.P15503531749234978363

`eq[1, A010157(A040051(n)+n)]`
-/

namespace A209920.P15503531749234978363
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010157 (A040051 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A209920.P15503531749234978363

/-! ## A209920.P3850426957840766846

`eq[1, A010166(A040051(n)+n)]`
-/

namespace A209920.P3850426957840766846
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010166 (A040051 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A209920.P3850426957840766846

/-! ## A209920.P1533192381201633313

`eq[1, A010167(A040051(n)+n)]`
-/

namespace A209920.P1533192381201633313
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010167 (A040051 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A209920.P1533192381201633313

/-! ## A209920.P10383704925510333120

`eq[1, A010169(A040051(n)+n)]`
-/

namespace A209920.P10383704925510333120
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010169 (A040051 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A209920.P10383704925510333120

/-! ## A209920.P16052421314995097740

`eq[1, A010170(A040051(n)+n)]`
-/

namespace A209920.P16052421314995097740
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010170 (A040051 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A209920.P16052421314995097740

/-!
# A209921: Position of positive values in A209661 and A209662.

The programs for A209921, the canonical program `A209921.P1460614472512575037` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A209921 has offset 1).

The definition of A209921 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5101 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A209921.P8409548112551822260

`comp[A209922(n+1)-1]+1`
-/

namespace A209921.P8409548112551822260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209922 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A209921.P8409548112551822260

namespace A209921

/-- `comp[A209922(n+1)-1]+1` -/
def P8409548112551822260.Spec : Prop :=
  ∀ n, (P8409548112551822260.a n : ℤ) = A209921 (n + 1)

end A209921

/-! ## A209921.P1460614472512575037

`record[A209662(n+1)]`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A209921

/-- `record[A209662(n+1)]` -/
def P1460614472512575037.Spec : Prop :=
  ∀ n, P1460614472512575037.a n = A209921 (n + 1)

theorem P1460614472512575037.correct : P1460614472512575037.Spec := by
  intro n
  simp only [A209921, Nat.add_sub_cancel]

end A209921

/-! ## A209921.P8447525594500715529

`eq[1, A209661(n+1)]+1`
-/

namespace A209921.P8447525594500715529
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209661 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A209921.P8447525594500715529

namespace A209921

/-- `eq[1, A209661(n+1)]+1` -/
def P8447525594500715529.Spec : Prop :=
  ∀ n, (P8447525594500715529.a n : ℤ) = A209921 (n + 1)

end A209921

/-! ## A209921.P15337593609310558970

`eq[0, and(2, A035109(n))]+1`
-/

namespace A209921.P15337593609310558970
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 2 (A035109 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A209921.P15337593609310558970

namespace A209921

/-- `eq[0, and(2, A035109(n))]+1` -/
def P15337593609310558970.Spec : Prop :=
  ∀ n, (P15337593609310558970.a n : ℤ) = A209921 (n + 1)

end A209921

/-! ## A209921.P9313771474743657080

`record[(n+1)*A209661(and(n, A209661(n+1))+1)]`
-/

namespace A209921.P9313771474743657080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A209661 (Int.land (n : ℤ) (A209661 (n + 1)) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A209921.P9313771474743657080

namespace A209921

/-- `record[(n+1)*A209661(and(n, A209661(n+1))+1)]` -/
def P9313771474743657080.Spec : Prop :=
  ∀ n, P9313771474743657080.a n = A209921 (n + 1)

end A209921

/-! ## A209921.P4296539632713007238

`eq[2, A040048(A063014(n)+A040048(n))]`
-/

namespace A209921.P4296539632713007238
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040048 (A063014 n + A040048 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A209921.P4296539632713007238

namespace A209921

/-- `eq[2, A040048(A063014(n)+A040048(n))]` -/
def P4296539632713007238.Spec : Prop :=
  ∀ n, (P4296539632713007238.a n : ℤ) = A209921 (n + 1)

end A209921

/-! ## A209921.P16990374029255670139

`eq[2, A040080(A063014(n)+A040080(n))]`
-/

namespace A209921.P16990374029255670139
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040080 (A063014 n + A040080 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A209921.P16990374029255670139

namespace A209921

/-- `eq[2, A040080(A063014(n)+A040080(n))]` -/
def P16990374029255670139.Spec : Prop :=
  ∀ n, (P16990374029255670139.a n : ℤ) = A209921 (n + 1)

end A209921

/-! ## A209921.P14801680047564570508

`lt[A123725(A046109(n)), 0]`
-/

namespace A209921.P14801680047564570508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123725 (A046109 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A209921.P14801680047564570508

namespace A209921

/-- `lt[A123725(A046109(n)), 0]` -/
def P14801680047564570508.Spec : Prop :=
  ∀ n, (P14801680047564570508.a n : ℤ) = A209921 (n + 1)

end A209921

/-! ## A209921.P5775808658812160026

`record[(n+1)*A209661(n+1)^A209661(n+2)]`
-/

namespace A209921.P5775808658812160026
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * (A209661 (n + 1) : ℚ) ^ (A209661 (n + 2) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A209921.P5775808658812160026

namespace A209921

/-- `record[(n+1)*A209661(n+1)^A209661(n+2)]` -/
def P5775808658812160026.Spec : Prop :=
  ∀ n, P5775808658812160026.a n = (A209921 (n + 1) : ℚ)

end A209921

/-! ## A209921.P5491797849155288867

`eq[2, A040120(A063014(n)+A040120(n))]`
-/

namespace A209921.P5491797849155288867
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040120 (A063014 n + A040120 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A209921.P5491797849155288867

namespace A209921

/-- `eq[2, A040120(A063014(n)+A040120(n))]` -/
def P5491797849155288867.Spec : Prop :=
  ∀ n, (P5491797849155288867.a n : ℤ) = A209921 (n + 1)

end A209921

/-! ## A209921.P7502813611746962094

`eq[2, A040168(A063014(n)+A040168(n))]`
-/

namespace A209921.P7502813611746962094
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040168 (A063014 n + A040168 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A209921.P7502813611746962094

namespace A209921

/-- `eq[2, A040168(A063014(n)+A040168(n))]` -/
def P7502813611746962094.Spec : Prop :=
  ∀ n, (P7502813611746962094.a n : ℤ) = A209921 (n + 1)

end A209921

/-! ## A209921.P7114325811085669808

`lt[1, A046111(A046109(n)²)]`
-/

namespace A209921.P7114325811085669808
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046111 (A046109 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A209921.P7114325811085669808

namespace A209921

/-- `lt[1, A046111(A046109(n)²)]` -/
def P7114325811085669808.Spec : Prop :=
  ∀ n, (P7114325811085669808.a n : ℤ) = A209921 (n + 1)

end A209921

/-!
# A209922: Position of negative values in A209661 and A209662.

The programs for A209922, the canonical program `A209922.P13829106373828721409` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A209922 has offset 1).

The definition of A209922 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9853 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A209922.P13829106373828721409

`eq[1, and(1, A046080(n+1))]+1`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A209922

/-- `eq[1, and(1, A046080(n+1))]+1` -/
def P13829106373828721409.Spec : Prop :=
  ∀ n, (P13829106373828721409.a n : ℤ) = A209922 (n + 1)

theorem P13829106373828721409.correct : P13829106373828721409.Spec := by
  intro n
  simp only [A209922, Nat.add_sub_cancel]

end A209922

/-! ## A209922.P7994182421309365154

`lt[A209662(n+1), 0]+1`
-/

namespace A209922.P7994182421309365154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209662 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A209922.P7994182421309365154

namespace A209922

/-- `lt[A209662(n+1), 0]+1` -/
def P7994182421309365154.Spec : Prop :=
  ∀ n, (P7994182421309365154.a n : ℤ) = A209922 (n + 1)

end A209922

/-! ## A209922.P16125818157726100116

`eq[2, and(2, A035109(n))]+1`
-/

namespace A209922.P16125818157726100116
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 2 (A035109 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A209922.P16125818157726100116

namespace A209922

/-- `eq[2, and(2, A035109(n))]+1` -/
def P16125818157726100116.Spec : Prop :=
  ∀ n, (P16125818157726100116.a n : ℤ) = A209922 (n + 1)

end A209922

/-! ## A209922.P12188008936905076049

`eq[1, A083025(n+1)%2]+1`
-/

namespace A209922.P12188008936905076049
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083025 (n + 1)) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A209922.P12188008936905076049

namespace A209922

/-- `eq[1, A083025(n+1)%2]+1` -/
def P12188008936905076049.Spec : Prop :=
  ∀ n, (P12188008936905076049.a n : ℤ) = A209922 (n + 1)

end A209922

/-! ## A209922.P6766270242841199305

`eq[2, and(2, A256452(n+2))]+2`
-/

namespace A209922.P6766270242841199305
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 2 (A256452 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A209922.P6766270242841199305

namespace A209922

/-- `eq[2, and(2, A256452(n+2))]+2` -/
def P6766270242841199305.Spec : Prop :=
  ∀ n, (P6766270242841199305.a n : ℤ) = A209922 (n + 1)

end A209922

/-! ## A209922.P11804871712763238387

`eq[n, A209661(n+1)+n+1]+1`
-/

namespace A209922.P11804871712763238387
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209661 (n + 1) + (n + 1 : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A209922.P11804871712763238387

namespace A209922

/-- `eq[n, A209661(n+1)+n+1]+1` -/
def P11804871712763238387.Spec : Prop :=
  ∀ n, (P11804871712763238387.a n : ℤ) = A209922 (n + 1)

end A209922

/-! ## A209922.P9467570483566606723

`eq[1, A038189(A046109(n))]`
-/

namespace A209922.P9467570483566606723
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038189 (A046109 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A209922.P9467570483566606723

namespace A209922

/-- `eq[1, A038189(A046109(n))]` -/
def P9467570483566606723.Spec : Prop :=
  ∀ n, (P9467570483566606723.a n : ℤ) = A209922 (n + 1)

end A209922

/-! ## A209922.P8660460807244525870

`eq[A000035(2*n), A033461(A046109(2*n))]`
-/

namespace A209922.P8660460807244525870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033461 (A046109 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A209922.P8660460807244525870

namespace A209922

/-- `eq[A000035(2*n), A033461(A046109(2*n))]` -/
def P8660460807244525870.Spec : Prop :=
  ∀ n, (P8660460807244525870.a n : ℤ) = A209922 (n + 1)

end A209922

/-!
# A209923: E.g.f. A(x) satisfies: A( x - x^2/2 - Sum_{n>=3} (n-3)!*x^n/n! ) = x.

The programs for A209923, there is no canonical definition to state claims against.
-/

/-! ## A209923.P11887090404125086323

`A224998(A005388(n)+A000312(n))`
-/

namespace A209923.P11887090404125086323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224998 (A005388 n + A000312 n).toNat

end

end A209923.P11887090404125086323

/-! ## A209923.P15225719847002518250

`A020909(A277610(n)+A000930(n))`
-/

namespace A209923.P15225719847002518250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020909 (A277610 n + A000930 n).toNat

end

end A209923.P15225719847002518250

/-!
# A209927: Decimal expansion of sqrt(3 + sqrt(3 + sqrt(3 + sqrt(3 + ... )))).

The programs for A209927, there is no canonical definition to state claims against.
-/

/-! ## A209927.P2869916072811944351

`A223139(n)+A000007(n)`
-/

namespace A209927.P2869916072811944351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223139 (n + 1) + A000007 n

end

end A209927.P2869916072811944351

/-! ## A209927.P16658662933754323860

`A098316(n)-A000007(n)`
-/

namespace A209927.P16658662933754323860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098316 (n + 1) - A000007 n

end

end A209927.P16658662933754323860

/-! ## A209927.P15607257932815824186

`A000038(n)!*A223139(n)`
-/

namespace A209927.P15607257932815824186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A000038 n).toNat : ℤ) * A223139 (n + 1)

end

end A209927.P15607257932815824186

/-! ## A209927.P17275187252996569550

`A057427(n)+A098316(n)-1`
-/

namespace A209927.P17275187252996569550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + (A098316 (n + 1) - 1)

end

end A209927.P17275187252996569550

/-! ## A209927.P18180294097871740046

`A098316(3*A000007(n)+n)`
-/

namespace A209927.P18180294097871740046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098316 ((3 * A000007 n + (n : ℤ)).toNat + 1)

end

end A209927.P18180294097871740046

/-! ## A209927.P12731312259565235332

`A098316(n)-A036987(2*n)`
-/

namespace A209927.P12731312259565235332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098316 (n + 1) - A036987 (2 * n)

end

end A209927.P12731312259565235332

/-! ## A209927.P11344121205440418758

`A098316(n)-A000038(n)/2`
-/

namespace A209927.P11344121205440418758
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A098316 (n + 1) : ℚ) - (A000038 n : ℚ) / 2

end

end A209927.P11344121205440418758

/-! ## A209927.P16912155308204552633

`A098316(n)-A010051(2*(n+1))`
-/

namespace A209927.P16912155308204552633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098316 (n + 1) - A010051 (2 * (n + 1))

end

end A209927.P16912155308204552633

/-! ## A209927.P7628453244098794136

`A223139(n)+A008683(A008574(n))`
-/

namespace A209927.P7628453244098794136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223139 (n + 1) + A008683 (A008574 n).toNat

end

end A209927.P7628453244098794136

/-! ## A209927.P14746716107069858396

`A098316(n)-A008683(A008574(n))`
-/

namespace A209927.P14746716107069858396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098316 (n + 1) - A008683 (A008574 n).toNat

end

end A209927.P14746716107069858396

/-! ## A209927.P9880010169246632259

`xor(A000007(A000120(n)), A098316(n))`
-/

namespace A209927.P9880010169246632259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000007 (A000120 n).toNat) (A098316 (n + 1))

end

end A209927.P9880010169246632259

/-! ## A209927.P9334603005882779013

`xor(A000007(A000194(n)), A098316(n))`
-/

namespace A209927.P9334603005882779013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000007 (A000194 n).toNat) (A098316 (n + 1))

end

end A209927.P9334603005882779013

/-! ## A209927.P3785710329421902874

`xor(A000007(A000196(n)), A098316(n))`
-/

namespace A209927.P3785710329421902874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000007 (A000196 n).toNat) (A098316 (n + 1))

end

end A209927.P3785710329421902874

/-! ## A209927.P17392817012804009532

`xor(A000007(A003056(n)), A098316(n))`
-/

namespace A209927.P17392817012804009532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000007 (A003056 n).toNat) (A098316 (n + 1))

end

end A209927.P17392817012804009532

/-! ## A209927.P14297120402545259068

`xor(A000007(A038573(n)), A098316(n))`
-/

namespace A209927.P14297120402545259068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000007 (A038573 n).toNat) (A098316 (n + 1))

end

end A209927.P14297120402545259068

/-! ## A209927.P13409487370024857116

`A098316(n)+A001221(A267584(n))-1`
-/

namespace A209927.P13409487370024857116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098316 (n + 1) + (A001221 (A267584 n).toNat - 1)

end

end A209927.P13409487370024857116

/-! ## A209927.P5583430053539436855

`A098316(n)+A008683(2*A008574(n))`
-/

namespace A209927.P5583430053539436855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098316 (n + 1) + A008683 (2 * A008574 n).toNat

end

end A209927.P5583430053539436855

/-! ## A209927.P16259947337227876556

`A223139(n)-A008683(2*A008574(n))`
-/

namespace A209927.P16259947337227876556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223139 (n + 1) - A008683 (2 * A008574 n).toNat

end

end A209927.P16259947337227876556

/-!
# A209928: Largest digit of all divisors of n.

The programs for A209928, there is no canonical definition to state claims against.
-/

/-! ## A209928.P3297913431275599836

`A243361(n+1)%10`
-/

namespace A209928.P3297913431275599836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A243361 (n + 1)) 10

end

end A209928.P3297913431275599836

/-! ## A209928.P14031178700042350347

`A122425(n+1)%A070939(A167457(2*n+1))`
-/

namespace A209928.P14031178700042350347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A122425 (n + 1)) (A070939 (A167457 (2 * n + 1)).toNat)

end

end A209928.P14031178700042350347

/-! ## A209928.P15093198655235997878

`A122425(n+1)%A010691(A072180(n+1))`
-/

namespace A209928.P15093198655235997878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A122425 (n + 1)) (A010691 (A072180 (n + 1)).toNat)

end

end A209928.P15093198655235997878

/-! ## A209928.P14210033699908152819

`A347471(A328617(n+1))%10`
-/

namespace A209928.P14210033699908152819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A347471 (A328617 (n + 1)).toNat) 10

end

end A209928.P14210033699908152819

/-! ## A209928.P2149323590335073983

`(A347471(n+1)%A176084(n+5))%10`
-/

namespace A209928.P2149323590335073983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod (A347471 (n + 1)) (A176084 (n + 5))) 10

end

end A209928.P2149323590335073983

/-!
# A209929: Smallest digit of all divisors of n.

The programs for A209929, the canonical program `A209929.P9729360077625781388` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A209929 has offset 1).

The definition of A209929 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A209929.P9729560165201281107

`∏{d}[n+1, A168046(#)]`
-/

namespace A209929.P9729560165201281107
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), A168046 d

end

end A209929.P9729560165201281107

namespace A209929

/-- `∏{d}[n+1, A168046(#)]` -/
def P9729560165201281107.Spec : Prop :=
  ∀ n, P9729560165201281107.a n = A209929 (n + 1)

end A209929

/-! ## A209929.P9729360077625781388

`round(sqrt(atan(A190997(n+1))))`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A209929

/-- `round(sqrt(atan(A190997(n+1))))` -/
def P9729360077625781388.Spec : Prop :=
  ∀ n, P9729360077625781388.a n = A209929 (n + 1)

theorem P9729360077625781388.correct : P9729360077625781388.Spec := by
  intro n
  simp only [A209929, Nat.add_sub_cancel]

end A209929

/-! ## A209929.P17847019626073256345

`floor(atan(A000040(n+1)*A190997(n+1)))`
-/

namespace A209929.P17847019626073256345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.arctan (A000040 (n + 1) * A190997 (n + 1) : ℝ)⌋

end

end A209929.P17847019626073256345

namespace A209929

/-- `floor(atan(A000040(n+1)*A190997(n+1)))` -/
def P17847019626073256345.Spec : Prop :=
  ∀ n, P17847019626073256345.a n = A209929 (n + 1)

end A209929

/-! ## A209929.P10061091439937327902

`floor(atan(A014681(n+1)*A190997(n+1)))`
-/

namespace A209929.P10061091439937327902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.arctan (A014681 (n + 1) * A190997 (n + 1) : ℝ)⌋

end

end A209929.P10061091439937327902

namespace A209929

/-- `floor(atan(A014681(n+1)*A190997(n+1)))` -/
def P10061091439937327902.Spec : Prop :=
  ∀ n, P10061091439937327902.a n = A209929 (n + 1)

end A209929

/-! ## A209929.P8166445716451199412

`floor(atan(A050003(n+1)*A190997(n+1)))`
-/

namespace A209929.P8166445716451199412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.arctan (A050003 (n + 1) * A190997 (n + 1) : ℝ)⌋

end

end A209929.P8166445716451199412

namespace A209929

/-- `floor(atan(A050003(n+1)*A190997(n+1)))` -/
def P8166445716451199412.Spec : Prop :=
  ∀ n, P8166445716451199412.a n = A209929 (n + 1)

end A209929

/-! ## A209929.P3221733159723233313

`∏{digits}[A037278(n+1), A049704(#)]`
-/

namespace A209929.P3221733159723233313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037278 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A049704 x).prod

end

end A209929.P3221733159723233313

namespace A209929

/-- `∏{digits}[A037278(n+1), A049704(#)]` -/
def P3221733159723233313.Spec : Prop :=
  ∀ n, P3221733159723233313.a n = A209929 (n + 1)

end A209929

/-! ## A209929.P8663422766376248372

`∏{digits}[n+1, ceil(#/3^n)]`
-/

namespace A209929.P8663422766376248372
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => ⌈(x : ℚ) / (3 ^ n : ℚ)⌉).prod

end

end A209929.P8663422766376248372

namespace A209929

/-- `∏{digits}[n+1, ceil(#/3^n)]` -/
def P8663422766376248372.Spec : Prop :=
  ∀ n, P8663422766376248372.a n = A209929 (n + 1)

end A209929

/-! ## A209929.P429639179075962796

`ceil(A062078(n+1)/A254028(n))`
-/

namespace A209929.P429639179075962796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A062078 (n + 1) : ℚ) / (A254028 n : ℚ)⌉

end

end A209929.P429639179075962796

namespace A209929

/-- `ceil(A062078(n+1)/A254028(n))` -/
def P429639179075962796.Spec : Prop :=
  ∀ n, P429639179075962796.a n = A209929 (n + 1)

end A209929

/-! ## A209929.P7437134857186019822

`Δ[A324161(n)]%A233134(n+1)`
-/

namespace A209929.P7437134857186019822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324161 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A233134 (n + 1))

end

end A209929.P7437134857186019822

namespace A209929

/-- `Δ[A324161(n)]%A233134(n+1)` -/
def P7437134857186019822.Spec : Prop :=
  ∀ n, P7437134857186019822.a n = A209929 (n + 1)

end A209929

/-! ## A209929.P5011619860972538908

`floor(A004719(n+1)/A258632(n+1))`
-/

namespace A209929.P5011619860972538908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A004719 (n + 1) : ℚ) / (A258632 (n + 1) : ℚ)⌋

end

end A209929.P5011619860972538908

namespace A209929

/-- `floor(A004719(n+1)/A258632(n+1))` -/
def P5011619860972538908.Spec : Prop :=
  ∀ n, P5011619860972538908.a n = A209929 (n + 1)

end A209929

/-! ## A209929.P9671138953444967019

`A088517(A067898(n+1)*A109373(n+1)+1)`
-/

namespace A209929.P9671138953444967019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088517 (A067898 (n + 1) * A109373 (n + 1) + 1).toNat

end

end A209929.P9671138953444967019

namespace A209929

/-- `A088517(A067898(n+1)*A109373(n+1)+1)` -/
def P9671138953444967019.Spec : Prop :=
  ∀ n, P9671138953444967019.a n = A209929 (n + 1)

end A209929

/-! ## A209929.P17972520811935411966

`A055641(A055641(n+1)*A325703(2*(n+1)))`
-/

namespace A209929.P17972520811935411966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055641 (A055641 (n + 1) * A325703 (2 * (n + 1))).toNat

end

end A209929.P17972520811935411966

namespace A209929

/-- `A055641(A055641(n+1)*A325703(2*(n+1)))` -/
def P17972520811935411966.Spec : Prop :=
  ∀ n, P17972520811935411966.a n = A209929 (n + 1)

end A209929

/-!
# A209930: 

The programs for A209930, there is no canonical definition to state claims against.
-/

/-! ## A209930.P14395451451786984330

`∪[A020449(n+1), A203897(n+1)]`
-/

namespace A209930.P14395451451786984330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020449 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203897 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A209930.P14395451451786984330

/-! ## A209930.P2648581848850888812

`∩[A385345(n+1), A007088(n)]`
-/

namespace A209930.P2648581848850888812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385345 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A209930.P2648581848850888812

/-!
# A209931: 

The programs for A209931, there is no canonical definition to state claims against.
-/

/-! ## A209931.P10404375692000098162

`eq[1, A209929(n+1)]+1`
-/

namespace A209931.P10404375692000098162
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209929 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A209931.P10404375692000098162

/-! ## A209931.P10382524037209827636

`filter[A067251(n+1), A209929(#)]`
-/

namespace A209931.P10382524037209827636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067251 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A209929 (f1 j).toNat = 1) n)

end

end A209931.P10382524037209827636

/-! ## A209931.P11977308470957648763

`filter[n+1, A209929(#)]`
-/

namespace A209931.P11977308470957648763
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A209929 (f1 j) = 1) n)

end

end A209931.P11977308470957648763

/-! ## A209931.P6827409094595946675

`lt[A209939(3*n+2), A209929(n+1)]+1`
-/

namespace A209931.P6827409094595946675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209939 (3 * n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209929 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A209931.P6827409094595946675

/-!
# A209932: Numbers k such that smallest digit of all divisors of k is 0.

The programs for A209932, the canonical program `A209932.P1013292124690884436` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A209932 has offset 1).

The definition of A209932 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8243 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A209932.P1013292124690884436

`lt[A209929(n+1), 1]+1`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A209932

/-- `lt[A209929(n+1), 1]+1` -/
def P1013292124690884436.Spec : Prop :=
  ∀ n, (P1013292124690884436.a n : ℤ) = A209932 (n + 1)

theorem P1013292124690884436.correct : P1013292124690884436.Spec := by
  intro n
  simp only [A209932, Nat.add_sub_cancel]

end A209932

/-! ## A209932.P7151291060502867212

`eq[0, A190997(n+1)]+1`
-/

namespace A209932.P7151291060502867212
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190997 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A209932.P7151291060502867212

namespace A209932

/-- `eq[0, A190997(n+1)]+1` -/
def P7151291060502867212.Spec : Prop :=
  ∀ n, (P7151291060502867212.a n : ℤ) = A209932 (n + 1)

end A209932

/-! ## A209932.P6119831875666435050

`eq[0, A190997(A028310(n))]`
-/

namespace A209932.P6119831875666435050
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190997 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A209932.P6119831875666435050

namespace A209932

/-- `eq[0, A190997(A028310(n))]` -/
def P6119831875666435050.Spec : Prop :=
  ∀ n, (P6119831875666435050.a n : ℤ) = A209932 (n + 1)

end A209932

/-! ## A209932.P11407006754954309512

`A326178(eq[0, A190997(n+1)])`
-/

namespace A209932.P11407006754954309512
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190997 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326178 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A209932.P11407006754954309512

namespace A209932

/-- `A326178(eq[0, A190997(n+1)])` -/
def P11407006754954309512.Spec : Prop :=
  ∀ n, P11407006754954309512.a n = A209932 (n + 1)

end A209932

/-! ## A209932.P17586192033418934559

`A326178(lt[A209929(n+1), 1])`
-/

namespace A209932.P17586192033418934559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209929 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326178 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A209932.P17586192033418934559

namespace A209932

/-- `A326178(lt[A209929(n+1), 1])` -/
def P17586192033418934559.Spec : Prop :=
  ∀ n, P17586192033418934559.a n = A209932 (n + 1)

end A209932

/-! ## A209932.P1811254063188764337

`eq[0, A209929(A004277(n)-n)]`
-/

namespace A209932.P1811254063188764337
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209929 (A004277 n - (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A209932.P1811254063188764337

namespace A209932

/-- `eq[0, A209929(A004277(n)-n)]` -/
def P1811254063188764337.Spec : Prop :=
  ∀ n, (P1811254063188764337.a n : ℤ) = A209932 (n + 1)

end A209932

/-! ## A209932.P11471566377956898859

`eq[0, A190997(A329678(n)+n)]`
-/

namespace A209932.P11471566377956898859
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190997 (A329678 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A209932.P11471566377956898859

namespace A209932

/-- `eq[0, A190997(A329678(n)+n)]` -/
def P11471566377956898859.Spec : Prop :=
  ∀ n, (P11471566377956898859.a n : ℤ) = A209932 (n + 1)

end A209932

/-! ## A209932.P8704516781667398292

`eq[0, A209929(A065033(2*n))]`
-/

namespace A209932.P8704516781667398292
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209929 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A209932.P8704516781667398292

namespace A209932

/-- `eq[0, A209929(A065033(2*n))]` -/
def P8704516781667398292.Spec : Prop :=
  ∀ n, (P8704516781667398292.a n : ℤ) = A209932 (n + 1)

end A209932

/-! ## A209932.P16523395996926184986

`eq[0, A190997(A123108(2*n))]`
-/

namespace A209932.P16523395996926184986
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190997 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A209932.P16523395996926184986

namespace A209932

/-- `eq[0, A190997(A123108(2*n))]` -/
def P16523395996926184986.Spec : Prop :=
  ∀ n, (P16523395996926184986.a n : ℤ) = A209932 (n + 1)

end A209932

/-! ## A209932.P5747656941720960220

`eq[0, A209929(A233583(n+1))]`
-/

namespace A209932.P5747656941720960220
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209929 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A209932.P5747656941720960220

namespace A209932

/-- `eq[0, A209929(A233583(n+1))]` -/
def P5747656941720960220.Spec : Prop :=
  ∀ n, (P5747656941720960220.a n : ℤ) = A209932 (n + 1)

end A209932

/-!
# A209933: Numbers that are divisible by all digits of their divisors.

The programs for A209933, there is no canonical definition to state claims against.
-/

/-! ## A209933.P5037736517541435587

`∪[A182183(n+1), A000156(n)]`
-/

namespace A209933.P5037736517541435587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182183 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000156 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A209933.P5037736517541435587

/-! ## A209933.P3934795491114423448

`∪[A063527(3*(n+1)), A182183(n+1)]`
-/

namespace A209933.P3934795491114423448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063527 (3 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182183 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A209933.P3934795491114423448

/-! ## A209933.P7224837399910588654

`∪[A182174(n+1)²-1, A182183(n+1)]`
-/

namespace A209933.P7224837399910588654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182174 (n + 1) ^ 2 - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182183 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A209933.P7224837399910588654

/-! ## A209933.P2423424110444008656

`∪[∑[A182174(3*n+1)], A182183(n+1)]`
-/

namespace A209933.P2423424110444008656
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182174 (3 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182183 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

end

end A209933.P2423424110444008656

/-! ## A209933.P14107128253514886045

`∪[A182183(n+1), A063527(A037468(n+2))]`
-/

namespace A209933.P14107128253514886045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182183 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063527 (A037468 (n + 2)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A209933.P14107128253514886045

/-!
# A209935: G.f.: 1 = Sum_{n>=0} a(n)*x^n*Product_{k=1..n+1} (1-k^2*x) for n>0 with a(0)=1.

The programs for A209935, there is no canonical definition to state claims against.
-/

/-! ## A209935.P5302745741714179274

`A098294(A359927(n))`
-/

namespace A209935.P5302745741714179274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098294 (A359927 n).toNat

end

end A209935.P5302745741714179274

/-!
# A209936: Triangle of multiplicities of k-th partition of n corresponding to sequence A080577. Multiplicity of a given partition of n into k parts is the number of ways parts can be selected from k distinguishable bins. See the example.

The programs for A209936, there is no canonical definition to state claims against.
-/

/-! ## A209936.P7466480854187062261

`A130273(n+1)/A096443(A153679(n+1))`
-/

namespace A209936.P7466480854187062261
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A130273 (n + 1) : ℚ) / (A096443 (A153679 (n + 1)).toNat : ℚ)

end

end A209936.P7466480854187062261

/-! ## A209936.P7802450737301769980

`filter[A035206(n+1), A167850(#)]`
-/

namespace A209936.P7802450737301769980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035206 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A167850 (f1 j).toNat = 1) n)

end

end A209936.P7802450737301769980

/-! ## A209936.P1069682488314083406

`filter[A035206(n+1), A167851(#)]`
-/

namespace A209936.P1069682488314083406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035206 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A167851 (f1 j).toNat = 1) n)

end

end A209936.P1069682488314083406

/-! ## A209936.P408415265590927831

`filter[A035206(n+1), A303300(#)]`
-/

namespace A209936.P408415265590927831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035206 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A303300 (f1 j).toNat = 1) n)

end

end A209936.P408415265590927831

/-! ## A209936.P5976714117787551970

`filter[A210238(n+1), A167850(#)]`
-/

namespace A209936.P5976714117787551970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210238 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A167850 (f1 j).toNat = 1) n)

end

end A209936.P5976714117787551970

/-!
# A209937: E.g.f. A(x) satisfies: A( x - Sum_{n>=2} x^n/(n*(n-1)/2) ) = x.

The programs for A209937, there is no canonical definition to state claims against.
-/

/-! ## A209937.P14864696484411365372

`A174427(2*((n+2)²-3)-(∑[or(1, n)]+n))`
-/

namespace A209937.P14864696484411365372
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174427 (2 * (((n + 2) ^ 2 : ℤ) - 3) - ((∑ j ∈ Finset.range (n + 1), f1 j + n : ℕ) : ℤ)).toNat

end

end A209937.P14864696484411365372

/-!
# A209938: Number of groups of order prime(n)^5 with nontrivial unramified Brauer groups.

The programs for A209938, the canonical program `A209938.P2233423185230258877` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A209938 has offset 3).

The definition of A209938 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A209938.P2233423185230258877

`A108245(n+3)%6+3`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A209938

/-- `A108245(n+3)%6+3` -/
def P2233423185230258877.Spec : Prop :=
  ∀ n, P2233423185230258877.a n = A209938 (n + 3)

theorem P2233423185230258877.correct : P2233423185230258877.Spec := by
  intro n
  simp only [A209938, Nat.add_sub_cancel]

end A209938

/-! ## A209938.P10925169126998241651

`A070750(n+3)+A134323(n+3)+6`
-/

namespace A209938.P10925169126998241651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070750 (n + 3) + (A134323 (n + 3) + 6)

end

end A209938.P10925169126998241651

namespace A209938

/-- `A070750(n+3)+A134323(n+3)+6` -/
def P10925169126998241651.Spec : Prop :=
  ∀ n, P10925169126998241651.a n = A209938 (n + 3)

end A209938

/-! ## A209938.P16344634358961214785

`2*A083040(A006093(n+3))`
-/

namespace A209938.P16344634358961214785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A083040 (A006093 (n + 3)).toNat

end

end A209938.P16344634358961214785

namespace A209938

/-- `2*A083040(A006093(n+3))` -/
def P16344634358961214785.Spec : Prop :=
  ∀ n, P16344634358961214785.a n = A209938 (n + 3)

end A209938

/-! ## A209938.P5084126757290115740

`2*A090277(A075520(n+3))`
-/

namespace A209938.P5084126757290115740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A090277 (A075520 (n + 3)).toNat

end

end A209938.P5084126757290115740

namespace A209938

/-- `2*A090277(A075520(n+3))` -/
def P5084126757290115740.Spec : Prop :=
  ∀ n, P5084126757290115740.a n = A209938 (n + 3)

end A209938

/-! ## A209938.P10775019330315847120

`A010694(A319422(n+1))+A010694(n)`
-/

namespace A209938.P10775019330315847120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010694 (A319422 (n + 1)).toNat + A010694 n

end

end A209938.P10775019330315847120

namespace A209938

/-- `A010694(A319422(n+1))+A010694(n)` -/
def P10775019330315847120.Spec : Prop :=
  ∀ n, P10775019330315847120.a n = A209938 (n + 3)

end A209938

/-!
# A209939: Expansion of (f(x) * f(x^3))^3 in powers of q where f() is a Ramanujan theta function.

The programs for A209939, there is no canonical definition to state claims against.
-/

/-! ## A209939.P14590923966675806965

`(-1)^n*A030208(n)`
-/

namespace A209939.P14590923966675806965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A030208 n

end

end A209939.P14590923966675806965

/-! ## A209939.P8164492351829917328

`A030208(n)*A033999(n)`
-/

namespace A209939.P8164492351829917328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030208 n * A033999 n

end

end A209939.P8164492351829917328

/-! ## A209939.P17050240914782287558

`A030208(n)*A100051(n+1)`
-/

namespace A209939.P17050240914782287558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030208 n * A100051 (n + 1)

end

end A209939.P17050240914782287558

/-! ## A209939.P7153530966698339619

`A030208(n)*A034947(A038712(n+1))`
-/

namespace A209939.P7153530966698339619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030208 n * A034947 (A038712 (n + 1)).toNat

end

end A209939.P7153530966698339619

/-! ## A209939.P4822380522421067893

`A030208(n)*A055975(A055975(n+1)+n)`
-/

namespace A209939.P4822380522421067893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030208 n * A055975 (A055975 (n + 1) + (n : ℤ)).toNat

end

end A209939.P4822380522421067893

/-! ## A209939.P11717892935154391770

`A030208(n)*A056594(2*n)`
-/

namespace A209939.P11717892935154391770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030208 n * A056594 (2 * n)

end

end A209939.P11717892935154391770

/-! ## A209939.P10670161103453860512

`A030208(n)*A034947(2*n+1)`
-/

namespace A209939.P10670161103453860512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030208 n * A034947 (2 * n + 1)

end

end A209939.P10670161103453860512

/-! ## A209939.P7545461086071841382

`A030208(n)*A055975(2*n+1)`
-/

namespace A209939.P7545461086071841382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030208 n * A055975 (2 * n + 1)

end

end A209939.P7545461086071841382

/-! ## A209939.P6916006714004979630

`A152244(n)/A057079(n)`
-/

namespace A209939.P6916006714004979630
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A152244 n : ℚ) / (A057079 n : ℚ)

end

end A209939.P6916006714004979630

/-! ## A209939.P4659972517698125895

`A152244(n)/A132954(n)`
-/

namespace A209939.P4659972517698125895
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A152244 n : ℚ) / (A132954 n : ℚ)

end

end A209939.P4659972517698125895

/-! ## A209939.P14871227685060492230

`A030208(n)*A076756(A000217(n))`
-/

namespace A209939.P14871227685060492230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030208 n * A076756 (A000217 n).toNat

end

end A209939.P14871227685060492230

/-!
# A209940: Expansion of psi(x^4) * phi(-x^4)^4 / phi(x) in powers of x where phi(), psi() are Ramanujan theta function.

The programs for A209940, the canonical program `A209940.P3877405828228066548` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A209940 has offset 0).

The definition of A209940 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A209940.P2488388875358225977

`(-1)^n*A258096(n)`
-/

namespace A209940.P2488388875358225977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A258096 n

end

end A209940.P2488388875358225977

namespace A209940

/-- `(-1)^n*A258096(n)` -/
def P2488388875358225977.Spec : Prop :=
  ∀ n, P2488388875358225977.a n = A209940 n

end A209940

/-! ## A209940.P3877405828228066548

`A057077(n)*A113417(n)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A209940

/-- `A057077(n)*A113417(n)` -/
def P3877405828228066548.Spec : Prop :=
  ∀ n, P3877405828228066548.a n = A209940 n

theorem P3877405828228066548.correct : P3877405828228066548.Spec := by
  intro n
  simp only [A209940]

end A209940

/-! ## A209940.P16524054820027492872

`A087960(n)*A113419(n)`
-/

namespace A209940.P16524054820027492872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087960 n * A113419 n

end

end A209940.P16524054820027492872

namespace A209940

/-- `A087960(n)*A113419(n)` -/
def P16524054820027492872.Spec : Prop :=
  ∀ n, P16524054820027492872.a n = A209940 n

end A209940

/-! ## A209940.P12744359554848436108

`A258096(n)/A033999(n)`
-/

namespace A209940.P12744359554848436108
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A258096 n : ℚ) / (A033999 n : ℚ)

end

end A209940.P12744359554848436108

namespace A209940

/-- `A258096(n)/A033999(n)` -/
def P12744359554848436108.Spec : Prop :=
  ∀ n, P12744359554848436108.a n = (A209940 n : ℚ)

end A209940

/-! ## A209940.P9723551429789048353

`A258096(n)/A057077(A057077(n)+n)`
-/

namespace A209940.P9723551429789048353
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A258096 n : ℚ) / (A057077 (A057077 n + (n : ℤ)).toNat : ℚ)

end

end A209940.P9723551429789048353

namespace A209940

/-- `A258096(n)/A057077(A057077(n)+n)` -/
def P9723551429789048353.Spec : Prop :=
  ∀ n, P9723551429789048353.a n = (A209940 n : ℚ)

end A209940

/-! ## A209940.P18101488696944161735

`A113417(n)*A113419(n)/A258096(n)`
-/

namespace A209940.P18101488696944161735
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A113417 n * A113419 n : ℚ) / (A258096 n : ℚ)

end

end A209940.P18101488696944161735

namespace A209940

/-- `A113417(n)*A113419(n)/A258096(n)` -/
def P18101488696944161735.Spec : Prop :=
  ∀ n, P18101488696944161735.a n = (A209940 n : ℚ)

end A209940

/-! ## A209940.P15407453678948587763

`A057077(n+1)*A113419(n)`
-/

namespace A209940.P15407453678948587763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 (n + 1) * A113419 n

end

end A209940.P15407453678948587763

namespace A209940

/-- `A057077(n+1)*A113419(n)` -/
def P15407453678948587763.Spec : Prop :=
  ∀ n, P15407453678948587763.a n = A209940 n

end A209940

/-! ## A209940.P14044264074382717779

`A113419(n+1)/A258096(n+1)*A113419(n)`
-/

namespace A209940.P14044264074382717779
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A113419 (n + 1) : ℚ) / (A258096 (n + 1) : ℚ) * (A113419 n : ℚ)

end

end A209940.P14044264074382717779

namespace A209940

/-- `A113419(n+1)/A258096(n+1)*A113419(n)` -/
def P14044264074382717779.Spec : Prop :=
  ∀ n, P14044264074382717779.a n = (A209940 n : ℚ)

end A209940

/-! ## A209940.P14200896251936142230

`A258096(n)/A057077(2*n)`
-/

namespace A209940.P14200896251936142230
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A258096 n : ℚ) / (A057077 (2 * n) : ℚ)

end

end A209940.P14200896251936142230

namespace A209940

/-- `A258096(n)/A057077(2*n)` -/
def P14200896251936142230.Spec : Prop :=
  ∀ n, P14200896251936142230.a n = (A209940 n : ℚ)

end A209940

/-! ## A209940.P8259136453608961875

`A258096(n)/A087960(2*n)`
-/

namespace A209940.P8259136453608961875
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A258096 n : ℚ) / (A087960 (2 * n) : ℚ)

end

end A209940.P8259136453608961875

namespace A209940

/-- `A258096(n)/A087960(2*n)` -/
def P8259136453608961875.Spec : Prop :=
  ∀ n, P8259136453608961875.a n = (A209940 n : ℚ)

end A209940

/-! ## A209940.P7595994638064606700

`A057077(2*n)*A124340(2*n+1)`
-/

namespace A209940.P7595994638064606700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 (2 * n) * A124340 (2 * n + 1)

end

end A209940.P7595994638064606700

namespace A209940

/-- `A057077(2*n)*A124340(2*n+1)` -/
def P7595994638064606700.Spec : Prop :=
  ∀ n, P7595994638064606700.a n = A209940 n

end A209940

/-! ## A209940.P17089762800889606097

`A087960(2*n)*A124340(2*n+1)`
-/

namespace A209940.P17089762800889606097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087960 (2 * n) * A124340 (2 * n + 1)

end

end A209940.P17089762800889606097

namespace A209940

/-- `A087960(2*n)*A124340(2*n+1)` -/
def P17089762800889606097.Spec : Prop :=
  ∀ n, P17089762800889606097.a n = A209940 n

end A209940

/-! ## A209940.P12431924856064256775

`A117000(2*n+1)*A188510(2*n+1)`
-/

namespace A209940.P12431924856064256775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117000 (2 * n + 1) * A188510 (2 * n + 1)

end

end A209940.P12431924856064256775

namespace A209940

/-- `A117000(2*n+1)*A188510(2*n+1)` -/
def P12431924856064256775.Spec : Prop :=
  ∀ n, P12431924856064256775.a n = A209940 n

end A209940

/-! ## A209940.P18211464094758362672

`A124340(A005408(n))/A057077(2*n)`
-/

namespace A209940.P18211464094758362672
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A124340 (A005408 n).toNat : ℚ) / (A057077 (2 * n) : ℚ)

end

end A209940.P18211464094758362672

namespace A209940

/-- `A124340(A005408(n))/A057077(2*n)` -/
def P18211464094758362672.Spec : Prop :=
  ∀ n, P18211464094758362672.a n = (A209940 n : ℚ)

end A209940

/-!
# A209941: Expansion of f(x)^6 in powers of x where f() is a Ramanujan theta function.

The programs for A209941, there is no canonical definition to state claims against.
-/

/-! ## A209941.P8139745397391027976

`(-1)^n*A000729(n)`
-/

namespace A209941.P8139745397391027976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A000729 n

end

end A209941.P8139745397391027976

/-! ## A209941.P5497165223420170998

`A000729(n)*A033999(n)`
-/

namespace A209941.P5497165223420170998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000729 n * A033999 n

end

end A209941.P5497165223420170998

/-! ## A209941.P5593134490211117306

`A000729(n)/(2-Δ[A042948(n)])`
-/

namespace A209941.P5593134490211117306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042948 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000729 n : ℚ) / (2 - (f1 (n + 1) - f1 n) : ℚ)

end

end A209941.P5593134490211117306

/-! ## A209941.P3460940788136250476

`A000729(n)*A321753(Δ[A042948(n)])`
-/

namespace A209941.P3460940788136250476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042948 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000729 n * A321753 (f1 (n + 1) - f1 n).toNat

end

end A209941.P3460940788136250476

/-! ## A209941.P4538970606747437704

`A000729(n)*A309873(A020639(n+1))`
-/

namespace A209941.P4538970606747437704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000729 n * A309873 (A020639 (n + 1)).toNat

end

end A209941.P4538970606747437704

/-! ## A209941.P12470889548143287827

`A000729(n)*A030211(n)/A134461(n)`
-/

namespace A209941.P12470889548143287827
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000729 n * A030211 n : ℚ) / (A134461 n : ℚ)

end

end A209941.P12470889548143287827

/-! ## A209941.P1545569409080795005

`A000729(n)*A000735(n)/A209676(n)`
-/

namespace A209941.P1545569409080795005
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000729 n * A000735 n : ℚ) / (A209676 n : ℚ)

end

end A209941.P1545569409080795005

/-! ## A209941.P12727514762970393647

`A000729(n)*A280328(n)/A280384(n)`
-/

namespace A209941.P12727514762970393647
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000729 n * A280328 n : ℚ) / (A280384 n : ℚ)

end

end A209941.P12727514762970393647

/-! ## A209941.P5300127012254979260

`A000729(n)/A273225(n)*A274621(n)`
-/

namespace A209941.P5300127012254979260
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000729 n : ℚ) / (A273225 n : ℚ) * (A274621 n : ℚ)

end

end A209941.P5300127012254979260

/-! ## A209941.P6581462434706197224

`A000729(n)*A056594(2*n)`
-/

namespace A209941.P6581462434706197224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000729 n * A056594 (2 * n)

end

end A209941.P6581462434706197224

/-! ## A209941.P16600629669915707697

`A000729(n)*A309873(n²+1)`
-/

namespace A209941.P16600629669915707697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000729 n * A309873 (n ^ 2 + 1)

end

end A209941.P16600629669915707697

/-!
# A209942: Expansion of (psi(-x) * phi(x)^4)^2 in powers of x where phi(), psi() are Ramanujan theta functions.

The programs for A209942, there is no canonical definition to state claims against.
-/

/-! ## A209942.P18429560231597514707

`(-1)^n*A215472(n)`
-/

namespace A209942.P18429560231597514707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A215472 n

end

end A209942.P18429560231597514707

/-! ## A209942.P15689770822451114759

`A215472(n)/A077892(Δ[or(1, n)])`
-/

namespace A209942.P15689770822451114759
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A215472 n : ℚ) / (A077892 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ)

end

end A209942.P15689770822451114759

/-! ## A209942.P14576670710671574768

`A215472(n)/A121373(Δ[or(1, n)])`
-/

namespace A209942.P14576670710671574768
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A215472 n : ℚ) / (A121373 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ)

end

end A209942.P14576670710671574768

/-! ## A209942.P8782758974312738999

`A215472(n)*A343785(A001651(n+1))`
-/

namespace A209942.P8782758974312738999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215472 n * A343785 (A001651 (n + 1)).toNat

end

end A209942.P8782758974312738999

/-! ## A209942.P10993311418859040792

`A215472(n)/A010892(3*n)`
-/

namespace A209942.P10993311418859040792
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A215472 n : ℚ) / (A010892 (3 * n) : ℚ)

end

end A209942.P10993311418859040792

/-! ## A209942.P2200953121051741914

`A215472(n)/A124341(A000217(n))`
-/

namespace A209942.P2200953121051741914
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A215472 n : ℚ) / (A124341 (A000217 n).toNat : ℚ)

end

end A209942.P2200953121051741914

/-!
# A209943: Half the number of (n+1)X(n+1) 0..2 arrays with every 2X2 subblock having at most one duplicate clockwise edge difference.

The programs for A209943, there is no canonical definition to state claims against.
-/

/-! ## A209943.P12174546216861176336

`A209951((n+1)²+n²)`
-/

namespace A209943.P12174546216861176336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209951 ((n + 1) ^ 2 + n ^ 2)

end

end A209943.P12174546216861176336

/-! ## A209943.P18209251342324907479

`record[gcd(A114327(n), A209951(n+1))]`
-/

namespace A209943.P18209251342324907479
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A209951 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A209943.P18209251342324907479

/-!
# A209944: a(n) is half the number of (n+1) X 2 0..2 arrays with every 2 X 2 subblock having at most one duplicate clockwise edge difference.

The programs for A209944, the canonical program `A209944.P3639716379324919871` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A209944 has offset 1).

The definition of A209944 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 112 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A209944.P3639716379324919871

`6*a(n-1)+12*a(n-2)` with `a(0)=34, a(1)=258`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A209944

/-- `6*a(n-1)+12*a(n-2)` -/
def P3639716379324919871.Spec : Prop :=
  ∀ n, (P3639716379324919871.a n : ℤ) = A209944 (n + 1)

theorem P3639716379324919871.correct : P3639716379324919871.Spec := by
  intro n
  simp only [A209944, Nat.add_sub_cancel]

end A209944

/-! ## A209944.P17405155847663009108

`A209951(∑[n]+1)`
-/

namespace A209944.P17405155847663009108
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209951 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A209944.P17405155847663009108

namespace A209944

/-- `A209951(∑[n]+1)` -/
def P17405155847663009108.Spec : Prop :=
  ∀ n, P17405155847663009108.a n = A209944 (n + 1)

end A209944

/-! ## A209944.P7482062914863648861

`record[root(A209951(n+1), A091186(n))]`
-/

namespace A209944.P7482062914863648861
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A209951 (n + 1) : ℝ) ^ (1 / (A091186 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A209944.P7482062914863648861

namespace A209944

/-- `record[root(A209951(n+1), A091186(n))]` -/
def P7482062914863648861.Spec : Prop :=
  ∀ n, P7482062914863648861.a n = (A209944 (n + 1) : ℝ)

end A209944

/-! ## A209944.P17544276159911001752

`record[root(A209951(n+1), A193592(n))]`
-/

namespace A209944.P17544276159911001752
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A209951 (n + 1) : ℝ) ^ (1 / (A193592 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A209944.P17544276159911001752

namespace A209944

/-- `record[root(A209951(n+1), A193592(n))]` -/
def P17544276159911001752.Spec : Prop :=
  ∀ n, P17544276159911001752.a n = (A209944 (n + 1) : ℝ)

end A209944

/-! ## A209944.P8304222121390379607

`record[gcd(A002262(n), A209951(n+1))]`
-/

namespace A209944.P8304222121390379607
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A209951 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A209944.P8304222121390379607

namespace A209944

/-- `record[gcd(A002262(n), A209951(n+1))]` -/
def P8304222121390379607.Spec : Prop :=
  ∀ n, (P8304222121390379607.a n : ℤ) = A209944 (n + 1)

end A209944

/-!
# A209945: Half the number of (n+1) X 3 0..2 arrays with every 2 X 2 subblock having at most one duplicate clockwise edge difference.

The programs for A209945, there is no canonical definition to state claims against.
-/

/-! ## A209945.P17968986853214262203

`A209951(∑[n+1]+2)`
-/

namespace A209945.P17968986853214262203
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209951 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A209945.P17968986853214262203

/-! ## A209945.P14051810241448500915

`record[gcd(A002262(n), A209951(n+2))]`
-/

namespace A209945.P14051810241448500915
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A209951 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A209945.P14051810241448500915

/-! ## A209945.P1777268648304697735

`record[A209951(Δ[A003453(n+5)])]`
-/

namespace A209945.P1777268648304697735
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209951 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A209945.P1777268648304697735

/-! ## A209945.P11538675073638206694

`record[root(A209951(n+2), A091186(n+2))]`
-/

namespace A209945.P11538675073638206694
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A209951 (n + 2) : ℝ) ^ (1 / (A091186 (n + 2) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A209945.P11538675073638206694

/-! ## A209945.P10194497756653300279

`record[root(A209951(n+2), A193592(n+2))]`
-/

namespace A209945.P10194497756653300279
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A209951 (n + 2) : ℝ) ^ (1 / (A193592 (n + 2) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A209945.P10194497756653300279

/-!
# A209946: Half the number of (n+1)X4 0..2 arrays with every 2X2 subblock having at most one duplicate clockwise edge difference.

The programs for A209946, there is no canonical definition to state claims against.
-/

/-! ## A209946.P17458967460314707872

`A209951(∑[n+2]+4)`
-/

namespace A209946.P17458967460314707872
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209951 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A209946.P17458967460314707872

/-! ## A209946.P6246407854768979364

`lcm(2, A209951(A167614(n+1)))`
-/

namespace A209946.P6246407854768979364
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A209951 (A167614 (n + 1)).toNat)

end

end A209946.P6246407854768979364

/-! ## A209946.P3657391640173913317

`A209951(A167614(n+1))+A025444(n)`
-/

namespace A209946.P3657391640173913317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209951 (A167614 (n + 1)).toNat + A025444 n

end

end A209946.P3657391640173913317

/-! ## A209946.P5899834434384737966

`A212619(n+1)+A209951(A167614(n+1))`
-/

namespace A209946.P5899834434384737966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212619 (n + 1) + A209951 (A167614 (n + 1)).toNat

end

end A209946.P5899834434384737966

/-! ## A209946.P8380368723398323663

`A209951(A167614(n+1))%A208487(n+1)`
-/

namespace A209946.P8380368723398323663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A209951 (A167614 (n + 1)).toNat) (A208487 (n + 1))

end

end A209946.P8380368723398323663

/-!
# A209947: Half the number of (n+1)X5 0..2 arrays with every 2X2 subblock having at most one duplicate clockwise edge difference.

The programs for A209947, there is no canonical definition to state claims against.
-/

/-! ## A209947.P1170689151966521339

`A209951(A141214(n)+7)`
-/

namespace A209947.P1170689151966521339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209951 (A141214 n + 7).toNat

end

end A209947.P1170689151966521339

/-! ## A209947.P16559293338363167390

`A209951(A055999(n)+10)`
-/

namespace A209947.P16559293338363167390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209951 (A055999 n + 10).toNat

end

end A209947.P16559293338363167390

/-! ## A209947.P8047837699865739718

`A209951(A167614(n+2)+1)`
-/

namespace A209947.P8047837699865739718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209951 (A167614 (n + 2) + 1).toNat

end

end A209947.P8047837699865739718

/-! ## A209947.P13951743786034624671

`A209951(eq[3, A193592(n)])`
-/

namespace A209947.P13951743786034624671
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209951 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A209947.P13951743786034624671

/-!
# A209948: Half the number of (n+1)X6 0..2 arrays with every 2X2 subblock having at most one duplicate clockwise edge difference.

The programs for A209948, there is no canonical definition to state claims against.
-/

/-! ## A209948.P965944771383888867

`A209951(A374005(n+1))`
-/

namespace A209948.P965944771383888867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209951 (A374005 (n + 1)).toNat

end

end A209948.P965944771383888867

/-! ## A209948.P14461844232464771031

`A209951(eq[4, A193592(n)])`
-/

namespace A209948.P14461844232464771031
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209951 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A209948.P14461844232464771031

/-! ## A209948.P6881121919441661680

`A209951(Δ[A023545(n+1)])`
-/

namespace A209948.P6881121919441661680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209951 (f1 (n + 1) - f1 n).toNat

end

end A209948.P6881121919441661680

/-!
# A209949: 

The programs for A209949, there is no canonical definition to state claims against.
-/

/-! ## A209949.P3291833996330984475

`A209951(eq[5, A193592(n)])`
-/

namespace A209949.P3291833996330984475
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209951 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A209949.P3291833996330984475

/-!
# A209950: 

The programs for A209950, there is no canonical definition to state claims against.
-/

/-! ## A209950.P13399789142783294934

`A209951(eq[6, A193592(n)])`
-/

namespace A209950.P13399789142783294934
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209951 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A209950.P13399789142783294934

/-!
# A209952: Number of (n+1) X (n+1) 0..2 arrays with every 2 X 2 subblock having one, three or four distinct clockwise edge differences.

The programs for A209952, there is no canonical definition to state claims against.
-/

/-! ## A209952.P6060110374584864124

`A209960((n+1)²+n²)`
-/

namespace A209952.P6060110374584864124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209960 ((n + 1) ^ 2 + n ^ 2)

end

end A209952.P6060110374584864124

/-!
# A209953: Number of (n+1) X 2 0..2 arrays with every 2 X 2 subblock having one, three or four distinct clockwise edge differences.

The programs for A209953, there is no canonical definition to state claims against.
-/

/-! ## A209953.P11931520784393657226

`A209960(∑[n]+1)`
-/

namespace A209953.P11931520784393657226
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209960 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A209953.P11931520784393657226

/-! ## A209953.P15042582090494911284

`record[root(A209960(n+1), A132047(n))]`
-/

namespace A209953.P15042582090494911284
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A209960 (n + 1) : ℝ) ^ (1 / (A132047 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A209953.P15042582090494911284

/-! ## A209953.P9018003032543107040

`record[gcd(A002262(n), A209960(n+1))]`
-/

namespace A209953.P9018003032543107040
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A209960 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A209953.P9018003032543107040

/-! ## A209953.P3699318189756452711

`A209960(A000124(n))+(2*n)%2`
-/

namespace A209953.P3699318189756452711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209960 (A000124 n).toNat + ((2 * n % 2 : ℕ) : ℤ)

end

end A209953.P3699318189756452711

/-! ## A209953.P3328321773518001402

`or(1, A209960(A000096(n)+1))`
-/

namespace A209953.P3328321773518001402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A209960 (A000096 n + 1).toNat)

end

end A209953.P3328321773518001402

/-!
# A209954: Number of (n+1)X3 0..2 arrays with every 2X2 subblock having one, three or four distinct clockwise edge differences.

The programs for A209954, there is no canonical definition to state claims against.
-/

/-! ## A209954.P17852013661234348415

`A209960(∑[n+1]+2)`
-/

namespace A209954.P17852013661234348415
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209960 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A209954.P17852013661234348415

/-! ## A209954.P4951761496669903896

`record[gcd(A002262(n), A209960(n+2))]`
-/

namespace A209954.P4951761496669903896
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A209960 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A209954.P4951761496669903896

/-! ## A209954.P7875214027422678414

`or(1, A209960(A000096(n+1)))`
-/

namespace A209954.P7875214027422678414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A209960 (A000096 (n + 1)).toNat)

end

end A209954.P7875214027422678414

/-! ## A209954.P152120823831857136

`A064284(n+1)*A209960(A000096(n+1))`
-/

namespace A209954.P152120823831857136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064284 (n + 1) * A209960 (A000096 (n + 1)).toNat

end

end A209954.P152120823831857136

/-! ## A209954.P2627209893171548437

`record[A209960(A000096(∑{e}[n+1, #]+1))]`
-/

namespace A209954.P2627209893171548437
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209960 (A000096 (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A209954.P2627209893171548437

/-!
# A209955: Number of (n+1)X4 0..2 arrays with every 2X2 subblock having one, three or four distinct clockwise edge differences.

The programs for A209955, there is no canonical definition to state claims against.
-/

/-! ## A209955.P13364311342174006665

`A209960(A167614(n+1))`
-/

namespace A209955.P13364311342174006665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209960 (A167614 (n + 1)).toNat

end

end A209955.P13364311342174006665

/-! ## A209955.P2574929120792156167

`A209960(A373663(n+1))`
-/

namespace A209955.P2574929120792156167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209960 (A373663 (n + 1)).toNat

end

end A209955.P2574929120792156167

/-! ## A209955.P14042441071240400062

`A209960(A046691(n)+7)`
-/

namespace A209955.P14042441071240400062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209960 (A046691 n + 7).toNat

end

end A209955.P14042441071240400062

/-! ## A209955.P10599605059580973214

`A209960(A167499(n)+n)`
-/

namespace A209955.P10599605059580973214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209960 (A167499 n + (n : ℤ)).toNat

end

end A209955.P10599605059580973214

/-! ## A209955.P7407364212942797456

`A209960(∑[n+3]+1)`
-/

namespace A209955.P7407364212942797456
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209960 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A209955.P7407364212942797456

/-!
# A209956: Number of (n+1)X5 0..2 arrays with every 2X2 subblock having one, three or four distinct clockwise edge differences.

The programs for A209956, there is no canonical definition to state claims against.
-/

/-! ## A209956.P5567483410106422177

`A209960(A167614(n+2)+1)`
-/

namespace A209956.P5567483410106422177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209960 (A167614 (n + 2) + 1).toNat

end

end A209956.P5567483410106422177

/-! ## A209956.P10378974995076603262

`A209960(A167499(n)+3*n+1)`
-/

namespace A209956.P10378974995076603262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209960 (A167499 n + (3 * n + 1 : ℤ)).toNat

end

end A209956.P10378974995076603262

/-!
# A209957: Number of (n+1)X6 0..2 arrays with every 2X2 subblock having one, three or four distinct clockwise edge differences.

The programs for A209957, there is no canonical definition to state claims against.
-/

/-! ## A209957.P17281318069195727340

`A209960(A374005(n+1))`
-/

namespace A209957.P17281318069195727340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209960 (A374005 (n + 1)).toNat

end

end A209957.P17281318069195727340

/-! ## A209957.P1952178631038750360

`A209960(A167499(n+3))`
-/

namespace A209957.P1952178631038750360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209960 (A167499 (n + 3)).toNat

end

end A209957.P1952178631038750360

/-!
# A209961: Number of (n+1)X(n+1) 0..3 arrays containing all values 0..3 with every 2X2 subblock having one or two distinct values, and new values 0..3 introduced in row major order.

The programs for A209961, there is no canonical definition to state claims against.
-/

/-! ## A209961.P4366160986771457848

`A209969((n+1)²+n²)`
-/

namespace A209961.P4366160986771457848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209969 ((n + 1) ^ 2 + n ^ 2)

end

end A209961.P4366160986771457848

/-! ## A209961.P17350899528049633471

`A209840(n+1)-A209821(n+1)`
-/

namespace A209961.P17350899528049633471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209840 (n + 1) - A209821 (n + 1)

end

end A209961.P17350899528049633471

/-!
# A209962: Number of (n+1) X 2 0..3 arrays containing all values 0..3 with every 2 X 2 subblock having one or two distinct values, and new values 0..3 introduced in row major order.

The programs for A209962, there is no canonical definition to state claims against.
-/

/-! ## A209962.P11261759672121909528

`A209841(n+1)-A209822(n+1)`
-/

namespace A209962.P11261759672121909528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209841 (n + 1) - A209822 (n + 1)

end

end A209962.P11261759672121909528

/-! ## A209962.P6350047176782842042

`A209841(n+1)-ceil(A233020(n+2)/2)`
-/

namespace A209962.P6350047176782842042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209841 (n + 1) - ⌈(A233020 (n + 2) : ℚ) / 2⌉

end

end A209962.P6350047176782842042

/-! ## A209962.P5309223427325728200

`A209969(∑[n]+1)`
-/

namespace A209962.P5309223427325728200
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209969 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A209962.P5309223427325728200

/-! ## A209962.P1797301081737375340

`lcm(3, A209969(A000124(n)))`
-/

namespace A209962.P1797301081737375340
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 (A209969 (A000124 n).toNat)

end

end A209962.P1797301081737375340

/-! ## A209962.P4225777771507488203

`A209969(A000124(n))+A178798(n)`
-/

namespace A209962.P4225777771507488203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209969 (A000124 n).toNat + A178798 n

end

end A209962.P4225777771507488203

/-!
# A209963: Number of (n+1)X3 0..3 arrays containing all values 0..3 with every 2X2 subblock having one or two distinct values, and new values 0..3 introduced in row major order.

The programs for A209963, there is no canonical definition to state claims against.
-/

/-! ## A209963.P17876721238857236184

`A209842(n+1)-A209823(n+1)`
-/

namespace A209963.P17876721238857236184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209842 (n + 1) - A209823 (n + 1)

end

end A209963.P17876721238857236184

/-! ## A209963.P15259439088934267991

`A209969(∑[n+1]+2)`
-/

namespace A209963.P15259439088934267991
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209969 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A209963.P15259439088934267991

/-! ## A209963.P18067863346752630521

`record[A209969(record[A316669(n+1)])]`
-/

namespace A209963.P18067863346752630521
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316669 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209969 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A209963.P18067863346752630521

/-! ## A209963.P5761583380010698535

`record[A097806(n)*A209969(n+1)]`
-/

namespace A209963.P5761583380010698535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097806 n * A209969 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A209963.P5761583380010698535

/-! ## A209963.P7131141114860507549

`record[lcm(A167374(n), A209969(n+1))]`
-/

namespace A209963.P7131141114860507549
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A167374 n) (A209969 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A209963.P7131141114860507549

/-!
# A209964: Number of (n+1)X4 0..3 arrays containing all values 0..3 with every 2X2 subblock having one or two distinct values, and new values 0..3 introduced in row major order.

The programs for A209964, there is no canonical definition to state claims against.
-/

/-! ## A209964.P9231628935879670184

`A209843(n+1)-A209824(n+1)`
-/

namespace A209964.P9231628935879670184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209843 (n + 1) - A209824 (n + 1)

end

end A209964.P9231628935879670184

/-! ## A209964.P1622772071125395842

`A209843(n+1)-A209829(A167614(n+1))`
-/

namespace A209964.P1622772071125395842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209843 (n + 1) - A209829 (A167614 (n + 1)).toNat

end

end A209964.P1622772071125395842

/-! ## A209964.P16708667192613264175

`A209969(∑[n+2]+4)`
-/

namespace A209964.P16708667192613264175
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209969 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A209964.P16708667192613264175

/-! ## A209964.P7804374377388224015

`A209969(A167614(n+1))+A025466(n)`
-/

namespace A209964.P7804374377388224015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209969 (A167614 (n + 1)).toNat + A025466 n

end

end A209964.P7804374377388224015

/-! ## A209964.P17997151985131192664

`A209969(A167614(n+1))+A055967(n)`
-/

namespace A209964.P17997151985131192664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209969 (A167614 (n + 1)).toNat + A055967 n

end

end A209964.P17997151985131192664

/-!
# A209965: Number of (n+1) X 5 0..3 arrays containing all values 0..3 with every 2 X 2 subblock having one or two distinct values, and new values 0..3 introduced in row major order.

The programs for A209965, there is no canonical definition to state claims against.
-/

/-! ## A209965.P4355975980279238175

`A209844(n+1)-A209825(n+1)`
-/

namespace A209965.P4355975980279238175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209844 (n + 1) - A209825 (n + 1)

end

end A209965.P4355975980279238175

/-! ## A209965.P11010284710373468356

`A209969(A374004(n+1))`
-/

namespace A209965.P11010284710373468356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209969 (A374004 (n + 1)).toNat

end

end A209965.P11010284710373468356

/-! ## A209965.P4134092160457461542

`A209969(A055999(n)+10)`
-/

namespace A209965.P4134092160457461542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209969 (A055999 n + 10).toNat

end

end A209965.P4134092160457461542

/-! ## A209965.P10567313153367111140

`A209969(A167614(n+2)+1)`
-/

namespace A209965.P10567313153367111140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209969 (A167614 (n + 2) + 1).toNat

end

end A209965.P10567313153367111140

/-! ## A209965.P7297242247271118934

`A209969(Δ[A023545(n+1)-n²])`
-/

namespace A209965.P7297242247271118934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1) - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209969 (f1 (n + 1) - f1 n).toNat

end

end A209965.P7297242247271118934

/-!
# A209966: Number of (n+1)X6 0..3 arrays containing all values 0..3 with every 2X2 subblock having one or two distinct values, and new values 0..3 introduced in row major order.

The programs for A209966, there is no canonical definition to state claims against.
-/

/-! ## A209966.P12062849453735518015

`A209845(n+1)-A209826(n+1)`
-/

namespace A209966.P12062849453735518015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209845 (n + 1) - A209826 (n + 1)

end

end A209966.P12062849453735518015

/-! ## A209966.P15009440829441593818

`A209969(A374005(n+1))`
-/

namespace A209966.P15009440829441593818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209969 (A374005 (n + 1)).toNat

end

end A209966.P15009440829441593818

/-! ## A209966.P17103221262478460798

`A209969(A155212(n)+13)`
-/

namespace A209966.P17103221262478460798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209969 (A155212 n + 13).toNat

end

end A209966.P17103221262478460798

/-! ## A209966.P11487101151255739356

`A209969(A051936(n+4)+14)`
-/

namespace A209966.P11487101151255739356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209969 (A051936 (n + 4) + 14).toNat

end

end A209966.P11487101151255739356

/-! ## A209966.P16826274774363770791

`A209969(eq[4, A193592(n)])`
-/

namespace A209966.P16826274774363770791
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209969 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A209966.P16826274774363770791

/-!
# A209967: Number of (n+1)X7 0..3 arrays containing all values 0..3 with every 2X2 subblock having one or two distinct values, and new values 0..3 introduced in row major order.

The programs for A209967, there is no canonical definition to state claims against.
-/

/-! ## A209967.P6613396690999554515

`A209846(n+1)-A209827(n+1)`
-/

namespace A209967.P6613396690999554515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209846 (n + 1) - A209827 (n + 1)

end

end A209967.P6613396690999554515

/-! ## A209967.P2925661949761918429

`A209969(A374007(n+1))`
-/

namespace A209967.P2925661949761918429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209969 (A374007 (n + 1)).toNat

end

end A209967.P2925661949761918429

/-! ## A209967.P3651212825117304675

`A209969(eq[3, A219347(n)])`
-/

namespace A209967.P3651212825117304675
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209969 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A209967.P3651212825117304675

/-! ## A209967.P14175156943610772494

`A209969(eq[5, A193592(n)])`
-/

namespace A209967.P14175156943610772494
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209969 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A209967.P14175156943610772494

/-! ## A209967.P11584237981491591729

`A209969(eq[8, A185782(n+1)])`
-/

namespace A209967.P11584237981491591729
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209969 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A209967.P11584237981491591729

/-!
# A209968: Number of (n+1)X8 0..3 arrays containing all values 0..3 with every 2X2 subblock having one or two distinct values, and new values 0..3 introduced in row major order.

The programs for A209968, there is no canonical definition to state claims against.
-/

/-! ## A209968.P16331757326731003561

`A209847(n+1)-A209828(n+1)`
-/

namespace A209968.P16331757326731003561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209847 (n + 1) - A209828 (n + 1)

end

end A209968.P16331757326731003561

/-! ## A209968.P1207722960739441194

`A209969(A374008(n+1))`
-/

namespace A209968.P1207722960739441194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209969 (A374008 (n + 1)).toNat

end

end A209968.P1207722960739441194

/-! ## A209968.P17148788310545512338

`A209969(eq[4, A219347(n)])`
-/

namespace A209968.P17148788310545512338
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209969 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A209968.P17148788310545512338

/-! ## A209968.P5595594548000247376

`A209969(eq[6, A193592(n)])`
-/

namespace A209968.P5595594548000247376
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209969 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A209968.P5595594548000247376

/-! ## A209968.P2199509469443235958

`A209969(eq[6, A243060(n+1)])`
-/

namespace A209968.P2199509469443235958
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243060 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209969 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A209968.P2199509469443235958

/-!
# A209969: T(n,k)=Number of (n+1)X(k+1) 0..3 arrays containing all values 0..3 with every 2X2 subblock having one or two distinct values, and new values 0..3 introduced in row major order.

The programs for A209969, there is no canonical definition to state claims against.
-/

/-! ## A209969.P13768164305539119972

`A209848(n+1)-A209829(n+1)`
-/

namespace A209969.P13768164305539119972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209848 (n + 1) - A209829 (n + 1)

end

end A209969.P13768164305539119972

/-! ## A209969.P1266718755750018884

`A209848(n+1)+A210143(n+1)-A210061(n+1)`
-/

namespace A209969.P1266718755750018884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209848 (n + 1) + (A210143 (n + 1) - A210061 (n + 1))

end

end A209969.P1266718755750018884

/-! ## A209969.P9012382198267133315

`(A209848(n+1)%A209829(n+1))%A119106(n+1)`
-/

namespace A209969.P9012382198267133315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod (A209848 (n + 1)) (A209829 (n + 1))) (A119106 (n + 1))

end

end A209969.P9012382198267133315

/-! ## A209969.P14726060841403700472

`(A209848(n+1)%A209829(n+1))%A174276(n)`
-/

namespace A209969.P14726060841403700472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod (A209848 (n + 1)) (A209829 (n + 1))) (A174276 n)

end

end A209969.P14726060841403700472

/-! ## A209969.P11206591832279604367

`A209848(A187829(n+1))%A209829(n+1)`
-/

namespace A209969.P11206591832279604367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A209848 (A187829 (n + 1)).toNat) (A209829 (n + 1))

end

end A209969.P11206591832279604367

/-!
# A209970: a(n) = 2^n - A000031(n).

The programs for A209970, the canonical program `A209970.P62417713944158277` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A209970 has offset 0).

The definition of A209970 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000031, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A209970.P62417713944158277

`2^n-A000031(n)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A209970

/-- `2^n-A000031(n)` -/
def P62417713944158277.Spec : Prop :=
  ∀ n, P62417713944158277.a n = A209970 n

theorem P62417713944158277.correct : P62417713944158277.Spec := by
  intro n
  simp only [A209970]

end A209970

/-! ## A209970.P16176944321607611693

`2^n-1-Δ[A052825(n)]`
-/

namespace A209970.P16176944321607611693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052825 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - 1 - (f1 (n + 1) - f1 n)

end

end A209970.P16176944321607611693

namespace A209970

/-- `2^n-1-Δ[A052825(n)]` -/
def P16176944321607611693.Spec : Prop :=
  ∀ n, P16176944321607611693.a n = A209970 n

end A209970

/-! ## A209970.P15390279684683854885

`A000051(n)-(A000031(n)+1)`
-/

namespace A209970.P15390279684683854885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n - (A000031 n + 1)

end

end A209970.P15390279684683854885

namespace A209970

/-- `A000051(n)-(A000031(n)+1)` -/
def P15390279684683854885.Spec : Prop :=
  ∀ n, P15390279684683854885.a n = A209970 n

end A209970

/-! ## A209970.P17743999163577107667

`A000225(n)+1-A000031(n)`
-/

namespace A209970.P17743999163577107667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n + (1 - A000031 n)

end

end A209970.P17743999163577107667

namespace A209970

/-- `A000225(n)+1-A000031(n)` -/
def P17743999163577107667.Spec : Prop :=
  ∀ n, P17743999163577107667.a n = A209970 n

end A209970

/-! ## A209970.P6462608084668926078

`A000051(n)-(Δ[A052825(n)]+2)`
-/

namespace A209970.P6462608084668926078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052825 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n - (f1 (n + 1) - f1 n + 2)

end

end A209970.P6462608084668926078

namespace A209970

/-- `A000051(n)-(Δ[A052825(n)]+2)` -/
def P6462608084668926078.Spec : Prop :=
  ∀ n, P6462608084668926078.a n = A209970 n

end A209970

/-! ## A209970.P17075176621982390253

`2^n-(A059076(n)+A000029(n))`
-/

namespace A209970.P17075176621982390253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - (A059076 n + A000029 n)

end

end A209970.P17075176621982390253

namespace A209970

/-- `2^n-(A059076(n)+A000029(n))` -/
def P17075176621982390253.Spec : Prop :=
  ∀ n, P17075176621982390253.a n = A209970 n

end A209970

/-! ## A209970.P10543465965298928525

`A000079(n)-A000029(n)-A059076(n)`
-/

namespace A209970.P10543465965298928525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n - A000029 n - A059076 n

end

end A209970.P10543465965298928525

namespace A209970

/-- `A000079(n)-A000029(n)-A059076(n)` -/
def P10543465965298928525.Spec : Prop :=
  ∀ n, P10543465965298928525.a n = A209970 n

end A209970

/-! ## A209970.P4902276630563268386

`A001045(n+1)+A001045(n)-A000031(n)`
-/

namespace A209970.P4902276630563268386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 (n + 1) + (A001045 n - A000031 n)

end

end A209970.P4902276630563268386

namespace A209970

/-- `A001045(n+1)+A001045(n)-A000031(n)` -/
def P4902276630563268386.Spec : Prop :=
  ∀ n, P4902276630563268386.a n = A209970 n

end A209970

/-! ## A209970.P42728868017728015

`A008965(n+1)+A329145(n+1)-A000031(n)`
-/

namespace A209970.P42728868017728015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008965 (n + 1) + (A329145 (n + 1) - A000031 n)

end

end A209970.P42728868017728015

namespace A209970

/-- `A008965(n+1)+A329145(n+1)-A000031(n)` -/
def P42728868017728015.Spec : Prop :=
  ∀ n, P42728868017728015.a n = A209970 n

end A209970

/-! ## A209970.P12087995624333836742

`(A011782(n+2)-2*A000031(n))/2`
-/

namespace A209970.P12087995624333836742
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A011782 (n + 2) - 2 * A000031 n : ℚ) / 2

end

end A209970.P12087995624333836742

namespace A209970

/-- `(A011782(n+2)-2*A000031(n))/2` -/
def P12087995624333836742.Spec : Prop :=
  ∀ n, P12087995624333836742.a n = (A209970 n : ℚ)

end A209970

/-! ## A209970.P6015007046564886444

`A000225(n)-A055376(A000217(n))`
-/

namespace A209970.P6015007046564886444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n - A055376 (A000217 n).toNat

end

end A209970.P6015007046564886444

namespace A209970

/-- `A000225(n)-A055376(A000217(n))` -/
def P6015007046564886444.Spec : Prop :=
  ∀ n, P6015007046564886444.a n = A209970 n

end A209970

/-! ## A209970.P5904929759288235550

`A000079(n)-(A055376(A000217(n))+1)`
-/

namespace A209970.P5904929759288235550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n - (A055376 (A000217 n).toNat + 1)

end

end A209970.P5904929759288235550

namespace A209970

/-- `A000079(n)-(A055376(A000217(n))+1)` -/
def P5904929759288235550.Spec : Prop :=
  ∀ n, P5904929759288235550.a n = A209970 n

end A209970

/-!
# A209971: a(n) = A000129(n) + n.

The programs for A209971, the canonical program `A209971.P2063977723074773376` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A209971 has offset 0).

The definition of A209971 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000129(n)+n` (program `A209971.P2063977723074773376`, by `A209971.P2063977723074773376.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A209971.P2063977723074773376

`A000129(n)+n`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A209971

/-- `A000129(n)+n` -/
def P2063977723074773376.Spec : Prop :=
  ∀ n, P2063977723074773376.a n = A209971 n

theorem P2063977723074773376.correct : P2063977723074773376.Spec := by
  intro n
  simp only [A209971]

end A209971

/-! ## A209971.P18418241424219024253

`4*a(n-1)-4*a(n-2)+a(n-4)` with `a(0)=0, a(1)=2, a(2)=4, a(3)=8`
-/

namespace A209971.P18418241424219024253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 4, 8] fun n a =>
  4 * a (n - 1) - 4 * a (n - 2) + a (n - 4)

end

end A209971.P18418241424219024253

namespace A209971

/-- `4*a(n-1)-4*a(n-2)+a(n-4)` -/
def P18418241424219024253.Spec : Prop :=
  ∀ n, P18418241424219024253.a n = A209971 n

end A209971

/-! ## A209971.P12909580425042781852

`∑[ogf((2x-4x^2)/(1-3x+x^2+x^3))]`
-/

namespace A209971.P12909580425042781852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2, -4] [1, -3, 1, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A209971.P12909580425042781852

namespace A209971

/-- `∑[ogf((2x-4x^2)/(1-3x+x^2+x^3))]` -/
def P12909580425042781852.Spec : Prop :=
  ∀ n, P12909580425042781852.a n = A209971 n

end A209971

/-! ## A209971.P1449819236293067754

`ogf((2x-4x^2)/(1-4x+4x^2-x^4))`
-/

namespace A209971.P1449819236293067754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2, -4] [1, -4, 4, 0, -1] n

end

end A209971.P1449819236293067754

namespace A209971

/-- `ogf((2x-4x^2)/(1-4x+4x^2-x^4))` -/
def P1449819236293067754.Spec : Prop :=
  ∀ n, P1449819236293067754.a n = A209971 n

end A209971

/-! ## A209971.P4036207653965432732

`∑[a(n-2)+2*(a(n-1)-1)]` with `a(0)=0, a(1)=2`
-/

namespace A209971.P4036207653965432732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n f1 =>
  f1 (n - 2) + 2 * (f1 (n - 1) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A209971.P4036207653965432732

namespace A209971

/-- `∑[a(n-2)+2*(a(n-1)-1)]` -/
def P4036207653965432732.Spec : Prop :=
  ∀ n, P4036207653965432732.a n = A209971 n

end A209971

/-! ## A209971.P10056650609124106765

`∑[a(n-2)-2*(1-a(n-1))]` with `a(0)=0, a(1)=2`
-/

namespace A209971.P10056650609124106765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n f1 =>
  f1 (n - 2) - 2 * (1 - f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A209971.P10056650609124106765

namespace A209971

/-- `∑[a(n-2)-2*(1-a(n-1))]` -/
def P10056650609124106765.Spec : Prop :=
  ∀ n, P10056650609124106765.a n = A209971 n

end A209971

/-! ## A209971.P17904194575914913125

`a(n-2)+2*(a(n-1)+2-n)` with `a(0)=0, a(1)=2`
-/

namespace A209971.P17904194575914913125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n a =>
  a (n - 2) + 2 * (a (n - 1) + (2 - (n : ℤ)))

end

end A209971.P17904194575914913125

namespace A209971

/-- `a(n-2)+2*(a(n-1)+2-n)` -/
def P17904194575914913125.Spec : Prop :=
  ∀ n, P17904194575914913125.a n = A209971 n

end A209971

/-! ## A209971.P3504302804957996559

`a(n-2)-2*(n-2-a(n-1))` with `a(0)=0, a(1)=2`
-/

namespace A209971.P3504302804957996559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n a =>
  a (n - 2) - 2 * ((n : ℤ) - 2 - a (n - 1))

end

end A209971.P3504302804957996559

namespace A209971

/-- `a(n-2)-2*(n-2-a(n-1))` -/
def P3504302804957996559.Spec : Prop :=
  ∀ n, P3504302804957996559.a n = A209971 n

end A209971

/-! ## A209971.P15641195338838913563

`∑[a(n-1)-2+a(n-1)+a(n-2)]` with `a(0)=0, a(1)=2`
-/

namespace A209971.P15641195338838913563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n f1 =>
  f1 (n - 1) - 2 + (f1 (n - 1) + f1 (n - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A209971.P15641195338838913563

namespace A209971

/-- `∑[a(n-1)-2+a(n-1)+a(n-2)]` -/
def P15641195338838913563.Spec : Prop :=
  ∀ n, P15641195338838913563.a n = A209971 n

end A209971

/-! ## A209971.P12800062072454371568

`∑[a(n-1)-(2-a(n-1)-a(n-2))]` with `a(0)=0, a(1)=2`
-/

namespace A209971.P12800062072454371568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n f1 =>
  f1 (n - 1) - (2 - f1 (n - 1) - f1 (n - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A209971.P12800062072454371568

namespace A209971

/-- `∑[a(n-1)-(2-a(n-1)-a(n-2))]` -/
def P12800062072454371568.Spec : Prop :=
  ∀ n, P12800062072454371568.a n = A209971 n

end A209971

/-! ## A209971.P12934036018992276755

`A174191(n)-1+n`
-/

namespace A209971.P12934036018992276755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174191 n - 1 + (n : ℤ)

end

end A209971.P12934036018992276755

namespace A209971

/-- `A174191(n)-1+n` -/
def P12934036018992276755.Spec : Prop :=
  ∀ n, P12934036018992276755.a n = A209971 n

end A209971

/-! ## A209971.P11680872323167820284

`n-A176981(n+1)`
-/

namespace A209971.P11680872323167820284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A176981 (n + 1)

end

end A209971.P11680872323167820284

namespace A209971

/-- `n-A176981(n+1)` -/
def P11680872323167820284.Spec : Prop :=
  ∀ n, P11680872323167820284.a n = A209971 n

end A209971

/-! ## A209971.P7071074737554803632

`A002965(2*n)+n`
-/

namespace A209971.P7071074737554803632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002965 (2 * n) + (n : ℤ)

end

end A209971.P7071074737554803632

namespace A209971

/-- `A002965(2*n)+n` -/
def P7071074737554803632.Spec : Prop :=
  ∀ n, P7071074737554803632.a n = A209971 n

end A209971

/-! ## A209971.P11388337342588479768

`A135153(2*n)+n`
-/

namespace A209971.P11388337342588479768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135153 (2 * n) + (n : ℤ)

end

end A209971.P11388337342588479768

namespace A209971

/-- `A135153(2*n)+n` -/
def P11388337342588479768.Spec : Prop :=
  ∀ n, P11388337342588479768.a n = A209971 n

end A209971

/-! ## A209971.P16298970655581032354

`A249576(3*n)+n`
-/

namespace A209971.P16298970655581032354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249576 (3 * n) + (n : ℤ)

end

end A209971.P16298970655581032354

namespace A209971

/-- `A249576(3*n)+n` -/
def P16298970655581032354.Spec : Prop :=
  ∀ n, P16298970655581032354.a n = A209971 n

end A209971

/-! ## A209971.P6954196334034496238

`A116560(6*n)+n`
-/

namespace A209971.P6954196334034496238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116560 (6 * n) + (n : ℤ)

end

end A209971.P6954196334034496238

namespace A209971

/-- `A116560(6*n)+n` -/
def P6954196334034496238.Spec : Prop :=
  ∀ n, P6954196334034496238.a n = A209971 n

end A209971

/-! ## A209971.P3975638489699040859

`xor(1, A111954(n))+n`
-/

namespace A209971.P3975638489699040859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A111954 n) + (n : ℤ)

end

end A209971.P3975638489699040859

namespace A209971

/-- `xor(1, A111954(n))+n` -/
def P3975638489699040859.Spec : Prop :=
  ∀ n, P3975638489699040859.a n = A209971 n

end A209971

/-! ## A209971.P13588483015288570922

`∑{d}[n, A133726(#)]+n`
-/

namespace A209971.P13588483015288570922
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A133726 d + (n : ℤ)

end

end A209971.P13588483015288570922

namespace A209971

/-- `∑{d}[n, A133726(#)]+n` -/
def P13588483015288570922.Spec : Prop :=
  ∀ n, P13588483015288570922.a n = A209971 n

end A209971

/-! ## A209971.P14378902741802765978

`A006684(n)+A002062(n)`
-/

namespace A209971.P14378902741802765978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006684 n + A002062 n

end

end A209971.P14378902741802765978

namespace A209971

/-- `A006684(n)+A002062(n)` -/
def P14378902741802765978.Spec : Prop :=
  ∀ n, P14378902741802765978.a n = A209971 n

end A209971

/-! ## A209971.P12962819669374001602

`A174191(n)+A023443(n)`
-/

namespace A209971.P12962819669374001602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174191 n + A023443 n

end

end A209971.P12962819669374001602

namespace A209971

/-- `A174191(n)+A023443(n)` -/
def P12962819669374001602.Spec : Prop :=
  ∀ n, P12962819669374001602.a n = A209971 n

end A209971

/-!
# A209972: Number of binary words of length n avoiding the subword given by the binary expansion of k; square array A(n,k), n>=0, k>=0, read by antidiagonals.

The programs for A209972, there is no canonical definition to state claims against.
-/

/-! ## A209972.P15957144703727710169

`A125269(A251660(n+2))`
-/

namespace A209972.P15957144703727710169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125269 (A251660 (n + 2)).toNat

end

end A209972.P15957144703727710169

/-! ## A209972.P14790535800793756364

`A125269(A362483(n+1))`
-/

namespace A209972.P14790535800793756364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125269 (A362483 (n + 1)).toNat

end

end A209972.P14790535800793756364

/-! ## A209972.P6760185612830296079

`A125269(A397001(n+1))`
-/

namespace A209972.P6760185612830296079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125269 (A397001 (n + 1)).toNat

end

end A209972.P6760185612830296079

/-! ## A209972.P12405285316100223301

`A320065(A291709(n+1))`
-/

namespace A209972.P12405285316100223301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320065 (A291709 (n + 1)).toNat

end

end A209972.P12405285316100223301

/-! ## A209972.P4733559118648674232

`A320065(A326323(n+1))`
-/

namespace A209972.P4733559118648674232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320065 (A326323 (n + 1)).toNat

end

end A209972.P4733559118648674232

/-!
# A209973: Number of 2 X 2 matrices having all elements in {0,1,...,n} and determinant 2.

The programs for A209973, there is no canonical definition to state claims against.
-/

/-! ## A209973.P13740255923765263616

`4*round(A209984(n)/32)`
-/

namespace A209973.P13740255923765263616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * SequenceMachineLib.roundAway ((A209984 n : ℚ) / 32)

end

end A209973.P13740255923765263616

/-! ## A209973.P18146642747966895866

`A197168(n)+A016825(n)%A106634(n)`
-/

namespace A209973.P18146642747966895866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197168 n + Int.tmod (A016825 n) (A106634 n)

end

end A209973.P18146642747966895866

/-! ## A209973.P1646469177997658293

`round(A209984(n)/32)/(2^A008683(A020483(n)))²`
-/

namespace A209973.P1646469177997658293
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.roundAway ((A209984 n : ℚ) / 32) : ℚ) / ((2 : ℚ) ^ (A008683 (A020483 n).toNat : ℤ)) ^ 2

end

end A209973.P1646469177997658293

/-! ## A209973.P17673093557448753230

`A197168(n)+A163300(A267872(n))`
-/

namespace A209973.P17673093557448753230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197168 n + A163300 (A267872 n).toNat

end

end A209973.P17673093557448753230

/-! ## A209973.P9511290531923222046

`4*A209974(n)`
-/

namespace A209973.P9511290531923222046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A209974 n

end

end A209973.P9511290531923222046

/-! ## A209973.P11300432091118375351

`lcm(A040002(n), A209974(n))`
-/

namespace A209973.P11300432091118375351
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A040002 n) (A209974 n)

end

end A209973.P11300432091118375351

/-! ## A209973.P9880838401856544064

`A016825(round(A209984(n)/32))-2`
-/

namespace A209973.P9880838401856544064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 (SequenceMachineLib.roundAway ((A209984 n : ℚ) / 32)).toNat - 2

end

end A209973.P9880838401856544064

/-! ## A209973.P9280296296958608922

`A008586(A209974(n))`
-/

namespace A209973.P9280296296958608922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008586 (A209974 n).toNat

end

end A209973.P9280296296958608922

/-! ## A209973.P13260867192556402784

`lcm(4, A005843(round(A209984(n)/32)))`
-/

namespace A209973.P13260867192556402784
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 4 (A005843 (SequenceMachineLib.roundAway ((A209984 n : ℚ) / 32)).toNat)

end

end A209973.P13260867192556402784

/-!
# A209974: a(n) = A209973(n)/4.

The programs for A209974, the canonical program `A209974.P4619457533679587758` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A209974 has offset 0).

The definition of A209974 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A126246, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A209974.P6399257229933533766

`A209973(n)/4`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A209974.P6399257229933533766
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A209973 n : ℚ) / 4

end

end A209974.P6399257229933533766

namespace A209974

/-- `A209973(n)/4` -/
def P6399257229933533766.Spec : Prop :=
  ∀ n, P6399257229933533766.a n = (A209974 n : ℚ)

end A209974

/-! ## A209974.P4619457533679587758

`a(n-1)+2*A126246(n)-A000010(n)` with `a(0)=0, a(1)=0`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A209974

/-- `a(n-1)+2*A126246(n)-A000010(n)` -/
def P4619457533679587758.Spec : Prop :=
  ∀ n, P4619457533679587758.a n = A209974 n

theorem P4619457533679587758.correct : P4619457533679587758.Spec := by
  intro n
  simp only [A209974]

end A209974

/-! ## A209974.P9631905443309395056

`round(A209984(n)/32)`
-/

namespace A209974.P9631905443309395056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A209984 n : ℚ) / 32)

end

end A209974.P9631905443309395056

namespace A209974

/-- `round(A209984(n)/32)` -/
def P9631905443309395056.Spec : Prop :=
  ∀ n, P9631905443309395056.a n = A209974 n

end A209974

/-! ## A209974.P15666789416096445464

`ceil(A209984(n-char[1])/32)`
-/

namespace A209974.P15666789416096445464
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A209984 (n - (if ∃ j, f1 j = n then 1 else 0)) : ℚ) / 32⌉

end

end A209974.P15666789416096445464

namespace A209974

/-- `ceil(A209984(n-char[1])/32)` -/
def P15666789416096445464.Spec : Prop :=
  ∀ n, P15666789416096445464.a n = A209974 n

end A209974

/-! ## A209974.P73152732561401525

`ceil(A209984(n)/32)-A063524(n)`
-/

namespace A209974.P73152732561401525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A209984 n : ℚ) / 32⌉ - A063524 n

end

end A209974.P73152732561401525

namespace A209974

/-- `ceil(A209984(n)/32)-A063524(n)` -/
def P73152732561401525.Spec : Prop :=
  ∀ n, P73152732561401525.a n = A209974 n

end A209974

/-! ## A209974.P17057770683921626314

`ceil(A209984(n)/32*A060576(n))`
-/

namespace A209974.P17057770683921626314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A209984 n : ℚ) / 32 * (A060576 n : ℚ)⌉

end

end A209974.P17057770683921626314

namespace A209974

/-- `ceil(A209984(n)/32*A060576(n))` -/
def P17057770683921626314.Spec : Prop :=
  ∀ n, P17057770683921626314.a n = A209974 n

end A209974

/-! ## A209974.P15683126905525449196

`ceil(A209984(n)/32)%A061600(n)`
-/

namespace A209974.P15683126905525449196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌈(A209984 n : ℚ) / 32⌉ (A061600 n)

end

end A209974.P15683126905525449196

namespace A209974

/-- `ceil(A209984(n)/32)%A061600(n)` -/
def P15683126905525449196.Spec : Prop :=
  ∀ n, P15683126905525449196.a n = A209974 n

end A209974

/-! ## A209974.P4358696110797907583

`A000040(n+1)²%3*ceil(A209984(n)/32)`
-/

namespace A209974.P4358696110797907583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1) ^ 2) 3 * ⌈(A209984 n : ℚ) / 32⌉

end

end A209974.P4358696110797907583

namespace A209974

/-- `A000040(n+1)²%3*ceil(A209984(n)/32)` -/
def P4358696110797907583.Spec : Prop :=
  ∀ n, P4358696110797907583.a n = A209974 n

end A209974

/-! ## A209974.P9563484959596063821

`ceil(A209984(n)/32)*A057427(A004526(n))`
-/

namespace A209974.P9563484959596063821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A209984 n : ℚ) / 32⌉ * A057427 (A004526 n).toNat

end

end A209974.P9563484959596063821

namespace A209974

/-- `ceil(A209984(n)/32)*A057427(A004526(n))` -/
def P9563484959596063821.Spec : Prop :=
  ∀ n, P9563484959596063821.a n = A209974 n

end A209974

/-! ## A209974.P16151130365446099146

`ceil(A209984(n)/32)*A057427(A008796(n))`
-/

namespace A209974.P16151130365446099146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A209984 n : ℚ) / 32⌉ * A057427 (A008796 n).toNat

end

end A209974.P16151130365446099146

namespace A209974

/-- `ceil(A209984(n)/32)*A057427(A008796(n))` -/
def P16151130365446099146.Spec : Prop :=
  ∀ n, P16151130365446099146.a n = A209974 n

end A209974

/-! ## A209974.P16337437508610065725

`ceil(A209984(n)/32)*A059841(A000010(n+1))`
-/

namespace A209974.P16337437508610065725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A209984 n : ℚ) / 32⌉ * A059841 (A000010 (n + 1)).toNat

end

end A209974.P16337437508610065725

namespace A209974

/-- `ceil(A209984(n)/32)*A059841(A000010(n+1))` -/
def P16337437508610065725.Spec : Prop :=
  ∀ n, P16337437508610065725.a n = A209974 n

end A209974

/-! ## A209974.P17426223776482770992

`round(A209985(n)/8)`
-/

namespace A209974.P17426223776482770992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A209985 n : ℚ) / 8)

end

end A209974.P17426223776482770992

namespace A209974

/-- `round(A209985(n)/8)` -/
def P17426223776482770992.Spec : Prop :=
  ∀ n, P17426223776482770992.a n = A209974 n

end A209974

/-!
# A209975: Number of 2 X 2 matrices having all elements in {0,1,...,n} and determinant 3.

The programs for A209975, there is no canonical definition to state claims against.
-/

/-! ## A209975.P8779377446132498997

`A209987(n)-(A157928(n)+char[2])`
-/

namespace A209975.P8779377446132498997
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209987 n - (A157928 n + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ))

end

end A209975.P8779377446132498997

/-! ## A209975.P12159053330508056614

`A209987((n-1)*val(a(n-1), 10)+n)-A157928(n)` with `a(0)=0, a(1)=0, a(2)=1`
-/

namespace A209975.P12159053330508056614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1] fun n a =>
  A209987 (((n : ℤ) - 1) * (SequenceMachineLib.valuation (a (n - 1)).toNat 10 : ℤ) + (n : ℤ)).toNat - A157928 n

end

end A209975.P12159053330508056614

/-! ## A209975.P3300894330619499346

`A004273(floor(A209987(n)/2))`
-/

namespace A209975.P3300894330619499346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 ⌊(A209987 n : ℚ) / 2⌋.toNat

end

end A209975.P3300894330619499346

/-! ## A209975.P17319233943267629684

`A042948(floor(A209987(n)/2))`
-/

namespace A209975.P17319233943267629684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042948 ⌊(A209987 n : ℚ) / 2⌋.toNat

end

end A209975.P17319233943267629684

/-! ## A209975.P2116050370088773908

`A004277(floor(A209987(n)/2))-1`
-/

namespace A209975.P2116050370088773908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 ⌊(A209987 n : ℚ) / 2⌋.toNat - 1

end

end A209975.P2116050370088773908

/-! ## A209975.P9449157771987658497

`A289207(or(1, A209987(n)))`
-/

namespace A209975.P9449157771987658497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (Int.lor 1 (A209987 n)).toNat

end

end A209975.P9449157771987658497

/-! ## A209975.P4769154445848036082

`∏{d}[2*floor(A209987(n)/2), A014963(#)]-1`
-/

namespace A209975.P4769154445848036082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ⌊(A209987 n : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A014963 d - 1

end

end A209975.P4769154445848036082

/-! ## A209975.P9692876692278505539

`A004273(A004525(A209987(n)))`
-/

namespace A209975.P9692876692278505539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A004525 (A209987 n).toNat).toNat

end

end A209975.P9692876692278505539

/-! ## A209975.P15446769077470555471

`A106609(A209987(n)-A157928(n))`
-/

namespace A209975.P15446769077470555471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106609 (A209987 n - A157928 n).toNat

end

end A209975.P15446769077470555471

/-!
# A209976: Number of 2 X 2 matrices having all elements in {0,1,...,n} and determinant 4.

The programs for A209976, there is no canonical definition to state claims against.
-/

/-! ## A209976.P8390627414376173607

`p?[A046938(n)]%A062648(n+1)`
-/

namespace A209976.P8390627414376173607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046938 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A062648 (n + 1))

end

end A209976.P8390627414376173607

/-!
# A209978: a(n) = A196227(n)/2.

The programs for A209978, the canonical program `A209978.P9884269907601599260` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A209978 has offset 0).

The definition of A209978 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 263 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A209978.P17267207637826406476

`A196227(n)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A209978.P17267207637826406476
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A196227 n : ℚ) / 2

end

end A209978.P17267207637826406476

namespace A209978

/-- `A196227(n)/2` -/
def P17267207637826406476.Spec : Prop :=
  ∀ n, P17267207637826406476.a n = (A209978 n : ℚ)

end A209978

/-! ## A209978.P12509528689752833726

`A209979(n)/4`
-/

namespace A209978.P12509528689752833726
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A209979 n : ℚ) / 4

end

end A209978.P12509528689752833726

namespace A209978

/-- `A209979(n)/4` -/
def P12509528689752833726.Spec : Prop :=
  ∀ n, P12509528689752833726.a n = (A209978 n : ℚ)

end A209978

/-! ## A209978.P10702309355039890455

`eq[1, A038568(n)]-n`
-/

namespace A209978.P10702309355039890455
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038568 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - (n : ℤ)

end

end A209978.P10702309355039890455

namespace A209978

/-- `eq[1, A038568(n)]-n` -/
def P10702309355039890455.Spec : Prop :=
  ∀ n, P10702309355039890455.a n = A209978 n

end A209978

/-! ## A209978.P9884269907601599260

`floor(A171503(n)/2-n)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A209978

/-- `floor(A171503(n)/2-n)` -/
def P9884269907601599260.Spec : Prop :=
  ∀ n, P9884269907601599260.a n = A209978 n

theorem P9884269907601599260.correct : P9884269907601599260.Spec := by
  intro n
  simp only [A209978]

end A209978

/-! ## A209978.P12576645333280291785

`round(A209982(n)/16-n)`
-/

namespace A209978.P12576645333280291785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A209982 n : ℚ) / 16 - (n : ℚ))

end

end A209978.P12576645333280291785

namespace A209978

/-- `round(A209982(n)/16-n)` -/
def P12576645333280291785.Spec : Prop :=
  ∀ n, P12576645333280291785.a n = A209978 n

end A209978

/-! ## A209978.P6808689695968437893

`A206350(n+1)-(n+1)`
-/

namespace A209978.P6808689695968437893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206350 (n + 1) - (n + 1 : ℤ)

end

end A209978.P6808689695968437893

namespace A209978

/-- `A206350(n+1)-(n+1)` -/
def P6808689695968437893.Spec : Prop :=
  ∀ n, P6808689695968437893.a n = A209978 n

end A209978

/-! ## A209978.P3375005416965678571

`xor(1, A049691(n))-(n+1)`
-/

namespace A209978.P3375005416965678571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A049691 n) - (n + 1 : ℤ)

end

end A209978.P3375005416965678571

namespace A209978

/-- `xor(1, A049691(n))-(n+1)` -/
def P3375005416965678571.Spec : Prop :=
  ∀ n, P3375005416965678571.a n = A209978 n

end A209978

/-! ## A209978.P1330210240414977792

`abs(2-A049632(n)+n)-1`
-/

namespace A209978.P1330210240414977792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - A049632 n + (n : ℤ)| - 1

end

end A209978.P1330210240414977792

namespace A209978

/-- `abs(2-A049632(n)+n)-1` -/
def P1330210240414977792.Spec : Prop :=
  ∀ n, P1330210240414977792.a n = A209978 n

end A209978

/-! ## A209978.P6570818979160870744

`xor(1, A049644(2*n))-(n+1)`
-/

namespace A209978.P6570818979160870744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A049644 (2 * n)) - (n + 1 : ℤ)

end

end A209978.P6570818979160870744

namespace A209978

/-- `xor(1, A049644(2*n))-(n+1)` -/
def P6570818979160870744.Spec : Prop :=
  ∀ n, P6570818979160870744.a n = A209978 n

end A209978

/-! ## A209978.P6420818918447413872

`floor(2/acot(A002088(n))-(n+1))`
-/

namespace A209978.P6420818918447413872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 / SequenceMachineLib.acot (A002088 n : ℝ) - (n + 1 : ℝ)⌋

end

end A209978.P6420818918447413872

namespace A209978

/-- `floor(2/acot(A002088(n))-(n+1))` -/
def P6420818918447413872.Spec : Prop :=
  ∀ n, P6420818918447413872.a n = A209978 n

end A209978

/-! ## A209978.P14712784912259079054

`A049696(n)-(n+1)%(2*n+1)`
-/

namespace A209978.P14712784912259079054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049696 n - (((n + 1) % (2 * n + 1) : ℕ) : ℤ)

end

end A209978.P14712784912259079054

namespace A209978

/-- `A049696(n)-(n+1)%(2*n+1)` -/
def P14712784912259079054.Spec : Prop :=
  ∀ n, P14712784912259079054.a n = A209978 n

end A209978

/-! ## A209978.P8769427477719170419

`A206297(n+1)-ceil(atan(n+1))-n`
-/

namespace A209978.P8769427477719170419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206297 (n + 1) - ⌈Real.arctan (n + 1 : ℝ)⌉ - (n : ℤ)

end

end A209978.P8769427477719170419

namespace A209978

/-- `A206297(n+1)-ceil(atan(n+1))-n` -/
def P8769427477719170419.Spec : Prop :=
  ∀ n, P8769427477719170419.a n = A209978 n

end A209978

/-! ## A209978.P807337106737263282

`a(n-1)+2*A000010(n)-1` with `a(0)=0, a(1)=0`
-/

namespace A209978.P807337106737263282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  a (n - 1) + 2 * A000010 n - 1

end

end A209978.P807337106737263282

namespace A209978

/-- `a(n-1)+2*A000010(n)-1` -/
def P807337106737263282.Spec : Prop :=
  ∀ n, P807337106737263282.a n = A209978 n

end A209978

/-! ## A209978.P12164164934199030300

`A049696(n)-A087156(n+1)`
-/

namespace A209978.P12164164934199030300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049696 n - A087156 (n + 1)

end

end A209978.P12164164934199030300

namespace A209978

/-- `A049696(n)-A087156(n+1)` -/
def P12164164934199030300.Spec : Prop :=
  ∀ n, P12164164934199030300.a n = A209978 n

end A209978

/-! ## A209978.P16494279173448987993

`A049691(n)-A114637(n+1)`
-/

namespace A209978.P16494279173448987993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049691 n - A114637 (n + 1)

end

end A209978.P16494279173448987993

namespace A209978

/-- `A049691(n)-A114637(n+1)` -/
def P16494279173448987993.Spec : Prop :=
  ∀ n, P16494279173448987993.a n = A209978 n

end A209978

/-! ## A209978.P4254935794623394131

`A049632(n)-A171463(n+1)`
-/

namespace A209978.P4254935794623394131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049632 n - A171463 (n + 1)

end

end A209978.P4254935794623394131

namespace A209978

/-- `A049632(n)-A171463(n+1)` -/
def P4254935794623394131.Spec : Prop :=
  ∀ n, P4254935794623394131.a n = A209978 n

end A209978

/-! ## A209978.P3127420044061162936

`A049696(n)-(A057427(n)+n)`
-/

namespace A209978.P3127420044061162936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049696 n - (A057427 n + (n : ℤ))

end

end A209978.P3127420044061162936

namespace A209978

/-- `A049696(n)-(A057427(n)+n)` -/
def P3127420044061162936.Spec : Prop :=
  ∀ n, P3127420044061162936.a n = A209978 n

end A209978

/-! ## A209978.P11615494448742596829

`A049696(n)+A057428(n)-n`
-/

namespace A209978.P11615494448742596829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049696 n + (A057428 n - (n : ℤ))

end

end A209978.P11615494448742596829

namespace A209978

/-- `A049696(n)+A057428(n)-n` -/
def P11615494448742596829.Spec : Prop :=
  ∀ n, P11615494448742596829.a n = A209978 n

end A209978

/-! ## A209978.P14271121217157941088

`A171503(n)-(A049696(n)+n)`
-/

namespace A209978.P14271121217157941088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171503 n - (A049696 n + (n : ℤ))

end

end A209978.P14271121217157941088

namespace A209978

/-- `A171503(n)-(A049696(n)+n)` -/
def P14271121217157941088.Spec : Prop :=
  ∀ n, P14271121217157941088.a n = A209978 n

end A209978

/-! ## A209978.P16819862855350728575

`A206297(n+1)-A065475(n+1)`
-/

namespace A209978.P16819862855350728575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206297 (n + 1) - A065475 (n + 1)

end

end A209978.P16819862855350728575

namespace A209978

/-- `A206297(n+1)-A065475(n+1)` -/
def P16819862855350728575.Spec : Prop :=
  ∀ n, P16819862855350728575.a n = A209978 n

end A209978

/-!
# A209979: Number of unimodular 2 X 2 matrices having all elements in {1,2,...,n}.

The programs for A209979, the canonical program `A209979.P11777341507779048097` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A209979 has offset 0).

The definition of A209979 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A209978, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A209979.P14629346754807609054

`2*A196227(n)`
-/

namespace A209979.P14629346754807609054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A196227 n

end

end A209979.P14629346754807609054

namespace A209979

/-- `2*A196227(n)` -/
def P14629346754807609054.Spec : Prop :=
  ∀ n, P14629346754807609054.a n = A209979 n

end A209979

/-! ## A209979.P11777341507779048097

`4*A209978(n)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A209979

/-- `4*A209978(n)` -/
def P11777341507779048097.Spec : Prop :=
  ∀ n, P11777341507779048097.a n = A209979 n

theorem P11777341507779048097.correct : P11777341507779048097.Spec := by
  intro n
  simp only [A209979]

end A209979

/-! ## A209979.P6855331918080828989

`4*(A206350(n+1)-(n+1))`
-/

namespace A209979.P6855331918080828989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A206350 (n + 1) - (n + 1 : ℤ))

end

end A209979.P6855331918080828989

namespace A209979

/-- `4*(A206350(n+1)-(n+1))` -/
def P6855331918080828989.Spec : Prop :=
  ∀ n, P6855331918080828989.a n = A209979 n

end A209979

/-! ## A209979.P1323733214741095754

`A196227(n-char[1])+A196227(n)`
-/

namespace A209979.P1323733214741095754
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196227 (n - (if ∃ j, f1 j = n then 1 else 0)) + A196227 n

end

end A209979.P1323733214741095754

namespace A209979

/-- `A196227(n-char[1])+A196227(n)` -/
def P1323733214741095754.Spec : Prop :=
  ∀ n, P1323733214741095754.a n = A209979 n

end A209979

/-! ## A209979.P13504533910650769092

`2*(A140466(n)-A163300(n+1))`
-/

namespace A209979.P13504533910650769092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A140466 n - A163300 (n + 1))

end

end A209979.P13504533910650769092

namespace A209979

/-- `2*(A140466(n)-A163300(n+1))` -/
def P13504533910650769092.Spec : Prop :=
  ∀ n, P13504533910650769092.a n = A209979 n

end A209979

/-! ## A209979.P10767753599026428197

`4*(A049691(n)-A114637(n+1))`
-/

namespace A209979.P10767753599026428197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A049691 n - A114637 (n + 1))

end

end A209979.P10767753599026428197

namespace A209979

/-- `4*(A049691(n)-A114637(n+1))` -/
def P10767753599026428197.Spec : Prop :=
  ∀ n, P10767753599026428197.a n = A209979 n

end A209979

/-! ## A209979.P3528168975205349604

`4*(A049632(n)-A171463(n+1))`
-/

namespace A209979.P3528168975205349604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A049632 n - A171463 (n + 1))

end

end A209979.P3528168975205349604

namespace A209979

/-- `4*(A049632(n)-A171463(n+1))` -/
def P3528168975205349604.Spec : Prop :=
  ∀ n, P3528168975205349604.a n = A209979 n

end A209979

/-! ## A209979.P1144337855861506116

`(A196227(n)+A196227(n))%A059306(n)`
-/

namespace A209979.P1144337855861506116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A196227 n + A196227 n) (A059306 n)

end

end A209979.P1144337855861506116

namespace A209979

/-- `(A196227(n)+A196227(n))%A059306(n)` -/
def P1144337855861506116.Spec : Prop :=
  ∀ n, P1144337855861506116.a n = A209979 n

end A209979

/-! ## A209979.P11135993051068571556

`A196227(n)+A209978(n)+A209978(n)`
-/

namespace A209979.P11135993051068571556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196227 n + (A209978 n + A209978 n)

end

end A209979.P11135993051068571556

namespace A209979

/-- `A196227(n)+A209978(n)+A209978(n)` -/
def P11135993051068571556.Spec : Prop :=
  ∀ n, P11135993051068571556.a n = A209979 n

end A209979

/-! ## A209979.P9717763898455941924

`A209994(n)-A134506(n)`
-/

namespace A209979.P9717763898455941924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209994 n - A134506 n

end

end A209979.P9717763898455941924

namespace A209979

/-- `A209994(n)-A134506(n)` -/
def P9717763898455941924.Spec : Prop :=
  ∀ n, P9717763898455941924.a n = A209979 n

end A209979

/-! ## A209979.P10105989544439687176

`2*(A209992(n)-A134506(n))`
-/

namespace A209979.P10105989544439687176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A209992 n - A134506 n)

end

end A209979.P10105989544439687176

namespace A209979

/-- `2*(A209992(n)-A134506(n))` -/
def P10105989544439687176.Spec : Prop :=
  ∀ n, P10105989544439687176.a n = A209979 n

end A209979

/-! ## A209979.P16912549558770751755

`2*(A209994(n)-A209992(n))`
-/

namespace A209979.P16912549558770751755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A209994 n - A209992 n)

end

end A209979.P16912549558770751755

namespace A209979

/-- `2*(A209994(n)-A209992(n))` -/
def P16912549558770751755.Spec : Prop :=
  ∀ n, P16912549558770751755.a n = A209979 n

end A209979

/-! ## A209979.P3816194271988289977

`A008586(A209978(n))`
-/

namespace A209979.P3816194271988289977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008586 (A209978 n).toNat

end

end A209979.P3816194271988289977

namespace A209979

/-- `A008586(A209978(n))` -/
def P3816194271988289977.Spec : Prop :=
  ∀ n, P3816194271988289977.a n = A209979 n

end A209979

/-!
# A209980: (A197168)/2.

The programs for A209980, there is no canonical definition to state claims against.
-/

/-! ## A209980.P604982549155190072

`A197168(n)/2`
-/

namespace A209980.P604982549155190072
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A197168 n : ℚ) / 2

end

end A209980.P604982549155190072

/-! ## A209980.P18307203776779781792

`(A209973(n)-A163300(A267872(n)))/2`
-/

namespace A209980.P18307203776779781792
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A209973 n - A163300 (A267872 n).toNat : ℚ) / 2

end

end A209980.P18307203776779781792

/-! ## A209980.P16150329598053418980

`2^A008683(A003629(n+1))*A197168(n)`
-/

namespace A209980.P16150329598053418980
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A008683 (A003629 (n + 1)).toNat : ℤ) * (A197168 n : ℚ)

end

end A209980.P16150329598053418980

/-! ## A209980.P10941481657054184486

`2^A008683(A045390(n+1))*A197168(n)`
-/

namespace A209980.P10941481657054184486
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A008683 (A045390 (n + 1)).toNat : ℤ) * (A197168 n : ℚ)

end

end A209980.P10941481657054184486

/-! ## A209980.P4989086277034870705

`2^A008683(A289750(n+2))*A197168(n)`
-/

namespace A209980.P4989086277034870705
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A008683 (A289750 (n + 2)).toNat : ℤ) * (A197168 n : ℚ)

end

end A209980.P4989086277034870705

/-! ## A209980.P9235979402508372462

`(A212055(n)-A212053(n))/2`
-/

namespace A209980.P9235979402508372462
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A212055 n - A212053 n : ℚ) / 2

end

end A209980.P9235979402508372462

/-! ## A209980.P7081110412754221223

`A273943(A197168(n))`
-/

namespace A209980.P7081110412754221223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A197168 n).toNat

end

end A209980.P7081110412754221223

/-! ## A209980.P6081660074224195064

`(A212054(n)-A212056(n))/2`
-/

namespace A209980.P6081660074224195064
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A212054 n - A212056 n : ℚ) / 2

end

end A209980.P6081660074224195064

/-! ## A209980.P3482212844904012969

`A014682(lcm(2, A197168(n)))`
-/

namespace A209980.P3482212844904012969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (Int.lcm 2 (A197168 n))

end

end A209980.P3482212844904012969

/-! ## A209980.P13474627254157263629

`A014682(A212054(n)-A212056(n))`
-/

namespace A209980.P13474627254157263629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A212054 n - A212056 n).toNat

end

end A209980.P13474627254157263629

/-!
# A209981: Number of singular 2 X 2 matrices having all elements in {-n,...,n}.

The programs for A209981, there is no canonical definition to state claims against.
-/

/-! ## A209981.P8135533215731548545

`8*A134506(n)+(4*n+1)²`
-/

namespace A209981.P8135533215731548545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A134506 n + ((4 * n + 1) ^ 2 : ℤ)

end

end A209981.P8135533215731548545

/-! ## A209981.P667326356217647767

`2*A211147(n)-A016756(n)`
-/

namespace A209981.P667326356217647767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A211147 n - A016756 n

end

end A209981.P667326356217647767

/-! ## A209981.P13115855012419509509

`2*A211147(n)-A016754(n)²`
-/

namespace A209981.P13115855012419509509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A211147 n - A016754 n ^ 2

end

end A209981.P13115855012419509509

/-! ## A209981.P5366720573262556840

`A016756(n)%A211149(A028310(n))`
-/

namespace A209981.P5366720573262556840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016756 n) (A211149 (A028310 n).toNat)

end

end A209981.P5366720573262556840

/-! ## A209981.P18332537584825575257

`A016754(2*n)+A008590(A134506(n))`
-/

namespace A209981.P18332537584825575257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016754 (2 * n) + A008590 (A134506 n).toNat

end

end A209981.P18332537584825575257

/-!
# A209982: Number of 2 X 2 matrices having all elements in {-n,...,n} and determinant 1.

The programs for A209982, the canonical program `A209982.P8895213020285602242` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A209982 has offset 0).

The definition of A209982 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A209982.P12407807967273915708

`record[(A209988(n)-A209984(n))/4]`
-/

namespace A209982.P12407807967273915708
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A209988 n - A209984 n : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A209982.P12407807967273915708

namespace A209982

/-- `record[(A209988(n)-A209984(n))/4]` -/
def P12407807967273915708.Spec : Prop :=
  ∀ n, P12407807967273915708.a n = (A209982 n : ℚ)

end A209982

/-! ## A209982.P8895213020285602242

`4*(A057428(n)+2*A171503(n))`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A209982

/-- `4*(A057428(n)+2*A171503(n))` -/
def P8895213020285602242.Spec : Prop :=
  ∀ n, P8895213020285602242.a n = A209982 n

theorem P8895213020285602242.correct : P8895213020285602242.Spec := by
  intro n
  simp only [A209982]

end A209982

/-! ## A209982.P16402742793790863776

`4*(A057428(n)+lcm(2-A100449(n), 2%(n+2)))`
-/

namespace A209982.P16402742793790863776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A057428 n + (Int.lcm (2 - A100449 n) ((2 % (n + 2) : ℕ) : ℤ) : ℤ))

end

end A209982.P16402742793790863776

namespace A209982

/-- `4*(A057428(n)+lcm(2-A100449(n), 2%(n+2)))` -/
def P16402742793790863776.Spec : Prop :=
  ∀ n, P16402742793790863776.a n = A209982 n

end A209982

/-! ## A209982.P13620128549984719685

`4*(A209973(2*n)-A171503(2*n))`
-/

namespace A209982.P13620128549984719685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A209973 (2 * n) - A171503 (2 * n))

end

end A209982.P13620128549984719685

namespace A209982

/-- `4*(A209973(2*n)-A171503(2*n))` -/
def P13620128549984719685.Spec : Prop :=
  ∀ n, P13620128549984719685.a n = A209982 n

end A209982

/-! ## A209982.P6715548691410673278

`4*A209973(2*n+1)%A171503(2*n+1)`
-/

namespace A209982.P6715548691410673278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * Int.tmod (A209973 (2 * n + 1)) (A171503 (2 * n + 1))

end

end A209982.P6715548691410673278

namespace A209982

/-- `4*A209973(2*n+1)%A171503(2*n+1)` -/
def P6715548691410673278.Spec : Prop :=
  ∀ n, P6715548691410673278.a n = A209982 n

end A209982

/-! ## A209982.P13703667432005025057

`2*and(-2, A113770(A002088(n)))`
-/

namespace A209982.P13703667432005025057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * Int.land (-2) (A113770 (A002088 n).toNat)

end

end A209982.P13703667432005025057

namespace A209982

/-- `2*and(-2, A113770(A002088(n)))` -/
def P13703667432005025057.Spec : Prop :=
  ∀ n, P13703667432005025057.a n = A209982 n

end A209982

/-! ## A209982.P3624893898842138401

`2*(A113770(A002088(n))-A000007(n))`
-/

namespace A209982.P3624893898842138401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A113770 (A002088 n).toNat - A000007 n)

end

end A209982.P3624893898842138401

namespace A209982

/-- `2*(A113770(A002088(n))-A000007(n))` -/
def P3624893898842138401.Spec : Prop :=
  ∀ n, P3624893898842138401.a n = A209982 n

end A209982

/-! ## A209982.P10819265581088472414

`2*A113770(A002088(n))%A004009(n)`
-/

namespace A209982.P10819265581088472414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * Int.tmod (A113770 (A002088 n).toNat) (A004009 n)

end

end A209982.P10819265581088472414

namespace A209982

/-- `2*A113770(A002088(n))%A004009(n)` -/
def P10819265581088472414.Spec : Prop :=
  ∀ n, P10819265581088472414.a n = A209982 n

end A209982

/-! ## A209982.P14969971780250766413

`and(2, A113770(n))*A113770(A002088(n))`
-/

namespace A209982.P14969971780250766413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 2 (A113770 n) * A113770 (A002088 n).toNat

end

end A209982.P14969971780250766413

namespace A209982

/-- `and(2, A113770(n))*A113770(A002088(n))` -/
def P14969971780250766413.Spec : Prop :=
  ∀ n, P14969971780250766413.a n = A209982 n

end A209982

/-! ## A209982.P11437152734456012861

`2*(A020639(A000010(n+2))-(2-A113770(A002088(n))))`
-/

namespace A209982.P11437152734456012861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A020639 (A000010 (n + 2)).toNat - (2 - A113770 (A002088 n).toNat))

end

end A209982.P11437152734456012861

namespace A209982

/-- `2*(A020639(A000010(n+2))-(2-A113770(A002088(n))))` -/
def P11437152734456012861.Spec : Prop :=
  ∀ n, P11437152734456012861.a n = A209982 n

end A209982

/-! ## A209982.P10360626505524734120

`2*(2*(A210000(n)-A157532(n+1))+4)`
-/

namespace A209982.P10360626505524734120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (2 * (A210000 n - A157532 (n + 1)) + 4)

end

end A209982.P10360626505524734120

namespace A209982

/-- `2*(2*(A210000(n)-A157532(n+1))+4)` -/
def P10360626505524734120.Spec : Prop :=
  ∀ n, P10360626505524734120.a n = A209982 n

end A209982

/-! ## A209982.P17196269431132276954

`2*A209983(n)`
-/

namespace A209982.P17196269431132276954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A209983 n

end

end A209982.P17196269431132276954

namespace A209982

/-- `2*A209983(n)` -/
def P17196269431132276954.Spec : Prop :=
  ∀ n, P17196269431132276954.a n = A209982 n

end A209982

/-! ## A209982.P10075477482490671542

`lcm(A040002(n), A209983(n))`
-/

namespace A209982.P10075477482490671542
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A040002 n) (A209983 n)

end

end A209982.P10075477482490671542

namespace A209982

/-- `lcm(A040002(n), A209983(n))` -/
def P10075477482490671542.Spec : Prop :=
  ∀ n, (P10075477482490671542.a n : ℤ) = A209982 n

end A209982

/-! ## A209982.P13742138475398165926

`lcm(4, A209983(A005843(n)-n))`
-/

namespace A209982.P13742138475398165926
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 4 (A209983 (A005843 n - (n : ℤ)).toNat)

end

end A209982.P13742138475398165926

namespace A209982

/-- `lcm(4, A209983(A005843(n)-n))` -/
def P13742138475398165926.Spec : Prop :=
  ∀ n, (P13742138475398165926.a n : ℤ) = A209982 n

end A209982

/-! ## A209982.P1159345570622011263

`A209983(A005843(n)/2)+A209983(n)`
-/

namespace A209982.P1159345570622011263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209983 (SequenceMachineLib.roundAway ((A005843 n : ℚ) / 2)).toNat + A209983 n

end

end A209982.P1159345570622011263

namespace A209982

/-- `A209983(A005843(n)/2)+A209983(n)` -/
def P1159345570622011263.Spec : Prop :=
  ∀ n, P1159345570622011263.a n = A209982 n

end A209982

/-! ## A209982.P4825735826067561831

`A209983(A005843(n)-n)+A209983(n)`
-/

namespace A209982.P4825735826067561831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209983 (A005843 n - (n : ℤ)).toNat + A209983 n

end

end A209982.P4825735826067561831

namespace A209982

/-- `A209983(A005843(n)-n)+A209983(n)` -/
def P4825735826067561831.Spec : Prop :=
  ∀ n, P4825735826067561831.a n = A209982 n

end A209982

/-! ## A209982.P15762254763272591303

`A209983(n)+A209983(n)%A001567(n+1)`
-/

namespace A209982.P15762254763272591303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209983 n + Int.tmod (A209983 n) (A001567 (n + 1))

end

end A209982.P15762254763272591303

namespace A209982

/-- `A209983(n)+A209983(n)%A001567(n+1)` -/
def P15762254763272591303.Spec : Prop :=
  ∀ n, P15762254763272591303.a n = A209982 n

end A209982

/-! ## A209982.P11966012171911317365

`2*A019427(A171503(n))`
-/

namespace A209982.P11966012171911317365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A019427 (A171503 n).toNat

end

end A209982.P11966012171911317365

namespace A209982

/-- `2*A019427(A171503(n))` -/
def P11966012171911317365.Spec : Prop :=
  ∀ n, P11966012171911317365.a n = A209982 n

end A209982

/-! ## A209982.P13660071926346987553

`2*A019427(A210000(n)/2)`
-/

namespace A209982.P13660071926346987553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A019427 (SequenceMachineLib.roundAway ((A210000 n : ℚ) / 2)).toNat

end

end A209982.P13660071926346987553

namespace A209982

/-- `2*A019427(A210000(n)/2)` -/
def P13660071926346987553.Spec : Prop :=
  ∀ n, P13660071926346987553.a n = A209982 n

end A209982

/-!
# A209983: (A209982)/2.

The programs for A209983, the canonical program `A209983.P18438858037986034788` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A209983 has offset 0).

The definition of A209983 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 130 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A209983.P1001108778476246851

`A209982(n)/2`
-/

namespace A209983.P1001108778476246851
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A209982 n : ℚ) / 2

end

end A209983.P1001108778476246851

namespace A209983

/-- `A209982(n)/2` -/
def P1001108778476246851.Spec : Prop :=
  ∀ n, P1001108778476246851.a n = (A209983 n : ℚ)

end A209983

/-! ## A209983.P8808823598486845283

`2*(A210000(n)-floor(atan(n+1)))`
-/

namespace A209983.P8808823598486845283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A210000 n - ⌊Real.arctan (n + 1 : ℝ)⌋)

end

end A209983.P8808823598486845283

namespace A209983

/-- `2*(A210000(n)-floor(atan(n+1)))` -/
def P8808823598486845283.Spec : Prop :=
  ∀ n, P8808823598486845283.a n = A209983 n

end A209983

/-! ## A209983.P7442431782185083745

`a(n-1)+16*A000010(n)` with `a(0)=0, a(1)=10`
-/

namespace A209983.P7442431782185083745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 10] fun n a =>
  a (n - 1) + 16 * A000010 n

end

end A209983.P7442431782185083745

namespace A209983

/-- `a(n-1)+16*A000010(n)` -/
def P7442431782185083745.Spec : Prop :=
  ∀ n, P7442431782185083745.a n = A209983 n

end A209983

/-! ## A209983.P15283813317060848169

`and(-2, A113770(A002088(n)))`
-/

namespace A209983.P15283813317060848169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-2) (A113770 (A002088 n).toNat)

end

end A209983.P15283813317060848169

namespace A209983

/-- `and(-2, A113770(A002088(n)))` -/
def P15283813317060848169.Spec : Prop :=
  ∀ n, P15283813317060848169.a n = A209983 n

end A209983

/-! ## A209983.P1029748675068591019

`2*(A210000(n)+A057428(n))`
-/

namespace A209983.P1029748675068591019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A210000 n + A057428 n)

end

end A209983.P1029748675068591019

namespace A209983

/-- `2*(A210000(n)+A057428(n))` -/
def P1029748675068591019.Spec : Prop :=
  ∀ n, P1029748675068591019.a n = A209983 n

end A209983

/-! ## A209983.P14743547822144038425

`2*(A210000(n)-A057427(n))`
-/

namespace A209983.P14743547822144038425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A210000 n - A057427 n)

end

end A209983.P14743547822144038425

namespace A209983

/-- `2*(A210000(n)-A057427(n))` -/
def P14743547822144038425.Spec : Prop :=
  ∀ n, P14743547822144038425.a n = A209983 n

end A209983

/-! ## A209983.P10430697264140775617

`floor(sqrt(A209982(n)*A210000(n)))`
-/

namespace A209983.P10430697264140775617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A209982 n * A210000 n)

end

end A209983.P10430697264140775617

namespace A209983

/-- `floor(sqrt(A209982(n)*A210000(n)))` -/
def P10430697264140775617.Spec : Prop :=
  ∀ n, P10430697264140775617.a n = A209983 n

end A209983

/-! ## A209983.P18438858037986034788

`2*(A057428(n)+2*A171503(n))`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A209983

/-- `2*(A057428(n)+2*A171503(n))` -/
def P18438858037986034788.Spec : Prop :=
  ∀ n, P18438858037986034788.a n = A209983 n

theorem P18438858037986034788.correct : P18438858037986034788.Spec := by
  intro n
  simp only [A209983]

end A209983

/-! ## A209983.P3773034443923438115

`4*n+A210000(n)+A209979(n)`
-/

namespace A209983.P3773034443923438115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n : ℤ) + (A210000 n + A209979 n)

end

end A209983.P3773034443923438115

namespace A209983

/-- `4*n+A210000(n)+A209979(n)` -/
def P3773034443923438115.Spec : Prop :=
  ∀ n, P3773034443923438115.a n = A209983 n

end A209983

/-! ## A209983.P875274243148630820

`record[(A209988(n)-A209984(n))/4]/2`
-/

namespace A209983.P875274243148630820
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A209988 n - A209984 n : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) / 2

end

end A209983.P875274243148630820

namespace A209983

/-- `record[(A209988(n)-A209984(n))/4]/2` -/
def P875274243148630820.Spec : Prop :=
  ∀ n, P875274243148630820.a n = (A209983 n : ℚ)

end A209983

/-! ## A209983.P1602607612448848132

`2*(A210000(n)-A157532(n+1))+4`
-/

namespace A209983.P1602607612448848132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A210000 n - A157532 (n + 1)) + 4

end

end A209983.P1602607612448848132

namespace A209983

/-- `2*(A210000(n)-A157532(n+1))+4` -/
def P1602607612448848132.Spec : Prop :=
  ∀ n, P1602607612448848132.a n = A209983 n

end A209983

/-! ## A209983.P3102197929065396650

`2*(A209973(2*n)-A171503(2*n))`
-/

namespace A209983.P3102197929065396650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A209973 (2 * n) - A171503 (2 * n))

end

end A209983.P3102197929065396650

namespace A209983

/-- `2*(A209973(2*n)-A171503(2*n))` -/
def P3102197929065396650.Spec : Prop :=
  ∀ n, P3102197929065396650.a n = A209983 n

end A209983

/-! ## A209983.P15521502184827277958

`4*A209973(2*n+1)%A171503(2*n+1)/2`
-/

namespace A209983.P15521502184827277958
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 * Int.tmod (A209973 (2 * n + 1)) (A171503 (2 * n + 1)) : ℚ) / 2

end

end A209983.P15521502184827277958

namespace A209983

/-- `4*A209973(2*n+1)%A171503(2*n+1)/2` -/
def P15521502184827277958.Spec : Prop :=
  ∀ n, P15521502184827277958.a n = (A209983 n : ℚ)

end A209983

/-! ## A209983.P2993673880251639192

`A113770(A002088(n))-A000007(n)`
-/

namespace A209983.P2993673880251639192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113770 (A002088 n).toNat - A000007 n

end

end A209983.P2993673880251639192

namespace A209983

/-- `A113770(A002088(n))-A000007(n)` -/
def P2993673880251639192.Spec : Prop :=
  ∀ n, P2993673880251639192.a n = A209983 n

end A209983

/-! ## A209983.P18167033796549685794

`A073424(∑[n])*A113770(A002088(n))`
-/

namespace A209983.P18167033796549685794
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073424 (∑ j ∈ Finset.range (n + 1), f1 j) * A113770 (A002088 n).toNat

end

end A209983.P18167033796549685794

namespace A209983

/-- `A073424(∑[n])*A113770(A002088(n))` -/
def P18167033796549685794.Spec : Prop :=
  ∀ n, P18167033796549685794.a n = A209983 n

end A209983

/-! ## A209983.P13014099200860989305

`A113770(A002088(n))-and(1, A113770(n))`
-/

namespace A209983.P13014099200860989305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113770 (A002088 n).toNat - Int.land 1 (A113770 n)

end

end A209983.P13014099200860989305

namespace A209983

/-- `A113770(A002088(n))-and(1, A113770(n))` -/
def P13014099200860989305.Spec : Prop :=
  ∀ n, P13014099200860989305.a n = A209983 n

end A209983

/-! ## A209983.P10105151183633543562

`A113770(A002088(n))+n-A028310(n)`
-/

namespace A209983.P10105151183633543562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113770 (A002088 n).toNat + ((n : ℤ) - A028310 n)

end

end A209983.P10105151183633543562

namespace A209983

/-- `A113770(A002088(n))+n-A028310(n)` -/
def P10105151183633543562.Spec : Prop :=
  ∀ n, P10105151183633543562.a n = A209983 n

end A209983

/-! ## A209983.P10534434616685558227

`A020639(A000010(n+2))-(2-A113770(A002088(n)))`
-/

namespace A209983.P10534434616685558227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A000010 (n + 2)).toNat - (2 - A113770 (A002088 n).toNat)

end

end A209983.P10534434616685558227

namespace A209983

/-- `A020639(A000010(n+2))-(2-A113770(A002088(n)))` -/
def P10534434616685558227.Spec : Prop :=
  ∀ n, P10534434616685558227.a n = A209983 n

end A209983

/-! ## A209983.P13642907612217444895

`A019427(A171503(n))`
-/

namespace A209983.P13642907612217444895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019427 (A171503 n).toNat

end

end A209983.P13642907612217444895

namespace A209983

/-- `A019427(A171503(n))` -/
def P13642907612217444895.Spec : Prop :=
  ∀ n, P13642907612217444895.a n = A209983 n

end A209983

/-!
# A209984: Number of 2 X 2 matrices having all elements in {-n,...n} and determinant 2.

The programs for A209984, there is no canonical definition to state claims against.
-/

/-! ## A209984.P8691980239767194456

`4*(A057428(n)+2*(A209973(n)+char[1]))`
-/

namespace A209984.P8691980239767194456
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A057428 n + 2 * (A209973 n + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)))

end

end A209984.P8691980239767194456

/-! ## A209984.P7101819936036825133

`4*(2*(A209973(n)+char[1])-A057427(n))`
-/

namespace A209984.P7101819936036825133
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (2 * (A209973 n + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)) - A057427 n)

end

end A209984.P7101819936036825133

/-! ## A209984.P3890315827572163771

`4*(2*(A209973(n)+char[1])-A000040(n+1)%2)`
-/

namespace A209984.P3890315827572163771
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (2 * (A209973 n + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)) - Int.tmod (A000040 (n + 1)) 2)

end

end A209984.P3890315827572163771

/-! ## A209984.P1283423023316412621

`4*(2*(A209973(n)+char[1])-A008683(2*A000040(n+1)))`
-/

namespace A209984.P1283423023316412621
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (2 * (A209973 n + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)) - A008683 (2 * A000040 (n + 1)).toNat)

end

end A209984.P1283423023316412621

/-! ## A209984.P12381877635697523849

`4*(2*(A209973(n)+char[1])-A165471(n²))`
-/

namespace A209984.P12381877635697523849
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (2 * (A209973 n + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)) - A165471 (n ^ 2))

end

end A209984.P12381877635697523849

/-! ## A209984.P964917513306126912

`4*A209985(n)`
-/

namespace A209984.P964917513306126912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A209985 n

end

end A209984.P964917513306126912

/-! ## A209984.P9509824448283122994

`lcm(A040002(n), A209985(n))`
-/

namespace A209984.P9509824448283122994
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A040002 n) (A209985 n)

end

end A209984.P9509824448283122994

/-! ## A209984.P18356401786957018457

`record[lcm(4, A209985(A074989(n)))]`
-/

namespace A209984.P18356401786957018457
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 4 (A209985 (A074989 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A209984.P18356401786957018457

/-! ## A209984.P452492659929981089

`lcm(4, A209985(A118759(n)))`
-/

namespace A209984.P452492659929981089
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 4 (A209985 (A118759 n).toNat)

end

end A209984.P452492659929981089

/-! ## A209984.P6481031042300301217

`A008586(A209985(n))`
-/

namespace A209984.P6481031042300301217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008586 (A209985 n).toNat

end

end A209984.P6481031042300301217

/-!
# A209985: (A209984)/4.

The programs for A209985, there is no canonical definition to state claims against.
-/

/-! ## A209985.P6528415496919740118

`A209984(n)/4`
-/

namespace A209985.P6528415496919740118
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A209984 n : ℚ) / 4

end

end A209985.P6528415496919740118

/-! ## A209985.P17861556085700209528

`round(sqrt((2*(A209973(n)+char[1]))²+1))-1`
-/

namespace A209985.P17861556085700209528
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt ((2 * (A209973 n + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ))) ^ 2 + 1 : ℝ)) - 1

end

end A209985.P17861556085700209528

/-! ## A209985.P11739476185587803015

`A057428(n)+2*(A209973(n)+char[1])`
-/

namespace A209985.P11739476185587803015
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n + 2 * (A209973 n + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ))

end

end A209985.P11739476185587803015

/-! ## A209985.P16340849489782531576

`2*(A209973(n)+char[1])-A057427(n)`
-/

namespace A209985.P16340849489782531576
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A209973 n + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)) - A057427 n

end

end A209985.P16340849489782531576

/-! ## A209985.P8240799643980807350

`2*(A209973(n)+char[1])-A165471(n²)`
-/

namespace A209985.P8240799643980807350
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A209973 n + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)) - A165471 (n ^ 2)

end

end A209985.P8240799643980807350

/-! ## A209985.P15363586063787671701

`2*(A209973(n)+char[1])+A000007(n)-1`
-/

namespace A209985.P15363586063787671701
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A209973 n + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)) + (A000007 n - 1)

end

end A209985.P15363586063787671701

/-! ## A209985.P12936273519112781675

`2*(A209973(n)+char[1])-char[A265110(n+1)]`
-/

namespace A209985.P12936273519112781675
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265110 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A209973 n + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)) - ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A209985.P12936273519112781675

/-! ## A209985.P10059629526641100284

`2*(A209973(n)+char[1])-A000040(n+1)%2`
-/

namespace A209985.P10059629526641100284
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A209973 n + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)) - Int.tmod (A000040 (n + 1)) 2

end

end A209985.P10059629526641100284

/-! ## A209985.P18050115477328922281

`2*(A209973(n)+char[1])-A008683(2*A000040(n+1))`
-/

namespace A209985.P18050115477328922281
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A209973 n + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)) - A008683 (2 * A000040 (n + 1)).toNat

end

end A209985.P18050115477328922281

/-! ## A209985.P15335688805201308491

`A110962(A209984(n))`
-/

namespace A209985.P15335688805201308491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110962 (A209984 n).toNat

end

end A209985.P15335688805201308491

/-!
# A209986: Number of 2 X 2 matrices having all elements in {-n,...n} and determinant 3.

The programs for A209986, there is no canonical definition to state claims against.
-/

/-! ## A209986.P17636811576704755589

`8*(A209975(n)+val(A209977(n+1)+1, 2))`
-/

namespace A209986.P17636811576704755589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * (A209975 n + (SequenceMachineLib.valuation (A209977 (n + 1) + 1).toNat 2 : ℤ))

end

end A209986.P17636811576704755589

/-! ## A209986.P5092124848091910637

`8*A209987(n)`
-/

namespace A209986.P5092124848091910637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A209987 n

end

end A209986.P5092124848091910637

/-! ## A209986.P4126211640988586449

`8*(A209975(n)+A089309(A209977(n+1)))`
-/

namespace A209986.P4126211640988586449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * (A209975 n + A089309 (A209977 (n + 1)).toNat)

end

end A209986.P4126211640988586449

/-! ## A209986.P2393539615702212854

`A008590(A209987(n))`
-/

namespace A209986.P2393539615702212854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008590 (A209987 n).toNat

end

end A209986.P2393539615702212854

/-! ## A209986.P15974346864144788873

`A017089(A209987(n))-A036453(n+3)`
-/

namespace A209986.P15974346864144788873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017089 (A209987 n).toNat - A036453 (n + 3)

end

end A209986.P15974346864144788873

/-! ## A209986.P2379810991222345895

`A017089(A209987(n))-(A007318(C(2, n))+1)`
-/

namespace A209986.P2379810991222345895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017089 (A209987 n).toNat - (A007318 (Nat.choose 2 n) + 1)

end

end A209986.P2379810991222345895

/-! ## A209986.P17967428087593035828

`A017089(A209987(n))-2%(A000040(n+1)+2)`
-/

namespace A209986.P17967428087593035828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017089 (A209987 n).toNat - Int.tmod 2 (A000040 (n + 1) + 2)

end

end A209986.P17967428087593035828

/-! ## A209986.P6644788047106476955

`A017089(A209987(n))-A000005(A002146(n))`
-/

namespace A209986.P6644788047106476955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017089 (A209987 n).toNat - A000005 (A002146 n).toNat

end

end A209986.P6644788047106476955

/-! ## A209986.P2588867704688250993

`A017089(A209987(n))-A000005(A007918(n))`
-/

namespace A209986.P2588867704688250993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017089 (A209987 n).toNat - A000005 (A007918 n).toNat

end

end A209986.P2588867704688250993

/-!
# A209987: (A209986)/8.

The programs for A209987, there is no canonical definition to state claims against.
-/

/-! ## A209987.P12848279146353587062

`A209986(n)/8`
-/

namespace A209987.P12848279146353587062
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A209986 n : ℚ) / 8

end

end A209987.P12848279146353587062

/-! ## A209987.P2083318369685375479

`A209975(n)+val(A209977(n+1)+1, 2)`
-/

namespace A209987.P2083318369685375479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209975 n + (SequenceMachineLib.valuation (A209977 (n + 1) + 1).toNat 2 : ℤ)

end

end A209987.P2083318369685375479

/-! ## A209987.P11565387164663351237

`A209975(n)+A089309(A209977(n+1))`
-/

namespace A209987.P11565387164663351237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209975 n + A089309 (A209977 (n + 1)).toNat

end

end A209987.P11565387164663351237

/-! ## A209987.P14956043803039584544

`A209975(n)+A007814(A209977(n+1)+1)`
-/

namespace A209987.P14956043803039584544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209975 n + A007814 (A209977 (n + 1) + 1).toNat

end

end A209987.P14956043803039584544

/-! ## A209987.P16488821351923917822

`A285097(A209976(n))+A209975(n)`
-/

namespace A209987.P16488821351923917822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285097 (A209976 n).toNat + A209975 n

end

end A209987.P16488821351923917822

/-!
# A209988: Number of 2 X 2 matrices having all elements in {-n,...n} and determinant 4.

The programs for A209988, there is no canonical definition to state claims against.
-/

/-! ## A209988.P14351877450543634868

`4*A209989(n)`
-/

namespace A209988.P14351877450543634868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A209989 n

end

end A209988.P14351877450543634868

/-! ## A209988.P6170650433994150170

`lcm(4, A209989(round(sqrt(n²+1))))`
-/

namespace A209988.P6170650433994150170
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 4 (A209989 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat)

end

end A209988.P6170650433994150170

/-! ## A209988.P3244960263147212559

`lcm(4, A209989(n)%A210371(n))`
-/

namespace A209988.P3244960263147212559
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 4 (Int.tmod (A209989 n) (A210371 n))

end

end A209988.P3244960263147212559

/-! ## A209988.P5706042914519810312

`A209989(n)/(A033999(n)/2)²`
-/

namespace A209988.P5706042914519810312
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A209989 n : ℚ) / ((A033999 n : ℚ) / 2) ^ 2

end

end A209988.P5706042914519810312

/-! ## A209988.P3730714155625513708

`A014682(lcm(8, A209989(n)))`
-/

namespace A209988.P3730714155625513708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (Int.lcm 8 (A209989 n))

end

end A209988.P3730714155625513708

/-!
# A209989: (A209988)/4.

The programs for A209989, there is no canonical definition to state claims against.
-/

/-! ## A209989.P7731040023235729685

`A209988(n)/4`
-/

namespace A209989.P7731040023235729685
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A209988 n : ℚ) / 4

end

end A209989.P7731040023235729685

/-! ## A209989.P3171277450352188949

`A110962(A209988(n))`
-/

namespace A209989.P3171277450352188949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110962 (A209988 n).toNat

end

end A209989.P3171277450352188949

/-! ## A209989.P4592921060538583053

`A057428(n)*A246425(A209988(n))`
-/

namespace A209989.P4592921060538583053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n * A246425 (A209988 n).toNat

end

end A209989.P4592921060538583053

/-! ## A209989.P15404670132223229961

`lcm(A062157(n), A246425(A209988(n)))`
-/

namespace A209989.P15404670132223229961
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A062157 n) (A246425 (A209988 n).toNat)

end

end A209989.P15404670132223229961

/-! ## A209989.P6876239386630538072

`A062157(2*n)*A246425(A209988(n))`
-/

namespace A209989.P6876239386630538072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (2 * n) * A246425 (A209988 n).toNat

end

end A209989.P6876239386630538072

/-!
# A209990: Number of 2 X 2 matrices having all elements in {-n,...n} and determinant 5.

The programs for A209990, there is no canonical definition to state claims against.
-/

/-! ## A209990.P15966198917569852643

`8*A209997(n)`
-/

namespace A209990.P15966198917569852643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A209997 n

end

end A209990.P15966198917569852643

/-! ## A209990.P5095567419126475485

`A008590(A209997(n))`
-/

namespace A209990.P5095567419126475485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008590 (A209997 n).toNat

end

end A209990.P5095567419126475485

/-!
# A209991: Number of 2 X 2 matrices with all elements in {0,1,...,n} and determinant in {0,1}.

The programs for A209991, the canonical program `A209991.P8157749914025968927` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A209991 has offset 0).

The definition of A209991 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 131 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A209991.P12776455531295953775

`A171503(n)+A059306(n)`
-/

namespace A209991.P12776455531295953775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171503 n + A059306 n

end

end A209991.P12776455531295953775

namespace A209991

/-- `A171503(n)+A059306(n)` -/
def P12776455531295953775.Spec : Prop :=
  ∀ n, P12776455531295953775.a n = A209991 n

end A209991

/-! ## A209991.P15178979033046580154

`A209993(n)-A171503(n)`
-/

namespace A209991.P15178979033046580154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209993 n - A171503 n

end

end A209991.P15178979033046580154

namespace A209991

/-- `A209993(n)-A171503(n)` -/
def P15178979033046580154.Spec : Prop :=
  ∀ n, P15178979033046580154.a n = A209991 n

end A209991

/-! ## A209991.P9332112543108896298

`(A209993(n)+A059306(n))/2`
-/

namespace A209991.P9332112543108896298
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A209993 n + A059306 n : ℚ) / 2

end

end A209991.P9332112543108896298

namespace A209991

/-- `(A209993(n)+A059306(n))/2` -/
def P9332112543108896298.Spec : Prop :=
  ∀ n, P9332112543108896298.a n = (A209991 n : ℚ)

end A209991

/-! ## A209991.P12084625299938241032

`A171503(n)+A134506(n)+Δ[n²]²`
-/

namespace A209991.P12084625299938241032
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171503 n + (A134506 n + ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 2)

end

end A209991.P12084625299938241032

namespace A209991

/-- `A171503(n)+A134506(n)+Δ[n²]²` -/
def P12084625299938241032.Spec : Prop :=
  ∀ n, P12084625299938241032.a n = A209991 n

end A209991

/-! ## A209991.P16927674109767839406

`A057428(n)+A140466(n)+A059306(n)`
-/

namespace A209991.P16927674109767839406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n + (A140466 n + A059306 n)

end

end A209991.P16927674109767839406

namespace A209991

/-- `A057428(n)+A140466(n)+A059306(n)` -/
def P16927674109767839406.Spec : Prop :=
  ∀ n, P16927674109767839406.a n = A209991 n

end A209991

/-! ## A209991.P6886902628811421908

`A059306(n)+A100449(n)-A036453(n+1)`
-/

namespace A209991.P6886902628811421908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059306 n + (A100449 n - A036453 (n + 1))

end

end A209991.P6886902628811421908

namespace A209991

/-- `A059306(n)+A100449(n)-A036453(n+1)` -/
def P6886902628811421908.Spec : Prop :=
  ∀ n, P6886902628811421908.a n = A209991 n

end A209991

/-! ## A209991.P11559197941327206709

`A036453(n+1)+A209993(n)-A100449(n)`
-/

namespace A209991.P11559197941327206709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036453 (n + 1) + (A209993 n - A100449 n)

end

end A209991.P11559197941327206709

namespace A209991

/-- `A036453(n+1)+A209993(n)-A100449(n)` -/
def P11559197941327206709.Spec : Prop :=
  ∀ n, P11559197941327206709.a n = A209991 n

end A209991

/-! ## A209991.P17493152944869506691

`gcd(2, A000010(n+2))+A209993(n)-A100449(n)`
-/

namespace A209991.P17493152944869506691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 2 (A000010 (n + 2)) : ℤ) + (A209993 n - A100449 n)

end

end A209991.P17493152944869506691

namespace A209991

/-- `gcd(2, A000010(n+2))+A209993(n)-A100449(n)` -/
def P17493152944869506691.Spec : Prop :=
  ∀ n, P17493152944869506691.a n = A209991 n

end A209991

/-! ## A209991.P13632582256522065458

`A140466(n)+A059306(n)-and(1, A000040(n+1))`
-/

namespace A209991.P13632582256522065458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140466 n + A059306 n - Int.land 1 (A000040 (n + 1))

end

end A209991.P13632582256522065458

namespace A209991

/-- `A140466(n)+A059306(n)-and(1, A000040(n+1))` -/
def P13632582256522065458.Spec : Prop :=
  ∀ n, P13632582256522065458.a n = A209991 n

end A209991

/-! ## A209991.P4176382741913663978

`A059306(n)+A210000(n)/2`
-/

namespace A209991.P4176382741913663978
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059306 n : ℚ) + (A210000 n : ℚ) / 2

end

end A209991.P4176382741913663978

namespace A209991

/-- `A059306(n)+A210000(n)/2` -/
def P4176382741913663978.Spec : Prop :=
  ∀ n, P4176382741913663978.a n = (A209991 n : ℚ)

end A209991

/-! ## A209991.P12130012585488568510

`A209993(n)-A210000(n)/2`
-/

namespace A209991.P12130012585488568510
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A209993 n : ℚ) - (A210000 n : ℚ) / 2

end

end A209991.P12130012585488568510

namespace A209991

/-- `A209993(n)-A210000(n)/2` -/
def P12130012585488568510.Spec : Prop :=
  ∀ n, P12130012585488568510.a n = (A209991 n : ℚ)

end A209991

/-! ## A209991.P16050778334427622437

`A209993(n)-A014682(A210000(n))`
-/

namespace A209991.P16050778334427622437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209993 n - A014682 (A210000 n).toNat

end

end A209991.P16050778334427622437

namespace A209991

/-- `A209993(n)-A014682(A210000(n))` -/
def P16050778334427622437.Spec : Prop :=
  ∀ n, P16050778334427622437.a n = A209991 n

end A209991

/-! ## A209991.P5035619144157853210

`A059306(n)-(A171503(n)-A210000(n))`
-/

namespace A209991.P5035619144157853210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059306 n - (A171503 n - A210000 n)

end

end A209991.P5035619144157853210

namespace A209991

/-- `A059306(n)-(A171503(n)-A210000(n))` -/
def P5035619144157853210.Spec : Prop :=
  ∀ n, P5035619144157853210.a n = A209991 n

end A209991

/-! ## A209991.P8157749914025968927

`A209992(n)+(2*n+1)*A103517(n)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A209991

/-- `A209992(n)+(2*n+1)*A103517(n)` -/
def P8157749914025968927.Spec : Prop :=
  ∀ n, P8157749914025968927.a n = A209991 n

theorem P8157749914025968927.correct : P8157749914025968927.Spec := by
  intro n
  simp only [A209991]

end A209991

/-! ## A209991.P18323688640279334843

`A059306(n)+A004274(A049691(n))`
-/

namespace A209991.P18323688640279334843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059306 n + A004274 (A049691 n).toNat

end

end A209991.P18323688640279334843

namespace A209991

/-- `A059306(n)+A004274(A049691(n))` -/
def P18323688640279334843.Spec : Prop :=
  ∀ n, P18323688640279334843.a n = A209991 n

end A209991

/-! ## A209991.P13998639286481038659

`A059306(n)+A004273(A049696(n))`
-/

namespace A209991.P13998639286481038659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059306 n + A004273 (A049696 n).toNat

end

end A209991.P13998639286481038659

namespace A209991

/-- `A059306(n)+A004273(A049696(n))` -/
def P13998639286481038659.Spec : Prop :=
  ∀ n, P13998639286481038659.a n = A209991 n

end A209991

/-! ## A209991.P3477237797207516496

`A209993(n)-A004274(A049691(n))`
-/

namespace A209991.P3477237797207516496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209993 n - A004274 (A049691 n).toNat

end

end A209991.P3477237797207516496

namespace A209991

/-- `A209993(n)-A004274(A049691(n))` -/
def P3477237797207516496.Spec : Prop :=
  ∀ n, P3477237797207516496.a n = A209991 n

end A209991

/-! ## A209991.P10912205938564448091

`A209993(n)-A004273(A049696(n))`
-/

namespace A209991.P10912205938564448091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209993 n - A004273 (A049696 n).toNat

end

end A209991.P10912205938564448091

namespace A209991

/-- `A209993(n)-A004273(A049696(n))` -/
def P10912205938564448091.Spec : Prop :=
  ∀ n, P10912205938564448091.a n = A209991 n

end A209991

/-!
# A209992: Number of 2 X 2 matrices with all elements in {1,2,...,n} and determinant in {0,1}.

The programs for A209992, the canonical program `A209992.P10276808550419408053` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A209992 has offset 0).

The definition of A209992 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 131 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A209992.P3458093070057028857

`A196227(n)+A134506(n)`
-/

namespace A209992.P3458093070057028857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196227 n + A134506 n

end

end A209992.P3458093070057028857

namespace A209992

/-- `A196227(n)+A134506(n)` -/
def P3458093070057028857.Spec : Prop :=
  ∀ n, P3458093070057028857.a n = A209992 n

end A209992

/-! ## A209992.P1869548141752728265

`A209994(n)-A196227(n)`
-/

namespace A209992.P1869548141752728265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209994 n - A196227 n

end

end A209992.P1869548141752728265

namespace A209992

/-- `A209994(n)-A196227(n)` -/
def P1869548141752728265.Spec : Prop :=
  ∀ n, P1869548141752728265.a n = A209992 n

end A209992

/-! ## A209992.P12058201071245445713

`A134506(n)+2*A209978(n)`
-/

namespace A209992.P12058201071245445713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134506 n + 2 * A209978 n

end

end A209992.P12058201071245445713

namespace A209992

/-- `A134506(n)+2*A209978(n)` -/
def P12058201071245445713.Spec : Prop :=
  ∀ n, P12058201071245445713.a n = A209992 n

end A209992

/-! ## A209992.P8824168616382398907

`A134506(n)+A209979(n)/2`
-/

namespace A209992.P8824168616382398907
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A134506 n : ℚ) + (A209979 n : ℚ) / 2

end

end A209992.P8824168616382398907

namespace A209992

/-- `A134506(n)+A209979(n)/2` -/
def P8824168616382398907.Spec : Prop :=
  ∀ n, P8824168616382398907.a n = (A209992 n : ℚ)

end A209992

/-! ## A209992.P17003505703004085198

`(A209994(n)+A134506(n))/2`
-/

namespace A209992.P17003505703004085198
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A209994 n + A134506 n : ℚ) / 2

end

end A209992.P17003505703004085198

namespace A209992

/-- `(A209994(n)+A134506(n))/2` -/
def P17003505703004085198.Spec : Prop :=
  ∀ n, P17003505703004085198.a n = (A209992 n : ℚ)

end A209992

/-! ## A209992.P8201220474425961310

`A209994(n)-2*A209978(n)`
-/

namespace A209992.P8201220474425961310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209994 n - 2 * A209978 n

end

end A209992.P8201220474425961310

namespace A209992

/-- `A209994(n)-2*A209978(n)` -/
def P8201220474425961310.Spec : Prop :=
  ∀ n, P8201220474425961310.a n = A209992 n

end A209992

/-! ## A209992.P5217466088552253343

`A209994(n)-A209979(n)/2`
-/

namespace A209992.P5217466088552253343
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A209994 n : ℚ) - (A209979 n : ℚ) / 2

end

end A209992.P5217466088552253343

namespace A209992

/-- `A209994(n)-A209979(n)/2` -/
def P5217466088552253343.Spec : Prop :=
  ∀ n, P5217466088552253343.a n = (A209992 n : ℚ)

end A209992

/-! ## A209992.P8277869702335478737

`A134506(n)+A326354(n)-Δ[n²]`
-/

namespace A209992.P8277869702335478737
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134506 n + (A326354 n - ((f1 (n + 1) : ℤ) - (f1 n : ℤ)))

end

end A209992.P8277869702335478737

namespace A209992

/-- `A134506(n)+A326354(n)-Δ[n²]` -/
def P8277869702335478737.Spec : Prop :=
  ∀ n, P8277869702335478737.a n = A209992 n

end A209992

/-! ## A209992.P10276808550419408053

`2*A212053(n)-n²²-A196227(n)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A209992

/-- `2*A212053(n)-n²²-A196227(n)` -/
def P10276808550419408053.Spec : Prop :=
  ∀ n, P10276808550419408053.a n = A209992 n

theorem P10276808550419408053.correct : P10276808550419408053.Spec := by
  intro n
  simp only [A209992]

end A209992

/-! ## A209992.P7373409404579987820

`n²²-2*A212054(n)-A196227(n)`
-/

namespace A209992.P7373409404579987820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n ^ 2) ^ 2 : ℤ) - 2 * A212054 n - A196227 n

end

end A209992.P7373409404579987820

namespace A209992

/-- `n²²-2*A212054(n)-A196227(n)` -/
def P7373409404579987820.Spec : Prop :=
  ∀ n, P7373409404579987820.a n = A209992 n

end A209992

/-! ## A209992.P18002252985090808841

`A196227(n)+abs(Δ[n²]²-A059306(n))`
-/

namespace A209992.P18002252985090808841
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196227 n + |((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 2 - A059306 n|

end

end A209992.P18002252985090808841

namespace A209992

/-- `A196227(n)+abs(Δ[n²]²-A059306(n))` -/
def P18002252985090808841.Spec : Prop :=
  ∀ n, P18002252985090808841.a n = A209992 n

end A209992

/-! ## A209992.P3798765132239198396

`A134506(n)+or(1, A171503(n))-(2*n+1)`
-/

namespace A209992.P3798765132239198396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134506 n + (Int.lor 1 (A171503 n) - (2 * n + 1 : ℤ))

end

end A209992.P3798765132239198396

namespace A209992

/-- `A134506(n)+or(1, A171503(n))-(2*n+1)` -/
def P3798765132239198396.Spec : Prop :=
  ∀ n, P3798765132239198396.a n = A209992 n

end A209992

/-! ## A209992.P4016304687954936166

`A134506(n)+A014682(A209979(n))`
-/

namespace A209992.P4016304687954936166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134506 n + A014682 (A209979 n).toNat

end

end A209992.P4016304687954936166

namespace A209992

/-- `A134506(n)+A014682(A209979(n))` -/
def P4016304687954936166.Spec : Prop :=
  ∀ n, P4016304687954936166.a n = A209992 n

end A209992

/-! ## A209992.P10214065729167879526

`A212053(n)-(A212054(n)+A196227(n))`
-/

namespace A209992.P10214065729167879526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212053 n - (A212054 n + A196227 n)

end

end A209992.P10214065729167879526

namespace A209992

/-- `A212053(n)-(A212054(n)+A196227(n))` -/
def P10214065729167879526.Spec : Prop :=
  ∀ n, P10214065729167879526.a n = A209992 n

end A209992

/-! ## A209992.P16396149373230251186

`A134506(n)-(A196227(n)-A209979(n))`
-/

namespace A209992.P16396149373230251186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134506 n - (A196227 n - A209979 n)

end

end A209992.P16396149373230251186

namespace A209992

/-- `A134506(n)-(A196227(n)-A209979(n))` -/
def P16396149373230251186.Spec : Prop :=
  ∀ n, P16396149373230251186.a n = A209992 n

end A209992

/-! ## A209992.P14271422538258922204

`A134506(n)+A140466(n)-A163300(n+1)`
-/

namespace A209992.P14271422538258922204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134506 n + (A140466 n - A163300 (n + 1))

end

end A209992.P14271422538258922204

namespace A209992

/-- `A134506(n)+A140466(n)-A163300(n+1)` -/
def P14271422538258922204.Spec : Prop :=
  ∀ n, P14271422538258922204.a n = A209992 n

end A209992

/-! ## A209992.P964879946483006007

`A209994(n)-A005843(A209978(n))`
-/

namespace A209992.P964879946483006007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209994 n - A005843 (A209978 n).toNat

end

end A209992.P964879946483006007

namespace A209992

/-- `A209994(n)-A005843(A209978(n))` -/
def P964879946483006007.Spec : Prop :=
  ∀ n, P964879946483006007.a n = A209992 n

end A209992

/-!
# A209993: Number of 2 X 2 matrices with all elements in {0,1,...,n} and determinant in {-1,0,1}.

The programs for A209993, there is no canonical definition to state claims against.
-/

/-! ## A209993.P7997237783715077501

`A059306(n)+lcm(2-A100449(n), 2%(n+2))`
-/

namespace A209993.P7997237783715077501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059306 n + (Int.lcm (2 - A100449 n) ((2 % (n + 2) : ℕ) : ℤ) : ℤ)

end

end A209993.P7997237783715077501

/-! ## A209993.P8626117782898631909

`A059306(n)+2*A171503(n)`
-/

namespace A209993.P8626117782898631909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059306 n + 2 * A171503 n

end

end A209993.P8626117782898631909

/-! ## A209993.P9651837910074075798

`A059306(n)+2*ceil(A209982(n)/8)`
-/

namespace A209993.P9651837910074075798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059306 n + 2 * ⌈(A209982 n : ℚ) / 8⌉

end

end A209993.P9651837910074075798

/-! ## A209993.P7206256972150672258

`A059306(n)+lcm(2, A171503(n%(n+1)))`
-/

namespace A209993.P7206256972150672258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059306 n + (Int.lcm 2 (A171503 (n % (n + 1))) : ℤ)

end

end A209993.P7206256972150672258

/-! ## A209993.P17932273101297108222

`2*A171503(n)+A134506(n)+(2*n+1)²`
-/

namespace A209993.P17932273101297108222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A171503 n + (A134506 n + ((2 * n + 1) ^ 2 : ℤ))

end

end A209993.P17932273101297108222

/-! ## A209993.P1844942918117843148

`2*A171503(n)+2*A210290(n)-(n+1)²²`
-/

namespace A209993.P1844942918117843148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A171503 n + (2 * A210290 n - (((n + 1) ^ 2) ^ 2 : ℤ))

end

end A209993.P1844942918117843148

/-! ## A209993.P10195755554222823322

`A059306(n)+A209979(n)+A163300(2*n+1)`
-/

namespace A209993.P10195755554222823322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059306 n + (A209979 n + A163300 (2 * n + 1))

end

end A209993.P10195755554222823322

/-! ## A209993.P8686280103405897095

`A059306(n)+2*(A196227(n)+Δ[n²])*and(1, A000040(n+1))`
-/

namespace A209993.P8686280103405897095
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059306 n + 2 * ((A196227 n + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))) * Int.land 1 (A000040 (n + 1)))

end

end A209993.P8686280103405897095

/-! ## A209993.P17234552451186972002

`A059306(n)+A171503(n)+A171503(n)%A001546(n)`
-/

namespace A209993.P17234552451186972002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059306 n + (A171503 n + Int.tmod (A171503 n) (A001546 n))

end

end A209993.P17234552451186972002

/-! ## A209993.P467483458642584432

`A059306(n)+∑{d}[A171503(n), A000010(#)+A000010(#)]`
-/

namespace A209993.P467483458642584432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171503 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059306 n + ∑ d ∈ Nat.divisors (f1 n).natAbs, (A000010 d + A000010 d)

end

end A209993.P467483458642584432

/-! ## A209993.P17055600948891923626

`A059306(n)+2*(A326354(n)-C(2, n+2))`
-/

namespace A209993.P17055600948891923626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059306 n + 2 * (A326354 n - (Nat.choose 2 (n + 2) : ℤ))

end

end A209993.P17055600948891923626

/-! ## A209993.P8728519179958018611

`2*(A326354(n)-C(2, n+2))+A134506(n)+(2*n+1)²`
-/

namespace A209993.P8728519179958018611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A326354 n - (Nat.choose 2 (n + 2) : ℤ)) + (A134506 n + ((2 * n + 1) ^ 2 : ℤ))

end

end A209993.P8728519179958018611

/-! ## A209993.P16457666797956957221

`2*(A326354(n)-C(2, n+2))+2*A210290(n)-(n+1)²²`
-/

namespace A209993.P16457666797956957221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A326354 n - (Nat.choose 2 (n + 2) : ℤ)) + (2 * A210290 n - (((n + 1) ^ 2) ^ 2 : ℤ))

end

end A209993.P16457666797956957221

/-! ## A209993.P7963099519954049994

`A133655(A002088(n))+A059306(n)-1`
-/

namespace A209993.P7963099519954049994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133655 (A002088 n).toNat + (A059306 n - 1)

end

end A209993.P7963099519954049994

/-! ## A209993.P10363841200689853113

`A209991(n)+A171503(n)`
-/

namespace A209993.P10363841200689853113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209991 n + A171503 n

end

end A209993.P10363841200689853113

/-! ## A209993.P17713540713781877859

`2*A209991(n)-A059306(n)`
-/

namespace A209993.P17713540713781877859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A209991 n - A059306 n

end

end A209993.P17713540713781877859

/-! ## A209993.P10956657288144901466

`A057428(n)+A209991(n)+A140466(n)`
-/

namespace A209993.P10956657288144901466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n + (A209991 n + A140466 n)

end

end A209993.P10956657288144901466

/-! ## A209993.P11909186845602474931

`A326354(n+1)+A209991(n)-A002246(n+1)`
-/

namespace A209993.P11909186845602474931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326354 (n + 1) + (A209991 n - A002246 (n + 1))

end

end A209993.P11909186845602474931

/-!
# A209994: Number of 2 X 2 matrices with all elements in {1,2,...,n} and determinant in {-1,0,1}.

The programs for A209994, the canonical program `A209994.P10842801715655778839` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A209994 has offset 0).

The definition of A209994 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 132 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A209994.P10842801715655778839

`n^4-2*A212054(n)`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A209994

/-- `n^4-2*A212054(n)` -/
def P10842801715655778839.Spec : Prop :=
  ∀ n, P10842801715655778839.a n = A209994 n

theorem P10842801715655778839.correct : P10842801715655778839.Spec := by
  intro n
  simp only [A209994]

end A209994

/-! ## A209994.P13929827810192308800

`2*A212053(n)-n²²`
-/

namespace A209994.P13929827810192308800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A212053 n - ((n ^ 2) ^ 2 : ℤ)

end

end A209994.P13929827810192308800

namespace A209994

/-- `2*A212053(n)-n²²` -/
def P13929827810192308800.Spec : Prop :=
  ∀ n, P13929827810192308800.a n = A209994 n

end A209994

/-! ## A209994.P3635398903593741907

`A209979(n)+A134506(n)`
-/

namespace A209994.P3635398903593741907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209979 n + A134506 n

end

end A209994.P3635398903593741907

namespace A209994

/-- `A209979(n)+A134506(n)` -/
def P3635398903593741907.Spec : Prop :=
  ∀ n, P3635398903593741907.a n = A209994 n

end A209994

/-! ## A209994.P15961449948493026968

`A212053(n)-A212054(n)`
-/

namespace A209994.P15961449948493026968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212053 n - A212054 n

end

end A209994.P15961449948493026968

namespace A209994

/-- `A212053(n)-A212054(n)` -/
def P15961449948493026968.Spec : Prop :=
  ∀ n, P15961449948493026968.a n = A209994 n

end A209994

/-! ## A209994.P40020361155262471

`A134506(n)+2*A196227(n)`
-/

namespace A209994.P40020361155262471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134506 n + 2 * A196227 n

end

end A209994.P40020361155262471

namespace A209994

/-- `A134506(n)+2*A196227(n)` -/
def P40020361155262471.Spec : Prop :=
  ∀ n, P40020361155262471.a n = A209994 n

end A209994

/-! ## A209994.P12566993004157122725

`A134506(n)+4*A209978(n)`
-/

namespace A209994.P12566993004157122725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134506 n + 4 * A209978 n

end

end A209994.P12566993004157122725

namespace A209994

/-- `A134506(n)+4*A209978(n)` -/
def P12566993004157122725.Spec : Prop :=
  ∀ n, P12566993004157122725.a n = A209994 n

end A209994

/-! ## A209994.P378590231166010224

`A209992(n)+A196227(n)`
-/

namespace A209994.P378590231166010224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209992 n + A196227 n

end

end A209994.P378590231166010224

namespace A209994

/-- `A209992(n)+A196227(n)` -/
def P378590231166010224.Spec : Prop :=
  ∀ n, P378590231166010224.a n = A209994 n

end A209994

/-! ## A209994.P14814018485932039511

`A209992(n)+2*A209978(n)`
-/

namespace A209994.P14814018485932039511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209992 n + 2 * A209978 n

end

end A209994.P14814018485932039511

namespace A209994

/-- `A209992(n)+2*A209978(n)` -/
def P14814018485932039511.Spec : Prop :=
  ∀ n, P14814018485932039511.a n = A209994 n

end A209994

/-! ## A209994.P17695283528221640563

`2*A209992(n)-A134506(n)`
-/

namespace A209994.P17695283528221640563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A209992 n - A134506 n

end

end A209994.P17695283528221640563

namespace A209994

/-- `2*A209992(n)-A134506(n)` -/
def P17695283528221640563.Spec : Prop :=
  ∀ n, P17695283528221640563.a n = A209994 n

end A209994

/-! ## A209994.P9776902309491979963

`A209992(n)+A005843(A209978(n))`
-/

namespace A209994.P9776902309491979963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209992 n + A005843 (A209978 n).toNat

end

end A209994.P9776902309491979963

namespace A209994

/-- `A209992(n)+A005843(A209978(n))` -/
def P9776902309491979963.Spec : Prop :=
  ∀ n, P9776902309491979963.a n = A209994 n

end A209994

/-!
# A209995: Number of 2 X 2 matrices with all elements in {0,1,...,n} and determinant in {0,1,...,n}.

The programs for A209995, there is no canonical definition to state claims against.
-/

/-! ## A209995.P13453808886169794622

`A210290(n)-A210291(n)`
-/

namespace A209995.P13453808886169794622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210290 n - A210291 n

end

end A209995.P13453808886169794622

/-! ## A209995.P2528635239954359494

`(A211031(n)+A059306(n))/2`
-/

namespace A209995.P2528635239954359494
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A211031 n + A059306 n : ℚ) / 2

end

end A209995.P2528635239954359494

/-! ## A209995.P15909843099322347237

`A210282(n)+A210290(n)-A210366(n)`
-/

namespace A209995.P15909843099322347237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210282 n + (A210290 n - A210366 n)

end

end A209995.P15909843099322347237

/-! ## A209995.P7932519388205784683

`A210371(n)+A210373(n)-A210291(n)`
-/

namespace A209995.P7932519388205784683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210371 n + (A210373 n - A210291 n)

end

end A209995.P7932519388205784683

/-! ## A209995.P12515175521426770572

`A059306(n)+A062801(n)/2-A210291(n)`
-/

namespace A209995.P12515175521426770572
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059306 n : ℚ) + (A062801 n : ℚ) / 2 - (A210291 n : ℚ)

end

end A209995.P12515175521426770572

/-! ## A209995.P16500748792669911933

`A210371(n)+A210370(n)/2-A210291(n)`
-/

namespace A209995.P16500748792669911933
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A210371 n : ℚ) + (A210370 n : ℚ) / 2 - (A210291 n : ℚ)

end

end A209995.P16500748792669911933

/-! ## A209995.P3460142403333611211

`A134506(n+1)+A183761(n+1)-A210366(n+1)`
-/

namespace A209995.P3460142403333611211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134506 (n + 1) + (A183761 (n + 1) - A210366 (n + 1))

end

end A209995.P3460142403333611211

/-!
# A209996: Triangle of coefficients of polynomials u(n,x) jointly generated with A209998; see the Formula section.

The programs for A209996, there is no canonical definition to state claims against.
-/

/-! ## A209996.P444702313455004097

`xor(A193710(n+1), A233761(A282441(n+1)))`
-/

namespace A209996.P444702313455004097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A193710 (n + 1)) (A233761 (A282441 (n + 1)).toNat)

end

end A209996.P444702313455004097

/-!
# A209997: (A209990)/8.

The programs for A209997, there is no canonical definition to state claims against.
-/

/-! ## A209997.P17039283875916763936

`A209990(n)/8`
-/

namespace A209997.P17039283875916763936
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A209990 n : ℚ) / 8

end

end A209997.P17039283875916763936

/-! ## A209997.P7173916317990523176

`A006085(A209990(n))`
-/

namespace A209997.P7173916317990523176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006085 (A209990 n).toNat

end

end A209997.P7173916317990523176

/-!
# A209999: Triangle of coefficients of polynomials u(n,x) jointly generated with A210287; see the Formula section.

The programs for A209999, there is no canonical definition to state claims against.
-/

/-! ## A209999.P4949338110804926204

`A234713(n)+A209583(n+1)`
-/

namespace A209999.P4949338110804926204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234713 n + A209583 (n + 1)

end

end A209999.P4949338110804926204

/-! ## A209999.P11216515795940611803

`(A209753(n+1)+A209584(n+1))/2`
-/

namespace A209999.P11216515795940611803
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A209753 (n + 1) + A209584 (n + 1) : ℚ) / 2

end

end A209999.P11216515795940611803

/-! ## A209999.P3934690455886431840

`A209583(n+1)+A209584(n+1)-A210235(n+1)`
-/

namespace A209999.P3934690455886431840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209583 (n + 1) + (A209584 (n + 1) - A210235 (n + 1))

end

end A209999.P3934690455886431840

/-! ## A209999.P799419447881754158

`A209753(n+1)+A210235(n+1)-A209583(n+1)`
-/

namespace A209999.P799419447881754158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209753 (n + 1) + (A210235 (n + 1) - A209583 (n + 1))

end

end A209999.P799419447881754158

/-! ## A209999.P10857899105173202563

`A210235(n+1)+A210236(n+1)-A210287(n+1)`
-/

namespace A209999.P10857899105173202563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210235 (n + 1) + (A210236 (n + 1) - A210287 (n + 1))

end

end A209999.P10857899105173202563

/-! ## A209999.P4701431430847069850

`Δ[∑[A210287(n+1)]-A210236(n+1)]`
-/

namespace A209999.P4701431430847069850
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210287 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A210236 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A209999.P4701431430847069850

