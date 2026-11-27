import SequenceMachineLib.Basic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C037
import Seq.B000.C041
import Seq.B000.C045
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B006.C000
import Seq.B006.C001
import Seq.B009.C000
import Seq.B010.C000

/-!
# Canonical definitions

Each definition is given by its canonical program and only uses definitions written before it.
-/

/-! ## A313281.P12140066614401043895

`A311994(2*n)-4*n`
-/

namespace A313281.P12140066614401043895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311994 (2 * n) - (4 * n : ℤ)

end

end A313281.P12140066614401043895

noncomputable section

/-- A313281: Coordination sequence Gal.6.206.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313281.P12140066614401043895`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1249 terms. -/
def A313281 (n : ℕ) : ℤ :=
  A313281.P12140066614401043895.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1249 terms. -/
def A313281.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315404.P2016412341062961456

`abs(10*n-A313281(n))`
-/

namespace A315404.P2016412341062961456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(10 * n : ℤ) - A313281 n|

end

end A315404.P2016412341062961456

noncomputable section

/-- A315404: Coordination sequence Gal.6.265.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315404.P2016412341062961456`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2344 terms. -/
def A315404 (n : ℕ) : ℤ :=
  A315404.P2016412341062961456.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2344 terms. -/
def A315404.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315470.P11940658302608166032

`abs(A008592(n)-A313113(n))`
-/

namespace A315470.P11940658302608166032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A313113 n|

end

end A315470.P11940658302608166032

noncomputable section

/-- A315470: Coordination sequence Gal.6.253.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315470.P11940658302608166032`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2288 terms. -/
def A315470 (n : ℕ) : ℤ :=
  A315470.P11940658302608166032.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2288 terms. -/
def A315470.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315770.P16809159360258042029

`A008458(A315470(n)-A314677(n))`
-/

namespace A315770.P16809159360258042029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 (A315470 n - A314677 n).toNat

end

end A315770.P16809159360258042029

noncomputable section

/-- A315770: Coordination sequence Gal.5.307.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315770.P16809159360258042029`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2200 terms. -/
def A315770 (n : ℕ) : ℤ :=
  A315770.P16809159360258042029.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2200 terms. -/
def A315770.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A088187.P6253673112261701668

`p?[A088186(n)]`
-/

namespace A088187.P6253673112261701668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088186 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A088187.P6253673112261701668

noncomputable section

/-- A088187: Primes that are a sum of twin primes and their indices.

Offset 1, canonical program `A088187.P6253673112261701668`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 666 terms. -/
def A088187 (n : ℕ) : ℤ :=
  A088187.P6253673112261701668.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 666 terms. -/
def A088187.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A138250.P13717186710602461343

`p?[A176114(n+1)]`
-/

namespace A138250.P13717186710602461343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176114 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A138250.P13717186710602461343

noncomputable section

/-- A138250: Prime numbers k such that 30*k - 1, 30*k + 1 are twin primes.

Offset 1, canonical program `A138250.P13717186710602461343`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 799 terms. -/
def A138250 (n : ℕ) : ℤ :=
  A138250.P13717186710602461343.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 799 terms. -/
def A138250.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A153740.P8834701784236490181

`p?[A088176(n+2)%A001359(n+3)]`
-/

