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
import Seq.B000.C019
import Seq.B000.C021
import Seq.B000.C023
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C033
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C006
import Seq.B001.C007
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B003.C000
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B010.C000
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
import Seq.Opaque.C025

/-!
# A233900: Number of (n+1)X(4+1) 0..6 arrays with every 2X2 subblock having the sum of the squares of all six edge and diagonal differences equal to 35.

The programs for A233900, there is no canonical definition to state claims against.
-/

/-! ## A233900.P9296660927265785648

`A233903(∑[n+3]+7)`
-/

namespace A233900.P9296660927265785648
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233903 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A233900.P9296660927265785648

/-! ## A233900.P1232927921725354869

`A196879(n)*A233903(A027379(n+2))`
-/

namespace A233900.P1232927921725354869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196879 n * A233903 (A027379 (n + 2)).toNat

end

end A233900.P1232927921725354869

/-!
# A233901: Number of (n+1)X(5+1) 0..6 arrays with every 2X2 subblock having the sum of the squares of all six edge and diagonal differences equal to 35.

The programs for A233901, there is no canonical definition to state claims against.
-/

/-! ## A233901.P12331464917928864741

`A233903(C(n+6, 2)-n)`
-/

namespace A233901.P12331464917928864741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233903 (Nat.choose (n + 6) 2 - n)

end

end A233901.P12331464917928864741

/-! ## A233901.P13820048264796440513

`A233903(A167499(n+3))`
-/

namespace A233901.P13820048264796440513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233903 (A167499 (n + 3)).toNat

end

end A233901.P13820048264796440513

/-! ## A233901.P15546027967013198738

`A233903(A155212(n)+13)`
-/

namespace A233901.P15546027967013198738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233903 (A155212 n + 13).toNat

end

end A233901.P15546027967013198738

/-! ## A233901.P6908611450849620240

`A233903(A056000(n)+15)`
-/

namespace A233901.P6908611450849620240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233903 (A056000 n + 15).toNat

end

end A233901.P6908611450849620240

/-! ## A233901.P8584918501638669567

`A233903(eq[7, A066657(n)])`
-/

namespace A233901.P8584918501638669567
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233903 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A233901.P8584918501638669567

/-!
# A233902: Number of (n+1)X(6+1) 0..6 arrays with every 2X2 subblock having the sum of the squares of all six edge and diagonal differences equal to 35.

The programs for A233902, there is no canonical definition to state claims against.
-/

/-! ## A233902.P5211048561263345167

`A233903(A167499(n+4)+1)`
-/

namespace A233902.P5211048561263345167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233903 (A167499 (n + 4) + 1).toNat

end

end A233902.P5211048561263345167

/-! ## A233902.P13693100072907384002

`A233903(A000217(n+5)+6)`
-/

namespace A233902.P13693100072907384002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233903 (A000217 (n + 5) + 6).toNat

end

end A233902.P13693100072907384002

/-! ## A233902.P17160618185248043145

`A233903(eq[7, A131818(n+1)])`
-/

namespace A233902.P17160618185248043145
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233903 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A233902.P17160618185248043145

/-! ## A233902.P3769819902864507796

`A233903(∑[n+6]+10)`
-/

namespace A233902.P3769819902864507796
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233903 (∑ j ∈ Finset.range (n + 1), f1 j + 10)

end

end A233902.P3769819902864507796

/-!
# A233904: a(2n) = a(n) - n, a(2n+1) = a(n) + n, with a(0)=0.

The programs for A233904, the canonical program `A233904.P1500390034095797774` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A233904 has offset 0).

The definition of A233904 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A233905, A233931, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A233904.P1500390034095797774

`A233905(n)-A233931(n)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A233904

/-- `A233905(n)-A233931(n)` -/
def P1500390034095797774.Spec : Prop :=
  ∀ n, P1500390034095797774.a n = A233904 n

theorem P1500390034095797774.correct : P1500390034095797774.Spec := by
  intro n
  simp only [A233904]

end A233904

/-! ## A233904.P8418464100702103124

`A228451(n)-n`
-/

namespace A233904.P8418464100702103124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228451 n - (n : ℤ)

end

end A233904.P8418464100702103124

namespace A233904

/-- `A228451(n)-n` -/
def P8418464100702103124.Spec : Prop :=
  ∀ n, P8418464100702103124.a n = A233904 n

end A233904

/-! ## A233904.P3005046869248241804

`2*A233905(n)-A011371(n)`
-/

namespace A233904.P3005046869248241804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A233905 n - A011371 n

end

end A233904.P3005046869248241804

namespace A233904

/-- `2*A233905(n)-A011371(n)` -/
def P3005046869248241804.Spec : Prop :=
  ∀ n, P3005046869248241804.a n = A233904 n

end A233904

/-! ## A233904.P12097062835369952902

`A011371(n)-2*A233931(n)`
-/

namespace A233904.P12097062835369952902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011371 n - 2 * A233931 n

end

end A233904.P12097062835369952902

namespace A233904

/-- `A011371(n)-2*A233931(n)` -/
def P12097062835369952902.Spec : Prop :=
  ∀ n, P12097062835369952902.a n = A233904 n

end A233904

/-! ## A233904.P18283520989136510167

`A233905(n)+A264596(n)-n`
-/

namespace A233904.P18283520989136510167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233905 n + (A264596 n - (n : ℤ))

end

end A233904.P18283520989136510167

namespace A233904

/-- `A233905(n)+A264596(n)-n` -/
def P18283520989136510167.Spec : Prop :=
  ∀ n, P18283520989136510167.a n = A233904 n

end A233904

/-! ## A233904.P11801155168601764209

`A233905(2*n)-(n-A264596(2*n))`
-/

namespace A233904.P11801155168601764209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233905 (2 * n) - ((n : ℤ) - A264596 (2 * n))

end

end A233904.P11801155168601764209

namespace A233904

/-- `A233905(2*n)-(n-A264596(2*n))` -/
def P11801155168601764209.Spec : Prop :=
  ∀ n, P11801155168601764209.a n = A233904 n

end A233904

/-!
# A233905: a(2n) = a(n), a(2n+1) = a(n) + n, with a(0)=0.

The programs for A233905, the canonical program `A233905.P15948617020059089414` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A233905 has offset 0).

The definition of A233905 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A233905.P3920069397500710383

`A011371(n)-A233931(n)`
-/

namespace A233905.P3920069397500710383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011371 n - A233931 n

end

end A233905.P3920069397500710383

namespace A233905

/-- `A011371(n)-A233931(n)` -/
def P3920069397500710383.Spec : Prop :=
  ∀ n, P3920069397500710383.a n = A233905 n

end A233905

/-! ## A233905.P6953812023386346530

`A233931(n)+A233904(n)`
-/

namespace A233905.P6953812023386346530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233931 n + A233904 n

end

end A233905.P6953812023386346530

namespace A233905

/-- `A233931(n)+A233904(n)` -/
def P6953812023386346530.Spec : Prop :=
  ∀ n, P6953812023386346530.a n = A233905 n

end A233905

/-! ## A233905.P15948617020059089414

`A264596(n)-A000120(n)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A233905

/-- `A264596(n)-A000120(n)` -/
def P15948617020059089414.Spec : Prop :=
  ∀ n, P15948617020059089414.a n = A233905 n

theorem P15948617020059089414.correct : P15948617020059089414.Spec := by
  intro n
  simp only [A233905]

end A233905

/-! ## A233905.P10751082685394704321

`A228451(n)-A264596(n)`
-/

namespace A233905.P10751082685394704321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228451 n - A264596 n

end

end A233905.P10751082685394704321

namespace A233905

/-- `A228451(n)-A264596(n)` -/
def P10751082685394704321.Spec : Prop :=
  ∀ n, P10751082685394704321.a n = A233905 n

end A233905

/-! ## A233905.P8626134437083525454

`(A233904(n)+A011371(n))/2`
-/

namespace A233905.P8626134437083525454
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A233904 n + A011371 n : ℚ) / 2

end

end A233905.P8626134437083525454

namespace A233905

/-- `(A233904(n)+A011371(n))/2` -/
def P8626134437083525454.Spec : Prop :=
  ∀ n, P8626134437083525454.a n = (A233905 n : ℚ)

end A233905

/-! ## A233905.P3721972037988552152

`A030109(n)+a(A030109(n))` with `a(0)=0`
-/

namespace A233905.P3721972037988552152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A030109 n + a (A030109 n).toNat

end

end A233905.P3721972037988552152

namespace A233905

/-- `A030109(n)+a(A030109(n))` -/
def P3721972037988552152.Spec : Prop :=
  ∀ n, P3721972037988552152.a n = A233905 n

end A233905

/-! ## A233905.P3372823783615944681

`n-(A233931(n)+A000120(n))`
-/

namespace A233905.P3372823783615944681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A233931 n + A000120 n)

end

end A233905.P3372823783615944681

namespace A233905

/-- `n-(A233931(n)+A000120(n))` -/
def P3372823783615944681.Spec : Prop :=
  ∀ n, P3372823783615944681.a n = A233905 n

end A233905

/-! ## A233905.P6750513195172277487

`A005187(n)-(A233931(n)+n)`
-/

namespace A233905.P6750513195172277487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 n - (A233931 n + (n : ℤ))

end

end A233905.P6750513195172277487

namespace A233905

/-- `A005187(n)-(A233931(n)+n)` -/
def P6750513195172277487.Spec : Prop :=
  ∀ n, P6750513195172277487.a n = A233905 n

end A233905

/-! ## A233905.P6516903084640460953

`A088371(n+1)-A063787(n+1)`
-/

namespace A233905.P6516903084640460953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088371 (n + 1) - A063787 (n + 1)

end

end A233905.P6516903084640460953

namespace A233905

/-- `A088371(n+1)-A063787(n+1)` -/
def P6516903084640460953.Spec : Prop :=
  ∀ n, P6516903084640460953.a n = A233905 n

end A233905

/-! ## A233905.P4065241220394405700

`(A233904(n)+n-A000120(n))/2`
-/

namespace A233905.P4065241220394405700
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A233904 n + (n : ℤ) - A000120 n : ℚ) / 2

end

end A233905.P4065241220394405700

namespace A233905

/-- `(A233904(n)+n-A000120(n))/2` -/
def P4065241220394405700.Spec : Prop :=
  ∀ n, P4065241220394405700.a n = (A233905 n : ℚ)

end A233905

/-! ## A233905.P13815544710602237512

`A005187(n)-A233931(2*n)`
-/

namespace A233905.P13815544710602237512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 n - A233931 (2 * n)

end

end A233905.P13815544710602237512

namespace A233905

/-- `A005187(n)-A233931(2*n)` -/
def P13815544710602237512.Spec : Prop :=
  ∀ n, P13815544710602237512.a n = A233905 n

end A233905

/-!
# A233906: Primes of the form (3^k mod k^3) + 1, in order of increasing k.

The programs for A233906, there is no canonical definition to state claims against.
-/

/-! ## A233906.P3027227871179314703

`p?[(3^(n+1))%Δ[∑[n]²]+1]`
-/

namespace A233906.P3027227871179314703
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f3 j) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (3 ^ (n + 1) : ℤ) ((f2 (n + 1) : ℤ) - (f2 n : ℤ)) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A233906.P3027227871179314703

/-! ## A233906.P8237599089735387967

`p?[A066607(n+1)+1]`
-/

namespace A233906.P8237599089735387967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066607 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A233906.P8237599089735387967

/-!
# A233907: a(n) = 9*binomial(7*n+9, n)/(7*n+9).

The programs for A233907, there is no canonical definition to state claims against.
-/

/-! ## A233907.P11637505009217628790

`A233833(n+1)-A233832(n+1)`
-/

namespace A233907.P11637505009217628790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233833 (n + 1) - A233832 (n + 1)

end

end A233907.P11637505009217628790

/-! ## A233907.P5536769698344243401

`A233833(A023443(n)+2)%A233832(n+1)`
-/

namespace A233907.P5536769698344243401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A233833 (A023443 n + 2).toNat) (A233832 (n + 1))

end

end A233907.P5536769698344243401

/-! ## A233907.P13208785703118239401

`A233833(n+1)-(A233835(n)+A002296(n+1))`
-/

namespace A233907.P13208785703118239401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233833 (n + 1) - (A233835 n + A002296 (n + 1))

end

end A233907.P13208785703118239401

/-! ## A233907.P6162716884248331135

`A233833(n+1)%(A233832(n+1)/A033999(n))`
-/

namespace A233907.P6162716884248331135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A233833 (n + 1)) (SequenceMachineLib.roundAway ((A233832 (n + 1) : ℚ) / (A033999 n : ℚ)))

end

end A233907.P6162716884248331135

/-! ## A233907.P3896926771100067817

`A233833(n+1)+A033999(2*n+1)*A233832(n+1)`
-/

namespace A233907.P3896926771100067817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233833 (n + 1) + A033999 (2 * n + 1) * A233832 (n + 1)

end

end A233907.P3896926771100067817

/-! ## A233907.P15585668067546718246

`A233833(A008683(64*(n+1))+n+1)%A233832(n+1)`
-/

namespace A233907.P15585668067546718246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A233833 (A008683 (64 * (n + 1)) + (n + 1 : ℤ)).toNat) (A233832 (n + 1))

end

end A233907.P15585668067546718246

/-!
# A233908: a(n) = 10*binomial(7*n+10,n)/(7*n+10).

The programs for A233908, there is no canonical definition to state claims against.
-/

/-! ## A233908.P8226393072369353471

`A386392(n+1)-A233833(n+1)`
-/

namespace A233908.P8226393072369353471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386392 (n + 1) - A233833 (n + 1)

end

end A233908.P8226393072369353471

/-!
# A233909: Number of (n+1)X(n+1) 0..7 arrays with every 2X2 subblock having the sum of the squares of the edge differences equal to 30, and no two adjacent values equal.

The programs for A233909, there is no canonical definition to state claims against.
-/

/-! ## A233909.P12564986621131496695

`A233917((n+1)²+n²)`
-/

namespace A233909.P12564986621131496695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233917 ((n + 1) ^ 2 + n ^ 2)

end

end A233909.P12564986621131496695

/-! ## A233909.P6675651897136104969

`lcm(2, A233917(A001844(n)))`
-/

namespace A233909.P6675651897136104969
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A233917 (A001844 n).toNat)

end

end A233909.P6675651897136104969

/-! ## A233909.P14506184939637732647

`A307598(n)+A233917(A001844(n))`
-/

namespace A233909.P14506184939637732647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307598 n + A233917 (A001844 n).toNat

end

end A233909.P14506184939637732647

/-!
# A233910: Number of (n+1)X(1+1) 0..7 arrays with every 2X2 subblock having the sum of the squares of the edge differences equal to 30, and no two adjacent values equal.

The programs for A233910, there is no canonical definition to state claims against.
-/

/-! ## A233910.P1536267805019093379

`A233917(∑[n]+1)`
-/

namespace A233910.P1536267805019093379
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233917 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A233910.P1536267805019093379

/-! ## A233910.P2837016916440599590

`lcm(2, A233917(A000124(n)))`
-/

namespace A233910.P2837016916440599590
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A233917 (A000124 n).toNat)

end

end A233910.P2837016916440599590

/-! ## A233910.P12954167527343574642

`record[gcd(A002262(n), A233917(n+1))]`
-/

namespace A233910.P12954167527343574642
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A233917 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233910.P12954167527343574642

/-! ## A233910.P4027427823093489706

`A233917(A000124(n))^dr(A017173(n))`
-/

namespace A233910.P4027427823093489706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233917 (A000124 n).toNat ^ SequenceMachineLib.digitalRoot (A017173 n)

end

end A233910.P4027427823093489706

/-! ## A233910.P8349776265806440341

`(A000005(2^n)-n)*A233917(A000124(n))`
-/

namespace A233910.P8349776265806440341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000005 (2 ^ n) - (n : ℤ)) * A233917 (A000124 n).toNat

end

end A233910.P8349776265806440341

/-!
# A233911: Number of (n+1)X(2+1) 0..7 arrays with every 2X2 subblock having the sum of the squares of the edge differences equal to 30, and no two adjacent values equal.

The programs for A233911, there is no canonical definition to state claims against.
-/

/-! ## A233911.P1283875384052702717

`A233917(∑[n+1]+2)`
-/

namespace A233911.P1283875384052702717
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233917 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A233911.P1283875384052702717

/-! ## A233911.P2466462389970340383

`lcm(2, A233917(A133263(n+1)))`
-/

namespace A233911.P2466462389970340383
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A233917 (A133263 (n + 1)).toNat)

end

end A233911.P2466462389970340383

/-! ## A233911.P761698673613104346

`record[gcd(A002262(n), A233917(n+2))]`
-/

namespace A233911.P761698673613104346
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A233917 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233911.P761698673613104346

/-! ## A233911.P3637579215255269575

`abs(A033999(n)*A233917(A133263(n+1)))`
-/

