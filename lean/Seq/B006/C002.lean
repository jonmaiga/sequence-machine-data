import SequenceMachineLib.Basic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C006
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
import Seq.B005.C001
import Seq.B005.C002

/-!
# Canonical definitions

Each definition is given by its canonical program and only uses definitions written before it.
-/

/-! ## A380667.P7577621012878425073

`(A020985(n+1)-A020985(n))/2`
-/

namespace A380667.P7577621012878425073
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020985 (n + 1) - A020985 n : ℚ) / 2

end

end A380667.P7577621012878425073

noncomputable section

/-- A380667: First differences of the Golay-Rudin-Shapiro sequence (A020985), divided by 2.

Offset 0, canonical program `A380667.P7577621012878425073`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A380667 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A380667.P7577621012878425073.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A380667.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A363228.P8730947747563985722

`floor(A090739(n+1)/2)`
-/

namespace A363228.P8730947747563985722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A090739 (n + 1) : ℚ) / 2⌋

end

end A363228.P8730947747563985722

noncomputable section

/-- A363228: Exponent of 4 in 9^n - 1.

Offset 1, canonical program `A363228.P8730947747563985722`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A363228 (n : ℕ) : ℤ :=
  A363228.P8730947747563985722.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A363228.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A375961.P871565758720273220

`A371093(n)+1`
-/

namespace A375961.P871565758720273220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371093 n + 1

end

end A375961.P871565758720273220

noncomputable section

/-- A375961: 2-adic valuation of 6*n + 2.

Offset 0, canonical program `A375961.P871565758720273220`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A375961 (n : ℕ) : ℤ :=
  A375961.P871565758720273220.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A375961.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A379007.P14069209523982296756

`A000225(A037227(n+1))`
-/

namespace A379007.P14069209523982296756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (A037227 (n + 1)).toNat

end

end A379007.P14069209523982296756

noncomputable section

/-- A379007: a(n) = (n^2) XOR ((n^2)-1).

Offset 1, canonical program `A379007.P14069209523982296756`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A379007 (n : ℕ) : ℤ :=
  A379007.P14069209523982296756.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A379007.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A348336.P6212997742014445552

`1-A348110(n+1)+n`
-/

namespace A348336.P6212997742014445552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A348110 (n + 1) + (n : ℤ)

end

end A348336.P6212997742014445552

noncomputable section

/-- A348336: Number of positive integers <= n that have no middle divisors.

Offset 1, canonical program `A348336.P6212997742014445552`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A348336 (n : ℕ) : ℤ :=
  A348336.P6212997742014445552.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A348336.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A349221.P9908063054946175766

`A000007(A231642(n+1))`
-/

namespace A349221.P9908063054946175766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A231642 (n + 1)).toNat

end

end A349221.P9908063054946175766

noncomputable section

/-- A349221: Triangle read by rows: T(n, k) = 1 if k divides binomial(n-1, k-1), T(n, k) = 0 otherwise (n >= 1, 1 <= k <= n).

Offset 1, canonical program `A349221.P9908063054946175766`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A349221 (n : ℕ) : ℤ :=
  A349221.P9908063054946175766.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A349221.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A350770.P10071145900335405838

`A131816(n)-1`
-/

namespace A350770.P10071145900335405838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131816 n - 1

end

end A350770.P10071145900335405838

noncomputable section

/-- A350770: Triangle read by rows: T(n, k) = 2^(n-k-1) + 2^k - 2, 0 <= k <= n-1.

Offset 1, canonical program `A350770.P10071145900335405838`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. -/
def A350770 (n : ℕ) : ℤ :=
  A350770.P10071145900335405838.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. -/
def A350770.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A351247.P9442226858346152668

`∑{d}[n+1, A239442(#)*A351246((n+1)/#)]`
-/

namespace A351247.P9442226858346152668
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A239442 d * A351246 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A351247.P9442226858346152668

noncomputable section

/-- A351247: a(n) = n^7 * Sum_{p|n, p prime} 1/p^7.

Offset 1, canonical program `A351247.P9442226858346152668`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A351247 (n : ℕ) : ℤ :=
  A351247.P9442226858346152668.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A351247.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A352242.P5962883400353177970

`(A133819(n+1)+A001283(n+2))*A055461(n+1)`
-/

namespace A352242.P5962883400353177970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A133819 (n + 1) + A001283 (n + 2)) * A055461 (n + 1)

end

end A352242.P5962883400353177970

noncomputable section

/-- A352242: Regular triangle T(n,k) = (n-k)*(n^3-k^3) for n>=2 and 1 <= k <= n-1, read by rows.

Offset 2, canonical program `A352242.P5962883400353177970`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A352242 (n : ℕ) : ℤ :=
  A352242.P5962883400353177970.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A352242.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A352744.P6958021338167338995

`A292030(comp[∑[n]])-A292030(n)`
-/

namespace A352744.P6958021338167338995
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292030 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) - A292030 n

end

end A352744.P6958021338167338995

noncomputable section

/-- A352744: Array read by ascending antidiagonals. Generalized Fibonacci numbers F(n, k) = (psi^k*(phi - n) - phi^k*(psi - n)) / (phi - psi) where phi = (1 + sqrt(5))/2 and psi = (1 - sqrt(5))/2. F(n, k) for n >= 0 and k >= 0.

Offset 0, canonical program `A352744.P6958021338167338995`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9860 terms. -/
def A352744 (n : ℕ) : ℤ :=
  A352744.P6958021338167338995.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9860 terms. -/
def A352744.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A352796.P15094064464508577221

`comp[A049207(n)]`
-/

namespace A352796.P15094064464508577221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049207 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A352796.P15094064464508577221

noncomputable section

/-- A352796: Numbers m such that {d + m/d : d | m } does not contain consecutive integers.

Offset 1, canonical program `A352796.P15094064464508577221`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A352796 (n : ℕ) : ℤ :=
  (A352796.P15094064464508577221.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A352796.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A353293.P9603685169671466923

`A002260(eq[0, A089885(n)])`
-/

namespace A353293.P9603685169671466923
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089885 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A353293.P9603685169671466923

noncomputable section

/-- A353293: Irregular table T(n, k), n > 0, k = 1..A353292(n), read by rows: the n-th row contains in ascending order the distinct positive integers k <= n that have at least one common 1-bit with n.

Offset 1, canonical program `A353293.P9603685169671466923`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7163 terms. -/
def A353293 (n : ℕ) : ℤ :=
  A353293.P9603685169671466923.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7163 terms. -/
def A353293.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A354330.P1810111766731009996

`A053616(A000292(n))`
-/

namespace A354330.P1810111766731009996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053616 (A000292 n).toNat

end

end A354330.P1810111766731009996

noncomputable section

/-- A354330: Distance from the sum of the first n positive triangular numbers to the nearest triangular number.

Offset 0, canonical program `A354330.P1810111766731009996`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053616, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A354330 (n : ℕ) : ℤ :=
  A354330.P1810111766731009996.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053616, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A354330.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A354981.P5770451458096678403

`and(n, 1-A354108(n+1))`
-/

namespace A354981.P5770451458096678403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (1 - A354108 (n + 1))

end

end A354981.P5770451458096678403

noncomputable section

/-- A354981: a(n) = 1 if n = 2 * p^k, with p an odd prime and k >= 1, otherwise 0.

Offset 1, canonical program `A354981.P5770451458096678403`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A354981 (n : ℕ) : ℤ :=
  A354981.P5770451458096678403.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A354981.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A355297.P6306720137203212768

`∑[A138342(n+1)]%(n+1)`
-/

namespace A355297.P6306720137203212768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138342 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (n + 1 : ℤ)

end

end A355297.P6306720137203212768

noncomputable section

/-- A355297: a(n) = A007088(n) mod n.

Offset 1, canonical program `A355297.P6306720137203212768`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A355297 (n : ℕ) : ℤ :=
  A355297.P6306720137203212768.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A355297.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A355726.P4645939845327956585

`A182986(n)+a(n-2)` with `a(0)=0, a(1)=0`
-/

namespace A355726.P4645939845327956585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  A182986 n + a (n - 2)

end

end A355726.P4645939845327956585

noncomputable section

/-- A355726: a(n) = a(n-2) + prime(n-1) for a(0) = a(1) = 0.

Offset 0, canonical program `A355726.P4645939845327956585`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A355726 (n : ℕ) : ℤ :=
  A355726.P4645939845327956585.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A355726.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A356036.P16657453686198969897

`A059268(n)*A175840(n)`
-/

namespace A356036.P16657453686198969897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n * A175840 n

end

end A356036.P16657453686198969897

noncomputable section

/-- A356036: Triangle read by rows, giving in the first column the powers of 3 (A000244) and in the next columns 4/3 times the previous row entry.

Offset 0, canonical program `A356036.P16657453686198969897`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A356036 (n : ℕ) : ℤ :=
  A356036.P16657453686198969897.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A356036.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A356241.P11760164375224009749

`∑{p}[n+1, A151774(#)]`
-/

namespace A356241.P11760164375224009749
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A151774 p

end

end A356241.P11760164375224009749

noncomputable section

/-- A356241: a(n) is the number of distinct Fermat numbers dividing n.

Offset 1, canonical program `A356241.P11760164375224009749`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A356241 (n : ℕ) : ℤ :=
  A356241.P11760164375224009749.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A356241.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A357213.P15462031759184962589

`A004736(n+1)*A232089(n)`
-/

namespace A357213.P15462031759184962589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1) * A232089 n

end

end A357213.P15462031759184962589

noncomputable section

/-- A357213: Triangular array read by rows: T(n, k) = number of subsets s of {1, 2, ..., n} such max(s) - min(s) = k, for n >= 1, 0 <= k <= n-1.

Offset 1, canonical program `A357213.P15462031759184962589`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A357213 (n : ℕ) : ℤ :=
  A357213.P15462031759184962589.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A357213.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A357724.P11815462529131865667

`A098356(n)%A104763(n+1)`
-/

namespace A357724.P11815462529131865667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A098356 n) (A104763 (n + 1))

end

end A357724.P11815462529131865667

noncomputable section

/-- A357724: Triangular array read by rows: T(n,k) = Fib(n) mod Fib(k) for 1 <= k <= n, where Fib(k) = A000045(k).

Offset 1, canonical program `A357724.P11815462529131865667`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A357724 (n : ℕ) : ℤ :=
  A357724.P11815462529131865667.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A357724.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A360033.P8815063364067196511

`A130128(n+1)-A001045(A002262(n))`
-/

namespace A360033.P8815063364067196511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130128 (n + 1) - A001045 (A002262 n).toNat

end

end A360033.P8815063364067196511

noncomputable section

/-- A360033: Table T(n,k), n >= 1 and k >= 0, read by antidiagonals, related to Jacobsthal numbers A001045.

Offset 1, canonical program `A360033.P8815063364067196511`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A360033 (n : ℕ) : ℤ :=
  A360033.P8815063364067196511.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A360033.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A360282.P12012788412935324034

`A092392(n)*A198321(n)`
-/

namespace A360282.P12012788412935324034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092392 n * A198321 n

end

end A360282.P12012788412935324034

noncomputable section

/-- A360282: Triangle read by rows. T(n, k) = (1/2) * binomial(2*(n - k + 1), n - k + 1) * binomial(2*n - k, k - 1) for n > 0, T(0, 0) = 1.

Offset 0, canonical program `A360282.P12012788412935324034`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. -/
def A360282 (n : ℕ) : ℤ :=
  A360282.P12012788412935324034.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. -/
def A360282.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A360769.P2553119699871238566

`filter[A053850(n+1), A354108(#)]`
-/

namespace A360769.P2553119699871238566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053850 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354108 (f1 j).toNat = 1) n)

end

end A360769.P2553119699871238566

noncomputable section

/-- A360769: Odd numbers that are neither prime powers nor squarefree.

Offset 1, canonical program `A360769.P2553119699871238566`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9380 terms. -/
def A360769 (n : ℕ) : ℤ :=
  A360769.P2553119699871238566.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9380 terms. -/
def A360769.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A362197.P8596603980637624740

`A008862(n)-n`
-/

namespace A362197.P8596603980637624740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008862 n - (n : ℤ)

end

end A362197.P8596603980637624740

noncomputable section

/-- A362197: Number of Grassmannian permutations of size n that avoid a pattern, sigma, where sigma is a pattern of size 10 with exactly one descent.

Offset 0, canonical program `A362197.P8596603980637624740`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A362197 (n : ℕ) : ℤ :=
  A362197.P8596603980637624740.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A362197.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A364251.P5010928249471816249

`A340373(n+1)*A340375(n+1)`
-/

namespace A364251.P5010928249471816249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340373 (n + 1) * A340375 (n + 1)

end

end A364251.P5010928249471816249

noncomputable section

/-- A364251: a(n) = 1 if n is of the form q*(2^k), where q is one of the Mersenne primes (A000668) and k >= 0, otherwise a(n) = 0.

Offset 1, canonical program `A364251.P5010928249471816249`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A364251 (n : ℕ) : ℤ :=
  A364251.P5010928249471816249.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A364251.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A365207.P12849350633533380960

`∑{d}[n+1, A353627(#)]`
-/

namespace A365207.P12849350633533380960
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A353627 d

end

end A365207.P12849350633533380960

noncomputable section

/-- A365207: The number of divisors d of n such that gcd(d, n/d) is a power of 2 (A000079).

Offset 1, canonical program `A365207.P12849350633533380960`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A365207 (n : ℕ) : ℤ :=
  A365207.P12849350633533380960.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A365207.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A367962.P16852134589639979687

`A334156(n+1)/A002024(n+1)`
-/

namespace A367962.P16852134589639979687
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A334156 (n + 1) : ℚ) / (A002024 (n + 1) : ℚ)

end

end A367962.P16852134589639979687

noncomputable section

/-- A367962: Triangle read by rows. T(n, k) = Sum_{j=0..k} (n!/j!).

Offset 0, canonical program `A367962.P16852134589639979687`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. -/
def A367962 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A367962.P16852134589639979687.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. -/
def A367962.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A368168.P8290312279234957000

`A288341(∑{e}[n+1, (#%#²)%2])`
-/

namespace A368168.P8290312279234957000
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288341 (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p % Nat.factorization (f1 n) p ^ 2 % 2)

end

end A368168.P8290312279234957000

noncomputable section

/-- A368168: The number of unitary divisors of n that are cubefull exponentially odd numbers (A335988).

Offset 1, canonical program `A368168.P8290312279234957000`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A368168 (n : ℕ) : ℤ :=
  A368168.P8290312279234957000.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A368168.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A370232.P12782408000472018737

`A085478(n)²`
-/

namespace A370232.P12782408000472018737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085478 n ^ 2

end

end A370232.P12782408000472018737

noncomputable section

/-- A370232: Triangle read by rows. T(n, k) = binomial(n + k, 2*k)^2.

Offset 0, canonical program `A370232.P12782408000472018737`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7677 terms. -/
def A370232 (n : ℕ) : ℤ :=
  A370232.P12782408000472018737.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7677 terms. -/
def A370232.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A370233.P8684832600924414137

`A085478(n)*A258993(n+1)`
-/

namespace A370233.P8684832600924414137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085478 n * A258993 (n + 1)

end

end A370233.P8684832600924414137

noncomputable section

/-- A370233: Triangle read by rows. T(n, k) = (n - k + 1) * binomial(n + k + 1, 2*k)^2 / (n + k + 1).

Offset 0, canonical program `A370233.P8684832600924414137`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7675 terms. -/
def A370233 (n : ℕ) : ℤ :=
  A370233.P8684832600924414137.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7675 terms. -/
def A370233.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A371400.P8491406579635507671

`A046899(n)*A092392(n)`
-/

namespace A371400.P8491406579635507671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046899 n * A092392 n

end

end A371400.P8491406579635507671

noncomputable section

/-- A371400: Triangle read by rows: T(n, k) = binomial(k + n, k)*binomial(2*n - k, n).

Offset 0, canonical program `A371400.P8491406579635507671`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7803 terms. -/
def A371400 (n : ℕ) : ℤ :=
  A371400.P8491406579635507671.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7803 terms. -/
def A371400.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A372054.P363222448260310864

`(n+1)*A182986(n+1)+1`
-/

namespace A372054.P363222448260310864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A182986 (n + 1) + 1

end

end A372054.P363222448260310864

noncomputable section

/-- A372054: a(0)=1; thereafter a(n) = (n+1)*prime(n)+1.

Offset 0, canonical program `A372054.P363222448260310864`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A372054 (n : ℕ) : ℤ :=
  A372054.P363222448260310864.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A372054.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A372724.P703388709923667032

`record[(n+1)²*A340373(n+1)]`
-/

namespace A372724.P703388709923667032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) * A340373 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A372724.P703388709923667032

noncomputable section

/-- A372724: Numbers k such that k = Sum_{j=2..k+2} L(k/prime(j)) where L(n/p) is the Legendre symbol. Fixed points of A372725.

Offset 1, canonical program `A372724.P703388709923667032`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A372724 (n : ℕ) : ℤ :=
  A372724.P703388709923667032.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A372724.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A373839.P9268052509882335273

`eq[n, n*A373838(n)]`
-/

namespace A373839.P9268052509882335273
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A373838 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A373839.P9268052509882335273

noncomputable section

/-- A373839: Numbers k such that k and A276150(k) are both multiples of 3, where A276150 is the digit sum in the primorial base.

Offset 1, canonical program `A373839.P9268052509882335273`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5556 terms. -/
def A373839 (n : ℕ) : ℤ :=
  (A373839.P9268052509882335273.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5556 terms. -/
def A373839.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A373844.P17122979438263369272

`2*A087112(comp[∑[n]]+1)`
-/

namespace A373844.P17122979438263369272
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A087112 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1)

