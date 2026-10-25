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
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A207100: T(n,k)=Number of 0..k arrays x(0..n-1) of n elements with each no smaller than the sum of its two previous neighbors modulo (k+1).

The programs for A207100, there is no canonical definition to state claims against.
-/

/-! ## A207100.P17315131709439608263

`A326332(A326322(n))+A200668(n+1)`
-/

namespace A207100.P17315131709439608263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326332 (A326322 n).toNat + A200668 (n + 1)

end

end A207100.P17315131709439608263

/-! ## A207100.P13929047633067198663

`or(A025459(A270882(n)), A200668(n+1))`
-/

namespace A207100.P13929047633067198663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A025459 (A270882 n).toNat) (A200668 (n + 1))

end

end A207100.P13929047633067198663

/-! ## A207100.P4275146503114730102

`or(A200668(n+1), A352516(A144228(n)))`
-/

namespace A207100.P4275146503114730102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A200668 (n + 1)) (A352516 (A144228 n).toNat)

end

end A207100.P4275146503114730102

/-! ## A207100.P1450180705281644739

`A212619(A213954(n+6))+A200668(n+1)`
-/

namespace A207100.P1450180705281644739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212619 (A213954 (n + 6)).toNat + A200668 (n + 1)

end

end A207100.P1450180705281644739

/-! ## A207100.P4665074011312988324

`A200668(n+1)+A025459(n)*A025459(A270882(n))`
-/

namespace A207100.P4665074011312988324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200668 (n + 1) + A025459 n * A025459 (A270882 n).toNat

end

end A207100.P4665074011312988324

/-!
# A207101: Number of 0..n arrays x(0..3) of 4 elements with each no smaller than the sum of its two previous neighbors modulo (n+1).

The programs for A207101, there is no canonical definition to state claims against.
-/

/-! ## A207101.P12017448418545340803

`A207100(∑[n+3]+7)`
-/

namespace A207101.P12017448418545340803
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207100 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A207101.P12017448418545340803

/-! ## A207101.P1915860893224451309

`or(char[9], A207100(A000124(n+3)+3))`
-/

namespace A207101.P1915860893224451309
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A207100 (A000124 (n + 3) + 3).toNat)

end

end A207101.P1915860893224451309

/-! ## A207101.P8467809704382322272

`char[A001057(n)]*A207100(A000124(n+3)+3)`
-/

namespace A207101.P8467809704382322272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A207100 (A000124 (n + 3) + 3).toNat

end

end A207101.P8467809704382322272

/-! ## A207101.P7649778014117956354

`A207100(A000124(n+3)+3)+A000007(n+1)`
-/

namespace A207101.P7649778014117956354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207100 (A000124 (n + 3) + 3).toNat + A000007 (n + 1)

end

end A207101.P7649778014117956354

/-! ## A207101.P6786231703263848639

`A207100(A000124(n+3)+3)%A207102(n+1)`
-/

namespace A207101.P6786231703263848639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A207100 (A000124 (n + 3) + 3).toNat) (A207102 (n + 1))

end

end A207101.P6786231703263848639

/-! ## A207101.P18141101355039774316

`A207100(A000124(n+3)+3)+A088917(2*n+1)`
-/

namespace A207101.P18141101355039774316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207100 (A000124 (n + 3) + 3).toNat + A088917 (2 * n + 1)

end

end A207101.P18141101355039774316

/-! ## A207101.P613562813999069063

`A001222(A005382(n+1))*A207100(A000124(n+3)+3)`
-/

namespace A207101.P613562813999069063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A005382 (n + 1)).toNat * A207100 (A000124 (n + 3) + 3).toNat

end

end A207101.P613562813999069063

/-! ## A207101.P15406744396303535972

`A043566(A155828(n+1))*A207100(A000124(n+3)+3)`
-/

namespace A207101.P15406744396303535972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043566 (A155828 (n + 1)).toNat * A207100 (A000124 (n + 3) + 3).toNat

end

end A207101.P15406744396303535972

/-! ## A207101.P3726877385346390317

`A014963(C(2*(n+2), 2))*A207100(A000124(n+3)+3)`
-/

namespace A207101.P3726877385346390317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (Nat.choose (2 * (n + 2)) 2) * A207100 (A000124 (n + 3) + 3).toNat

end

end A207101.P3726877385346390317

/-!
# A207102: Number of 0..n arrays x(0..4) of 5 elements with each no smaller than the sum of its two previous neighbors modulo (n+1).

The programs for A207102, there is no canonical definition to state claims against.
-/

/-! ## A207102.P18365329721061686746

`A207100(A167499(n+3))`
-/

namespace A207102.P18365329721061686746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207100 (A167499 (n + 3)).toNat

end

end A207102.P18365329721061686746

/-! ## A207102.P7229488596966444215

`A207100(A056000(n)+15)`
-/

namespace A207102.P7229488596966444215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207100 (A056000 n + 15).toNat

end

end A207102.P7229488596966444215

/-! ## A207102.P5772153490175787624

`A207100(A000096(n+3)+6)`
-/

namespace A207102.P5772153490175787624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207100 (A000096 (n + 3) + 6).toNat

end

end A207102.P5772153490175787624

/-! ## A207102.P5836580203900085844

`A207100(A000217(n+4)+5)`
-/

namespace A207102.P5836580203900085844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207100 (A000217 (n + 4) + 5).toNat

end

end A207102.P5836580203900085844

/-! ## A207102.P15002718316402452604

`A207100(A038722(Δ[A023545(n+1)]))`
-/

namespace A207102.P15002718316402452604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207100 (A038722 (f1 (n + 1) - f1 n).toNat).toNat

end

end A207102.P15002718316402452604

/-!
# A207103: Number of 0..n arrays x(0..5) of 6 elements with each no smaller than the sum of its two previous neighbors modulo (n+1).

The programs for A207103, there is no canonical definition to state claims against.
-/

/-! ## A207103.P10029770987316095907

`A207100(A167614(n+4)+3)`
-/

namespace A207103.P10029770987316095907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207100 (A167614 (n + 4) + 3).toNat

end

end A207103.P10029770987316095907

/-! ## A207103.P11079294590256249397

`A207100(A000124(n+5)+5)`
-/

namespace A207103.P11079294590256249397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207100 (A000124 (n + 5) + 5).toNat

end

end A207103.P11079294590256249397

/-! ## A207103.P6637446729559700700

`A207100(A000096(n+4)+7)`
-/

namespace A207103.P6637446729559700700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207100 (A000096 (n + 4) + 7).toNat

end

end A207103.P6637446729559700700

/-! ## A207103.P10154754544171772117

`A207100(A000217(n+5)+6)`
-/

namespace A207103.P10154754544171772117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207100 (A000217 (n + 5) + 6).toNat

end

end A207103.P10154754544171772117

/-! ## A207103.P15956732718962632484

`A207100(A161680(n+6)+6)`
-/

namespace A207103.P15956732718962632484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207100 (A161680 (n + 6) + 6).toNat

end

end A207103.P15956732718962632484

/-! ## A207103.P2725493771314615126

`A207100(A027379(n+9)-A008588(n+7))`
-/

namespace A207103.P2725493771314615126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207100 (A027379 (n + 9) - A008588 (n + 7)).toNat

end

end A207103.P2725493771314615126

/-!
# A207104: Number of 0..n arrays x(0..6) of 7 elements with each no smaller than the sum of its two previous neighbors modulo (n+1).

The programs for A207104, there is no canonical definition to state claims against.
-/

/-! ## A207104.P7176889434190044587

`A207100(A167487(n+5))`
-/

namespace A207104.P7176889434190044587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207100 (A167487 (n + 5)).toNat

end

end A207104.P7176889434190044587

/-! ## A207104.P16700125156771367209

`A207100(A000124(n+6)+6)`
-/

namespace A207104.P16700125156771367209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207100 (A000124 (n + 6) + 6).toNat

end

end A207104.P16700125156771367209

/-! ## A207104.P16946506163573748867

`A207100(A000096(n+5)+8)`
-/

namespace A207104.P16946506163573748867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207100 (A000096 (n + 5) + 8).toNat

end

end A207104.P16946506163573748867

/-! ## A207104.P14447559150412507400

`A207100(A000217(n+6)+7)`
-/

namespace A207104.P14447559150412507400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207100 (A000217 (n + 6) + 7).toNat

end

end A207104.P14447559150412507400

/-! ## A207104.P14247307280093283288

`A207100(A161680(n+7)+7)`
-/

namespace A207104.P14247307280093283288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207100 (A161680 (n + 7) + 7).toNat

end

end A207104.P14247307280093283288

/-!
# A207105: Number of n X n 0..1 arrays avoiding 0 0 0 and 0 1 1 horizontally and 0 0 1 and 1 1 0 vertically.

The programs for A207105, there is no canonical definition to state claims against.
-/

/-! ## A207105.P11217617575422607905

`A207111(∑[4*n]+1)`
-/

namespace A207105.P11217617575422607905
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207111 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A207105.P11217617575422607905

/-! ## A207105.P14978039516088575942

`record[A207111(A330613(n+1))]`
-/

namespace A207105.P14978039516088575942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207111 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A207105.P14978039516088575942

/-! ## A207105.P8233692461475280225

`A207111(A001844(n))+char[33]`
-/

namespace A207105.P8233692461475280225
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  33

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207111 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A207105.P8233692461475280225

/-! ## A207105.P10553594131068989370

`record[A003982(n)*A207111(n+1)]`
-/

namespace A207105.P10553594131068989370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A207111 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A207105.P10553594131068989370

/-! ## A207105.P16297518394027953717

`record[gcd(A114327(n), A207111(n+1))]`
-/

namespace A207105.P16297518394027953717
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A207111 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A207105.P16297518394027953717

/-!
# A207106: Number of n X 3 0..1 arrays avoiding 0 0 0 and 0 1 1 horizontally and 0 0 1 and 1 1 0 vertically.

The programs for A207106, the canonical program `A207106.P3919217549556758509` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A207106 has offset 1).

The definition of A207106 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A207106.P12757398480966050776

`∑[(2*n+5)²-19]`
-/

namespace A207106.P12757398480966050776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n + 5) ^ 2 : ℤ) - 19

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A207106.P12757398480966050776

namespace A207106

/-- `∑[(2*n+5)²-19]` -/
def P12757398480966050776.Spec : Prop :=
  ∀ n, P12757398480966050776.a n = A207106 (n + 1)

end A207106

/-! ## A207106.P6463124980515798624

`2*∑[∑[ogf((3+6x-5x^2)/(1-2x+x^2))]]`
-/