namespace A153740.P8834701784236490181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A088176 (n + 2)) (A001359 (n + 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A153740.P8834701784236490181

noncomputable section

/-- A153740: Smallest non-twin prime > n-th and (n+1)-th twin primes.

Offset 1, canonical program `A153740.P8834701784236490181`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A153740 (n : ℕ) : ℤ :=
  A153740.P8834701784236490181.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A153740.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A226318.P10339680007513181500

`A105409(1+n)-1`
-/

namespace A226318.P10339680007513181500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105409 (1 + n) - 1

end

end A226318.P10339680007513181500

noncomputable section

/-- A226318: Positive integers n with p_{n+1}-p_n = 2 and p_{n+3}-p_{n+2} = 2, where p_k denotes the k-th prime.

Offset 1, canonical program `A226318.P10339680007513181500`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A226318 (n : ℕ) : ℤ :=
  A226318.P10339680007513181500.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A226318.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A299110.P14728169400088016933

`∩[A031931(n+1), A088176(n+1)]`
-/

namespace A299110.P14728169400088016933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031931 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088176 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A299110.P14728169400088016933

noncomputable section

/-- A299110: Prime(r) for r such that prime(r) - prime(r-1) = 12 and prime(r-1) - prime(r-2) = 2.

Offset 1, canonical program `A299110.P14728169400088016933`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1181 terms. -/
def A299110 (n : ℕ) : ℤ :=
  (A299110.P14728169400088016933.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1181 terms. -/
def A299110.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A310526.P8794290420324191919

`2*A313113(n)-A008574(n)`
-/

namespace A310526.P8794290420324191919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A313113 n - A008574 n

end

end A310526.P8794290420324191919

noncomputable section

/-- A310526: Coordination sequence Gal.6.332.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A310526.P8794290420324191919`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2258 terms. -/
def A310526 (n : ℕ) : ℤ :=
  A310526.P8794290420324191919.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2258 terms. -/
def A310526.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315177.P46381774396344281

`2*A315470(n)-A008458(n)`
-/

namespace A315177.P46381774396344281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A315470 n - A008458 n

end

end A315177.P46381774396344281

noncomputable section

/-- A315177: Coordination sequence Gal.6.255.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315177.P46381774396344281`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2288 terms. -/
def A315177 (n : ℕ) : ℤ :=
  A315177.P46381774396344281.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2288 terms. -/
def A315177.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A346675.P3077414491905950270

`A088176(n+2)-A088176(n+1)`
-/

namespace A346675.P3077414491905950270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088176 (n + 2) - A088176 (n + 1)

end

end A346675.P3077414491905950270

noncomputable section

/-- A346675: First differences of A088176.

Offset 1, canonical program `A346675.P3077414491905950270`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A088176, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A346675 (n : ℕ) : ℤ :=
  A346675.P3077414491905950270.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A088176, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A346675.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A049437.P3365650477123560235

`p?[A088176(n+1)-8]`
-/

namespace A049437.P3365650477123560235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088176 (n + 1) - 8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A049437.P3365650477123560235

noncomputable section

/-- A049437: Primes p such that p+2 and p+8 are also primes but p+6 is not.

Offset 1, canonical program `A049437.P3365650477123560235`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1261 terms. -/
def A049437 (n : ℕ) : ℤ :=
  A049437.P3365650477123560235.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1261 terms. -/
def A049437.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A068015.P16167893793263978770

`A007510(n+2)-A007510(n+1)`
-/

namespace A068015.P16167893793263978770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007510 (n + 2) - A007510 (n + 1)

end

end A068015.P16167893793263978770

noncomputable section

/-- A068015: Gaps between non-twin primes.

Offset 1, canonical program `A068015.P16167893793263978770`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007510, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A068015 (n : ℕ) : ℤ :=
  A068015.P16167893793263978770.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007510, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A068015.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A071698.P16417628279815232319

`2*A241557(n+2)-1`
-/

namespace A071698.P16417628279815232319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A241557 (n + 2) - 1

end

end A071698.P16417628279815232319

noncomputable section

/-- A071698: Lesser members of twin prime pairs of form (4*k+3, 4*k+5), k >= 0.

Offset 1, canonical program `A071698.P16417628279815232319`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A241557, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A071698 (n : ℕ) : ℤ :=
  A071698.P16417628279815232319.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A241557, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A071698.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A073650.P5554578908719610508

`A049437(2+n)+2`
-/

namespace A073650.P5554578908719610508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049437 (2 + n) + 2

end

end A073650.P5554578908719610508

noncomputable section

/-- A073650: Define the composite field of a prime q to be f(q) = (t,s) if p, q, r are three consecutive primes and q-p = t and r-q = s. This is a sequence of primes q with field (2,6).

Offset 1, canonical program `A073650.P5554578908719610508`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A073650 (n : ℕ) : ℤ :=
  A073650.P5554578908719610508.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A073650.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A074041.P16624840875090099525

`a(n-1)*A007510(n+1)` with `a(0)=2`
-/

namespace A074041.P16624840875090099525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) * A007510 (n + 1)

end

end A074041.P16624840875090099525

noncomputable section

/-- A074041: Product of first n single (i.e., non-twin) primes.

Offset 1, canonical program `A074041.P16624840875090099525`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007510, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A074041 (n : ℕ) : ℤ :=
  A074041.P16624840875090099525.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007510, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A074041.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A105410.P90063867077969444

`∩[A107770(n+1), A155752(n+1)-1]`
-/

namespace A105410.P90063867077969444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107770 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155752 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105410.P90063867077969444

noncomputable section

/-- A105410: Numbers k such that prime(k)-2 and prime(k+3)-2 are both primes.

Offset 1, canonical program `A105410.P90063867077969444`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 988 terms. -/
def A105410 (n : ℕ) : ℤ :=
  (A105410.P90063867077969444.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 988 terms. -/
def A105410.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A105411.P452950759705789051

`A000040(A105410(n+1)-1)`
-/

namespace A105411.P452950759705789051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A105410 (n + 1) - 1).toNat

end

end A105411.P452950759705789051

noncomputable section

/-- A105411: Primes p = prime(k) such that both p+2 and prime(k+4)-2 are prime numbers.

Offset 1, canonical program `A105411.P452950759705789051`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A105410, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A105411 (n : ℕ) : ℤ :=
  A105411.P452950759705789051.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A105410, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A105411.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A124519.P7382357049439119929

`ceil(A071698(2+n)/12)`
-/

namespace A124519.P7382357049439119929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A071698 (2 + n) : ℚ) / 12⌉

end

end A124519.P7382357049439119929

noncomputable section

/-- A124519: Numbers k such that 12*k - 1 and 12*k + 1 are twin primes.

Offset 1, canonical program `A124519.P7382357049439119929`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A124519 (n : ℕ) : ℤ :=
  A124519.P7382357049439119929.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A124519.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A134797.P10926386183801791278

`A007510(n+2)`
-/

namespace A134797.P10926386183801791278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007510 (n + 2)

end

end A134797.P10926386183801791278

noncomputable section

/-- A134797: Odd isolated primes.

Offset 1, canonical program `A134797.P10926386183801791278`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007510, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A134797 (n : ℕ) : ℤ :=
  A134797.P10926386183801791278.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007510, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A134797.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A138242.P9271491672774814996

`p?[A124519(n+1)]`
-/

namespace A138242.P9271491672774814996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124519 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A138242.P9271491672774814996

noncomputable section

/-- A138242: Prime numbers k such that 12*k - 1, 12*k + 1 are twin primes.

Offset 1, canonical program `A138242.P9271491672774814996`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 649 terms. -/
def A138242 (n : ℕ) : ℤ :=
  A138242.P9271491672774814996.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 649 terms. -/
def A138242.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A138660.P7096998422197970140

`∩[A138242(n+1), A138248(n+1)]`
-/

namespace A138660.P7096998422197970140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138242 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138248 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A138660.P7096998422197970140

noncomputable section

/-- A138660: Primes p such that (12*p - 1, 12*p + 1) and (18*p - 1, 18*p + 1) are twin primes.

Offset 1, canonical program `A138660.P7096998422197970140`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 223 terms. -/
def A138660 (n : ℕ) : ℤ :=
  (A138660.P7096998422197970140.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 223 terms. -/
def A138660.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A144550.P9654867779263600629

`∩[A007510(n+1), A088175(n+1)]`
-/

namespace A144550.P9654867779263600629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007510 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088175 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A144550.P9654867779263600629

noncomputable section

/-- A144550: Largest non-twin prime < n-th and (n+1)-th twin primes.

Offset 1, canonical program `A144550.P9654867779263600629`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A144550 (n : ℕ) : ℤ :=
  (A144550.P9654867779263600629.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A144550.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A153478.P5844221331024671707

`∑[A007510(1+n)]`
-/

namespace A153478.P5844221331024671707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007510 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A153478.P5844221331024671707

noncomputable section

/-- A153478: Sum of first n isolated (or single) primes A007510.

Offset 1, canonical program `A153478.P5844221331024671707`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A153478 (n : ℕ) : ℤ :=
  A153478.P5844221331024671707.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A153478.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A161164.P5309740144092016312

`abs(A001097(n+1)-A007510(n+1))`
-/

namespace A161164.P5309740144092016312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001097 (n + 1) - A007510 (n + 1)|

end

end A161164.P5309740144092016312

noncomputable section

/-- A161164: Absolute value of (the n-th twin prime minus the n-th non-twin prime).

Offset 1, canonical program `A161164.P5309740144092016312`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A161164 (n : ℕ) : ℤ :=
  A161164.P5309740144092016312.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A161164.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A161165.P7740314374936360020

`A001097(n+1)+A007510(n+1)`
-/

namespace A161165.P7740314374936360020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001097 (n + 1) + A007510 (n + 1)

end

end A161165.P7740314374936360020

noncomputable section

/-- A161165: The n-th twin prime plus the n-th isolated prime.

Offset 1, canonical program `A161165.P7740314374936360020`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001097, A007510, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A161165 (n : ℕ) : ℤ :=
  A161165.P7740314374936360020.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001097, A007510, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A161165.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A162734.P9082709708331958527

`A001057(A007510(n+2))-A001057(A007510(n+1)-1)`
-/

namespace A162734.P9082709708331958527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A007510 (n + 2)).toNat - A001057 (A007510 (n + 1) - 1).toNat

end

end A162734.P9082709708331958527

noncomputable section

/-- A162734: An alternating sum of all numbers from the n-th up to the (n+1)st isolated prime.

Offset 1, canonical program `A162734.P9082709708331958527`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007510, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A162734 (n : ℕ) : ℤ :=
  A162734.P9082709708331958527.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007510, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A162734.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A163654.P17404434252909917711

`A007510(n+1)+A007510(n+2)`
-/

namespace A163654.P17404434252909917711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007510 (n + 1) + A007510 (n + 2)

end

end A163654.P17404434252909917711

noncomputable section

/-- A163654: The sum of the n-th and (n+1)st isolated prime.

Offset 1, canonical program `A163654.P17404434252909917711`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007510, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A163654 (n : ℕ) : ℤ :=
  A163654.P17404434252909917711.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007510, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A163654.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A164274.P11426709217476400918

`A007510(n+1)+A014574(n+1)`
-/

namespace A164274.P11426709217476400918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007510 (n + 1) + A014574 (n + 1)

end

end A164274.P11426709217476400918

noncomputable section

/-- A164274: (n-th isolated prime) plus (n-th isolated composite).

Offset 1, canonical program `A164274.P11426709217476400918`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007510, A014574, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A164274 (n : ℕ) : ℤ :=
  A164274.P11426709217476400918.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007510, A014574, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A164274.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A164275.P16688256668584044959

`abs(A007510(n+1)-A014574(n+1))`
-/

namespace A164275.P16688256668584044959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A007510 (n + 1) - A014574 (n + 1)|

end

end A164275.P16688256668584044959

noncomputable section

/-- A164275: The absolute value of (the n-th isolated composite minus the n-th isolated prime).

Offset 1, canonical program `A164275.P16688256668584044959`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A164275 (n : ℕ) : ℤ :=
  A164275.P16688256668584044959.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A164275.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A164534.P11491469561322458796

`A007510(n+1)-(-1)^A007510(n+1)`
-/

namespace A164534.P11491469561322458796
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007510 (n + 1) : ℚ) - (-1 : ℚ) ^ (A007510 (n + 1) : ℤ)

end

end A164534.P11491469561322458796

noncomputable section

/-- A164534: (n-th isolated prime) -(-1)^(n-th isolated prime).

Offset 1, canonical program `A164534.P11491469561322458796`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007510, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A164534 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A164534.P11491469561322458796.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007510, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A164534.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A167277.P12308341413257393222

`A007510(n+1)-1`
-/

namespace A167277.P12308341413257393222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007510 (n + 1) - 1

end

end A167277.P12308341413257393222

noncomputable section

/-- A167277: Largest nonprime<n-th single (or isolated or non-twin) prime.

Offset 1, canonical program `A167277.P12308341413257393222`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007510, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A167277 (n : ℕ) : ℤ :=
  A167277.P12308341413257393222.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007510, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A167277.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A167278.P8158699383947073424

`A151800(A007510(n+1))`
-/

namespace A167278.P8158699383947073424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A007510 (n + 1)).toNat

