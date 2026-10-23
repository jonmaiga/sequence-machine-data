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
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
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
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C001
import Seq.B010.C000
import Seq.B011.C000
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A261200: Minimal prime concatenation sequence with base 2 and seed 1.

The programs for A261200, there is no canonical definition to state claims against.
-/

/-! ## A261200.P1271399573400565173

`A007088(A261201(n+1))`
-/

namespace A261200.P1271399573400565173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A261201 (n + 1)).toNat

end

end A261200.P1271399573400565173

/-! ## A261200.P9855409568123459943

`A007088(A055011(abs(1-n))%A055011(n))`
-/

namespace A261200.P9855409568123459943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (Int.tmod (A055011 |1 - (n : ℤ)|.toNat) (A055011 n)).toNat

end

end A261200.P9855409568123459943

/-! ## A261200.P15465687956412590663

`A007088(A055011(abs(1-n))-A000038(n)²)`
-/

namespace A261200.P15465687956412590663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A055011 |1 - (n : ℤ)|.toNat - A000038 n ^ 2).toNat

end

end A261200.P15465687956412590663

/-! ## A261200.P17980185177840528289

`A287874(or(A105700(n), A261201(n+1)))`
-/

namespace A261200.P17980185177840528289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287874 (Int.lor (A105700 n) (A261201 (n + 1))).toNat

end

end A261200.P17980185177840528289

/-! ## A261200.P15087414068071751337

`A007088(record[A175311(n)%A175321(n+1)])`
-/

namespace A261200.P15087414068071751337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A175311 n) (A175321 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A261200.P15087414068071751337

/-!
# A261201: Base-10 representation of A261200.

The programs for A261201, there is no canonical definition to state claims against.
-/

/-! ## A261201.P3021688988309182406

`A055011(abs(1-n))-A000038(n)²`
-/

namespace A261201.P3021688988309182406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055011 |1 - (n : ℤ)|.toNat - A000038 n ^ 2

end

end A261201.P3021688988309182406

/-! ## A261201.P824445677623243467

`A055011(A000007(n)-1+n)-A000007(n)`
-/

namespace A261201.P824445677623243467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055011 (A000007 n - 1 + (n : ℤ)).toNat - A000007 n

end

end A261201.P824445677623243467

/-! ## A261201.P14401643832144147848

`A055011(abs(1-n))%A055011(n)`
-/

namespace A261201.P14401643832144147848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A055011 |1 - (n : ℤ)|.toNat) (A055011 n)

end

end A261201.P14401643832144147848

/-! ## A261201.P11082440406816405099

`record[A055011(A327188(n))-A000007(n)]`
-/

namespace A261201.P11082440406816405099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055011 (A327188 n).toNat - A000007 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A261201.P11082440406816405099

/-! ## A261201.P13959606962614058967

`record[A055011(A327188(n))/A054977(n)]`
-/

namespace A261201.P13959606962614058967
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055011 (A327188 n).toNat : ℚ) / (A054977 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A261201.P13959606962614058967

/-!
# A261202: Expansion of phi(-x) * phi(-x^9) / f(-x^6)^2 in powers of x where phi(), f() are Ramanujan theta functions.

The programs for A261202, there is no canonical definition to state claims against.
-/

/-! ## A261202.P12553507821553240143

`(n+1)%3*A112176(n)`
-/

namespace A261202.P12553507821553240143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n + 1) % 3 : ℕ) : ℤ) * A112176 n

end

end A261202.P12553507821553240143

/-! ## A261202.P14543946381326119304

`A010892(n)*A062243(n)`
-/

namespace A261202.P14543946381326119304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 n * A062243 n

end

end A261202.P14543946381326119304

/-! ## A261202.P12016370079569339211

`A049347(n)*A058487(n)`
-/

namespace A261202.P12016370079569339211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049347 n * A058487 n

end

end A261202.P12016370079569339211

/-! ## A261202.P14105357482711435248

`∑[A131713(n)]*A058487(n)`
-/

namespace A261202.P14105357482711435248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131713 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A058487 n

end

end A261202.P14105357482711435248

/-!
# A261203: Expansion of f(-x^6)^2 / (phi(-x) * phi(-x^9)) in powers of x where phi(), f() are Ramanujan theta functions.

The programs for A261203, there is no canonical definition to state claims against.
-/

/-! ## A261203.P11735045024662102401

`A261154(2*n+1)`
-/

namespace A261203.P11735045024662102401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261154 (2 * n + 1)

end

end A261203.P11735045024662102401

/-! ## A261203.P10911003943712534702

`A233693(Δ[n²])`
-/

namespace A261203.P10911003943712534702
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233693 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A261203.P10911003943712534702

/-! ## A261203.P14235689385252819458

`A261156(Δ[n²])/2`
-/

namespace A261203.P14235689385252819458
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A261156 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 2

end

end A261203.P14235689385252819458

/-! ## A261203.P15198594609759239821

`abs(A260215(2*n+1)/2)`
-/

namespace A261203.P15198594609759239821
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A260215 (2 * n + 1) : ℚ) / 2|

end

end A261203.P15198594609759239821

/-! ## A261203.P14823606026793060502

`gcd(A000038(n), A260215(2*n+1))/2`
-/

namespace A261203.P14823606026793060502
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.gcd (A000038 n) (A260215 (2 * n + 1)) : ℚ) / 2

end

end A261203.P14823606026793060502

/-! ## A261203.P5046111327581833450

`A261156(2*n+1)-A233693(2*n+1)`
-/

namespace A261203.P5046111327581833450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261156 (2 * n + 1) - A233693 (2 * n + 1)

end

end A261203.P5046111327581833450

/-! ## A261203.P4575053080385217586

`A260215(2*n+1)/(A000038(n+1)-2)`
-/

namespace A261203.P4575053080385217586
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A260215 (2 * n + 1) : ℚ) / (A000038 (n + 1) - 2 : ℚ)

end

end A261203.P4575053080385217586

/-! ## A261203.P14517765397558184217

`A260215(2*n+1)/A280560(2*n+1)`
-/

namespace A261203.P14517765397558184217
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A260215 (2 * n + 1) : ℚ) / (A280560 (2 * n + 1) : ℚ)

end

end A261203.P14517765397558184217

/-! ## A261203.P7255830257486016119

`lcm(A000034(n+1), A260215(2*n+1))/2`
-/

namespace A261203.P7255830257486016119
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A000034 (n + 1)) (A260215 (2 * n + 1)) : ℚ) / 2

end

end A261203.P7255830257486016119

/-! ## A261203.P3245022710119292504

`A260215(2*n+1)/(A033999(2*n+1)-1)`
-/

namespace A261203.P3245022710119292504
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A260215 (2 * n + 1) : ℚ) / (A033999 (2 * n + 1) - 1 : ℚ)

end

end A261203.P3245022710119292504

/-! ## A261203.P583295470952155727

`A260215(2*n+1)/A000034(2*n+1)-A260215(2*n+1)`
-/

namespace A261203.P583295470952155727
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A260215 (2 * n + 1) : ℚ) / (A000034 (2 * n + 1) : ℚ) - (A260215 (2 * n + 1) : ℚ)

end

end A261203.P583295470952155727

/-! ## A261203.P7443970416872247854

`A260215(2*n+1)/A260233(2*(n+1))-A260215(2*n+1)`
-/

namespace A261203.P7443970416872247854
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A260215 (2 * n + 1) : ℚ) / (A260233 (2 * (n + 1)) : ℚ) - (A260215 (2 * n + 1) : ℚ)

end

end A261203.P7443970416872247854

/-!
# A261204: Number of binary strings of length n that avoid the pattern x x^R x (x^R is the reversal of x).

The programs for A261204, there is no canonical definition to state claims against.
-/

/-! ## A261204.P10064591509992856368

`A241089(2*(n+2))-A340988(A017984(n))`
-/

namespace A261204.P10064591509992856368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241089 (2 * (n + 2)) - A340988 ((A017984 n).toNat + 91)

end

end A261204.P10064591509992856368

/-! ## A261204.P6003408684359038389

`∑[A020490(n+1)]-comp[2*n+3]`
-/

namespace A261204.P6003408684359038389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020490 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℤ)

end

end A261204.P6003408684359038389

/-! ## A261204.P16253577714759666752

`A184421(A280278(n))`
-/

namespace A261204.P16253577714759666752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184421 (A280278 n).toNat

end

end A261204.P16253577714759666752

/-! ## A261204.P16859069360889061145

`A256244(2*a(n-1)²)` with `a(0)=1`
-/

namespace A261204.P16859069360889061145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A256244 (2 * a (n - 1) ^ 2).toNat

end

end A261204.P16859069360889061145

/-! ## A261204.P17537787549143627819

`A067085(A076967(n+1))`
-/

namespace A261204.P17537787549143627819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067085 (A076967 (n + 1)).toNat

end

end A261204.P17537787549143627819

/-!
# A261205: Numbers k such that floor(k^(1/m)) divides k for all integers m >= 1.

The programs for A261205, there is no canonical definition to state claims against.
-/

/-! ## A261205.P18263089741979536085

`∩[A079647(n+1), A164836(n+1)]`
-/

namespace A261205.P18263089741979536085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079647 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164836 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A261205.P18263089741979536085

/-! ## A261205.P8156606510629312691

`∩[A079647(n+1), A258266(n+1)]`
-/

namespace A261205.P8156606510629312691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079647 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258266 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A261205.P8156606510629312691

/-! ## A261205.P6247517168290331188

`∩[A079647(n+1), A316502(n+1)]`
-/

namespace A261205.P6247517168290331188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079647 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316502 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A261205.P6247517168290331188

/-! ## A261205.P14279883216305178734

`∩[A079647(n+1), A375590(n+1)]`
-/

namespace A261205.P14279883216305178734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079647 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375590 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A261205.P14279883216305178734

/-! ## A261205.P7153682384821281441

`∩[A079647(n+1), A231236(n+1)]`
-/

namespace A261205.P7153682384821281441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079647 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231236 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A261205.P7153682384821281441

/-!
# A261206: Numbers j such that ceiling(j^(1/k)) divides j for all integers k >= 1.

The programs for A261206, there is no canonical definition to state claims against.
-/

/-! ## A261206.P2921810879208347207

`A099735(∪[A005714(2*n+3), A092728(n+2)])`
-/

namespace A261206.P2921810879208347207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005714 (2 * n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092728 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099735 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A261206.P2921810879208347207

/-! ## A261206.P12924094303203104810

`A099735(A092728(n+1))`
-/

namespace A261206.P12924094303203104810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099735 (A092728 (n + 1)).toNat

end

end A261206.P12924094303203104810

/-! ## A261206.P12949662455436166937

`record[gcd(A358502(n), A358539(2*n+7))]`
-/

namespace A261206.P12949662455436166937
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A358502 n) (A358539 (2 * n + 7))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A261206.P12949662455436166937

/-!
# A261207: Expansion of (x-1)/8 - (x^2-4*x-1)/(8*sqrt(x^2-6*x+1)).

The programs for A261207, the canonical program `A261207.P16806718987046288533` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A261207 has offset 0).

The definition of A261207 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 133 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A261207.P16806718987046288533

`round(A050147(n+1)/4)`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A261207

/-- `round(A050147(n+1)/4)` -/
def P16806718987046288533.Spec : Prop :=
  ∀ n, P16806718987046288533.a n = A261207 n

theorem P16806718987046288533.correct : P16806718987046288533.Spec := by
  intro n
  simp only [A261207]

end A261207

/-! ## A261207.P3090992380300053228

`ceil(A057427(n)+A050147(n+1)/4)-1`
-/

namespace A261207.P3090992380300053228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A057427 n : ℚ) + (A050147 (n + 1) : ℚ) / 4⌉ - 1

end

end A261207.P3090992380300053228

namespace A261207

/-- `ceil(A057427(n)+A050147(n+1)/4)-1` -/
def P3090992380300053228.Spec : Prop :=
  ∀ n, P3090992380300053228.a n = A261207 n

end A261207

/-! ## A261207.P5764288203319262892

`A062110((n+1)²+n²)`
-/

namespace A261207.P5764288203319262892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062110 ((n + 1) ^ 2 + n ^ 2)

end

end A261207.P5764288203319262892

namespace A261207

/-- `A062110((n+1)²+n²)` -/
def P5764288203319262892.Spec : Prop :=
  ∀ n, P5764288203319262892.a n = A261207 n

end A261207

/-! ## A261207.P12458043604890942616

`A105306(A058331(n))%(6^n)`
-/

namespace A261207.P12458043604890942616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A105306 (A058331 n).toNat) (6 ^ n : ℤ)

end

end A261207.P12458043604890942616

namespace A261207

/-- `A105306(A058331(n))%(6^n)` -/
def P12458043604890942616.Spec : Prop :=
  ∀ n, P12458043604890942616.a n = A261207 n

end A261207

/-! ## A261207.P14118269785590752675

`A105306(A058331(n))-A000007(n)`
-/

namespace A261207.P14118269785590752675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105306 (A058331 n).toNat - A000007 n

end

end A261207.P14118269785590752675

namespace A261207

/-- `A105306(A058331(n))-A000007(n)` -/
def P14118269785590752675.Spec : Prop :=
  ∀ n, P14118269785590752675.a n = A261207 n

end A261207

/-! ## A261207.P17696264159582510526

`A062110(∑[A008574(n)])*A158388(n)`
-/

namespace A261207.P17696264159582510526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062110 (∑ j ∈ Finset.range (n + 1), f1 j).toNat * A158388 n

end

end A261207.P17696264159582510526

namespace A261207

/-- `A062110(∑[A008574(n)])*A158388(n)` -/
def P17696264159582510526.Spec : Prop :=
  ∀ n, P17696264159582510526.a n = A261207 n

end A261207

/-! ## A261207.P15261769759145323396

`A062110(∑[A008574(n)])*A178334(n)`
-/

namespace A261207.P15261769759145323396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062110 (∑ j ∈ Finset.range (n + 1), f1 j).toNat * A178334 n

end

end A261207.P15261769759145323396

namespace A261207

/-- `A062110(∑[A008574(n)])*A178334(n)` -/
def P15261769759145323396.Spec : Prop :=
  ∀ n, P15261769759145323396.a n = A261207 n

end A261207

/-! ## A261207.P13533384195400504289

`A062110(∑[A008574(n)])%A114693(n)`
-/

namespace A261207.P13533384195400504289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A062110 (∑ j ∈ Finset.range (n + 1), f1 j).toNat) (A114693 n)

end

end A261207.P13533384195400504289

namespace A261207

/-- `A062110(∑[A008574(n)])%A114693(n)` -/
def P13533384195400504289.Spec : Prop :=
  ∀ n, P13533384195400504289.a n = A261207 n

end A261207

/-! ## A261207.P5339641460298699979

`A062110(∑[A008574(n)])*A102283(3*n+1)`
-/

namespace A261207.P5339641460298699979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062110 (∑ j ∈ Finset.range (n + 1), f1 j).toNat * A102283 (3 * n + 1)

end

end A261207.P5339641460298699979

namespace A261207

/-- `A062110(∑[A008574(n)])*A102283(3*n+1)` -/
def P5339641460298699979.Spec : Prop :=
  ∀ n, P5339641460298699979.a n = A261207 n

end A261207

/-! ## A261207.P6187683325096321274

`A105306(A056220(n)+2)%A216401(n+1)`
-/

namespace A261207.P6187683325096321274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A105306 (A056220 n + 2).toNat) (A216401 (n + 1))

end

end A261207.P6187683325096321274

namespace A261207

/-- `A105306(A056220(n)+2)%A216401(n+1)` -/
def P6187683325096321274.Spec : Prop :=
  ∀ n, P6187683325096321274.a n = A261207 n

end A261207

/-!
# A261209: First differences of partitions of n in the ordering A080577.

The programs for A261209, there is no canonical definition to state claims against.
-/

/-! ## A261209.P16373990341144515461

`A228531(n+1)-A266892(A308808(n+1))`
-/

namespace A261209.P16373990341144515461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228531 (n + 1) - A266892 (A308808 (n + 1)).toNat

end

end A261209.P16373990341144515461

/-! ## A261209.P16026144785739195151

`floor(ratio[A214651(A327088(n+1))])`
-/

namespace A261209.P16026144785739195151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214651 (A327088 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌋

end

end A261209.P16026144785739195151

/-! ## A261209.P11213117869695211907

`and(A211986(n+1), A231577(A153893(n)))`
-/

namespace A261209.P11213117869695211907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A211986 (n + 1)) (A231577 (A153893 n).toNat)

end

end A261209.P11213117869695211907

/-! ## A261209.P524019878515959617

`A277648(n+1)-A360555(A344653(n+1))`
-/

namespace A261209.P524019878515959617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277648 (n + 1) - A360555 (A344653 (n + 1)).toNat

end

end A261209.P524019878515959617

/-!
# A261211: Column k=1 of A261297.

The programs for A261211, there is no canonical definition to state claims against.
-/

/-! ## A261211.P5198894227892058594

`A261297(∑[n]+1)`
-/

namespace A261211.P5198894227892058594
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261297 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A261211.P5198894227892058594

/-! ## A261211.P1957805678962741826

`and(-1, A261297(A000124(n)))`
-/

namespace A261211.P1957805678962741826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A261297 (A000124 n).toNat)

end

end A261211.P1957805678962741826

/-! ## A261211.P6257013740301516696

`gcd(A000038(n), A261297(A000124(n)))`
-/

namespace A261211.P6257013740301516696
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A261297 (A000124 n).toNat)

end

end A261211.P6257013740301516696

/-! ## A261211.P11941012680583269624

`∑{d}[A261297(A000124(n)), A000010(#)]`
-/

namespace A261211.P11941012680583269624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261297 (A000124 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A261211.P11941012680583269624

/-! ## A261211.P15185220960918507944

`∏{d}[A261297(A000124(n)), A014963(#)]`
-/

namespace A261211.P15185220960918507944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261297 (A000124 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A014963 d

end

end A261211.P15185220960918507944

/-! ## A261211.P16710587490184518649

`A261297(A000124(n))+A000007(n+1)`
-/

namespace A261211.P16710587490184518649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261297 (A000124 n).toNat + A000007 (n + 1)

end

end A261211.P16710587490184518649

/-! ## A261211.P13662391567821456162

`A261297(A000124(n))+A000035(2*n)`
-/

namespace A261211.P13662391567821456162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261297 (A000124 n).toNat + A000035 (2 * n)

end

end A261211.P13662391567821456162

/-! ## A261211.P1064900773129264343

`A261297(A000124(n))+A005369(or(1, n))`
-/

namespace A261211.P1064900773129264343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261297 (A000124 n).toNat + A005369 (Nat.lor 1 n)

end

end A261211.P1064900773129264343

/-! ## A261211.P10080593529746183833

`A007318(C(2, n))*A261297(A000124(n))`
-/

namespace A261211.P10080593529746183833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A261297 (A000124 n).toNat

end

end A261211.P10080593529746183833

/-! ## A261211.P16804157122369503934

`A261297(A000124(n))-n*A000007(n)`
-/

namespace A261211.P16804157122369503934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261297 (A000124 n).toNat - (n : ℤ) * A000007 n

end

end A261211.P16804157122369503934

/-! ## A261211.P486471511431507560

`(A005408(n)-n-n)*A261297(A000124(n))`
-/

namespace A261211.P486471511431507560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A005408 n - (n : ℤ) - (n : ℤ)) * A261297 (A000124 n).toNat

end

end A261211.P486471511431507560

/-! ## A261211.P6785625461927618370

`A261297(A000124(n))-∑{e}[A000040(n+1), #]+1`
-/

namespace A261211.P6785625461927618370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261297 (A000124 n).toNat - ((∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p : ℕ) : ℤ) + 1

end

end A261211.P6785625461927618370

/-! ## A261211.P17525505091250919577

`A000035(A005408(n))*A261297(A000124(n))`
-/

namespace A261211.P17525505091250919577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A005408 n).toNat * A261297 (A000124 n).toNat

end

end A261211.P17525505091250919577

/-! ## A261211.P11089084536014231555

`A261297(A000124(n))*A329348(A000040(n+1))`
-/

namespace A261211.P11089084536014231555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261297 (A000124 n).toNat * A329348 (A000040 (n + 1)).toNat

end

end A261211.P11089084536014231555

/-! ## A261211.P14556182491069547750

`A001045(A014963(2*(n+1)))*A261297(A000124(n))`
-/

namespace A261211.P14556182491069547750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 (A014963 (2 * (n + 1))).toNat * A261297 (A000124 n).toNat

end

end A261211.P14556182491069547750

/-!
# A261213: Odd numbers n such that n^2 = m + (m+1), where both m and m+1 have no repeated digits.

The programs for A261213, there is no canonical definition to state claims against.
-/

/-! ## A261213.P16466213441967945268

`eq[tanh((n+1)%2), A103588(A073751(n+1))]`
-/

namespace A261213.P16466213441967945268
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.tanh (((n + 1) % 2 : ℕ) : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103588 (A073751 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℝ)) n

end

end A261213.P16466213441967945268