namespace A207106.P6463124980515798624
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 6, -5] [1, -2, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A207106.P6463124980515798624

namespace A207106

/-- `2*∑[∑[ogf((3+6x-5x^2)/(1-2x+x^2))]]` -/
def P6463124980515798624.Spec : Prop :=
  ∀ n, P6463124980515798624.a n = A207106 (n + 1)

end A207106

/-! ## A207106.P1185271107662110043

`∑[∑[a(n-1)+8]]-10*(n+1)` with `a(0)=16`
-/

namespace A207106.P1185271107662110043
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [16] fun n f2 =>
  f2 (n - 1) + 8

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (10 * (n + 1) : ℤ)

end

end A207106.P1185271107662110043

namespace A207106

/-- `∑[∑[a(n-1)+8]]-10*(n+1)` -/
def P1185271107662110043.Spec : Prop :=
  ∀ n, P1185271107662110043.a n = A207106 (n + 1)

end A207106

/-! ## A207106.P3919217549556758509

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=6, a(1)=36, a(2)=98, a(3)=200`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A207106

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P3919217549556758509.Spec : Prop :=
  ∀ n, P3919217549556758509.a n = A207106 (n + 1)

theorem P3919217549556758509.correct : P3919217549556758509.Spec := by
  intro n
  simp only [A207106, Nat.add_sub_cancel]

end A207106

/-! ## A207106.P2999963690523285551

`2*∑[A152813(n)]`
-/

namespace A207106.P2999963690523285551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152813 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A207106.P2999963690523285551

namespace A207106

/-- `2*∑[A152813(n)]` -/
def P2999963690523285551.Spec : Prop :=
  ∀ n, P2999963690523285551.a n = A207106 (n + 1)

end A207106

/-! ## A207106.P15145190244521598378

`8*A008778(n)-2*(n+1)`
-/

namespace A207106.P15145190244521598378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A008778 n - (2 * (n + 1) : ℤ)

end

end A207106.P15145190244521598378

namespace A207106

/-- `8*A008778(n)-2*(n+1)` -/
def P15145190244521598378.Spec : Prop :=
  ∀ n, P15145190244521598378.a n = A207106 (n + 1)

end A207106

/-! ## A207106.P14277337984349063408

`2*∑[n*(2*n+1)+A008592(n)+3-n]`
-/

namespace A207106.P14277337984349063408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n * (2 * n + 1) : ℤ) + (A008592 n + 3) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A207106.P14277337984349063408

namespace A207106

/-- `2*∑[n*(2*n+1)+A008592(n)+3-n]` -/
def P14277337984349063408.Spec : Prop :=
  ∀ n, P14277337984349063408.a n = A207106 (n + 1)

end A207106

/-! ## A207106.P4687058022871238600

`A273316(n)+A181890(n)`
-/

namespace A207106.P4687058022871238600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273316 n + A181890 n

end

end A207106.P4687058022871238600

namespace A207106

/-- `A273316(n)+A181890(n)` -/
def P4687058022871238600.Spec : Prop :=
  ∀ n, P4687058022871238600.a n = A207106 (n + 1)

end A207106

/-! ## A207106.P13168083717884549833

`A087348(n+1)+A001845(n)`
-/

namespace A207106.P13168083717884549833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087348 (n + 1) + A001845 n

end

end A207106.P13168083717884549833

namespace A207106

/-- `A087348(n+1)+A001845(n)` -/
def P13168083717884549833.Spec : Prop :=
  ∀ n, P13168083717884549833.a n = A207106 (n + 1)

end A207106

/-! ## A207106.P868617282404555470

`∑[(n+2)*A004767(n)]+9*A000217(n)`
-/

namespace A207106.P868617282404555470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A004767 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 9 * A000217 n

end

end A207106.P868617282404555470

namespace A207106

/-- `∑[(n+2)*A004767(n)]+9*A000217(n)` -/
def P868617282404555470.Spec : Prop :=
  ∀ n, P868617282404555470.a n = A207106 (n + 1)

end A207106

/-! ## A207106.P2786780514266186162

`2*∑[A046092(n+2)-9]`
-/

namespace A207106.P2786780514266186162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046092 (n + 2) - 9

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A207106.P2786780514266186162

namespace A207106

/-- `2*∑[A046092(n+2)-9]` -/
def P2786780514266186162.Spec : Prop :=
  ∀ n, P2786780514266186162.a n = A207106 (n + 1)

end A207106

/-! ## A207106.P12437427383799694514

`A002492(n+1)+∑[12*n+2]`
-/

namespace A207106.P12437427383799694514
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12 * n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002492 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A207106.P12437427383799694514

namespace A207106

/-- `A002492(n+1)+∑[12*n+2]` -/
def P12437427383799694514.Spec : Prop :=
  ∀ n, P12437427383799694514.a n = A207106 (n + 1)

end A207106

/-! ## A207106.P5950024140352234892

`A152743(n+1)+A135036(n+1)`
-/

namespace A207106.P5950024140352234892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152743 (n + 1) + A135036 (n + 1)

end

end A207106.P5950024140352234892

namespace A207106

/-- `A152743(n+1)+A135036(n+1)` -/
def P5950024140352234892.Spec : Prop :=
  ∀ n, P5950024140352234892.a n = A207106 (n + 1)

end A207106

/-! ## A207106.P3891021391936683276

`A273480(n+1)+A054567(n+1)`
-/

namespace A207106.P3891021391936683276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273480 (n + 1) + A054567 (n + 1)

end

end A207106.P3891021391936683276

namespace A207106

/-- `A273480(n+1)+A054567(n+1)` -/
def P3891021391936683276.Spec : Prop :=
  ∀ n, P3891021391936683276.a n = A207106 (n + 1)

end A207106

/-! ## A207106.P6895287211447184081

`A139267(n+1)+A166464(n+1)-1`
-/

namespace A207106.P6895287211447184081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139267 (n + 1) + (A166464 (n + 1) - 1)

end

end A207106.P6895287211447184081

namespace A207106

/-- `A139267(n+1)+A166464(n+1)-1` -/
def P6895287211447184081.Spec : Prop :=
  ∀ n, P6895287211447184081.a n = A207106 (n + 1)

end A207106

/-! ## A207106.P17276651376417170786

`A014105(n+1)+A139272(n+1)+A002492(n)`
-/

namespace A207106.P17276651376417170786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014105 (n + 1) + (A139272 (n + 1) + A002492 n)

end

end A207106.P17276651376417170786

namespace A207106

/-- `A014105(n+1)+A139272(n+1)+A002492(n)` -/
def P17276651376417170786.Spec : Prop :=
  ∀ n, P17276651376417170786.a n = A207106 (n + 1)

end A207106

/-! ## A207106.P3060522752903793911

`A139273(n+1)+A002492(n+1)-A014105(n+1)`
-/

namespace A207106.P3060522752903793911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139273 (n + 1) + (A002492 (n + 1) - A014105 (n + 1))

end

end A207106.P3060522752903793911

namespace A207106

/-- `A139273(n+1)+A002492(n+1)-A014105(n+1)` -/
def P3060522752903793911.Spec : Prop :=
  ∀ n, P3060522752903793911.a n = A207106 (n + 1)

end A207106

/-! ## A207106.P9091429588244124017

`A101853(Δ[n²])-n`
-/

namespace A207106.P9091429588244124017
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101853 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - (n : ℤ)

end

end A207106.P9091429588244124017

namespace A207106

/-- `A101853(Δ[n²])-n` -/
def P9091429588244124017.Spec : Prop :=
  ∀ n, P9091429588244124017.a n = A207106 (n + 1)

end A207106

/-! ## A207106.P10690047584243383363

`A096941(2*n)+1+n`
-/

namespace A207106.P10690047584243383363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096941 (2 * n) + 1 + (n : ℤ)

end

end A207106.P10690047584243383363

namespace A207106

/-- `A096941(2*n)+1+n` -/
def P10690047584243383363.Spec : Prop :=
  ∀ n, P10690047584243383363.a n = A207106 (n + 1)

end A207106

/-! ## A207106.P13926127185781877220

`A051937(2*n+5)-(n+1)`
-/

namespace A207106.P13926127185781877220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051937 (2 * n + 5) - (n + 1 : ℤ)

end

end A207106.P13926127185781877220

namespace A207106

/-- `A051937(2*n+5)-(n+1)` -/
def P13926127185781877220.Spec : Prop :=
  ∀ n, P13926127185781877220.a n = A207106 (n + 1)

end A207106

/-!
# A207107: Number of n X 4 0..1 arrays avoiding 0 0 0 and 0 1 1 horizontally and 0 0 1 and 1 1 0 vertically.

The programs for A207107, the canonical program `A207107.P15544332676950102871` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A207107 has offset 1).

The definition of A207107 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A207107.P15544332676950102871

`5/12*(n+1)^4+13/2*(n+1)^3+115/12*(n+1)²-17/2*(n+1)+1`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A207107

/-- `5/12*(n+1)^4+13/2*(n+1)^3+115/12*(n+1)²-17/2*(n+1)+1` -/
def P15544332676950102871.Spec : Prop :=
  ∀ n, P15544332676950102871.a n = (A207107 (n + 1) : ℚ)

end A207107

/-! ## A207107.P4801895439151245104

`A207111(∑[n+4]+3)`
-/

namespace A207107.P4801895439151245104
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207111 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A207107.P4801895439151245104

namespace A207107

/-- `A207111(∑[n+4]+3)` -/
def P4801895439151245104.Spec : Prop :=
  ∀ n, P4801895439151245104.a n = A207107 (n + 1)

end A207107

/-! ## A207107.P3859213711348167064

`or(1, A207111(A046691(n+2)+1))`
-/

namespace A207107.P3859213711348167064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A207111 (A046691 (n + 2) + 1).toNat)

end

end A207107.P3859213711348167064

namespace A207107

/-- `or(1, A207111(A046691(n+2)+1))` -/
def P3859213711348167064.Spec : Prop :=
  ∀ n, P3859213711348167064.a n = A207107 (n + 1)

end A207107

/-! ## A207107.P172005028517258578

`A014963(10*(n+1))*A207111(A046691(n+2)+1)`
-/

namespace A207107.P172005028517258578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (10 * (n + 1)) * A207111 (A046691 (n + 2) + 1).toNat

end

end A207107.P172005028517258578

namespace A207107

/-- `A014963(10*(n+1))*A207111(A046691(n+2)+1)` -/
def P172005028517258578.Spec : Prop :=
  ∀ n, P172005028517258578.a n = A207107 (n + 1)

end A207107

/-! ## A207107.P11212874192101546420

`A000045(((-1)^n)²)*A207111(A046691(n+2)+1)`
-/

namespace A207107.P11212874192101546420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (((-1) ^ n) ^ 2).toNat * A207111 (A046691 (n + 2) + 1).toNat

end

end A207107.P11212874192101546420

namespace A207107

/-- `A000045(((-1)^n)²)*A207111(A046691(n+2)+1)` -/
def P11212874192101546420.Spec : Prop :=
  ∀ n, P11212874192101546420.a n = A207107 (n + 1)

end A207107

/-!
# A207108: Number of n X 5 0..1 arrays avoiding 0 0 0 and 0 1 1 horizontally and 0 0 1 and 1 1 0 vertically.

The programs for A207108, there is no canonical definition to state claims against.
-/

/-! ## A207108.P14893886078653225298

`A207111(∑[n+5]+6)`
-/

namespace A207108.P14893886078653225298
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207111 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A207108.P14893886078653225298

/-! ## A207108.P6199743636976121583

`or(1, A207111(A046691(n+3)))`
-/

namespace A207108.P6199743636976121583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A207111 (A046691 (n + 3)).toNat)

end

end A207108.P6199743636976121583

/-! ## A207108.P13258512965044170923

`or(1, A207111(Δ[A023545(n+1)]))`
-/

namespace A207108.P13258512965044170923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A207111 (f1 (n + 1) - f1 n).toNat)

end

end A207108.P13258512965044170923

/-! ## A207108.P860448138561776997

`A007318(C(2, n))*A207111(A046691(n+3))`
-/

namespace A207108.P860448138561776997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A207111 (A046691 (n + 3)).toNat

end

end A207108.P860448138561776997

/-! ## A207108.P14271457454014388093

`gcd(11, A007318(n))*A207111(A046691(n+3))`
-/

namespace A207108.P14271457454014388093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 11 (A007318 n) : ℤ) * A207111 (A046691 (n + 3)).toNat

end

end A207108.P14271457454014388093

/-!
# A207109: Number of n X 6 0..1 arrays avoiding 0 0 0 and 0 1 1 horizontally and 0 0 1 and 1 1 0 vertically.

The programs for A207109, there is no canonical definition to state claims against.
-/

/-! ## A207109.P15919176977393478901

`A207111(A052905(n+3))`
-/

namespace A207109.P15919176977393478901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207111 (A052905 (n + 3)).toNat

end

end A207109.P15919176977393478901

/-! ## A207109.P2344682299285325341

`A207111(A056119(n)+16)`
-/

namespace A207109.P2344682299285325341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207111 (A056119 n + 16).toNat

end

end A207109.P2344682299285325341

/-! ## A207109.P11712372769224693105

`A207111(eq[3, A219347(n)])`
-/

namespace A207109.P11712372769224693105
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207111 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A207109.P11712372769224693105

/-! ## A207109.P5693359403563215259

`A207111(eq[5, A193592(n)])`
-/

namespace A207109.P5693359403563215259
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207111 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A207109.P5693359403563215259

/-! ## A207109.P14198767963632969345

`A207111(eq[8, A258709(n)])`
-/

namespace A207109.P14198767963632969345
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258709 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207111 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A207109.P14198767963632969345

/-!
# A207110: Number of n X 7 0..1 arrays avoiding 0 0 0 and 0 1 1 horizontally and 0 0 1 and 1 1 0 vertically.

The programs for A207110, there is no canonical definition to state claims against.
-/

/-! ## A207110.P16509985618617717702

`A207111(A055999(n+4))`
-/

namespace A207110.P16509985618617717702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207111 (A055999 (n + 4)).toNat

end

end A207110.P16509985618617717702

/-! ## A207110.P11117570603307879953

`A207111(eq[4, A219347(n)])`
-/

namespace A207110.P11117570603307879953
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207111 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A207110.P11117570603307879953

/-! ## A207110.P3076485654181302427

`A207111(eq[6, A193592(n)])`
-/

namespace A207110.P3076485654181302427
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207111 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A207110.P3076485654181302427

/-! ## A207110.P7447585049024491304

`A207111(Δ[A023551(n+2)])`
-/

namespace A207110.P7447585049024491304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207111 (f1 (n + 1) - f1 n).toNat

end

end A207110.P7447585049024491304

/-! ## A207110.P4567277848084662487

`A207111(Δ[A026054(n+4)])`
-/

namespace A207110.P4567277848084662487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207111 (f1 (n + 1) - f1 n).toNat

end

end A207110.P4567277848084662487

/-!
# A207111: T(n,k)=Number of nXk 0..1 arrays avoiding 0 0 0 and 0 1 1 horizontally and 0 0 1 and 1 1 0 vertically.

The programs for A207111, there is no canonical definition to state claims against.
-/

/-! ## A207111.P1200326146707123117

`A207305(n+1)-A016389(A119502(n))`
-/

namespace A207111.P1200326146707123117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207305 (n + 1) - A016389 (A119502 n).toNat

end

end A207111.P1200326146707123117

/-! ## A207111.P6399520319150648624

`A207305(n+1)-A016389(A152656(n))`
-/

namespace A207111.P6399520319150648624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207305 (n + 1) - A016389 (A152656 n).toNat

end

end A207111.P6399520319150648624

/-! ## A207111.P3359605346765434787

`A207305(n+1)-A070204(A126331(n))`
-/

namespace A207111.P3359605346765434787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207305 (n + 1) - A070204 (A126331 n).toNat

end

end A207111.P3359605346765434787

/-! ## A207111.P14340351858564826024

`A207305(A187829(n+1))`
-/

namespace A207111.P14340351858564826024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207305 (A187829 (n + 1)).toNat

end

end A207111.P14340351858564826024

/-! ## A207111.P11536078123379277844

`A207305(n+1)%A005902(A011782(n))`
-/

namespace A207111.P11536078123379277844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A207305 (n + 1)) (A005902 (A011782 n).toNat)

end

end A207111.P11536078123379277844

/-!
# A207112: Number of 3Xn 0..1 arrays avoiding 0 0 0 and 0 1 1 horizontally and 0 0 1 and 1 1 0 vertically.

The programs for A207112, there is no canonical definition to state claims against.
-/

/-! ## A207112.P13836466102232320219

`A207111(∑[n+2]+4)`
-/

namespace A207112.P13836466102232320219
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207111 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A207112.P13836466102232320219

/-! ## A207112.P10502382839533784234

`record[A207111(A008795(n)+3)]`
-/

namespace A207112.P10502382839533784234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207111 (A008795 n + 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A207112.P10502382839533784234

/-! ## A207112.P17705509369066729838

`or(char[3], A207111(A167614(n+1)))`
-/

namespace A207112.P17705509369066729838
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A207111 (A167614 (n + 1)).toNat)

end

end A207112.P17705509369066729838

/-! ## A207112.P2987149372367764981

`or(char[3], A207111(A167499(n)+n))`
-/

namespace A207112.P2987149372367764981
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A207111 (A167499 n + (n : ℤ)).toNat)

end

end A207112.P2987149372367764981

/-! ## A207112.P13777925830132889437

`A207111(A167614(n+1))+A025469(n)`
-/

namespace A207112.P13777925830132889437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207111 (A167614 (n + 1)).toNat + A025469 n

end

end A207112.P13777925830132889437

/-!
# A207113: Number of 4Xn 0..1 arrays avoiding 0 0 0 and 0 1 1 horizontally and 0 0 1 and 1 1 0 vertically.

The programs for A207113, there is no canonical definition to state claims against.
-/

/-! ## A207113.P10904325170505622587

`A207111(∑[n+3]+7)`
-/

namespace A207113.P10904325170505622587
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207111 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A207113.P10904325170505622587

/-! ## A207113.P13970346485392251534

`A207111(A167499(n+2)-1)+char[49]`
-/

namespace A207113.P13970346485392251534
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  49

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207111 (A167499 (n + 2) - 1).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A207113.P13970346485392251534

/-! ## A207113.P17738783037242098215

`A007318(C(2, n))*A207111(A167499(n+2)-1)`
-/

namespace A207113.P17738783037242098215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A207111 (A167499 (n + 2) - 1).toNat

end

end A207113.P17738783037242098215

/-! ## A207113.P4242989901172798225

`A000041(C(2, n+2))*A207111(A167499(n+2)-1)`
-/

namespace A207113.P4242989901172798225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 (n + 2)) * A207111 (A167499 (n + 2) - 1).toNat

end

end A207113.P4242989901172798225

/-! ## A207113.P2378638600734049668

`A000108(and(1, 1-n))*A207111(A167499(n+2)-1)`
-/

namespace A207113.P2378638600734049668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (Int.land 1 (1 - (n : ℤ))).toNat * A207111 (A167499 (n + 2) - 1).toNat

end

end A207113.P2378638600734049668

/-!
# A207114: Number of 5Xn 0..1 arrays avoiding 0 0 0 and 0 1 1 horizontally and 0 0 1 and 1 1 0 vertically.

The programs for A207114, there is no canonical definition to state claims against.
-/

/-! ## A207114.P16214941677684310961

`A207111(∑[n+4]+11)`
-/

namespace A207114.P16214941677684310961
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207111 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A207114.P16214941677684310961

/-! ## A207114.P11890156725868521004

`or(char[3], A207111(A051936(n+4)+14))`
-/

namespace A207114.P11890156725868521004
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A207111 (A051936 (n + 4) + 14).toNat)

end

end A207114.P11890156725868521004

/-! ## A207114.P1862847788571283459

`A178334(n+3)*A207111(A167499(n+3))`
-/

namespace A207114.P1862847788571283459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 (n + 3) * A207111 (A167499 (n + 3)).toNat

end

end A207114.P1862847788571283459

/-! ## A207114.P5785076037252374513

`A207111(A167499(n+3))+A102683(2*(n+2))`
-/

namespace A207114.P5785076037252374513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207111 (A167499 (n + 3)).toNat + A102683 (2 * (n + 2))

end

end A207114.P5785076037252374513

/-! ## A207114.P7187260425777751180

`A007318(C(2, n))*A207111(A051936(n+4)+14)`
-/

namespace A207114.P7187260425777751180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A207111 (A051936 (n + 4) + 14).toNat

end

end A207114.P7187260425777751180

/-!
# A207115: Number of 6Xn 0..1 arrays avoiding 0 0 0 and 0 1 1 horizontally and 0 0 1 and 1 1 0 vertically.

The programs for A207115, there is no canonical definition to state claims against.
-/

/-! ## A207115.P14843412744844763463

`A207111(A056115(n)+21)`
-/

namespace A207115.P14843412744844763463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207111 (A056115 n + 21).toNat

end

end A207115.P14843412744844763463

/-! ## A207115.P10534813368175199301

`A207111(A167499(n+4)+1)`
-/

namespace A207115.P10534813368175199301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207111 (A167499 (n + 4) + 1).toNat

end

end A207115.P10534813368175199301

/-! ## A207115.P3600392022428032298

`A207111(A167614(n+4)+3)`
-/

namespace A207115.P3600392022428032298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207111 (A167614 (n + 4) + 3).toNat

end

end A207115.P3600392022428032298

/-! ## A207115.P15355577173047015416

`A207111(A000124(n+5)+5)`
-/

namespace A207115.P15355577173047015416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207111 (A000124 (n + 5) + 5).toNat

end

end A207115.P15355577173047015416

/-! ## A207115.P17921372062221228195

`A207111(A000217(n+5)+6)`
-/

namespace A207115.P17921372062221228195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207111 (A000217 (n + 5) + 6).toNat

end

end A207115.P17921372062221228195

/-!
# A207116: Number of 7Xn 0..1 arrays avoiding 0 0 0 and 0 1 1 horizontally and 0 0 1 and 1 1 0 vertically.

The programs for A207116, there is no canonical definition to state claims against.
-/

/-! ## A207116.P10165975618038477137

`A207111(A167487(n+5))`
-/

namespace A207116.P10165975618038477137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207111 (A167487 (n + 5)).toNat

end

end A207116.P10165975618038477137

/-! ## A207116.P3979349898226131658

`A207111(A302537(n)+27)`
-/

namespace A207116.P3979349898226131658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207111 (A302537 n + 27).toNat

end

end A207116.P3979349898226131658

/-! ## A207116.P6675726043995330117

`A207111(A056119(n)+28)`
-/

namespace A207116.P6675726043995330117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207111 (A056119 n + 28).toNat

end

end A207116.P6675726043995330117

/-! ## A207116.P1554697256529466169

`A207111(eq[11, A066657(n)])`
-/

namespace A207116.P1554697256529466169
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207111 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A207116.P1554697256529466169

/-! ## A207116.P8846822320728652794

`A207111(A166136(n+5)+1)`
-/

namespace A207116.P8846822320728652794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207111 (A166136 (n + 5) + 1).toNat

end

end A207116.P8846822320728652794

/-!
# A207117: Number of n X n 0..1 arrays avoiding 0 0 1 and 0 1 0 horizontally and 0 0 1 and 0 1 1 vertically.

The programs for A207117, there is no canonical definition to state claims against.
-/

/-! ## A207117.P13721713652177991850

`A207123(∑[4*n]+1)`
-/

namespace A207117.P13721713652177991850
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207123 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A207117.P13721713652177991850

/-! ## A207117.P16231724876972368052

`record[A003982(n)*A207123(n+1)]`
-/

namespace A207117.P16231724876972368052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A207123 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A207117.P16231724876972368052

/-! ## A207117.P10935575924721855392

`record[A207123(n+1)*A214505(n)]`
-/

namespace A207117.P10935575924721855392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207123 (n + 1) * A214505 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A207117.P10935575924721855392

/-! ## A207117.P12074609359623527320

`record[root(A207123(n+1), A027420(n))]`
-/

namespace A207117.P12074609359623527320
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A207123 (n + 1) : ℝ) ^ (1 / (A027420 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A207117.P12074609359623527320

/-! ## A207117.P2158004015636802103

`record[gcd(A114327(n), A207123(n+1))]`
-/

namespace A207117.P2158004015636802103
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A207123 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A207117.P2158004015636802103

/-!
# A207118: Number of n X 3 0..1 arrays avoiding 0 0 1 and 0 1 0 horizontally and 0 0 1 and 0 1 1 vertically.

The programs for A207118, there is no canonical definition to state claims against.
-/

/-! ## A207118.P17471276244335091470

`A207403(∑[n+2]+4)`
-/

namespace A207118.P17471276244335091470
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207403 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A207118.P17471276244335091470

/-! ## A207118.P11610202147773289840

`A207403(A167614(n+1))%A017033(n)`
-/

namespace A207118.P11610202147773289840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A207403 (A167614 (n + 1)).toNat) (A017033 n)

end

end A207118.P11610202147773289840

/-! ## A207118.P2833816897159682922

`or(A000038(n), A207403(A167614(n+1)))`
-/

namespace A207118.P2833816897159682922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000038 n) (A207403 (A167614 (n + 1)).toNat)

end

end A207118.P2833816897159682922

/-! ## A207118.P15448395333234858151

`char[A035043(n)]*A207403(A167614(n+1))`
-/

namespace A207118.P15448395333234858151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035043 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A207403 (A167614 (n + 1)).toNat

end

end A207118.P15448395333234858151

/-! ## A207118.P18201379900064302112

`A207403(A167614(n+1))+char[A127334(n+1)]`
-/

namespace A207118.P18201379900064302112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127334 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207403 (A167614 (n + 1)).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A207118.P18201379900064302112

/-! ## A207118.P2735890478030808852

`A207403(A167614(n+1))/A001221(A079021(n+1))`
-/

namespace A207118.P2735890478030808852
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A207403 (A167614 (n + 1)).toNat : ℚ) / (A001221 (A079021 (n + 1)).toNat : ℚ)

end

end A207118.P2735890478030808852

/-!
# A207119: Number of nX4 0..1 arrays avoiding 0 0 1 and 0 1 0 horizontally and 0 0 1 and 0 1 1 vertically.

The programs for A207119, there is no canonical definition to state claims against.
-/

/-! ## A207119.P11465237347689906919

`A207123(A141214(n+1))`
-/

namespace A207119.P11465237347689906919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207123 (A141214 (n + 1)).toNat

end

end A207119.P11465237347689906919

/-! ## A207119.P5780487433733160838

`A207123(A027379(n+2))`
-/

namespace A207119.P5780487433733160838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207123 (A027379 (n + 2)).toNat

end

end A207119.P5780487433733160838

/-! ## A207119.P17569050278104356192

`A207123(A055998(n+2))`
-/

namespace A207119.P17569050278104356192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207123 (A055998 (n + 2)).toNat

end

end A207119.P17569050278104356192

/-! ## A207119.P3728853193216548203

`A207123(A155212(n)+5)`
-/

namespace A207119.P3728853193216548203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207123 (A155212 n + 5).toNat

end

end A207119.P3728853193216548203

/-! ## A207119.P3430832711694216141

`A207123(A056000(n)+7)`
-/

namespace A207119.P3430832711694216141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207123 (A056000 n + 7).toNat

end

end A207119.P3430832711694216141

/-!
# A207120: Number of nX5 0..1 arrays avoiding 0 0 1 and 0 1 0 horizontally and 0 0 1 and 0 1 1 vertically.

The programs for A207120, there is no canonical definition to state claims against.
-/

/-! ## A207120.P2618667777553443636

`A207123(A046691(n+3))`
-/

namespace A207120.P2618667777553443636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207123 (A046691 (n + 3)).toNat

end

end A207120.P2618667777553443636

/-! ## A207120.P7453553747240677683

`A207123(Δ[A023545(n+1)])`
-/

namespace A207120.P7453553747240677683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207123 (f1 (n + 1) - f1 n).toNat

end

end A207120.P7453553747240677683

/-! ## A207120.P16378379228661055429

`A207123(A034856(n+4)-2)`
-/

namespace A207120.P16378379228661055429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207123 (A034856 (n + 4) - 2).toNat

end

end A207120.P16378379228661055429

/-! ## A207120.P1137300657987059764

`A207123(A000124(n+5)-5)`
-/

namespace A207120.P1137300657987059764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207123 (A000124 (n + 5) - 5).toNat

end

end A207120.P1137300657987059764

/-! ## A207120.P13837729783625098670

`A207123(A000217(n+6)-(n+10))`
-/

namespace A207120.P13837729783625098670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207123 (A000217 (n + 6) - (n + 10 : ℤ)).toNat

end

end A207120.P13837729783625098670

/-!
# A207121: Number of nX6 0..1 arrays avoiding 0 0 1 and 0 1 0 horizontally and 0 0 1 and 0 1 1 vertically.

The programs for A207121, there is no canonical definition to state claims against.
-/

/-! ## A207121.P13091136533458408167

`A207123(A052905(n+3))`
-/

namespace A207121.P13091136533458408167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207123 (A052905 (n + 3)).toNat

end

end A207121.P13091136533458408167

/-! ## A207121.P8214789120326752120

`A207123(A055998(n+4)-2)`
-/

namespace A207121.P8214789120326752120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207123 (A055998 (n + 4) - 2).toNat

end

end A207121.P8214789120326752120

/-! ## A207121.P685787301159714983

`A207123(A000096(n+5)-4)`
-/

namespace A207121.P685787301159714983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207123 (A000096 (n + 5) - 4).toNat

end

end A207121.P685787301159714983

/-! ## A207121.P10080188567462870451

`A207123(A000124(n+6)-6)`
-/

namespace A207121.P10080188567462870451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207123 (A000124 (n + 6) - 6).toNat

end

end A207121.P10080188567462870451

/-! ## A207121.P9323430563114243910

`A207123(Δ[Δ[A006504(n+1)]])`
-/

namespace A207121.P9323430563114243910
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207123 (f1 (n + 1) - f1 n).toNat

end

end A207121.P9323430563114243910

/-!
# A207122: Number of n X 7 0..1 arrays avoiding 0 0 1 and 0 1 0 horizontally and 0 0 1 and 0 1 1 vertically.

The programs for A207122, there is no canonical definition to state claims against.
-/

/-! ## A207122.P11689434269476872059

`A207123(A055999(n+4))`
-/

namespace A207122.P11689434269476872059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207123 (A055999 (n + 4)).toNat

end

end A207122.P11689434269476872059

/-! ## A207122.P12467769418910306244

`A207123(A000096(n+6)-5)`
-/

namespace A207122.P12467769418910306244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207123 (A000096 (n + 6) - 5).toNat

end

end A207122.P12467769418910306244

/-! ## A207122.P1021039086469633667

`A207123(A000217(n+7)-6)`
-/

namespace A207122.P1021039086469633667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207123 (A000217 (n + 7) - 6).toNat

end

end A207122.P1021039086469633667

/-! ## A207122.P18384551152799911929

`A207123(A000124(n+7)-7)`
-/

namespace A207122.P18384551152799911929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207123 (A000124 (n + 7) - 7).toNat

end

end A207122.P18384551152799911929

/-! ## A207122.P14808979188767935936

`A207123(A133263(n+6)-(1-n))`
-/

namespace A207122.P14808979188767935936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207123 (A133263 (n + 6) - (1 - (n : ℤ))).toNat

end

end A207122.P14808979188767935936

/-!
# A207123: T(n,k)=Number of nXk 0..1 arrays avoiding 0 0 1 and 0 1 0 horizontally and 0 0 1 and 0 1 1 vertically.

The programs for A207123, there is no canonical definition to state claims against.
-/

/-! ## A207123.P11163696653768478299

`A207752(A161953(A038722(n+1)))`
-/

namespace A207123.P11163696653768478299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207752 (A161953 (A038722 (n + 1)).toNat).toNat

end

end A207123.P11163696653768478299

/-! ## A207123.P12822740404415978430

`A207908(n+1)-A107846(A036422(n))`
-/

namespace A207123.P12822740404415978430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207908 (n + 1) - A107846 (A036422 n).toNat

end

end A207123.P12822740404415978430

/-! ## A207123.P15809441210445799499

`A208039(n+1)-A107846(A036422(n))`
-/

namespace A207123.P15809441210445799499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208039 (n + 1) - A107846 (A036422 n).toNat

end

end A207123.P15809441210445799499

/-! ## A207123.P15482820724445205440

`or(A120648(A101479(n)), A267719(n+1))`
-/

namespace A207123.P15482820724445205440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A120648 (A101479 n).toNat) (A267719 (n + 1))

end

end A207123.P15482820724445205440

/-! ## A207123.P3280824096653524320

`A370813(A238864(n))+A207960(n+1)`
-/

namespace A207123.P3280824096653524320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370813 (A238864 n).toNat + A207960 (n + 1)

end

end A207123.P3280824096653524320

/-!
# A207124: Number of 4Xn 0..1 arrays avoiding 0 0 1 and 0 1 0 horizontally and 0 0 1 and 0 1 1 vertically.

The programs for A207124, there is no canonical definition to state claims against.
-/

/-! ## A207124.P7803406339667071069

`(A207070(n+1)/A038718(n+3))²`
-/

namespace A207124.P7803406339667071069
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A207070 (n + 1) : ℚ) / (A038718 (n + 3) : ℚ)) ^ 2

end

end A207124.P7803406339667071069

/-! ## A207124.P10617126369107706051

`A207070(n+1)/A207069(n+1)*A207070(n+1)`
-/

namespace A207124.P10617126369107706051
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A207070 (n + 1) : ℚ) / (A207069 (n + 1) : ℚ) * (A207070 (n + 1) : ℚ)

end

end A207124.P10617126369107706051

/-! ## A207124.P6549408447452732862

`A207125(n+1)/A207126(n+1)*A207125(n+1)`
-/

namespace A207124.P6549408447452732862
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A207125 (n + 1) : ℚ) / (A207126 (n + 1) : ℚ) * (A207125 (n + 1) : ℚ)

end

end A207124.P6549408447452732862

/-! ## A207124.P15127218096705988951

`A207070(n+1)²/A207069(n+1)`
-/

namespace A207124.P15127218096705988951
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A207070 (n + 1) ^ 2 : ℚ) / (A207069 (n + 1) : ℚ)

end

end A207124.P15127218096705988951

/-! ## A207124.P8009574566382431668

`A207125(n+1)²/A207126(n+1)`
-/

namespace A207124.P8009574566382431668
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A207125 (n + 1) ^ 2 : ℚ) / (A207126 (n + 1) : ℚ)

end

end A207124.P8009574566382431668

/-!
# A207125: Number of 5 X n 0..1 arrays avoiding 0 0 1 and 0 1 0 horizontally and 0 0 1 and 0 1 1 vertically.

The programs for A207125, there is no canonical definition to state claims against.
-/

/-! ## A207125.P3978656614897115808

`sqrt(A207124(n+1))*sqrt(A207126(n+1))`
-/

namespace A207125.P3978656614897115808
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A207124 (n + 1) : ℝ) * Real.sqrt (A207126 (n + 1) : ℝ)

end

end A207125.P3978656614897115808

/-! ## A207125.P15774393756815002931

`sqrt(A207124(n+1)*A207126(n+1))`
-/

namespace A207125.P15774393756815002931
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A207124 (n + 1) * A207126 (n + 1) : ℝ)

end

end A207125.P15774393756815002931

/-! ## A207125.P1150876783719304623

`A207123(A167499(n+3))`
-/

namespace A207125.P1150876783719304623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207123 (A167499 (n + 3)).toNat

end

end A207125.P1150876783719304623

/-! ## A207125.P11440758155416804976

`A207123(A155212(n)+13)`
-/

namespace A207125.P11440758155416804976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207123 (A155212 n + 13).toNat

end

end A207125.P11440758155416804976

/-! ## A207125.P6441553298954664555

`A207123(A000217(n+4)+5)`
-/

namespace A207125.P6441553298954664555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207123 (A000217 (n + 4) + 5).toNat

end

end A207125.P6441553298954664555

/-!
# A207126: Number of 6Xn 0..1 arrays avoiding 0 0 1 and 0 1 0 horizontally and 0 0 1 and 0 1 1 vertically.

The programs for A207126, there is no canonical definition to state claims against.
-/

/-! ## A207126.P13950390587741246894

`A207071(n+1)/A207069(n+1)*A207071(n+1)`
-/

namespace A207126.P13950390587741246894
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A207071 (n + 1) : ℚ) / (A207069 (n + 1) : ℚ) * (A207071 (n + 1) : ℚ)

end

end A207126.P13950390587741246894

/-! ## A207126.P15214161154729853087

`A207125(n+1)/A207124(n+1)*A207125(n+1)`
-/

namespace A207126.P15214161154729853087
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A207125 (n + 1) : ℚ) / (A207124 (n + 1) : ℚ) * (A207125 (n + 1) : ℚ)

end

end A207126.P15214161154729853087

/-! ## A207126.P4221691775546020815

`(A207125(n+1)/A207070(n+1))²*A207069(n+1)`
-/

namespace A207126.P4221691775546020815
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A207125 (n + 1) : ℚ) / (A207070 (n + 1) : ℚ)) ^ 2 * (A207069 (n + 1) : ℚ)

end

end A207126.P4221691775546020815

/-! ## A207126.P7588935739616083217

`A207071(n+1)²/A207069(n+1)`
-/

namespace A207126.P7588935739616083217
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A207071 (n + 1) ^ 2 : ℚ) / (A207069 (n + 1) : ℚ)

end

end A207126.P7588935739616083217

/-! ## A207126.P5075347327642902052

`A207125(n+1)²/A207124(n+1)`
-/

namespace A207126.P5075347327642902052
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A207125 (n + 1) ^ 2 : ℚ) / (A207124 (n + 1) : ℚ)

end

end A207126.P5075347327642902052

/-!
# A207127: Number of 7Xn 0..1 arrays avoiding 0 0 1 and 0 1 0 horizontally and 0 0 1 and 0 1 1 vertically.

The programs for A207127, there is no canonical definition to state claims against.
-/

/-! ## A207127.P4475216270502561435

`A207123(A167487(n+5))`
-/

namespace A207127.P4475216270502561435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207123 (A167487 (n + 5)).toNat

end

end A207127.P4475216270502561435

/-! ## A207127.P5117730553803980254

`A207123(A000217(n+6)+7)`
-/

namespace A207127.P5117730553803980254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207123 (A000217 (n + 6) + 7).toNat

end

end A207127.P5117730553803980254

/-! ## A207127.P6349482912345360803

`A207123(A141214(n+3)+10)`
-/

namespace A207127.P6349482912345360803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207123 (A141214 (n + 3) + 10).toNat

end

end A207127.P6349482912345360803

/-! ## A207127.P3162611765155591267

`A207123(A027379(n+4)+10)`
-/

namespace A207127.P3162611765155591267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207123 (A027379 (n + 4) + 10).toNat

end

end A207127.P3162611765155591267

/-! ## A207127.P2049426063968855934

`A207123(A161680(n+6)+n+13)`
-/

namespace A207127.P2049426063968855934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207123 (A161680 (n + 6) + (n + 13 : ℤ)).toNat

end

end A207127.P2049426063968855934

/-!
# A207128: Number of n X n 0..3 arrays avoiding the pattern z z+1 z in any row or column.

The programs for A207128, there is no canonical definition to state claims against.
-/

/-! ## A207128.P9429027314091511454

`A207134(∑[4*n]+1)`
-/

namespace A207128.P9429027314091511454
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207134 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A207128.P9429027314091511454

/-!
# A207129: Number of n X 3 0..3 arrays avoiding the pattern z z+1 z in any row or column.

The programs for A207129, there is no canonical definition to state claims against.
-/

/-! ## A207129.P992486255668473669

`A207134(∑[n+2]+4)`
-/

namespace A207129.P992486255668473669
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207134 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A207129.P992486255668473669

/-! ## A207129.P5068819753321226090

`A207134(A167614(n+1))*A238015(n)`
-/

namespace A207129.P5068819753321226090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207134 (A167614 (n + 1)).toNat * A238015 n

end

end A207129.P5068819753321226090

/-! ## A207129.P4779954189368890381

`lcm(A020985(n), A207134(A167614(n+1)))`
-/

namespace A207129.P4779954189368890381
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A207134 (A167614 (n + 1)).toNat)

end

end A207129.P4779954189368890381

/-! ## A207129.P4412175777807712372

`A207134(A167614(n+1))%A206793(n+1)`
-/

namespace A207129.P4412175777807712372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A207134 (A167614 (n + 1)).toNat) (A206793 (n + 1))

end

end A207129.P4412175777807712372

/-! ## A207129.P12924450202287488334

`or(A101605(n+1), A207134(A167614(n+1)))`
-/

namespace A207129.P12924450202287488334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A101605 (n + 1)) (A207134 (A167614 (n + 1)).toNat)

end

end A207129.P12924450202287488334

/-!
# A207130: Number of nX4 0..3 arrays avoiding the pattern z z+1 z in any row or column.

The programs for A207130, there is no canonical definition to state claims against.
-/

/-! ## A207130.P15951633893071726949

`A207134(A052905(n)+9)`
-/

namespace A207130.P15951633893071726949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207134 (A052905 n + 9).toNat

end

end A207130.P15951633893071726949

/-! ## A207130.P8808025928365427910

`A207134(A167614(n+2)+1)`
-/

namespace A207130.P8808025928365427910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207134 (A167614 (n + 2) + 1).toNat

end

end A207130.P8808025928365427910

/-! ## A207130.P7543438817492256599

`A207134(A046691(n+2)+1)`
-/

namespace A207130.P7543438817492256599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207134 (A046691 (n + 2) + 1).toNat

end

end A207130.P7543438817492256599

/-!
# A207131: Number of nX5 0..3 arrays avoiding the pattern z z+1 z in any row or column.

The programs for A207131, there is no canonical definition to state claims against.
-/

/-! ## A207131.P11028975451986567576

`A207134(A374005(n+1))`
-/

namespace A207131.P11028975451986567576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207134 (A374005 (n + 1)).toNat

end

end A207131.P11028975451986567576

/-! ## A207131.P5168536539908977199

`A207134(eq[7, A131818(n+1)]-(n+6))`
-/

namespace A207131.P5168536539908977199
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207134 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n - (n + 6))

end

end A207131.P5168536539908977199

/-! ## A207131.P14524652151164185639

`A207134(A046691(n+3))`
-/

namespace A207131.P14524652151164185639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207134 (A046691 (n + 3)).toNat

end

end A207131.P14524652151164185639

/-! ## A207131.P9604112142232478398

`A207134(A052905(n+2)+1)`
-/

namespace A207131.P9604112142232478398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207134 (A052905 (n + 2) + 1).toNat

end

end A207131.P9604112142232478398

/-!
# A207132: 

The programs for A207132, there is no canonical definition to state claims against.
-/

/-! ## A207132.P1522597652599909475

`A207134(A000096(n+4)+7)`
-/

namespace A207132.P1522597652599909475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207134 (A000096 (n + 4) + 7).toNat

end

end A207132.P1522597652599909475

/-! ## A207132.P3158224101058539799

`A207134(eq[7, A131818(n+1)])`
-/

namespace A207132.P3158224101058539799
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207134 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A207132.P3158224101058539799

/-!
# A207133: 

The programs for A207133, there is no canonical definition to state claims against.
-/

/-! ## A207133.P18192120013826199365

`A207134(A055999(n+4))`
-/

namespace A207133.P18192120013826199365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207134 (A055999 (n + 4)).toNat

end

end A207133.P18192120013826199365

/-!
# A207134: T(n,k)=Number of nXk 0..3 arrays avoiding the pattern z z+1 z in any row or column.

The programs for A207134, there is no canonical definition to state claims against.
-/

/-! ## A207134.P16207223126419332215

`A207057(n+1)+A020987(A110148(n+1))`
-/

namespace A207134.P16207223126419332215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207057 (n + 1) + A020987 (A110148 (n + 1)).toNat

end

end A207134.P16207223126419332215

/-! ## A207134.P2712195350716161733

`A207057(n+1)+A010054(A207050(n+1))`
-/

namespace A207134.P2712195350716161733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207057 (n + 1) + A010054 (A207050 (n + 1)).toNat

end

end A207134.P2712195350716161733

/-! ## A207134.P2008985239206559716

`A207057(A246086(n+1))+A047999(A207050(n+1))`
-/

namespace A207134.P2008985239206559716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207057 (A246086 (n + 1)).toNat + A047999 (A207050 (n + 1)).toNat

end

end A207134.P2008985239206559716

/-! ## A207134.P10474960107413098705

`A207057(n+1)+A101605(A000051(n))`
-/

namespace A207134.P10474960107413098705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207057 (n + 1) + A101605 (A000051 n).toNat

end

end A207134.P10474960107413098705

/-! ## A207134.P7750425952952893094

`A207057(n+1)+A101605(A002219(n+3))`
-/

namespace A207134.P7750425952952893094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207057 (n + 1) + A101605 (A002219 (n + 3)).toNat

end

end A207134.P7750425952952893094

/-!
# A207135: G.f.: exp( Sum_{n>=1} x^n/n * Sum_{k=0..n} binomial(n^2, k*(n-k)) ).

The programs for A207135, there is no canonical definition to state claims against.
-/

/-! ## A207135.P7823812964091439915

`A240311(2^(n+1)-∑[n])`
-/

namespace A207135.P7823812964091439915
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240311 (2 ^ (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A207135.P7823812964091439915

/-!
# A207136: a(n) = Sum_{k=0..n} binomial(n^2, k*(n-k)).

The programs for A207136, there is no canonical definition to state claims against.
-/

/-! ## A207136.P8971987668742508624

`∑[A006949(∏[A007051(n)])]`
-/

namespace A207136.P8971987668742508624
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007051 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006949 (∏ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A207136.P8971987668742508624

/-!
# A207137: G.f.: exp( Sum_{n>=1} x^n/n * Sum_{k=0..n} binomial(n^2, k*(n-k))*x^k ).

The programs for A207137, there is no canonical definition to state claims against.
-/

/-! ## A207137.P15779931833509681421

`floor(sqrt(A250001(n)/γ))`
-/

namespace A207137.P15779931833509681421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt ((A250001 n : ℝ) / Real.eulerMascheroniConstant)⌋

end

end A207137.P15779931833509681421

/-! ## A207137.P8809741475094415543

`A057484(A006452(n))`
-/

namespace A207137.P8809741475094415543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057484 (A006452 n).toNat

end

end A207137.P8809741475094415543

/-!
# A207138: L.g.f.: Sum_{n>=1} x^n/n * Sum_{k=0..n} binomial(n^2, k*(n-k))*x^k = Sum_{n>=1} a(n)*x^n/n.

The programs for A207138, there is no canonical definition to state claims against.
-/

/-! ## A207138.P8202050486150643406

`A160544(or(1, ∏[or(1, 2^n-1)+n%2]))`
-/

namespace A207138.P8202050486150643406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ((2 ^ n : ℤ) - 1) + ((n % 2 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160544 (Int.lor 1 (∏ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A207138.P8202050486150643406

/-!
# A207139: G.f.: exp( Sum_{n>=1} x^n/n * Sum_{k=0..n} binomial(n,k) * binomial(n^2,k^2) ).

The programs for A207139, there is no canonical definition to state claims against.
-/

/-! ## A207139.P12811354141986582140

`A074761(2*(n+2))*A177407(A216785(2*n+1))`
-/

namespace A207139.P12811354141986582140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074761 (2 * (n + 2)) * A177407 (A216785 (2 * n + 1)).toNat

end

end A207139.P12811354141986582140

/-!
# A207141: Number of (n+1)X(n+1) 0..2 arrays with every 2X2 subblock having nonzero determinant and commuting with every horizontal or vertical neighbor.

The programs for A207141, there is no canonical definition to state claims against.
-/

/-! ## A207141.P12357386799578981967

`A207149(∑[4*n]+1)`
-/

namespace A207141.P12357386799578981967
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207149 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A207141.P12357386799578981967

/-! ## A207141.P11857867010582491431

`A207149(A001844(n))+char[22]`
-/

namespace A207141.P11857867010582491431
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  22

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207149 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A207141.P11857867010582491431

/-! ## A207141.P8477690464195550357

`A007318(∑[n])*A207149(A001844(n))`
-/

namespace A207141.P8477690464195550357
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A207149 (A001844 n).toNat

end

end A207141.P8477690464195550357

/-! ## A207141.P12824352718848936125

`A349797(n+1)+A207149(A001844(n))`
-/

namespace A207141.P12824352718848936125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349797 (n + 1) + A207149 (A001844 n).toNat

end

end A207141.P12824352718848936125

/-! ## A207141.P8556816196156383456

`A207149(A001844(n))%A119052(n+3)`
-/

namespace A207141.P8556816196156383456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A207149 (A001844 n).toNat) (A119052 (n + 3))

end

end A207141.P8556816196156383456

/-!
# A207142: Number of (n+1) X 2 0..2 arrays with every 2 X 2 subblock having nonzero determinant and commuting with every horizontal or vertical neighbor.

The programs for A207142, the canonical program `A207142.P2778123340469660026` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A207142 has offset 1).

The definition of A207142 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 654 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A207142.P2778123340469660026

`2*a(n-2)-2` with `a(0)=50, a(1)=30, a(2)=80, a(3)=62, a(4)=159, a(5)=122, a(6)=315`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A207142

/-- `2*a(n-2)-2` -/
def P2778123340469660026.Spec : Prop :=
  ∀ n, P2778123340469660026.a n = A207142 (n + 1)

theorem P2778123340469660026.correct : P2778123340469660026.Spec := by
  intro n
  simp only [A207142, Nat.add_sub_cancel]

end A207142

/-! ## A207142.P10597696173994374182

`A207149(∑[n]+1)`
-/

namespace A207142.P10597696173994374182
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207149 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A207142.P10597696173994374182

namespace A207142

/-- `A207149(∑[n]+1)` -/
def P10597696173994374182.Spec : Prop :=
  ∀ n, P10597696173994374182.a n = A207142 (n + 1)

end A207142

/-! ## A207142.P7063328808190487704

`or(char[4], A207149(A000124(n)))`
-/

namespace A207142.P7063328808190487704
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A207149 (A000124 n).toNat)

end

end A207142.P7063328808190487704

namespace A207142

/-- `or(char[4], A207149(A000124(n)))` -/
def P7063328808190487704.Spec : Prop :=
  ∀ n, P7063328808190487704.a n = A207142 (n + 1)

end A207142

/-! ## A207142.P13462295044614478501

`A243835(n)+A207149(A000124(n))`
-/

namespace A207142.P13462295044614478501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243835 n + A207149 (A000124 n).toNat

end

end A207142.P13462295044614478501

namespace A207142

/-- `A243835(n)+A207149(A000124(n))` -/
def P13462295044614478501.Spec : Prop :=
  ∀ n, P13462295044614478501.a n = A207142 (n + 1)

end A207142

/-! ## A207142.P7168561792745598916

`A007318(∑[n])*A207149(A000124(n))`
-/

namespace A207142.P7168561792745598916
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A207149 (A000124 n).toNat

end

end A207142.P7168561792745598916

namespace A207142

/-- `A007318(∑[n])*A207149(A000124(n))` -/
def P7168561792745598916.Spec : Prop :=
  ∀ n, P7168561792745598916.a n = A207142 (n + 1)

end A207142

/-!
# A207143: Number of (n+1) X 3 0..2 arrays with every 2 X 2 subblock having nonzero determinant and commuting with every horizontal or vertical neighbor.

The programs for A207143, the canonical program `A207143.P2079377569716092655` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A207143 has offset 1).

The definition of A207143 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 655 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A207143.P2079377569716092655

`2*a(n-2)-2` with `a(0)=30, a(1)=48, a(2)=56, a(3)=95, a(4)=110, a(5)=187, a(6)=218, a(7)=371`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A207143

/-- `2*a(n-2)-2` -/
def P2079377569716092655.Spec : Prop :=
  ∀ n, P2079377569716092655.a n = A207143 (n + 1)

theorem P2079377569716092655.correct : P2079377569716092655.Spec := by
  intro n
  simp only [A207143, Nat.add_sub_cancel]

end A207143

/-! ## A207143.P13359312922972590118

`A207149(∑[n+1]+2)`
-/

namespace A207143.P13359312922972590118
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207149 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A207143.P13359312922972590118

namespace A207143

/-- `A207149(∑[n+1]+2)` -/
def P13359312922972590118.Spec : Prop :=
  ∀ n, P13359312922972590118.a n = A207143 (n + 1)

end A207143

/-! ## A207143.P14652718487301171588

`or(char[3], A207149(A000096(n)+3))`
-/

namespace A207143.P14652718487301171588
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A207149 (A000096 n + 3).toNat)

end

end A207143.P14652718487301171588

namespace A207143

/-- `or(char[3], A207149(A000096(n)+3))` -/
def P14652718487301171588.Spec : Prop :=
  ∀ n, P14652718487301171588.a n = A207143 (n + 1)

end A207143

/-! ## A207143.P2940368184498322021

`record[A207149(A133263(round(lcm(2, n+3)/6)))]`
-/

namespace A207143.P2940368184498322021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207149 (A133263 (SequenceMachineLib.roundAway ((Nat.lcm 2 (n + 3) : ℚ) / 6)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A207143.P2940368184498322021

namespace A207143

/-- `record[A207149(A133263(round(lcm(2, n+3)/6)))]` -/
def P2940368184498322021.Spec : Prop :=
  ∀ n, P2940368184498322021.a n = A207143 (n + 1)

end A207143

/-! ## A207143.P10196001622904155163

`A007318(C(n, 2))*A207149(A000096(n)+3)`
-/

namespace A207143.P10196001622904155163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose n 2) * A207149 (A000096 n + 3).toNat

end

end A207143.P10196001622904155163

namespace A207143

/-- `A007318(C(n, 2))*A207149(A000096(n)+3)` -/
def P10196001622904155163.Spec : Prop :=
  ∀ n, P10196001622904155163.a n = A207143 (n + 1)

end A207143

/-!
# A207144: Number of (n+1) X 4 0..2 arrays with every 2 X 2 subblock having nonzero determinant and commuting with every horizontal or vertical neighbor.

The programs for A207144, there is no canonical definition to state claims against.
-/

/-! ## A207144.P12738070662706229434

`A207149(∑[n+2]+4)`
-/

namespace A207144.P12738070662706229434
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207149 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A207144.P12738070662706229434

/-! ## A207144.P9108246841873274048

`or(char[2], A207149(A167614(n+1)))`
-/

namespace A207144.P9108246841873274048
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A207149 (A167614 (n + 1)).toNat)

end

end A207144.P9108246841873274048

/-! ## A207144.P15366117582795871341

`(A207149(A152949(n+4))^(1/2))²`
-/

namespace A207144.P15366117582795871341
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((A207149 (A152949 (n + 4)).toNat : ℝ) ^ ((1 : ℚ) / 2 : ℝ)) ^ 2

end

end A207144.P15366117582795871341

/-! ## A207144.P10444212224081141595

`A243835(n)+A207149(A167614(n+1))`
-/

namespace A207144.P10444212224081141595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243835 n + A207149 (A167614 (n + 1)).toNat

end

end A207144.P10444212224081141595

/-! ## A207144.P214918914820039914

`char[A332565(n)]*A207149(A167614(n+1))`
-/

namespace A207144.P214918914820039914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332565 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A207149 (A167614 (n + 1)).toNat

end

end A207144.P214918914820039914

/-!
# A207145: Number of (n+1) X 5 0..2 arrays with every 2 X 2 subblock having nonzero determinant and commuting with every horizontal or vertical neighbor.

The programs for A207145, there is no canonical definition to state claims against.
-/

/-! ## A207145.P7468521058496792909

`A207149(∑[n+3]+7)`
-/

namespace A207145.P7468521058496792909
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207149 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A207145.P7468521058496792909

/-!
# A207146: Number of (n+1) X 6 0..2 arrays with every 2 X 2 subblock having nonzero determinant and commuting with every horizontal or vertical neighbor.

The programs for A207146, there is no canonical definition to state claims against.
-/

/-! ## A207146.P10233230255706422889

`A207149(∑[n+4]+11)`
-/

namespace A207146.P10233230255706422889
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207149 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A207146.P10233230255706422889

/-! ## A207146.P16581601969138871472

`or(2, A207149(A167499(n+3)))`
-/

namespace A207146.P16581601969138871472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (A207149 (A167499 (n + 3)).toNat)

end

end A207146.P16581601969138871472

/-! ## A207146.P2847555526409854598

`A177702(3*n)*A207149(A167499(n+3))`
-/

namespace A207146.P2847555526409854598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177702 (3 * n) * A207149 (A167499 (n + 3)).toNat

end

end A207146.P2847555526409854598

/-! ## A207146.P7714523351076857667

`A207149(A155212(n)+13)%A207147(n+2)`
-/

namespace A207146.P7714523351076857667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A207149 (A155212 n + 13).toNat) (A207147 (n + 2))

end

end A207146.P7714523351076857667

/-! ## A207146.P16053310927949122108

`A207149(A167499(n+3))%A207147(2*(n+2))`
-/

namespace A207146.P16053310927949122108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A207149 (A167499 (n + 3)).toNat) (A207147 (2 * (n + 2)))

end

end A207146.P16053310927949122108

/-!
# A207147: Number of (n+1) X 7 0..2 arrays with every 2 X 2 subblock having nonzero determinant and commuting with every horizontal or vertical neighbor.

The programs for A207147, there is no canonical definition to state claims against.
-/

/-! ## A207147.P11389384892923401424

`A207149(C(n+7, 2)-n)`
-/

namespace A207147.P11389384892923401424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207149 (Nat.choose (n + 7) 2 - n)

end

end A207147.P11389384892923401424

/-! ## A207147.P16597066828408997309

`A207149(A166136(n+4))`
-/

namespace A207147.P16597066828408997309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207149 (A166136 (n + 4)).toNat

end

end A207147.P16597066828408997309

/-! ## A207147.P17580867211786661785

`A207149(A167499(n+4)+1)`
-/

namespace A207147.P17580867211786661785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207149 (A167499 (n + 4) + 1).toNat

end

end A207147.P17580867211786661785

/-! ## A207147.P13159441687774296720

`A207149(A167614(n+4)+3)`
-/

namespace A207147.P13159441687774296720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207149 (A167614 (n + 4) + 3).toNat

end

end A207147.P13159441687774296720

/-! ## A207147.P8432830364288744718

`A207149(A000124(n+5)+5)`
-/

namespace A207147.P8432830364288744718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207149 (A000124 (n + 5) + 5).toNat

end

end A207147.P8432830364288744718

/-!
# A207148: Number of (n+1) X 8 0..2 arrays with every 2 X 2 subblock having nonzero determinant and commuting with every horizontal or vertical neighbor.

The programs for A207148, there is no canonical definition to state claims against.
-/

/-! ## A207148.P7462314594804234815

`A207149(A056119(n)+28)`
-/

namespace A207148.P7462314594804234815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207149 (A056119 n + 28).toNat

end

end A207148.P7462314594804234815

/-! ## A207148.P12526907067590824811

`A207149(A077169(n+7)+2)`
-/

namespace A207148.P12526907067590824811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207149 (A077169 (n + 7) + 2).toNat

end

end A207148.P12526907067590824811

/-! ## A207148.P7096680576569426712

`A207149(A000124(n+6)+6)`
-/

namespace A207148.P7096680576569426712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207149 (A000124 (n + 6) + 6).toNat

end

end A207148.P7096680576569426712

/-! ## A207148.P5746691684802953496

`A207149(A000096(n+5)+8)`
-/

namespace A207148.P5746691684802953496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207149 (A000096 (n + 5) + 8).toNat

end

end A207148.P5746691684802953496

/-! ## A207148.P15010583910041236554

`A207149(A000217(n+6)+7)`
-/

namespace A207148.P15010583910041236554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207149 (A000217 (n + 6) + 7).toNat

end

end A207148.P15010583910041236554

/-!
# A207151: Number of nXnXn 0..6 triangular arrays with each element x equal to the number its neighbors equal to 6,3,2,0,2,0,2 for x=0,1,2,3,4,5,6.

The programs for A207151, there is no canonical definition to state claims against.
-/

/-! ## A207151.P17781875764310011799

`xor(A006927(A000096(n)), A195157(n+1))`
-/

namespace A207151.P17781875764310011799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A006927 (A000096 n).toNat) (A195157 (n + 1))

end

end A207151.P17781875764310011799

/-!
# A207153: Number of nXnXn 0..6 triangular arrays with each element x equal to the number its neighbors equal to 5,0,0,2,1,1,1 for x=0,1,2,3,4,5,6.

The programs for A207153, there is no canonical definition to state claims against.
-/

/-! ## A207153.P7775656693366153546

`A318286(A038883(n+1)-A318293(2*n))`
-/

namespace A207153.P7775656693366153546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318286 (A038883 (n + 1) - A318293 (2 * n)).toNat

end

end A207153.P7775656693366153546

/-!
# A207155: Number of nXnXn 0..6 triangular arrays with each element x equal to the number its neighbors equal to 5,5,2,0,0,1,0 for x=0,1,2,3,4,5,6.

The programs for A207155, there is no canonical definition to state claims against.
-/

/-! ## A207155.P12939689398617930004

`A076474(A278815(n))`
-/

namespace A207155.P12939689398617930004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076474 (A278815 n).toNat

end

end A207155.P12939689398617930004

/-!
# A207156: Number of n X n X n 0..6 triangular arrays with each element x equal to the number its neighbors equal to 5,0,1,0,0,1,1 for x=0,1,2,3,4,5,6.

The programs for A207156, there is no canonical definition to state claims against.
-/

/-! ## A207156.P8148654777553758402

`A340745(A007051(n))+A319559(3*n)`
-/

namespace A207156.P8148654777553758402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340745 (A007051 n).toNat + A319559 (3 * n)

end

end A207156.P8148654777553758402

/-!
# A207157: Number of nXnXn 0..6 triangular arrays with each element x equal to the number its neighbors equal to 3,3,2,2,0,2,0 for x=0,1,2,3,4,5,6.

The programs for A207157, there is no canonical definition to state claims against.
-/

/-! ## A207157.P11568542362031772177

`A065114(a(n-1))-3` with `a(0)=1`
-/

namespace A207157.P11568542362031772177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A065114 (a (n - 1)).toNat - 3

end

end A207157.P11568542362031772177

/-!
# A207158: Number of nXnXn 0..6 triangular arrays with each element x equal to the number its neighbors equal to 3,0,0,2,2,1,0 for x=0,1,2,3,4,5,6.

The programs for A207158, there is no canonical definition to state claims against.
-/

/-! ## A207158.P8231292547186510818

`A307674(n+1)+A222210(A233832(n))`
-/

namespace A207158.P8231292547186510818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307674 (n + 1) + A222210 (A233832 n).toNat

end

end A207158.P8231292547186510818

/-!
# A207159: Number of nXnXn 0..6 triangular arrays with each element x equal to the number its neighbors equal to 6,0,3,0,1,1,1 for x=0,1,2,3,4,5,6.

The programs for A207159, there is no canonical definition to state claims against.
-/

/-! ## A207159.P6521853314698835217

`A125140(A137099(n+1))`
-/

namespace A207159.P6521853314698835217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125140 (A137099 (n + 1)).toNat

end

end A207159.P6521853314698835217

/-!
# A207161: Number of nXnXn 0..6 triangular arrays with each element x equal to the number its neighbors equal to 3,3,0,2,0,0,0 for x=0,1,2,3,4,5,6.

The programs for A207161, there is no canonical definition to state claims against.
-/

/-! ## A207161.P15061121585937895859

`∑[or(n, n*A271078(2*n+3)+1)]`
-/

namespace A207161.P15061121585937895859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) ((n : ℤ) * A271078 (2 * n + 3) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A207161.P15061121585937895859

/-!
# A207162: Number of nXnXn 0..6 triangular arrays with each element x equal to the number its neighbors equal to 1,3,2,2,0,0,0 for x=0,1,2,3,4,5,6.

The programs for A207162, there is no canonical definition to state claims against.
-/

/-! ## A207162.P9592290748994264685

`A157227((n+1)*(n^n+1)+1)`
-/

namespace A207162.P9592290748994264685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157227 ((n + 1) * (n ^ n + 1) + 1)

end

end A207162.P9592290748994264685

/-!
# A207163: Number of nXnXn 0..6 triangular arrays with each element x equal to the number its neighbors equal to 3,5,0,2,0,0,0 for x=0,1,2,3,4,5,6.

The programs for A207163, there is no canonical definition to state claims against.
-/

/-! ## A207163.P1644204085109837140

`A287106(C(∑[n*a(n-1)], 2)+1)` with `a(0)=1`
-/

namespace A207163.P1644204085109837140
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  n * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287106 (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 + 1)

end

end A207163.P1644204085109837140

/-!
# A207164: Number of n X n 0..1 arrays avoiding 0 0 0 and 1 0 1 horizontally and 0 0 1 and 1 0 1 vertically.

The programs for A207164, there is no canonical definition to state claims against.
-/

/-! ## A207164.P8910562133870856099

`A207169((n+1)²+n²)`
-/

namespace A207164.P8910562133870856099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207169 ((n + 1) ^ 2 + n ^ 2)

end

end A207164.P8910562133870856099

/-! ## A207164.P4648232904848842214

`record[A207169(A003602((n+1)²))]`
-/

namespace A207164.P4648232904848842214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207169 (A003602 ((n + 1) ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A207164.P4648232904848842214

/-! ## A207164.P15985735787726801324

`record[A003982(n)*A207169(n+1)]`
-/

namespace A207164.P15985735787726801324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A207169 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A207164.P15985735787726801324

/-! ## A207164.P1142064860118174033

`record[gcd(A049581(n), A207169(n+1))]`
-/

namespace A207164.P1142064860118174033
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A049581 n) (A207169 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A207164.P1142064860118174033

/-! ## A207164.P211009783857315038

`A207169(A001844(n))+A011741(n)`
-/

namespace A207164.P211009783857315038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207169 (A001844 n).toNat + A011741 n

end

end A207164.P211009783857315038

/-!
# A207165: Number of n X 4 0..1 arrays avoiding 0 0 0 and 1 0 1 horizontally and 0 0 1 and 1 0 1 vertically.

The programs for A207165, the canonical program `A207165.P13083579432290033482` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A207165 has offset 1).

The definition of A207165 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A207165.P6870438958998798575

`9*((n+1)^3+n)`
-/

namespace A207165.P6870438958998798575
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 * ((n + 1) ^ 3 + n)

end

end A207165.P6870438958998798575

namespace A207165

/-- `9*((n+1)^3+n)` -/
def P6870438958998798575.Spec : Prop :=
  ∀ n, (P6870438958998798575.a n : ℤ) = A207165 (n + 1)

theorem P6870438958998798575.correct : P6870438958998798575.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A207165, Nat.add_sub_cancel, A207165.P6870438958998798575.a, A207165.P13083579432290033482.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A207165, Nat.add_sub_cancel, A207165.P6870438958998798575.a, A207165.P13083579432290033482.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A207165

/-! ## A207165.P13156493549408419787

`((n+1)^3+n)/tan(acot(9))`
-/

namespace A207165.P13156493549408419787
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 3 + n : ℝ) / Real.tan (SequenceMachineLib.acot (9 : ℝ))

end

end A207165.P13156493549408419787

namespace A207165

/-- `((n+1)^3+n)/tan(acot(9))` -/
def P13156493549408419787.Spec : Prop :=
  ∀ n, P13156493549408419787.a n = (A207165 (n + 1) : ℝ)

end A207165

/-! ## A207165.P12153549926867923528

`9*lcm(n+1, (n+1)²+1)-9`
-/

namespace A207165.P12153549926867923528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (9 * Nat.lcm (n + 1) ((n + 1) ^ 2 + 1) : ℤ) - 9

end

end A207165.P12153549926867923528

namespace A207165

/-- `9*lcm(n+1, (n+1)²+1)-9` -/
def P12153549926867923528.Spec : Prop :=
  ∀ n, P12153549926867923528.a n = A207165 (n + 1)

end A207165

/-! ## A207165.P11783257153995804887

`lcm(3, 9*((n+1)*(n+1)²+n))`
-/

namespace A207165.P11783257153995804887
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 3 (9 * ((n + 1) * (n + 1) ^ 2 + n))

end

end A207165.P11783257153995804887

namespace A207165

/-- `lcm(3, 9*((n+1)*(n+1)²+n))` -/
def P11783257153995804887.Spec : Prop :=
  ∀ n, (P11783257153995804887.a n : ℤ) = A207165 (n + 1)

end A207165

/-! ## A207165.P15330736275917747592

`or(1, 9*((n+1)*(n+1)²+n))`
-/

namespace A207165.P15330736275917747592
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (9 * ((n + 1) * (n + 1) ^ 2 + n))

end

end A207165.P15330736275917747592

namespace A207165

/-- `or(1, 9*((n+1)*(n+1)²+n))` -/
def P15330736275917747592.Spec : Prop :=
  ∀ n, (P15330736275917747592.a n : ℤ) = A207165 (n + 1)

end A207165

/-! ## A207165.P13083579432290033482

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=9, a(1)=81, a(2)=261, a(3)=603`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A207165

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P13083579432290033482.Spec : Prop :=
  ∀ n, P13083579432290033482.a n = A207165 (n + 1)

theorem P13083579432290033482.correct : P13083579432290033482.Spec := by
  intro n
  simp only [A207165, Nat.add_sub_cancel]

end A207165

/-! ## A207165.P18271161645981806240

`9*A034262(n+1)-9`
-/

namespace A207165.P18271161645981806240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A034262 (n + 1) - 9

end

end A207165.P18271161645981806240

namespace A207165

/-- `9*A034262(n+1)-9` -/
def P18271161645981806240.Spec : Prop :=
  ∀ n, P18271161645981806240.a n = A207165 (n + 1)

end A207165

/-! ## A207165.P2315511799453939115

`2*9*A006003(n+1)-9`
-/

namespace A207165.P2315511799453939115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (9 * A006003 (n + 1)) - 9

end

end A207165.P2315511799453939115

namespace A207165

/-- `2*9*A006003(n+1)-9` -/
def P2315511799453939115.Spec : Prop :=
  ∀ n, P2315511799453939115.a n = A207165 (n + 1)

end A207165

/-! ## A207165.P8975054822813328759

`A244728(n+1)+A008591(n)`
-/

namespace A207165.P8975054822813328759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244728 (n + 1) + A008591 n

end

end A207165.P8975054822813328759

namespace A207165

/-- `A244728(n+1)+A008591(n)` -/
def P8975054822813328759.Spec : Prop :=
  ∀ n, P8975054822813328759.a n = A207165 (n + 1)

end A207165

/-! ## A207165.P7242317944945883664

`A008591(n)+(n+1)²*A008591(n+1)`
-/

namespace A207165.P7242317944945883664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008591 n + ((n + 1) ^ 2 : ℤ) * A008591 (n + 1)

end

end A207165.P7242317944945883664

namespace A207165

/-- `A008591(n)+(n+1)²*A008591(n+1)` -/
def P7242317944945883664.Spec : Prop :=
  ∀ n, P7242317944945883664.a n = A207165 (n + 1)

end A207165

/-! ## A207165.P4197142416290032944

`9*n+A008585(n+1)*A033428(n+1)`
-/

namespace A207165.P4197142416290032944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (9 * n : ℤ) + A008585 (n + 1) * A033428 (n + 1)

end

end A207165.P4197142416290032944

namespace A207165

/-- `9*n+A008585(n+1)*A033428(n+1)` -/
def P4197142416290032944.Spec : Prop :=
  ∀ n, P4197142416290032944.a n = A207165 (n + 1)

end A207165

/-! ## A207165.P10002377940777316351

`A168419(2*n+1)+(n+1)²*A168419(2*(n+1))`
-/

namespace A207165.P10002377940777316351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168419 (2 * n + 1) + ((n + 1) ^ 2 : ℤ) * A168419 (2 * (n + 1))

end

end A207165.P10002377940777316351

namespace A207165

/-- `A168419(2*n+1)+(n+1)²*A168419(2*(n+1))` -/
def P10002377940777316351.Spec : Prop :=
  ∀ n, P10002377940777316351.a n = A207165 (n + 1)

end A207165

/-!
# A207166: Number of n X 5 0..1 arrays avoiding 0 0 0 and 1 0 1 horizontally and 0 0 1 and 1 0 1 vertically.

The programs for A207166, the canonical program `A207166.P12479538159444471706` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A207166 has offset 1).

