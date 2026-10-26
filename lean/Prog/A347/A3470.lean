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
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C023
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C035
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C040
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C011
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
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
import Seq.B008.C000
import Seq.B009.C000
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
# A347000: The (m^n)-th prime, written as square array T(n,m) read by falling antidiagonals.

The programs for A347000, there is no canonical definition to state claims against.
-/

/-! ## A347000.P10097380387882857379

`A001748(A051128(n+1))/3`
-/

namespace A347000.P10097380387882857379
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001748 (A051128 (n + 1)).toNat : ℚ) / 3

end

end A347000.P10097380387882857379

/-! ## A347000.P7506569602999369803

`A000040((C(comp[∑[n]]-n, 2)-n)^(1-C(∑[char[∑[n]]], 2)+n))`
-/

namespace A347000.P7506569602999369803
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f4 j = n then 1 else 0

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.roundAway (((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ) : ℚ) ^ (1 - (Nat.choose (∑ j ∈ Finset.range (n + 1), f3 j) 2 : ℤ) + (n : ℤ) : ℤ))).toNat

end

end A347000.P7506569602999369803

/-! ## A347000.P9602239635342263400

`A000040((C(comp[∑[n]]-n, 2)-n)^(1-(C(∑[char[∑[n]]], 2)-n)))`
-/

namespace A347000.P9602239635342263400
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f4 j = n then 1 else 0

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.roundAway (((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ) : ℚ) ^ (1 - ((Nat.choose (∑ j ∈ Finset.range (n + 1), f3 j) 2 : ℤ) - (n : ℤ)) : ℤ))).toNat

end

end A347000.P9602239635342263400

/-! ## A347000.P7392807551691898455

`A000040(A051128(n+1))`
-/

namespace A347000.P7392807551691898455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A051128 (n + 1)).toNat

end

end A347000.P7392807551691898455

/-! ## A347000.P16271727389285750826

`A000040(A009999(comp[∑[n]]))`
-/

namespace A347000.P16271727389285750826
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A009999 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)).toNat

end

end A347000.P16271727389285750826

/-! ## A347000.P14387966984391739854

`A000040(A095884(comp[∑[n]]))`
-/

namespace A347000.P14387966984391739854
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A095884 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)).toNat

end

end A347000.P14387966984391739854

/-! ## A347000.P11561073717020455940

`A000040(A051129(∑[char[∑[n]]]²-n))`
-/

namespace A347000.P11561073717020455940
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A051129 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)).toNat

end

end A347000.P11561073717020455940

/-! ## A347000.P5333370128808369672

`A000040((C(comp[∑[n]]-n, 2)-n)^A002260(n+1))`
-/

namespace A347000.P5333370128808369672
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.roundAway (((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ) : ℚ) ^ (A002260 (n + 1) : ℤ))).toNat

end

end A347000.P5333370128808369672

/-! ## A347000.P14037993741416036037

`A000040((C(comp[∑[n]]-n, 2)-n)^A002262(n+1))`
-/

namespace A347000.P14037993741416036037
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.roundAway (((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ) : ℚ) ^ (A002262 (n + 1) : ℤ))).toNat

end

end A347000.P14037993741416036037

/-! ## A347000.P16166608965017473623

`A000040(A004736(n+1)^(1-C(∑[char[∑[n]]], 2)+n))`
-/

namespace A347000.P16166608965017473623
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.roundAway ((A004736 (n + 1) : ℚ) ^ (1 - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) + (n : ℤ) : ℤ))).toNat

end

end A347000.P16166608965017473623

/-!
# A347001: Expansion of e.g.f. exp( log(1 - x)^2 / 2 ).

The programs for A347001, there is no canonical definition to state claims against.
-/

/-! ## A347001.P10999520875035079036

`A357883(∑[n+3])`
-/

namespace A347001.P10999520875035079036
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357883 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A347001.P10999520875035079036

/-! ## A347001.P16500390519534307424

`xor(A008647(A007446(n)), A102003(n))`
-/

namespace A347001.P16500390519534307424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A008647 (A007446 n).toNat) (A102003 n)

end

end A347001.P16500390519534307424

/-! ## A347001.P5653374283994398518

`A008647(A007446(n)-A008647(n²))`
-/

namespace A347001.P5653374283994398518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008647 (A007446 n - A008647 (n ^ 2)).toNat

end

end A347001.P5653374283994398518

/-!
# A347002: Expansion of e.g.f. exp( -log(1 - x)^3 / 3! ).

The programs for A347002, there is no canonical definition to state claims against.
-/

/-! ## A347002.P4714811945308299955

`A357883(A155212(n)+4)`
-/

namespace A347002.P4714811945308299955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357883 (A155212 n + 4).toNat

end

end A347002.P4714811945308299955

/-! ## A347002.P17119850043427746466

`A357883(A056000(n)+6)`
-/

namespace A347002.P17119850043427746466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357883 (A056000 n + 6).toNat

end

end A347002.P17119850043427746466

/-! ## A347002.P11448543509213905343

`A357883(A133263(n+4)-6)`
-/

namespace A347002.P11448543509213905343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357883 (A133263 (n + 4) - 6).toNat

end

end A347002.P11448543509213905343

/-! ## A347002.P6097241880595202144

`A357883(eq[3, A122201(n)])`
-/

namespace A347002.P6097241880595202144
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122201 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357883 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A347002.P6097241880595202144

/-!
# A347003: Expansion of e.g.f. exp( log(1 - x)^4 / 4! ).

The programs for A347003, there is no canonical definition to state claims against.
-/

/-! ## A347003.P10313532102278808877

`A379674(n)+A000007(A000129(n))`
-/

namespace A347003.P10313532102278808877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379674 n + A000007 (A000129 n).toNat

end

end A347003.P10313532102278808877

/-! ## A347003.P12051196297738118896

`A379674(n)+A080995(A007530(n+1))`
-/

namespace A347003.P12051196297738118896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379674 n + A080995 (A007530 (n + 1)).toNat

end

end A347003.P12051196297738118896

/-! ## A347003.P5235717487472592112

`A379674(n)+A379668(A369424(n+1))`
-/

namespace A347003.P5235717487472592112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379674 n + A379668 (A369424 (n + 1)).toNat

end

end A347003.P5235717487472592112

/-! ## A347003.P15880496763919854229

`A379674(n)+A121373(A030072(2*(n+1)))`
-/

namespace A347003.P15880496763919854229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379674 n + A121373 (A030072 (2 * (n + 1))).toNat

end

end A347003.P15880496763919854229

/-! ## A347003.P9550336747837379423

`A379674(n)-A010815(A093685(3*n+5))`
-/

namespace A347003.P9550336747837379423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379674 n - A010815 (A093685 (3 * n + 5)).toNat

end

end A347003.P9550336747837379423

/-!
# A347005: E.g.f.: Product_{k>=1} 1 / (1 - exp(x) * x^k / k!).

The programs for A347005, there is no canonical definition to state claims against.
-/

/-! ## A347005.P3351758872693024337

`lcm(2, ∏[1-2*n])-A305313(2^n)`
-/

namespace A347005.P3351758872693024337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (∏ j ∈ Finset.range (n + 1), f1 j) : ℤ) - A305313 (2 ^ n)

end

end A347005.P3351758872693024337

/-! ## A347005.P9958416973780747438

`A004277(A001147(n))-A000665(n)`
-/

namespace A347005.P9958416973780747438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A001147 n).toNat - A000665 n

end

end A347005.P9958416973780747438

/-!
# A347006: E.g.f.: Product_{k>=1} (1 + exp(x) * x^k / k!).

The programs for A347006, there is no canonical definition to state claims against.
-/

/-! ## A347006.P5068584423159815568

`A066490(4*(n+1)!)-n`
-/

namespace A347006.P5068584423159815568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066490 (4 * Nat.factorial (n + 1)) - (n : ℤ)

end

end A347006.P5068584423159815568

/-! ## A347006.P12887870137331491466

`A205487(gcd(5*n, ∑{digits}[n, #!]))`
-/

namespace A347006.P12887870137331491466
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205487 (Nat.gcd (5 * n) ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => Nat.factorial x).sum)

end

end A347006.P12887870137331491466

/-!
# A347008: Numbers that can be written in exactly two ways as p*q+p+q where p and q are primes with p < q.

The programs for A347008, there is no canonical definition to state claims against.
-/

/-! ## A347008.P7223820276316663578

`record[A058197(or(4, A308686(n+1)))]`
-/