/-! ## A261213.P4845291732184482188

`∑[A112556(A191228((n+1)²/∏{p}[n+1, #]))]`
-/

namespace A261213.P4845291732184482188
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112556 (A191228 (SequenceMachineLib.roundAway (((n + 1) ^ 2 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ))).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A261213.P4845291732184482188

/-! ## A261213.P8643162349935073902

`∑[A077462(A000045(A343996(n+1)))]`
-/

namespace A261213.P8643162349935073902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077462 (A000045 (A343996 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A261213.P8643162349935073902

/-! ## A261213.P17972520450311100155

`eq[A027656(n), A103588(A073751(n+1))]`
-/

namespace A261213.P17972520450311100155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027656 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103588 (A073751 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A261213.P17972520450311100155

/-! ## A261213.P15673281040949978615

`eq[A103588(A073751(n+1)), A167302(n+1)]`
-/

namespace A261213.P15673281040949978615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103588 (A073751 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167302 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A261213.P15673281040949978615

/-!
# A261215: Triangle read by rows: T(n, k) is the number of squarefree integers x such that x<=primorial(n) and omega(n) = k with 0<=k<=n.

The programs for A261215, there is no canonical definition to state claims against.
-/

/-! ## A261215.P13568822914556977601

`A325118(A294609(n+1))`
-/

namespace A261215.P13568822914556977601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325118 (A294609 (n + 1)).toNat

end

end A261215.P13568822914556977601

/-! ## A261215.P17694920018538929444

`A325118(A294950(n+1))`
-/

namespace A261215.P17694920018538929444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325118 (A294950 (n + 1)).toNat

end

end A261215.P17694920018538929444

/-! ## A261215.P1823276958168033906

`∏{p}[A030238(A358050(n)), #]`
-/

namespace A261215.P1823276958168033906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030238 (A358050 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A261215.P1823276958168033906

/-! ## A261215.P15121119596337115478

`abs(A185996(A004917(n+1)))`
-/

namespace A261215.P15121119596337115478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A185996 (A004917 (n + 1)).toNat|

end

end A261215.P15121119596337115478

/-! ## A261215.P8218733516154633663

`gcd(A000065(n)!, A185996(n))`
-/

namespace A261215.P8218733516154633663
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Nat.factorial (A000065 n).toNat : ℤ) (A185996 n)

end

end A261215.P8218733516154633663

/-!
# A261216: A(i,j) = rank (in A060117) of the composition of the i-th and the j-th permutation in table A060117, which lists all finite permutations.

The programs for A261216, there is no canonical definition to state claims against.
-/

/-! ## A261216.P2656956434986714342

`A261217(A061579(n))`
-/

namespace A261216.P2656956434986714342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261217 (A061579 n).toNat

end

end A261216.P2656956434986714342

/-! ## A261216.P5171297892951446437

`A261217(A114327(n)+n)`
-/

namespace A261216.P5171297892951446437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261217 (A114327 n + (n : ℤ)).toNat

end

end A261216.P5171297892951446437

/-! ## A261216.P15534097319470142481

`A261217(A038722(n+1)-1)`
-/

namespace A261216.P15534097319470142481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261217 (A038722 (n + 1) - 1).toNat

end

end A261216.P15534097319470142481

/-! ## A261216.P11587988276127703086

`A261217(A002378(n)%A014132(n+1))`
-/

namespace A261216.P11587988276127703086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261217 (Int.tmod (A002378 n) (A014132 (n + 1))).toNat

end

end A261216.P11587988276127703086

/-! ## A261216.P1661862758822197189

`A261217(A127739(n+1)-A002260(n+1))`
-/

namespace A261216.P1661862758822197189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261217 (A127739 (n + 1) - A002260 (n + 1)).toNat

end

end A261216.P1661862758822197189

/-!
# A261217: A(i,j) = rank (in A060118) of the composition of the i-th and the j-th permutation in table A060118, which lists all finite permutations.

The programs for A261217, there is no canonical definition to state claims against.
-/

/-! ## A261217.P12992546608579091212

`A261216(A061579(n))`
-/

namespace A261217.P12992546608579091212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261216 (A061579 n).toNat

end

end A261217.P12992546608579091212

/-! ## A261217.P2610021783063618207

`A261216(A114327(n)+n)`
-/

namespace A261217.P2610021783063618207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261216 (A114327 n + (n : ℤ)).toNat

end

end A261217.P2610021783063618207

/-! ## A261217.P11000434788323675447

`A261216(A038722(n+1)-1)`
-/

namespace A261217.P11000434788323675447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261216 (A038722 (n + 1) - 1).toNat

end

end A261217.P11000434788323675447

/-! ## A261217.P6413251192613150109

`A261216(-A024000(A038722(n+1)))`
-/

namespace A261217.P6413251192613150109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261216 (-A024000 (A038722 (n + 1)).toNat).toNat

end

end A261217.P6413251192613150109

/-! ## A261217.P17405593692445020655

`A261216(A002378(n)%A014132(n+1))`
-/

namespace A261217.P17405593692445020655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261216 (Int.tmod (A002378 n) (A014132 (n + 1))).toNat

end

end A261217.P17405593692445020655

/-!
# A261218: Row 1 of A261216.

The programs for A261218, there is no canonical definition to state claims against.
-/

/-! ## A261218.P11610928118838891108

`A060126(A261098(A060119(n)))`
-/

namespace A261218.P11610928118838891108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060126 (A261098 (A060119 n).toNat).toNat

end

end A261218.P11610928118838891108

/-! ## A261218.P11551184818830992657

`A060125(xor(1, A060125(n)))`
-/

namespace A261218.P11551184818830992657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060125 (Int.xor 1 (A060125 n)).toNat

end

end A261218.P11551184818830992657

/-! ## A261218.P16611272117982514769

`A275958(xor(1, A275957(n)))`
-/

namespace A261218.P16611272117982514769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275958 (Int.xor 1 (A275957 n)).toNat

end

end A261218.P16611272117982514769

/-! ## A261218.P12612766677161924464

`A060125(A060125(n)+(-1)^n)`
-/

namespace A261218.P12612766677161924464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060125 (A060125 n + (-1) ^ n).toNat

end

end A261218.P12612766677161924464

/-! ## A261218.P11104707032026286001

`A060125(A004442(A060125(n)))`
-/

namespace A261218.P11104707032026286001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060125 (A004442 (A060125 n).toNat).toNat

end

end A261218.P11104707032026286001

/-! ## A261218.P13011194423505674408

`A060126(A056019(A004442(A060120(n))))`
-/

namespace A261218.P13011194423505674408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060126 (A056019 (A004442 (A060120 n).toNat).toNat).toNat

end

end A261218.P13011194423505674408

/-! ## A261218.P11724538128366658532

`A261216(∑[n+1]+1)`
-/

namespace A261218.P11724538128366658532
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261216 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A261218.P11724538128366658532

/-! ## A261218.P177736536489580033

`A261217(∑[n+2]-1)`
-/

namespace A261218.P177736536489580033
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261217 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A261218.P177736536489580033

/-!
# A261219: Main diagonal of A261216: a(n) = A261216(n,n).

The programs for A261219, there is no canonical definition to state claims against.
-/

/-! ## A261219.P17632971539814165594

`A060126(A261099(A060119(n)))`
-/

namespace A261219.P17632971539814165594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060126 (A261099 (A060119 n).toNat).toNat

end

end A261219.P17632971539814165594

/-! ## A261219.P1228222871334595553

`A060126(A261099(A056019(A060120(n))))`
-/

namespace A261219.P1228222871334595553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060126 (A261099 (A056019 (A060120 n).toNat).toNat).toNat

end

end A261219.P1228222871334595553

/-! ## A261219.P8812317064513103845

`A261216(∑[4*n])`
-/

namespace A261219.P8812317064513103845
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261216 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A261219.P8812317064513103845

/-! ## A261219.P14933867739841837151

`or(char[3], A261216(A046092(n)))`
-/

namespace A261219.P14933867739841837151
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A261216 (A046092 n).toNat)

end

end A261219.P14933867739841837151

/-! ## A261219.P2860465338050952109

`A261216(A046092(n))%A008574(n)`
-/

namespace A261219.P2860465338050952109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A261216 (A046092 n).toNat) (A008574 n)

end

end A261219.P2860465338050952109

/-! ## A261219.P1773764805425955132

`∑{d}[A261216(A046092(n)), A000010(#)]`
-/

namespace A261219.P1773764805425955132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261216 (A046092 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A261219.P1773764805425955132

/-! ## A261219.P15873200356355995588

`A261216(A046092(n))/A007318(∑[n])`
-/

namespace A261219.P15873200356355995588
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A261216 (A046092 n).toNat : ℚ) / (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A261219.P15873200356355995588

/-! ## A261219.P13684714910289351824

`A007318(C(3, n))*A261216(A046092(n))`
-/

namespace A261219.P13684714910289351824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 3 n) * A261216 (A046092 n).toNat

end

end A261219.P13684714910289351824

/-! ## A261219.P9380085060492318815

`A014963(C(n+2, 2))*A261216(A046092(n))`
-/

namespace A261219.P9380085060492318815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (Nat.choose (n + 2) 2) * A261216 (A046092 n).toNat

end

end A261219.P9380085060492318815

/-! ## A261219.P916591365490059495

`A261217(∑[4*n])`
-/

namespace A261219.P916591365490059495
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261217 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A261219.P916591365490059495

/-!
# A261220: Ranks of involutions in permutation orderings A060117 and A060118.

The programs for A261220, there is no canonical definition to state claims against.
-/

/-! ## A261220.P17332336037596545609

`lt[A060131(n), 3]`
-/

namespace A261220.P17332336037596545609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060131 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A261220.P17332336037596545609

/-! ## A261220.P11592436363409876144

`eq[A060128(n), A060130(n)]`
-/

namespace A261220.P11592436363409876144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060128 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060130 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A261220.P11592436363409876144

/-! ## A261220.P17786289064562179826

`∩[A275804(n), A276005(n)]`
-/

namespace A261220.P17786289064562179826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275804 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276005 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A261220.P17786289064562179826

/-! ## A261220.P2873329130621778297

`eq[1, A049809(A060131(n)²)]`
-/

namespace A261220.P2873329130621778297
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049809 (A060131 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A261220.P2873329130621778297

/-! ## A261220.P94043501219058254

`eq[1, A078313(A060131(n)²)]`
-/

namespace A261220.P94043501219058254
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078313 (A060131 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A261220.P94043501219058254

/-! ## A261220.P1130857218408154556

`eq[1, A049809(A060131(n)+2)]`
-/

namespace A261220.P1130857218408154556
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049809 (A060131 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A261220.P1130857218408154556

/-! ## A261220.P2414159262340980453

`eq[1, A049809(2*A060131(n))]`
-/

namespace A261220.P2414159262340980453
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049809 (2 * A060131 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A261220.P2414159262340980453

/-! ## A261220.P16170376997724568835

`eq[A000010(A060131(n)²), A060131(n)]`
-/

namespace A261220.P16170376997724568835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A060131 n ^ 2).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060131 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A261220.P16170376997724568835

/-! ## A261220.P14449155853818793856

`eq[A000034(A060131(n)+1), A060131(n)]`
-/

namespace A261220.P14449155853818793856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A060131 n + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060131 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A261220.P14449155853818793856

/-! ## A261220.P10190590934464519362

`eq[A060131(n), A078313(A060131(n)+1)]`
-/

namespace A261220.P10190590934464519362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060131 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078313 (A060131 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A261220.P10190590934464519362

/-! ## A261220.P668033386683150436

`eq[A060131(A060131(n)-1), A060131(n)]`
-/

namespace A261220.P668033386683150436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060131 (A060131 n - 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060131 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A261220.P668033386683150436

/-! ## A261220.P12538324367580809190

`eq[A007814(2*A060131(n)), A060131(n)]`
-/

namespace A261220.P12538324367580809190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (2 * A060131 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060131 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A261220.P12538324367580809190

/-! ## A261220.P9191123497708764058

`eq[A036453(A060131(2*n)), A060131(n)]`
-/

namespace A261220.P9191123497708764058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036453 (A060131 (2 * n)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060131 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A261220.P9191123497708764058

/-! ## A261220.P17669982810221985544

`eq[n, A060125(n)]`
-/

namespace A261220.P17669982810221985544
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060125 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A261220.P17669982810221985544

/-! ## A261220.P15200431618541538801

`A060126(A014489(n))`
-/

namespace A261220.P15200431618541538801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060126 (A014489 n).toNat

end

end A261220.P15200431618541538801

/-! ## A261220.P11611006260884304322

`A060126(eq[n, A056019(n)])`
-/

namespace A261220.P11611006260884304322
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056019 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060126 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A261220.P11611006260884304322

/-! ## A261220.P16033366395711432151

`eq[A060119(n), A060120(n)]`
-/

namespace A261220.P16033366395711432151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060119 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060120 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A261220.P16033366395711432151

/-! ## A261220.P14747175880023679545

`eq[A060498(n), A060499(n)]`
-/

namespace A261220.P14747175880023679545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060498 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060499 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A261220.P14747175880023679545

/-!
# A261221: a(n) = number of steps to reach 0 when starting from k = n and repeatedly applying the map that replaces k with k - A053610(k), where A053610(k) = the number of positive squares needed to sum to k using the greedy algorithm.

The programs for A261221, there is no canonical definition to state claims against.
-/

/-! ## A261221.P14470506617406898648

`1+a(A260740(n))` with `a(0)=0, a(1)=1`
-/

namespace A261221.P14470506617406898648
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  1 + a (A260740 n).toNat

end

end A261221.P14470506617406898648

/-! ## A261221.P256521519945361383

`a(A260740(n))+1` with `a(0)=0`
-/

namespace A261221.P256521519945361383
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (A260740 n).toNat + 1

end

end A261221.P256521519945361383

/-! ## A261221.P12169677578221769212

`a(n-A053610(n))+1` with `a(0)=0`
-/

namespace A261221.P12169677578221769212
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a ((n : ℤ) - A053610 n).toNat + 1

end

end A261221.P12169677578221769212

/-! ## A261221.P16470601456081964197

`round(a(A260740(n))-A057428(n))` with `a(0)=0`

`round` is left out, it is the identity on integers.
-/

namespace A261221.P16470601456081964197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (A260740 n).toNat - A057428 n

end

end A261221.P16470601456081964197

/-! ## A261221.P4321807513341700100

`A020705(a(n-A053610(n)))-3` with `a(0)=0`
-/

namespace A261221.P4321807513341700100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A020705 (a ((n : ℤ) - A053610 n).toNat).toNat - 3

end

end A261221.P4321807513341700100

/-! ## A261221.P8319445555872294369

`A052938(A005843(a(A260740(n))))` with `a(0)=0`
-/

namespace A261221.P8319445555872294369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A052938 (A005843 (a (A260740 n).toNat).toNat).toNat

end

end A261221.P8319445555872294369

/-!
# A261222: a(n) = number of steps to reach 0 when starting from k = n*n and repeatedly applying the map that replaces k with k - A053610(k), where A053610(k) = the number of positive squares that sum to k using the greedy algorithm.

The programs for A261222, there is no canonical definition to state claims against.
-/

/-! ## A261222.P15725104647455969771

`A261221(n²)`
-/

namespace A261222.P15725104647455969771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261221 (n ^ 2)

end

end A261222.P15725104647455969771

/-! ## A261222.P826244283590718274

`A261223(A028310(n))+A057427(n)`
-/

namespace A261222.P826244283590718274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261223 (A028310 n).toNat + A057427 n

end

end A261222.P826244283590718274

/-! ## A261222.P5093007137750434555

`A261223(A028310(n))-A057428(n)`
-/

namespace A261222.P5093007137750434555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261223 (A028310 n).toNat - A057428 n

end

end A261222.P5093007137750434555

/-! ## A261222.P132845100826517278

`A261223(A028310(n))+1-A000007(n)`
-/

namespace A261222.P132845100826517278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261223 (A028310 n).toNat + (1 - A000007 n)

end

end A261222.P132845100826517278

/-! ## A261222.P12773916925101474124

`A261223(A028310(n))+A066247(2*(n+1))`
-/

namespace A261222.P12773916925101474124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261223 (A028310 n).toNat + A066247 (2 * (n + 1))

end

end A261222.P12773916925101474124

/-! ## A261222.P9579479431241400418

`A261223(A028310(n))+A000040(n+1)%2`
-/

namespace A261222.P9579479431241400418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261223 (A028310 n).toNat + Int.tmod (A000040 (n + 1)) 2

end

end A261222.P9579479431241400418

/-! ## A261222.P8847883558580487042

`A261223(A028310(n))+char[A038722(n+1)]`
-/

namespace A261222.P8847883558580487042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038722 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261223 (A028310 n).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A261222.P8847883558580487042

/-! ## A261222.P18244066795553460922

`A261223(A028310(n))+A242481(2*n+1)`
-/

namespace A261222.P18244066795553460922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261223 (A028310 n).toNat + A242481 (2 * n + 1)

end

end A261222.P18244066795553460922

/-! ## A261222.P15858101956206301461

`A276582(a(n-1))+1` with `a(0)=0`
-/

namespace A261222.P15858101956206301461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A276582 (a (n - 1)).toNat + 1

end

end A261222.P15858101956206301461

/-! ## A261222.P2221109673110352731

`A276582(record[A276582(n)])`
-/

namespace A261222.P2221109673110352731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276582 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276582 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A261222.P2221109673110352731

/-! ## A261222.P16119474332906372549

`A276582(A261223(n+1))`
-/

namespace A261222.P16119474332906372549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276582 (A261223 (n + 1)).toNat

end

end A261222.P16119474332906372549

/-! ## A261222.P17644532142162705403

`A276582(∑[A261224(n+1)]-A261224(n+1))`
-/

namespace A261222.P17644532142162705403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261224 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276582 (∑ j ∈ Finset.range (n + 1), f1 j - A261224 (n + 1)).toNat

end

end A261222.P17644532142162705403

/-! ## A261222.P2767004659314988001

`A276582(lt[0, Δ[A276582(n)]])`
-/

namespace A261222.P2767004659314988001
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276582 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276582 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A261222.P2767004659314988001

/-! ## A261222.P4930667125777156185

`lt[n, A276582(A276582(n)+1)]`
-/

namespace A261222.P4930667125777156185
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276582 (A276582 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A261222.P4930667125777156185

/-! ## A261222.P2498492749161142259

`A260731(A276573(A261221(n*n)))`
-/

namespace A261222.P2498492749161142259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260731 (A276573 (A261221 (n * n)).toNat).toNat

end

end A261222.P2498492749161142259

/-! ## A261222.P8567354483130451826

`A276582(A261221(n*(n+2)))`
-/

namespace A261222.P8567354483130451826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276582 (A261221 (n * (n + 2))).toNat

end

end A261222.P8567354483130451826

/-!
# A261223: a(n) = number of steps to reach 0 when starting from k = (n*n)-1 and repeatedly applying the map that replaces k with k - A053610(k), where A053610(k) = the number of positive squares that sum to k using the greedy algorithm.

The programs for A261223, there is no canonical definition to state claims against.
-/

/-! ## A261223.P5010070462006806392

`A261222(n+1)-1`
-/

namespace A261223.P5010070462006806392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261222 (n + 1) - 1

end

end A261223.P5010070462006806392

/-! ## A261223.P4533611160341240339

`A261221((n+1)²-1)`
-/

namespace A261223.P4533611160341240339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261221 ((n + 1) ^ 2 - 1)

end

end A261223.P4533611160341240339

/-! ## A261223.P16274077827115873516

`Δ[∑[A261222(n)]-n]`
-/

namespace A261223.P16274077827115873516
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261222 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A261223.P16274077827115873516

/-! ## A261223.P13050144198639894073

`∑[Δ[A261222(n)]%A081423(n)]`
-/

namespace A261223.P13050144198639894073
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261222 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (n + 1) - f2 n) (A081423 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A261223.P13050144198639894073

/-! ## A261223.P1262646234442837795

`∑[A261224(n+1)]-A261224(n+1)`
-/

namespace A261223.P1262646234442837795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261224 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A261224 (n + 1)

end

end A261223.P1262646234442837795

/-! ## A261223.P2777546520285469495

`(A261222(n+1)+A260733(n+1))%A260732(n+1)`
-/

namespace A261223.P2777546520285469495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A261222 (n + 1) + A260733 (n + 1)) (A260732 (n + 1))

end

end A261223.P2777546520285469495

/-! ## A261223.P7796178214228095046

`record[A276582(n)]`
-/

namespace A261223.P7796178214228095046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276582 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A261223.P7796178214228095046

/-! ## A261223.P11727309914676155827

`A276582(a(n-1)+1)` with `a(0)=0`
-/

namespace A261223.P11727309914676155827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A276582 (a (n - 1) + 1).toNat

end

end A261223.P11727309914676155827

/-! ## A261223.P1205914041813184478

`A276582(A261222(n))`
-/

namespace A261223.P1205914041813184478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276582 (A261222 n).toNat

end

end A261223.P1205914041813184478

/-! ## A261223.P11875608863111579747

`A023443(A261222(n+1))`
-/

namespace A261223.P11875608863111579747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A261222 (n + 1)).toNat

end

end A261223.P11875608863111579747

/-! ## A261223.P7971009022800141467

`lt[0, Δ[A276584(n)]]`
-/

namespace A261223.P7971009022800141467
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276584 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A261223.P7971009022800141467

/-! ## A261223.P2582245948357507561

`eq[1, Δ[A276581(n)]]`
-/

namespace A261223.P2582245948357507561
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276581 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A261223.P2582245948357507561

/-! ## A261223.P12102078250960325735

`lt[A276582(n), A276582(n+1)]`
-/

namespace A261223.P12102078250960325735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276582 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276582 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A261223.P12102078250960325735

/-! ## A261223.P14487760751404366048

`lt[A276584(n), A276584(n+1)]`
-/

namespace A261223.P14487760751404366048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276584 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276584 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A261223.P14487760751404366048

/-! ## A261223.P4134757102224758764

`A276582(∑[A261224(n+1)])-1`
-/

namespace A261223.P4134757102224758764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261224 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276582 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - 1

end

end A261223.P4134757102224758764

/-! ## A261223.P12627800601068245119

`lt[A276572(n), Δ[n*A276581(n)]]`
-/

namespace A261223.P12627800601068245119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276572 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A276581 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A261223.P12627800601068245119

/-! ## A261223.P18048948745772902892

`lt[(1-A002104(Δ[A276581(n)]))², 1]`
-/

namespace A261223.P18048948745772902892
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276581 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A002104 (f2 (n + 1) - f2 n).toNat) ^ 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A261223.P18048948745772902892

/-! ## A261223.P16239534919112642681

`lt[A001222(n+1), Δ[A276581(n)²]]`
-/

namespace A261223.P16239534919112642681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276581 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A261223.P16239534919112642681

/-! ## A261223.P1532420688410936547

`A276582(A261221(n²))`
-/

namespace A261223.P1532420688410936547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276582 (A261221 (n ^ 2)).toNat

end

end A261223.P1532420688410936547

/-!
# A261224: a(n) = number of steps needed to reach (n^2)-1 when starting from k = ((n+1)^2)-1 and repeatedly applying the map that replaces k with k - A053610(k), where A053610(k) = the number of positive squares that sum to k using the greedy algorithm.

The programs for A261224, there is no canonical definition to state claims against.
-/

/-! ## A261224.P15160622251756027720

`A261222(n+2)-A261222(n+1)`
-/

namespace A261224.P15160622251756027720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261222 (n + 2) - A261222 (n + 1)

end

end A261224.P15160622251756027720

/-! ## A261224.P6773196013630280361

`A261223(n+2)-A261223(n+1)`
-/

namespace A261224.P6773196013630280361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261223 (n + 2) - A261223 (n + 1)

end

end A261224.P6773196013630280361

/-! ## A261224.P4240120946833295564

`A261221((n+2)²)-A261221((n+1)²)`
-/

namespace A261224.P4240120946833295564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261221 ((n + 2) ^ 2) - A261221 ((n + 1) ^ 2)

end

end A261224.P4240120946833295564

/-! ## A261224.P9928072490808670091

`Δ[A261222(n+1)]`
-/

namespace A261224.P9928072490808670091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A261224.P9928072490808670091

/-! ## A261224.P11927618512995110622

`Δ[A261223(n+1)]`
-/

namespace A261224.P11927618512995110622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261223 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A261224.P11927618512995110622

/-! ## A261224.P3437341623347008418

`Δ[abs(∑[Δ[A261222(n)]%A081423(n)])]`
-/

namespace A261224.P3437341623347008418
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261222 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f3 (n + 1) - f3 n) (A081423 n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f2 j|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A261224.P3437341623347008418

/-! ## A261224.P1387299736094554914

`A110654(A261222(n+2)-A261222(n))`
-/

namespace A261224.P1387299736094554914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A261222 (n + 2) - A261222 n).toNat

end

end A261224.P1387299736094554914

/-! ## A261224.P252816411000636754

`A261223(n+2)-A276582(A261222(n))`
-/

namespace A261224.P252816411000636754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261223 (n + 2) - A276582 (A261222 n).toNat

end

end A261224.P252816411000636754

/-! ## A261224.P8394735319427979254

`Δ[record[A276582(n)]]`
-/

namespace A261224.P8394735319427979254
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276582 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A261224.P8394735319427979254

/-! ## A261224.P7743041613651441372

`Δ[A276582(A261222(n))]`
-/

namespace A261224.P7743041613651441372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276582 (A261222 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A261224.P7743041613651441372

/-! ## A261224.P10082621167558685674

`Δ[lt[A276582(n), A276582(n+1)]]`
-/

namespace A261224.P10082621167558685674
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276582 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276582 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A261224.P10082621167558685674

/-! ## A261224.P6912634910370549625

`Δ[lt[A276584(n), A276584(n+1)]]`
-/

namespace A261224.P6912634910370549625
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276584 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276584 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A261224.P6912634910370549625

/-!
# A261225: n minus the number of positive cubes needed to sum to n using the greedy algorithm: a(n) = n - A055401(n).

The programs for A261225, the canonical program `A261225.P9013570553216359185` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A261225 has offset 0).

The definition of A261225 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A261225.P9013570553216359185

`n-A055401(n)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A261225

/-- `n-A055401(n)` -/
def P9013570553216359185.Spec : Prop :=
  ∀ n, P9013570553216359185.a n = A261225 n

theorem P9013570553216359185.correct : P9013570553216359185.Spec := by
  intro n
  simp only [A261225]

end A261225

/-! ## A261225.P1899780927763396740

`n-∑{digits}[A000433(n), #]`
-/

namespace A261225.P1899780927763396740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000433 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum : ℕ) : ℤ)

end

end A261225.P1899780927763396740

namespace A261225

/-- `n-∑{digits}[A000433(n), #]` -/
def P1899780927763396740.Spec : Prop :=
  ∀ n, P1899780927763396740.a n = A261225 n

end A261225

/-! ## A261225.P16300750867948177472

`A001057(2*A055401(n))+n`
-/

namespace A261225.P16300750867948177472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (2 * A055401 n).toNat + (n : ℤ)

end

end A261225.P16300750867948177472

namespace A261225

/-- `A001057(2*A055401(n))+n` -/
def P16300750867948177472.Spec : Prop :=
  ∀ n, P16300750867948177472.a n = A261225 n

end A261225

/-! ## A261225.P2256435188659463389

`A001489(A055401(n)+1)+1+n`
-/

namespace A261225.P2256435188659463389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001489 (A055401 n + 1).toNat + 1 + (n : ℤ)

end

end A261225.P2256435188659463389

namespace A261225

/-- `A001489(A055401(n)+1)+1+n` -/
def P2256435188659463389.Spec : Prop :=
  ∀ n, P2256435188659463389.a n = A261225 n

end A261225

/-! ## A261225.P2678421623728035172

`-A055401(n)%A000203(n+1)+n`
-/

namespace A261225.P2678421623728035172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (-A055401 n) (A000203 (n + 1)) + (n : ℤ)

end

end A261225.P2678421623728035172

namespace A261225

/-- `-A055401(n)%A000203(n+1)+n` -/
def P2678421623728035172.Spec : Prop :=
  ∀ n, P2678421623728035172.a n = A261225 n

end A261225

/-! ## A261225.P11431499286191537275

`A016777(n)%(A055401(n)+A005408(n))`
-/

namespace A261225.P11431499286191537275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016777 n) (A055401 n + A005408 n)

end

end A261225.P11431499286191537275

namespace A261225

/-- `A016777(n)%(A055401(n)+A005408(n))` -/
def P11431499286191537275.Spec : Prop :=
  ∀ n, P11431499286191537275.a n = A261225 n

end A261225

/-! ## A261225.P14868382890610286300

`n-A007953(A000433(n))`
-/

namespace A261225.P14868382890610286300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A007953 (A000433 n).toNat

end

end A261225.P14868382890610286300

namespace A261225

/-- `n-A007953(A000433(n))` -/
def P14868382890610286300.Spec : Prop :=
  ∀ n, P14868382890610286300.a n = A261225 n

end A261225

/-! ## A261225.P4987921329922190752

`A053188(n+1+A055401(n)+n²)`
-/

namespace A261225.P4987921329922190752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053188 ((n + 1 : ℤ) + (A055401 n + (n ^ 2 : ℤ))).toNat

end

end A261225.P4987921329922190752

namespace A261225

/-- `A053188(n+1+A055401(n)+n²)` -/
def P4987921329922190752.Spec : Prop :=
  ∀ n, P4987921329922190752.a n = A261225 n

end A261225

/-!
# A261226: a(n) = number of steps to reach 0 when starting from k = n and repeatedly applying the map that replaces k with k - A055401(k), where A055401(k) = the number of positive cubes needed to sum to k using the greedy algorithm.

The programs for A261226, the canonical program `A261226.P5886764903879751177` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A261226 has offset 0).

The definition of A261226 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A261226.P5886764903879751177

`1+a(A261225(n))` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A261226

/-- `1+a(A261225(n))` -/
def P5886764903879751177.Spec : Prop :=
  ∀ n, (P5886764903879751177.a n : ℤ) = A261226 n

theorem P5886764903879751177.correct : P5886764903879751177.Spec := by
  intro n
  simp only [A261226]

end A261226

/-! ## A261226.P3186253085564792501

`a(A261225(n))+1` with `a(0)=0`
-/

namespace A261226.P3186253085564792501
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (A261225 n).toNat + 1

end

end A261226.P3186253085564792501

namespace A261226

/-- `a(A261225(n))+1` -/
def P3186253085564792501.Spec : Prop :=
  ∀ n, (P3186253085564792501.a n : ℤ) = A261226 n

end A261226

/-! ## A261226.P14129835524202718803

`a(n-A055401(n))+1` with `a(0)=0`
-/

namespace A261226.P14129835524202718803
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a ((n : ℤ) - A055401 n).toNat + 1

end

end A261226.P14129835524202718803

namespace A261226

/-- `a(n-A055401(n))+1` -/
def P14129835524202718803.Spec : Prop :=
  ∀ n, (P14129835524202718803.a n : ℤ) = A261226 n

end A261226

/-! ## A261226.P436141239295408552

`a(n-∑{digits}[A000433(n), #])+1` with `a(0)=0, a(1)=1`
-/

namespace A261226.P436141239295408552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000433 n

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum) + 1

end

end A261226.P436141239295408552

namespace A261226

/-- `a(n-∑{digits}[A000433(n), #])+1` -/
def P436141239295408552.Spec : Prop :=
  ∀ n, (P436141239295408552.a n : ℤ) = A261226 n

end A261226

/-! ## A261226.P13946105545368392339

`A003005(A003108(n))%A003037(n+1)`
-/

namespace A261226.P13946105545368392339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003005 (A003108 n).toNat) (A003037 (n + 1))

end

end A261226.P13946105545368392339

namespace A261226

/-- `A003005(A003108(n))%A003037(n+1)` -/
def P13946105545368392339.Spec : Prop :=
  ∀ n, P13946105545368392339.a n = A261226 n

end A261226

/-!
# A261227: a(n) = number of steps to reach 0 when starting from k = n^3 and repeatedly applying the map that replaces k with k - A055401(k), where A055401(k) = the number of positive cubes needed to sum to k using the greedy algorithm.

The programs for A261227, the canonical program `A261227.P15274673965007870817` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A261227 has offset 0).

The definition of A261227 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A261227.P4062954237135178390

`A261229(n-1)+a(n-1)` with `a(0)=0, a(1)=1, a(2)=2`
-/

namespace A261227.P4062954237135178390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2] fun n a =>
  A261229 (n - 1) + a (n - 1)