namespace A233911.P3637579215255269575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A033999 n * A233917 (A133263 (n + 1)).toNat|

end

end A233911.P3637579215255269575

/-! ## A233911.P16515885947918106971

`A000203(gcd(n, n+1))*A233917(A133263(n+1))`
-/

namespace A233911.P16515885947918106971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (Nat.gcd n (n + 1)) * A233917 (A133263 (n + 1)).toNat

end

end A233911.P16515885947918106971

/-!
# A233912: Number of (n+1)X(3+1) 0..7 arrays with every 2X2 subblock having the sum of the squares of the edge differences equal to 30, and no two adjacent values equal.

The programs for A233912, there is no canonical definition to state claims against.
-/

/-! ## A233912.P6219908053780185366

`A233917(∑[n+2]+4)`
-/

namespace A233912.P6219908053780185366
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233917 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A233912.P6219908053780185366

/-! ## A233912.P2311747310212964828

`lcm(2, A233917(A167614(n+1)))`
-/

namespace A233912.P2311747310212964828
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A233917 (A167614 (n + 1)).toNat)

end

end A233912.P2311747310212964828

/-! ## A233912.P7620898740110663127

`A233917(A167614(n+1))+A025439(n)`
-/

namespace A233912.P7620898740110663127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233917 (A167614 (n + 1)).toNat + A025439 n

end

end A233912.P7620898740110663127

/-! ## A233912.P14429346270360517843

`A233917(A167614(n+1))+A025443(n)`
-/

namespace A233912.P14429346270360517843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233917 (A167614 (n + 1)).toNat + A025443 n

end

end A233912.P14429346270360517843

/-! ## A233912.P17916230432926544752

`A233917(A167614(n+1))%A236521(n+1)`
-/

namespace A233912.P17916230432926544752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A233917 (A167614 (n + 1)).toNat) (A236521 (n + 1))

end

end A233912.P17916230432926544752

/-!
# A233913: Number of (n+1)X(4+1) 0..7 arrays with every 2X2 subblock having the sum of the squares of the edge differences equal to 30, and no two adjacent values equal.

The programs for A233913, there is no canonical definition to state claims against.
-/

/-! ## A233913.P11244271971559962837

`A233917(A374004(n+1))`
-/

namespace A233913.P11244271971559962837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233917 (A374004 (n + 1)).toNat

end

end A233913.P11244271971559962837

/-! ## A233913.P3936689992148131895

`A233917(A141214(n)+7)`
-/

namespace A233913.P3936689992148131895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233917 (A141214 n + 7).toNat

end

end A233913.P3936689992148131895

/-! ## A233913.P7553988293208700687

`A233917(A052905(n)+9)`
-/

namespace A233913.P7553988293208700687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233917 (A052905 n + 9).toNat

end

end A233913.P7553988293208700687

/-! ## A233913.P433745859302822816

`A233917(A055999(n)+10)`
-/

namespace A233913.P433745859302822816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233917 (A055999 n + 10).toNat

end

end A233913.P433745859302822816

/-! ## A233913.P16053940006930456560

`A233917(A167614(n+2)+1)`
-/

namespace A233913.P16053940006930456560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233917 (A167614 (n + 2) + 1).toNat

end

end A233913.P16053940006930456560

/-!
# A233914: Number of (n+1) X (5+1) 0..7 arrays with every 2 X 2 subblock having the sum of the squares of the edge differences equal to 30, and no two adjacent values equal.

The programs for A233914, there is no canonical definition to state claims against.
-/

/-! ## A233914.P16272850237697919329

`A233917(A374005(n+1))`
-/

namespace A233914.P16272850237697919329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233917 (A374005 (n + 1)).toNat

end

end A233914.P16272850237697919329

/-! ## A233914.P15326826616004337592

`A233917(A056000(n)+15)`
-/

namespace A233914.P15326826616004337592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233917 (A056000 n + 15).toNat

end

end A233914.P15326826616004337592

/-! ## A233914.P16294785965681626243

`A326685(n)+A233917(A167499(n+3))`
-/

namespace A233914.P16294785965681626243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326685 n + A233917 (A167499 (n + 3)).toNat

end

end A233914.P16294785965681626243

/-! ## A233914.P17875122020558970252

`A233917(A167499(n+3))*A356224(2*n+5)`
-/

namespace A233914.P17875122020558970252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233917 (A167499 (n + 3)).toNat * A356224 (2 * n + 5)

end

end A233914.P17875122020558970252

/-! ## A233914.P5246827068546433706

`A233917(∑[n+5]+6)`
-/

namespace A233914.P5246827068546433706
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233917 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A233914.P5246827068546433706

/-!
# A233915: Number of (n+1)X(6+1) 0..7 arrays with every 2X2 subblock having the sum of the squares of the edge differences equal to 30, and no two adjacent values equal.

The programs for A233915, there is no canonical definition to state claims against.
-/

/-! ## A233915.P9331368806037748297

`A233917(A374007(n+1))`
-/

namespace A233915.P9331368806037748297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233917 (A374007 (n + 1)).toNat

end

end A233915.P9331368806037748297

/-! ## A233915.P18194366665811904406

`A233917(eq[7, A131818(n+1)])`
-/

namespace A233915.P18194366665811904406
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233917 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A233915.P18194366665811904406

/-! ## A233915.P18010613638140648688

`A233917(eq[3, A219347(n)])`
-/

namespace A233915.P18010613638140648688
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233917 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A233915.P18010613638140648688

/-! ## A233915.P18153261804617047794

`A233917(eq[5, A193592(n)])`
-/

namespace A233915.P18153261804617047794
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233917 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A233915.P18153261804617047794

/-! ## A233915.P3232959214467702079

`A233917(eq[8, A258709(n)])`
-/

namespace A233915.P3232959214467702079
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258709 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233917 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A233915.P3232959214467702079

/-!
# A233916: Number of (n+1)X(7+1) 0..7 arrays with every 2X2 subblock having the sum of the squares of the edge differences equal to 30, and no two adjacent values equal.

The programs for A233916, there is no canonical definition to state claims against.
-/

/-! ## A233916.P4408208644797753274

`A233917(A374008(n+1))`
-/

namespace A233916.P4408208644797753274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233917 (A374008 (n + 1)).toNat

end

end A233916.P4408208644797753274

/-! ## A233916.P3368984246096642466

`A233917(eq[4, A219347(n)])`
-/

namespace A233916.P3368984246096642466
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233917 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A233916.P3368984246096642466

/-! ## A233916.P7440671506874171508

`A233917(eq[6, A193592(n)])`
-/

namespace A233916.P7440671506874171508
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233917 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A233916.P7440671506874171508

/-!
# A233918: a(n) = |{0 < k <= n/2: (phi(k) + phi(n-k))/2 is prime}|, where phi(.) is Euler's totient function.

The programs for A233918, there is no canonical definition to state claims against.
-/

/-! ## A233918.P16821955397389551982

`A037812(A089142(n+1)+A035103(n+1))`
-/

namespace A233918.P16821955397389551982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037812 (A089142 (n + 1) + A035103 (n + 1)).toNat

end

end A233918.P16821955397389551982

/-! ## A233918.P1017693155785916923

`A333632(A075172(n)*A309880(n))`
-/

namespace A233918.P1017693155785916923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333632 (A075172 n * A309880 n).toNat

end

end A233918.P1017693155785916923

/-! ## A233918.P2999230272285149816

`A131576(A056440(n+1)+A000332(n))`
-/

namespace A233918.P2999230272285149816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131576 (A056440 (n + 1) + A000332 n).toNat

end

end A233918.P2999230272285149816

/-!
# A233919: a(n) is the number of noncomposites (primes or 1) that are n digits long in balanced ternary notation.

The programs for A233919, there is no canonical definition to state claims against.
-/

/-! ## A233919.P12790183282276553029

`A147680(A027132(n+1))`
-/

namespace A233919.P12790183282276553029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147680 (A027132 (n + 1)).toNat

end

end A233919.P12790183282276553029

/-! ## A233919.P17489668434833061702

`eq[A341595(n+1), A351372(n+1)]`
-/

namespace A233919.P17489668434833061702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341595 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351372 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A233919.P17489668434833061702

/-! ## A233919.P2424112805970885420

`eq[A351372(n+1), A358751(n+1)]`
-/

namespace A233919.P2424112805970885420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351372 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358751 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A233919.P2424112805970885420

/-!
# A233920: Number of (n+1)X(n+1) 0..4 arrays with every 2X2 subblock having the sum of the absolute values of the edge differences equal to 8 and no adjacent elements equal.

The programs for A233920, there is no canonical definition to state claims against.
-/

/-! ## A233920.P16018328916467909776

`A233928((n+1)²+n²)`
-/

namespace A233920.P16018328916467909776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233928 ((n + 1) ^ 2 + n ^ 2)

end

end A233920.P16018328916467909776

/-! ## A233920.P9524243989756599622

`lcm(2, A233928(A001844(n)))`
-/

namespace A233920.P9524243989756599622
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A233928 (A001844 n).toNat)

end

end A233920.P9524243989756599622

/-! ## A233920.P13361266113652738467

`A233928(A001844(n))+A025468(n)`
-/

namespace A233920.P13361266113652738467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233928 (A001844 n).toNat + A025468 n

end

end A233920.P13361266113652738467

/-!
# A233921: Number of (n+1) X (1+1) 0..4 arrays with every 2 X 2 subblock having the sum of the absolute values of the edge differences equal to 8 and no adjacent elements equal.

The programs for A233921, there is no canonical definition to state claims against.
-/

/-! ## A233921.P6026219215144564907

`A233928(∑[n]+1)`
-/

namespace A233921.P6026219215144564907
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233928 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A233921.P6026219215144564907

/-! ## A233921.P11530707428744625922

`lcm(2, A233928(A000124(n)))`
-/

namespace A233921.P11530707428744625922
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A233928 (A000124 n).toNat)

end

end A233921.P11530707428744625922

/-! ## A233921.P9781190830539299100

`record[gcd(A048720(n), A233928(n+1))]`
-/

namespace A233921.P9781190830539299100
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A048720 n) (A233928 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233921.P9781190830539299100

/-! ## A233921.P9675822284002457057

`record[lcm(A143433(n), A233928(n+1))]`
-/

namespace A233921.P9675822284002457057
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A143433 n) (A233928 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233921.P9675822284002457057

/-! ## A233921.P10103508064097873963

`record[A233928(n+1)/A166341(n+1)]`
-/

namespace A233921.P10103508064097873963
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A233928 (n + 1) : ℚ) / (A166341 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233921.P10103508064097873963

/-!
# A233922: Number of (n+1)X(2+1) 0..4 arrays with every 2X2 subblock having the sum of the absolute values of the edge differences equal to 8 and no adjacent elements equal.

The programs for A233922, there is no canonical definition to state claims against.
-/

/-! ## A233922.P14380171720731493819

`A233928(∑[n+1]+2)`
-/

namespace A233922.P14380171720731493819
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233928 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A233922.P14380171720731493819

/-! ## A233922.P11634504757193388591

`lcm(2, A233928(A133263(n+1)))`
-/

namespace A233922.P11634504757193388591
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A233928 (A133263 (n + 1)).toNat)

end

end A233922.P11634504757193388591

/-! ## A233922.P3390956534879080951

`record[lcm(A143433(n), A233928(n+2))]`
-/

namespace A233922.P3390956534879080951
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A143433 n) (A233928 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233922.P3390956534879080951

/-! ## A233922.P1145418878135540169

`A233928(A133263(n+1))%A233902(n+1)`
-/

namespace A233922.P1145418878135540169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A233928 (A133263 (n + 1)).toNat) (A233902 (n + 1))

end

end A233922.P1145418878135540169

/-!
# A233923: Number of (n+1)X(3+1) 0..4 arrays with every 2X2 subblock having the sum of the absolute values of the edge differences equal to 8 and no adjacent elements equal.

The programs for A233923, there is no canonical definition to state claims against.
-/

/-! ## A233923.P1413449768127513551

`A233928(∑[n+2]+4)`
-/

namespace A233923.P1413449768127513551
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233928 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A233923.P1413449768127513551

/-! ## A233923.P8055304891467547049

`lcm(2, A233928(A167614(n+1)))`
-/

namespace A233923.P8055304891467547049
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A233928 (A167614 (n + 1)).toNat)

end

end A233923.P8055304891467547049

/-! ## A233923.P7127322842723999976

`A063775(n+1)*A233928(A167614(n+1))`
-/

namespace A233923.P7127322842723999976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063775 (n + 1) * A233928 (A167614 (n + 1)).toNat

end

end A233923.P7127322842723999976

/-! ## A233923.P2032556115381688041

`A233928(A167614(n+1))%A233937(n+1)`
-/

namespace A233923.P2032556115381688041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A233928 (A167614 (n + 1)).toNat) (A233937 (n + 1))

end

end A233923.P2032556115381688041

/-! ## A233923.P13185678445973334022

`A000041(C(2, n+2))*A233928(A167614(n+1))`
-/

namespace A233923.P13185678445973334022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 (n + 2)) * A233928 (A167614 (n + 1)).toNat

end

end A233923.P13185678445973334022

/-!
# A233924: Number of (n+1)X(4+1) 0..4 arrays with every 2X2 subblock having the sum of the absolute values of the edge differences equal to 8 and no adjacent elements equal.

The programs for A233924, there is no canonical definition to state claims against.
-/

/-! ## A233924.P5420469310441464838

`A233928(A374004(n+1))`
-/

namespace A233924.P5420469310441464838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233928 (A374004 (n + 1)).toNat

end

end A233924.P5420469310441464838

/-! ## A233924.P2205487206159652134

`A233928(A141214(n)+7)`
-/

namespace A233924.P2205487206159652134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233928 (A141214 n + 7).toNat

end

end A233924.P2205487206159652134

/-! ## A233924.P9317314615642433274

`A233928(A052905(n)+9)`
-/

namespace A233924.P9317314615642433274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233928 (A052905 n + 9).toNat

end

end A233924.P9317314615642433274

/-! ## A233924.P18103503158010463298

`A233928(A167614(n+2)+1)`
-/

namespace A233924.P18103503158010463298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233928 (A167614 (n + 2) + 1).toNat

end

end A233924.P18103503158010463298

/-! ## A233924.P6354518490090113625

`A233928(A000096(n+2)+5)`
-/

namespace A233924.P6354518490090113625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233928 (A000096 (n + 2) + 5).toNat

end

end A233924.P6354518490090113625

/-!
# A233925: Number of (n+1)X(5+1) 0..4 arrays with every 2X2 subblock having the sum of the absolute values of the edge differences equal to 8 and no adjacent elements equal.

The programs for A233925, there is no canonical definition to state claims against.
-/

/-! ## A233925.P2502483154647521931

`A233928(A374005(n+1))`
-/

namespace A233925.P2502483154647521931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233928 (A374005 (n + 1)).toNat

end

end A233925.P2502483154647521931

/-! ## A233925.P16242898650476626767

`A233928(eq[7, A066657(n)])`
-/

namespace A233925.P16242898650476626767
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233928 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A233925.P16242898650476626767

/-! ## A233925.P16072305670145238655

`A233928(∑[n+5]+6)`
-/

namespace A233925.P16072305670145238655
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233928 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A233925.P16072305670145238655

/-!
# A233926: Number of (n+1)X(6+1) 0..4 arrays with every 2X2 subblock having the sum of the absolute values of the edge differences equal to 8 and no adjacent elements equal.

The programs for A233926, there is no canonical definition to state claims against.
-/

/-! ## A233926.P3415335726742035984

`A233928(A374007(n+1))`
-/

namespace A233926.P3415335726742035984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233928 (A374007 (n + 1)).toNat

end

end A233926.P3415335726742035984

/-! ## A233926.P11204709347300658528

`A233928(A056119(n)+16)`
-/

namespace A233926.P11204709347300658528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233928 (A056119 n + 16).toNat

end

end A233926.P11204709347300658528

/-!
# A233927: Number of (n+1)X(7+1) 0..4 arrays with every 2X2 subblock having the sum of the absolute values of the edge differences equal to 8 and no adjacent elements equal.

The programs for A233927, there is no canonical definition to state claims against.
-/

/-! ## A233927.P4219249431546419612

`A233928(A374008(n+1))`
-/

namespace A233927.P4219249431546419612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233928 (A374008 (n + 1)).toNat

end

end A233927.P4219249431546419612

/-! ## A233927.P11029940258847420094

`A233928(eq[10, A185782(n+1)])`
-/

namespace A233927.P11029940258847420094
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233928 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A233927.P11029940258847420094

/-! ## A233927.P8012150091227342007

`A233928(A000217(n+6)+n+1)`
-/

namespace A233927.P8012150091227342007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233928 (A000217 (n + 6) + (n + 1 : ℤ)).toNat

end

end A233927.P8012150091227342007

/-!
# A233929: Smallest x such that sigma(x) == n-1 (mod n).

The programs for A233929, there is no canonical definition to state claims against.
-/