namespace A347008.P7223820276316663578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058197 (Int.lor 4 (A308686 (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A347008.P7223820276316663578

/-!
# A347009: a(n) is the largest integer m such that e^-m > e - Sum_{k=0..n} 1/k!.

The programs for A347009, there is no canonical definition to state claims against.
-/

/-! ## A347009.P6727652655150478203

`floor(log((n+2)!/(n+3)))`
-/

namespace A347009.P6727652655150478203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.log ((Nat.factorial (n + 2) : ℚ) / (n + 3 : ℚ) : ℝ)⌋

end

end A347009.P6727652655150478203

/-! ## A347009.P9733110421900913801

`floor(log(∏[n+2]/(n+3)))`
-/

namespace A347009.P9733110421900913801
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.log (((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (n + 3 : ℚ) : ℝ)⌋

end

end A347009.P9733110421900913801

/-! ## A347009.P4305879175434958383

`A066026(n+1)-Δ[A054027(n+1)]`
-/

namespace A347009.P4305879175434958383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054027 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066026 (n + 1) - (f1 (n + 1) - f1 n)

end

end A347009.P4305879175434958383

/-! ## A347009.P1190121762282090116

`A025201(n+1)-A010052(A000096(n))`
-/

namespace A347009.P1190121762282090116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025201 (n + 1) - A010052 (A000096 n).toNat

end

end A347009.P1190121762282090116

/-! ## A347009.P14520414284275527645

`A025201(n+1)-A010060(A051343(n))`
-/

namespace A347009.P14520414284275527645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025201 (n + 1) - A010060 (A051343 n).toNat

end

end A347009.P14520414284275527645

/-! ## A347009.P9317555788959906661

`A025201(n+1)-A099395(A043161(n+1))`
-/

namespace A347009.P9317555788959906661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025201 (n + 1) - A099395 (A043161 (n + 1)).toNat

end

end A347009.P9317555788959906661

/-!
# A347011: Euler transform of j-> ceiling(2^(j-2)).

The programs for A347011, there is no canonical definition to state claims against.
-/

/-! ## A347011.P18428441004685664855

`A322306(A322298(n))+A319379(n+1)`
-/

namespace A347011.P18428441004685664855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322306 (A322298 n).toNat + A319379 (n + 1)

end

end A347011.P18428441004685664855

/-! ## A347011.P8828405034679075307

`A319379(n+1)+A107846(A049125(n+1))`
-/

namespace A347011.P8828405034679075307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319379 (n + 1) + A107846 (A049125 (n + 1)).toNat

end

end A347011.P8828405034679075307

/-!
# A347012: E.g.f.: exp(x) / (1 - 4 * x)^(1/4).

The programs for A347012, there is no canonical definition to state claims against.
-/

/-! ## A347012.P4451940651808804208

`2*(2*n-1)*a(n-1)-4*(n-1)*a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A347012.P4451940651808804208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  2 * (((2 * n : ℤ) - 1) * a (n - 1)) - 4 * (((n : ℤ) - 1) * a (n - 2))

end

end A347012.P4451940651808804208

/-! ## A347012.P17268624905490348299

`2^n*A002801(n)`
-/

namespace A347012.P17268624905490348299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A002801 n

end

end A347012.P17268624905490348299

/-! ## A347012.P14942098959942470721

`A002801(n)*A011782(n+1)`
-/

namespace A347012.P14942098959942470721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002801 n * A011782 (n + 1)

end

end A347012.P14942098959942470721

/-! ## A347012.P14383269198659464633

`A002801(n)*A003586(A022331(n))`
-/

namespace A347012.P14383269198659464633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002801 n * A003586 (A022331 n).toNat

end

end A347012.P14383269198659464633

/-! ## A347012.P10336946714285778550

`A002801(n)*A075497(A000124(n))`
-/

namespace A347012.P10336946714285778550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002801 n * A075497 (A000124 n).toNat

end

end A347012.P10336946714285778550

/-!
# A347013: E.g.f.: exp(x) / (1 - 5 * x)^(1/5).

The programs for A347013, there is no canonical definition to state claims against.
-/

/-! ## A347013.P1030576607429585303

`∑[A055047(A242005(n))]`
-/

namespace A347013.P1030576607429585303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055047 (A242005 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A347013.P1030576607429585303

/-!
# A347014: Expansion of e.g.f.: exp(x) / (1 - 6*x)^(1/6).

The programs for A347014, the canonical program `A347014.P9788029788239488861` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A347014 has offset 0).

The definition of A347014 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A347014.P9788029788239488861

`(6*n-4)*a(n-1)-6*(n-1)*a(n-2)` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A347014

/-- `(6*n-4)*a(n-1)-6*(n-1)*a(n-2)` -/
def P9788029788239488861.Spec : Prop :=
  ∀ n, P9788029788239488861.a n = A347014 n

theorem P9788029788239488861.correct : P9788029788239488861.Spec := by
  intro n
  simp only [A347014]

end A347014

/-!
# A347015: Expansion of e.g.f. 1 / (1 + 3 * log(1 - x))^(1/3).

The programs for A347015, there is no canonical definition to state claims against.
-/

/-! ## A347015.P4473930045839690185

`A040115(8^n-1)+2^floor(n/2)`
-/

namespace A347015.P4473930045839690185
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A040115 (8 ^ n - 1) : ℚ) + (2 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ)

end

end A347015.P4473930045839690185

/-!
# A347016: Expansion of e.g.f. 1 / (1 + 4 * log(1 - x))^(1/4).

The programs for A347016, there is no canonical definition to state claims against.
-/

/-! ## A347016.P13421167316285884473

`A026510(C(∑[n]+1, n+1))`
-/

namespace A347016.P13421167316285884473
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026510 (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j + 1) (n + 1))

end

end A347016.P13421167316285884473

/-!
# A347017: a(n) = floor(2^(n-1)) - binomial(n,3) + binomial(n,2) - n + 1.

The programs for A347017, the canonical program `A347017.P4387524655672523130` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A347017 has offset 0).

The definition of A347017 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(2^(n-1))-C(n, 3)+C(n, 2)-n+1` (program `A347017.P4387524655672523130`, by `A347017.P4387524655672523130.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A347017.P4387524655672523130

`floor(2^(n-1))-C(n, 3)+C(n, 2)-n+1`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A347017

/-- `floor(2^(n-1))-C(n, 3)+C(n, 2)-n+1` -/
def P4387524655672523130.Spec : Prop :=
  ∀ n, P4387524655672523130.a n = A347017 n

theorem P4387524655672523130.correct : P4387524655672523130.Spec := by
  intro n
  simp only [A347017]

end A347017

/-! ## A347017.P189426420623758785

`A011782(n)-C(abs(1-n), 3)`
-/

namespace A347017.P189426420623758785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n - (Nat.choose |1 - (n : ℤ)|.toNat 3 : ℤ)

end

end A347017.P189426420623758785

namespace A347017

/-- `A011782(n)-C(abs(1-n), 3)` -/
def P189426420623758785.Spec : Prop :=
  ∀ n, P189426420623758785.a n = A347017 n

end A347017

/-! ## A347017.P967273576397326801

`A014844(n-2)+a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A347017.P967273576397326801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A014844 (n - 2) + a (n - 1)

end

end A347017.P967273576397326801

namespace A347017

/-- `A014844(n-2)+a(n-1)` -/
def P967273576397326801.Spec : Prop :=
  ∀ n, P967273576397326801.a n = A347017 n

end A347017

/-! ## A347017.P16470043196170292425

`A094373(n)-A050407(n)`
-/

namespace A347017.P16470043196170292425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094373 n - A050407 n

end

end A347017.P16470043196170292425

namespace A347017

/-- `A094373(n)-A050407(n)` -/
def P16470043196170292425.Spec : Prop :=
  ∀ n, P16470043196170292425.a n = A347017 n

end A347017

/-! ## A347017.P9772926516105097286

`Δ[A052968(n)]-A050407(n)`
-/

namespace A347017.P9772926516105097286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052968 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A050407 n

end

end A347017.P9772926516105097286

namespace A347017

/-- `Δ[A052968(n)]-A050407(n)` -/
def P9772926516105097286.Spec : Prop :=
  ∀ n, P9772926516105097286.a n = A347017 n

end A347017

/-! ## A347017.P360421978152401962

`A056469(n)-(A050407(n)+1)`
-/

namespace A347017.P360421978152401962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056469 n - (A050407 n + 1)

end

end A347017.P360421978152401962

namespace A347017

/-- `A056469(n)-(A050407(n)+1)` -/
def P360421978152401962.Spec : Prop :=
  ∀ n, P360421978152401962.a n = A347017 n

end A347017

/-! ## A347017.P7743902670270460427

`A228693(2*n)-A050407(n)`
-/

namespace A347017.P7743902670270460427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228693 (2 * n) - A050407 n

end

end A347017.P7743902670270460427

namespace A347017

/-- `A228693(2*n)-A050407(n)` -/
def P7743902670270460427.Spec : Prop :=
  ∀ n, P7743902670270460427.a n = A347017 n

end A347017

/-! ## A347017.P17037402557613521691

`record[A331309(n+1)]-A050407(n)`
-/

namespace A347017.P17037402557613521691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331309 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A050407 n

end

end A347017.P17037402557613521691

namespace A347017

/-- `record[A331309(n+1)]-A050407(n)` -/
def P17037402557613521691.Spec : Prop :=
  ∀ n, P17037402557613521691.a n = A347017 n

end A347017

/-! ## A347017.P6691054914188712519

`A011782(n)-Δ[A000332(abs(1-n))]`
-/

namespace A347017.P6691054914188712519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000332 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n - (f1 (n + 1) - f1 n)

end

end A347017.P6691054914188712519

namespace A347017

/-- `A011782(n)-Δ[A000332(abs(1-n))]` -/
def P6691054914188712519.Spec : Prop :=
  ∀ n, P6691054914188712519.a n = A347017 n

end A347017

/-! ## A347017.P165874790534449639

`A094373(n)-A051631(A133263(n))`
-/

namespace A347017.P165874790534449639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094373 n - A051631 (A133263 n).toNat

end

end A347017.P165874790534449639

namespace A347017

/-- `A094373(n)-A051631(A133263(n))` -/
def P165874790534449639.Spec : Prop :=
  ∀ n, P165874790534449639.a n = A347017 n

end A347017

/-!
# A347018: The number of unlabeled trees T on n vertices for which maximum multiplicity attained by any matrix whose graph is T implies the simplicity of its other eigenvalues.

The programs for A347018, there is no canonical definition to state claims against.
-/

/-! ## A347018.P15787676308448361249

`A001462(floor((A197465(n+1)+1)/2))`
-/

namespace A347018.P15787676308448361249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 ⌊(A197465 (n + 1) + 1 : ℚ) / 2⌋.toNat

end

end A347018.P15787676308448361249

/-! ## A347018.P17898497269678246513

`A209638(A209616(floor(n-atan(n))+1))`
-/

namespace A347018.P17898497269678246513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209638 (A209616 (⌊(n : ℝ) - Real.arctan (n : ℝ)⌋ + 1).toNat).toNat

end

end A347018.P17898497269678246513

/-! ## A347018.P7936851578339246987

`A003056(A111275(n+1)-A000045(n))`
-/

namespace A347018.P7936851578339246987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A111275 (n + 1) - A000045 n).toNat

end

end A347018.P7936851578339246987

/-! ## A347018.P3244333355428047878

`A089646(A002379(n))`
-/

namespace A347018.P3244333355428047878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089646 (A002379 n).toNat

end

end A347018.P3244333355428047878

/-! ## A347018.P17465305989396222831

`A340458(A007476(n))`
-/

namespace A347018.P17465305989396222831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340458 (A007476 n).toNat

end

end A347018.P17465305989396222831

/-!
# A347019: E.g.f.: 1 / (1 + 6 * log(1 - x))^(1/6).

The programs for A347019, there is no canonical definition to state claims against.
-/

/-! ## A347019.P3707133854144320112

`A001951(A349505(n))`
-/

namespace A347019.P3707133854144320112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 (A349505 n).toNat

end

end A347019.P3707133854144320112

/-!
# A347020: Expansion of e.g.f. 1 / (1 - 3 * log(1 + x))^(1/3).

The programs for A347020, there is no canonical definition to state claims against.
-/

/-! ## A347020.P3557377889768500399

`A097992(round((sqrt(A240844(2*(n+2)))+1)^n))`
-/

namespace A347020.P3557377889768500399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097992 (SequenceMachineLib.roundAway ((Real.sqrt (A240844 (2 * (n + 2)) : ℝ) + 1) ^ n)).toNat

end

end A347020.P3557377889768500399

/-! ## A347020.P16771201253415717735

`A015113(n)+A004526(A109253(n))`
-/

namespace A347020.P16771201253415717735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015113 n + A004526 (A109253 n).toNat

end

end A347020.P16771201253415717735

/-!
# A347021: Expansion of e.g.f. 1 / (1 - 4 * log(1 + x))^(1/4).

The programs for A347021, there is no canonical definition to state claims against.
-/

/-! ## A347021.P2851647459515418361

`A221284(round(4*n/3)^ceil(C(n, 2)/2))`
-/

namespace A347021.P2851647459515418361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221284 (SequenceMachineLib.roundAway ((SequenceMachineLib.roundAway (4 * ((n : ℚ) / 3)) : ℚ) ^ (⌈(Nat.choose n 2 : ℚ) / 2⌉ : ℤ))).toNat

end

end A347021.P2851647459515418361

/-!
# A347022: Expansion of e.g.f. 1 / (1 - 5 * log(1 + x))^(1/5).

The programs for A347022, there is no canonical definition to state claims against.
-/

/-! ## A347022.P3119657286729344968

`A037240(n)*A137900(A055484(n+1))`
-/

namespace A347022.P3119657286729344968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037240 n * A137900 (A055484 (n + 1)).toNat

end

end A347022.P3119657286729344968

/-!
# A347023: E.g.f.: 1 / (1 - 6 * log(1 + x))^(1/6).

The programs for A347023, there is no canonical definition to state claims against.
-/

/-! ## A347023.P16974687988479861749

`A315819(C(n!, 2))`
-/

namespace A347023.P16974687988479861749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315819 (Nat.choose (Nat.factorial n) 2)

end

end A347023.P16974687988479861749

/-!
# A347026: Irregular triangle read by rows in which row n lists the first n odd numbers, followed by the first n odd numbers in decreasing order.

The programs for A347026, the canonical program `A347026.P1087206353886803899` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A347026 has offset 1).

The definition of A347026 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A347026.P1511778928304061691

`abs(2*(2*n-comp[round(sqrt(n+1))²+n])+1)`
-/

namespace A347026.P1511778928304061691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (n + 1 : ℝ)) ^ 2 + (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 * ((2 * n : ℤ) - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)) + 1|

end

end A347026.P1511778928304061691

namespace A347026

/-- `abs(2*(2*n-comp[round(sqrt(n+1))²+n])+1)` -/
def P1511778928304061691.Spec : Prop :=
  ∀ n, P1511778928304061691.a n = A347026 (n + 1)

end A347026

/-! ## A347026.P1087206353886803899

`or(1, A253580(n))`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A347026

/-- `or(1, A253580(n))` -/
def P1087206353886803899.Spec : Prop :=
  ∀ n, P1087206353886803899.a n = A347026 (n + 1)

theorem P1087206353886803899.correct : P1087206353886803899.Spec := by
  intro n
  simp only [A347026, Nat.add_sub_cancel]

end A347026

/-! ## A347026.P18032831431572308941

`A088226(4*(n+1))`
-/

namespace A347026.P18032831431572308941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088226 (4 * (n + 1))

end

end A347026.P18032831431572308941

namespace A347026

/-- `A088226(4*(n+1))` -/
def P18032831431572308941.Spec : Prop :=
  ∀ n, P18032831431572308941.a n = A347026 (n + 1)

end A347026

/-! ## A347026.P7601490474484028911

`or(1, abs(Δ[A329116(n)²]))`
-/

namespace A347026.P7601490474484028911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329116 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 |f1 (n + 1) - f1 n|

end

end A347026.P7601490474484028911

namespace A347026

/-- `or(1, abs(Δ[A329116(n)²]))` -/
def P7601490474484028911.Spec : Prop :=
  ∀ n, P7601490474484028911.a n = A347026 (n + 1)

end A347026

/-! ## A347026.P8903065999665960102

`2*A004739(n+1)-1`
-/

namespace A347026.P8903065999665960102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A004739 (n + 1) - 1

end

end A347026.P8903065999665960102

namespace A347026

/-- `2*A004739(n+1)-1` -/
def P8903065999665960102.Spec : Prop :=
  ∀ n, P8903065999665960102.a n = A347026 (n + 1)

end A347026

/-! ## A347026.P2359359327899044654

`or(1, A004741(n+1)-1)`
-/

namespace A347026.P2359359327899044654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A004741 (n + 1) - 1)

end

end A347026.P2359359327899044654

namespace A347026

/-- `or(1, A004741(n+1)-1)` -/
def P2359359327899044654.Spec : Prop :=
  ∀ n, P2359359327899044654.a n = A347026 (n + 1)

end A347026

/-! ## A347026.P1296958798446379978

`A157458(A165776(n))`
-/

namespace A347026.P1296958798446379978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157458 (A165776 n).toNat

end

end A347026.P1296958798446379978

namespace A347026

/-- `A157458(A165776(n))` -/
def P1296958798446379978.Spec : Prop :=
  ∀ n, P1296958798446379978.a n = A347026 (n + 1)

end A347026

/-! ## A347026.P9921403127923374361

`A109613(A253580(n))`
-/

namespace A347026.P9921403127923374361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 (A253580 n).toNat

end

end A347026.P9921403127923374361

namespace A347026

/-- `A109613(A253580(n))` -/
def P9921403127923374361.Spec : Prop :=
  ∀ n, P9921403127923374361.a n = A347026 (n + 1)

end A347026

/-! ## A347026.P14460162678627936321

`A004273(A004739(n+1))`
-/

namespace A347026.P14460162678627936321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A004739 (n + 1)).toNat

end

end A347026.P14460162678627936321

namespace A347026

/-- `A004273(A004739(n+1))` -/
def P14460162678627936321.Spec : Prop :=
  ∀ n, P14460162678627936321.a n = A347026 (n + 1)

end A347026

/-! ## A347026.P16073522620096397177

`A157454(A007607(n+1))`
-/

namespace A347026.P16073522620096397177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157454 (A007607 (n + 1)).toNat

end

end A347026.P16073522620096397177

namespace A347026

/-- `A157454(A007607(n+1))` -/
def P16073522620096397177.Spec : Prop :=
  ∀ n, P16073522620096397177.a n = A347026 (n + 1)

end A347026

/-! ## A347026.P14751294298077997095

`A080096(A111284(n+1))`
-/

namespace A347026.P14751294298077997095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080096 (A111284 (n + 1)).toNat

end

end A347026.P14751294298077997095

namespace A347026

/-- `A080096(A111284(n+1))` -/
def P14751294298077997095.Spec : Prop :=
  ∀ n, P14751294298077997095.a n = A347026 (n + 1)

end A347026

/-! ## A347026.P6576172396685049426

`A157454(A061887(n+1))`
-/

namespace A347026.P6576172396685049426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157454 (A061887 (n + 1)).toNat

end

end A347026.P6576172396685049426

namespace A347026

/-- `A157454(A061887(n+1))` -/
def P6576172396685049426.Spec : Prop :=
  ∀ n, P6576172396685049426.a n = A347026 (n + 1)

end A347026

/-! ## A347026.P578131090021979476

`A157458(A162917(n+1))`
-/

namespace A347026.P578131090021979476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157458 (A162917 (n + 1)).toNat

end

end A347026.P578131090021979476

namespace A347026

/-- `A157458(A162917(n+1))` -/
def P578131090021979476.Spec : Prop :=
  ∀ n, P578131090021979476.a n = A347026 (n + 1)

end A347026

/-! ## A347026.P10753811300509183274

`A157454(A165775(n+1))`
-/

namespace A347026.P10753811300509183274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157454 (A165775 (n + 1)).toNat

end

end A347026.P10753811300509183274

namespace A347026

/-- `A157454(A165775(n+1))` -/
def P10753811300509183274.Spec : Prop :=
  ∀ n, P10753811300509183274.a n = A347026 (n + 1)

end A347026

/-! ## A347026.P3311754077134776013

`A157454(A162917(n+2))`
-/

namespace A347026.P3311754077134776013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157454 (A162917 (n + 2)).toNat

end

end A347026.P3311754077134776013

namespace A347026

/-- `A157454(A162917(n+2))` -/
def P3311754077134776013.Spec : Prop :=
  ∀ n, P3311754077134776013.a n = A347026 (n + 1)

end A347026

/-! ## A347026.P5600160100031332815

`A253580(n)+A118175(n)`
-/

namespace A347026.P5600160100031332815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253580 n + A118175 n

end

end A347026.P5600160100031332815

namespace A347026

/-- `A253580(n)+A118175(n)` -/
def P5600160100031332815.Spec : Prop :=
  ∀ n, P5600160100031332815.a n = A347026 (n + 1)

end A347026

/-! ## A347026.P14641536943352492349

`A004741(A004739(n+1)²)`
-/

namespace A347026.P14641536943352492349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004741 (A004739 (n + 1) ^ 2).toNat

end

end A347026.P14641536943352492349

namespace A347026

/-- `A004741(A004739(n+1)²)` -/
def P14641536943352492349.Spec : Prop :=
  ∀ n, P14641536943352492349.a n = A347026 (n + 1)

end A347026

/-! ## A347026.P5331571572794052107

`A053615(Δ[A053615(n)²]²)`
-/

namespace A347026.P5331571572794052107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053615 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053615 ((f1 (n + 1) - f1 n) ^ 2).toNat

end

end A347026.P5331571572794052107

namespace A347026

/-- `A053615(Δ[A053615(n)²]²)` -/
def P5331571572794052107.Spec : Prop :=
  ∀ n, P5331571572794052107.a n = A347026 (n + 1)

end A347026

/-! ## A347026.P4518701807062538854

`A329116(Δ[A329116(n)²]²)`
-/

namespace A347026.P4518701807062538854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329116 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329116 ((f1 (n + 1) - f1 n) ^ 2).toNat

end

end A347026.P4518701807062538854

namespace A347026

/-- `A329116(Δ[A329116(n)²]²)` -/
def P4518701807062538854.Spec : Prop :=
  ∀ n, P4518701807062538854.a n = A347026 (n + 1)

end A347026

/-! ## A347026.P12573130858624213529

`A381232(Δ[A381232(n)²]²)`
-/

namespace A347026.P12573130858624213529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381232 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381232 ((f1 (n + 1) - f1 n) ^ 2).toNat

end

end A347026.P12573130858624213529

namespace A347026

/-- `A381232(Δ[A381232(n)²]²)` -/
def P12573130858624213529.Spec : Prop :=
  ∀ n, P12573130858624213529.a n = A347026 (n + 1)

end A347026

/-!
# A347027: a(1) = 1; a(n) = a(n-1) + 2 * a(floor(n/2)).

The programs for A347027, the canonical program `A347027.P10803047556039389226` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A347027 has offset 1).

The definition of A347027 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+2*a(floor((n+1)/2)-1)` (program `A347027.P10803047556039389226`, by `A347027.P10803047556039389226.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A347027.P10803047556039389226

`a(n-1)+2*a(floor((n+1)/2)-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A347027

/-- `a(n-1)+2*a(floor((n+1)/2)-1)` -/
def P10803047556039389226.Spec : Prop :=
  ∀ n, (P10803047556039389226.a n : ℤ) = A347027 (n + 1)

theorem P10803047556039389226.correct : P10803047556039389226.Spec := by
  intro n
  simp only [A347027, Nat.add_sub_cancel]

end A347027

/-! ## A347027.P15075106551677911587

`∑[A039722(n+1)]`
-/

namespace A347027.P15075106551677911587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039722 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A347027.P15075106551677911587

namespace A347027

/-- `∑[A039722(n+1)]` -/
def P15075106551677911587.Spec : Prop :=
  ∀ n, P15075106551677911587.a n = A347027 (n + 1)

end A347027

/-! ## A347027.P7870296727872625712

`A058039(n+1)/3`
-/

namespace A347027.P7870296727872625712
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A058039 (n + 1) : ℚ) / 3

end

end A347027.P7870296727872625712

namespace A347027

/-- `A058039(n+1)/3` -/
def P7870296727872625712.Spec : Prop :=
  ∀ n, P7870296727872625712.a n = (A347027 (n + 1) : ℚ)

end A347027

/-! ## A347027.P11118799908266395981

`Δ[∑[A058039(n)]/3]`
-/

namespace A347027.P11118799908266395981
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058039 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A347027.P11118799908266395981

namespace A347027

/-- `Δ[∑[A058039(n)]/3]` -/
def P11118799908266395981.Spec : Prop :=
  ∀ n, P11118799908266395981.a n = (A347027 (n + 1) : ℚ)

end A347027

/-! ## A347027.P16088874377158908039

`A039722(2*(n+1))/2`
-/

namespace A347027.P16088874377158908039
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A039722 (2 * (n + 1)) : ℚ) / 2

end

end A347027.P16088874377158908039

namespace A347027

/-- `A039722(2*(n+1))/2` -/
def P16088874377158908039.Spec : Prop :=
  ∀ n, P16088874377158908039.a n = (A347027 (n + 1) : ℚ)

end A347027

/-! ## A347027.P15148788879541262623

`floor(A039722(n+2+n)/2)`
-/

namespace A347027.P15148788879541262623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A039722 (n + 2 + n) : ℚ) / 2⌋

end

end A347027.P15148788879541262623

namespace A347027

/-- `floor(A039722(n+2+n)/2)` -/
def P15148788879541262623.Spec : Prop :=
  ∀ n, P15148788879541262623.a n = A347027 (n + 1)

end A347027

/-! ## A347027.P11555266170472451920

`A058039(n+1)-A039722(2*(n+1))`
-/

namespace A347027.P11555266170472451920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058039 (n + 1) - A039722 (2 * (n + 1))

end

end A347027.P11555266170472451920

namespace A347027

/-- `A058039(n+1)-A039722(2*(n+1))` -/
def P11555266170472451920.Spec : Prop :=
  ∀ n, P11555266170472451920.a n = A347027 (n + 1)

end A347027

/-!
# A347029: a(n) = ceiling(e^(n*(Pi/2))).

The programs for A347029, the canonical program `A347029.P5134064530638005826` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A347029 has offset 0).

The definition of A347029 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 147 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A347029.P5134064530638005826

`ceil(exp(acos(0))^n)`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A347029

/-- `ceil(exp(acos(0))^n)` -/
def P5134064530638005826.Spec : Prop :=
  ∀ n, P5134064530638005826.a n = A347029 n

theorem P5134064530638005826.correct : P5134064530638005826.Spec := by
  intro n
  simp only [A347029]

end A347029

/-! ## A347029.P295232496212914310

`ceil(exp(asin(1))^n)`
-/

namespace A347029.P295232496212914310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.exp (Real.arcsin (1 : ℝ)) ^ n⌉

end

end A347029.P295232496212914310

namespace A347029

/-- `ceil(exp(asin(1))^n)` -/
def P295232496212914310.Spec : Prop :=
  ∀ n, P295232496212914310.a n = A347029 n

theorem P295232496212914310.correct : P295232496212914310.Spec := by
  intro n
  simp only [A347029, Nat.add_sub_cancel, A347029.P295232496212914310.a, A347029.P5134064530638005826.a, SequenceMachineLib.memo_apply]
  try simp

end A347029

/-! ## A347029.P2655516882191733930

`ceil((exp(atan(1))^n)²)`
-/

namespace A347029.P2655516882191733930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Real.exp (Real.arctan (1 : ℝ)) ^ n) ^ 2⌉

end

end A347029.P2655516882191733930

namespace A347029

/-- `ceil((exp(atan(1))^n)²)` -/
def P2655516882191733930.Spec : Prop :=
  ∀ n, P2655516882191733930.a n = A347029 n

end A347029

/-! ## A347029.P5560183940100043665

`ceil((exp(acot(1))^n)²)`
-/

namespace A347029.P5560183940100043665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Real.exp (SequenceMachineLib.acot (1 : ℝ)) ^ n) ^ 2⌉

end

end A347029.P5560183940100043665

namespace A347029

/-- `ceil((exp(acot(1))^n)²)` -/
def P5560183940100043665.Spec : Prop :=
  ∀ n, P5560183940100043665.a n = A347029 n

end A347029

/-! ## A347029.P4045343065673127820

`A124507(n)+char[A029579(n)]`
-/

namespace A347029.P4045343065673127820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029579 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124507 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A347029.P4045343065673127820

namespace A347029

/-- `A124507(n)+char[A029579(n)]` -/
def P4045343065673127820.Spec : Prop :=
  ∀ n, P4045343065673127820.a n = A347029 n

end A347029

/-! ## A347029.P15857954291610059643

`A252742(A124508(n+1))+A124507(n)`
-/

namespace A347029.P15857954291610059643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252742 (A124508 (n + 1)).toNat + A124507 n

end

end A347029.P15857954291610059643

namespace A347029

/-- `A252742(A124508(n+1))+A124507(n)` -/
def P15857954291610059643.Spec : Prop :=
  ∀ n, P15857954291610059643.a n = A347029 n

end A347029

/-! ## A347029.P13172423597118940352

`A252742(A124511(n+1))+A124507(n)`
-/

namespace A347029.P13172423597118940352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252742 (A124511 (n + 1)).toNat + A124507 n

end

end A347029.P13172423597118940352

namespace A347029

/-- `A252742(A124511(n+1))+A124507(n)` -/
def P13172423597118940352.Spec : Prop :=
  ∀ n, P13172423597118940352.a n = A347029 n

end A347029

/-! ## A347029.P15426397220962600378

`ceil(exp(2*n)^atan(1))`
-/

namespace A347029.P15426397220962600378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.exp (2 * n : ℝ) ^ (Real.arctan (1 : ℝ))⌉

end

end A347029.P15426397220962600378

namespace A347029

/-- `ceil(exp(2*n)^atan(1))` -/
def P15426397220962600378.Spec : Prop :=
  ∀ n, P15426397220962600378.a n = A347029 n

end A347029

/-! ## A347029.P2537859367577579526

`ceil(exp(2*n)^acot(1))`
-/

namespace A347029.P2537859367577579526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.exp (2 * n : ℝ) ^ (SequenceMachineLib.acot (1 : ℝ))⌉

end

end A347029.P2537859367577579526

namespace A347029

/-- `ceil(exp(2*n)^acot(1))` -/
def P2537859367577579526.Spec : Prop :=
  ∀ n, P2537859367577579526.a n = A347029 n

end A347029

/-! ## A347029.P2196348431465559563

`ceil(sqrt(exp(π*n)))`
-/

namespace A347029.P2196348431465559563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (Real.exp (Real.pi * (n : ℝ)))⌉

end

end A347029.P2196348431465559563

namespace A347029

/-- `ceil(sqrt(exp(π*n)))` -/
def P2196348431465559563.Spec : Prop :=
  ∀ n, P2196348431465559563.a n = A347029 n

end A347029

/-!
# A347030: a(n) = 1 + Sum_{k=2..n} (-1)^k * a(floor(n/k)).

The programs for A347030, the canonical program `A347030.P7928469100957179067` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A347030 has offset 1).

The definition of A347030 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A347030.P7928469100957179067

`∑[A067856(n+1)]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A347030