end

end A261227.P4062954237135178390

namespace A261227

/-- `A261229(n-1)+a(n-1)` -/
def P4062954237135178390.Spec : Prop :=
  ∀ n, P4062954237135178390.a n = A261227 n

end A261227

/-! ## A261227.P15274673965007870817

`A261226(n^3)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A261227

/-- `A261226(n^3)` -/
def P15274673965007870817.Spec : Prop :=
  ∀ n, P15274673965007870817.a n = A261227 n

theorem P15274673965007870817.correct : P15274673965007870817.Spec := by
  intro n
  simp only [A261227]

end A261227

/-! ## A261227.P11158661876910319342

`A261228(A028310(n))+A057427(n)`
-/

namespace A261227.P11158661876910319342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261228 (A028310 n).toNat + A057427 n

end

end A261227.P11158661876910319342

namespace A261227

/-- `A261228(A028310(n))+A057427(n)` -/
def P11158661876910319342.Spec : Prop :=
  ∀ n, P11158661876910319342.a n = A261227 n

end A261227

/-! ## A261227.P5947422576412877103

`A261228(A028310(n))-A057428(n)`
-/

namespace A261227.P5947422576412877103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261228 (A028310 n).toNat - A057428 n

end

end A261227.P5947422576412877103

namespace A261227

/-- `A261228(A028310(n))-A057428(n)` -/
def P5947422576412877103.Spec : Prop :=
  ∀ n, P5947422576412877103.a n = A261227 n

end A261227

/-! ## A261227.P1178212744736086477

`record[A261228(A344180(n))+A057427(n)]`
-/

namespace A261227.P1178212744736086477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261228 (A344180 n).toNat + A057427 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A261227.P1178212744736086477

namespace A261227

/-- `record[A261228(A344180(n))+A057427(n)]` -/
def P1178212744736086477.Spec : Prop :=
  ∀ n, P1178212744736086477.a n = A261227 n

end A261227

/-! ## A261227.P5523046295361843969

`record[A261228(A344180(n+1))+A066247(2*(n+1))]`
-/

namespace A261227.P5523046295361843969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261228 (A344180 (n + 1)).toNat + A066247 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A261227.P5523046295361843969

namespace A261227

/-- `record[A261228(A344180(n+1))+A066247(2*(n+1))]` -/
def P5523046295361843969.Spec : Prop :=
  ∀ n, P5523046295361843969.a n = A261227 n

end A261227

/-!
# A261228: a(n) = number of steps to reach 0 when starting from k = (n^3)-1 and repeatedly applying the map that replaces k with k - A055401(k), where A055401(k) = the number of positive cubes needed to sum to k using the greedy algorithm.

The programs for A261228, the canonical program `A261228.P14680234118456696822` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A261228 has offset 1).

The definition of A261228 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A261228.P15527073039580721676

`A261229(n)+a(n-1)` with `a(0)=0, a(1)=1`
-/

namespace A261228.P15527073039580721676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A261229 n + a (n - 1)

end

end A261228.P15527073039580721676

namespace A261228

/-- `A261229(n)+a(n-1)` -/
def P15527073039580721676.Spec : Prop :=
  ∀ n, P15527073039580721676.a n = A261228 (n + 1)

end A261228

/-! ## A261228.P14680234118456696822

`A261226((n+1)^3-1)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A261228

/-- `A261226((n+1)^3-1)` -/
def P14680234118456696822.Spec : Prop :=
  ∀ n, P14680234118456696822.a n = A261228 (n + 1)

theorem P14680234118456696822.correct : P14680234118456696822.Spec := by
  intro n
  simp only [A261228, Nat.add_sub_cancel]

end A261228

/-! ## A261228.P3051602998305982951

`A261227(n+1)-1`
-/

namespace A261228.P3051602998305982951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261227 (n + 1) - 1

end

end A261228.P3051602998305982951

namespace A261228

/-- `A261227(n+1)-1` -/
def P3051602998305982951.Spec : Prop :=
  ∀ n, P3051602998305982951.a n = A261228 (n + 1)

end A261228

/-! ## A261228.P738498866651653796

`Δ[∑[A261227(n)]-n]`
-/

namespace A261228.P738498866651653796
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261227 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A261228.P738498866651653796

namespace A261228

/-- `Δ[∑[A261227(n)]-n]` -/
def P738498866651653796.Spec : Prop :=
  ∀ n, P738498866651653796.a n = A261228 (n + 1)

end A261228

/-! ## A261228.P6374450771624094977

`∑[A261229(A028310(n))]-1`
-/

namespace A261228.P6374450771624094977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261229 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A261228.P6374450771624094977

namespace A261228

/-- `∑[A261229(A028310(n))]-1` -/
def P6374450771624094977.Spec : Prop :=
  ∀ n, P6374450771624094977.a n = A261228 (n + 1)

end A261228

/-! ## A261228.P14529478441600217953

`∑[A261229(n+1)]-A261229(n+1)`
-/

namespace A261228.P14529478441600217953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261229 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A261229 (n + 1)

end

end A261228.P14529478441600217953

namespace A261228

/-- `∑[A261229(n+1)]-A261229(n+1)` -/
def P14529478441600217953.Spec : Prop :=
  ∀ n, P14529478441600217953.a n = A261228 (n + 1)

end A261228

/-!
# A261229: a(n) = number of steps to reach (n^3)-1 when starting from k = ((n+1)^3)-1 and repeatedly applying the map that replaces k with k - A055401(k), where A055401(k) = the number of positive cubes needed to sum to k using the greedy algorithm.

The programs for A261229, the canonical program `A261229.P11187250923675357345` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A261229 has offset 1).

The definition of A261229 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A261229.P804333740183391269

`A261227(n+2)-A261227(n+1)`
-/

namespace A261229.P804333740183391269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261227 (n + 2) - A261227 (n + 1)

end

end A261229.P804333740183391269

namespace A261229

/-- `A261227(n+2)-A261227(n+1)` -/
def P804333740183391269.Spec : Prop :=
  ∀ n, P804333740183391269.a n = A261229 (n + 1)

end A261229

/-! ## A261229.P11187250923675357345

`A261228(n+2)-A261228(n+1)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A261229

/-- `A261228(n+2)-A261228(n+1)` -/
def P11187250923675357345.Spec : Prop :=
  ∀ n, P11187250923675357345.a n = A261229 (n + 1)

theorem P11187250923675357345.correct : P11187250923675357345.Spec := by
  intro n
  simp only [A261229, Nat.add_sub_cancel]

end A261229

/-! ## A261229.P13181139615714748267

`A261226((n+2)^3)-A261226((n+1)^3)`
-/

namespace A261229.P13181139615714748267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261226 ((n + 2) ^ 3) - A261226 ((n + 1) ^ 3)

end

end A261229.P13181139615714748267

namespace A261229

/-- `A261226((n+2)^3)-A261226((n+1)^3)` -/
def P13181139615714748267.Spec : Prop :=
  ∀ n, P13181139615714748267.a n = A261229 (n + 1)

end A261229

/-! ## A261229.P8528176870462467763

`Δ[A261227(n+1)]`
-/

namespace A261229.P8528176870462467763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261227 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A261229.P8528176870462467763

namespace A261229

/-- `Δ[A261227(n+1)]` -/
def P8528176870462467763.Spec : Prop :=
  ∀ n, P8528176870462467763.a n = A261229 (n + 1)

end A261229

/-! ## A261229.P16119741995111289905

`Δ[A261228(n+1)]`
-/

namespace A261229.P16119741995111289905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261228 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A261229.P16119741995111289905

namespace A261229

/-- `Δ[A261228(n+1)]` -/
def P16119741995111289905.Spec : Prop :=
  ∀ n, P16119741995111289905.a n = A261229 (n + 1)

theorem P16119741995111289905.correct : P16119741995111289905.Spec := by
  intro n
  simp only [A261229, Nat.add_sub_cancel, A261229.P16119741995111289905.f1, A261229.P16119741995111289905.a, A261229.P11187250923675357345.a, SequenceMachineLib.memo_apply]

end A261229

/-! ## A261229.P1005228633769826254

`Δ[Δ[∑[A261227(n)]-n]]`
-/

namespace A261229.P1005228633769826254
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261227 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j - (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A261229.P1005228633769826254

namespace A261229

/-- `Δ[Δ[∑[A261227(n)]-n]]` -/
def P1005228633769826254.Spec : Prop :=
  ∀ n, P1005228633769826254.a n = A261229 (n + 1)

end A261229

/-! ## A261229.P720638040400023292

`Δ[abs(A261227(Δ[n²]-n)-1)]`
-/

namespace A261229.P720638040400023292
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A261227 ((f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ)).toNat - 1|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A261229.P720638040400023292

namespace A261229

/-- `Δ[abs(A261227(Δ[n²]-n)-1)]` -/
def P720638040400023292.Spec : Prop :=
  ∀ n, P720638040400023292.a n = A261229 (n + 1)

end A261229

/-!
# A261230: a(n) = A261236(n) - A261237(n).

The programs for A261230, there is no canonical definition to state claims against.
-/

/-! ## A261230.P7436670708620385537

`A261236(n)-A261237(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A261230.P7436670708620385537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261236 n - A261237 n

end

end A261230.P7436670708620385537

/-! ## A261230.P10508657531973591945

`2*A261236(n)-A261234(n)`
-/

namespace A261230.P10508657531973591945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A261236 n - A261234 n

end

end A261230.P10508657531973591945

/-! ## A261230.P18364337625424826157

`A261234(n)-2*A261237(n)`
-/

namespace A261230.P18364337625424826157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261234 n - 2 * A261237 n

end

end A261230.P18364337625424826157

/-! ## A261230.P2024812938374892041

`2*A261236(n)-Δ[A261232(n)]`
-/

namespace A261230.P2024812938374892041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261232 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A261236 n - (f1 (n + 1) - f1 n)

end

end A261230.P2024812938374892041

/-! ## A261230.P10758657691377179210

`2*A261236(n)-Δ[A261233(n)]`
-/

namespace A261230.P10758657691377179210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261233 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A261236 n - (f1 (n + 1) - f1 n)

end

end A261230.P10758657691377179210

/-!
# A261231: a(n) = number of steps to reach 0 when starting from k = n and repeatedly applying the map that replaces k with k - (sum of digits in base-3 representation of k).

The programs for A261231, the canonical program `A261231.P7877899022308213173` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A261231 has offset 0).