end

end A373844.P17122979438263369272

noncomputable section

/-- A373844: Triangle read by rows: T(n,k) = A276086(1 + A002110(n) + A002110(k)), 1 <= k <= n, where A276086 is the primorial base exp-function.

Offset 1, canonical program `A373844.P17122979438263369272`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9859 terms. -/
def A373844 (n : ℕ) : ℤ :=
  A373844.P17122979438263369272.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9859 terms. -/
def A373844.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A375142.P17228614779630182782

`eq[1, A340373(A181819(n+1))]+1`
-/

namespace A375142.P17228614779630182782
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340373 (A181819 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A375142.P17228614779630182782

noncomputable section

/-- A375142: Numbers whose powerful part (A057521) is a power of a squarefree number that is larger than 1 (A072777).

Offset 1, canonical program `A375142.P17228614779630182782`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3618 terms. -/
def A375142 (n : ℕ) : ℤ :=
  (A375142.P17228614779630182782.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3618 terms. -/
def A375142.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A375536.P8716115764303257780

`A051903(lcm(A065331(n+1), A132741(n+1)))`
-/

namespace A375536.P8716115764303257780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (Int.lcm (A065331 (n + 1)) (A132741 (n + 1)))

end

end A375536.P8716115764303257780

noncomputable section

/-- A375536: The maximum exponent in the prime factorization of the largest 5-smooth divisor of n.

Offset 1, canonical program `A375536.P8716115764303257780`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A375536 (n : ℕ) : ℤ :=
  A375536.P8716115764303257780.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A375536.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A377802.P6352226413421692588

`round(A109857(n+1)/2)`
-/

namespace A377802.P6352226413421692588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A109857 (n + 1) : ℚ) / 2)

end

end A377802.P6352226413421692588

noncomputable section

/-- A377802: Triangle read by rows: T(n, k) = (2 * (n+1)^2 + 7 - (-1)^n) / 8 - k.

Offset 1, canonical program `A377802.P6352226413421692588`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A377802 (n : ℕ) : ℤ :=
  A377802.P6352226413421692588.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A377802.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A378995.P10105459353425668716

`A062731(n+1)/A378994(n+1)`
-/

namespace A378995.P10105459353425668716
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062731 (n + 1) : ℚ) / (A378994 (n + 1) : ℚ)

end

end A378995.P10105459353425668716

noncomputable section

/-- A378995: Numerator of sigma(2*n)/(2*n).

Offset 1, canonical program `A378995.P10105459353425668716`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A378994, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A378995 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A378995.P10105459353425668716.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A378994, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A378995.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A378996.P6591055189608489703

`2*(n+1)/A378994(n+1)`
-/

namespace A378996.P6591055189608489703
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((n + 1 : ℚ) / (A378994 (n + 1) : ℚ))

end

end A378996.P6591055189608489703

noncomputable section

/-- A378996: Denominator of sigma(2*n)/(2*n).

Offset 1, canonical program `A378996.P6591055189608489703`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A378996 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A378996.P6591055189608489703.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A378996.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A382729.P18152922907771322413

`∑[A382723(n)]`
-/

namespace A382729.P18152922907771322413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382723 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A382729.P18152922907771322413

noncomputable section

/-- A382729: Total number of entries in rows 0,1,...,n of Pascal's triangle not divisible by 4.

Offset 0, canonical program `A382729.P18152922907771322413`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7154 terms. -/
def A382729 (n : ℕ) : ℤ :=
  A382729.P18152922907771322413.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7154 terms. -/
def A382729.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A384189.P11228189298359388274

`comp[A030130(n+1)]`
-/

namespace A384189.P11228189298359388274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030130 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A384189.P11228189298359388274

noncomputable section

/-- A384189: Numbers whose number of zeros in their binary representation is not equal to 1.

Offset 1, canonical program `A384189.P11228189298359388274`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A384189 (n : ℕ) : ℤ :=
  (A384189.P11228189298359388274.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A384189.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A387657.P982859840005591800

`A123275(A056943(n)+1)`
-/

namespace A387657.P982859840005591800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123275 (A056943 n + 1).toNat

end

end A387657.P982859840005591800

noncomputable section

/-- A387657: Array read by ascending antidiagonals: A(n, k) = denominator(k^n/n), with k >= 0.

Offset 1, canonical program `A387657.P982859840005591800`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A387657 (n : ℕ) : ℤ :=
  A387657.P982859840005591800.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A387657.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A391357.P17529039197337556772

`A389809(n+1)+A037126(n+1)`
-/

namespace A391357.P17529039197337556772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389809 (n + 1) + A037126 (n + 1)

end

end A391357.P17529039197337556772

noncomputable section

/-- A391357: Rectangular array R read by falling antidiagonals: R(n,k) = prime(n) + prime(n+k).

Offset 1, canonical program `A391357.P17529039197337556772`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A391357 (n : ℕ) : ℤ :=
  A391357.P17529039197337556772.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A391357.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A391358.P1151688618796119787

`A389809(n+1)+A104887(n+1)`
-/

namespace A391358.P1151688618796119787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389809 (n + 1) + A104887 (n + 1)

end

end A391358.P1151688618796119787

noncomputable section

/-- A391358: Rectangular array R read by falling antidiagonals: R(n,k) = prime(k) + prime(n+k).

Offset 1, canonical program `A391358.P1151688618796119787`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A391358 (n : ℕ) : ℤ :=
  A391358.P1151688618796119787.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A391358.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A393211.P1663722993318290328

`n+1-A176965(A087230(n+1))`
-/

namespace A393211.P1663722993318290328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A176965 (A087230 (n + 1)).toNat

end

end A393211.P1663722993318290328

noncomputable section

/-- A393211: Number computed by Wolfram's 2-state 2-symbol Turing machine 773 when started with n on the tape.

Offset 1, canonical program `A393211.P1663722993318290328`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A393211 (n : ℕ) : ℤ :=
  A393211.P1663722993318290328.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A393211.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A393232.P14261252287719027146

`A047241(A087230(n+1))`
-/

namespace A393232.P14261252287719027146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047241 (A087230 (n + 1)).toNat

end

end A393232.P14261252287719027146

noncomputable section

/-- A393232: Halting time for Wolfram's 2-state 2-symbol Turing machine 897 when started with n on the tape.

Offset 1, canonical program `A393232.P14261252287719027146`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A393232 (n : ℕ) : ℤ :=
  A393232.P14261252287719027146.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A393232.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A393233.P12718541263085678576

`A163980(A087230(n+1))`
-/

namespace A393233.P12718541263085678576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163980 (A087230 (n + 1)).toNat

end

end A393233.P12718541263085678576

noncomputable section

/-- A393233: Halting time for Wolfram's 2-state 2-symbol Turing machine 919 when started with n on the tape.

Offset 1, canonical program `A393233.P12718541263085678576`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A393233 (n : ℕ) : ℤ :=
  A393233.P12718541263085678576.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A393233.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A393554.P14953028031373062451

`A029252(2*n)`
-/

namespace A393554.P14953028031373062451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029252 (2 * n)

end

end A393554.P14953028031373062451

noncomputable section

/-- A393554: Number of ways, up to rotations and reflections, to distribute n guards on the corners and walls of an equilateral triangle castle so that each wall has an equal number of guards.

Offset 0, canonical program `A393554.P14953028031373062451`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A393554 (n : ℕ) : ℤ :=
  A393554.P14953028031373062451.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A393554.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A347956.P15411644417781313120

`∑{d}[n+1, A347134(#)*A349373((n+1)/#)]`
-/

namespace A347956.P15411644417781313120
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A347134 d * A349373 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A347956.P15411644417781313120

noncomputable section

/-- A347956: Dirichlet convolution of A003602 with A069359.

Offset 1, canonical program `A347956.P15411644417781313120`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A347956 (n : ℕ) : ℤ :=
  A347956.P15411644417781313120.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A347956.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A349370.P8267721681669448935

`∑{d}[n+1, A003602(#)*A003602((n+1)/#)]`
-/

namespace A349370.P8267721681669448935
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A003602 d * A003602 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349370.P8267721681669448935

noncomputable section

/-- A349370: Dirichlet convolution of Kimberling's paraphrase, A003602, with itself.

Offset 1, canonical program `A349370.P8267721681669448935`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A349370 (n : ℕ) : ℤ :=
  A349370.P8267721681669448935.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A349370.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A349375.P5202373796057387530

`∑{d}[n+1, A074722(#)*A349373((n+1)/#)]`
-/

namespace A349375.P5202373796057387530
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A074722 d * A349373 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349375.P5202373796057387530

noncomputable section

/-- A349375: Dirichlet convolution of Kimberling's paraphrase, A003602, with Liouville's lambda.

Offset 1, canonical program `A349375.P5202373796057387530`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A349375 (n : ℕ) : ℤ :=
  A349375.P5202373796057387530.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A349375.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A349712.P13134166059387920886

`∑{p}[n+1, #*A319131((n+1)/#)]`
-/

namespace A349712.P13134166059387920886
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), (p : ℤ) * A319131 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (p : ℚ))).toNat

end

end A349712.P13134166059387920886

noncomputable section

/-- A349712: a(n) = Sum_{d|n} sopf(d) * sopf(n/d).

Offset 1, canonical program `A349712.P13134166059387920886`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A349712 (n : ℕ) : ℤ :=
  A349712.P13134166059387920886.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A349712.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A349834.P13091528776294325392

`A208887(4*n+1)`
-/

namespace A349834.P13091528776294325392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208887 (4 * n + 1)

end

end A349834.P13091528776294325392

noncomputable section

/-- A349834: Expansion of sqrt(1 + 4*x)/(1 - 4*x).

Offset 0, canonical program `A349834.P13091528776294325392`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A349834 (n : ℕ) : ℤ :=
  A349834.P13091528776294325392.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A349834.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A351249.P17573828479424842793

`∑{d}[n+1, A013957(#)*A143519((n+1)/#)]`
-/

namespace A351249.P17573828479424842793
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A013957 d * A143519 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A351249.P17573828479424842793

noncomputable section

/-- A351249: a(n) = n^9 * Sum_{p|n, p prime} 1/p^9.

Offset 1, canonical program `A351249.P17573828479424842793`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A351249 (n : ℕ) : ℤ :=
  A351249.P17573828479424842793.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A351249.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A351262.P4449826971361662987

`∑{d}[n+1, A013958(#)*A143519((n+1)/#)]`
-/

namespace A351262.P4449826971361662987
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A013958 d * A143519 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A351262.P4449826971361662987

noncomputable section

/-- A351262: a(n) = n^10 * Sum_{p|n, p prime} 1/p^10.

Offset 1, canonical program `A351262.P4449826971361662987`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A351262 (n : ℕ) : ℤ :=
  A351262.P4449826971361662987.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A351262.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A351265.P14147045059802980430

`abs(A328639(n+1))`
-/

namespace A351265.P14147045059802980430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A328639 (n + 1)|

end

end A351265.P14147045059802980430

noncomputable section

/-- A351265: Sum of the squares of the squarefree divisors of n.

Offset 1, canonical program `A351265.P14147045059802980430`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A328639, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A351265 (n : ℕ) : ℤ :=
  A351265.P14147045059802980430.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A328639, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A351265.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A351460.P8243129244187876021

`A003602(n+1)+A001065(A008578(3*n+1))`
-/

namespace A351460.P8243129244187876021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (n + 1) + A001065 (A008578 (3 * n + 1)).toNat

end

end A351460.P8243129244187876021

noncomputable section

/-- A351460: Lexicographically earliest infinite sequence such that a(i) = a(j) => A006530(i) = A006530(j), A206787(i) = A206787(j) and A336651(i) = A336651(j) for all i, j >= 1.

Offset 1, canonical program `A351460.P8243129244187876021`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 410 terms. -/
def A351460 (n : ℕ) : ℤ :=
  A351460.P8243129244187876021.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 410 terms. -/
def A351460.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A353663.P11512810289068741425

`A057427(A353612(n+1))`
-/

namespace A353663.P11512810289068741425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A353612 (n + 1)).toNat

end

end A353663.P11512810289068741425

noncomputable section

/-- A353663: Triangle read by rows: T(n,k) = 1 if n+k is a prime, otherwise T(n,k) = 0; n >= 1, k >= 1.

Offset 1, canonical program `A353663.P11512810289068741425`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A353612, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A353663 (n : ℕ) : ℤ :=
  A353663.P11512810289068741425.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A353612, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A353663.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A356473.P6255297414268024719

`(n+1)/gcd(n+1, A209295(n+1))`
-/

namespace A356473.P6255297414268024719
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Int.gcd (n + 1 : ℤ) (A209295 (n + 1)) : ℚ)

end

end A356473.P6255297414268024719

noncomputable section

/-- A356473: Denominator of the average of gcd(i,n) for i = 1..n.

Offset 1, canonical program `A356473.P6255297414268024719`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A356473 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A356473.P6255297414268024719.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A356473.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A357927.P10800580115692162370

`C(A028310(n), A072649(A028310(n)))`
-/

namespace A357927.P10800580115692162370
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A028310 n).toNat (A072649 (A028310 n).toNat).toNat

end

end A357927.P10800580115692162370

noncomputable section

/-- A357927: Number of subsets of [n] in which exactly half of the elements are Fibonacci numbers.

Offset 0, canonical program `A357927.P10800580115692162370`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A357927 (n : ℕ) : ℤ :=
  (A357927.P10800580115692162370.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A357927.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A358432.P17718564387636631188

`comp[A073791(n)-A073791(2*n+1)]`
-/

namespace A358432.P17718564387636631188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073791 n - A073791 (2 * n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A358432.P17718564387636631188

noncomputable section

/-- A358432: Nonnegative integers m which can be represented using only 0's and 1's in the complex base 1+i, i.e., m = c(0) + c(1)*(1+i) + c(2)*(1+i)^2 + ... where each coefficient c(k) is either 0 or 1.

Offset 1, canonical program `A358432.P17718564387636631188`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2731 terms. -/
def A358432 (n : ℕ) : ℤ :=
  (A358432.P17718564387636631188.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2731 terms. -/
def A358432.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A358654.P4638968349516908894

`A003602(eq[A001511(n+1), A023416(n)]+1)-1`
-/

namespace A358654.P4638968349516908894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1) - 1

end

end A358654.P4638968349516908894

noncomputable section

/-- A358654: a(n) = A025480(A353654(n+1) - 1).

Offset 0, canonical program `A358654.P4638968349516908894`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 403 terms. -/
def A358654 (n : ℕ) : ℤ :=
  A358654.P4638968349516908894.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 403 terms. -/
def A358654.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A358770.P14969810485770993373

`A035263(n+1)*A358769(n+1)`
-/

namespace A358770.P14969810485770993373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035263 (n + 1) * A358769 (n + 1)

end

end A358770.P14969810485770993373

noncomputable section

/-- A358770: a(n) = 1 if n is of the form p * m^2, where p is an odd prime and m is a natural number >= 1, otherwise 0.

Offset 1, canonical program `A358770.P14969810485770993373`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A358769, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A358770 (n : ℕ) : ℤ :=
  A358770.P14969810485770993373.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A358769, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A358770.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A359157.P6462962473637986217

`filter[A028260(n+1), A353627(#)]`
-/

namespace A359157.P6462962473637986217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353627 (f1 j).toNat = 1) n)

end

end A359157.P6462962473637986217

noncomputable section

/-- A359157: Numbers whose odd part is squarefree and the number of prime factors (with multiplicity) is even.

Offset 1, canonical program `A359157.P6462962473637986217`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8141 terms. -/
def A359157 (n : ℕ) : ℤ :=
  A359157.P6462962473637986217.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8141 terms. -/
def A359157.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A359159.P5613364767986315554

`filter[A026424(n+1), A353627(#)]`
-/

namespace A359159.P5613364767986315554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026424 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353627 (f1 j).toNat = 1) n)

end

end A359159.P5613364767986315554

noncomputable section

/-- A359159: Numbers whose odd part is squarefree and the number of prime factors (with multiplicity) is odd.

Offset 1, canonical program `A359159.P5613364767986315554`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8081 terms. -/
def A359159 (n : ℕ) : ℤ :=
  A359159.P5613364767986315554.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8081 terms. -/
def A359159.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A359164.P14566603840914614086

`A003602(n+1)-A349136(n+1)`
-/

namespace A359164.P14566603840914614086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (n + 1) - A349136 (n + 1)

end

end A359164.P14566603840914614086

noncomputable section

/-- A359164: Difference between Kimberling's paraphrase, A003602, and its Möbius transform.

Offset 1, canonical program `A359164.P14566603840914614086`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003602, A349136, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A359164 (n : ℕ) : ℤ :=
  A359164.P14566603840914614086.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003602, A349136, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A359164.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A359364.P6184962185695480939

`A007318(n)*A126120(A002262(n))`
-/

namespace A359364.P6184962185695480939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A126120 (A002262 n).toNat

end

end A359364.P6184962185695480939

noncomputable section

/-- A359364: Triangle read by rows. The Motzkin triangle, the coefficients of the Motzkin polynomials. M(n, k) = binomial(n, k) * CatalanNumber(k/2) if k is even, otherwise 0.

Offset 0, canonical program `A359364.P6184962185695480939`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A359364 (n : ℕ) : ℤ :=
  A359364.P6184962185695480939.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A359364.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A359371.P15865394443635031041

`lt[0, A359370(n+1)]+1`
-/

namespace A359371.P15865394443635031041
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359370 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A359371.P15865394443635031041

noncomputable section

/-- A359371: Nonmultiples of 4 that have an even number of prime factors (with multiplicity).