/-- `∑[A067856(n+1)]` -/
def P7928469100957179067.Spec : Prop :=
  ∀ n, P7928469100957179067.a n = A347030 (n + 1)

theorem P7928469100957179067.correct : P7928469100957179067.Spec := by
  intro n
  simp only [A347030, Nat.add_sub_cancel]

end A347030

/-! ## A347030.P13079565099837797362

`∑[∑{d}[n+1, A327274(#)]]`
-/

namespace A347030.P13079565099837797362
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), A327274 d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A347030.P13079565099837797362

namespace A347030

/-- `∑[∑{d}[n+1, A327274(#)]]` -/
def P13079565099837797362.Spec : Prop :=
  ∀ n, P13079565099837797362.a n = A347030 (n + 1)

end A347030

/-! ## A347030.P8522438638437900047

`∑[A332793(n+1)/(n+1)]`
-/

namespace A347030.P8522438638437900047
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A332793 (n + 1) : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A347030.P8522438638437900047

namespace A347030

/-- `∑[A332793(n+1)/(n+1)]` -/
def P8522438638437900047.Spec : Prop :=
  ∀ n, P8522438638437900047.a n = (A347030 (n + 1) : ℚ)

end A347030

/-! ## A347030.P6775225147727766601

`∑[A361987(n+1)%(n+2)]`
-/

namespace A347030.P6775225147727766601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A361987 (n + 1)) (n + 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A347030.P6775225147727766601

namespace A347030

/-- `∑[A361987(n+1)%(n+2)]` -/
def P6775225147727766601.Spec : Prop :=
  ∀ n, P6775225147727766601.a n = A347030 (n + 1)

end A347030

/-! ## A347030.P776658341024115954

`∑[A209635(n+1)*A348037(n+1)]`
-/

namespace A347030.P776658341024115954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209635 (n + 1) * A348037 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A347030.P776658341024115954

namespace A347030

/-- `∑[A209635(n+1)*A348037(n+1)]` -/
def P776658341024115954.Spec : Prop :=
  ∀ n, P776658341024115954.a n = A347030 (n + 1)

end A347030

/-! ## A347030.P9071590141507212804

`∑[∑{d}[n+1, A008683(#)*A099894((n+1)/#-1)]]`
-/

namespace A347030.P9071590141507212804
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), A008683 d * A099894 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A347030.P9071590141507212804

namespace A347030

/-- `∑[∑{d}[n+1, A008683(#)*A099894((n+1)/#-1)]]` -/
def P9071590141507212804.Spec : Prop :=
  ∀ n, P9071590141507212804.a n = A347030 (n + 1)

end A347030

/-! ## A347030.P14355648562084127579

`A309288(n+1)+A309288(n+1)-A002321(n+1)`
-/

namespace A347030.P14355648562084127579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309288 (n + 1) + (A309288 (n + 1) - A002321 (n + 1))

end

end A347030.P14355648562084127579

namespace A347030

/-- `A309288(n+1)+A309288(n+1)-A002321(n+1)` -/
def P14355648562084127579.Spec : Prop :=
  ∀ n, P14355648562084127579.a n = A347030 (n + 1)

end A347030

/-! ## A347030.P5019870897062472325

`A309288(2*(n+1))-A002321(2*(n+1))`
-/

namespace A347030.P5019870897062472325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309288 (2 * (n + 1)) - A002321 (2 * (n + 1))

end

end A347030.P5019870897062472325

namespace A347030

/-- `A309288(2*(n+1))-A002321(2*(n+1))` -/
def P5019870897062472325.Spec : Prop :=
  ∀ n, P5019870897062472325.a n = A347030 (n + 1)

end A347030

/-!
# A347031: a(n) = 1 - Sum_{k=2..n} (-1)^k * a(floor(n/k)).

The programs for A347031, there is no canonical definition to state claims against.
-/

/-! ## A347031.P12575145539064292143

`∑[A308077(n+1)]`
-/

namespace A347031.P12575145539064292143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308077 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A347031.P12575145539064292143

/-! ## A347031.P13260718995142134078

`∑[A358276(n+1)/(n+1)]`
-/

namespace A347031.P13260718995142134078
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A358276 (n + 1) : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A347031.P13260718995142134078

/-! ## A347031.P11493744197552870334

`A308077(n+1)+a(A004273(n)-n)` with `a(0)=1`
-/

namespace A347031.P11493744197552870334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A308077 (n + 1) + a (A004273 n - (n : ℤ)).toNat

end

end A347031.P11493744197552870334

/-! ## A347031.P13971929933517772051

`A308077(A000007(n)+1+n)+a(n-1)` with `a(0)=1`
-/

namespace A347031.P13971929933517772051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A308077 (A000007 n + 1 + (n : ℤ)).toNat + a (n - 1)

end

end A347031.P13971929933517772051

/-! ## A347031.P8779285564343558012

`∑[∑{d}[n+1, A008683(#)*A335062((n+1)/#)]]`
-/

namespace A347031.P8779285564343558012
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), A008683 d * A335062 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A347031.P8779285564343558012

/-! ## A347031.P12038365433352736692

`A308077(n+1)+a(n-1)%A019470(n+1)` with `a(0)=1`
-/

namespace A347031.P12038365433352736692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A308077 (n + 1) + Int.tmod (a (n - 1)) (A019470 (n + 1))

end

end A347031.P12038365433352736692

/-!
# A347032: Primes that are of the form p^k-2 for some k > 3 and prime p.

The programs for A347032, there is no canonical definition to state claims against.
-/

/-! ## A347032.P10402169786800987930

`p?[A246550(n+1)-2]`
-/

namespace A347032.P10402169786800987930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246550 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A347032.P10402169786800987930

/-! ## A347032.P10574272165756624285

`p?[abs(2-A036967(A037475(n)+1))]`
-/

namespace A347032.P10574272165756624285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - A036967 (A037475 n + 1).toNat|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A347032.P10574272165756624285

/-!
# A347034: Triangle read by columns: T(n,k) is the number of functions from an n-element set to a k-element set that are not one-to-one, k>=n>=1.

The programs for A347034, there is no canonical definition to state claims against.
-/

/-! ## A347034.P12268211374265160574

`A075363(n+1)-A068424(n+1)`
-/

namespace A347034.P12268211374265160574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075363 (n + 1) - A068424 (n + 1)

end

end A347034.P12268211374265160574

/-! ## A347034.P15501318819337409640

`A075363(n+1)-A008279(comp[∑[n]])`
-/

namespace A347034.P15501318819337409640
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075363 (n + 1) - A008279 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A347034.P15501318819337409640

/-! ## A347034.P3600343626229841827

`A079901(comp[∑[n]])-A068424(n+1)`
-/

namespace A347034.P3600343626229841827
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079901 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) - A068424 (n + 1)

end

end A347034.P3600343626229841827

/-! ## A347034.P8578492425029535017

`round(sqrt(2*(n+1)))^(A002262(n)+1)-A068424(n+1)`
-/

namespace A347034.P8578492425029535017
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.roundAway (Real.sqrt (2 * (n + 1) : ℝ)) : ℚ) ^ (A002262 n + 1 : ℤ) - (A068424 (n + 1) : ℚ)

end

end A347034.P8578492425029535017

/-! ## A347034.P12889069888748593277

`A095896(A038722(n+1))-A068424(n+1)`
-/

namespace A347034.P12889069888748593277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095896 (A038722 (n + 1)).toNat - A068424 (n + 1)

end

end A347034.P12889069888748593277

/-! ## A347034.P4910236448542124080

`A095896(A002024(n+1)²-n)-A068424(n+1)`
-/

namespace A347034.P4910236448542124080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095896 (A002024 (n + 1) ^ 2 - (n : ℤ)).toNat - A068424 (n + 1)

end

end A347034.P4910236448542124080

/-! ## A347034.P1717413879917913894

`A002024(n+1)*A076112(n+1)-A068424(n+1)`
-/

namespace A347034.P1717413879917913894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (n + 1) * A076112 (n + 1) - A068424 (n + 1)

end

end A347034.P1717413879917913894

/-! ## A347034.P12814051198136040292

`A002024(n+1)^A002260(n+1)-A068424(n+1)`
-/

namespace A347034.P12814051198136040292
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002024 (n + 1) : ℚ) ^ (A002260 (n + 1) : ℤ) - (A068424 (n + 1) : ℚ)

end

end A347034.P12814051198136040292

/-!
# A347035: Primes whose field of roots of unity contains a cubic subfield.

The programs for A347035, there is no canonical definition to state claims against.
-/

/-! ## A347035.P17415160884594758724

`∪[A014752(n+1), A031901(n+1)]`
-/

namespace A347035.P17415160884594758724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014752 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031901 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A347035.P17415160884594758724

/-!
# A347038: Primes p such that there are no solutions to d(k+p) = sigma(k).

The programs for A347038, there is no canonical definition to state claims against.
-/

/-! ## A347038.P17787509172059298118

`p?[(n+1)*(n*A060990(n)+1)]`
-/

namespace A347038.P17787509172059298118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * ((n : ℤ) * A060990 n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A347038.P17787509172059298118

/-! ## A347038.P13232701667167488416

`p?[(n+1)*A001281(A082284(n)+2)]`
-/

namespace A347038.P13232701667167488416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A001281 (A082284 n + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A347038.P13232701667167488416

/-! ## A347038.P3756772376241918839

`p?[A093178(A137502(n+1))+A045765(n+1)]`
-/

namespace A347038.P3756772376241918839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 (A137502 (n + 1)).toNat + A045765 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A347038.P3756772376241918839

/-! ## A347038.P11130460702985051576

`p?[A262898(A038722(C(n+2, 2)))+1]`
-/

namespace A347038.P11130460702985051576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262898 (A038722 (Nat.choose (n + 2) 2)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A347038.P11130460702985051576

/-!
# A347041: Stirling transform of pi (A000720).

The programs for A347041, there is no canonical definition to state claims against.
-/

/-! ## A347041.P10445047715246846640

`A005193(n+1)-A002024(A200222(n))`
-/

namespace A347041.P10445047715246846640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005193 (n + 1) - A002024 (A200222 n).toNat

end

end A347041.P10445047715246846640

/-! ## A347041.P15334456081189795462

`A059995(A387669(n+1))`
-/

namespace A347041.P15334456081189795462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 (A387669 (n + 1)).toNat

end

end A347041.P15334456081189795462

/-! ## A347041.P7551893790006368007

`A211964(A202088(n))+A001267(n)`
-/

namespace A347041.P7551893790006368007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211964 (A202088 n).toNat + A001267 n

end

end A347041.P7551893790006368007

/-!
# A347042: Number of divisors d > 1 of n such that bigomega(d) divides bigomega(n), where bigomega = A001222.

The programs for A347042, there is no canonical definition to state claims against.
-/

/-! ## A347042.P2669356212638928613

`A297113(A018892(n+1))%Δ[A092753(n)]`
-/

namespace A347042.P2669356212638928613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092753 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A297113 (A018892 (n + 1)).toNat) (f1 (n + 1) - f1 n)

end

end A347042.P2669356212638928613

/-! ## A347042.P10017351691962669338

`A035214(A062725(n))*A297113(A018892(n+1))`
-/

namespace A347042.P10017351691962669338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035214 (A062725 n).toNat * A297113 (A018892 (n + 1)).toNat

end

end A347042.P10017351691962669338

/-! ## A347042.P9101387350429115302

`A263323(A018892(n+1))%A308222(n+1)`
-/

namespace A347042.P9101387350429115302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A263323 (A018892 (n + 1)).toNat) (A308222 (n + 1))

end

end A347042.P9101387350429115302

/-! ## A347042.P6382791286261303050

`A065770(A018892(n+1))%A225554(n+3)`
-/

namespace A347042.P6382791286261303050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A065770 (A018892 (n + 1)).toNat) (A225554 (n + 3))

end

end A347042.P6382791286261303050

/-! ## A347042.P8831109232970427402

`A000005(n+1)-A326514(A281873(n+1))`
-/

namespace A347042.P8831109232970427402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A326514 (A281873 (n + 1)).toNat

end

end A347042.P8831109232970427402

/-!
# A347043: Smallest divisor of n with half (rounded up) as many prime factors (counting multiplicity) as n.

The programs for A347043, there is no canonical definition to state claims against.
-/

/-! ## A347043.P9246880231685004329

`(n+1)/A347044(A032742(n+1))`
-/

namespace A347043.P9246880231685004329
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A347044 (A032742 (n + 1)).toNat : ℚ)

end

end A347043.P9246880231685004329

/-! ## A347043.P11865164222596776767

`(n+1)/A028310(A361201(n+1))`
-/

namespace A347043.P11865164222596776767
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A028310 (A361201 (n + 1)).toNat : ℚ)

end

end A347043.P11865164222596776767

/-! ## A347043.P15776224786685079501

`(n+1)/A347044(A079880(n+1))`
-/

namespace A347043.P15776224786685079501
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A347044 (A079880 (n + 1)).toNat : ℚ)

end

end A347043.P15776224786685079501

/-! ## A347043.P16355419156657399553

`A329888(A079879(n+1)*A130065(n+1))`
-/

namespace A347043.P16355419156657399553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329888 (A079879 (n + 1) * A130065 (n + 1)).toNat

end

end A347043.P16355419156657399553

/-! ## A347043.P12646840151489801902

`A361200(A119416(n+1))`
-/

namespace A347043.P12646840151489801902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361200 (A119416 (n + 1)).toNat

end

end A347043.P12646840151489801902

/-! ## A347043.P645804358296313962

`A361200(A129598(n+1))`
-/

namespace A347043.P645804358296313962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361200 (A129598 (n + 1)).toNat

end

end A347043.P645804358296313962

/-! ## A347043.P1764303268673713405

`A361200(A256017(n+1))`
-/

namespace A347043.P1764303268673713405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361200 (A256017 (n + 1)).toNat

end

end A347043.P1764303268673713405

/-! ## A347043.P11673515228313737071

`A361200(A013636(n+1))`
-/

namespace A347043.P11673515228313737071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361200 (A013636 (n + 1)).toNat

end

end A347043.P11673515228313737071

/-! ## A347043.P5406709772306661183

`A361200(A020338(n+1))`
-/

namespace A347043.P5406709772306661183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361200 (A020338 (n + 1)).toNat

end

end A347043.P5406709772306661183

/-!
# A347044: Greatest divisor of n with half (rounded up) as many prime factors (counting multiplicity) as n.

The programs for A347044, there is no canonical definition to state claims against.
-/

/-! ## A347044.P6240374248485011268

`(n+1)/A347043(A052126(n+1))`
-/

namespace A347044.P6240374248485011268
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A347043 (A052126 (n + 1)).toNat : ℚ)

end

end A347044.P6240374248485011268

/-! ## A347044.P6206501444870897941

`A361201(2*(n+1))`
-/

namespace A347044.P6206501444870897941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361201 (2 * (n + 1))

end

end A347044.P6206501444870897941

/-! ## A347044.P13205568574318533259

`A347046(2*(n+1))*A347046(n+1)`
-/

namespace A347044.P13205568574318533259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347046 (2 * (n + 1)) * A347046 (n + 1)

end

end A347044.P13205568574318533259

/-! ## A347044.P5108719066554862071

`A005843(n+1)/A347043(2*(n+1))`
-/

namespace A347044.P5108719066554862071
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005843 (n + 1) : ℚ) / (A347043 (2 * (n + 1)) : ℚ)

end

end A347044.P5108719066554862071

/-! ## A347044.P5377773049427559719

`A020725(2*n+1)/A347043(2*(n+1))`
-/

namespace A347044.P5377773049427559719
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020725 (2 * n + 1) : ℚ) / (A347043 (2 * (n + 1)) : ℚ)

end

end A347044.P5377773049427559719

/-! ## A347044.P4247409782588756883

`A087156(2*(n+1))/A347043(2*(n+1))`
-/

namespace A347044.P4247409782588756883
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A087156 (2 * (n + 1)) : ℚ) / (A347043 (2 * (n + 1)) : ℚ)

end

end A347044.P4247409782588756883

/-! ## A347044.P10730341989620806071

`A326178(2*n+1)/A347043(A326178(2*n+1))`
-/

namespace A347044.P10730341989620806071
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A326178 (2 * n + 1) : ℚ) / (A347043 (A326178 (2 * n + 1)).toNat : ℚ)

end

end A347044.P10730341989620806071

/-! ## A347044.P206186251278688816

`(n+1)/A347043(A329888(A342768(n+1)))`
-/

namespace A347044.P206186251278688816
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A347043 (A329888 (A342768 (n + 1)).toNat).toNat : ℚ)

end

end A347044.P206186251278688816

/-! ## A347044.P1662814100586803952

`A329888(A006530(n+1)²*A063928(n+1))`
-/

namespace A347044.P1662814100586803952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329888 (A006530 (n + 1) ^ 2 * A063928 (n + 1)).toNat

end

end A347044.P1662814100586803952

/-! ## A347044.P6385327672120213640

`A329888(A006530(n+1)²*A032742(n+1))`
-/

namespace A347044.P6385327672120213640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329888 (A006530 (n + 1) ^ 2 * A032742 (n + 1)).toNat

end

end A347044.P6385327672120213640

/-!
# A347045: Smallest divisor of n with exactly half as many prime factors (counting multiplicity) as n, or 1 if there are none.

The programs for A347045, there is no canonical definition to state claims against.
-/

/-! ## A347045.P8818669609183019305

`ceil(A347043(n+1)^(-1)^∑{e}[n+1, #])`
-/