The definition of A207166 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A207166.P12479538159444471706

`13*(∑[n+1]²+(n+1)*2*n)`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A207166

/-- `13*(∑[n+1]²+(n+1)*2*n)` -/
def P12479538159444471706.Spec : Prop :=
  ∀ n, (P12479538159444471706.a n : ℤ) = A207166 (n + 1)

theorem P12479538159444471706.correct : P12479538159444471706.Spec := by
  intro n
  simp only [A207166, Nat.add_sub_cancel]

end A207166

/-! ## A207166.P3744090723237496232

`A207169(∑[n+5]+6)`
-/

namespace A207166.P3744090723237496232
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207169 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A207166.P3744090723237496232

namespace A207166

/-- `A207169(∑[n+5]+6)` -/
def P3744090723237496232.Spec : Prop :=
  ∀ n, P3744090723237496232.a n = A207166 (n + 1)

end A207166

/-! ## A207166.P11697179829931631377

`and(-3, A207169(A046691(n+3)))`
-/

namespace A207166.P11697179829931631377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-3) (A207169 (A046691 (n + 3)).toNat)

end

end A207166.P11697179829931631377

namespace A207166

/-- `and(-3, A207169(A046691(n+3)))` -/
def P11697179829931631377.Spec : Prop :=
  ∀ n, P11697179829931631377.a n = A207166 (n + 1)