end

end A167278.P8158699383947073424

noncomputable section

/-- A167278: Smallest prime>n-th single (or isolated or non-twin) prime.

Offset 1, canonical program `A167278.P8158699383947073424`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A167278 (n : ℕ) : ℤ :=
  A167278.P8158699383947073424.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A167278.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A167397.P6695962093421447498

`A007510(n+1)-(n+1)`
-/

namespace A167397.P6695962093421447498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007510 (n + 1) - (n + 1 : ℤ)

end

end A167397.P6695962093421447498

noncomputable section

/-- A167397: n-th single (or isolated or non-twin) prime minus n.

Offset 1, canonical program `A167397.P6695962093421447498`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007510, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A167397 (n : ℕ) : ℤ :=
  A167397.P6695962093421447498.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007510, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A167397.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A167706.P11488542031625927943

`∪[A007510(n+1), A014574(n+1)]`
-/

namespace A167706.P11488542031625927943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007510 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014574 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A167706.P11488542031625927943

noncomputable section

/-- A167706: The single or isolated numbers. The union of single (or isolated or non-twin) primes and single (or isolated or average of twin prime pairs) nonprimes.

Offset 1, canonical program `A167706.P11488542031625927943`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A167706 (n : ℕ) : ℤ :=
  (A167706.P11488542031625927943.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A167706.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A167885.P2592452161159091730

`A167706(n+1)*A167707(n+1)`
-/

namespace A167885.P2592452161159091730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167706 (n + 1) * A167707 (n + 1)

end

end A167885.P2592452161159091730

noncomputable section

/-- A167885: n-th single or isolated number*n-th non-single or nonisolated number.

Offset 1, canonical program `A167885.P2592452161159091730`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A167706, A167707, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A167885 (n : ℕ) : ℤ :=
  A167885.P2592452161159091730.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A167706, A167707, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A167885.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A167886.P5242547505130811716

`A167706(n+1)-A167707(n+1)`
-/

namespace A167886.P5242547505130811716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167706 (n + 1) - A167707 (n + 1)

end

end A167886.P5242547505130811716

noncomputable section

/-- A167886: n-th single or isolated number minus n-th non-single or nonisolated number.

Offset 1, canonical program `A167886.P5242547505130811716`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A167706, A167707, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A167886 (n : ℕ) : ℤ :=
  A167886.P5242547505130811716.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A167706, A167707, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A167886.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A167887.P6811191950323054762

`A167706(n+1)+A167707(n+1)`
-/

namespace A167887.P6811191950323054762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167706 (n + 1) + A167707 (n + 1)

end

end A167887.P6811191950323054762

noncomputable section

/-- A167887: n-th single or isolated number plus n-th non-single or nonisolated number.

Offset 1, canonical program `A167887.P6811191950323054762`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A167706, A167707, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A167887 (n : ℕ) : ℤ :=
  A167887.P6811191950323054762.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A167706, A167707, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A167887.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A167888.P4384555184533195508

`A167706(n+1)^A167707(n+1)`
-/

namespace A167888.P4384555184533195508
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167706 (n + 1) : ℚ) ^ (A167707 (n + 1) : ℤ)