The definition of A261231 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A261231.P7877899022308213173

`1+a(2*A054861(n))` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A261231

/-- `1+a(2*A054861(n))` -/
def P7877899022308213173.Spec : Prop :=
  ∀ n, (P7877899022308213173.a n : ℤ) = A261231 n

theorem P7877899022308213173.correct : P7877899022308213173.Spec := by
  intro n
  simp only [A261231]

end A261231

/-! ## A261231.P17085915570234388582

`a(A344853(n))+1` with `a(0)=0`
-/

namespace A261231.P17085915570234388582
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (A344853 n).toNat + 1

end

end A261231.P17085915570234388582

namespace A261231

/-- `a(A344853(n))+1` -/
def P17085915570234388582.Spec : Prop :=
  ∀ n, (P17085915570234388582.a n : ℤ) = A261231 n

end A261231

/-! ## A261231.P1164905655560370781

`a(2*A054861(n))+1` with `a(0)=0`
-/

namespace A261231.P1164905655560370781
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (2 * A054861 n).toNat + 1

end

end A261231.P1164905655560370781

namespace A261231

/-- `a(2*A054861(n))+1` -/
def P1164905655560370781.Spec : Prop :=
  ∀ n, (P1164905655560370781.a n : ℤ) = A261231 n

end A261231

/-! ## A261231.P3539118544433918919

`a(n-A053735(n))+1` with `a(0)=0`
-/

namespace A261231.P3539118544433918919
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a ((n : ℤ) - A053735 n).toNat + 1

end

end A261231.P3539118544433918919

namespace A261231

/-- `a(n-A053735(n))+1` -/
def P3539118544433918919.Spec : Prop :=
  ∀ n, (P3539118544433918919.a n : ℤ) = A261231 n

end A261231

/-! ## A261231.P18284898971043128313

`a(2*n-A230641(n))+1` with `a(0)=0`
-/

namespace A261231.P18284898971043128313
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a ((2 * n : ℤ) - A230641 n).toNat + 1

end

end A261231.P18284898971043128313

namespace A261231

/-- `a(2*n-A230641(n))+1` -/
def P18284898971043128313.Spec : Prop :=
  ∀ n, (P18284898971043128313.a n : ℤ) = A261231 n

end A261231

/-! ## A261231.P9090694092717228755

`a(n-∑{digits}[A007089(n), #])+1` with `a(0)=0`
-/

namespace A261231.P9090694092717228755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 n

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (n - ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum) + 1

end

end A261231.P9090694092717228755

namespace A261231

/-- `a(n-∑{digits}[A007089(n), #])+1` -/
def P9090694092717228755.Spec : Prop :=
  ∀ n, (P9090694092717228755.a n : ℤ) = A261231 n

end A261231

/-!
# A261232: a(n) = number of steps to reach 0 when starting from k = 3^n and repeatedly applying the map that replaces k with k - (sum of digits in base-3 representation of k).

The programs for A261232, the canonical program `A261232.P7381574163309701758` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A261232 has offset 0).

The definition of A261232 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A261232.P15766696171609169611

`1+A261233(n)`
-/

namespace A261232.P15766696171609169611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A261233 n

end

end A261232.P15766696171609169611

namespace A261232

/-- `1+A261233(n)` -/
def P15766696171609169611.Spec : Prop :=
  ∀ n, P15766696171609169611.a n = A261232 n

end A261232

/-! ## A261232.P16451857690762599741

`A261234(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A261232.P16451857690762599741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A261234 (n - 1) + a (n - 1)

end

end A261232.P16451857690762599741

namespace A261232

/-- `A261234(n-1)+a(n-1)` -/
def P16451857690762599741.Spec : Prop :=
  ∀ n, P16451857690762599741.a n = A261232 n

end A261232

/-! ## A261232.P7381574163309701758

`A261231(3^n)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A261232

/-- `A261231(3^n)` -/
def P7381574163309701758.Spec : Prop :=
  ∀ n, P7381574163309701758.a n = A261232 n

theorem P7381574163309701758.correct : P7381574163309701758.Spec := by
  intro n
  simp only [A261232]

end A261232

/-! ## A261232.P6754888406977886022

`∑[A261234(log2(ceil(2^(n-1))))]`
-/

namespace A261232.P6754888406977886022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261234 (SequenceMachineLib.roundAway (Real.logb 2 (⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A261232.P6754888406977886022

namespace A261232

/-- `∑[A261234(log2(ceil(2^(n-1))))]` -/
def P6754888406977886022.Spec : Prop :=
  ∀ n, P6754888406977886022.a n = A261232 n

end A261232

/-! ## A261232.P1329749884331375240

`A261233(n)-A280193(Δ[n²])`
-/

namespace A261232.P1329749884331375240
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261233 n - A280193 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A261232.P1329749884331375240

namespace A261232

/-- `A261233(n)-A280193(Δ[n²])` -/
def P1329749884331375240.Spec : Prop :=
  ∀ n, P1329749884331375240.a n = A261232 n

end A261232

/-!
# A261233: a(n) = number of steps to reach 0 when starting from k = (3^n)-1 and repeatedly applying the map that replaces k with k - (sum of digits in base-3 representation of k).

The programs for A261233, the canonical program `A261233.P9209519308442447348` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A261233 has offset 0).

The definition of A261233 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A261233.P1011579729501961411

`A261234(n-1)+a(n-1)` with `a(0)=0, a(1)=1`
-/

namespace A261233.P1011579729501961411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A261234 (n - 1) + a (n - 1)

end

end A261233.P1011579729501961411

namespace A261233

/-- `A261234(n-1)+a(n-1)` -/
def P1011579729501961411.Spec : Prop :=
  ∀ n, P1011579729501961411.a n = A261233 n

end A261233

/-! ## A261233.P9209519308442447348

`A261232(n)-1`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A261233

/-- `A261232(n)-1` -/
def P9209519308442447348.Spec : Prop :=
  ∀ n, P9209519308442447348.a n = A261233 n

theorem P9209519308442447348.correct : P9209519308442447348.Spec := by
  intro n
  simp only [A261233]

end A261233

/-! ## A261233.P7149632764481245595

`A261231(3^n-1)`
-/

namespace A261233.P7149632764481245595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261231 (3 ^ n - 1)

end

end A261233.P7149632764481245595

namespace A261233

/-- `A261231(3^n-1)` -/
def P7149632764481245595.Spec : Prop :=
  ∀ n, P7149632764481245595.a n = A261233 n

end A261233

/-! ## A261233.P2705264389084193757

`∑[A261234(log2(ceil(2^(n-1))))]-1`
-/

namespace A261233.P2705264389084193757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261234 (SequenceMachineLib.roundAway (Real.logb 2 (⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A261233.P2705264389084193757

namespace A261233

/-- `∑[A261234(log2(ceil(2^(n-1))))]-1` -/
def P2705264389084193757.Spec : Prop :=
  ∀ n, P2705264389084193757.a n = A261233 n

end A261233

/-! ## A261233.P18369197990331006034

`∑[A261234(n)]%A261234(n)`
-/

namespace A261233.P18369197990331006034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261234 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A261234 n)

end

end A261233.P18369197990331006034

namespace A261233

/-- `∑[A261234(n)]%A261234(n)` -/
def P18369197990331006034.Spec : Prop :=
  ∀ n, P18369197990331006034.a n = A261233 n

end A261233

/-!
# A261234: a(n) = number of steps to reach (3^n)-1 when starting from k = (3^(n+1))-1 and repeatedly applying the map that replaces k with k - (sum of digits in base-3 representation of k).

The programs for A261234, there is no canonical definition to state claims against.
-/

/-! ## A261234.P10310653490761472807

`A261236(n)+A261237(n)`
-/

namespace A261234.P10310653490761472807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261236 n + A261237 n

end

end A261234.P10310653490761472807

/-! ## A261234.P11443502771201013742

`∑[A261235(log2(ceil(2^(n-1))))]`
-/

namespace A261234.P11443502771201013742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261235 (SequenceMachineLib.roundAway (Real.logb 2 (⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A261234.P11443502771201013742

/-! ## A261234.P12657464859724349436

`A261235(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A261234.P12657464859724349436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A261235 (n - 1) + a (n - 1)

end

end A261234.P12657464859724349436

/-! ## A261234.P8758191306338209326

`∑[A261235(n)]+1-A261235(n)`
-/

namespace A261234.P8758191306338209326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261235 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A261235 n)

end

end A261234.P8758191306338209326

/-! ## A261234.P2813319733358435135

`Δ[A261233(n)]`
-/

namespace A261234.P2813319733358435135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261233 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A261234.P2813319733358435135

/-!
# A261235: First differences of A261234.

The programs for A261235, there is no canonical definition to state claims against.
-/

/-! ## A261235.P18049867793146763174

`A261234(n+1)-A261234(n)`
-/

namespace A261235.P18049867793146763174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261234 (n + 1) - A261234 n

end

end A261235.P18049867793146763174

/-! ## A261235.P4014395306600205125

`Δ[A261234(n)]`
-/

namespace A261235.P4014395306600205125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261234 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A261235.P4014395306600205125

/-! ## A261235.P5326347528946657529

`Δ[Δ[A261233(n)]]`
-/

namespace A261235.P5326347528946657529
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261233 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A261235.P5326347528946657529

/-! ## A261235.P2345822647200651117

`Δ[Δ[A261232(n)]]`
-/

namespace A261235.P2345822647200651117
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261232 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A261235.P2345822647200651117

/-! ## A261235.P6467350935504258603

`Δ[A261237(n)+A261236(n)]`
-/

namespace A261235.P6467350935504258603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261237 n + A261236 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A261235.P6467350935504258603

/-!
# A261236: a(n) = A261234(n) - A261237(n).

The programs for A261236, there is no canonical definition to state claims against.
-/

/-! ## A261236.P1571844534038569622

`A261234(n)-A261237(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A261236.P1571844534038569622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261234 n - A261237 n

end

end A261236.P1571844534038569622

/-! ## A261236.P13731120306328447494

`A261237(n)+A261230(n)`
-/

namespace A261236.P13731120306328447494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261237 n + A261230 n

end

end A261236.P13731120306328447494

/-! ## A261236.P5364841586886541185

`Δ[A261232(n)]-A261237(n)`
-/

namespace A261236.P5364841586886541185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261232 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A261237 n

end

end A261236.P5364841586886541185

/-! ## A261236.P9292863960816794063

`Δ[A261233(n)]-A261237(n)`
-/

namespace A261236.P9292863960816794063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261233 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A261237 n

end

end A261236.P9292863960816794063

/-! ## A261236.P13742025661470537446

`(A261234(n)+A261230(n))/2`
-/

namespace A261236.P13742025661470537446
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A261234 n + A261230 n : ℚ) / 2

end

end A261236.P13742025661470537446

/-!
# A261237: Number of steps needed when starting from (3^(n+1))-1 and repeatedly applying the map that replaces k with k - (sum of digits in base-3 representation of k) to encounter the first number whose base-3 representation begins with a digit other than 2.

The programs for A261237, there is no canonical definition to state claims against.
-/

/-! ## A261237.P16992441836587075752

`A261234(n)-A261236(n)`
-/

namespace A261237.P16992441836587075752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261234 n - A261236 n

end

end A261237.P16992441836587075752

/-! ## A261237.P6403928541576224058

`A261236(n)-A261230(n)`
-/

namespace A261237.P6403928541576224058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261236 n - A261230 n

end

end A261237.P6403928541576224058

/-! ## A261237.P4673990961436694751

`Δ[A261232(n)]-A261236(n)`
-/

namespace A261237.P4673990961436694751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261232 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A261236 n

end

end A261237.P4673990961436694751

/-! ## A261237.P8905066761339811155

`Δ[A261233(n)]-A261236(n)`
-/

namespace A261237.P8905066761339811155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261233 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A261236 n

end

end A261237.P8905066761339811155

/-! ## A261237.P16816519852950499735

`(A261234(n)-A261230(n))/2`
-/

namespace A261237.P16816519852950499735
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A261234 n - A261230 n : ℚ) / 2

end

end A261237.P16816519852950499735

/-!
# A261238: Number of transitive reflexive early confluent binary relations R on 2n labeled elements where max_{x}(|{y:xRy}|)=n.

The programs for A261238, there is no canonical definition to state claims against.
-/

/-! ## A261238.P2220679742152372202

`A135313(∑[4*n])`
-/

namespace A261238.P2220679742152372202
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135313 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A261238.P2220679742152372202

/-! ## A261238.P13670997193884270542

`A135313(A046092(n))+A025438(n)`
-/

namespace A261238.P13670997193884270542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135313 (A046092 n).toNat + A025438 n

end

end A261238.P13670997193884270542

/-! ## A261238.P16408853806024790509

`A135313(A046092(n))/A007318(∑[n])`
-/

namespace A261238.P16408853806024790509
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A135313 (A046092 n).toNat : ℚ) / (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A261238.P16408853806024790509

/-! ## A261238.P14390795546891729021

`A007318(C(n, 2))*A135313(A046092(n))`
-/

namespace A261238.P14390795546891729021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose n 2) * A135313 (A046092 n).toNat

end

end A261238.P14390795546891729021

/-! ## A261238.P2922048772892999853

`A135313(A046092(n))+A008683(8*n+4)`
-/

namespace A261238.P2922048772892999853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135313 (A046092 n).toNat + A008683 (8 * n + 4)

end

end A261238.P2922048772892999853

/-!
# A261241: One half of numbers representable in at least two different ways as sums of four nonvanishing cubes. See A259060 for these numbers and their representations.

The programs for A261241, the canonical program `A261241.P11956704635984135016` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A261241 has offset 0).

The definition of A261241 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A261241.P11956704635984135016

`(n+9)*(2*n²+36*n+357)`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A261241

/-- `(n+9)*(2*n²+36*n+357)` -/
def P11956704635984135016.Spec : Prop :=
  ∀ n, (P11956704635984135016.a n : ℤ) = A261241 n

theorem P11956704635984135016.correct : P11956704635984135016.Spec := by
  intro n
  simp only [A261241]

end A261241

/-! ## A261241.P16704637148393585461

`A259060(n)/2`
-/

namespace A261241.P16704637148393585461
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A259060 n : ℚ) / 2

end

end A261241.P16704637148393585461

namespace A261241

/-- `A259060(n)/2` -/
def P16704637148393585461.Spec : Prop :=
  ∀ n, P16704637148393585461.a n = (A261241 n : ℚ)

end A261241

/-! ## A261241.P18427486604511993997

`A014682(A259060(n))`
-/

namespace A261241.P18427486604511993997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A259060 n).toNat

end

end A261241.P18427486604511993997

namespace A261241

/-- `A014682(A259060(n))` -/
def P18427486604511993997.Spec : Prop :=
  ∀ n, P18427486604511993997.a n = A261241 n

end A261241

/-! ## A261241.P6395452127452403016

`A273943(lcm(2, A259060(n)))`
-/

namespace A261241.P6395452127452403016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (Int.lcm 2 (A259060 n))

end

end A261241.P6395452127452403016

namespace A261241

/-- `A273943(lcm(2, A259060(n)))` -/
def P6395452127452403016.Spec : Prop :=
  ∀ n, P6395452127452403016.a n = A261241 n

end A261241

/-! ## A261241.P3759548362115336779

`or(A000007(n), A273943(A259060(n)))`
-/

namespace A261241.P3759548362115336779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A273943 (A259060 n).toNat)

end

end A261241.P3759548362115336779

namespace A261241

/-- `or(A000007(n), A273943(A259060(n)))` -/
def P3759548362115336779.Spec : Prop :=
  ∀ n, P3759548362115336779.a n = A261241 n

end A261241

/-!
# A261243: Row lengths of the irregular triangles A258643 and A261242: maximal number of 0-islands (holes) of certain bisymmetric n X n matrices with 0 or 1 entries only.

The programs for A261243, the canonical program `A261243.P4016176119767243920` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A261243 has offset 1).

The definition of A261243 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A261243.P1663851334196161967

`∑[abs(or(1, 1-n))-char[1]]`
-/

namespace A261243.P1663851334196161967
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.lor 1 (1 - (n : ℤ))| - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A261243.P1663851334196161967

namespace A261243

/-- `∑[abs(or(1, 1-n))-char[1]]` -/
def P1663851334196161967.Spec : Prop :=
  ∀ n, P1663851334196161967.a n = A261243 (n + 1)

end A261243

/-! ## A261243.P12156205212112336021

`ceil(2/acot(n/2)²)-n`
-/

namespace A261243.P12156205212112336021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈2 / SequenceMachineLib.acot ((n : ℚ) / 2 : ℝ) ^ 2⌉ - (n : ℤ)

end

end A261243.P12156205212112336021

namespace A261243

/-- `ceil(2/acot(n/2)²)-n` -/
def P12156205212112336021.Spec : Prop :=
  ∀ n, P12156205212112336021.a n = A261243 (n + 1)

end A261243

/-! ## A261243.P4016176119767243920

`∑[a(n-2)+2]` with `a(0)=1, a(1)=0, a(2)=1, a(3)=1`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A261243

/-- `∑[a(n-2)+2]` -/
def P4016176119767243920.Spec : Prop :=
  ∀ n, (P4016176119767243920.a n : ℤ) = A261243 (n + 1)

theorem P4016176119767243920.correct : P4016176119767243920.Spec := by
  intro n
  simp only [A261243, Nat.add_sub_cancel]

end A261243

/-! ## A261243.P7890210210944469502

`round(∑[abs(abs(1-n)-1/2)])`
-/

namespace A261243.P7890210210944469502
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |((|1 - (n : ℤ)| : ℚ) - (1 : ℚ) / 2)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A261243.P7890210210944469502

namespace A261243

/-- `round(∑[abs(abs(1-n)-1/2)])` -/
def P7890210210944469502.Spec : Prop :=
  ∀ n, P7890210210944469502.a n = A261243 (n + 1)

end A261243

/-! ## A261243.P4083023318465678732

`∑[or(1, n)]-comp[2*(n+1)]`
-/

namespace A261243.P4083023318465678732
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℤ)

end

end A261243.P4083023318465678732

namespace A261243

/-- `∑[or(1, n)]-comp[2*(n+1)]` -/
def P4083023318465678732.Spec : Prop :=
  ∀ n, P4083023318465678732.a n = A261243 (n + 1)

end A261243

/-! ## A261243.P4960088692855653210

`a(n-1)+or(1, n-2)` with `a(0)=1, a(1)=1`
-/

namespace A261243.P4960088692855653210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) + Int.lor 1 ((n : ℤ) - 2)

end

end A261243.P4960088692855653210

namespace A261243

/-- `a(n-1)+or(1, n-2)` -/
def P4960088692855653210.Spec : Prop :=
  ∀ n, P4960088692855653210.a n = A261243 (n + 1)

end A261243

/-! ## A261243.P16114468147773501770

`n-1-or(1, -a(n-1))` with `a(0)=1`
-/

namespace A261243.P16114468147773501770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℤ) - 1 - Int.lor 1 (-a (n - 1))

end

end A261243.P16114468147773501770

namespace A261243

/-- `n-1-or(1, -a(n-1))` -/
def P16114468147773501770.Spec : Prop :=
  ∀ n, P16114468147773501770.a n = A261243 (n + 1)

end A261243

/-! ## A261243.P4930759512305374344

`∑[∑[2-a(n-1)]]` with `a(0)=1, a(1)=-1, a(2)=1, a(3)=0`
-/

namespace A261243.P4930759512305374344
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, -1, 1, 0] fun n f2 =>
  2 - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A261243.P4930759512305374344

namespace A261243

/-- `∑[∑[2-a(n-1)]]` -/
def P4930759512305374344.Spec : Prop :=
  ∀ n, P4930759512305374344.a n = A261243 (n + 1)

end A261243

/-! ## A261243.P5999334431669216359

`ogf((1-x+x^3+x^4)/(1-2x+2x^3-x^4))`
-/

namespace A261243.P5999334431669216359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, 0, 1, 1] [1, -2, 0, 2, -1] n

end

end A261243.P5999334431669216359

namespace A261243

/-- `ogf((1-x+x^3+x^4)/(1-2x+2x^3-x^4))` -/
def P5999334431669216359.Spec : Prop :=
  ∀ n, P5999334431669216359.a n = A261243 (n + 1)