end A207166

/-! ## A207166.P9602815059543270911

`lcm(A033999(n), A207169(A046691(n+3)))`
-/

namespace A207166.P9602815059543270911
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A207169 (A046691 (n + 3)).toNat)

end

end A207166.P9602815059543270911

namespace A207166

/-- `lcm(A033999(n), A207169(A046691(n+3)))` -/
def P9602815059543270911.Spec : Prop :=
  ∀ n, (P9602815059543270911.a n : ℤ) = A207166 (n + 1)

end A207166

/-! ## A207166.P9421360955099847290

`A207169(A046691(n+3))%A100418(n+1)`
-/

namespace A207166.P9421360955099847290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A207169 (A046691 (n + 3)).toNat) (A100418 (n + 1))

end

end A207166.P9421360955099847290

namespace A207166

/-- `A207169(A046691(n+3))%A100418(n+1)` -/
def P9421360955099847290.Spec : Prop :=
  ∀ n, P9421360955099847290.a n = A207166 (n + 1)

end A207166

/-! ## A207166.P18167530845621328912

`A207169(Δ[A023545(n+1)])%A207121(n+1)`
-/

namespace A207166.P18167530845621328912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A207169 (f1 (n + 1) - f1 n).toNat) (A207121 (n + 1))

end

end A207166.P18167530845621328912