end

end A167888.P4384555184533195508

noncomputable section

/-- A167888: n-th single or isolated number^n-th non-single or nonisolated number.

Offset 1, canonical program `A167888.P4384555184533195508`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A167706, A167707, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A167888 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A167888.P4384555184533195508.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A167706, A167707, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A167888.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A168249.P10517048205738276799

`A167706(n+1)-A005117(n+1)`
-/

namespace A168249.P10517048205738276799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167706 (n + 1) - A005117 (n + 1)

end

end A168249.P10517048205738276799

noncomputable section

/-- A168249: n-th single or isolated number minus n-th squarefree number.

Offset 1, canonical program `A168249.P10517048205738276799`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A167706, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A168249 (n : ℕ) : ℤ :=
  A168249.P10517048205738276799.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A167706, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A168249.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A168343.P10702448307998344180

`A167706(n+1)-(n+1)`
-/

namespace A168343.P10702448307998344180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167706 (n + 1) - (n + 1 : ℤ)

end

end A168343.P10702448307998344180

noncomputable section

/-- A168343: n-th single or isolated number minus n.

Offset 1, canonical program `A168343.P10702448307998344180`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A167706, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A168343 (n : ℕ) : ℤ :=
  A168343.P10702448307998344180.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A167706, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A168343.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A168543.P7013413832630956114

`A000720(A167706(n+1))`
-/

namespace A168543.P7013413832630956114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A167706 (n + 1)).toNat

end

end A168543.P7013413832630956114

noncomputable section

/-- A168543: pi(n-th single or isolated number).

Offset 1, canonical program `A168543.P7013413832630956114`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A167706, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A168543 (n : ℕ) : ℤ :=
  A168543.P7013413832630956114.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A167706, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A168543.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A171421.P931648610780433948

`A000010(A167706(n+1))`
-/

namespace A171421.P931648610780433948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A167706 (n + 1)).toNat

end

end A171421.P931648610780433948

noncomputable section

/-- A171421: Euler totient function of the n-th single or isolated number.