end A261243

/-! ## A261243.P17635132362421100158

`a(n-2)+2*(n-2)` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A261243.P17635132362421100158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  a (n - 2) + 2 * ((n : ℤ) - 2)

end

end A261243.P17635132362421100158

namespace A261243

/-- `a(n-2)+2*(n-2)` -/
def P17635132362421100158.Spec : Prop :=
  ∀ n, P17635132362421100158.a n = A261243 (n + 1)

end A261243

/-! ## A261243.P7484559652054599993

`2*n-(4-a(n-2))` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A261243.P7484559652054599993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  (2 * n : ℤ) - (4 - a (n - 2))

end

end A261243.P7484559652054599993

namespace A261243

/-- `2*n-(4-a(n-2))` -/
def P7484559652054599993.Spec : Prop :=
  ∀ n, P7484559652054599993.a n = A261243 (n + 1)

end A261243

/-! ## A261243.P4748069304240669940

`a(n-2)-4+n+n` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A261243.P4748069304240669940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  a (n - 2) - 4 + (n : ℤ) + (n : ℤ)

end

end A261243.P4748069304240669940

namespace A261243

/-- `a(n-2)-4+n+n` -/
def P4748069304240669940.Spec : Prop :=
  ∀ n, P4748069304240669940.a n = A261243 (n + 1)

end A261243

/-! ## A261243.P5642051155804124409

`n-(4-a(n-2)-n)` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A261243.P5642051155804124409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  (n : ℤ) - (4 - a (n - 2) - (n : ℤ))

end

end A261243.P5642051155804124409

namespace A261243

/-- `n-(4-a(n-2)-n)` -/
def P5642051155804124409.Spec : Prop :=
  ∀ n, P5642051155804124409.a n = A261243 (n + 1)

end A261243

/-! ## A261243.P5773020947385974562

`A333574(n+1)-n`
-/

namespace A261243.P5773020947385974562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333574 (n + 1) - (n : ℤ)

end

end A261243.P5773020947385974562

namespace A261243

/-- `A333574(n+1)-n` -/
def P5773020947385974562.Spec : Prop :=
  ∀ n, P5773020947385974562.a n = A261243 (n + 1)

end A261243

/-! ## A261243.P16013441275672271771

`A061925((n-1)%(n+1))`
-/

namespace A261243.P16013441275672271771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061925 (Int.tmod ((n : ℤ) - 1) (n + 1 : ℤ)).toNat

end

end A261243.P16013441275672271771

namespace A261243

/-- `A061925((n-1)%(n+1))` -/
def P16013441275672271771.Spec : Prop :=
  ∀ n, P16013441275672271771.a n = A261243 (n + 1)

end A261243

/-! ## A261243.P7227149551683444288

`A267458(n)+a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A261243.P7227149551683444288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A267458 n + a (n - 1)

end

end A261243.P7227149551683444288

namespace A261243

/-- `A267458(n)+a(n-1)` -/
def P7227149551683444288.Spec : Prop :=
  ∀ n, P7227149551683444288.a n = A261243 (n + 1)

end A261243

/-! ## A261243.P8532701794290039242

`A118403(n)-a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A261243.P8532701794290039242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A118403 n - a (n - 1)

end

end A261243.P8532701794290039242

namespace A261243

/-- `A118403(n)-a(n-1)` -/
def P8532701794290039242.Spec : Prop :=
  ∀ n, P8532701794290039242.a n = A261243 (n + 1)

end A261243

/-! ## A261243.P9594470370998210413

`n²+2-A080476(n+1)`
-/

namespace A261243.P9594470370998210413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) + (2 - A080476 (n + 1))

end

end A261243.P9594470370998210413

namespace A261243

/-- `n²+2-A080476(n+1)` -/
def P9594470370998210413.Spec : Prop :=
  ∀ n, P9594470370998210413.a n = A261243 (n + 1)

end A261243

/-! ## A261243.P7229219269259210607

`floor(A089071(n+1)-n/2)`
-/

namespace A261243.P7229219269259210607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A089071 (n + 1) : ℚ) - (n : ℚ) / 2⌋

end

end A261243.P7229219269259210607

namespace A261243

/-- `floor(A089071(n+1)-n/2)` -/
def P7229219269259210607.Spec : Prop :=
  ∀ n, P7229219269259210607.a n = A261243 (n + 1)

end A261243

/-! ## A261243.P16377020410166447899

`∑[n-A000032(a(n%2))]` with `a(0)=1, a(1)=0`
-/

namespace A261243.P16377020410166447899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  (n : ℤ) - A000032 (f1 (n % 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A261243.P16377020410166447899

namespace A261243

/-- `∑[n-A000032(a(n%2))]` -/
def P16377020410166447899.Spec : Prop :=
  ∀ n, P16377020410166447899.a n = A261243 (n + 1)

end A261243

/-!
# A261244: Row sums of A261242: number of connected binary bisymmetric n X n matrices B with B[1,1] = 1 = B[2,2].

The programs for A261244, there is no canonical definition to state claims against.
-/

/-! ## A261244.P4237562169882086794

`A330668(n)+Δ[∏[abs(or(1, -n))]]`
-/

namespace A261244.P4237562169882086794
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.lor 1 (-(n : ℤ))|

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330668 n + (f1 (n + 1) - f1 n)

end

end A261244.P4237562169882086794

/-!
# A261245: The 21 palindromic divisors of the palindrome 12345678987654321.

The programs for A261245, there is no canonical definition to state claims against.
-/

/-! ## A261245.P2820103900684867969

`∏{e}[A037992(n), A107136(#)]`
-/

namespace A261245.P2820103900684867969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037992 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A107136 (Nat.factorization (f1 n).natAbs p)

end

end A261245.P2820103900684867969

/-! ## A261245.P4196216813752845106

`∏{e}[A037992(n), A129962(#)]`
-/

namespace A261245.P4196216813752845106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037992 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A129962 (Nat.factorization (f1 n).natAbs p)

end

end A261245.P4196216813752845106

/-! ## A261245.P13145990172543011359

`∏{e}[A037992(n), A151051(#)]`
-/

namespace A261245.P13145990172543011359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037992 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A151051 (Nat.factorization (f1 n).natAbs p)

end

end A261245.P13145990172543011359

/-! ## A261245.P1503907621631590530

`∏{e}[A037992(n), A180168(#)]`
-/

namespace A261245.P1503907621631590530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037992 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A180168 (Nat.factorization (f1 n).natAbs p)

end

end A261245.P1503907621631590530

/-!
# A261246: Positive integers D such that the generalized Pell equation X^2 - D Y^2 = 2 is soluble.

The programs for A261246, there is no canonical definition to state claims against.
-/

/-! ## A261246.P10159595522400180380

`A264354(n+1)/4`
-/

namespace A261246.P10159595522400180380
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A264354 (n + 1) : ℚ) / 4

end

end A261246.P10159595522400180380

/-! ## A261246.P13051687235808035247

`A002265(A264354(n+1))`
-/

namespace A261246.P13051687235808035247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A264354 (n + 1)).toNat

end

end A261246.P13051687235808035247

/-! ## A261246.P15320518176160299461

`A008624(A264354(n+1)+1)`
-/

namespace A261246.P15320518176160299461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008624 (A264354 (n + 1) + 1).toNat

end

end A261246.P15320518176160299461

/-! ## A261246.P7553125482702235274

`A025480(A264354(n+1)+1)`
-/

namespace A261246.P7553125482702235274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A264354 (n + 1) + 1).toNat

end

end A261246.P7553125482702235274

/-! ## A261246.P5061145545810897466

`A059169(A264354(n+1)+1)`
-/

namespace A261246.P5061145545810897466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059169 (A264354 (n + 1) + 1).toNat

end

end A261246.P5061145545810897466

/-!
# A261247: Positive fundamental solution x(n) of the generalized Pell equation X^2 - D(n) Y(n) = 2 with D(n) = A261246(n).

The programs for A261247, there is no canonical definition to state claims against.
-/

/-! ## A261247.P5191193750872389287

`ceil(sqrt(A261246(n+1))*A261248(n+1))`
-/

namespace A261247.P5191193750872389287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A261246 (n + 1) : ℝ) * (A261248 (n + 1) : ℝ)⌉

end

end A261247.P5191193750872389287

/-! ## A261247.P1676370116159969245

`A002349(A261246(n+1))/A261248(n+1)`
-/

namespace A261247.P1676370116159969245
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002349 (A261246 (n + 1)).toNat : ℚ) / (A261248 (n + 1) : ℚ)

end

end A261247.P1676370116159969245

/-! ## A261247.P9916898668494632608

`ceil(sqrt(A264354(n+1)/4)*A261248(n+1))`
-/

namespace A261247.P9916898668494632608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt ((A264354 (n + 1) : ℚ) / 4 : ℝ) * (A261248 (n + 1) : ℝ)⌉

end

end A261247.P9916898668494632608

/-! ## A261247.P16459347485372326472

`gcd(A002349(A261246(n+1)), A264438(n+1))`
-/

namespace A261247.P16459347485372326472
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002349 (A261246 (n + 1)).toNat) (A264438 (n + 1))

end

end A261247.P16459347485372326472

/-! ## A261247.P14973380102947946200

`A002349(A264354(n+1)/4)/A261248(n+1)`
-/

namespace A261247.P14973380102947946200
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002349 (SequenceMachineLib.roundAway ((A264354 (n + 1) : ℚ) / 4)).toNat : ℚ) / (A261248 (n + 1) : ℚ)

end

end A261247.P14973380102947946200

/-!
# A261248: Positive fundamental solution y(n) of the generalized Pell equation X^2 - D(n) Y(n) = 2 with D(n) = A261246(n).

The programs for A261248, there is no canonical definition to state claims against.
-/

/-! ## A261248.P4862505988752762102

`floor(A261247(n+1)/sqrt(A261246(n+1)))`
-/

namespace A261248.P4862505988752762102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A261247 (n + 1) : ℝ) / Real.sqrt (A261246 (n + 1) : ℝ)⌋

end

end A261248.P4862505988752762102

/-! ## A261248.P4808067187751850263

`A002349(A261246(n+1))/A261247(n+1)`
-/

namespace A261248.P4808067187751850263
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002349 (A261246 (n + 1)).toNat : ℚ) / (A261247 (n + 1) : ℚ)

end

end A261248.P4808067187751850263

/-! ## A261248.P9912302385135029584

`A264439(n+1)%(A261247(n+1)+1)`
-/

namespace A261248.P9912302385135029584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A264439 (n + 1)) (A261247 (n + 1) + 1)

end

end A261248.P9912302385135029584

/-! ## A261248.P13514476146079140114

`floor(A261247(n+1)/sqrt(A264354(n+1)/4))`
-/

namespace A261248.P13514476146079140114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A261247 (n + 1) : ℝ) / Real.sqrt ((A264354 (n + 1) : ℚ) / 4 : ℝ)⌋

end

end A261248.P13514476146079140114

/-! ## A261248.P8320657033551081681

`gcd(A002349(A261246(n+1)), A264439(n+1))`
-/

namespace A261248.P8320657033551081681
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002349 (A261246 (n + 1)).toNat) (A264439 (n + 1))

end

end A261248.P8320657033551081681

/-!
# A261249: Number of classes of proper solutions of the Pell equation x^2 - D(n) y^2 = +4 for D(n) = A079896(n), n >= 1.

The programs for A261249, there is no canonical definition to state claims against.
-/

/-! ## A261249.P13276911210144645781

`A010872(lcm(A005041(n), A078830(n+1)))`
-/

namespace A261249.P13276911210144645781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010872 (Int.lcm (A005041 n) (A078830 (n + 1)))

end

end A261249.P13276911210144645781

/-! ## A261249.P95088918111423269

`A248806(A362377(3*n+2)+A143717(n+1))`
-/

namespace A261249.P95088918111423269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248806 (A362377 (3 * n + 2) + A143717 (n + 1)).toNat

end

end A261249.P95088918111423269

/-! ## A261249.P18237474301466294236

`A368199(A392126(n+2))`
-/

namespace A261249.P18237474301466294236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368199 (A392126 (n + 2)).toNat

end

end A261249.P18237474301466294236

/-! ## A261249.P11287607262862538333

`A083093(A319451(n+4)+∑[A250119(3*n+2)])`
-/

namespace A261249.P11287607262862538333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250119 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083093 (A319451 (n + 4) + ∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A261249.P11287607262862538333

/-!
# A261250: One half of the even entries of A033317.

The programs for A261250, there is no canonical definition to state claims against.
-/

/-! ## A261250.P16701884176508505839

`A002349(A007969(n+1))/2`
-/

namespace A261250.P16701884176508505839
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002349 (A007969 (n + 1)).toNat : ℚ) / 2

end

end A261250.P16701884176508505839

/-! ## A261250.P16457414118586997414

`A002349(4*A007969(n+1))`
-/

namespace A261250.P16457414118586997414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002349 (4 * A007969 (n + 1)).toNat

end

end A261250.P16457414118586997414

/-! ## A261250.P15429690647014462218

`A006703(4*A007969(n+1))`
-/

namespace A261250.P15429690647014462218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006703 (4 * A007969 (n + 1)).toNat

end

end A261250.P15429690647014462218

/-! ## A261250.P13869444822895649400

`A002349(eq[1, A007968(n)])/2`
-/

namespace A261250.P13869444822895649400
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007968 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002349 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) : ℚ) / 2

end

end A261250.P13869444822895649400

/-! ## A261250.P9922134431737617654

`A006703(4*eq[1, A007968(n)])`
-/

namespace A261250.P9922134431737617654
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007968 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006703 (4 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A261250.P9922134431737617654

/-! ## A261250.P5040984960981729941

`A263006(n+1)*A263007(n+1)`
-/

namespace A261250.P5040984960981729941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263006 (n + 1) * A263007 (n + 1)

end

end A261250.P5040984960981729941

/-! ## A261250.P4325668086587840198

`ceil(A262025(n+1)/sqrt(A007969(n+1)))`
-/

namespace A261250.P4325668086587840198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A262025 (n + 1) : ℝ) / Real.sqrt (A007969 (n + 1) : ℝ)⌉

end

end A261250.P4325668086587840198

/-! ## A261250.P2811234325335986691

`lcm(A263006(A000027(n+1)), A263007(n+1))`
-/

namespace A261250.P2811234325335986691
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A263006 (A000027 (n + 1)).toNat) (A263007 (n + 1))

end

end A261250.P2811234325335986691

/-!
# A261251: Expansion of f(-x, -x) * f(-x^3, -x^15) / f(-x^6, -x^12)^2 in powers of x where f(,) is Ramanujan's general theta function.

The programs for A261251, there is no canonical definition to state claims against.
-/

/-! ## A261251.P16439412594719866230

`-(n+1)%3*A112176(n+1)`
-/

namespace A261251.P16439412594719866230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (-(n + 1 : ℤ)) 3 * A112176 (n + 1)

end

end A261251.P16439412594719866230

/-! ## A261251.P13700831903891114686

`(n+1)%3*A182038(A005408(n))`
-/

namespace A261251.P13700831903891114686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n + 1) % 3 : ℕ) : ℤ) * A182038 (A005408 n).toNat

end

end A261251.P13700831903891114686

/-! ## A261251.P12592395088136956298

`(A102283(n)+1)*A182038(A005408(n))`
-/

namespace A261251.P12592395088136956298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A102283 n + 1) * A182038 (A005408 n).toNat

end

end A261251.P12592395088136956298

/-!
# A261252: Expansion of f(-x^3) * f(-x^6) / (f(x) * f(-x^4)) in powers of x where f() is a Ramanujan theta function.

The programs for A261252, there is no canonical definition to state claims against.
-/

/-! ## A261252.P1278530956637064246

`A261251(3*n)`
-/

namespace A261252.P1278530956637064246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261251 (3 * n)

end

end A261252.P1278530956637064246

/-! ## A261252.P15998548890929141096

`A058487(3*n+1)/2`
-/

namespace A261252.P15998548890929141096
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A058487 (3 * n + 1) : ℚ) / 2

end

end A261252.P15998548890929141096

/-! ## A261252.P6476542617595076061

`A113306(6*n+1)`
-/

namespace A261252.P6476542617595076061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113306 (6 * n + 1)

end

end A261252.P6476542617595076061

/-! ## A261252.P18282719629120642004

`A182038(6*n+1)`
-/

namespace A261252.P18282719629120642004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182038 (6 * n + 1)

end

end A261252.P18282719629120642004

/-! ## A261252.P5056893988506239010

`A128143(A271114(n))`
-/

namespace A261252.P5056893988506239010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128143 (A271114 n).toNat

end

end A261252.P5056893988506239010

/-! ## A261252.P5669814483093433461

`A128145(A008458(n)+1)`
-/

namespace A261252.P5669814483093433461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128145 (A008458 n + 1).toNat

end

end A261252.P5669814483093433461

/-!
# A261255: Where MU-numbers (cf. A007335) occur in A003586 (3-smooth numbers).

The programs for A261255, there is no canonical definition to state claims against.
-/

/-! ## A261255.P13144976094930024696

`A322026(A007335(n+1))`
-/

namespace A261255.P13144976094930024696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322026 (A007335 (n + 1)).toNat

end

end A261255.P13144976094930024696

/-! ## A261255.P11011323154986343269

`A071521(A301461(n)+A007335(n+1))`
-/

namespace A261255.P11011323154986343269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071521 (A301461 n + A007335 (n + 1)).toNat

end

end A261255.P11011323154986343269

/-! ## A261255.P12568041228575498015

`A071521(A301506(n)+A007335(n+1))`
-/

namespace A261255.P12568041228575498015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071521 (A301506 n + A007335 (n + 1)).toNat

end

end A261255.P12568041228575498015

/-! ## A261255.P1865533766005772896

`A071521(A022329(n+1)+A007335(n+1))`
-/

namespace A261255.P1865533766005772896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071521 (A022329 (n + 1) + A007335 (n + 1)).toNat

end

end A261255.P1865533766005772896

/-! ## A261255.P9111311442454793729

`A071521(A064559(n+1)+A007335(n+1))`
-/

namespace A261255.P9111311442454793729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071521 (A064559 (n + 1) + A007335 (n + 1)).toNat

end

end A261255.P9111311442454793729

/-!
# A261256: Let S_k denote the sequence of numbers j such that A001222(j) - A001221(j) = k. Then a(n) is the n-th term of S_n.

The programs for A261256, there is no canonical definition to state claims against.
-/

/-! ## A261256.P12276562919425025744

`A257851(∑[n+2]-1)`
-/

namespace A261256.P12276562919425025744
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257851 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A261256.P12276562919425025744

/-! ## A261256.P3231163102494219351

`lcm(2, A257851(A034856(n+1)))`
-/

namespace A261256.P3231163102494219351
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A257851 (A034856 (n + 1)).toNat)

end

end A261256.P3231163102494219351

/-! ## A261256.P7828723437238055831

`record[A257851(n+3)/A105809(n+4)]`
-/