namespace A347045.P8818669609183019305
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A347043 (n + 1) : ℚ) ^ ((-1) ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p) : ℤ)⌉

end

end A347045.P8818669609183019305

/-! ## A347045.P9127529918531134268

`A347043(n*A065043(n+1)+1)`
-/

namespace A347045.P9127529918531134268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347043 ((n : ℤ) * A065043 (n + 1) + 1).toNat

end

end A347045.P9127529918531134268

/-! ## A347045.P8597600131053922608

`ceil(A347043(n+1)^A008836(n+1))`
-/

namespace A347045.P8597600131053922608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A347043 (n + 1) : ℚ) ^ (A008836 (n + 1) : ℤ)⌉

end

end A347045.P8597600131053922608

/-! ## A347045.P4912158482714139266

`A347043(n+1)^A139351(A061142(n+1))`
-/

namespace A347045.P4912158482714139266
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A347043 (n + 1) : ℚ) ^ (A139351 (A061142 (n + 1)).toNat : ℤ)

end

end A347045.P4912158482714139266

/-! ## A347045.P403263058992427438

`gcd(A347046(n+1)!, A347043(n+1))`
-/

namespace A347045.P403263058992427438
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Nat.factorial (A347046 (n + 1)).toNat : ℤ) (A347043 (n + 1))

end

end A347045.P403263058992427438

/-! ## A347045.P13563288826320847838

`A071974(A068794(n+1)*A105574(n+1))`
-/

namespace A347045.P13563288826320847838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071974 (A068794 (n + 1) * A105574 (n + 1)).toNat

end

end A347045.P13563288826320847838

/-!
# A347046: Greatest divisor of n with exactly half as many prime factors (counting multiplicity) as n, or 1 if there are none.

The programs for A347046, there is no canonical definition to state claims against.
-/

/-! ## A347046.P3633896909529918470

`ceil(A347044(n+1)^(-1)^∑{e}[n+1, #])`
-/

namespace A347046.P3633896909529918470
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A347044 (n + 1) : ℚ) ^ ((-1) ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p) : ℤ)⌉

end

end A347046.P3633896909529918470

/-! ## A347046.P10301461031318063516

`A347044(n*A065043(n+1)+1)`
-/

namespace A347046.P10301461031318063516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347044 ((n : ℤ) * A065043 (n + 1) + 1).toNat

end

end A347046.P10301461031318063516

/-! ## A347046.P6679993495178938767

`ceil(A347044(n+1)^A008836(n+1))`
-/

namespace A347046.P6679993495178938767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A347044 (n + 1) : ℚ) ^ (A008836 (n + 1) : ℤ)⌉

end

end A347046.P6679993495178938767

/-! ## A347046.P737475928759579291

`C(A347044(n+1), A345957(2^∑{e}[n+1, #]))`
-/

namespace A347046.P737475928759579291
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A347044 (n + 1)).toNat (A345957 (2 ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p))).toNat

end

end A347046.P737475928759579291

/-! ## A347046.P6405804885241315117

`A347044(n+1)^A128616(A165824(n+1))`
-/

namespace A347046.P6405804885241315117
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A347044 (n + 1) : ℚ) ^ (A128616 (A165824 (n + 1)).toNat : ℤ)

end

end A347046.P6405804885241315117

/-!
# A347047: Smallest squarefree semiprime whose prime indices sum to n.

The programs for A347047, there is no canonical definition to state claims against.
-/

/-! ## A347047.P10407816047549560679

`2*p?[2*n+1]-char[3]`
-/

namespace A347047.P10407816047549560679
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A347047.P10407816047549560679

/-! ## A347047.P6035662342200424629

`p?[2*n+1]+xor(p?[2*n+1], char[3])`
-/

namespace A347047.P6035662342200424629
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) + Nat.xor (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)) (if ∃ j, f3 j = n then 1 else 0)

end

end A347047.P6035662342200424629

/-! ## A347047.P15483058010295371736

`A339114(n+3)+char[1]`
-/

namespace A347047.P15483058010295371736
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339114 (n + 3) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A347047.P15483058010295371736

/-! ## A347047.P15340031127443329639

`A100484(n+2)-char[3]`
-/

namespace A347047.P15340031127443329639
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100484 (n + 2) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A347047.P15340031127443329639

/-! ## A347047.P2374099414911961609

`A001747(n+3)-char[3]`
-/

namespace A347047.P2374099414911961609
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001747 (n + 3) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A347047.P2374099414911961609

/-! ## A347047.P16703704039184135737

`A116366(∑[n+1])-char[3]`
-/

namespace A347047.P16703704039184135737
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116366 (∑ j ∈ Finset.range (n + 1), f1 j) - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A347047.P16703704039184135737

/-! ## A347047.P8972086935674465385

`2*A000040(n+2)-char[3]`
-/

namespace A347047.P8972086935674465385
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000040 (n + 2) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A347047.P8972086935674465385

/-! ## A347047.P12266490560432070028

`2*record[A020639(n+3)]-char[3]`
-/

namespace A347047.P12266490560432070028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 3)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A347047.P12266490560432070028

/-! ## A347047.P10137145225896854419

`A088686(A229858(n+1))`
-/

namespace A347047.P10137145225896854419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088686 (A229858 (n + 1)).toNat

end

end A347047.P10137145225896854419

/-! ## A347047.P3030834838840854545

`A067535(A339114(n+3))`
-/

namespace A347047.P3030834838840854545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067535 (A339114 (n + 3)).toNat

end

end A347047.P3030834838840854545

/-!
# A347048: Number of even-length ordered factorizations of n with integer alternating product.

The programs for A347048, there is no canonical definition to state claims against.
-/

/-! ## A347048.P15131770698437399615

`A347463(n+1)-A347049(n+1)`
-/

namespace A347048.P15131770698437399615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347463 (n + 1) - A347049 (n + 1)

end

end A347048.P15131770698437399615

/-! ## A347048.P9493340124793109596

`A347493(∏{e}[n+1, #]%A347496(n+1))`
-/

namespace A347048.P9493340124793109596
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347493 (Int.tmod ((∏ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℤ) (A347496 (n + 1))).toNat

end

end A347048.P9493340124793109596

/-! ## A347048.P3861266753130937998

`A124748((∏{e}[n+1, floor(#/2)+1]-1)^A056239(n+1))`
-/

namespace A347048.P3861266753130937998
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124748 (SequenceMachineLib.roundAway (((∏ p ∈ Nat.primeFactors (f1 n), (⌊(Nat.factorization (f1 n) p : ℚ) / 2⌋ + 1) - 1 : ℤ) : ℚ) ^ (A056239 (n + 1) : ℤ))).toNat

end

end A347048.P3861266753130937998

/-! ## A347048.P11717504295281537724

`A320797(A243833(n)+A051903(n+1))`
-/

namespace A347048.P11717504295281537724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320797 (A243833 n + A051903 (n + 1)).toNat

end

end A347048.P11717504295281537724

/-! ## A347048.P13475546118284411506

`A347439(n+1)-A014744(A118052(n))`
-/

namespace A347048.P13475546118284411506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347439 (n + 1) - A014744 (A118052 n).toNat

end

end A347048.P13475546118284411506

/-!
# A347049: Number of odd-length ordered factorizations of n with integer alternating product.

The programs for A347049, there is no canonical definition to state claims against.
-/

/-! ## A347049.P103594259652703434

`A347463(n+1)-A347048(n+1)`
-/

namespace A347049.P103594259652703434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347463 (n + 1) - A347048 (n + 1)

end

end A347049.P103594259652703434

/-! ## A347049.P3657042167324455762

`A347463(n+1)-A320797(A243833(n)+A051903(n+1))`
-/

namespace A347049.P3657042167324455762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347463 (n + 1) - A320797 (A243833 n + A051903 (n + 1)).toNat

end

end A347049.P3657042167324455762

/-! ## A347049.P5223869338757601092

`A296082(2^A297404(n+1))`
-/

namespace A347049.P5223869338757601092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296082 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A297404 (n + 1) : ℤ))).toNat

end

end A347049.P5223869338757601092

/-! ## A347049.P11892487962480643398

`A001222(A005181(A328400(n+1)))`
-/

namespace A347049.P11892487962480643398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A005181 (A328400 (n + 1)).toNat).toNat

end

end A347049.P11892487962480643398

/-! ## A347049.P10268062850625751070

`A265370(A328400(n+1)%A246149(n))`
-/

namespace A347049.P10268062850625751070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265370 (Int.tmod (A328400 (n + 1)) (A246149 n)).toNat

end

end A347049.P10268062850625751070

/-!
# A347050: Number of factorizations of n that are a twin (x*x) or have an alternating permutation.

The programs for A347050, there is no canonical definition to state claims against.
-/

/-! ## A347050.P3438655197721793245

`A335434(n+1)+char[(n+2)²-1]`
-/

namespace A347050.P3438655197721793245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 2) ^ 2 : ℤ) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335434 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A347050.P3438655197721793245

/-! ## A347050.P5917672729317369352

`Δ[A096276(n)]-A347706(n+1)`
-/

namespace A347050.P5917672729317369352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096276 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A347706 (n + 1)

end

end A347050.P5917672729317369352

/-! ## A347050.P7317238876358667348

`A370814(n+1)+A353625(n+1)`
-/

namespace A347050.P7317238876358667348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370814 (n + 1) + A353625 (n + 1)

end

end A347050.P7317238876358667348

/-! ## A347050.P2804777344795694909

`A001055(n+1)-A347706(n+1)`
-/

namespace A347050.P2804777344795694909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001055 (n + 1) - A347706 (n + 1)

end

end A347050.P2804777344795694909

/-! ## A347050.P1239933820850464233

`or(A322437(n+1), A370814(n+1))`
-/

namespace A347050.P1239933820850464233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A322437 (n + 1)) (A370814 (n + 1))

end

end A347050.P1239933820850464233

/-! ## A347050.P14967221764309388393

`A347438((n+1)²)-A347706(n+1)`
-/

namespace A347050.P14967221764309388393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347438 ((n + 1) ^ 2) - A347706 (n + 1)

end

end A347050.P14967221764309388393

/-! ## A347050.P15493085867688194490

`A028422(n+1)+1-A347706(n+1)`
-/

namespace A347050.P15493085867688194490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028422 (n + 1) + (1 - A347706 (n + 1))

end

end A347050.P15493085867688194490

/-! ## A347050.P14294887561351459455

`A004526(A323086(n+1)+A001055(n+1))`
-/

namespace A347050.P14294887561351459455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A323086 (n + 1) + A001055 (n + 1)).toNat

end

end A347050.P14294887561351459455

/-! ## A347050.P11362517021190337931

`A218320(n+1)-A072670(A000688(n+1))`
-/

namespace A347050.P11362517021190337931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218320 (n + 1) - A072670 (A000688 (n + 1)).toNat

end

end A347050.P11362517021190337931

/-! ## A347050.P16995387494758667536

`A096276(n+1)-A096276(n)-A347706(n+1)`
-/

namespace A347050.P16995387494758667536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096276 (n + 1) - A096276 n - A347706 (n + 1)

end

end A347050.P16995387494758667536

/-!
# A347051: a(0) = 1, a(1) = 2; a(n) = n * (n+1) * a(n-1) + a(n-2).

The programs for A347051, the canonical program `A347051.P12146383362411065942` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A347051 has offset 0).

The definition of A347051 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(n+1)*a(n-1)+a(n-2)` (program `A347051.P12146383362411065942`, by `A347051.P12146383362411065942.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A347051.P12146383362411065942

`n*(n+1)*a(n-1)+a(n-2)` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A347051

/-- `n*(n+1)*a(n-1)+a(n-2)` -/
def P12146383362411065942.Spec : Prop :=
  ∀ n, (P12146383362411065942.a n : ℤ) = A347051 n

theorem P12146383362411065942.correct : P12146383362411065942.Spec := by
  intro n
  simp only [A347051]

end A347051

/-! ## A347051.P7899862456323324138

`a(n-2)+2*a(n-1)*∑[n]` with `a(0)=1, a(1)=2`
-/