Offset 1, canonical program `A171421.P931648610780433948`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A167706, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A171421 (n : ℕ) : ℤ :=
  A171421.P931648610780433948.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A167706, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A171421.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A176657.P12577566922255081420

`A000720(∩[A007510(n+1), A334142(n+1)])`
-/

namespace A176657.P12577566922255081420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007510 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334142 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A176657.P12577566922255081420

noncomputable section

/-- A176657: Numbers k such that prime(k) is not a twin prime and prime(prime(k)) is a twin prime.

Offset 1, canonical program `A176657.P12577566922255081420`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 761 terms. -/
def A176657 (n : ℕ) : ℤ :=
  A176657.P12577566922255081420.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 761 terms. -/
def A176657.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A244066.P12419883921865423903

`∩[A162734(n+1), A163656(n+1)]`
-/

namespace A244066.P12419883921865423903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162734 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163656 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244066.P12419883921865423903

noncomputable section

/-- A244066: Arithmetic mean of two consecutive twin primes that is also the arithmetic mean of two consecutive non-twin primes.

Offset 1, canonical program `A244066.P12419883921865423903`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 429 terms. -/
def A244066 (n : ℕ) : ℤ :=
  (A244066.P12419883921865423903.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 429 terms. -/
def A244066.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A273088.P1067338529506069869

`3*round(A134797(1+n)/3)`
-/

namespace A273088.P1067338529506069869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * SequenceMachineLib.roundAway ((A134797 (1 + n) : ℚ) / 3)

end

end A273088.P1067338529506069869

noncomputable section

/-- A273088: a(n) is a multiple of 6 and a(n)-1 or a(n)+1 is an isolated (non-twin) prime number.

Offset 1, canonical program `A273088.P1067338529506069869`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A273088 (n : ℕ) : ℤ :=
  A273088.P1067338529506069869.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A273088.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A319673.P7102287295743972028

`∩[A007510(n+1), A059500(n+1)]`
-/

namespace A319673.P7102287295743972028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007510 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059500 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A319673.P7102287295743972028

noncomputable section

/-- A319673: Primes that are neither a twin prime nor a Sophie Germain or safe prime.

Offset 1, canonical program `A319673.P7102287295743972028`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7422 terms. -/
def A319673 (n : ℕ) : ℤ :=
  (A319673.P7102287295743972028.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7422 terms. -/
def A319673.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A085434.P6643677055624857651

`2*A134797(n+1)`
-/

namespace A085434.P6643677055624857651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A134797 (n + 1)

end

end A085434.P6643677055624857651

noncomputable section

/-- A085434: Twice odd isolated primes.

Offset 1, canonical program `A085434.P6643677055624857651`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A134797, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A085434 (n : ℕ) : ℤ :=
  A085434.P6643677055624857651.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A134797, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A085434.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A089629.P6171556353711340571

`A105411(2+n)`
-/

namespace A089629.P6171556353711340571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105411 (2 + n)

end

end A089629.P6171556353711340571

noncomputable section

/-- A089629: Smallest member of a pair of consecutive twin prime pairs that have one prime between them.

Offset 1, canonical program `A089629.P6171556353711340571`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A089629 (n : ℕ) : ℤ :=
  A089629.P6171556353711340571.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A089629.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A126095.P17739323671417689772

`p?[and(1, A167706(n+2))*A167706(n+1)]`
-/

namespace A126095.P17739323671417689772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A167706 (n + 2)) * A167706 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A126095.P17739323671417689772

noncomputable section

/-- A126095: Lesser of pairs of single (non-twin) primes.

Offset 1, canonical program `A126095.P17739323671417689772`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A126095 (n : ℕ) : ℤ :=
  A126095.P17739323671417689772.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A126095.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315759.P12503429889593144043

`2*n+A004396(A315754(n))`
-/

namespace A315759.P12503429889593144043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) + A004396 (A315754 n).toNat

end

end A315759.P12503429889593144043

noncomputable section

/-- A315759: Coordination sequence Gal.6.334.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315759.P12503429889593144043`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1834 terms. -/
def A315759 (n : ℕ) : ℤ :=
  A315759.P12503429889593144043.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1834 terms. -/
def A315759.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A311178.P9708193100883446863

`2*A313719(n)-A315754(n)`
-/

namespace A311178.P9708193100883446863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A313719 n - A315754 n

end

end A311178.P9708193100883446863

noncomputable section

/-- A311178: Coordination sequence Gal.6.218.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A311178.P9708193100883446863`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2281 terms. -/
def A311178 (n : ℕ) : ℤ :=
  A311178.P9708193100883446863.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2281 terms. -/
def A311178.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A311331.P4887198018422537998

`abs(A008592(n)-A315759(n))`
-/

namespace A311331.P4887198018422537998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A315759 n|

end

end A311331.P4887198018422537998

noncomputable section

/-- A311331: Coordination sequence Gal.6.119.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A311331.P4887198018422537998`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2113 terms. -/
def A311331 (n : ℕ) : ℤ :=
  A311331.P4887198018422537998.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2113 terms. -/
def A311331.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A311385.P2482110562961122991

`abs(A008592(n)-A315754(n))`
-/

namespace A311385.P2482110562961122991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A315754 n|

end

end A311385.P2482110562961122991

noncomputable section

/-- A311385: Coordination sequence Gal.6.221.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A311385.P2482110562961122991`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2281 terms. -/
def A311385 (n : ℕ) : ℤ :=
  A311385.P2482110562961122991.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2281 terms. -/