namespace A207166

/-- `A207169(Δ[A023545(n+1)])%A207121(n+1)` -/
def P18167530845621328912.Spec : Prop :=
  ∀ n, P18167530845621328912.a n = A207166 (n + 1)

end A207166

/-!
# A207167: Number of n X 6 0..1 arrays avoiding 0 0 0 and 1 0 1 horizontally and 0 0 1 and 1 0 1 vertically.

The programs for A207167, the canonical program `A207167.P5271499395511050161` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A207167 has offset 1).

The definition of A207167 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A207167.P5271499395511050161

`19/4*(n+1)^4+95/2*(n+1)^3-57/4*(n+1)²-19*(n+1)`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A207167

/-- `19/4*(n+1)^4+95/2*(n+1)^3-57/4*(n+1)²-19*(n+1)` -/
def P5271499395511050161.Spec : Prop :=
  ∀ n, P5271499395511050161.a n = (A207167 (n + 1) : ℚ)

end A207167

/-! ## A207167.P176114999111687110

`A207169(A052905(n+3))`
-/

namespace A207167.P176114999111687110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207169 (A052905 (n + 3)).toNat

end

end A207167.P176114999111687110

namespace A207167

/-- `A207169(A052905(n+3))` -/
def P176114999111687110.Spec : Prop :=
  ∀ n, P176114999111687110.a n = A207167 (n + 1)