namespace A347051.P7899862456323324138
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 2) + 2 * (a (n - 1) * (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A347051.P7899862456323324138

namespace A347051

/-- `a(n-2)+2*a(n-1)*∑[n]` -/
def P7899862456323324138.Spec : Prop :=
  ∀ n, (P7899862456323324138.a n : ℤ) = A347051 n

end A347051

/-! ## A347051.P15907691057507659368

`a(n-2)+(n²+n)*a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A347051.P15907691057507659368
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 2) + (n ^ 2 + n) * a (n - 1)

end

end A347051.P15907691057507659368

namespace A347051

/-- `a(n-2)+(n²+n)*a(n-1)` -/
def P15907691057507659368.Spec : Prop :=
  ∀ n, (P15907691057507659368.a n : ℤ) = A347051 n

end A347051

/-! ## A347051.P4209085657038298163

`a(n-2)+a(n-1)*A002378(n)` with `a(0)=1, a(1)=2`
-/

namespace A347051.P4209085657038298163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 2) + a (n - 1) * A002378 n

end

end A347051.P4209085657038298163

namespace A347051

/-- `a(n-2)+a(n-1)*A002378(n)` -/
def P4209085657038298163.Spec : Prop :=
  ∀ n, P4209085657038298163.a n = A347051 n

end A347051

/-!
# A347053: a(n) is the smallest base-10 number greater than 1 such that when written in all bases from base 2 to base n its leading digit is 1.

The programs for A347053, there is no canonical definition to state claims against.
-/

/-! ## A347053.P14833137856760308314

`A078571(3*n+1)^A165675(A001519(n))`
-/

namespace A347053.P14833137856760308314
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A078571 (3 * n + 1) : ℚ) ^ (A165675 (A001519 n).toNat : ℤ)

end

end A347053.P14833137856760308314

/-!
# A347056: Triangle read by rows: T(n,k) = (n+1)*(n+2)*(k+3)*binomial(n,k)/6, 0 <= k <= n.

The programs for A347056, the canonical program `A347056.P6483991518799568209` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A347056 has offset 0).

The definition of A347056 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A347056.P6483991518799568209

`(row(n)+1)*(row(n)+2)*(col(n)+3)*C(row(n), col(n))/6`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A347056

/-- `(row(n)+1)*(row(n)+2)*(col(n)+3)*C(row(n), col(n))/6` -/
def P6483991518799568209.Spec : Prop :=
  ∀ n, P6483991518799568209.a n = (A347056 n : ℚ)

end A347056

/-! ## A347056.P6143559408674374907

`A121547(n)+A094305(n)`
-/

namespace A347056.P6143559408674374907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121547 n + A094305 n

end

end A347056.P6143559408674374907

namespace A347056

/-- `A121547(n)+A094305(n)` -/
def P6143559408674374907.Spec : Prop :=
  ∀ n, P6143559408674374907.a n = A347056 n

end A347056

/-! ## A347056.P8484382506152577033

`A000292(A002260(n+1))*A104712(n+2)`
-/

namespace A347056.P8484382506152577033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (A002260 (n + 1)).toNat * A104712 (n + 2)

end

end A347056.P8484382506152577033

namespace A347056

/-- `A000292(A002260(n+1))*A104712(n+2)` -/
def P8484382506152577033.Spec : Prop :=
  ∀ n, P8484382506152577033.a n = A347056 n

end A347056

/-! ## A347056.P7023435614750039056

`A178820(n)-A121547(n+1)`
-/

namespace A347056.P7023435614750039056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178820 n - A121547 (n + 1)

end

end A347056.P7023435614750039056

namespace A347056

/-- `A178820(n)-A121547(n+1)` -/
def P7023435614750039056.Spec : Prop :=
  ∀ n, P7023435614750039056.a n = A347056 n

end A347056

/-! ## A347056.P5291819724068241629

`A000292(A002260(n+1))*A209518(A061579(n))`
-/

namespace A347056.P5291819724068241629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (A002260 (n + 1)).toNat * A209518 (A061579 n).toNat

end

end A347056.P5291819724068241629

namespace A347056

/-- `A000292(A002260(n+1))*A209518(A061579(n))` -/
def P5291819724068241629.Spec : Prop :=
  ∀ n, P5291819724068241629.a n = A347056 n

end A347056

/-! ## A347056.P16848984343373388771

`A135278(A014132(n+1))*A307394(A292564(n))`
-/

namespace A347056.P16848984343373388771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135278 (A014132 (n + 1)).toNat * A307394 (A292564 n).toNat

end

end A347056.P16848984343373388771

namespace A347056

/-- `A135278(A014132(n+1))*A307394(A292564(n))` -/
def P16848984343373388771.Spec : Prop :=
  ∀ n, P16848984343373388771.a n = A347056 n

end A347056

/-! ## A347056.P9963942891672030767

`A007426(A059268(n))*A104712(n+2)`
-/

namespace A347056.P9963942891672030767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007426 (A059268 n).toNat * A104712 (n + 2)

end

end A347056.P9963942891672030767

namespace A347056

/-- `A007426(A059268(n))*A104712(n+2)` -/
def P9963942891672030767.Spec : Prop :=
  ∀ n, P9963942891672030767.a n = A347056 n

end A347056

/-! ## A347056.P15886058925803562862

`A007426(A059268(n))*A209518(A061579(n))`
-/

namespace A347056.P15886058925803562862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007426 (A059268 n).toNat * A209518 (A061579 n).toNat

end

end A347056.P15886058925803562862

namespace A347056

/-- `A007426(A059268(n))*A209518(A061579(n))` -/
def P15886058925803562862.Spec : Prop :=
  ∀ n, P15886058925803562862.a n = A347056 n

end A347056

/-! ## A347056.P17606039566370670817

`A094305(n)+A097805(n)*A332023(A057944(n))`
-/

namespace A347056.P17606039566370670817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094305 n + A097805 n * A332023 (A057944 n).toNat

end

end A347056.P17606039566370670817

namespace A347056

/-- `A094305(n)+A097805(n)*A332023(A057944(n))` -/
def P17606039566370670817.Spec : Prop :=
  ∀ n, P17606039566370670817.a n = A347056 n

end A347056

/-!
# A347061: Determinant of the (2n+1) X (2n+1) matrix with the (j,k)-entry (tan(Pi*(j-k)/(2n+1)))^2 (j,k = 0..2n).

The programs for A347061, there is no canonical definition to state claims against.
-/

/-! ## A347061.P2784808209970384764

`A000246(2*n+1)*A066274(2*n+1)`
-/

namespace A347061.P2784808209970384764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000246 (2 * n + 1) * A066274 (2 * n + 1)

end

end A347061.P2784808209970384764

/-!
# A347062: Record the number of zero terms having a following term, then the number of terms equal to 1 having a following term, then 2, 3, etc. until recording a zero, whereupon the count is reset.

The programs for A347062, there is no canonical definition to state claims against.
-/

/-! ## A347062.P151527403820014039

`A174980(lt[A017827(n), 2])`
-/

namespace A347062.P151527403820014039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017827 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174980 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A347062.P151527403820014039

/-! ## A347062.P10448893142451365262

`A174980(lt[A287479(n), A319381(n+4)])`
-/

namespace A347062.P10448893142451365262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287479 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319381 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174980 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A347062.P10448893142451365262

/-! ## A347062.P6483993966003742753

`A319320(A085149(n+1))%A113415(n+1)`
-/

namespace A347062.P6483993966003742753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A319320 (A085149 (n + 1)).toNat) (A113415 (n + 1))

end

end A347062.P6483993966003742753

/-! ## A347062.P16129097012958244692

`A241832(A077024(n+1))%A321270(n+1)`
-/

namespace A347062.P16129097012958244692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A241832 (A077024 (n + 1)).toNat) (A321270 (n + 1))

end

end A347062.P16129097012958244692

/-! ## A347062.P11701788950737663834

`A298139(A375138(n+1))%4`
-/

namespace A347062.P11701788950737663834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A298139 (A375138 (n + 1)).toNat) 4

end

end A347062.P11701788950737663834

/-!
# A347063: Double Zumkeller numbers: numbers whose set of divisors can be partitioned into two disjoint subsets with equal sums and equal cardinalities.

The programs for A347063, there is no canonical definition to state claims against.
-/

/-! ## A347063.P11318880981819148765

`∩[A131818(A027468(n+2)), A083207(n+4)]`
-/

namespace A347063.P11318880981819148765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (A027468 (n + 2)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083207 (n + 4)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A347063.P11318880981819148765

/-! ## A347063.P3388444125561082591

`∩[A002260(A034856(3*n+1)), A083207(n+3)]`
-/

namespace A347063.P3388444125561082591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A034856 (3 * n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083207 (n + 3)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A347063.P3388444125561082591

/-! ## A347063.P1206901401185834431

`∩[A213500(A000217(3*(n+1))), A083207(n+3)]`
-/

namespace A347063.P1206901401185834431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213500 (A000217 (3 * (n + 1))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083207 (n + 3)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A347063.P1206901401185834431

/-! ## A347063.P15593376326319064985

`∩[A003057(A000217(3*n+2)), A083207(n+4)]`
-/

namespace A347063.P15593376326319064985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003057 (A000217 (3 * n + 2)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083207 (n + 4)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A347063.P15593376326319064985

/-! ## A347063.P10992657814591844192

`∩[A131818(A000124(3*n+2)), A083207(n+4)]`
-/

namespace A347063.P10992657814591844192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (A000124 (3 * n + 2)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083207 (n + 4)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A347063.P10992657814591844192

/-!
# A347065: Rectangular array (T(n,k)), by antidiagonals: T(n,k) = position of k in the ordering of {h/r^m, r = (1+sqrt(5))/2, h >= 1, 0 <= m <= n}.

The programs for A347065, there is no canonical definition to state claims against.
-/

/-! ## A347065.P1210811493771699378

`A134021(A396158(n))`
-/

namespace A347065.P1210811493771699378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134021 (A396158 n).toNat

end

end A347065.P1210811493771699378

/-! ## A347065.P6041562636265514841

`A340251(A337400(n+1)+7)`
-/

namespace A347065.P6041562636265514841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340251 (A337400 (n + 1) + 7).toNat

end

end A347065.P6041562636265514841

/-! ## A347065.P497625523842956145

`A276621(A008620(A039806(n))²)`
-/

namespace A347065.P497625523842956145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276621 (A008620 (A039806 n).toNat ^ 2).toNat

end

end A347065.P497625523842956145

/-! ## A347065.P6357801574047596915

`xor(A001221(A130479(n)), A185782(n+1))`
-/

namespace A347065.P6357801574047596915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A001221 (A130479 n).toNat) (A185782 (n + 1))

end

end A347065.P6357801574047596915

/-! ## A347065.P5169594476393372299

`A037968(A137679(n+1)!)+A025581(n)`
-/

namespace A347065.P5169594476393372299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037968 (Nat.factorial (A137679 (n + 1)).toNat) + A025581 n

end

end A347065.P5169594476393372299

/-!
# A347066: Rectangular array (T(n,k)), by antidiagonals: T(n,k) is the position of k in the ordering of {h/r^m, r = sqrt(2), h >= 1, 0 <= m <= n}.

The programs for A347066, there is no canonical definition to state claims against.
-/

/-! ## A347066.P1996524039155798626

`A052938(A029837(A249057(n)²))`
-/

namespace A347066.P1996524039155798626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052938 (A029837 (A249057 n ^ 2).toNat).toNat

end

end A347066.P1996524039155798626

/-! ## A347066.P4211803954141102361

`A227625(A146140(n+1))+A099375(n)`
-/

namespace A347066.P4211803954141102361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227625 (A146140 (n + 1)).toNat + A099375 n

end

end A347066.P4211803954141102361

/-! ## A347066.P11473562904548983642

`A378308(n+1)+A345197(A322222(n))`
-/

namespace A347066.P11473562904548983642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378308 (n + 1) + A345197 (A322222 n).toNat

end

end A347066.P11473562904548983642

/-! ## A347066.P4692270908446007675

`xor(A185782(n+1), A230093(A002944(n+1)))`
-/

namespace A347066.P4692270908446007675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A185782 (n + 1)) (A230093 (A002944 (n + 1)).toNat)

end

end A347066.P4692270908446007675

/-!
# A347069: Rectangular array (T(n,k)), by downward antidiagonals: T(n,k) = position of k in the ordering of {h*e^m, h >= 1, 0 <= m <= n}.

The programs for A347069, there is no canonical definition to state claims against.
-/

/-! ## A347069.P3730792521534571223

`A332671(2*n+1)+A004773(A004736(n+1))`
-/

namespace A347069.P3730792521534571223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332671 (2 * n + 1) + A004773 (A004736 (n + 1)).toNat

end

end A347069.P3730792521534571223

/-! ## A347069.P2736736828436059354

`A003511(A004736(n+1))%A046010(n+1)`
-/

namespace A347069.P2736736828436059354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003511 (A004736 (n + 1)).toNat) (A046010 (n + 1))

end

end A347069.P2736736828436059354

/-! ## A347069.P3513977832364378406

`A095775(A004736(n+1))%A358827(n+4)`
-/

namespace A347069.P3513977832364378406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A095775 (A004736 (n + 1)).toNat) (A358827 (n + 4))

end

end A347069.P3513977832364378406

/-! ## A347069.P9645568806498053609

`A257089(2*2^(C(comp[∑[n]]-n, 2)-(n+1)))`
-/

namespace A347069.P9645568806498053609
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257089 (SequenceMachineLib.roundAway (2 * (2 : ℚ) ^ ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n + 1 : ℤ) : ℤ))).toNat

end

end A347069.P9645568806498053609

/-! ## A347069.P10523800708494694176

`A353381(3*(2^(C(comp[∑[n]]-n, 2)-(n+1)))²)`
-/

namespace A347069.P10523800708494694176
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353381 (SequenceMachineLib.roundAway (3 * ((2 : ℚ) ^ ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n + 1 : ℤ) : ℤ)) ^ 2)).toNat

end

end A347069.P10523800708494694176

/-!
# A347070: E.g.f.: (sec(x) - tan(x)) / (2 - exp(x)).

The programs for A347070, there is no canonical definition to state claims against.
-/

/-! ## A347070.P12507867284341812435

`A296610(A215448(n))`
-/

namespace A347070.P12507867284341812435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296610 (A215448 n).toNat

end

end A347070.P12507867284341812435

/-! ## A347070.P18249140220523428214

`A102576(A026596(n))-n`
-/

namespace A347070.P18249140220523428214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102576 (A026596 n).toNat - (n : ℤ)

end

end A347070.P18249140220523428214

/-!
# A347071: E.g.f.: exp(x) * (sec(x) - tan(x)) / (1 - x).

The programs for A347071, there is no canonical definition to state claims against.
-/

/-! ## A347071.P11295878144607820194

`Δ[A009334(n)]+n*a(n-1)` with `a(0)=1`
-/

namespace A347071.P11295878144607820194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009334 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  f1 (n + 1) - f1 n + (n : ℤ) * a (n - 1)

end

end A347071.P11295878144607820194

/-! ## A347071.P2569504776116395970

`A008620(A253927(n)+A005651(n))`
-/

namespace A347071.P2569504776116395970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A253927 n + A005651 n).toNat

end

end A347071.P2569504776116395970

/-! ## A347071.P11633392621021367255

`A194640(A193353(n)+A000142(n))`
-/

namespace A347071.P11633392621021367255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194640 (A193353 n + A000142 n).toNat

end

end A347071.P11633392621021367255

/-!
# A347072: E.g.f.: -log(1 - x) * (sec(x) + tan(x)).

The programs for A347072, there is no canonical definition to state claims against.
-/

/-! ## A347072.P10370175845025408113

`A002266(A119268(2*n+1))+n`
-/

namespace A347072.P10370175845025408113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002266 (A119268 (2 * n + 1)).toNat + (n : ℤ)

end

end A347072.P10370175845025408113

/-! ## A347072.P2654079355988548464

`A048865(A227367(n)+A007405(n))`
-/

namespace A347072.P2654079355988548464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048865 (A227367 n + A007405 n).toNat

end

end A347072.P2654079355988548464

/-! ## A347072.P14225252827024005090

`A054899(A243948(n)+A078370(n))`
-/

namespace A347072.P14225252827024005090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054899 (A243948 n + A078370 n).toNat

end

end A347072.P14225252827024005090

/-!
# A347075: Primes of the form p^3 + p^2 + p + 2 where p is prime.

The programs for A347075, there is no canonical definition to state claims against.
-/

/-! ## A347075.P16272112994262627369

`A164939(n+1)^3+A164939(n+1)²+A164939(n+1)+2`
-/

namespace A347075.P16272112994262627369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164939 (n + 1) ^ 3 + A164939 (n + 1) ^ 2 + A164939 (n + 1) + 2

end

end A347075.P16272112994262627369

/-! ## A347075.P444862958194184756

`A280184(A164939(n+1))`
-/

namespace A347075.P444862958194184756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280184 (A164939 (n + 1)).toNat

end

end A347075.P444862958194184756

/-! ## A347075.P3393560158211703111

`A188947(A164939(n+1)+1)`
-/

namespace A347075.P3393560158211703111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188947 (A164939 (n + 1) + 1).toNat

end

end A347075.P3393560158211703111

/-! ## A347075.P4193475773641892184

`A280184(p?[2*A247350(n+1)-1])`
-/

namespace A347075.P4193475773641892184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A247350 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280184 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A347075.P4193475773641892184

/-! ## A347075.P16173549224955475111

`A053698(A164939(n+1))+A007318(C(2, n))`
-/

namespace A347075.P16173549224955475111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053698 (A164939 (n + 1)).toNat + A007318 (Nat.choose 2 n)

end

end A347075.P16173549224955475111

/-! ## A347075.P10191612584074375846

`A053698(A164939(n+1))+A000108(n*char[1])`
-/

namespace A347075.P10191612584074375846
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053698 (A164939 (n + 1)).toNat + A000108 (n * (if ∃ j, f1 j = n then 1 else 0))

end

end A347075.P10191612584074375846

/-! ## A347075.P16329606699659480158

`A053698(A164939(n+1))+A014963(6*(n+1))`
-/

namespace A347075.P16329606699659480158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053698 (A164939 (n + 1)).toNat + A014963 (6 * (n + 1))

end

end A347075.P16329606699659480158

/-! ## A347075.P10960826909585756538

`A053698(A164939(n+1))+A000010(gcd(n, n+1))`
-/

namespace A347075.P10960826909585756538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053698 (A164939 (n + 1)).toNat + A000010 (Nat.gcd n (n + 1))

end

end A347075.P10960826909585756538

/-! ## A347075.P1147936328735067861

`A053698(A164939(n+1))+A007318((n%2)^n)`
-/

namespace A347075.P1147936328735067861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053698 (A164939 (n + 1)).toNat + A007318 ((n % 2) ^ n)

end

end A347075.P1147936328735067861

/-! ## A347075.P2635810381877218564

`A053698(A164939(n+1))+A007318(val(n²+12, 4))`
-/

namespace A347075.P2635810381877218564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053698 (A164939 (n + 1)).toNat + A007318 (SequenceMachineLib.valuation (n ^ 2 + 12) 4)

end

end A347075.P2635810381877218564

/-! ## A347075.P9285199778230305335

`A053698(A164939(n+1))+A007318(A000096(n)+1)`
-/

namespace A347075.P9285199778230305335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053698 (A164939 (n + 1)).toNat + A007318 (A000096 n + 1).toNat

end

end A347075.P9285199778230305335

/-!
# A347078: Primes p such that tau(p - 1) = tau(p - 2) + 1, where tau(k) is the number of divisors of k (A000005).

The programs for A347078, there is no canonical definition to state claims against.
-/

/-! ## A347078.P1086245936501968656

`p?[A055927(n+1)+2]`
-/

namespace A347078.P1086245936501968656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055927 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A347078.P1086245936501968656

/-! ## A347078.P8087780318354823077

`record[A020639(A055927(n+1)+2)]`
-/

namespace A347078.P8087780318354823077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A055927 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A347078.P8087780318354823077

/-! ## A347078.P5728577628184610401

`∩[A000040(n+1), A055927(n+1)+2]`
-/

namespace A347078.P5728577628184610401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055927 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A347078.P5728577628184610401

/-!
# A347079: a(n) is the least prime that is the perimeter of exactly n isosceles triangles with prime sides.

The programs for A347079, there is no canonical definition to state claims against.
-/

/-! ## A347079.P4072783775681192153

`A322394(A319470(2*(n+2))+A154331(n+1))`
-/

namespace A347079.P4072783775681192153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322394 (A319470 (2 * (n + 2)) + A154331 (n + 1)).toNat

end

end A347079.P4072783775681192153

/-! ## A347079.P2759016285150076947

`A259430(A078447(n+2))`
-/

namespace A347079.P2759016285150076947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259430 (A078447 (n + 2)).toNat

end

end A347079.P2759016285150076947

/-!
# A347082: Dirichlet inverse of -A168036, n - A003415(n).

The programs for A347082, there is no canonical definition to state claims against.
-/

/-! ## A347082.P8100577348924768328

`A347087(n+1)-(n+1)`
-/

namespace A347082.P8100577348924768328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347087 (n + 1) - (n + 1 : ℤ)

end

end A347082.P8100577348924768328

/-! ## A347082.P12288186831983969442

`A168036(n+1)+A347083(n+1)`
-/

namespace A347082.P12288186831983969442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168036 (n + 1) + A347083 (n + 1)

end

end A347082.P12288186831983969442

/-! ## A347082.P6310128449310174718

`A347084(n+1)+A347086(n+1)`
-/

namespace A347082.P6310128449310174718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347084 (n + 1) + A347086 (n + 1)

end

end A347082.P6310128449310174718

/-! ## A347082.P15211713552481262457

`A003415(n+1)+A347083(n+1)-(n+1)`
-/

namespace A347082.P15211713552481262457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (n + 1) + (A347083 (n + 1) - (n + 1 : ℤ))

end

end A347082.P15211713552481262457

/-! ## A347082.P151175943384372245

`A347085(n+1)+A347086(n+1)-A129283(n+1)`
-/

namespace A347082.P151175943384372245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347085 (n + 1) + (A347086 (n + 1) - A129283 (n + 1))

end

end A347082.P151175943384372245

/-!
# A347083: Sum of -A168036 and its Dirichlet inverse.

The programs for A347083, there is no canonical definition to state claims against.
-/

/-! ## A347083.P15383854508538159056

`A347082(n+1)-A168036(n+1)`
-/

namespace A347083.P15383854508538159056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347082 (n + 1) - A168036 (n + 1)

end

end A347083.P15383854508538159056

/-! ## A347083.P3094857163004277766

`A347087(n+1)-A003415(n+1)`
-/

namespace A347083.P3094857163004277766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347087 (n + 1) - A003415 (n + 1)

end

end A347083.P3094857163004277766

/-! ## A347083.P5730090484523584123

`A347082(n+1)+n+1-A003415(n+1)`
-/

namespace A347083.P5730090484523584123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347082 (n + 1) + ((n + 1 : ℤ) - A003415 (n + 1))

end

end A347083.P5730090484523584123

/-! ## A347083.P8257090255142490634

`A347087(n+1)+n+1-A129283(n+1)`
-/

namespace A347083.P8257090255142490634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347087 (n + 1) + ((n + 1 : ℤ) - A129283 (n + 1))

end

end A347083.P8257090255142490634

/-! ## A347083.P17005168637518400224

`A347087(n+1)-(A168036(n+1)+n+1)`
-/

namespace A347083.P17005168637518400224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347087 (n + 1) - (A168036 (n + 1) + (n + 1 : ℤ))

end

end A347083.P17005168637518400224

/-! ## A347083.P11325296388622926616

`A347084(n+1)+A347086(n+1)-A168036(n+1)`
-/

namespace A347083.P11325296388622926616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347084 (n + 1) + (A347086 (n + 1) - A168036 (n + 1))

end

end A347083.P11325296388622926616

/-!
# A347084: Dirichlet inverse of A129283, n + A003415(n).

The programs for A347084, there is no canonical definition to state claims against.
-/

/-! ## A347084.P4246643566336100082

`A347085(n+1)-A129283(n+1)`
-/

namespace A347084.P4246643566336100082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347085 (n + 1) - A129283 (n + 1)

end

end A347084.P4246643566336100082

/-! ## A347084.P5181893182385094024

`A347082(n+1)-A347086(n+1)`
-/

namespace A347084.P5181893182385094024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347082 (n + 1) - A347086 (n + 1)

end

end A347084.P5181893182385094024

/-! ## A347084.P14451672859194821635

`A347085(n+1)-(A003415(n+1)+n+1)`
-/

namespace A347084.P14451672859194821635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347085 (n + 1) - (A003415 (n + 1) + (n + 1 : ℤ))

end

end A347084.P14451672859194821635

/-! ## A347084.P10907512215286882978

`A347087(n+1)-(A347086(n+1)+n+1)`
-/

namespace A347084.P10907512215286882978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347087 (n + 1) - (A347086 (n + 1) + (n + 1 : ℤ))

end

end A347084.P10907512215286882978

/-! ## A347084.P3982418813442439141

`∑{d}[n+1, A349337(#)*A349435((n+1)/#)]`
-/

namespace A347084.P3982418813442439141
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A349337 d * A349435 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A347084.P3982418813442439141

/-! ## A347084.P4568497361270772491

`A168036(n+1)+A347083(n+1)-A347086(n+1)`
-/

namespace A347084.P4568497361270772491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168036 (n + 1) + (A347083 (n + 1) - A347086 (n + 1))

end

end A347084.P4568497361270772491

/-! ## A347084.P13497321354182968903

`A347085(n+1)-A343226(n+1)*A345059(n+1)`
-/

namespace A347084.P13497321354182968903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347085 (n + 1) - A343226 (n + 1) * A345059 (n + 1)

end

end A347084.P13497321354182968903

/-!
# A347085: Sum of A129283 and its Dirichlet inverse.

The programs for A347085, there is no canonical definition to state claims against.
-/

/-! ## A347085.P947581124315915075

`A129283(n+1)+A347084(n+1)`
-/

namespace A347085.P947581124315915075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129283 (n + 1) + A347084 (n + 1)

end

end A347085.P947581124315915075

/-! ## A347085.P17753177023479999122

`n+1+A347084(n+1)+A003415(n+1)`
-/

namespace A347085.P17753177023479999122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + (A347084 (n + 1) + A003415 (n + 1))

end

end A347085.P17753177023479999122

/-! ## A347085.P17583967453270453592

`A003415(n+1)+A347087(n+1)-A347086(n+1)`
-/

namespace A347085.P17583967453270453592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (n + 1) + (A347087 (n + 1) - A347086 (n + 1))

end

end A347085.P17583967453270453592

/-! ## A347085.P7596120751725871014

`A003959(n+1)+A347084(n+1)-A348970(n+1)`
-/

namespace A347085.P7596120751725871014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003959 (n + 1) + (A347084 (n + 1) - A348970 (n + 1))

end

end A347085.P7596120751725871014

/-! ## A347085.P14020949301825216369

`A129283(n+1)+A347082(n+1)-A347086(n+1)`
-/

namespace A347085.P14020949301825216369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129283 (n + 1) + (A347082 (n + 1) - A347086 (n + 1))

end

end A347085.P14020949301825216369

/-!
# A347086: Difference between the Dirichlet inverse of -A168036, n - A003415(n) and the Dirichlet inverse of A129283, n + A003415(n), where A003415 is the Arithmetic derivative of n.

The programs for A347086, there is no canonical definition to state claims against.
-/

/-! ## A347086.P7805752615614065507

`A347082(n+1)-A347084(n+1)`
-/

namespace A347086.P7805752615614065507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347082 (n + 1) - A347084 (n + 1)

end

end A347086.P7805752615614065507

/-! ## A347086.P9752693089606352481

`A347087(n+1)-(A347084(n+1)+n+1)`
-/

namespace A347086.P9752693089606352481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347087 (n + 1) - (A347084 (n + 1) + (n + 1 : ℤ))

end

end A347086.P9752693089606352481

/-! ## A347086.P5842731444394895693

`A003415(n+1)+A347087(n+1)-A347085(n+1)`
-/

namespace A347086.P5842731444394895693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (n + 1) + (A347087 (n + 1) - A347085 (n + 1))

end

end A347086.P5842731444394895693

/-! ## A347086.P13629500602077324855

`A129283(n+1)+A347082(n+1)-A347085(n+1)`
-/

namespace A347086.P13629500602077324855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129283 (n + 1) + (A347082 (n + 1) - A347085 (n + 1))

end

end A347086.P13629500602077324855

/-! ## A347086.P4724039041277175037

`A168036(n+1)+A347083(n+1)-A347084(n+1)`
-/

namespace A347086.P4724039041277175037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168036 (n + 1) + (A347083 (n + 1) - A347084 (n + 1))

end

end A347086.P4724039041277175037

/-!
# A347087: Sum of n and the Dirichlet inverse of n - A003415(n).

The programs for A347087, there is no canonical definition to state claims against.
-/

/-! ## A347087.P10857455908862096253

`n+1+A347082(n+1)`
-/

namespace A347087.P10857455908862096253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + A347082 (n + 1)

end

end A347087.P10857455908862096253

/-! ## A347087.P9909892682390243171

`A347083(n+1)+∑[A258057(n)]`
-/

namespace A347087.P9909892682390243171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347083 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A347087.P9909892682390243171

/-! ## A347087.P10569878248019595467

`A347083(n+1)+A003415(n+1)`
-/

namespace A347087.P10569878248019595467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347083 (n + 1) + A003415 (n + 1)

end

end A347087.P10569878248019595467

/-! ## A347087.P9976141868783734676

`n+1+A347083(n+1)+A168036(n+1)`
-/

namespace A347087.P9976141868783734676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + (A347083 (n + 1) + A168036 (n + 1))

end

end A347087.P9976141868783734676

/-! ## A347087.P5842236954754058936

`n+1+A347086(n+1)+A347084(n+1)`
-/

namespace A347087.P5842236954754058936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + (A347086 (n + 1) + A347084 (n + 1))

end

end A347087.P5842236954754058936

/-! ## A347087.P14307681433014496339

`A129283(n+1)+A347083(n+1)-(n+1)`
-/

namespace A347087.P14307681433014496339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129283 (n + 1) + (A347083 (n + 1) - (n + 1 : ℤ))

end

end A347087.P14307681433014496339

/-! ## A347087.P12200019323909168100

`A347085(n+1)+A347086(n+1)-A003415(n+1)`
-/

namespace A347087.P12200019323909168100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347085 (n + 1) + (A347086 (n + 1) - A003415 (n + 1))

end

end A347087.P12200019323909168100

/-!
# A347088: a(n) = A055155(n) - d(n), where A055155(n) = Sum_{d|n} gcd(d, n/d) and d(n) gives the number of divisors of n.

The programs for A347088, the canonical program `A347088.P10760207860306131150` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A347088 has offset 1).

The definition of A347088 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A347088.P10760207860306131150

`A055155(n+1)-A000005(n+1)`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A347088

/-- `A055155(n+1)-A000005(n+1)` -/
def P10760207860306131150.Spec : Prop :=
  ∀ n, P10760207860306131150.a n = A347088 (n + 1)

theorem P10760207860306131150.correct : P10760207860306131150.Spec := by
  intro n
  simp only [A347088, Nat.add_sub_cancel]

end A347088

/-! ## A347088.P11485392150591779632

`∑{d}[n+1, A057918(#)]`
-/

namespace A347088.P11485392150591779632
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A057918 d

end

end A347088.P11485392150591779632

namespace A347088

/-- `∑{d}[n+1, A057918(#)]` -/
def P11485392150591779632.Spec : Prop :=
  ∀ n, P11485392150591779632.a n = A347088 (n + 1)

end A347088

/-! ## A347088.P7498326669908181102

`∑{d}[n+1, A000188(#)-1]`
-/

namespace A347088.P7498326669908181102
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (A000188 d - 1)

end

end A347088.P7498326669908181102

namespace A347088

/-- `∑{d}[n+1, A000188(#)-1]` -/
def P7498326669908181102.Spec : Prop :=
  ∀ n, P7498326669908181102.a n = A347088 (n + 1)

end A347088

/-! ## A347088.P13565732206435043321

`∑{d}[n+1, n%A000188(n%#+1)]`
-/

namespace A347088.P13565732206435043321
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Int.tmod (n : ℤ) (A000188 (n % d + 1))

end

end A347088.P13565732206435043321

namespace A347088

/-- `∑{d}[n+1, n%A000188(n%#+1)]` -/
def P13565732206435043321.Spec : Prop :=
  ∀ n, P13565732206435043321.a n = A347088 (n + 1)

end A347088

/-! ## A347088.P4104261822474615165

`A055155(n+1)-Δ[A006218(n)]`
-/

namespace A347088.P4104261822474615165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055155 (n + 1) - (f1 (n + 1) - f1 n)

end

end A347088.P4104261822474615165

namespace A347088

/-- `A055155(n+1)-Δ[A006218(n)]` -/
def P4104261822474615165.Spec : Prop :=
  ∀ n, P4104261822474615165.a n = A347088 (n + 1)

end A347088

/-! ## A347088.P13703901906632251210

`A056239(A294895(n+1))`
-/

namespace A347088.P13703901906632251210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A294895 (n + 1)).toNat

end

end A347088.P13703901906632251210

namespace A347088

/-- `A056239(A294895(n+1))` -/
def P13703901906632251210.Spec : Prop :=
  ∀ n, P13703901906632251210.a n = A347088 (n + 1)

end A347088

/-!
# A347089: a(n) = gcd(A055155(n), d(n)), where A055155(n) = Sum_{d|n} gcd(d, n/d) and d(n) gives the number of divisors of n.

The programs for A347089, the canonical program `A347089.P1921252892406958306` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A347089 has offset 1).

The definition of A347089 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A347089.P1921252892406958306

`gcd(A000005(n+1), A055155(n+1))`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A347089

/-- `gcd(A000005(n+1), A055155(n+1))` -/
def P1921252892406958306.Spec : Prop :=
  ∀ n, (P1921252892406958306.a n : ℤ) = A347089 (n + 1)

theorem P1921252892406958306.correct : P1921252892406958306.Spec := by
  intro n
  simp only [A347089, Nat.add_sub_cancel]

end A347089

/-! ## A347089.P17983986750026544104

`gcd(∑{d}[n+1, gcd(#, (n+1)/#)], ∏{e}[n+1, #+1])`
-/

namespace A347089.P17983986750026544104
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (∑ d ∈ Nat.divisors (f1 n), Int.gcd (d : ℤ) (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ)))) (∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1))