Offset 1, canonical program `A359371.P15865394443635031041`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A359371 (n : ℕ) : ℤ :=
  (A359371.P15865394443635031041.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A359371.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A359590.P10814553005928793103

`A359834(4*(n+1))`
-/

namespace A359590.P10814553005928793103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359834 (4 * (n + 1))

end

end A359590.P10814553005928793103

noncomputable section

/-- A359590: Absolute values of A355690, where A355690 is the Dirichlet inverse of the characteristic function of numbers not congruent to 2 mod 4.

Offset 1, canonical program `A359590.P10814553005928793103`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A359590 (n : ℕ) : ℤ :=
  A359590.P10814553005928793103.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A359590.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A360390.P9795167924610291332

`∑[A359485(n+1)]`
-/

namespace A360390.P9795167924610291332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359485 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A360390.P9795167924610291332

noncomputable section

/-- A360390: a(1) = 1; a(n) = -Sum_{k=2..n} k^2 * a(floor(n/k)).

Offset 1, canonical program `A360390.P9795167924610291332`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A360390 (n : ℕ) : ℤ :=
  A360390.P9795167924610291332.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A360390.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A360477.P935886871947782901

`comp[A359869(n+1)-1]+1`
-/

namespace A360477.P935886871947782901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359869 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A360477.P935886871947782901

noncomputable section

/-- A360477: Numbers whose product of distinct prime factors is greater than or equal to the sum of its prime factors (with repetition).

Offset 1, canonical program `A360477.P935886871947782901`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A360477 (n : ℕ) : ℤ :=
  (A360477.P935886871947782901.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A360477.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A362160.P8719433231678747217

`A003188(A281589(n+1)-1)`
-/

namespace A362160.P8719433231678747217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 (A281589 (n + 1) - 1).toNat

end

end A362160.P8719433231678747217

noncomputable section

/-- A362160: Irregular triangle read by rows: The n-th row contains 2^n integers corresponding to the words of the n-bit Gray code with the most significant bits changing fastest.

Offset 0, canonical program `A362160.P8719433231678747217`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A362160 (n : ℕ) : ℤ :=
  A362160.P8719433231678747217.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A362160.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A365905.P3279008836788023306

`lt[2, abs(A161516(n))]`
-/

namespace A365905.P3279008836788023306
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A161516 n|

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A365905.P3279008836788023306

noncomputable section

/-- A365905: "2-peloton numbers": Numbers that appear at least twice in A365904.

Offset 1, canonical program `A365905.P3279008836788023306`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 136 terms. -/
def A365905 (n : ℕ) : ℤ :=
  (A365905.P3279008836788023306.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 136 terms. -/
def A365905.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A366893.P9479425675284615300

`A003602(A000007(n²)+n)`
-/

namespace A366893.P9479425675284615300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (A000007 (n ^ 2) + (n : ℤ)).toNat

end

end A366893.P9479425675284615300

noncomputable section

/-- A366893: Lexicographically earliest infinite sequence such that a(i) = a(j) => A366892(i) = A366892(j) for all i, j >= 0.

Offset 0, canonical program `A366893.P9479425675284615300`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A366893 (n : ℕ) : ℤ :=
  A366893.P9479425675284615300.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A366893.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A366903.P9543273992660669983

`∑{d}[n+1, #*A355825(#)]`
-/

namespace A366903.P9543273992660669983
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A355825 d

end

end A366903.P9543273992660669983

noncomputable section

/-- A366903: The sum of exponentially odious divisors of n.

Offset 1, canonical program `A366903.P9543273992660669983`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A366903 (n : ℕ) : ℤ :=
  A366903.P9543273992660669983.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A366903.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A369667.P13821816702914872275

`char[A369668(n+1)]`
-/

namespace A369667.P13821816702914872275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369668 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A369667.P13821816702914872275

noncomputable section

/-- A369667: a(n) = 1 if n' == 3 (mod 4) and n has an even number of prime factors with multiplicity, otherwise 0. Here n' stands for the arithmetic derivative of n, A003415(n).

Offset 0, canonical program `A369667.P13821816702914872275`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A369667 (n : ℕ) : ℤ :=
  (A369667.P13821816702914872275.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A369667.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A369747.P13998751493365301120

`∑{d}[n+1, A062774(#)*A143519((n+1)/#)]`
-/

namespace A369747.P13998751493365301120
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A062774 d * A143519 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A369747.P13998751493365301120

noncomputable section

/-- A369747: a(n) = Sum_{p|n, p prime} pi(n/p).

Offset 1, canonical program `A369747.P13998751493365301120`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A369747 (n : ℕ) : ℤ :=
  A369747.P13998751493365301120.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A369747.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A369865.P17682209453494408525

`∑{d}[n+1, A048250(#)*A143519((n+1)/#)]`
-/

namespace A369865.P17682209453494408525
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A048250 d * A143519 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A369865.P17682209453494408525

noncomputable section

/-- A369865: a(n) = n * Sum_{p|n, p prime} mu(n/p)^2 / p.

Offset 1, canonical program `A369865.P17682209453494408525`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A369865 (n : ℕ) : ℤ :=
  A369865.P17682209453494408525.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A369865.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A369894.P6022834030566867297

`∑{d}[n+1, A347134(#)]`
-/

namespace A369894.P6022834030566867297
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A347134 d

end

end A369894.P6022834030566867297

noncomputable section

/-- A369894: a(n) = n * Sum_{p|n, p prime} tau(n/p) / p.

Offset 1, canonical program `A369894.P6022834030566867297`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A369894 (n : ℕ) : ℤ :=
  A369894.P6022834030566867297.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A369894.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A369911.P11374327331023507626

`∑{d}[n+1, A137851(#)*A319131((n+1)/#)]`
-/

namespace A369911.P11374327331023507626
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A137851 d * A319131 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A369911.P11374327331023507626

noncomputable section

/-- A369911: a(n) = Sum_{p|n, p prime} p * sopf(n/p).

Offset 1, canonical program `A369911.P11374327331023507626`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A369911 (n : ℕ) : ℤ :=
  A369911.P11374327331023507626.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A369911.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A369914.P9923414443239536090

`∑{d}[n+1, A143519(#)*A344578((n+1)/#)]`
-/

namespace A369914.P9923414443239536090
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A143519 d * A344578 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A369914.P9923414443239536090

noncomputable section

/-- A369914: a(n) = n * Sum_{p|n, p prime} sopf(n/p) / p.

Offset 1, canonical program `A369914.P9923414443239536090`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A369914 (n : ℕ) : ℤ :=
  A369914.P9923414443239536090.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A369914.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A371963.P2095683867298296730

`A024718(n)-A189176(n)`
-/

namespace A371963.P2095683867298296730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024718 n - A189176 n

end

end A371963.P2095683867298296730

noncomputable section

/-- A371963: a(n) is the sum of all valleys in the set of Catalan words of length n.

Offset 0, canonical program `A371963.P2095683867298296730`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A371963 (n : ℕ) : ℤ :=
  A371963.P2095683867298296730.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A371963.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A372886.P4173512411131491016

`eq[1, A010051(A372429(n+1))]+1`
-/

namespace A372886.P4173512411131491016
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A372429 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A372886.P4173512411131491016

noncomputable section

/-- A372886: Indices of prime numbers whose binary indices (positions of ones in reversed binary expansion) sum to another prime number.

Offset 1, canonical program `A372886.P4173512411131491016`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2409 terms. -/
def A372886 (n : ℕ) : ℤ :=
  (A372886.P4173512411131491016.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2409 terms. -/
def A372886.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A373156.P12007324002122430818

`C(A214681(n+1), n+1)`
-/

namespace A373156.P12007324002122430818
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A214681 (n + 1)).toNat (n + 1)

end

end A373156.P12007324002122430818

noncomputable section

/-- A373156: a(n) = 1 if the 2-adic and the 3-adic valuations of n are equal, otherwise 0.

Offset 1, canonical program `A373156.P12007324002122430818`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373156 (n : ℕ) : ℤ :=
  (A373156.P12007324002122430818.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373156.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A373263.P11936545737331509118

`1-(A372573(n+1)+A373260(n+1))`
-/

namespace A373263.P11936545737331509118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A372573 (n + 1) + A373260 (n + 1))

end

end A373263.P11936545737331509118

noncomputable section

/-- A373263: a(n) = 1 if A276085(n) == -1 (mod 3), otherwise 0, where A276085 is the primorial base log-function.

Offset 1, canonical program `A373263.P11936545737331509118`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A372573, A373260, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A373263 (n : ℕ) : ℤ :=
  A373263.P11936545737331509118.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A372573, A373260, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A373263.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A373303.P10871280826768265393

`A371176(n+2)-A371176(n+1)`
-/

namespace A373303.P10871280826768265393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371176 (n + 2) - A371176 (n + 1)

end

end A373303.P10871280826768265393

noncomputable section

/-- A373303: First differences of A371176.

Offset 1, canonical program `A373303.P10871280826768265393`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A371176, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A373303 (n : ℕ) : ℤ :=
  A373303.P10871280826768265393.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A371176, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A373303.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A373373.P12422209471877162310

`record[(n+1)*A373372(n+1)]`
-/

namespace A373373.P12422209471877162310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A373372 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A373373.P12422209471877162310

noncomputable section

/-- A373373: Numbers k for which both A001414(k) and A276085(k) are multiples of 3, where A001414 is the sum of prime factors with repetition and A276085 is the primorial base log-function.

Offset 1, canonical program `A373373.P12422209471877162310`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373373 (n : ℕ) : ℤ :=
  A373373.P12422209471877162310.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373373.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A373837.P16736449207211495558

`eq[1, A373836(n+1)]+1`
-/

namespace A373837.P16736449207211495558
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373836 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A373837.P16736449207211495558

noncomputable section

/-- A373837: Numbers k such that bigomega(k) and A276085(k) are both multiples of 3, where bigomega (A001222) and A276085 are fully additive with a(p) = 1 and a(p) = p#/p respectively.

Offset 1, canonical program `A373837.P16736449207211495558`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5322 terms. -/
def A373837 (n : ℕ) : ℤ :=
  (A373837.P16736449207211495558.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5322 terms. -/
def A373837.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A374042.P11089643045131829268

`eq[1, A374041(n+1)]+1`
-/

namespace A374042.P11089643045131829268
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374041 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A374042.P11089643045131829268

noncomputable section

/-- A374042: Numbers k such that A276085(k) and A328768(k) are both multiples of 3, where A276085 is the primorial base log-function, and A328768 is the first primorial based variant of arithmetic derivative.

Offset 1, canonical program `A374042.P11089643045131829268`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A374042 (n : ℕ) : ℤ :=
  (A374042.P11089643045131829268.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A374042.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A374120.P17872071964718822810

`record[(n+1)*A374119(n+1)]`
-/

namespace A374120.P17872071964718822810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A374119 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A374120.P17872071964718822810

noncomputable section

/-- A374120: Numbers k such that A113177(k) and A276085(k) are both multiples of 3, where A113177 and A276085 are fully additive with a(p) = Fibonacci(p) and a(p) = p#/p, respectively.

Offset 1, canonical program `A374120.P17872071964718822810`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A374120 (n : ℕ) : ℤ :=
  A374120.P17872071964718822810.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A374120.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A375008.P4839878587626124872

`A046301(A333231(n+1))`
-/

namespace A375008.P4839878587626124872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046301 (A333231 (n + 1)).toNat

end

end A375008.P4839878587626124872

noncomputable section

/-- A375008: Products m of k = 3 consecutive primes p_1..p_k, where only p_1 < m^(1/k).

Offset 1, canonical program `A375008.P4839878587626124872`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5198 terms. -/
def A375008 (n : ℕ) : ℤ :=
  A375008.P4839878587626124872.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5198 terms. -/
def A375008.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A376760.P2099925076780782566

`A075084(A002808(n+1))`
-/

namespace A376760.P2099925076780782566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075084 (A002808 (n + 1)).toNat

end

end A376760.P2099925076780782566

noncomputable section

/-- A376760: Let c(n) = A002808(n) denote the n-th composite number; a(n) = number of composite numbers c with c(n) <= c <= 2*c(n).

Offset 1, canonical program `A376760.P2099925076780782566`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A376760 (n : ℕ) : ℤ :=
  A376760.P2099925076780782566.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A376760.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A376827.P729589527535175197

`A002426(A003056(n))*A007318(n)`
-/

namespace A376827.P729589527535175197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002426 (A003056 n).toNat * A007318 n

end

end A376827.P729589527535175197

noncomputable section

/-- A376827: T(n, k) = binomial(n, k)*hypergeom([(1 - n)/2, -n/2], [1], 4).

Offset 0, canonical program `A376827.P729589527535175197`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8839 terms. -/
def A376827 (n : ℕ) : ℤ :=
  A376827.P729589527535175197.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8839 terms. -/
def A376827.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A377540.P8485193340030685808

`eq[1, A161996(n+1)]+1`
-/

namespace A377540.P8485193340030685808
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161996 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A377540.P8485193340030685808

noncomputable section

/-- A377540: Numbers k such that at least one of the numbers 6k-1 or 6k+1 is prime.

Offset 1, canonical program `A377540.P8485193340030685808`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A377540 (n : ℕ) : ℤ :=
  (A377540.P8485193340030685808.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A377540.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A378535.P6218946312386172264

`(A074722(n+1)+n+1)/2`
-/

namespace A378535.P6218946312386172264
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A074722 (n + 1) + (n + 1 : ℤ) : ℚ) / 2

end

end A378535.P6218946312386172264

noncomputable section

/-- A378535: Möbius transform of A378542, where A378542 is the sum of divisors d of n such that n/d has an even number of prime factors (counted with multiplicity).

Offset 1, canonical program `A378535.P6218946312386172264`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A378535 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A378535.P6218946312386172264.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A378535.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A378542.P16518719972786175247

`A000203(n+1)-A378543(n+1)`
-/

namespace A378542.P16518719972786175247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A378543 (n + 1)

end

end A378542.P16518719972786175247

noncomputable section

/-- A378542: Sum of divisors d of n such that n/d has an even number of prime factors (counted with multiplicity).

Offset 1, canonical program `A378542.P16518719972786175247`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A378543, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A378542 (n : ℕ) : ℤ :=
  A378542.P16518719972786175247.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A378543, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A378542.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A379213.P13710358421444218836

`∏{e}[A277331(n), A000045(#)]`
-/

namespace A379213.P13710358421444218836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277331 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000045 (Nat.factorization (f1 n).natAbs p)

end

end A379213.P13710358421444218836

noncomputable section

/-- A379213: a(n) is the number of nonnegative integers m such that A184615(m) = A003714(n).

Offset 0, canonical program `A379213.P13710358421444218836`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 317 terms. -/
def A379213 (n : ℕ) : ℤ :=
  A379213.P13710358421444218836.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 317 terms. -/
def A379213.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A382069.P8655288634907300571

`A344485(n+1)+∑[n+1]`
-/

namespace A382069.P8655288634907300571
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344485 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A382069.P8655288634907300571

noncomputable section

/-- A382069: Row sums of the triangular array in A199408.

Offset 1, canonical program `A382069.P8655288634907300571`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A382069 (n : ℕ) : ℤ :=
  A382069.P8655288634907300571.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A382069.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A382419.P6079477750325987353

`2^A376366(n+1)`
-/

namespace A382419.P6079477750325987353
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A376366 (n + 1) : ℤ)

end

end A382419.P6079477750325987353

noncomputable section

/-- A382419: The product of exponents in the prime factorization of the cubefree numbers.

Offset 1, canonical program `A382419.P6079477750325987353`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A376366, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A382419 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A382419.P6079477750325987353.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A376366, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A382419.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A384039.P10188407723644566643

`∑{d}[n+1, A074722(#)*A368248((n+1)/#)]`
-/

namespace A384039.P10188407723644566643
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A074722 d * A368248 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A384039.P10188407723644566643

noncomputable section

/-- A384039: The number of integers k from 1 to n such that gcd(n,k) is a powerful number.

Offset 1, canonical program `A384039.P10188407723644566643`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A384039 (n : ℕ) : ℤ :=
  A384039.P10188407723644566643.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A384039.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A384040.P5722598086975707309

`∑{d}[n+1, A130107(#)*A365550((n+1)/#)]`
-/

namespace A384040.P5722598086975707309
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A130107 d * A365550 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A384040.P5722598086975707309

noncomputable section

/-- A384040: The number of integers k from 1 to n such that gcd(n,k) is a cubefull number.

Offset 1, canonical program `A384040.P5722598086975707309`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A384040 (n : ℕ) : ℤ :=
  A384040.P5722598086975707309.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A384040.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A384210.P9000503329095324649

`∑[A358769(n+1)]`
-/

namespace A384210.P9000503329095324649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358769 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A384210.P9000503329095324649

noncomputable section

/-- A384210: Number of numbers <= n of the form p * m^2, where p is a prime and m is an integer >= 1.

Offset 1, canonical program `A384210.P9000503329095324649`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A384210 (n : ℕ) : ℤ :=
  A384210.P9000503329095324649.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A384210.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A387319.P17597783198726216255

`A343311(n+1)-A063524(n)`
-/

namespace A387319.P17597783198726216255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343311 (n + 1) - A063524 n

end

end A387319.P17597783198726216255

noncomputable section

/-- A387319: Numbers k for which modulo 3 and modulo another multiple of 3 are coincident among the fractions (2*k mod m)/m for 1 <= m <= k.

Offset 1, canonical program `A387319.P17597783198726216255`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A387319 (n : ℕ) : ℤ :=
  A387319.P17597783198726216255.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A387319.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A389901.P6742446286035318243

`A322026(A253887(A003602(n+1)))`
-/

namespace A389901.P6742446286035318243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322026 (A253887 (A003602 (n + 1)).toNat).toNat

end

end A389901.P6742446286035318243

noncomputable section

/-- A389901: Lexicographically earliest infinite sequence such that a(i) = a(j) => A007814(A126760(i)) = A007814(A126760(j)) and A007949(A126760(i)) = A007949(A126760(j)) for all i, j >= 1.

Offset 1, canonical program `A389901.P6742446286035318243`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A389901 (n : ℕ) : ℤ :=
  A389901.P6742446286035318243.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A389901.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A390317.P12726225618828404859

`∑{d}[n+1, A060724(#)*A271102((n+1)/#)]`
-/

namespace A390317.P12726225618828404859
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A060724 d * A271102 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A390317.P12726225618828404859

noncomputable section

/-- A390317: Multiplicative sequence a(n) with a(p^e) = 2 + (p^e + p^(e-1) - 2) * (p+1) / (p-1) for prime p and e > 0.

Offset 1, canonical program `A390317.P12726225618828404859`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A390317 (n : ℕ) : ℤ :=
  A390317.P12726225618828404859.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A390317.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A391408.P396316861093903294

`A114495(n+3)-A389115(n+1)`
-/

namespace A391408.P396316861093903294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114495 (n + 3) - A389115 (n + 1)

end

end A391408.P396316861093903294

noncomputable section

/-- A391408: Expansion of g^5/(1 + x*g)^2, where g = 1+x*g^2 is the g.f. of A000108.

Offset 0, canonical program `A391408.P396316861093903294`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. -/
def A391408 (n : ℕ) : ℤ :=
  A391408.P396316861093903294.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. -/
def A391408.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A391585.P14461622973833260868

`∪[A003714(n), A048717(n)]`
-/

namespace A391585.P14461622973833260868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003714 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048717 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A391585.P14461622973833260868

noncomputable section

/-- A391585: Numbers k such that 3*k = A048720(m,k) for some m, where A048720 is carryless base-2 multiplication.

Offset 1, canonical program `A391585.P14461622973833260868`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A391585 (n : ℕ) : ℤ :=
  (A391585.P14461622973833260868.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A391585.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A391991.P1337276639088855244

`A055642(A007318(n))`
-/

namespace A391991.P1337276639088855244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A007318 n).toNat

end

end A391991.P1337276639088855244

noncomputable section

/-- A391991: Triangle read by rows: T(n,k) = number of digits in decimal representation of binomial(n,k), 0<=k<=n.

Offset 0, canonical program `A391991.P1337276639088855244`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007318, A055642, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A391991 (n : ℕ) : ℤ :=
  A391991.P1337276639088855244.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007318, A055642, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A391991.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A392262.P13598658566703554878

`filter[A388427(n+1), A373252(#)]`
-/

namespace A392262.P13598658566703554878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388427 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373252 (f1 j).toNat = 1) n)

end

end A392262.P13598658566703554878

noncomputable section

/-- A392262: Even composite numbers that are squarefree or powers of 2.

Offset 1, canonical program `A392262.P13598658566703554878`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4083 terms. -/
def A392262 (n : ℕ) : ℤ :=
  A392262.P13598658566703554878.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4083 terms. -/
def A392262.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A395611.P8386097740936724914

`A007318(n)*A058127(n+1)`
-/

namespace A395611.P8386097740936724914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A058127 (n + 1)

end

end A395611.P8386097740936724914

noncomputable section

/-- A395611: Triangle read by rows: coefficients of (1+x)*(1+(n+1)*x)^(n-1).

Offset 0, canonical program `A395611.P8386097740936724914`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1765 terms. -/
def A395611 (n : ℕ) : ℤ :=
  A395611.P8386097740936724914.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1765 terms. -/
def A395611.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A396348.P3604061063505832311

`A060176(A278818(n))`
-/

namespace A396348.P3604061063505832311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060176 (A278818 n).toNat

end

end A396348.P3604061063505832311

noncomputable section

/-- A396348: Array read by ascending antidiagonals: A(n,k) = prime(n)^A249344(n,k).

Offset 1, canonical program `A396348.P3604061063505832311`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A396348 (n : ℕ) : ℤ :=
  A396348.P3604061063505832311.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A396348.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A397713.P732737537006810765

`A070939(A007318(n))`
-/

namespace A397713.P732737537006810765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (A007318 n).toNat

end

end A397713.P732737537006810765

noncomputable section

/-- A397713: Triangle read by rows: T(n,k) is the number of binary digits in binomial(n,k).

Offset 0, canonical program `A397713.P732737537006810765`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007318, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A397713 (n : ℕ) : ℤ :=
  A397713.P732737537006810765.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007318, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A397713.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A349124.P9173573936416537419

`A349123(n+1)/A003557(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A349124.P9173573936416537419
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A349123 (n + 1) : ℚ) / (A003557 (n + 1) : ℚ)

end

end A349124.P9173573936416537419

noncomputable section

/-- A349124: a(n) = A349123(n) / A003557(n), where A349123 is the Dirichlet convolution of the arithmetic derivative with n*tau(n).

Offset 1, canonical program `A349124.P9173573936416537419`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003557, A349123, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A349124 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A349124.P9173573936416537419.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003557, A349123, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A349124.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A353567.P2160071074265072755

`∑{d}[n+1, A353566(#)]`
-/

namespace A353567.P2160071074265072755
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A353566 d

end

end A353567.P2160071074265072755

noncomputable section

/-- A353567: Number of divisors d of n such that d is a multiple of its prime shadow A181819(d).

Offset 1, canonical program `A353567.P2160071074265072755`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A353567 (n : ℕ) : ℤ :=
  A353567.P2160071074265072755.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A353567.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A353579.P9200688838139276790

`record[A006068(A180200(n))+1]`
-/

namespace A353579.P9200688838139276790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006068 (A180200 n).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A353579.P9200688838139276790

noncomputable section

/-- A353579: Numbers in the smallest subset of N containing 1 and closed under the mappings k->2^n + k, k->3*2^{n+1} + k, and k->3*2^{n+2} + k where n = ceiling(log_2(k)).

Offset 1, canonical program `A353579.P9200688838139276790`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 714 terms. -/
def A353579 (n : ℕ) : ℤ :=
  A353579.P9200688838139276790.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 714 terms. -/
def A353579.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A353997.P833302072008211621

`∑[∑{d}[n+1, A053723(#-1)*A109091((n+1)/#)]]`
-/

namespace A353997.P833302072008211621
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), A053723 (d - 1) * A109091 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A353997.P833302072008211621

noncomputable section

/-- A353997: Partial sums of A078473.

Offset 1, canonical program `A353997.P833302072008211621`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A353997 (n : ℕ) : ℤ :=
  A353997.P833302072008211621.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A353997.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A356229.P13012930778147727798

`A287170(n+1)+A232991(n)`
-/

namespace A356229.P13012930778147727798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287170 (n + 1) + A232991 n

end

end A356229.P13012930778147727798

noncomputable section

/-- A356229: Number of maximal gapless submultisets of the prime indices of 2n.

Offset 1, canonical program `A356229.P13012930778147727798`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A356229 (n : ℕ) : ℤ :=
  A356229.P13012930778147727798.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A356229.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A357684.P3972615468113836153

`A007913(record[A056192(n+1)])`
-/

namespace A357684.P3972615468113836153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056192 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A357684.P3972615468113836153

noncomputable section

/-- A357684: The squarefree part (A007913) of numbers whose squarefree part is a unitary divisor (A335275).

Offset 1, canonical program `A357684.P3972615468113836153`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8816 terms. -/
def A357684 (n : ℕ) : ℤ :=
  A357684.P3972615468113836153.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8816 terms. -/
def A357684.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A358839.P16533912957850485554

`A359370(n+1)-A359372(n+1)`
-/

namespace A358839.P16533912957850485554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359370 (n + 1) - A359372 (n + 1)

end

end A358839.P16533912957850485554

noncomputable section

/-- A358839: Dirichlet inverse of A353627, the characteristic function of the squarefree numbers multiplied by binary powers.

Offset 1, canonical program `A358839.P16533912957850485554`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A359370, A359372, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A358839 (n : ℕ) : ℤ :=
  A358839.P16533912957850485554.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A359370, A359372, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A358839.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A360156.P7196993032354104862

`A171977(n+1)*A192066(n+1)`
-/

namespace A360156.P7196993032354104862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171977 (n + 1) * A192066 (n + 1)

end

end A360156.P7196993032354104862

noncomputable section

/-- A360156: a(n) is the sum of the even unitary divisors of 2*n.

Offset 1, canonical program `A360156.P7196993032354104862`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A192066, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A360156 (n : ℕ) : ℤ :=
  A360156.P7196993032354104862.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A192066, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A360156.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A360280.P7719168232723027333

`A008846(n+1)²`
-/

namespace A360280.P7719168232723027333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008846 (n + 1) ^ 2

end

end A360280.P7719168232723027333

noncomputable section

/-- A360280: Squares that are the hypotenuse of a primitive Pythagorean triangle.

Offset 1, canonical program `A360280.P7719168232723027333`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008846, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A360280 (n : ℕ) : ℤ :=
  A360280.P7719168232723027333.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008846, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A360280.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A365209.P7642937683819465531

`∑{d}[n+1, #*A065333(#)]*A192066(A038502(n+1))`
-/

namespace A365209.P7642937683819465531
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A065333 d) * A192066 (A038502 (n + 1)).toNat

end

end A365209.P7642937683819465531

noncomputable section

/-- A365209: The sum of divisors d of n such that gcd(d, n/d) is a 3-smooth number (A003586).

Offset 1, canonical program `A365209.P7642937683819465531`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A365209 (n : ℕ) : ℤ :=
  A365209.P7642937683819465531.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A365209.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A366933.P12877232169146300968

`∑{d}[n+1, A001159(#)*A117108((n+1)/#)]`
-/

namespace A366933.P12877232169146300968
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001159 d * A117108 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A366933.P12877232169146300968

noncomputable section

/-- A366933: Expansion of Sum_{k>=1} k^4 * x^k/(1 - x^k)^4.

Offset 1, canonical program `A366933.P12877232169146300968`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A366933 (n : ℕ) : ℤ :=
  A366933.P12877232169146300968.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A366933.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A368169.P15360201800328361947

`∏{e}[A368167(n+1), #+1]`
-/

namespace A368169.P15360201800328361947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368167 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1)

end

end A368169.P15360201800328361947

noncomputable section

/-- A368169: The number of divisors of the largest unitary divisor of n that is a cubefull exponentially odd number (A368167).

Offset 1, canonical program `A368169.P15360201800328361947`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A368169 (n : ℕ) : ℤ :=
  (A368169.P15360201800328361947.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A368169.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A368171.P3649920215832031940

`(n+1)/A368170(n+1)`
-/

namespace A368171.P3649920215832031940
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A368170 (n + 1) : ℚ)

end

end A368171.P3649920215832031940

noncomputable section

/-- A368171: a(n) is the smallest divisor d of n such that n/d is a cubefull exponentially odd number (A335988).

Offset 1, canonical program `A368171.P3649920215832031940`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A368171 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A368171.P3649920215832031940.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A368171.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A369045.P746069702348314044

`A369041(A180200(n+1))`
-/

namespace A369045.P746069702348314044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369041 (A180200 (n + 1)).toNat

end

end A369045.P746069702348314044

noncomputable section

/-- A369045: LCM-transform of binary invert permutation (A054429).

Offset 1, canonical program `A369045.P746069702348314044`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A369045 (n : ℕ) : ℤ :=
  A369045.P746069702348314044.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A369045.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A370078.P7098894279137476643

`∑{e}[n+1, A007814(A100994(#))]`
-/

namespace A370078.P7098894279137476643
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A007814 (A100994 (Nat.factorization (f1 n) p)).toNat

end

end A370078.P7098894279137476643

noncomputable section

/-- A370078: a(n) = log_2(A370077(n)).

Offset 1, canonical program `A370078.P7098894279137476643`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A370078 (n : ℕ) : ℤ :=
  A370078.P7098894279137476643.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A370078.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A373470.P8197949945481650246

`A043555(n+1)-A043555(n)`
-/

namespace A373470.P8197949945481650246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043555 (n + 1) - A043555 n

end

end A373470.P8197949945481650246

noncomputable section

/-- A373470: First differences of A043555 = number of runs in base-3 representation of n.

Offset 0, canonical program `A373470.P8197949945481650246`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A043555, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A373470 (n : ℕ) : ℤ :=
  A373470.P8197949945481650246.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A043555, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A373470.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A374047.P15202425446373321383

`filter[A374109(n+1), A166486(#)]`
-/

namespace A374047.P15202425446373321383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374109 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A166486 (f1 j).toNat = 1) n)