end A207167

/-! ## A207167.P7783458135665068295

`A207169(A055999(n+3)+1)`
-/

namespace A207167.P7783458135665068295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207169 (A055999 (n + 3) + 1).toNat

end

end A207167.P7783458135665068295

namespace A207167

/-- `A207169(A055999(n+3)+1)` -/
def P7783458135665068295.Spec : Prop :=
  ∀ n, P7783458135665068295.a n = A207167 (n + 1)

end A207167

/-! ## A207167.P14985134298598108869

`A207169(A056000(n+2)+5)`
-/

namespace A207167.P14985134298598108869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207169 (A056000 (n + 2) + 5).toNat

end

end A207167.P14985134298598108869

namespace A207167

/-- `A207169(A056000(n+2)+5)` -/
def P14985134298598108869.Spec : Prop :=
  ∀ n, P14985134298598108869.a n = A207167 (n + 1)

end A207167

/-! ## A207167.P5351514569101885836

`A207169(A000124(n+6)-6)`
-/

namespace A207167.P5351514569101885836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207169 (A000124 (n + 6) - 6).toNat

end

end A207167.P5351514569101885836

namespace A207167

/-- `A207169(A000124(n+6)-6)` -/
def P5351514569101885836.Spec : Prop :=
  ∀ n, P5351514569101885836.a n = A207167 (n + 1)

end A207167

/-!
# A207168: Number of n X 7 0..1 arrays avoiding 0 0 0 and 1 0 1 horizontally and 0 0 1 and 1 0 1 vertically.

The programs for A207168, the canonical program `A207168.P5864783168302044448` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A207168 has offset 1).

The definition of A207168 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A207168.P5864783168302044448

`35*(n+1)^4+42*(n+1)^3+7*(n+1)²-84*(n+1)+28`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A207168

/-- `35*(n+1)^4+42*(n+1)^3+7*(n+1)²-84*(n+1)+28` -/
def P5864783168302044448.Spec : Prop :=
  ∀ n, P5864783168302044448.a n = A207168 (n + 1)

theorem P5864783168302044448.correct : P5864783168302044448.Spec := by
  intro n
  simp only [A207168, Nat.add_sub_cancel]

end A207168

/-! ## A207168.P12001022986429619423

`A207169(A055999(n+4))`
-/

namespace A207168.P12001022986429619423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207169 (A055999 (n + 4)).toNat

end

end A207168.P12001022986429619423

namespace A207168

/-- `A207169(A055999(n+4))` -/
def P12001022986429619423.Spec : Prop :=
  ∀ n, P12001022986429619423.a n = A207168 (n + 1)

end A207168

/-! ## A207168.P9341935193658007618

`A207169(A034856(n+6)-4)`
-/

namespace A207168.P9341935193658007618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207169 (A034856 (n + 6) - 4).toNat

end

end A207168.P9341935193658007618

namespace A207168

/-- `A207169(A034856(n+6)-4)` -/
def P9341935193658007618.Spec : Prop :=
  ∀ n, P9341935193658007618.a n = A207168 (n + 1)

end A207168

/-! ## A207168.P3868044573013260344

`A207169(A000124(n+7)-7)`
-/

namespace A207168.P3868044573013260344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207169 (A000124 (n + 7) - 7).toNat

end

end A207168.P3868044573013260344

namespace A207168

/-- `A207169(A000124(n+7)-7)` -/
def P3868044573013260344.Spec : Prop :=
  ∀ n, P3868044573013260344.a n = A207168 (n + 1)

end A207168

/-! ## A207168.P2664257383672264247

`A207169(A000217(n+6)+n+1)`
-/

namespace A207168.P2664257383672264247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207169 (A000217 (n + 6) + (n + 1 : ℤ)).toNat

end

end A207168.P2664257383672264247

namespace A207168

/-- `A207169(A000217(n+6)+n+1)` -/
def P2664257383672264247.Spec : Prop :=
  ∀ n, P2664257383672264247.a n = A207168 (n + 1)

end A207168

/-!
# A207169: T(n,k)=Number of nXk 0..1 arrays avoiding 0 0 0 and 1 0 1 horizontally and 0 0 1 and 1 0 1 vertically.

The programs for A207169, there is no canonical definition to state claims against.
-/

/-! ## A207169.P10223735689804421010

`A207024(n+1)+A184955(n)%3`
-/

namespace A207169.P10223735689804421010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207024 (n + 1) + Int.tmod (A184955 n) 3

end

end A207169.P10223735689804421010

/-! ## A207169.P15426839799334106328

`A207024(n+1)+A055641(A005246(n))`
-/

namespace A207169.P15426839799334106328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207024 (n + 1) + A055641 (A005246 n).toNat

end

end A207169.P15426839799334106328

/-! ## A207169.P16627233313023234559

`A207024(n+1)+A102683(A001629(n))`
-/

namespace A207169.P16627233313023234559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207024 (n + 1) + A102683 (A001629 n).toNat

end

end A207169.P16627233313023234559

/-! ## A207169.P3556848067631241325

`A207024(n+1)+A102683(A030239(n))`
-/

namespace A207169.P3556848067631241325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207024 (n + 1) + A102683 (A030239 n).toNat

end

end A207169.P3556848067631241325

/-! ## A207169.P17557509455957794254

`A207024(n+1)+A101637(A046630(n))`
-/

namespace A207169.P17557509455957794254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207024 (n + 1) + A101637 (A046630 n).toNat

end

end A207169.P17557509455957794254

/-!
# A207170: Number of 2 X n 0..1 arrays avoiding 0 0 0 and 1 0 1 horizontally and 0 0 1 and 1 0 1 vertically.

The programs for A207170, the canonical program `A207170.P18342951190791344645` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A207170 has offset 1).

The definition of A207170 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 299 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A207170.P18342951190791344645

`∑[a(n-1)+a(n-3)]²` with `a(0)=2, a(1)=2, a(2)=2, a(3)=3, a(4)=4`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A207170

/-- `∑[a(n-1)+a(n-3)]²` -/
def P18342951190791344645.Spec : Prop :=
  ∀ n, (P18342951190791344645.a n : ℤ) = A207170 (n + 1)

theorem P18342951190791344645.correct : P18342951190791344645.Spec := by
  intro n
  simp only [A207170, Nat.add_sub_cancel]

end A207170

/-! ## A207170.P6521229310725427396

`a(n-1)+a(n-2)+3*a(n-3)+a(n-4)-a(n-5)-a(n-6)` with `a(0)=4, a(1)=16, a(2)=36, a(3)=81, a(4)=169, a(5)=361, a(6)=784`
-/

namespace A207170.P6521229310725427396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4, 16, 36, 81, 169, 361, 784] fun n a =>
  a (n - 1) + a (n - 2) + 3 * a (n - 3) + a (n - 4) - a (n - 5) - a (n - 6)

end

end A207170.P6521229310725427396

namespace A207170

/-- `a(n-1)+a(n-2)+3*a(n-3)+a(n-4)-a(n-5)-a(n-6)` -/
def P6521229310725427396.Spec : Prop :=
  ∀ n, P6521229310725427396.a n = A207170 (n + 1)

end A207170

/-! ## A207170.P5192619162589337940

`(1-A128424(n+3))²`
-/

namespace A207170.P5192619162589337940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A128424 (n + 3)) ^ 2

end

end A207170.P5192619162589337940

namespace A207170

/-- `(1-A128424(n+3))²` -/
def P5192619162589337940.Spec : Prop :=
  ∀ n, P5192619162589337940.a n = A207170 (n + 1)

end A207170

/-! ## A207170.P15255860167436162057

`Δ[A257442(n+2)/3]²`
-/

namespace A207170.P15255860167436162057
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A257442 (n + 2) : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A207170.P15255860167436162057

namespace A207170

/-- `Δ[A257442(n+2)/3]²` -/
def P15255860167436162057.Spec : Prop :=
  ∀ n, P15255860167436162057.a n = (A207170 (n + 1) : ℚ)

end A207170

/-! ## A207170.P12877356613645018981

`(A000930(n+4)-floor(acot(n)))²`
-/

namespace A207170.P12877356613645018981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000930 (n + 4) - ⌊SequenceMachineLib.acot (n : ℝ)⌋) ^ 2

end

end A207170.P12877356613645018981

namespace A207170

/-- `(A000930(n+4)-floor(acot(n)))²` -/
def P12877356613645018981.Spec : Prop :=
  ∀ n, P12877356613645018981.a n = A207170 (n + 1)

end A207170

/-! ## A207170.P12387737539742946356

`A233247(A009005(n+1))`
-/

namespace A207170.P12387737539742946356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233247 (A009005 (n + 1)).toNat

end

end A207170.P12387737539742946356

namespace A207170

/-- `A233247(A009005(n+1))` -/
def P12387737539742946356.Spec : Prop :=
  ∀ n, P12387737539742946356.a n = A207170 (n + 1)

end A207170

/-! ## A207170.P6873171177854169756

`A233247(A103517(n)+2-n)`
-/

namespace A207170.P6873171177854169756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233247 (A103517 n + (2 - (n : ℤ))).toNat

end

end A207170.P6873171177854169756

namespace A207170

/-- `A233247(A103517(n)+2-n)` -/
def P6873171177854169756.Spec : Prop :=
  ∀ n, P6873171177854169756.a n = A207170 (n + 1)

end A207170

/-! ## A207170.P2863889729946493419

`A233247(2-(n-A103517(n)))`
-/

namespace A207170.P2863889729946493419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233247 (2 - ((n : ℤ) - A103517 n)).toNat

end

end A207170.P2863889729946493419

namespace A207170

/-- `A233247(2-(n-A103517(n)))` -/
def P2863889729946493419.Spec : Prop :=
  ∀ n, P2863889729946493419.a n = A207170 (n + 1)

end A207170

/-! ## A207170.P9081073335542735977

`∑[A068921(A233583(n+1))]²`
-/

namespace A207170.P9081073335542735977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068921 (A233583 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A207170.P9081073335542735977

namespace A207170

/-- `∑[A068921(A233583(n+1))]²` -/
def P9081073335542735977.Spec : Prop :=
  ∀ n, P9081073335542735977.a n = A207170 (n + 1)

end A207170

/-! ## A207170.P10745016427155300900

`∑[A068921(A289207(n)+2)]²`
-/

namespace A207170.P10745016427155300900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068921 (A289207 n + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A207170.P10745016427155300900

namespace A207170

/-- `∑[A068921(A289207(n)+2)]²` -/
def P10745016427155300900.Spec : Prop :=
  ∀ n, P10745016427155300900.a n = A207170 (n + 1)

end A207170

/-! ## A207170.P5603137016299243388

`Δ[A020721(n)-A057427(n)]²`
-/

namespace A207170.P5603137016299243388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020721 n - A057427 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A207170.P5603137016299243388

namespace A207170

/-- `Δ[A020721(n)-A057427(n)]²` -/
def P5603137016299243388.Spec : Prop :=
  ∀ n, P5603137016299243388.a n = A207170 (n + 1)

end A207170

/-! ## A207170.P3905549147455148359

`(A003410(n)+A000930(n+2))²`
-/

namespace A207170.P3905549147455148359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A003410 n + A000930 (n + 2)) ^ 2

end

end A207170.P3905549147455148359

namespace A207170

/-- `(A003410(n)+A000930(n+2))²` -/
def P3905549147455148359.Spec : Prop :=
  ∀ n, P3905549147455148359.a n = A207170 (n + 1)

end A207170

/-! ## A207170.P17521953197305833648

`(A036453(n+1)+∑[A000930(n+1)])²`
-/

namespace A207170.P17521953197305833648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000930 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A036453 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A207170.P17521953197305833648

namespace A207170

/-- `(A036453(n+1)+∑[A000930(n+1)])²` -/
def P17521953197305833648.Spec : Prop :=
  ∀ n, P17521953197305833648.a n = A207170 (n + 1)

end A207170

/-! ## A207170.P2784078195809357825

`Δ[A091225(2*(n+1))+A020721(n)]²`
-/

namespace A207170.P2784078195809357825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091225 (2 * (n + 1)) + A020721 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A207170.P2784078195809357825

namespace A207170

/-- `Δ[A091225(2*(n+1))+A020721(n)]²` -/
def P2784078195809357825.Spec : Prop :=
  ∀ n, P2784078195809357825.a n = A207170 (n + 1)

end A207170

/-! ## A207170.P12434749288412252283

`A208496(n+1)/A209220(n+1)*A208496(n+1)`
-/

namespace A207170.P12434749288412252283
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208496 (n + 1) : ℚ) / (A209220 (n + 1) : ℚ) * (A208496 (n + 1) : ℚ)

end

end A207170.P12434749288412252283

namespace A207170

/-- `A208496(n+1)/A209220(n+1)*A208496(n+1)` -/
def P12434749288412252283.Spec : Prop :=
  ∀ n, P12434749288412252283.a n = (A207170 (n + 1) : ℚ)

end A207170

/-! ## A207170.P7631128070628770702

`A208496(n+1)/A209221(n+1)*A208497(n+1)`
-/

namespace A207170.P7631128070628770702
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208496 (n + 1) : ℚ) / (A209221 (n + 1) : ℚ) * (A208497 (n + 1) : ℚ)

end

end A207170.P7631128070628770702

namespace A207170

/-- `A208496(n+1)/A209221(n+1)*A208497(n+1)` -/
def P7631128070628770702.Spec : Prop :=
  ∀ n, P7631128070628770702.a n = (A207170 (n + 1) : ℚ)

end A207170

/-! ## A207170.P11455642178118346563

`A208497(n+1)/A209222(n+1)*A208497(n+1)`
-/

namespace A207170.P11455642178118346563
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208497 (n + 1) : ℚ) / (A209222 (n + 1) : ℚ) * (A208497 (n + 1) : ℚ)

end

end A207170.P11455642178118346563

namespace A207170

/-- `A208497(n+1)/A209222(n+1)*A208497(n+1)` -/
def P11455642178118346563.Spec : Prop :=
  ∀ n, P11455642178118346563.a n = (A207170 (n + 1) : ℚ)

end A207170

/-! ## A207170.P10263116598108261459

`(A208496(n+1)/A209221(n+1))²*A209222(n+1)`
-/

namespace A207170.P10263116598108261459
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A208496 (n + 1) : ℚ) / (A209221 (n + 1) : ℚ)) ^ 2 * (A209222 (n + 1) : ℚ)

end

end A207170.P10263116598108261459

namespace A207170

/-- `(A208496(n+1)/A209221(n+1))²*A209222(n+1)` -/
def P10263116598108261459.Spec : Prop :=
  ∀ n, P10263116598108261459.a n = (A207170 (n + 1) : ℚ)

end A207170

/-! ## A207170.P4347579201784513254

`A207171(n+1)/A208014(n+1)*A207171(n+1)`
-/

namespace A207170.P4347579201784513254
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A207171 (n + 1) : ℚ) / (A208014 (n + 1) : ℚ) * (A207171 (n + 1) : ℚ)

end

end A207170.P4347579201784513254

namespace A207170

/-- `A207171(n+1)/A208014(n+1)*A207171(n+1)` -/
def P4347579201784513254.Spec : Prop :=
  ∀ n, P4347579201784513254.a n = (A207170 (n + 1) : ℚ)

end A207170

/-!
# A207171: Number of 3 X n 0..1 arrays avoiding 0 0 0 and 1 0 1 horizontally and 0 0 1 and 1 0 1 vertically.

The programs for A207171, there is no canonical definition to state claims against.
-/

/-! ## A207171.P3671279805593224391

`sqrt(A207170(n+1))*sqrt(A208014(n+1))`
-/

namespace A207171.P3671279805593224391
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A207170 (n + 1) : ℝ) * Real.sqrt (A208014 (n + 1) : ℝ)

end

end A207171.P3671279805593224391

/-! ## A207171.P11448939072956319248

`sqrt(A207170(n+1)*A208014(n+1))`
-/

namespace A207171.P11448939072956319248
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A207170 (n + 1) * A208014 (n + 1) : ℝ)

end

end A207171.P11448939072956319248

/-! ## A207171.P4094453396557924401

`A207169(∑[n+2]+4)`
-/

namespace A207171.P4094453396557924401
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207169 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A207171.P4094453396557924401

/-! ## A207171.P16502756773963831135

`A207169(A167614(n+1))%A275793(n)`
-/

namespace A207171.P16502756773963831135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A207169 (A167614 (n + 1)).toNat) (A275793 n)

end

end A207171.P16502756773963831135

/-! ## A207171.P2100557687565684272

`lcm(A033999(n), A207169(A167614(n+1)))`
-/