namespace A261256.P7828723437238055831
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A257851 (n + 3) : ℚ) / (A105809 (n + 4) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A261256.P7828723437238055831

/-! ## A261256.P6144918972229733734

`A007318(∑[n])*A257851(A034856(n+1))`
-/

namespace A261256.P6144918972229733734
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A257851 (A034856 (n + 1)).toNat

end

end A261256.P6144918972229733734

/-! ## A261256.P9506276449583551269

`A257851(A034856(n+1))+A000007(n+2)`
-/

namespace A261256.P9506276449583551269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257851 (A034856 (n + 1)).toNat + A000007 (n + 2)

end

end A261256.P9506276449583551269

/-!
# A261257: Number of (n+2)X(n+2) 0..1 arrays with each 3X3 subblock having clockwise perimeter pattern 00010101 00100101 or 01010101.

The programs for A261257, there is no canonical definition to state claims against.
-/

/-! ## A261257.P15729673754575442064

`A261265(∑[4*n]+1)`
-/

namespace A261257.P15729673754575442064
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261265 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A261257.P15729673754575442064

/-! ## A261257.P2101597111727570549

`record[A003982(n)*A261265(n+1)]`
-/

namespace A261257.P2101597111727570549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A261265 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A261257.P2101597111727570549

/-! ## A261257.P14943444957669203381

`record[root(A261265(n+1), A143182(n))]`
-/

namespace A261257.P14943444957669203381
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A261265 (n + 1) : ℝ) ^ (1 / (A143182 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A261257.P14943444957669203381

/-! ## A261257.P12606739946187701622

`record[gcd(A114327(n), A261265(n+1))]`
-/

namespace A261257.P12606739946187701622
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A261265 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A261257.P12606739946187701622

/-! ## A261257.P13400951984914942166

`A261265(A001844(n))^or(1, n%2)`
-/

namespace A261257.P13400951984914942166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261265 (A001844 n).toNat ^ Nat.lor 1 (n % 2)

end

end A261257.P13400951984914942166

/-!
# A261258: Number of (n+2) X (1+2) 0..1 arrays with each 3 X 3 subblock having clockwise perimeter pattern 00010101 00100101 or 01010101.

The programs for A261258, there is no canonical definition to state claims against.
-/

/-! ## A261258.P12561649835677361686

`A261265(∑[n]+1)`
-/

namespace A261258.P12561649835677361686
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261265 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A261258.P12561649835677361686

/-! ## A261258.P16794962405549610003

`record[A010054(n)*A261265(n+1)]`
-/

namespace A261258.P16794962405549610003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A261265 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A261258.P16794962405549610003

/-! ## A261258.P14365281835628641082

`record[A261265(n+1)/A086645(n)]`
-/

namespace A261258.P14365281835628641082
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A261265 (n + 1) : ℚ) / (A086645 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A261258.P14365281835628641082

/-! ## A261258.P18212831930533968998

`record[gcd(A002262(n), A261265(n+1))]`
-/

namespace A261258.P18212831930533968998
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A261265 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A261258.P18212831930533968998

/-! ## A261258.P1507295345930735654

`record[A261265(n+1)/A019538(n+1)]`
-/

namespace A261258.P1507295345930735654
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A261265 (n + 1) : ℚ) / (A019538 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A261258.P1507295345930735654

/-!
# A261259: Number of (n+2) X (2+2) 0..1 arrays with each 3 X 3 subblock having clockwise perimeter pattern 00010101 00100101 or 01010101.

The programs for A261259, the canonical program `A261259.P5853628507145760282` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A261259 has offset 1).

The definition of A261259 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 360 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A261259.P5853628507145760282

`a(n-1)+2*a(n-3)+a(n-4)+2*a(n-5)` with `a(0)=41, a(1)=52, a(2)=110, a(3)=232, a(4)=418, a(5)=758`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A261259

/-- `a(n-1)+2*a(n-3)+a(n-4)+2*a(n-5)` -/
def P5853628507145760282.Spec : Prop :=
  ∀ n, (P5853628507145760282.a n : ℤ) = A261259 (n + 1)

theorem P5853628507145760282.correct : P5853628507145760282.Spec := by
  intro n
  simp only [A261259, Nat.add_sub_cancel]

end A261259

/-! ## A261259.P12079887504704909267

`A261265(∑[n+1]+2)`
-/

namespace A261259.P12079887504704909267
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261265 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A261259.P12079887504704909267

namespace A261259

/-- `A261265(∑[n+1]+2)` -/
def P12079887504704909267.Spec : Prop :=
  ∀ n, P12079887504704909267.a n = A261259 (n + 1)

end A261259

/-! ## A261259.P494005063526715182

`record[A010054(n)*A261265(n+2)]`
-/

namespace A261259.P494005063526715182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A261265 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A261259.P494005063526715182

namespace A261259

/-- `record[A010054(n)*A261265(n+2)]` -/
def P494005063526715182.Spec : Prop :=
  ∀ n, P494005063526715182.a n = A261259 (n + 1)

end A261259

/-! ## A261259.P6276973705297293290

`record[gcd(A002262(n), A261265(n+2))]`
-/

namespace A261259.P6276973705297293290
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A261265 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A261259.P6276973705297293290

namespace A261259

/-- `record[gcd(A002262(n), A261265(n+2))]` -/
def P6276973705297293290.Spec : Prop :=
  ∀ n, (P6276973705297293290.a n : ℤ) = A261259 (n + 1)

end A261259

/-! ## A261259.P7439342379393998641

`A261265(A000096(n)+3)%A261261(n+1)`
-/

namespace A261259.P7439342379393998641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A261265 (A000096 n + 3).toNat) (A261261 (n + 1))

end

end A261259.P7439342379393998641

namespace A261259

/-- `A261265(A000096(n)+3)%A261261(n+1)` -/
def P7439342379393998641.Spec : Prop :=
  ∀ n, P7439342379393998641.a n = A261259 (n + 1)

end A261259

/-!
# A261260: Number of (n+2) X (3+2) 0..1 arrays with each 3 X 3 subblock having clockwise perimeter pattern 00010101 00100101 or 01010101.

The programs for A261260, there is no canonical definition to state claims against.
-/

/-! ## A261260.P1728462843663053357

`A261265(∑[n+2]+4)`
-/

namespace A261260.P1728462843663053357
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261265 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A261260.P1728462843663053357

/-! ## A261260.P10052005827075657663

`A063435(n)*A261265(A167614(n+1))`
-/

namespace A261260.P10052005827075657663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063435 n * A261265 (A167614 (n + 1)).toNat

end

end A261260.P10052005827075657663

/-! ## A261260.P8271577220260749265

`lcm(A000034(n), A261265(A167614(n+1)))`
-/

namespace A261260.P8271577220260749265
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000034 n) (A261265 (A167614 (n + 1)).toNat)

end

end A261260.P8271577220260749265

/-! ## A261260.P13672596902220795640

`or(A000007(n), A261265(A167614(n+1)))`
-/

namespace A261260.P13672596902220795640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A261265 (A167614 (n + 1)).toNat)

end

end A261260.P13672596902220795640

/-! ## A261260.P7790787518473616457

`or(A000038(n), A261265(A167614(n+1)))`
-/

namespace A261260.P7790787518473616457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000038 n) (A261265 (A167614 (n + 1)).toNat)

end

end A261260.P7790787518473616457

/-!
# A261261: Number of (n+2)X(4+2) 0..1 arrays with each 3X3 subblock having clockwise perimeter pattern 00010101 00100101 or 01010101.

The programs for A261261, there is no canonical definition to state claims against.
-/

/-! ## A261261.P17237567870572761309

`A261265(A374004(n+1))`
-/

namespace A261261.P17237567870572761309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261265 (A374004 (n + 1)).toNat

end

end A261261.P17237567870572761309

/-! ## A261261.P3913407933028977177

`A261265(A055999(n)+10)`
-/

namespace A261261.P3913407933028977177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261265 (A055999 n + 10).toNat

end

end A261261.P3913407933028977177

/-! ## A261261.P14637808358379140451

`A261265(A167614(n+2)+1)`
-/

namespace A261261.P14637808358379140451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261265 (A167614 (n + 2) + 1).toNat

end

end A261261.P14637808358379140451

/-! ## A261261.P11289620006596450216

`A261265(A080036(A167614(n+1)))`
-/

namespace A261261.P11289620006596450216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261265 (A080036 (A167614 (n + 1)).toNat).toNat

end

end A261261.P11289620006596450216

/-! ## A261261.P18338164317974728625

`A261265(A027379(n+2))`
-/

namespace A261261.P18338164317974728625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261265 (A027379 (n + 2)).toNat

end

end A261261.P18338164317974728625

/-!
# A261262: Number of (n+2)X(5+2) 0..1 arrays with each 3X3 subblock having clockwise perimeter pattern 00010101 00100101 or 01010101.

The programs for A261262, there is no canonical definition to state claims against.
-/

/-! ## A261262.P9785066356386292079

`A261265(A374005(n+1))`
-/

namespace A261262.P9785066356386292079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261265 (A374005 (n + 1)).toNat

end

end A261262.P9785066356386292079

/-! ## A261262.P8849923232231617528

`A261265(A167499(n+3))`
-/

namespace A261262.P8849923232231617528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261265 (A167499 (n + 3)).toNat

end

end A261262.P8849923232231617528

/-! ## A261262.P18043321763221675515

`A261265(A000217(n+4)+5)`
-/

namespace A261262.P18043321763221675515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261265 (A000217 (n + 4) + 5).toNat

end

end A261262.P18043321763221675515

/-! ## A261262.P15528772778229923081

`A261265(A052905(n+1)+10)`
-/

namespace A261262.P15528772778229923081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261265 (A052905 (n + 1) + 10).toNat

end

end A261262.P15528772778229923081

/-! ## A261262.P13301185467557044890

`A261265(A020710(n)+A055999(n)+10)`
-/

namespace A261262.P13301185467557044890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261265 (A020710 n + (A055999 n + 10)).toNat

end

end A261262.P13301185467557044890

/-!
# A261263: Number of (n+2)X(6+2) 0..1 arrays with each 3X3 subblock having clockwise perimeter pattern 00010101 00100101 or 01010101.

The programs for A261263, there is no canonical definition to state claims against.
-/

/-! ## A261263.P4509643591525471238

`A261265(A374007(n+1))`
-/

namespace A261263.P4509643591525471238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261265 (A374007 (n + 1)).toNat

end

end A261263.P4509643591525471238

/-! ## A261263.P10737498970352307748

`A261265(A000217(n+5)+6)`
-/

namespace A261263.P10737498970352307748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261265 (A000217 (n + 5) + 6).toNat

end

end A261263.P10737498970352307748

/-! ## A261263.P16162715013528271515

`A261265(A027379(n+3)+9)`
-/

namespace A261263.P16162715013528271515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261265 (A027379 (n + 3) + 9).toNat

end

end A261263.P16162715013528271515

/-! ## A261263.P13706542831446204633

`A261265(A046691(n+3)+10)`
-/

namespace A261263.P13706542831446204633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261265 (A046691 (n + 3) + 10).toNat

end

end A261263.P13706542831446204633

/-! ## A261263.P9326410983657173850

`A261265(A034856(n+2)+A020742(n+5))`
-/

namespace A261263.P9326410983657173850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261265 (A034856 (n + 2) + A020742 (n + 5)).toNat

end

end A261263.P9326410983657173850

/-!
# A261264: Number of (n+2)X(7+2) 0..1 arrays with each 3X3 subblock having clockwise perimeter pattern 00010101 00100101 or 01010101.

The programs for A261264, there is no canonical definition to state claims against.
-/

/-! ## A261264.P823563031412133663

`A261265(A374008(n+1))`
-/

namespace A261264.P823563031412133663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261265 (A374008 (n + 1)).toNat

end

end A261264.P823563031412133663

/-! ## A261264.P2403677980170153676

`A261265(A056119(n)+28)`
-/

namespace A261264.P2403677980170153676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261265 (A056119 n + 28).toNat

end

end A261264.P2403677980170153676

/-! ## A261264.P11226238590944624475

`A261265(A253145(n+5)+7)`
-/

namespace A261264.P11226238590944624475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261265 (A253145 (n + 5) + 7).toNat

end

end A261264.P11226238590944624475

/-! ## A261264.P1200934637728549950

`A261265(A000217(n+6)+7)`
-/

namespace A261264.P1200934637728549950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261265 (A000217 (n + 6) + 7).toNat

end

end A261264.P1200934637728549950

/-! ## A261264.P1516742456013230615

`A261265(A027379(n+4)+10)`
-/

namespace A261264.P1516742456013230615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261265 (A027379 (n + 4) + 10).toNat

end

end A261264.P1516742456013230615

/-!
# A261266: Expansion of ((x-1/2)*(1/sqrt(8*x^2-8*x+1)+1)-x)/(x-1).

The programs for A261266, there is no canonical definition to state claims against.
-/

/-! ## A261266.P12823250843154586077

`ceil(∑[(n+1)*A068764(n)]/2)`
-/

namespace A261266.P12823250843154586077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A068764 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2⌉

end

end A261266.P12823250843154586077

/-! ## A261266.P6601116441640374460

`∑[(A028310(n)+1)*A068764(n)]/2`
-/

namespace A261266.P6601116441640374460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A028310 n + 1) * A068764 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A261266.P6601116441640374460

/-! ## A261266.P17480405354008623701

`∑[(A123108(2*n)+1)*A068764(n)/2]`
-/

namespace A261266.P17480405354008623701
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A123108 (2 * n) + 1) * A068764 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A261266.P17480405354008623701

/-! ## A261266.P14171085873363644095

`∑[(A000007(n)+1+n)*A068764(n)]/2`
-/

namespace A261266.P14171085873363644095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000007 n + 1 + (n : ℤ)) * A068764 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A261266.P14171085873363644095

/-! ## A261266.P8141866227865916747

`∑[(A014963(4*n+2)+n)*A068764(n)]/2`
-/

namespace A261266.P8141866227865916747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A014963 (4 * n + 2) + (n : ℤ)) * A068764 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A261266.P8141866227865916747

/-! ## A261266.P14877227685208411161

`∑[(A025581(C(2*n, 2)+n)+2)*A068764(n)]/2`
-/

namespace A261266.P14877227685208411161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A025581 (Nat.choose (2 * n) 2 + n) + 2) * A068764 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A261266.P14877227685208411161

/-!
# A261267: Primes having only {0, 2, 7} as digits.

The programs for A261267, there is no canonical definition to state claims against.
-/

/-! ## A261267.P496634557959248441

`∩[A386051(n+1), A386053(n+1)]`
-/

namespace A261267.P496634557959248441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386051 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386053 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A261267.P496634557959248441

/-! ## A261267.P8420612556359951117

`∩[A386047(n+1), A386049(n+1)]`
-/

namespace A261267.P8420612556359951117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386047 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386049 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A261267.P8420612556359951117

/-! ## A261267.P5261769407698737534

`∩[A386047(n+1), A386051(n+1)]`
-/

namespace A261267.P5261769407698737534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386047 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386051 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A261267.P5261769407698737534

/-! ## A261267.P17336342360258511195

`∩[A386047(n+1), A386053(n+1)]`
-/

namespace A261267.P17336342360258511195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386047 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386053 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A261267.P17336342360258511195

/-! ## A261267.P15629838087211215141

`∩[A386049(n+1), A386051(n+1)]`
-/

namespace A261267.P15629838087211215141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386049 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386051 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A261267.P15629838087211215141

/-! ## A261267.P5645911980652763331

`∩[A386049(n+1), A386053(n+1)]`
-/

namespace A261267.P5645911980652763331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386049 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386053 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A261267.P5645911980652763331

/-! ## A261267.P16603522745667571550

`∩[A386047(n+1), A386054(n+1)]`
-/

namespace A261267.P16603522745667571550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386047 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386054 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A261267.P16603522745667571550

/-! ## A261267.P5239699943844407827

`∩[A386049(n+1), A386054(n+1)]`
-/

namespace A261267.P5239699943844407827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386049 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386054 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A261267.P5239699943844407827

/-! ## A261267.P4851263290047840021

`∩[A386051(n+1), A386054(n+1)]`
-/

namespace A261267.P4851263290047840021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386051 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386054 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A261267.P4851263290047840021

/-! ## A261267.P7187296342247920640

`∩[A386053(n+1), A386054(n+1)]`
-/

namespace A261267.P7187296342247920640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386053 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386054 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A261267.P7187296342247920640

/-! ## A261267.P10274798037606686110

`∩[A386044(n+1), A386047(n+1)]`
-/

namespace A261267.P10274798037606686110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386044 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386047 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A261267.P10274798037606686110

/-! ## A261267.P1951130039587824577

`∩[A386044(n+1), A386049(n+1)]`
-/

namespace A261267.P1951130039587824577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386044 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386049 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A261267.P1951130039587824577

/-! ## A261267.P14688175497335721832

`∩[A386044(n+1), A386051(n+1)]`
-/

namespace A261267.P14688175497335721832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386044 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386051 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A261267.P14688175497335721832

/-! ## A261267.P15919217098012183068

`∩[A386044(n+1), A386053(n+1)]`
-/

namespace A261267.P15919217098012183068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386044 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386053 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A261267.P15919217098012183068

/-! ## A261267.P15285877614405395891

`∩[A386044(n+1), A386054(n+1)]`
-/

namespace A261267.P15285877614405395891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386044 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386054 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A261267.P15285877614405395891

/-! ## A261267.P7714830825383065027

`∩[A386020(n+1), A386044(n+1)]`
-/

namespace A261267.P7714830825383065027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386020 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386044 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A261267.P7714830825383065027

/-! ## A261267.P15255897208612405208

`∩[A386020(n+1), A386047(n+1)]`
-/

namespace A261267.P15255897208612405208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386020 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386047 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A261267.P15255897208612405208

/-! ## A261267.P9947682230163043315

`∩[A386020(n+1), A386049(n+1)]`
-/

namespace A261267.P9947682230163043315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386020 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386049 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A261267.P9947682230163043315

/-! ## A261267.P4667350656578720756

`∩[A386020(n+1), A386051(n+1)]`
-/

namespace A261267.P4667350656578720756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386020 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386051 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A261267.P4667350656578720756

/-! ## A261267.P5508071927789522227

`∩[A386020(n+1), A386053(n+1)]`
-/

namespace A261267.P5508071927789522227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386020 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386053 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A261267.P5508071927789522227

/-!
# A261268: Primes having only {0, 2, 9} as digits.

The programs for A261268, there is no canonical definition to state claims against.
-/

/-! ## A261268.P11461524321708717149

`∩[A386048(n+1), A386055(n+1)]`
-/

namespace A261268.P11461524321708717149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386048 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386055 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A261268.P11461524321708717149

/-! ## A261268.P10336099227416390871

`∩[A386048(n+1), A386050(n+1)]`
-/

namespace A261268.P10336099227416390871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386048 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386050 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A261268.P10336099227416390871

/-! ## A261268.P18286074259929830348

`∩[A386050(n+1), A386055(n+1)]`
-/

namespace A261268.P18286074259929830348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386050 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386055 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A261268.P18286074259929830348

/-! ## A261268.P4021857210952238811

`∩[A386048(n+1), A386052(n+1)]`
-/

namespace A261268.P4021857210952238811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386048 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386052 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A261268.P4021857210952238811

/-! ## A261268.P16036011545293541360

`∩[A386050(n+1), A386052(n+1)]`
-/

namespace A261268.P16036011545293541360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386050 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386052 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A261268.P16036011545293541360

/-! ## A261268.P4314778295644880578

`∩[A386052(n+1), A386055(n+1)]`
-/

namespace A261268.P4314778295644880578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386052 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386055 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A261268.P4314778295644880578

/-! ## A261268.P5634753866922235593

`∩[A386046(n+1), A386048(n+1)]`
-/

namespace A261268.P5634753866922235593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386046 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386048 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A261268.P5634753866922235593

/-! ## A261268.P5218862834551016034

`∩[A386046(n+1), A386050(n+1)]`
-/

namespace A261268.P5218862834551016034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386046 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386050 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A261268.P5218862834551016034

/-! ## A261268.P17155266244317057534

`∩[A386046(n+1), A386052(n+1)]`
-/

namespace A261268.P17155266244317057534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386046 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386052 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A261268.P17155266244317057534

/-! ## A261268.P3067424473234761763

`∩[A386046(n+1), A386054(n+1)]`
-/

namespace A261268.P3067424473234761763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386046 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386054 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A261268.P3067424473234761763

/-! ## A261268.P4560457473426879318

`∩[A386046(n+1), A386055(n+1)]`
-/

namespace A261268.P4560457473426879318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386046 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386055 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A261268.P4560457473426879318

/-! ## A261268.P3860838162696281967

`∩[A386048(n+1), A386054(n+1)]`
-/

namespace A261268.P3860838162696281967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386048 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386054 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A261268.P3860838162696281967

/-! ## A261268.P17120685026642760772

`∩[A386050(n+1), A386054(n+1)]`
-/

namespace A261268.P17120685026642760772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386050 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386054 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A261268.P17120685026642760772

/-! ## A261268.P4298399121506310935

`∩[A386052(n+1), A386054(n+1)]`
-/

namespace A261268.P4298399121506310935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386052 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386054 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A261268.P4298399121506310935

/-! ## A261268.P2814061160872097730

`∩[A386054(n+1), A386055(n+1)]`
-/

namespace A261268.P2814061160872097730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386054 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386055 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A261268.P2814061160872097730

/-! ## A261268.P9083371282946066794

`∩[A386022(n+1), A386046(n+1)]`
-/

namespace A261268.P9083371282946066794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386046 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A261268.P9083371282946066794

/-! ## A261268.P4555338338899785879

`∩[A386022(n+1), A386048(n+1)]`
-/

namespace A261268.P4555338338899785879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386048 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A261268.P4555338338899785879

/-! ## A261268.P15593363297104240214

`∩[A386022(n+1), A386050(n+1)]`
-/

namespace A261268.P15593363297104240214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386050 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A261268.P15593363297104240214

/-! ## A261268.P923453675271192334

`∩[A386022(n+1), A386052(n+1)]`
-/

namespace A261268.P923453675271192334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386052 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A261268.P923453675271192334

/-! ## A261268.P17264854249056995707

`∩[A386022(n+1), A386054(n+1)]`
-/

namespace A261268.P17264854249056995707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386054 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A261268.P17264854249056995707

/-!
# A261269: Minimal prime concatenation sequence with base 2 and seed 11.

The programs for A261269, there is no canonical definition to state claims against.
-/

/-! ## A261269.P13940548233543421992

`A007088(A261270(n+1))`
-/

namespace A261269.P13940548233543421992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A261270 (n + 1)).toNat

end

end A261269.P13940548233543421992

/-! ## A261269.P6918292368074002698

`A007088(p?[A208241(a(n-1))])` with `a(0)=3`
-/

namespace A261269.P6918292368074002698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f1 =>
  A208241 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A261269.P6918292368074002698

/-! ## A261269.P1671120867906024386

`A185544(2*A261270(n+1))`
-/

namespace A261269.P1671120867906024386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A261270 (n + 1)).toNat