end

end A374047.P15202425446373321383

noncomputable section

/-- A374047: Numbers k for which A328845(k) is odd, where A328845 is the first Fibonacci based variant of arithmetic derivative.

Offset 1, canonical program `A374047.P15202425446373321383`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7998 terms. -/
def A374047 (n : ℕ) : ℤ :=
  A374047.P15202425446373321383.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7998 terms. -/
def A374047.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A375034.P14557958102364292036

`A375032(n+1)-A375033(n+1)`
-/

namespace A375034.P14557958102364292036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375032 (n + 1) - A375033 (n + 1)

end

end A375034.P14557958102364292036

noncomputable section

/-- A375034: The difference between the maximum odd exponent and the maximum even exponent in the prime factorization of n, where 0 is assigned to each maximum exponent if no such exponent exists.

Offset 1, canonical program `A375034.P14557958102364292036`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A375032, A375033, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A375034 (n : ℕ) : ℤ :=
  A375034.P14557958102364292036.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A375032, A375033, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A375034.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A375270.P13061720832720025766

`filter[A115975(n+1), A181183(#)]`
-/

namespace A375270.P13061720832720025766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115975 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A181183 (f1 j).toNat = 1) n)

end

end A375270.P13061720832720025766

noncomputable section

/-- A375270: Numbers of the form p^Fibonacci(2*k), where p is a prime and k >= 0.

Offset 1, canonical program `A375270.P13061720832720025766`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6558 terms. -/
def A375270 (n : ℕ) : ℤ :=
  A375270.P13061720832720025766.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6558 terms. -/
def A375270.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A376668.P2494882009302996714

`A003056(A033948(n+1)+n²-C(n, 2))`
-/

namespace A376668.P2494882009302996714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A033948 (n + 1) + ((n ^ 2 : ℤ) - (Nat.choose n 2 : ℤ))).toNat

end

end A376668.P2494882009302996714

noncomputable section

/-- A376668: Positive integers that do not appear more than once in the same row of A036038 (or A078760), i.e., numbers m such that A376663(m) = 1.

Offset 1, canonical program `A376668.P2494882009302996714`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 139 terms. -/
def A376668 (n : ℕ) : ℤ :=
  A376668.P2494882009302996714.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 139 terms. -/
def A376668.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A379584.P4296113022240431250

`gcd(A034386(n), A045948(n+1))*A045948(n+1)`
-/

namespace A379584.P4296113022240431250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (A034386 n) (A045948 (n + 1)) : ℤ) * A045948 (n + 1)

end

end A379584.P4296113022240431250

noncomputable section

/-- A379584: Denominators of the partial sums of the reciprocals of the powerful part function (A057521).

Offset 1, canonical program `A379584.P4296113022240431250`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 251 terms. -/
def A379584 (n : ℕ) : ℤ :=
  A379584.P4296113022240431250.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 251 terms. -/
def A379584.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A379705.P4574485097972664711

`A242219(n+1)²/(n+1)`
-/

namespace A379705.P4574485097972664711
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A242219 (n + 1) ^ 2 : ℚ) / (n + 1 : ℚ)

end

end A379705.P4574485097972664711

noncomputable section

/-- A379705: a(n) is the least integer k > n such that integers p, q exist for which n, p, k are in arithmetic and n, q, k are in geometric progression.

Offset 1, canonical program `A379705.P4574485097972664711`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A379705 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A379705.P4574485097972664711.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A379705.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A379917.P17079894553353828849

`A033879(A046390(n+1))/2`
-/

namespace A379917.P17079894553353828849
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033879 (A046390 (n + 1)).toNat : ℚ) / 2

end

end A379917.P17079894553353828849

noncomputable section

/-- A379917: a(n) is the deficiency of A046390(n), divided by 2.

Offset 1, canonical program `A379917.P17079894553353828849`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 313 terms. -/
def A379917 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A379917.P17079894553353828849.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 313 terms. -/
def A379917.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A380164.P11134746929295057135

`A380160((n+1)/A368167(n+1))`
-/

namespace A380164.P11134746929295057135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380160 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A368167 (n + 1) : ℚ))).toNat

end

end A380164.P11134746929295057135

noncomputable section

/-- A380164: a(n) is the value of the Euler totient function when applied to the largest unitary divisor of n that is a square.

Offset 1, canonical program `A380164.P11134746929295057135`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A380164 (n : ℕ) : ℤ :=
  A380164.P11134746929295057135.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A380164.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A380922.P14080248536527490904

`A365498(n+1)*A368247(n+1)`
-/

namespace A380922.P14080248536527490904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365498 (n + 1) * A368247 (n + 1)

end

end A380922.P14080248536527490904

noncomputable section

/-- A380922: Dirichlet g.f.: zeta(s) * Product_{p prime} (1 + 1/p^s + 1/p^(3*s)).

Offset 1, canonical program `A380922.P14080248536527490904`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A380922 (n : ℕ) : ℤ :=
  A380922.P14080248536527490904.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A380922.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A382509.P1592332629180381026

`filter[A390789(n+1), A353670(#)]`
-/

namespace A382509.P1592332629180381026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390789 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353670 (f1 j).toNat = 1) n)