namespace A207171.P2100557687565684272
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A207169 (A167614 (n + 1)).toNat)

end

end A207171.P2100557687565684272

/-! ## A207171.P8638045654639529897

`or(A000038(n), A207169(A167614(n+1)))`
-/

namespace A207171.P8638045654639529897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000038 n) (A207169 (A167614 (n + 1)).toNat)

end

end A207171.P8638045654639529897

/-!
# A207172: Number of 4 X n 0..1 arrays avoiding 0 0 0 and 1 0 1 horizontally and 0 0 1 and 1 0 1 vertically.

The programs for A207172, there is no canonical definition to state claims against.
-/

/-! ## A207172.P12439089794122139027

`A207170(n+1)/A207171(n+1)*A208015(n+1)`
-/

namespace A207172.P12439089794122139027
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A207170 (n + 1) : ℚ) / (A207171 (n + 1) : ℚ) * (A208015 (n + 1) : ℚ)

end

end A207172.P12439089794122139027

/-! ## A207172.P2053288468169589242

`sqrt(A207170(n+1))*sqrt(A208016(n+1))`
-/

namespace A207172.P2053288468169589242
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A207170 (n + 1) : ℝ) * Real.sqrt (A208016 (n + 1) : ℝ)

end

end A207172.P2053288468169589242

/-! ## A207172.P10845073768940368519

`sqrt(A207170(n+1)*A208016(n+1))`
-/

namespace A207172.P10845073768940368519
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A207170 (n + 1) * A208016 (n + 1) : ℝ)

end

end A207172.P10845073768940368519

/-! ## A207172.P12884292697659514917

`A207169(∑[n+3]+7)`
-/

namespace A207172.P12884292697659514917
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207169 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A207172.P12884292697659514917

/-! ## A207172.P9063396176662584991

`A207169(A055999(n)+10)%A254145(n)`
-/

namespace A207172.P9063396176662584991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A207169 (A055999 n + 10).toNat) (A254145 n)

end

end A207172.P9063396176662584991

/-! ## A207172.P10203815015259519194

`A207169(A167499(n+2)-1)%A207173(n+1)`
-/

namespace A207172.P10203815015259519194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A207169 (A167499 (n + 2) - 1).toNat) (A207173 (n + 1))

end

end A207172.P10203815015259519194

/-!
# A207173: Number of 5 X n 0..1 arrays avoiding 0 0 0 and 1 0 1 horizontally and 0 0 1 and 1 0 1 vertically.

The programs for A207173, there is no canonical definition to state claims against.
-/

/-! ## A207173.P7188310629650059296

`A207169(A167499(n+3))`
-/

namespace A207173.P7188310629650059296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207169 (A167499 (n + 3)).toNat

end

end A207173.P7188310629650059296

/-! ## A207173.P9938370328648998143

`A207169(A056000(n)+15)`
-/

namespace A207173.P9938370328648998143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207169 (A056000 n + 15).toNat

end

end A207173.P9938370328648998143

/-! ## A207173.P9967809134032398590

`A207169(A167614(n+3)+2)`
-/

namespace A207173.P9967809134032398590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207169 (A167614 (n + 3) + 2).toNat

end

end A207173.P9967809134032398590

/-! ## A207173.P3542514375941471601

`A207169(A000217(n+4)+5)`
-/

namespace A207173.P3542514375941471601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207169 (A000217 (n + 4) + 5).toNat

end

end A207173.P3542514375941471601

/-! ## A207173.P1996279030666487774

`A207169(A055999(n+1)+11)`
-/

namespace A207173.P1996279030666487774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207169 (A055999 (n + 1) + 11).toNat

end

end A207173.P1996279030666487774

/-! ## A207173.P18379886334858297723

`A207169(A160791(2*(n+5))-n)`
-/

namespace A207173.P18379886334858297723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207169 (A160791 (2 * (n + 5)) - (n : ℤ)).toNat

end

end A207173.P18379886334858297723

/-! ## A207173.P8533093548741791800

`A207169(A027379(n+4)+A024000(2*(n+2)))`
-/

namespace A207173.P8533093548741791800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207169 (A027379 (n + 4) + A024000 (2 * (n + 2))).toNat

end

end A207173.P8533093548741791800

/-!
# A207174: Number of 6 X n 0..1 arrays avoiding 0 0 0 and 1 0 1 horizontally and 0 0 1 and 1 0 1 vertically.

The programs for A207174, there is no canonical definition to state claims against.
-/

/-! ## A207174.P12602945484079060118

`A207169(A166136(n+4))`
-/

namespace A207174.P12602945484079060118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207169 (A166136 (n + 4)).toNat

end

end A207174.P12602945484079060118

/-! ## A207174.P16009718990021938107

`A207169(A167499(n+4)+1)`
-/

namespace A207174.P16009718990021938107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207169 (A167499 (n + 4) + 1).toNat

end

end A207174.P16009718990021938107

/-! ## A207174.P5345133634375393176

`A207169(A000096(n+4)+7)`
-/

namespace A207174.P5345133634375393176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207169 (A000096 (n + 4) + 7).toNat

end

end A207174.P5345133634375393176

/-! ## A207174.P3268835808187824650

`A207169(A000217(n+5)+6)`
-/

namespace A207174.P3268835808187824650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207169 (A000217 (n + 5) + 6).toNat

end

end A207174.P3268835808187824650

/-! ## A207174.P1998067765888554917

`A207169(A175631(n+7)+7)`
-/

namespace A207174.P1998067765888554917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207169 (A175631 (n + 7) + 7).toNat

end

end A207174.P1998067765888554917

/-! ## A207174.P17100409277889951

`A207169(A056000(n+1)+16)`
-/

namespace A207174.P17100409277889951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207169 (A056000 (n + 1) + 16).toNat

end

end A207174.P17100409277889951

/-! ## A207174.P14457606401467600975

`A207169(A167614(n+1)+A008486(n+5))`
-/

namespace A207174.P14457606401467600975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207169 (A167614 (n + 1) + A008486 (n + 5)).toNat

end

end A207174.P14457606401467600975

/-!
# A207175: Number of 7 X n 0..1 arrays avoiding 0 0 0 and 1 0 1 horizontally and 0 0 1 and 1 0 1 vertically.

The programs for A207175, there is no canonical definition to state claims against.
-/

/-! ## A207175.P753577840384063500

`A207169(A056119(n)+28)`
-/

namespace A207175.P753577840384063500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207169 (A056119 n + 28).toNat

end

end A207175.P753577840384063500

/-! ## A207175.P1668931207267947622

`A207169(A167499(n+5)+2)`
-/

namespace A207175.P1668931207267947622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207169 (A167499 (n + 5) + 2).toNat

end

end A207175.P1668931207267947622

/-! ## A207175.P9300752687210174454

`A207169(A167614(n+5)+4)`
-/

namespace A207175.P9300752687210174454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207169 (A167614 (n + 5) + 4).toNat

end

end A207175.P9300752687210174454

/-! ## A207175.P7278738153431414298

`A207169(A000124(n+6)+6)`
-/

namespace A207175.P7278738153431414298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207169 (A000124 (n + 6) + 6).toNat

end

end A207175.P7278738153431414298

/-! ## A207175.P16872529306918799274

`A207169(A000217(n+6)+7)`
-/

namespace A207175.P16872529306918799274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207169 (A000217 (n + 6) + 7).toNat

end

end A207175.P16872529306918799274

/-!
# A207176: Number of n X n 0..1 arrays avoiding 0 0 0 horizontally and 0 1 0 vertically.

The programs for A207176, there is no canonical definition to state claims against.
-/

/-! ## A207176.P14726052840070509564

`A207182(∑[4*n]+1)`
-/

namespace A207176.P14726052840070509564
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207182 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A207176.P14726052840070509564

/-! ## A207176.P17736186189542102162

`record[A003982(n)*A207182(n+1)]`
-/

namespace A207176.P17736186189542102162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A207182 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A207176.P17736186189542102162

/-! ## A207176.P14073248661090633878

`record[root(A207182(n+1), A331886(n))]`
-/

namespace A207176.P14073248661090633878
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A207182 (n + 1) : ℝ) ^ (1 / (A331886 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A207176.P14073248661090633878

/-! ## A207176.P5068600684602612529

`record[gcd(A037012(n), A207182(n+1))]`
-/

namespace A207176.P5068600684602612529
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A037012 n) (A207182 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A207176.P5068600684602612529

/-! ## A207176.P8110646754987545005

`record[A077606(n+1)*A207182(n+1)]`
-/

namespace A207176.P8110646754987545005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077606 (n + 1) * A207182 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A207176.P8110646754987545005

/-!
# A207177: Number of n X 3 0..1 arrays avoiding 0 0 0 horizontally and 0 1 0 vertically.

The programs for A207177, there is no canonical definition to state claims against.
-/

/-! ## A207177.P12038610123697563685

`A207182(∑[n+3]+1)`
-/

namespace A207177.P12038610123697563685
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207182 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A207177.P12038610123697563685

/-! ## A207177.P13617429704428553048

`or(1, A207182(A034856(n+2)))`
-/

namespace A207177.P13617429704428553048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A207182 (A034856 (n + 2)).toNat)

end

end A207177.P13617429704428553048

/-! ## A207177.P5404255657576878079

`A207182(A034856(n+2))+A102683(2*(n+2))`
-/

namespace A207177.P5404255657576878079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207182 (A034856 (n + 2)).toNat + A102683 (2 * (n + 2))

end

end A207177.P5404255657576878079

/-! ## A207177.P13470912268485788103

`A207182(A034856(n+2))%A077330(n+2)`
-/

namespace A207177.P13470912268485788103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A207182 (A034856 (n + 2)).toNat) (A077330 (n + 2))

end

end A207177.P13470912268485788103

/-!
# A207178: Number of nX4 0..1 arrays avoiding 0 0 0 horizontally and 0 1 0 vertically.

The programs for A207178, there is no canonical definition to state claims against.
-/

/-! ## A207178.P13917634136220639580

`A207182(A141214(n+1))`
-/

namespace A207178.P13917634136220639580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207182 (A141214 (n + 1)).toNat

end

end A207178.P13917634136220639580

/-! ## A207178.P17637599270666504309

`A207182(A056000(n)+7)`
-/

namespace A207178.P17637599270666504309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207182 (A056000 n + 7).toNat

end

end A207178.P17637599270666504309

/-! ## A207178.P7869824325418632099

`A207182(A052905(n+1)+2)`
-/

namespace A207178.P7869824325418632099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207182 (A052905 (n + 1) + 2).toNat

end

end A207178.P7869824325418632099

/-! ## A207178.P976775711334951306

`A207182(A034856(n+3)-1)`
-/

namespace A207178.P976775711334951306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207182 (A034856 (n + 3) - 1).toNat

end

end A207178.P976775711334951306

/-! ## A207178.P382656387065578356

`A207182(A167614(n+3)-6)`
-/

namespace A207178.P382656387065578356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207182 (A167614 (n + 3) - 6).toNat

end

end A207178.P382656387065578356

/-!
# A207179: Number of nX5 0..1 arrays avoiding 0 0 0 horizontally and 0 1 0 vertically.

The programs for A207179, there is no canonical definition to state claims against.
-/

/-! ## A207179.P1560557779861401188

`A207182(Δ[A264443(n)])`
-/

namespace A207179.P1560557779861401188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207182 (f1 (n + 1) - f1 n).toNat

end

end A207179.P1560557779861401188

/-! ## A207179.P350076032259828219

`A207182(A056115(n)+11)`
-/

namespace A207179.P350076032259828219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207182 (A056115 n + 11).toNat

end

end A207179.P350076032259828219

/-! ## A207179.P8604741037247251254

`A207182(eq[4, A193592(n)])`
-/

namespace A207179.P8604741037247251254
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207182 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A207179.P8604741037247251254

/-! ## A207179.P6814831663448367028

`A207182(Δ[A023545(n+1)])`
-/

namespace A207179.P6814831663448367028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207182 (f1 (n + 1) - f1 n).toNat

end

end A207179.P6814831663448367028

/-! ## A207179.P15989624246798318416

`A207182(A052905(n+2)+1)`
-/

namespace A207179.P15989624246798318416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207182 (A052905 (n + 2) + 1).toNat

end

end A207179.P15989624246798318416

/-!
# A207180: Number of nX6 0..1 arrays avoiding 0 0 0 horizontally and 0 1 0 vertically.

The programs for A207180, there is no canonical definition to state claims against.
-/

/-! ## A207180.P11977602399006239965

`A207182(A052905(n+3))`
-/

namespace A207180.P11977602399006239965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207182 (A052905 (n + 3)).toNat

end

end A207180.P11977602399006239965

/-! ## A207180.P15644369096025870534

`A207182(eq[3, A219347(n)])`
-/

namespace A207180.P15644369096025870534
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207182 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A207180.P15644369096025870534

/-! ## A207180.P863021850767955358

`A207182(eq[5, A193592(n)])`
-/

namespace A207180.P863021850767955358
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207182 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A207180.P863021850767955358

/-! ## A207180.P15093032684847753432

`A207182(eq[8, A258709(n)])`
-/

namespace A207180.P15093032684847753432
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258709 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207182 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A207180.P15093032684847753432

/-! ## A207180.P17995503108041774061

`A207182(eq[8, A185782(n+1)])`
-/

namespace A207180.P17995503108041774061
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207182 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A207180.P17995503108041774061

/-!
# A207181: Number of nX7 0..1 arrays avoiding 0 0 0 horizontally and 0 1 0 vertically.

The programs for A207181, there is no canonical definition to state claims against.
-/

/-! ## A207181.P2853071419497313770

`A207182(eq[4, A219347(n)])`
-/

namespace A207181.P2853071419497313770
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207182 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A207181.P2853071419497313770

/-! ## A207181.P10792247224483015315

`A207182(eq[6, A193592(n)])`
-/

namespace A207181.P10792247224483015315
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207182 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A207181.P10792247224483015315

/-! ## A207181.P18087105139526564966

`A207182(eq[6, A025581(n)]+1)`
-/

namespace A207181.P18087105139526564966
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207182 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A207181.P18087105139526564966

/-! ## A207181.P16084750259971438860

`A207182(eq[10, A185782(n+1)])`
-/

namespace A207181.P16084750259971438860
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207182 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A207181.P16084750259971438860

/-! ## A207181.P16350397343979202789

`A207182(eq[7, A200370(n+1)])`
-/

namespace A207181.P16350397343979202789
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207182 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A207181.P16350397343979202789

/-!
# A207182: T(n,k)=Number of nXk 0..1 arrays avoiding 0 0 0 horizontally and 0 1 0 vertically.

The programs for A207182, there is no canonical definition to state claims against.
-/

/-! ## A207182.P2289258951403850458

`A207088(n+1)+A025465(A276658(n))`
-/

namespace A207182.P2289258951403850458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207088 (n + 1) + A025465 (A276658 n).toNat

end

end A207182.P2289258951403850458

/-! ## A207182.P3596947144107386758

`A207088(n+1)+A186747(A156565(n))`
-/

namespace A207182.P3596947144107386758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207088 (n + 1) + A186747 (A156565 n).toNat

end

end A207182.P3596947144107386758

/-! ## A207182.P15700942154718950236

`A207088(n+1)+A186747(A156582(n))`
-/

namespace A207182.P15700942154718950236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207088 (n + 1) + A186747 (A156582 n).toNat

end

end A207182.P15700942154718950236

/-! ## A207182.P13512139078944325609

`A207088(n+1)-A178798(A100861(n))`
-/

namespace A207182.P13512139078944325609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207088 (n + 1) - A178798 (A100861 n).toNat

end

end A207182.P13512139078944325609

/-!
# A207183: Number of 4Xn 0..1 arrays avoiding 0 0 0 horizontally and 0 1 0 vertically.

The programs for A207183, there is no canonical definition to state claims against.
-/

/-! ## A207183.P10561462454226320226

`A207182(A141214(n)+7)`
-/

namespace A207183.P10561462454226320226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207182 (A141214 n + 7).toNat

end

end A207183.P10561462454226320226

/-! ## A207183.P15112165448778555094

`A207182(A052905(n)+9)`
-/

namespace A207183.P15112165448778555094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207182 (A052905 n + 9).toNat

end

end A207183.P15112165448778555094

/-! ## A207183.P10355936292771945650

`A207182(A055999(n)+10)`
-/

namespace A207183.P10355936292771945650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207182 (A055999 n + 10).toNat

end

end A207183.P10355936292771945650

/-! ## A207183.P15046131285000068459

`A207182(A167614(n+2)+1)`
-/

namespace A207183.P15046131285000068459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207182 (A167614 (n + 2) + 1).toNat

end

end A207183.P15046131285000068459

/-! ## A207183.P5413298741424389362

`A207182(A166136(n+2)-2)`
-/

namespace A207183.P5413298741424389362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207182 (A166136 (n + 2) - 2).toNat

end

end A207183.P5413298741424389362

/-!
# A207184: Number of 5Xn 0..1 arrays avoiding 0 0 0 horizontally and 0 1 0 vertically.

The programs for A207184, there is no canonical definition to state claims against.
-/

/-! ## A207184.P5509602229925799669

`A207182(A155212(n)+13)`
-/

namespace A207184.P5509602229925799669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207182 (A155212 n + 13).toNat

end

end A207184.P5509602229925799669

/-! ## A207184.P1625996176370186840

