import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
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
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C030
import Seq.B000.C036
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C041
import Seq.B000.C042
import Seq.B000.C044
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C009
import Seq.B001.C011
import Seq.B001.C012
import Seq.B001.C013
import Seq.B001.C014
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
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
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import SequenceMachineLib.Triangle

/-!
# Canonical definitions

Each definition is given by its canonical program and only uses definitions written before it.
-/

/-! ## A176114.P9274909027708937243

`ceil(A131356(n+1)/3)`
-/

namespace A176114.P9274909027708937243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A131356 (n + 1) : ℚ) / 3⌉

end

end A176114.P9274909027708937243

noncomputable section

/-- A176114: Numbers n such that 30*n-1, 30*n+1 are twin primes.

Offset 1, canonical program `A176114.P9274909027708937243`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A176114 (n : ℕ) : ℤ :=
  A176114.P9274909027708937243.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A176114.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A244505.P9278648048121045581

`∩[A139902(n+1), A181606(n+1)]`
-/

namespace A244505.P9278648048121045581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139902 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181606 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244505.P9278648048121045581

noncomputable section

/-- A244505: Greater of twin primes of (40n-23,40n-21).

Offset 1, canonical program `A244505.P9278648048121045581`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1251 terms. -/
def A244505 (n : ℕ) : ℤ :=
  (A244505.P9278648048121045581.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1251 terms. -/
def A244505.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A261533.P11461223256659698925

`A001359(lt[A096474(n+1), 7]+1)`
-/

namespace A261533.P11461223256659698925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096474 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A261533.P11461223256659698925

noncomputable section

/-- A261533: Primes p such that p+2 is prime with prime(p+2)-prime(p)=6.

Offset 1, canonical program `A261533.P11461223256659698925`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 227 terms. -/
def A261533 (n : ℕ) : ℤ :=
  A261533.P11461223256659698925.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 227 terms. -/
def A261533.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A311994.P15273532199306670111

`2*A311932(n)-A311804(n)`
-/

namespace A311994.P15273532199306670111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A311932 n - A311804 n

end

end A311994.P15273532199306670111

noncomputable section

/-- A311994: Coordination sequence Gal.6.231.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A311994.P15273532199306670111`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2497 terms. -/
def A311994 (n : ℕ) : ℤ :=
  A311994.P15273532199306670111.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2497 terms. -/
def A311994.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313113.P5106100273962664714

`A311932(2*n)-4*n`
-/

namespace A313113.P5106100273962664714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311932 (2 * n) - (4 * n : ℤ)

end

end A313113.P5106100273962664714

noncomputable section

/-- A313113: Coordination sequence Gal.6.133.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313113.P5106100273962664714`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1285 terms. -/
def A313113 (n : ℕ) : ℤ :=
  A313113.P5106100273962664714.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1285 terms. -/
def A313113.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A315645.P11229265118516103077

`A004278(A017005(n)-A311932(n))`
-/

namespace A315645.P11229265118516103077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004278 (A017005 n - A311932 n).toNat

end

end A315645.P11229265118516103077

noncomputable section

/-- A315645: Coordination sequence Gal.6.633.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315645.P11229265118516103077`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2291 terms. -/
def A315645 (n : ℕ) : ℤ :=
  A315645.P11229265118516103077.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2291 terms. -/
def A315645.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315699.P14836870599283909949

`abs(10*n-A311932(n))`
-/

namespace A315699.P14836870599283909949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(10 * n : ℤ) - A311932 n|

end

end A315699.P14836870599283909949

noncomputable section

/-- A315699: Coordination sequence Gal.6.637.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315699.P14836870599283909949`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2217 terms. -/
def A315699 (n : ℕ) : ℤ :=
  A315699.P14836870599283909949.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2217 terms. -/
def A315699.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A328493.P13594218802109558231

`A126251(n+1)-1`
-/

namespace A328493.P13594218802109558231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126251 (n + 1) - 1

end

end A328493.P13594218802109558231

noncomputable section

/-- A328493: a(n) = (p_n + 1)*q_n - 1; where (p_n, q_n) is the n-th twin prime pair.

Offset 1, canonical program `A328493.P13594218802109558231`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A126251, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A328493 (n : ℕ) : ℤ :=
  A328493.P13594218802109558231.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A126251, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A328493.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A372319.P6165790239700502449

`A022004(n+1)*A073648(n+1)*A098412(n+1)`
-/

namespace A372319.P6165790239700502449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022004 (n + 1) * A073648 (n + 1) * A098412 (n + 1)

end

end A372319.P6165790239700502449

noncomputable section

/-- A372319: Products of prime triples (p, p+2, p+6) where p = A022004(n).

Offset 1, canonical program `A372319.P6165790239700502449`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A372319 (n : ℕ) : ℤ :=
  A372319.P6165790239700502449.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A372319.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A071701.P18388032048899093452

`A071538(n+1)-A071702(n+1)`
-/

namespace A071701.P18388032048899093452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071538 (n + 1) - A071702 (n + 1)

end

end A071701.P18388032048899093452

noncomputable section

/-- A071701: Number of twin prime pairs <= n of form (4*k+1,4*k+3), k>0.

Offset 1, canonical program `A071701.P18388032048899093452`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A071701 (n : ℕ) : ℤ :=
  A071701.P18388032048899093452.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A071701.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A088186.P960079272530262339

`A054735(1+n)+A005408(A029707(n+1))`
-/

namespace A088186.P960079272530262339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054735 (1 + n) + A005408 (A029707 (n + 1)).toNat

end

end A088186.P960079272530262339

noncomputable section

/-- A088186: Sums of twin primes and their indices.

Offset 0, canonical program `A088186.P960079272530262339`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1270 terms. -/
def A088186 (n : ℕ) : ℤ :=
  A088186.P960079272530262339.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1270 terms. -/
def A088186.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A105409.P10015109097303357791

`A029707(A242881(1+n))-1`
-/

namespace A105409.P10015109097303357791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029707 (A242881 (1 + n)).toNat - 1

end

end A105409.P10015109097303357791

noncomputable section

/-- A105409: Numbers k such that prime(k)-2 and prime(k+2)-2 are both primes.

Offset 1, canonical program `A105409.P10015109097303357791`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A105409 (n : ℕ) : ℤ :=
  A105409.P10015109097303357791.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A105409.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A137859.P12570958566388461762

`A050216(A029707(n+1))`
-/

namespace A137859.P12570958566388461762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050216 (A029707 (n + 1)).toNat

end

end A137859.P12570958566388461762

noncomputable section

/-- A137859: Number of primes between the n-th squared twin prime pair.

Offset 1, canonical program `A137859.P12570958566388461762`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A137859 (n : ℕ) : ℤ :=
  A137859.P12570958566388461762.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A137859.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A155752.P6228689506561445427

`A029707(n+1)-1`
-/

namespace A155752.P6228689506561445427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029707 (n + 1) - 1

end

end A155752.P6228689506561445427

noncomputable section

/-- A155752: Where 2's occur in the prime differences A001223.

Offset 1, canonical program `A155752.P6228689506561445427`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A029707, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A155752 (n : ℕ) : ℤ :=
  A155752.P6228689506561445427.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A029707, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A155752.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A163386.P14689619579502846118

`p?[A045753(n+1)+4]`
-/

namespace A163386.P14689619579502846118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045753 (n + 1) + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A163386.P14689619579502846118

noncomputable section

/-- A163386: Primes p such that 4(p-4)-1 and 4(p-4)+1 are twin primes.

Offset 1, canonical program `A163386.P14689619579502846118`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1430 terms. -/
def A163386 (n : ℕ) : ℤ :=
  A163386.P14689619579502846118.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1430 terms. -/
def A163386.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A176704.P15373675771019721198

`Δ[A176656(1+n)]-1`
-/

namespace A176704.P15373675771019721198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176656 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A176704.P15373675771019721198

noncomputable section

/-- A176704: Number of twin primes between non-twin prime(n) and non-twin prime(n+1).

Offset 1, canonical program `A176704.P15373675771019721198`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A176704 (n : ℕ) : ℤ :=
  A176704.P15373675771019721198.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A176704.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A179067.P5409927484252859160

`runs[A029707(n+1)-2*n]`
-/

namespace A179067.P5409927484252859160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029707 (n + 1) - (2 * n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) n

end

end A179067.P5409927484252859160

noncomputable section

/-- A179067: Orders of consecutive clusters of twin primes.

Offset 1, canonical program `A179067.P5409927484252859160`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A179067 (n : ℕ) : ℤ :=
  (A179067.P5409927484252859160.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A179067.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A236467.P8483166501229439060

`∩[A029707(n+1), A144834(n+1)]+1`
-/

namespace A236467.P8483166501229439060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029707 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144834 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A236467.P8483166501229439060

noncomputable section

/-- A236467: Primes p with p + 2 and prime(p) - 2 both prime.

Offset 1, canonical program `A236467.P8483166501229439060`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 453 terms. -/
def A236467 (n : ℕ) : ℤ :=
  (A236467.P8483166501229439060.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 453 terms. -/
def A236467.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A236568.P5918031760574523688

`p?[A029707(n+1)-2]`
-/

namespace A236568.P5918031760574523688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029707 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A236568.P5918031760574523688

noncomputable section

/-- A236568: Primes p with prime(p + 2) + 2 prime.

Offset 1, canonical program `A236568.P5918031760574523688`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6764 terms. -/
def A236568 (n : ℕ) : ℤ :=
  A236568.P5918031760574523688.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6764 terms. -/
def A236568.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A241557.P9533339844358143666

`A040000(n)*A045753(A065033(2*n))`
-/

namespace A241557.P9533339844358143666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040000 n * A045753 (A065033 (2 * n)).toNat

end

end A241557.P9533339844358143666

noncomputable section

/-- A241557: Numbers k that do not have prime anti-divisors.

Offset 1, canonical program `A241557.P9533339844358143666`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A241557 (n : ℕ) : ℤ :=
  A241557.P9533339844358143666.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A241557.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A259539.P2662622544666601067

`∩[A029707(n+1), A053319(n)+a(n-1)]` with `a(0)=4`
-/

namespace A259539.P2662622544666601067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029707 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f2 =>
  A053319 n + f2 (n - 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A259539.P2662622544666601067

noncomputable section

/-- A259539: Numbers m with m-1, m+1 and prime(m)+2 all prime.

Offset 1, canonical program `A259539.P2662622544666601067`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 453 terms. -/
def A259539 (n : ℕ) : ℤ :=
  (A259539.P2662622544666601067.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 453 terms. -/
def A259539.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A286714.P12134044477131869880

`A008330(A029707(n+1))-A078578(n+1)`
-/

namespace A286714.P12134044477131869880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008330 (A029707 (n + 1)).toNat - A078578 (n + 1)

end

end A286714.P12134044477131869880

noncomputable section

/-- A286714: Difference phi(p-1) - phi(p+1) for lesser of twin primes.

Offset 1, canonical program `A286714.P12134044477131869880`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1270 terms. -/
def A286714 (n : ℕ) : ℤ :=
  A286714.P12134044477131869880.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1270 terms. -/
def A286714.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A305558.P7441246682485823562

`A000040(A029707(n+1)-1)+A000040(A107770(n+1)+1)-(A001359(n+1)+A006512(n+1))`
-/

namespace A305558.P7441246682485823562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A029707 (n + 1) - 1).toNat + A000040 (A107770 (n + 1) + 1).toNat - (A001359 (n + 1) + A006512 (n + 1))

end

end A305558.P7441246682485823562

noncomputable section

/-- A305558: If (p1,p2) is the n-th twin prime pair and p the prime before p1 and q the prime after p2 then a(n) = p + q - (p1 + p2).

Offset 1, canonical program `A305558.P7441246682485823562`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001359, A006512, A029707, A107770, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A305558 (n : ℕ) : ℤ :=
  A305558.P7441246682485823562.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001359, A006512, A029707, A107770, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A305558.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A311190.P13315914860690084580

`A310398(n)+A315303(n)-A315740(n)`
-/

namespace A311190.P13315914860690084580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310398 n + (A315303 n - A315740 n)

end

end A311190.P13315914860690084580

noncomputable section

/-- A311190: Coordination sequence Gal.6.218.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A311190.P13315914860690084580`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2281 terms. -/
def A311190 (n : ℕ) : ℤ :=
  A311190.P13315914860690084580.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2281 terms. -/
def A311190.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A336411.P10199807446028668935

`A029707(n+3)-3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A336411.P10199807446028668935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029707 (n + 3) - 3

end

end A336411.P10199807446028668935

noncomputable section

/-- A336411: a(n) = A029707(n+2) - 3 for n >= 1.

Offset 1, canonical program `A336411.P10199807446028668935`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A029707, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A336411 (n : ℕ) : ℤ :=
  A336411.P10199807446028668935.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A029707, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A336411.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A007510.P12699692636498883418

`A000040(A176656(n+1))`
-/

namespace A007510.P12699692636498883418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A176656 (n + 1)).toNat

end

end A007510.P12699692636498883418

noncomputable section

/-- A007510: Single (or isolated or non-twin) primes: Primes p such that neither p-2 nor p+2 is prime.

Offset 1, canonical program `A007510.P12699692636498883418`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A176656, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A007510 (n : ℕ) : ℤ :=
  A007510.P12699692636498883418.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A176656, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A007510.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A130286.P5033588012465865576

`A008578(∩[A176656(n+1)+2, A176656(n+1)])`
-/

namespace A130286.P5033588012465865576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176656 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176656 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A130286.P5033588012465865576

noncomputable section

/-- A130286: Strongly-single primes: primes p such that neither previousprime(p) nor nextprime(p) is a twin prime.

Offset 1, canonical program `A130286.P5033588012465865576`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5414 terms. -/
def A130286 (n : ℕ) : ℤ :=
  A130286.P5033588012465865576.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5414 terms. -/
def A130286.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A311898.P13132033356014424136

`A014682(A312451(n)+A311334(n))`
-/

namespace A311898.P13132033356014424136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A312451 n + A311334 n).toNat

end

end A311898.P13132033356014424136

noncomputable section

/-- A311898: Coordination sequence Gal.5.76.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A311898.P13132033356014424136`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2588 terms. -/
def A311898 (n : ℕ) : ℤ :=
  A311898.P13132033356014424136.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2588 terms. -/
def A311898.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A029395.P2989943382135778260

`A029408(n)+A029437(n)-A025922(n)`
-/

namespace A029395.P2989943382135778260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029408 n + (A029437 n - A025922 n)

end

end A029395.P2989943382135778260

noncomputable section

/-- A029395: Expansion of 1/((1-x^5)*(1-x^7)*(1-x^8)*(1-x^11)).

Offset 0, canonical program `A029395.P2989943382135778260`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029395 (n : ℕ) : ℤ :=
  A029395.P2989943382135778260.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029395.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A259488.P209394129755622119

`∩[A029707(n+1), A096477(n+1)]`
-/

namespace A259488.P209394129755622119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029707 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096477 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A259488.P209394129755622119

noncomputable section

/-- A259488: Positive integers k with prime(k)+2 and prime(prime(k))+2 both prime.

Offset 1, canonical program `A259488.P209394129755622119`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1034 terms. -/
def A259488 (n : ℕ) : ℤ :=
  (A259488.P209394129755622119.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1034 terms. -/
def A259488.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A379157.P13098418372485706245

`A246655(A379155(n+1))`
-/

namespace A379157.P13098418372485706245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246655 (A379155 (n + 1)).toNat

end

end A379157.P13098418372485706245

noncomputable section

/-- A379157: Prime powers p such that the interval from p to the next prime power contains a unique prime number.

Offset 1, canonical program `A379157.P13098418372485706245`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A246655, A379155, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A379157 (n : ℕ) : ℤ :=
  A379157.P13098418372485706245.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A246655, A379155, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A379157.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A036454.P14075252907541784587

`record[(A000015(n+2)/A001222(A048691(n+2)))²]`
-/

namespace A036454.P14075252907541784587
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A000015 (n + 2) : ℚ) / (A001222 (A048691 (n + 2)).toNat : ℚ)) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A036454.P14075252907541784587

noncomputable section

/-- A036454: Prime powers with special exponents: q^(p-1) where p > 2 and q are prime numbers.

Offset 1, canonical program `A036454.P14075252907541784587`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A036454 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A036454.P14075252907541784587.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A036454.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A156900.P15113045615155499423

`A000015(record[∏{p}[n, #]])`
-/

namespace A156900.P15113045615155499423
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000015 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A156900.P15113045615155499423

noncomputable section

/-- A156900: a(n) = the smallest prime power >= the n-th positive squarefree integer.

Offset 1, canonical program `A156900.P15113045615155499423`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6083 terms. -/
def A156900 (n : ℕ) : ℤ :=
  A156900.P15113045615155499423.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6083 terms. -/
def A156900.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A188666.P7671169508487719153

`A000015(ceil(n/2)+1)`
-/

namespace A188666.P7671169508487719153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000015 (⌈(n : ℚ) / 2⌉ + 1).toNat

end

end A188666.P7671169508487719153

noncomputable section

/-- A188666: Largest m <= n such that lcm(m, m+1, ..., n) = lcm(1, 2, ..., n).

Offset 1, canonical program `A188666.P7671169508487719153`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188666 (n : ℕ) : ℤ :=
  A188666.P7671169508487719153.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188666.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A337877.P10450886724120392613

`eq[3, A329617(n+1)]+1`
-/

namespace A337877.P10450886724120392613
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329617 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A337877.P10450886724120392613

noncomputable section

/-- A337877: Numbers of the form p^2*q where p and q are primes and p <= q.

Offset 1, canonical program `A337877.P10450886724120392613`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2914 terms. -/
def A337877 (n : ℕ) : ℤ :=
  (A337877.P10450886724120392613.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2914 terms. -/
def A337877.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A345531.P10760789407017531318

`A000015(A008864(n+1))`
-/

namespace A345531.P10760789407017531318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000015 (A008864 (n + 1)).toNat

end

end A345531.P10760789407017531318

noncomputable section

/-- A345531: Smallest prime power greater than the n-th prime.

Offset 1, canonical program `A345531.P10760789407017531318`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000015, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A345531 (n : ℕ) : ℤ :=
  A345531.P10760789407017531318.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000015, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A345531.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A346635.P3523229530508438297

`eq[1, A329617(n+1)%2]+1`
-/

namespace A346635.P3523229530508438297
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A329617 (n + 1)) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A346635.P3523229530508438297

noncomputable section

/-- A346635: Numbers whose division (or multiplication) by their greatest prime factor yields a perfect square. Numbers k such that k*A006530(k) is a perfect square.

Offset 1, canonical program `A346635.P3523229530508438297`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9636 terms. -/
def A346635 (n : ℕ) : ℤ :=
  (A346635.P3523229530508438297.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9636 terms. -/
def A346635.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A353332.P15543741578413310228

`∑{d}[n+1, A353331(#)]`
-/

namespace A353332.P15543741578413310228
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A353331 d

end

end A353332.P15543741578413310228

noncomputable section

/-- A353332: Number of divisors d of n for which both A001222(d) and A056239(d) are even.

Offset 1, canonical program `A353332.P15543741578413310228`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A353331, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A353332 (n : ℕ) : ℤ :=
  A353332.P15543741578413310228.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A353331, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A353332.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A377281.P17101682936717077421

`A345531(n+1)-A000040(n+1)`
-/

namespace A377281.P17101682936717077421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345531 (n + 1) - A000040 (n + 1)

end

end A377281.P17101682936717077421

noncomputable section

/-- A377281: Difference between the n-th prime and the next prime-power (exclusive).

Offset 1, canonical program `A377281.P17101682936717077421`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A345531, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A377281 (n : ℕ) : ℤ :=
  A377281.P17101682936717077421.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A345531, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A377281.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A377282.P8438499966211881780

`A000015(n+2)-(n+1)`
-/

namespace A377282.P8438499966211881780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000015 (n + 2) - (n + 1 : ℤ)

end

end A377282.P8438499966211881780

noncomputable section

/-- A377282: Difference between n and the next prime-power (exclusive).

Offset 1, canonical program `A377282.P8438499966211881780`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000015, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A377282 (n : ℕ) : ℤ :=
  A377282.P8438499966211881780.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000015, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A377282.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A378370.P12947003761999164007

`A000015(n+1)-(n+1)`
-/

namespace A378370.P12947003761999164007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000015 (n + 1) - (n + 1 : ℤ)

end

end A378370.P12947003761999164007

noncomputable section

/-- A378370: Distance between n and the least prime power >= n, allowing 1.

Offset 1, canonical program `A378370.P12947003761999164007`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000015, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A378370 (n : ℕ) : ℤ :=
  A378370.P12947003761999164007.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000015, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A378370.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A379011.P5118616404565365073

`2*A379010(n+1)-A246278(n+2)`
-/

namespace A379011.P5118616404565365073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A379010 (n + 1) - A246278 (n + 2)

end

end A379011.P5118616404565365073

noncomputable section

/-- A379011: Square array A(n, k) = 2*phi(A246278(n, k)) - A246278(n, k), read by falling antidiagonals; A083254, (2*phi(n)-n), applied to the prime shift array.

Offset 1, canonical program `A379011.P5118616404565365073`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. -/
def A379011 (n : ℕ) : ℤ :=
  A379011.P5118616404565365073.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. -/
def A379011.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A379311.P6504775159606680234

`A001222(n+1)-A379300(n+1)`
-/

namespace A379311.P6504775159606680234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) - A379300 (n + 1)

end

end A379311.P6504775159606680234

noncomputable section

/-- A379311: Number of prime indices of n that are 1 or prime.

Offset 1, canonical program `A379311.P6504775159606680234`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A379300, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A379311 (n : ℕ) : ℤ :=
  A379311.P6504775159606680234.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A379300, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A379311.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A003800.P15621903815965783773

`(A059238(n+1)+A329119(n+1)²)*A246655(n+1)²`
-/

namespace A003800.P15621903815965783773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A059238 (n + 1) + A329119 (n + 1) ^ 2) * A246655 (n + 1) ^ 2

end

end A003800.P15621903815965783773

noncomputable section

/-- A003800: Order of universal Chevalley group A_2 (q), q = prime power.

Offset 1, canonical program `A003800.P15621903815965783773`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A003800 (n : ℕ) : ℤ :=
  A003800.P15621903815965783773.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A003800.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038586.P16442601555831213616

`A007089(A038574(n))`
-/

namespace A038586.P16442601555831213616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 (A038574 n).toNat

end

end A038586.P16442601555831213616

noncomputable section

/-- A038586: Write n in ternary then sort the digits.

Offset 0, canonical program `A038586.P16442601555831213616`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A038586 (n : ℕ) : ℤ :=
  A038586.P16442601555831213616.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A038586.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A080102.P6236358342388533581

`A005451(A345531(2+n))`
-/

namespace A080102.P6236358342388533581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005451 (A345531 (2 + n)).toNat

end

end A080102.P6236358342388533581

noncomputable section

/-- A080102: Smallest prime power in all composite numbers between n-th prime and next prime, a(n) = 1 if no such prime power exists.

Offset 2, canonical program `A080102.P6236358342388533581`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1227 terms. -/
def A080102 (n : ℕ) : ℤ :=
  A080102.P6236358342388533581.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1227 terms. -/
def A080102.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A096156.P4142209779993726843

`filter[A337877(n+1), A212793(#)]`
-/

namespace A096156.P4142209779993726843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337877 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A212793 (f1 j).toNat = 1) n)

end

end A096156.P4142209779993726843

noncomputable section

/-- A096156: Numbers with ordered prime signature (2,1).

Offset 1, canonical program `A096156.P4142209779993726843`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A096156 (n : ℕ) : ℤ :=
  A096156.P4142209779993726843.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A096156.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A196067.P13275416248771146917

`A109129(∑{p}[n+1, C(#, n)]+n+1)`
-/

namespace A196067.P13275416248771146917
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109129 (∑ p ∈ Nat.primeFactors (f1 n), Nat.choose p n + (n + 1))

end

end A196067.P13275416248771146917

noncomputable section

/-- A196067: Number of pendant vertices in the rooted tree with Matula-Goebel number n.

Offset 1, canonical program `A196067.P13275416248771146917`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 110 terms. -/
def A196067 (n : ℕ) : ℤ :=
  A196067.P13275416248771146917.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 110 terms. -/
def A196067.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A249827.P16919169426164711209

`A084967(A249824(n+1))`
-/

namespace A249827.P16919169426164711209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084967 (A249824 (n + 1)).toNat

end

end A249827.P16919169426164711209

noncomputable section

/-- A249827: Row 3 of A246278: replace in 2n each prime factor p(k) with prime p(k+2).

Offset 1, canonical program `A249827.P16919169426164711209`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A249824, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A249827 (n : ℕ) : ℤ :=
  A249827.P16919169426164711209.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A249824, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A249827.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A253891.P1048282681806137115

`A245611(A163511(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A253891.P1048282681806137115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245611 (A163511 n).toNat

end

end A253891.P1048282681806137115

noncomputable section

/-- A253891: Permutation of natural numbers: a(n) = A245611(A163511(n)).

Offset 0, canonical program `A253891.P1048282681806137115`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A163511, A245611, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A253891 (n : ℕ) : ℤ :=
  A253891.P1048282681806137115.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A163511, A245611, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A253891.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A273664.P16379432266781684754

`A249824(A254050(n+1))`
-/

namespace A273664.P16379432266781684754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249824 (A254050 (n + 1)).toNat

end

end A273664.P16379432266781684754

noncomputable section

/-- A273664: a(n) = A249746(A032766(n)).

Offset 1, canonical program `A273664.P16379432266781684754`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A249824, A254050, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A273664 (n : ℕ) : ℤ :=
  A273664.P16379432266781684754.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A249824, A254050, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A273664.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A285715.P6592177239309235489

`A000120(A245611(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A285715.P6592177239309235489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A245611 (n + 1)).toNat

end

end A285715.P6592177239309235489

noncomputable section

/-- A285715: a(n) = A000120(A245611(n)).

Offset 1, canonical program `A285715.P6592177239309235489`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A245611, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A285715 (n : ℕ) : ℤ :=
  A285715.P6592177239309235489.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A245611, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A285715.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A285716.P9504684840858199531

`A080791(A245611(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A285716.P9504684840858199531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080791 (A245611 (n + 1)).toNat

end

end A285716.P9504684840858199531

noncomputable section

/-- A285716: a(n) = A080791(A245611(n)).

Offset 1, canonical program `A285716.P9504684840858199531`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A245611, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A285716 (n : ℕ) : ℤ :=
  A285716.P9504684840858199531.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A245611, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A285716.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A286162.P11576474081323857653

`(2+(A001511(n+1)+A278222(n+1))²-A001511(n+1)-3*A278222(n+1))/2`
-/

namespace A286162.P11576474081323857653
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 + (A001511 (n + 1) + A278222 (n + 1)) ^ 2 - A001511 (n + 1) - 3 * A278222 (n + 1) : ℚ) / 2

end

end A286162.P11576474081323857653

noncomputable section

/-- A286162: Compound filter: a(n) = T(A001511(n), A278222(n)), where T(n,k) is sequence A000027 used as a pairing function.

Offset 1, canonical program `A286162.P11576474081323857653`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A278222, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A286162 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A286162.P11576474081323857653.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A278222, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A286162.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A286163.P14725374147584481786

`(2+(A046523(n+1)+A278222(n+1))²-A046523(n+1)-3*A278222(n+1))/2`
-/

namespace A286163.P14725374147584481786
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 + (A046523 (n + 1) + A278222 (n + 1)) ^ 2 - A046523 (n + 1) - 3 * A278222 (n + 1) : ℚ) / 2

end

end A286163.P14725374147584481786

noncomputable section

/-- A286163: Compound filter: a(n) = T(A046523(n), A278222(n)), where T(n,k) is sequence A000027 used as a pairing function.

Offset 1, canonical program `A286163.P14725374147584481786`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046523, A278222, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A286163 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A286163.P14725374147584481786.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046523, A278222, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A286163.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A286240.P2612386797626338506

`(2+(A278222(n)+A278222(1+n))²-A278222(n)-3*A278222(1+n))/2`
-/

namespace A286240.P2612386797626338506
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 + (A278222 n + A278222 (1 + n)) ^ 2 - A278222 n - 3 * A278222 (1 + n) : ℚ) / 2

end

end A286240.P2612386797626338506

noncomputable section

/-- A286240: Compound filter: a(n) = P(A278222(n), A278222(1+n)), where P(n,k) is sequence A000027 used as a pairing function.

Offset 0, canonical program `A286240.P2612386797626338506`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A278222, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A286240 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A286240.P2612386797626338506.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A278222, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A286240.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A286242.P17296840437285290925

`(2+(A278222(n)+A278219(n))²-A278222(n)-3*A278219(n))/2`
-/

namespace A286242.P17296840437285290925
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 + (A278222 n + A278219 n) ^ 2 - A278222 n - 3 * A278219 n : ℚ) / 2

end

end A286242.P17296840437285290925

noncomputable section

/-- A286242: Compound filter: a(n) = P(A278222(n), A278219(n)), where P(n,k) is sequence A000027 used as a pairing function.

Offset 0, canonical program `A286242.P17296840437285290925`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A278219, A278222, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A286242 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A286242.P17296840437285290925.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A278219, A278222, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A286242.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A286243.P4137643626083148722

`A278222(A064216(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A286243.P4137643626083148722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278222 (A064216 (n + 1)).toNat

end

end A286243.P4137643626083148722

noncomputable section

/-- A286243: Filter-sequence: a(n) = A278222(A064216(n)).

Offset 1, canonical program `A286243.P4137643626083148722`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064216, A278222, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A286243 (n : ℕ) : ℤ :=
  A286243.P4137643626083148722.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064216, A278222, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A286243.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A286252.P15753942250277764956

`(2+(A001511(1+n)+A278222(n))²-A001511(1+n)-3*A278222(n))/2`
-/

namespace A286252.P15753942250277764956
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 + (A001511 (1 + n) + A278222 n) ^ 2 - A001511 (1 + n) - 3 * A278222 n : ℚ) / 2

end

end A286252.P15753942250277764956

noncomputable section

/-- A286252: Compound filter: a(n) = P(A001511(1+n), A278222(n)), where P(n,k) is sequence A000027 used as a pairing function.

Offset 0, canonical program `A286252.P15753942250277764956`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A278222, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A286252 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A286252.P15753942250277764956.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A278222, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A286252.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A286365.P13079732361308459791

`2*A286364(n+1)+A000035(A007814(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A286365.P13079732361308459791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A286364 (n + 1) + A000035 (A007814 (n + 1)).toNat

end

end A286365.P13079732361308459791

noncomputable section

/-- A286365: Compound filter: a(n) = 2*A286364(n) + A000035(A007814(n)).

Offset 1, canonical program `A286365.P13079732361308459791`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A286364, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A286365 (n : ℕ) : ℤ :=
  A286365.P13079732361308459791.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A286364, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A286365.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A286366.P17731940063054662949

`2*A286365(n+1)+floor(A072400(n+1)/4)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A286366.P17731940063054662949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A286365 (n + 1) + ⌊(A072400 (n + 1) : ℚ) / 4⌋

end

end A286366.P17731940063054662949

noncomputable section

/-- A286366: Compound filter: a(n) = 2*A286365(n) + floor(A072400(n)/4).

Offset 1, canonical program `A286366.P17731940063054662949`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A286365, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A286366 (n : ℕ) : ℤ :=
  A286366.P17731940063054662949.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A286365, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A286366.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A286367.P15294916279753429942

`1/2*(2+(A001511(n+1)+A286364(n+1))²-A001511(n+1)-3*A286364(n+1))`
-/

namespace A286367.P15294916279753429942
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (2 + (A001511 (n + 1) + A286364 (n + 1)) ^ 2 - A001511 (n + 1) - 3 * A286364 (n + 1) : ℚ)

end

end A286367.P15294916279753429942

noncomputable section

/-- A286367: Compound filter: a(n) = P(A001511(n), A286364(n)), where P(n,k) is sequence A000027 used as a pairing function.

Offset 1, canonical program `A286367.P15294916279753429942`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A286364, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A286367 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A286367.P15294916279753429942.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A286364, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A286367.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A286369.P1450698806063969712

`2*A286364(n+1)+floor(A072400(n+1)/4)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A286369.P1450698806063969712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A286364 (n + 1) + ⌊(A072400 (n + 1) : ℚ) / 4⌋

end

end A286369.P1450698806063969712

noncomputable section

/-- A286369: Compound filter: a(n) = 2*A286364(n) + floor(A072400(n)/4).

Offset 1, canonical program `A286369.P1450698806063969712`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A286364, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A286369 (n : ℕ) : ℤ :=
  A286369.P1450698806063969712.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A286364, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A286369.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A286370.P9388022672859368658

`A286369(A139391(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A286370.P9388022672859368658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286369 (A139391 (n + 1)).toNat

end

end A286370.P9388022672859368658

noncomputable section

/-- A286370: a(n) = A286369(A139391(n)).

Offset 1, canonical program `A286370.P9388022672859368658`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A286369, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A286370 (n : ℕ) : ℤ :=
  A286370.P9388022672859368658.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A286369, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A286370.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A286372.P10421830987609414699

`A286366(A064216(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A286372.P10421830987609414699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286366 (A064216 (n + 1)).toNat

end

end A286372.P10421830987609414699

noncomputable section

/-- A286372: a(n) = A286366(A064216(n)).

Offset 1, canonical program `A286372.P10421830987609414699`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064216, A286366, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A286372 (n : ℕ) : ℤ :=
  A286372.P10421830987609414699.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064216, A286366, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A286372.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A286374.P5903061366125736314

`A278222(n²)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A286374.P5903061366125736314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278222 (n ^ 2)

end

end A286374.P5903061366125736314

noncomputable section

/-- A286374: a(n) = A278222(n^2).

Offset 0, canonical program `A286374.P5903061366125736314`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A278222, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A286374 (n : ℕ) : ℤ :=
  A286374.P5903061366125736314.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A278222, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A286374.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A286375.P18031740170407069143

`A278222(n^3)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A286375.P18031740170407069143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278222 (n ^ 3)

end

end A286375.P18031740170407069143

noncomputable section

/-- A286375: a(n) = A278222(n^3).

Offset 0, canonical program `A286375.P18031740170407069143`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A278222, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A286375 (n : ℕ) : ℤ :=
  A286375.P18031740170407069143.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A278222, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A286375.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A286461.P7084713959318418988

`1/2*(2+(A001511(n+1)+A286364(2*(n+1)-1))²-A001511(n+1)-3*A286364(2*(n+1)-1))`
-/

namespace A286461.P7084713959318418988
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (2 + (A001511 (n + 1) + A286364 (2 * (n + 1) - 1)) ^ 2 - A001511 (n + 1) - 3 * A286364 (2 * (n + 1) - 1) : ℚ)

end

end A286461.P7084713959318418988

noncomputable section

/-- A286461: Compound filter (2-adic valuation of n & 4k+1,4k+3 prime-signature combination of 2n-1): a(n) = P(A001511(n), A286364((2*n)-1)), where P(n,k) is sequence A000027 used as a pairing function.

Offset 1, canonical program `A286461.P7084713959318418988`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A286364, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A286461 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A286461.P7084713959318418988.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A286364, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A286461.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A286464.P14165996615325452692

`1/2*(2+(A051064(n+1)+A278222(n+1))²-A051064(n+1)-3*A278222(n+1))`
-/

namespace A286464.P14165996615325452692
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (2 + (A051064 (n + 1) + A278222 (n + 1)) ^ 2 - A051064 (n + 1) - 3 * A278222 (n + 1) : ℚ)

end

end A286464.P14165996615325452692

noncomputable section

/-- A286464: Compound filter (3-adic valuation & signature for base-2 1-runs): a(n) = P(A051064(n), A278222(n)), where P(n,k) is sequence A000027 used as a pairing function.

Offset 1, canonical program `A286464.P14165996615325452692`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A278222, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A286464 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A286464.P14165996615325452692.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A278222, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A286464.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A286588.P7668837531051019709

`A278222(A246200(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A286588.P7668837531051019709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278222 (A246200 n).toNat

end

end A286588.P7668837531051019709

noncomputable section

/-- A286588: a(n) = A278222(A246200(n)).

Offset 0, canonical program `A286588.P7668837531051019709`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A246200, A278222, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A286588 (n : ℕ) : ℤ :=
  A286588.P7668837531051019709.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A246200, A278222, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A286588.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A286596.P8578351790171259631

`A278222(A153141(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A286596.P8578351790171259631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278222 (A153141 n).toNat

end

end A286596.P8578351790171259631

noncomputable section

/-- A286596: a(n) = A278222(A153141(n)).

Offset 0, canonical program `A286596.P8578351790171259631`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A153141, A278222, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A286596 (n : ℕ) : ℤ :=
  A286596.P8578351790171259631.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A153141, A278222, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A286596.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A286598.P16413157530445033126

`A278222(A153142(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A286598.P16413157530445033126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278222 (A153142 n).toNat

end

end A286598.P16413157530445033126

noncomputable section

/-- A286598: a(n) = A278222(A153142(n)).

Offset 0, canonical program `A286598.P16413157530445033126`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A153142, A278222, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A286598 (n : ℕ) : ℤ :=
  A286598.P16413157530445033126.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A153142, A278222, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A286598.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A286601.P16400793252116629051

`A278222(A193231(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A286601.P16400793252116629051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278222 (A193231 n).toNat

end

end A286601.P16400793252116629051

noncomputable section

/-- A286601: a(n) = A278222(A193231(n)).

Offset 0, canonical program `A286601.P16400793252116629051`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A193231, A278222, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A286601 (n : ℕ) : ℤ :=
  A286601.P16400793252116629051.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A193231, A278222, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A286601.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A290091.P8071021601090758947

`A278222(A289813(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A290091.P8071021601090758947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278222 (A289813 n).toNat

end

end A290091.P8071021601090758947

noncomputable section

/-- A290091: Filter based on 1-digits of base-3 expansion: a(n) = A278222(A289813(n)).

Offset 0, canonical program `A290091.P8071021601090758947`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A278222, A289813, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A290091 (n : ℕ) : ℤ :=
  A290091.P8071021601090758947.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A278222, A289813, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A290091.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A290092.P11702176090070994721

`A278222(A289814(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A290092.P11702176090070994721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278222 (A289814 n).toNat

end

end A290092.P11702176090070994721

noncomputable section

/-- A290092: Filter based on 2-digits of base-3 expansion: a(n) = A278222(A289814(n)).

Offset 0, canonical program `A290092.P11702176090070994721`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A278222, A289814, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A290092 (n : ℕ) : ℤ :=
  A290092.P11702176090070994721.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A278222, A289814, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A290092.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A290093.P8391015424067405115

`1/2*(2+(A290091(n)+A290092(n))²-A290091(n)-3*A290092(n))`
-/

namespace A290093.P8391015424067405115
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (2 + (A290091 n + A290092 n) ^ 2 - A290091 n - 3 * A290092 n : ℚ)

end

end A290093.P8391015424067405115

noncomputable section

/-- A290093: Compound filter (for base-3 digit runlengths): a(n) = P(A290091(n), A290092(n)), where P(n,k) is sequence A000027 used as a pairing function.

Offset 0, canonical program `A290093.P8391015424067405115`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A290091, A290092, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A290093 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A290093.P8391015424067405115.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A290091, A290092, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A290093.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A291771.P9273662202954046865

`A278222(A291770(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A291771.P9273662202954046865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278222 (A291770 (n + 1)).toNat

end

end A291771.P9273662202954046865

noncomputable section

/-- A291771: Filter based on runlengths of 0-digits in base-3 expansion of n: a(n) = A278222(A291770(n)).

Offset 1, canonical program `A291771.P9273662202954046865`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A278222, A291770, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A291771 (n : ℕ) : ℤ :=
  A291771.P9273662202954046865.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A278222, A291770, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A291771.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A302478.P2762765523688909035

`eq[A302242(n+1), A305054(n+1)]+1`
-/

namespace A302478.P2762765523688909035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302242 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305054 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A302478.P2762765523688909035

noncomputable section

/-- A302478: Products of prime numbers of squarefree index.

Offset 1, canonical program `A302478.P2762765523688909035`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A302478 (n : ℕ) : ℤ :=
  (A302478.P2762765523688909035.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A302478.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A302590.P4590414814496422150

`∩[A076610(n+1), A302539(n+1)]`
-/

namespace A302590.P4590414814496422150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076610 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302539 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A302590.P4590414814496422150

noncomputable section

/-- A302590: Squarefree numbers whose prime indices are prime numbers.

Offset 1, canonical program `A302590.P4590414814496422150`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6406 terms. -/
def A302590 (n : ℕ) : ℤ :=
  (A302590.P4590414814496422150.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6406 terms. -/
def A302590.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A305053.P7789054138584323973

`A305054(n+1)-A001221(n+1)`
-/

namespace A305053.P7789054138584323973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305054 (n + 1) - A001221 (n + 1)

end

end A305053.P7789054138584323973

noncomputable section

/-- A305053: If n = Product_i prime(x_i)^k_i, then a(n) = Sum_i k_i * omega(x_i) - omega(n), where omega = A001221 is number of distinct prime factors.

Offset 1, canonical program `A305053.P7789054138584323973`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A305054, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A305053 (n : ℕ) : ℤ :=
  A305053.P7789054138584323973.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A305054, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A305053.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A322585.P11496340982607294037

`char[A278222(n)-1]`
-/

namespace A322585.P11496340982607294037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278222 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A322585.P11496340982607294037

noncomputable section

/-- A322585: a(n) = 1 if n is a product of primorial numbers (A002110), 0 otherwise.

Offset 1, canonical program `A322585.P11496340982607294037`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A322585 (n : ℕ) : ℤ :=
  (A322585.P11496340982607294037.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A322585.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A323513.P1414837725324609159

`Δ[fp[A300216(n+1)]]`
-/

namespace A323513.P1414837725324609159
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300216 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (n : ℤ) < f2 j) 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A323513.P1414837725324609159

noncomputable section

/-- A323513: a(n) = 1 if n and phi(n) share the same prime signature, 0 otherwise.

Offset 1, canonical program `A323513.P1414837725324609159`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A323513 (n : ℕ) : ℤ :=
  A323513.P1414837725324609159.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A323513.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A325093.P9223114833129972993

`record[A007913(A318400(1+n))]`
-/

namespace A325093.P9223114833129972993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A318400 (1 + n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A325093.P9223114833129972993

noncomputable section

/-- A325093: Heinz numbers of integer partitions into distinct powers of 2.

Offset 1, canonical program `A325093.P9223114833129972993`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 120 terms. -/
def A325093 (n : ℕ) : ℤ :=
  A325093.P9223114833129972993.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 120 terms. -/
def A325093.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A325663.P670906074571644087

`eq[A001222(n+1), A109129(n+1)]+1`
-/

namespace A325663.P670906074571644087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109129 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A325663.P670906074571644087

noncomputable section

/-- A325663: Matula-Goebel numbers of not necessarily regular rooted stars.

Offset 1, canonical program `A325663.P670906074571644087`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 428 terms. -/
def A325663 (n : ℕ) : ℤ :=
  (A325663.P670906074571644087.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 428 terms. -/
def A325663.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A326956.P17897166605498576645

`C(A278222(n), A005940(n+1))`
-/

namespace A326956.P17897166605498576645
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A278222 n).toNat (A005940 (n + 1)).toNat

end

end A326956.P17897166605498576645

noncomputable section

/-- A326956: Characteristic function of A228354.

Offset 1, canonical program `A326956.P17897166605498576645`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A326956 (n : ℕ) : ℤ :=
  (A326956.P17897166605498576645.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A326956.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A329720.P3601874640228143301

`∏{e}[A278222(n), A000930(#)]`
-/

namespace A329720.P3601874640228143301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278222 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000930 (Nat.factorization (f1 n).natAbs p)

end

end A329720.P3601874640228143301

noncomputable section

/-- A329720: a(n) = Sum_{k=0..n} ((binomial(n-k,6k)*binomial(n,k)) mod 2).

Offset 0, canonical program `A329720.P3601874640228143301`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A329720 (n : ℕ) : ℤ :=
  A329720.P3601874640228143301.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A329720.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A329722.P5381427466914838928

`∏{e}[A278222(n), A329723(#)]`
-/

namespace A329722.P5381427466914838928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278222 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A329723 (Nat.factorization (f1 n).natAbs p)

end

end A329722.P5381427466914838928

noncomputable section

/-- A329722: a(n) = Sum_{k=0..n} ((binomial(n+2k,2n-k)*binomial(n,k)) mod 2).

Offset 0, canonical program `A329722.P5381427466914838928`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A329722 (n : ℕ) : ℤ :=
  A329722.P5381427466914838928.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A329722.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A330036.P2756091389627242767

`val(A278222(A035327(n))*A278222(n), 2)`
-/

namespace A330036.P2756091389627242767
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A278222 (A035327 n).toNat * A278222 n).toNat 2

end

end A330036.P2756091389627242767

noncomputable section

/-- A330036: The length of the largest run of 0's in the binary expansion of n + the length of the largest run of 1's in the binary expansion of n.

Offset 0, canonical program `A330036.P2756091389627242767`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A330036 (n : ℕ) : ℤ :=
  (A330036.P2756091389627242767.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A330036.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A336123.P8408293980022195735

`A001222(n+1)-A336121(n+1)`
-/

namespace A336123.P8408293980022195735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) - A336121 (n + 1)

end

end A336123.P8408293980022195735

noncomputable section

/-- A336123: a(1) = 0, a(2) = 1, and for n > 2, a(n) = [A122111(n) == 1 (mod 4)] + a(A253553(n)).

Offset 1, canonical program `A336123.P8408293980022195735`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A336121, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A336123 (n : ℕ) : ℤ :=
  A336123.P8408293980022195735.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A336121, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A336123.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A336312.P11111094930725925457

`A336121(1+n)+A058281(A000096(n))`
-/

namespace A336312.P11111094930725925457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336121 (1 + n) + A058281 (A000096 n).toNat

end

end A336312.P11111094930725925457

noncomputable section

/-- A336312: Lexicographically earliest infinite sequence such that a(i) = a(j) => A278222(A336120(i)) = A278222(A336120(j)) for all i, j >= 1.

Offset 1, canonical program `A336312.P11111094930725925457`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 199 terms. -/
def A336312 (n : ℕ) : ℤ :=
  A336312.P11111094930725925457.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 199 terms. -/
def A336312.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A342507.P14713030360092801855

`A196050(A103517(n))-A109129(n+1)`
-/

namespace A342507.P14713030360092801855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196050 (A103517 n).toNat - A109129 (n + 1)

end

end A342507.P14713030360092801855

noncomputable section

/-- A342507: Number of internal nodes in rooted tree with Matula-Goebel number n.

Offset 1, canonical program `A342507.P14713030360092801855`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A342507 (n : ℕ) : ℤ :=
  A342507.P14713030360092801855.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A342507.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A353273.P16195094947117950201

`A353272(n+1)-(n+1)`
-/

namespace A353273.P16195094947117950201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353272 (n + 1) - (n + 1 : ℤ)

end

end A353273.P16195094947117950201

noncomputable section

/-- A353273: a(n) = (A332449(n) / gcd(n, A332449(n))) - n, where A332449(n) = A005940(1+(3*A156552(n))).

Offset 1, canonical program `A353273.P16195094947117950201`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A353272, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A353273 (n : ℕ) : ℤ :=
  A353273.P16195094947117950201.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A353272, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A353273.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A353274.P5048788065602667421

`gcd(n+1, A353272(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A353274.P5048788065602667421
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A353272 (n + 1))

end

end A353274.P5048788065602667421

noncomputable section

/-- A353274: a(n) = gcd(n, A353272(n)).

Offset 1, canonical program `A353274.P5048788065602667421`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A353272, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A353274 (n : ℕ) : ℤ :=
  (A353274.P5048788065602667421.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A353272, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A353274.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A353275.P9602640295035619641

`(n+1)/A353274(n+1)`
-/

namespace A353275.P9602640295035619641
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A353274 (n + 1) : ℚ)

end

end A353275.P9602640295035619641

noncomputable section

/-- A353275: a(n) = n / gcd(n, A353272(n)).

Offset 1, canonical program `A353275.P9602640295035619641`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A353274, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A353275 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A353275.P9602640295035619641.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A353274, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A353275.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A353518.P17367289795837771096

`and(A322585(A238745(n+1)), A322585(n+1))`
-/

namespace A353518.P17367289795837771096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A322585 (A238745 (n + 1)).toNat) (A322585 (n + 1))

end

end A353518.P17367289795837771096

noncomputable section

/-- A353518: a(n) = 1 if n is a product of superprimorials (A006939), otherwise 0.

Offset 1, canonical program `A353518.P17367289795837771096`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A353518 (n : ℕ) : ℤ :=
  A353518.P17367289795837771096.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A353518.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A357168.P13820866121939299860

`∩[A357167(n+1)-2, A357167(n+1)]`
-/

namespace A357168.P13820866121939299860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357167 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357167 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A357168.P13820866121939299860

noncomputable section

/-- A357168: Starts of runs of at least 3 consecutive odd numbers whose prime factors are all prime-indexed primes.

Offset 1, canonical program `A357168.P13820866121939299860`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 349 terms. -/
def A357168 (n : ℕ) : ℤ :=
  (A357168.P13820866121939299860.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 349 terms. -/
def A357168.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A358724.P6669633908810563997

`A342507(n+1)-A109082(n+1)`
-/

namespace A358724.P6669633908810563997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342507 (n + 1) - A109082 (n + 1)

end

end A358724.P6669633908810563997

noncomputable section

/-- A358724: Difference between the number of internal (non-leaf) nodes and the edge-height of the rooted tree with Matula-Goebel number n.

Offset 1, canonical program `A358724.P6669633908810563997`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A109082, A342507, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A358724 (n : ℕ) : ℤ :=
  A358724.P6669633908810563997.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A109082, A342507, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A358724.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A364571.P11561737275834834825

`A297171(A163511(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A364571.P11561737275834834825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297171 (A163511 n).toNat

end

end A364571.P11561737275834834825

noncomputable section

/-- A364571: a(n) = A297171(A163511(n)), where A297171 is the Möbius transform of the inverse permutation of A163511.

Offset 0, canonical program `A364571.P11561737275834834825`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A163511, A297171, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A364571 (n : ℕ) : ℤ :=
  A364571.P11561737275834834825.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A163511, A297171, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A364571.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A366261.P9910926722452862609

`A278222(A303767(n))`
-/

namespace A366261.P9910926722452862609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278222 (A303767 n).toNat

end

end A366261.P9910926722452862609

noncomputable section

/-- A366261: The least number with the same prime signature as A366260, where A366260 is Doudna sequence permuted by May code.

Offset 0, canonical program `A366261.P9910926722452862609`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A278222, A303767, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A366261 (n : ℕ) : ℤ :=
  A366261.P9910926722452862609.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A278222, A303767, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A366261.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A366388.P18222890006446978556

`A196050(n+1)-A109129(n+1)`
-/

namespace A366388.P18222890006446978556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196050 (n + 1) - A109129 (n + 1)

end

end A366388.P18222890006446978556

noncomputable section

/-- A366388: The number of edges minus the number of leaves in the rooted tree with Matula-Goebel number n.

Offset 1, canonical program `A366388.P18222890006446978556`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A109129, A196050, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A366388 (n : ℕ) : ℤ :=
  A366388.P18222890006446978556.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A109129, A196050, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A366388.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A366788.P8310867622341074598

`A366388(A163511(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A366788.P8310867622341074598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366388 (A163511 n).toNat

end

end A366788.P8310867622341074598

noncomputable section

/-- A366788: a(n) = A366388(A163511(n)).

Offset 0, canonical program `A366788.P8310867622341074598`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A163511, A366388, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A366788 (n : ℕ) : ℤ :=
  A366788.P8310867622341074598.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A163511, A366388, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A366788.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A373501.P9060710270452767063

`A003800(n+1)*A025474(n+2)`
-/

namespace A373501.P9060710270452767063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003800 (n + 1) * A025474 (n + 2)

end

end A373501.P9060710270452767063

noncomputable section

/-- A373501: Size of the collineation group of classical projective planes of prime power order q.

Offset 1, canonical program `A373501.P9060710270452767063`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A373501 (n : ℕ) : ℤ :=
  A373501.P9060710270452767063.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A373501.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A380882.P11928460777458301178

`∩[A264498(n+1), A000982(n)]`
-/

namespace A380882.P11928460777458301178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264498 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000982 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A380882.P11928460777458301178

noncomputable section

/-- A380882: Centered square numbers which are sphenic numbers.

Offset 1, canonical program `A380882.P11928460777458301178`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 164 terms. -/
def A380882 (n : ℕ) : ℤ :=
  (A380882.P11928460777458301178.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 164 terms. -/
def A380882.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A399600.P18138194940883612281

`A238690(A000961(n+1))`
-/

namespace A399600.P18138194940883612281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238690 (A000961 (n + 1)).toNat

end

end A399600.P18138194940883612281

noncomputable section

/-- A399600: a(1) = 1, a(n) = binomial(pi(p)+m, m) for prime power p^m = A000961(n), where pi = A000720.

Offset 1, canonical program `A399600.P18138194940883612281`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000961, A238690, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A399600 (n : ℕ) : ℤ :=
  A399600.P18138194940883612281.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000961, A238690, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A399600.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A400536.P9417854966251774353

`A238690(A329607(1+n))`
-/

namespace A400536.P9417854966251774353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238690 (A329607 (1 + n)).toNat

end

end A400536.P9417854966251774353

noncomputable section

/-- A400536: a(n) = A238690(A071364(n)).

Offset 1, canonical program `A400536.P9417854966251774353`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A400536 (n : ℕ) : ℤ :=
  A400536.P9417854966251774353.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A400536.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A000046.P15269567726961333018

`A000048(n)-A308706(n)`
-/

namespace A000046.P15269567726961333018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000048 n - A308706 n

end

end A000046.P15269567726961333018

noncomputable section

/-- A000046: Number of primitive n-bead necklaces (turning over is allowed) where complements are equivalent.

Offset 0, canonical program `A000046.P15269567726961333018`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000048, A308706, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A000046 (n : ℕ) : ℤ :=
  A000046.P15269567726961333018.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000048, A308706, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A000046.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A033666.P15559541265896972006

`A109129(A306286(n))+1`
-/

namespace A033666.P15559541265896972006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109129 (A306286 n).toNat + 1

end

end A033666.P15559541265896972006

noncomputable section

/-- A033666: Base-2 digital convolution sequence (with smallest digits).

Offset 0, canonical program `A033666.P15559541265896972006`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 191 terms. -/
def A033666 (n : ℕ) : ℤ :=
  A033666.P15559541265896972006.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 191 terms. -/
def A033666.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038374.P3033651353033527985

`val(A278222(1+n), 2)`
-/

namespace A038374.P3033651353033527985
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A278222 (1 + n)).toNat 2

end

end A038374.P3033651353033527985

noncomputable section

/-- A038374: Length of longest contiguous block of 1's in binary expansion of n.

Offset 1, canonical program `A038374.P3033651353033527985`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A038374 (n : ℕ) : ℤ :=
  (A038374.P3033651353033527985.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A038374.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A044437.P989226592921075756

`eq[A015053(A290091(n)), A290091(n+1)]`
-/

namespace A044437.P989226592921075756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015053 (A290091 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290091 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A044437.P989226592921075756

noncomputable section

/-- A044437: Numbers n such that string 1,1 occurs in the base 3 representation of n but not of n+1.

Offset 1, canonical program `A044437.P989226592921075756`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1413 terms. -/
def A044437 (n : ℕ) : ℤ :=
  (A044437.P989226592921075756.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1413 terms. -/
def A044437.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A044943.P17156978428470333392

`A044942(A371256(n+1))`
-/

namespace A044943.P17156978428470333392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044942 (A371256 (n + 1)).toNat

end

end A044943.P17156978428470333392

noncomputable section

/-- A044943: Number of runs of odd length in the base 3 representation of n.

Offset 1, canonical program `A044943.P17156978428470333392`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6561 terms. -/
def A044943 (n : ℕ) : ℤ :=
  A044943.P17156978428470333392.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6561 terms. -/
def A044943.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045687.P11816481710795598244

`A045669(n)/A004277(n)`
-/

namespace A045687.P11816481710795598244
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045669 n : ℚ) / (A004277 n : ℚ)

end

end A045687.P11816481710795598244

noncomputable section

/-- A045687: Number of 2n-bead balanced binary necklaces of fundamental period 2n which are equivalent to their reversed complement, but are not equivalent to their reverse and complement.

Offset 0, canonical program `A045687.P11816481710795598244`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 324 terms. -/
def A045687 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A045687.P11816481710795598244.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 324 terms. -/
def A045687.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045966.P9749052557920947952

`A249827(n+1)/5+abs(1-n)+1-n`
-/

namespace A045966.P9749052557920947952
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A249827 (n + 1) : ℚ) / 5 + (|1 - (n : ℤ)| + 1 - (n : ℤ) : ℚ)

end

end A045966.P9749052557920947952

noncomputable section

/-- A045966: a(1)=3; if n = Product p_i^e_i, n > 1, then a(n) = Product p_{i+2}^e_i.

Offset 1, canonical program `A045966.P9749052557920947952`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045966 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A045966.P9749052557920947952.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045966.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045972.P3601848265481509117

`A045966(A007947(n+1))*A045966(n+1)`
-/

namespace A045972.P3601848265481509117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045966 (A007947 (n + 1)).toNat * A045966 (n + 1)

end

end A045972.P3601848265481509117

noncomputable section

/-- A045972: a(1)=9; if n = Product p_i^e_i, n > 1, then a(n) = Product p_{i+2}^{e_i+1}.

Offset 1, canonical program `A045972.P3601848265481509117`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045972 (n : ℕ) : ℤ :=
  A045972.P3601848265481509117.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045972.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A048673.P3613002930333742504

`A249745(A249824(n+1))`
-/

namespace A048673.P3613002930333742504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249745 (A249824 (n + 1)).toNat

end

end A048673.P3613002930333742504

noncomputable section

/-- A048673: Permutation of natural numbers: a(n) = (A003961(n)+1) / 2 [where A003961(n) shifts the prime factorization of n one step towards larger primes].

Offset 1, canonical program `A048673.P3613002930333742504`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A249745, A249824, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A048673 (n : ℕ) : ℤ :=
  A048673.P3613002930333742504.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A249745, A249824, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A048673.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A049355.P5870276504915556013

`∩[A039561(n+1), A039562(n+1)]`
-/

namespace A049355.P5870276504915556013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039561 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039562 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049355.P5870276504915556013

noncomputable section

/-- A049355: Digitally balanced numbers in base 4: equal numbers of 0's, 1's, ... 3's.

Offset 1, canonical program `A049355.P5870276504915556013`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1908 terms. -/
def A049355 (n : ℕ) : ℤ :=
  (A049355.P5870276504915556013.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1908 terms. -/
def A049355.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A056503.P12078029325460103094

`A000011(n+1)-A045677(n+1)/2`
-/

namespace A056503.P12078029325460103094
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000011 (n + 1) : ℚ) - (A045677 (n + 1) : ℚ) / 2

end

end A056503.P12078029325460103094

noncomputable section

/-- A056503: Number of periodic palindromic structures of length n using a maximum of two different symbols.

Offset 1, canonical program `A056503.P12078029325460103094`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 341 terms. -/
def A056503 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A056503.P12078029325460103094.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 341 terms. -/
def A056503.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A066670.P4126476494444957459

`A053575(A066669(n+1))`
-/

namespace A066670.P4126476494444957459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053575 (A066669 (n + 1)).toNat

end

end A066670.P4126476494444957459

noncomputable section

/-- A066670: Primes arising in A066669: the only odd prime divisor of phi(A066669(n)).

Offset 1, canonical program `A066670.P4126476494444957459`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A066669, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A066670 (n : ℕ) : ℤ :=
  A066670.P4126476494444957459.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A066669, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A066670.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A066671.P14445244219669383195

`A069177(A066669(n+1))`
-/

namespace A066671.P14445244219669383195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069177 (A066669 (n + 1)).toNat

end

end A066671.P14445244219669383195

noncomputable section

/-- A066671: a(n) is the largest power of 2 that divides phi(A066669(n)).

Offset 1, canonical program `A066671.P14445244219669383195`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A066669, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A066671 (n : ℕ) : ℤ :=
  A066671.P14445244219669383195.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A066669, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A066671.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A066672.P5992568165485167672

`log2(A066671(n+1))`
-/

namespace A066672.P5992568165485167672
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A066671 (n + 1) : ℝ)

end

end A066672.P5992568165485167672

noncomputable section

/-- A066672: Exponent of the largest power of 2 that divides phi(A066669(n)).

Offset 1, canonical program `A066672.P5992568165485167672`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A066671, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A066672 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A066672.P5992568165485167672.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A066671, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A066672.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A085563.P10263998652030294386

`A001414(A384443(n+1))`
-/

namespace A085563.P10263998652030294386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A384443 (n + 1)).toNat

end

end A085563.P10263998652030294386

noncomputable section

/-- A085563: Sum of the prime digits of n.

Offset 1, canonical program `A085563.P10263998652030294386`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A085563 (n : ℕ) : ℤ :=
  A085563.P10263998652030294386.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A085563.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A090000.P9572383938386539689

`val(A278222(A000040(n+1)), 2)`
-/

namespace A090000.P9572383938386539689
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A278222 (A000040 (n + 1)).toNat).toNat 2

end

end A090000.P9572383938386539689

noncomputable section

/-- A090000: Length of longest contiguous block of 1's in binary expansion of n-th prime.

Offset 1, canonical program `A090000.P9572383938386539689`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6543 terms. -/
def A090000 (n : ℕ) : ℤ :=
  (A090000.P9572383938386539689.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6543 terms. -/
def A090000.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A090001.P13538661981448324381

`val(A286374(n), 2)`
-/

namespace A090001.P13538661981448324381
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A286374 n).toNat 2

end

end A090001.P13538661981448324381

noncomputable section

/-- A090001: Length of longest contiguous block of 1's in binary expansion of n^2.

Offset 0, canonical program `A090001.P13538661981448324381`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A090001 (n : ℕ) : ℤ :=
  (A090001.P13538661981448324381.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A090001.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A090002.P5610306916460533914

`A090001(2*n+1)%(n+1)`
-/

namespace A090002.P5610306916460533914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A090001 (2 * n + 1)) (n + 1 : ℤ)

end

end A090002.P5610306916460533914

noncomputable section

/-- A090002: Length of longest contiguous block of 1's in binary expansion of n-th triangular number.

Offset 0, canonical program `A090002.P5610306916460533914`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A090002 (n : ℕ) : ℤ :=
  A090002.P5610306916460533914.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A090002.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A090003.P4383366296457470224

`val(A286375(n), 2)`
-/

namespace A090003.P4383366296457470224
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A286375 n).toNat 2

end

end A090003.P4383366296457470224

noncomputable section

/-- A090003: Length of longest contiguous block of 1's in binary expansion of n^3.

Offset 0, canonical program `A090003.P4383366296457470224`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A090003 (n : ℕ) : ℤ :=
  (A090003.P4383366296457470224.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A090003.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A090050.P13123530974981238689

`eq[2*A087117(n), A330036(n)]`
-/

namespace A090050.P13123530974981238689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A087117 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330036 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A090050.P13123530974981238689

noncomputable section

/-- A090050: Numbers having equal length of longest contiguous block of zeros and ones in binary expansion.

Offset 1, canonical program `A090050.P13123530974981238689`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1977 terms. -/
def A090050 (n : ℕ) : ℤ :=
  (A090050.P13123530974981238689.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1977 terms. -/
def A090050.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A094317.P11387171055547034272

`p?[(n+1)*A003415(A085563(n+1))]`
-/

namespace A094317.P11387171055547034272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A003415 (A085563 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A094317.P11387171055547034272

noncomputable section

/-- A094317: Primes with the property that the sum of the digits that are primes is prime.

Offset 1, canonical program `A094317.P11387171055547034272`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 604 terms. -/
def A094317 (n : ℕ) : ℤ :=
  A094317.P11387171055547034272.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 604 terms. -/
def A094317.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A119956.P9211573796287934914

`∩[A115403(n+1), A183569(n+1)]`
-/

namespace A119956.P9211573796287934914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115403 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183569 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A119956.P9211573796287934914

noncomputable section

/-- A119956: Numbers n such that n^3+1=p*q*r where p,q,r are distinct primes.

Offset 1, canonical program `A119956.P9211573796287934914`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 949 terms. -/
def A119956 (n : ℕ) : ℤ :=
  (A119956.P9211573796287934914.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 949 terms. -/
def A119956.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A124774.P3934546550650410657

`A383718(A006068(n))`
-/

namespace A124774.P3934546550650410657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383718 (A006068 n).toNat

end

end A124774.P3934546550650410657

noncomputable section

/-- A124774: Multinomial coefficients for compositions in standard order.

Offset 0, canonical program `A124774.P3934546550650410657`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8192 terms. -/
def A124774 (n : ℕ) : ℤ :=
  A124774.P3934546550650410657.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8192 terms. -/
def A124774.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A126272.P6684349572185641805

`A045972(n+1)²/A045966(n+1)`
-/

namespace A126272.P6684349572185641805
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045972 (n + 1) ^ 2 : ℚ) / (A045966 (n + 1) : ℚ)

end

end A126272.P6684349572185641805

noncomputable section

/-- A126272: a(1)=27; if n = Product p_i^e_i, n>1, then a(n) = Product p_{i+2}^{e_i+2}.

Offset 1, canonical program `A126272.P6684349572185641805`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A126272 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A126272.P6684349572185641805.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A126272.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A134427.P12608882557689823197

`floor(sqrt(A134420(1+n)))`
-/

namespace A134427.P12608882557689823197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A134420 (1 + n))

end

end A134427.P12608882557689823197

noncomputable section

/-- A134427: Numbers k such that k^2 + 1 is a composite squarefree number.

Offset 1, canonical program `A134427.P12608882557689823197`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A134427 (n : ℕ) : ℤ :=
  A134427.P12608882557689823197.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A134427.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A144790.P15607644562133245083

`A051904(A278222(1+n))`
-/

namespace A144790.P15607644562133245083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051904 (A278222 (1 + n)).toNat

end

end A144790.P15607644562133245083

noncomputable section

/-- A144790: Consider the runs of 1's in the binary representation of n, each of these runs being on the edge of the binary representation n and/or being bounded by 0's. a(n) = the length of the shortest such run of 1's in binary n.

Offset 1, canonical program `A144790.P15607644562133245083`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5460 terms. -/
def A144790 (n : ℕ) : ℤ :=
  A144790.P15607644562133245083.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5460 terms. -/
def A144790.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A155547.P5787763052989880343

`A000040(eq[0, A085563(n+1)]+1)`
-/

namespace A155547.P5787763052989880343
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085563 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A155547.P5787763052989880343

noncomputable section

/-- A155547: a(n) = prime(n) without prime digits in n.

Offset 1, canonical program `A155547.P5787763052989880343`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1296 terms. -/
def A155547 (n : ℕ) : ℤ :=
  A155547.P5787763052989880343.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1296 terms. -/
def A155547.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A175063.P16562978643772503991

`p?[A090563(n+1)]`
-/

namespace A175063.P16562978643772503991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090563 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A175063.P16562978643772503991

noncomputable section

/-- A175063: Primes p such that 5*p^2 + 5*p + 1 is also prime.

Offset 1, canonical program `A175063.P16562978643772503991`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 986 terms. -/
def A175063 (n : ℕ) : ℤ :=
  A175063.P16562978643772503991.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 986 terms. -/
def A175063.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A175597.P15187906800499114256

`A144790(A035928(1+n))`
-/

namespace A175597.P15187906800499114256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144790 (A035928 (1 + n)).toNat

end

end A175597.P15187906800499114256

noncomputable section

/-- A175597: Minimal run length in binary representation of n.

Offset 1, canonical program `A175597.P15187906800499114256`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A175597 (n : ℕ) : ℤ :=
  A175597.P15187906800499114256.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A175597.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A175599.P15103203248488645960

`A043276(n+1)-A175597(n+1)`
-/

namespace A175599.P15103203248488645960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043276 (n + 1) - A175597 (n + 1)

end

end A175599.P15103203248488645960

noncomputable section

/-- A175599: The difference between maximal run length and minimal run length in binary representation of n.

Offset 1, canonical program `A175599.P15103203248488645960`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A043276, A175597, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A175599 (n : ℕ) : ℤ :=
  A175599.P15103203248488645960.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A043276, A175597, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A175599.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A175609.P9455649333651186063

`A175599(A000040(n+1))`
-/

namespace A175609.P9455649333651186063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175599 (A000040 (n + 1)).toNat

end

end A175609.P9455649333651186063

noncomputable section

/-- A175609: The difference between maximal run length and minimal run length in binary representation of n-th prime.

Offset 1, canonical program `A175609.P9455649333651186063`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A175599, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A175609 (n : ℕ) : ℤ :=
  A175609.P9455649333651186063.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A175599, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A175609.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A175665.P4607596782560675310

`A043276(n+1)*A175597(n+1)`
-/

namespace A175665.P4607596782560675310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043276 (n + 1) * A175597 (n + 1)

end

end A175665.P4607596782560675310

noncomputable section

/-- A175665: The product of maximal run and minimal run lengths in the binary representation of n.

Offset 1, canonical program `A175665.P4607596782560675310`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A043276, A175597, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A175665 (n : ℕ) : ℤ :=
  A175665.P4607596782560675310.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A043276, A175597, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A175665.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A175681.P8833139429948162726

`A043276(n+1)+A175597(n+1)`
-/

namespace A175681.P8833139429948162726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043276 (n + 1) + A175597 (n + 1)

end

end A175681.P8833139429948162726

noncomputable section

/-- A175681: The sum of maximal run and minimal run lengths in binary representation of n.

Offset 1, canonical program `A175681.P8833139429948162726`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A043276, A175597, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A175681 (n : ℕ) : ℤ :=
  A175681.P8833139429948162726.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A043276, A175597, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A175681.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A179983.P10659366164759730597

`record[(1+n)*A322585(A181819(n+1))]`
-/

namespace A179983.P10659366164759730597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 + n : ℤ) * A322585 (A181819 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A179983.P10659366164759730597

noncomputable section

/-- A179983: Positive integers m such that, if k appears in m's prime signature, k-1 appears at least as often as k (for any integer k > 1).

Offset 1, canonical program `A179983.P10659366164759730597`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8237 terms. -/
def A179983 (n : ℕ) : ℤ :=
  A179983.P10659366164759730597.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8237 terms. -/
def A179983.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A194602.P705746156502626667

`eq[1, A326956(n+1)]`
-/

namespace A194602.P705746156502626667
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326956 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A194602.P705746156502626667

noncomputable section

/-- A194602: Integer partitions interpreted as binary numbers.

Offset 0, canonical program `A194602.P705746156502626667`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 272 terms. -/
def A194602 (n : ℕ) : ℤ :=
  (A194602.P705746156502626667.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 272 terms. -/
def A194602.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A198194.P15362504229805961140

`ceil(log2(A194602(n)+2))`
-/

namespace A198194.P15362504229805961140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A194602 n + 2 : ℝ)⌉

end

end A198194.P15362504229805961140

noncomputable section

/-- A198194: Greatest number k such that p(k) <= n, p(k) being the number of unrestricted partitions of k.

Offset 1, canonical program `A198194.P15362504229805961140`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A198194 (n : ℕ) : ℤ :=
  A198194.P15362504229805961140.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A198194.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A207034.P8925604942146623024

`A000120(A194602(n))`
-/

namespace A207034.P8925604942146623024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A194602 n).toNat

end

end A207034.P8925604942146623024

noncomputable section

/-- A207034: Sum of all parts minus the number of parts of the n-th partition in the list of colexicographically ordered partitions of j, if 1<=n<=A000041(j).

Offset 1, canonical program `A207034.P8925604942146623024`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A194602, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A207034 (n : ℕ) : ℤ :=
  A207034.P8925604942146623024.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A194602, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A207034.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A207038.P1114784257570752476

`∑[A207034(1+n)]`
-/

namespace A207038.P1114784257570752476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207034 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A207038.P1114784257570752476

noncomputable section

/-- A207038: Partial sums of A207034.

Offset 1, canonical program `A207038.P1114784257570752476`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A207038 (n : ℕ) : ℤ :=
  A207038.P1114784257570752476.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A207038.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A208539.P18439343429238658169

`A330632(1+n)+A010674(A028310(n))`
-/

namespace A208539.P18439343429238658169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330632 (1 + n) + A010674 (A028310 n).toNat

end

end A208539.P18439343429238658169

noncomputable section

/-- A208539: Number of n-bead necklaces of 3 colors allowing reversal, with no adjacent beads having the same color.

Offset 1, canonical program `A208539.P18439343429238658169`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A208539 (n : ℕ) : ℤ :=
  A208539.P18439343429238658169.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A208539.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A227190.P6802235472327243257

`n+1-A167489(n+1)`
-/

namespace A227190.P6802235472327243257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A167489 (n + 1)

end

end A227190.P6802235472327243257

noncomputable section

/-- A227190: a(n) = n minus (product of run lengths in binary representation of n).

Offset 1, canonical program `A227190.P6802235472327243257`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A167489, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A227190 (n : ℕ) : ℤ :=
  A227190.P6802235472327243257.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A167489, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A227190.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A227355.P15889745783808237213

`A167489(A003714(n))`
-/

namespace A227355.P15889745783808237213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167489 (A003714 n).toNat

end

end A227355.P15889745783808237213

noncomputable section

/-- A227355: Product of run lengths in Zeckendorf representation of n.

Offset 0, canonical program `A227355.P15889745783808237213`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003714, A167489, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A227355 (n : ℕ) : ℤ :=
  A227355.P15889745783808237213.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003714, A167489, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A227355.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A228354.P14726846839078751284

`1+A194602(n)`
-/

namespace A228354.P14726846839078751284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A194602 n

end

end A228354.P14726846839078751284

noncomputable section

/-- A228354: Indices (k) of partitions in the list of compositions of j in colexicographic order, if 1<=k<=2^(j-1), j>=1.

Offset 1, canonical program `A228354.P14726846839078751284`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A194602, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A228354 (n : ℕ) : ℤ :=
  A228354.P14726846839078751284.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A194602, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A228354.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A237882.P9717676700873481569

`lt[A330036(n), 2*A087117(n)]`
-/

namespace A237882.P9717676700873481569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330036 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A087117 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A237882.P9717676700873481569

noncomputable section

/-- A237882: Numbers k such that LR0(k) > LR1(k), where LR0(k) = A087117(k) is the length of the longest run of zeros in the binary representation of k, LR1(k) = A038374(k) is the length of the longest run of ones.

Offset 1, canonical program `A237882.P9717676700873481569`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A237882 (n : ℕ) : ℤ :=
  (A237882.P9717676700873481569.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A237882.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A239037.P16508070446455444268

`A085563(p?[A092620(n+1)])`
-/

namespace A239037.P16508070446455444268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092620 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085563 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A239037.P16508070446455444268

noncomputable section

/-- A239037: a(n) = prime digit in A092621(n).

Offset 1, canonical program `A239037.P16508070446455444268`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 150 terms. -/
def A239037 (n : ℕ) : ℤ :=
  A239037.P16508070446455444268.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 150 terms. -/
def A239037.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A239614.P8675786918159621361

`A239611(n+1)/A079458(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A239614.P8675786918159621361
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A239611 (n + 1) : ℚ) / (A079458 (n + 1) : ℚ)

end

end A239614.P8675786918159621361

noncomputable section

/-- A239614: a(n) = A239611(n) / A079458(n).

Offset 1, canonical program `A239614.P8675786918159621361`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A239611, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A239614 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A239614.P8675786918159621361.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A239611, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A239614.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A243501.P10707292738867961998

`2*A048673(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A243501.P10707292738867961998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A048673 (n + 1)

end

end A243501.P10707292738867961998

noncomputable section

/-- A243501: Permutation of even numbers: a(n) = 2*A048673(n).

Offset 1, canonical program `A243501.P10707292738867961998`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048673, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A243501 (n : ℕ) : ℤ :=
  A243501.P10707292738867961998.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048673, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A243501.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A243506.P4471214084631282160

`A048673(A122111(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A243506.P4471214084631282160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048673 (A122111 (n + 1)).toNat

end

end A243506.P4471214084631282160

noncomputable section

/-- A243506: Permutation of natural numbers: a(n) = A048673(A122111(n)).

Offset 1, canonical program `A243506.P4471214084631282160`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048673, A122111, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A243506 (n : ℕ) : ℤ :=
  A243506.P4471214084631282160.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048673, A122111, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A243506.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A244154.P13695817551395832827

`A048673(A005940(n+1))`
-/

namespace A244154.P13695817551395832827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048673 (A005940 (n + 1)).toNat

end

end A244154.P13695817551395832827

noncomputable section

/-- A244154: Permutation of natural numbers: a(0) = 1, a(1) = 2, a(2n) = A254049(a(n)), a(2n+1) = 3*a(n)-1; composition of A048673 and A005940.

Offset 0, canonical program `A244154.P13695817551395832827`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005940, A048673, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A244154 (n : ℕ) : ℤ :=
  A244154.P13695817551395832827.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005940, A048673, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A244154.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A245447.P2909225473096699640

`A048673(A048673(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A245447.P2909225473096699640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048673 (A048673 (n + 1)).toNat

end

end A245447.P2909225473096699640

noncomputable section

/-- A245447: Permutation of natural numbers: a(n) = A048673(A048673(n)).

Offset 1, canonical program `A245447.P2909225473096699640`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048673, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A245447 (n : ℕ) : ℤ :=
  A245447.P2909225473096699640.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048673, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A245447.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A245612.P9111246450174136386

`A048673(A163511(n))`
-/

namespace A245612.P9111246450174136386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048673 (A163511 n).toNat

end

end A245612.P9111246450174136386

noncomputable section

/-- A245612: Permutation of natural numbers: a(0) = 1, a(1) = 2, a(2n) = 3*a(n)-1, a(2n+1) = A254049(a(n)); composition of A048673 and A163511.

Offset 0, canonical program `A245612.P9111246450174136386`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048673, A163511, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A245612 (n : ℕ) : ℤ :=
  A245612.P9111246450174136386.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048673, A163511, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A245612.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A246011.P12445954813942402533

`∏{e}[A278222(n), A000204(#+1)]`
-/

namespace A246011.P12445954813942402533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278222 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000204 (Nat.factorization (f1 n).natAbs p + 1)

end

end A246011.P12445954813942402533

noncomputable section

/-- A246011: a(n) = Product_{i in row n of A245562} Lucas(i+1), where Lucas = A000204.

Offset 0, canonical program `A246011.P12445954813942402533`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A246011 (n : ℕ) : ℤ :=
  A246011.P12445954813942402533.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A246011.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A246260.P15139320144047363680

`A000035(A048673(n+1))`
-/

namespace A246260.P15139320144047363680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A048673 (n + 1)).toNat

end

end A246260.P15139320144047363680

noncomputable section

/-- A246260: a(n) = 1 if A003961(n) is of the form 4k+1, otherwise a(n) = 0, (when A003961(n) is of the form 4k+3). [A003961 is fully multiplicative with a(p) = nextprime(p)].

Offset 1, canonical program `A246260.P15139320144047363680`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048673, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A246260 (n : ℕ) : ℤ :=
  A246260.P15139320144047363680.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048673, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A246260.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A246261.P7900957373872323894

`eq[1, A246260(1+n)]+1`
-/

namespace A246261.P7900957373872323894
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246260 (1 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A246261.P7900957373872323894

noncomputable section

/-- A246261: Numbers n such that A003961(n) is of the form 4k+1.

Offset 1, canonical program `A246261.P7900957373872323894`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A246261 (n : ℕ) : ℤ :=
  (A246261.P7900957373872323894.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A246261.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A246262.P10590490882229900441

`A246260(n)+a(n-1)` with `a(0)=0, a(1)=1`
-/

namespace A246262.P10590490882229900441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A246260 n + a (n - 1)

end

end A246262.P10590490882229900441

noncomputable section

/-- A246262: Inverse function to injection A246261, partial sums of A246260.

Offset 0, canonical program `A246262.P10590490882229900441`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A246260, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A246262 (n : ℕ) : ℤ :=
  A246262.P10590490882229900441.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A246260, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A246262.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A246263.P4117973892028656856

`eq[0, A246260(1+n)]+1`
-/

namespace A246263.P4117973892028656856
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246260 (1 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A246263.P4117973892028656856

noncomputable section

/-- A246263: Numbers n such that A003961(n) is of the form 4k+3.

Offset 1, canonical program `A246263.P4117973892028656856`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A246263 (n : ℕ) : ℤ :=
  (A246263.P4117973892028656856.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A246263.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A246264.P3731558565214309607

`n-A246262(n)`
-/

namespace A246264.P3731558565214309607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A246262 n

end

end A246264.P3731558565214309607

noncomputable section

/-- A246264: Inverse function for injection A246263.

Offset 0, canonical program `A246264.P3731558565214309607`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A246262, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A246264 (n : ℕ) : ℤ :=
  A246264.P3731558565214309607.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A246262, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A246264.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A246265.P3263290630060116708

`(1+A048673(A246261(n+1)))/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A246265.P3263290630060116708
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 + A048673 (A246261 (n + 1)).toNat : ℚ) / 2

end

end A246265.P3263290630060116708

noncomputable section

/-- A246265: Permutation of natural numbers: a(n) = (1+A048673(A246261(n)))/2.

Offset 1, canonical program `A246265.P3263290630060116708`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048673, A246261, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A246265 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A246265.P3263290630060116708.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048673, A246261, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A246265.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A246266.P5502087740169364243

`A246262(A064216(2*n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A246266.P5502087740169364243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246262 (A064216 (2 * n + 1)).toNat

end

end A246266.P5502087740169364243

noncomputable section

/-- A246266: Permutation of natural numbers: a(n) = A246262(A064216((2*n)-1)).

Offset 1, canonical program `A246266.P5502087740169364243`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064216, A246262, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A246266 (n : ℕ) : ℤ :=
  A246266.P5502087740169364243.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064216, A246262, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A246266.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A246267.P11984409630168091738

`A048673(A246263(n+1))/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A246267.P11984409630168091738
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048673 (A246263 (n + 1)).toNat : ℚ) / 2

end

end A246267.P11984409630168091738

noncomputable section

/-- A246267: Permutation of natural numbers: a(n) = A048673(A246263(n))/2.

Offset 1, canonical program `A246267.P11984409630168091738`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048673, A246263, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A246267 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A246267.P11984409630168091738.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048673, A246263, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A246267.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A246268.P8349117576513526915

`A246264(A064216(2*(n+1)))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A246268.P8349117576513526915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246264 (A064216 (2 * (n + 1))).toNat

end

end A246268.P8349117576513526915

noncomputable section

/-- A246268: Permutation of natural numbers: a(n) = A246264(A064216(2*n)).

Offset 1, canonical program `A246268.P8349117576513526915`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064216, A246264, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A246268 (n : ℕ) : ℤ :=
  A246268.P8349117576513526915.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064216, A246264, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A246268.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A246273.P6183225685175068405

`A246275(A038722(n+1))`
-/

namespace A246273.P6183225685175068405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246275 (A038722 (n + 1)).toNat

end

end A246273.P6183225685175068405

noncomputable section

/-- A246273: Transpose of square array A246275.

Offset 1, canonical program `A246273.P6183225685175068405`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A246275, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A246273 (n : ℕ) : ℤ :=
  A246273.P6183225685175068405.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A246275, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A246273.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A246342.P4380619750639108041

`A048673(a(n-1))` with `a(0)=12`
-/

namespace A246342.P4380619750639108041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [12] fun n a =>
  A048673 (a (n - 1)).toNat

end

end A246342.P4380619750639108041

noncomputable section

/-- A246342: a(0) = 12, after which, if a(n-1) = product_{k >= 1} (p_k)^(c_k), then a(n) = (1/2) * (1 + product_{k >= 1} (p_{k+1})^(c_k)), where p_k indicates the k-th prime, A000040(k).

Offset 0, canonical program `A246342.P4380619750639108041`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048673, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A246342 (n : ℕ) : ℤ :=
  A246342.P4380619750639108041.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048673, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A246342.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A246344.P8517610500674386477

`A048673(a(n-1))` with `a(0)=16`
-/

namespace A246344.P8517610500674386477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [16] fun n a =>
  A048673 (a (n - 1)).toNat

end

end A246344.P8517610500674386477

noncomputable section

/-- A246344: a(0) = 16, after which, if a(n-1) = product_{k >= 1} (p_k)^(c_k), then a(n) = (1/2) * (1 + product_{k >= 1} (p_{k+1})^(c_k)), where p_k indicates the k-th prime, A000040(k).

Offset 0, canonical program `A246344.P8517610500674386477`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048673, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A246344 (n : ℕ) : ℤ :=
  A246344.P8517610500674386477.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048673, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A246344.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A246360.P7980695317397057140

`A048673(A029744(n+1))`
-/

namespace A246360.P7980695317397057140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048673 (A029744 (n + 1)).toNat

end

end A246360.P7980695317397057140

noncomputable section

/-- A246360: a(1) = 1, then A007051 ((3^n)+1)/2 interleaved with A057198 (5*3^(n-1)+1)/2.

Offset 1, canonical program `A246360.P7980695317397057140`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048673, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A246360 (n : ℕ) : ℤ :=
  A246360.P7980695317397057140.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048673, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A246360.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A246588.P4316135322140067777

`∏{e}[A278222(n), A000120(#)]`
-/

namespace A246588.P4316135322140067777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278222 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000120 (Nat.factorization (f1 n).natAbs p)

end

end A246588.P4316135322140067777

noncomputable section

/-- A246588: Run Length Transform of S(n) = wt(n) = 0,1,1,2,1,2,2,3,1,... (cf. A000120).

Offset 0, canonical program `A246588.P4316135322140067777`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A246588 (n : ℕ) : ℤ :=
  A246588.P4316135322140067777.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A246588.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A246661.P5855440614250438167

`∏{e}[A278222(n), A056040(#)]`
-/

namespace A246661.P5855440614250438167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278222 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A056040 (Nat.factorization (f1 n).natAbs p)

end

end A246661.P5855440614250438167

noncomputable section

/-- A246661: Run Length Transform of swinging factorials (A056040).

Offset 0, canonical program `A246661.P5855440614250438167`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A246661 (n : ℕ) : ℤ :=
  A246661.P5855440614250438167.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A246661.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A246674.P4555323764649668052

`∏{e}[A278222(n), A255047(#)]`
-/

namespace A246674.P4555323764649668052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278222 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A255047 (Nat.factorization (f1 n).natAbs p)

end

end A246674.P4555323764649668052

noncomputable section

/-- A246674: Run Length Transform of A000225.

Offset 0, canonical program `A246674.P4555323764649668052`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A246674 (n : ℕ) : ℤ :=
  A246674.P4555323764649668052.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A246674.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A246676.P6906653678782546088

`A246273(A209268(n+1))`
-/

namespace A246676.P6906653678782546088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246273 (A209268 (n + 1)).toNat

end

end A246676.P6906653678782546088

noncomputable section

/-- A246676: Permutation of natural numbers: a(n) = A242378(A007814(n), (1+A000265(n))) - 1.

Offset 1, canonical program `A246676.P6906653678782546088`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A209268, A246273, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A246676 (n : ℕ) : ℤ :=
  A246676.P6906653678782546088.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A209268, A246273, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A246676.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A246680.P11302963487516102402

`A246676(2*(n+1))/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A246680.P11302963487516102402
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A246676 (2 * (n + 1)) : ℚ) / 2

end

end A246680.P11302963487516102402

noncomputable section

/-- A246680: Permutation of natural numbers, even bisection of A246676 halved: a(n) = A246676(2*n)/2.

Offset 1, canonical program `A246680.P11302963487516102402`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A246676, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A246680 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A246680.P11302963487516102402.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A246676, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A246680.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A249734.P3051045512633730297

`A016945(A048673(n+1)-1)`
-/

namespace A249734.P3051045512633730297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016945 (A048673 (n + 1) - 1).toNat

end

end A249734.P3051045512633730297

noncomputable section

/-- A249734: Even bisection of A003961: Replace in 2n each prime factor p(k) with prime p(k+1).

Offset 1, canonical program `A249734.P3051045512633730297`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048673, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A249734 (n : ℕ) : ℤ :=
  A249734.P3051045512633730297.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048673, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A249734.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A249746.P8364897201933875608

`A249824(A064216(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A249746.P8364897201933875608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249824 (A064216 (n + 1)).toNat

end

end A249746.P8364897201933875608

noncomputable section

/-- A249746: Permutation of natural numbers: a(n) = A126760(A249735(n)) = A249824(A064216(n)).

Offset 1, canonical program `A249746.P8364897201933875608`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064216, A249824, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A249746 (n : ℕ) : ℤ :=
  A249746.P8364897201933875608.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064216, A249824, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A249746.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A253064.P4301545185855528044

`∏{e}[A278222(n), A087206(#)]`
-/

namespace A253064.P4301545185855528044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278222 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A087206 (Nat.factorization (f1 n).natAbs p)

end

end A253064.P4301545185855528044

noncomputable section

/-- A253064: Number of odd terms in f^n, where f = 1/x + 1 + x + y.

Offset 0, canonical program `A253064.P4301545185855528044`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A253064 (n : ℕ) : ℤ :=
  A253064.P4301545185855528044.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A253064.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A253065.P12868055840751260656

`∏{e}[A278222(n), A253067(#)]`
-/

namespace A253065.P12868055840751260656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278222 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A253067 (Nat.factorization (f1 n).natAbs p)

end

end A253065.P12868055840751260656

noncomputable section

/-- A253065: Number of odd terms in f^n, where f = 1+x+x^2+x^2*y+x^2/y.

Offset 0, canonical program `A253065.P12868055840751260656`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A253065 (n : ℕ) : ℤ :=
  A253065.P12868055840751260656.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A253065.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A253066.P15660487724644072707

`∏{e}[A278222(n), A253068(#)]`
-/

namespace A253066.P15660487724644072707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278222 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A253068 (Nat.factorization (f1 n).natAbs p)

end

end A253066.P15660487724644072707

noncomputable section

/-- A253066: Number of odd terms in f^n, where f = 1/x+1+x+1/y+y/x+x*y.

Offset 0, canonical program `A253066.P15660487724644072707`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A253066 (n : ℕ) : ℤ :=
  A253066.P15660487724644072707.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A253066.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A253069.P3840532765057359008

`∏{e}[A278222(n), A253070(#)]`
-/

namespace A253069.P3840532765057359008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278222 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A253070 (Nat.factorization (f1 n).natAbs p)

end

end A253069.P3840532765057359008

noncomputable section

/-- A253069: Number of odd terms in f^n, where f = 1/x+1+x+x/y+y/x+x*y.

Offset 0, canonical program `A253069.P3840532765057359008`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A253069 (n : ℕ) : ℤ :=
  A253069.P3840532765057359008.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A253069.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A253100.P1722908267845383720

`∏{e}[A278222(n), A253101(#)]`
-/

namespace A253100.P1722908267845383720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278222 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A253101 (Nat.factorization (f1 n).natAbs p)

end

end A253100.P1722908267845383720

noncomputable section

/-- A253100: Number of odd terms in f^n, where f = 1/(x*y)+1/x+1/x*y+1/y+x+x*y.

Offset 0, canonical program `A253100.P1722908267845383720`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A253100 (n : ℕ) : ℤ :=
  A253100.P1722908267845383720.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A253100.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A253792.P10279464663514090408

`A156552(A244154(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A253792.P10279464663514090408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156552 (A244154 n).toNat

end

end A253792.P10279464663514090408

noncomputable section

/-- A253792: Permutation of natural numbers: a(n) = A156552(A244154(n)).

Offset 0, canonical program `A253792.P10279464663514090408`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A156552, A244154, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A253792 (n : ℕ) : ℤ :=
  A253792.P10279464663514090408.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A156552, A244154, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A253792.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A253884.P16458333213855723995

`A122111(A243506(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A253884.P16458333213855723995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122111 (A243506 (n + 1)).toNat

end

end A253884.P16458333213855723995

noncomputable section

/-- A253884: Permutation of natural numbers: a(n) = A122111(A243506(n)).

Offset 1, canonical program `A253884.P16458333213855723995`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A122111, A243506, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A253884 (n : ℕ) : ℤ :=
  A253884.P16458333213855723995.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A122111, A243506, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A253884.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A253885.P16715555451856890624

`A243501(n+1)-2`
-/

namespace A253885.P16715555451856890624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243501 (n + 1) - 2

end

end A253885.P16715555451856890624

noncomputable section

/-- A253885: Permutation of even numbers: a(n) = A003961(n+1) - 1.

Offset 0, canonical program `A253885.P16715555451856890624`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A243501, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A253885 (n : ℕ) : ℤ :=
  A253885.P16715555451856890624.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A243501, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A253885.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A253887.P792903350205784679

`A249746(A003602(A064216(n+1)))`
-/

namespace A253887.P792903350205784679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249746 (A003602 (A064216 (n + 1)).toNat).toNat

end

end A253887.P792903350205784679

noncomputable section

/-- A253887: Row index of n in A191450: a(3n) = 2n, a(3n+1) = 2n+1, a(3n+2) = a(n+1).

Offset 1, canonical program `A253887.P792903350205784679`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003602, A064216, A249746, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A253887 (n : ℕ) : ℤ :=
  A253887.P792903350205784679.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003602, A064216, A249746, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A253887.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A253889.P17706713483087805503

`A048673(floor(A064216(n+1)/A040000(n)))`
-/

namespace A253889.P17706713483087805503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048673 ⌊(A064216 (n + 1) : ℚ) / (A040000 n : ℚ)⌋.toNat

end

end A253889.P17706713483087805503

noncomputable section

/-- A253889: a(n) = A048673(floor(A064216(n)/2)).

Offset 1, canonical program `A253889.P17706713483087805503`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A253889 (n : ℕ) : ℤ :=
  A253889.P17706713483087805503.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A253889.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A253892.P16962043896708669236

`A243071(A245612(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A253892.P16962043896708669236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243071 (A245612 n).toNat

end

end A253892.P16962043896708669236

noncomputable section

/-- A253892: Permutation of natural numbers: a(n) = A243071(A245612(n)).

Offset 0, canonical program `A253892.P16962043896708669236`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A243071, A245612, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A253892 (n : ℕ) : ℤ :=
  A253892.P16962043896708669236.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A243071, A245612, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A253892.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A254049.P1269229269105982742

`A048673(2*n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A254049.P1269229269105982742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048673 (2 * n + 1)

end

end A254049.P1269229269105982742

noncomputable section

/-- A254049: Odd bisection of A048673: a(n) = A048673(2*n-1).

Offset 1, canonical program `A254049.P1269229269105982742`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048673, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A254049 (n : ℕ) : ℤ :=
  A254049.P1269229269105982742.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048673, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A254049.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A254051.P698183174355435254

`A048673(A254053(n+1))`
-/

namespace A254051.P698183174355435254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048673 (A254053 (n + 1)).toNat

end

end A254051.P698183174355435254

noncomputable section

/-- A254051: Square array A by downward antidiagonals: A(n,k) = (3 + 3^n*(2*floor(3*k/2) - 1))/6, n,k >= 1; read as A(1,1), A(1,2), A(2,1), A(1,3), A(2,2), A(3,1), ...

Offset 1, canonical program `A254051.P698183174355435254`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048673, A254053, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A254051 (n : ℕ) : ℤ :=
  A254051.P698183174355435254.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048673, A254053, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A254051.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A254101.P16318865568851900675

`A000265(A254051(n+1))`
-/

namespace A254101.P16318865568851900675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A254051 (n + 1)).toNat

end

end A254101.P16318865568851900675

noncomputable section

/-- A254101: Square array A(row,col) = A000265(A254051(row,col)).

Offset 1, canonical program `A254101.P16318865568851900675`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A254051, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A254101 (n : ℕ) : ℤ :=
  A254101.P16318865568851900675.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A254051, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A254101.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A255295.P6805732981849271517

`∏{e}[A278222(n), A255296(#)]`
-/

namespace A255295.P6805732981849271517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278222 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A255296 (Nat.factorization (f1 n).natAbs p)

end

end A255295.P6805732981849271517

noncomputable section

/-- A255295: Number of ON cells after n generations of the odd-rule cellular automaton defined by OddRule 527 when started with a single ON cell.

Offset 0, canonical program `A255295.P6805732981849271517`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A255295 (n : ℕ) : ℤ :=
  A255295.P6805732981849271517.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A255295.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A255297.P16216186727358026766

`∏{e}[A278222(n), A027649(#)]`
-/

namespace A255297.P16216186727358026766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278222 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A027649 (Nat.factorization (f1 n).natAbs p)

end

end A255297.P16216186727358026766

noncomputable section

/-- A255297: Number of ON cells after n generations of the odd-rule cellular automaton defined by OddRule 035 when started with a single ON cell.

Offset 0, canonical program `A255297.P16216186727358026766`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A255297 (n : ℕ) : ℤ :=
  A255297.P16216186727358026766.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A255297.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A255298.P15765773665226927912

`∏{e}[A278222(n), A255299(#)]`
-/

namespace A255298.P15765773665226927912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278222 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A255299 (Nat.factorization (f1 n).natAbs p)

end

end A255298.P15765773665226927912

noncomputable section

/-- A255298: Number of ON cells after n generations of the odd-rule cellular automaton defined by OddRule 143 when started with a single ON cell.

Offset 0, canonical program `A255298.P15765773665226927912`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A255298 (n : ℕ) : ℤ :=
  A255298.P15765773665226927912.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A255298.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A255300.P11330659124365371573

`∏{e}[A278222(n), A255301(#)]`
-/

namespace A255300.P11330659124365371573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278222 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A255301 (Nat.factorization (f1 n).natAbs p)

end

end A255300.P11330659124365371573

noncomputable section

/-- A255300: Number of ON cells after n generations of the odd-rule cellular automaton defined by OddRule 161 when started with a single ON cell.

Offset 0, canonical program `A255300.P11330659124365371573`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A255300 (n : ℕ) : ℤ :=
  A255300.P11330659124365371573.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A255300.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A255302.P1352995771255015404

`∏{e}[A278222(n), A255303(#)]`
-/

namespace A255302.P1352995771255015404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278222 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A255303 (Nat.factorization (f1 n).natAbs p)

end

end A255302.P1352995771255015404

noncomputable section

/-- A255302: Number of ON cells after n generations of the odd-rule cellular automaton defined by OddRule 146 when started with a single ON cell.

Offset 0, canonical program `A255302.P1352995771255015404`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A255302 (n : ℕ) : ℤ :=
  A255302.P1352995771255015404.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A255302.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A255304.P6714145224392508375

`∏{e}[A278222(n), A255442(#)]`
-/

namespace A255304.P6714145224392508375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278222 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A255442 (Nat.factorization (f1 n).natAbs p)

end

end A255304.P6714145224392508375

noncomputable section

/-- A255304: Number of ON cells after n generations of the odd-rule cellular automaton defined by OddRule 117 when started with a single ON cell.

Offset 0, canonical program `A255304.P6714145224392508375`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A255304 (n : ℕ) : ℤ :=
  A255304.P6714145224392508375.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A255304.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A255443.P14078850946046943659

`∏{e}[A278222(n), A255444(#)]`
-/

namespace A255443.P14078850946046943659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278222 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A255444 (Nat.factorization (f1 n).natAbs p)

end

end A255443.P14078850946046943659

noncomputable section

/-- A255443: Number of ON cells after n generations of the odd-rule cellular automaton defined by OddRule 147 when started with a single ON cell.

Offset 0, canonical program `A255443.P14078850946046943659`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A255443 (n : ℕ) : ℤ :=
  A255443.P14078850946046943659.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A255443.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A255445.P15327031489863029675

`∏{e}[A278222(n), A001834(#)]`
-/

namespace A255445.P15327031489863029675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278222 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A001834 (Nat.factorization (f1 n).natAbs p)

end

end A255445.P15327031489863029675

noncomputable section

/-- A255445: Number of ON cells after n generations of the odd-rule cellular automaton defined by OddRule 037 when started with a single ON cell.

Offset 0, canonical program `A255445.P15327031489863029675`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A255445 (n : ℕ) : ℤ :=
  A255445.P15327031489863029675.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A255445.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A255446.P13137385809506024139

`∏{e}[A278222(n), A255447(#)]`
-/

namespace A255446.P13137385809506024139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278222 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A255447 (Nat.factorization (f1 n).natAbs p)

end

end A255446.P13137385809506024139

noncomputable section

/-- A255446: Number of ON cells after n generations of the odd-rule cellular automaton defined by OddRule 165 when started with a single ON cell.

Offset 0, canonical program `A255446.P13137385809506024139`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A255446 (n : ℕ) : ℤ :=
  A255446.P13137385809506024139.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A255446.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A255450.P4910769715099262548

`∏{e}[A278222(n), A255451(#)]`
-/

namespace A255450.P4910769715099262548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278222 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A255451 (Nat.factorization (f1 n).natAbs p)

end

end A255450.P4910769715099262548

noncomputable section

/-- A255450: Number of ON cells after n generations of the odd-rule cellular automaton defined by OddRule 166 when started with a single ON cell.

Offset 0, canonical program `A255450.P4910769715099262548`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A255450 (n : ℕ) : ℤ :=
  A255450.P4910769715099262548.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A255450.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A255454.P9329062244078296308

`∏{e}[A278222(n), A255455(#)]`
-/

namespace A255454.P9329062244078296308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278222 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A255455 (Nat.factorization (f1 n).natAbs p)

end

end A255454.P9329062244078296308

noncomputable section

/-- A255454: Number of ON cells after n generations of the odd-rule cellular automaton defined by OddRule 153 when started with a single ON cell.

Offset 0, canonical program `A255454.P9329062244078296308`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A255454 (n : ℕ) : ℤ :=
  A255454.P9329062244078296308.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A255454.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A255458.P9682255118928481286

`∏{e}[A278222(n), A255459(#)]`
-/

namespace A255458.P9682255118928481286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278222 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A255459 (Nat.factorization (f1 n).natAbs p)

end

end A255458.P9682255118928481286

noncomputable section

/-- A255458: Number of ON cells after n generations of the odd-rule cellular automaton defined by OddRule 255 when started with a single ON cell.

Offset 0, canonical program `A255458.P9682255118928481286`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A255458 (n : ℕ) : ℤ :=
  A255458.P9682255118928481286.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A255458.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A255462.P1799679290061478263

`∏{e}[A278222(n), A255463(#)]`
-/

namespace A255462.P1799679290061478263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278222 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A255463 (Nat.factorization (f1 n).natAbs p)

end

end A255462.P1799679290061478263

noncomputable section

/-- A255462: Number of ON cells after n generations of the odd-rule cellular automaton defined by OddRule 365 when started with a single ON cell.

Offset 0, canonical program `A255462.P1799679290061478263`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A255462 (n : ℕ) : ℤ :=
  A255462.P1799679290061478263.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A255462.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A255464.P7595245730560834025

`∏{e}[A278222(n), A255465(#)]`
-/

namespace A255464.P7595245730560834025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278222 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A255465 (Nat.factorization (f1 n).natAbs p)

end

end A255464.P7595245730560834025

noncomputable section

/-- A255464: Number of ON cells after n generations of the odd-rule cellular automaton defined by OddRule 137 when started with a single ON cell.

Offset 0, canonical program `A255464.P7595245730560834025`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A255464 (n : ℕ) : ℤ :=
  A255464.P7595245730560834025.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A255464.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A255468.P1348908363437468942

`∏{e}[A278222(n), A255469(#)]`
-/

namespace A255468.P1348908363437468942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278222 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A255469 (Nat.factorization (f1 n).natAbs p)

end

end A255468.P1348908363437468942

noncomputable section

/-- A255468: Number of ON cells after n generations of the odd-rule cellular automaton defined by OddRule 157 when started with a single ON cell.

Offset 0, canonical program `A255468.P1348908363437468942`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A255468 (n : ℕ) : ℤ :=
  A255468.P1348908363437468942.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A255468.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A255470.P3773530374719199959

`∏{e}[A278222(n), A255471(#)]`
-/

namespace A255470.P3773530374719199959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278222 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A255471 (Nat.factorization (f1 n).natAbs p)

end

end A255470.P3773530374719199959

noncomputable section

/-- A255470: Number of ON cells after n generations of the odd-rule cellular automaton defined by OddRule 176 when started with a single ON cell.

Offset 0, canonical program `A255470.P3773530374719199959`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A255470 (n : ℕ) : ℤ :=
  A255470.P3773530374719199959.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A255470.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A255473.P6540735680393269996

`∏{e}[A278222(n), A255474(#)]`
-/

namespace A255473.P6540735680393269996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278222 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A255474 (Nat.factorization (f1 n).natAbs p)

end

end A255473.P6540735680393269996

noncomputable section

/-- A255473: Number of ON cells after n generations of the odd-rule cellular automaton defined by OddRule 257 when started with a single ON cell.

Offset 0, canonical program `A255473.P6540735680393269996`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A255473 (n : ℕ) : ℤ :=
  A255473.P6540735680393269996.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A255473.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A269860.P2406062323914390099

`eq[A000089(A073575(n+1)), A246260(n+1)]+1`
-/

namespace A269860.P2406062323914390099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000089 (A073575 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246260 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A269860.P2406062323914390099

noncomputable section

/-- A269860: Numbers n such that n and A048673(n) are of the same parity.

Offset 1, canonical program `A269860.P2406062323914390099`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5062 terms. -/
def A269860 (n : ℕ) : ℤ :=
  (A269860.P2406062323914390099.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5062 terms. -/
def A269860.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A269861.P6800921512803191327

`eq[1, A246260(lcm(2, n+1))]+1`
-/

namespace A269861.P6800921512803191327
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246260 (Nat.lcm 2 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A269861.P6800921512803191327

noncomputable section

/-- A269861: Numbers n such that n and A048673(n) are of opposite parity.

Offset 1, canonical program `A269861.P6800921512803191327`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A269861 (n : ℕ) : ℤ :=
  (A269861.P6800921512803191327.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A269861.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A269862.P3841032461570130461

`∑[(Δ[A246264(n)]+n)%2]`
-/

namespace A269862.P3841032461570130461
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246264 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (n + 1) - f2 n + (n : ℤ)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A269862.P3841032461570130461

noncomputable section

/-- A269862: Least monotonic left inverse of A269861.

Offset 1, canonical program `A269862.P3841032461570130461`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A269862 (n : ℕ) : ℤ :=
  A269862.P3841032461570130461.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A269862.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A270430.P7402745598073727974

`eq[A011655(n+2), A246260(n+1)]+1`
-/

namespace A270430.P7402745598073727974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011655 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246260 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A270430.P7402745598073727974

noncomputable section

/-- A270430: Numbers n such that A048673(n) and A064216(n) are of the same parity.

Offset 1, canonical program `A270430.P7402745598073727974`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5071 terms. -/
def A270430 (n : ℕ) : ℤ :=
  (A270430.P7402745598073727974.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5071 terms. -/
def A270430.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A270431.P12773325288362527088

`comp[A270430(1+n)-1]+1`
-/

namespace A270431.P12773325288362527088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270430 (1 + n) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A270431.P12773325288362527088

noncomputable section

/-- A270431: Numbers n such that A048673(n) and A064216(n) are of opposite parity.

Offset 1, canonical program `A270431.P12773325288362527088`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A270431 (n : ℕ) : ℤ :=
  (A270431.P12773325288362527088.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A270431.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A270432.P8203365119474116708

`fp[A270430(n+1)-1]`
-/

namespace A270432.P8203365119474116708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270430 (n + 1) - 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (n : ℤ) < f1 j) 0

end

end A270432.P8203365119474116708

noncomputable section

/-- A270432: a(n) = number of terms A270430 <= n; least monotonic left inverse of A270430.

Offset 1, canonical program `A270432.P8203365119474116708`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A270432 (n : ℕ) : ℤ :=
  (A270432.P8203365119474116708.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A270432.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A270433.P15401219787460768616

`n+1-A270432(n+1)`
-/

namespace A270433.P15401219787460768616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A270432 (n + 1)

end

end A270433.P15401219787460768616

noncomputable section

/-- A270433: a(n) = number of terms A270431 <= n; least monotonic left inverse of A270431.

Offset 1, canonical program `A270433.P15401219787460768616`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A270432, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A270433 (n : ℕ) : ℤ :=
  A270433.P15401219787460768616.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A270432, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A270433.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A270434.P10423559976014811217

`A270432(n+1)-A270433(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A270434.P10423559976014811217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270432 (n + 1) - A270433 (n + 1)

end

end A270434.P10423559976014811217

noncomputable section

/-- A270434: a(n) = A270432(n) - A270433(n).

Offset 1, canonical program `A270434.P10423559976014811217`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A270432, A270433, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A270434 (n : ℕ) : ℤ :=
  A270434.P10423559976014811217.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A270432, A270433, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A270434.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A275717.P14163369272237695528

`lt[0, Δ[A253885(n)]]+2`
-/

namespace A275717.P14163369272237695528
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253885 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 2

end

end A275717.P14163369272237695528

noncomputable section

/-- A275717: Numbers n for which A003961(n) > A003961(n-1).

Offset 1, canonical program `A275717.P14163369272237695528`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5007 terms. -/
def A275717 (n : ℕ) : ℤ :=
  (A275717.P14163369272237695528.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5007 terms. -/
def A275717.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A275718.P8921475455478369117

`comp[A275717(1+n)-2]+2`
-/

namespace A275718.P8921475455478369117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275717 (1 + n) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 2

end

end A275718.P8921475455478369117

noncomputable section

/-- A275718: Numbers n for which A003961(n) < A003961(n-1).

Offset 1, canonical program `A275718.P8921475455478369117`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A275718 (n : ℕ) : ℤ :=
  (A275718.P8921475455478369117.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A275718.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A275719.P5522747710788014234

`A275718(n+1)-A275717(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A275719.P5522747710788014234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275718 (n + 1) - A275717 (n + 1)

end

end A275719.P5522747710788014234

noncomputable section

/-- A275719: a(n) = A275718(n) - A275717(n).

Offset 1, canonical program `A275719.P5522747710788014234`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A275717, A275718, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A275719 (n : ℕ) : ℤ :=
  A275719.P5522747710788014234.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A275717, A275718, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A275719.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A275721.P1680040237500714152

`A275717(1+n)-1`
-/

namespace A275721.P1680040237500714152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275717 (1 + n) - 1

end

end A275721.P1680040237500714152

noncomputable section

/-- A275721: Numbers n for which A003961(n+1) > A003961(n).

Offset 1, canonical program `A275721.P1680040237500714152`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A275721 (n : ℕ) : ℤ :=
  A275721.P1680040237500714152.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A275721.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A275722.P8632135586761212845

`A275718(1+n)-1`
-/

namespace A275722.P8632135586761212845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275718 (1 + n) - 1

end

end A275722.P8632135586761212845

noncomputable section

/-- A275722: Numbers n for which A003961(n+1) < A003961(n).

Offset 1, canonical program `A275722.P8632135586761212845`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A275722 (n : ℕ) : ℤ :=
  A275722.P8632135586761212845.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A275722.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A278224.P4475416140857214934

`A046523(A048673(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A278224.P4475416140857214934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A048673 (n + 1)).toNat

end

end A278224.P4475416140857214934

noncomputable section

/-- A278224: a(n) = A046523(A048673(n)).

Offset 1, canonical program `A278224.P4475416140857214934`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046523, A048673, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A278224 (n : ℕ) : ℤ :=
  A278224.P4475416140857214934.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046523, A048673, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A278224.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A278541.P12391541813226285379

`A278542(A006068(n))`
-/

namespace A278541.P12391541813226285379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278542 (A006068 n).toNat

end

end A278541.P12391541813226285379

noncomputable section

/-- A278541: a(n) = A046523(A209636(n)).

Offset 0, canonical program `A278541.P12391541813226285379`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 512 terms. -/
def A278541 (n : ℕ) : ℤ :=
  A278541.P12391541813226285379.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 512 terms. -/
def A278541.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A285712.P10989090546038180415

`A048673(A252463(A064216(n+1)))%A254049(n+1)`
-/

namespace A285712.P10989090546038180415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A048673 (A252463 (A064216 (n + 1)).toNat).toNat) (A254049 (n + 1))

end

end A285712.P10989090546038180415

noncomputable section

/-- A285712: a(1) = 0, and for n > 1, if n = 3k-1, then a(n) = k, otherwise a(n) = (A064216(n)+1)/2.

Offset 1, canonical program `A285712.P10989090546038180415`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5004 terms. -/
def A285712 (n : ℕ) : ℤ :=
  A285712.P10989090546038180415.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5004 terms. -/
def A285712.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A285713.P6418465002878272495

`A046523(A245612(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A285713.P6418465002878272495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A245612 n).toNat

end

end A285713.P6418465002878272495

noncomputable section

/-- A285713: a(n) = A046523(A245612(n)).

Offset 0, canonical program `A285713.P6418465002878272495`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046523, A245612, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A285713 (n : ℕ) : ℤ :=
  A285713.P6418465002878272495.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046523, A245612, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A285713.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A285714.P3662534397469993104

`1+a(A285712(n+1)-1)` with `a(0)=0, a(1)=1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A285714.P3662534397469993104
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  1 + a (A285712 (n + 1) - 1).toNat

end

end A285714.P3662534397469993104

noncomputable section

/-- A285714: a(1) = 0; for n > 1, a(n) = 1 + a(A285712(n)).

Offset 1, canonical program `A285714.P3662534397469993104`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A285712, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A285714 (n : ℕ) : ℤ :=
  (A285714.P3662534397469993104.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A285712, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A285714.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A286373.P10522384416090527033

`A286366(A048673(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A286373.P10522384416090527033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286366 (A048673 (n + 1)).toNat

end

end A286373.P10522384416090527033

noncomputable section

/-- A286373: a(n) = A286366(A048673(n)).

Offset 1, canonical program `A286373.P10522384416090527033`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048673, A286366, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A286373 (n : ℕ) : ℤ :=
  A286373.P10522384416090527033.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048673, A286366, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A286373.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A286578.P11823003083739616083

`A285712(A286577(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A286578.P11823003083739616083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285712 (A286577 (n + 1)).toNat

end

end A286578.P11823003083739616083

noncomputable section

/-- A286578: a(n) = A285712(A286577(n)).

Offset 1, canonical program `A286578.P11823003083739616083`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A285712, A286577, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A286578 (n : ℕ) : ℤ :=
  A286578.P11823003083739616083.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A285712, A286577, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A286578.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A286582.P13483176475197983670

`A001222(A048673(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A286582.P13483176475197983670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A048673 (n + 1)).toNat

end

end A286582.P13483176475197983670

noncomputable section

/-- A286582: a(n) = A001222(A048673(n)).

Offset 1, canonical program `A286582.P13483176475197983670`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048673, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A286582 (n : ℕ) : ℤ :=
  A286582.P13483176475197983670.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048673, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A286582.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A286583.P1093253371800113672

`A007814(A048673(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A286583.P1093253371800113672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A048673 (n + 1)).toNat

end

end A286583.P1093253371800113672

noncomputable section

/-- A286583: a(n) = A007814(A048673(n)).

Offset 1, canonical program `A286583.P1093253371800113672`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048673, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A286583 (n : ℕ) : ℤ :=
  A286583.P1093253371800113672.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048673, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A286583.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A286584.P2368017140526794240

`A048673(n+1)%4`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A286584.P2368017140526794240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A048673 (n + 1)) 4

end

end A286584.P2368017140526794240

noncomputable section

/-- A286584: a(n) = A048673(n) mod 4.

Offset 1, canonical program `A286584.P2368017140526794240`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048673, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A286584 (n : ℕ) : ℤ :=
  A286584.P2368017140526794240.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048673, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A286584.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A286585.P13020909029626819781

`A053735(A048673(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A286585.P13020909029626819781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053735 (A048673 (n + 1)).toNat

end

end A286585.P13020909029626819781

noncomputable section

/-- A286585: a(n) = A053735(A048673(n)).

Offset 1, canonical program `A286585.P13020909029626819781`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048673, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A286585 (n : ℕ) : ℤ :=
  A286585.P13020909029626819781.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048673, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A286585.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A286586.P14883220154274821023

`A006047(A048673(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A286586.P14883220154274821023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006047 (A048673 (n + 1)).toNat

end

end A286586.P14883220154274821023

noncomputable section

/-- A286586: a(n) = A006047(A048673(n)).

Offset 1, canonical program `A286586.P14883220154274821023`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048673, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A286586 (n : ℕ) : ℤ :=
  A286586.P14883220154274821023.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048673, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A286586.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A286587.P14335713023111587869

`A006047(A244154(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A286587.P14335713023111587869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006047 (A244154 n).toNat

end

end A286587.P14335713023111587869

noncomputable section

/-- A286587: a(n) = A006047(A244154(n)).

Offset 0, canonical program `A286587.P14335713023111587869`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A244154, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A286587 (n : ℕ) : ℤ :=
  A286587.P14335713023111587869.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A244154, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A286587.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A286613.P8940720398290594098

`A046523(A244154(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A286613.P8940720398290594098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A244154 n).toNat

end

end A286613.P8940720398290594098

noncomputable section

/-- A286613: a(n) = A046523(A244154(n)).

Offset 0, canonical program `A286613.P8940720398290594098`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046523, A244154, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A286613 (n : ℕ) : ℤ :=
  A286613.P8940720398290594098.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046523, A244154, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A286613.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A291759.P1154487178848887037

`A289814(A048673(n+1))`
-/

namespace A291759.P1154487178848887037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289814 (A048673 (n + 1)).toNat

end

end A291759.P1154487178848887037

noncomputable section

/-- A291759: Binary encoding of 2-digits in ternary representation of A048673(n).

Offset 1, canonical program `A291759.P1154487178848887037`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048673, A289814, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A291759 (n : ℕ) : ℤ :=
  A291759.P1154487178848887037.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048673, A289814, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A291759.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A291763.P8562917103276515339

`A289814(A245612(n))`
-/

namespace A291763.P8562917103276515339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289814 (A245612 n).toNat

end

end A291763.P8562917103276515339

noncomputable section

/-- A291763: Binary encoding of 2-digits in ternary representation of A245612(n).

Offset 0, canonical program `A291763.P8562917103276515339`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A245612, A289814, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A291763 (n : ℕ) : ℤ :=
  A291763.P8562917103276515339.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A245612, A289814, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A291763.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A292250.P14580592722357513826

`A291770(A048673(n+1))`
-/

namespace A292250.P14580592722357513826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291770 (A048673 (n + 1)).toNat

end

end A292250.P14580592722357513826

noncomputable section

/-- A292250: Binary encoding of 0-digits in ternary representation of A048673(n).

Offset 1, canonical program `A292250.P14580592722357513826`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048673, A291770, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A292250 (n : ℕ) : ℤ :=
  A292250.P14580592722357513826.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048673, A291770, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A292250.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A292251.P3001000153096971167

`A007814(1+A292250(n+1))`
-/

namespace A292251.P3001000153096971167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (1 + A292250 (n + 1)).toNat

end

end A292251.P3001000153096971167

noncomputable section

/-- A292251: The 3-adic valuation of A048673(n).

Offset 1, canonical program `A292251.P3001000153096971167`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A292250, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A292251 (n : ℕ) : ℤ :=
  A292251.P3001000153096971167.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A292250, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A292251.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A292252.P1921198620842257846

`A007814(1+A291759(n+1))`
-/

namespace A292252.P1921198620842257846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (1 + A291759 (n + 1)).toNat

end

end A292252.P1921198620842257846

noncomputable section

/-- A292252: Number of trailing 2-digits in ternary representation of A048673(n).

Offset 1, canonical program `A292252.P1921198620842257846`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A291759, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A292252 (n : ℕ) : ℤ :=
  A292252.P1921198620842257846.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A291759, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A292252.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A292260.P2004989350870370866

`A291770(A245612(n))`
-/

namespace A292260.P2004989350870370866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291770 (A245612 n).toNat

end

end A292260.P2004989350870370866

noncomputable section

/-- A292260: Binary encoding of 0-digits in ternary representation of A245612(n).

Offset 0, canonical program `A292260.P2004989350870370866`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A245612, A291770, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A292260 (n : ℕ) : ℤ :=
  A292260.P2004989350870370866.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A245612, A291770, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A292260.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A292261.P9658740137864361157

`A007814(1+A292260(n))`
-/

namespace A292261.P9658740137864361157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (1 + A292260 n).toNat

end

end A292261.P9658740137864361157

noncomputable section

/-- A292261: The 3-adic valuation of A245612(n).

Offset 0, canonical program `A292261.P9658740137864361157`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A292260, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A292261 (n : ℕ) : ℤ :=
  A292261.P9658740137864361157.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A292260, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A292261.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A292262.P8551215429045952693

`A007814(1+A291763(n))`
-/

namespace A292262.P8551215429045952693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (1 + A291763 n).toNat

end

end A292262.P8551215429045952693

noncomputable section

/-- A292262: Number of trailing 2-digits in ternary representation of A245612(n).

Offset 0, canonical program `A292262.P8551215429045952693`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A291763, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A292262 (n : ℕ) : ℤ :=
  A292262.P8551215429045952693.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A291763, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A292262.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A292375.P9378166462600570346

`1+A292377(n+1)-A292378(n+1)`
-/

namespace A292375.P9378166462600570346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A292377 (n + 1) - A292378 (n + 1)

end

end A292375.P9378166462600570346

noncomputable section

/-- A292375: a(1) = 1, and for n > 1, a(n) = a(A252463(n)) + [n == 1 (mod 4)].

Offset 1, canonical program `A292375.P9378166462600570346`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A292377, A292378, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A292375 (n : ℕ) : ℤ :=
  A292375.P9378166462600570346.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A292377, A292378, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A292375.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A292385.P776466176928444199

`A243071(1+n)-A292383(n+1)`
-/

namespace A292385.P776466176928444199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243071 (1 + n) - A292383 (n + 1)

end

end A292385.P776466176928444199

noncomputable section

/-- A292385: a(1) = 0, a(2) = 1, and for n > 2, a(n) = 2*a(A252463(n)) + [n == 1 (mod 4)].

Offset 1, canonical program `A292385.P776466176928444199`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2048 terms. -/
def A292385 (n : ℕ) : ℤ :=
  A292385.P776466176928444199.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2048 terms. -/
def A292385.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A292590.P8653431818680257867

`A079978(n+1)+2*a(A285712(n+1)-1)` with `a(0)=0, a(1)=0, a(2)=1`
-/

namespace A292590.P8653431818680257867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1] fun n a =>
  A079978 (n + 1) + 2 * a (A285712 (n + 1) - 1).toNat

end

end A292590.P8653431818680257867

noncomputable section

/-- A292590: a(1) = 0; and for n > 1, a(n) = 2*a(A285712(n)) + [0 == (n mod 3)].

Offset 1, canonical program `A292590.P8653431818680257867`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A285712, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A292590 (n : ℕ) : ℤ :=
  A292590.P8653431818680257867.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A285712, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A292590.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A292591.P14247850329661434831

`A245611(1+n)-A292590(n+1)`
-/

namespace A292591.P14247850329661434831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245611 (1 + n) - A292590 (n + 1)

end

end A292591.P14247850329661434831

noncomputable section

/-- A292591: a(1) = 0, a(2) = 1; and for n > 2, a(n) = 2*a(A285712(n)) + [1 == (n mod 3)].

Offset 1, canonical program `A292591.P14247850329661434831`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1121 terms. -/
def A292591 (n : ℕ) : ℤ :=
  A292591.P14247850329661434831.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1121 terms. -/
def A292591.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A292594.P8537391345759066760

`A000120(A292590(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A292594.P8537391345759066760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A292590 (n + 1)).toNat

end

end A292594.P8537391345759066760

noncomputable section

/-- A292594: a(n) = A000120(A292590(n)).

Offset 1, canonical program `A292594.P8537391345759066760`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A292590, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A292594 (n : ℕ) : ℤ :=
  A292594.P8537391345759066760.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A292590, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A292594.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A292595.P4451636547860676390

`A000120(A292591(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A292595.P4451636547860676390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A292591 (n + 1)).toNat

end

end A292595.P4451636547860676390

noncomputable section

/-- A292595: a(n) = A000120(A292591(n)).

Offset 1, canonical program `A292595.P4451636547860676390`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A292591, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A292595 (n : ℕ) : ℤ :=
  A292595.P4451636547860676390.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A292591, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A292595.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A302847.P8021168690625830306

`A064216(∑{e}[A006530(n+1), A048673(n-#+1)]+1)`
-/

namespace A302847.P8021168690625830306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064216 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, A048673 ((n : ℤ) - (Nat.factorization (f1 n).natAbs p : ℤ) + 1).toNat + 1).toNat

end

end A302847.P8021168690625830306

noncomputable section

/-- A302847: Permutation of natural numbers: a(1) = 1; for n > 1, a(n) = A064989(2+A003961(n-1)).

Offset 1, canonical program `A302847.P8021168690625830306`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 768 terms. -/
def A302847 (n : ℕ) : ℤ :=
  A302847.P8021168690625830306.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 768 terms. -/
def A302847.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A302848.P14544111657006453639

`fo[A302847(n+1)-1]+1`
-/

namespace A302848.P14544111657006453639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302847 (n + 1) - 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (n : ℤ)) 0 + 1

end

end A302848.P14544111657006453639

noncomputable section

/-- A302848: Permutation of natural numbers: a(1) = 1; for n > 1, a(n) = 1+A064989(A003961(n)-2).

Offset 1, canonical program `A302848.P14544111657006453639`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 767 terms. -/
def A302848 (n : ℕ) : ℤ :=
  (A302848.P14544111657006453639.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 767 terms. -/
def A302848.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A304759.P343480758352222515

`A289813(A048673(n+1))`
-/

namespace A304759.P343480758352222515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289813 (A048673 (n + 1)).toNat

end

end A304759.P343480758352222515

noncomputable section

/-- A304759: Binary encoding of 1-digits in ternary representation of A048673(n).

Offset 1, canonical program `A304759.P343480758352222515`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048673, A289813, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A304759 (n : ℕ) : ℤ :=
  A304759.P343480758352222515.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048673, A289813, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A304759.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A305295.P5022715488973413442

`A289813(A245612(n))`
-/

namespace A305295.P5022715488973413442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289813 (A245612 n).toNat

end

end A305295.P5022715488973413442

noncomputable section

/-- A305295: Binary encoding of 1-digits in ternary representation of A245612(n).

Offset 0, canonical program `A305295.P5022715488973413442`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A245612, A289813, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A305295 (n : ℕ) : ℤ :=
  A305295.P5022715488973413442.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A245612, A289813, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A305295.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A317090.P7766574012939801174

`A179983(n+2)%A033581(A000124(n))`
-/

namespace A317090.P7766574012939801174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A179983 (n + 2)) (A033581 (A000124 n).toNat)

end

end A317090.P7766574012939801174

noncomputable section

/-- A317090: Positive integers whose prime multiplicities span an initial interval of positive integers.

Offset 1, canonical program `A317090.P7766574012939801174`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 141 terms. -/
def A317090 (n : ℕ) : ℤ :=
  A317090.P7766574012939801174.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 141 terms. -/
def A317090.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A321024.P9737378660482103548

`lt[1, gcd(A253885(n)+1, A004277(n))]`
-/

namespace A321024.P9737378660482103548
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A253885 n + 1) (A004277 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A321024.P9737378660482103548

noncomputable section

/-- A321024: Let j be one of the prime factors of k. Sequence lists numbers k such that the prime before j is a prime factor of k+1.

Offset 1, canonical program `A321024.P9737378660482103548`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2859 terms. -/
def A321024 (n : ℕ) : ℤ :=
  (A321024.P9737378660482103548.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2859 terms. -/
def A321024.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A324910.P7917163874809999743

`A246674(A156552(n+1))`
-/

namespace A324910.P7917163874809999743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246674 (A156552 (n + 1)).toNat

end

end A324910.P7917163874809999743

noncomputable section

/-- A324910: Multiplicative with a(p^e) = (2^e)-1.

Offset 1, canonical program `A324910.P7917163874809999743`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A156552, A246674, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A324910 (n : ℕ) : ℤ :=
  A324910.P7917163874809999743.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A156552, A246674, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A324910.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A324912.P626608519399304593

`A000120(A324910(1+n))`
-/

namespace A324912.P626608519399304593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A324910 (1 + n)).toNat

end

end A324912.P626608519399304593

noncomputable section

/-- A324912: Binary weight of A324911(n).

Offset 1, canonical program `A324912.P626608519399304593`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A324912 (n : ℕ) : ℤ :=
  A324912.P626608519399304593.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A324912.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A328231.P16100151263577803873

`gcd(n+1, A048673(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A328231.P16100151263577803873
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A048673 (n + 1))

end

end A328231.P16100151263577803873

noncomputable section

/-- A328231: a(n) = gcd(n, A048673(n)).

Offset 1, canonical program `A328231.P16100151263577803873`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048673, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A328231 (n : ℕ) : ℤ :=
  (A328231.P16100151263577803873.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048673, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A328231.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A336120.P13673094566660144641

`A292383(A122111(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A336120.P13673094566660144641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292383 (A122111 (n + 1)).toNat

end

end A336120.P13673094566660144641

noncomputable section

/-- A336120: a(n) = A292383(A122111(n)).

Offset 1, canonical program `A336120.P13673094566660144641`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A122111, A292383, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A336120 (n : ℕ) : ℤ :=
  A336120.P13673094566660144641.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A122111, A292383, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A336120.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A336125.P10507452787847083027

`A292385(A122111(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A336125.P10507452787847083027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292385 (A122111 (n + 1)).toNat

end

end A336125.P10507452787847083027

noncomputable section

/-- A336125: a(n) = A292385(A122111(n)).

Offset 1, canonical program `A336125.P10507452787847083027`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A122111, A292385, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A336125 (n : ℕ) : ℤ :=
  A336125.P10507452787847083027.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A122111, A292385, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A336125.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A336840.P4199511304269638983

`A364063(A048673(n+1))`
-/

namespace A336840.P4199511304269638983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364063 (A048673 (n + 1)).toNat

end

end A336840.P4199511304269638983

noncomputable section

/-- A336840: Inverse Möbius transform of A048673.

Offset 1, canonical program `A336840.P4199511304269638983`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048673, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A336840 (n : ℕ) : ℤ :=
  A336840.P4199511304269638983.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048673, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A336840.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A337336.P26056897004872509

`A048673((n+1)²)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A337336.P26056897004872509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048673 ((n + 1) ^ 2)

end

end A337336.P26056897004872509

noncomputable section

/-- A337336: a(n) = A048673(n^2).

Offset 1, canonical program `A337336.P26056897004872509`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048673, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A337336 (n : ℕ) : ℤ :=
  A337336.P26056897004872509.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048673, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A337336.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A340376.P5209034061733646793

`eq[1, A278222(A304759(n+1))]+1`
-/

namespace A340376.P5209034061733646793
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278222 (A304759 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A340376.P5209034061733646793

noncomputable section

/-- A340376: Numbers k such that there are no 1-digits in the ternary expansion of A048673(k).

Offset 1, canonical program `A340376.P5209034061733646793`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 343 terms. -/
def A340376 (n : ℕ) : ℤ :=
  (A340376.P5209034061733646793.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 343 terms. -/
def A340376.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A340378.P1297187167670847368

`A000120(A304759(n+1))`
-/

namespace A340378.P1297187167670847368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A304759 (n + 1)).toNat

end

end A340378.P1297187167670847368

noncomputable section

/-- A340378: Number of 1-digits in the ternary representation of A048673(n).

Offset 1, canonical program `A340378.P1297187167670847368`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A304759, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A340378 (n : ℕ) : ℤ :=
  A340378.P1297187167670847368.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A304759, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A340378.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A340379.P13991734637336372993

`A000120(A291759(n+1))`
-/

namespace A340379.P13991734637336372993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A291759 (n + 1)).toNat

end

end A340379.P13991734637336372993

noncomputable section

/-- A340379: Number of 2-digits in the ternary representation of A048673(n).

Offset 1, canonical program `A340379.P13991734637336372993`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A291759, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A340379 (n : ℕ) : ℤ :=
  A340379.P13991734637336372993.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A291759, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A340379.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A341345.P7991195102109131919

`A048673(n+1)%3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A341345.P7991195102109131919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A048673 (n + 1)) 3

end

end A341345.P7991195102109131919

noncomputable section

/-- A341345: a(n) = A048673(n) mod 3.

Offset 1, canonical program `A341345.P7991195102109131919`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048673, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A341345 (n : ℕ) : ℤ :=
  A341345.P7991195102109131919.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048673, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A341345.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A341346.P16101358028309292209

`A048673(2*(n+1)-1)%3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A341346.P16101358028309292209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A048673 (2 * (n + 1) - 1)) 3

end

end A341346.P16101358028309292209

noncomputable section

/-- A341346: a(n) = A048673(2n-1) mod 3.

Offset 1, canonical program `A341346.P16101358028309292209`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048673, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A341346 (n : ℕ) : ℤ :=
  A341346.P16101358028309292209.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048673, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A341346.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A341347.P17586485408911963690

`A341346(A048673(n+1))`
-/

namespace A341347.P17586485408911963690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341346 (A048673 (n + 1)).toNat

end

end A341347.P17586485408911963690

noncomputable section

/-- A341347: a(n) = (1+A003961(A003961(n)))/2 mod 3, where A003961 shifts the prime factorization of n one step towards larger primes.

Offset 1, canonical program `A341347.P17586485408911963690`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048673, A341346, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A341347 (n : ℕ) : ℤ :=
  A341347.P17586485408911963690.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048673, A341346, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A341347.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A341348.P12109869352924549307

`runs[A341346(n+1)]`
-/

namespace A341348.P12109869352924549307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341346 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) n

end

end A341348.P12109869352924549307

noncomputable section

/-- A341348: Runlengths of A341346.

Offset 1, canonical program `A341348.P12109869352924549307`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A341348 (n : ℕ) : ℤ :=
  (A341348.P12109869352924549307.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A341348.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A341349.P7010268791538040809

`eq[1, A341346(1+n)]+1`
-/

namespace A341349.P7010268791538040809
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341346 (1 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A341349.P7010268791538040809

noncomputable section

/-- A341349: Numbers k for which A254049(k) is not a multiple of 3.

Offset 1, canonical program `A341349.P7010268791538040809`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A341349 (n : ℕ) : ℤ :=
  (A341349.P7010268791538040809.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A341349.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A341350.P13400712899668666593

`eq[0, A341346(n+1)]+1`
-/

namespace A341350.P13400712899668666593
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341346 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A341350.P13400712899668666593

noncomputable section

/-- A341350: Numbers k for which A254049(k) [= A048673(2k-1)] is a multiple of 3.

Offset 1, canonical program `A341350.P13400712899668666593`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A341350 (n : ℕ) : ℤ :=
  (A341350.P13400712899668666593.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A341350.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A343006.P8807581035806052116

`A366388(A324922(n+1)/A034444(n+1))`
-/

namespace A343006.P8807581035806052116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366388 (SequenceMachineLib.roundAway ((A324922 (n + 1) : ℚ) / (A034444 (n + 1) : ℚ))).toNat

end

end A343006.P8807581035806052116

noncomputable section

/-- A343006: Internal path length of the rooted tree with Matula-Goebel number n.

Offset 1, canonical program `A343006.P8807581035806052116`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A343006 (n : ℕ) : ℤ :=
  A343006.P8807581035806052116.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A343006.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A349571.P3033731722119159543

`∑{d}[n+1, A048673((n+1)/#)*A055615(#)]`
-/

namespace A349571.P3033731722119159543
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A048673 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat * A055615 d

end

end A349571.P3033731722119159543

noncomputable section

/-- A349571: Dirichlet convolution of A048673 with A055615 (Dirichlet inverse of n).

Offset 1, canonical program `A349571.P3033731722119159543`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048673, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A349571 (n : ℕ) : ℤ :=
  A349571.P3033731722119159543.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048673, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A349571.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A349573.P7179832196050588632

`A048673(n+1)-(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A349573.P7179832196050588632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048673 (n + 1) - (n + 1 : ℤ)

end

end A349573.P7179832196050588632

noncomputable section

/-- A349573: a(n) = A048673(n) - n, where A048673(n) = (A003961(n)+1) / 2, and A003961(n) shifts the prime factorization of n one step towards larger primes.

Offset 1, canonical program `A349573.P7179832196050588632`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048673, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A349573 (n : ℕ) : ℤ :=
  A349573.P7179832196050588632.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048673, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A349573.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A349910.P15708250188466983779

`A336840(n+1)-A048673(n+1)`
-/

namespace A349910.P15708250188466983779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336840 (n + 1) - A048673 (n + 1)

end

end A349910.P15708250188466983779

noncomputable section

/-- A349910: a(n) = Sum_{d|n, d<n} A048673(d).

Offset 1, canonical program `A349910.P15708250188466983779`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048673, A336840, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A349910 (n : ℕ) : ℤ :=
  A349910.P15708250188466983779.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048673, A336840, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A349910.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A352954.P6065376693423034420

`p?[5*A090563(n+1)+1]`
-/

namespace A352954.P6065376693423034420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A090563 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A352954.P6065376693423034420

noncomputable section

/-- A352954: Primes p such that (p^2+3*p+1)/5 is prime.

Offset 1, canonical program `A352954.P6065376693423034420`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1081 terms. -/
def A352954 (n : ℕ) : ℤ :=
  A352954.P6065376693423034420.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1081 terms. -/
def A352954.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A353420.P10121282640979448406

`A249746(A003602(n+1))`
-/

namespace A353420.P10121282640979448406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249746 (A003602 (n + 1)).toNat

end

end A353420.P10121282640979448406

noncomputable section

/-- A353420: a(n) = A126760(A003961(n)).

Offset 1, canonical program `A353420.P10121282640979448406`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003602, A249746, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A353420 (n : ℕ) : ℤ :=
  A353420.P10121282640979448406.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003602, A249746, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A353420.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A358988.P13199037608609698996

`record[lcm(2, A128896(n+3))]`
-/

namespace A358988.P13199037608609698996
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A128896 (n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A358988.P13199037608609698996

noncomputable section

/-- A358988: Oblong numbers which are products of four distinct primes.

Offset 1, canonical program `A358988.P13199037608609698996`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 878 terms. -/
def A358988 (n : ℕ) : ℤ :=
  (A358988.P13199037608609698996.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 878 terms. -/
def A358988.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A362583.P7574597626336910492

`record[A292383(3+n)]`
-/

namespace A362583.P7574597626336910492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292383 (3 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A362583.P7574597626336910492

noncomputable section

/-- A362583: Concatenation of ((p mod 4) - 1)/2 for the primes from 3 through prime(n), converted from binary to decimal.

Offset 2, canonical program `A362583.P7574597626336910492`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 308 terms. -/
def A362583 (n : ℕ) : ℤ :=
  A362583.P7574597626336910492.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 308 terms. -/
def A362583.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A378521.P3747435219911459199

`∑{d}[n+1, A008683((n+1)/#)*A048673(#)]`
-/

namespace A378521.P3747435219911459199
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat * A048673 d

end

end A378521.P3747435219911459199

noncomputable section

/-- A378521: Möbius transform of A048673.

Offset 1, canonical program `A378521.P3747435219911459199`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048673, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A378521 (n : ℕ) : ℤ :=
  A378521.P3747435219911459199.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048673, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A378521.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A378747.P2612506612617413863

`A048673(n+1)-A001065(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A378747.P2612506612617413863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048673 (n + 1) - A001065 (n + 1)

end

end A378747.P2612506612617413863

noncomputable section

/-- A378747: a(n) = A048673(n) - A001065(n).

Offset 1, canonical program `A378747.P2612506612617413863`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048673, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A378747 (n : ℕ) : ℤ :=
  A378747.P2612506612617413863.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048673, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A378747.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A378748.P8742583333347776614

`A378521(n+1)-A051953(n+1)`
-/

namespace A378748.P8742583333347776614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378521 (n + 1) - A051953 (n + 1)

end

end A378748.P8742583333347776614

noncomputable section

/-- A378748: Möbius transform of A378747.

Offset 1, canonical program `A378748.P8742583333347776614`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A378521, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A378748 (n : ℕ) : ℤ :=
  A378748.P8742583333347776614.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A378521, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A378748.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A378751.P13164053895739909960

`A000203(n+1)-A048673(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A378751.P13164053895739909960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A048673 (n + 1)

end

end A378751.P13164053895739909960

noncomputable section

/-- A378751: a(n) = A000203(n) - A048673(n).

Offset 1, canonical program `A378751.P13164053895739909960`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048673, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A378751 (n : ℕ) : ℤ :=
  A378751.P13164053895739909960.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048673, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A378751.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A379481.P9717699503514180419

`A016754(A048673(n+1)-1)`
-/

namespace A379481.P9717699503514180419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016754 (A048673 (n + 1) - 1).toNat

end

end A379481.P9717699503514180419

noncomputable section

/-- A379481: Square of prime-shifted n, or equally, n squared, then prime-shifted one step towards larger primes.

Offset 1, canonical program `A379481.P9717699503514180419`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048673, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A379481 (n : ℕ) : ℤ :=
  A379481.P9717699503514180419.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048673, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A379481.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A379484.P7184658253164234511

`A379473(A379481(n+1))`
-/

namespace A379484.P7184658253164234511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379473 (A379481 (n + 1)).toNat

end

end A379484.P7184658253164234511

noncomputable section

/-- A379484: a(n) is the highest power of 3 dividing sigma(A003961(n^2)), where A003961 is fully multiplicative with a(prime(i)) = prime(i+1), and sigma is the sum of divisors function.

Offset 1, canonical program `A379484.P7184658253164234511`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A379481, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A379484 (n : ℕ) : ℤ :=
  A379484.P7184658253164234511.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A379481, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A379484.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A380007.P11055340700919016870

`∩[A128896(n+1), A000384(n)]`
-/

namespace A380007.P11055340700919016870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128896 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000384 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A380007.P11055340700919016870

noncomputable section

/-- A380007: Hexagonal numbers that are sphenic numbers.

Offset 1, canonical program `A380007.P11055340700919016870`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 502 terms. -/
def A380007 (n : ℕ) : ℤ :=
  (A380007.P11055340700919016870.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 502 terms. -/
def A380007.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A380706.P14312791718751837966

`gcd(∑{digits}[9*n, #/9], A255468(n²))`
-/

namespace A380706.P14312791718751837966
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => (x : ℚ) / 9).sum) (A255468 (n ^ 2))

end

end A380706.P14312791718751837966

noncomputable section

/-- A380706: n is the a(n)-th nonnegative integer having its set of decimal digits.

Offset 0, canonical program `A380706.P14312791718751837966`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A380706 (n : ℕ) : ℤ :=
  (A380706.P14312791718751837966.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A380706.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A003961.P5996473960037614004

`A253885(n)+1`
-/

namespace A003961.P5996473960037614004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253885 n + 1

end

end A003961.P5996473960037614004

noncomputable section

/-- A003961: Completely multiplicative with a(prime(k)) = prime(k+1).

Offset 1, canonical program `A003961.P5996473960037614004`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A003961 (n : ℕ) : ℤ :=
  A003961.P5996473960037614004.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A003961.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A003962.P5960370020489354738

`∏{d}[n+1, A048673(A014963(#))]`
-/

namespace A003962.P5960370020489354738
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), A048673 (A014963 d).toNat

end

end A003962.P5960370020489354738

noncomputable section

/-- A003962: Completely multiplicative with a(prime(k)) = floor( (prime(k+1)+1)/2 ) for k-th prime prime(k).

Offset 1, canonical program `A003962.P5960370020489354738`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A003962 (n : ℕ) : ℤ :=
  A003962.P5960370020489354738.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A003962.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A003972.P2423200350467876597

`A000010(A003961(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A003972.P2423200350467876597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A003961 (n + 1)).toNat

end

end A003972.P2423200350467876597

noncomputable section

/-- A003972: Moebius transform of A003961; a(n) = phi(A003961(n)), where A003961 shifts the prime factorization of n one step towards the larger primes.

Offset 1, canonical program `A003972.P2423200350467876597`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A003972 (n : ℕ) : ℤ :=
  A003972.P2423200350467876597.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A003972.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A003973.P4846480468008244812

`A000203(A003961(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A003973.P4846480468008244812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A003961 (n + 1)).toNat

end

end A003973.P4846480468008244812

noncomputable section

/-- A003973: Inverse Möbius transform of A003961; a(n) = sigma(A003961(n)), where A003961 shifts the prime factorization of n one step towards the larger primes.

Offset 1, canonical program `A003973.P4846480468008244812`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A003973 (n : ℕ) : ℤ :=
  A003973.P4846480468008244812.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A003973.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A003974.P18403113671087007945

`∑{d}[n+1, A003962(#)*A008683((n+1)/#)]`
-/

namespace A003974.P18403113671087007945
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A003962 d * A008683 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A003974.P18403113671087007945

noncomputable section

/-- A003974: Möbius transform of A003962.

Offset 1, canonical program `A003974.P18403113671087007945`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A003974 (n : ℕ) : ℤ :=
  A003974.P18403113671087007945.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A003974.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A003975.P5207555401224753949

`∑{d}[n+1, A003962(#)]`
-/

namespace A003975.P5207555401224753949
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A003962 d

end

end A003975.P5207555401224753949

noncomputable section

/-- A003975: Inverse Möbius transform of A003962.

Offset 1, canonical program `A003975.P5207555401224753949`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A003975 (n : ℕ) : ℤ :=
  A003975.P5207555401224753949.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A003975.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A037970.P12544811310622342787

`∩[A136037(n+1), A166535(n+1)]`
-/

namespace A037970.P12544811310622342787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136037 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166535 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A037970.P12544811310622342787

noncomputable section

/-- A037970: Numbers whose maximal base-2 run length is 3.

Offset 1, canonical program `A037970.P12544811310622342787`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3744 terms. -/
def A037970 (n : ℕ) : ℤ :=
  (A037970.P12544811310622342787.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3744 terms. -/
def A037970.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A044813.P18382586688093240220

`eq[1, A175465(n+1)]+1`
-/

namespace A044813.P18382586688093240220
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175465 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A044813.P18382586688093240220

noncomputable section

/-- A044813: Positive integers having distinct base-2 run lengths.

Offset 1, canonical program `A044813.P18382586688093240220`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 468 terms. -/
def A044813 (n : ℕ) : ℤ :=
  (A044813.P18382586688093240220.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 468 terms. -/
def A044813.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A044933.P16468150021255286257

`A005811(n+1)-A044942(n+1)`
-/

namespace A044933.P16468150021255286257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 (n + 1) - A044942 (n + 1)

end

end A044933.P16468150021255286257

noncomputable section

/-- A044933: Number of runs of even length in the base-2 representation of n.

Offset 1, canonical program `A044933.P16468150021255286257`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A044942, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A044933 (n : ℕ) : ℤ :=
  A044933.P16468150021255286257.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A044942, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A044933.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A044934.P12203436465107615356

`A044933(A371256(n+1))`
-/

namespace A044934.P12203436465107615356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044933 (A371256 (n + 1)).toNat

end

end A044934.P12203436465107615356

noncomputable section

/-- A044934: Number of runs of even length in the base 3 representation of n.

Offset 1, canonical program `A044934.P12203436465107615356`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6561 terms. -/
def A044934 (n : ℕ) : ℤ :=
  A044934.P12203436465107615356.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6561 terms. -/
def A044934.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045656.P5470975865177139039

`A045655(n)-∑{d}[n, A045669(#)]`
-/

namespace A045656.P5470975865177139039
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045655 n - ∑ d ∈ Nat.divisors (f1 n), A045669 d

end

end A045656.P5470975865177139039

noncomputable section

/-- A045656: Number of 2n-bead balanced binary strings, rotationally equivalent to reverse, complement and reversed complement.

Offset 0, canonical program `A045656.P5470975865177139039`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 324 terms. -/
def A045656 (n : ℕ) : ℤ :=
  A045656.P5470975865177139039.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 324 terms. -/
def A045656.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A045965.P3274931299755745232

`A003961(n%a(n-1)+1)` with `a(0)=2`
-/

namespace A045965.P3274931299755745232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A003961 (Int.tmod (n : ℤ) (a (n - 1)) + 1).toNat

end

end A045965.P3274931299755745232

noncomputable section

/-- A045965: a(1)=2; if n = Product p_i^e_i, n > 1, then a(n) = Product p_{i+1}^e_i.

Offset 1, canonical program `A045965.P3274931299755745232`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045965 (n : ℕ) : ℤ :=
  A045965.P3274931299755745232.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045965.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045967.P12783764641236707767

`A045965(∏{p}[n+1, #])*A045965(n+1)`
-/

namespace A045967.P12783764641236707767
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045965 (∏ p ∈ Nat.primeFactors (f1 n), p) * A045965 (n + 1)

end

end A045967.P12783764641236707767

noncomputable section

/-- A045967: a(1)=4; if n = Product p_i^e_i, n > 1, then a(n) = Product p_{i+1}^{e_i+1}.

Offset 1, canonical program `A045967.P12783764641236707767`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045967 (n : ℕ) : ℤ :=
  A045967.P12783764641236707767.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045967.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045969.P4344229329838993575

`A045965(n+1)*A045966(n+1)`
-/

namespace A045969.P4344229329838993575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045965 (n + 1) * A045966 (n + 1)

end

end A045969.P4344229329838993575

noncomputable section

/-- A045969: a(1)=6; if n = Product p_i^e_i, n>1, then a(n) = Product p_{i+1}^e_i * Product p_{i+2}^e_i.

Offset 1, canonical program `A045969.P4344229329838993575`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045969 (n : ℕ) : ℤ :=
  A045969.P4344229329838993575.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045969.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045971.P2138342967968067509

`A045965(A007947(n+1))*A045967(n+1)`
-/

namespace A045971.P2138342967968067509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045965 (A007947 (n + 1)).toNat * A045967 (n + 1)

end

end A045971.P2138342967968067509

noncomputable section

/-- A045971: a(1)=8; if n = Product p_i^e_i, n > 1, then a(n) = Product p_{i+1}^{e_i+2}.

Offset 1, canonical program `A045971.P2138342967968067509`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045971 (n : ℕ) : ℤ :=
  A045971.P2138342967968067509.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045971.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A064553.P13324500715989758241

`A003963(A003961(n+1))`
-/

namespace A064553.P13324500715989758241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (A003961 (n + 1)).toNat

end

end A064553.P13324500715989758241

noncomputable section

/-- A064553: a(1) = 1, a(prime(i)) = i + 1 for i > 0 and a(u * v) = a(u) * a(v) for u, v > 0.

Offset 1, canonical program `A064553.P13324500715989758241`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, A003963, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A064553 (n : ℕ) : ℤ :=
  A064553.P13324500715989758241.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, A003963, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A064553.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A064554.P9603739927785713988

`fo[A064553(n+1)-1]+1`
-/

namespace A064554.P9603739927785713988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064553 (n + 1) - 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (n : ℤ)) 0 + 1

end

end A064554.P9603739927785713988

noncomputable section

/-- A064554: a(n) = Min {k | A064553(k) = n}.

Offset 1, canonical program `A064554.P9603739927785713988`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1230 terms. -/
def A064554 (n : ℕ) : ℤ :=
  (A064554.P9603739927785713988.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1230 terms. -/
def A064554.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A064558.P17666427282558717256

`A064553(A064553(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A064558.P17666427282558717256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064553 (A064553 (n + 1)).toNat

end

end A064558.P17666427282558717256

noncomputable section

/-- A064558: a(n) = A064553(A064553(n)).

Offset 1, canonical program `A064558.P17666427282558717256`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064553, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A064558 (n : ℕ) : ℤ :=
  A064558.P17666427282558717256.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064553, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A064558.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A085562.P13309010936247143976

`A007953(n+1)-A085563(n+1)`
-/

namespace A085562.P13309010936247143976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (n + 1) - A085563 (n + 1)

end

end A085562.P13309010936247143976

noncomputable section

/-- A085562: Sum of the nonprime digits of n.

Offset 1, canonical program `A085562.P13309010936247143976`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A085562 (n : ℕ) : ℤ :=
  A085562.P13309010936247143976.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A085562.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A090562.P6176519161748615572

`A062786(A090563(1+n)+1)`
-/

namespace A090562.P6176519161748615572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062786 (A090563 (1 + n) + 1).toNat

end

end A090562.P6176519161748615572

noncomputable section

/-- A090562: Primes of the form 5k^2 + 5k + 1.

Offset 1, canonical program `A090562.P6176519161748615572`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2468 terms. -/
def A090562 (n : ℕ) : ℤ :=
  A090562.P6176519161748615572.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2468 terms. -/
def A090562.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A097246.P2470047970217943753

`A003961(A000188(n+1))*A007913(n+1)`
-/

namespace A097246.P2470047970217943753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (A000188 (n + 1)).toNat * A007913 (n + 1)

end

end A097246.P2470047970217943753

noncomputable section

/-- A097246: Replace factors of n that are squares of a prime with the prime succeeding this prime.

Offset 1, canonical program `A097246.P2470047970217943753`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A097246 (n : ℕ) : ℤ :=
  A097246.P2470047970217943753.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A097246.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A097247.P3635200679269526787

`A097246(A097246(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A097247.P3635200679269526787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097246 (A097246 (n + 1)).toNat

end

end A097247.P3635200679269526787

noncomputable section

/-- A097247: A097246(A097246(n)).

Offset 1, canonical program `A097247.P3635200679269526787`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A097246, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A097247 (n : ℕ) : ℤ :=
  A097247.P3635200679269526787.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A097246, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A097247.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A097272.P984936321937266580

`A006519(n+1)*A003961(A046523(A000265(n+1)))`
-/

namespace A097272.P984936321937266580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (n + 1) * A003961 (A046523 (A000265 (n + 1)).toNat).toNat

end

end A097272.P984936321937266580

noncomputable section

/-- A097272: Least integer with same "mod 2 prime signature" as n.

Offset 1, canonical program `A097272.P984936321937266580`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, A046523, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A097272 (n : ℕ) : ℤ :=
  A097272.P984936321937266580.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, A046523, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A097272.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A107037.P17259892814395542742

`A107039(n)+a(n-1)` with `a(0)=1`
-/

namespace A107037.P17259892814395542742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A107039 n + a (n - 1)

end

end A107037.P17259892814395542742

noncomputable section

/-- A107037: Indices of squarefree Jacobsthal numbers.

Offset 1, canonical program `A107037.P17259892814395542742`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 899 terms. -/
def A107037 (n : ℕ) : ℤ :=
  A107037.P17259892814395542742.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 899 terms. -/
def A107037.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A108228.P1519769312143049482

`(A003961(n+1)-1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A108228.P1519769312143049482
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003961 (n + 1) - 1 : ℚ) / 2

end

end A108228.P1519769312143049482

noncomputable section

/-- A108228: a(n) = (A003961(n) - 1)/2, a permutation of the nonnegative integers.

Offset 1, canonical program `A108228.P1519769312143049482`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A108228 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A108228.P1519769312143049482.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A108228.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A110502.P10984957544481185627

`eq[0, A253262(A124758(n))]`
-/

namespace A110502.P10984957544481185627
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253262 (A124758 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A110502.P10984957544481185627

noncomputable section

/-- A110502: Numbers n such that n in binary representation has a block of exactly a nontrivial square number of zeros.

Offset 1, canonical program `A110502.P10984957544481185627`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2760 terms. -/
def A110502 (n : ℕ) : ℤ :=
  (A110502.P10984957544481185627.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2760 terms. -/
def A110502.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A118672.P8394530859534413087

`comp[A325128(1+n)-1]+1`
-/

namespace A118672.P8394530859534413087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325128 (1 + n) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A118672.P8394530859534413087

noncomputable section

/-- A118672: Numbers divisible by prime(i)^i for some i.

Offset 1, canonical program `A118672.P8394530859534413087`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A118672 (n : ℕ) : ℤ :=
  (A118672.P8394530859534413087.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A118672.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A129401.P15322032131307177429

`A003961(A002808(n+1))`
-/

namespace A129401.P15322032131307177429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (A002808 (n + 1)).toNat

end

end A129401.P15322032131307177429

noncomputable section

/-- A129401: a(n) is the result of replacing with its successor prime each prime in the factorization of the n-th composite number.

Offset 1, canonical program `A129401.P15322032131307177429`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A129401 (n : ℕ) : ℤ :=
  A129401.P15322032131307177429.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A129401.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A133108.P13227830424064784786

`A000720(p?[A008578(A253887(n+1))])`
-/

namespace A133108.P13227830424064784786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A253887 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A133108.P13227830424064784786

noncomputable section

/-- A133108: Representation of a dense para-sequence.

Offset 1, canonical program `A133108.P13227830424064784786`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9990 terms. -/
def A133108 (n : ℕ) : ℤ :=
  A133108.P13227830424064784786.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9990 terms. -/
def A133108.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A135765.P15449999841783875573

`A003961(A254053(n+1))`
-/

namespace A135765.P15449999841783875573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (A254053 (n + 1)).toNat

end

end A135765.P15449999841783875573

noncomputable section

/-- A135765: Distribute the odd numbers in columns based on the occurrence of "3" in each prime factorization; square array A(row, col) = 3^(row-1) * A007310(col), read by antidiagonals A(1,1), A(1,2), A(2,1), A(1,3), A(2,2), A(3,1), ...

Offset 1, canonical program `A135765.P15449999841783875573`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, A254053, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A135765 (n : ℕ) : ℤ :=
  A135765.P15449999841783875573.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, A254053, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A135765.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A141285.P8203282120832387629

`A001511(A228354(n+1))`
-/

namespace A141285.P8203282120832387629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A228354 (n + 1)).toNat

end

end A141285.P8203282120832387629

noncomputable section

/-- A141285: Largest part of the n-th partition of j in the list of colexicographically ordered partitions of j, if 1 <= n <= A000041(j).

Offset 1, canonical program `A141285.P8203282120832387629`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A228354, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A141285 (n : ℕ) : ℤ :=
  A141285.P8203282120832387629.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A228354, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A141285.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A157261.P4017168066649199223

`A141285(A185170(A006519(n+1)))`
-/

namespace A157261.P4017168066649199223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141285 (A185170 (A006519 (n + 1)).toNat).toNat

end

end A157261.P4017168066649199223

noncomputable section

/-- A157261: A run-length encoding of blocks of 2 in A090822.

Offset 1, canonical program `A157261.P4017168066649199223`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 127 terms. -/
def A157261 (n : ℕ) : ℤ :=
  A157261.P4017168066649199223.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 127 terms. -/
def A157261.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A158134.P3890413208393723118

`A157261(4*(n+1))`
-/

namespace A158134.P3890413208393723118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157261 (4 * (n + 1))

end

end A158134.P3890413208393723118

noncomputable section

/-- A158134: Fourth quadrisection of A157261.

Offset 1, canonical program `A158134.P3890413208393723118`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A157261, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A158134 (n : ℕ) : ℤ :=
  A158134.P3890413208393723118.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A157261, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A158134.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A160530.P7463755400473143513

`eq[1, gcd(2, A167489(n+1))]+1`
-/

namespace A160530.P7463755400473143513
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A167489 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A160530.P7463755400473143513

noncomputable section

/-- A160530: Positive integers that contain only odd-length runs of 0's and 1's in their binary expansion.

Offset 1, canonical program `A160530.P7463755400473143513`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 610 terms. -/
def A160530 (n : ℕ) : ℤ :=
  (A160530.P7463755400473143513.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 610 terms. -/
def A160530.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A162535.P17899088752392247826

`eq[1, gcd(n+1, A167489(n+1))]+1`
-/

namespace A162535.P17899088752392247826
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A167489 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A162535.P17899088752392247826

noncomputable section

/-- A162535: A positive integer k is included if every length of the runs of 0's and 1's in the binary representation of k is coprime to k.

Offset 1, canonical program `A162535.P17899088752392247826`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3253 terms. -/
def A162535 (n : ℕ) : ℤ :=
  (A162535.P17899088752392247826.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3253 terms. -/
def A162535.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A167850.P1417608363177121969

`floor(1/A167852(A000027(n+1)))`
-/

namespace A167850.P1417608363177121969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / (A167852 (A000027 (n + 1)).toNat : ℚ)⌋

end

end A167850.P1417608363177121969

noncomputable section

/-- A167850: Triangle read by rows in which each row contains a finite triangle as shown below.

Offset 1, canonical program `A167850.P1417608363177121969`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A167850 (n : ℕ) : ℤ :=
  A167850.P1417608363177121969.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A167850.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A167851.P3994614646973423124

`A167852(1+n)%2`
-/

namespace A167851.P3994614646973423124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A167852 (1 + n)) 2

end

end A167851.P3994614646973423124

noncomputable section

/-- A167851: Triangle read by rows in which each row contains a finite triangle as shown below.

Offset 1, canonical program `A167851.P3994614646973423124`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A167851 (n : ℕ) : ℤ :=
  A167851.P3994614646973423124.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A167851.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A179308.P7600542679721346991

`eq[A267084(n+1), A380706(n)]`
-/

namespace A179308.P7600542679721346991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267084 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380706 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A179308.P7600542679721346991

noncomputable section

/-- A179308: List of positive integers, omitting any number n if another number with the same set of digits as n has already been listed.

Offset 1, canonical program `A179308.P7600542679721346991`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 440 terms. -/
def A179308 (n : ℕ) : ℤ :=
  (A179308.P7600542679721346991.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 440 terms. -/
def A179308.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A182727.P6932103016734576934

`∑[A141285(1+n)]`
-/

namespace A182727.P6932103016734576934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141285 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A182727.P6932103016734576934

noncomputable section

/-- A182727: Sum of largest parts of the modular table of partitions with n regions.

Offset 1, canonical program `A182727.P6932103016734576934`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4000 terms. -/
def A182727 (n : ℕ) : ℤ :=
  A182727.P6932103016734576934.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4000 terms. -/
def A182727.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A185363.P3513308752242859675

`A000188(∩[A046339(n+1), A392696(n+1)])`
-/

namespace A185363.P3513308752242859675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046339 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392696 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A185363.P3513308752242859675

noncomputable section

/-- A185363: a(n) = square-root of the largest proper divisor of A187101(n).

Offset 1, canonical program `A185363.P3513308752242859675`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 134 terms. -/
def A185363 (n : ℕ) : ℤ :=
  A185363.P3513308752242859675.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 134 terms. -/
def A185363.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A187101.P13225097638393114850

`∩[A228056(n+1), A392696(n+1)]`
-/

namespace A187101.P13225097638393114850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228056 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392696 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A187101.P13225097638393114850

noncomputable section

/-- A187101: Numbers whose largest proper divisor is a square.

Offset 1, canonical program `A187101.P13225097638393114850`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 477 terms. -/
def A187101 (n : ℕ) : ℤ :=
  (A187101.P13225097638393114850.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 477 terms. -/
def A187101.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A191002.P17774142683052749299

`(n+1)*A003961(n+1)`
-/

namespace A191002.P17774142683052749299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A003961 (n + 1)

end

end A191002.P17774142683052749299

noncomputable section

/-- A191002: Completely multiplicative function with a(prime(k)) = prime(k)*prime(k+1).

Offset 1, canonical program `A191002.P17774142683052749299`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A191002 (n : ℕ) : ℤ :=
  A191002.P17774142683052749299.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A191002.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A191450.P11542416564399414876

`A254051(A038722(n+1))`
-/

namespace A191450.P11542416564399414876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254051 (A038722 (n + 1)).toNat

end

end A191450.P11542416564399414876

noncomputable section

/-- A191450: Dispersion of (3*n-1), read by antidiagonals.

Offset 1, canonical program `A191450.P11542416564399414876`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A254051, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A191450 (n : ℕ) : ℤ :=
  A191450.P11542416564399414876.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A254051, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A191450.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A191451.P6353593026403960251

`abs(A191450(1+n)-A068911(A198954(n)))`
-/

namespace A191451.P6353593026403960251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A191450 (1 + n) - A068911 (A198954 n).toNat|

end

end A191451.P6353593026403960251

noncomputable section

/-- A191451: Dispersion of (3*n-2), for n>=2, by antidiagonals.

Offset 1, canonical program `A191451.P6353593026403960251`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 153 terms. -/
def A191451 (n : ℕ) : ℤ :=
  A191451.P6353593026403960251.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 153 terms. -/
def A191451.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A206296.P17129788449905308235

`A003961(a(n-1))*a(n-2)` with `a(0)=1, a(1)=2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A206296.P17129788449905308235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A003961 (a (n - 1)).toNat * a (n - 2)

end

end A206296.P17129788449905308235

noncomputable section

/-- A206296: Prime factorization representation of Fibonacci polynomials: a(0) = 1, a(1) = 2, and for n > 1, a(n) = A003961(a(n-1)) * a(n-2).

Offset 0, canonical program `A206296.P17129788449905308235`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A206296 (n : ℕ) : ℤ :=
  A206296.P17129788449905308235.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A206296.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A243056.P15772004773289888384

`A243055(n+1)+A049084(n+1)`
-/

namespace A243056.P15772004773289888384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243055 (n + 1) + A049084 (n + 1)

end

end A243056.P15772004773289888384

noncomputable section

/-- A243056: If n is the i-th prime, p_i = A000040(i), then a(n) = i, otherwise the difference between the indices of the smallest and the largest prime dividing n: for n = p_i * ... * p_k, where p_i <= ... <= p_k, a(n) = (k-i); a(1) = 0 by convention.

Offset 1, canonical program `A243056.P15772004773289888384`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A243056 (n : ℕ) : ℤ :=
  A243056.P15772004773289888384.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A243056.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A244967.P9468410199705462311

`A141285(n+1)-1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A244967.P9468410199705462311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141285 (n + 1) - 1

end

end A244967.P9468410199705462311

noncomputable section

/-- A244967: A141285(n) - 1.

Offset 1, canonical program `A244967.P9468410199705462311`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A141285, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A244967 (n : ℕ) : ℤ :=
  A244967.P9468410199705462311.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A141285, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A244967.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A245564.P14365681278449522354

`A253064(n)/A001316(n)`
-/

namespace A245564.P14365681278449522354
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A253064 n : ℚ) / (A001316 n : ℚ)

end

end A245564.P14365681278449522354

noncomputable section

/-- A245564: a(n) = Product_{i in row n of A245562} Fibonacci(i+2).

Offset 0, canonical program `A245564.P14365681278449522354`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A245564 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A245564.P14365681278449522354.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A245564.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A246028.P8741333918522624492

`A245564(and(n, 2*n))`
-/

namespace A246028.P8741333918522624492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245564 (Nat.land n (2 * n))

end

end A246028.P8741333918522624492

noncomputable section

/-- A246028: a(n) = Product_{i in row n of A245562} Fibonacci(i+1).

Offset 0, canonical program `A246028.P8741333918522624492`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A246028 (n : ℕ) : ℤ :=
  A246028.P8741333918522624492.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A246028.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A246269.P7585923862198389886

`A065338(A003961(n+1))`
-/

namespace A246269.P7585923862198389886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065338 (A003961 (n + 1)).toNat

end

end A246269.P7585923862198389886

noncomputable section

/-- A246269: a(1) = 1, a(p(k)) = p(k+1) mod 4 for k-th prime p(k) and a(u * v) = a(u) * a(v) for u, v > 0.

Offset 1, canonical program `A246269.P7585923862198389886`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, A065338, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A246269 (n : ℕ) : ℤ :=
  A246269.P7585923862198389886.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, A065338, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A246269.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A246270.P10934646517681247770

`A065339(A003961(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A246270.P10934646517681247770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065339 (A003961 (n + 1)).toNat

end

end A246270.P10934646517681247770

noncomputable section

/-- A246270: Number of prime factors of the form 4k+3 (counted with multiplicity) in A003961(n): a(n) = A065339(A003961(n)).

Offset 1, canonical program `A246270.P10934646517681247770`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, A065339, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A246270 (n : ℕ) : ℤ :=
  A246270.P10934646517681247770.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, A065339, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A246270.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A246281.P3833940699432057348

`lt[A349573(n+1), 1]+1`
-/

namespace A246281.P3833940699432057348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349573 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A246281.P3833940699432057348

noncomputable section

/-- A246281: Numbers k for which A003961(k) < 2*k; Numbers n such that if n = product_{k >= 1} (p_k)^(c_k), then product_{k >= 1} (p_{k+1})^(c_k) < 2*n, where p_k indicates the k-th prime, A000040(k).

Offset 1, canonical program `A246281.P3833940699432057348`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9281 terms. -/
def A246281 (n : ℕ) : ℤ :=
  (A246281.P3833940699432057348.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9281 terms. -/
def A246281.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A246282.P13261184401000594775

`lt[0, A349573(n+1)]+1`
-/

namespace A246282.P13261184401000594775
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349573 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A246282.P13261184401000594775

noncomputable section

/-- A246282: Numbers k for which A003961(k) > 2*k; numbers n such that if n = Product_{k >= 1} (p_k)^(c_k), then Product_{k >= 1} (p_{k+1})^(c_k) > 2*n, where p_k indicates the k-th prime, A000040(k).

Offset 1, canonical program `A246282.P13261184401000594775`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A246282 (n : ℕ) : ℤ :=
  (A246282.P13261184401000594775.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A246282.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A246351.P7823119057328341782

`lt[A349573(n+1), 0]+1`
-/

namespace A246351.P7823119057328341782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349573 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A246351.P7823119057328341782

noncomputable section

/-- A246351: Numbers k such that A048673(k) < k.

Offset 1, canonical program `A246351.P7823119057328341782`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9273 terms. -/
def A246351 (n : ℕ) : ℤ :=
  (A246351.P7823119057328341782.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9273 terms. -/
def A246351.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A249735.P12424842754456983110

`A003961(2*n+1)`
-/

namespace A249735.P12424842754456983110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (2 * n + 1)

end

end A249735.P12424842754456983110

noncomputable section

/-- A249735: Odd bisection of A003961: Replace in 2n-1 each prime factor p(k) with prime p(k+1).

Offset 1, canonical program `A249735.P12424842754456983110`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A249735 (n : ℕ) : ℤ :=
  A249735.P12424842754456983110.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A249735.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A250475.P1711955414110411510

`A249824(A249825(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A250475.P1711955414110411510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249824 (A249825 (n + 1)).toNat

end

end A250475.P1711955414110411510

noncomputable section

/-- A250475: Permutation of natural numbers: a(n) = A249824(A249825(n)).

Offset 1, canonical program `A250475.P1711955414110411510`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A249824, A249825, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A250475 (n : ℕ) : ℤ :=
  A250475.P1711955414110411510.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A249824, A249825, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A250475.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A250476.P6338447220032486221

`fo[A250475(n+1)-1]+1`
-/

namespace A250476.P6338447220032486221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250475 (n + 1) - 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (n : ℤ)) 0 + 1

end

end A250476.P6338447220032486221

noncomputable section

/-- A250476: Permutation of natural numbers: a(n) = A249826(A249823(n)).

Offset 1, canonical program `A250476.P6338447220032486221`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2041 terms. -/
def A250476 (n : ℕ) : ℤ :=
  (A250476.P6338447220032486221.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2041 terms. -/
def A250476.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A252742.P12034946379470004791

`1-round((n+1)/A003961(n+1))`
-/

namespace A252742.P12034946379470004791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A003961 (n + 1) : ℚ))

end

end A252742.P12034946379470004791

noncomputable section

/-- A252742: Characteristic function of A246282: if A003961(n) > 2*n, then a(n) = 1, otherwise 0 (when A003961(n) < 2*n) [where A003961(n) shifts the prime factorization of n one step towards larger primes].

Offset 1, canonical program `A252742.P12034946379470004791`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A252742 (n : ℕ) : ℤ :=
  A252742.P12034946379470004791.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A252742.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A252743.P13320950522193927286

`A252742(A005940(1+n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A252743.P13320950522193927286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252742 (A005940 (1 + n)).toNat

end

end A252743.P13320950522193927286

noncomputable section

/-- A252743: a(n) = A252742(A005940(1+n)).

Offset 0, canonical program `A252743.P13320950522193927286`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005940, A252742, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A252743 (n : ℕ) : ℤ :=
  A252743.P13320950522193927286.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005940, A252742, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A252743.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A252744.P2309875151662509228

`A252742(A163511(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A252744.P2309875151662509228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252742 (A163511 n).toNat

end

end A252744.P2309875151662509228

noncomputable section

/-- A252744: a(n) = A252742(A163511(n)).

Offset 0, canonical program `A252744.P2309875151662509228`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A163511, A252742, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A252744 (n : ℕ) : ℤ :=
  A252744.P2309875151662509228.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A163511, A252742, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A252744.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A252748.P2216043875100614995

`A003961(n+1)-2*(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A252748.P2216043875100614995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (n + 1) - (2 * (n + 1) : ℤ)

end

end A252748.P2216043875100614995

noncomputable section

/-- A252748: a(n) = A003961(n) - 2*n.

Offset 1, canonical program `A252748.P2216043875100614995`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A252748 (n : ℕ) : ℤ :=
  A252748.P2216043875100614995.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A252748.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A252749.P15054942815197957636

`A252748(n)+a(n-1)` with `a(0)=0`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A252749.P15054942815197957636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A252748 n + a (n - 1)

end

end A252749.P15054942815197957636

noncomputable section

/-- A252749: Partial sums of A252748: a(0) = 0, a(n) = A252748(n) + a(n-1).

Offset 0, canonical program `A252749.P15054942815197957636`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A252748, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A252749 (n : ℕ) : ℤ :=
  A252749.P15054942815197957636.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A252748, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A252749.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A252750.P6670767502219585743

`A003961(A005940(n+1))-2*A005940(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A252750.P6670767502219585743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (A005940 (n + 1)).toNat - 2 * A005940 (n + 1)

end

end A252750.P6670767502219585743

noncomputable section

/-- A252750: a(n) = A003961(A005940(n+1)) - 2 * A005940(n+1).

Offset 0, canonical program `A252750.P6670767502219585743`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, A005940, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A252750 (n : ℕ) : ℤ :=
  A252750.P6670767502219585743.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, A005940, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A252750.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A252751.P3019683754980594127

`A252750(n)+a(n-1)` with `a(0)=0`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A252751.P3019683754980594127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A252750 n + a (n - 1)

end

end A252751.P3019683754980594127

noncomputable section

/-- A252751: Partial sums of A252750: a(0) = 0; for >= 1: a(n) = A252750(n) + a(n-1).

Offset 0, canonical program `A252751.P3019683754980594127`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A252750, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A252751 (n : ℕ) : ℤ :=
  A252751.P3019683754980594127.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A252750, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A252751.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A253888.P15601790145493283078

`A048673(A003961(A064216(A302848(A064216(n+1)))))`
-/

namespace A253888.P15601790145493283078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048673 (A003961 (A064216 (A302848 (A064216 (n + 1)).toNat).toNat).toNat).toNat

end

end A253888.P15601790145493283078

noncomputable section

/-- A253888: a(0) = 1; for n >= 1: a(n) = A048673(1+(2*A064216(n))).

Offset 0, canonical program `A253888.P15601790145493283078`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2505 terms. -/
def A253888 (n : ℕ) : ℤ :=
  A253888.P15601790145493283078.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2505 terms. -/
def A253888.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A254055.P13335281093874176141

`ceil(A254101(1+n)/2)`
-/

namespace A254055.P13335281093874176141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A254101 (1 + n) : ℚ) / 2⌉

end

end A254055.P13335281093874176141

noncomputable section

/-- A254055: Square array: A(row,col) = A003602(A254051(row,col)), read by antidiagonals A(1,1), A(1,2), A(2,1), A(1,3), A(2,2), A(3,1), ...

Offset 1, canonical program `A254055.P13335281093874176141`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A254055 (n : ℕ) : ℤ :=
  A254055.P13335281093874176141.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A254055.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A265408.P18241322525872121723

`A003961(a(n-1))*a(A265409(n))` with `a(0)=1, a(1)=2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A265408.P18241322525872121723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A003961 (a (n - 1)).toNat * a (A265409 n).toNat

end

end A265408.P18241322525872121723

noncomputable section

/-- A265408: Prime factorization representation of Spironacci polynomials: a(0) = 1, a(1) = 2, and for n > 1, a(n) = A003961(a(n-1)) * a(A265409(n)).

Offset 0, canonical program `A265408.P18241322525872121723`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, A265409, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A265408 (n : ℕ) : ℤ :=
  A265408.P18241322525872121723.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, A265409, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A265408.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A266402.P4456686432549101179

`A064989(A030101(A003961(n+1)))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A266402.P4456686432549101179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (A030101 (A003961 (n + 1)).toNat).toNat

end

end A266402.P4456686432549101179

noncomputable section

/-- A266402: Self-inverse permutation of natural numbers: a(n) = A064989(A030101(A003961(n))).

Offset 1, canonical program `A266402.P4456686432549101179`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, A030101, A064989, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A266402 (n : ℕ) : ℤ :=
  A266402.P4456686432549101179.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, A030101, A064989, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A266402.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A268385.P2208816204279759691

`A000079(A193231(A007814(n+1)))*A003961(a(A064989(n+1)-1))` with `a(0)=1`
-/

namespace A268385.P2208816204279759691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000079 (A193231 (A007814 (n + 1)).toNat).toNat * A003961 (a (A064989 (n + 1) - 1).toNat).toNat

end

end A268385.P2208816204279759691

noncomputable section

/-- A268385: a(1) = 1, for n > 1, a(n) = A020639(n)^A193231(A067029(n)) * a(A028234(n)).

Offset 1, canonical program `A268385.P2208816204279759691`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, A064989, A193231, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A268385 (n : ℕ) : ℤ :=
  A268385.P2208816204279759691.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, A064989, A193231, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A268385.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A268392.P14769113211914111169

`A268385(A084400(2+n))`
-/

namespace A268392.P14769113211914111169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268385 (A084400 (2 + n)).toNat

end

end A268392.P14769113211914111169

noncomputable section

/-- A268392: a(n) = A268385(A050376(n)).

Offset 1, canonical program `A268392.P14769113211914111169`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1938 terms. -/
def A268392 (n : ℕ) : ℤ :=
  A268392.P14769113211914111169.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1938 terms. -/
def A268392.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A275024.P5861283572822886658

`∑{e}[A064553(n+1), #]`
-/

namespace A275024.P5861283572822886658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064553 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A275024.P5861283572822886658

noncomputable section

/-- A275024: Total weight of the n-th twice-prime-factored multiset partition.

Offset 1, canonical program `A275024.P5861283572822886658`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A275024 (n : ℕ) : ℤ :=
  (A275024.P5861283572822886658.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A275024.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A276147.P3863247289175613570

`A003961(A329900(n+1))*A328478(n+1)`
-/

namespace A276147.P3863247289175613570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (A329900 (n + 1)).toNat * A328478 (n + 1)

end

end A276147.P3863247289175613570

noncomputable section

/-- A276147: a(2n+1) = 2n+1, a(2n) = A053669(2n) * a(A111701(2n)).

Offset 1, canonical program `A276147.P3863247289175613570`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2310 terms. -/
def A276147 (n : ℕ) : ℤ :=
  A276147.P3863247289175613570.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2310 terms. -/
def A276147.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A276148.P6264353363301958697

`A276147(2*(n+1))`
-/

namespace A276148.P6264353363301958697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276147 (2 * (n + 1))

end

end A276148.P6264353363301958697

noncomputable section

/-- A276148: Even bisection of A276147.

Offset 1, canonical program `A276148.P6264353363301958697`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A276147, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A276148 (n : ℕ) : ℤ :=
  A276148.P6264353363301958697.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A276147, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A276148.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A276938.P13090476242349781545

`A003961(A276937(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A276938.P13090476242349781545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (A276937 (n + 1)).toNat

end

end A276938.P13090476242349781545

noncomputable section

/-- A276938: Second row of A276941: a(n) = A003961(A276937(n)).

Offset 1, canonical program `A276938.P13090476242349781545`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, A276937, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A276938 (n : ℕ) : ℤ :=
  A276938.P13090476242349781545.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, A276937, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A276938.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A283980.P7159182790163433340

`A003961(n+1)*A006519(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A283980.P7159182790163433340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (n + 1) * A006519 (n + 1)

end

end A283980.P7159182790163433340

noncomputable section

/-- A283980: a(n) = A003961(n)*A006519(n).

Offset 1, canonical program `A283980.P7159182790163433340`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A283980 (n : ℕ) : ℤ :=
  A283980.P7159182790163433340.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A283980.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A286371.P6950233767271759210

`A286369(A003961(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A286371.P6950233767271759210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286369 (A003961 (n + 1)).toNat

end

end A286371.P6950233767271759210

noncomputable section

/-- A286371: a(n) = A286369(A003961(n)).

Offset 1, canonical program `A286371.P6950233767271759210`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, A286369, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A286371 (n : ℕ) : ℤ :=
  A286371.P6950233767271759210.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, A286369, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A286371.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A286385.P7583078268767377745

`A003961(n+1)-A000203(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A286385.P7583078268767377745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (n + 1) - A000203 (n + 1)

end

end A286385.P7583078268767377745

noncomputable section

/-- A286385: a(n) = A003961(n) - A000203(n).

Offset 1, canonical program `A286385.P7583078268767377745`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A286385 (n : ℕ) : ℤ :=
  A286385.P7583078268767377745.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A286385.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A292271.P4451470568841399788

`A292385(A163511(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A292271.P4451470568841399788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292385 (A163511 n).toNat

end

end A292271.P4451470568841399788

noncomputable section

/-- A292271: a(n) = A292385(A163511(n)).

Offset 0, canonical program `A292271.P4451470568841399788`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A163511, A292385, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A292271 (n : ℕ) : ℤ :=
  A292271.P4451470568841399788.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A163511, A292385, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A292271.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A292274.P11388494281818310265

`A292383(A163511(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A292274.P11388494281818310265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292383 (A163511 n).toNat

end

end A292274.P11388494281818310265

noncomputable section

/-- A292274: a(n) = A292383(A163511(n)).

Offset 0, canonical program `A292274.P11388494281818310265`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A163511, A292383, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A292274 (n : ℕ) : ℤ :=
  A292274.P11388494281818310265.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A163511, A292383, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A292274.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A293442.P10456637239250951956

`2^A162642(n+1)*A003961(a(A000188(n+1)-1))` with `a(0)=1`
-/

namespace A293442.P10456637239250951956
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (2 : ℚ) ^ (A162642 (n + 1) : ℤ) * (A003961 (SequenceMachineLib.roundAway (a (A000188 (n + 1) - 1).toNat)).toNat : ℚ)

end

end A293442.P10456637239250951956

noncomputable section

/-- A293442: Multiplicative with a(p^e) = A019565(e).

Offset 1, canonical program `A293442.P10456637239250951956`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A293442 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A293442.P10456637239250951956.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A293442.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A293444.P2340337305881596205

`A293442(A293442(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A293444.P2340337305881596205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293442 (A293442 (n + 1)).toNat

end

end A293444.P2340337305881596205

noncomputable section

/-- A293444: a(n) = A293442(A293442(n)), where A293442 is multiplicative with a(p^e) = A019565(e).

Offset 1, canonical program `A293444.P2340337305881596205`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A293442, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A293444 (n : ℕ) : ℤ :=
  A293444.P2340337305881596205.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A293442, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A293444.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A295892.P17225918726782502796

`A000035(1+A000120(n+1)+A000120(A003961(n+1)))`
-/

namespace A295892.P17225918726782502796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (1 + A000120 (n + 1) + A000120 (A003961 (n + 1)).toNat).toNat

end

end A295892.P17225918726782502796

noncomputable section

/-- A295892: a(n) = 1 if binary weights of n and A003961(n) are of the same parity, 0 otherwise.

Offset 1, canonical program `A295892.P17225918726782502796`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A295892 (n : ℕ) : ℤ :=
  A295892.P17225918726782502796.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A295892.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A297173.P2608014564017656804

`gcd(A243055(A140211(n+1)), A243055(n+1))`
-/

namespace A297173.P2608014564017656804
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A243055 (A140211 (n + 1)).toNat) (A243055 (n + 1))

end

end A297173.P2608014564017656804

noncomputable section

/-- A297173: Smallest difference between indices of prime divisors of n, or 0 if n is a prime power.

Offset 1, canonical program `A297173.P2608014564017656804`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 104 terms. -/
def A297173 (n : ℕ) : ℤ :=
  (A297173.P2608014564017656804.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 104 terms. -/
def A297173.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A318321.P3593742784170705023

`A003961(n+1)*A046643(n+1)`
-/

namespace A318321.P3593742784170705023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (n + 1) * A046643 (n + 1)

end

end A318321.P3593742784170705023

noncomputable section

/-- A318321: Numerators of rational valued sequence whose Dirichlet convolution with itself yields A003961.

Offset 1, canonical program `A318321.P3593742784170705023`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A318321 (n : ℕ) : ℤ :=
  A318321.P3593742784170705023.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A318321.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A318510.P6431562738860432705

`A318509(A003961(n+1))`
-/

namespace A318510.P6431562738860432705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318509 (A003961 (n + 1)).toNat

end

end A318510.P6431562738860432705

noncomputable section

/-- A318510: Completely multiplicative with a(prime(k)) = A002487(prime(k+1)).

Offset 1, canonical program `A318510.P6431562738860432705`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, A318509, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A318510 (n : ℕ) : ℤ :=
  A318510.P6431562738860432705.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, A318509, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A318510.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A322361.P3851522847531199506

`gcd(n+1, A003961(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A322361.P3851522847531199506
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A003961 (n + 1))

end

end A322361.P3851522847531199506

noncomputable section

/-- A322361: a(n) = gcd(n, A003961(n)), where A003961 is completely multiplicative with a(prime(k)) = prime(k+1).

Offset 1, canonical program `A322361.P3851522847531199506`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A322361 (n : ℕ) : ℤ :=
  (A322361.P3851522847531199506.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A322361.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A325198.P878202517069305870

`eq[2, A243055(n+1)]+1`
-/

namespace A325198.P878202517069305870
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243055 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A325198.P878202517069305870

noncomputable section

/-- A325198: Positive numbers whose maximum prime index minus minimum prime index is 2.

Offset 1, canonical program `A325198.P878202517069305870`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 164 terms. -/
def A325198 (n : ℕ) : ℤ :=
  (A325198.P878202517069305870.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 164 terms. -/
def A325198.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A326042.P2058556130283876528

`A064989(A000203(A003961(n+1)))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A326042.P2058556130283876528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (A000203 (A003961 (n + 1)).toNat).toNat

end

end A326042.P2058556130283876528

noncomputable section

/-- A326042: a(n) = A064989(sigma(A003961(n))), where A003961 shifts the prime factorization of n one step towards larger primes, and A064989 shifts it back towards smaller primes.

Offset 1, canonical program `A326042.P2058556130283876528`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, A064989, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A326042 (n : ℕ) : ℤ :=
  A326042.P2058556130283876528.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, A064989, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A326042.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A326057.P18334027102489358810

`gcd(A003961(n+1)-2*(n+1), A003961(n+1)-A000203(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A326057.P18334027102489358810
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003961 (n + 1) - (2 * (n + 1) : ℤ)) (A003961 (n + 1) - A000203 (n + 1))

end

end A326057.P18334027102489358810

noncomputable section

/-- A326057: a(n) = gcd(A003961(n)-2n, A003961(n)-sigma(n)), where A003961(n) is fully multiplicative function with a(prime(k)) = prime(k+1).

Offset 1, canonical program `A326057.P18334027102489358810`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A326057 (n : ℕ) : ℤ :=
  (A326057.P18334027102489358810.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A326057.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A328915.P8931346115236859548

`A007947(A003961(n+1))`
-/

namespace A328915.P8931346115236859548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A003961 (n + 1)).toNat

end

end A328915.P8931346115236859548

noncomputable section

/-- A328915: If n = Product (p_j^k_j) then a(n) = Product (nextprime(p_j)), where nextprime = A151800.

Offset 1, canonical program `A328915.P8931346115236859548`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A328915 (n : ℕ) : ℤ :=
  A328915.P8931346115236859548.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A328915.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A331310.P15036600505263651020

`gcd(n+1, A293442(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A331310.P15036600505263651020
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A293442 (n + 1))

end

end A331310.P15036600505263651020

noncomputable section

/-- A331310: a(n) = gcd(n, A293442(n)).

Offset 1, canonical program `A331310.P15036600505263651020`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A293442, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A331310 (n : ℕ) : ℤ :=
  (A331310.P15036600505263651020.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A293442, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A331310.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A333217.P10809682827524773043

`lt[A079067(A333219(1+n)), 1]`
-/

namespace A333217.P10809682827524773043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079067 (A333219 (1 + n)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A333217.P10809682827524773043

noncomputable section

/-- A333217: Numbers k such that the k-th composition in standard order covers an initial interval of positive integers.

Offset 1, canonical program `A333217.P10809682827524773043`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1008 terms. -/
def A333217 (n : ℕ) : ℤ :=
  (A333217.P10809682827524773043.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1008 terms. -/
def A333217.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A334863.P12100679385437782938

`A064097(A003961(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A334863.P12100679385437782938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064097 (A003961 (n + 1)).toNat

end

end A334863.P12100679385437782938

noncomputable section

/-- A334863: a(n) = A064097(A003961(n)).

Offset 1, canonical program `A334863.P12100679385437782938`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, A064097, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A334863 (n : ℕ) : ℤ :=
  A334863.P12100679385437782938.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, A064097, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A334863.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A334864.P1367221112009939634

`A064097(A003961(n+1))-A064097(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A334864.P1367221112009939634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064097 (A003961 (n + 1)).toNat - A064097 (n + 1)

end

end A334864.P1367221112009939634

noncomputable section

/-- A334864: a(n) = A064097(A003961(n)) - A064097(n).

Offset 1, canonical program `A334864.P1367221112009939634`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, A064097, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A334864 (n : ℕ) : ℤ :=
  A334864.P1367221112009939634.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, A064097, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A334864.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A336835.P9061713895655417858

`A294936(A003961(n+1))+A294936(n+1)`
-/

namespace A336835.P9061713895655417858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294936 (A003961 (n + 1)).toNat + A294936 (n + 1)

end

end A336835.P9061713895655417858

noncomputable section

/-- A336835: Number of iterations of x -> A003961(x) needed before the result is deficient (sigma(x) < 2x), when starting from x=n.

Offset 1, canonical program `A336835.P9061713895655417858`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2047 terms. -/
def A336835 (n : ℕ) : ℤ :=
  A336835.P9061713895655417858.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2047 terms. -/
def A336835.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A336838.P8565209777362080832

`A057020(A003961(n+1))`
-/

namespace A336838.P8565209777362080832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057020 (A003961 (n + 1)).toNat

end

end A336838.P8565209777362080832

noncomputable section

/-- A336838: Numerator of the arithmetic mean of the divisors of A003961(n).

Offset 1, canonical program `A336838.P8565209777362080832`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A336838 (n : ℕ) : ℤ :=
  A336838.P8565209777362080832.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A336838.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A336839.P11553326894089779945

`A057021(A003961(n+1))`
-/

namespace A336839.P11553326894089779945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057021 (A003961 (n + 1)).toNat

end

end A336839.P11553326894089779945

noncomputable section

/-- A336839: Denominator of the arithmetic mean of the divisors of A003961(n).

Offset 1, canonical program `A336839.P11553326894089779945`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A336839 (n : ℕ) : ℤ :=
  A336839.P11553326894089779945.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A336839.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A336842.P8840037860068940282

`A007814(1+A003961(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A336842.P8840037860068940282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (1 + A003961 (n + 1)).toNat

end

end A336842.P8840037860068940282

noncomputable section

/-- A336842: Number of trailing 1-bits in the binary representation of A003961(n): a(n) = A007814(1+A003961(n)).

Offset 1, canonical program `A336842.P8840037860068940282`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A336842 (n : ℕ) : ℤ :=
  A336842.P8840037860068940282.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A336842.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A336844.P6459901798776764731

`A336698(A003961(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A336844.P6459901798776764731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336698 (A003961 (n + 1)).toNat

end

end A336844.P6459901798776764731

noncomputable section

/-- A336844: a(n) = A336698(A003961(n)).

Offset 1, canonical program `A336844.P6459901798776764731`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A336844 (n : ℕ) : ℤ :=
  A336844.P6459901798776764731.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A336844.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A336845.P11271818747595827461

`A000005(n+1)*A003961(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A336845.P11271818747595827461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) * A003961 (n + 1)

end

end A336845.P11271818747595827461

noncomputable section

/-- A336845: a(n) = A000005(n) * A003961(n), where A003961 is the prime shift towards larger primes, and A000005 gives the number of divisors of n, and also of A003961(n).

Offset 1, canonical program `A336845.P11271818747595827461`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A336845 (n : ℕ) : ℤ :=
  A336845.P11271818747595827461.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A336845.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A336846.P388242436168297548

`gcd(A000203(A003961(n+1)), A000005(n+1)*A003961(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A336846.P388242436168297548
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000203 (A003961 (n + 1)).toNat) (A000005 (n + 1) * A003961 (n + 1))

end

end A336846.P388242436168297548

noncomputable section

/-- A336846: a(n) = gcd(sigma(A003961(n)), A000005(n)*A003961(n)).

Offset 1, canonical program `A336846.P388242436168297548`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A336846 (n : ℕ) : ℤ :=
  (A336846.P388242436168297548.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A336846.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A336847.P10873545021579543233

`A003973(n+1)-A336846(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A336847.P10873545021579543233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003973 (n + 1) - A336846 (n + 1)

end

end A336847.P10873545021579543233

noncomputable section

/-- A336847: a(n) = A003973(n) - A336846(n).

Offset 1, canonical program `A336847.P10873545021579543233`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003973, A336846, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A336847 (n : ℕ) : ℤ :=
  A336847.P10873545021579543233.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003973, A336846, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A336847.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A336848.P11409207554523116840

`A003973(n+1)/A336846(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A336848.P11409207554523116840
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003973 (n + 1) : ℚ) / (A336846 (n + 1) : ℚ)

end

end A336848.P11409207554523116840

noncomputable section

/-- A336848: a(n) = A003973(n) / A336846(n).

Offset 1, canonical program `A336848.P11409207554523116840`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003973, A336846, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A336848 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A336848.P11409207554523116840.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003973, A336846, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A336848.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A336849.P6112679595888065368

`A017666(A003961(n+1))`
-/

namespace A336849.P6112679595888065368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017666 (A003961 (n + 1)).toNat

end

end A336849.P6112679595888065368

noncomputable section

/-- A336849: a(n) = A003961(n) / gcd(A003961(n), sigma(A003961(n))), where A003961 is the prime shift towards larger primes.

Offset 1, canonical program `A336849.P6112679595888065368`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, A017666, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A336849 (n : ℕ) : ℤ :=
  A336849.P6112679595888065368.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, A017666, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A336849.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A336850.P501632479061502226

`gcd(A003961(n+1), A000203(A003961(n+1)))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A336850.P501632479061502226
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003961 (n + 1)) (A000203 (A003961 (n + 1)).toNat)

end

end A336850.P501632479061502226

noncomputable section

/-- A336850: a(n) = gcd(A003961(n), sigma(A003961(n))), where A003961 is the prime shift towards larger primes.

Offset 1, canonical program `A336850.P501632479061502226`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A336850 (n : ℕ) : ℤ :=
  (A336850.P501632479061502226.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A336850.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A336851.P12982912948484651023

`A000203(A003961(n+1))-A003961(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A336851.P12982912948484651023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A003961 (n + 1)).toNat - A003961 (n + 1)

end

end A336851.P12982912948484651023

noncomputable section

/-- A336851: a(n) = sigma(A003961(n)) - A003961(n), where A003961 is a prime shift towards larger primes, sigma is the sum of divisors.

Offset 1, canonical program `A336851.P12982912948484651023`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A336851 (n : ℕ) : ℤ :=
  A336851.P12982912948484651023.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A336851.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A336852.P16576241349635200560

`A000203(A003961(n+1))-A000203(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A336852.P16576241349635200560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A003961 (n + 1)).toNat - A000203 (n + 1)

end

end A336852.P16576241349635200560

noncomputable section

/-- A336852: a(n) = sigma(A003961(n)) - sigma(n).

Offset 1, canonical program `A336852.P16576241349635200560`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A336852 (n : ℕ) : ℤ :=
  A336852.P16576241349635200560.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A336852.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A336853.P17153510744129978778

`A003961(n+1)-(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A336853.P17153510744129978778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (n + 1) - (n + 1 : ℤ)

end

end A336853.P17153510744129978778

noncomputable section

/-- A336853: a(n) = A003961(n) - n, where A003961 is the prime shift towards larger primes.

Offset 1, canonical program `A336853.P17153510744129978778`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A336853 (n : ℕ) : ℤ :=
  A336853.P17153510744129978778.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A336853.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A336856.P10996703592660352307

`gcd(A000005(n+1), A003973(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A336856.P10996703592660352307
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000005 (n + 1)) (A003973 (n + 1))

end

end A336856.P10996703592660352307

noncomputable section

/-- A336856: Prime-shifted analog of gcd(d(n), sigma(n)): a(n) = gcd(A000005(n), A003973(n)).

Offset 1, canonical program `A336856.P10996703592660352307`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003973, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A336856 (n : ℕ) : ℤ :=
  (A336856.P10996703592660352307.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003973, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A336856.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A336918.P5520413630927090975

`eq[1, A336839(1+n)]+1`
-/

namespace A336918.P5520413630927090975
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336839 (1 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A336918.P5520413630927090975

noncomputable section

/-- A336918: Numbers k such that A000005(k) divides A003973(k); numbers k for which A336839(k) = 1.

Offset 1, canonical program `A336918.P5520413630927090975`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A336918 (n : ℕ) : ℤ :=
  (A336918.P5520413630927090975.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A336918.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A336919.P8980509711614269143

`lt[1, A336839(n+1)]+1`
-/

namespace A336919.P8980509711614269143
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336839 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A336919.P8980509711614269143

noncomputable section

/-- A336919: Numbers k such that A000005(k) does not divide A003973(k); numbers k for which A336839(k) > 1.

Offset 1, canonical program `A336919.P8980509711614269143`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5685 terms. -/
def A336919 (n : ℕ) : ℤ :=
  (A336919.P8980509711614269143.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5685 terms. -/
def A336919.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A336932.P5144224243810443017

`A336937(A003961(n+1))`
-/

namespace A336932.P5144224243810443017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336937 (A003961 (n + 1)).toNat

end

end A336932.P5144224243810443017

noncomputable section

/-- A336932: The 2-adic valuation of A003973(n), the sum of divisors of prime shifted n.

Offset 1, canonical program `A336932.P5144224243810443017`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A336932 (n : ℕ) : ℤ :=
  A336932.P5144224243810443017.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A336932.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A337335.P16507265626637162204

`gcd(A048673(n+1), 1+A003973(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A337335.P16507265626637162204
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A048673 (n + 1)) (1 + A003973 (n + 1))

end

end A337335.P16507265626637162204

noncomputable section

/-- A337335: a(n) = gcd(A048673(n), 1+A003973(n)).

Offset 1, canonical program `A337335.P16507265626637162204`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003973, A048673, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A337335 (n : ℕ) : ℤ :=
  (A337335.P16507265626637162204.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003973, A048673, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A337335.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A337337.P7440096239031397272

`A337335((n+1)²)`
-/

namespace A337337.P7440096239031397272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337335 ((n + 1) ^ 2)

end

end A337337.P7440096239031397272

noncomputable section

/-- A337337: a(n) = gcd(1+sigma(s), (s+1)/2), where s is the square of n once prime-shifted (s = A003961(n)^2 = A003961(n^2)).

Offset 1, canonical program `A337337.P7440096239031397272`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A337335, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A337337 (n : ℕ) : ℤ :=
  A337337.P7440096239031397272.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A337335, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A337337.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A337338.P8319227600971306024

`A337194(A003961(n+1)²)/A337337(n+1)`
-/

namespace A337338.P8319227600971306024
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A337194 (A003961 (n + 1) ^ 2).toNat : ℚ) / (A337337 (n + 1) : ℚ)

end

end A337338.P8319227600971306024

noncomputable section

/-- A337338: Numerator of (1+sigma(s)) / ((s+1)/2), where s is the square of n prime-shifted once (s = A003961(n)^2 = A003961(n^2)).

Offset 1, canonical program `A337338.P8319227600971306024`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, A337337, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A337338 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A337338.P8319227600971306024.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, A337337, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A337338.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A337339.P4042521456947446519

`A337336(n+1)/A337337(n+1)`
-/

namespace A337339.P4042521456947446519
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A337336 (n + 1) : ℚ) / (A337337 (n + 1) : ℚ)

end

end A337339.P4042521456947446519

noncomputable section

/-- A337339: Denominator of (1+sigma(s)) / ((s+1)/2), where s is the square of n prime-shifted once (s = A003961(n)^2 = A003961(n^2)).

Offset 1, canonical program `A337339.P4042521456947446519`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A337336, A337337, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A337339 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A337339.P4042521456947446519.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A337336, A337337, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A337339.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A337340.P276399523375729777

`(A337339(n+1)-A003961(n+1))/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A337340.P276399523375729777
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A337339 (n + 1) - A003961 (n + 1) : ℚ) / 2

end

end A337340.P276399523375729777

noncomputable section

/-- A337340: a(n) = (A337339(n)-A003961(n)) / 2.

Offset 1, canonical program `A337340.P276399523375729777`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, A337339, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A337340 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A337340.P276399523375729777.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, A337339, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A337340.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A337341.P5889933687803878944

`A337339(n+1)-(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A337341.P5889933687803878944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337339 (n + 1) - (n + 1 : ℤ)

end

end A337341.P5889933687803878944

noncomputable section

/-- A337341: a(n) = A337339(n) - n.

Offset 1, canonical program `A337341.P5889933687803878944`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A337339, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A337341 (n : ℕ) : ℤ :=
  A337341.P5889933687803878944.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A337339, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A337341.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A337373.P17490337404233629993

`lt[2*n, A336853(n+1)]+1`
-/

namespace A337373.P17490337404233629993
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336853 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A337373.P17490337404233629993

noncomputable section

/-- A337373: Numbers k for which A003961(k) > 3*k.

Offset 1, canonical program `A337373.P17490337404233629993`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5479 terms. -/
def A337373 (n : ℕ) : ℤ :=
  (A337373.P17490337404233629993.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5479 terms. -/
def A337373.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A337374.P5490490073902702338

`lt[n, A349573(abs(1-n)+1)]`
-/

namespace A337374.P5490490073902702338
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349573 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A337374.P5490490073902702338

noncomputable section

/-- A337374: Numbers k for which A003961(k) > 4*k.

Offset 1, canonical program `A337374.P5490490073902702338`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4538 terms. -/
def A337374 (n : ℕ) : ℤ :=
  (A337374.P5490490073902702338.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4538 terms. -/
def A337374.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A337379.P6372728613214319863

`lt[A252748(n+1), A294015(n+1)]+1`
-/

namespace A337379.P6372728613214319863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252748 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294015 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A337379.P6372728613214319863

noncomputable section

/-- A337379: Numbers k for which A003961(k) < 2*sigma(k).

Offset 1, canonical program `A337379.P6372728613214319863`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7688 terms. -/
def A337379 (n : ℕ) : ℤ :=
  (A337379.P6372728613214319863.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7688 terms. -/
def A337379.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A337380.P14323551870008348844

`floor(A286385(n+1)/A048673(n+1))`
-/

namespace A337380.P14323551870008348844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A286385 (n + 1) : ℚ) / (A048673 (n + 1) : ℚ)⌋

end

end A337380.P14323551870008348844

noncomputable section

/-- A337380: a(n) = 1 if A003961(n) > 2*sigma(n), 0 otherwise.

Offset 1, canonical program `A337380.P14323551870008348844`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A337380 (n : ℕ) : ℤ :=
  A337380.P14323551870008348844.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A337380.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A337386.P15090357526265175060

`lt[1, A336835(A028310(n))]`
-/

namespace A337386.P15090357526265175060
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336835 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A337386.P15090357526265175060

noncomputable section

/-- A337386: Numbers k for which A003973(k) >= 2*A003961(k).

Offset 1, canonical program `A337386.P15090357526265175060`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 254 terms. -/
def A337386 (n : ℕ) : ℤ :=
  (A337386.P15090357526265175060.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 254 terms. -/
def A337386.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A337468.P6808977206975830363

`A080224(A337386(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A337468.P6808977206975830363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080224 (A337386 (n + 1)).toNat

end

end A337468.P6808977206975830363

noncomputable section

/-- A337468: a(n) = A080224(A337386(n)).

Offset 1, canonical program `A337468.P6808977206975830363`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A080224, A337386, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A337468 (n : ℕ) : ℤ :=
  A337468.P6808977206975830363.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A080224, A337386, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A337468.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A337471.P17211340762950166472

`A003961(A108951(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A337471.P17211340762950166472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (A108951 (n + 1)).toNat

end

end A337471.P17211340762950166472

noncomputable section

/-- A337471: Primorial inflation of n prime shifted once: a(n) = A003961(A108951(n)).

Offset 1, canonical program `A337471.P17211340762950166472`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, A108951, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A337471 (n : ℕ) : ℤ :=
  A337471.P17211340762950166472.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, A108951, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A337471.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A337474.P14754845814087979519

`A336835(A108951(n+1))`
-/

namespace A337474.P14754845814087979519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336835 (A108951 (n + 1)).toNat

end

end A337474.P14754845814087979519

noncomputable section

/-- A337474: Number of prime shifts (x -> A003961(x)) needed before the result is deficient, when starting from x = A108951(n), the primorial inflation of n.

Offset 1, canonical program `A337474.P14754845814087979519`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A108951, A336835, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A337474 (n : ℕ) : ℤ :=
  A337474.P14754845814087979519.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A108951, A336835, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A337474.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A337544.P9000997842443162116

`2*A000010(A003961(n+1))-A003961(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A337544.P9000997842443162116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000010 (A003961 (n + 1)).toNat - A003961 (n + 1)

end

end A337544.P9000997842443162116

noncomputable section

/-- A337544: a(n) = 2*phi(A003961(n)) - A003961(n).

Offset 1, canonical program `A337544.P9000997842443162116`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A337544 (n : ℕ) : ℤ :=
  A337544.P9000997842443162116.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A337544.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A337549.P3151164375738502961

`A003972(n+1)-(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A337549.P3151164375738502961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003972 (n + 1) - (n + 1 : ℤ)

end

end A337549.P3151164375738502961

noncomputable section

/-- A337549: a(n) = A003972(n) - n.

Offset 1, canonical program `A337549.P3151164375738502961`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003972, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A337549 (n : ℕ) : ℤ :=
  A337549.P3151164375738502961.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003972, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A337549.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A339903.P3797102702327657861

`A336466(A003961(n+1))`
-/

namespace A339903.P3797102702327657861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336466 (A003961 (n + 1)).toNat

end

end A339903.P3797102702327657861

noncomputable section

/-- A339903: Fully multiplicative with a(p) = A000265(q-1), where q = A151800(p), the next prime > p.

Offset 1, canonical program `A339903.P3797102702327657861`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, A336466, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A339903 (n : ℕ) : ℤ :=
  A339903.P3797102702327657861.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, A336466, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A339903.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A339904.P5171680979052193897

`A000265(A000010(A003961(n+1)))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A339904.P5171680979052193897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A000010 (A003961 (n + 1)).toNat).toNat

end

end A339904.P5171680979052193897

noncomputable section

/-- A339904: The odd part of {Euler totient function phi applied to the prime shifted n}: a(n) = A000265(A000010(A003961(n))).

Offset 1, canonical program `A339904.P5171680979052193897`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A339904 (n : ℕ) : ℤ :=
  A339904.P5171680979052193897.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A339904.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A339905.P13500807193007316440

`A003958(A003961(n+1))`
-/

namespace A339905.P13500807193007316440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003958 (A003961 (n + 1)).toNat

end

end A339905.P13500807193007316440

noncomputable section

/-- A339905: Fully multiplicative with a(prime(k)) = prime(k+1) - 1.

Offset 1, canonical program `A339905.P13500807193007316440`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003958, A003961, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A339905 (n : ℕ) : ℤ :=
  A339905.P13500807193007316440.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003958, A003961, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A339905.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A340071.P3662903536855616101

`gcd(A003961(n+1)-1, A000010(A003961(n+1)))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A340071.P3662903536855616101
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003961 (n + 1) - 1) (A000010 (A003961 (n + 1)).toNat)

end

end A340071.P3662903536855616101

noncomputable section

/-- A340071: a(n) = gcd(A003961(n)-1, phi(A003961(n))), where A003961 shifts the prime factorization of n one step towards larger primes.

Offset 1, canonical program `A340071.P3662903536855616101`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A340071 (n : ℕ) : ℤ :=
  (A340071.P3662903536855616101.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A340071.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A340072.P10983682379328277677

`A160595(A003961(n+1))`
-/

namespace A340072.P10983682379328277677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160595 (A003961 (n + 1)).toNat

end

end A340072.P10983682379328277677

noncomputable section

/-- A340072: a(n) = phi(x) / gcd(x-1, phi(x)), where x = A003961(n), i.e., n with its prime factorization shifted one step towards larger primes.

Offset 1, canonical program `A340072.P10983682379328277677`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, A160595, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A340072 (n : ℕ) : ℤ :=
  A340072.P10983682379328277677.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, A160595, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A340072.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A340073.P3788294706891105831

`A253885(n)/A340071(n+1)`
-/

namespace A340073.P3788294706891105831
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A253885 n : ℚ) / (A340071 (n + 1) : ℚ)

end

end A340073.P3788294706891105831

noncomputable section

/-- A340073: a(n) = (x-1) / gcd(x-1, phi(x)), where x = A003961(n), i.e., n with its prime factorization shifted one step towards larger primes.

Offset 1, canonical program `A340073.P3788294706891105831`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A253885, A340071, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A340073 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A340073.P3788294706891105831.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A253885, A340071, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A340073.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A340074.P15642945352371498565

`gcd(A003961(n+1)-1, A339904(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A340074.P15642945352371498565
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003961 (n + 1) - 1) (A339904 (n + 1))

end

end A340074.P15642945352371498565

noncomputable section

/-- A340074: a(n) = gcd(A003961(n)-1, A339904(n)).

Offset 1, canonical program `A340074.P15642945352371498565`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, A339904, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A340074 (n : ℕ) : ℤ :=
  (A340074.P15642945352371498565.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, A339904, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A340074.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A340075.P18306248190705191275

`A000265(A340072(n+1))`
-/

namespace A340075.P18306248190705191275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A340072 (n + 1)).toNat

end

end A340075.P18306248190705191275

noncomputable section

/-- A340075: The odd part of A340072(n).

Offset 1, canonical program `A340075.P18306248190705191275`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A340072, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A340075 (n : ℕ) : ℤ :=
  A340075.P18306248190705191275.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A340072, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A340075.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A340076.P9543000628144570733

`eq[1, A340075(n+1)]+1`
-/

namespace A340076.P9543000628144570733
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340075 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A340076.P9543000628144570733

noncomputable section

/-- A340076: Positions of ones in A340075.

Offset 1, canonical program `A340076.P9543000628144570733`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1276 terms. -/
def A340076 (n : ℕ) : ℤ :=
  (A340076.P9543000628144570733.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1276 terms. -/
def A340076.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A340147.P12367643598761050819

`A247074(A003961(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A340147.P12367643598761050819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247074 (A003961 (n + 1)).toNat

end

end A340147.P12367643598761050819

noncomputable section

/-- A340147: a(n) = A247074(A003961(n)).

Offset 1, canonical program `A340147.P12367643598761050819`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, A247074, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A340147 (n : ℕ) : ℤ :=
  A340147.P12367643598761050819.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, A247074, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A340147.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A340148.P15077992982366263936

`A063994(A003961(n+1))`
-/

namespace A340148.P15077992982366263936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063994 (A003961 (n + 1)).toNat

end

end A340148.P15077992982366263936

noncomputable section

/-- A340148: a(n) = Product_{distinct primes p dividing n} gcd(q-1, A003961(n)-1), where q = A151800(p), the next prime larger than p.

Offset 1, canonical program `A340148.P15077992982366263936`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, A063994, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A340148 (n : ℕ) : ℤ :=
  A340148.P15077992982366263936.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, A063994, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A340148.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A340149.P6698096006664650943

`A000265(A247074(A003961(n+1)))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A340149.P6698096006664650943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A247074 (A003961 (n + 1)).toNat).toNat

end

end A340149.P6698096006664650943

noncomputable section

/-- A340149: Odd part of A340147: a(n) = A000265(A247074(A003961(n))).

Offset 1, canonical program `A340149.P6698096006664650943`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, A247074, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A340149 (n : ℕ) : ℤ :=
  A340149.P6698096006664650943.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, A247074, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A340149.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A340150.P16903743964275557820

`record[(n+1)/A340149(n+1)]`
-/

namespace A340150.P16903743964275557820
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A340149 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A340150.P16903743964275557820

noncomputable section

/-- A340150: Positions of ones in A340149.

Offset 1, canonical program `A340150.P16903743964275557820`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6718 terms. -/
def A340150 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A340150.P16903743964275557820.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6718 terms. -/
def A340150.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A340194.P2585245132100315364

`A337544(A003961(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A340194.P2585245132100315364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337544 (A003961 (n + 1)).toNat

end

end A340194.P2585245132100315364

noncomputable section

/-- A340194: a(n) = A337544(A003961(n)).

Offset 1, canonical program `A340194.P2585245132100315364`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, A337544, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A340194 (n : ℕ) : ℤ :=
  A340194.P2585245132100315364.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, A337544, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A340194.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A340377.P8993606752064362235

`record[(n+1)^(1-A340379(n+1))]`
-/

namespace A340377.P8993606752064362235
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (1 - A340379 (n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A340377.P8993606752064362235

noncomputable section

/-- A340377: Numbers k such that there are no 2-digits in the ternary expansion of A048673(k).

Offset 1, canonical program `A340377.P8993606752064362235`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1146 terms. -/
def A340377 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A340377.P8993606752064362235.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1146 terms. -/
def A340377.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A340683.P1232196713619969114

`A007949((A003961(A003961(n+1))+1)/2)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A340683.P1232196713619969114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007949 (SequenceMachineLib.roundAway ((A003961 (A003961 (n + 1)).toNat + 1 : ℚ) / 2)).toNat

end

end A340683.P1232196713619969114

noncomputable section

/-- A340683: a(n) = A007949((A003961(A003961(n))+1)/2), where A003961 shifts the prime factorization of n one step towards larger primes, and A007949(x) gives the exponent of largest power of 3 dividing x.

Offset 1, canonical program `A340683.P1232196713619969114`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A340683 (n : ℕ) : ℤ :=
  A340683.P1232196713619969114.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A340683.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A341519.P3179261945552119542

`A001222(gcd(A003961(n+1), A000203(A003961(n+1))))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A341519.P3179261945552119542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.gcd (A003961 (n + 1)) (A000203 (A003961 (n + 1)).toNat))

end

end A341519.P3179261945552119542

noncomputable section

/-- A341519: Number of prime factors (with multiplicity) shared by A003961(n) and A003973(n): a(n) = bigomega(gcd(A003961(n), sigma(A003961(n)))).

Offset 1, canonical program `A341519.P3179261945552119542`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A341519 (n : ℕ) : ℤ :=
  A341519.P3179261945552119542.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A341519.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A341525.P7694979222133116988

`A017665(A003961(n+1))`
-/

namespace A341525.P7694979222133116988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017665 (A003961 (n + 1)).toNat

end

end A341525.P7694979222133116988

noncomputable section

/-- A341525: Numerator of A003973(n) / A003961(n).

Offset 1, canonical program `A341525.P7694979222133116988`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A341525 (n : ℕ) : ℤ :=
  A341525.P7694979222133116988.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A341525.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A341528.P14956045597010222967

`(n+1)*A000203(A003961(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A341528.P14956045597010222967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000203 (A003961 (n + 1)).toNat

end

end A341528.P14956045597010222967

noncomputable section

/-- A341528: a(n) = n * sigma(A003961(n)), where A003961 shifts the prime factorization of n one step towards larger primes, and sigma is the sum of the divisors of n.

Offset 1, canonical program `A341528.P14956045597010222967`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A341528 (n : ℕ) : ℤ :=
  A341528.P14956045597010222967.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A341528.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A341529.P16215354079337836042

`A000203(n+1)*A003961(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A341529.P16215354079337836042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) * A003961 (n + 1)

end

end A341529.P16215354079337836042

noncomputable section

/-- A341529: a(n) = sigma(n) * A003961(n), where A003961 shifts the prime factorization of n one step towards larger primes, and sigma is the sum of the divisors of n.

Offset 1, canonical program `A341529.P16215354079337836042`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A341529 (n : ℕ) : ℤ :=
  A341529.P16215354079337836042.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A341529.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A341530.P14171967541520883711

`gcd((n+1)*A000203(A003961(n+1)), A000203(n+1)*A003961(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A341530.P14171967541520883711
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((n + 1 : ℤ) * A000203 (A003961 (n + 1)).toNat) (A000203 (n + 1) * A003961 (n + 1))

end

end A341530.P14171967541520883711

noncomputable section

/-- A341530: a(n) = gcd(n*sigma(A003961(n)), sigma(n)*A003961(n)), where A003961 shifts the prime factorization of n one step towards larger primes, and sigma is the sum of divisors of n.

Offset 1, canonical program `A341530.P14171967541520883711`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A341530 (n : ℕ) : ℤ :=
  (A341530.P14171967541520883711.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A341530.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A341612.P3068073104531840485

`A252742(n+1)*A294935(n+1)`
-/

namespace A341612.P3068073104531840485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252742 (n + 1) * A294935 (n + 1)

end

end A341612.P3068073104531840485

noncomputable section

/-- A341612: Characteristic function of A341614: a(n) = 1 if sigma(n) <= 2n < A003961(n), 0 otherwise.

Offset 1, canonical program `A341612.P3068073104531840485`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A252742, A294935, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A341612 (n : ℕ) : ℤ :=
  A341612.P3068073104531840485.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A252742, A294935, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A341612.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A341613.P13588315821913618762

`A252742(n+1)*A294934(n+1)`
-/

namespace A341613.P13588315821913618762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252742 (n + 1) * A294934 (n + 1)

end

end A341613.P13588315821913618762

noncomputable section

/-- A341613: Characteristic function for A341615: a(n) = 1 if sigma(n) < 2n < A003961(n), otherwise 0.

Offset 1, canonical program `A341613.P13588315821913618762`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A252742, A294934, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A341613 (n : ℕ) : ℤ :=
  A341613.P13588315821913618762.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A252742, A294934, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A341613.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A341614.P12410956931526062151

`lt[0, A341612(1+n)]+1`
-/

namespace A341614.P12410956931526062151
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341612 (1 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A341614.P12410956931526062151

noncomputable section

/-- A341614: Numbers k such that sigma(k) <= 2k < A003961(k).

Offset 1, canonical program `A341614.P12410956931526062151`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A341614 (n : ℕ) : ℤ :=
  (A341614.P12410956931526062151.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A341614.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A341615.P14431717611716055438

`lt[0, A341613(1+n)]+1`
-/

namespace A341615.P14431717611716055438
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341613 (1 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A341615.P14431717611716055438

noncomputable section

/-- A341615: Numbers k for which sigma(k) < 2k < A003961(k).

Offset 1, canonical program `A341615.P14431717611716055438`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A341615 (n : ℕ) : ℤ :=
  (A341615.P14431717611716055438.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A341615.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A342667.P311384965998967573

`A006530(A342664(A003961(n+1)))`
-/

namespace A342667.P311384965998967573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A342664 (A003961 (n + 1)).toNat).toNat

end

end A342667.P311384965998967573

noncomputable section

/-- A342667: Largest prime in the numerator of ratio A341528(n)/A341529(n) (when presented in its lowest terms).

Offset 1, canonical program `A342667.P311384965998967573`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, A006530, A342664, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A342667 (n : ℕ) : ℤ :=
  A342667.P311384965998967573.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, A006530, A342664, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A342667.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A342671.P9094584972548148984

`gcd(A000203(n+1), A003961(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A342671.P9094584972548148984
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000203 (n + 1)) (A003961 (n + 1))

end

end A342671.P9094584972548148984

noncomputable section

/-- A342671: a(n) = gcd(sigma(n), A003961(n)), where A003961 is fully multiplicative with a(prime(k)) = prime(k+1), and sigma is the sum of divisors of n.

Offset 1, canonical program `A342671.P9094584972548148984`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A342671 (n : ℕ) : ℤ :=
  (A342671.P9094584972548148984.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A342671.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A342672.P15066052163271616691

`lcm(A000203(n+1), A003961(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A342672.P15066052163271616691
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000203 (n + 1)) (A003961 (n + 1))

end

end A342672.P15066052163271616691

noncomputable section

/-- A342672: a(n) = lcm(sigma(n), A003961(n)), where A003961 is fully multiplicative with a(prime(k)) = prime(k+1), and sigma is the sum of divisors of n.

Offset 1, canonical program `A342672.P15066052163271616691`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A342672 (n : ℕ) : ℤ :=
  (A342672.P15066052163271616691.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A342672.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A342673.P1726266034278384680

`gcd(n+1, A000203(A003961(n+1)))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A342673.P1726266034278384680
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A000203 (A003961 (n + 1)).toNat)

end

end A342673.P1726266034278384680

noncomputable section

/-- A342673: a(n) = gcd(n, sigma(A003961(n))), where A003961 is fully multiplicative with a(prime(k)) = prime(k+1), and sigma is the sum of divisors of n.

Offset 1, canonical program `A342673.P1726266034278384680`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A342673 (n : ℕ) : ℤ :=
  (A342673.P1726266034278384680.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A342673.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A344587.P4180067790187357523

`2*A003961(n+1)-A000203(A003961(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A344587.P4180067790187357523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A003961 (n + 1) - A000203 (A003961 (n + 1)).toNat

end

end A344587.P4180067790187357523

noncomputable section

/-- A344587: Deficiency of prime-shifted n: a(n) = 2*A003961(n) - sigma(A003961(n)).

Offset 1, canonical program `A344587.P4180067790187357523`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A344587 (n : ℕ) : ℤ :=
  A344587.P4180067790187357523.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A344587.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A346234.P13693537449081961436

`A008683(n+1)*A003961(n+1)`
-/

namespace A346234.P13693537449081961436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1) * A003961 (n + 1)

end

end A346234.P13693537449081961436

noncomputable section

/-- A346234: Dirichlet inverse of A003961, where A003961(n) is fully multiplicative with a(prime(k)) = prime(k+1).

Offset 1, canonical program `A346234.P13693537449081961436`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A346234 (n : ℕ) : ℤ :=
  A346234.P13693537449081961436.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A346234.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A346249.P5829520662776676678

`∑{d}[n+1, A007427(#)*A286385((n+1)/#)]`
-/

namespace A346249.P5829520662776676678
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007427 d * A286385 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A346249.P5829520662776676678

noncomputable section

/-- A346249: Möbius transform of A337549.

Offset 1, canonical program `A346249.P5829520662776676678`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A346249 (n : ℕ) : ℤ :=
  A346249.P5829520662776676678.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A346249.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A347100.P3607054361798720330

`A000010(A003961(n+1))-A000010(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A347100.P3607054361798720330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A003961 (n + 1)).toNat - A000010 (n + 1)

end

end A347100.P3607054361798720330

noncomputable section

/-- A347100: a(n) = phi(A003961(n)) - phi(n), where A003961 is the prime shift towards larger primes, and phi is Euler totient function.

Offset 1, canonical program `A347100.P3607054361798720330`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A347100 (n : ℕ) : ℤ :=
  A347100.P3607054361798720330.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A347100.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A347102.P1098781808414285661

`A001414(A003961(n+1))-A001414(n+1)`
-/

namespace A347102.P1098781808414285661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A003961 (n + 1)).toNat - A001414 (n + 1)

end

end A347102.P1098781808414285661

noncomputable section

/-- A347102: Totally additive with a(prime(k)) = A001223(k), where A001223 gives the distance from the k-th prime to the next larger prime.

Offset 1, canonical program `A347102.P1098781808414285661`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A347102 (n : ℕ) : ℤ :=
  A347102.P1098781808414285661.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A347102.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A347124.P4032395562247059847

`∑{d}[n+1, A008683((n+1)/#)*A341528(#)]`
-/

namespace A347124.P4032395562247059847
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat * A341528 d

end

end A347124.P4032395562247059847

noncomputable section

/-- A347124: Möbius transform of A341528, n * sigma(A003961(n)).

Offset 1, canonical program `A347124.P4032395562247059847`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A341528, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A347124 (n : ℕ) : ℤ :=
  A347124.P4032395562247059847.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A341528, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A347124.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A347125.P15966228704101149299

`∑{d}[n+1, A008683((n+1)/#)*A341529(#)]`
-/

namespace A347125.P15966228704101149299
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat * A341529 d

end

end A347125.P15966228704101149299

noncomputable section

/-- A347125: Möbius transform of A341529, sigma(n) * A003961(n).

Offset 1, canonical program `A347125.P15966228704101149299`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A341529, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A347125 (n : ℕ) : ℤ :=
  A347125.P15966228704101149299.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A341529, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A347125.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A347136.P16490261635518515868

`∑{d}[n+1, #*A003961((n+1)/#)]`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A347136.P16490261635518515868
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A003961 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A347136.P16490261635518515868

noncomputable section

/-- A347136: a(n) = Sum_{d|n} d * A003961(n/d), where A003961 shifts the prime factorization of its argument one step towards larger primes.

Offset 1, canonical program `A347136.P16490261635518515868`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A347136 (n : ℕ) : ℤ :=
  A347136.P16490261635518515868.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A347136.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A347137.P9582024218945356949

`∑{d}[n+1, A000010(#)*A003961((n+1)/#)]`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A347137.P9582024218945356949
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A003961 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A347137.P9582024218945356949

noncomputable section

/-- A347137: a(n) = Sum_{d|n} phi(d) * A003961(n/d), where A003961 shifts the prime factorization of its argument one step towards larger primes, and phi is Euler totient function.

Offset 1, canonical program `A347137.P9582024218945356949`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A347137 (n : ℕ) : ℤ :=
  A347137.P9582024218945356949.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A347137.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A347236.P7635325518416667712

`∑{d}[n+1, A061019(#)*A003961((n+1)/#)]`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A347236.P7635325518416667712
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A061019 d * A003961 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A347236.P7635325518416667712

noncomputable section

/-- A347236: a(n) = Sum_{d|n} A061019(d) * A003961(n/d), where A061019 negates the primes in the prime factorization, while A003961 shifts the factorization one step towards larger primes.

Offset 1, canonical program `A347236.P7635325518416667712`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A347236 (n : ℕ) : ℤ :=
  A347236.P7635325518416667712.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A347236.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A347237.P462574376420904752

`∑{d}[n+1, A003972((n+1)/#)*A061019(#)]`
-/

namespace A347237.P462574376420904752
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A003972 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat * A061019 d

end

end A347237.P462574376420904752

noncomputable section

/-- A347237: Möbius transform of A347236.

Offset 1, canonical program `A347237.P462574376420904752`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003972, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A347237 (n : ℕ) : ℤ :=
  A347237.P462574376420904752.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003972, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A347237.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A347238.P10622730690257648846

`∑{d}[A007947(n+1), #*A346234((n+1)/#)]`
-/

namespace A347238.P10622730690257648846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, (d : ℤ) * A346234 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A347238.P10622730690257648846

noncomputable section

/-- A347238: Dirichlet inverse of A347236.

Offset 1, canonical program `A347238.P10622730690257648846`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A347238 (n : ℕ) : ℤ :=
  A347238.P10622730690257648846.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A347238.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A347239.P8303490879322250829

`A347236(n+1)+A347238(n+1)`
-/

namespace A347239.P8303490879322250829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347236 (n + 1) + A347238 (n + 1)

end

end A347239.P8303490879322250829

noncomputable section

/-- A347239: Sum of A347236 and its Dirichlet inverse.

Offset 1, canonical program `A347239.P8303490879322250829`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A347236, A347238, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A347239 (n : ℕ) : ℤ :=
  A347239.P8303490879322250829.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A347236, A347238, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A347239.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A347964.P3060589955124461694

`gcd(A003415(n+1), A003961(n+1))`
-/

namespace A347964.P3060589955124461694
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003415 (n + 1)) (A003961 (n + 1))

end

end A347964.P3060589955124461694

noncomputable section

/-- A347964: Greatest common divisor of A003415 (arithmetic derivative) and A003961 (prime shift towards larger primes).

Offset 1, canonical program `A347964.P3060589955124461694`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A347964 (n : ℕ) : ℤ :=
  (A347964.P3060589955124461694.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A347964.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A347965.P12359719817700726170

`∑{d}[n+1, A003415(#)*A003961((n+1)/#)]`
-/

namespace A347965.P12359719817700726170
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A003415 d * A003961 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A347965.P12359719817700726170

noncomputable section

/-- A347965: Dirichlet convolution of A003415 (arithmetic derivative) with A003961 (prime shift towards larger primes).

Offset 1, canonical program `A347965.P12359719817700726170`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A347965 (n : ℕ) : ℤ :=
  A347965.P12359719817700726170.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A347965.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A348509.P17820867973263177752

`A099377(A003961(n+1))`
-/

namespace A348509.P17820867973263177752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099377 (A003961 (n + 1)).toNat

end

end A348509.P17820867973263177752

noncomputable section

/-- A348509: a(n) is the numerator of the harmonic mean of the divisors of A003961(n).

Offset 1, canonical program `A348509.P17820867973263177752`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, A099377, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A348509 (n : ℕ) : ℤ :=
  A348509.P17820867973263177752.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, A099377, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A348509.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A348736.P14809155913306220837

`n+1-A326042(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A348736.P14809155913306220837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A326042 (n + 1)

end

end A348736.P14809155913306220837

noncomputable section

/-- A348736: a(n) = n - A326042(n), where A326042(n) = A064989(sigma(A003961(n))).

Offset 1, canonical program `A348736.P14809155913306220837`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A326042, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A348736 (n : ℕ) : ℤ :=
  A348736.P14809155913306220837.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A326042, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A348736.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A348737.P4243854902440080733

`round(n/(A326042(n+1)+n))`
-/

namespace A348737.P4243854902440080733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℚ) / (A326042 (n + 1) + (n : ℤ) : ℚ))

end

end A348737.P4243854902440080733

noncomputable section

/-- A348737: a(n) = 1 if A326042(k) < k, otherwise 0.

Offset 1, canonical program `A348737.P4243854902440080733`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A348737 (n : ℕ) : ℤ :=
  A348737.P4243854902440080733.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A348737.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A348738.P14169200650584262410

`lt[0, A348736(1+n)]+1`
-/

namespace A348738.P14169200650584262410
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348736 (1 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A348738.P14169200650584262410

noncomputable section

/-- A348738: Numbers k for which A326042(k) < k, where A326042(n) = A064989(sigma(A003961(n))).

Offset 1, canonical program `A348738.P14169200650584262410`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A348738 (n : ℕ) : ℤ :=
  (A348738.P14169200650584262410.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A348738.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A348750.P7590902845171157499

`A064989(A064989(A000203(A003961(A003961(n+1)))))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A348750.P7590902845171157499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (A064989 (A000203 (A003961 (A003961 (n + 1)).toNat).toNat).toNat).toNat

end

end A348750.P7590902845171157499

noncomputable section

/-- A348750: a(n) = A064989(A064989(sigma(A003961(A003961(n))))), where A003961 shifts the prime factorization of n one step towards larger primes, and A064989 shifts it back towards smaller primes.

Offset 1, canonical program `A348750.P7590902845171157499`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, A064989, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A348750 (n : ℕ) : ℤ :=
  A348750.P7590902845171157499.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, A064989, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A348750.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A348751.P5162132893747638850

`lt[A348750(A028310(n)), n]`
-/

namespace A348751.P5162132893747638850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348750 (A028310 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A348751.P5162132893747638850

noncomputable section

/-- A348751: Numbers k for which A348750(k) < k.

Offset 1, canonical program `A348751.P5162132893747638850`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9394 terms. -/
def A348751 (n : ℕ) : ℤ :=
  (A348751.P5162132893747638850.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9394 terms. -/
def A348751.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A348752.P6744655593727144798

`lt[n+1, A348750(n+1)]+1`
-/

namespace A348752.P6744655593727144798
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348750 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A348752.P6744655593727144798

noncomputable section

/-- A348752: Numbers k for which A348750(k) > k.

Offset 1, canonical program `A348752.P6744655593727144798`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 605 terms. -/
def A348752 (n : ℕ) : ℤ :=
  (A348752.P6744655593727144798.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 605 terms. -/
def A348752.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A348937.P9014571055681436291

`A003961(n+1)-A003415(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A348937.P9014571055681436291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (n + 1) - A003415 (n + 1)

end

end A348937.P9014571055681436291

noncomputable section

/-- A348937: a(n) = A003961(n) - A003415(n), where A003961 shifts the prime factorization of n one step towards larger primes, and A003415 gives the arithmetic derivative of n.

Offset 1, canonical program `A348937.P9014571055681436291`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A348937 (n : ℕ) : ℤ :=
  A348937.P9014571055681436291.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A348937.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A348940.P7101903597430363459

`gcd(n+1, A326042(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A348940.P7101903597430363459
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A326042 (n + 1))

end

end A348940.P7101903597430363459

noncomputable section

/-- A348940: a(n) = gcd(n, A326042(n)), where A326042 is multiplicative function A064989(sigma(A003961(n))).

Offset 1, canonical program `A348940.P7101903597430363459`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A326042, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A348940 (n : ℕ) : ℤ :=
  (A348940.P7101903597430363459.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A326042, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A348940.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A348941.P16476962796183016569

`(n+1)/A348940(n+1)`
-/

namespace A348941.P16476962796183016569
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A348940 (n + 1) : ℚ)

end

end A348941.P16476962796183016569

noncomputable section

/-- A348941: a(n) = n / gcd(n, A326042(n)).

Offset 1, canonical program `A348941.P16476962796183016569`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A348940, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A348941 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A348941.P16476962796183016569.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A348940, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A348941.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A348942.P4298548663594448972

`A326042(n+1)/A348940(n+1)`
-/

namespace A348942.P4298548663594448972
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A326042 (n + 1) : ℚ) / (A348940 (n + 1) : ℚ)

end

end A348942.P4298548663594448972

noncomputable section

/-- A348942: a(n) = A326042(n) / gcd(n, A326042(n)).

Offset 1, canonical program `A348942.P4298548663594448972`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A326042, A348940, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A348942 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A348942.P4298548663594448972.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A326042, A348940, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A348942.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A348990.P9008814680679274139

`(n+1)/A322361(n+1)`
-/

namespace A348990.P9008814680679274139
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A322361 (n + 1) : ℚ)

end

end A348990.P9008814680679274139

noncomputable section

/-- A348990: a(n) = n / gcd(n, A003961(n)), where A003961(n) is fully multiplicative function with a(prime(k)) = prime(k+1).

Offset 1, canonical program `A348990.P9008814680679274139`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A322361, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A348990 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A348990.P9008814680679274139.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A322361, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A348990.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A348992.P12661163686237205488

`A161942(n+1)/A342671(n+1)`
-/

namespace A348992.P12661163686237205488
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A161942 (n + 1) : ℚ) / (A342671 (n + 1) : ℚ)

end

end A348992.P12661163686237205488

noncomputable section

/-- A348992: a(n) = A000265(sigma(n)) / gcd(sigma(n), A003961(n)), where A003961(n) is fully multiplicative with a(prime(k)) = prime(k+1), and sigma is the sum of divisors function.

Offset 1, canonical program `A348992.P12661163686237205488`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A342671, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A348992 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A348992.P12661163686237205488.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A342671, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A348992.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A348993.P3859083894911945124

`A064989(A000203(n+1)/gcd(A000203(n+1), A003961(n+1)))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A348993.P3859083894911945124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (SequenceMachineLib.roundAway ((A000203 (n + 1) : ℚ) / (Int.gcd (A000203 (n + 1)) (A003961 (n + 1)) : ℚ))).toNat

end

end A348993.P3859083894911945124

noncomputable section

/-- A348993: a(n) = A064989(sigma(n) / gcd(sigma(n), A003961(n))), where A003961 shifts the prime factorization of n one step towards larger primes, while A064989 shifts it back towards smaller primes, and sigma is the sum of divisors function.

Offset 1, canonical program `A348993.P3859083894911945124`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, A064989, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A348993 (n : ℕ) : ℤ :=
  A348993.P3859083894911945124.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, A064989, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A348993.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A348994.P10230310546806871422

`A319626(A003961(n+1))`
-/

namespace A348994.P10230310546806871422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319626 (A003961 (n + 1)).toNat

end

end A348994.P10230310546806871422

noncomputable section

/-- A348994: a(n) = A003961(n) / gcd(n, A003961(n)), where A003961(n) is fully multiplicative with a(prime(k)) = prime(k+1).

Offset 1, canonical program `A348994.P10230310546806871422`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, A319626, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A348994 (n : ℕ) : ℤ :=
  A348994.P10230310546806871422.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, A319626, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A348994.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A349162.P4701200943170105662

`A000203(n+1)/A342671(n+1)`
-/

namespace A349162.P4701200943170105662
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) : ℚ) / (A342671 (n + 1) : ℚ)

end

end A349162.P4701200943170105662

noncomputable section

/-- A349162: a(n) = sigma(n) / gcd(sigma(n), A003961(n)), where A003961 shifts the prime factorization of n one step towards larger primes, and sigma is the sum of divisors function.

Offset 1, canonical program `A349162.P4701200943170105662`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A342671, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A349162 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A349162.P4701200943170105662.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A342671, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A349162.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A349163.P5024977655063574088

`A064989(gcd(A000203(n+1), A003961(n+1)))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A349163.P5024977655063574088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (Int.gcd (A000203 (n + 1)) (A003961 (n + 1)))

end

end A349163.P5024977655063574088

noncomputable section

/-- A349163: a(n) = A064989(gcd(sigma(n), A003961(n))), where A003961 shifts the prime factorization of n one step towards larger primes, while A064989 shifts it back towards smaller primes, and sigma is the sum of divisors function.

Offset 1, canonical program `A349163.P5024977655063574088`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, A064989, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A349163 (n : ℕ) : ℤ :=
  A349163.P5024977655063574088.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, A064989, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A349163.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A349164.P10379583617981606493

`A064989(A003961(n+1)/gcd(A000203(n+1), A003961(n+1)))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A349164.P10379583617981606493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (SequenceMachineLib.roundAway ((A003961 (n + 1) : ℚ) / (Int.gcd (A000203 (n + 1)) (A003961 (n + 1)) : ℚ))).toNat

end

end A349164.P10379583617981606493

noncomputable section

/-- A349164: a(n) = A064989(A003961(n) / gcd(sigma(n), A003961(n))), where A003961 shifts the prime factorization of n one step towards larger primes, while A064989 shifts it back towards smaller primes, and sigma is the sum of divisors function.

Offset 1, canonical program `A349164.P10379583617981606493`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, A064989, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A349164 (n : ℕ) : ℤ :=
  A349164.P10379583617981606493.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, A064989, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A349164.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A349165.P17788496710474803939

`record[A349164(1+n)]`
-/

namespace A349165.P17788496710474803939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349164 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A349165.P17788496710474803939

noncomputable section

/-- A349165: Numbers k such that sigma(k) and A003961(k) are relatively prime, where A003961(n) is fully multiplicative function with a(prime(k)) = prime(k+1).

Offset 1, canonical program `A349165.P17788496710474803939`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A349165 (n : ℕ) : ℤ :=
  A349165.P17788496710474803939.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A349165.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A349166.P15435338899295940920

`lt[1, A349163(1+n)]+1`
-/

namespace A349166.P15435338899295940920
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349163 (1 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A349166.P15435338899295940920

noncomputable section

/-- A349166: Numbers k such that sigma(k) and A003961(k) share a prime factor, where A003961(n) is fully multiplicative function with a(prime(k)) = prime(k+1).

Offset 1, canonical program `A349166.P15435338899295940920`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A349166 (n : ℕ) : ℤ :=
  (A349166.P15435338899295940920.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A349166.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A349167.P11335047326877026590

`floor(1/A349163(n+1))`
-/

namespace A349167.P11335047326877026590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / (A349163 (n + 1) : ℚ)⌋

end

end A349167.P11335047326877026590

noncomputable section

/-- A349167: a(n) = 1 if sigma(n) and A003961(n) are relatively prime, otherwise 0.

Offset 1, canonical program `A349167.P11335047326877026590`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A349167 (n : ℕ) : ℤ :=
  A349167.P11335047326877026590.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A349167.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A349381.P14765012378016904530

`∑{d}[n+1, A003961((n+1)/#)*A349125(#)]`
-/

namespace A349381.P14765012378016904530
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A003961 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat * A349125 d

end

end A349381.P14765012378016904530

noncomputable section

/-- A349381: Dirichlet convolution of A003961 with A349125 (Dirichlet inverse of A064989), where A003961 and A064989 are fully multiplicative sequences that shift the prime factorization of n one step towards larger and smaller primes respectively.

Offset 1, canonical program `A349381.P14765012378016904530`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, A349125, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A349381 (n : ℕ) : ℤ :=
  A349381.P14765012378016904530.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, A349125, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A349381.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A349382.P6298685267400545813

`∑{d}[n+1, A064989((n+1)/#)*A346234(#)]`
-/

namespace A349382.P6298685267400545813
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A064989 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat * A346234 d

end

end A349382.P6298685267400545813

noncomputable section

/-- A349382: Dirichlet convolution of A064989 with A346234 (Dirichlet inverse of A003961), where A003961 and A064989 are fully multiplicative sequences that shift the prime factorization of n one step towards larger and smaller primes respectively.

Offset 1, canonical program `A349382.P6298685267400545813`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064989, A346234, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A349382 (n : ℕ) : ℤ :=
  A349382.P6298685267400545813.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064989, A346234, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A349382.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A349383.P13419108071231034251

`A349381(n+1)+A349382(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A349383.P13419108071231034251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349381 (n + 1) + A349382 (n + 1)

end

end A349383.P13419108071231034251

noncomputable section

/-- A349383: a(n) = A349381(n) + A349382(n).

Offset 1, canonical program `A349383.P13419108071231034251`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A349381, A349382, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A349383 (n : ℕ) : ℤ :=
  A349383.P13419108071231034251.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A349381, A349382, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A349383.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A349385.P17904619834223845789

`∑{d}[n+1, A048673((n+1)/#)*A346234(#)]`
-/

namespace A349385.P17904619834223845789
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A048673 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat * A346234 d

end

end A349385.P17904619834223845789

noncomputable section

/-- A349385: Dirichlet convolution of A048673 with the Dirichlet inverse of A003961, where A003961 is fully multiplicative with a(p) = nextprime(p), and A048673(n) = (1+A003961(n))/2.

Offset 1, canonical program `A349385.P17904619834223845789`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048673, A346234, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A349385 (n : ℕ) : ℤ :=
  A349385.P17904619834223845789.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048673, A346234, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A349385.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A349387.P635470215585400653

`∑{d}[n+1, A003961((n+1)/#)*A055615(#)]`
-/

namespace A349387.P635470215585400653
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A003961 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat * A055615 d

end

end A349387.P635470215585400653

noncomputable section

/-- A349387: Dirichlet convolution of A003961 with A055615 (Dirichlet inverse of n), where A003961 is fully multiplicative with a(p) = nextprime(p).

Offset 1, canonical program `A349387.P635470215585400653`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A349387 (n : ℕ) : ℤ :=
  A349387.P635470215585400653.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A349387.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A349388.P677895676119621301

`∑{d}[n+1, #*A346234((n+1)/#)]`
-/

namespace A349388.P677895676119621301
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A346234 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349388.P677895676119621301

noncomputable section

/-- A349388: Dirichlet convolution of A000027 with A346234 (Dirichlet inverse of A003961), where A003961 is fully multiplicative with a(p) = nextprime(p).

Offset 1, canonical program `A349388.P677895676119621301`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A346234, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A349388 (n : ℕ) : ℤ :=
  A349388.P677895676119621301.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A346234, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A349388.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A349389.P17688454280443951021

`A349387(n+1)+A349388(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A349389.P17688454280443951021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349387 (n + 1) + A349388 (n + 1)

end

end A349389.P17688454280443951021

noncomputable section

/-- A349389: a(n) = A349387(n) + A349388(n).

Offset 1, canonical program `A349389.P17688454280443951021`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A349387, A349388, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A349389 (n : ℕ) : ℤ :=
  A349389.P17688454280443951021.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A349387, A349388, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A349389.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A349624.P9806452003791796394

`∑{d}[n+1, A055615(#)*A326042((n+1)/#)]`
-/

namespace A349624.P9806452003791796394
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A055615 d * A326042 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349624.P9806452003791796394

noncomputable section

/-- A349624: Dirichlet convolution of A326042 with A055615 (Dirichlet inverse of n), where A326042(n) = A064989(sigma(A003961(n))).

Offset 1, canonical program `A349624.P9806452003791796394`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A326042, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A349624 (n : ℕ) : ℤ :=
  A349624.P9806452003791796394.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A326042, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A349624.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A349626.P14679777532921365945

`∑{d}[n+1, A008683((n+1)/#)*A326042(#)]`
-/

namespace A349626.P14679777532921365945
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat * A326042 d

end

end A349626.P14679777532921365945

noncomputable section

/-- A349626: Möbius transform of A326042, where A326042(n) = A064989(sigma(A003961(n))).

Offset 1, canonical program `A349626.P14679777532921365945`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A326042, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A349626 (n : ℕ) : ℤ :=
  A349626.P14679777532921365945.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A326042, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A349626.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A349633.P10035930798907062347

`lcm(n+1, A349387(n+1))/(n+1)`
-/

namespace A349633.P10035930798907062347
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (n + 1 : ℤ) (A349387 (n + 1)) : ℚ) / (n + 1 : ℚ)

end

end A349633.P10035930798907062347

noncomputable section

/-- A349633: Numerators of the Möbius transform of ratio A003961(n)/n.

Offset 1, canonical program `A349633.P10035930798907062347`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A349633 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A349633.P10035930798907062347.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A349633.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A349634.P1580182829586287684

`(n+1)/gcd(n+1, A349387(n+1))`
-/

namespace A349634.P1580182829586287684
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Int.gcd (n + 1 : ℤ) (A349387 (n + 1)) : ℚ)

end

end A349634.P1580182829586287684

noncomputable section

/-- A349634: Denominators of the Möbius transform of ratio A003961(n)/n.

Offset 1, canonical program `A349634.P1580182829586287684`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A349634 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A349634.P1580182829586287684.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A349634.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A349754.P17371990951714144222

`A000010(A003961(n+1))-2*A000010(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A349754.P17371990951714144222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A003961 (n + 1)).toNat - 2 * A000010 (n + 1)

end

end A349754.P17371990951714144222

noncomputable section

/-- A349754: a(n) = phi(A003961(n)) - 2*phi(n), where A003961 is fully multiplicative with a(p) = nextprime(p), and phi is Euler totient function.

Offset 1, canonical program `A349754.P17371990951714144222`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A349754 (n : ℕ) : ℤ :=
  A349754.P17371990951714144222.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A349754.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A349756.P8922585120578040547

`eq[1, A348993(n+1)]+1`
-/

namespace A349756.P8922585120578040547
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348993 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A349756.P8922585120578040547

noncomputable section

/-- A349756: Numbers k such that the odd part of sigma(k) is equal to gcd(sigma(k), A003961(k)), where A003961 is fully multiplicative with a(p) = nextprime(p), and sigma is the sum of divisors function.

Offset 1, canonical program `A349756.P8922585120578040547`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 236 terms. -/
def A349756 (n : ℕ) : ℤ :=
  (A349756.P8922585120578040547.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 236 terms. -/
def A349756.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A349905.P349339303286256503

`A003415(A003961(n+1))`
-/

namespace A349905.P349339303286256503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A003961 (n + 1)).toNat

end

end A349905.P349339303286256503

noncomputable section

/-- A349905: Arithmetic derivative of A003961(n), where A003961 is fully multiplicative with a(p) = nextprime(p).

Offset 1, canonical program `A349905.P349339303286256503`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A349905 (n : ℕ) : ℤ :=
  A349905.P349339303286256503.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A349905.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A350071.P10781101784728709574

`gcd(A000203((n+1)²), A003961((n+1)²))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A350071.P10781101784728709574
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000203 ((n + 1) ^ 2)) (A003961 ((n + 1) ^ 2))

end

end A350071.P10781101784728709574

noncomputable section

/-- A350071: a(n) = gcd(sigma(n^2), A003961(n^2)), where A003961 shifts the prime factorization of n one step towards larger primes, and sigma is the sum of divisors function.

Offset 1, canonical program `A350071.P10781101784728709574`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A350071 (n : ℕ) : ℤ :=
  (A350071.P10781101784728709574.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A350071.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A350072.P17523638723638629591

`A349162((n+1)²)`
-/

namespace A350072.P17523638723638629591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349162 ((n + 1) ^ 2)

end

end A350072.P17523638723638629591

noncomputable section

/-- A350072: a(n) = sigma(n^2) / gcd(sigma(n^2), A003961(n^2)), where A003961 shifts the prime factorization of n one step towards larger primes, and sigma is the sum of divisors function.

Offset 1, canonical program `A350072.P17523638723638629591`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A349162, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A350072 (n : ℕ) : ℤ :=
  A350072.P17523638723638629591.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A349162, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A350072.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A351449.P13924172491932163526

`A064989(A295294(A003961(n+1)))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A351449.P13924172491932163526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (A295294 (A003961 (n + 1)).toNat).toNat

end

end A351449.P13924172491932163526

noncomputable section

/-- A351449: a(n) = A064989(A295294(A003961(n))).

Offset 1, canonical program `A351449.P13924172491932163526`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, A064989, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A351449 (n : ℕ) : ℤ :=
  A351449.P13924172491932163526.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, A064989, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A351449.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A351450.P4010795598885041516

`A064989(A048250(A003961(n+1)))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A351450.P4010795598885041516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (A048250 (A003961 (n + 1)).toNat).toNat

end

end A351450.P4010795598885041516

noncomputable section

/-- A351450: a(n) = A064989(A048250(A003961(n))).

Offset 1, canonical program `A351450.P4010795598885041516`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, A064989, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A351450 (n : ℕ) : ℤ :=
  A351450.P4010795598885041516.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, A064989, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A351450.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A351451.P11572919348595548671

`A064989(A092261(A003961(n+1)))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A351451.P11572919348595548671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (A092261 (A003961 (n + 1)).toNat).toNat

end

end A351451.P11572919348595548671

noncomputable section

/-- A351451: a(n) = A064989(A092261(A003961(n))).

Offset 1, canonical program `A351451.P11572919348595548671`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, A064989, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A351451 (n : ℕ) : ℤ :=
  A351451.P11572919348595548671.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, A064989, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A351451.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A351455.P6293380018795775580

`A064989(A001615(A003961(n+1)))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A351455.P6293380018795775580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (A001615 (A003961 (n + 1)).toNat).toNat

end

end A351455.P6293380018795775580

noncomputable section

/-- A351455: a(n) = A064989(A001615(A003961(n))).

Offset 1, canonical program `A351455.P6293380018795775580`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, A064989, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A351455 (n : ℕ) : ℤ :=
  A351455.P6293380018795775580.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, A064989, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A351455.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A351456.P7640681049922300523

`A003958(A000203(A003961(n+1)))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A351456.P7640681049922300523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003958 (A000203 (A003961 (n + 1)).toNat).toNat

end

end A351456.P7640681049922300523

noncomputable section

/-- A351456: a(n) = A003958(sigma(A003961(n))), where A003958 is multiplicative with a(p^e) = (p-1)^e, A003961 multiplicative with a(prime(k)^e) = prime(1+k)^e, and sigma is the sum of divisors function.

Offset 1, canonical program `A351456.P7640681049922300523`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003958, A003961, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A351456 (n : ℕ) : ℤ :=
  A351456.P7640681049922300523.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003958, A003961, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A351456.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A351457.P4852068756587702856

`A351456(n+1)-A339905(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A351457.P4852068756587702856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351456 (n + 1) - A339905 (n + 1)

end

end A351457.P4852068756587702856

noncomputable section

/-- A351457: a(n) = A351456(n) - A339905(n).

Offset 1, canonical program `A351457.P4852068756587702856`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A339905, A351456, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A351457 (n : ℕ) : ℤ :=
  A351457.P4852068756587702856.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A339905, A351456, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A351457.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A351544.P15377189541473253501

`gcd(A045967(n+1)²², A000203(n+1))`
-/

namespace A351544.P15377189541473253501
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((A045967 (n + 1) ^ 2) ^ 2) (A000203 (n + 1))

end

end A351544.P15377189541473253501

noncomputable section

/-- A351544: a(n) is the largest unitary divisor of sigma(n) such that its every prime factor also divides A003961(n), where A003961 is fully multiplicative with a(p) = nextprime(p), and sigma is the sum of divisors function.

Offset 1, canonical program `A351544.P15377189541473253501`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A351544 (n : ℕ) : ℤ :=
  (A351544.P15377189541473253501.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A351544.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A351546.P8277132408193178014

`A000203(n+1)/A351544(n+1)`
-/

namespace A351546.P8277132408193178014
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) : ℚ) / (A351544 (n + 1) : ℚ)

end

end A351546.P8277132408193178014

noncomputable section

/-- A351546: a(n) is the largest unitary divisor of sigma(n) coprime with A003961(n), where A003961 is fully multiplicative with a(p) = nextprime(p), and sigma is the sum of divisors function.

Offset 1, canonical program `A351546.P8277132408193178014`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A351544, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A351546 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A351546.P8277132408193178014.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A351544, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A351546.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A353571.P3686160422925873902

`A342001(A003961(n+1))`
-/

namespace A353571.P3686160422925873902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342001 (A003961 (n + 1)).toNat

end

end A353571.P3686160422925873902

noncomputable section

/-- A353571: Prime-shifted variant of A342001: a(n) = A349905(n) / A003557(A003961(n)).

Offset 1, canonical program `A353571.P3686160422925873902`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A353571 (n : ℕ) : ℤ :=
  A353571.P3686160422925873902.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A353571.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A353638.P14021207844737996786

`A000035(n+1)*A348737(A064989(n+1))`
-/

namespace A353638.P14021207844737996786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (n + 1) * A348737 (A064989 (n + 1)).toNat

end

end A353638.P14021207844737996786

noncomputable section

/-- A353638: a(n) = 1 if n is odd and A064989(sigma(n)) < A064989(n), otherwise 0. Here A064989 shifts the prime factorization one step towards lower primes, and sigma is the sum of divisors function.

Offset 1, canonical program `A353638.P14021207844737996786`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064989, A348737, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A353638 (n : ℕ) : ℤ :=
  A353638.P14021207844737996786.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064989, A348737, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A353638.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A353639.P13459626096142204888

`char[eq[A266437(n), A353638(n+1)]]`
-/

namespace A353639.P13459626096142204888
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266437 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353638 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A353639.P13459626096142204888

noncomputable section

/-- A353639: a(n) = 1 if n is odd and A064989(sigma(n)) > A064989(n), otherwise 0. Here A064989 shifts the prime factorization one step towards lower primes, and sigma is the sum of divisors function.

Offset 1, canonical program `A353639.P13459626096142204888`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9925 terms. -/
def A353639 (n : ℕ) : ℤ :=
  (A353639.P13459626096142204888.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9925 terms. -/
def A353639.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A353666.P3692679567967800425

`gcd(n+1, A351546(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A353666.P3692679567967800425
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A351546 (n + 1))

end

end A353666.P3692679567967800425

noncomputable section

/-- A353666: a(n) = gcd(n, A351546(n)).

Offset 1, canonical program `A353666.P3692679567967800425`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A351546, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A353666 (n : ℕ) : ℤ :=
  (A353666.P3692679567967800425.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A351546, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A353666.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A353667.P4254365963197736758

`(n+1)/A353666(n+1)`
-/

namespace A353667.P4254365963197736758
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A353666 (n + 1) : ℚ)

end

end A353667.P4254365963197736758

noncomputable section

/-- A353667: a(n) = n / gcd(n, A351546(n)).

Offset 1, canonical program `A353667.P4254365963197736758`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A353666, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A353667 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A353667.P4254365963197736758.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A353666, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A353667.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A353668.P18386353074867683989

`A351546(n+1)/gcd(n+1, A351546(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A353668.P18386353074867683989
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A351546 (n + 1) : ℚ) / (Int.gcd (n + 1 : ℤ) (A351546 (n + 1)) : ℚ)

end

end A353668.P18386353074867683989

noncomputable section

/-- A353668: a(n) = A351546(n) / gcd(n, A351546(n)).

Offset 1, canonical program `A353668.P18386353074867683989`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A351546, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A353668 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A353668.P18386353074867683989.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A351546, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A353668.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A353767.P7050124266410233937

`A000010(A000203(A003961(n+1)))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A353767.P7050124266410233937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A000203 (A003961 (n + 1)).toNat).toNat

end

end A353767.P7050124266410233937

noncomputable section

/-- A353767: a(n) = phi(sigma(A003961(n))), where A003961 is fully multiplicative with a(p) = nextprime(p).

Offset 1, canonical program `A353767.P7050124266410233937`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A353767 (n : ℕ) : ℤ :=
  A353767.P7050124266410233937.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A353767.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A353789.P12522694346514914050

`(n+1)*A003972(n+1)`
-/

namespace A353789.P12522694346514914050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A003972 (n + 1)

end

end A353789.P12522694346514914050

noncomputable section

/-- A353789: Multiplicative with a(p^e) = (q - 1) * q^(e-1) * p^e, where q is the least prime greater than p.

Offset 1, canonical program `A353789.P12522694346514914050`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003972, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A353789 (n : ℕ) : ℤ :=
  A353789.P12522694346514914050.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003972, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A353789.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A353790.P899187651485767110

`A353749(A000203(A003961(n+1)))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A353790.P899187651485767110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353749 (A000203 (A003961 (n + 1)).toNat).toNat

end

end A353790.P899187651485767110

noncomputable section

/-- A353790: a(n) = A353749(sigma(A003961(n))), where A353749(k) = phi(k) * A064989(k), and A064989 shifts the prime factorization one step towards lower primes, while A003961 shifts the factorization one step towards higher primes.

Offset 1, canonical program `A353790.P899187651485767110`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, A353749, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A353790 (n : ℕ) : ℤ :=
  A353790.P899187651485767110.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, A353749, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A353790.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A353793.P14606764899847862273

`(n+1)*A339905(n+1)`
-/

namespace A353793.P14606764899847862273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A339905 (n + 1)

end

end A353793.P14606764899847862273

noncomputable section

/-- A353793: Multiplicative with a(p^e) = ((q-1)*p)^e, where q is the least prime larger than p.

Offset 1, canonical program `A353793.P14606764899847862273`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A339905, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A353793 (n : ℕ) : ℤ :=
  A353793.P14606764899847862273.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A339905, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A353793.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A353794.P6907123585398419223

`A353791(A000203(A003961(n+1)))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A353794.P6907123585398419223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353791 (A000203 (A003961 (n + 1)).toNat).toNat

end

end A353794.P6907123585398419223

noncomputable section

/-- A353794: a(n) = A353791(sigma(A003961(n))), where A353791(n) = A003958(n) * A064989(n).

Offset 1, canonical program `A353794.P6907123585398419223`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, A353791, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A353794 (n : ℕ) : ℤ :=
  A353794.P6907123585398419223.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, A353791, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A353794.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A354195.P18136762875265386675

`A064989(A000203(A000203(A003961(n+1))))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A354195.P18136762875265386675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (A000203 (A000203 (A003961 (n + 1)).toNat).toNat).toNat

end

end A354195.P18136762875265386675

noncomputable section

/-- A354195: a(n) = A064989(sigma(sigma(A003961(n)))), where A003961 shifts the prime factorization one step towards larger primes, and A064989 shifts it back towards smaller primes.

Offset 1, canonical program `A354195.P18136762875265386675`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, A064989, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A354195 (n : ℕ) : ℤ :=
  A354195.P18136762875265386675.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, A064989, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A354195.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A354196.P12893256437602308760

`A064989(A064989(A000203(A000203(A003961(A003961(n+1))))))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A354196.P12893256437602308760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (A064989 (A000203 (A000203 (A003961 (A003961 (n + 1)).toNat).toNat).toNat).toNat).toNat

end

end A354196.P12893256437602308760

noncomputable section

/-- A354196: a(n) = A064989(A064989(sigma(sigma(A003961(A003961(n)))))), where A003961 shifts the prime factorization of n one step towards larger primes, and A064989 shifts it back towards smaller primes.

Offset 1, canonical program `A354196.P12893256437602308760`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, A064989, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A354196 (n : ℕ) : ℤ :=
  A354196.P12893256437602308760.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, A064989, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A354196.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A354197.P10444904739021847792

`A064989(A000203(A000203(A000203(A003961(n+1)))))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A354197.P10444904739021847792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (A000203 (A000203 (A000203 (A003961 (n + 1)).toNat).toNat).toNat).toNat

end

end A354197.P10444904739021847792

noncomputable section

/-- A354197: a(n) = A064989(sigma(sigma(sigma(A003961(n))))), where A003961 shifts the prime factorization one step towards larger primes, and A064989 shifts it back towards smaller primes.

Offset 1, canonical program `A354197.P10444904739021847792`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, A064989, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A354197 (n : ℕ) : ℤ :=
  A354197.P10444904739021847792.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, A064989, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A354197.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A354198.P6367835848595341422

`A064989(A064989(A000203(A000203(A000203(A003961(A003961(n+1)))))))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A354198.P6367835848595341422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (A064989 (A000203 (A000203 (A000203 (A003961 (A003961 (n + 1)).toNat).toNat).toNat).toNat).toNat).toNat

end

end A354198.P6367835848595341422

noncomputable section

/-- A354198: a(n) = A064989(A064989(sigma(sigma(sigma(A003961(A003961(n))))))), where A003961 shifts the prime factorization of n one step towards larger primes, and A064989 shifts it back towards smaller primes.

Offset 1, canonical program `A354198.P6367835848595341422`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, A064989, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A354198 (n : ℕ) : ℤ :=
  A354198.P6367835848595341422.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, A064989, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A354198.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A354346.P4007007454875220424

`2*(n+1)-A064989(A000203(A000203(A003961(n+1))))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A354346.P4007007454875220424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - A064989 (A000203 (A000203 (A003961 (n + 1)).toNat).toNat).toNat

end

end A354346.P4007007454875220424

noncomputable section

/-- A354346: a(n) = 2*n - A064989(sigma(sigma(A003961(n)))), where A003961 shifts the prime factorization one step towards larger primes, and A064989 shifts it back towards smaller primes.

Offset 1, canonical program `A354346.P4007007454875220424`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, A064989, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A354346 (n : ℕ) : ℤ :=
  A354346.P4007007454875220424.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, A064989, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A354346.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A355825.P4035003920145618499

`A295316(A268385(n+1))`
-/

namespace A355825.P4035003920145618499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295316 (A268385 (n + 1)).toNat

end

end A355825.P4035003920145618499

noncomputable section

/-- A355825: a(n) = 1 if all exponents in prime factorization of n have an odd binary weight, otherwise 0.

Offset 1, canonical program `A355825.P4035003920145618499`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A268385, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A355825 (n : ℕ) : ℤ :=
  A355825.P4035003920145618499.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A268385, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A355825.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A355932.P15465957735796783743

`gcd(A000203(n+1), A000203(A003961(n+1)))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A355932.P15465957735796783743
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000203 (n + 1)) (A000203 (A003961 (n + 1)).toNat)

end

end A355932.P15465957735796783743

noncomputable section

/-- A355932: a(n) = gcd(sigma(n), sigma(A003961(n))), where A003961 is fully multiplicative with a(p) = nextprime(p).

Offset 1, canonical program `A355932.P15465957735796783743`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A355932 (n : ℕ) : ℤ :=
  (A355932.P15465957735796783743.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A355932.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A355933.P2830370768041058507

`A003973(n+1)/A355932(n+1)`
-/

namespace A355933.P2830370768041058507
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003973 (n + 1) : ℚ) / (A355932 (n + 1) : ℚ)

end

end A355933.P2830370768041058507

noncomputable section

/-- A355933: a(n) = A003973(n) / gcd(sigma(n), A003973(n)), where A003973(n) = sigma(A003961(n)) and A003961 is fully multiplicative with a(p) = nextprime(p).

Offset 1, canonical program `A355933.P2830370768041058507`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003973, A355932, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A355933 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A355933.P2830370768041058507.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003973, A355932, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A355933.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A355934.P12025855991431582106

`A000203(n+1)/A355932(n+1)`
-/

namespace A355934.P12025855991431582106
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) : ℚ) / (A355932 (n + 1) : ℚ)

end

end A355934.P12025855991431582106

noncomputable section

/-- A355934: a(n) = sigma(n) / gcd(sigma(n), sigma(A003961(n))), where A003961 is fully multiplicative with a(p) = nextprime(p), and sigma is the sum of divisors function.

Offset 1, canonical program `A355934.P12025855991431582106`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A355932, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A355934 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A355934.P12025855991431582106.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A355932, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A355934.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A355940.P3503418342827386624

`A063524(A355934(n+1))`
-/

namespace A355940.P3503418342827386624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063524 (A355934 (n + 1)).toNat

end

end A355940.P3503418342827386624

noncomputable section

/-- A355940: a(n) = 1 if A003973(n) is a multiple of A000203(n), otherwise 0.

Offset 1, canonical program `A355940.P3503418342827386624`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A355940 (n : ℕ) : ℤ :=
  A355940.P3503418342827386624.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A355940.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A355941.P5058088448507230669

`eq[1, A355940(n+1)]+1`
-/

namespace A355941.P5058088448507230669
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355940 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A355941.P5058088448507230669

noncomputable section

/-- A355941: Numbers k such that A003973(k) is a multiple of A000203(k).

Offset 1, canonical program `A355941.P5058088448507230669`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 116 terms. -/
def A355941 (n : ℕ) : ℤ :=
  (A355941.P5058088448507230669.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 116 terms. -/
def A355941.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A355942.P8093612167510493976

`lt[(n+1)%A326042(n+1), 1]+1`
-/

namespace A355942.P8093612167510493976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A326042 (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A355942.P8093612167510493976

noncomputable section

/-- A355942: Numbers k such that k is a multiple of A326042(k).

Offset 1, canonical program `A355942.P8093612167510493976`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 156 terms. -/
def A355942 (n : ℕ) : ℤ :=
  (A355942.P8093612167510493976.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 156 terms. -/
def A355942.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A355946.P8058548396352756373

`Δ[fp[A349756(n+1)]]`
-/

namespace A355946.P8058548396352756373
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349756 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (n : ℤ) < f2 j) 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A355946.P8058548396352756373

noncomputable section

/-- A355946: a(n) = 1 if the odd part of sigma(k) divides A003961(k), otherwise 0, where A003961 is fully multiplicative with a(p) = nextprime(p), and sigma is the sum of divisors function.

Offset 1, canonical program `A355946.P8058548396352756373`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A355946 (n : ℕ) : ℤ :=
  A355946.P8058548396352756373.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A355946.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A357852.P15360889113800815709

`A003961(A003961(n+1))`
-/

namespace A357852.P15360889113800815709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (A003961 (n + 1)).toNat

end

end A357852.P15360889113800815709

noncomputable section

/-- A357852: Replace prime(k) with prime(k+2) in the prime factorization of n.

Offset 1, canonical program `A357852.P15360889113800815709`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A357852 (n : ℕ) : ℤ :=
  A357852.P15360889113800815709.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A357852.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A358750.P15552411444014869718

`A353494(A003961(n+1))`
-/

namespace A358750.P15552411444014869718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353494 (A003961 (n + 1)).toNat

end

end A358750.P15552411444014869718

noncomputable section

/-- A358750: a(n) = 1 if A349905(n) is a multiple of 4, otherwise 0. Here A349905(n) is the arithmetic derivative applied to the prime shifted n.

Offset 1, canonical program `A358750.P15552411444014869718`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, A353494, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A358750 (n : ℕ) : ℤ :=
  A358750.P15552411444014869718.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, A353494, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A358750.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A358751.P1149310267110724188

`A358771(A003961(n+1))`
-/

namespace A358751.P1149310267110724188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358771 (A003961 (n + 1)).toNat

end

end A358751.P1149310267110724188

noncomputable section

/-- A358751: a(n) = 1 if bigomega(n) == 1 (mod 4), otherwise 0.

Offset 1, canonical program `A358751.P1149310267110724188`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, A358771, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A358751 (n : ℕ) : ℤ :=
  A358751.P1149310267110724188.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, A358771, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A358751.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A358752.P5898709040952930086

`A065043(n+1)-A358750(n+1)`
-/

namespace A358752.P5898709040952930086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065043 (n + 1) - A358750 (n + 1)

end

end A358752.P5898709040952930086

noncomputable section

/-- A358752: a(n) = 1 if A349905(n) == 2 (mod 4), otherwise 0. Here A349905(n) is the arithmetic derivative applied to the prime shifted n.

Offset 1, canonical program `A358752.P5898709040952930086`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A358750, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A358752 (n : ℕ) : ℤ :=
  A358752.P5898709040952930086.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A358750, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A358752.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A358753.P12282633013976382741

`A066829(n+1)-A358751(n+1)`
-/

namespace A358753.P12282633013976382741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066829 (n + 1) - A358751 (n + 1)

end

end A358753.P12282633013976382741

noncomputable section

/-- A358753: a(n) = 1 if bigomega(n) == 3 (mod 4), otherwise 0.

Offset 1, canonical program `A358753.P12282633013976382741`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A358751, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A358753 (n : ℕ) : ℤ :=
  A358753.P12282633013976382741.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A358751, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A358753.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A358760.P11879687346543983601

`lt[0, A358750(n+1)]+1`
-/

namespace A358760.P11879687346543983601
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358750 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A358760.P11879687346543983601

noncomputable section

/-- A358760: Numbers k for which A349905(k) is a multiple of 4, where A349905(k) is the arithmetic derivative applied to the prime shifted k.

Offset 1, canonical program `A358760.P11879687346543983601`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A358760 (n : ℕ) : ℤ :=
  (A358760.P11879687346543983601.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A358760.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A358762.P12298338065888311009

`lt[0, A358752(1+n)]+1`
-/

namespace A358762.P12298338065888311009
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358752 (1 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A358762.P12298338065888311009

noncomputable section

/-- A358762: Numbers k for which A349905(k) == 2 (mod 4), where A349905(k) is the arithmetic derivative applied to the prime shifted k.

Offset 1, canonical program `A358762.P12298338065888311009`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A358762 (n : ℕ) : ℤ :=
  (A358762.P12298338065888311009.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A358762.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A358763.P9425270982903074007

`lt[0, A358753(n+1)]+1`
-/

namespace A358763.P9425270982903074007
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358753 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A358763.P9425270982903074007

noncomputable section

/-- A358763: Numbers k for which bigomega(k) == 3 (mod 4).

Offset 1, canonical program `A358763.P9425270982903074007`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A358763 (n : ℕ) : ℤ :=
  (A358763.P9425270982903074007.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A358763.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A359600.P6656112842617839429

`A003961(A046523(n+1))`
-/

namespace A359600.P6656112842617839429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (A046523 (n + 1)).toNat

end

end A359600.P6656112842617839429

noncomputable section

/-- A359600: The least odd number with the same prime signature as n.

Offset 1, canonical program `A359600.P6656112842617839429`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, A046523, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A359600 (n : ℕ) : ℤ :=
  A359600.P6656112842617839429.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, A046523, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A359600.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A360130.P786476217289508092

`A010054(A003961(n+1))`
-/

namespace A360130.P786476217289508092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (A003961 (n + 1)).toNat

end

end A360130.P786476217289508092

noncomputable section

/-- A360130: a(n) = 1 if A003961(n) is a triangular number, otherwise 0, where A003961 is fully multiplicative with a(p) = nextprime(p).

Offset 1, canonical program `A360130.P786476217289508092`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A360130 (n : ℕ) : ℤ :=
  A360130.P786476217289508092.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A360130.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A361466.P10349165119579873074

`A361465(A003961(n+1))`
-/

namespace A361466.P10349165119579873074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361465 (A003961 (n + 1)).toNat

end

end A361466.P10349165119579873074

noncomputable section

/-- A361466: a(n) = 1 if A017665(A003961(n)) is a power of 2, otherwise 0. Here A017665 is the numerator of the sum of the reciprocals of the divisors of n, and A003961 is fully multiplicative with a(p) = nextprime(p).

Offset 1, canonical program `A361466.P10349165119579873074`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, A361465, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A361466 (n : ℕ) : ℤ :=
  A361466.P10349165119579873074.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, A361465, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A361466.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A361467.P1126770566628793567

`A003961(n+1)*A000203(A003961(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A361467.P1126770566628793567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (n + 1) * A000203 (A003961 (n + 1)).toNat

end

end A361467.P1126770566628793567

noncomputable section

/-- A361467: a(n) = A003961(n) * sigma(A003961(n)), where A003961 is fully multiplicative with a(p) = nextprime(p), and sigma is the sum of divisors function.

Offset 1, canonical program `A361467.P1126770566628793567`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A361467 (n : ℕ) : ℤ :=
  A361467.P1126770566628793567.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A361467.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A361468.P13798965541341440440

`A249670(A003961(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A361468.P13798965541341440440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249670 (A003961 (n + 1)).toNat

end

end A361468.P13798965541341440440

noncomputable section

/-- A361468: a(n) = A249670(A003961(n)).

Offset 1, canonical program `A361468.P13798965541341440440`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, A249670, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A361468 (n : ℕ) : ℤ :=
  A361468.P13798965541341440440.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, A249670, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A361468.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A361469.P8533097627306347180

`A001222(A249670(A003961(n+1)))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A361469.P8533097627306347180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A249670 (A003961 (n + 1)).toNat).toNat

end

end A361469.P8533097627306347180

noncomputable section

/-- A361469: a(n) = bigomega(A249670(A003961(n))).

Offset 1, canonical program `A361469.P8533097627306347180`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, A249670, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A361469 (n : ℕ) : ℤ :=
  A361469.P8533097627306347180.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, A249670, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A361469.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A366903.P14528994784463465807

`∑{d}[1+n, #*A355825(#)]`
-/

namespace A366903.P14528994784463465807
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A355825 d

end

end A366903.P14528994784463465807

noncomputable section

/-- A366903: The sum of exponentially odious divisors of n.

Offset 1, canonical program `A366903.P14528994784463465807`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A366903 (n : ℕ) : ℤ :=
  A366903.P14528994784463465807.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A366903.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A372565.P13131356966692451421

`gcd(1+n, A326057(n+1))`
-/

namespace A372565.P13131356966692451421
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (1 + n : ℤ) (A326057 (n + 1))

end

end A372565.P13131356966692451421

noncomputable section

/-- A372565: a(n) is the greatest common divisor of n, sigma(n) and A003961(n), where A003961(n) is fully multiplicative function with a(prime(i)) = prime(i+1).

Offset 1, canonical program `A372565.P13131356966692451421`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A372565 (n : ℕ) : ℤ :=
  (A372565.P13131356966692451421.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A372565.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A372566.P10239918502240805923

`lt[1, A372565(n+1)]+1`
-/

namespace A372566.P10239918502240805923
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372565 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A372566.P10239918502240805923

noncomputable section

/-- A372566: Numbers k such that k, sigma(k) and A003961(k) have a common divisor larger than 1, where A003961(n) is fully multiplicative function with a(prime(i)) = prime(i+1).

Offset 1, canonical program `A372566.P10239918502240805923`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8327 terms. -/
def A372566 (n : ℕ) : ℤ :=
  (A372566.P10239918502240805923.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8327 terms. -/
def A372566.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A372567.P13528077420289210032

`filter[A372566(n+1), A324908(#)]`
-/

namespace A372567.P13528077420289210032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372566 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A324908 (f1 j).toNat = 1) n)

end

end A372567.P13528077420289210032

noncomputable section

/-- A372567: Odd numbers k such that k, sigma(k) and A003961(k) have a common divisor larger than 1, where A003961(n) is fully multiplicative function with a(prime(i)) = prime(i+1).

Offset 1, canonical program `A372567.P13528077420289210032`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 972 terms. -/
def A372567 (n : ℕ) : ℤ :=
  A372567.P13528077420289210032.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 972 terms. -/
def A372567.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A374130.P2366869073036935020

`A010052(2*A293442(n+1))`
-/

namespace A374130.P2366869073036935020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (2 * A293442 (n + 1)).toNat

end

end A374130.P2366869073036935020

noncomputable section

/-- A374130: a(n) = 1 if bitwise-XOR of the exponents of primes in the prime factorization of n is equal to 1, otherwise 0.

Offset 1, canonical program `A374130.P2366869073036935020`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A374130 (n : ℕ) : ℤ :=
  A374130.P2366869073036935020.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A374130.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A377984.P6847932780309628605

`2*A000203(n+1)-A003961(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A377984.P6847932780309628605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000203 (n + 1) - A003961 (n + 1)

end

end A377984.P6847932780309628605

noncomputable section

/-- A377984: a(n) = 2*sigma(n) - A003961(n), where sigma is the sum of divisors function and A003961 is fully multiplicative function with a(prime(i)) = prime(i+1).

Offset 1, canonical program `A377984.P6847932780309628605`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A377984 (n : ℕ) : ℤ :=
  A377984.P6847932780309628605.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A377984.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A377985.P6249672595049724567

`2*(n+1)-A000010(A003961(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A377985.P6249672595049724567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - A000010 (A003961 (n + 1)).toNat

end

end A377985.P6249672595049724567

noncomputable section

/-- A377985: a(n) = 2*n - phi(A003961(n)), where phi is Euler totient function and A003961 is fully multiplicative function with a(prime(i)) = prime(i+1).

Offset 1, canonical program `A377985.P6249672595049724567`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A377985 (n : ℕ) : ℤ :=
  A377985.P6249672595049724567.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A377985.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A378220.P1471173532227017870

`A023900(A003961(n+1))`
-/

namespace A378220.P1471173532227017870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023900 (A003961 (n + 1)).toNat

end

end A378220.P1471173532227017870

noncomputable section

/-- A378220: Dirichlet inverse of phi(A003961(n)), where A003961 is fully multiplicative function with a(prime(i)) = prime(i+1).

Offset 1, canonical program `A378220.P1471173532227017870`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A378220 (n : ℕ) : ℤ :=
  A378220.P1471173532227017870.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A378220.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A378221.P4388743736498616945

`A046692(A003961(n+1))`
-/

namespace A378221.P4388743736498616945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046692 (A003961 (n + 1)).toNat

end

end A378221.P4388743736498616945

noncomputable section

/-- A378221: Dirichlet inverse of sigma(A003961(n)), where A003961 is fully multiplicative function with a(prime(i)) = prime(i+1).

Offset 1, canonical program `A378221.P4388743736498616945`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A378221 (n : ℕ) : ℤ :=
  A378221.P4388743736498616945.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A378221.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A378228.P6353953585605752908

`(1+n)*A378221(n+1)`
-/

namespace A378228.P6353953585605752908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 + n : ℤ) * A378221 (n + 1)

end

end A378228.P6353953585605752908

noncomputable section

/-- A378228: Dirichlet inverse of A341528, where A341528(n) = n * sigma(A003961(n)), and A003961 is fully multiplicative with a(prime(i)) = prime(i+1).

Offset 1, canonical program `A378228.P6353953585605752908`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A378228 (n : ℕ) : ℤ :=
  A378228.P6353953585605752908.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A378228.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A378229.P3491273019573870571

`∑{d}[n+1, A349388(#)*A378228((n+1)/#)]`
-/

namespace A378229.P3491273019573870571
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A349388 d * A378228 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A378229.P3491273019573870571

noncomputable section

/-- A378229: Dirichlet inverse of A341529, where A341529(n) = sigma(n) * A003961(n), and A003961 is fully multiplicative with a(prime(i)) = prime(i+1).

Offset 1, canonical program `A378229.P3491273019573870571`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A378229 (n : ℕ) : ℤ :=
  A378229.P3491273019573870571.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A378229.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A378231.P16466067974621006118

`2*A003961((n+1)²)-A000203(A003961((n+1)²))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A378231.P16466067974621006118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A003961 ((n + 1) ^ 2) - A000203 (A003961 ((n + 1) ^ 2)).toNat

end

end A378231.P16466067974621006118

noncomputable section

/-- A378231: Deficiency of prime-shifted squares: a(n) = 2*A003961(n^2) - sigma(A003961(n^2)), where A003961 is fully multiplicative function with a(prime(i)) = prime(i+1).

Offset 1, canonical program `A378231.P16466067974621006118`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A378231 (n : ℕ) : ℤ :=
  A378231.P16466067974621006118.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A378231.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A378606.P1824987261939307766

`∑{d}[n+1, A008683(#)*A349387((n+1)/#)]`
-/

namespace A378606.P1824987261939307766
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A349387 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A378606.P1824987261939307766

noncomputable section

/-- A378606: Dirichlet convolution of A046692 and A003961, where A046692 is the Dirichlet inverse of sigma, and A003961 is fully multiplicative with a(prime(i)) = prime(i+1).

Offset 1, canonical program `A378606.P1824987261939307766`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A349387, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A378606 (n : ℕ) : ℤ :=
  A378606.P1824987261939307766.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A349387, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A378606.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A378607.P10144459662400142962

`∑{d}[n+1, A349388(#)]`
-/

namespace A378607.P10144459662400142962
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A349388 d

end

end A378607.P10144459662400142962

noncomputable section

/-- A378607: Dirichlet convolution of sigma and the Dirichlet inverse of A003961 (A346234).

Offset 1, canonical program `A378607.P10144459662400142962`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A349388, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A378607 (n : ℕ) : ℤ :=
  A378607.P10144459662400142962.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A349388, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A378607.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A378662.P11219609030214075406

`∑{d}[n+1, A341612(#)]`
-/

namespace A378662.P11219609030214075406
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A341612 d

end

end A378662.P11219609030214075406

noncomputable section

/-- A378662: Number of divisors d of n such that sigma(d) <= 2*d < A003961(d), where A003961 is fully multiplicative with a(p) = nextprime(p).

Offset 1, canonical program `A378662.P11219609030214075406`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A341612, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A378662 (n : ℕ) : ℤ :=
  A378662.P11219609030214075406.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A341612, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A378662.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A378663.P6986709549582363223

`A378662(n+1)-A080225(n+1)`
-/

namespace A378663.P6986709549582363223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378662 (n + 1) - A080225 (n + 1)

end

end A378663.P6986709549582363223

noncomputable section

/-- A378663: Number of divisors d of n such that sigma(d) < 2*d < A003961(d), where A003961 is fully multiplicative with a(p) = nextprime(p).

Offset 1, canonical program `A378663.P6986709549582363223`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A080225, A378662, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A378663 (n : ℕ) : ℤ :=
  A378663.P6986709549582363223.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A080225, A378662, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A378663.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A378752.P11355063342536478967

`2*A000203(n+1)-A000203(A003961(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A378752.P11355063342536478967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000203 (n + 1) - A000203 (A003961 (n + 1)).toNat

end

end A378752.P11355063342536478967

noncomputable section

/-- A378752: a(n) = 2*sigma(n) - sigma(A003961(n)), where A003961 is fully multiplicative with a(prime(i)) = prime(i+1).

Offset 1, canonical program `A378752.P11355063342536478967`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A378752 (n : ℕ) : ℤ :=
  A378752.P11355063342536478967.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A378752.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A378981.P13160010712622335556

`(A003961(n+1)-A000203(n+1))%(A003961(n+1)-2*(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A378981.P13160010712622335556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003961 (n + 1) - A000203 (n + 1)) (A003961 (n + 1) - (2 * (n + 1) : ℤ))

end

end A378981.P13160010712622335556

noncomputable section

/-- A378981: a(n) = (A003961(n)-sigma(n)) mod (A003961(n)-2*n), where A003961 is fully multiplicative with a(prime(i)) = prime(i+1).

Offset 1, canonical program `A378981.P13160010712622335556`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A378981 (n : ℕ) : ℤ :=
  A378981.P13160010712622335556.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A378981.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A378982.P16224066309314701461

`(A003961(n+1)-(1+A000203(n+1)))%(A003961(n+1)-2*(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A378982.P16224066309314701461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003961 (n + 1) - (1 + A000203 (n + 1))) (A003961 (n + 1) - (2 * (n + 1) : ℤ))

end

end A378982.P16224066309314701461

noncomputable section

/-- A378982: a(n) = (A003961(n)-(1+sigma(n))) mod (A003961(n)-2*n), where A003961 is fully multiplicative with a(prime(i)) = prime(i+1).

Offset 1, canonical program `A378982.P16224066309314701461`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A378982 (n : ℕ) : ℤ :=
  A378982.P16224066309314701461.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A378982.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A378983.P7472048348520994614

`lt[A378982(n+1), 1]+1`
-/

namespace A378983.P7472048348520994614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378982 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A378983.P7472048348520994614

noncomputable section

/-- A378983: Numbers k such that (A003961(k)-2*k) divides (A003961(k)-(1+sigma(k))), where A003961 is fully multiplicative with a(prime(i)) = prime(i+1), and sigma is the sum of divisors function.

Offset 1, canonical program `A378983.P7472048348520994614`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 549 terms. -/
def A378983 (n : ℕ) : ℤ :=
  (A378983.P7472048348520994614.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 549 terms. -/
def A378983.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A378985.P6789501297804054790

`A336835(2*(n+1))`
-/

namespace A378985.P6789501297804054790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336835 (2 * (n + 1))

end

end A378985.P6789501297804054790

noncomputable section

/-- A378985: Number of iterations of x -> A003961(x) needed before the result is deficient, when starting from x = 2*n.

Offset 1, canonical program `A378985.P6789501297804054790`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A336835, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A378985 (n : ℕ) : ℤ :=
  A378985.P6789501297804054790.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A336835, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A378985.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A379229.P5775022352315501244

`A252748(A319630(n+1))`
-/

namespace A379229.P5775022352315501244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252748 (A319630 (n + 1)).toNat

end

end A379229.P5775022352315501244

noncomputable section

/-- A379229: Difference A003961(k)-(2*k) computed for the natural numbers k for which k and A003961(k) are relatively prime, where A003961 is fully multiplicative with a(prime(i)) = prime(i+1).

Offset 1, canonical program `A379229.P5775022352315501244`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A252748, A319630, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A379229 (n : ℕ) : ℤ :=
  A379229.P5775022352315501244.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A252748, A319630, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A379229.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A379230.P706396864197562586

`A252748(A104210(n+1))`
-/

namespace A379230.P706396864197562586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252748 (A104210 (n + 1)).toNat

end

end A379230.P706396864197562586

noncomputable section

/-- A379230: Difference A003961(k)-(2*k) computed for the natural numbers k for which gcd(k,A003961(k)) > 1, where A003961 is fully multiplicative with a(prime(i)) = prime(i+1).

Offset 1, canonical program `A379230.P706396864197562586`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A104210, A252748, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A379230 (n : ℕ) : ℤ :=
  A379230.P706396864197562586.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A104210, A252748, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A379230.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A379238.P6108513974028893075

`∑{p}[A286385(n+1), C(#, A286385(n+1))]`
-/

namespace A379238.P6108513974028893075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286385 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.choose p (A286385 (n + 1)).toNat

end

end A379238.P6108513974028893075

noncomputable section

/-- A379238: a(n) = 1 if A003961(n)-sigma(n) is prime, otherwise 0, where A003961 is fully multiplicative with a(prime(i)) = prime(i+1), and sigma is the sum of divisors function.

Offset 1, canonical program `A379238.P6108513974028893075`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8191 terms. -/
def A379238 (n : ℕ) : ℤ :=
  (A379238.P6108513974028893075.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8191 terms. -/
def A379238.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A379239.P18266908757629048078

`eq[1, A379238(1+n)]+1`
-/

namespace A379239.P18266908757629048078
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379238 (1 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A379239.P18266908757629048078

noncomputable section

/-- A379239: Numbers k for which A003961(k)-sigma(k) is prime, where A003961 is fully multiplicative with a(prime(i)) = prime(i+1), and sigma is the sum of divisors function.

Offset 1, canonical program `A379239.P18266908757629048078`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A379239 (n : ℕ) : ℤ :=
  (A379239.P18266908757629048078.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A379239.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A379475.P1067079414493059860

`n²%A372565(n+1)`
-/

namespace A379475.P1067079414493059860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n ^ 2 : ℤ) (A372565 (n + 1))

end

end A379475.P1067079414493059860

noncomputable section

/-- A379475: a(n) = 1 if A372565(n) > 1, otherwise 0, where A372565(n) is the greatest common divisor of n, sigma(n) and A003961(n).

Offset 1, canonical program `A379475.P1067079414493059860`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A379475 (n : ℕ) : ℤ :=
  A379475.P1067079414493059860.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A379475.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A379476.P18000588626381920064

`A008949(A048298(n))%A326057(n+1)`
-/

namespace A379476.P18000588626381920064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008949 (A048298 n).toNat) (A326057 (n + 1))

end

end A379476.P18000588626381920064

noncomputable section

/-- A379476: a(n) = 1 if A326057(n) > 1, otherwise 0, where A326057(n) = gcd(A003961(n)-2n, A003961(n)-sigma(n)).

Offset 1, canonical program `A379476.P18000588626381920064`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A379476 (n : ℕ) : ℤ :=
  A379476.P18000588626381920064.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A379476.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A379477.P1420737164069677363

`eq[1, A379476(1+n)]+1`
-/

namespace A379477.P1420737164069677363
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379476 (1 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A379477.P1420737164069677363

noncomputable section

/-- A379477: Numbers k such that A003961(k)-2k and A003961(k)-sigma(k) have a common divisor > 1, where A003961 is fully multiplicative with a(prime(i)) = prime(i+1), and sigma is the sum of divisors function.

Offset 1, canonical program `A379477.P1420737164069677363`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A379477 (n : ℕ) : ℤ :=
  (A379477.P1420737164069677363.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A379477.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A379478.P7624876134946239236

`A379476(n+1)-A379475(n+1)`
-/

namespace A379478.P7624876134946239236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379476 (n + 1) - A379475 (n + 1)

end

end A379478.P7624876134946239236

noncomputable section

/-- A379478: a(n) = 1 if the greatest common divisor of n, sigma(n) and A003961(n) is 1 and gcd(A003961(n)-2n, A003961(n)-sigma(n)) > 1, otherwise 0.

Offset 1, canonical program `A379478.P7624876134946239236`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A379475, A379476, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A379478 (n : ℕ) : ℤ :=
  A379478.P7624876134946239236.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A379475, A379476, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A379478.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A379479.P310701363561203726

`eq[1, A379478(n+1)]+1`
-/

namespace A379479.P310701363561203726
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379478 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A379479.P310701363561203726

noncomputable section

/-- A379479: Numbers k such that the greatest common divisor of k, sigma(k) and A003961(k) is 1 and gcd(A003961(k)-2k, A003961(k)-sigma(k)) > 1.

Offset 1, canonical program `A379479.P310701363561203726`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4816 terms. -/
def A379479 (n : ℕ) : ℤ :=
  (A379479.P310701363561203726.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4816 terms. -/
def A379479.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A379482.P7552146915512457481

`A000203(A003961((n+1)²))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A379482.P7552146915512457481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A003961 ((n + 1) ^ 2)).toNat

end

end A379482.P7552146915512457481

noncomputable section

/-- A379482: a(n) = sigma(A003961(n^2)), where A003961 is fully multiplicative with a(prime(i)) = prime(i+1), and sigma is the sum of divisors function.

Offset 1, canonical program `A379482.P7552146915512457481`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A379482 (n : ℕ) : ℤ :=
  A379482.P7552146915512457481.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A379482.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A379483.P10370958527501415734

`A007814(1+A379482(n+1))`
-/

namespace A379483.P10370958527501415734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (1 + A379482 (n + 1)).toNat

end

end A379483.P10370958527501415734

noncomputable section

/-- A379483: a(n) is the number of trailing 1-bits in the binary representation of sigma(A003961(n^2)), where A003961 is fully multiplicative with a(prime(i)) = prime(i+1), and sigma is the sum of divisors function.

Offset 1, canonical program `A379483.P10370958527501415734`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A379482, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A379483 (n : ℕ) : ℤ :=
  A379483.P10370958527501415734.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A379482, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A379483.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A383680.P17283393562093612107

`A003961(A383679(1+n))`
-/

namespace A383680.P17283393562093612107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (A383679 (1 + n)).toNat

end

end A383680.P17283393562093612107

noncomputable section

/-- A383680: The greater of two consecutive primes whose gap equals the difference between their digital sums.

Offset 1, canonical program `A383680.P17283393562093612107`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 447 terms. -/
def A383680 (n : ℕ) : ℤ :=
  A383680.P17283393562093612107.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 447 terms. -/
def A383680.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A388975.P12312812905887415776

`A033885(A003961(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A388975.P12312812905887415776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033885 (A003961 (n + 1)).toNat

end

end A388975.P12312812905887415776

noncomputable section

/-- A388975: a(n) = A033885(A003961(n)), where A033885(n) = 3*n-sigma(n), and A003961 is fully multiplicative with a(p) = nextprime(p).

Offset 1, canonical program `A388975.P12312812905887415776`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A388975 (n : ℕ) : ℤ :=
  A388975.P12312812905887415776.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A388975.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A388976.P9323048198730537457

`A033885(n+1)*A003961(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A388976.P9323048198730537457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033885 (n + 1) * A003961 (n + 1)

end

end A388976.P9323048198730537457

noncomputable section

/-- A388976: a(n) = A033885(n) * A003961(n), where A033885(n) = 3*n-sigma(n), and A003961 is fully multiplicative with a(p) = nextprime(p).

Offset 1, canonical program `A388976.P9323048198730537457`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A388976 (n : ℕ) : ℤ :=
  A388976.P9323048198730537457.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A388976.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A388977.P2451326477071846566

`(n+1)*A033885(A003961(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A388977.P2451326477071846566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A033885 (A003961 (n + 1)).toNat

end

end A388977.P2451326477071846566

noncomputable section

/-- A388977: a(n) = n * A033885(A003961(n)), where A033885(n) = 3*n-sigma(n), and A003961 is fully multiplicative with a(p) = nextprime(p).

Offset 1, canonical program `A388977.P2451326477071846566`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A388977 (n : ℕ) : ℤ :=
  A388977.P2451326477071846566.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A388977.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A388978.P10471211982599907514

`(n+1-A007913(n+1))*(A000203(A003961(n+1))-A007913(A003961(n+1))-A003961(n+1))`
-/

namespace A388978.P10471211982599907514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) - A007913 (n + 1)) * (A000203 (A003961 (n + 1)).toNat - A007913 (A003961 (n + 1)).toNat - A003961 (n + 1))

end

end A388978.P10471211982599907514

noncomputable section

/-- A388978: a(n) = A326128(n) * A389077(n).

Offset 1, canonical program `A388978.P10471211982599907514`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A388978 (n : ℕ) : ℤ :=
  A388978.P10471211982599907514.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A388978.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A389076.P11407624223470191631

`A000203(A003961(n+1))-A007913(A003961(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A389076.P11407624223470191631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A003961 (n + 1)).toNat - A007913 (A003961 (n + 1)).toNat

end

end A389076.P11407624223470191631

noncomputable section

/-- A389076: Sum of all other divisors of primeshifted n except its squarefree part: a(n) = sigma(A003961(n)) - A007913(A003961(n)).

Offset 1, canonical program `A389076.P11407624223470191631`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A389076 (n : ℕ) : ℤ :=
  A389076.P11407624223470191631.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A389076.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A389077.P4480091173600006627

`A001065(A003961(n+1))-A007913(A003961(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A389077.P4480091173600006627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (A003961 (n + 1)).toNat - A007913 (A003961 (n + 1)).toNat

end

end A389077.P4480091173600006627

noncomputable section

/-- A389077: Sum of all other proper divisors of primeshifted n except its squarefree part: a(n) = A001065(A003961(n)) - A007913(A003961(n)).

Offset 1, canonical program `A389077.P4480091173600006627`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A389077 (n : ℕ) : ℤ :=
  A389077.P4480091173600006627.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A389077.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A389078.P3318520002911063327

`A003961(n+1)-A007913(A003961(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A389078.P3318520002911063327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (n + 1) - A007913 (A003961 (n + 1)).toNat

end

end A389078.P3318520002911063327

noncomputable section

/-- A389078: Primeshifted n minus its squarefree part: a(n) = A003961(n) - A007913(A003961(n)).

Offset 1, canonical program `A389078.P3318520002911063327`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A389078 (n : ℕ) : ℤ :=
  A389078.P3318520002911063327.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A389078.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A389906.P15212015909118646054

`min(2*(n+1), A003961(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A389906.P15212015909118646054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  min (2 * (n + 1) : ℤ) (A003961 (n + 1))

end

end A389906.P15212015909118646054

noncomputable section

/-- A389906: a(n) = min(2*n, A003961(n)), where A003961 is fully multiplicative with a(p) = nextprime(p)

Offset 1, canonical program `A389906.P15212015909118646054`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A389906 (n : ℕ) : ℤ :=
  A389906.P15212015909118646054.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A389906.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A389910.P3820855388453809546

`A389906(A252463(n+1))`
-/

namespace A389910.P3820855388453809546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389906 (A252463 (n + 1)).toNat

end

end A389910.P3820855388453809546

noncomputable section

/-- A389910: a(n) = min(n, A389909(n)).

Offset 1, canonical program `A389910.P3820855388453809546`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A389910 (n : ℕ) : ℤ :=
  A389910.P3820855388453809546.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A389910.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A390430.P10162283032244462444

`A061395(n+1)+A061395(n+1)-A243055(n+1)`
-/

namespace A390430.P10162283032244462444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (n + 1) + (A061395 (n + 1) - A243055 (n + 1))

end

end A390430.P10162283032244462444

noncomputable section

/-- A390430: Least prime index of n plus greatest prime index of n; a(1) = 0.

Offset 1, canonical program `A390430.P10162283032244462444`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A390430 (n : ℕ) : ℤ :=
  A390430.P10162283032244462444.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A390430.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A390988.P3283791810356928439

`eq[-19, 19*(-1)^A243055(n+1)]+1`
-/

namespace A390988.P3283791810356928439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -19

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  19 * (-1 : ℚ) ^ (A243055 (n + 1) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n + 1

end

end A390988.P3283791810356928439

noncomputable section

/-- A390988: Numbers k > 1 such that the least prime index of k plus the greatest prime index of k is odd.

Offset 1, canonical program `A390988.P3283791810356928439`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4384 terms. -/
def A390988 (n : ℕ) : ℤ :=
  (A390988.P3283791810356928439.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4384 terms. -/
def A390988.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A390990.P11391089079633860080

`2*A056239(n+1)-A390430(n+1)`
-/

namespace A390990.P11391089079633860080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A056239 (n + 1) - A390430 (n + 1)

end

end A390990.P11391089079633860080

noncomputable section

/-- A390990: Sum of first sums of the prime indices of n, with a(1) = 0.

Offset 1, canonical program `A390990.P11391089079633860080`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056239, A390430, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A390990 (n : ℕ) : ℤ :=
  A390990.P11391089079633860080.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056239, A390430, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A390990.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A391226.P4652616117976445603

`comp[A390988(n+1)-2]+2`
-/

namespace A391226.P4652616117976445603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390988 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 2

end

end A391226.P4652616117976445603

noncomputable section

/-- A391226: Numbers k > 1 such that the least prime index of k plus the greatest prime index of k is even.

Offset 1, canonical program `A391226.P4652616117976445603`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A391226 (n : ℕ) : ℤ :=
  (A391226.P4652616117976445603.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A391226.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A391232.P9763517087075985162

`∩[A244990(n+1), A391226(n+1)]`
-/

namespace A391232.P9763517087075985162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244990 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391226 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391232.P9763517087075985162

noncomputable section

/-- A391232: Numbers k > 1 such that the least prime index of k and the greatest prime index of k are both even.

Offset 1, canonical program `A391232.P9763517087075985162`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3335 terms. -/
def A391232 (n : ℕ) : ℤ :=
  (A391232.P9763517087075985162.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3335 terms. -/
def A391232.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A396573.P16360608001159207821

`lt[A003961(n+1), A138591(n+1)]+1`
-/

namespace A396573.P16360608001159207821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138591 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A396573.P16360608001159207821

noncomputable section

/-- A396573: Primes p such that the gap to the next prime is strictly less than floor(log_2(p)).

Offset 1, canonical program `A396573.P16360608001159207821`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 902 terms. -/
def A396573 (n : ℕ) : ℤ :=
  (A396573.P16360608001159207821.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 902 terms. -/
def A396573.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A397710.P1647549694478266187

`∪[A001248(n+1), A366825(n+1)]`
-/

namespace A397710.P1647549694478266187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366825 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A397710.P1647549694478266187

noncomputable section

/-- A397710: Composite numbers k such that k = rad(k) * lpf(k), where rad = A007947 and lpf is the least prime factor of k.

Offset 1, canonical program `A397710.P1647549694478266187`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A397710 (n : ℕ) : ℤ :=
  (A397710.P1647549694478266187.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A397710.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A005384.P4537023799186511760

`p?[A348511(n+1)]`
-/

namespace A005384.P4537023799186511760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348511 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A005384.P4537023799186511760

noncomputable section

/-- A005384: Sophie Germain primes p: 2p+1 is also prime.

Offset 1, canonical program `A005384.P4537023799186511760`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7746 terms. -/
def A005384 (n : ℕ) : ℤ :=
  A005384.P4537023799186511760.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7746 terms. -/
def A005384.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A005385.P12850744102754472242

`2*A005384(n+1)+1`
-/

namespace A005385.P12850744102754472242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A005384 (n + 1) + 1

end

end A005385.P12850744102754472242

noncomputable section

/-- A005385: Safe primes p: (p-1)/2 is also prime.

Offset 1, canonical program `A005385.P12850744102754472242`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005384, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A005385 (n : ℕ) : ℤ :=
  A005385.P12850744102754472242.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005384, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A005385.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A032849.P8157283972770785231

`A038572(or(1, A160530(n+1)))`
-/

namespace A032849.P8157283972770785231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038572 (Int.lor 1 (A160530 (n + 1))).toNat

end

end A032849.P8157283972770785231

noncomputable section

/-- A032849: Numbers whose base-2 representation Sum_{i=0..m} d(i)*2^i has d(m) <= d(m-1) >= d(m-2) <= ...

Offset 1, canonical program `A032849.P8157283972770785231`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1130 terms. -/
def A032849 (n : ℕ) : ℤ :=
  A032849.P8157283972770785231.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1130 terms. -/
def A032849.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A033299.P6310949867827519464

`A005385(A156875(1+n)+1)`
-/

namespace A033299.P6310949867827519464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005385 (A156875 (1 + n) + 1).toNat

end

end A033299.P6310949867827519464

noncomputable section

/-- A033299: Smallest safe prime ((p-1)/2 is also prime) > n.

Offset 1, canonical program `A033299.P6310949867827519464`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033299 (n : ℕ) : ℤ :=
  A033299.P6310949867827519464.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033299.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A033300.P9943155577705870913

`A033299(A000040(1+n))`
-/

namespace A033300.P9943155577705870913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033299 (A000040 (1 + n)).toNat

end

end A033300.P9943155577705870913

noncomputable section

/-- A033300: Smallest safe prime ((p-1)/2 is also prime) > n-th prime.

Offset 0, canonical program `A033300.P9943155577705870913`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. -/
def A033300 (n : ℕ) : ℤ :=
  A033300.P9943155577705870913.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. -/
def A033300.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A044858.P18319549135852801705

`eq[A044933(n+1), A044942(n+1)]+1`
-/

namespace A044858.P18319549135852801705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044933 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044942 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A044858.P18319549135852801705

noncomputable section

/-- A044858: Positive integers having the same number of base-2 runs of odd length as even.

Offset 1, canonical program `A044858.P18319549135852801705`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1050 terms. -/
def A044858 (n : ℕ) : ℤ :=
  (A044858.P18319549135852801705.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1050 terms. -/
def A044858.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A044859.P6733352922850868918

`eq[A044934(n+1), A044943(n+1)]+1`
-/

namespace A044859.P6733352922850868918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044934 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044943 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A044859.P6733352922850868918

noncomputable section

/-- A044859: Positive integers having the same number of base-3 runs of odd length as even.

Offset 1, canonical program `A044859.P6733352922850868918`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 861 terms. -/
def A044859 (n : ℕ) : ℤ :=
  (A044859.P6733352922850868918.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 861 terms. -/
def A044859.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045536.P9504402111197072869

`∩[A001359(n+1), A005384(n+1)]`
-/

namespace A045536.P9504402111197072869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005384 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045536.P9504402111197072869

noncomputable section

/-- A045536: Primes p such that p+2 and 2p+1 are also prime.

Offset 1, canonical program `A045536.P9504402111197072869`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6975 terms. -/
def A045536 (n : ℕ) : ℤ :=
  (A045536.P9504402111197072869.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6975 terms. -/
def A045536.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A046645.P8763404548643348052

`A293447(A293442(n+1))`
-/

namespace A046645.P8763404548643348052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293447 (A293442 (n + 1)).toNat

end

end A046645.P8763404548643348052

noncomputable section

/-- A046645: a(n) = log_2(A046644(n)); also the 2-adic valuation of A046644(n).

Offset 1, canonical program `A046645.P8763404548643348052`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A293442, A293447, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A046645 (n : ℕ) : ℤ :=
  A046645.P8763404548643348052.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A293442, A293447, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A046645.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A050376.P11968746704421999495

`A268385(A268392(n+1))`
-/

namespace A050376.P11968746704421999495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268385 (A268392 (n + 1)).toNat

end

end A050376.P11968746704421999495

noncomputable section

/-- A050376: "Fermi-Dirac primes": numbers of the form p^(2^k) where p is prime and k >= 0.

Offset 1, canonical program `A050376.P11968746704421999495`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A268385, A268392, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A050376 (n : ℕ) : ℤ :=
  A050376.P11968746704421999495.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A268385, A268392, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A050376.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A059322.P13542755186840824603

`A005385(n+2)-A005385(n+1)`
-/

namespace A059322.P13542755186840824603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005385 (n + 2) - A005385 (n + 1)

end

end A059322.P13542755186840824603

noncomputable section

/-- A059322: First differences of sequence of consecutive safe primes.

Offset 1, canonical program `A059322.P13542755186840824603`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005385, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A059322 (n : ℕ) : ℤ :=
  A059322.P13542755186840824603.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005385, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A059322.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A059323.P8209141103736845805

`∩[A005385(n+1)-12, A005385(n+2)]`
-/

namespace A059323.P8209141103736845805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005385 (n + 1) - 12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005385 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059323.P8209141103736845805

noncomputable section

/-- A059323: Smaller term of closest safe prime pairs.

Offset 1, canonical program `A059323.P8209141103736845805`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 237 terms. -/
def A059323 (n : ℕ) : ℤ :=
  (A059323.P8209141103736845805.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 237 terms. -/
def A059323.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A066819.P7654898550931030217

`∑[A005384(1+n)]`
-/

namespace A066819.P7654898550931030217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005384 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A066819.P7654898550931030217

noncomputable section

/-- A066819: Sum of the first n Sophie Germain primes.

Offset 1, canonical program `A066819.P7654898550931030217`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A066819 (n : ℕ) : ℤ :=
  A066819.P7654898550931030217.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A066819.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A066869.P10177735823969720889

`∑[A005385(1+n)]`
-/

namespace A066869.P10177735823969720889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005385 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A066869.P10177735823969720889

noncomputable section

/-- A066869: Sum of the first n safe primes.

Offset 1, canonical program `A066869.P10177735823969720889`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A066869 (n : ℕ) : ℤ :=
  A066869.P10177735823969720889.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A066869.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A069157.P2433626944177830795

`A000005(n+1)*A067029(n+1)/(1+A067029(n+1))`
-/

namespace A069157.P2433626944177830795
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000005 (n + 1) * A067029 (n + 1) : ℚ) / (1 + A067029 (n + 1) : ℚ)

end

end A069157.P2433626944177830795

noncomputable section

/-- A069157: Number of positive divisors of n that are divisible by the smallest prime that divides n.

Offset 1, canonical program `A069157.P2433626944177830795`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A067029, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A069157 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A069157.P2433626944177830795.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A067029, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A069157.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A072192.P10191982082423407970

`A000720(A005384(n+1))`
-/

namespace A072192.P10191982082423407970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A005384 (n + 1)).toNat

end

end A072192.P10191982082423407970

noncomputable section

/-- A072192: Indices of Sophie Germain primes: p and 2p+1 are primes.

Offset 1, canonical program `A072192.P10191982082423407970`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005384, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A072192 (n : ℕ) : ℤ :=
  A072192.P10191982082423407970.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005384, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A072192.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A074259.P15261998897029051693

`Δ[A005384(1+n)]`
-/

namespace A074259.P15261998897029051693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005384 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A074259.P15261998897029051693

noncomputable section

/-- A074259: Gaps between primes p such that 2p+1 is also prime, i.e., Sophie-Germain primes A005384.

Offset 1, canonical program `A074259.P15261998897029051693`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A074259 (n : ℕ) : ℤ :=
  A074259.P15261998897029051693.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A074259.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A077065.P3431251406781570749

`A005385(n+1)-1`
-/

namespace A077065.P3431251406781570749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005385 (n + 1) - 1

end

end A077065.P3431251406781570749

noncomputable section

/-- A077065: Semiprimes of form prime - 1.

Offset 1, canonical program `A077065.P3431251406781570749`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005385, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A077065 (n : ℕ) : ℤ :=
  A077065.P3431251406781570749.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005385, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A077065.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A077135.P8276527008192767829

`∪[2*A077065(n+1), A001358(n+1)]`
-/

namespace A077135.P8276527008192767829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A077065 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A077135.P8276527008192767829

noncomputable section

/-- A077135: Composite numbers n whose proper (other than 1 and n) odd divisors are prime and even divisors are 1 less than a prime.

Offset 1, canonical program `A077135.P8276527008192767829`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A077135 (n : ℕ) : ℤ :=
  (A077135.P8276527008192767829.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A077135.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A079149.P9833398238575278553

`∪[A005385(n+1), A079147(n+1)]`
-/

namespace A079149.P9833398238575278553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005385 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079147 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A079149.P9833398238575278553

noncomputable section

/-- A079149: Primes p such that either p-1 or p+1 has at most 2 prime factors, counted with multiplicity; i.e., primes p such that either bigomega(p-1) <= 2 or bigomega(p+1) <= 2, where bigomega(n) = A001222(n).

Offset 1, canonical program `A079149.P9833398238575278553`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A079149 (n : ℕ) : ℤ :=
  (A079149.P9833398238575278553.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A079149.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A080365.P11479912808946593838

`record[A243074(eq[A067029(n+1)², A014963(n+1)]+1)]`
-/

namespace A080365.P11479912808946593838
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067029 (n + 1) ^ 2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243074 (SequenceMachineLib.nth (fun j => f2 j = f3 j) n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A080365.P11479912808946593838

noncomputable section

/-- A080365: Composite numbers k whose smallest and largest prime factors are unitary prime factors.

Offset 1, canonical program `A080365.P11479912808946593838`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5305 terms. -/
def A080365 (n : ℕ) : ℤ :=
  A080365.P11479912808946593838.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5305 terms. -/
def A080365.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A082522.P5892597509266673484

`A050376(n+1)²`
-/

namespace A082522.P5892597509266673484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050376 (n + 1) ^ 2

end

end A082522.P5892597509266673484

noncomputable section

/-- A082522: Numbers of the form p^(2^k) with p prime and k>0.

Offset 1, canonical program `A082522.P5892597509266673484`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A050376, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A082522 (n : ℕ) : ℤ :=
  A082522.P5892597509266673484.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A050376, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A082522.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A100031.P6992441292231894961

`A005384(Δ[n²])`
-/

namespace A100031.P6992441292231894961
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005384 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A100031.P6992441292231894961

noncomputable section

/-- A100031: Bisection of A005384.

Offset 1, canonical program `A100031.P6992441292231894961`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A100031 (n : ℕ) : ℤ :=
  A100031.P6992441292231894961.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A100031.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A100032.P5585835796736551971

`A005384(2*(1+n))`
-/

namespace A100032.P5585835796736551971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005384 (2 * (1 + n))

end

end A100032.P5585835796736551971

noncomputable section

/-- A100032: Bisection of A005384.

Offset 1, canonical program `A100032.P5585835796736551971`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A100032 (n : ℕ) : ℤ :=
  A100032.P5585835796736551971.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A100032.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A100573.P2408409470225235997

`A297173(A318885(n+1))`
-/

namespace A100573.P2408409470225235997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297173 (A318885 (n + 1)).toNat

end

end A100573.P2408409470225235997

noncomputable section

/-- A100573: Smallest difference between distinct prime divisors of n, or 0 if n is a prime power.

Offset 1, canonical program `A100573.P2408409470225235997`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3717 terms. -/
def A100573 (n : ℕ) : ℤ :=
  A100573.P2408409470225235997.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3717 terms. -/
def A100573.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A100576.P14722533203068367608

`A100573(A024619(n+1))`
-/

namespace A100576.P14722533203068367608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100573 (A024619 (n + 1)).toNat

end

end A100576.P14722533203068367608

noncomputable section

/-- A100576: Smallest difference between distinct prime divisors of the n-th non-prime-power.

Offset 1, canonical program `A100576.P14722533203068367608`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A100576 (n : ℕ) : ℤ :=
  A100576.P14722533203068367608.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A100576.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A117370.P1766257423773210245

`row(C(A243055(1+n), 2))`
-/

namespace A117370.P1766257423773210245
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triRow (Nat.choose (A243055 (1 + n)).toNat 2)

end

end A117370.P1766257423773210245

noncomputable section

/-- A117370: Number of primes between smallest prime divisor of n and largest prime divisor of n.

Offset 1, canonical program `A117370.P1766257423773210245`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A117370 (n : ℕ) : ℤ :=
  (A117370.P1766257423773210245.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A117370.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A118072.P8750690672411084708

`1+2*A045536(n+1)`
-/

namespace A118072.P8750690672411084708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + 2 * A045536 (n + 1)

end

end A118072.P8750690672411084708

noncomputable section

/-- A118072: Primes which are the sum of a twin prime pair - 1.

Offset 1, canonical program `A118072.P8750690672411084708`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A118072 (n : ℕ) : ℤ :=
  A118072.P8750690672411084708.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A118072.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A118571.P13619142025454804279

`∩[A005384(n+1), A046704(n+1)]`
-/

namespace A118571.P13619142025454804279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005384 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046704 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118571.P13619142025454804279

noncomputable section

/-- A118571: Sophie Germain primes whose sum of digits is a prime.

Offset 1, canonical program `A118571.P13619142025454804279`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1317 terms. -/
def A118571 (n : ℕ) : ℤ :=
  (A118571.P13619142025454804279.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1317 terms. -/
def A118571.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A124485.P12550147880287035741

`(A005384(n+2)+1)/2`
-/

namespace A124485.P12550147880287035741
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005384 (n + 2) + 1 : ℚ) / 2

end

end A124485.P12550147880287035741

noncomputable section

/-- A124485: Numbers k such that both 2*k-1 and 4*k-1 are primes.

Offset 1, canonical program `A124485.P12550147880287035741`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005384, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A124485 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A124485.P12550147880287035741.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005384, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A124485.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A126955.P5687026585390495654

`floor(p?[A014682(A005384(n+1))]/3)`
-/

namespace A126955.P5687026585390495654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A005384 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / 3⌋

end

end A126955.P5687026585390495654

noncomputable section

/-- A126955: Numbers k such that 2*k+1, 3*k+2 and 4*k+3 are primes.

Offset 1, canonical program `A126955.P5687026585390495654`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 136 terms. -/
def A126955 (n : ℕ) : ℤ :=
  A126955.P5687026585390495654.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 136 terms. -/
def A126955.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A144789.P13799208252513075791

`A297173(A005940(2*(n+2)))`
-/

namespace A144789.P13799208252513075791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297173 (A005940 (2 * (n + 2))).toNat

end

end A144789.P13799208252513075791

noncomputable section

/-- A144789: Consider the runs of 0's in the binary representation of n, each of these runs being on the edge of the binary representation n and/or being bounded by 1's. a(n) = the length of the shortest such run (with positive length) of 0's in binary n. a(n) = 0 if there are no runs of 0's in binary n.

Offset 1, canonical program `A144789.P13799208252513075791`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A144789 (n : ℕ) : ℤ :=
  A144789.P13799208252513075791.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A144789.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A145387.P17092783934499524427

`A348937(p?[A046704(n+1)-2])`
-/

namespace A145387.P17092783934499524427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046704 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348937 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A145387.P17092783934499524427

noncomputable section

/-- A145387: Natural numbers n such that n-1 and n+1 are prime, also (sum of digits) + 1 and (sum of digits) - 1 is prime.

Offset 1, canonical program `A145387.P17092783934499524427`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 154 terms. -/
def A145387 (n : ℕ) : ℤ :=
  A145387.P17092783934499524427.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 154 terms. -/
def A145387.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A152843.P3860373774675927936

`A124485(1+n)-2`
-/

namespace A152843.P3860373774675927936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124485 (1 + n) - 2

end

end A152843.P3860373774675927936

noncomputable section

/-- A152843: Numbers n such that both 2n+3 and 4n+7 are prime.

Offset 1, canonical program `A152843.P3860373774675927936`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A152843 (n : ℕ) : ℤ :=
  A152843.P3860373774675927936.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A152843.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A155188.P8560747545369020511

`A045536(3+n)`
-/

namespace A155188.P8560747545369020511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045536 (3 + n)

end

end A155188.P8560747545369020511

noncomputable section

/-- A155188: Sophie Germain primes that are also strong primes and lesser of twin prime pairs.

Offset 1, canonical program `A155188.P8560747545369020511`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. -/
def A155188 (n : ℕ) : ℤ :=
  A155188.P8560747545369020511.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. -/
def A155188.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A156592.P11546580422876167646

`A005384(n+1)*A005385(n+1)`
-/

namespace A156592.P11546580422876167646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005384 (n + 1) * A005385 (n + 1)

end

end A156592.P11546580422876167646

noncomputable section

/-- A156592: Product p*q of two primes with q = 2*p + 1.

Offset 1, canonical program `A156592.P11546580422876167646`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005384, A005385, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A156592 (n : ℕ) : ℤ :=
  A156592.P11546580422876167646.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005384, A005385, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A156592.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A156658.P11973961863335742166

`∪[A005384(n+1), A005385(n+1)]`
-/

namespace A156658.P11973961863335742166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005384 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005385 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A156658.P11973961863335742166

noncomputable section

/-- A156658: Primes p such that also 2*p+1 or (p-1)/2 is prime.

Offset 1, canonical program `A156658.P11973961863335742166`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A156658 (n : ℕ) : ℤ :=
  (A156658.P11973961863335742166.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A156658.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A161820.P14402460152946731536

`A322993(A278222(n+1))`
-/

namespace A161820.P14402460152946731536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322993 (A278222 (n + 1)).toNat

end

end A161820.P14402460152946731536

noncomputable section

/-- A161820: a(n) is the smallest positive integer such that both n and a(n), when represented in binary, contain the same types of runs of 1's, the runs being in any order.

Offset 1, canonical program `A161820.P14402460152946731536`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 682 terms. -/
def A161820 (n : ℕ) : ℤ :=
  A161820.P14402460152946731536.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 682 terms. -/
def A161820.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A164977.P9771570748483703578

`∪[A005383(1+n), A077065(n+1)]`
-/

namespace A164977.P9771570748483703578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005383 (1 + n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077065 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A164977.P9771570748483703578

noncomputable section

/-- A164977: Numbers m such that the set {1..m} has only one nontrivial decomposition into subsets with equal element sum.

Offset 1, canonical program `A164977.P9771570748483703578`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A164977 (n : ℕ) : ℤ :=
  (A164977.P9771570748483703578.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A164977.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A166948.P13457169353326532215

`A067029(Δ[A053767(n)])`
-/

namespace A166948.P13457169353326532215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053767 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067029 (f1 (n + 1) - f1 n).toNat

end

end A166948.P13457169353326532215

noncomputable section

/-- A166948: The count of smallest prime factors in n-th composite.

Offset 1, canonical program `A166948.P13457169353326532215`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A166948 (n : ℕ) : ℤ :=
  A166948.P13457169353326532215.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A166948.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A167447.P17226392591559380743

`∑{d}[1+n, A356173(A322361(#))]`
-/

namespace A167447.P17226392591559380743
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A356173 (A322361 d).toNat

end

end A167447.P17226392591559380743

noncomputable section

/-- A167447: Number of divisors of n which are not multiples of 3 consecutive primes.

Offset 1, canonical program `A167447.P17226392591559380743`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A167447 (n : ℕ) : ℤ :=
  A167447.P17226392591559380743.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A167447.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A167609.P6804676790278978083

`Δ[A079149(n+1)+a(n-1)]` with `a(0)=2, a(1)=4, a(2)=7`
-/

namespace A167609.P6804676790278978083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 4, 7] fun n f1 =>
  A079149 (n + 1) + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A167609.P6804676790278978083

noncomputable section

/-- A167609: Primes which are not the sum of two consecutive nonprimes A141468.

Offset 1, canonical program `A167609.P6804676790278978083`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A167609 (n : ℕ) : ℤ :=
  A167609.P6804676790278978083.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A167609.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A174241.P13758903175279605930

`p?[A124485(n+1)+1]`
-/

namespace A174241.P13758903175279605930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124485 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A174241.P13758903175279605930

noncomputable section

/-- A174241: Primes p such that 2*p-3 and 4*p-5 are also prime.

Offset 1, canonical program `A174241.P13758903175279605930`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A174241 (n : ℕ) : ℤ :=
  A174241.P13758903175279605930.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A174241.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A174838.P9285501517228035014

`A115392(A072192(n+1))`
-/

namespace A174838.P9285501517228035014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115392 (A072192 (n + 1)).toNat

end

end A174838.P9285501517228035014

noncomputable section

/-- A174838: Numbers k such that semiprime(k)+1 is prime, where semiprime(k) is A001358.

Offset 1, canonical program `A174838.P9285501517228035014`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A174838 (n : ℕ) : ℤ :=
  A174838.P9285501517228035014.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A174838.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A175276.P16541926059268869838

`p?[A031945(n+1)]`
-/

namespace A175276.P16541926059268869838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031945 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A175276.P16541926059268869838

noncomputable section

/-- A175276: Base-4 pandigital primes: primes having at least one of each digit 0,1,2,3, when written in base 4.

Offset 1, canonical program `A175276.P16541926059268869838`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1073 terms. -/
def A175276 (n : ℕ) : ℤ :=
  A175276.P16541926059268869838.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1073 terms. -/
def A175276.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A175666.P11802829545752177848

`3*A005384(n+1)+1`
-/

namespace A175666.P11802829545752177848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A005384 (n + 1) + 1

end

end A175666.P11802829545752177848

noncomputable section

/-- A175666: Sum of Sophie Germain prime p and corresponding safe prime q=2p+1.

Offset 1, canonical program `A175666.P11802829545752177848`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005384, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A175666 (n : ℕ) : ℤ :=
  A175666.P11802829545752177848.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005384, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A175666.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A176045.P10228396740254184789

`A005384(n+1)+1`
-/

namespace A176045.P10228396740254184789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005384 (n + 1) + 1

end

end A176045.P10228396740254184789

noncomputable section

/-- A176045: Numbers n such that n-1 and 2*n-1 are both prime.

Offset 1, canonical program `A176045.P10228396740254184789`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005384, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A176045 (n : ℕ) : ℤ :=
  A176045.P10228396740254184789.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005384, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A176045.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A179005.P14351113100697518095

`lt[A001414(A162341(n)), A349164(n+1)]`
-/

namespace A179005.P14351113100697518095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A162341 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349164 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A179005.P14351113100697518095

noncomputable section

/-- A179005: Indices of nonprime repunits: nonnegative numbers n such that 11...111 = (10^n - 1)/9 is composite.

Offset 1, canonical program `A179005.P14351113100697518095`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A179005 (n : ℕ) : ℤ :=
  (A179005.P14351113100697518095.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A179005.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A181602.P7596636819529119247

`∩[A005385(n+1), A229064(n+1)]`
-/

namespace A181602.P7596636819529119247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005385 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229064 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A181602.P7596636819529119247

noncomputable section

/-- A181602: Primes p such that p-1 is a semiprime and p+2 is prime or prime squared.

Offset 1, canonical program `A181602.P7596636819529119247`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 951 terms. -/
def A181602 (n : ℕ) : ℤ :=
  (A181602.P7596636819529119247.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 951 terms. -/
def A181602.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A194593.P1917004072533663259

`2*A005385(A028310(n))-C(A047994(n+1), n+1)`
-/

namespace A194593.P1917004072533663259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A005385 (A028310 n).toNat - (Nat.choose (A047994 (n + 1)).toNat (n + 1) : ℤ)

end

end A194593.P1917004072533663259

noncomputable section

/-- A194593: Semiprimes s such that phi(s)/2 is prime.

Offset 1, canonical program `A194593.P1917004072533663259`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A194593 (n : ℕ) : ℤ :=
  A194593.P1917004072533663259.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A194593.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A209623.P6270556564097260261

`p?[A379239(n+1)]`
-/

namespace A209623.P6270556564097260261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379239 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A209623.P6270556564097260261

noncomputable section

/-- A209623: Primes separated from their adjacent next primes by a prime number of successive composites.

Offset 1, canonical program `A209623.P6270556564097260261`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6756 terms. -/
def A209623 (n : ℕ) : ℤ :=
  A209623.P6270556564097260261.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6756 terms. -/
def A209623.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A216887.P7016313047720049362

`eq[A003415(A050376(2*(n+2))), A003415(n)]`
-/

namespace A216887.P7016313047720049362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A050376 (2 * (n + 2))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A216887.P7016313047720049362

noncomputable section

/-- A216887: Primes p such that x^67 = 2 has a solution mod p.

Offset 1, canonical program `A216887.P7016313047720049362`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 113 terms. -/
def A216887 (n : ℕ) : ℤ :=
  (A216887.P7016313047720049362.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 113 terms. -/
def A216887.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A232221.P1669750183242066282

`∑[A077068(1+n)-A077065(n+1)]`
-/

namespace A232221.P1669750183242066282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077068 (1 + n) - A077065 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A232221.P1669750183242066282

noncomputable section

/-- A232221: a(n) = Sum_{i=1..n} (A077068(i) - A077065(i)).

Offset 1, canonical program `A232221.P1669750183242066282`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A232221 (n : ℕ) : ℤ :=
  A232221.P1669750183242066282.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A232221.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A232342.P16208743810185256767

`A077068(1+n)-A077065(n+1)`
-/

namespace A232342.P16208743810185256767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077068 (1 + n) - A077065 (n + 1)

end

end A232342.P16208743810185256767

noncomputable section

/-- A232342: A077068(n) minus A077065(n).

Offset 1, canonical program `A232342.P16208743810185256767`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A232342 (n : ℕ) : ℤ :=
  A232342.P16208743810185256767.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A232342.provenance : SequenceMachineLib.Provenance := .conjectured

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

noncomputable section

/-- A233973: a(n) = A232221(n)/4.

Offset 1, canonical program `A233973.P1785584589492776699`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A232221, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A233973 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A233973.P1785584589492776699.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A232221, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A233973.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A237810.P17835202582301988657

`∩[A005384(1+n), A023206(n+1)]`
-/

namespace A237810.P17835202582301988657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005384 (1 + n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023206 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A237810.P17835202582301988657

noncomputable section

/-- A237810: Primes p such that 2*p+1 and 2*p+7 are also prime.

Offset 1, canonical program `A237810.P17835202582301988657`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1268 terms. -/
def A237810 (n : ℕ) : ℤ :=
  (A237810.P17835202582301988657.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1268 terms. -/
def A237810.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A237812.P3160556385371461777

`∩[A005384(n+1), A153081(n+1)]`
-/

namespace A237812.P3160556385371461777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005384 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153081 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A237812.P3160556385371461777

noncomputable section

/-- A237812: Primes p such that 2*p+1 and 2*p+13 are also prime.

Offset 1, canonical program `A237812.P3160556385371461777`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 159 terms. -/
def A237812 (n : ℕ) : ℤ :=
  (A237812.P3160556385371461777.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 159 terms. -/
def A237812.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A237814.P8527101259238323609

`∩[A005384(n+1), A153145(n+1)]`
-/

namespace A237814.P8527101259238323609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005384 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153145 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A237814.P8527101259238323609

noncomputable section

/-- A237814: Primes p such that 2*p+1 and 2*p+19 are also prime.

Offset 1, canonical program `A237814.P8527101259238323609`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1603 terms. -/
def A237814 (n : ℕ) : ℤ :=
  (A237814.P8527101259238323609.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1603 terms. -/
def A237814.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A240521.P8578861033948740818

`A050376(n+1)*A050376(n+2)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A240521.P8578861033948740818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050376 (n + 1) * A050376 (n + 2)

end

end A240521.P8578861033948740818

noncomputable section

/-- A240521: a(n) = A050376(n)*A050376(n+1) where A050376(n) is the n-th number of the form p^(2^k) with p is prime and k >= 0.

Offset 1, canonical program `A240521.P8578861033948740818`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A050376, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A240521 (n : ℕ) : ℤ :=
  A240521.P8578861033948740818.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A050376, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A240521.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A240536.P362324169712596171

`A050376(n+1)*A050376(n+4)`
-/

namespace A240536.P362324169712596171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050376 (n + 1) * A050376 (n + 4)

end

end A240536.P362324169712596171

noncomputable section

/-- A240536: S_9 sequence in partition of integers > 1 described in A240521.

Offset 1, canonical program `A240536.P362324169712596171`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A050376, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A240536 (n : ℕ) : ℤ :=
  A240536.P362324169712596171.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A050376, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A240536.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A241024.P7090105526242822996

`A050376(n+1)*A050376(n+3)*A050376(n+4)`
-/

namespace A241024.P7090105526242822996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050376 (n + 1) * A050376 (n + 3) * A050376 (n + 4)

end

end A241024.P7090105526242822996

noncomputable section

/-- A241024: S_11 sequence in partition of integers > 1 described in A240521.

Offset 1, canonical program `A241024.P7090105526242822996`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A050376, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A241024 (n : ℕ) : ℤ :=
  A241024.P7090105526242822996.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A050376, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A241024.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A241025.P8181339160921596088

`A050376(n+1)*A050376(n+2)*A050376(n+4)`
-/

namespace A241025.P8181339160921596088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050376 (n + 1) * A050376 (n + 2) * A050376 (n + 4)

end

end A241025.P8181339160921596088

noncomputable section

/-- A241025: S_13 sequence in partition of integers > 1 described in A240521.

Offset 1, canonical program `A241025.P8181339160921596088`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A050376, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A241025 (n : ℕ) : ℤ :=
  A241025.P8181339160921596088.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A050376, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A241025.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A246352.P420064894490892469

`lt[n, A336853(n+1)+1]+1`
-/

namespace A246352.P420064894490892469
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336853 (n + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A246352.P420064894490892469

noncomputable section

/-- A246352: Numbers n such that A048673(n) >= n.

Offset 1, canonical program `A246352.P420064894490892469`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8815 terms. -/
def A246352 (n : ℕ) : ℤ :=
  (A246352.P420064894490892469.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8815 terms. -/
def A246352.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A249826.P1094415431109539570

`A250476(A249824(n+1))`
-/

namespace A249826.P1094415431109539570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250476 (A249824 (n + 1)).toNat

end

end A249826.P1094415431109539570

noncomputable section

/-- A249826: Permutation of natural numbers: a(n) = A078898(A003961(A003961(A003961(2*n)))).

Offset 1, canonical program `A249826.P1094415431109539570`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A249824, A250476, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A249826 (n : ℕ) : ℤ :=
  A249826.P1094415431109539570.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A249824, A250476, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A249826.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A265407.P516872660325429595

`A248663(A265408(n))`
-/

namespace A265407.P516872660325429595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248663 (A265408 n).toNat

end

end A265407.P516872660325429595

noncomputable section

/-- A265407: Spironacci-style recurrence: a(0)=0, a(1)=1, a(n) = 2*a(n) XOR a(A265409(n)).

Offset 0, canonical program `A265407.P516872660325429595`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A248663, A265408, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A265407 (n : ℕ) : ℤ :=
  A265407.P516872660325429595.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A248663, A265408, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A265407.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A266400.P10626207752406824023

`A020900(A072192(n+1))`
-/

namespace A266400.P10626207752406824023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020900 (A072192 (n + 1)).toNat

end

end A266400.P10626207752406824023

noncomputable section

/-- A266400: Indices of primes in A005097.

Offset 1, canonical program `A266400.P10626207752406824023`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1222 terms. -/
def A266400 (n : ℕ) : ℤ :=
  A266400.P10626207752406824023.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1222 terms. -/
def A266400.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A268387.P5610165792489103929

`A248663(A293442(1+n))`
-/

namespace A268387.P5610165792489103929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248663 (A293442 (1 + n)).toNat

end

end A268387.P5610165792489103929

noncomputable section

/-- A268387: Bitwise-XOR of the exponents of primes in the prime factorization of n.

Offset 1, canonical program `A268387.P5610165792489103929`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A268387 (n : ℕ) : ℤ :=
  A268387.P5610165792489103929.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A268387.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A268390.P9410519277609517028

`eq[1, A007913(A293442(n+1))]+1`
-/

namespace A268390.P9410519277609517028
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A293442 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A268390.P9410519277609517028

noncomputable section

/-- A268390: Products of an even number of distinct primes and the square of a number in the sequence (including 1).

Offset 1, canonical program `A268390.P9410519277609517028`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A268390 (n : ℕ) : ℤ :=
  (A268390.P9410519277609517028.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A268390.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A274381.P13109682840946942016

`∩[A005385(n+1)-24, A005385(n+1)]`
-/

namespace A274381.P13109682840946942016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005385 (n + 1) - 24

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005385 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A274381.P13109682840946942016

noncomputable section

/-- A274381: Safe primes p such that p + 24 is also a safe prime.

Offset 1, canonical program `A274381.P13109682840946942016`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 387 terms. -/
def A274381 (n : ℕ) : ℤ :=
  (A274381.P13109682840946942016.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 387 terms. -/
def A274381.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A283050.P1360481610256130236

`eq[1, gcd(2, A305897(n+2))]+2`
-/

namespace A283050.P1360481610256130236
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A305897 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A283050.P1360481610256130236

noncomputable section

/-- A283050: Integers that are divisible by the square of their least prime factor.

Offset 1, canonical program `A283050.P1360481610256130236`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A283050 (n : ℕ) : ℤ :=
  (A283050.P1360481610256130236.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A283050.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A289618.P14878026680756617388

`A289617(n+1)-A046645(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A289618.P14878026680756617388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289617 (n + 1) - A046645 (n + 1)

end

end A289618.P14878026680756617388

noncomputable section

/-- A289618: a(n) = A289617(n) - A046645(n) = A005187(A001222(n)) - A046645(n).

Offset 1, canonical program `A289618.P14878026680756617388`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046645, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A289618 (n : ℕ) : ℤ :=
  A289618.P14878026680756617388.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046645, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A289618.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A295891.P5603642694867004673

`1-A295892(n+1)`
-/

namespace A295891.P5603642694867004673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A295892 (n + 1)

end

end A295891.P5603642694867004673

noncomputable section

/-- A295891: a(n) = 1 if binary weights of n and A003961(n) are of the different parity, 0 otherwise; a(n) = A010060(n) XOR A010060(A003961(n)).

Offset 1, canonical program `A295891.P5603642694867004673`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A295892, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A295891 (n : ℕ) : ℤ :=
  A295891.P5603642694867004673.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A295892, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A295891.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A305439.P10396080351550377806

`A046645(n+1)-A007949(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A305439.P10396080351550377806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046645 (n + 1) - A007949 (n + 1)

end

end A305439.P10396080351550377806

noncomputable section

/-- A305439: a(n) = A046645(n) - A007949(n); the 2-adic valuation of A317932.

Offset 1, canonical program `A305439.P10396080351550377806`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046645, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A305439 (n : ℕ) : ℤ :=
  A305439.P10396080351550377806.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046645, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A305439.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A317510.P13699733993965501497

`floor(A194593(n+4)/3)`
-/

namespace A317510.P13699733993965501497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A194593 (n + 4) : ℚ) / 3⌋

end

end A317510.P13699733993965501497

noncomputable section

/-- A317510: Numbers (4p+1)/3 where p is a Sophie Germain prime p > 3.

Offset 1, canonical program `A317510.P13699733993965501497`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A317510 (n : ℕ) : ℤ :=
  A317510.P13699733993965501497.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A317510.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A317626.P14555448525980414570

`ceil(A005384(n+3)/3)`
-/

namespace A317626.P14555448525980414570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A005384 (n + 3) : ℚ) / 3⌉

end

end A317626.P14555448525980414570

noncomputable section

/-- A317626: Intersections with the x-axis of a bouncing ball on a Sophie Germain billiard table.

Offset 1, canonical program `A317626.P14555448525980414570`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A317626 (n : ℕ) : ℤ :=
  A317626.P14555448525980414570.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A317626.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A317932.P6928807366266153349

`2^A305439(n+1)`
-/

namespace A317932.P6928807366266153349
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A305439 (n + 1) : ℤ)

end

end A317932.P6928807366266153349

noncomputable section

/-- A317932: Denominators of certain "Dirichlet Square Root" sequences: a(n) = A046644(n)/(2^A007949(n)).

Offset 1, canonical program `A317932.P6928807366266153349`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A305439, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A317932 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A317932.P6928807366266153349.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A305439, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A317932.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A318440.P5886094417818087707

`A046645(n+1)-A007814(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A318440.P5886094417818087707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046645 (n + 1) - A007814 (n + 1)

end

end A318440.P5886094417818087707

noncomputable section

/-- A318440: a(n) = A046645(n) - A007814(n); the 2-adic valuation of A299150.

Offset 1, canonical program `A318440.P5886094417818087707`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046645, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A318440 (n : ℕ) : ℤ :=
  A318440.P5886094417818087707.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046645, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A318440.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A318656.P13008805478963827236

`2*A007814(n+1)-A046645(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A318656.P13008805478963827236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007814 (n + 1) - A046645 (n + 1)

end

end A318656.P13008805478963827236

noncomputable section

/-- A318656: The 2-adic valuation of ratio A318649(n)/A318512(n); a(n) = 2*A007814(n) - A046645(n).

Offset 1, canonical program `A318656.P13008805478963827236`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046645, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A318656 (n : ℕ) : ℤ :=
  A318656.P13008805478963827236.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046645, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A318656.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A329551.P1499580506998869095

`p?[floor(A126955(n+1)/2)]`
-/

namespace A329551.P1499580506998869095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A126955 (n + 1) : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A329551.P1499580506998869095

noncomputable section

/-- A329551: Primes p such that 4*p+3, 6*p+5 and 8*p+7 are all primes.

Offset 1, canonical program `A329551.P1499580506998869095`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 303 terms. -/
def A329551 (n : ℕ) : ℤ :=
  A329551.P1499580506998869095.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 303 terms. -/
def A329551.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A329647.P10763472955733118982

`A268387(A108951(n+1))`
-/

namespace A329647.P10763472955733118982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268387 (A108951 (n + 1)).toNat

end

end A329647.P10763472955733118982

noncomputable section

/-- A329647: Bitwise-XOR of exponents of prime factors of A108951(n), where A108951 is fully multiplicative with a(prime(i)) = prime(i)# = Product_{i=1..i} A000040(i).

Offset 1, canonical program `A329647.P10763472955733118982`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A108951, A268387, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A329647 (n : ℕ) : ℤ :=
  A329647.P10763472955733118982.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A108951, A268387, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A329647.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A333145.P1416542542552926660

`A000005(n+1)-A069157(n+1)`
-/

namespace A333145.P1416542542552926660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A069157 (n + 1)

end

end A333145.P1416542542552926660

noncomputable section

/-- A333145: Number of unimodal negated permutations of the multiset of prime indices of n.

Offset 1, canonical program `A333145.P1416542542552926660`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A069157, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A333145 (n : ℕ) : ℤ :=
  A333145.P1416542542552926660.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A069157, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A333145.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A333146.P15226525986822621584

`A008480(n+1)-A333145(n+1)`
-/

namespace A333146.P15226525986822621584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008480 (n + 1) - A333145 (n + 1)

end

end A333146.P15226525986822621584

noncomputable section

/-- A333146: Number of non-unimodal negated permutations of the multiset of prime indices of n.

Offset 1, canonical program `A333146.P15226525986822621584`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A333146 (n : ℕ) : ℤ :=
  A333146.P15226525986822621584.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A333146.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A336697.P535187774030085875

`A337337(A064216(1+n))`
-/

namespace A336697.P535187774030085875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337337 (A064216 (1 + n)).toNat

end

end A336697.P535187774030085875

noncomputable section

/-- A336697: a(n) = gcd((s+1)/2, 1+sigma(s)), where s is the n-th odd square, (2n-1)^2.

Offset 1, canonical program `A336697.P535187774030085875`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A336697 (n : ℕ) : ℤ :=
  A336697.P535187774030085875.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A336697.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A336841.P2971694009307455037

`A336845(n+1)-A003973(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A336841.P2971694009307455037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336845 (n + 1) - A003973 (n + 1)

end

end A336841.P2971694009307455037

noncomputable section

/-- A336841: Prime-shifted analog of A094471: a(n) = A336845(n) - A003973(n).

Offset 1, canonical program `A336841.P2971694009307455037`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003973, A336845, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A336841 (n : ℕ) : ℤ :=
  A336841.P2971694009307455037.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003973, A336845, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A336841.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A336854.P17456032559665882968

`A336841(n+1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A336854.P17456032559665882968
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A336841 (n + 1) : ℚ) / 2

end

end A336854.P17456032559665882968

noncomputable section

/-- A336854: a(n) = A336841(n)/2.

Offset 1, canonical program `A336854.P17456032559665882968`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A336841, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A336854 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A336854.P17456032559665882968.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A336841, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A336854.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A336930.P3805252567437306107

`eq[A295664(n+1), A336932(n+1)]+1`
-/

namespace A336930.P3805252567437306107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295664 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336932 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A336930.P3805252567437306107

noncomputable section

/-- A336930: Numbers k such that the 2-adic valuation of A003973(k), the sum of divisors of the prime shifted k is equal to the 2-adic valuation of the number of divisors of k.

Offset 1, canonical program `A336930.P3805252567437306107`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9700 terms. -/
def A336930 (n : ℕ) : ℤ :=
  (A336930.P3805252567437306107.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9700 terms. -/
def A336930.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A336931.P13387050893284357146

`A336932(n+1)-A295664(n+1)`
-/

namespace A336931.P13387050893284357146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336932 (n + 1) - A295664 (n + 1)

end

end A336931.P13387050893284357146

noncomputable section

/-- A336931: Difference between the 2-adic valuation of A003973(n) [= the sum of divisors of the prime shifted n] and the 2-adic valuation of the number of divisors of n.

Offset 1, canonical program `A336931.P13387050893284357146`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A336932, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A336931 (n : ℕ) : ℤ :=
  A336931.P13387050893284357146.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A336932, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A336931.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A337345.P1594935461271935527

`A378662(n+1)+A080224(n+1)`
-/

namespace A337345.P1594935461271935527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378662 (n + 1) + A080224 (n + 1)

end

end A337345.P1594935461271935527

noncomputable section

/-- A337345: Number of divisors d of n for which A003961(d) > 2*d, where A003961 is fully multiplicative with a(p) = nextprime(p).

Offset 1, canonical program `A337345.P1594935461271935527`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A080224, A378662, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A337345 (n : ℕ) : ℤ :=
  A337345.P1594935461271935527.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A080224, A378662, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A337345.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A337346.P2412165337189814597

`A337345(n+1)-A252742(n+1)`
-/

namespace A337346.P2412165337189814597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337345 (n + 1) - A252742 (n + 1)

end

end A337346.P2412165337189814597

noncomputable section

/-- A337346: Number of proper divisors d of n for which A003961(d) > 2*d.

Offset 1, canonical program `A337346.P2412165337189814597`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A252742, A337345, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A337346 (n : ℕ) : ℤ :=
  A337346.P2412165337189814597.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A252742, A337345, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A337346.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A337372.P8743427394411133788

`eq[1, A337345(n+1)]+1`
-/

namespace A337372.P8743427394411133788
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337345 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A337372.P8743427394411133788

noncomputable section

/-- A337372: Primitively primeshift-abundant numbers: Numbers that are included in A246282 (k with A003961(k) > 2k), but none of whose proper divisors are.

Offset 1, canonical program `A337372.P8743427394411133788`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 580 terms. -/
def A337372 (n : ℕ) : ℤ :=
  (A337372.P8743427394411133788.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 580 terms. -/
def A337372.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A337378.P15155497971269195371

`lt[0, A337380(1+n)]+1`
-/

namespace A337378.P15155497971269195371
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337380 (1 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A337378.P15155497971269195371

noncomputable section

/-- A337378: Numbers k for which A003961(k) > 2*sigma(k).

Offset 1, canonical program `A337378.P15155497971269195371`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A337378 (n : ℕ) : ℤ :=
  (A337378.P15155497971269195371.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A337378.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A341512.P10028097722280494924

`A341529(n+1)-A341528(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A341512.P10028097722280494924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341529 (n + 1) - A341528 (n + 1)

end

end A341512.P10028097722280494924

noncomputable section

/-- A341512: a(n) = A341529(n) - A341528(n) = (sigma(n)*A003961(n)) - (n*sigma(A003961(n))).

Offset 1, canonical program `A341512.P10028097722280494924`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A341528, A341529, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A341512 (n : ℕ) : ℤ :=
  A341512.P10028097722280494924.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A341528, A341529, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A341512.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A341526.P14686975132241755555

`A341528(n+1)/A341530(n+1)`
-/

namespace A341526.P14686975132241755555
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A341528 (n + 1) : ℚ) / (A341530 (n + 1) : ℚ)

end

end A341526.P14686975132241755555

noncomputable section

/-- A341526: Numerator of ratio n*sigma(A003961(n)) / sigma(n)*A003961(n), where sigma is the sum of divisors of n, and A003961 shifts the prime factorization of n one step towards larger primes.

Offset 1, canonical program `A341526.P14686975132241755555`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A341528, A341530, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A341526 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A341526.P14686975132241755555.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A341528, A341530, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A341526.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A341527.P11918389594908135215

`A341529(n+1)/A341530(n+1)`
-/

namespace A341527.P11918389594908135215
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A341529 (n + 1) : ℚ) / (A341530 (n + 1) : ℚ)

end

end A341527.P11918389594908135215

noncomputable section

/-- A341527: Denominator of ratio n*sigma(A003961(n)) / sigma(n)*A003961(n), where sigma is the sum of divisors of n, and A003961 shifts the prime factorization of n one step towards larger primes.

Offset 1, canonical program `A341527.P11918389594908135215`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A341529, A341530, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A341527 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A341527.P11918389594908135215.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A341529, A341530, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A341527.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A341609.P3877242790927454112

`Δ[fp[A337372(n+1)]]`
-/

namespace A341609.P3877242790927454112
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337372 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (n : ℤ) < f2 j) 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A341609.P3877242790927454112

noncomputable section

/-- A341609: Characteristic function of A337372: a(n) = 1 if A337345(n) = 1, otherwise 0.

Offset 1, canonical program `A341609.P3877242790927454112`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A341609 (n : ℕ) : ℤ :=
  A341609.P3877242790927454112.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A341609.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A341610.P8466044333028116895

`lt[0, A337346(n+1)]+1`
-/

namespace A341610.P8466044333028116895
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337346 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A341610.P8466044333028116895

noncomputable section

/-- A341610: Nonprimitive terms of A246282: numbers k that have more than one divisor d|k such that A003961(d) > 2*d.

Offset 1, canonical program `A341610.P8466044333028116895`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A341610 (n : ℕ) : ℤ :=
  (A341610.P8466044333028116895.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A341610.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A341611.P6987460228206011471

`lt[A341609(n+1), A341612(n+1)]+1`
-/

namespace A341611.P6987460228206011471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341609 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341612 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A341611.P6987460228206011471

noncomputable section

/-- A341611: Nonabundant numbers that are not primitive terms of A246282.

Offset 1, canonical program `A341611.P6987460228206011471`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A341611 (n : ℕ) : ℤ :=
  (A341611.P6987460228206011471.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A341611.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A342668.P4029046594404538909

`A006530(A341527(n+1))`
-/

namespace A342668.P4029046594404538909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A341527 (n + 1)).toNat

end

end A342668.P4029046594404538909

noncomputable section

/-- A342668: Largest prime in the denominator of ratio A341528(n)/A341529(n) (when presented in its lowest terms).

Offset 1, canonical program `A342668.P4029046594404538909`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, A341527, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A342668 (n : ℕ) : ℤ :=
  A342668.P4029046594404538909.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, A341527, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A342668.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A346239.P8636144481431043210

`∑{d}[n+1, A008683((n+1)/#)*A341512(#)]`
-/

namespace A346239.P8636144481431043210
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat * A341512 d

end

end A346239.P8636144481431043210

noncomputable section

/-- A346239: Möbius transform of A341512, sigma(n)*A003961(n) - n*sigma(A003961(n)).

Offset 1, canonical program `A346239.P8636144481431043210`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A341512, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A346239 (n : ℕ) : ℤ :=
  A346239.P8636144481431043210.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A341512, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A346239.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A346240.P13978465434129994439

`A341512(n+1)-A346239(n+1)`
-/

namespace A346240.P13978465434129994439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341512 (n + 1) - A346239 (n + 1)

end

end A346240.P13978465434129994439

noncomputable section

/-- A346240: Difference between A341512 and its Möbius transform.

Offset 1, canonical program `A346240.P13978465434129994439`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A341512, A346239, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A346240 (n : ℕ) : ℤ :=
  A346240.P13978465434129994439.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A341512, A346239, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A346240.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A347121.P10777423432329443113

`A347136(n+1)-2*(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A347121.P10777423432329443113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347136 (n + 1) - (2 * (n + 1) : ℤ)

end

end A347121.P10777423432329443113

noncomputable section

/-- A347121: a(n) = A347136(n) - 2*n.

Offset 1, canonical program `A347121.P10777423432329443113`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A347136, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A347121 (n : ℕ) : ℤ :=
  A347121.P10777423432329443113.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A347136, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A347121.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A347122.P16124771186689615703

`A347137(n+1)-2*A000010(n+1)`
-/

namespace A347122.P16124771186689615703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347137 (n + 1) - 2 * A000010 (n + 1)

end

end A347122.P16124771186689615703

noncomputable section

/-- A347122: Möbius transform of A347121.

Offset 1, canonical program `A347122.P16124771186689615703`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A347137, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A347122 (n : ℕ) : ℤ :=
  A347122.P16124771186689615703.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A347137, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A347122.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A348749.P12973560767162091666

`filter[2*n+1, A353639(#)]`
-/

namespace A348749.P12973560767162091666
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353639 (f1 j) = 1) n)

end

end A348749.P12973560767162091666

noncomputable section

/-- A348749: Odd numbers k for which A064989(sigma(k)) > A064989(k), where A064989 shifts the prime factorization one step towards lower primes, and sigma is the sum of divisors function.

Offset 1, canonical program `A348749.P12973560767162091666`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 723 terms. -/
def A348749 (n : ℕ) : ℤ :=
  (A348749.P12973560767162091666.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 723 terms. -/
def A348749.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A349161.P8652954744420952419

`A003961(A349164(n+1))`
-/

namespace A349161.P8652954744420952419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (A349164 (n + 1)).toNat

end

end A349161.P8652954744420952419

noncomputable section

/-- A349161: a(n) = A003961(n) / gcd(sigma(n), A003961(n)), where A003961 shifts the prime factorization of n one step towards larger primes, and sigma is the sum of divisors function.

Offset 1, canonical program `A349161.P8652954744420952419`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, A349164, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A349161 (n : ℕ) : ℤ :=
  A349161.P8652954744420952419.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, A349164, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A349161.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A349668.P12887909393031099828

`A005385(n+1)%(n+1)`
-/

namespace A349668.P12887909393031099828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005385 (n + 1)) (n + 1 : ℤ)

end

end A349668.P12887909393031099828

noncomputable section

/-- A349668: a(n) is the n-th safe prime reduced mod n.

Offset 1, canonical program `A349668.P12887909393031099828`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005385, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A349668 (n : ℕ) : ℤ :=
  A349668.P12887909393031099828.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005385, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A349668.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A349669.P12956614078268560054

`A005384(n+1)%(n+1)`
-/

namespace A349669.P12956614078268560054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005384 (n + 1)) (n + 1 : ℤ)

end

end A349669.P12956614078268560054

noncomputable section

/-- A349669: a(n) is the n-th Sophie Germain prime reduced mod n.

Offset 1, canonical program `A349669.P12956614078268560054`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005384, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A349669 (n : ℕ) : ℤ :=
  A349669.P12956614078268560054.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005384, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A349669.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A350593.P13666250291163921889

`A164977(n+2)+A109531(C(2, n))`
-/

namespace A350593.P13666250291163921889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164977 (n + 2) + A109531 (Nat.choose 2 n)

end

end A350593.P13666250291163921889

noncomputable section

/-- A350593: Numbers k such that tau(k) + tau(k+1) = 6, where tau is the number of divisors function A000005.

Offset 1, canonical program `A350593.P13666250291163921889`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A350593 (n : ℕ) : ℤ :=
  A350593.P13666250291163921889.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A350593.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A353477.P2258751349755491853

`A353480(n+1)-A353479(n+1)`
-/

namespace A353477.P2258751349755491853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353480 (n + 1) - A353479 (n + 1)

end

end A353477.P2258751349755491853

noncomputable section

/-- A353477: a(n) = 1 if n is a semiprime of the form 4k+1, otherwise 0.

Offset 1, canonical program `A353477.P2258751349755491853`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A353479, A353480, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A353477 (n : ℕ) : ℤ :=
  A353477.P2258751349755491853.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A353479, A353480, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A353477.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A362983.P985398595454489324

`A001222(n+1)-A067029(n+1)`
-/

namespace A362983.P985398595454489324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) - A067029 (n + 1)

end

end A362983.P985398595454489324

noncomputable section

/-- A362983: Number of prime factors of n (with multiplicity) that are greater than the least.

Offset 1, canonical program `A362983.P985398595454489324`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A067029, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A362983 (n : ℕ) : ℤ :=
  A362983.P985398595454489324.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A067029, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A362983.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A365864.P18209421037915333050

`∩[A283050(n+1)-1, A283050(n+1)]`
-/

namespace A365864.P18209421037915333050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283050 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283050 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A365864.P18209421037915333050

noncomputable section

/-- A365864: Numbers k such that k and k+1 are both divisible by the square of their least prime factor.

Offset 1, canonical program `A365864.P18209421037915333050`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2429 terms. -/
def A365864 (n : ℕ) : ℤ :=
  (A365864.P18209421037915333050.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2429 terms. -/
def A365864.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A365865.P7129990262128482870

`∩[A365864(n+1)-1, A365864(n+1)]`
-/

namespace A365865.P7129990262128482870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365864 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365864 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A365865.P7129990262128482870

noncomputable section

/-- A365865: Starts of runs of 3 consecutive integers that are divisible by the square of their least prime factor.

Offset 1, canonical program `A365865.P7129990262128482870`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 544 terms. -/
def A365865 (n : ℕ) : ℤ :=
  (A365865.P7129990262128482870.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 544 terms. -/
def A365865.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A365869.P13905876651845941795

`lt[1, gcd(2, A067029(n+2))]+2`
-/

namespace A365869.P13905876651845941795
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A067029 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 2

end

end A365869.P13905876651845941795

noncomputable section

/-- A365869: Numbers whose exponent of least prime factor in their prime factorization is even.

Offset 1, canonical program `A365869.P13905876651845941795`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2297 terms. -/
def A365869 (n : ℕ) : ℤ :=
  (A365869.P13905876651845941795.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2297 terms. -/
def A365869.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A365870.P6694161055261231779

`∩[A365869(n+1)-1, A365869(n+1)]`
-/

namespace A365870.P6694161055261231779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365869 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365869 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A365870.P6694161055261231779

noncomputable section

/-- A365870: Numbers k such that k and k+1 both have an even exponent of least prime factor in their prime factorization.

Offset 1, canonical program `A365870.P6694161055261231779`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1816 terms. -/
def A365870 (n : ℕ) : ℤ :=
  (A365870.P6694161055261231779.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1816 terms. -/
def A365870.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A365871.P3627370264345146378

`∩[A365870(n+1)-1, A365870(n+1)]`
-/

namespace A365871.P3627370264345146378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365870 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365870 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A365871.P3627370264345146378

noncomputable section

/-- A365871: Starts of runs of 3 consecutive integers whose exponent of least prime factor in their prime factorization is even.

Offset 1, canonical program `A365871.P3627370264345146378`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 462 terms. -/
def A365871 (n : ℕ) : ℤ :=
  (A365871.P3627370264345146378.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 462 terms. -/
def A365871.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A366460.P2003594403644138664

`filter[A366825(n+1), A039982(#)]`
-/

namespace A366460.P2003594403644138664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366825 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A039982 (f1 j).toNat = 1) n)

end

end A366460.P2003594403644138664

noncomputable section

/-- A366460: Odd terms in A366825.

Offset 1, canonical program `A366460.P2003594403644138664`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3432 terms. -/
def A366460 (n : ℕ) : ℤ :=
  A366460.P2003594403644138664.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3432 terms. -/
def A366460.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A371981.P11010678312078871024

`A000720(A005384(n+2))-A000720(A005384(n+1))-1`
-/

namespace A371981.P11010678312078871024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A005384 (n + 2)).toNat - A000720 (A005384 (n + 1)).toNat - 1

end

end A371981.P11010678312078871024

noncomputable section

/-- A371981: Number of primes between two successive Sophie Germain primes, with Sophie Germain primes not themselves included in the count.

Offset 1, canonical program `A371981.P11010678312078871024`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005384, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A371981 (n : ℕ) : ℤ :=
  A371981.P11010678312078871024.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005384, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A371981.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A378658.P13927000025378427146

`A337345(filter[A103288(n+1), A294930(#)])`
-/

namespace A378658.P13927000025378427146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103288 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337345 (f1 (SequenceMachineLib.nth (fun j => A294930 (f1 j).toNat = 1) n)).toNat

end

end A378658.P13927000025378427146

noncomputable section

/-- A378658: a(n) = A337345(A091191(n)), where A337345 is the number of divisors d of n for which A003961(d) > 2*d, and A091191 lists the primitive abundant numbers.

Offset 1, canonical program `A378658.P13927000025378427146`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. -/
def A378658 (n : ℕ) : ℤ :=
  A378658.P13927000025378427146.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. -/
def A378658.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A383264.P2673732446101905857

`lt[1, A067029(A067029(n+2))]+2`
-/

namespace A383264.P2673732446101905857
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067029 (A067029 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 2

end

end A383264.P2673732446101905857

noncomputable section

/-- A383264: Numbers whose vSPD is not squarefree, where vSPD(n) is the valuation of the smallest prime divisor for n >= 2.

Offset 1, canonical program `A383264.P2673732446101905857`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 391 terms. -/
def A383264 (n : ℕ) : ℤ :=
  (A383264.P2673732446101905857.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 391 terms. -/
def A383264.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A387707.P1369852853517030567

`A337345(A023196(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A387707.P1369852853517030567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337345 (A023196 (n + 1)).toNat

end

end A387707.P1369852853517030567

noncomputable section

/-- A387707: a(n) = A337345(A023196(n)), where A337345 is the number of divisors d of n for which A003961(d) > 2*d, and A023196 lists the nondeficient numbers, numbers k such that sigma(k) >= 2*k.

Offset 1, canonical program `A387707.P1369852853517030567`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A023196, A337345, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A387707 (n : ℕ) : ℤ :=
  A387707.P1369852853517030567.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A023196, A337345, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A387707.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A388979.P3109301176351806020

`A326127(n+1)*A389078(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A388979.P3109301176351806020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326127 (n + 1) * A389078 (n + 1)

end

end A388979.P3109301176351806020

noncomputable section

/-- A388979: a(n) = A326127(n) * A389078(n).

Offset 1, canonical program `A388979.P3109301176351806020`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A389078, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A388979 (n : ℕ) : ℤ :=
  A388979.P3109301176351806020.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A389078, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A388979.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A389144.P17569700161974423594

`filter[A283050(n+1), A389905(#)]`
-/

namespace A389144.P17569700161974423594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283050 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A389905 (f1 j).toNat = 1) n)

end

end A389144.P17569700161974423594

noncomputable section

/-- A389144: Weak numbers k such that lpf(k)^2 | k, where lpf(n) denotes the least prime factor of n (A020639).

Offset 1, canonical program `A389144.P17569700161974423594`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9670 terms. -/
def A389144 (n : ℕ) : ℤ :=
  A389144.P17569700161974423594.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9670 terms. -/
def A389144.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A390093.P2007663628144528311

`∩[A244991(n+1), A391226(n+1)]`
-/

namespace A390093.P2007663628144528311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244991 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391226 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A390093.P2007663628144528311

noncomputable section

/-- A390093: Numbers k > 1 such that the least prime index of k and the greatest prime index of k are both odd.

Offset 1, canonical program `A390093.P2007663628144528311`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6665 terms. -/
def A390093 (n : ℕ) : ℤ :=
  (A390093.P2007663628144528311.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6665 terms. -/
def A390093.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A391049.P16899425426740408334

`∪[A005385(n+1), A006512(n+1)]`
-/

namespace A391049.P16899425426740408334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005385 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006512 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A391049.P16899425426740408334

noncomputable section

/-- A391049: Primes p such that p^2 - 4*q*r = s^2, where q, r are primes and s > 0.

Offset 1, canonical program `A391049.P16899425426740408334`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A391049 (n : ℕ) : ℤ :=
  (A391049.P16899425426740408334.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A391049.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A391229.P9739029163309589113

`∪[A390988(n+1), A391232(n+1)]`
-/

namespace A391229.P9739029163309589113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390988 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391232 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A391229.P9739029163309589113

noncomputable section

/-- A391229: Numbers k > 1 such that the least prime index of k and the greatest prime index of k are not both odd (equivalently, their product is even).

Offset 1, canonical program `A391229.P9739029163309589113`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A391229 (n : ℕ) : ℤ :=
  (A391229.P9739029163309589113.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A391229.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A397459.P5570082344827990689

`∩[A082294(n+1), A383264(n+1)]`
-/

namespace A397459.P5570082344827990689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082294 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383264 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A397459.P5570082344827990689

noncomputable section

/-- A397459: Numbers k of the form lpf(k)^3 * rad(k), where rad = A007947 and lpf is the least prime factor of k.

Offset 1, canonical program `A397459.P5570082344827990689`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6322 terms. -/
def A397459 (n : ℕ) : ℤ :=
  (A397459.P5570082344827990689.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6322 terms. -/
def A397459.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023586.P13133664148487050376

`A067029(A076274(2+n))`
-/

namespace A023586.P13133664148487050376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067029 (A076274 (2 + n)).toNat

end

end A023586.P13133664148487050376

noncomputable section

/-- A023586: Exponent of least prime factor in prime factorization of 2*prime(n)-1.

Offset 1, canonical program `A023586.P13133664148487050376`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 669 terms. -/
def A023586 (n : ℕ) : ℤ :=
  A023586.P13133664148487050376.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 669 terms. -/
def A023586.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023593.P8732283848075249249

`A067029(A072055(n+1))`
-/

namespace A023593.P8732283848075249249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067029 (A072055 (n + 1)).toNat

end

end A023593.P8732283848075249249

noncomputable section

/-- A023593: Exponent of least prime factor of 2*prime(n)+1.

Offset 1, canonical program `A023593.P8732283848075249249`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A067029, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A023593 (n : ℕ) : ℤ :=
  A023593.P8732283848075249249.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A067029, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A023593.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A046644.P2594318262158557951

`A000079(A046645(n+1))`
-/

namespace A046644.P2594318262158557951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A046645 (n + 1)).toNat

end

end A046644.P2594318262158557951

noncomputable section

/-- A046644: From square root of Riemann zeta function: form Dirichlet series Sum b_n/n^s whose square is zeta function; sequence gives denominator of b_n.

Offset 1, canonical program `A046644.P2594318262158557951`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046645, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A046644 (n : ℕ) : ℤ :=
  A046644.P2594318262158557951.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046645, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A046644.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A068443.P12532033995933004656

`A000217(A164977(n+1))`
-/

namespace A068443.P12532033995933004656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A164977 (n + 1)).toNat

end

end A068443.P12532033995933004656

noncomputable section

/-- A068443: Triangular numbers which are the product of two primes.

Offset 1, canonical program `A068443.P12532033995933004656`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A164977, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A068443 (n : ℕ) : ℤ :=
  A068443.P12532033995933004656.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A164977, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A068443.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A074845.P14330215240908241597

`∪[A073582(n+1), A194593(n+1)]`
-/

namespace A074845.P14330215240908241597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073582 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194593 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A074845.P14330215240908241597

noncomputable section

/-- A074845: Numbers k such that S(k) = largest difference between consecutive divisors of k (ordered by size), where S(k) is the Kempner function (A002034).

Offset 1, canonical program `A074845.P14330215240908241597`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A074845 (n : ℕ) : ℤ :=
  (A074845.P14330215240908241597.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A074845.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A080366.P9859883644515665035

`filter[A283050(n+1), A319988(#)]`
-/

namespace A080366.P9859883644515665035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283050 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A319988 (f1 j).toNat = 1) n)

end

end A080366.P9859883644515665035

noncomputable section

/-- A080366: Numbers k whose least and greatest prime divisors are non-unitary.

Offset 1, canonical program `A080366.P9859883644515665035`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 485 terms. -/
def A080366 (n : ℕ) : ℤ :=
  A080366.P9859883644515665035.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 485 terms. -/
def A080366.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A089994.P15600385656443467520

`A117370(A001358(n+1))`
-/

namespace A089994.P15600385656443467520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117370 (A001358 (n + 1)).toNat

end

end A089994.P15600385656443467520

noncomputable section

/-- A089994: Number of primes between factors of n-th semiprime.

Offset 1, canonical program `A089994.P15600385656443467520`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A089994 (n : ℕ) : ℤ :=
  A089994.P15600385656443467520.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A089994.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A118504.P15004735124841124950

`∩[A078403(n+1), A118571(n+1)]`
-/

namespace A118504.P15004735124841124950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078403 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118571 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118504.P15004735124841124950

noncomputable section

/-- A118504: Sophie Germain primes whose sum of digits is also a Sophie Germain prime.

Offset 1, canonical program `A118504.P15004735124841124950`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 777 terms. -/
def A118504 (n : ℕ) : ℤ :=
  (A118504.P15004735124841124950.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 777 terms. -/
def A118504.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A119664.P12264335523670075281

`(-1)^A164977(n+1)`
-/

namespace A119664.P12264335523670075281
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (A164977 (n + 1) : ℤ)

end

end A119664.P12264335523670075281

noncomputable section

/-- A119664: Sign in term (2p +/ - 1) for triangular numbers of the form p * (2p +/ - 1), where the two factors are both primes.

Offset 1, canonical program `A119664.P12264335523670075281`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A119664 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A119664.P12264335523670075281.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A119664.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A247180.P9640806229231474338

`comp[A283050(n+1)-2]+2`
-/

namespace A247180.P9640806229231474338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283050 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 2

end

end A247180.P9640806229231474338

noncomputable section

/-- A247180: Numbers with nonrepeating smallest prime factor.

Offset 1, canonical program `A247180.P9640806229231474338`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A247180 (n : ℕ) : ℤ :=
  (A247180.P9640806229231474338.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A247180.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A268386.P3095670448777005684

`A193231(A268387(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A268386.P3095670448777005684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193231 (A268387 (n + 1)).toNat

end

end A268386.P3095670448777005684

noncomputable section

/-- A268386: a(n) = A193231(A268387(n)).

Offset 1, canonical program `A268386.P3095670448777005684`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A193231, A268387, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A268386 (n : ℕ) : ℤ :=
  A268386.P3095670448777005684.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A193231, A268387, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A268386.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A299150.P3795475608102794918

`A046644(n+1)/A006519(n+1)`
-/

namespace A299150.P3795475608102794918
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046644 (n + 1) : ℚ) / (A006519 (n + 1) : ℚ)

end

end A299150.P3795475608102794918

noncomputable section

/-- A299150: Denominators of the positive solution to n = Sum_{d|n} a(d) * a(n/d).

Offset 1, canonical program `A299150.P3795475608102794918`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046644, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A299150 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A299150.P3795475608102794918.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046644, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A299150.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A299152.P7362327138160881266

`ceil(A317932(A003961(n+1))/A167343(n+1))`
-/

namespace A299152.P7362327138160881266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A317932 (A003961 (n + 1)).toNat : ℚ) / (A167343 (n + 1) : ℚ)⌉

end

end A299152.P7362327138160881266

noncomputable section

/-- A299152: Denominators of the positive solution to 2^(n-1) = Sum_{d|n} a(d) * a(n/d).

Offset 1, canonical program `A299152.P7362327138160881266`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 511 terms. -/
def A299152 (n : ℕ) : ℤ :=
  A299152.P7362327138160881266.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 511 terms. -/
def A299152.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A318450.P10889155975316061749

`A046644(A000265(n+1))`
-/

namespace A318450.P10889155975316061749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046644 (A000265 (n + 1)).toNat

end

end A318450.P10889155975316061749

noncomputable section

/-- A318450: Denominators of the sequence whose Dirichlet convolution with itself yields A001511, the 2-adic valuation of 2n.

Offset 1, canonical program `A318450.P10889155975316061749`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046644, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A318450 (n : ℕ) : ℤ :=
  A318450.P10889155975316061749.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046644, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A318450.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A318451.P4161075931148706271

`val(A318450(n+1), 2)`
-/

namespace A318451.P4161075931148706271
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A318450 (n + 1)).toNat 2

end

end A318451.P4161075931148706271

noncomputable section

/-- A318451: The 2-adic valuation of A318450.

Offset 1, canonical program `A318451.P4161075931148706271`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A318450, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A318451 (n : ℕ) : ℤ :=
  (A318451.P4161075931148706271.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A318450, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A318451.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A318454.P17241560153575372680

`A046644(A006519(n+1))`
-/

namespace A318454.P17241560153575372680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046644 (A006519 (n + 1)).toNat

end

end A318454.P17241560153575372680

noncomputable section

/-- A318454: Denominators of the sequence whose Dirichlet convolution with itself yields A001227, number of odd divisors of n.

Offset 1, canonical program `A318454.P17241560153575372680`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046644, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A318454 (n : ℕ) : ℤ :=
  A318454.P17241560153575372680.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046644, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A318454.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A318455.P12423452328214462674

`val(A318454(n+1), 2)`
-/

namespace A318455.P12423452328214462674
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A318454 (n + 1)).toNat 2

end

end A318455.P12423452328214462674

noncomputable section

/-- A318455: The 2-adic valuation of A318454(n).

Offset 1, canonical program `A318455.P12423452328214462674`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A318454, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A318455 (n : ℕ) : ℤ :=
  (A318455.P12423452328214462674.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A318454, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A318455.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A318512.P17152244906020944566

`ceil(A299150(n+1)/A006519(n+1))`
-/

namespace A318512.P17152244906020944566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A299150 (n + 1) : ℚ) / (A006519 (n + 1) : ℚ)⌉

end

end A318512.P17152244906020944566

noncomputable section

/-- A318512: Denominators (in their lowest terms) of the sequence whose Dirichlet convolution with itself yields squares (A000290), or equally A064549.

Offset 1, canonical program `A318512.P17152244906020944566`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A318512 (n : ℕ) : ℤ :=
  A318512.P17152244906020944566.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A318512.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A318513.P1269522289693333221

`val(A318512(n+1), 2)`
-/

namespace A318513.P1269522289693333221
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A318512 (n + 1)).toNat 2

end

end A318513.P1269522289693333221

noncomputable section

/-- A318513: The 2-adic valuation of A318512.

Offset 1, canonical program `A318513.P1269522289693333221`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A318512, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A318513 (n : ℕ) : ℤ :=
  (A318513.P1269522289693333221.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A318512, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A318513.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A318649.P4247351377528363883

`(n+1)*A318512(n+1)*A299149(n+1)/A299150(n+1)`
-/

namespace A318649.P4247351377528363883
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) * A318512 (n + 1) * A299149 (n + 1) : ℚ) / (A299150 (n + 1) : ℚ)

end

end A318649.P4247351377528363883

noncomputable section

/-- A318649: Numerators of the sequence whose Dirichlet convolution with itself yields squares, A000290.

Offset 1, canonical program `A318649.P4247351377528363883`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A299149, A299150, A318512, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A318649 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A318649.P4247351377528363883.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A299149, A299150, A318512, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A318649.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A318651.P14693122508814225811

`A046644(n+1)/A318512(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A318651.P14693122508814225811
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046644 (n + 1) : ℚ) / (A318512 (n + 1) : ℚ)

end

end A318651.P14693122508814225811

noncomputable section

/-- A318651: a(n) = A046644(n)/A318512(n).

Offset 1, canonical program `A318651.P14693122508814225811`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046644, A318512, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A318651 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A318651.P14693122508814225811.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046644, A318512, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A318651.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A318652.P1218394255038798337

`A046645(n+1)-A318513(n+1)`
-/

namespace A318652.P1218394255038798337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046645 (n + 1) - A318513 (n + 1)

end

end A318652.P1218394255038798337

noncomputable section

/-- A318652: The 2-adic valuation of A046644(n)/A318512(n) (A318651).

Offset 1, canonical program `A318652.P1218394255038798337`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046645, A318513, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A318652 (n : ℕ) : ℤ :=
  A318652.P1218394255038798337.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046645, A318513, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A318652.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A318655.P15870475144563533263

`val(A318649(n+1), 2)`
-/

namespace A318655.P15870475144563533263
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A318649 (n + 1)).toNat 2

end

end A318655.P15870475144563533263

noncomputable section

/-- A318655: The 2-adic valuation of A318649, the numerators of "Dirichlet Square Root" of squares.

Offset 1, canonical program `A318655.P15870475144563533263`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A318649, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A318655 (n : ℕ) : ℤ :=
  (A318655.P15870475144563533263.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A318649, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A318655.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A318658.P5559540085635569704

`A046644(C(or(1, n), n))`
-/

namespace A318658.P5559540085635569704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046644 (Nat.choose (Nat.lor 1 n) n)

end

end A318658.P5559540085635569704

noncomputable section

/-- A318658: Denominators of the sequence whose Dirichlet convolution with itself yields A087003, a(2n) = 0 and a(2n+1) = moebius(2n+1).

Offset 1, canonical program `A318658.P5559540085635569704`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A318658 (n : ℕ) : ℤ :=
  A318658.P5559540085635569704.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A318658.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A318659.P7263319046953308454

`val(A318658(n+1), 2)`
-/

namespace A318659.P7263319046953308454
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A318658 (n + 1)).toNat 2

end

end A318659.P7263319046953308454

noncomputable section

/-- A318659: The 2-adic valuation of A318658.

Offset 1, canonical program `A318659.P7263319046953308454`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A318658, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A318659 (n : ℕ) : ℤ :=
  (A318659.P7263319046953308454.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A318658, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A318659.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A336837.P12627212875986616411

`A336841(n+1)/A336856(n+1)`
-/

namespace A336837.P12627212875986616411
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A336841 (n + 1) : ℚ) / (A336856 (n + 1) : ℚ)

end

end A336837.P12627212875986616411

noncomputable section

/-- A336837: Numerator of ratio A336841(n)/A000005(n).

Offset 1, canonical program `A336837.P12627212875986616411`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A336841, A336856, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A336837 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A336837.P12627212875986616411.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A336841, A336856, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A336837.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A338901.P1772611056831776762

`A072613(A074845(n+2))`
-/

namespace A338901.P1772611056831776762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072613 (A074845 (n + 2)).toNat

end

end A338901.P1772611056831776762

noncomputable section

/-- A338901: Position of the first appearance of prime(n) as a factor in the list of squarefree semiprimes.

Offset 1, canonical program `A338901.P1772611056831776762`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 669 terms. -/
def A338901 (n : ℕ) : ℤ :=
  A338901.P1772611056831776762.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 669 terms. -/
def A338901.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A349667.P3842805946856830097

`p?[(4*n+1)*A318451(3*n+1)]`
-/

namespace A349667.P3842805946856830097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n + 1 : ℤ) * A318451 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A349667.P3842805946856830097

noncomputable section

/-- A349667: Primes of the form 4*k+1 which are a prime after the Collatz step *3+1 and a maximal reduction by 2.

Offset 1, canonical program `A349667.P3842805946856830097`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1249 terms. -/
def A349667 (n : ℕ) : ℤ :=
  A349667.P3842805946856830097.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1249 terms. -/
def A349667.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A383769.P6860072968184239956

`ceil(A318512(n+1)/A006519(n+1))`
-/

namespace A383769.P6860072968184239956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A318512 (n + 1) : ℚ) / (A006519 (n + 1) : ℚ)⌉

end

end A383769.P6860072968184239956

noncomputable section

/-- A383769: Denominators of the sequence whose Dirichlet convolution with itself yields cubes (A000578).

Offset 1, canonical program `A383769.P6860072968184239956`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A383769 (n : ℕ) : ℤ :=
  A383769.P6860072968184239956.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A383769.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A080364.P13294983138381191063

`filter[A247180(1+n), A005171(#)]`
-/

namespace A080364.P13294983138381191063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247180 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A080364.P13294983138381191063

noncomputable section

/-- A080364: Composite numbers whose least prime factor appears with multiplicity 1.

Offset 1, canonical program `A080364.P13294983138381191063`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8252 terms. -/
def A080364 (n : ℕ) : ℤ :=
  A080364.P13294983138381191063.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8252 terms. -/
def A080364.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A318654.P4089455956200200647

`lt[0, A318655(n+2)]+2`
-/

namespace A318654.P4089455956200200647
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318655 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 2

end

end A318654.P4089455956200200647

noncomputable section

/-- A318654: Positions of even terms in A318649.

Offset 1, canonical program `A318654.P4089455956200200647`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1408 terms. -/
def A318654 (n : ℕ) : ℤ :=
  (A318654.P4089455956200200647.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1408 terms. -/
def A318654.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A400801.P7891398207924547802

`filter[A080364(1+n), A087049(#)]`
-/

namespace A400801.P7891398207924547802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080364 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A087049 (f1 j).toNat = 1) n)

end

end A400801.P7891398207924547802

noncomputable section

/-- A400801: Nonsquarefree numbers that are not divisible by the square of their least prime factor.

Offset 1, canonical program `A400801.P7891398207924547802`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1112 terms. -/
def A400801 (n : ℕ) : ℤ :=
  A400801.P7891398207924547802.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1112 terms. -/
def A400801.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A393201.P3275454451732274938

`∪[A378878(n+1), A400801(n+1)]`
-/

namespace A393201.P3275454451732274938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378878 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400801 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A393201.P3275454451732274938

noncomputable section

/-- A393201: Numbers k that are neither squarefree nor prime powers, such that k/rad(k) != lpf(k), where rad = A007947 and lpf = A020639.

Offset 1, canonical program `A393201.P3275454451732274938`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A393201 (n : ℕ) : ℤ :=
  (A393201.P3275454451732274938.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A393201.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A114127.P15786662732718642431

`filter[A393201(n+1), A293449(#)]`
-/

namespace A114127.P15786662732718642431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393201 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A293449 (f1 j).toNat = 1) n)

end

end A114127.P15786662732718642431

noncomputable section

/-- A114127: Numbers that factorize into a prime number of prime factors each raised to a prime exponent.

Offset 1, canonical program `A114127.P15786662732718642431`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. -/
def A114127 (n : ℕ) : ℤ :=
  A114127.P15786662732718642431.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. -/
def A114127.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A376384.P9934841520496107516

`∪[A000977(n+1), A393201(n+1)]`
-/

namespace A376384.P9934841520496107516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000977 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393201 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A376384.P9934841520496107516

noncomputable section

/-- A376384: Numbers k such that there exists at least two m <= k such that both rad(m) | k and m is neither squarefree nor a prime power, i.e., m is in A126706, where rad = A007947.

Offset 1, canonical program `A376384.P9934841520496107516`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A376384 (n : ℕ) : ℤ :=
  (A376384.P9934841520496107516.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A376384.provenance : SequenceMachineLib.Provenance := .conjectured