end

end A382509.P1592332629180381026

noncomputable section

/-- A382509: Integers s = (p1+p2)/4 such that p1 and p2 are consecutive primes and s can be written in the form p*2^k with k>=0 and p>2 prime.

Offset 1, canonical program `A382509.P1592332629180381026`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 911 terms. -/
def A382509 (n : ℕ) : ℤ :=
  A382509.P1592332629180381026.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 911 terms. -/
def A382509.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A382787.P14011713050077807300

`A005361(record[A056192(n+1)])`
-/

namespace A382787.P14011713050077807300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056192 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A382787.P14011713050077807300

noncomputable section

/-- A382787: The product of exponents in the prime factorization of the numbers whose prime factorization contains exponents that are either 1 or even.

Offset 1, canonical program `A382787.P14011713050077807300`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8816 terms. -/
def A382787 (n : ℕ) : ℤ :=
  A382787.P14011713050077807300.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8816 terms. -/
def A382787.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A382966.P14209921295964203727

`∑{e}[A375072(n+1), A000073(#)]`
-/

namespace A382966.P14209921295964203727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375072 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A000073 (Nat.factorization (f1 n).natAbs p)

end

end A382966.P14209921295964203727

noncomputable section

/-- A382966: The number of non-unitary prime divisors of the n-th biquadratefree number that is not cubefree.

Offset 1, canonical program `A382966.P14209921295964203727`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A382966 (n : ℕ) : ℤ :=
  A382966.P14209921295964203727.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A382966.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A385047.P12539771583859150340

`A034448(n+1)/A192066(n+1)`
-/

namespace A385047.P12539771583859150340
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034448 (n + 1) : ℚ) / (A192066 (n + 1) : ℚ)

end

end A385047.P12539771583859150340

noncomputable section

/-- A385047: The sum of the unitary divisors of n that are powers of 2.

Offset 1, canonical program `A385047.P12539771583859150340`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034448, A192066, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A385047 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A385047.P12539771583859150340.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034448, A192066, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A385047.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A386023.P11392362810406853193

`∩[A329760(n+1), A007091(n)]`
-/

namespace A386023.P11392362810406853193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329760 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007091 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386023.P11392362810406853193

noncomputable section

/-- A386023: Primes having only {0, 1, 3, 4} as digits.

Offset 1, canonical program `A386023.P11392362810406853193`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 254 terms. -/
def A386023 (n : ℕ) : ℤ :=
  (A386023.P11392362810406853193.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 254 terms. -/
def A386023.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A386113.P5229020975382995121

`∩[A030096(n+1), A329760(n+1)]`
-/

namespace A386113.P5229020975382995121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030096 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329760 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386113.P5229020975382995121

noncomputable section

/-- A386113: Primes having only {1, 3, 5, 9} as digits.

Offset 1, canonical program `A386113.P5229020975382995121`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 583 terms. -/
def A386113 (n : ℕ) : ℤ :=
  (A386113.P5229020975382995121.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 583 terms. -/
def A386113.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A389074.P18108287681303167250

`A034448(n+1)/A323159(n+1)`
-/

namespace A389074.P18108287681303167250
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034448 (n + 1) : ℚ) / (A323159 (n + 1) : ℚ)

end

end A389074.P18108287681303167250

noncomputable section

/-- A389074: Numerator of ratio A034448(n) / A048250(n), where A034448 is the sum of unitary divisors and A048250 is the sum of squarefree divisors.

Offset 1, canonical program `A389074.P18108287681303167250`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034448, A323159, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A389074 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A389074.P18108287681303167250.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034448, A323159, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A389074.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A389075.P12257504307077228747

`A048250(n+1)/A323159(n+1)`
-/

namespace A389075.P12257504307077228747
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048250 (n + 1) : ℚ) / (A323159 (n + 1) : ℚ)

end

end A389075.P12257504307077228747

noncomputable section

/-- A389075: Denominator of ratio A034448(n) / A048250(n), where A034448 is the sum of unitary divisors and A048250 is the sum of squarefree divisors.

Offset 1, canonical program `A389075.P12257504307077228747`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048250, A323159, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A389075 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A389075.P12257504307077228747.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048250, A323159, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A389075.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A389171.P214666749736316721

`1-A389170(n+1)+n`
-/

namespace A389171.P214666749736316721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A389170 (n + 1) + (n : ℤ)

end

end A389171.P214666749736316721

noncomputable section

/-- A389171: a(n) = n + A048146(n) - A057723(n), where A048146 is sum of non-unitary divisors and A057723 is sum of positive divisors of n that are divisible by every prime that divides n.

Offset 1, canonical program `A389171.P214666749736316721`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A389171 (n : ℕ) : ℤ :=
  A389171.P214666749736316721.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A389171.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A389204.P15149027481728119098

`A325973(n+1)-A325974(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A389204.P15149027481728119098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325973 (n + 1) - A325974 (n + 1)

end

end A389204.P15149027481728119098

noncomputable section

/-- A389204: a(n) = A325973(n) - A325974(n), where A325973 and A325974 are arithmetic means of {sum of unitary divisors and sum of squarefree divisors} and of {sum of non-unitary divisors and sum of nonsquarefree divisors}, respectively.

Offset 1, canonical program `A389204.P15149027481728119098`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A325973, A325974, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A389204 (n : ℕ) : ℤ :=
  A389204.P15149027481728119098.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A325973, A325974, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A389204.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A389213.P6416796511962036448

`lt[A325974(n+1), n+1]+1`
-/

namespace A389213.P6416796511962036448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325974 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A389213.P6416796511962036448

noncomputable section

/-- A389213: Numbers k such that A048146(k)+A162296(k) < 2*k, where A048146 is the sum of non-unitary divisors of n, and A162296 is the sum of divisors of n that have a square factor.

Offset 1, canonical program `A389213.P6416796511962036448`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A389213 (n : ℕ) : ℤ :=
  (A389213.P6416796511962036448.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A389213.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A389216.P2522826427568100889

`filter[A389215(n+2), A087049(#)]`
-/

namespace A389216.P2522826427568100889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389215 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A087049 (f1 j).toNat = 1) n)

end

end A389216.P2522826427568100889

noncomputable section

/-- A389216: Nonsquarefree numbers k such that {sum of unitary divisors of k} plus {sum of squarefree divisors of k} >= 2*k.

Offset 1, canonical program `A389216.P2522826427568100889`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1976 terms. -/
def A389216 (n : ℕ) : ℤ :=
  A389216.P2522826427568100889.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1976 terms. -/
def A389216.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A389459.P8033824692858736196

`filter[A389458(n+1), A353814(#)]`
-/

namespace A389459.P8033824692858736196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389458 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353814 (f1 j).toNat = 1) n)

end

end A389459.P8033824692858736196

noncomputable section

/-- A389459: Numbers whose sum of nonsquarefree divisors (A162296) is congruent to 2 modulo 4.

Offset 1, canonical program `A389459.P8033824692858736196`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3496 terms. -/
def A389459 (n : ℕ) : ℤ :=
  A389459.P8033824692858736196.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3496 terms. -/
def A389459.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A390126.P4203344648687792492

`∪[A177492(n+1), A177493(n+1)]`
-/

namespace A390126.P4203344648687792492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177492 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177493 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A390126.P4203344648687792492

noncomputable section

/-- A390126: Powers k^m, m = 2..3, of squarefree composite k.

Offset 1, canonical program `A390126.P4203344648687792492`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A390126 (n : ℕ) : ℤ :=
  (A390126.P4203344648687792492.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A390126.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A391497.P15735606706962389679

`∩[A362148(n+1), A375072(n+1)]`
-/

namespace A391497.P15735606706962389679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362148 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375072 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391497.P15735606706962389679

noncomputable section

/-- A391497: Biquadratefree numbers that are neither cubefree nor cubefull.

Offset 1, canonical program `A391497.P15735606706962389679`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5507 terms. -/
def A391497 (n : ℕ) : ℤ :=
  (A391497.P15735606706962389679.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5507 terms. -/
def A391497.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A391793.P952432281470037196

`∑{d}[n+1, A253206(#)*A307425((n+1)/#)]`
-/

namespace A391793.P952432281470037196
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A253206 d * A307425 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A391793.P952432281470037196

noncomputable section

/-- A391793: Multiplicative sequence a(n) with a(p^e) = ((e mod 5) * ((e mod 5) - 5) + 4) / 2 for prime p and e > 0.

Offset 1, canonical program `A391793.P952432281470037196`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A391793 (n : ℕ) : ℤ :=
  A391793.P952432281470037196.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A391793.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A392001.P6847206826078097584

`comp[floor((A033948(n+1)-1/2)/2)]`
-/

namespace A392001.P6847206826078097584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((A033948 (n + 1) : ℚ) - (1 : ℚ) / 2) / 2⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A392001.P6847206826078097584

noncomputable section

/-- A392001: Numbers k such that k + 1 is not a power of an odd prime and 2*k + 1 is not a prime power.

Offset 1, canonical program `A392001.P6847206826078097584`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A392001 (n : ℕ) : ℤ :=
  (A392001.P6847206826078097584.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A392001.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A392166.P11144800209596084417

`A048250(n+1)*A295657(n+1)`
-/

namespace A392166.P11144800209596084417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048250 (n + 1) * A295657 (n + 1)

end

end A392166.P11144800209596084417

noncomputable section

/-- A392166: The Dedekind psi function value of the smallest number whose square is divisible by n.

Offset 1, canonical program `A392166.P11144800209596084417`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A392166 (n : ℕ) : ℤ :=
  A392166.P11144800209596084417.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A392166.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A348279.P7409364406162416181

`∑{d}[n+1, A068720(#)/2]`
-/

namespace A348279.P7409364406162416181
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (A068720 d : ℚ) / 2

end

end A348279.P7409364406162416181

noncomputable section

/-- A348279: a(n) = Sum_{d|n} d*d', where d' is the arithmetic derivative of d (A003415).

Offset 1, canonical program `A348279.P7409364406162416181`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A348279 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A348279.P7409364406162416181.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A348279.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A351714.P12398140737547645289

`lt[lcm(n, A116543(n))-n, n]`
-/

namespace A351714.P12398140737547645289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.lcm (n : ℤ) (A116543 n) : ℤ) - (n : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A351714.P12398140737547645289

noncomputable section

/-- A351714: Lucas-Niven numbers: numbers that are divisible by the number of terms in their minimal (or greedy) representation in terms of the Lucas numbers (A130310).

Offset 1, canonical program `A351714.P12398140737547645289`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1993 terms. -/
def A351714 (n : ℕ) : ℤ :=
  (A351714.P12398140737547645289.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1993 terms. -/
def A351714.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A353956.P14013510539226325416

`(∑{d}[n+1, #]-A353959(n+1))/2`
-/

namespace A353956.P14013510539226325416
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) - A353959 (n + 1) : ℚ) / 2

end

end A353956.P14013510539226325416

noncomputable section

/-- A353956: Sum of the divisors of n whose arithmetic derivative is odd.

Offset 1, canonical program `A353956.P14013510539226325416`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A353956 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A353956.P14013510539226325416.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A353956.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A366562.P1526609418940830950

`∏{p}[n+1, 1-#]*A229297((n+1)²/∏{p}[n+1, #])`
-/

namespace A366562.P1526609418940830950
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ p ∈ Nat.primeFactors (f1 n), (1 - (p : ℤ))) * A229297 (SequenceMachineLib.roundAway (((n + 1) ^ 2 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ))).toNat

end

end A366562.P1526609418940830950

noncomputable section

/-- A366562: a(n) = Sum_{k=1..n} A366561(n,k)*A023900(k)/n.

Offset 1, canonical program `A366562.P1526609418940830950`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 197 terms. -/
def A366562 (n : ℕ) : ℤ :=
  A366562.P1526609418940830950.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 197 terms. -/
def A366562.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A366785.P16198439604907092836

`gcd(∑{e}[n+1, #], A061395(∏{p}[n+1, #]))`
-/

namespace A366785.P16198439604907092836
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℤ) (A061395 (∏ p ∈ Nat.primeFactors (f2 n), p))

end

end A366785.P16198439604907092836

noncomputable section

/-- A366785: Greatest common divisor of the number of prime factors (counted with multiplicity, A001222) and the greatest prime index (A061395) of n.

Offset 1, canonical program `A366785.P16198439604907092836`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A366785 (n : ℕ) : ℤ :=
  (A366785.P16198439604907092836.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A366785.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A368900.P8096456878488836623

`A369028(A261693(n))`
-/

namespace A368900.P8096456878488836623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369028 (A261693 n).toNat

end

end A368900.P8096456878488836623

noncomputable section

/-- A368900: LCM-transform of Doudna sequence.

Offset 1, canonical program `A368900.P8096456878488836623`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A368900 (n : ℕ) : ℤ :=
  A368900.P8096456878488836623.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A368900.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A372442.P7915193120500991903

`A070939(n+2)-A061395(n+2)`
-/

namespace A372442.P7915193120500991903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (n + 2) - A061395 (n + 2)

end

end A372442.P7915193120500991903

noncomputable section

/-- A372442: (Greatest binary index of n) minus (greatest prime index of n).

Offset 2, canonical program `A372442.P7915193120500991903`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. -/
def A372442 (n : ℕ) : ℤ :=
  A372442.P7915193120500991903.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. -/
def A372442.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A375031.P13943005656695956466

`eq[2, A375033(n+1)]+1`
-/

namespace A375031.P13943005656695956466
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375033 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A375031.P13943005656695956466

noncomputable section

/-- A375031: Numbers whose prime factorization has at least one exponent that equals 2 and no higher even exponent.

Offset 1, canonical program `A375031.P13943005656695956466`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2424 terms. -/
def A375031 (n : ℕ) : ℤ :=
  (A375031.P13943005656695956466.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2424 terms. -/
def A375031.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A377880.P16509850841699067558

`∪[A000469(n+1), A067259(n+1)]`
-/

namespace A377880.P16509850841699067558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000469 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067259 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A377880.P16509850841699067558

noncomputable section

/-- A377880: Nonprime cubefree numbers.

Offset 1, canonical program `A377880.P16509850841699067558`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A377880 (n : ℕ) : ℤ :=
  (A377880.P16509850841699067558.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A377880.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A381542.P14309629720636309362

`eq[A051903(n+1), A061395(2*(n+1))]+1`
-/

namespace A381542.P14309629720636309362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A381542.P14309629720636309362

noncomputable section

/-- A381542: Numbers > 1 whose greatest prime index equals their greatest prime multiplicity.

Offset 1, canonical program `A381542.P14309629720636309362`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 176 terms. -/
def A381542 (n : ℕ) : ℤ :=
  (A381542.P14309629720636309362.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 176 terms. -/
def A381542.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A351573.P12299179014479245270

`A003415(A350389(n+1))`
-/

namespace A351573.P12299179014479245270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A350389 (n + 1)).toNat

end

end A351573.P12299179014479245270

noncomputable section

/-- A351573: Arithmetic derivative of the largest unitary divisor of n that is an exponentially odd number.

Offset 1, canonical program `A351573.P12299179014479245270`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, A350389, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A351573 (n : ℕ) : ℤ :=
  A351573.P12299179014479245270.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, A350389, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A351573.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A351942.P16038131348684486371

`A003415(A181819(n+1))`
-/

namespace A351942.P16038131348684486371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A181819 (n + 1)).toNat

end

end A351942.P16038131348684486371

noncomputable section

/-- A351942: Arithmetic derivative of A181819(n), where A181819(n) = Product prime(e(i)) when n = Product prime(i)^e(i).

Offset 1, canonical program `A351942.P16038131348684486371`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, A181819, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A351942 (n : ℕ) : ℤ :=
  A351942.P16038131348684486371.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, A181819, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A351942.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A353493.P11274573970098312358

`A003415(n)%4`
-/

namespace A353493.P11274573970098312358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003415 n) 4

end

end A353493.P11274573970098312358

noncomputable section

/-- A353493: The arithmetic derivative of n, reduced modulo 4.

Offset 0, canonical program `A353493.P11274573970098312358`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A353493 (n : ℕ) : ℤ :=
  A353493.P11274573970098312358.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A353493.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A353494.P3598383137759262776

`round(gcd(4, A003415(n))/8)`
-/

namespace A353494.P3598383137759262776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Int.gcd 4 (A003415 n) : ℚ) / 8)

end

end A353494.P3598383137759262776

noncomputable section

/-- A353494: a(n) = 1 if the arithmetic derivative of n is a multiple of 4, otherwise 0.

Offset 0, canonical program `A353494.P3598383137759262776`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A353494 (n : ℕ) : ℤ :=
  A353494.P3598383137759262776.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A353494.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A353495.P17772211378509351063

`C(A003415(n)+5, 3)%2`
-/

namespace A353495.P17772211378509351063
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A003415 n + 5).toNat 3 % 2

end

end A353495.P17772211378509351063

noncomputable section

/-- A353495: a(n) = 1 if the arithmetic derivative of n is of the form 4k+2, otherwise 0.

Offset 0, canonical program `A353495.P17772211378509351063`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A353495 (n : ℕ) : ℤ :=
  (A353495.P17772211378509351063.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A353495.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A359430.P17743289433619034511

`val(gcd(3, A003415(n)), 3)`
-/

namespace A359430.P17743289433619034511
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (Int.gcd 3 (A003415 n)) 3

end

end A359430.P17743289433619034511

noncomputable section

/-- A359430: a(n) = 1 if the arithmetic derivative of n is a multiple of 3, otherwise 0.

Offset 0, canonical program `A359430.P17743289433619034511`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A359430 (n : ℕ) : ℤ :=
  (A359430.P17743289433619034511.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A359430.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A359820.P4426895942293485706

`(n+A003415(n))%2`
-/

namespace A359820.P4426895942293485706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n : ℤ) + A003415 n) 2