def A311385.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A311635.P9689999517876965795

`A311553(n)+A004525(A311553(n)-A311331(n))`
-/

namespace A311635.P9689999517876965795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311553 n + A004525 (A311553 n - A311331 n).toNat

end

end A311635.P9689999517876965795

noncomputable section

/-- A311635: Coordination sequence Gal.6.234.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A311635.P9689999517876965795`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2389 terms. -/
def A311635 (n : ℕ) : ℤ :=
  A311635.P9689999517876965795.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2389 terms. -/
def A311635.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313718.P11641125393041820090

`A008574(n)+A001281(A315754(n)-A008574(n))`
-/

namespace A313718.P11641125393041820090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + A001281 (A315754 n - A008574 n).toNat

end

end A313718.P11641125393041820090

noncomputable section

/-- A313718: Coordination sequence Gal.6.133.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313718.P11641125393041820090`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2281 terms. -/
def A313718 (n : ℕ) : ℤ :=
  A313718.P11641125393041820090.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2281 terms. -/
def A313718.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313753.P1026158450170667954

`abs(A008592(n)-A313718(n))`
-/

namespace A313753.P1026158450170667954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A313718 n|

end

end A313753.P1026158450170667954

noncomputable section

/-- A313753: Coordination sequence Gal.6.253.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313753.P1026158450170667954`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2304 terms. -/
def A313753 (n : ℕ) : ℤ :=
  A313753.P1026158450170667954.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2304 terms. -/
def A313753.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314092.P14005736283755848745

`A314019(n)+Δ[A011864(n)]`
-/

namespace A314092.P14005736283755848745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011864 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314019 n + (f1 (n + 1) - f1 n)

end

end A314092.P14005736283755848745

noncomputable section

/-- A314092: Coordination sequence Gal.6.248.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314092.P14005736283755848745`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2410 terms. -/
def A314092 (n : ℕ) : ℤ :=
  A314092.P14005736283755848745.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2410 terms. -/
def A314092.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314689.P1712291150410104918

`(A315177(n)+A311385(n))/2`
-/

namespace A314689.P1712291150410104918
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A315177 n + A311385 n : ℚ) / 2

end

end A314689.P1712291150410104918

noncomputable section

/-- A314689: Coordination sequence Gal.6.255.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314689.P1712291150410104918`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2482 terms. -/
def A314689 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A314689.P1712291150410104918.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2482 terms. -/
def A314689.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314963.P16460844886811447652

`abs(A008592(n)-A314092(n))`
-/

namespace A314963.P16460844886811447652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A314092 n|

end

end A314963.P16460844886811447652

noncomputable section

/-- A314963: Coordination sequence Gal.6.199.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314963.P16460844886811447652`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2347 terms. -/
def A314963 (n : ℕ) : ℤ :=
  A314963.P16460844886811447652.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2347 terms. -/
def A314963.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A311159.P5266207967888646588

`A008574(n)+A311332(n)-A311331(n)`
-/

namespace A311159.P5266207967888646588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + (A311332 n - A311331 n)

end

end A311159.P5266207967888646588

noncomputable section

/-- A311159: Coordination sequence Gal.6.117.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A311159.P5266207967888646588`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2503 terms. -/
def A311159 (n : ℕ) : ℤ :=
  A311159.P5266207967888646588.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2503 terms. -/
def A311159.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A311262.P10638457918818941404

`A004525(A311331(n))+2*n`
-/

namespace A311262.P10638457918818941404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A311331 n).toNat + (2 * n : ℤ)

end

end A311262.P10638457918818941404

noncomputable section

/-- A311262: Coordination sequence Gal.6.216.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A311262.P10638457918818941404`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2293 terms. -/
def A311262 (n : ℕ) : ℤ :=
  A311262.P10638457918818941404.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2293 terms. -/
def A311262.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A311356.P10753522587295853284

`2*A311262(n)-A008574(n)`
-/

namespace A311356.P10753522587295853284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A311262 n - A008574 n

end

end A311356.P10753522587295853284

noncomputable section

/-- A311356: Coordination sequence Gal.6.219.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A311356.P10753522587295853284`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2542 terms. -/
def A311356 (n : ℕ) : ℤ :=
  A311356.P10753522587295853284.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2542 terms. -/
def A311356.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A312068.P6869764559260015807

`A311262(2*n)-4*n`
-/

namespace A312068.P6869764559260015807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311262 (2 * n) - (4 * n : ℤ)

end

end A312068.P6869764559260015807

noncomputable section

/-- A312068: Coordination sequence Gal.6.119.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A312068.P6869764559260015807`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1313 terms. -/
def A312068 (n : ℕ) : ℤ :=
  A312068.P6869764559260015807.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1313 terms. -/
def A312068.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A312606.P14333884055851029271

`A311804(n)+A312068(n)-A008574(n)`
-/

namespace A312606.P14333884055851029271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311804 n + (A312068 n - A008574 n)

end

end A312606.P14333884055851029271

noncomputable section

/-- A312606: Coordination sequence Gal.6.255.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A312606.P14333884055851029271`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2478 terms. -/
def A312606 (n : ℕ) : ℤ :=
  A312606.P14333884055851029271.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2478 terms. -/
def A312606.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A312656.P6952802278947369671

`2*A312068(n)-A008574(n)`
-/

namespace A312656.P6952802278947369671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A312068 n - A008574 n

end

end A312656.P6952802278947369671

noncomputable section

/-- A312656: Coordination sequence Gal.6.201.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A312656.P6952802278947369671`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2460 terms. -/
def A312656 (n : ℕ) : ℤ :=
  A312656.P6952802278947369671.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2460 terms. -/