end

end A261269.P1671120867906024386

/-!
# A261270: Base-10 representation of A261269.

The programs for A261270, there is no canonical definition to state claims against.
-/

/-! ## A261270.P16589873463524123018

`p?[or(floor(sqrt(5)*2^n), floor(ϕ*2^n))]`
-/

namespace A261270.P16589873463524123018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ⌊Real.sqrt (5 : ℝ) * (2 ^ n : ℝ)⌋ ⌊Real.goldenRatio * (2 ^ n : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A261270.P16589873463524123018

/-! ## A261270.P6841566039461039415

`A208241(a(n-1))` with `a(0)=3`
-/

namespace A261270.P6841566039461039415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A208241 (a (n - 1)).toNat

end

end A261270.P6841566039461039415

/-! ## A261270.P8058807444963043902

`p?[floor((A251764(n+1)-1)/2)]`
-/

namespace A261270.P8058807444963043902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A251764 (n + 1) - 1 : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A261270.P8058807444963043902

/-!
# A261271: a(n) = a(n-1)-1+p, where p is the smallest prime number that is not a factor of a(n-1)-1.

The programs for A261271, there is no canonical definition to state claims against.
-/

/-! ## A261271.P3115830476078959789

`A079578(a(n-1)-1)` with `a(0)=1, a(1)=2`
-/

namespace A261271.P3115830476078959789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A079578 (a (n - 1) - 1).toNat

end

end A261271.P3115830476078959789

/-! ## A261271.P14344865987768000436

`record[A123882(n+1)]`
-/

namespace A261271.P14344865987768000436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123882 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A261271.P14344865987768000436

/-! ## A261271.P4168036740266833193

`A123882(a(n-1)+1)` with `a(0)=1`
-/

namespace A261271.P4168036740266833193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A123882 (a (n - 1) + 1).toNat

end

end A261271.P4168036740266833193

/-! ## A261271.P2631721535961358376

`A085229(a(n-1)+1)` with `a(0)=1, a(1)=2, a(2)=3`
-/

namespace A261271.P2631721535961358376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3] fun n a =>
  A085229 (a (n - 1) + 1).toNat

end

end A261271.P2631721535961358376

/-! ## A261271.P534172617343111519

`A123882(lt[n, A123882(n+1)]+1)`
-/

namespace A261271.P534172617343111519
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123882 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123882 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A261271.P534172617343111519

/-! ## A261271.P16565839229630944985

`record[xor(A085229(n+1), A171386(n+1))]`
-/

namespace A261271.P16565839229630944985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A085229 (n + 1)) (A171386 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A261271.P16565839229630944985

/-! ## A261271.P5385615158637682525

`A123882(eq[1, gcd(n, A123882(n+1))]+1)`
-/

namespace A261271.P5385615158637682525
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A123882 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123882 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A261271.P5385615158637682525

/-!
# A261272: From higher-order Bernoulli numbers: denominator of the D-number D2n(2n-1).

The programs for A261272, there is no canonical definition to state claims against.
-/

/-! ## A261272.P15715475440058014696

`A002265(lcm(8*n+12, A085222(n+2)))`
-/

namespace A261272.P15715475440058014696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (Int.lcm (8 * n + 12 : ℤ) (A085222 (n + 2)))

end

end A261272.P15715475440058014696

/-! ## A261272.P11908083460769519365

`gcd(A001147(n+4), A005563(A084639(2*(n+1))))`
-/

namespace A261272.P11908083460769519365
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001147 (n + 4)) (A005563 (A084639 (2 * (n + 1))).toNat)

end

end A261272.P11908083460769519365

/-!
# A261273: a(n) is the (prime(n)+1)-th term of Stern-Brocot sequence, A002487.

The programs for A261273, the canonical program `A261273.P13419199438936783095` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A261273 has offset 1).

The definition of A261273 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008864, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A261273.P13419199438936783095

`A002487(A008864(n+1))`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A261273

/-- `A002487(A008864(n+1))` -/
def P13419199438936783095.Spec : Prop :=
  ∀ n, P13419199438936783095.a n = A261273 (n + 1)

theorem P13419199438936783095.correct : P13419199438936783095.Spec := by
  intro n
  simp only [A261273, Nat.add_sub_cancel]

end A261273

/-! ## A261273.P1487126694067094475

`A002487(A057024(n+1))`
-/

namespace A261273.P1487126694067094475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A057024 (n + 1)).toNat

end

end A261273.P1487126694067094475

namespace A261273

/-- `A002487(A057024(n+1))` -/
def P1487126694067094475.Spec : Prop :=
  ∀ n, P1487126694067094475.a n = A261273 (n + 1)

end A261273

/-! ## A261273.P121085014115232726

`A114214(A159006(n+1))`
-/

namespace A261273.P121085014115232726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114214 (A159006 (n + 1)).toNat

end

end A261273.P121085014115232726

namespace A261273

/-- `A114214(A159006(n+1))` -/
def P121085014115232726.Spec : Prop :=
  ∀ n, P121085014115232726.a n = A261273 (n + 1)

end A261273

/-! ## A261273.P9216359559817294177

`A324293(A000040(n+1))`
-/

namespace A261273.P9216359559817294177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324293 (A000040 (n + 1)).toNat

end

end A261273.P9216359559817294177

namespace A261273

/-- `A324293(A000040(n+1))` -/
def P9216359559817294177.Spec : Prop :=
  ∀ n, P9216359559817294177.a n = A261273 (n + 1)

end A261273

/-! ## A261273.P3912092570561238843

`A324338(A143292(n+1))`
-/

namespace A261273.P3912092570561238843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324338 (A143292 (n + 1)).toNat

end

end A261273.P3912092570561238843

namespace A261273

/-- `A324338(A143292(n+1))` -/
def P3912092570561238843.Spec : Prop :=
  ∀ n, P3912092570561238843.a n = A261273 (n + 1)

end A261273

/-! ## A261273.P15930046008972423622

`A392671(A084421(n+1))`
-/

namespace A261273.P15930046008972423622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392671 (A084421 (n + 1)).toNat

end

end A261273.P15930046008972423622

namespace A261273

/-- `A392671(A084421(n+1))` -/
def P15930046008972423622.Spec : Prop :=
  ∀ n, P15930046008972423622.a n = A261273 (n + 1)

end A261273

/-! ## A261273.P15054956722361393088

`A002487(p?[abs(xor(n, -2))]+1)`
-/

namespace A261273.P15054956722361393088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (n : ℤ) (-2)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1).toNat

end

end A261273.P15054956722361393088

namespace A261273

/-- `A002487(p?[abs(xor(n, -2))]+1)` -/
def P15054956722361393088.Spec : Prop :=
  ∀ n, P15054956722361393088.a n = A261273 (n + 1)

end A261273

/-! ## A261273.P10936920345355623026

`A002487(p?[xor(1, n)+1]+1)`
-/

namespace A261273.P10936920345355623026
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) + 1)

end

end A261273.P10936920345355623026

namespace A261273

/-- `A002487(p?[xor(1, n)+1]+1)` -/
def P10936920345355623026.Spec : Prop :=
  ∀ n, P10936920345355623026.a n = A261273 (n + 1)

end A261273

/-! ## A261273.P6851978229274122950

`A002487(p?[n%3+n]+1)`
-/

namespace A261273.P6851978229274122950
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 3 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) + 1)

end

end A261273.P6851978229274122950

namespace A261273

/-- `A002487(p?[n%3+n]+1)` -/
def P6851978229274122950.Spec : Prop :=
  ∀ n, P6851978229274122950.a n = A261273 (n + 1)

end A261273

/-! ## A261273.P4190876066857036211

`A002487(p?[round(sqrt(n)+n)]+1)`
-/

namespace A261273.P4190876066857036211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (n : ℝ) + (n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1).toNat

end

end A261273.P4190876066857036211

namespace A261273

/-- `A002487(p?[round(sqrt(n)+n)]+1)` -/
def P4190876066857036211.Spec : Prop :=
  ∀ n, P4190876066857036211.a n = A261273 (n + 1)

end A261273

/-! ## A261273.P5881067870019128411

`A002487(∑{d}[p?[n-(-1)^n], #])`
-/

namespace A261273.P5881067870019128411
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (-1) ^ n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (∑ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A261273.P5881067870019128411

namespace A261273

/-- `A002487(∑{d}[p?[n-(-1)^n], #])` -/
def P5881067870019128411.Spec : Prop :=
  ∀ n, P5881067870019128411.a n = A261273 (n + 1)

end A261273

/-! ## A261273.P4147614284052729982

`A002487(A028815(n+1))`
-/

namespace A261273.P4147614284052729982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A028815 (n + 1)).toNat

end

end A261273.P4147614284052729982

namespace A261273

/-- `A002487(A028815(n+1))` -/
def P4147614284052729982.Spec : Prop :=
  ∀ n, P4147614284052729982.a n = A261273 (n + 1)

end A261273

/-! ## A261273.P11441054763369736424

`A002487(A306591(n+1))`
-/

namespace A261273.P11441054763369736424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A306591 (n + 1)).toNat

end

end A261273.P11441054763369736424

namespace A261273

/-- `A002487(A306591(n+1))` -/
def P11441054763369736424.Spec : Prop :=
  ∀ n, P11441054763369736424.a n = A261273 (n + 1)

end A261273

/-! ## A261273.P6196968422328678482

`A002487(A000040(n+1)+1)`
-/

namespace A261273.P6196968422328678482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A000040 (n + 1) + 1).toNat

end

end A261273.P6196968422328678482

namespace A261273

/-- `A002487(A000040(n+1)+1)` -/
def P6196968422328678482.Spec : Prop :=
  ∀ n, P6196968422328678482.a n = A261273 (n + 1)

end A261273

/-! ## A261273.P1209211107678521037

`A002487(A008578(n+2)+1)`
-/

namespace A261273.P1209211107678521037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A008578 (n + 2) + 1).toNat

end

end A261273.P1209211107678521037

namespace A261273

/-- `A002487(A008578(n+2)+1)` -/
def P1209211107678521037.Spec : Prop :=
  ∀ n, P1209211107678521037.a n = A261273 (n + 1)

end A261273

/-! ## A261273.P16895369419525692302

`A002487(A014692(n+1)+n+1)`
-/

namespace A261273.P16895369419525692302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A014692 (n + 1) + (n + 1 : ℤ)).toNat

end

end A261273.P16895369419525692302

namespace A261273

/-- `A002487(A014692(n+1)+n+1)` -/
def P16895369419525692302.Spec : Prop :=
  ∀ n, P16895369419525692302.a n = A261273 (n + 1)

end A261273

/-! ## A261273.P10391494903323656871

`A295515(2*p?[abs(xor(n, -2))]+2)`
-/

namespace A261273.P10391494903323656871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (n : ℤ) (-2)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295515 (2 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 2).toNat

end

end A261273.P10391494903323656871

namespace A261273

/-- `A295515(2*p?[abs(xor(n, -2))]+2)` -/
def P10391494903323656871.Spec : Prop :=
  ∀ n, P10391494903323656871.a n = A261273 (n + 1)

end A261273

/-! ## A261273.P8748167613892487919

`A002487(2*(p?[round(8*n/7)]+1))`
-/

namespace A261273.P8748167613892487919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (2 * (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1)).toNat

end

end A261273.P8748167613892487919

namespace A261273

/-- `A002487(2*(p?[round(8*n/7)]+1))` -/
def P8748167613892487919.Spec : Prop :=
  ∀ n, P8748167613892487919.a n = A261273 (n + 1)

end A261273

/-! ## A261273.P10262986322573156845

`A002487(A089241(n+1))`
-/

namespace A261273.P10262986322573156845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A089241 (n + 1)).toNat

end

end A261273.P10262986322573156845

namespace A261273

/-- `A002487(A089241(n+1))` -/
def P10262986322573156845.Spec : Prop :=
  ∀ n, P10262986322573156845.a n = A261273 (n + 1)

end A261273

/-! ## A261273.P17326903003059333798

`A070990(A037168(n+1))`
-/

namespace A261273.P17326903003059333798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070990 (A037168 (n + 1)).toNat

end

end A261273.P17326903003059333798

namespace A261273

/-- `A070990(A037168(n+1))` -/
def P17326903003059333798.Spec : Prop :=
  ∀ n, P17326903003059333798.a n = A261273 (n + 1)

end A261273

/-!
# A261274: From higher-order Bernoulli numbers: denominator of D Number D2n(2n).

The programs for A261274, there is no canonical definition to state claims against.
-/

/-! ## A261274.P4156669015066519982

`(A002444(n)/A001316(n))%A141214(n)²²`
-/

namespace A261274.P4156669015066519982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A002444 n : ℚ) / (A001316 n : ℚ))) ((A141214 n ^ 2) ^ 2)

end

end A261274.P4156669015066519982

/-! ## A261274.P3392229880146405501

`(A002444(n)/A001316(n))^A003557(A028387(n))`
-/

namespace A261274.P3392229880146405501
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A002444 n : ℚ) / (A001316 n : ℚ)) ^ (A003557 (A028387 n).toNat : ℤ)

end

end A261274.P3392229880146405501

/-! ## A261274.P6923775623470544182

`A000007(A079239(n+1))+A002444(n)/A001316(n)`
-/

namespace A261274.P6923775623470544182
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000007 (A079239 (n + 1)).toNat : ℚ) + (A002444 n : ℚ) / (A001316 n : ℚ)

end

end A261274.P6923775623470544182

/-! ## A261274.P5126452609943448824

`A003415(A088733(n+1))/A001316(n)*A002444(n)`
-/

namespace A261274.P5126452609943448824
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003415 (A088733 (n + 1)).toNat : ℚ) / (A001316 n : ℚ) * (A002444 n : ℚ)

end

end A261274.P5126452609943448824

/-! ## A261274.P17765373059821215723

`A000027(A002444(n)/A001316(n))`
-/

namespace A261274.P17765373059821215723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.roundAway ((A002444 n : ℚ) / (A001316 n : ℚ))).toNat

end

end A261274.P17765373059821215723

/-!
# A261275: Number of set partitions C_t(n) of {1,2,...,t} into at most n parts, with an even number of elements in each part distinguished by marks; triangle C_t(n), t>=0, 0<=n<=t, read by rows.

The programs for A261275, there is no canonical definition to state claims against.
-/

/-! ## A261275.P16541912661707023468

`A048766(lcm(A295721(n), A319501(n)))`
-/

namespace A261275.P16541912661707023468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (Int.lcm (A295721 n) (A319501 n))

end

end A261275.P16541912661707023468

/-! ## A261275.P2583472536170225422

`A048766((A295721(n)+2)*A319501(n))`
-/

namespace A261275.P2583472536170225422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 ((A295721 n + 2) * A319501 n).toNat

end

end A261275.P2583472536170225422

/-! ## A261275.P6980341333071945498

`A087027(A211402(n))%A000037(n+1)`
-/

namespace A261275.P6980341333071945498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A087027 (A211402 n).toNat) (A000037 (n + 1))

end

end A261275.P6980341333071945498

/-!
# A261276: 100-gonal numbers: a(n) = 98*n*(n-1)/2 + n.

The programs for A261276, the canonical program `A261276.P17625478948207297640` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A261276 has offset 0).