/-! ## A233929.P1937717299250657918

`A074625(∑[1-char[1]+n])`
-/

namespace A233929.P1937717299250657918
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074625 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A233929.P1937717299250657918

/-! ## A233929.P3512775091470680092

`∏{e}[2^n, A084303(#)]`
-/

namespace A233929.P3512775091470680092
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A084303 (Nat.factorization (f1 n) p)

end

end A233929.P3512775091470680092

/-!
# A233930: Primes p that give record exponents of 2 in p^2 - 1 (A091282).

The programs for A233930, there is no canonical definition to state claims against.
-/

/-! ## A233930.P7574317086105270019

`record[A093868(A135530(n))]`
-/

namespace A233930.P7574317086105270019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093868 (A135530 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233930.P7574317086105270019

/-! ## A233930.P15360198663490489470

`record[A093868(A090988(n+1))]`
-/

namespace A233930.P15360198663490489470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093868 (A090988 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233930.P15360198663490489470

/-! ## A233930.P5489394675759926576

`record[A093868(A130321(n+1))]`
-/

namespace A233930.P5489394675759926576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093868 (A130321 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233930.P5489394675759926576

/-! ## A233930.P1388287256271303202

`record[A093868(2*A130321(n))]`
-/

namespace A233930.P1388287256271303202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093868 (2 * A130321 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233930.P1388287256271303202

/-! ## A233930.P8613849765294453526

`record[A093868(2^A106466(n))]`
-/

namespace A233930.P8613849765294453526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093868 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A106466 n : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233930.P8613849765294453526

/-!
# A233931: a(2n) = a(n) + n, a(2n+1) = a(n), with a(0)=0.

The programs for A233931, the canonical program `A233931.P3085312143408834757` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A233931 has offset 0).

The definition of A233931 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A233905, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A233931.P3085312143408834757

`A011371(n)-A233905(n)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A233931

/-- `A011371(n)-A233905(n)` -/
def P3085312143408834757.Spec : Prop :=
  ∀ n, P3085312143408834757.a n = A233931 n

theorem P3085312143408834757.correct : P3085312143408834757.Spec := by
  intro n
  simp only [A233931]

end A233931

/-! ## A233931.P1077387380856592995

`a(floor(n/2))+n-gcd(n, ∑[n])` with `a(0)=0`
-/

namespace A233931.P1077387380856592995
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a ⌊(n : ℚ) / 2⌋.toNat + (n : ℤ) - (Nat.gcd n (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ)

end

end A233931.P1077387380856592995

namespace A233931

/-- `a(floor(n/2))+n-gcd(n, ∑[n])` -/
def P1077387380856592995.Spec : Prop :=
  ∀ n, P1077387380856592995.a n = A233931 n

end A233931

/-! ## A233931.P15827886661520146762

`n-A264596(n)`
-/

namespace A233931.P15827886661520146762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A264596 n

end

end A233931.P15827886661520146762

namespace A233931

/-- `n-A264596(n)` -/
def P15827886661520146762.Spec : Prop :=
  ∀ n, P15827886661520146762.a n = A233931 n

end A233931

/-! ## A233931.P14379110358429681007

`A354158(n+1)+1`
-/

namespace A233931.P14379110358429681007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354158 (n + 1) + 1

end

end A233931.P14379110358429681007

namespace A233931

/-- `A354158(n+1)+1` -/
def P14379110358429681007.Spec : Prop :=
  ∀ n, P14379110358429681007.a n = A233931 n

end A233931

/-! ## A233931.P15492554061766885711

`1-A088371(n+1)+n`
-/

namespace A233931.P15492554061766885711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A088371 (n + 1) + (n : ℤ)

end

end A233931.P15492554061766885711

namespace A233931

/-- `1-A088371(n+1)+n` -/
def P15492554061766885711.Spec : Prop :=
  ∀ n, P15492554061766885711.a n = A233931 n

end A233931

/-! ## A233931.P17965234104889908316

`(2*n+1)%A264596(2*n+1)`
-/

namespace A233931.P17965234104889908316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (2 * n + 1 : ℤ) (A264596 (2 * n + 1))

end

end A233931.P17965234104889908316

namespace A233931

/-- `(2*n+1)%A264596(2*n+1)` -/
def P17965234104889908316.Spec : Prop :=
  ∀ n, P17965234104889908316.a n = A233931 n

end A233931

/-! ## A233931.P11300056965118670439

`A233905(n)-A233904(n)`
-/

namespace A233931.P11300056965118670439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233905 n - A233904 n

end

end A233931.P11300056965118670439

namespace A233931

/-- `A233905(n)-A233904(n)` -/
def P11300056965118670439.Spec : Prop :=
  ∀ n, P11300056965118670439.a n = A233931 n

end A233931

/-! ## A233931.P17304260866094529998

`n-A004483(A088371(n+1))`
-/

namespace A233931.P17304260866094529998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A004483 (A088371 (n + 1)).toNat

end

end A233931.P17304260866094529998

namespace A233931

/-- `n-A004483(A088371(n+1))` -/
def P17304260866094529998.Spec : Prop :=
  ∀ n, P17304260866094529998.a n = A233931 n

end A233931

/-! ## A233931.P11321136352635590869

`(A005187(n)-A228451(n))/2`
-/

namespace A233931.P11321136352635590869
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005187 n - A228451 n : ℚ) / 2

end

end A233931.P11321136352635590869

namespace A233931

/-- `(A005187(n)-A228451(n))/2` -/
def P11321136352635590869.Spec : Prop :=
  ∀ n, P11321136352635590869.a n = (A233931 n : ℚ)

end A233931

/-! ## A233931.P18355672460833108465

`(A011371(n)-A233904(n))/2`
-/

namespace A233931.P18355672460833108465
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A011371 n - A233904 n : ℚ) / 2

end

end A233931.P18355672460833108465

namespace A233931

/-- `(A011371(n)-A233904(n))/2` -/
def P18355672460833108465.Spec : Prop :=
  ∀ n, P18355672460833108465.a n = (A233931 n : ℚ)

end A233931

/-! ## A233931.P5015727735809197357

`A025480(n)+a(A025480(n))` with `a(0)=0`
-/

namespace A233931.P5015727735809197357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A025480 n + a (A025480 n).toNat

end

end A233931.P5015727735809197357

namespace A233931

/-- `A025480(n)+a(A025480(n))` -/
def P5015727735809197357.Spec : Prop :=
  ∀ n, P5015727735809197357.a n = A233931 n

end A233931

/-! ## A233931.P12285172231460657232

`n-(A233905(n)+A000120(n))`
-/

namespace A233931.P12285172231460657232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A233905 n + A000120 n)

end

end A233931.P12285172231460657232

namespace A233931

/-- `n-(A233905(n)+A000120(n))` -/
def P12285172231460657232.Spec : Prop :=
  ∀ n, P12285172231460657232.a n = A233931 n

end A233931

/-! ## A233931.P14907984202368193007

`A005187(n)-(A233905(n)+n)`
-/

namespace A233931.P14907984202368193007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 n - (A233905 n + (n : ℤ))

end

end A233931.P14907984202368193007

namespace A233931

/-- `A005187(n)-(A233905(n)+n)` -/
def P14907984202368193007.Spec : Prop :=
  ∀ n, P14907984202368193007.a n = A233931 n

end A233931

/-! ## A233931.P13327235698500261426

`A233905(n)+n-A228451(n)`
-/

namespace A233931.P13327235698500261426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233905 n + ((n : ℤ) - A228451 n)

end

end A233931.P13327235698500261426

namespace A233931

/-- `A233905(n)+n-A228451(n)` -/
def P13327235698500261426.Spec : Prop :=
  ∀ n, P13327235698500261426.a n = A233931 n

end A233931

/-! ## A233931.P8700090005344133343

`n-(A233905(n)+log2(A001316(n)))`
-/

namespace A233931.P8700090005344133343
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n : ℝ) - ((A233905 n : ℝ) + Real.logb 2 (A001316 n : ℝ))

end

end A233931.P8700090005344133343

namespace A233931

/-- `n-(A233905(n)+log2(A001316(n)))` -/
def P8700090005344133343.Spec : Prop :=
  ∀ n, P8700090005344133343.a n = (A233931 n : ℝ)

end A233931

/-! ## A233931.P15531195843254740312

`∑[A007814(A302436(n))]-A233905(n)`
-/

namespace A233931.P15531195843254740312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A302436 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A233905 n

end

end A233931.P15531195843254740312

namespace A233931

/-- `∑[A007814(A302436(n))]-A233905(n)` -/
def P15531195843254740312.Spec : Prop :=
  ∀ n, P15531195843254740312.a n = A233931 n

end A233931

/-! ## A233931.P1507963142502047472

`n-(A233905(n)+A001222(A071044(n)))`
-/

namespace A233931.P1507963142502047472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A233905 n + A001222 (A071044 n).toNat)

end

end A233931.P1507963142502047472

namespace A233931

/-- `n-(A233905(n)+A001222(A071044(n)))` -/
def P1507963142502047472.Spec : Prop :=
  ∀ n, P1507963142502047472.a n = A233931 n

end A233931

/-! ## A233931.P16055369048395810587

`n-(A160385(n)+A160383(n))-A233905(n)`
-/

namespace A233931.P16055369048395810587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A160385 n + A160383 n) - A233905 n

end

end A233931.P16055369048395810587

namespace A233931

/-- `n-(A160385(n)+A160383(n))-A233905(n)` -/
def P16055369048395810587.Spec : Prop :=
  ∀ n, P16055369048395810587.a n = A233931 n

end A233931

/-! ## A233931.P13065944200156392591

`∑[A007814(n+1)]-A007814(n+1)-A233905(n)`
-/

namespace A233931.P13065944200156392591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A007814 (n + 1) - A233905 n

end

end A233931.P13065944200156392591

namespace A233931

/-- `∑[A007814(n+1)]-A007814(n+1)-A233905(n)` -/
def P13065944200156392591.Spec : Prop :=
  ∀ n, P13065944200156392591.a n = A233931 n

end A233931

/-!
# A233932: Irregular table read by rows: T(n,k) is the binary representation of n shifted right k times and incremented if the last bit shifted away was set.

The programs for A233932, the canonical program `A233932.P2836833035610206240` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A233932 has offset 1).

The definition of A233932 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 106 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A233932.P5268374786568131741

`Δ[record[A131966(n+1)]]`
-/

namespace A233932.P5268374786568131741
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131966 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A233932.P5268374786568131741

namespace A233932

/-- `Δ[record[A131966(n+1)]]` -/
def P5268374786568131741.Spec : Prop :=
  ∀ n, P5268374786568131741.a n = A233932 (n + 1)

end A233932

/-! ## A233932.P17147961323896488704

`ceil(A120385(n+1)/2)`
-/

namespace A233932.P17147961323896488704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A120385 (n + 1) : ℚ) / 2⌉

end

end A233932.P17147961323896488704

namespace A233932

/-- `ceil(A120385(n+1)/2)` -/
def P17147961323896488704.Spec : Prop :=
  ∀ n, P17147961323896488704.a n = A233932 (n + 1)

end A233932

/-! ## A233932.P8133837784091097414

`round(A120385(C(n+1, n))/2)`
-/

namespace A233932.P8133837784091097414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A120385 (Nat.choose (n + 1) n) : ℚ) / 2)

end

end A233932.P8133837784091097414

namespace A233932

/-- `round(A120385(C(n+1, n))/2)` -/
def P8133837784091097414.Spec : Prop :=
  ∀ n, P8133837784091097414.a n = A233932 (n + 1)

end A233932

/-! ## A233932.P6065759276687396867

`round(A120385(1-char[1]+n)/2)`
-/

namespace A233932.P6065759276687396867
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A120385 (1 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + (n : ℤ)).toNat : ℚ) / 2)

end

end A233932.P6065759276687396867

namespace A233932

/-- `round(A120385(1-char[1]+n)/2)` -/
def P6065759276687396867.Spec : Prop :=
  ∀ n, P6065759276687396867.a n = A233932 (n + 1)

end A233932

/-! ## A233932.P12534490118937867802

`A065033(A120385(n+1))`
-/

namespace A233932.P12534490118937867802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A120385 (n + 1)).toNat

end

end A233932.P12534490118937867802

namespace A233932

/-- `A065033(A120385(n+1))` -/
def P12534490118937867802.Spec : Prop :=
  ∀ n, P12534490118937867802.a n = A233932 (n + 1)

end A233932

/-! ## A233932.P1441997214764375707

`A004526(A120385(n+1)+1)`
-/

namespace A233932.P1441997214764375707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A120385 (n + 1) + 1).toNat

end

end A233932.P1441997214764375707

namespace A233932

/-- `A004526(A120385(n+1)+1)` -/
def P1441997214764375707.Spec : Prop :=
  ∀ n, P1441997214764375707.a n = A233932 (n + 1)

end A233932

/-! ## A233932.P17917526689577808116

`A123108(A120385(n+1)+1)`
-/

namespace A233932.P17917526689577808116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A120385 (n + 1) + 1).toNat

end

end A233932.P17917526689577808116

namespace A233932

/-- `A123108(A120385(n+1)+1)` -/
def P17917526689577808116.Spec : Prop :=
  ∀ n, P17917526689577808116.a n = A233932 (n + 1)

end A233932

/-! ## A233932.P17028194311733719053

`A008619(A120385(n+1)-1)`
-/

namespace A233932.P17028194311733719053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A120385 (n + 1) - 1).toNat

end

end A233932.P17028194311733719053

namespace A233932

/-- `A008619(A120385(n+1)-1)` -/
def P17028194311733719053.Spec : Prop :=
  ∀ n, P17028194311733719053.a n = A233932 (n + 1)

end A233932

/-! ## A233932.P3202356088349131368

`A140106(A120385(n+1)+3)`
-/

namespace A233932.P3202356088349131368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140106 (A120385 (n + 1) + 3).toNat

end

end A233932.P3202356088349131368

namespace A233932

/-- `A140106(A120385(n+1)+3)` -/
def P3202356088349131368.Spec : Prop :=
  ∀ n, P3202356088349131368.a n = A233932 (n + 1)

end A233932

/-! ## A233932.P371907279570908501

`A026922(2*A120385(n+1))`
-/

namespace A233932.P371907279570908501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026922 (2 * A120385 (n + 1)).toNat

end

end A233932.P371907279570908501

namespace A233932

/-- `A026922(2*A120385(n+1))` -/
def P371907279570908501.Spec : Prop :=
  ∀ n, P371907279570908501.a n = A233932 (n + 1)

end A233932

/-! ## A233932.P8039747931387312478

`A110655(2*A120385(n+1))`
-/

namespace A233932.P8039747931387312478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110655 (2 * A120385 (n + 1)).toNat

end

end A233932.P8039747931387312478

namespace A233932

/-- `A110655(2*A120385(n+1))` -/
def P8039747931387312478.Spec : Prop :=
  ∀ n, P8039747931387312478.a n = A233932 (n + 1)

end A233932

/-! ## A233932.P13923616851748368705

`A028242(xor(1, A120385(n+1)))`
-/

namespace A233932.P13923616851748368705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (Int.xor 1 (A120385 (n + 1))).toNat

end

end A233932.P13923616851748368705

namespace A233932

/-- `A028242(xor(1, A120385(n+1)))` -/
def P13923616851748368705.Spec : Prop :=
  ∀ n, P13923616851748368705.a n = A233932 (n + 1)

end A233932

/-! ## A233932.P2836833035610206240

`Δ[A008619(A004202(a(n-1)))]` with `a(0)=1`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A233932

/-- `Δ[A008619(A004202(a(n-1)))]` -/
def P2836833035610206240.Spec : Prop :=
  ∀ n, P2836833035610206240.a n = A233932 (n + 1)

theorem P2836833035610206240.correct : P2836833035610206240.Spec := by
  intro n
  simp only [A233932, Nat.add_sub_cancel]

end A233932

/-! ## A233932.P13496608004520949743

`A002265(2*(A120385(n+1)+1))`
-/

namespace A233932.P13496608004520949743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (2 * (A120385 (n + 1) + 1)).toNat

end

end A233932.P13496608004520949743

namespace A233932

/-- `A002265(2*(A120385(n+1)+1))` -/
def P13496608004520949743.Spec : Prop :=
  ∀ n, P13496608004520949743.a n = A233932 (n + 1)

end A233932

/-! ## A233932.P8068323958305957875

`A001222(2^round(A120385(n+1)/2))`
-/

namespace A233932.P8068323958305957875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (SequenceMachineLib.roundAway ((A120385 (n + 1) : ℚ) / 2) : ℤ))).toNat

end

end A233932.P8068323958305957875

namespace A233932

/-- `A001222(2^round(A120385(n+1)/2))` -/
def P8068323958305957875.Spec : Prop :=
  ∀ n, P8068323958305957875.a n = A233932 (n + 1)

end A233932

/-! ## A233932.P15435678604993304517

`or(round(A120385(n+1)/2), A000007(n))`
-/

namespace A233932.P15435678604993304517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (SequenceMachineLib.roundAway ((A120385 (n + 1) : ℚ) / 2)) (A000007 n)

end

end A233932.P15435678604993304517

namespace A233932

/-- `or(round(A120385(n+1)/2), A000007(n))` -/
def P15435678604993304517.Spec : Prop :=
  ∀ n, P15435678604993304517.a n = A233932 (n + 1)

end A233932

/-! ## A233932.P8228639648697208790

`round(A120385(n+1)/2)%A000041(n+4)`
-/

namespace A233932.P8228639648697208790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A120385 (n + 1) : ℚ) / 2)) (A000041 (n + 4))

end

end A233932.P8228639648697208790

namespace A233932

/-- `round(A120385(n+1)/2)%A000041(n+4)` -/
def P8228639648697208790.Spec : Prop :=
  ∀ n, P8228639648697208790.a n = A233932 (n + 1)

end A233932

/-! ## A233932.P12685047434317835892

`round(A120385(n+1)/2)*A014963(4*n+6)`
-/

namespace A233932.P12685047434317835892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A120385 (n + 1) : ℚ) / 2) * A014963 (4 * n + 6)

end

end A233932.P12685047434317835892

namespace A233932

/-- `round(A120385(n+1)/2)*A014963(4*n+6)` -/
def P12685047434317835892.Spec : Prop :=
  ∀ n, P12685047434317835892.a n = A233932 (n + 1)

end A233932

/-! ## A233932.P3959531455776721512

`A120385(A083652(A120385(n+1))+1)`
-/

namespace A233932.P3959531455776721512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120385 (A083652 (A120385 (n + 1)).toNat + 1).toNat

end

end A233932.P3959531455776721512

namespace A233932

/-- `A120385(A083652(A120385(n+1))+1)` -/
def P3959531455776721512.Spec : Prop :=
  ∀ n, P3959531455776721512.a n = A233932 (n + 1)

end A233932

/-!
# A233933: Smallest number k such that R(n) is the n-th divisor of k, where R(n) is the n-th Ramanujan prime (A104272).

The programs for A233933, there is no canonical definition to state claims against.
-/

/-! ## A233933.P8013163242537800923

`A052410(A005179(n+1)*A220293(n+1))`
-/

namespace A233933.P8013163242537800923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052410 (A005179 (n + 1) * A220293 (n + 1)).toNat

end

end A233933.P8013163242537800923

/-! ## A233933.P1636475021960037852

`A052410(lcm(A005179(n+1), A220293(n+1)))`
-/

namespace A233933.P1636475021960037852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052410 (Int.lcm (A005179 (n + 1)) (A220293 (n + 1)))

end

end A233933.P1636475021960037852

/-! ## A233933.P8583251297957597061

`A194658(A348428(n+2))*A355303(n+1)`
-/

namespace A233933.P8583251297957597061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194658 (A348428 (n + 2)).toNat * A355303 (n + 1)

end

end A233933.P8583251297957597061

/-!
# A233934: Number of (n+1)X(1+1) 0..7 arrays with every 2X2 subblock having the sum of the absolute values of all six edge and diagonal differences equal to 16.

The programs for A233934, there is no canonical definition to state claims against.
-/

/-! ## A233934.P844917837986528784

`A233939(∑[n]+1)`
-/

namespace A233934.P844917837986528784
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233939 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A233934.P844917837986528784

/-! ## A233934.P12490824993240171005

`lcm(2, A233939(A000124(n)))`
-/

namespace A233934.P12490824993240171005
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A233939 (A000124 n).toNat)

end

end A233934.P12490824993240171005

/-! ## A233934.P13475287590467500672

`record[A233939(A056536(n+1))]`
-/

namespace A233934.P13475287590467500672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233939 (A056536 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233934.P13475287590467500672

/-! ## A233934.P17016876893006380695

`record[A233939(A114091(n+1))]`
-/

namespace A233934.P17016876893006380695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233939 (A114091 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233934.P17016876893006380695

/-! ## A233934.P16282527737675910272

`record[A233939(A286245(n+1))]`
-/

namespace A233934.P16282527737675910272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233939 (A286245 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233934.P16282527737675910272

/-!
# A233935: Number of (n+1)X(2+1) 0..7 arrays with every 2X2 subblock having the sum of the absolute values of all six edge and diagonal differences equal to 16.

The programs for A233935, there is no canonical definition to state claims against.
-/

/-! ## A233935.P9252609555346640313

`A233939(∑[n+1]+2)`
-/

namespace A233935.P9252609555346640313
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233939 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A233935.P9252609555346640313

/-! ## A233935.P1248555951831571156

`record[A233939(A198455(n+1))]`
-/

namespace A233935.P1248555951831571156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233939 (A198455 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233935.P1248555951831571156

/-! ## A233935.P1422274717286778536

`A233939(A000096(n+1))%A233938(n+1)`
-/

namespace A233935.P1422274717286778536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A233939 (A000096 (n + 1)).toNat) (A233938 (n + 1))

end

end A233935.P1422274717286778536

/-! ## A233935.P10427963178112941289

`A146291(n+1)*A233939(A101881(2*n+1))`
-/

namespace A233935.P10427963178112941289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146291 (n + 1) * A233939 (A101881 (2 * n + 1)).toNat

end

end A233935.P10427963178112941289

/-!
# A233936: Number of (n+1)X(3+1) 0..7 arrays with every 2X2 subblock having the sum of the absolute values of all six edge and diagonal differences equal to 16.

The programs for A233936, there is no canonical definition to state claims against.
-/

/-! ## A233936.P9161537675562411495

`A233939(∑[n+2]+4)`
-/

namespace A233936.P9161537675562411495
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233939 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A233936.P9161537675562411495

/-! ## A233936.P782240493056541405

`lcm(2, A233939(A167614(n+1)))`
-/

namespace A233936.P782240493056541405
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A233939 (A167614 (n + 1)).toNat)

end

end A233936.P782240493056541405

/-! ## A233936.P8062841627204718921

`A233939(A167614(n+1))+A011731(n)`
-/

namespace A233936.P8062841627204718921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233939 (A167614 (n + 1)).toNat + A011731 n

end

end A233936.P8062841627204718921

/-! ## A233936.P7312055485257510124

`A233939(A167614(n+1))+A178798(n)`
-/

namespace A233936.P7312055485257510124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233939 (A167614 (n + 1)).toNat + A178798 n

end

end A233936.P7312055485257510124

/-! ## A233936.P12970354846114483951

`A233939(A167614(n+1))+A185203(n)`
-/

namespace A233936.P12970354846114483951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233939 (A167614 (n + 1)).toNat + A185203 n

end

end A233936.P12970354846114483951

/-!
# A233937: Number of (n+1)X(4+1) 0..7 arrays with every 2X2 subblock having the sum of the absolute values of all six edge and diagonal differences equal to 16.

The programs for A233937, there is no canonical definition to state claims against.
-/

/-! ## A233937.P2117151150462602245

`A233939(A374004(n+1))`
-/

namespace A233937.P2117151150462602245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233939 (A374004 (n + 1)).toNat

end

end A233937.P2117151150462602245

/-! ## A233937.P10574150936167176090

`A233939(A141214(n)+7)`
-/

namespace A233937.P10574150936167176090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233939 (A141214 n + 7).toNat

end

end A233937.P10574150936167176090

/-! ## A233937.P6198073648659950687

`A233939(A052905(n)+9)`
-/

namespace A233937.P6198073648659950687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233939 (A052905 n + 9).toNat

end

end A233937.P6198073648659950687

/-! ## A233937.P17605486882334572944

`A233939(A055999(n)+10)`
-/

namespace A233937.P17605486882334572944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233939 (A055999 n + 10).toNat

end

end A233937.P17605486882334572944

/-! ## A233937.P3809825363618642699

`A233939(eq[5, A066657(n)])`
-/

namespace A233937.P3809825363618642699
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233939 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A233937.P3809825363618642699

/-!
# A233938: Number of (n+1)X(5+1) 0..7 arrays with every 2X2 subblock having the sum of the absolute values of all six edge and diagonal differences equal to 16.

The programs for A233938, there is no canonical definition to state claims against.
-/

/-! ## A233938.P17896505808717917404

`A233939(A374005(n+1))`
-/

namespace A233938.P17896505808717917404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233939 (A374005 (n + 1)).toNat

end

end A233938.P17896505808717917404

/-! ## A233938.P9147747195583088869

`A233939(A167499(n+3))`
-/

namespace A233938.P9147747195583088869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233939 (A167499 (n + 3)).toNat

end

end A233938.P9147747195583088869

/-! ## A233938.P12417824981072821816

`A233939(A155212(n)+13)`
-/

namespace A233938.P12417824981072821816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233939 (A155212 n + 13).toNat

end

end A233938.P12417824981072821816

/-! ## A233938.P1813928337180419059

`A233939(A056000(n)+15)`
-/

namespace A233938.P1813928337180419059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233939 (A056000 n + 15).toNat

end

end A233938.P1813928337180419059

/-! ## A233938.P9778056235029949883

`A233939(eq[7, A066657(n)])`
-/

namespace A233938.P9778056235029949883
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233939 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A233938.P9778056235029949883

/-!
# A233941: Number of (n+1)X(n+1) 0..2 arrays with every 2X2 subblock having the sum of the absolute values of the edge differences equal to 4.

The programs for A233941, there is no canonical definition to state claims against.
-/

/-! ## A233941.P7610008154243896270

`A233949((n+1)²+n²)`
-/

namespace A233941.P7610008154243896270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233949 ((n + 1) ^ 2 + n ^ 2)

end

end A233941.P7610008154243896270

/-!
# A233942: Number of (n+1) X (1+1) 0..2 arrays with every 2 X 2 subblock having the sum of the absolute values of the edge differences equal to 4.

The programs for A233942, there is no canonical definition to state claims against.
-/

/-! ## A233942.P13186925194781484346

`A233949(∑[n]+1)`
-/

namespace A233942.P13186925194781484346
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233949 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A233942.P13186925194781484346

/-! ## A233942.P4347341021288552250

`lcm(2, A233949(A000124(n)))`
-/

namespace A233942.P4347341021288552250
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A233949 (A000124 n).toNat)

end

end A233942.P4347341021288552250

/-! ## A233942.P1099869843941175952

`record[A010054(n)*A233949(n+1)]`
-/

namespace A233942.P1099869843941175952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A233949 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233942.P1099869843941175952

/-! ## A233942.P426250759287171513

`record[gcd(A002262(n), A233949(n+1))]`
-/

namespace A233942.P426250759287171513
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A233949 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233942.P426250759287171513

/-! ## A233942.P7062038951033206742

`record[(1-A014473(n))*A233949(n+1)]`
-/

namespace A233942.P7062038951033206742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A014473 n) * A233949 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233942.P7062038951033206742

/-!
# A233943: Number of (n+1) X (2+1) 0..2 arrays with every 2 X 2 subblock having the sum of the absolute values of the edge differences equal to 4.

The programs for A233943, there is no canonical definition to state claims against.
-/

/-! ## A233943.P13275261298813007359

`A233949(∑[n+1]+2)`
-/

namespace A233943.P13275261298813007359
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233949 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A233943.P13275261298813007359

/-! ## A233943.P6454724254219488317

`record[A010054(n)*A233949(n+2)]`
-/

namespace A233943.P6454724254219488317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A233949 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233943.P6454724254219488317

/-! ## A233943.P3687156845161318200

`record[gcd(A002262(n), A233949(n+2))]`
-/

namespace A233943.P3687156845161318200
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A233949 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233943.P3687156845161318200

/-! ## A233943.P6697890469084503597

`record[A233949(Δ[A003453(n+5)])]`
-/

namespace A233943.P6697890469084503597
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233949 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233943.P6697890469084503597

/-! ## A233943.P14085160499616777515

`A233949(A000096(n+1))%A233945(n+1)`
-/

namespace A233943.P14085160499616777515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A233949 (A000096 (n + 1)).toNat) (A233945 (n + 1))

end

end A233943.P14085160499616777515

/-!
# A233944: Number of (n+1)X(3+1) 0..2 arrays with every 2X2 subblock having the sum of the absolute values of the edge differences equal to 4.

The programs for A233944, there is no canonical definition to state claims against.
-/

/-! ## A233944.P4285385213629701455

`A233949(∑[n+2]+4)`
-/

namespace A233944.P4285385213629701455
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233949 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A233944.P4285385213629701455

/-! ## A233944.P14558070545719531629

`lcm(2, A233949(A167614(n+1)))`
-/

namespace A233944.P14558070545719531629
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A233949 (A167614 (n + 1)).toNat)

end

end A233944.P14558070545719531629

/-! ## A233944.P3642387052512085757

`or(A000038(n), A233949(A167614(n+1)))`
-/

namespace A233944.P3642387052512085757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000038 n) (A233949 (A167614 (n + 1)).toNat)

end

end A233944.P3642387052512085757

/-! ## A233944.P7338899673814626484

`A233949(A167614(n+1))+A034549(n+1)`
-/

namespace A233944.P7338899673814626484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233949 (A167614 (n + 1)).toNat + A034549 (n + 1)

end

end A233944.P7338899673814626484

/-!
# A233945: Number of (n+1)X(4+1) 0..2 arrays with every 2X2 subblock having the sum of the absolute values of the edge differences equal to 4.

The programs for A233945, there is no canonical definition to state claims against.
-/

/-! ## A233945.P4555542092596090910

`A233949(A374004(n+1))`
-/

namespace A233945.P4555542092596090910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233949 (A374004 (n + 1)).toNat

end

end A233945.P4555542092596090910

/-! ## A233945.P463352022952532596

`A233949(A052905(n)+9)`
-/

namespace A233945.P463352022952532596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233949 (A052905 n + 9).toNat

end

end A233945.P463352022952532596

/-! ## A233945.P223541709656100841

`A233949(A167614(n+2)+1)`
-/

namespace A233945.P223541709656100841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233949 (A167614 (n + 2) + 1).toNat

end

end A233945.P223541709656100841

/-! ## A233945.P9079799343775410566

`A233949(A000124(n+3)+3)`
-/

namespace A233945.P9079799343775410566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233949 (A000124 (n + 3) + 3).toNat

end

end A233945.P9079799343775410566

/-! ## A233945.P12810624503114874831

`A233949(A000096(n+2)+5)`
-/

namespace A233945.P12810624503114874831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233949 (A000096 (n + 2) + 5).toNat

end

end A233945.P12810624503114874831

/-!
# A233946: Number of (n+1)X(5+1) 0..2 arrays with every 2X2 subblock having the sum of the absolute values of the edge differences equal to 4.

The programs for A233946, there is no canonical definition to state claims against.
-/

/-! ## A233946.P11337003225740970453

`A233949(A374005(n+1))`
-/

namespace A233946.P11337003225740970453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233949 (A374005 (n + 1)).toNat

end

end A233946.P11337003225740970453

/-! ## A233946.P16170611057516775291

`A233949(eq[7, A066657(n)])`
-/

namespace A233946.P16170611057516775291
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233949 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A233946.P16170611057516775291

/-! ## A233946.P17972489576237316484

`A233949(A038722(Δ[A264443(n)]))`
-/

namespace A233946.P17972489576237316484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233949 (A038722 (f1 (n + 1) - f1 n).toNat).toNat

end

end A233946.P17972489576237316484

/-! ## A233946.P14368468915881059597

`A233949(∑[n+5]+6)`
-/

namespace A233946.P14368468915881059597
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233949 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A233946.P14368468915881059597

/-!
# A233947: Number of (n+1)X(6+1) 0..2 arrays with every 2X2 subblock having the sum of the absolute values of the edge differences equal to 4.

The programs for A233947, there is no canonical definition to state claims against.
-/

/-! ## A233947.P17870620182836995122

`A233949(A374007(n+1))`
-/

namespace A233947.P17870620182836995122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233949 (A374007 (n + 1)).toNat

end

end A233947.P17870620182836995122

/-! ## A233947.P7746378940495190295

`lcm(2, A233949(A052905(n+3)))`
-/

namespace A233947.P7746378940495190295
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A233949 (A052905 (n + 3)).toNat)

end

end A233947.P7746378940495190295

/-! ## A233947.P2595907236845997141

`A233949(eq[1, A219347(n)-2])`
-/

namespace A233947.P2595907236845997141
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233949 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A233947.P2595907236845997141

/-! ## A233947.P2421248057739552372

`A233949(Δ[A264443(n+1)]-1)`
-/

namespace A233947.P2421248057739552372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233949 (f1 (n + 1) - f1 n - 1).toNat

end

end A233947.P2421248057739552372

/-! ## A233947.P15501763583383028477

`A233949(A014132(Δ[A264443(n)]))`
-/

namespace A233947.P15501763583383028477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233949 (A014132 (f1 (n + 1) - f1 n).toNat).toNat

end

end A233947.P15501763583383028477

/-!
# A233948: Number of (n+1)X(7+1) 0..2 arrays with every 2X2 subblock having the sum of the absolute values of the edge differences equal to 4.

The programs for A233948, there is no canonical definition to state claims against.
-/

/-! ## A233948.P15415248591531867906

`A233949(A374008(n+1))`
-/

namespace A233948.P15415248591531867906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233949 (A374008 (n + 1)).toNat

end

end A233948.P15415248591531867906

/-! ## A233948.P5174176929840635

`A233949(eq[4, A219347(n)])`
-/

namespace A233948.P5174176929840635
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233949 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A233948.P5174176929840635

/-! ## A233948.P12705971152184000962

`A233949(eq[6, A193592(n)])`
-/

namespace A233948.P12705971152184000962
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233949 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A233948.P12705971152184000962

/-!
# A233950: Number of (n+1)X(n+1) 0..5 arrays with every 2X2 subblock having the sum of the squares of the edge differences equal to 10, and no two adjacent values equal.

The programs for A233950, there is no canonical definition to state claims against.
-/

/-! ## A233950.P3316550704596842154

`A233958((n+1)²+n²)`
-/

namespace A233950.P3316550704596842154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233958 ((n + 1) ^ 2 + n ^ 2)

end

end A233950.P3316550704596842154

/-!
# A233951: Number of (n+1) X (1+1) 0..5 arrays with every 2 X 2 subblock having the sum of the squares of the edge differences equal to 10, and no two adjacent values equal.

The programs for A233951, there is no canonical definition to state claims against.
-/

/-! ## A233951.P15479105528437228508

`A233958(∑[n]+1)`
-/

namespace A233951.P15479105528437228508
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233958 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A233951.P15479105528437228508

/-! ## A233951.P7750679218369892360

`lcm(2, A233958(A000124(n)))`
-/

namespace A233951.P7750679218369892360
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A233958 (A000124 n).toNat)

end

end A233951.P7750679218369892360

/-! ## A233951.P649851409836685586

`record[A233958(n+1)/A142467(n)]`
-/

namespace A233951.P649851409836685586
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A233958 (n + 1) : ℚ) / (A142467 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233951.P649851409836685586

/-! ## A233951.P9314149897170293822

`record[gcd(A014473(n), A233958(n+1))]`
-/

namespace A233951.P9314149897170293822
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A014473 n) (A233958 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233951.P9314149897170293822

/-! ## A233951.P12441954300612519785

`record[A233958(n+1)*A251635(n)]`
-/

namespace A233951.P12441954300612519785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233958 (n + 1) * A251635 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233951.P12441954300612519785

/-!
# A233952: Number of (n+1)X(2+1) 0..5 arrays with every 2X2 subblock having the sum of the squares of the edge differences equal to 10, and no two adjacent values equal.

The programs for A233952, there is no canonical definition to state claims against.
-/

/-! ## A233952.P9716998421135038647

`A233958(∑[n+1]+2)`
-/

namespace A233952.P9716998421135038647
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233958 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A233952.P9716998421135038647

/-! ## A233952.P15756200422523288978

`record[A233958(n+2)/A174949(n+2)]`
-/

namespace A233952.P15756200422523288978
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A233958 (n + 2) : ℚ) / (A174949 (n + 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233952.P15756200422523288978

/-! ## A233952.P5202958329297861254

`record[A233958(n+2)/A257608(n+2)]`
-/

namespace A233952.P5202958329297861254
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A233958 (n + 2) : ℚ) / (A257608 (n + 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233952.P5202958329297861254

/-!
# A233953: Number of (n+1)X(3+1) 0..5 arrays with every 2X2 subblock having the sum of the squares of the edge differences equal to 10, and no two adjacent values equal.

The programs for A233953, there is no canonical definition to state claims against.
-/

/-! ## A233953.P3770788627077324290

`A233958(∑[n+2]+4)`
-/

namespace A233953.P3770788627077324290
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233958 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A233953.P3770788627077324290

/-! ## A233953.P16010413872539545903

`lcm(2, A233958(A167614(n+1)))`
-/

namespace A233953.P16010413872539545903
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A233958 (A167614 (n + 1)).toNat)

end

end A233953.P16010413872539545903

/-! ## A233953.P12657047513658398380

`A233958(A167614(n+1))+A185284(n)`
-/

namespace A233953.P12657047513658398380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233958 (A167614 (n + 1)).toNat + A185284 n

end

end A233953.P12657047513658398380

/-! ## A233953.P17799480793496793732

`A233958(A167614(n+1))*A309913(n)`
-/

namespace A233953.P17799480793496793732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233958 (A167614 (n + 1)).toNat * A309913 n

end

end A233953.P17799480793496793732

/-! ## A233953.P18358626580099829690

`A233958(A167614(n+1))%A233964(n+1)`
-/

namespace A233953.P18358626580099829690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A233958 (A167614 (n + 1)).toNat) (A233964 (n + 1))

end

end A233953.P18358626580099829690

/-!
# A233954: Number of (n+1)X(4+1) 0..5 arrays with every 2X2 subblock having the sum of the squares of the edge differences equal to 10, and no two adjacent values equal.

The programs for A233954, there is no canonical definition to state claims against.
-/

/-! ## A233954.P10353194758211887103

`A233958(A374004(n+1))`
-/

namespace A233954.P10353194758211887103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233958 (A374004 (n + 1)).toNat

end

end A233954.P10353194758211887103

/-! ## A233954.P488006890125498378

`A233958(A052905(n)+9)`
-/

namespace A233954.P488006890125498378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233958 (A052905 n + 9).toNat

end

end A233954.P488006890125498378

/-! ## A233954.P2455335313654317046

`A233958(A055999(n)+10)`
-/

namespace A233954.P2455335313654317046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233958 (A055999 n + 10).toNat

end

end A233954.P2455335313654317046

/-! ## A233954.P1494672573091643290

`A233958(A167614(n+2)+1)`
-/

namespace A233954.P1494672573091643290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233958 (A167614 (n + 2) + 1).toNat

end

end A233954.P1494672573091643290

/-! ## A233954.P10057432234670797050

`A233958(A000217(n+3)+4)`
-/

namespace A233954.P10057432234670797050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233958 (A000217 (n + 3) + 4).toNat

end

end A233954.P10057432234670797050

/-!
# A233955: Number of (n+1)X(5+1) 0..5 arrays with every 2X2 subblock having the sum of the squares of the edge differences equal to 10, and no two adjacent values equal.

The programs for A233955, there is no canonical definition to state claims against.
-/

/-! ## A233955.P4867505677552035322

`A233958(A374005(n+1))`
-/

namespace A233955.P4867505677552035322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233958 (A374005 (n + 1)).toNat

end

end A233955.P4867505677552035322

/-! ## A233955.P4350244379790014711

`A233958(A155212(n)+13)`
-/

namespace A233955.P4350244379790014711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233958 (A155212 n + 13).toNat

end

end A233955.P4350244379790014711

/-! ## A233955.P13870939353115047943

`A233958(A056000(n)+15)`
-/

namespace A233955.P13870939353115047943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233958 (A056000 n + 15).toNat

end

end A233955.P13870939353115047943

/-! ## A233955.P7451417773529551926

`A233958(A056115(n)+11)`
-/

namespace A233955.P7451417773529551926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233958 (A056115 n + 11).toNat

end

end A233955.P7451417773529551926

/-! ## A233955.P10358206029718985280

`A233958(eq[3, A152157(n)])`
-/

namespace A233955.P10358206029718985280
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233958 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A233955.P10358206029718985280

/-!
# A233956: Number of (n+1)X(6+1) 0..5 arrays with every 2X2 subblock having the sum of the squares of the edge differences equal to 10, and no two adjacent values equal.

The programs for A233956, there is no canonical definition to state claims against.
-/

/-! ## A233956.P7625718765091694039

`A233958(A374007(n+1))`
-/

namespace A233956.P7625718765091694039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233958 (A374007 (n + 1)).toNat

end

end A233956.P7625718765091694039

/-! ## A233956.P695083285877973442

`A233958(eq[7, A131818(n+1)])`
-/

namespace A233956.P695083285877973442
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233958 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A233956.P695083285877973442

/-! ## A233956.P5169438641689036654

`A233958(eq[5, A193592(n)])`
-/

namespace A233956.P5169438641689036654
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233958 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A233956.P5169438641689036654

/-! ## A233956.P8801836242370046990

`A233958(eq[8, A258709(n)])`
-/

namespace A233956.P8801836242370046990
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258709 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233958 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A233956.P8801836242370046990

/-! ## A233956.P12584293623762069015

`A233958(eq[6, A200370(n+1)])`
-/

namespace A233956.P12584293623762069015
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233958 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A233956.P12584293623762069015

/-!
# A233957: Number of (n+1)X(7+1) 0..5 arrays with every 2X2 subblock having the sum of the squares of the edge differences equal to 10, and no two adjacent values equal.

The programs for A233957, there is no canonical definition to state claims against.
-/

/-! ## A233957.P6403023226719502075

`A233958(A374008(n+1))`
-/

namespace A233957.P6403023226719502075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233958 (A374008 (n + 1)).toNat

end

end A233957.P6403023226719502075

/-! ## A233957.P2438561305491845137

`A233958(eq[6, A193592(n)])`
-/

namespace A233957.P2438561305491845137
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233958 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A233957.P2438561305491845137

/-! ## A233957.P10351176042667447823

`A233958(eq[7, A200370(n+1)])`
-/

namespace A233957.P10351176042667447823
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233958 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A233957.P10351176042667447823

/-!
# A233959: Number of (n+1)X(n+1) 0..3 arrays with every 2X2 subblock having the sum of the absolute values of all six edge and diagonal differences equal to 10.

The programs for A233959, there is no canonical definition to state claims against.
-/

/-! ## A233959.P7671089503461250961

`A233967(∑[4*n]+1)`
-/

namespace A233959.P7671089503461250961
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233967 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A233959.P7671089503461250961

/-! ## A233959.P2787217176973241682

`lcm(2, A233967(A001844(n)))`
-/

namespace A233959.P2787217176973241682
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A233967 (A001844 n).toNat)

end

end A233959.P2787217176973241682

/-! ## A233959.P17180465793678070904

`record[gcd(A114327(n), A233967(n+1))]`
-/

namespace A233959.P17180465793678070904
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A233967 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233959.P17180465793678070904

/-! ## A233959.P482129658049335301

`A233967(A001844(n))/A139551(n)`
-/

namespace A233959.P482129658049335301
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A233967 (A001844 n).toNat : ℚ) / (A139551 n : ℚ)

end

end A233959.P482129658049335301

/-! ## A233959.P15039552215931245963

`A233967(A001844(n))/A178401(n)`
-/

namespace A233959.P15039552215931245963
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A233967 (A001844 n).toNat : ℚ) / (A178401 n : ℚ)

end

end A233959.P15039552215931245963

/-!
# A233960: Number of (n+1) X (1+1) 0..3 arrays with every 2 X 2 subblock having the sum of the absolute values of all six edge and diagonal differences equal to 10.

The programs for A233960, there is no canonical definition to state claims against.
-/

/-! ## A233960.P6430899280904925328

`A233967(∑[n]+1)`
-/

namespace A233960.P6430899280904925328
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233967 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A233960.P6430899280904925328

/-! ## A233960.P6358846085352094868

`lcm(2, A233967(A000124(n)))`
-/

namespace A233960.P6358846085352094868
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A233967 (A000124 n).toNat)

end

end A233960.P6358846085352094868

/-! ## A233960.P2175363047704285222

`record[A010054(n)*A233967(n+1)]`
-/

namespace A233960.P2175363047704285222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A233967 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233960.P2175363047704285222

/-! ## A233960.P6956381950481323599

`record[A233967(n+1)/A013613(n)]`
-/

namespace A233960.P6956381950481323599
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A233967 (n + 1) : ℚ) / (A013613 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233960.P6956381950481323599

/-! ## A233960.P8598763731325434885

`record[A233967(n+1)/A022168(n)]`
-/

namespace A233960.P8598763731325434885
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A233967 (n + 1) : ℚ) / (A022168 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233960.P8598763731325434885

/-!
# A233961: Number of (n+1) X (2+1) 0..3 arrays with every 2 X 2 subblock having the sum of the absolute values of all six edge and diagonal differences equal to 10.

The programs for A233961, there is no canonical definition to state claims against.
-/

/-! ## A233961.P16158226050806460790

`A233967(∑[n+1]+2)`
-/

namespace A233961.P16158226050806460790
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233967 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A233961.P16158226050806460790

/-! ## A233961.P1031144327258800457

`record[A010054(n)*A233967(n+2)]`
-/

namespace A233961.P1031144327258800457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A233967 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233961.P1031144327258800457

/-! ## A233961.P16626677902760361760

`record[A233967(n+2)/A013613(n)]`
-/

namespace A233961.P16626677902760361760
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A233967 (n + 2) : ℚ) / (A013613 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233961.P16626677902760361760

/-! ## A233961.P2616731988488418225

`record[A233967(A133263(A008616(n)))]`
-/

namespace A233961.P2616731988488418225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233967 (A133263 (A008616 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233961.P2616731988488418225

/-! ## A233961.P9106287858205585696

`record[A233967(A133263(A344180(n)))]`
-/

namespace A233961.P9106287858205585696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233967 (A133263 (A344180 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233961.P9106287858205585696

/-!
# A233962: Number of (n+1)X(3+1) 0..3 arrays with every 2X2 subblock having the sum of the absolute values of all six edge and diagonal differences equal to 10.

The programs for A233962, there is no canonical definition to state claims against.
-/

/-! ## A233962.P17190074452949444489

`A233967(∑[n+2]+4)`
-/

namespace A233962.P17190074452949444489
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233967 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A233962.P17190074452949444489

/-! ## A233962.P3175278439714785267

`lcm(2, A233967(A167614(n+1)))`
-/

namespace A233962.P3175278439714785267
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A233967 (A167614 (n + 1)).toNat)

end

end A233962.P3175278439714785267

/-! ## A233962.P17527634881822120683

`A233967(A167614(n+1))+A185284(n)`
-/

namespace A233962.P17527634881822120683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233967 (A167614 (n + 1)).toNat + A185284 n

end

end A233962.P17527634881822120683

/-! ## A233962.P17795524563906551002

`A233967(A167614(n+1))+A034498(n+1)`
-/

namespace A233962.P17795524563906551002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233967 (A167614 (n + 1)).toNat + A034498 (n + 1)

end

end A233962.P17795524563906551002

/-! ## A233962.P15513090154794186971

`A233967(A167614(n+1))*A353801(n+1)`
-/

namespace A233962.P15513090154794186971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233967 (A167614 (n + 1)).toNat * A353801 (n + 1)

end

end A233962.P15513090154794186971

/-!
# A233963: Number of (n+1) X (4+1) 0..3 arrays with every 2 X 2 subblock having the sum of the absolute values of all six edge and diagonal differences equal to 10.

The programs for A233963, there is no canonical definition to state claims against.
-/

/-! ## A233963.P12048476698780582400

`A233967(A374004(n+1))`
-/

namespace A233963.P12048476698780582400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233967 (A374004 (n + 1)).toNat

end

end A233963.P12048476698780582400

/-! ## A233963.P6713094211131908589

`A233967(A055999(n)+10)`
-/

namespace A233963.P6713094211131908589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233967 (A055999 n + 10).toNat

end

end A233963.P6713094211131908589

/-! ## A233963.P15768041332872085473

`A233967(A167614(n+2)+1)`
-/

namespace A233963.P15768041332872085473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233967 (A167614 (n + 2) + 1).toNat

end

end A233963.P15768041332872085473

/-! ## A233963.P18142410313407922988

`A233967(A000217(n+3)+4)`
-/

namespace A233963.P18142410313407922988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233967 (A000217 (n + 3) + 4).toNat

end

end A233963.P18142410313407922988

/-! ## A233963.P4639888207246301778

`A233967(A034856(n+2)+6)`
-/

namespace A233963.P4639888207246301778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233967 (A034856 (n + 2) + 6).toNat

end

end A233963.P4639888207246301778

/-!
# A233964: Number of (n+1) X (5+1) 0..3 arrays with every 2 X 2 subblock having the sum of the absolute values of all six edge and diagonal differences equal to 10.

The programs for A233964, there is no canonical definition to state claims against.
-/

/-! ## A233964.P14517975957950234269

`A233967(A374005(n+1))`
-/

namespace A233964.P14517975957950234269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233967 (A374005 (n + 1)).toNat

end

end A233964.P14517975957950234269

/-! ## A233964.P8864603092428198486

`A233967(A167614(n+3)+2)`
-/

namespace A233964.P8864603092428198486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233967 (A167614 (n + 3) + 2).toNat

end

end A233964.P8864603092428198486

/-! ## A233964.P872441263383545642

`A233967(A000217(n+4)+5)`
-/

namespace A233964.P872441263383545642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233967 (A000217 (n + 4) + 5).toNat

end

end A233964.P872441263383545642

/-! ## A233964.P2429510109112012396

`A233967(eq[6, A131818(n+1)])`
-/

namespace A233964.P2429510109112012396
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233967 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A233964.P2429510109112012396

/-! ## A233964.P1494057423473919013

`A233967(A000124(n+5)-(n+1))`
-/

namespace A233964.P1494057423473919013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233967 (A000124 (n + 5) - (n + 1 : ℤ)).toNat

end

end A233964.P1494057423473919013

/-!
# A233965: Number of (n+1)X(6+1) 0..3 arrays with every 2X2 subblock having the sum of the absolute values of all six edge and diagonal differences equal to 10.

The programs for A233965, there is no canonical definition to state claims against.
-/

/-! ## A233965.P14800291434349041399

`A233967(A374007(n+1))`
-/

namespace A233965.P14800291434349041399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233967 (A374007 (n + 1)).toNat

end

end A233965.P14800291434349041399

/-! ## A233965.P16210684210422596

`A233967(eq[7, A131818(n+1)])`
-/

namespace A233965.P16210684210422596
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233967 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A233965.P16210684210422596

/-! ## A233965.P3965436002567890243

`A233967(A000217(n+6)-n)`
-/

namespace A233965.P3965436002567890243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233967 (A000217 (n + 6) - (n : ℤ)).toNat

end

end A233965.P3965436002567890243

/-! ## A233965.P12918486001948600706

`A233967(eq[3, A219347(n)])`
-/

namespace A233965.P12918486001948600706
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233967 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A233965.P12918486001948600706

/-! ## A233965.P357418342585548210

`A233967(eq[5, A193592(n)])`
-/

namespace A233965.P357418342585548210
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233967 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A233965.P357418342585548210

/-!
# A233966: Number of (n+1)X(7+1) 0..3 arrays with every 2X2 subblock having the sum of the absolute values of all six edge and diagonal differences equal to 10.

The programs for A233966, there is no canonical definition to state claims against.
-/

/-! ## A233966.P14722645259507338011

`A233967(A374008(n+1))`
-/

namespace A233966.P14722645259507338011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233967 (A374008 (n + 1)).toNat

end

end A233966.P14722645259507338011

/-! ## A233966.P14308096342375193668

`A233967(eq[8, A131818(n+1)])`
-/

namespace A233966.P14308096342375193668
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233967 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A233966.P14308096342375193668

/-! ## A233966.P16617477519703253122

`A233967(A055999(n+4))`
-/

namespace A233966.P16617477519703253122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233967 (A055999 (n + 4)).toNat

end

end A233966.P16617477519703253122

/-! ## A233966.P2403737130476482875

`A233967(eq[4, A219347(n)])`
-/

namespace A233966.P2403737130476482875
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233967 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A233966.P2403737130476482875

/-! ## A233966.P12496015310867458420

`A233967(eq[6, A193592(n)])`
-/

namespace A233966.P12496015310867458420
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233967 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A233966.P12496015310867458420

/-!
# A233967: T(n,k)=Number of (n+1)X(k+1) 0..3 arrays with every 2X2 subblock having the sum of the absolute values of all six edge and diagonal differences equal to 10 (10 maximizes T(1,1)).

The programs for A233967, there is no canonical definition to state claims against.
-/

/-! ## A233967.P8886077188797721393

`A233792(n+1)+A010679(A252334(n+1))`
-/

namespace A233967.P8886077188797721393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233792 (n + 1) + A010679 (A252334 (n + 1)).toNat

end

end A233967.P8886077188797721393

/-! ## A233967.P8214427172871256683

`or(A088616(A233168(n+1)), A233792(n+1))`
-/

namespace A233967.P8214427172871256683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A088616 (A233168 (n + 1)).toNat) (A233792 (n + 1))

end

end A233967.P8214427172871256683

/-!
# A233968: Number of steps between two valleys at height 0 in the infinite Dyck path in which the k-th ascending line segment has A141285(k) steps and the k-th descending line segment has A194446(k) steps, k >= 1.

The programs for A233968, there is no canonical definition to state claims against.
-/

/-! ## A233968.P10566070291787112090

`2*A138137(n+1)`
-/

namespace A233968.P10566070291787112090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A138137 (n + 1)

end

end A233968.P10566070291787112090

/-! ## A233968.P3939117138093397775

`2*(A330242(n+1)+n+1)`
-/

namespace A233968.P3939117138093397775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A330242 (n + 1) + (n + 1 : ℤ))

end

end A233968.P3939117138093397775

/-! ## A233968.P17529306403363480002

`2*(A138135(n+1)+A000041(n))`
-/

namespace A233968.P17529306403363480002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A138135 (n + 1) + A000041 n)

end

end A233968.P17529306403363480002

/-! ## A233968.P581577526968767990

`2*(A182699(n+1)+A000041(n+1))`
-/

namespace A233968.P581577526968767990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A182699 (n + 1) + A000041 (n + 1))

end

end A233968.P581577526968767990

/-! ## A233968.P3950448628284846469

`2*(A144121(n+1)+A144120(n+1))`
-/

namespace A233968.P3950448628284846469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A144121 (n + 1) + A144120 (n + 1))

end

end A233968.P3950448628284846469

/-! ## A233968.P604599377806603928

`A139582(n+1)+2*A182699(n+1)`
-/

namespace A233968.P604599377806603928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139582 (n + 1) + 2 * A182699 (n + 1)

end

end A233968.P604599377806603928

/-! ## A233968.P10429818724991319168

`2*(A206434(n+1)+A206433(n+1))`
-/

namespace A233968.P10429818724991319168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A206434 (n + 1) + A206433 (n + 1))

end

end A233968.P10429818724991319168

/-! ## A233968.P1404470174074538911

`A138135(n+1)+A138137(n+1)+A000041(n)`
-/

namespace A233968.P1404470174074538911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138135 (n + 1) + (A138137 (n + 1) + A000041 n)

end

end A233968.P1404470174074538911

/-! ## A233968.P1404239509861983820

`A138137(n+1)+A144121(n+1)+A144120(n+1)`
-/

namespace A233968.P1404239509861983820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138137 (n + 1) + (A144121 (n + 1) + A144120 (n + 1))

end

end A233968.P1404239509861983820

/-! ## A233968.P10380123945040601038

`A138137(n+1)+A206434(n+1)+A206433(n+1)`
-/

namespace A233968.P10380123945040601038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138137 (n + 1) + (A206434 (n + 1) + A206433 (n + 1))

end

end A233968.P10380123945040601038

/-! ## A233968.P17455618831831065919

`A278602(n+1)/2`
-/

namespace A233968.P17455618831831065919
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A278602 (n + 1) : ℚ) / 2

end

end A233968.P17455618831831065919

/-! ## A233968.P3733960606838219703

`A278602(n+1)-A138137(n+1)-A138137(n+1)`
-/

namespace A233968.P3733960606838219703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278602 (n + 1) - A138137 (n + 1) - A138137 (n + 1)

end

end A233968.P3733960606838219703

/-! ## A233968.P17992205838812522532

`2*(A138879(n+1)-A207035(n+1))`
-/

namespace A233968.P17992205838812522532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A138879 (n + 1) - A207035 (n + 1))

end

end A233968.P17992205838812522532

/-! ## A233968.P6796057642820648649

`A138137(n+1)+A138879(n+1)-A207035(n+1)`
-/

namespace A233968.P6796057642820648649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138137 (n + 1) + (A138879 (n + 1) - A207035 (n + 1))

end

end A233968.P6796057642820648649

/-! ## A233968.P13639163299576831606

`2*(A000041(n)+Δ[A096541(n)])`
-/

namespace A233968.P13639163299576831606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096541 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A000041 n + (f1 (n + 1) - f1 n))

end

end A233968.P13639163299576831606

/-! ## A233968.P7790975026072845483

`2*Δ[A006128(n)]`
-/

namespace A233968.P7790975026072845483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006128 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f1 (n + 1) - f1 n)

end

end A233968.P7790975026072845483

/-! ## A233968.P733162391895251819

`2*(Δ[A225596(n)]-1)`
-/

namespace A233968.P733162391895251819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225596 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f1 (n + 1) - f1 n - 1)

end

end A233968.P733162391895251819

/-! ## A233968.P17544360353793419625

`2*Δ[A198381(n)+A000070(n)]`
-/

namespace A233968.P17544360353793419625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198381 n + A000070 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f1 (n + 1) - f1 n)

end

end A233968.P17544360353793419625

/-! ## A233968.P17183989732890053297

`2*Δ[A093694(n)-A000041(n)]`
-/

namespace A233968.P17183989732890053297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093694 n - A000041 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f1 (n + 1) - f1 n)

end

end A233968.P17183989732890053297

/-! ## A233968.P7170695984621118729

`2*Δ[A093694(n)-A000065(n)]`
-/

namespace A233968.P7170695984621118729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093694 n - A000065 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f1 (n + 1) - f1 n)

end

end A233968.P7170695984621118729

/-!
# A233969: Partial sums of A006950.

The programs for A233969, there is no canonical definition to state claims against.
-/

/-! ## A233969.P11913097105909179158

`∑[A006950(n)]`
-/

namespace A233969.P11913097105909179158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006950 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A233969.P11913097105909179158

/-! ## A233969.P829010652568943835

`∑[abs(A106507(n))]`
-/

namespace A233969.P829010652568943835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A106507 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A233969.P829010652568943835

/-! ## A233969.P11173555291811689631

`∑[lcm(A008836(n+1), A106507(n))]`
-/

namespace A233969.P11173555291811689631
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A008836 (n + 1)) (A106507 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A233969.P11173555291811689631

/-! ## A233969.P9210065016228379498

`∑[gcd(A106507(n), A106507(n%(n+1)))]`
-/

namespace A233969.P9210065016228379498
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A106507 n) (A106507 (n % (n + 1)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A233969.P9210065016228379498

/-! ## A233969.P3300585366084073123

`∑[(A000035(n+1)-A000035(n))*A106507(n)]`
-/

namespace A233969.P3300585366084073123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000035 (n + 1) - A000035 n) * A106507 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A233969.P3300585366084073123

/-! ## A233969.P8151649678887993739

`∑[A106507(n)/A273225(n)*A274621(n)]`
-/

namespace A233969.P8151649678887993739
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A106507 n : ℚ) / (A273225 n : ℚ) * (A274621 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A233969.P8151649678887993739

/-! ## A233969.P10342397532540483131

`∑[A057077(2*n)*A106507(n)]`
-/

namespace A233969.P10342397532540483131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 (2 * n) * A106507 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A233969.P10342397532540483131

/-! ## A233969.P16299618199233578380

`∑[A106507(n)/A057077(A005408(n))]`
-/

namespace A233969.P16299618199233578380
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A106507 n : ℚ) / (A057077 (A005408 n).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A233969.P16299618199233578380

/-! ## A233969.P17357934225407757019

`∑[abs(A286950(∑[n+3]))]`
-/

namespace A233969.P17357934225407757019
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A286950 (∑ j ∈ Finset.range (n + 1), f2 j)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A233969.P17357934225407757019

/-! ## A233969.P715807068797862367

`∑[A106507(n)/A057077(A002522(n))]`
-/

namespace A233969.P715807068797862367
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A106507 n : ℚ) / (A057077 (A002522 n).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A233969.P715807068797862367

/-!
# A233970: Toothpick sequence on hexagonal net starting from the vertex of a 60-degree wedge (see Comments lines for precise definition).

The programs for A233970, there is no canonical definition to state claims against.
-/

/-! ## A233970.P11843825640535262656

`∑[A233971(n)]`
-/

namespace A233970.P11843825640535262656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233971 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A233970.P11843825640535262656

/-! ## A233970.P457487471250621596

`A233971(n)+a(A023443(n))` with `a(0)=0`
-/

namespace A233970.P457487471250621596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A233971 n + a (A023443 n).toNat

end

end A233970.P457487471250621596

/-! ## A233970.P1969654970995555974

`A233971(A028310(n))+a(n-1)` with `a(0)=0`
-/

namespace A233970.P1969654970995555974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A233971 (A028310 n).toNat + a (n - 1)

end

end A233970.P1969654970995555974

/-! ## A233970.P11196430213762735023

`A233971(n)+a(A004273(n)-n)` with `a(0)=0`
-/

namespace A233970.P11196430213762735023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A233971 n + a (A004273 n - (n : ℤ)).toNat

end

end A233970.P11196430213762735023

/-! ## A233970.P9102465449061418634

`A233971(n)+a(A000038(n)-1+n)` with `a(0)=0`
-/

namespace A233970.P9102465449061418634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A233971 n + a (A000038 n - 1 + (n : ℤ)).toNat

end

end A233970.P9102465449061418634

/-! ## A233970.P11783003216165146566

`A233971(n)+a(n-1)%A000032(n)` with `a(0)=0`
-/

namespace A233970.P11783003216165146566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A233971 n + Int.tmod (a (n - 1)) (A000032 n)

end

end A233970.P11783003216165146566

/-! ## A233970.P9906324082740078267

`A233971(n)+(char[A031969(n+1)]+1)*a(n-1)` with `a(0)=0`
-/

namespace A233970.P9906324082740078267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031969 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A233971 n + (((if ∃ j, f1 j = (n : ℤ) then 1 else 0) + 1 : ℕ) : ℤ) * a (n - 1)

end

end A233970.P9906324082740078267

/-! ## A233970.P11663622990713039747

`A338478(A338478(a(n-1)))+A233971(n)` with `a(0)=0`
-/

namespace A233970.P11663622990713039747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A338478 (A338478 (a (n - 1)).toNat).toNat + A233971 n

end

end A233970.P11663622990713039747

/-! ## A233970.P10554419501886762078

`a(n-1)+A032741(A075019(n+1))*A233971(n)` with `a(0)=0, a(1)=1`
-/

namespace A233970.P10554419501886762078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 1) + A032741 (A075019 (n + 1)).toNat * A233971 n

end

end A233970.P10554419501886762078

/-!
# A233971: Number of toothpicks added at n-th stage to the structure of A233970.

The programs for A233971, there is no canonical definition to state claims against.
-/

/-! ## A233971.P7314081597874266185

`Δ[A233970(A259361(n²))]`
-/

namespace A233971.P7314081597874266185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233970 (A259361 (n ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A233971.P7314081597874266185

/-! ## A233971.P7518966930272264911

`Δ[A233970(log2(A011782(n)))]`
-/

namespace A233971.P7518966930272264911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233970 (SequenceMachineLib.roundAway (Real.logb 2 (A011782 n : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A233971.P7518966930272264911

/-! ## A233971.P1824153875419600138

`Δ[A233970(A289207(n+1))]`
-/

namespace A233971.P1824153875419600138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233970 (A289207 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A233971.P1824153875419600138

/-! ## A233971.P35510387921894914

`Δ[A233970(A057428(n)+n)]`
-/

namespace A233971.P35510387921894914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233970 (A057428 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A233971.P35510387921894914

/-! ## A233971.P1852144035792876856

`Δ[A233970(A004273(n)-n)]`
-/

namespace A233971.P1852144035792876856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233970 (A004273 n - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A233971.P1852144035792876856

/-! ## A233971.P11990570154313601988

`Δ[A233970(n-A057427(n))]`
-/

namespace A233971.P11990570154313601988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233970 ((n : ℤ) - A057427 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A233971.P11990570154313601988

/-! ## A233971.P8247749239901564751

`Δ[A233970(n-A178334(n))]`
-/

namespace A233971.P8247749239901564751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233970 ((n : ℤ) - A178334 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A233971.P8247749239901564751

/-! ## A233971.P4275119753673855998

`Δ[A233970(A140106(Δ[n²]))]`
-/

namespace A233971.P4275119753673855998
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233970 (A140106 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A233971.P4275119753673855998

/-! ## A233971.P1879811912108401677

`Δ[A233970(n-A057428(n)²)]`
-/

namespace A233971.P1879811912108401677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233970 ((n : ℤ) - A057428 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A233971.P1879811912108401677

/-! ## A233971.P17693684409549239025

`Δ[A233970(A289207(2*n)/2)]`
-/

namespace A233971.P17693684409549239025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233970 (SequenceMachineLib.roundAway ((A289207 (2 * n) : ℚ) / 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A233971.P17693684409549239025

/-!
# A233972: a(n) = A233971(n+1)/2.

The programs for A233972, there is no canonical definition to state claims against.
-/

/-! ## A233972.P17511580589587779655

`A233971(n+2)/2`
-/

namespace A233972.P17511580589587779655
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A233971 (n + 2) : ℚ) / 2

end

end A233972.P17511580589587779655

/-! ## A233972.P12506208500017528358

`A001281(A233971(n+2))`
-/

namespace A233972.P12506208500017528358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A233971 (n + 2)).toNat

end

end A233972.P12506208500017528358

/-! ## A233972.P7707518195712675545

`A004524(A233971(n+2)+1)`
-/

namespace A233972.P7707518195712675545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A233971 (n + 2) + 1).toNat

end

end A233972.P7707518195712675545

/-! ## A233972.P14156402564403440420

`A004526(A233971(n+2)+1)`
-/

namespace A233972.P14156402564403440420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A233971 (n + 2) + 1).toNat

end

end A233972.P14156402564403440420

/-! ## A233972.P5293617295691107664

`A057979(A233971(n+2)+1)`
-/

namespace A233972.P5293617295691107664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (A233971 (n + 2) + 1).toNat

end

end A233972.P5293617295691107664

/-! ## A233972.P10725538030905133670

`A001057(A233971(n+2)-1)`
-/

namespace A233972.P10725538030905133670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A233971 (n + 2) - 1).toNat

end

end A233972.P10725538030905133670

/-! ## A233972.P12221357265358096115

`A003602(A233971(n+2)-1)`
-/

namespace A233972.P12221357265358096115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (A233971 (n + 2) - 1).toNat

end

end A233972.P12221357265358096115

/-! ## A233972.P14389723505036778176

`A008619(A233971(n+2)-1)`
-/

namespace A233972.P14389723505036778176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A233971 (n + 2) - 1).toNat

end

end A233972.P14389723505036778176

/-! ## A233972.P9801084309549062766

`A004525(lcm(2, A233971(n+2)))`
-/

namespace A233972.P9801084309549062766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (Int.lcm 2 (A233971 (n + 2)))

end

end A233972.P9801084309549062766

/-! ## A233972.P15739188588693411224

`A002265(2*(A233971(n+2)+1))`
-/

namespace A233972.P15739188588693411224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (2 * (A233971 (n + 2) + 1)).toNat

end

end A233972.P15739188588693411224

/-!
# A233973: a(n) = A232221(n)/4.

The programs for A233973, there is no canonical definition to state claims against.
-/

/-! ## A233973.P1785584589492776699

`A232221(n+1)/4`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A233973.P1785584589492776699
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A232221 (n + 1) : ℚ) / 4

end

end A233973.P1785584589492776699

/-! ## A233973.P15055842667948913739

`∑[A232342(n+1)/4]`
-/

namespace A233973.P15055842667948913739
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A232342 (n + 1) : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A233973.P15055842667948913739

/-! ## A233973.P10382470125175384934

`∑[A077068(n+1)-A077065(n+1)]/4`
-/

namespace A233973.P10382470125175384934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077068 (n + 1) - A077065 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 4

end

end A233973.P10382470125175384934

/-! ## A233973.P6579036356676323703

`A110962(A232221(n+1))`
-/

namespace A233973.P6579036356676323703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110962 (A232221 (n + 1)).toNat

end

end A233973.P6579036356676323703

/-! ## A233973.P16556278015581699765

`A174571(∑[A232342(n+1)])`
-/

namespace A233973.P16556278015581699765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232342 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174571 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A233973.P16556278015581699765

/-!
# A233974: Number of (n+1)X(1+1) 0..6 arrays with every 2X2 subblock having the sum of the absolute values of all six edge and diagonal differences equal to 13.

The programs for A233974, there is no canonical definition to state claims against.
-/

/-! ## A233974.P7106803719477344810

`A233980(∑[n]+1)`
-/

namespace A233974.P7106803719477344810
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233980 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A233974.P7106803719477344810

/-! ## A233974.P12914105600311352407

`lcm(2, A233980(A000124(n)))`
-/

namespace A233974.P12914105600311352407
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A233980 (A000124 n).toNat)

end

end A233974.P12914105600311352407

/-! ## A233974.P4639296092865703570

`record[A233980(A246276(n+1))]`
-/

namespace A233974.P4639296092865703570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233980 (A246276 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233974.P4639296092865703570

/-! ## A233974.P1874790129951606533

`record[A233980(A276954(n+1))]`
-/

namespace A233974.P1874790129951606533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233980 (A276954 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233974.P1874790129951606533

/-! ## A233974.P8406134278150209322

`record[A010054(n)*A233980(n+1)]`
-/

namespace A233974.P8406134278150209322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A233980 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233974.P8406134278150209322

/-!
# A233975: Number of (n+1)X(2+1) 0..6 arrays with every 2X2 subblock having the sum of the absolute values of all six edge and diagonal differences equal to 13.

The programs for A233975, there is no canonical definition to state claims against.
-/

/-! ## A233975.P15589303242147992834

`A233980(∑[n+1]+2)`
-/

namespace A233975.P15589303242147992834
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233980 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A233975.P15589303242147992834

/-! ## A233975.P17925539589938779413

`record[A010054(n)*A233980(n+2)]`
-/

namespace A233975.P17925539589938779413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A233980 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233975.P17925539589938779413

/-! ## A233975.P330763674539023548

`record[root(A233980(n+2), A080852(n))]`
-/

namespace A233975.P330763674539023548
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A233980 (n + 2) : ℝ) ^ (1 / (A080852 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233975.P330763674539023548

/-! ## A233975.P12552475561920911492

`record[A233980(Δ[A003453(n+5)])]`
-/

namespace A233975.P12552475561920911492
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233980 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233975.P12552475561920911492

/-! ## A233975.P9491885045433938475

`A233980(A000096(n+1))%A017360(n)`
-/

namespace A233975.P9491885045433938475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A233980 (A000096 (n + 1)).toNat) (A017360 n)

end

end A233975.P9491885045433938475

/-!
# A233976: Number of (n+1)X(3+1) 0..6 arrays with every 2X2 subblock having the sum of the absolute values of all six edge and diagonal differences equal to 13.

The programs for A233976, there is no canonical definition to state claims against.
-/

/-! ## A233976.P4384937426256389623

`A233980(∑[n+2]+4)`
-/

namespace A233976.P4384937426256389623
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233980 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A233976.P4384937426256389623

/-! ## A233976.P5172000792204625837

`lcm(2, A233980(A167614(n+1)))`
-/

namespace A233976.P5172000792204625837
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A233980 (A167614 (n + 1)).toNat)

end

end A233976.P5172000792204625837

/-! ## A233976.P14629250015317464313

`record[A154990(n+1)*A233980(n+4)]`
-/

namespace A233976.P14629250015317464313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154990 (n + 1) * A233980 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233976.P14629250015317464313

/-! ## A233976.P13337012820687064029

`A233980(A167614(n+1))+A184946(n)`
-/

namespace A233976.P13337012820687064029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233980 (A167614 (n + 1)).toNat + A184946 n

end

end A233976.P13337012820687064029

/-! ## A233976.P9712995192596366715

`A233980(A167614(n+1))+A185284(n)`
-/

namespace A233976.P9712995192596366715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233980 (A167614 (n + 1)).toNat + A185284 n

end

end A233976.P9712995192596366715

/-!
# A233977: Number of (n+1)X(4+1) 0..6 arrays with every 2X2 subblock having the sum of the absolute values of all six edge and diagonal differences equal to 13.

The programs for A233977, there is no canonical definition to state claims against.
-/

/-! ## A233977.P4798997543679094816

`A233980(∑[n+3]+7)`
-/

namespace A233977.P4798997543679094816
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233980 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A233977.P4798997543679094816

/-! ## A233977.P8638778403565750921

`A233980(A055998(n+2))+A108322(n+1)`
-/

namespace A233977.P8638778403565750921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233980 (A055998 (n + 2)).toNat + A108322 (n + 1)

end

end A233977.P8638778403565750921

/-!
# A233978: Number of (n+1)X(5+1) 0..6 arrays with every 2X2 subblock having the sum of the absolute values of all six edge and diagonal differences equal to 13.

The programs for A233978, there is no canonical definition to state claims against.
-/

/-! ## A233978.P15816761918736547929

`A233980(A374005(n+1))`
-/

namespace A233978.P15816761918736547929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233980 (A374005 (n + 1)).toNat

end

end A233978.P15816761918736547929

/-! ## A233978.P10161782743784035630

`A233980(A167499(n+3))`
-/

namespace A233978.P10161782743784035630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233980 (A167499 (n + 3)).toNat

end

end A233978.P10161782743784035630

/-! ## A233978.P16691960274098494001

`A233980(A155212(n)+13)`
-/

namespace A233978.P16691960274098494001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233980 (A155212 n + 13).toNat

end

end A233978.P16691960274098494001

/-! ## A233978.P503542753641472261

`A233980(A056000(n)+15)`
-/

namespace A233978.P503542753641472261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233980 (A056000 n + 15).toNat

end

end A233978.P503542753641472261

/-! ## A233978.P2852491483184901933

`A233980(eq[7, A066657(n)])`
-/

namespace A233978.P2852491483184901933
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233980 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A233978.P2852491483184901933

/-!
# A233979: Number of (n+1)X(6+1) 0..6 arrays with every 2X2 subblock having the sum of the absolute values of all six edge and diagonal differences equal to 13.

The programs for A233979, there is no canonical definition to state claims against.
-/

/-! ## A233979.P5685185540249435564

`A233980(A374007(n+1))`
-/

namespace A233979.P5685185540249435564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233980 (A374007 (n + 1)).toNat

end

end A233979.P5685185540249435564

/-! ## A233979.P10590313446248687967

`A233980(A166136(n+4))`
-/

namespace A233979.P10590313446248687967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233980 (A166136 (n + 4)).toNat

end

end A233979.P10590313446248687967

/-! ## A233979.P8677050314640363018

`A233980(A167487(n+4)-1)`
-/

namespace A233979.P8677050314640363018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233980 (A167487 (n + 4) - 1).toNat

end

end A233979.P8677050314640363018

/-! ## A233979.P2609553009787779234

`A233980(A167614(n+4)+3)`
-/

namespace A233979.P2609553009787779234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233980 (A167614 (n + 4) + 3).toNat

end

end A233979.P2609553009787779234

/-!
# A233981: Number of (n+1)X(n+1) 0..4 arrays with every 2X2 subblock having the sum of the squares of the edge differences equal to 10, and no two adjacent values equal.

The programs for A233981, there is no canonical definition to state claims against.
-/

/-! ## A233981.P9713263275826435680

`A233989((n+1)²+n²)`
-/

namespace A233981.P9713263275826435680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233989 ((n + 1) ^ 2 + n ^ 2)

end

end A233981.P9713263275826435680

/-!
# A233982: Number of (n+1) X (1+1) 0..4 arrays with every 2 X 2 subblock having the sum of the squares of the edge differences equal to 10, and no two adjacent values equal.

The programs for A233982, the canonical program `A233982.P12133902707415322674` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A233982 has offset 1).

The definition of A233982 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 159 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A233982.P12133902707415322674

`2*a(n-1)+8*a(n-2)+4*a(n-3)` with `a(0)=56, a(1)=236, a(2)=976`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A233982

/-- `2*a(n-1)+8*a(n-2)+4*a(n-3)` -/
def P12133902707415322674.Spec : Prop :=
  ∀ n, (P12133902707415322674.a n : ℤ) = A233982 (n + 1)

theorem P12133902707415322674.correct : P12133902707415322674.Spec := by
  intro n
  simp only [A233982, Nat.add_sub_cancel]

end A233982

/-! ## A233982.P16711716590397054691

`A233989(∑[n]+1)`
-/

namespace A233982.P16711716590397054691
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233989 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A233982.P16711716590397054691

namespace A233982

/-- `A233989(∑[n]+1)` -/
def P16711716590397054691.Spec : Prop :=
  ∀ n, P16711716590397054691.a n = A233982 (n + 1)

end A233982

/-! ## A233982.P13822546314597837596

`record[A233989(n+1)/A022177(n)]`
-/

namespace A233982.P13822546314597837596
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A233989 (n + 1) : ℚ) / (A022177 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233982.P13822546314597837596

namespace A233982

/-- `record[A233989(n+1)/A022177(n)]` -/
def P13822546314597837596.Spec : Prop :=
  ∀ n, P13822546314597837596.a n = (A233982 (n + 1) : ℚ)

end A233982

/-! ## A233982.P4616859738964476501

`record[root(A233989(n+1), A013609(n))]`
-/

namespace A233982.P4616859738964476501
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A233989 (n + 1) : ℝ) ^ (1 / (A013609 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233982.P4616859738964476501

namespace A233982

/-- `record[root(A233989(n+1), A013609(n))]` -/
def P4616859738964476501.Spec : Prop :=
  ∀ n, P4616859738964476501.a n = (A233982 (n + 1) : ℝ)

end A233982

/-! ## A233982.P13120286157306131447

`record[root(A233989(n+1), A108299(n))]`
-/

namespace A233982.P13120286157306131447
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A233989 (n + 1) : ℝ) ^ (1 / (A108299 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233982.P13120286157306131447

namespace A233982

/-- `record[root(A233989(n+1), A108299(n))]` -/
def P13120286157306131447.Spec : Prop :=
  ∀ n, P13120286157306131447.a n = (A233982 (n + 1) : ℝ)

end A233982

/-!
# A233983: Number of (n+1)X(2+1) 0..4 arrays with every 2X2 subblock having the sum of the squares of the edge differences equal to 10, and no two adjacent values equal.

The programs for A233983, there is no canonical definition to state claims against.
-/

/-! ## A233983.P16373629071997518368

`A233989(∑[n+1]+2)`
-/

namespace A233983.P16373629071997518368
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233989 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A233983.P16373629071997518368

/-! ## A233983.P16827800777923932661

`record[root(A233989(n+2), A013609(n))]`
-/

namespace A233983.P16827800777923932661
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A233989 (n + 2) : ℝ) ^ (1 / (A013609 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233983.P16827800777923932661

/-! ## A233983.P8707307661981774110

`A233989(A000096(n)+3)%A017360(n)`
-/

namespace A233983.P8707307661981774110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A233989 (A000096 n + 3).toNat) (A017360 n)

end

end A233983.P8707307661981774110

/-! ## A233983.P8294190027992785067

`record[A233989(Δ[A003453(n+5)])]`
-/

namespace A233983.P8294190027992785067
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233989 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233983.P8294190027992785067

/-! ## A233983.P1478571270919966655

`A060576(2*n)*A233989(A000096(n+1))`
-/

namespace A233983.P1478571270919966655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060576 (2 * n) * A233989 (A000096 (n + 1)).toNat

end

end A233983.P1478571270919966655

/-!
# A233984: Number of (n+1)X(3+1) 0..4 arrays with every 2X2 subblock having the sum of the squares of the edge differences equal to 10, and no two adjacent values equal.

The programs for A233984, there is no canonical definition to state claims against.
-/

/-! ## A233984.P336579683857251461

`A233989(∑[n+2]+4)`
-/

namespace A233984.P336579683857251461
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233989 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A233984.P336579683857251461

/-! ## A233984.P8171469710455573140

`lcm(2, A233989(A167614(n+1)))`
-/

namespace A233984.P8171469710455573140
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A233989 (A167614 (n + 1)).toNat)

end

end A233984.P8171469710455573140

/-! ## A233984.P4139413815260285494

`A035115(n+1)*A233989(A167614(n+1))`
-/

namespace A233984.P4139413815260285494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035115 (n + 1) * A233989 (A167614 (n + 1)).toNat

end

end A233984.P4139413815260285494

/-! ## A233984.P12140817612651897862

`A233989(A167614(n+1))%A233985(n+1)`
-/

namespace A233984.P12140817612651897862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A233989 (A167614 (n + 1)).toNat) (A233985 (n + 1))

end

end A233984.P12140817612651897862

/-! ## A233984.P13562212975588200374

`and(A001478(n+1), A233989(A167614(n+1)))`
-/

namespace A233984.P13562212975588200374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001478 (n + 1)) (A233989 (A167614 (n + 1)).toNat)

end

end A233984.P13562212975588200374

/-!
# A233985: Number of (n+1)X(4+1) 0..4 arrays with every 2X2 subblock having the sum of the squares of the edge differences equal to 10, and no two adjacent values equal.

The programs for A233985, there is no canonical definition to state claims against.
-/

/-! ## A233985.P16386420476545773789

`A233989(A374004(n+1))`
-/

namespace A233985.P16386420476545773789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233989 (A374004 (n + 1)).toNat

end

end A233985.P16386420476545773789

/-! ## A233985.P17047224196517396080

`A233989(A055999(n)+10)`
-/

namespace A233985.P17047224196517396080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233989 (A055999 n + 10).toNat

end

end A233985.P17047224196517396080

/-! ## A233985.P4948664518979184771

`A233989(A167614(n+2)+1)`
-/

namespace A233985.P4948664518979184771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233989 (A167614 (n + 2) + 1).toNat

end

end A233985.P4948664518979184771

/-! ## A233985.P5611491612405932013

`A233989(A166136(n+2)-2)`
-/

namespace A233985.P5611491612405932013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233989 (A166136 (n + 2) - 2).toNat

end

end A233985.P5611491612405932013

/-! ## A233985.P11484267201460744129

`A233989(A000124(n+3)+3)`
-/

namespace A233985.P11484267201460744129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233989 (A000124 (n + 3) + 3).toNat

end

end A233985.P11484267201460744129

/-!
# A233986: Number of (n+1)X(5+1) 0..4 arrays with every 2X2 subblock having the sum of the squares of the edge differences equal to 10, and no two adjacent values equal.

The programs for A233986, there is no canonical definition to state claims against.
-/

/-! ## A233986.P14246897481439475347

`A233989(A374005(n+1))`
-/

namespace A233986.P14246897481439475347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233989 (A374005 (n + 1)).toNat

end

end A233986.P14246897481439475347

/-! ## A233986.P437747882486487467

`A233989(A155212(n)+13)`
-/

namespace A233986.P437747882486487467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233989 (A155212 n + 13).toNat

end

end A233986.P437747882486487467

/-! ## A233986.P7439191279018331020

`A233989(eq[6, A131818(n+1)])`
-/

namespace A233986.P7439191279018331020
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233989 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A233986.P7439191279018331020

/-! ## A233986.P11055845117256499371

`A233989(Δ[A264443(n)])`
-/

namespace A233986.P11055845117256499371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233989 (f1 (n + 1) - f1 n).toNat

end

end A233986.P11055845117256499371

/-! ## A233986.P4452348626023093193

`A233989(A046691(n+3))`
-/

namespace A233986.P4452348626023093193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233989 (A046691 (n + 3)).toNat

end

end A233986.P4452348626023093193

/-!
# A233987: Number of (n+1)X(6+1) 0..4 arrays with every 2X2 subblock having the sum of the squares of the edge differences equal to 10, and no two adjacent values equal.

The programs for A233987, there is no canonical definition to state claims against.
-/

/-! ## A233987.P14836070098926281929

`A233989(A374007(n+1))`
-/

namespace A233987.P14836070098926281929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233989 (A374007 (n + 1)).toNat

end

end A233987.P14836070098926281929

/-! ## A233987.P15710934224045532455

`A233989(A166136(n+4))`
-/

namespace A233987.P15710934224045532455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233989 (A166136 (n + 4)).toNat

end

end A233987.P15710934224045532455

/-! ## A233987.P18032536689452065037

`A233989(eq[7, A131818(n+1)])`
-/

namespace A233987.P18032536689452065037
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233989 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A233987.P18032536689452065037

/-! ## A233987.P14798816030588781748

`A233989(A056119(n)+16)`
-/

namespace A233987.P14798816030588781748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233989 (A056119 n + 16).toNat

end

end A233987.P14798816030588781748

/-! ## A233987.P9228278950076340148

`A233989(eq[5, A193592(n)])`
-/

namespace A233987.P9228278950076340148
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233989 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A233987.P9228278950076340148

/-!
# A233988: Number of (n+1)X(7+1) 0..4 arrays with every 2X2 subblock having the sum of the squares of the edge differences equal to 10, and no two adjacent values equal.

The programs for A233988, there is no canonical definition to state claims against.
-/

/-! ## A233988.P7627934858844439981

`A233989(A374008(n+1))`
-/

namespace A233988.P7627934858844439981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233989 (A374008 (n + 1)).toNat

end

end A233988.P7627934858844439981

/-! ## A233988.P4740693490607722476

`A233989(A055999(n+4))`
-/

namespace A233988.P4740693490607722476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233989 (A055999 (n + 4)).toNat

end

end A233988.P4740693490607722476

/-! ## A233988.P5487537329487340726

`A233989(eq[7, A002262(n)]-13)`
-/

namespace A233988.P5487537329487340726
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233989 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n - 13)

end

end A233988.P5487537329487340726

/-!
# A233990: Number of (n+1)X(1+1) 0..6 arrays with every 2X2 subblock having the sum of the absolute values of all six edge and diagonal differences equal to 18.

The programs for A233990, there is no canonical definition to state claims against.
-/

/-! ## A233990.P11037985760986937594

`A233997(∑[n]+1)`
-/

namespace A233990.P11037985760986937594
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233997 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A233990.P11037985760986937594

/-! ## A233990.P3956236843604511021

`record[A233997(n+1)]`
-/

namespace A233990.P3956236843604511021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233997 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233990.P3956236843604511021

/-! ## A233990.P10516069729237799680

`lcm(2, A233997(A000124(n)))`
-/

namespace A233990.P10516069729237799680
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A233997 (A000124 n).toNat)

end

end A233990.P10516069729237799680

/-! ## A233990.P3592694619347273260

`A326461(n)+A233997(A000124(n))`
-/

namespace A233990.P3592694619347273260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326461 n + A233997 (A000124 n).toNat

end

end A233990.P3592694619347273260

/-! ## A233990.P14353420426500599904

`A326540(n)+A233997(A000124(n))`
-/

namespace A233990.P14353420426500599904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326540 n + A233997 (A000124 n).toNat

end

end A233990.P14353420426500599904

/-!
# A233991: Number of (n+1)X(2+1) 0..6 arrays with every 2X2 subblock having the sum of the absolute values of all six edge and diagonal differences equal to 18.

The programs for A233991, there is no canonical definition to state claims against.
-/

/-! ## A233991.P16295684917827951694

`A233997(∑[n+1]+2)`
-/

namespace A233991.P16295684917827951694
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233997 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A233991.P16295684917827951694

/-! ## A233991.P7307127167246864741

`record[A233997(A008795(n)+2)]`
-/

namespace A233991.P7307127167246864741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233997 (A008795 n + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233991.P7307127167246864741

/-! ## A233991.P2332123760802680793

`lcm(2, A233997(A000096(n)+3))`
-/

namespace A233991.P2332123760802680793
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A233997 (A000096 n + 3).toNat)

end

end A233991.P2332123760802680793

/-! ## A233991.P7446622061006342892

`record[gcd(A051910(n), A233997(n+2))]`
-/

namespace A233991.P7446622061006342892
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A051910 n) (A233997 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233991.P7446622061006342892

/-! ## A233991.P8258964710527549505

`record[A233997(n+3)/A008275(n+1)]`
-/

namespace A233991.P8258964710527549505
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A233997 (n + 3) : ℚ) / (A008275 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233991.P8258964710527549505

/-!
# A233992: Number of (n+1) X (3+1) 0..6 arrays with every 2 X 2 subblock having the sum of the absolute values of all six edge and diagonal differences equal to 18.

The programs for A233992, there is no canonical definition to state claims against.
-/

/-! ## A233992.P3972858377217160079

`A233997(∑[n+2]+4)`
-/

namespace A233992.P3972858377217160079
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233997 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A233992.P3972858377217160079

/-! ## A233992.P4669512469180352704

`record[A233997(A008795(n)+3)]`
-/

namespace A233992.P4669512469180352704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233997 (A008795 n + 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233992.P4669512469180352704

/-! ## A233992.P1932749480996884012

`lcm(2, A233997(A167614(n+1)))`
-/

namespace A233992.P1932749480996884012
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A233997 (A167614 (n + 1)).toNat)

end

end A233992.P1932749480996884012

/-! ## A233992.P4155943256797545529

`record[A233997(n+4)/A104988(n)]`
-/

namespace A233992.P4155943256797545529
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A233997 (n + 4) : ℚ) / (A104988 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233992.P4155943256797545529

/-! ## A233992.P3676859740422759258

`A233997(A167614(n+1))+A025442(n)`
-/

namespace A233992.P3676859740422759258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233997 (A167614 (n + 1)).toNat + A025442 n

end

end A233992.P3676859740422759258

/-!
# A233993: Number of (n+1)X(4+1) 0..6 arrays with every 2X2 subblock having the sum of the absolute values of all six edge and diagonal differences equal to 18.

The programs for A233993, there is no canonical definition to state claims against.
-/

/-! ## A233993.P15066997808121661363

`A233997(∑[n+3]+7)`
-/

namespace A233993.P15066997808121661363
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233997 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A233993.P15066997808121661363

/-! ## A233993.P10685784333086806460

`A046042(n+1)*A233997(A167614(n+2)+1)`
-/

namespace A233993.P10685784333086806460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046042 (n + 1) * A233997 (A167614 (n + 2) + 1).toNat

end

end A233993.P10685784333086806460

/-! ## A233993.P303001413477490734

`A326687(n)+A233997(A056000(n)+7)`
-/

namespace A233993.P303001413477490734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326687 n + A233997 (A056000 n + 7).toNat

end

end A233993.P303001413477490734

/-! ## A233993.P14215633749603766763

`A326688(n)+A233997(A056000(n)+7)`
-/

namespace A233993.P14215633749603766763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326688 n + A233997 (A056000 n + 7).toNat

end

end A233993.P14215633749603766763

/-!
# A233994: Number of (n+1)X(5+1) 0..6 arrays with every 2X2 subblock having the sum of the absolute values of all six edge and diagonal differences equal to 18.

The programs for A233994, there is no canonical definition to state claims against.
-/

/-! ## A233994.P13080471054826947206

`A233997(A374005(n+1))`
-/

namespace A233994.P13080471054826947206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233997 (A374005 (n + 1)).toNat

end

end A233994.P13080471054826947206

/-! ## A233994.P1177473291825280058

`A233997(A167499(n+3))`
-/

namespace A233994.P1177473291825280058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233997 (A167499 (n + 3)).toNat

end

end A233994.P1177473291825280058

/-! ## A233994.P15688415320110843589

`A233997(A155212(n)+13)`
-/

namespace A233994.P15688415320110843589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233997 (A155212 n + 13).toNat

end

end A233994.P15688415320110843589

/-! ## A233994.P1285636299290226304

`A233997(A056000(n)+15)`
-/

namespace A233994.P1285636299290226304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233997 (A056000 n + 15).toNat

end

end A233994.P1285636299290226304

/-! ## A233994.P6255910061137154472

`A233997(eq[7, A066657(n)])`
-/

namespace A233994.P6255910061137154472
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233997 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A233994.P6255910061137154472

/-!
# A233995: Number of (n+1)X(6+1) 0..6 arrays with every 2X2 subblock having the sum of the absolute values of all six edge and diagonal differences equal to 18.

The programs for A233995, there is no canonical definition to state claims against.
-/

/-! ## A233995.P5585350993360225525

`A233997(A374007(n+1))`
-/

namespace A233995.P5585350993360225525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233997 (A374007 (n + 1)).toNat

end

end A233995.P5585350993360225525

/-! ## A233995.P7317380005789535312

`A233997(A166136(n+4))`
-/

namespace A233995.P7317380005789535312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233997 (A166136 (n + 4)).toNat

end

end A233995.P7317380005789535312

/-! ## A233995.P6866459916979100265

`A233997(A167499(n+4)+1)`
-/

namespace A233995.P6866459916979100265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233997 (A167499 (n + 4) + 1).toNat

end

end A233995.P6866459916979100265

/-! ## A233995.P13019300203997670410

`A233997(A167614(n+4)+3)`
-/

namespace A233995.P13019300203997670410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233997 (A167614 (n + 4) + 3).toNat

end

end A233995.P13019300203997670410

/-! ## A233995.P11439476572783070391

`A233997(A000096(n+4)+7)`
-/

namespace A233995.P11439476572783070391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233997 (A000096 (n + 4) + 7).toNat

end

end A233995.P11439476572783070391

/-!
# A233996: Number of (n+1)X(7+1) 0..6 arrays with every 2X2 subblock having the sum of the absolute values of all six edge and diagonal differences equal to 18.

The programs for A233996, there is no canonical definition to state claims against.
-/

/-! ## A233996.P5546758749135564835

`A233997(A374008(n+1))`
-/

namespace A233996.P5546758749135564835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233997 (A374008 (n + 1)).toNat

end

end A233996.P5546758749135564835

/-! ## A233996.P5109284388734126372

`A233997(eq[11, A066657(n)])`
-/

namespace A233996.P5109284388734126372
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233997 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A233996.P5109284388734126372

/-! ## A233996.P7839770420292090038

`A233997(A167499(n+5)+2)`
-/

namespace A233996.P7839770420292090038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233997 (A167499 (n + 5) + 2).toNat

end

end A233996.P7839770420292090038

/-! ## A233996.P12074345435045222158

`A233997(A133263(n+6)+5)`
-/

namespace A233996.P12074345435045222158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233997 (A133263 (n + 6) + 5).toNat

end

end A233996.P12074345435045222158

/-! ## A233996.P5149658638139502103

`A233997(A000124(n+6)+6)`
-/

namespace A233996.P5149658638139502103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233997 (A000124 (n + 6) + 6).toNat

end

end A233996.P5149658638139502103

/-!
# A233998: Values of n such that numbers of the form x^2+n*y^2 for some integers x, y cannot have prime factor of 5 raised to an odd power.

The programs for A233998, there is no canonical definition to state claims against.
-/

/-! ## A233998.P846445604680802509

`A055049(n+1)/5`
-/

namespace A233998.P846445604680802509
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055049 (n + 1) : ℚ) / 5

end

end A233998.P846445604680802509

/-! ## A233998.P9095054210652195490

`eq[0, A029673(5*n)]`
-/

namespace A233998.P9095054210652195490
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029673 (5 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A233998.P9095054210652195490

/-! ## A233998.P7556622664959289587

`eq[0, A029595(10*n)]`
-/

namespace A233998.P7556622664959289587
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029595 (10 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A233998.P7556622664959289587

/-! ## A233998.P2543974655736599264

`eq[0, A029680(10*n)]`
-/

namespace A233998.P2543974655736599264
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029680 (10 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A233998.P2543974655736599264

/-! ## A233998.P5611693944821763513

`eq[0, A029682(10*n)]`
-/

namespace A233998.P5611693944821763513
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029682 (10 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A233998.P5611693944821763513

/-! ## A233998.P11090367793055625225

`A002266(A055049(n+1))`
-/

namespace A233998.P11090367793055625225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002266 (A055049 (n + 1)).toNat

end

end A233998.P11090367793055625225

/-! ## A233998.P898901629831233322

`eq[0, A028973(A008590(n))]`
-/

namespace A233998.P898901629831233322
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028973 (A008590 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A233998.P898901629831233322

/-! ## A233998.P8480181028656740412

`A194509(A055049(n+1)+2)`
-/

namespace A233998.P8480181028656740412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194509 (A055049 (n + 1) + 2).toNat

end

end A233998.P8480181028656740412

/-! ## A233998.P12406412639129813448

`A194508(A055049(n+1)+3)`
-/

namespace A233998.P12406412639129813448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194508 (A055049 (n + 1) + 3).toNat

end

end A233998.P12406412639129813448

/-! ## A233998.P5241790007964853499

`A059995(2*A055049(n+1))`
-/

namespace A233998.P5241790007964853499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 (2 * A055049 (n + 1)).toNat

end

end A233998.P5241790007964853499

/-!
# A233999: Values of n such that numbers of the form x^2+n*y^2 for some integers x, y cannot have prime factor of 7 raised to an odd power.

The programs for A233999, there is no canonical definition to state claims against.
-/

/-! ## A233999.P17656740058188478896

`∪[∪[2*(n+1)², (n+1)²], ∑[gcd(4, n%3)]-3]`
-/

namespace A233999.P17656740058188478896
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1) ^ 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = x) ∨ ∃ j, f3 j = x) n

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 4 (n % 3)

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f5 j : ℕ) : ℤ) - 3

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f4 j = (x : ℤ)) n

end

end A233999.P17656740058188478896

/-! ## A233999.P12380168848740479925

`∪[A015713(n+1), A047350(n+1)]`
-/

namespace A233999.P12380168848740479925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015713 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047350 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A233999.P12380168848740479925

/-! ## A233999.P7888648823741710

`∪[A028982(n+1), A047350(n+1)]`
-/

namespace A233999.P7888648823741710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028982 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047350 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A233999.P7888648823741710

/-! ## A233999.P11950610652716202116

`∪[A047350(n+1), A049198(n+1)]`
-/

namespace A233999.P11950610652716202116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047350 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049198 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A233999.P11950610652716202116

/-! ## A233999.P17275336117411346927

`∪[A047350(n+1), A067051(n+1)]`
-/

namespace A233999.P17275336117411346927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047350 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067051 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A233999.P17275336117411346927

/-! ## A233999.P3153948538014510010

`∪[A047350(n+1), A069562(n+1)]`
-/

namespace A233999.P3153948538014510010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047350 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069562 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A233999.P3153948538014510010

/-! ## A233999.P9541823981217153138

`∪[A047350(n+1), A072502(n+1)]`
-/

namespace A233999.P9541823981217153138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047350 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072502 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A233999.P9541823981217153138

/-! ## A233999.P18046753702548763518

`∪[A047350(n+1), A096033(n+1)]`
-/

namespace A233999.P18046753702548763518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047350 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096033 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A233999.P18046753702548763518

/-! ## A233999.P4012740483076807319

`∪[A047350(n+1), A125853(n+1)]`
-/

namespace A233999.P4012740483076807319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047350 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125853 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A233999.P4012740483076807319

/-! ## A233999.P13441095495513266345

`∪[A047350(n+1), A204826(n+1)]`
-/

namespace A233999.P13441095495513266345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047350 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204826 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A233999.P13441095495513266345