end

end A347089.P17983986750026544104

namespace A347089

/-- `gcd(∑{d}[n+1, gcd(#, (n+1)/#)], ∏{e}[n+1, #+1])` -/
def P17983986750026544104.Spec : Prop :=
  ∀ n, (P17983986750026544104.a n : ℤ) = A347089 (n + 1)

end A347089

/-! ## A347089.P11471589361067222147

`gcd(Δ[A006218(n)], A055155(n+1))`
-/

namespace A347089.P11471589361067222147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (n + 1) - f1 n) (A055155 (n + 1))

end

end A347089.P11471589361067222147

namespace A347089

/-- `gcd(Δ[A006218(n)], A055155(n+1))` -/
def P11471589361067222147.Spec : Prop :=
  ∀ n, (P11471589361067222147.a n : ℤ) = A347089 (n + 1)

end A347089

/-! ## A347089.P13700936998318865810

`gcd(Δ[A054519(n)], A347088(n+1))`
-/

namespace A347089.P13700936998318865810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054519 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (n + 1) - f1 n) (A347088 (n + 1))

end

end A347089.P13700936998318865810

namespace A347089

/-- `gcd(Δ[A054519(n)], A347088(n+1))` -/
def P13700936998318865810.Spec : Prop :=
  ∀ n, (P13700936998318865810.a n : ℤ) = A347089 (n + 1)

end A347089

/-! ## A347089.P11445260300991317098

`gcd(A320111(2*(n+1)), A347088(A000027(n+1)))`
-/

namespace A347089.P11445260300991317098
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A320111 (2 * (n + 1))) (A347088 (A000027 (n + 1)).toNat)

end

end A347089.P11445260300991317098

namespace A347089

/-- `gcd(A320111(2*(n+1)), A347088(A000027(n+1)))` -/
def P11445260300991317098.Spec : Prop :=
  ∀ n, (P11445260300991317098.a n : ℤ) = A347089 (n + 1)

end A347089

/-!
# A347090: Dirichlet inverse of A332844.

The programs for A347090, the canonical program `A347090.P2915293843078708431` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A347090 has offset 1).

The definition of A347090 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A347090.P9564257610671310417

`A347091(n+1)-A332844(n+1)`
-/

namespace A347090.P9564257610671310417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347091 (n + 1) - A332844 (n + 1)

end

end A347090.P9564257610671310417

namespace A347090

/-- `A347091(n+1)-A332844(n+1)` -/
def P9564257610671310417.Spec : Prop :=
  ∀ n, P9564257610671310417.a n = A347090 (n + 1)