def A312656.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315638.P9080093851398681048

`abs(10*n-A312656(n))`
-/

namespace A315638.P9080093851398681048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(10 * n : ℤ) - A312656 n|

end

end A315638.P9080093851398681048

noncomputable section

/-- A315638: Coordination sequence Gal.6.355.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315638.P9080093851398681048`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2298 terms. -/
def A315638 (n : ℕ) : ℤ :=
  A315638.P9080093851398681048.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2298 terms. -/
def A315638.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315642.P10074898855002556229

`abs(A008592(n)-A312606(n))`
-/

namespace A315642.P10074898855002556229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A312606 n|

end

end A315642.P10074898855002556229

noncomputable section

/-- A315642: Coordination sequence Gal.6.332.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315642.P10074898855002556229`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2280 terms. -/
def A315642 (n : ℕ) : ℤ :=
  A315642.P10074898855002556229.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2280 terms. -/
def A315642.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315692.P13280674263437202447

`abs(A008592(n)-A312068(n))`
-/

namespace A315692.P13280674263437202447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A312068 n|

end

end A315692.P13280674263437202447

noncomputable section

/-- A315692: Coordination sequence Gal.6.334.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315692.P13280674263437202447`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2242 terms. -/
def A315692 (n : ℕ) : ℤ :=
  A315692.P13280674263437202447.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2242 terms. -/
def A315692.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315756.P18231005908328482716

`abs(A008592(n)-A311356(n))`
-/

namespace A315756.P18231005908328482716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A311356 n|

end

end A315756.P18231005908328482716

noncomputable section

/-- A315756: Coordination sequence Gal.6.637.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315756.P18231005908328482716`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2240 terms. -/
def A315756 (n : ℕ) : ℤ :=
  A315756.P18231005908328482716.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2240 terms. -/
def A315756.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315762.P14667034612637808872

`abs(10*n-A311262(n))`
-/

namespace A315762.P14667034612637808872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(10 * n : ℤ) - A311262 n|

end

end A315762.P14667034612637808872

noncomputable section

/-- A315762: Coordination sequence Gal.6.627.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315762.P14667034612637808872`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2183 terms. -/
def A315762 (n : ℕ) : ℤ :=
  A315762.P14667034612637808872.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2183 terms. -/
def A315762.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A033067.P7820946899976347155

`lt[A311356(A267354(n)), A217558(n)]`
-/

namespace A033067.P7820946899976347155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311356 (A267354 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217558 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A033067.P7820946899976347155

noncomputable section

/-- A033067: Numbers whose base-16 representation Sum_{i=0..m} d(i)*16^i has odd d(m-i) for all odd i.

Offset 1, canonical program `A033067.P7820946899976347155`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 135 terms. -/
def A033067 (n : ℕ) : ℤ :=
  (A033067.P7820946899976347155.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 135 terms. -/
def A033067.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313591.P3620371697952405827

`A311635(n)+A004525(A315638(n)-A311635(n))`
-/

namespace A313591.P3620371697952405827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311635 n + A004525 (A315638 n - A311635 n).toNat

end

end A313591.P3620371697952405827

noncomputable section

/-- A313591: Coordination sequence Gal.6.346.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313591.P3620371697952405827`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2290 terms. -/
def A313591 (n : ℕ) : ℤ :=
  A313591.P3620371697952405827.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2290 terms. -/
def A313591.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313854.P3810550675620183463

`abs(10*n-A313591(n))`
-/

namespace A313854.P3810550675620183463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(10 * n : ℤ) - A313591 n|

end

end A313854.P3810550675620183463

noncomputable section

/-- A313854: Coordination sequence Gal.6.250.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313854.P3810550675620183463`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2290 terms. -/
def A313854 (n : ℕ) : ℤ :=
  A313854.P3810550675620183463.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2290 terms. -/
def A313854.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315464.P12581309012109130076

`A315177(n)+A004525(A315756(n)-A315177(n))`
-/

namespace A315464.P12581309012109130076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315177 n + A004525 (A315756 n - A315177 n).toNat

end

end A315464.P12581309012109130076

noncomputable section

/-- A315464: Coordination sequence Gal.6.346.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315464.P12581309012109130076`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2240 terms. -/
def A315464 (n : ℕ) : ℤ :=
  A315464.P12581309012109130076.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2240 terms. -/
def A315464.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313124.P8905845740579056507

`abs(A008592(n)-A315464(n))`
-/

namespace A313124.P8905845740579056507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A315464 n|

end

end A313124.P8905845740579056507

noncomputable section

/-- A313124: Coordination sequence Gal.6.250.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313124.P8905845740579056507`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2351 terms. -/
def A313124 (n : ℕ) : ℤ :=
  A313124.P8905845740579056507.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2351 terms. -/
def A313124.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A054199.P7060287540855556324

`∑{#}[n, C(n, #)*A000046(#)]`
-/

namespace A054199.P7060287540855556324
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose n k : ℤ) * A000046 k

end

end A054199.P7060287540855556324

noncomputable section

/-- A054199: Binomial transform of A000046 (1, 1, 1, 1, 2, 3, 5, 8, 14, 21, 39, 62, 112, ...).