The definition of A261276 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `98*n*(n-1)/2+n` (program `A261276.P12795287629155029316`, by `A261276.P12795287629155029316.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A261276.P17625478948207297640

`n*(49*n-48)`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A261276

/-- `n*(49*n-48)` -/
def P17625478948207297640.Spec : Prop :=
  ∀ n, P17625478948207297640.a n = A261276 n

theorem P17625478948207297640.correct : P17625478948207297640.Spec := by
  intro n
  simp only [A261276]

end A261276

/-! ## A261276.P12795287629155029316

`98*n*(n-1)/2+n`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A261276.P12795287629155029316
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((98 * n : ℤ) * ((n : ℤ) - 1) : ℚ) / 2 + (n : ℚ)

end

end A261276.P12795287629155029316

namespace A261276

/-- `98*n*(n-1)/2+n` -/
def P12795287629155029316.Spec : Prop :=
  ∀ n, P12795287629155029316.a n = (A261276 n : ℚ)

theorem P12795287629155029316.correct : P12795287629155029316.Spec := by
  intro n
  simp only [A261276, Nat.add_sub_cancel, A261276.P12795287629155029316.a, A261276.P17625478948207297640.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A261276

/-! ## A261276.P6270533452618130194

`∑[a(n-1)+98]` with `a(0)=0, a(1)=1`
-/

namespace A261276.P6270533452618130194
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  f1 (n - 1) + 98

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A261276.P6270533452618130194

namespace A261276

/-- `∑[a(n-1)+98]` -/
def P6270533452618130194.Spec : Prop :=
  ∀ n, (P6270533452618130194.a n : ℤ) = A261276 n

end A261276

/-!
# A261277: Expansion of q^(-1/2) * (eta(q^3)^8 + 4 * eta(q^6)^8)^(1/2) in powers of q.

The programs for A261277, there is no canonical definition to state claims against.
-/

/-! ## A261277.P14023694902574580201

`A030188(n)*A131713(n)`
-/

namespace A261277.P14023694902574580201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030188 n * A131713 n

end

end A261277.P14023694902574580201

/-! ## A261277.P1355286553121929650

`A057079(n)*A159819(n)`
-/

namespace A261277.P1355286553121929650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057079 n * A159819 n

end

end A261277.P1355286553121929650

/-! ## A261277.P13882969378449347691

`∑[A100051(n)]*A159819(n)`
-/

namespace A261277.P13882969378449347691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100051 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A159819 n

end

end A261277.P13882969378449347691

/-! ## A261277.P2798439313619146249

`A030188(n)*A100051(2*n+1)`
-/

namespace A261277.P2798439313619146249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030188 n * A100051 (2 * n + 1)

end

end A261277.P2798439313619146249

/-! ## A261277.P2750731332880501333

`∑[A100051(n)]*A271231(2*n+1)`
-/

namespace A261277.P2750731332880501333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100051 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A271231 (2 * n + 1)

end

end A261277.P2750731332880501333

/-! ## A261277.P4990881185356533855

`A030188(n)*A089812(∑[n])`
-/

namespace A261277.P4990881185356533855
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030188 n * A089812 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A261277.P4990881185356533855

/-!
# A261279: Fixed points of A065649, a permutation of nonnegative integers based on Champernowne's constant.

The programs for A261279, there is no canonical definition to state claims against.
-/

/-! ## A261279.P7142968581686480053

`eq[n, A065649(n)]`
-/

namespace A261279.P7142968581686480053
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065649 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A261279.P7142968581686480053

/-! ## A261279.P17779052200563154502

`eq[n, A065650(n)]`
-/

namespace A261279.P17779052200563154502
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065650 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A261279.P17779052200563154502

/-! ## A261279.P6175473981092183540

`record[n-A272203(A006498(n)+1)]`
-/

namespace A261279.P6175473981092183540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A272203 (A006498 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A261279.P6175473981092183540

/-! ## A261279.P975718955938484873

`record[A175400(n)]`
-/

namespace A261279.P975718955938484873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175400 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A261279.P975718955938484873

/-! ## A261279.P15868866329561795076

`record[gcd(n, A326592(n))]`
-/

namespace A261279.P15868866329561795076
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A326592 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A261279.P15868866329561795076

/-!
# A261280: Number of ways to start with set {1,2,...,n} and then repeat n times: partition each set into subsets.

The programs for A261280, there is no canonical definition to state claims against.
-/

/-! ## A261280.P16425739674143623699

`A144150(∑[4*n])`
-/

namespace A261280.P16425739674143623699
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144150 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A261280.P16425739674143623699

/-! ## A261280.P12672197946743140754

`A111672(A106232(n+1)-2*n)`
-/

namespace A261280.P12672197946743140754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111672 (A106232 (n + 1) - (2 * n : ℤ)).toNat

end

end A261280.P12672197946743140754

/-! ## A261280.P6857517892858120039

`A111672(A106232(n+1)-n-n)`
-/

namespace A261280.P6857517892858120039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111672 (A106232 (n + 1) - (n : ℤ) - (n : ℤ)).toNat

end

end A261280.P6857517892858120039

/-! ## A261280.P8009550948202433077

`A144150(A046092(n))^A000045(((-1)^n)²)`
-/

namespace A261280.P8009550948202433077
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144150 (A046092 n).toNat : ℚ) ^ (A000045 (((-1) ^ n) ^ 2).toNat : ℤ)

end

end A261280.P8009550948202433077

/-! ## A261280.P16119889551131882420

`A144150(A046092(n))^A018252(n+1)^C(2, n+2)`
-/

namespace A261280.P16119889551131882420
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144150 (A046092 n).toNat : ℚ) ^ (A018252 (n + 1) ^ Nat.choose 2 (n + 2) : ℤ)

end

end A261280.P16119889551131882420

/-!
# A261283: a(n) = bitwise XOR of all the bit numbers for the bits that are set in n, using number 1 for the LSB.

The programs for A261283, the canonical program `A261283.P16041338717505093880` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A261283 has offset 0).

The definition of A261283 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8191 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A261283.P16041338717505093880

`A355340(A006068(n))`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A261283

/-- `A355340(A006068(n))` -/
def P16041338717505093880.Spec : Prop :=
  ∀ n, P16041338717505093880.a n = A261283 n

theorem P16041338717505093880.correct : P16041338717505093880.Spec := by
  intro n
  simp only [A261283]

end A261283

/-! ## A261283.P11398905923544098631

`A355340(A292600(2*n))`
-/

namespace A261283.P11398905923544098631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355340 (A292600 (2 * n)).toNat

end

end A261283.P11398905923544098631

namespace A261283

/-- `A355340(A292600(2*n))` -/
def P11398905923544098631.Spec : Prop :=
  ∀ n, P11398905923544098631.a n = A261283 n

end A261283

/-! ## A261283.P2288501694350934216

`xor(A253315(n), A355340(n))`
-/

namespace A261283.P2288501694350934216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A253315 n) (A355340 n)

end

end A261283.P2288501694350934216

namespace A261283

/-- `xor(A253315(n), A355340(n))` -/
def P2288501694350934216.Spec : Prop :=
  ∀ n, P2288501694350934216.a n = A261283 n

end A261283

/-! ## A261283.P15022362679912266323

`A253315(2*n)`
-/

namespace A261283.P15022362679912266323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253315 (2 * n)

end

end A261283.P15022362679912266323

namespace A261283

/-- `A253315(2*n)` -/
def P15022362679912266323.Spec : Prop :=
  ∀ n, P15022362679912266323.a n = A261283 n

end A261283

/-! ## A261283.P11337372772370200342

`A253315(n+n)%(n+1)`
-/

namespace A261283.P11337372772370200342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A253315 (n + n)) (n + 1 : ℤ)

end

end A261283.P11337372772370200342

namespace A261283

/-- `A253315(n+n)%(n+1)` -/
def P11337372772370200342.Spec : Prop :=
  ∀ n, P11337372772370200342.a n = A261283 n

end A261283

/-! ## A261283.P4792162499787435174

`A253315(A005408(n))/and(1, A005408(n))`
-/

namespace A261283.P4792162499787435174
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A253315 (A005408 n).toNat : ℚ) / (Int.land 1 (A005408 n) : ℚ)

end

end A261283.P4792162499787435174

namespace A261283

/-- `A253315(A005408(n))/and(1, A005408(n))` -/
def P4792162499787435174.Spec : Prop :=
  ∀ n, P4792162499787435174.a n = (A261283 n : ℚ)

end A261283

/-! ## A261283.P3192279774459519750

`A253315(A005408(n))/A327965(A215385(n+1))`
-/

namespace A261283.P3192279774459519750
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A253315 (A005408 n).toNat : ℚ) / (A327965 (A215385 (n + 1)).toNat : ℚ)

end

end A261283.P3192279774459519750

namespace A261283

/-- `A253315(A005408(n))/A327965(A215385(n+1))` -/
def P3192279774459519750.Spec : Prop :=
  ∀ n, P3192279774459519750.a n = (A261283 n : ℚ)

end A261283

/-! ## A261283.P4395686340641473825

`and(A126646(n), A253315(A005408(n)))`
-/

namespace A261283.P4395686340641473825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A126646 n) (A253315 (A005408 n).toNat)

end

end A261283.P4395686340641473825

namespace A261283

/-- `and(A126646(n), A253315(A005408(n)))` -/
def P4395686340641473825.Spec : Prop :=
  ∀ n, P4395686340641473825.a n = A261283 n

end A261283

/-! ## A261283.P1389246031088248893

`and(A126646(n), A253315(A000069(n+1)))`
-/

namespace A261283.P1389246031088248893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A126646 n) (A253315 (A000069 (n + 1)).toNat)

end

end A261283.P1389246031088248893

namespace A261283

/-- `and(A126646(n), A253315(A000069(n+1)))` -/
def P1389246031088248893.Spec : Prop :=
  ∀ n, P1389246031088248893.a n = A261283 n

end A261283

/-! ## A261283.P4147486388276879490

`and(A126646(n), A253315(A001969(n+1)))`
-/

namespace A261283.P4147486388276879490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A126646 n) (A253315 (A001969 (n + 1)).toNat)

end

end A261283.P4147486388276879490

namespace A261283

/-- `and(A126646(n), A253315(A001969(n+1)))` -/
def P4147486388276879490.Spec : Prop :=
  ∀ n, P4147486388276879490.a n = A261283 n

end A261283

/-! ## A261283.P3613699768985442365

`A329647(A057335(n))`
-/

namespace A261283.P3613699768985442365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329647 (A057335 n).toNat

end

end A261283.P3613699768985442365

namespace A261283

/-- `A329647(A057335(n))` -/
def P3613699768985442365.Spec : Prop :=
  ∀ n, P3613699768985442365.a n = A261283 n

end A261283

/-!
# A261284: Number of (n+2)X(n+2) 0..1 arrays with each 3X3 subblock having clockwise perimeter pattern 00000001 00010101 or 01010101.

The programs for A261284, there is no canonical definition to state claims against.
-/

/-! ## A261284.P234584600182687608

`A261292((n+1)²+n²)`
-/

namespace A261284.P234584600182687608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261292 ((n + 1) ^ 2 + n ^ 2)

end

end A261284.P234584600182687608

/-! ## A261284.P11614440147625039620

`record[gcd(A003987(n), A261292(n+1))]`
-/

namespace A261284.P11614440147625039620
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003987 n) (A261292 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A261284.P11614440147625039620

/-! ## A261284.P4493144770214738483

`A261292(A001844(n))+A185284(n)`
-/

namespace A261284.P4493144770214738483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261292 (A001844 n).toNat + A185284 n

end

end A261284.P4493144770214738483

/-! ## A261284.P3383270010875061651

`lcm(A143621(n), A261292(A001844(n)))`
-/

namespace A261284.P3383270010875061651
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A143621 n) (A261292 (A001844 n).toNat)

end

end A261284.P3383270010875061651

/-! ## A261284.P9734824064683615668

`A261292(A001844(n))%A236006(n+1)`
-/

namespace A261284.P9734824064683615668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A261292 (A001844 n).toNat) (A236006 (n + 1))

end

end A261284.P9734824064683615668

/-!
# A261285: Number of (n+2) X (1+2) 0..1 arrays with each 3 X 3 subblock having clockwise perimeter pattern 00000001 00010101 or 01010101.

The programs for A261285, there is no canonical definition to state claims against.
-/

/-! ## A261285.P13727230291402213097

`A261292(∑[n]+1)`
-/

namespace A261285.P13727230291402213097
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261292 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A261285.P13727230291402213097

/-! ## A261285.P8190141839775422393

`record[A261292(record[A091995(n+1)])]`
-/

namespace A261285.P8190141839775422393
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091995 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261292 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A261285.P8190141839775422393

/-! ## A261285.P7264163936950430859

`record[A261292(n+1)/A163626(n)]`
-/

namespace A261285.P7264163936950430859
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A261292 (n + 1) : ℚ) / (A163626 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A261285.P7264163936950430859

/-! ## A261285.P10819974195233512435

`record[root(A261292(n+1), A026725(n))]`
-/

namespace A261285.P10819974195233512435
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A261292 (n + 1) : ℝ) ^ (1 / (A026725 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A261285.P10819974195233512435

/-! ## A261285.P2374955609570242844

`record[root(A261292(n+1), A026769(n))]`
-/

namespace A261285.P2374955609570242844
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A261292 (n + 1) : ℝ) ^ (1 / (A026769 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A261285.P2374955609570242844

/-!
# A261286: Number of (n+2)X(2+2) 0..1 arrays with each 3X3 subblock having clockwise perimeter pattern 00000001 00010101 or 01010101.

The programs for A261286, there is no canonical definition to state claims against.
-/

/-! ## A261286.P4987798980593309183

`A261292(∑[n+1]+2)`
-/

namespace A261286.P4987798980593309183
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261292 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A261286.P4987798980593309183

/-! ## A261286.P2739282798547680667

`A261292(A000096(n)+3)/A001511(Δ[n²])`
-/

namespace A261286.P2739282798547680667
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A261292 (A000096 n + 3).toNat : ℚ) / (A001511 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ)

end

end A261286.P2739282798547680667

/-! ## A261286.P4029885141908346567

`A001511(2*n+1)*A261292(A000096(n)+3)`
-/

namespace A261286.P4029885141908346567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (2 * n + 1) * A261292 (A000096 n + 3).toNat

end

end A261286.P4029885141908346567

/-! ## A261286.P12750317402120881372

`A003415(A006530(n+2))*A261292(A000096(n)+3)`
-/

namespace A261286.P12750317402120881372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A006530 (n + 2)).toNat * A261292 (A000096 n + 3).toNat

end

end A261286.P12750317402120881372

/-! ## A261286.P7603530048939923839

`A261292(A000096(n)+3)^A001511(A000040(n+2)-2)`
-/

namespace A261286.P7603530048939923839
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A261292 (A000096 n + 3).toNat : ℚ) ^ (A001511 (A000040 (n + 2) - 2).toNat : ℤ)

end

end A261286.P7603530048939923839

/-!
# A261287: Number of (n+2)X(3+2) 0..1 arrays with each 3X3 subblock having clockwise perimeter pattern 00000001 00010101 or 01010101.

The programs for A261287, there is no canonical definition to state claims against.
-/

/-! ## A261287.P9335582543588579591

`A261292(∑[n+2]+4)`
-/

namespace A261287.P9335582543588579591
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261292 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A261287.P9335582543588579591

/-! ## A261287.P10517912866791288040

`A261292(A000096(n+1)+4)+A000038(n+1)`
-/

namespace A261287.P10517912866791288040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261292 (A000096 (n + 1) + 4).toNat + A000038 (n + 1)

end

end A261287.P10517912866791288040

/-! ## A261287.P8226089878063057950

`A261292(A000217(n+3)-n)+A000007(n+1)`
-/

namespace A261287.P8226089878063057950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261292 (A000217 (n + 3) - (n : ℤ)).toNat + A000007 (n + 1)

end

end A261287.P8226089878063057950

/-! ## A261287.P7071799933021736908

`A261292(A000217(n+3)-n)+A068404(n+1)%2`
-/

namespace A261287.P7071799933021736908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261292 (A000217 (n + 3) - (n : ℤ)).toNat + Int.tmod (A068404 (n + 1)) 2

end

end A261287.P7071799933021736908

/-! ## A261287.P16904576271237866115

`A261292(A000217(n+2)+3)+A068424(n+1)%A007318(n)`
-/

namespace A261287.P16904576271237866115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261292 (A000217 (n + 2) + 3).toNat + Int.tmod (A068424 (n + 1)) (A007318 n)

end

end A261287.P16904576271237866115

/-!
# A261288: Number of (n+2)X(4+2) 0..1 arrays with each 3X3 subblock having clockwise perimeter pattern 00000001 00010101 or 01010101.

The programs for A261288, there is no canonical definition to state claims against.
-/

/-! ## A261288.P15343758521255503308

`A261292(∑[n+3]+7)`
-/

namespace A261288.P15343758521255503308
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261292 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A261288.P15343758521255503308

/-! ## A261288.P4066699089467989082

`or(char[1], A261292(A166136(n+2)-2))`
-/

namespace A261288.P4066699089467989082
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A261292 (A166136 (n + 2) - 2).toNat)

end

end A261288.P4066699089467989082

/-! ## A261288.P16185996811655449020

`A261292(A166136(n+2)-2)%A261289(n+1)`
-/

namespace A261288.P16185996811655449020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A261292 (A166136 (n + 2) - 2).toNat) (A261289 (n + 1))

end

end A261288.P16185996811655449020

/-! ## A261288.P17056801675121818417

`lcm(A033999(n+1), A261292(A166136(n+2)-2))`
-/

namespace A261288.P17056801675121818417
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 (n + 1)) (A261292 (A166136 (n + 2) - 2).toNat)

end

end A261288.P17056801675121818417

/-! ## A261288.P10377387737984843138

`-(A008683(A051698(n))*A261292(A166136(n+2)-2))`
-/

namespace A261288.P10377387737984843138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A008683 (A051698 n).toNat * A261292 (A166136 (n + 2) - 2).toNat)

end

end A261288.P10377387737984843138

/-!
# A261289: Number of (n+2)X(5+2) 0..1 arrays with each 3X3 subblock having clockwise perimeter pattern 00000001 00010101 or 01010101.

The programs for A261289, there is no canonical definition to state claims against.
-/

/-! ## A261289.P15097544584847191428

`A261292(A374005(n+1))`
-/

namespace A261289.P15097544584847191428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261292 (A374005 (n + 1)).toNat

end

end A261289.P15097544584847191428

/-! ## A261289.P15428335787583300920

`A261292(A167499(n+3))`
-/

namespace A261289.P15428335787583300920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261292 (A167499 (n + 3)).toNat

end

end A261289.P15428335787583300920

/-! ## A261289.P14301363660582452421

`A261292(A052905(n+1)+10)`
-/

namespace A261289.P14301363660582452421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261292 (A052905 (n + 1) + 10).toNat

end

end A261289.P14301363660582452421

/-! ## A261289.P7456422617602075238

`A261292(Δ[A264443(n)])`
-/

namespace A261289.P7456422617602075238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261292 (f1 (n + 1) - f1 n).toNat

end

end A261289.P7456422617602075238

/-! ## A261289.P1560791662712710646

`A261292(A046691(n+3))`
-/

namespace A261289.P1560791662712710646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261292 (A046691 (n + 3)).toNat

end

end A261289.P1560791662712710646

/-!
# A261290: Number of (n+2)X(6+2) 0..1 arrays with each 3X3 subblock having clockwise perimeter pattern 00000001 00010101 or 01010101.

The programs for A261290, there is no canonical definition to state claims against.
-/

/-! ## A261290.P10303018068346556170

`A261292(A374007(n+1))`
-/

namespace A261290.P10303018068346556170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261292 (A374007 (n + 1)).toNat

end

end A261290.P10303018068346556170

/-! ## A261290.P1544002704631415088

`A261292(A167499(n+4)+1)`
-/

namespace A261290.P1544002704631415088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261292 (A167499 (n + 4) + 1).toNat

end

end A261290.P1544002704631415088

/-! ## A261290.P10994299141971228525

`A261292(A055998(n+3)+9)`
-/

namespace A261290.P10994299141971228525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261292 (A055998 (n + 3) + 9).toNat

end

end A261290.P10994299141971228525

/-! ## A261290.P6320607955407074610

`A261292(A000124(n+6)-(n+1))`
-/

namespace A261290.P6320607955407074610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261292 (A000124 (n + 6) - (n + 1 : ℤ)).toNat

end

end A261290.P6320607955407074610

/-! ## A261290.P9177624173382253821

`A261292(A133263(n+6)-(n+2))`
-/

namespace A261290.P9177624173382253821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261292 (A133263 (n + 6) - (n + 2 : ℤ)).toNat

end

end A261290.P9177624173382253821

/-!
# A261291: Number of (n+2)X(7+2) 0..1 arrays with each 3X3 subblock having clockwise perimeter pattern 00000001 00010101 or 01010101.

The programs for A261291, there is no canonical definition to state claims against.
-/

/-! ## A261291.P3390726002261937834

`A261292(A374008(n+1))`
-/

namespace A261291.P3390726002261937834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261292 (A374008 (n + 1)).toNat

end

end A261291.P3390726002261937834

/-! ## A261291.P5325585973415463449

`A261292(A167499(n+5)+2)`
-/

namespace A261291.P5325585973415463449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261292 (A167499 (n + 5) + 2).toNat

end

end A261291.P5325585973415463449

/-! ## A261291.P11228644309715440647

`A261292(A167614(n+5)+4)`
-/

namespace A261291.P11228644309715440647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261292 (A167614 (n + 5) + 4).toNat

end

end A261291.P11228644309715440647

/-! ## A261291.P15330206216520601752

`A261292(A000217(n+6)+7)`
-/

namespace A261291.P15330206216520601752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261292 (A000217 (n + 6) + 7).toNat

end

end A261291.P15330206216520601752

/-! ## A261291.P8570672162405004123

`A261292(A000124(n+8)-A223134(n+4))`
-/

namespace A261291.P8570672162405004123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261292 (A000124 (n + 8) - A223134 (n + 4)).toNat

end

end A261291.P8570672162405004123

/-!
# A261293: a(n) = A065649(A065649(n)).

The programs for A261293, there is no canonical definition to state claims against.
-/

/-! ## A261293.P8996260688056466263

`A065649(A065649(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A261293.P8996260688056466263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065649 (A065649 n).toNat

end

end A261293.P8996260688056466263

/-!
# A261294: a(n) = A065650(A065650(n)).

The programs for A261294, there is no canonical definition to state claims against.
-/

/-! ## A261294.P6851724256022716522

`A065650(A065650(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A261294.P6851724256022716522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065650 (A065650 n).toNat

end

end A261294.P6851724256022716522

/-!
# A261298: Diagonal T(n,n) of the table T = A261297: row n contains n numbers of primality opposite to that of n, any number k may occur k times.

The programs for A261298, there is no canonical definition to state claims against.
-/

/-! ## A261298.P8084732535371518926

`A261297(∑[n+1])`
-/

namespace A261298.P8084732535371518926
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261297 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A261298.P8084732535371518926

/-! ## A261298.P16019587583775225755

`or(char[3], A261297(A000217(n+1)))`
-/

namespace A261298.P16019587583775225755
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A261297 (A000217 (n + 1)).toNat)

end

end A261298.P16019587583775225755

/-! ## A261298.P10628422129564524955

`gcd(A000038(n), A261297(A000217(n+1)))`
-/

namespace A261298.P10628422129564524955
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A261297 (A000217 (n + 1)).toNat)

end

end A261298.P10628422129564524955

/-! ## A261298.P9128198619791865148

`∑{d}[A261297(A000217(n+1)), A000010(#)]`
-/

namespace A261298.P9128198619791865148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261297 (A000217 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A261298.P9128198619791865148

/-! ## A261298.P9911741094390157980

`A261297(A000217(n+1))%Δ[A213499(n)]`
-/

namespace A261298.P9911741094390157980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213499 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A261297 (A000217 (n + 1)).toNat) (f1 (n + 1) - f1 n)

end

end A261298.P9911741094390157980

/-! ## A261298.P13788620760426518304

`A007318(C(2, n))*A261297(A000217(n+1))`
-/

namespace A261298.P13788620760426518304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A261297 (A000217 (n + 1)).toNat

end

end A261298.P13788620760426518304

/-! ## A261298.P6030401027606063583

`A000041(C(n, n²))*A261297(A000217(n+1))`
-/

namespace A261298.P6030401027606063583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose n (n ^ 2)) * A261297 (A000217 (n + 1)).toNat

end

end A261298.P6030401027606063583

/-! ## A261298.P11629044146758588687

`A261297(A000217(n+1))+A008683(8*(n+1))`
-/

namespace A261298.P11629044146758588687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261297 (A000217 (n + 1)).toNat + A008683 (8 * (n + 1))

end

end A261298.P11629044146758588687

/-! ## A261298.P3429178390707707022

`A261297(A000217(n+1))+C(2, A000203(n+2))`
-/

namespace A261298.P3429178390707707022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261297 (A000217 (n + 1)).toNat + (Nat.choose 2 (A000203 (n + 2)).toNat : ℤ)

end

end A261298.P3429178390707707022

/-! ## A261298.P6164975745078162830

`A014963(gcd(n, n+1))*A261297(A000217(n+1))`
-/

namespace A261298.P6164975745078162830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (Nat.gcd n (n + 1)) * A261297 (A000217 (n + 1)).toNat

end

end A261298.P6164975745078162830

/-!
# A261299: Binary representation of the middle column of the "Rule 30" elementary cellular automaton starting with a single ON (black) cell.

The programs for A261299, there is no canonical definition to state claims against.
-/

/-! ## A261299.P5622120219084886728

`A051023(n)+10*a(n-1)` with `a(0)=1`
-/

namespace A261299.P5622120219084886728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A051023 n + 10 * a (n - 1)

end

end A261299.P5622120219084886728

/-! ## A261299.P3639307521974731691

`and(1, A092539(n))+10*a(n-1)` with `a(0)=1`
-/

namespace A261299.P3639307521974731691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.land 1 (A092539 n) + 10 * a (n - 1)

end

end A261299.P3639307521974731691

/-! ## A261299.P16740466109542366790

`xor(10*a(n-1), A071032(n²+n))` with `a(0)=1`
-/

namespace A261299.P16740466109542366790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.xor (10 * a (n - 1)) (A071032 (n ^ 2 + n))

end

end A261299.P16740466109542366790

/-! ## A261299.P9751631094011053265

`A007088(A092539(n))`
-/

namespace A261299.P9751631094011053265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A092539 n).toNat

end

end A261299.P9751631094011053265

/-! ## A261299.P10582446838328016358

`A169965(A092539(n)+1)/2`
-/

namespace A261299.P10582446838328016358
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A169965 (A092539 n + 1).toNat : ℚ) / 2

end

end A261299.P10582446838328016358