end

end A359820.P4426895942293485706

noncomputable section

/-- A359820: a(n) = 1 if n and n' are of different parity, otherwise 0. Here n' stands for the arithmetic derivative of n, A003415(n).

Offset 0, canonical program `A359820.P4426895942293485706`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A359820 (n : ℕ) : ℤ :=
  A359820.P4426895942293485706.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A359820.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A360758.P7102341119995455638

`eq[2, A096501(A003415(n)+1)]`
-/

namespace A360758.P7102341119995455638
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096501 (A003415 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A360758.P7102341119995455638

noncomputable section

/-- A360758: Numbers k for which k' - 1 and k' + 1 are twin primes, where the prime denotes the arithmetic derivative.

Offset 1, canonical program `A360758.P7102341119995455638`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 138 terms. -/
def A360758 (n : ℕ) : ℤ :=
  (A360758.P7102341119995455638.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 138 terms. -/
def A360758.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A369049.P9666257041072368809

`(n+2)%A003415(n+2)`
-/

namespace A369049.P9666257041072368809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 2 : ℤ) (A003415 (n + 2))

end

end A369049.P9666257041072368809

noncomputable section

/-- A369049: a(n) = n mod n', where n' is the arithmetic derivative of n, A003415.

Offset 2, canonical program `A369049.P9666257041072368809`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A369049 (n : ℕ) : ℤ :=
  A369049.P9666257041072368809.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A369049.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A369052.P13766350415687932564

`n-2*A003415(n)`
-/

namespace A369052.P13766350415687932564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 2 * A003415 n

end

end A369052.P13766350415687932564

noncomputable section

/-- A369052: a(n) = n - n'*2, where n' is the arithmetic derivative of n, A003415.

Offset 0, canonical program `A369052.P13766350415687932564`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A369052 (n : ℕ) : ℤ :=
  A369052.P13766350415687932564.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A369052.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A369252.P4904178596976423146

`A003415(A046316(n+1))`
-/

namespace A369252.P4904178596976423146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A046316 (n + 1)).toNat

end

end A369252.P4904178596976423146

noncomputable section

/-- A369252: Arithmetic derivative applied to the numbers of the form p*q*r where p,q,r are (not necessarily distinct) odd primes.

Offset 1, canonical program `A369252.P4904178596976423146`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, A046316, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A369252 (n : ℕ) : ℤ :=
  A369252.P4904178596976423146.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, A046316, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A369252.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A369638.P3779304299568715450

`A003415(a(n-1))` with `a(0)=128`
-/

namespace A369638.P3779304299568715450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [128] fun n a =>
  A003415 (a (n - 1)).toNat

end

end A369638.P3779304299568715450

noncomputable section

/-- A369638: The n-th arithmetic derivative of 2^7.

Offset 0, canonical program `A369638.P3779304299568715450`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A369638 (n : ℕ) : ℤ :=
  A369638.P3779304299568715450.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A369638.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A369967.P2338115965869939887

`1-A011558(A003415(n))`
-/

namespace A369967.P2338115965869939887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A011558 (A003415 n).toNat

end

end A369967.P2338115965869939887

noncomputable section

/-- A369967: a(n) = 1 if the arithmetic derivative of n is a multiple of 5, otherwise 0.

Offset 0, canonical program `A369967.P2338115965869939887`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A369967 (n : ℕ) : ℤ :=
  A369967.P2338115965869939887.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A369967.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A370596.P16435059816555867442

`eq[(-1)^n, A003415(A327491(n))]`
-/

namespace A370596.P16435059816555867442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A327491 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A370596.P16435059816555867442

noncomputable section

/-- A370596: Numbers k such that A007814(k) is a prime number.

Offset 1, canonical program `A370596.P16435059816555867442`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2073 terms. -/
def A370596 (n : ℕ) : ℤ :=
  (A370596.P16435059816555867442.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2073 terms. -/
def A370596.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A373364.P6021847025175795108

`gcd(∑{p}[n+1, #*val(n+1, #)], A003415(n+1))`
-/

namespace A373364.P6021847025175795108
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((∑ p ∈ Nat.primeFactors (f1 n), p * SequenceMachineLib.valuation (n + 1) p : ℕ) : ℤ) (A003415 (n + 1))

end

end A373364.P6021847025175795108

noncomputable section

/-- A373364: a(n) = gcd(A001414(n), A003415(n)), where A001414 is the sum of prime factors with repetition, and A003415 is the arithmetic derivative.

Offset 1, canonical program `A373364.P6021847025175795108`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373364 (n : ℕ) : ℤ :=
  (A373364.P6021847025175795108.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373364.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A379967.P12250939003195279045

`A003415(A003557(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A379967.P12250939003195279045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A003557 (n + 1)).toNat

end

end A379967.P12250939003195279045

noncomputable section

/-- A379967: Arithmetic derivative of {n divided by its largest squarefree divisor}: a(n) = A003415(A003557(n)).

Offset 1, canonical program `A379967.P12250939003195279045`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, A003557, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A379967 (n : ℕ) : ℤ :=
  A379967.P12250939003195279045.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, A003557, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A379967.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A347130.P3321341918347765023

`∑{d}[n+1, A347131(#)]`
-/

namespace A347130.P3321341918347765023
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A347131 d

end

end A347130.P3321341918347765023

noncomputable section

/-- A347130: a(n) = Sum_{d|n} d * A003415(n/d), where A003415 is the arithmetic derivative.

Offset 1, canonical program `A347130.P3321341918347765023`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A347130 (n : ℕ) : ℤ :=
  A347130.P3321341918347765023.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A347130.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A348327.P11076907261933524591

`1-A347950(n+1)`
-/

namespace A348327.P11076907261933524591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A347950 (n + 1)

end

end A348327.P11076907261933524591

noncomputable section

/-- A348327: Characteristic function of numbers that have no middle divisors.

Offset 1, canonical program `A348327.P11076907261933524591`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A347950, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A348327 (n : ℕ) : ℤ :=
  A348327.P11076907261933524591.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A347950, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A348327.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A348364.P5163504315235711716

`1+A347950(n+1)`
-/

namespace A348364.P5163504315235711716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A347950 (n + 1)

end

end A348364.P5163504315235711716

noncomputable section

/-- A348364: Number of vertices on the axis of symmetry of the symmetric representation of sigma(n).

Offset 1, canonical program `A348364.P5163504315235711716`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A347950, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A348364 (n : ℕ) : ℤ :=
  A348364.P5163504315235711716.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A347950, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A348364.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A348471.P4748451350327565976

`eq[0, A347950(2*(n+1))]+1`
-/

namespace A348471.P4748451350327565976
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347950 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A348471.P4748451350327565976

noncomputable section

/-- A348471: One half of the even numbers without middle divisors.

Offset 1, canonical program `A348471.P4748451350327565976`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A348471 (n : ℕ) : ℤ :=
  (A348471.P4748451350327565976.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A348471.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A348504.P8886190148475080709

`A000203(n+1)/A348503(n+1)`
-/

namespace A348504.P8886190148475080709
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) : ℚ) / (A348503 (n + 1) : ℚ)

end

end A348504.P8886190148475080709

noncomputable section

/-- A348504: a(n) = sigma(n) / gcd(sigma(n), usigma(n)), where sigma is the sum of divisors function, A000203, and usigma is the unitary sigma, A034448.

Offset 1, canonical program `A348504.P8886190148475080709`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A348503, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A348504 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A348504.P8886190148475080709.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A348503, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A348504.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A348505.P18197901835979243919

`A034448(n+1)/A348503(n+1)`
-/

namespace A348505.P18197901835979243919
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034448 (n + 1) : ℚ) / (A348503 (n + 1) : ℚ)

end

end A348505.P18197901835979243919

noncomputable section

/-- A348505: a(n) = usigma(n) / gcd(sigma(n), usigma(n)), where sigma is the sum of divisors function, A000203, and usigma is the unitary sigma, A034448.

Offset 1, canonical program `A348505.P18197901835979243919`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034448, A348503, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A348505 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A348505.P18197901835979243919.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034448, A348503, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A348505.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A348907.P8875665345231982490

`A008578(A342165(n+2))`
-/

namespace A348907.P8875665345231982490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A342165 (n + 2)).toNat

end

end A348907.P8875665345231982490

noncomputable section

/-- A348907: If n is prime, a(n) = n, else a(n) = a(n-pi(n)), n >= 2; where pi is the prime counting function A000720.

Offset 2, canonical program `A348907.P8875665345231982490`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A348907 (n : ℕ) : ℤ :=
  A348907.P8875665345231982490.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A348907.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A348985.P13379498630196334524

`A000203(n+1)/A348984(n+1)`
-/

namespace A348985.P13379498630196334524
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) : ℚ) / (A348984 (n + 1) : ℚ)

end

end A348985.P13379498630196334524

noncomputable section

/-- A348985: Numerator of ratio sigma(n) / A325973(n), where A325973 is the arithmetic mean of {sum of squarefree divisors} and {sum of unitary divisors}.

Offset 1, canonical program `A348985.P13379498630196334524`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A348984, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A348985 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A348985.P13379498630196334524.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A348984, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A348985.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A348986.P14080058604187377946

`A325973(n+1)/A348984(n+1)`
-/

namespace A348986.P14080058604187377946
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A325973 (n + 1) : ℚ) / (A348984 (n + 1) : ℚ)

end

end A348986.P14080058604187377946

noncomputable section

/-- A348986: Denominator of ratio sigma(n) / A325973(n), where A325973 is the arithmetic mean of {sum of squarefree divisors} and {sum of unitary divisors}.

Offset 1, canonical program `A348986.P14080058604187377946`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A325973, A348984, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A348986 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A348986.P14080058604187377946.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A325973, A348984, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A348986.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A349133.P9132433832070861361

`∑{d}[n+1, A349130(#)*A349394((n+1)/#)]`
-/

namespace A349133.P9132433832070861361
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A349130 d * A349394 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349133.P9132433832070861361

noncomputable section

/-- A349133: Dirichlet convolution of A003415 with A003958, where A003415 is the arithmetic derivative and A003958 is fully multiplicative with a(p) = (p-1).

Offset 1, canonical program `A349133.P9132433832070861361`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A349133 (n : ℕ) : ℤ :=
  A349133.P9132433832070861361.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A349133.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A351310.P1649813851265808387

`A013958((n+1)/A019554(n+1))`
-/

namespace A351310.P1649813851265808387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013958 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A019554 (n + 1) : ℚ))).toNat

end

end A351310.P1649813851265808387

noncomputable section

/-- A351310: Sum of the 5th powers of the square divisors of n.

Offset 1, canonical program `A351310.P1649813851265808387`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A351310 (n : ℕ) : ℤ :=
  A351310.P1649813851265808387.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A351310.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A351518.P3848727873794154647

`A007947(n+1)/A351517(n+1)`
-/

namespace A351518.P3848727873794154647
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007947 (n + 1) : ℚ) / (A351517 (n + 1) : ℚ)

end

end A351518.P3848727873794154647

noncomputable section

/-- A351518: a(n) = Product_{p|n, p prime} p^((pi(p)+1) mod 2).

Offset 1, canonical program `A351518.P3848727873794154647`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007947, A351517, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A351518 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A351518.P3848727873794154647.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007947, A351517, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A351518.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A351568.P9985076978729249611

`∑{d}[A350388(n+1), #]`
-/

namespace A351568.P9985076978729249611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350388 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A351568.P9985076978729249611

noncomputable section

/-- A351568: Sum of the divisors of the largest unitary divisor of n that is a square.

Offset 1, canonical program `A351568.P9985076978729249611`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A351568 (n : ℕ) : ℤ :=
  (A351568.P9985076978729249611.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A351568.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A351572.P4940805872886659141

`A003415(A350388(n+1))`
-/

namespace A351572.P4940805872886659141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A350388 (n + 1)).toNat

end

end A351572.P4940805872886659141

noncomputable section

/-- A351572: Arithmetic derivative of the largest unitary divisor of n that is a square.

Offset 1, canonical program `A351572.P4940805872886659141`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, A350388, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A351572 (n : ℕ) : ℤ :=
  A351572.P4940805872886659141.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, A350388, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A351572.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A352775.P2048892064585624364

`A352753(n+1)+A352754(n+1)`
-/

namespace A352775.P2048892064585624364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352753 (n + 1) + A352754 (n + 1)

end

end A352775.P2048892064585624364

noncomputable section

/-- A352775: a(n) = pi(n) * (Sum_{n <= q < 2n, q prime} q) + (pi(2n-1) - pi(n-1)) * (Sum_{p <= n, p prime} p).

Offset 1, canonical program `A352775.P2048892064585624364`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A352753, A352754, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A352775 (n : ℕ) : ℤ :=
  A352775.P2048892064585624364.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A352753, A352754, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A352775.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A353376.P17395599227026768174

`∑{d}[n+1, A353374(#)]`
-/

namespace A353376.P17395599227026768174
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A353374 d

end

end A353376.P17395599227026768174

noncomputable section

/-- A353376: Inverse Möbius transform of A353374.

Offset 1, canonical program `A353376.P17395599227026768174`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A353376 (n : ℕ) : ℤ :=
  A353376.P17395599227026768174.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A353376.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A353381.P8581295006819981312

`∑{d}[n+1, abs(A353354((n+1)/#))]`
-/

namespace A353381.P8581295006819981312
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), |A353354 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat|

end

end A353381.P8581295006819981312

noncomputable section

/-- A353381: Number of divisors of n not in A353355.

Offset 1, canonical program `A353381.P8581295006819981312`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A353381 (n : ℕ) : ℤ :=
  A353381.P8581295006819981312.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A353381.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A353446.P1225759683580056269

`A008486(A353352(n+1))-Δ[A006218(n)]`
-/

namespace A353446.P1225759683580056269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A353352 (n + 1)).toNat - (f1 (n + 1) - f1 n)

end

end A353446.P1225759683580056269

noncomputable section

/-- A353446: Let g be the inverse Möbius transform of the Eisenstein integer-valued function f defined in A353445. a(n) is twice the real part of g(n).

Offset 1, canonical program `A353446.P1225759683580056269`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A353446 (n : ℕ) : ℤ :=
  A353446.P1225759683580056269.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A353446.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A355709.P10371335287816262552

`eq[A169611(n+1)+1, A169611(A004277(n))]`
-/