`A207182(A056000(n)+15)`
-/

namespace A207184.P1625996176370186840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207182 (A056000 n + 15).toNat

end

end A207184.P1625996176370186840

/-! ## A207184.P3296524373738806640

`A207182(A167614(n+3)+2)`
-/

namespace A207184.P3296524373738806640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207182 (A167614 (n + 3) + 2).toNat

end

end A207184.P3296524373738806640

/-! ## A207184.P10737700997699636995

`A207182(A034856(n+3)+7)`
-/

namespace A207184.P10737700997699636995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207182 (A034856 (n + 3) + 7).toNat

end

end A207184.P10737700997699636995

/-! ## A207184.P4002325007796266992

`A207182(A052905(n+1)+10)`
-/

namespace A207184.P4002325007796266992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207182 (A052905 (n + 1) + 10).toNat

end

end A207184.P4002325007796266992

/-!
# A207185: Number of 6Xn 0..1 arrays avoiding 0 0 0 horizontally and 0 1 0 vertically.

The programs for A207185, there is no canonical definition to state claims against.
-/

/-! ## A207185.P14481767800073083559

`A207182(A166136(n+4))`
-/

namespace A207185.P14481767800073083559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207182 (A166136 (n + 4)).toNat

end

end A207185.P14481767800073083559

/-! ## A207185.P5247149678914657699

`A207182(A056115(n)+21)`
-/

namespace A207185.P5247149678914657699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207182 (A056115 n + 21).toNat

end

end A207185.P5247149678914657699

/-! ## A207185.P17937920506195356863

`A207182(Δ[A264443(n)]+10)`
-/

namespace A207185.P17937920506195356863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207182 (f1 (n + 1) - f1 n + 10).toNat

end

end A207185.P17937920506195356863

/-! ## A207185.P9432099885052287963

`A207182(A052905(n+2)+11)`
-/

namespace A207185.P9432099885052287963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207182 (A052905 (n + 2) + 11).toNat

end

end A207185.P9432099885052287963

/-! ## A207185.P880229487235106174

`A207182(eq[7, A131818(n+1)])`
-/

namespace A207185.P880229487235106174
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207182 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A207185.P880229487235106174

/-!
# A207186: Number of 7Xn 0..1 arrays avoiding 0 0 0 horizontally and 0 1 0 vertically.

The programs for A207186, there is no canonical definition to state claims against.
-/

/-! ## A207186.P16833998693740370758

`A207182(A056119(n)+28)`
-/

namespace A207186.P16833998693740370758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207182 (A056119 n + 28).toNat

end

end A207186.P16833998693740370758

/-! ## A207186.P10640697388749539727

`A207182(eq[11, A066657(n)])`
-/

namespace A207186.P10640697388749539727
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207182 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A207186.P10640697388749539727

/-! ## A207186.P2967368508918357092

`A207182(A167499(n+5)+2)`
-/

namespace A207186.P2967368508918357092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207182 (A167499 (n + 5) + 2).toNat

end

end A207186.P2967368508918357092

/-! ## A207186.P9052590704462331140

`A207182(A052905(n+3)+12)`
-/

namespace A207186.P9052590704462331140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207182 (A052905 (n + 3) + 12).toNat

end

end A207186.P9052590704462331140

/-! ## A207186.P14066596615227961015

`A207182(eq[8, A131818(n+1)])`
-/

namespace A207186.P14066596615227961015
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207182 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A207186.P14066596615227961015

/-!
# A207187: Numbers matching polynomials y(k,x) that have x+1 as a factor; see Comments.

The programs for A207187, there is no canonical definition to state claims against.
-/

/-! ## A207187.P15786225641065191164

`or(A285530(A067982(n)), A285531(2*(n+1)))`
-/

namespace A207187.P15786225641065191164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A285530 (A067982 n).toNat) (A285531 (2 * (n + 1)))

end

end A207187.P15786225641065191164

/-! ## A207187.P15884949304593234750

`or(A065333(A309505(n+2)), A285531(2*(n+1)))`
-/

namespace A207187.P15884949304593234750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A065333 (A309505 (n + 2)).toNat) (A285531 (2 * (n + 1)))

end

end A207187.P15884949304593234750

/-! ## A207187.P6840721434575591086

`or(A131929(A002182(2*n+1)), A285531(2*(n+1)))`
-/

namespace A207187.P6840721434575591086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A131929 (A002182 (2 * n + 1)).toNat) (A285531 (2 * (n + 1)))

end

end A207187.P6840721434575591086

/-!
# A207188: Numbers matching polynomials y(k,x) that have x as a factor; see Comments.

The programs for A207188, there is no canonical definition to state claims against.
-/

/-! ## A207188.P3793469106677154610

`comp[∑[3*2^n]]+n+2`
-/

namespace A207188.P3793469106677154610
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * 2 ^ n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + (n + 2)

end

end A207188.P3793469106677154610

/-! ## A207188.P3896979059212231959

`∑[char[∑[A056874(n+1)]]+2]`
-/

namespace A207188.P3896979059212231959
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056874 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = (n : ℤ) then 1 else 0) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A207188.P3896979059212231959

/-! ## A207188.P8416962440212080173

`∑[A111145(A393026(3*n+2))]`
-/

namespace A207188.P8416962440212080173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111145 (A393026 (3 * n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A207188.P8416962440212080173

/-! ## A207188.P10700394909018062610

`∑[A328162(A368917(n+1)+A057335(3*n+1))]`
-/

namespace A207188.P10700394909018062610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328162 (A368917 (n + 1) + A057335 (3 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A207188.P10700394909018062610

/-! ## A207188.P17659771593701651340

`∑[A305388(A087759(n+1))+2]`
-/

namespace A207188.P17659771593701651340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305388 (A087759 (n + 1)).toNat + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A207188.P17659771593701651340

/-!
# A207189: Numbers matching polynomials y(k,x) that have x-1 as a factor; see Comments.

The programs for A207189, there is no canonical definition to state claims against.
-/

/-! ## A207189.P3870210487474444036

`A083058(A136318(n+2))`
-/

namespace A207189.P3870210487474444036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083058 (A136318 (n + 2)).toNat

end

end A207189.P3870210487474444036

/-! ## A207189.P6004912671359450940

`A140513(n+1)+∑[A059268(n)]`
-/

namespace A207189.P6004912671359450940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140513 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A207189.P6004912671359450940

/-! ## A207189.P13241132113729477069

`A288349(n+1)+A140513(n+1)`
-/

namespace A207189.P13241132113729477069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288349 (n + 1) + A140513 (n + 1)

end

end A207189.P13241132113729477069

/-! ## A207189.P3818692619825855761

`A288349(n+2)+A130328(n+1)`
-/

namespace A207189.P3818692619825855761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288349 (n + 2) + A130328 (n + 1)

end

end A207189.P3818692619825855761

/-! ## A207189.P16978412519855898482

`A271709(n+1)+∑[A130321(n+1)]`
-/

namespace A207189.P16978412519855898482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271709 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A207189.P16978412519855898482

/-! ## A207189.P13126580221558339251

`∑[A130321(n+1)]+A131816(n+1)+1`
-/

namespace A207189.P13126580221558339251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (A131816 (n + 1) + 1)

end

end A207189.P13126580221558339251

/-! ## A207189.P17274110266255454585

`A140513(n+1)+∑[A000079(A002262(n))]`
-/

namespace A207189.P17274110266255454585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A002262 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140513 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A207189.P17274110266255454585

/-! ## A207189.P10760496715116970535

`A140513(n+1)+∑[A013609(n)/A007318(n)]`
-/

namespace A207189.P10760496715116970535
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013609 n : ℚ) / (A007318 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A140513 (n + 1) : ℚ) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A207189.P10760496715116970535

/-! ## A207189.P12668313211280864518

`A173786(n+1)+A288349(n+1)+A173787(n+1)`
-/

namespace A207189.P12668313211280864518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173786 (n + 1) + (A288349 (n + 1) + A173787 (n + 1))

end

end A207189.P12668313211280864518

/-! ## A207189.P4791567117141275355

`A288349(n+1)+A018900(n+2)-A059268(n+1)`
-/

namespace A207189.P4791567117141275355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288349 (n + 1) + (A018900 (n + 2) - A059268 (n + 1))

end

end A207189.P4791567117141275355

/-!
# A207191: Numbers that match even polynomials among the monic polynomials over {-1,0,1}, ordered as at A206821.

The programs for A207191, there is no canonical definition to state claims against.
-/

/-! ## A207191.P1582745895464541000

`A109964(A207192(n+1))`
-/

namespace A207191.P1582745895464541000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109964 (A207192 (n + 1)).toNat

end

end A207191.P1582745895464541000

/-!
# A207192: Numbers that match odd polynomials among the monic polynomials over {-1,0,1}, ordered as at A206821.

The programs for A207192, there is no canonical definition to state claims against.
-/

/-! ## A207192.P9067160156936696440

`A207188(A207191(n+1)+ceil(sin(n)²))`
-/

namespace A207192.P9067160156936696440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207188 (A207191 (n + 1) + ⌈Real.sin (n : ℝ) ^ 2⌉).toNat

end

end A207192.P9067160156936696440

/-! ## A207192.P16088161806442184700

`A207188(A207191(n+1)+floor(atan(n+1)))`
-/

namespace A207192.P16088161806442184700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207188 (A207191 (n + 1) + ⌊Real.arctan (n + 1 : ℝ)⌋).toNat

end

end A207192.P16088161806442184700

/-! ## A207192.P6229094340482099545

`A207188(A207191(n+1)-(C(2, n+2)-1))`
-/

namespace A207192.P6229094340482099545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207188 (A207191 (n + 1) - ((Nat.choose 2 (n + 2) : ℤ) - 1)).toNat

end

end A207192.P6229094340482099545

/-! ## A207192.P1293519364242602961

`A207188(A207191(n+1)+A057427(n))`
-/

namespace A207192.P1293519364242602961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207188 (A207191 (n + 1) + A057427 n).toNat

end

end A207192.P1293519364242602961

/-! ## A207192.P16976539646838551440

`A207188(A207191(n+1)+A178334(n))`
-/

namespace A207192.P16976539646838551440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207188 (A207191 (n + 1) + A178334 n).toNat

end

end A207192.P16976539646838551440

/-!
# A207193: Auxiliary function for computing the Carmichael lambda function (A002322).

The programs for A207193, there is no canonical definition to state claims against.
-/

/-! ## A207193.P17695670335431729815

`A002322(A000961(n+1))`
-/

namespace A207193.P17695670335431729815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002322 (A000961 (n + 1)).toNat

end

end A207193.P17695670335431729815

/-! ## A207193.P1979477989700191384

`A002322(record[A028233(n+1)])`
-/

namespace A207193.P1979477989700191384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028233 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002322 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A207193.P1979477989700191384

/-! ## A207193.P6673875043354966232

`A002322(record[A034699(n+1)])`
-/

namespace A207193.P6673875043354966232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002322 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A207193.P6673875043354966232

/-! ## A207193.P12453255634996401868

`A002322(record[A309639(n+1)])`
-/

namespace A207193.P12453255634996401868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309639 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002322 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A207193.P12453255634996401868

/-! ## A207193.P11049903002006024092

`A002322(A181062(n+1)+1)`
-/

namespace A207193.P11049903002006024092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002322 (A181062 (n + 1) + 1).toNat

end

end A207193.P11049903002006024092

/-! ## A207193.P4536815859144144774

`A002322(eq[1, A118106(n+1)]+1)`
-/

namespace A207193.P4536815859144144774
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118106 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002322 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A207193.P4536815859144144774

/-! ## A207193.P9554250136556953670

`A002322(eq[n, n*A001221(n+1)]+1)`
-/

namespace A207193.P9554250136556953670
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A001221 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002322 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A207193.P9554250136556953670

/-! ## A207193.P7787659610539691743

`A002322(eq[A001221(n+1)², A001221(n+1)]+1)`
-/

namespace A207193.P7787659610539691743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002322 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A207193.P7787659610539691743

/-!
# A207195: Number of n X n 0..2 arrays avoiding the pattern z-1 z-1 z in any row or column.

The programs for A207195, there is no canonical definition to state claims against.
-/

/-! ## A207195.P5018284840289936608

`A207201((n+1)²+n²)`
-/

namespace A207195.P5018284840289936608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207201 ((n + 1) ^ 2 + n ^ 2)

end

end A207195.P5018284840289936608

/-!
# A207196: Number of nX3 0..2 arrays avoiding the pattern z-1 z-1 z in any row or column.

The programs for A207196, there is no canonical definition to state claims against.
-/

/-! ## A207196.P9518378418825272626

`A207201(∑[n+2]+4)`
-/

namespace A207196.P9518378418825272626
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207201 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A207196.P9518378418825272626

/-! ## A207196.P1810160024901680746

`A207201(A167614(n+1))+A011731(n)`
-/

namespace A207196.P1810160024901680746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207201 (A167614 (n + 1)).toNat + A011731 n

end

end A207196.P1810160024901680746

/-! ## A207196.P16761078390120792454

`A207201(A167614(n+1))+A025442(n)`
-/

namespace A207196.P16761078390120792454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207201 (A167614 (n + 1)).toNat + A025442 n

end

end A207196.P16761078390120792454

/-! ## A207196.P8401114342713104744

`or(A000007(n), A207201(A167614(n+1)))`
-/

namespace A207196.P8401114342713104744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A207201 (A167614 (n + 1)).toNat)

end

end A207196.P8401114342713104744

/-! ## A207196.P7799473648196252301

`or(A102683(n), A207201(A167614(n+1)))`
-/

namespace A207196.P7799473648196252301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A102683 n) (A207201 (A167614 (n + 1)).toNat)

end

end A207196.P7799473648196252301

/-!
# A207197: Number of nX4 0..2 arrays avoiding the pattern z-1 z-1 z in any row or column.

The programs for A207197, there is no canonical definition to state claims against.
-/

/-! ## A207197.P97926717355150575

`A207201(A052905(n)+9)`
-/

namespace A207197.P97926717355150575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207201 (A052905 n + 9).toNat

end

end A207197.P97926717355150575

/-! ## A207197.P11432875783134636061

`A207201(A055999(n)+10)`
-/

namespace A207197.P11432875783134636061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207201 (A055999 n + 10).toNat

end

end A207197.P11432875783134636061

/-! ## A207197.P18353678732614153180

`A207201(A167614(n+2)+1)`
-/

namespace A207197.P18353678732614153180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207201 (A167614 (n + 2) + 1).toNat

end

end A207197.P18353678732614153180

/-! ## A207197.P10006584145698405342

`A207201(Δ[A264443(n)-n²])`
-/

namespace A207197.P10006584145698405342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207201 (f1 (n + 1) - f1 n).toNat

end

end A207197.P10006584145698405342

/-! ## A207197.P2049137263107793994

`A207201(Δ[A023545(n+1)-n²])`
-/

namespace A207197.P2049137263107793994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1) - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207201 (f1 (n + 1) - f1 n).toNat

end

end A207197.P2049137263107793994

/-!
# A207198: Number of nX5 0..2 arrays avoiding the pattern z-1 z-1 z in any row or column.

The programs for A207198, there is no canonical definition to state claims against.
-/

/-! ## A207198.P12110154125826430699

`A207201(Δ[A264443(n)])`
-/

namespace A207198.P12110154125826430699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207201 (f1 (n + 1) - f1 n).toNat

end

end A207198.P12110154125826430699

/-! ## A207198.P10856372667813589979

`A207201(A374005(n+1))`
-/

namespace A207198.P10856372667813589979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207201 (A374005 (n + 1)).toNat

end

end A207198.P10856372667813589979

/-! ## A207198.P1343702289627279748

`A207201(A046691(n+3))`
-/

namespace A207198.P1343702289627279748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207201 (A046691 (n + 3)).toNat

end

end A207198.P1343702289627279748

/-! ## A207198.P12219996476657789364

`A207201(eq[4, A193592(n)])`
-/

namespace A207198.P12219996476657789364
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207201 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A207198.P12219996476657789364

/-! ## A207198.P17190526896650809004

`A207201(eq[8, A209439(n)])`
-/

namespace A207198.P17190526896650809004
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209439 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207201 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A207198.P17190526896650809004

/-!
# A207199: Number of nX6 0..2 arrays avoiding the pattern z-1 z-1 z in any row or column.

The programs for A207199, there is no canonical definition to state claims against.
-/

/-! ## A207199.P18343641301280556305

`A207201(A374007(n+1))`
-/

namespace A207199.P18343641301280556305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207201 (A374007 (n + 1)).toNat

end

end A207199.P18343641301280556305

/-! ## A207199.P155600596452201389

`A207201(eq[5, A193592(n)])`
-/

namespace A207199.P155600596452201389
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207201 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A207199.P155600596452201389

/-! ## A207199.P8245978275347238983

`A207201(eq[8, A185782(n+1)])`
-/

namespace A207199.P8245978275347238983
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207201 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A207199.P8245978275347238983

/-! ## A207199.P5760223062089299827

`A207201(eq[16, A057728(n+1)])`
-/

namespace A207199.P5760223062089299827
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057728 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207201 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A207199.P5760223062089299827

/-! ## A207199.P13033587538020080569

`A207201(Δ[Δ[A006504(n+1)]])`
-/

namespace A207199.P13033587538020080569
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207201 (f1 (n + 1) - f1 n).toNat

end

end A207199.P13033587538020080569