theorem P9564257610671310417.correct : P9564257610671310417.Spec := by
  intro n
  simp only [A347090, Nat.add_sub_cancel, A347090.P9564257610671310417.a, A347090.P2915293843078708431.f1, A347090.P2915293843078708431.a, A046692, A046692.P2122140602833396605.f1, A046692.P2122140602833396605.a, A271102, A271102.P3010353493992336101.f1, A271102.P3010353493992336101.a, A332844, A332844.P9529813075315632997.f1, A332844.P9529813075315632997.a, A347091, A347091.P10465094588197524565.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A008683, A008683.P18254306604665478110.a, A010052, A010052.P917763524850441347.f1, A010052.P917763524850441347.a, A327960, A327960.P1150811079346032985.f1, A327960.P1150811079346032985.a, A007427, A007427.P16363569186413612215.f1, A007427.P16363569186413612215.a, A101035, A101035.P3462403393033249231.f1, A101035.P3462403393033249231.a, A132971, A132971.P9197609016375066540.a, A156552, A156552.P4268073137713085227.a, A005941, A005941.P9595689460679922607.f1, A005941.P9595689460679922607.a, A085357, A085357.P3258697467278337073.a, A106400, A106400.P11201390576172776043.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A347090

/-! ## A347090.P2915293843078708431

`∑{d}[n+1, A046692(#)*A271102((n+1)/#)]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A347090

/-- `∑{d}[n+1, A046692(#)*A271102((n+1)/#)]` -/
def P2915293843078708431.Spec : Prop :=
  ∀ n, P2915293843078708431.a n = A347090 (n + 1)

theorem P2915293843078708431.correct : P2915293843078708431.Spec := by
  intro n
  simp only [A347090, Nat.add_sub_cancel]

end A347090

/-! ## A347090.P9083478259113677718

`∑{d}[n+1, A007427(#)*A328729((n+1)/#)]`
-/

namespace A347090.P9083478259113677718
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007427 d * A328729 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A347090.P9083478259113677718

namespace A347090

/-- `∑{d}[n+1, A007427(#)*A328729((n+1)/#)]` -/
def P9083478259113677718.Spec : Prop :=
  ∀ n, P9083478259113677718.a n = A347090 (n + 1)

end A347090

/-! ## A347090.P17056290913235808056

`∑{d}[n+1, A055615(#)*A307445((n+1)/#)]`
-/

namespace A347090.P17056290913235808056
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A055615 d * A307445 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A347090.P17056290913235808056

namespace A347090

/-- `∑{d}[n+1, A055615(#)*A307445((n+1)/#)]` -/
def P17056290913235808056.Spec : Prop :=
  ∀ n, P17056290913235808056.a n = A347090 (n + 1)

end A347090

/-! ## A347090.P169312714136815000

`∑{d}[n+1, A063659(#)*A327960((n+1)/#)]`
-/

namespace A347090.P169312714136815000
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A063659 d * A327960 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A347090.P169312714136815000

namespace A347090

/-- `∑{d}[n+1, A063659(#)*A327960((n+1)/#)]` -/
def P169312714136815000.Spec : Prop :=
  ∀ n, P169312714136815000.a n = A347090 (n + 1)

end A347090

/-! ## A347090.P17544029863988324292

`∑{d}[n+1, A130107(#)*A328722((n+1)/#)]`
-/

namespace A347090.P17544029863988324292
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A130107 d * A328722 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A347090.P17544029863988324292

namespace A347090

/-- `∑{d}[n+1, A130107(#)*A328722((n+1)/#)]` -/
def P17544029863988324292.Spec : Prop :=
  ∀ n, P17544029863988324292.a n = A347090 (n + 1)

end A347090

/-!
# A347091: Sum of A332844 and its Dirichlet inverse.

The programs for A347091, the canonical program `A347091.P10465094588197524565` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A347091 has offset 1).

The definition of A347091 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A332844, A347090, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A347091.P10465094588197524565

`A332844(n+1)+A347090(n+1)`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A347091

/-- `A332844(n+1)+A347090(n+1)` -/
def P10465094588197524565.Spec : Prop :=
  ∀ n, P10465094588197524565.a n = A347091 (n + 1)

theorem P10465094588197524565.correct : P10465094588197524565.Spec := by
  intro n
  simp only [A347091, Nat.add_sub_cancel]

end A347091

/-! ## A347091.P14410588140134804586

`A347090(n+1)+∑{d}[n+1, A076752(#)]`
-/

namespace A347091.P14410588140134804586
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347090 (n + 1) + ∑ d ∈ Nat.divisors (f1 n), A076752 d

end

end A347091.P14410588140134804586

namespace A347091

/-- `A347090(n+1)+∑{d}[n+1, A076752(#)]` -/
def P14410588140134804586.Spec : Prop :=
  ∀ n, P14410588140134804586.a n = A347091 (n + 1)

end A347091

/-! ## A347091.P3174350912253014202

`n+1+A347090(n+1)+A344442(n+1)`
-/

namespace A347091.P3174350912253014202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + (A347090 (n + 1) + A344442 (n + 1))

end

end A347091.P3174350912253014202

namespace A347091

/-- `n+1+A347090(n+1)+A344442(n+1)` -/
def P3174350912253014202.Spec : Prop :=
  ∀ n, P3174350912253014202.a n = A347091 (n + 1)

theorem P3174350912253014202.correct : P3174350912253014202.Spec := by
  intro n
  simp only [A347091, Nat.add_sub_cancel, A347091.P3174350912253014202.a, A347091.P10465094588197524565.a, A332844, A332844.P9529813075315632997.f1, A332844.P9529813075315632997.a, A344442, A344442.P16917334550170264371.a, A347090, A347090.P2915293843078708431.f1, A347090.P2915293843078708431.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A010052, A010052.P917763524850441347.f1, A010052.P917763524850441347.a, A046692, A046692.P2122140602833396605.f1, A046692.P2122140602833396605.a, A271102, A271102.P3010353493992336101.f1, A271102.P3010353493992336101.a, A008683, A008683.P18254306604665478110.a, A327960, A327960.P1150811079346032985.f1, A327960.P1150811079346032985.a, A007427, A007427.P16363569186413612215.f1, A007427.P16363569186413612215.a, A101035, A101035.P3462403393033249231.f1, A101035.P3462403393033249231.a, A132971, A132971.P9197609016375066540.a, A156552, A156552.P4268073137713085227.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A347091

/-! ## A347091.P4038132128376875058

`A347090(n+1)+∑{d}[n+1, #*A046951((n+1)/#)]`
-/

namespace A347091.P4038132128376875058
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347090 (n + 1) + ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A046951 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A347091.P4038132128376875058

namespace A347091

/-- `A347090(n+1)+∑{d}[n+1, #*A046951((n+1)/#)]` -/
def P4038132128376875058.Spec : Prop :=
  ∀ n, P4038132128376875058.a n = A347091 (n + 1)

end A347091

/-! ## A347091.P378198049923011612

`A347090(n+1)+∑{d}[n+1, A007913(#)*A035316((n+1)/#)]`
-/

namespace A347091.P378198049923011612
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347090 (n + 1) + ∑ d ∈ Nat.divisors (f1 n), A007913 d * A035316 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A347091.P378198049923011612

namespace A347091

/-- `A347090(n+1)+∑{d}[n+1, A007913(#)*A035316((n+1)/#)]` -/
def P378198049923011612.Spec : Prop :=
  ∀ n, P378198049923011612.a n = A347091 (n + 1)

end A347091

/-! ## A347091.P1172754093967521378

`A347090(n+1)+∑{d}[n+1, A007425(#)*A074722((n+1)/#)]`
-/

namespace A347091.P1172754093967521378
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347090 (n + 1) + ∑ d ∈ Nat.divisors (f1 n), A007425 d * A074722 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A347091.P1172754093967521378

namespace A347091

/-- `A347090(n+1)+∑{d}[n+1, A007425(#)*A074722((n+1)/#)]` -/
def P1172754093967521378.Spec : Prop :=
  ∀ n, P1172754093967521378.a n = A347091 (n + 1)

end A347091

/-! ## A347091.P516253330491519596

`A347090(n+1)+∑{d}[n+1, A000010(#)*A124315((n+1)/#)]`
-/

namespace A347091.P516253330491519596
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347090 (n + 1) + ∑ d ∈ Nat.divisors (f1 n), A000010 d * A124315 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A347091.P516253330491519596

namespace A347091

/-- `A347090(n+1)+∑{d}[n+1, A000010(#)*A124315((n+1)/#)]` -/
def P516253330491519596.Spec : Prop :=
  ∀ n, P516253330491519596.a n = A347091 (n + 1)

end A347091

/-! ## A347091.P11956259465097281305

`A347090(n+1)+∑{d}[n+1, A007430(#)*A158522((n+1)/#)]`
-/

namespace A347091.P11956259465097281305
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347090 (n + 1) + ∑ d ∈ Nat.divisors (f1 n), A007430 d * A158522 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A347091.P11956259465097281305

namespace A347091

/-- `A347090(n+1)+∑{d}[n+1, A007430(#)*A158522((n+1)/#)]` -/
def P11956259465097281305.Spec : Prop :=
  ∀ n, P11956259465097281305.a n = A347091 (n + 1)

end A347091

/-! ## A347091.P3340930706683691459

`A347090(n+1)+∑{d}[n+1, A000005(#)*A206369((n+1)/#)]`
-/

namespace A347091.P3340930706683691459
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347090 (n + 1) + ∑ d ∈ Nat.divisors (f1 n), A000005 d * A206369 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A347091.P3340930706683691459

namespace A347091

/-- `A347090(n+1)+∑{d}[n+1, A000005(#)*A206369((n+1)/#)]` -/
def P3340930706683691459.Spec : Prop :=
  ∀ n, P3340930706683691459.a n = A347091 (n + 1)

end A347091

/-! ## A347091.P14113428424011531743

`A347090(n+1)+∑{d}[n+1, A038712(#)*A328373((n+1)/#)]`
-/

namespace A347091.P14113428424011531743
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347090 (n + 1) + ∑ d ∈ Nat.divisors (f1 n), A038712 d * A328373 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A347091.P14113428424011531743

namespace A347091

/-- `A347090(n+1)+∑{d}[n+1, A038712(#)*A328373((n+1)/#)]` -/
def P14113428424011531743.Spec : Prop :=
  ∀ n, P14113428424011531743.a n = A347091 (n + 1)

end A347091

/-!
# A347092: Dirichlet inverse of A322577, which is the convolution of Dedekind psi with Euler phi.

The programs for A347092, the canonical program `A347092.P8123112013211787549` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A347092 has offset 1).

The definition of A347092 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A347092.P1271323908977168082

`A347093(n+1)-A322577(n+1)`
-/

namespace A347092.P1271323908977168082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347093 (n + 1) - A322577 (n + 1)

end

end A347092.P1271323908977168082

namespace A347092

/-- `A347093(n+1)-A322577(n+1)` -/
def P1271323908977168082.Spec : Prop :=
  ∀ n, P1271323908977168082.a n = A347092 (n + 1)

theorem P1271323908977168082.correct : P1271323908977168082.Spec := by
  intro n
  simp only [A347092, Nat.add_sub_cancel, A347092.P1271323908977168082.a, A347092.P8123112013211787549.f1, A347092.P8123112013211787549.a, A322577, A322577.P2466038700097355167.f1, A322577.P2466038700097355167.a, A328639, A328639.P9947470006572070281.f1, A328639.P9947470006572070281.a, A340850, A340850.P57978566503964907.a, A347093, A347093.P13905324333595350754.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A008683, A008683.P18254306604665478110.a, A008836, A008836.P691704047226663751.a, A048250, A048250.P6137918235727910070.a, A063659, A063659.P17976112420004081821.a, A173557, A173557.P15666735857375843373.a, A001221, A001221.P10258181745752134128.a, A001222, A001222.P11318177267732088261.a, A001615, A001615.P12078511981713404634.a, A023900, A023900.P6802385856234332486.f1, A023900.P6802385856234332486.a, A033999, A033999.P17703899380244199787.a, A063658, A063658.P15417569516115138274.f1, A063658.P15417569516115138274.a, A132971, A132971.P9197609016375066540.a, A156552, A156552.P4268073137713085227.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A005941, A005941.P9595689460679922607.f1, A005941.P9595689460679922607.a, A059841, A059841.P7264174615531153985.a, A061395, A061395.P8431317036300486107.a, A085357, A085357.P3258697467278337073.a, A106400, A106400.P11201390576172776043.a, A122111, A122111.P18124015185857335041.a, A130107, A130107.P1988406999421660602.f1, A130107.P1988406999421660602.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A347092

/-! ## A347092.P16070017828181565190

`∑{d}[n+1, A008836(#)*A101035((n+1)/#)]`
-/

namespace A347092.P16070017828181565190
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008836 d * A101035 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A347092.P16070017828181565190

namespace A347092

/-- `∑{d}[n+1, A008836(#)*A101035((n+1)/#)]` -/
def P16070017828181565190.Spec : Prop :=
  ∀ n, P16070017828181565190.a n = A347092 (n + 1)

end A347092

/-! ## A347092.P14195340112619293297

`∑{d}[n+1, A010052(#)*A328722((n+1)/#)]`
-/

namespace A347092.P14195340112619293297
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A010052 d * A328722 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A347092.P14195340112619293297

namespace A347092

/-- `∑{d}[n+1, A010052(#)*A328722((n+1)/#)]` -/
def P14195340112619293297.Spec : Prop :=
  ∀ n, P14195340112619293297.a n = A347092 (n + 1)

end A347092

/-! ## A347092.P11296969629357565657

`∑{d}[n+1, A023900(#)*A323363((n+1)/#)]`
-/

namespace A347092.P11296969629357565657
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A023900 d * A323363 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A347092.P11296969629357565657

namespace A347092

/-- `∑{d}[n+1, A023900(#)*A323363((n+1)/#)]` -/
def P11296969629357565657.Spec : Prop :=
  ∀ n, P11296969629357565657.a n = A347092 (n + 1)

end A347092

/-! ## A347092.P3354744422831208156

`∑{d}[n+1, A046951(#)*A327960((n+1)/#)]`
-/

namespace A347092.P3354744422831208156
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A046951 d * A327960 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A347092.P3354744422831208156

namespace A347092

/-- `∑{d}[n+1, A046951(#)*A327960((n+1)/#)]` -/
def P3354744422831208156.Spec : Prop :=
  ∀ n, P3354744422831208156.a n = A347092 (n + 1)

end A347092

/-! ## A347092.P15303398149247210773

`∑{d}[n+1, A158522(#)*A328641((n+1)/#)]`
-/

namespace A347092.P15303398149247210773
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A158522 d * A328641 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A347092.P15303398149247210773

namespace A347092

/-- `∑{d}[n+1, A158522(#)*A328641((n+1)/#)]` -/
def P15303398149247210773.Spec : Prop :=
  ∀ n, P15303398149247210773.a n = A347092 (n + 1)

end A347092

/-! ## A347092.P8123112013211787549

`∑{d}[n+1, A328639(#)*A340850((n+1)/#)]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A347092

/-- `∑{d}[n+1, A328639(#)*A340850((n+1)/#)]` -/
def P8123112013211787549.Spec : Prop :=
  ∀ n, P8123112013211787549.a n = A347092 (n + 1)

theorem P8123112013211787549.correct : P8123112013211787549.Spec := by
  intro n
  simp only [A347092, Nat.add_sub_cancel]

end A347092

/-!
# A347093: Sum of A322577 (convolution of Dedekind psi with Euler phi) and its Dirichlet inverse.

The programs for A347093, the canonical program `A347093.P13905324333595350754` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A347093 has offset 1).

The definition of A347093 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A322577, A347092, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A347093.P13905324333595350754

`A322577(n+1)+A347092(n+1)`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A347093

/-- `A322577(n+1)+A347092(n+1)` -/
def P13905324333595350754.Spec : Prop :=
  ∀ n, P13905324333595350754.a n = A347093 (n + 1)

theorem P13905324333595350754.correct : P13905324333595350754.Spec := by
  intro n
  simp only [A347093, Nat.add_sub_cancel]

end A347093

/-! ## A347093.P2116726991023905066

`A347092(n+1)+∑{d}[n+1, #*A063659((n+1)/#)]`
-/

namespace A347093.P2116726991023905066
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347092 (n + 1) + ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A063659 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A347093.P2116726991023905066

namespace A347093

/-- `A347092(n+1)+∑{d}[n+1, #*A063659((n+1)/#)]` -/
def P2116726991023905066.Spec : Prop :=
  ∀ n, P2116726991023905066.a n = A347093 (n + 1)

theorem P2116726991023905066.correct : P2116726991023905066.Spec := by
  intro n
  simp only [A347093, Nat.add_sub_cancel, A347093.P2116726991023905066.f1, A347093.P2116726991023905066.a, A347093.P13905324333595350754.a, A063659, A063659.P17976112420004081821.a, A322577, A322577.P2466038700097355167.f1, A322577.P2466038700097355167.a, A347092, A347092.P8123112013211787549.f1, A347092.P8123112013211787549.a, A063658, A063658.P15417569516115138274.f1, A063658.P15417569516115138274.a, A328639, A328639.P9947470006572070281.f1, A328639.P9947470006572070281.a, A340850, A340850.P57978566503964907.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A008683, A008683.P18254306604665478110.a, A008836, A008836.P691704047226663751.a, A048250, A048250.P6137918235727910070.a, A130107, A130107.P1988406999421660602.f1, A130107.P1988406999421660602.a, A173557, A173557.P15666735857375843373.a, A001221, A001221.P10258181745752134128.a, A001222, A001222.P11318177267732088261.a, A001615, A001615.P12078511981713404634.a, A007428, A007428.P12532017655611739201.f1, A007428.P12532017655611739201.a, A023900, A023900.P6802385856234332486.f1, A023900.P6802385856234332486.a, A033999, A033999.P17703899380244199787.a, A060648, A060648.P14045307468802834346.f1, A060648.P14045307468802834346.a, A132971, A132971.P9197609016375066540.a, A156552, A156552.P4268073137713085227.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A347093

/-! ## A347093.P3374001183162504593

`A347092(n+1)+∑{d}[n+1, A008966(#)*A018804((n+1)/#)]`
-/

namespace A347093.P3374001183162504593
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347092 (n + 1) + ∑ d ∈ Nat.divisors (f1 n), A008966 d * A018804 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A347093.P3374001183162504593

namespace A347093

/-- `A347092(n+1)+∑{d}[n+1, A008966(#)*A018804((n+1)/#)]` -/
def P3374001183162504593.Spec : Prop :=
  ∀ n, P3374001183162504593.a n = A347093 (n + 1)

end A347093

/-! ## A347093.P579571976286902117

`A347092(n+1)+∑{d}[n+1, A007432(#)*A060724((n+1)/#)]`
-/

namespace A347093.P579571976286902117
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347092 (n + 1) + ∑ d ∈ Nat.divisors (f1 n), A007432 d * A060724 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A347093.P579571976286902117

namespace A347093

/-- `A347092(n+1)+∑{d}[n+1, A007432(#)*A060724((n+1)/#)]` -/
def P579571976286902117.Spec : Prop :=
  ∀ n, P579571976286902117.a n = A347093 (n + 1)

end A347093

/-! ## A347093.P17789448583505070947

`A347092(n+1)+∑{d}[n+1, A008833(#)*A078439((n+1)/#)]`
-/

namespace A347093.P17789448583505070947
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347092 (n + 1) + ∑ d ∈ Nat.divisors (f1 n), A008833 d * A078439 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A347093.P17789448583505070947

namespace A347093

/-- `A347092(n+1)+∑{d}[n+1, A008833(#)*A078439((n+1)/#)]` -/
def P17789448583505070947.Spec : Prop :=
  ∀ n, P17789448583505070947.a n = A347093 (n + 1)

end A347093

/-! ## A347093.P14141230830299913788

`A347092(n+1)+∑{d}[n+1, A000203(#)*A130107((n+1)/#)]`
-/

namespace A347093.P14141230830299913788
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347092 (n + 1) + ∑ d ∈ Nat.divisors (f1 n), A000203 d * A130107 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A347093.P14141230830299913788

namespace A347093

/-- `A347092(n+1)+∑{d}[n+1, A000203(#)*A130107((n+1)/#)]` -/
def P14141230830299913788.Spec : Prop :=
  ∀ n, P14141230830299913788.a n = A347093 (n + 1)

end A347093

/-! ## A347093.P17097443389756092085

`A347092(n+1)+∑{d}[n+1, A038040(#)*A271102((n+1)/#)]`
-/

namespace A347093.P17097443389756092085
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347092 (n + 1) + ∑ d ∈ Nat.divisors (f1 n), A038040 d * A271102 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A347093.P17097443389756092085

namespace A347093

/-- `A347092(n+1)+∑{d}[n+1, A038040(#)*A271102((n+1)/#)]` -/
def P17097443389756092085.Spec : Prop :=
  ∀ n, P17097443389756092085.a n = A347093 (n + 1)

end A347093

/-! ## A347093.P14114167954468501334

`A347092(n+1)+∑{d}[n+1, A060640(#)*A307445((n+1)/#)]`
-/

namespace A347093.P14114167954468501334
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347092 (n + 1) + ∑ d ∈ Nat.divisors (f1 n), A060640 d * A307445 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A347093.P14114167954468501334

namespace A347093

/-- `A347092(n+1)+∑{d}[n+1, A060640(#)*A307445((n+1)/#)]` -/
def P14114167954468501334.Spec : Prop :=
  ∀ n, P14114167954468501334.a n = A347093 (n + 1)

end A347093

/-! ## A347093.P10770232586371793499

`A347092(n+1)+∑{d}[n+1, A158522(#)*A306379((n+1)/#)]`
-/

namespace A347093.P10770232586371793499
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347092 (n + 1) + ∑ d ∈ Nat.divisors (f1 n), A158522 d * A306379 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A347093.P10770232586371793499

namespace A347093

/-- `A347092(n+1)+∑{d}[n+1, A158522(#)*A306379((n+1)/#)]` -/
def P10770232586371793499.Spec : Prop :=
  ∀ n, P10770232586371793499.a n = A347093 (n + 1)

end A347093

/-!
# A347094: Sum of A038040 (convolution of sigma with Euler phi) and its Dirichlet inverse.

The programs for A347094, the canonical program `A347094.P17942219228521589400` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A347094 has offset 1).

The definition of A347094 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A328722, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A347094.P17942219228521589400

`A038040(n+1)+A328722(n+1)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A347094

/-- `A038040(n+1)+A328722(n+1)` -/
def P17942219228521589400.Spec : Prop :=
  ∀ n, P17942219228521589400.a n = A347094 (n + 1)

theorem P17942219228521589400.correct : P17942219228521589400.Spec := by
  intro n
  simp only [A347094, Nat.add_sub_cancel]

end A347094

/-! ## A347094.P15256343878925560531

`∑{d}[n+1, (n+1)*(A007428(#)+1)]`
-/

namespace A347094.P15256343878925560531
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (n + 1 : ℤ) * (A007428 d + 1)

end

end A347094.P15256343878925560531

namespace A347094

/-- `∑{d}[n+1, (n+1)*(A007428(#)+1)]` -/
def P15256343878925560531.Spec : Prop :=
  ∀ n, P15256343878925560531.a n = A347094 (n + 1)

end A347094

/-! ## A347094.P11528398006042955773

`∑{d}[n+1, A327960(n%#+1)+n+1]`
-/

namespace A347094.P11528398006042955773
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (A327960 (n % d + 1) + (n + 1 : ℤ))

end

end A347094.P11528398006042955773

namespace A347094

/-- `∑{d}[n+1, A327960(n%#+1)+n+1]` -/
def P11528398006042955773.Spec : Prop :=
  ∀ n, P11528398006042955773.a n = A347094 (n + 1)

end A347094

/-! ## A347094.P838408551489446365

`(n+1)*(A007427(n+1)+A000005(n+1))`
-/

namespace A347094.P838408551489446365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A007427 (n + 1) + A000005 (n + 1))

end

end A347094.P838408551489446365

namespace A347094

/-- `(n+1)*(A007427(n+1)+A000005(n+1))` -/
def P838408551489446365.Spec : Prop :=
  ∀ n, P838408551489446365.a n = A347094 (n + 1)

theorem P838408551489446365.correct : P838408551489446365.Spec := by
  intro n
  simp only [A347094, Nat.add_sub_cancel, A347094.P838408551489446365.a, A347094.P17942219228521589400.a, A000005, A000005.P16091521709108585461.a, A007427, A007427.P16363569186413612215.f1, A007427.P16363569186413612215.a, A038040, A038040.P16512896840577774730.a, A328722, A328722.P2205346375960215536.a, A008683, A008683.P18254306604665478110.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A132971, A132971.P9197609016375066540.a, A156552, A156552.P4268073137713085227.a, A005941, A005941.P9595689460679922607.f1, A005941.P9595689460679922607.a, A085357, A085357.P3258697467278337073.a, A106400, A106400.P11201390576172776043.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A347094

/-! ## A347094.P202176604508301196

`A038040(n+1)+(n+1)*A007427(n+1)`
-/

namespace A347094.P202176604508301196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038040 (n + 1) + (n + 1 : ℤ) * A007427 (n + 1)

end

end A347094.P202176604508301196

namespace A347094

/-- `A038040(n+1)+(n+1)*A007427(n+1)` -/
def P202176604508301196.Spec : Prop :=
  ∀ n, P202176604508301196.a n = A347094 (n + 1)

end A347094

/-! ## A347094.P9962381368481833776

`(n+1)*A349913(A003961(n+1))`
-/

namespace A347094.P9962381368481833776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A349913 (A003961 (n + 1)).toNat

end

end A347094.P9962381368481833776

namespace A347094

/-- `(n+1)*A349913(A003961(n+1))` -/
def P9962381368481833776.Spec : Prop :=
  ∀ n, P9962381368481833776.a n = A347094 (n + 1)

end A347094

/-!
# A347095: Sum of Pillai's arithmetical function (A018804) and its Dirichlet inverse.

The programs for A347095, the canonical program `A347095.P13848354769774225057` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A347095 has offset 1).

The definition of A347095 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A018804, A101035, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A347095.P13848354769774225057

`A018804(n+1)+A101035(n+1)`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A347095

/-- `A018804(n+1)+A101035(n+1)` -/
def P13848354769774225057.Spec : Prop :=
  ∀ n, P13848354769774225057.a n = A347095 (n + 1)

theorem P13848354769774225057.correct : P13848354769774225057.Spec := by
  intro n
  simp only [A347095, Nat.add_sub_cancel]

end A347095

/-! ## A347095.P17095713432188389896

`A101035(n+1)+Δ[A209981(n)/32]`
-/

namespace A347095.P17095713432188389896
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A209981 n : ℚ) / 32

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A101035 (n + 1) : ℚ) + (f1 (n + 1) - f1 n)

end

end A347095.P17095713432188389896

namespace A347095

/-- `A101035(n+1)+Δ[A209981(n)/32]` -/
def P17095713432188389896.Spec : Prop :=
  ∀ n, P17095713432188389896.a n = (A347095 (n + 1) : ℚ)

end A347095

/-! ## A347095.P11724237731178807951

`A101035(n+1)+∑[Δ[A209295(n)]-1]`
-/

namespace A347095.P11724237731178807951
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209295 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101035 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A347095.P11724237731178807951

namespace A347095

/-- `A101035(n+1)+∑[Δ[A209295(n)]-1]` -/
def P11724237731178807951.Spec : Prop :=
  ∀ n, P11724237731178807951.a n = A347095 (n + 1)

end A347095

/-! ## A347095.P8049880701006849864

`A101035(n+1)+A006579(n+1)+1+n`
-/

namespace A347095.P8049880701006849864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101035 (n + 1) + (A006579 (n + 1) + 1 + (n : ℤ))

end

end A347095.P8049880701006849864

namespace A347095

/-- `A101035(n+1)+A006579(n+1)+1+n` -/
def P8049880701006849864.Spec : Prop :=
  ∀ n, P8049880701006849864.a n = A347095 (n + 1)

theorem P8049880701006849864.correct : P8049880701006849864.Spec := by
  intro n
  simp only [A347095, Nat.add_sub_cancel, A347095.P8049880701006849864.a, A347095.P13848354769774225057.a, A006579, A006579.P17134374714227435969.a, A018804, A018804.P15177010680010264719.f1, A018804.P15177010680010264719.a, A101035, A101035.P3462403393033249231.f1, A101035.P3462403393033249231.a, A007427, A007427.P16363569186413612215.f1, A007427.P16363569186413612215.a, A007429, A007429.P3226404755406933578.f1, A007429.P3226404755406933578.a, A007432, A007432.P16663120023730915232.f1, A007432.P16663120023730915232.a, A001065, A001065.P4097147489331274860.a, A007428, A007428.P12532017655611739201.f1, A007428.P12532017655611739201.a, A008683, A008683.P18254306604665478110.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A132971, A132971.P9197609016375066540.a, A156552, A156552.P4268073137713085227.a, A247343, A247343.P16054937885260863727.f1, A247343.P16054937885260863727.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A347095

/-! ## A347095.P5117729762362412885

`A101035(n+1)+A209295(n+1)-(n+1)`
-/

namespace A347095.P5117729762362412885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101035 (n + 1) + (A209295 (n + 1) - (n + 1 : ℤ))

end

end A347095.P5117729762362412885

namespace A347095

/-- `A101035(n+1)+A209295(n+1)-(n+1)` -/
def P5117729762362412885.Spec : Prop :=
  ∀ n, P5117729762362412885.a n = A347095 (n + 1)

end A347095

/-! ## A347095.P3223374859057513147

`A101035(n+1)+(n+1)²-A344485(n+1)`
-/

namespace A347095.P3223374859057513147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101035 (n + 1) + (((n + 1) ^ 2 : ℤ) - A344485 (n + 1))

end

end A347095.P3223374859057513147

namespace A347095

/-- `A101035(n+1)+(n+1)²-A344485(n+1)` -/
def P3223374859057513147.Spec : Prop :=
  ∀ n, P3223374859057513147.a n = A347095 (n + 1)

theorem P3223374859057513147.correct : P3223374859057513147.Spec := by
  intro n
  simp only [A347095, Nat.add_sub_cancel, A347095.P3223374859057513147.a, A347095.P13848354769774225057.a, A018804, A018804.P15177010680010264719.f1, A018804.P15177010680010264719.a, A101035, A101035.P3462403393033249231.f1, A101035.P3462403393033249231.a, A344485, A344485.P2345228522684995315.a, A000290, A000290.P12206242496348924484.a, A007427, A007427.P16363569186413612215.f1, A007427.P16363569186413612215.a, A007429, A007429.P3226404755406933578.f1, A007429.P3226404755406933578.a, A007432, A007432.P16663120023730915232.f1, A007432.P16663120023730915232.a, A001065, A001065.P4097147489331274860.a, A007428, A007428.P12532017655611739201.f1, A007428.P12532017655611739201.a, A008683, A008683.P18254306604665478110.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A132971, A132971.P9197609016375066540.a, A156552, A156552.P4268073137713085227.a, A247343, A247343.P16054937885260863727.f1, A247343.P16054937885260863727.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A347095

/-! ## A347095.P13665917091991845488

`A029935(n+1)+A101035(n+1)+A063754(n+1)`
-/

namespace A347095.P13665917091991845488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029935 (n + 1) + (A101035 (n + 1) + A063754 (n + 1))

end

end A347095.P13665917091991845488

namespace A347095

/-- `A029935(n+1)+A101035(n+1)+A063754(n+1)` -/
def P13665917091991845488.Spec : Prop :=
  ∀ n, P13665917091991845488.a n = A347095 (n + 1)

theorem P13665917091991845488.correct : P13665917091991845488.Spec := by
  intro n
  simp only [A347095, Nat.add_sub_cancel, A347095.P13665917091991845488.a, A347095.P13848354769774225057.a, A018804, A018804.P15177010680010264719.f1, A018804.P15177010680010264719.a, A029935, A029935.P1636467149315566281.f1, A029935.P1636467149315566281.a, A063754, A063754.P8530571032129736586.a, A101035, A101035.P3462403393033249231.f1, A101035.P3462403393033249231.a, A000010, A000010.P4673923239450215316.a, A007427, A007427.P16363569186413612215.f1, A007427.P16363569186413612215.a, A007429, A007429.P3226404755406933578.f1, A007429.P3226404755406933578.a, A007432, A007432.P16663120023730915232.f1, A007432.P16663120023730915232.a, A001065, A001065.P4097147489331274860.a, A003557, A003557.P6364735403900941810.a, A007428, A007428.P12532017655611739201.f1, A007428.P12532017655611739201.a, A008683, A008683.P18254306604665478110.a, A173557, A173557.P15666735857375843373.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A001221, A001221.P10258181745752134128.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A023900, A023900.P6802385856234332486.f1, A023900.P6802385856234332486.a, A132971, A132971.P9197609016375066540.a, A156552, A156552.P4268073137713085227.a, A247343, A247343.P16054937885260863727.f1, A247343.P16054937885260863727.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A347095

/-! ## A347095.P8219596481741842978

`A101035(n+1)+A349131(n+1)+A348981(n+1)`
-/

namespace A347095.P8219596481741842978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101035 (n + 1) + (A349131 (n + 1) + A348981 (n + 1))

end

end A347095.P8219596481741842978

namespace A347095

/-- `A101035(n+1)+A349131(n+1)+A348981(n+1)` -/
def P8219596481741842978.Spec : Prop :=
  ∀ n, P8219596481741842978.a n = A347095 (n + 1)

theorem P8219596481741842978.correct : P8219596481741842978.Spec := by
  intro n
  simp only [A347095, Nat.add_sub_cancel, A347095.P8219596481741842978.a, A347095.P13848354769774225057.a, A018804, A018804.P15177010680010264719.f1, A018804.P15177010680010264719.a, A101035, A101035.P3462403393033249231.f1, A101035.P3462403393033249231.a, A348981, A348981.P12574129807038690460.f1, A348981.P12574129807038690460.a, A349131, A349131.P8964480584891997283.a, A007427, A007427.P16363569186413612215.f1, A007427.P16363569186413612215.a, A007429, A007429.P3226404755406933578.f1, A007429.P3226404755406933578.a, A007432, A007432.P16663120023730915232.f1, A007432.P16663120023730915232.a, A008683, A008683.P18254306604665478110.a, A348980, A348980.P7651113664669267661.f1, A348980.P7651113664669267661.a, A001065, A001065.P4097147489331274860.a, A007428, A007428.P12532017655611739201.f1, A007428.P12532017655611739201.a, A132971, A132971.P9197609016375066540.a, A156552, A156552.P4268073137713085227.a, A322582, A322582.P8560399753878851377.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A003958, A003958.P196685604458257440.a, A005941, A005941.P9595689460679922607.f1, A005941.P9595689460679922607.a, A085357, A085357.P3258697467278337073.a, A106400, A106400.P11201390576172776043.a, A247343, A247343.P16054937885260863727.f1, A247343.P16054937885260863727.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A347095

/-! ## A347095.P1899579709318402076

`A101035(n+1)+A349171(n+1)-A349141(n+1)`
-/

namespace A347095.P1899579709318402076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101035 (n + 1) + (A349171 (n + 1) - A349141 (n + 1))

end

end A347095.P1899579709318402076

namespace A347095

/-- `A101035(n+1)+A349171(n+1)-A349141(n+1)` -/
def P1899579709318402076.Spec : Prop :=
  ∀ n, P1899579709318402076.a n = A347095 (n + 1)

theorem P1899579709318402076.correct : P1899579709318402076.Spec := by
  intro n
  simp only [A347095, Nat.add_sub_cancel, A347095.P1899579709318402076.a, A347095.P13848354769774225057.a, A018804, A018804.P15177010680010264719.f1, A018804.P15177010680010264719.a, A101035, A101035.P3462403393033249231.f1, A101035.P3462403393033249231.a, A349141, A349141.P2326115559744657206.f1, A349141.P2326115559744657206.a, A349171, A349171.P4420363583333488221.a, A007427, A007427.P16363569186413612215.f1, A007427.P16363569186413612215.a, A007429, A007429.P3226404755406933578.f1, A007429.P3226404755406933578.a, A007432, A007432.P16663120023730915232.f1, A007432.P16663120023730915232.a, A348971, A348971.P11156141318395468406.a, A000010, A000010.P4673923239450215316.a, A001065, A001065.P4097147489331274860.a, A003968, A003968.P10961526323602588276.a, A007428, A007428.P12532017655611739201.f1, A007428.P12532017655611739201.a, A008683, A008683.P18254306604665478110.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A001615, A001615.P12078511981713404634.a, A003557, A003557.P6364735403900941810.a, A132971, A132971.P9197609016375066540.a, A156552, A156552.P4268073137713085227.a, A167338, A167338.P17492942069736666981.f1, A167338.P17492942069736666981.a, A173557, A173557.P15666735857375843373.a, A247343, A247343.P16054937885260863727.f1, A247343.P16054937885260863727.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A347095

/-! ## A347095.P15147502644603029085

`A101035(n+1)+A003557(n+1)*A347128(n+1)`
-/

namespace A347095.P15147502644603029085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101035 (n + 1) + A003557 (n + 1) * A347128 (n + 1)

end

end A347095.P15147502644603029085

namespace A347095

/-- `A101035(n+1)+A003557(n+1)*A347128(n+1)` -/
def P15147502644603029085.Spec : Prop :=
  ∀ n, P15147502644603029085.a n = A347095 (n + 1)

end A347095

/-!
# A347096: a(1) = 1; a(n) = -Sum_{d|n, d < n} A341512(n/d) * a(d), where A341512(n) = sigma(n)*A003961(n) - n*sigma(A003961(n)).

The programs for A347096, there is no canonical definition to state claims against.
-/

/-! ## A347096.P10906231120831168782

`A347097(n+1)-A341512(A028310(n)+1)`
-/

namespace A347096.P10906231120831168782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347097 (n + 1) - A341512 (A028310 n + 1).toNat

end

end A347096.P10906231120831168782

/-! ## A347096.P11488813828012043846

`A347097(n+1)-(A341512(n+1)+A063524(n+1))`
-/

namespace A347096.P11488813828012043846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347097 (n + 1) - (A341512 (n + 1) + A063524 (n + 1))

end

end A347096.P11488813828012043846

/-! ## A347096.P17489065186338117196

`A347097(n+1)-A028310(A341529(n+1)-(n+1)*A003973(n+1))`
-/

namespace A347096.P17489065186338117196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347097 (n + 1) - A028310 (A341529 (n + 1) - (n + 1 : ℤ) * A003973 (n + 1)).toNat

end

end A347096.P17489065186338117196

/-!
# A347097: a(1) = 2; and for n > 1, a(n) = A341512(n) + A347096(n).

The programs for A347097, there is no canonical definition to state claims against.
-/

/-! ## A347097.P11760412449614231103

`A347096(n+1)+A341512(A028310(n)+1)`
-/

namespace A347097.P11760412449614231103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347096 (n + 1) + A341512 (A028310 n + 1).toNat

end

end A347097.P11760412449614231103

/-! ## A347097.P17138326551596414522

`A063524(n+1)+A347096(n+1)+A341512(n+1)`
-/

namespace A347097.P17138326551596414522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063524 (n + 1) + (A347096 (n + 1) + A341512 (n + 1))

end

end A347097.P17138326551596414522

/-! ## A347097.P12121807306550024318

`A347096(n+1)+A028310(A341529(n+1)-A341528(n+1))`
-/

namespace A347097.P12121807306550024318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347096 (n + 1) + A028310 (A341529 (n + 1) - A341528 (n + 1)).toNat

end

end A347097.P12121807306550024318

/-! ## A347097.P11728681315318968849

`A347096(n+1)+A028310(A341529(n+1)-(n+1)*A003973(n+1))`
-/

namespace A347097.P11728681315318968849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347096 (n + 1) + A028310 (A341529 (n + 1) - (n + 1 : ℤ) * A003973 (n + 1)).toNat

end

end A347097.P11728681315318968849

/-!
# A347098: a(1) = 1; a(n) = -Sum_{d|n, d < n} A336853(n/d) * a(d), where A336853(n) = A003961(n) - n.

The programs for A347098, there is no canonical definition to state claims against.
-/

/-! ## A347098.P6258886721539343021

`A347099(n+1)-(A336853(n+1)+A000007(n))`
-/

namespace A347098.P6258886721539343021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347099 (n + 1) - (A336853 (n + 1) + A000007 n)

end

end A347098.P6258886721539343021

/-! ## A347098.P11554951252243853048

`A347099((A000007(n)+1)²+n)-(A253885(n)-n)`
-/

namespace A347098.P11554951252243853048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347099 ((A000007 n + 1) ^ 2 + (n : ℤ)).toNat - (A253885 n - (n : ℤ))

end

end A347098.P11554951252243853048

/-! ## A347098.P2092247940620550404

`A347099(n+1)-(A336853(n+1)+A063524(n+1))`
-/

namespace A347098.P2092247940620550404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347099 (n + 1) - (A336853 (n + 1) + A063524 (n + 1))

end

end A347098.P2092247940620550404

/-! ## A347098.P15314326563244276678

`A347099(n+1)-A028310(A336853(n+1))`
-/

namespace A347098.P15314326563244276678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347099 (n + 1) - A028310 (A336853 (n + 1)).toNat

end

end A347098.P15314326563244276678

/-! ## A347098.P14997951715521137055

`A347099(n+1)+n-A028310(A253885(n))`
-/

namespace A347098.P14997951715521137055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347099 (n + 1) + ((n : ℤ) - A028310 (A253885 n).toNat)

end

end A347098.P14997951715521137055

/-! ## A347098.P7346150889854345024

`A347099(n+1)-A085229(A253885(n)+1)+n`
-/

namespace A347098.P7346150889854345024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347099 (n + 1) - A085229 (A253885 n + 1).toNat + (n : ℤ)

end

end A347098.P7346150889854345024

/-! ## A347098.P12655224749082040410

`A347099(n+1)-A028310(∑{d}[n+1, A347100(#)])`
-/

namespace A347098.P12655224749082040410
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347099 (n + 1) - A028310 (∑ d ∈ Nat.divisors (f1 n), A347100 d).toNat

end

end A347098.P12655224749082040410

/-! ## A347098.P18325191972068824110

`A347099(n+1)-A028310(A297166(2*(n+1))-(n+1))`
-/

namespace A347098.P18325191972068824110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347099 (n + 1) - A028310 (A297166 (2 * (n + 1)) - (n + 1 : ℤ)).toNat

end

end A347098.P18325191972068824110

/-! ## A347098.P8935714399570766661

`A347099(n+1)-A028310(2*A249820(2*(n+1))+n)`
-/

namespace A347098.P8935714399570766661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347099 (n + 1) - A028310 (2 * A249820 (2 * (n + 1)) + (n : ℤ)).toNat

end

end A347098.P8935714399570766661

/-! ## A347098.P14242340090905968163

`A347099(n+1)-A028310(2*(A048673(n+1)-(n+1))+n)`
-/

namespace A347098.P14242340090905968163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347099 (n + 1) - A028310 (2 * (A048673 (n + 1) - (n + 1 : ℤ)) + (n : ℤ)).toNat

end

end A347098.P14242340090905968163

/-!
# A347099: a(1) = 2; and for n > 1, a(n) = A336853(n) + A347098(n).

The programs for A347099, there is no canonical definition to state claims against.
-/

/-! ## A347099.P139712395129029267

`A063524(n+1)+A347098(n+1)+A336853(n+1)`
-/

namespace A347099.P139712395129029267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063524 (n + 1) + (A347098 (n + 1) + A336853 (n + 1))

end

end A347099.P139712395129029267

/-! ## A347099.P14280415063216191468

`A347098(n+1)+A028310(A336853(n+1))`
-/

namespace A347099.P14280415063216191468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347098 (n + 1) + A028310 (A336853 (n + 1)).toNat

end

end A347099.P14280415063216191468

/-! ## A347099.P15632763935771458684

`A347098(n+1)+A028310(A253885(n)-n)`
-/

namespace A347099.P15632763935771458684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347098 (n + 1) + A028310 (A253885 n - (n : ℤ)).toNat

end

end A347099.P15632763935771458684

/-! ## A347099.P4136992275075030857

`A347098(n+1)+A028310(∑{d}[n+1, A347100(#)])`
-/

namespace A347099.P4136992275075030857
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347098 (n + 1) + A028310 (∑ d ∈ Nat.divisors (f1 n), A347100 d).toNat

end

end A347099.P4136992275075030857

/-! ## A347099.P3982084494920304055

`A347098(n+1)+A028310(Δ[A252749(n)]+1+n)`
-/

namespace A347099.P3982084494920304055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252749 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347098 (n + 1) + A028310 (f1 (n + 1) - f1 n + 1 + (n : ℤ)).toNat

end

end A347099.P3982084494920304055

/-! ## A347099.P9733446032029166517

`A347098(n+1)+A028310(A252748(n+1)+1+n)`
-/

namespace A347099.P9733446032029166517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347098 (n + 1) + A028310 (A252748 (n + 1) + 1 + (n : ℤ)).toNat

end

end A347099.P9733446032029166517

/-! ## A347099.P6950239886574346351

`A347098(n+1)+A028310(A297166(2*(n+1))-(n+1))`
-/

namespace A347099.P6950239886574346351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347098 (n + 1) + A028310 (A297166 (2 * (n + 1)) - (n + 1 : ℤ)).toNat

end

end A347099.P6950239886574346351

/-! ## A347099.P7854189766581024695

`A347098(n+1)+A028310(2*A249820(2*(n+1))+n)`
-/

namespace A347099.P7854189766581024695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347098 (n + 1) + A028310 (2 * A249820 (2 * (n + 1)) + (n : ℤ)).toNat

end

end A347099.P7854189766581024695

/-! ## A347099.P9173225315689310820

`A347098(n+1)+A028310(2*(A048673(n+1)-(n+1))+n)`
-/

namespace A347099.P9173225315689310820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347098 (n + 1) + A028310 (2 * (A048673 (n + 1) - (n + 1 : ℤ)) + (n : ℤ)).toNat

end

end A347099.P9173225315689310820