namespace A355709.P10371335287816262552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169611 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169611 (A004277 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A355709.P10371335287816262552

noncomputable section

/-- A355709: Numbers k such that k and k+1 have the same number of 3-smooth divisors.

Offset 1, canonical program `A355709.P10371335287816262552`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 664 terms. -/
def A355709 (n : ℕ) : ℤ :=
  (A355709.P10371335287816262552.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 664 terms. -/
def A355709.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A355710.P817791600316360444

`eq[A355583(n+1), A355583(n+2)]+1`
-/

namespace A355710.P817791600316360444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355583 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355583 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A355710.P817791600316360444

noncomputable section

/-- A355710: Numbers k such that k and k+1 have the same number of 5-smooth divisors.

Offset 1, canonical program `A355710.P817791600316360444`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1173 terms. -/
def A355710 (n : ℕ) : ℤ :=
  (A355710.P817791600316360444.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1173 terms. -/
def A355710.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A358347.P10314352344576710281

`A034448(n+1)/A358346(n+1)`
-/

namespace A358347.P10314352344576710281
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034448 (n + 1) : ℚ) / (A358346 (n + 1) : ℚ)

end

end A358347.P10314352344576710281

noncomputable section

/-- A358347: a(n) is the sum of the unitary divisors of n that are squares.

Offset 1, canonical program `A358347.P10314352344576710281`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034448, A358346, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A358347 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A358347.P10314352344576710281.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034448, A358346, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A358347.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A358775.P186316073311137484

`A065043(n+1)-A353374(n+1)`
-/

namespace A358775.P186316073311137484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065043 (n + 1) - A353374 (n + 1)

end

end A358775.P186316073311137484

noncomputable section

/-- A358775: a(n) = 1 if the prime factorization of n has an even number of prime factors that sum to an odd number, otherwise 0.

Offset 1, canonical program `A358775.P186316073311137484`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A065043, A353374, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A358775 (n : ℕ) : ℤ :=
  A358775.P186316073311137484.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A065043, A353374, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A358775.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A359042.P13411366105931231401

`A230877(n)+A080791(n)`
-/

namespace A359042.P13411366105931231401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230877 n + A080791 n

end

end A359042.P13411366105931231401

noncomputable section

/-- A359042: Sum of partial sums of the n-th composition in standard order (A066099).

Offset 0, canonical program `A359042.P13411366105931231401`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8193 terms. -/
def A359042 (n : ℕ) : ℤ :=
  A359042.P13411366105931231401.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8193 terms. -/
def A359042.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A359156.P3267023376151009926

`A065043(n+1)*A353627(n+1)`
-/

namespace A359156.P3267023376151009926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065043 (n + 1) * A353627 (n + 1)

end

end A359156.P3267023376151009926

noncomputable section

/-- A359156: a(n) = 1 if the odd part of n is squarefree and the number of prime factors of n (with multiplicity) is even, otherwise 0.

Offset 1, canonical program `A359156.P3267023376151009926`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A065043, A353627, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A359156 (n : ℕ) : ℤ :=
  A359156.P3267023376151009926.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A065043, A353627, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A359156.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A362965.P6810263641172725990

`A000720(A246655(n+1))`
-/

namespace A362965.P6810263641172725990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A246655 (n + 1)).toNat

end

end A362965.P6810263641172725990

noncomputable section

/-- A362965: Number of primes <= the n-th prime power.

Offset 1, canonical program `A362965.P6810263641172725990`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9700 terms. -/
def A362965 (n : ℕ) : ℤ :=
  A362965.P6810263641172725990.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9700 terms. -/
def A362965.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A364015.P9253596090287980520

`A364012(n+1)-A121443(n+1)`
-/

namespace A364015.P9253596090287980520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364012 (n + 1) - A121443 (n + 1)

end

end A364015.P9253596090287980520

noncomputable section

/-- A364015: Expansion of Sum_{k>0} k * x^(2*k) / (1 + x^(3*k)).

Offset 1, canonical program `A364015.P9253596090287980520`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A364015 (n : ℕ) : ℤ :=
  A364015.P9253596090287980520.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A364015.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A364255.P6900546977642634575

`gcd(n, A163511(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A364255.P6900546977642634575
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A163511 n)

end

end A364255.P6900546977642634575

noncomputable section

/-- A364255: a(n) = gcd(n, A163511(n)).

Offset 0, canonical program `A364255.P6900546977642634575`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A163511, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A364255 (n : ℕ) : ℤ :=
  (A364255.P6900546977642634575.a n : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A163511, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A364255.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A364258.P6786196179042320049

`A163511(n)-n`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A364258.P6786196179042320049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163511 n - (n : ℤ)

end

end A364258.P6786196179042320049

noncomputable section

/-- A364258: a(n) = A163511(n) - n.

Offset 0, canonical program `A364258.P6786196179042320049`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A163511, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A364258 (n : ℕ) : ℤ :=
  A364258.P6786196179042320049.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A163511, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A364258.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A365208.P2604506986678797338

`∑{d}[n+1, A072078(#)*A373154((n+1)/#)]`
-/

namespace A365208.P2604506986678797338
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A072078 d * A373154 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A365208.P2604506986678797338

noncomputable section

/-- A365208: The number of divisors d of n such that gcd(d, n/d) is a 3-smooth number (A003586).

Offset 1, canonical program `A365208.P2604506986678797338`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A365208 (n : ℕ) : ℤ :=
  A365208.P2604506986678797338.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A365208.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A365216.P10045536079749454059

`or(1, A246655(n+1))+1`
-/

namespace A365216.P10045536079749454059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A246655 (n + 1)) + 1

end

end A365216.P10045536079749454059

noncomputable section

/-- A365216: Maximal k such that there exists a k-arc on the projective plane over GF(q), where q = A246655(n) is the n-th prime power > 1.

Offset 1, canonical program `A365216.P10045536079749454059`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A365216 (n : ℕ) : ℤ :=
  A365216.P10045536079749454059.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A365216.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A365479.P6095701370464584458

`A034676(A019554(n+1))`
-/

namespace A365479.P6095701370464584458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034676 (A019554 (n + 1)).toNat

end

end A365479.P6095701370464584458

noncomputable section

/-- A365479: The sum of unitary divisors of the smallest square divisible by n.

Offset 1, canonical program `A365479.P6095701370464584458`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A365479 (n : ℕ) : ℤ :=
  A365479.P6095701370464584458.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A365479.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A365807.P7768995048888628650

`A010052(A163511(n))`
-/

namespace A365807.P7768995048888628650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (A163511 n).toNat

end

end A365807.P7768995048888628650

noncomputable section

/-- A365807: a(n) = 1 if A163511(n) is a square, 0 otherwise.

Offset 0, canonical program `A365807.P7768995048888628650`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010052, A163511, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A365807 (n : ℕ) : ℤ :=
  A365807.P7768995048888628650.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010052, A163511, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A365807.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A366148.P12886226844423616150

`A000203(n+1)/A366146(n+1)`
-/

namespace A366148.P12886226844423616150
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) : ℚ) / (A366146 (n + 1) : ℚ)

end

end A366148.P12886226844423616150

noncomputable section

/-- A366148: The sum of divisors of the cubefree part of n (A360539).

Offset 1, canonical program `A366148.P12886226844423616150`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A366146, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A366148 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A366148.P12886226844423616150.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A366146, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A366148.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A366275.P12360444593326866610

`A163511(A057889(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A366275.P12360444593326866610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163511 (A057889 n).toNat

end

end A366275.P12360444593326866610

noncomputable section

/-- A366275: The Cat's tongue permutation: a(n) = A163511(A057889(n)).

Offset 0, canonical program `A366275.P12360444593326866610`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A057889, A163511, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A366275 (n : ℕ) : ℤ :=
  A366275.P12360444593326866610.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A057889, A163511, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A366275.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A366309.P14240225199999852292

`2^A366247(n+1)`
-/

namespace A366309.P14240225199999852292
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A366247 (n + 1) : ℤ)

end

end A366309.P14240225199999852292

noncomputable section

/-- A366309: The number of infinitary divisors of n that are terms of A366243.

Offset 1, canonical program `A366309.P14240225199999852292`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A366247, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A366309 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A366309.P14240225199999852292.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A366247, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A366309.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A366502.P7678879035562133223

`round(A246655(n+2)/4)-1`
-/

namespace A366502.P7678879035562133223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A246655 (n + 2) : ℚ) / 4) - 1

end

end A366502.P7678879035562133223

noncomputable section

/-- A366502: Let q = A246655(n) for n >= 2, then a(n) = (q - Kronecker(-4,q))/4 - 1.

Offset 2, canonical program `A366502.P7678879035562133223`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A366502 (n : ℕ) : ℤ :=
  A366502.P7678879035562133223.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A366502.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A366833.P13396481099192282929

`Δ[A024620(n+1)]`
-/

namespace A366833.P13396481099192282929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024620 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A366833.P13396481099192282929

noncomputable section

/-- A366833: Number of times n appears in A362965 (number of primes <= the n-th prime power).

Offset 1, canonical program `A366833.P13396481099192282929`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A366833 (n : ℕ) : ℤ :=
  A366833.P13396481099192282929.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A366833.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A366873.P10214570237099345026

`A113415(A163511(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A366873.P10214570237099345026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113415 (A163511 n).toNat

end

end A366873.P10214570237099345026

noncomputable section

/-- A366873: a(n) = A113415(A163511(n)), where A113415(n) is the average of number of and sum of odd divisors of n.

Offset 0, canonical program `A366873.P10214570237099345026`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A113415, A163511, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A366873 (n : ℕ) : ℤ :=
  A366873.P10214570237099345026.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A113415, A163511, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A366873.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A366879.P12887930198289739423

`A326938(A163511(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A366879.P12887930198289739423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326938 (A163511 n).toNat

end

end A366879.P12887930198289739423

noncomputable section

/-- A366879: a(n) = A326938(A163511(n)), where A326938 is the Dirichlet inverse of the sum of divisors d of n such that n/d is odd.

Offset 0, canonical program `A366879.P12887930198289739423`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A163511, A326938, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A366879 (n : ℕ) : ℤ :=
  A366879.P12887930198289739423.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A163511, A326938, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A366879.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A366887.P16462098823577047798

`A206787(A163511(n))`
-/

namespace A366887.P16462098823577047798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206787 (A163511 n).toNat

end

end A366887.P16462098823577047798

noncomputable section

/-- A366887: Sum of the odd squarefree divisors permuted by A163511.

Offset 0, canonical program `A366887.P16462098823577047798`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A163511, A206787, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A366887 (n : ℕ) : ℤ :=
  A366887.P16462098823577047798.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A163511, A206787, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A366887.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A366892.P16519678978380655638

`A336652(A163511(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A366892.P16519678978380655638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336652 (A163511 n).toNat

end

end A366892.P16519678978380655638

noncomputable section

/-- A366892: a(n) = A336652(A163511(n)).

Offset 0, canonical program `A366892.P16519678978380655638`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A163511, A336652, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A366892 (n : ℕ) : ℤ :=
  A366892.P16519678978380655638.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A163511, A336652, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A366892.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A367013.P15774676469551048142

`A201629(A246655(n+1))`
-/

namespace A367013.P15774676469551048142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201629 (A246655 (n + 1)).toNat

end

end A367013.P15774676469551048142

noncomputable section

/-- A367013: Let q be the n-th prime power (A246655), then a(n) = q - Kronecker(-4,q).

Offset 1, canonical program `A367013.P15774676469551048142`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1280 terms. -/
def A367013 (n : ℕ) : ℤ :=
  A367013.P15774676469551048142.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1280 terms. -/
def A367013.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A369030.P16010318685675967167

`A014963(A163511(n))`
-/

namespace A369030.P16010318685675967167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A163511 n).toNat

end

end A369030.P16010318685675967167

noncomputable section

/-- A369030: Exponential of Mangoldt function permuted by A163511 ("Doudna-permutation mirrored").

Offset 0, canonical program `A369030.P16010318685675967167`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014963, A163511, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A369030 (n : ℕ) : ℤ :=
  A369030.P16010318685675967167.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014963, A163511, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A369030.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A370080.P3603288558097370271

`A005361(n+1)/A370079(n+1)`
-/

namespace A370080.P3603288558097370271
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005361 (n + 1) : ℚ) / (A370079 (n + 1) : ℚ)

end

end A370080.P3603288558097370271

noncomputable section

/-- A370080: The product of the even exponents of the prime factorization of n.

Offset 1, canonical program `A370080.P3603288558097370271`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005361, A370079, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A370080 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A370080.P3603288558097370271.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005361, A370079, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A370080.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A371907.P13863929953614005785

`A357215(n+1)-A371906(n+1)`
-/

namespace A371907.P13863929953614005785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357215 (n + 1) - A371906 (n + 1)

end

end A371907.P13863929953614005785

noncomputable section

/-- A371907: a(n) = sum of 2^(k-1) such that floor(n/prime(k)) is even.

Offset 1, canonical program `A371907.P13863929953614005785`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A357215, A371906, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A371907 (n : ℕ) : ℤ :=
  A371907.P13863929953614005785.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A357215, A371906, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A371907.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A374532.P9847573754567788260

`4*A237526(n²+1)`
-/

namespace A374532.P9847573754567788260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A237526 (n ^ 2 + 1)

end

end A374532.P9847573754567788260

noncomputable section

/-- A374532: Number of complete unit squares that fit inside a circle of radius sqrt(n^2+1) centered at the origin of a square lattice.

Offset 0, canonical program `A374532.P9847573754567788260`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A237526, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A374532 (n : ℕ) : ℤ :=
  A374532.P9847573754567788260.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A237526, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A374532.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A374537.P5043610287241406847

`∑{d}[A019554(n+1), A102631(#)²]`
-/

namespace A374537.P5043610287241406847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019554 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A102631 d ^ 2

end

end A374537.P5043610287241406847

noncomputable section

/-- A374537: a(n) is the sum of the squares of the divisors of n that are exponentially odd numbers.

Offset 1, canonical program `A374537.P5043610287241406847`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A374537 (n : ℕ) : ℤ :=
  A374537.P5043610287241406847.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A374537.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A376762.P8361103183650995247

`A246514(n+2)+A001223(n+1)`
-/

namespace A376762.P8361103183650995247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246514 (n + 2) + A001223 (n + 1)

end

end A376762.P8361103183650995247

noncomputable section

/-- A376762: Number of composite numbers c in the range prime(n) < c <= 2*prime(n+1).

Offset 1, canonical program `A376762.P8361103183650995247`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A376762 (n : ℕ) : ℤ :=
  A376762.P8361103183650995247.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A376762.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A381315.P9914003275205982349

`∩[A375072(n+1), A377844(n+1)]`
-/

namespace A381315.P9914003275205982349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375072 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377844 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A381315.P9914003275205982349

noncomputable section

/-- A381315: Numbers whose prime factorization exponents include exactly one 3 and no exponent greater than 3.

Offset 1, canonical program `A381315.P9914003275205982349`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7798 terms. -/
def A381315 (n : ℕ) : ℤ :=
  (A381315.P9914003275205982349.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7798 terms. -/
def A381315.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A382291.P6985755138510803654

`2^A382290(n+1)`
-/

namespace A382291.P6985755138510803654
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A382290 (n + 1) : ℤ)

end

end A382291.P6985755138510803654

noncomputable section

/-- A382291: a(n) = A037445(n)/A034444(n).

Offset 1, canonical program `A382291.P6985755138510803654`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A382290, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A382291 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A382291.P6985755138510803654.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A382290, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A382291.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A382487.P7296272307731951991

`A072078(n+1)-A001511(n+1)`
-/

namespace A382487.P7296272307731951991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072078 (n + 1) - A001511 (n + 1)

end

end A382487.P7296272307731951991

noncomputable section

/-- A382487: The number of divisors of n whose largest prime factor is 3.

Offset 1, canonical program `A382487.P7296272307731951991`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A072078, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A382487 (n : ℕ) : ℤ :=
  A382487.P7296272307731951991.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A072078, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A382487.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A385046.P393041273059483800

`A034448(n+1)/A385045(n+1)`
-/

namespace A385046.P393041273059483800
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034448 (n + 1) : ℚ) / (A385045 (n + 1) : ℚ)

end

end A385046.P393041273059483800

noncomputable section

/-- A385046: The sum of the unitary divisors of n that are 3-smooth numbers (A003586).

Offset 1, canonical program `A385046.P393041273059483800`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034448, A385045, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A385046 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A385046.P393041273059483800.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034448, A385045, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A385046.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A388985.P8034458182954578089

`lt[A325977(n+1), 1]+1`
-/

namespace A388985.P8034458182954578089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325977 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A388985.P8034458182954578089

noncomputable section

/-- A388985: Numbers k such that {sum of unitary divisors of k} plus {sum of squarefree divisors of k} does not exceed 2*k.

Offset 1, canonical program `A388985.P8034458182954578089`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3970 terms. -/
def A388985 (n : ℕ) : ℤ :=
  (A388985.P8034458182954578089.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3970 terms. -/
def A388985.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A392008.P17754512782616058179

`filter[A216918(n+1), A323154(#)]`
-/

namespace A392008.P17754512782616058179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216918 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323154 (f1 j).toNat = 1) n)

end

end A392008.P17754512782616058179

noncomputable section

/-- A392008: Odd squarefree integers with at least 3 prime factors.

Offset 1, canonical program `A392008.P17754512782616058179`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7071 terms. -/
def A392008 (n : ℕ) : ℤ :=
  A392008.P17754512782616058179.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7071 terms. -/
def A392008.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A392059.P3818747102028578455

`∏[A392055(n+1)]`
-/

namespace A392059.P3818747102028578455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392055 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A392059.P3818747102028578455

noncomputable section

/-- A392059: a(n) is the product of all p^k such that p is a ramified or inert prime in the Gaussian integers and k is the largest such k satisfying p^k <= n.

Offset 1, canonical program `A392059.P3818747102028578455`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 442 terms. -/
def A392059 (n : ℕ) : ℤ :=
  A392059.P3818747102028578455.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 442 terms. -/
def A392059.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A392085.P14049026985306902224

`A047994(A019554(n+1))`
-/

namespace A392085.P14049026985306902224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047994 (A019554 (n + 1)).toNat

end

end A392085.P14049026985306902224

noncomputable section

/-- A392085: The unitary totient of the smallest number whose square is divisible by n.

Offset 1, canonical program `A392085.P14049026985306902224`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A392085 (n : ℕ) : ℤ :=
  A392085.P14049026985306902224.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A392085.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A394997.P14454066831357329865

`A337524(n+1)-A063647(n+1)`
-/

namespace A394997.P14454066831357329865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337524 (n + 1) - A063647 (n + 1)

end

end A394997.P14454066831357329865

noncomputable section

/-- A394997: Wiener index of the divisor prime graph of n.

Offset 1, canonical program `A394997.P14454066831357329865`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A063647, A337524, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A394997 (n : ℕ) : ℤ :=
  A394997.P14454066831357329865.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A063647, A337524, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A394997.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A395792.P15440842927184700187

`∩[A087695(n+1), A392199(n+1)]`
-/

namespace A395792.P15440842927184700187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087695 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392199 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A395792.P15440842927184700187

noncomputable section

/-- A395792: Numbers k such that k-3 and k+3 are prime and gcd(k, sigma(k)) is prime.