Offset 0, canonical program `A054199.P7060287540855556324`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 216 terms. -/
def A054199 (n : ℕ) : ℤ :=
  A054199.P7060287540855556324.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 216 terms. -/
def A054199.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A056508.P8052561775042287548

`A056503(n+1)-1`
-/

namespace A056508.P8052561775042287548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056503 (n + 1) - 1

end

end A056508.P8052561775042287548

noncomputable section

/-- A056508: Number of periodic palindromic structures of length n using exactly two different symbols.

Offset 1, canonical program `A056508.P8052561775042287548`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056503, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A056508 (n : ℕ) : ℤ :=
  A056508.P8052561775042287548.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056503, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A056508.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A056518.P10495334089397764284

`∑{d}[n+1, A008683(#)*A056508((n+1)/#)]`
-/

namespace A056518.P10495334089397764284
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A056508 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A056518.P10495334089397764284

noncomputable section

/-- A056518: Number of primitive (period n) periodic palindromic structures using exactly two different symbols.

Offset 1, canonical program `A056518.P10495334089397764284`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 665 terms. -/
def A056518 (n : ℕ) : ℤ :=
  A056518.P10495334089397764284.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 665 terms. -/
def A056518.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A275918.P6241858997175305561

`A275919(n)-(A140101(n+1)+A140101(n+1))`
-/

namespace A275918.P6241858997175305561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275919 n - (A140101 (n + 1) + A140101 (n + 1))

end

end A275918.P6241858997175305561

noncomputable section

/-- A275918: a(n) = A273059(4n+2).

Offset 0, canonical program `A275918.P6241858997175305561`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7572 terms. -/
def A275918 (n : ℕ) : ℤ :=
  A275918.P6241858997175305561.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7572 terms. -/
def A275918.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A011949.P6544439330995346585

`A056336(n+1)-A056518(n+1)`
-/

namespace A011949.P6544439330995346585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056336 (n + 1) - A056518 (n + 1)

end

end A011949.P6544439330995346585

noncomputable section

/-- A011949: Number of Barlow packings with group P6(bar)m2 that repeat after 2n layers.

Offset 1, canonical program `A011949.P6544439330995346585`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 334 terms. -/
def A011949 (n : ℕ) : ℤ :=
  A011949.P6544439330995346585.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 334 terms. -/
def A011949.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045659.P18078101322428764532

`A045654(n)-A045656(n)`
-/

namespace A045659.P18078101322428764532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045654 n - A045656 n

end

end A045659.P18078101322428764532

noncomputable section

/-- A045659: Number of 2n-bead balanced binary strings, rotationally equivalent to complement, inequivalent to reverse and reversed complement.

Offset 0, canonical program `A045659.P18078101322428764532`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A045654, A045656, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A045659 (n : ℕ) : ℤ :=
  A045659.P18078101322428764532.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A045654, A045656, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A045659.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A045660.P14796031568194010525

`A045655(n)-A045656(n)`
-/

namespace A045660.P14796031568194010525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045655 n - A045656 n

end

end A045660.P14796031568194010525

noncomputable section

/-- A045660: Number of 2n-bead balanced binary strings, rotationally equivalent to reversed complement, inequivalent to reverse and complement.

Offset 0, canonical program `A045660.P14796031568194010525`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A045655, A045656, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A045660 (n : ℕ) : ℤ :=
  A045660.P14796031568194010525.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A045655, A045656, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A045660.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A056513.P18081707423371535804

`A056518(A233583(1+n))`
-/

namespace A056513.P18081707423371535804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056518 (A233583 (1 + n)).toNat

end

end A056513.P18081707423371535804

noncomputable section

/-- A056513: Number of primitive (period n) periodic palindromic structures using a maximum of two different symbols.

Offset 0, canonical program `A056513.P18081707423371535804`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 666 terms. -/
def A056513 (n : ℕ) : ℤ :=
  A056513.P18081707423371535804.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 666 terms. -/
def A056513.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A094180.P14445506066879923085

`(A094179(n+1)+1)/4`
-/

namespace A094180.P14445506066879923085
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A094179 (n + 1) + 1 : ℚ) / 4

end

end A094180.P14445506066879923085

noncomputable section

/-- A094180: Numbers k such that 4*k-1 is divisible only by primes of form 4*m-1 (i.e., by the Gaussian primes A002145).

Offset 1, canonical program `A094180.P14445506066879923085`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A094179, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A094180 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A094180.P14445506066879923085.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A094179, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A094180.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A275917.P15138052319720947312

`2*A275918(n)-A275919(n)`
-/

namespace A275917.P15138052319720947312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A275918 n - A275919 n

end

end A275917.P15138052319720947312

noncomputable section

/-- A275917: a(n) = A273059(4n+1).

Offset 0, canonical program `A275917.P15138052319720947312`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7572 terms. -/
def A275917 (n : ℕ) : ℤ :=
  A275917.P15138052319720947312.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7572 terms. -/
def A275917.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A011948.P16276404241743664324

`A000046(n+6)-A056513(n+6)`
-/

namespace A011948.P16276404241743664324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000046 (n + 6) - A056513 (n + 6)

end

end A011948.P16276404241743664324

noncomputable section

/-- A011948: Number of Barlow packings with group P63mc that repeat after 2n layers.

Offset 6, canonical program `A011948.P16276404241743664324`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000046, A056513, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A011948 (n : ℕ) : ℤ :=
  A011948.P16276404241743664324.a (n - 6)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000046, A056513, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A011948.provenance : SequenceMachineLib.Provenance := .conditional