Offset 1, canonical program `A395792.P15440842927184700187`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 522 terms. -/
def A395792 (n : ℕ) : ℤ :=
  (A395792.P15440842927184700187.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 522 terms. -/
def A395792.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A348975.P156753054982051324

`A324044(n+1)+A211991(n+1)`
-/

namespace A348975.P156753054982051324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324044 (n + 1) + A211991 (n + 1)

end

end A348975.P156753054982051324

noncomputable section

/-- A348975: a(n) = A003415(n) + A003958(n) - n, where A003415 is the arithmetic derivative and A003958 is fully multiplicative with a(p) = (p-1).

Offset 1, canonical program `A348975.P156753054982051324`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A348975 (n : ℕ) : ℤ :=
  A348975.P156753054982051324.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A348975.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A351446.P16027380456626133253

`lt[abs(A351445(n+1)), 1]+1`
-/

namespace A351446.P16027380456626133253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A351445 (n + 1)|

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A351446.P16027380456626133253

noncomputable section

/-- A351446: Numbers k for which A003958(sigma(k)) = A003958(k), where A003958 is multiplicative with a(p^e) = (p-1)^e and sigma is the sum of divisors function.

Offset 1, canonical program `A351446.P16027380456626133253`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 151 terms. -/
def A351446 (n : ℕ) : ℤ :=
  (A351446.P16027380456626133253.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 151 terms. -/
def A351446.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A353680.P7395800500249692636

`and(n+1, A353637(n+1))`
-/

namespace A353680.P7395800500249692636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n + 1 : ℤ) (A353637 (n + 1))

end

end A353680.P7395800500249692636

noncomputable section

/-- A353680: a(n) = 1 if n is odd and phi(sigma(n)) is equal to phi(n), otherwise 0.

Offset 1, canonical program `A353680.P7395800500249692636`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A353680 (n : ℕ) : ℤ :=
  A353680.P7395800500249692636.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A353680.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A353682.P1510457161453438165

`A353637(n+1)+A353681(n+1)`
-/

namespace A353682.P1510457161453438165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353637 (n + 1) + A353681 (n + 1)

end

end A353682.P1510457161453438165

noncomputable section

/-- A353682: a(n) = 1 if phi(sigma(n)) >= phi(n), otherwise 0.

Offset 1, canonical program `A353682.P1510457161453438165`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A353637, A353681, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A353682 (n : ℕ) : ℤ :=
  A353682.P1510457161453438165.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A353637, A353681, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A353682.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A353683.P12717263372713688347

`lt[0, A353681(n+1)]+1`
-/

namespace A353683.P12717263372713688347
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353681 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A353683.P12717263372713688347

noncomputable section

/-- A353683: Numbers k for which phi(sigma(k)) > phi(k).

Offset 1, canonical program `A353683.P12717263372713688347`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A353683 (n : ℕ) : ℤ :=
  (A353683.P12717263372713688347.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A353683.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A359464.P323897448991584528

`ceil(A064179(n+1)/2)`
-/

namespace A359464.P323897448991584528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A064179 (n + 1) : ℚ) / 2⌉

end

end A359464.P323897448991584528

noncomputable section

/-- A359464: a(n) = 1 if the total number of 1-bits in the exponents of prime factorization n is even, otherwise 0.

Offset 1, canonical program `A359464.P323897448991584528`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A359464 (n : ℕ) : ℤ :=
  A359464.P323897448991584528.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A359464.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A364017.P4674726286493129954

`∑{d}[n+1, A007438(#)*A364011((n+1)/#)]`
-/

namespace A364017.P4674726286493129954
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007438 d * A364011 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A364017.P4674726286493129954

noncomputable section

/-- A364017: Expansion of Sum_{k>0} (-1)^(k-1) * x^(3*k-2) / (1 - x^(3*k-2))^3.

Offset 1, canonical program `A364017.P4674726286493129954`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A364017 (n : ℕ) : ℤ :=
  A364017.P4674726286493129954.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A364017.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A365401.P6488308132055047037

`A000005(n+1)/A365402(n+1)`
-/

namespace A365401.P6488308132055047037
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000005 (n + 1) : ℚ) / (A365402 (n + 1) : ℚ)

end

end A365401.P6488308132055047037

noncomputable section

/-- A365401: The number of divisors of the largest unitary divisor of n that is a square.

Offset 1, canonical program `A365401.P6488308132055047037`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A365402, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A365401 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A365401.P6488308132055047037.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A365402, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A365401.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A366797.P9156922134602193647

`A001227(A163511(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A366797.P9156922134602193647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (A163511 n).toNat

end

end A366797.P9156922134602193647

noncomputable section

/-- A366797: Number of odd divisors permuted by A163511: a(n) = A001227(A163511(n)).

Offset 0, canonical program `A366797.P9156922134602193647`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001227, A163511, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A366797 (n : ℕ) : ℤ :=
  A366797.P9156922134602193647.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001227, A163511, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A366797.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A369660.P11962281434868844871

`A369965(A003415(n))`
-/

namespace A369660.P11962281434868844871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369965 (A003415 n).toNat

end

end A369660.P11962281434868844871

noncomputable section

/-- A369660: a(n) = 1 if n' is of the form 4k+2, and n' has an even number of prime factors, otherwise a(n) = 0, where n' stands for the arithmetic derivative of n, A003415.

Offset 0, canonical program `A369660.P11962281434868844871`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, A369965, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A369660 (n : ℕ) : ℤ :=
  A369660.P11962281434868844871.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, A369965, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A369660.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A372059.P3781003696721754099

`filter[A117285(n+1), A355937(#)]`
-/

namespace A372059.P3781003696721754099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117285 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355937 (f1 j).toNat = 1) n)

end

end A372059.P3781003696721754099

noncomputable section

/-- A372059: Indices of record high-points in A280741.

Offset 1, canonical program `A372059.P3781003696721754099`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5177 terms. -/
def A372059 (n : ℕ) : ℤ :=
  A372059.P3781003696721754099.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5177 terms. -/
def A372059.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A378514.P11161419943088938583

`floor((A155559(n)-(A092589(n)+1))/2)+1`
-/

namespace A378514.P11161419943088938583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A155559 n - (A092589 n + 1) : ℚ) / 2⌋ + 1

end

end A378514.P11161419943088938583

noncomputable section

/-- A378514: Number of partitions of 2^n-1 into two summands >= 0 having a common divisor > 1.

Offset 1, canonical program `A378514.P11161419943088938583`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A378514 (n : ℕ) : ℤ :=
  A378514.P11161419943088938583.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A378514.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A379336.P4604804875248092193

`∪[A375055(n+1), A378767(n+1)]`
-/

namespace A379336.P4604804875248092193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375055 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378767 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A379336.P4604804875248092193

noncomputable section

/-- A379336: Numbers k such that there exists a divisor pair (d, d/k) such that one neither divides nor is coprime to the other.

Offset 1, canonical program `A379336.P4604804875248092193`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A379336 (n : ℕ) : ℤ :=
  (A379336.P4604804875248092193.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A379336.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A381017.P10834525739329830361

`p?[A000328(n)]`
-/

namespace A381017.P10834525739329830361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000328 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A381017.P10834525739329830361

noncomputable section

/-- A381017: Prime terms of A000328.

Offset 1, canonical program `A381017.P10834525739329830361`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A381017 (n : ℕ) : ℤ :=
  A381017.P10834525739329830361.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A381017.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A381018.P990383455539555304

`∑[A010051(A000328(n+1))]`
-/

namespace A381018.P990383455539555304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A000328 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A381018.P990383455539555304

noncomputable section

/-- A381018: a(n) is the number of primes in A000328 for r <= n.

Offset 1, canonical program `A381018.P990383455539555304`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 178 terms. -/
def A381018 (n : ℕ) : ℤ :=
  A381018.P990383455539555304.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 178 terms. -/
def A381018.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A388984.P10702588259379283515

`filter[A388983(n+1), A359770(#)]`
-/

namespace A388984.P10702588259379283515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388983 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359770 (f1 j).toNat = 1) n)

end

end A388984.P10702588259379283515

noncomputable section

/-- A388984: Even numbers, not powers of primes, that are of the form p * m^2, where p is prime and m by necessity > 1.

Offset 1, canonical program `A388984.P10702588259379283515`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5578 terms. -/
def A388984 (n : ℕ) : ℤ :=
  A388984.P10702588259379283515.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5578 terms. -/
def A388984.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A390128.P3065140226531891146

`filter[A375072(n+1), A389905(#)]`
-/

namespace A390128.P3065140226531891146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375072 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A389905 (f1 j).toNat = 1) n)

end

end A390128.P3065140226531891146

noncomputable section

/-- A390128: Biquadratefree numbers that are neither cubefree nor squareful.

Offset 1, canonical program `A390128.P3065140226531891146`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5907 terms. -/
def A390128 (n : ℕ) : ℤ :=
  A390128.P3065140226531891146.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5907 terms. -/
def A390128.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A391319.P17833975388560488226

`filter[A362148(n+1), A389905(#)]`
-/

namespace A391319.P17833975388560488226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362148 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A389905 (f1 j).toNat = 1) n)

end

end A391319.P17833975388560488226

noncomputable section

/-- A391319: Numbers that are neither cubefree nor powerful.

Offset 1, canonical program `A391319.P17833975388560488226`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9779 terms. -/
def A391319 (n : ℕ) : ℤ :=
  A391319.P17833975388560488226.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9779 terms. -/
def A391319.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A391384.P18148672950887766433

`p?[A275418(n+1)]`
-/

namespace A391384.P18148672950887766433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275418 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A391384.P18148672950887766433

noncomputable section

/-- A391384: Primes p such that p - 1 has exactly as many odd divisors as p + 1.

Offset 1, canonical program `A391384.P18148672950887766433`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 792 terms. -/
def A391384 (n : ℕ) : ℤ :=
  A391384.P18148672950887766433.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 792 terms. -/
def A391384.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A393980.P14400587957278650939

`A153154(A233280(n))`
-/

namespace A393980.P14400587957278650939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153154 (A233280 n).toNat

end

end A393980.P14400587957278650939

noncomputable section

/-- A393980: On the nonnegative integer number line, go to the first next unused power of 2 minus 1, then spiral back to pick up any skipped numbers, and repeat.

Offset 0, canonical program `A393980.P14400587957278650939`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2048 terms. -/
def A393980 (n : ℕ) : ℤ :=
  A393980.P14400587957278650939.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2048 terms. -/
def A393980.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A394391.P1958648645545154792

`2*A349360(n+1)-(n+1)`
-/

namespace A394391.P1958648645545154792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A349360 (n + 1) - (n + 1 : ℤ)

end

end A394391.P1958648645545154792

noncomputable section

/-- A394391: a(n) = tau(n)^2 + (n - tau(n))^2.

Offset 1, canonical program `A394391.P1958648645545154792`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A394391 (n : ℕ) : ℤ :=
  A394391.P1958648645545154792.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A394391.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A394860.P9530088317482289236

`filter[A130091(n+1), A389905(#)]`
-/

namespace A394860.P9530088317482289236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130091 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A389905 (f1 j).toNat = 1) n)

end

end A394860.P9530088317482289236

noncomputable section

/-- A394860: Numbers that are neither squarefree nor squareful, with exponents of prime power factors that are distinct.

Offset 1, canonical program `A394860.P9530088317482289236`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5433 terms. -/
def A394860 (n : ℕ) : ℤ :=
  A394860.P9530088317482289236.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5433 terms. -/
def A394860.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A396515.P9540040117226872358

`A000005(n+1)+A396514(n+1)`
-/

namespace A396515.P9540040117226872358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) + A396514 (n + 1)

end

end A396515.P9540040117226872358

noncomputable section

/-- A396515: a(n) = Sum_{k=1..n} gcd(k,n)^(ceiling(n/k) - floor(n/k)).

Offset 1, canonical program `A396515.P9540040117226872358`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A396514, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A396515 (n : ℕ) : ℤ :=
  A396515.P9540040117226872358.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A396514, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A396515.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A347935.P14454853274330969859

`lt[n, A294889(n+1)]+1`
-/

namespace A347935.P14454853274330969859
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294889 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A347935.P14454853274330969859

noncomputable section

/-- A347935: Numbers k such that A187795(k) > 2*k.

Offset 1, canonical program `A347935.P14454853274330969859`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1284 terms. -/
def A347935 (n : ℕ) : ℤ :=
  (A347935.P14454853274330969859.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1284 terms. -/
def A347935.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A348513.P12254395185725051150

`1-A254503(n+1)+n`
-/

namespace A348513.P12254395185725051150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A254503 (n + 1) + (n : ℤ)

end

end A348513.P12254395185725051150

noncomputable section

/-- A348513: Möbius transform of A048146, the sum of non-unitary divisors of n.

Offset 1, canonical program `A348513.P12254395185725051150`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A348513 (n : ℕ) : ℤ :=
  A348513.P12254395185725051150.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A348513.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A351398.P4856848397706998263

`filter[A140826(n+1), A245656(#)]`
-/

namespace A351398.P4856848397706998263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140826 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A245656 (f1 j).toNat = 1) n)

end

end A351398.P4856848397706998263

noncomputable section

/-- A351398: Numbers k >= 3 such that the arithmetic mean of the divisors of k AND the arithmetic mean of the nondivisors of k are integers.

Offset 1, canonical program `A351398.P4856848397706998263`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1901 terms. -/
def A351398 (n : ℕ) : ℤ :=
  A351398.P4856848397706998263.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1901 terms. -/
def A351398.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A353830.P1157779251727351386

`-A338241(A140263(2*n))`
-/

namespace A353830.P1157779251727351386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A338241 (A140263 (2 * n)).toNat

end

end A353830.P1157779251727351386

noncomputable section

/-- A353830: The positions of nonzero digits in the balanced ternary expansions of n and a(n) are the same, and the k-th rightmost nonzero digit in a(n) equals the product of the k rightmost nonzero digits in n.

Offset 0, canonical program `A353830.P1157779251727351386`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1094 terms. -/
def A353830 (n : ℕ) : ℤ :=
  A353830.P1157779251727351386.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1094 terms. -/
def A353830.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A362594.P5891847164442960394

`filter[A378767(n+1), A295316(#)]`
-/

namespace A362594.P5891847164442960394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378767 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A295316 (f1 j).toNat = 1) n)

end

end A362594.P5891847164442960394

noncomputable section

/-- A362594: Exponentially odd numbers that are neither squarefree nor prime powers.

Offset 1, canonical program `A362594.P5891847164442960394`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5751 terms. -/
def A362594 (n : ℕ) : ℤ :=
  A362594.P5891847164442960394.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5751 terms. -/
def A362594.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A363615.P15240525384775454564

`(A321543(n+1)-3*A002129(n+1)+2*A048272(n+1))/2`
-/

namespace A363615.P15240525384775454564
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A321543 (n + 1) - 3 * A002129 (n + 1) + 2 * A048272 (n + 1) : ℚ) / 2

end

end A363615.P15240525384775454564

noncomputable section

/-- A363615: Expansion of Sum_{k>0} x^(3*k)/(1+x^k)^3.

Offset 1, canonical program `A363615.P15240525384775454564`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048272, A321543, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A363615 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A363615.P15240525384775454564.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048272, A321543, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A363615.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A363629.P1618946847333743156

`-(A002129(n+1)+A048272(n+1))`
-/

namespace A363629.P1618946847333743156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A002129 (n + 1) + A048272 (n + 1))

end

end A363629.P1618946847333743156

noncomputable section

/-- A363629: Expansion of Sum_{k>0} (1/(1+x^k)^2 - 1).

Offset 1, canonical program `A363629.P1618946847333743156`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048272, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A363629 (n : ℕ) : ℤ :=
  A363629.P1618946847333743156.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048272, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A363629.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A365170.P4762611898248662452

`∑{d}[n+1, A254503(#)*A295295((n+1)/#)]`
-/

namespace A365170.P4762611898248662452
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A254503 d * A295295 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A365170.P4762611898248662452

noncomputable section

/-- A365170: The sum of divisors d of n such that gcd(d, n/d) is squarefree.

Offset 1, canonical program `A365170.P4762611898248662452`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A365170 (n : ℕ) : ℤ :=
  A365170.P4762611898248662452.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A365170.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A365174.P1377516069112288599

`∑{d}[n+1, A254503(#)*A365336((n+1)/#)]`
-/

namespace A365174.P1377516069112288599
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A254503 d * A365336 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A365174.P1377516069112288599

noncomputable section

/-- A365174: The sum of divisors d of n such that gcd(d, n/d) is an exponentially odd number (A268335).

Offset 1, canonical program `A365174.P1377516069112288599`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A365174 (n : ℕ) : ℤ :=
  A365174.P1377516069112288599.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A365174.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A369254.P14967059013545152487

`eq[1, A369253(n+1)]+1`
-/

namespace A369254.P14967059013545152487
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369253 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A369254.P14967059013545152487

noncomputable section

/-- A369254: Numbers k that have an odd number of divisors that are at most sqrt(k).

Offset 1, canonical program `A369254.P14967059013545152487`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A369254 (n : ℕ) : ℤ :=
  (A369254.P14967059013545152487.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A369254.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A374015.P15186651085114264246

`A008904(n)%5`
-/

namespace A374015.P15186651085114264246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008904 n) 5

end

end A374015.P15186651085114264246

noncomputable section

/-- A374015: Residue modulo 5 of n! divided by the highest power of 10 which divides n!.

Offset 0, canonical program `A374015.P15186651085114264246`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A374015 (n : ℕ) : ℤ :=
  A374015.P15186651085114264246.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A374015.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A388286.P13565212649214377843

`1/2*(A254503(n+1)+abs(A055615(n+1)))`
-/

namespace A388286.P13565212649214377843
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (A254503 (n + 1) + |A055615 (n + 1)| : ℚ)

end

end A388286.P13565212649214377843

noncomputable section

/-- A388286: Möbius transform of A325973, where A325973 is the arithmetic mean of {sum of unitary divisors} and {sum of squarefree divisors}.

Offset 1, canonical program `A388286.P13565212649214377843`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A055615, A254503, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A388286 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A388286.P13565212649214377843.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A055615, A254503, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A388286.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A390755.P9833950938372830663

`A254503(n+1)*A380161(n+1)`
-/

namespace A390755.P9833950938372830663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254503 (n + 1) * A380161 (n + 1)

end

end A390755.P9833950938372830663

noncomputable section

/-- A390755: The Euler totient of the smallest powerful number divisible by n.

Offset 1, canonical program `A390755.P9833950938372830663`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A390755 (n : ℕ) : ℤ :=
  A390755.P9833950938372830663.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A390755.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A391701.P8288495755813871528

`A062354(n+1)-A062355(n+1)`
-/

namespace A391701.P8288495755813871528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062354 (n + 1) - A062355 (n + 1)

end

end A391701.P8288495755813871528

noncomputable section

/-- A391701: a(n) = phi(n) * (sigma(n) - tau(n)).

Offset 1, canonical program `A391701.P8288495755813871528`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A062354, A062355, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A391701 (n : ℕ) : ℤ :=
  A391701.P8288495755813871528.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A062354, A062355, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A391701.provenance : SequenceMachineLib.Provenance := .conditional

