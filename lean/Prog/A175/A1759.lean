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
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C035
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C042
import Seq.B000.C044
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
import Seq.B001.C010
import Seq.B001.C012
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
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C004
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
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
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A175900: Number of lattice paths from (0,0) to (n,n) using steps S={(k,0),(0,k),(1,1)|0<k<=4} which never go above the line y=x.

The programs for A175900, there is no canonical definition to state claims against.
-/

/-! ## A175900.P17360808744712714582

`∏{e}[17^n, A175912(#)]`
-/

namespace A175900.P17360808744712714582
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A175912 (Nat.factorization (f1 n) p)

end

end A175900.P17360808744712714582

/-!
# A175903: Numbers n such that there is another number k such that n^2-1 and k^2-1 have the same set of prime factors.

The programs for A175903, there is no canonical definition to state claims against.
-/

/-! ## A175903.P12109706914576717002

`lt[A171013(n+1), A000203(A301331(n))]`
-/

namespace A175903.P12109706914576717002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171013 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A301331 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A175903.P12109706914576717002

/-! ## A175903.P10812485681744165303

`lt[A161942(A308951(n)), A130348(n)]`
-/

namespace A175903.P10812485681744165303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161942 (A308951 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130348 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A175903.P10812485681744165303

/-! ## A175903.P15083378082265409582

`lt[A320305(2*n), A349462(A093848(n+1))]`
-/

namespace A175903.P15083378082265409582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320305 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349462 (A093848 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A175903.P15083378082265409582

/-! ## A175903.P9436686167441389894

`lt[A335405(n), A029382(A344979(2*(n+2)))]`
-/

namespace A175903.P9436686167441389894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335405 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029382 (A344979 (2 * (n + 2))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A175903.P9436686167441389894

/-! ## A175903.P15222744929370764895

`eq[1, A257000(n)+A093314(n+1)]`
-/

namespace A175903.P15222744929370764895
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257000 n + A093314 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A175903.P15222744929370764895

/-!
# A175904: Numbers m for which the set of prime divisors of m^2-1 is unique.

The programs for A175904, there is no canonical definition to state claims against.
-/

/-! ## A175904.P8980981206571444355

`lt[A087088(n+1), A102098(A020639(n+1))]`
-/

namespace A175904.P8980981206571444355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087088 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102098 (A020639 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A175904.P8980981206571444355

/-! ## A175904.P8620487559938929113

`lt[A126890(A024916(3*(n+1))), A006863(n)]`
-/

namespace A175904.P8620487559938929113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126890 (A024916 (3 * (n + 1))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006863 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A175904.P8620487559938929113

/-! ## A175904.P8655798383388856976

`lt[A061395(A322148(n)), A018783(n)]`
-/

namespace A175904.P8655798383388856976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A322148 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018783 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A175904.P8655798383388856976

/-! ## A175904.P2472666723616548133

`eq[A014823(A014813(n+1)), A091685(n)]`
-/

namespace A175904.P2472666723616548133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014823 (A014813 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091685 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A175904.P2472666723616548133

/-! ## A175904.P13787989524752829728

`eq[A014823(A014813(n+1)), A134667(n)]`
-/

namespace A175904.P13787989524752829728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014823 (A014813 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134667 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A175904.P13787989524752829728

/-!
# A175905: Numbers n such that n = 4*(2*i+1)+1 and 2^(n-2) == 1 (mod (2*i+1)).

The programs for A175905, there is no canonical definition to state claims against.
-/

/-! ## A175905.P16558937846587861855

`2*A347908(n+1)+1`
-/

namespace A175905.P16558937846587861855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A347908 (n + 1) + 1

end

end A175905.P16558937846587861855

/-! ## A175905.P6640268520353910796

`1+4*A347907(n+1)`
-/

namespace A175905.P6640268520353910796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + 4 * A347907 (n + 1)

end

end A175905.P6640268520353910796

/-! ## A175905.P17981287232573315698

`A347908(A000027(n+1))+A347908(n+1)+1`
-/

namespace A175905.P17981287232573315698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347908 (A000027 (n + 1)).toNat + (A347908 (n + 1) + 1)

end

end A175905.P17981287232573315698

/-! ## A175905.P10192217186285639366

`A347908(A069782(n+1))+A347908(n+1)+1`
-/

namespace A175905.P10192217186285639366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347908 (A069782 (n + 1)).toNat + (A347908 (n + 1) + 1)

end

end A175905.P10192217186285639366

/-! ## A175905.P15093142494747829151

`lcm(A004018(A006519(n+1)), A347907(n+1))+1`
-/

namespace A175905.P15093142494747829151
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A004018 (A006519 (n + 1)).toNat) (A347907 (n + 1)) + 1

end

end A175905.P15093142494747829151

/-! ## A175905.P7763457146242287176

`A347908(n+1)+A347908(n+1)+A160338(n+1)`
-/

namespace A175905.P7763457146242287176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347908 (n + 1) + (A347908 (n + 1) + A160338 (n + 1))

end

end A175905.P7763457146242287176

/-! ## A175905.P14309729577754785798

`or(A347908(n+1)+A347908(n+1), A133707(n+1))`
-/

namespace A175905.P14309729577754785798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A347908 (n + 1) + A347908 (n + 1)) (A133707 (n + 1))

end

end A175905.P14309729577754785798

/-! ## A175905.P3019338004949911226

`A347908(n+1)+or(A144437(n+1), A347908(n+1))`
-/

namespace A175905.P3019338004949911226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347908 (n + 1) + Int.lor (A144437 (n + 1)) (A347908 (n + 1))

end

end A175905.P3019338004949911226

/-!
# A175906: Numbers n of the form 2^(A000043-1)*A046528 such that sigma(n) is a perfect number.

The programs for A175906, there is no canonical definition to state claims against.
-/

/-! ## A175906.P9235627990609454379

`∏{p}[A247838(n+1), #²+#]`
-/

namespace A175906.P9235627990609454379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247838 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (p ^ 2 + p)

end

end A175906.P9235627990609454379

/-!
# A175907: Known friendly squarefree numbers.

The programs for A175907, there is no canonical definition to state claims against.
-/

/-! ## A175907.P15419193582843451146

`record[A325314(A074902(n+1))]`
-/

namespace A175907.P15419193582843451146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325314 (A074902 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A175907.P15419193582843451146

/-! ## A175907.P12909096453867775921

`filter[A074902(n+1), A008966(#)]`
-/

namespace A175907.P12909096453867775921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074902 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A175907.P12909096453867775921

/-! ## A175907.P16957701327764578777

`filter[A074902(n+1), A319786(#)]`
-/

namespace A175907.P16957701327764578777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074902 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A319786 (f1 j).toNat = 1) n)

end

end A175907.P16957701327764578777

/-! ## A175907.P11256184501168894083

`filter[A074902(n+1), A323511(#)]`
-/

namespace A175907.P11256184501168894083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074902 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323511 (f1 j).toNat = 1) n)

end

end A175907.P11256184501168894083

/-! ## A175907.P2848608802709536263

`filter[A074902(n+1), A354353(#)]`
-/

namespace A175907.P2848608802709536263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074902 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354353 (f1 j).toNat = 1) n)

end

end A175907.P2848608802709536263

/-!
# A175908: 3*sum(k=1..n, floor(k^2/n)) - n^2.

The programs for A175908, the canonical program `A175908.P12009986140665999706` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A175908 has offset 1).

The definition of A175908 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A175908.P12009986140665999706

`3*A014817(n+1)-A000290(n+1)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A175908

/-- `3*A014817(n+1)-A000290(n+1)` -/
def P12009986140665999706.Spec : Prop :=
  ∀ n, P12009986140665999706.a n = A175908 (n + 1)

theorem P12009986140665999706.correct : P12009986140665999706.Spec := by
  intro n
  simp only [A175908, Nat.add_sub_cancel]

end A175908

/-! ## A175908.P17692958796324515331

`3*A014817(n+1)-(n+1)²`
-/

namespace A175908.P17692958796324515331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A014817 (n + 1) - ((n + 1) ^ 2 : ℤ)

end

end A175908.P17692958796324515331

namespace A175908

/-- `3*A014817(n+1)-(n+1)²` -/
def P17692958796324515331.Spec : Prop :=
  ∀ n, P17692958796324515331.a n = A175908 (n + 1)

theorem P17692958796324515331.correct : P17692958796324515331.Spec := by
  intro n
  simp only [A175908, Nat.add_sub_cancel, A175908.P17692958796324515331.a, A175908.P12009986140665999706.a, A000290, A000290.P12206242496348924484.a, A014817, A014817.P4203490927317600068.f1, A014817.P4203490927317600068.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A175908

/-! ## A175908.P3856278283802307091

`3*A014817(n+1)+n-∑[A103517(n)]`
-/

namespace A175908.P3856278283802307091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A014817 (n + 1) + (n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A175908.P3856278283802307091

namespace A175908

/-- `3*A014817(n+1)+n-∑[A103517(n)]` -/
def P3856278283802307091.Spec : Prop :=
  ∀ n, P3856278283802307091.a n = A175908 (n + 1)

end A175908

/-! ## A175908.P15340870981651201117

`A008486(A014817(n+1))-(n+1)²`
-/

namespace A175908.P15340870981651201117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A014817 (n + 1)).toNat - ((n + 1) ^ 2 : ℤ)

end

end A175908.P15340870981651201117

namespace A175908

/-- `A008486(A014817(n+1))-(n+1)²` -/
def P15340870981651201117.Spec : Prop :=
  ∀ n, P15340870981651201117.a n = A175908 (n + 1)

end A175908

/-! ## A175908.P5472062071436021645

`A002260(3*A014817(n+1)-A000217(n))`
-/

namespace A175908.P5472062071436021645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (3 * A014817 (n + 1) - A000217 n).toNat

end

end A175908.P5472062071436021645

namespace A175908

/-- `A002260(3*A014817(n+1)-A000217(n))` -/
def P5472062071436021645.Spec : Prop :=
  ∀ n, P5472062071436021645.a n = A175908 (n + 1)

end A175908

/-! ## A175908.P1536324365775706401

`A004737(3*A014817(n+1))`
-/

namespace A175908.P1536324365775706401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004737 (3 * A014817 (n + 1)).toNat

end

end A175908.P1536324365775706401

namespace A175908

/-- `A004737(3*A014817(n+1))` -/
def P1536324365775706401.Spec : Prop :=
  ∀ n, P1536324365775706401.a n = A175908 (n + 1)

end A175908

/-! ## A175908.P13352700533535145138

`A053186(3*A014817(n+1))`
-/

namespace A175908.P13352700533535145138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053186 (3 * A014817 (n + 1)).toNat

end

end A175908.P13352700533535145138

namespace A175908

/-- `A053186(3*A014817(n+1))` -/
def P13352700533535145138.Spec : Prop :=
  ∀ n, P13352700533535145138.a n = A175908 (n + 1)

end A175908

/-! ## A175908.P13330622800266271717

`A194258(3*A014817(n+1))`
-/

namespace A175908.P13330622800266271717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194258 (3 * A014817 (n + 1)).toNat

end

end A175908.P13330622800266271717

namespace A175908

/-- `A194258(3*A014817(n+1))` -/
def P13330622800266271717.Spec : Prop :=
  ∀ n, P13330622800266271717.a n = A175908 (n + 1)

end A175908

/-!
# A175911: Concatenate the run lengths of the runs of ones and zeros in the binary representation of n in the lowest possible base where it is possible to represent each run length as a single digit. Convert the result to base 10.

The programs for A175911, there is no canonical definition to state claims against.
-/

/-! ## A175911.P9567169292212960685

`A068505(A318927(n+1))`
-/

namespace A175911.P9567169292212960685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068505 (A318927 (n + 1)).toNat

end

end A175911.P9567169292212960685

/-! ## A175911.P17862965229370215639

`A334878(A163755(n+1))`
-/

namespace A175911.P17862965229370215639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334878 (A163755 (n + 1)).toNat

end

end A175911.P17862965229370215639

/-!
# A175913: Convert to decimal the number resulting from performing binary xnor on the corresponding digits in the left and right binary concatenations of the integers one to n.

The programs for A175913, there is no canonical definition to state claims against.
-/

/-! ## A175913.P14327245649686770328

`∑[A172310(A018012(n))]`
-/

namespace A175913.P14327245649686770328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172310 (A018012 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A175913.P14327245649686770328

/-!
# A175914: Primes p such that p+2*q is prime, where q is the prime after p.

The programs for A175914, there is no canonical definition to state claims against.
-/

/-! ## A175914.P1843221215889239880

`A000040(A396898(n+1))`
-/

namespace A175914.P1843221215889239880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A396898 (n + 1)).toNat

end

end A175914.P1843221215889239880

/-! ## A175914.P7308808260760703617

`A114235(A396898(n+1)+1)`
-/

namespace A175914.P7308808260760703617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114235 (A396898 (n + 1) + 1).toNat

end

end A175914.P7308808260760703617

/-! ## A175914.P1104735359807442768

`A182986(A396898(n+1)+1)`
-/

namespace A175914.P1104735359807442768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (A396898 (n + 1) + 1).toNat

end

end A175914.P1104735359807442768

/-! ## A175914.P17158869712556894225

`A000040(eq[1, A114236(n+3)]+2)`
-/

namespace A175914.P17158869712556894225
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114236 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2)

end

end A175914.P17158869712556894225

/-! ## A175914.P14408357624269797171

`A114235(eq[1, A114236(n+3)]+3)`
-/

namespace A175914.P14408357624269797171
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114236 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114235 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 3)

end

end A175914.P14408357624269797171

/-! ## A175914.P3736820728162652364

`record[gcd(A000040(n+2), A114235(n+3))]`
-/

namespace A175914.P3736820728162652364
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000040 (n + 2)) (A114235 (n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A175914.P3736820728162652364

/-! ## A175914.P10483915102151788809

`record[(2-A114263(n+2))*A000040(n+2)]`
-/

namespace A175914.P10483915102151788809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A114263 (n + 2)) * A000040 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A175914.P10483915102151788809

/-! ## A175914.P15807922365542571534

`record[(2-A114263(n+2))*A114235(n+3)]`
-/

namespace A175914.P15807922365542571534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A114263 (n + 2)) * A114235 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A175914.P15807922365542571534

/-! ## A175914.P14054989898884100994

`A114235(eq[A000040(n+2), A114235(n+3)]+3)`
-/

namespace A175914.P14054989898884100994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114235 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114235 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 3)

end

end A175914.P14054989898884100994

/-! ## A175914.P17702241594444729846

`p?[A114235(n+3)*A114236(n+3)]`
-/

namespace A175914.P17702241594444729846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114235 (n + 3) * A114236 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A175914.P17702241594444729846

/-! ## A175914.P6702019127747450049

`p?[A114235(n+3)*A114263(n+2)]`
-/

namespace A175914.P6702019127747450049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114235 (n + 3) * A114263 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A175914.P6702019127747450049

/-!
# A175917: Convert n to binary. NOR each respective digit of binary n and binary A030101(n), where A030101(n) is the reversal of the order of the digits in the binary representation of n (given in decimal). a(n) is the decimal value of the result.

The programs for A175917, the canonical program `A175917.P5961217577201396990` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A175917 has offset 0).

The definition of A175917 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A175917.P15595600545407686498

`or(n, A175920(n))-n`
-/

namespace A175917.P15595600545407686498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (A175920 n) - (n : ℤ)

end

end A175917.P15595600545407686498

namespace A175917

/-- `or(n, A175920(n))-n` -/
def P15595600545407686498.Spec : Prop :=
  ∀ n, P15595600545407686498.a n = A175917 n

end A175917

/-! ## A175917.P9608386414643514187

`A175918(A175298(n))`
-/

namespace A175917.P9608386414643514187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175918 (A175298 n).toNat

end

end A175917.P9608386414643514187

namespace A175917

/-- `A175918(A175298(n))` -/
def P9608386414643514187.Spec : Prop :=
  ∀ n, P9608386414643514187.a n = A175917 n

end A175917

/-! ## A175917.P9629876450500673355

`A175918(A370427(n)+n)`
-/

namespace A175917.P9629876450500673355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175918 (A370427 n + (n : ℤ)).toNat

end

end A175917.P9629876450500673355

namespace A175917

/-- `A175918(A370427(n)+n)` -/
def P9629876450500673355.Spec : Prop :=
  ∀ n, P9629876450500673355.a n = A175917 n

end A175917

/-! ## A175917.P5961217577201396990

`A003817(n)-A175298(n)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A175917

/-- `A003817(n)-A175298(n)` -/
def P5961217577201396990.Spec : Prop :=
  ∀ n, P5961217577201396990.a n = A175917 n

theorem P5961217577201396990.correct : P5961217577201396990.Spec := by
  intro n
  simp only [A175917]

end A175917

/-! ## A175917.P9715282326782911904

`A175918(n)-A175919(n)`
-/

namespace A175917.P9715282326782911904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175918 n - A175919 n

end

end A175917.P9715282326782911904

namespace A175917

/-- `A175918(n)-A175919(n)` -/
def P9715282326782911904.Spec : Prop :=
  ∀ n, P9715282326782911904.a n = A175917 n

end A175917

/-! ## A175917.P3279166938491312726

`and(A035327(n), A175920(n))`
-/

namespace A175917.P3279166938491312726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A035327 n) (A175920 n)

end

end A175917.P3279166938491312726

namespace A175917

/-- `and(A035327(n), A175920(n))` -/
def P3279166938491312726.Spec : Prop :=
  ∀ n, P3279166938491312726.a n = A175917 n

end A175917

/-! ## A175917.P15512943515226064384

`and(A036044(n), A175920(n))`
-/

namespace A175917.P15512943515226064384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A036044 n) (A175920 n)

end

end A175917.P15512943515226064384

namespace A175917

/-- `and(A036044(n), A175920(n))` -/
def P15512943515226064384.Spec : Prop :=
  ∀ n, P15512943515226064384.a n = A175917 n

end A175917

/-! ## A175917.P14674124972999551912

`and(A175918(n), A175920(n))`
-/

namespace A175917.P14674124972999551912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A175918 n) (A175920 n)

end

end A175917.P14674124972999551912

namespace A175917

/-- `and(A175918(n), A175920(n))` -/
def P14674124972999551912.Spec : Prop :=
  ∀ n, P14674124972999551912.a n = A175917 n

end A175917

/-! ## A175917.P10955068284820886223

`A062383(n)-(A175298(n)+1)`
-/

namespace A175917.P10955068284820886223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062383 n - (A175298 n + 1)

end

end A175917.P10955068284820886223

namespace A175917

/-- `A062383(n)-(A175298(n)+1)` -/
def P10955068284820886223.Spec : Prop :=
  ∀ n, P10955068284820886223.a n = A175917 n

end A175917

/-! ## A175917.P1111838354544994630

`and(A001478(n+1), A175920(n))`
-/

namespace A175917.P1111838354544994630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001478 (n + 1)) (A175920 n)

end

end A175917.P1111838354544994630

namespace A175917

/-- `and(A001478(n+1), A175920(n))` -/
def P1111838354544994630.Spec : Prop :=
  ∀ n, P1111838354544994630.a n = A175917 n

end A175917

/-! ## A175917.P12189432088507841475

`and(A010078(n+1), A175920(n))`
-/

namespace A175917.P12189432088507841475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A010078 (n + 1)) (A175920 n)

end

end A175917.P12189432088507841475

namespace A175917

/-- `and(A010078(n+1), A175920(n))` -/
def P12189432088507841475.Spec : Prop :=
  ∀ n, P12189432088507841475.a n = A175917 n

end A175917

/-! ## A175917.P4395415227297890065

`and(A080079(n+1), A175920(n))`
-/

namespace A175917.P4395415227297890065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A080079 (n + 1)) (A175920 n)

end

end A175917.P4395415227297890065

namespace A175917

/-- `and(A080079(n+1), A175920(n))` -/
def P4395415227297890065.Spec : Prop :=
  ∀ n, P4395415227297890065.a n = A175917 n

end A175917

/-! ## A175917.P10970017546356211585

`and(A175920(n), A276795(n+1))`
-/

namespace A175917.P10970017546356211585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A175920 n) (A276795 (n + 1))

end

end A175917.P10970017546356211585

namespace A175917

/-- `and(A175920(n), A276795(n+1))` -/
def P10970017546356211585.Spec : Prop :=
  ∀ n, P10970017546356211585.a n = A175917 n

end A175917

/-! ## A175917.P12759843005954993092

`A175918(xor(A175918(n), A175920(n)))`
-/

namespace A175917.P12759843005954993092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175918 (Int.xor (A175918 n) (A175920 n)).toNat

end

end A175917.P12759843005954993092

namespace A175917

/-- `A175918(xor(A175918(n), A175920(n)))` -/
def P12759843005954993092.Spec : Prop :=
  ∀ n, P12759843005954993092.a n = A175917 n

end A175917

/-! ## A175917.P13473471399876227675

`A175919(n)+A175920(n)-A175298(n)`
-/

namespace A175917.P13473471399876227675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175919 n + (A175920 n - A175298 n)

end

end A175917.P13473471399876227675

namespace A175917

/-- `A175919(n)+A175920(n)-A175298(n)` -/
def P13473471399876227675.Spec : Prop :=
  ∀ n, P13473471399876227675.a n = A175917 n

theorem P13473471399876227675.correct : P13473471399876227675.Spec := by
  intro n
  simp only [A175917, Nat.add_sub_cancel, A175917.P13473471399876227675.a, A175917.P5961217577201396990.a, A003817, A003817.P16251594020616633079.a, A175298, A175298.P14996771315134995194.a, A175919, A175919.P16217226750538166929.a, A175920, A175920.P6563318181034372295.a, A003987, A003987.P6522273903622706452.a, A030101, A030101.P16184294017372777612.a, A055945, A055945.P5963763732554067333.a, A002262, A002262.P17823619022233514403.a, A025581, A025581.P16112744757063613497.a, A038572, A038572.P6039021529582153667.a, A000035, A000035.P2023072528413494694.a, A004526, A004526.P10084182425416171735.a, A053644, A053644.P1707366427427647095.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A175917

/-! ## A175917.P14502801043091644618

`A175920(n)+A370427(n)-A030101(n)`
-/

namespace A175917.P14502801043091644618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175920 n + (A370427 n - A030101 n)

end

end A175917.P14502801043091644618

namespace A175917

/-- `A175920(n)+A370427(n)-A030101(n)` -/
def P14502801043091644618.Spec : Prop :=
  ∀ n, P14502801043091644618.a n = A175917 n

end A175917

/-! ## A175917.P2452651015511117710

`and(A175920(n), A328567(n+1))`
-/

namespace A175917.P2452651015511117710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A175920 n) (A328567 (n + 1))

end

end A175917.P2452651015511117710

namespace A175917

/-- `and(A175920(n), A328567(n+1))` -/
def P2452651015511117710.Spec : Prop :=
  ∀ n, P2452651015511117710.a n = A175917 n

end A175917

/-! ## A175917.P9436357888331709789

`or(n, A036044(2*n+1))-n`
-/

namespace A175917.P9436357888331709789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (A036044 (2 * n + 1)) - (n : ℤ)

end

end A175917.P9436357888331709789

namespace A175917

/-- `or(n, A036044(2*n+1))-n` -/
def P9436357888331709789.Spec : Prop :=
  ∀ n, P9436357888331709789.a n = A175917 n

end A175917

/-! ## A175917.P3842783643823638459

`and(A035327(n), A036044(2*n+1))`
-/

namespace A175917.P3842783643823638459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A035327 n) (A036044 (2 * n + 1))

end

end A175917.P3842783643823638459

namespace A175917

/-- `and(A035327(n), A036044(2*n+1))` -/
def P3842783643823638459.Spec : Prop :=
  ∀ n, P3842783643823638459.a n = A175917 n

end A175917

/-! ## A175917.P979849726920751125

`A036044(2*n+1)-and(n, A036044(n))`
-/

namespace A175917.P979849726920751125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036044 (2 * n + 1) - Int.land (n : ℤ) (A036044 n)

end

end A175917.P979849726920751125

namespace A175917

/-- `A036044(2*n+1)-and(n, A036044(n))` -/
def P979849726920751125.Spec : Prop :=
  ∀ n, P979849726920751125.a n = A175917 n

end A175917

/-!
# A175918: Convert n to binary. NAND each respective digit of binary n and binary A030101(n), where A030101(n) is the reversal of the order of the digits in the binary representation of n (given in decimal). a(n) is the decimal value of the result.

The programs for A175918, the canonical program `A175918.P158714506234326648` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A175918 has offset 0).

The definition of A175918 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A175918.P16559282293268243535

`A175919(n)+A175917(n)`
-/

namespace A175918.P16559282293268243535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175919 n + A175917 n

end

end A175918.P16559282293268243535

namespace A175918

/-- `A175919(n)+A175917(n)` -/
def P16559282293268243535.Spec : Prop :=
  ∀ n, P16559282293268243535.a n = A175918 n

end A175918

/-! ## A175918.P15444596649321089162

`xor(A175298(n), A175920(n))`
-/

namespace A175918.P15444596649321089162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A175298 n) (A175920 n)

end

end A175918.P15444596649321089162

namespace A175918

/-- `xor(A175298(n), A175920(n))` -/
def P15444596649321089162.Spec : Prop :=
  ∀ n, P15444596649321089162.a n = A175918 n

end A175918

/-! ## A175918.P16437099560300280135

`A003817(n)-and(n, A030101(n))`
-/

namespace A175918.P16437099560300280135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003817 n - Int.land (n : ℤ) (A030101 n)

end

end A175918.P16437099560300280135

namespace A175918

/-- `A003817(n)-and(n, A030101(n))` -/
def P16437099560300280135.Spec : Prop :=
  ∀ n, P16437099560300280135.a n = A175918 n

end A175918

/-! ## A175918.P10933200270245509752

`A003817(n)-and(n, A048701(n))`
-/

namespace A175918.P10933200270245509752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003817 n - Int.land (n : ℤ) (A048701 n)

end

end A175918.P10933200270245509752

namespace A175918

/-- `A003817(n)-and(n, A048701(n))` -/
def P10933200270245509752.Spec : Prop :=
  ∀ n, P10933200270245509752.a n = A175918 n

end A175918

/-! ## A175918.P7278199072490625697

`A003817(n)-and(n, A264618(n))`
-/

namespace A175918.P7278199072490625697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003817 n - Int.land (n : ℤ) (A264618 n)

end

end A175918.P7278199072490625697

namespace A175918

/-- `A003817(n)-and(n, A264618(n))` -/
def P7278199072490625697.Spec : Prop :=
  ∀ n, P7278199072490625697.a n = A175918 n

end A175918

/-! ## A175918.P18129264378121344956

`A003817(n)-and(n, A264619(n))`
-/

namespace A175918.P18129264378121344956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003817 n - Int.land (n : ℤ) (A264619 n)

end

end A175918.P18129264378121344956

namespace A175918

/-- `A003817(n)-and(n, A264619(n))` -/
def P18129264378121344956.Spec : Prop :=
  ∀ n, P18129264378121344956.a n = A175918 n

end A175918

/-! ## A175918.P158714506234326648

`A003817(n)-and(n, A145341(n+1))`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A175918

/-- `A003817(n)-and(n, A145341(n+1))` -/
def P158714506234326648.Spec : Prop :=
  ∀ n, P158714506234326648.a n = A175918 n

theorem P158714506234326648.correct : P158714506234326648.Spec := by
  intro n
  simp only [A175918]

end A175918

/-! ## A175918.P10599104829476499681

`A175920(A175298(n))+A175917(n)-A175920(n)`
-/

namespace A175918.P10599104829476499681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175920 (A175298 n).toNat + (A175917 n - A175920 n)

end

end A175918.P10599104829476499681

namespace A175918

/-- `A175920(A175298(n))+A175917(n)-A175920(n)` -/
def P10599104829476499681.Spec : Prop :=
  ∀ n, P10599104829476499681.a n = A175918 n

end A175918

/-! ## A175918.P14957406530360571752

`A175917(n)-(A175919(A175298(n))-A175919(n))`
-/

namespace A175918.P14957406530360571752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175917 n - (A175919 (A175298 n).toNat - A175919 n)

end

end A175918.P14957406530360571752

namespace A175918

/-- `A175917(n)-(A175919(A175298(n))-A175919(n))` -/
def P14957406530360571752.Spec : Prop :=
  ∀ n, P14957406530360571752.a n = A175918 n

end A175918

/-!
# A175919: Convert n to binary. XOR each respective digit of binary n and binary A030101(n), where A030101(n) is the reversal of the order of the digits in the binary representation of n (given in decimal). a(n) is the decimal value of the result.

The programs for A175919, the canonical program `A175919.P16217226750538166929` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A175919 has offset 0).

The definition of A175919 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003987, A030101, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A175919.P16217226750538166929

`A003987(C(n+A030101(n)+1, 2)+n)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A175919

/-- `A003987(C(n+A030101(n)+1, 2)+n)` -/
def P16217226750538166929.Spec : Prop :=
  ∀ n, P16217226750538166929.a n = A175919 n

theorem P16217226750538166929.correct : P16217226750538166929.Spec := by
  intro n
  simp only [A175919]

end A175919

/-! ## A175919.P16488849686664559913

`xor(n, A030101(n))`
-/

namespace A175919.P16488849686664559913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A030101 n)

end

end A175919.P16488849686664559913

namespace A175919

/-- `xor(n, A030101(n))` -/
def P16488849686664559913.Spec : Prop :=
  ∀ n, P16488849686664559913.a n = A175919 n

end A175919

/-! ## A175919.P14576472497231011512

`xor(n, A055944(n)-n)`
-/

namespace A175919.P14576472497231011512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A055944 n - (n : ℤ))

end

end A175919.P14576472497231011512

namespace A175919

/-- `xor(n, A055944(n)-n)` -/
def P14576472497231011512.Spec : Prop :=
  ∀ n, P14576472497231011512.a n = A175919 n

end A175919

/-! ## A175919.P9342082527365393068

`xor(n, n-A055945(n))`
-/

namespace A175919.P9342082527365393068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) ((n : ℤ) - A055945 n)

end

end A175919.P9342082527365393068

namespace A175919

/-- `xor(n, n-A055945(n))` -/
def P9342082527365393068.Spec : Prop :=
  ∀ n, P9342082527365393068.a n = A175919 n

end A175919

/-! ## A175919.P5485793456685557136

`xor(n, A264619(n)%(2*n+1))`
-/

namespace A175919.P5485793456685557136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (Int.tmod (A264619 n) (2 * n + 1 : ℤ))

end

end A175919.P5485793456685557136

namespace A175919

/-- `xor(n, A264619(n)%(2*n+1))` -/
def P5485793456685557136.Spec : Prop :=
  ∀ n, P5485793456685557136.a n = A175919 n

end A175919

/-! ## A175919.P1640997579649454710

`A175918(A175917(n)+n)`
-/

namespace A175919.P1640997579649454710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175918 (A175917 n + (n : ℤ)).toNat

end

end A175919.P1640997579649454710

namespace A175919

/-- `A175918(A175917(n)+n)` -/
def P1640997579649454710.Spec : Prop :=
  ∀ n, P1640997579649454710.a n = A175919 n

end A175919

/-! ## A175919.P18245406351653371458

`A003817(n)-A175920(n)`
-/

namespace A175919.P18245406351653371458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003817 n - A175920 n

end

end A175919.P18245406351653371458

namespace A175919

/-- `A003817(n)-A175920(n)` -/
def P18245406351653371458.Spec : Prop :=
  ∀ n, P18245406351653371458.a n = A175919 n

theorem P18245406351653371458.correct : P18245406351653371458.Spec := by
  intro n
  simp only [A175919, Nat.add_sub_cancel, A175919.P18245406351653371458.a, A175919.P16217226750538166929.a, A003817, A003817.P16251594020616633079.a, A003987, A003987.P6522273903622706452.a, A030101, A030101.P16184294017372777612.a, A175920, A175920.P6563318181034372295.a, A002262, A002262.P17823619022233514403.a, A025581, A025581.P16112744757063613497.a, A055945, A055945.P5963763732554067333.a, A038572, A038572.P6039021529582153667.a, A000035, A000035.P2023072528413494694.a, A004526, A004526.P10084182425416171735.a, A053644, A053644.P1707366427427647095.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A175919

/-! ## A175919.P12130171755047265850

`A175918(n)-A175917(n)`
-/

namespace A175919.P12130171755047265850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175918 n - A175917 n

end

end A175919.P12130171755047265850

namespace A175919

/-- `A175918(n)-A175917(n)` -/
def P12130171755047265850.Spec : Prop :=
  ∀ n, P12130171755047265850.a n = A175919 n

end A175919

/-! ## A175919.P13876602635678697130

`and(A175298(n), A175918(n))`
-/

namespace A175919.P13876602635678697130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A175298 n) (A175918 n)

end

end A175919.P13876602635678697130

namespace A175919

/-- `and(A175298(n), A175918(n))` -/
def P13876602635678697130.Spec : Prop :=
  ∀ n, P13876602635678697130.a n = A175919 n

end A175919

/-! ## A175919.P17273877781496084735

`A175918(or(n, A175917(n)))`
-/

namespace A175919.P17273877781496084735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175918 (Int.lor (n : ℤ) (A175917 n)).toNat

end

end A175919.P17273877781496084735

namespace A175919

/-- `A175918(or(n, A175917(n)))` -/
def P17273877781496084735.Spec : Prop :=
  ∀ n, P17273877781496084735.a n = A175919 n

end A175919

/-! ## A175919.P15175646593043693086

`xor(A035327(n), A036044(n))`
-/

namespace A175919.P15175646593043693086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A035327 n) (A036044 n)

end

end A175919.P15175646593043693086

namespace A175919

/-- `xor(A035327(n), A036044(n))` -/
def P15175646593043693086.Spec : Prop :=
  ∀ n, P15175646593043693086.a n = A175919 n

end A175919

/-! ## A175919.P10063109961902487789

`xor(A325401(n), A325402(n))`
-/

namespace A175919.P10063109961902487789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A325401 n) (A325402 n)

end

end A175919.P10063109961902487789

namespace A175919

/-- `xor(A325401(n), A325402(n))` -/
def P10063109961902487789.Spec : Prop :=
  ∀ n, P10063109961902487789.a n = A175919 n

end A175919

/-! ## A175919.P6982081418881533420

`2*A175298(n)-A055944(n)`
-/

namespace A175919.P6982081418881533420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A175298 n - A055944 n

end

end A175919.P6982081418881533420

namespace A175919

/-- `2*A175298(n)-A055944(n)` -/
def P6982081418881533420.Spec : Prop :=
  ∀ n, P6982081418881533420.a n = A175919 n

end A175919

/-! ## A175919.P3933434049097160680

`A175298(n)-and(n, A048701(n))`
-/

namespace A175919.P3933434049097160680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175298 n - Int.land (n : ℤ) (A048701 n)

end

end A175919.P3933434049097160680

namespace A175919

/-- `A175298(n)-and(n, A048701(n))` -/
def P3933434049097160680.Spec : Prop :=
  ∀ n, P3933434049097160680.a n = A175919 n

end A175919

/-! ## A175919.P5184059616919704230

`A175298(n)-and(n, A264618(n))`
-/

namespace A175919.P5184059616919704230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175298 n - Int.land (n : ℤ) (A264618 n)

end

end A175919.P5184059616919704230

namespace A175919

/-- `A175298(n)-and(n, A264618(n))` -/
def P5184059616919704230.Spec : Prop :=
  ∀ n, P5184059616919704230.a n = A175919 n

end A175919

/-! ## A175919.P14015377011294506513

`A175298(n)-and(n, A264619(n))`
-/

namespace A175919.P14015377011294506513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175298 n - Int.land (n : ℤ) (A264619 n)

end

end A175919.P14015377011294506513

namespace A175919

/-- `A175298(n)-and(n, A264619(n))` -/
def P14015377011294506513.Spec : Prop :=
  ∀ n, P14015377011294506513.a n = A175919 n

end A175919

/-! ## A175919.P17514370802245957250

`A175298(n)-and(n, A145341(n+1))`
-/

namespace A175919.P17514370802245957250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175298 n - Int.land (n : ℤ) (A145341 (n + 1))

end

end A175919.P17514370802245957250

namespace A175919

/-- `A175298(n)-and(n, A145341(n+1))` -/
def P17514370802245957250.Spec : Prop :=
  ∀ n, P17514370802245957250.a n = A175919 n

end A175919

/-! ## A175919.P12073679945519204330

`A175918(A175918(A175298(n))+n)`
-/

namespace A175919.P12073679945519204330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175918 (A175918 (A175298 n).toNat + (n : ℤ)).toNat

end

end A175919.P12073679945519204330

namespace A175919

/-- `A175918(A175918(A175298(n))+n)` -/
def P12073679945519204330.Spec : Prop :=
  ∀ n, P12073679945519204330.a n = A175919 n

end A175919

/-! ## A175919.P3266974800115460143

`A175920(A175298(n))-A175920(n)`
-/

namespace A175919.P3266974800115460143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175920 (A175298 n).toNat - A175920 n

end

end A175919.P3266974800115460143

namespace A175919

/-- `A175920(A175298(n))-A175920(n)` -/
def P3266974800115460143.Spec : Prop :=
  ∀ n, P3266974800115460143.a n = A175919 n

end A175919

/-! ## A175919.P17491171018155288175

`A175920(A206914(n))-A175920(n)`
-/

namespace A175919.P17491171018155288175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175920 (A206914 n).toNat - A175920 n

end

end A175919.P17491171018155288175

namespace A175919

/-- `A175920(A206914(n))-A175920(n)` -/
def P17491171018155288175.Spec : Prop :=
  ∀ n, P17491171018155288175.a n = A175919 n

end A175919

/-!
# A175920: Convert n to binary. XNOR each respective digit of binary n and binary A030101(n), where A030101(n) is the reversal of the order of the digits in the binary representation of n (given in decimal). a(n) is the decimal value of the result.

The programs for A175920, the canonical program `A175920.P6563318181034372295` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A175920 has offset 0).

The definition of A175920 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A175920.P6563318181034372295

`A003817(n)-A175919(n)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A175920

/-- `A003817(n)-A175919(n)` -/
def P6563318181034372295.Spec : Prop :=
  ∀ n, P6563318181034372295.a n = A175920 n

theorem P6563318181034372295.correct : P6563318181034372295.Spec := by
  intro n
  simp only [A175920]

end A175920

/-! ## A175920.P9770071256987755315

`xor(n, A036044(A028310(n)))`
-/

namespace A175920.P9770071256987755315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A036044 (A028310 n).toNat)

end

end A175920.P9770071256987755315

namespace A175920

/-- `xor(n, A036044(A028310(n)))` -/
def P9770071256987755315.Spec : Prop :=
  ∀ n, P9770071256987755315.a n = A175920 n

end A175920

/-! ## A175920.P4756413360067556646

`xor(A175298(n), A175918(n))`
-/

namespace A175920.P4756413360067556646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A175298 n) (A175918 n)

end

end A175920.P4756413360067556646

namespace A175920

/-- `xor(A175298(n), A175918(n))` -/
def P4756413360067556646.Spec : Prop :=
  ∀ n, P4756413360067556646.a n = A175920 n

end A175920

/-! ## A175920.P10452162178930048710

`A062383(n)-(A175919(n)+1)`
-/

namespace A175920.P10452162178930048710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062383 n - (A175919 n + 1)

end

end A175920.P10452162178930048710

namespace A175920

/-- `A062383(n)-(A175919(n)+1)` -/
def P10452162178930048710.Spec : Prop :=
  ∀ n, P10452162178930048710.a n = A175920 n

end A175920

/-! ## A175920.P6974150136308811087

`xor(n, A036044(A004277(n)-n))`
-/

namespace A175920.P6974150136308811087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A036044 (A004277 n - (n : ℤ)).toNat)

end

end A175920.P6974150136308811087

namespace A175920

/-- `xor(n, A036044(A004277(n)-n))` -/
def P6974150136308811087.Spec : Prop :=
  ∀ n, P6974150136308811087.a n = A175920 n

end A175920

/-! ## A175920.P15689604070898651234

`xor(A010078(n+1), A145341(n+1))`
-/

namespace A175920.P15689604070898651234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A010078 (n + 1)) (A145341 (n + 1))

end

end A175920.P15689604070898651234

namespace A175920

/-- `xor(A010078(n+1), A145341(n+1))` -/
def P15689604070898651234.Spec : Prop :=
  ∀ n, P15689604070898651234.a n = A175920 n

end A175920

/-! ## A175920.P6524479594683916520

`A175298(n)+A175917(n)-A175919(n)`
-/

namespace A175920.P6524479594683916520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175298 n + (A175917 n - A175919 n)

end

end A175920.P6524479594683916520

namespace A175920

/-- `A175298(n)+A175917(n)-A175919(n)` -/
def P6524479594683916520.Spec : Prop :=
  ∀ n, P6524479594683916520.a n = A175920 n

theorem P6524479594683916520.correct : P6524479594683916520.Spec := by
  intro n
  simp only [A175920, Nat.add_sub_cancel, A175920.P6524479594683916520.a, A175920.P6563318181034372295.a, A003817, A003817.P16251594020616633079.a, A175298, A175298.P14996771315134995194.a, A175917, A175917.P5961217577201396990.a, A175919, A175919.P16217226750538166929.a, A003987, A003987.P6522273903622706452.a, A030101, A030101.P16184294017372777612.a, A055945, A055945.P5963763732554067333.a, A002262, A002262.P17823619022233514403.a, A025581, A025581.P16112744757063613497.a, A038572, A038572.P6039021529582153667.a, A000035, A000035.P2023072528413494694.a, A004526, A004526.P10084182425416171735.a, A053644, A053644.P1707366427427647095.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A175920

/-! ## A175920.P57862578387568576

`A030101(n)+A175917(n)-A370427(n)`
-/

namespace A175920.P57862578387568576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 n + (A175917 n - A370427 n)

end

end A175920.P57862578387568576

namespace A175920

/-- `A030101(n)+A175917(n)-A370427(n)` -/
def P57862578387568576.Spec : Prop :=
  ∀ n, P57862578387568576.a n = A175920 n

end A175920

/-! ## A175920.P3938203976767454692

`A145341(n+1)+n-A005408(A175298(n))`
-/

namespace A175920.P3938203976767454692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145341 (n + 1) + ((n : ℤ) - A005408 (A175298 n).toNat)

end

end A175920.P3938203976767454692

namespace A175920

/-- `A145341(n+1)+n-A005408(A175298(n))` -/
def P3938203976767454692.Spec : Prop :=
  ∀ n, P3938203976767454692.a n = A175920 n

end A175920

/-! ## A175920.P14231705982622071073

`xor(n, A109613(A036044(n))-1)`
-/

namespace A175920.P14231705982622071073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A109613 (A036044 n).toNat - 1)

end

end A175920.P14231705982622071073

namespace A175920

/-- `xor(n, A109613(A036044(n))-1)` -/
def P14231705982622071073.Spec : Prop :=
  ∀ n, P14231705982622071073.a n = A175920 n

end A175920

/-! ## A175920.P14653833152433956414

`xor(A036044(A003817(n))+n, A036044(n))`
-/

namespace A175920.P14653833152433956414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A036044 (A003817 n).toNat + (n : ℤ)) (A036044 n)

end

end A175920.P14653833152433956414

namespace A175920

/-- `xor(A036044(A003817(n))+n, A036044(n))` -/
def P14653833152433956414.Spec : Prop :=
  ∀ n, P14653833152433956414.a n = A175920 n

end A175920

/-! ## A175920.P4084573710344951000

`xor(n, A036044(2*n+1))`
-/

namespace A175920.P4084573710344951000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A036044 (2 * n + 1))

end

end A175920.P4084573710344951000

namespace A175920

/-- `xor(n, A036044(2*n+1))` -/
def P4084573710344951000.Spec : Prop :=
  ∀ n, P4084573710344951000.a n = A175920 n

end A175920

/-! ## A175920.P10801357514361154346

`xor(n, xor(A035327(2*n+1), A175919(2*n+1)))`
-/

namespace A175920.P10801357514361154346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (Int.xor (A035327 (2 * n + 1)) (A175919 (2 * n + 1)))

end

end A175920.P10801357514361154346

namespace A175920

/-- `xor(n, xor(A035327(2*n+1), A175919(2*n+1)))` -/
def P10801357514361154346.Spec : Prop :=
  ∀ n, P10801357514361154346.a n = A175920 n

end A175920

/-! ## A175920.P10612075505791173897

`xor(n, A035327(A145341(n+1)))`
-/

namespace A175920.P10612075505791173897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A035327 (A145341 (n + 1)).toNat)

end

end A175920.P10612075505791173897

namespace A175920

/-- `xor(n, A035327(A145341(n+1)))` -/
def P10612075505791173897.Spec : Prop :=
  ∀ n, P10612075505791173897.a n = A175920 n

end A175920

/-! ## A175920.P1957086573424639499

`xor(n, A035327(A056539(2*n+1)))`
-/

namespace A175920.P1957086573424639499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A035327 (A056539 (2 * n + 1)).toNat)

end

end A175920.P1957086573424639499

namespace A175920

/-- `xor(n, A035327(A056539(2*n+1)))` -/
def P1957086573424639499.Spec : Prop :=
  ∀ n, P1957086573424639499.a n = A175920 n

end A175920

/-! ## A175920.P3029893714681889143

`xor(A035327(A056539(2*n)), A035327(n))`
-/

namespace A175920.P3029893714681889143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A035327 (A056539 (2 * n)).toNat) (A035327 n)

end

end A175920.P3029893714681889143

namespace A175920

/-- `xor(A035327(A056539(2*n)), A035327(n))` -/
def P3029893714681889143.Spec : Prop :=
  ∀ n, P3029893714681889143.a n = A175920 n

end A175920

/-!
# A175921: Period 5: repeat [1, 2, 2, -1, 1].

The programs for A175921, the canonical program `A175921.P3859275622482665056` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A175921 has offset 1).

The definition of A175921 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A175921.anchor (n : ℕ) (hn : 1 ≤ n) : A175921 n = [1, 2, 2, -1, 1].getD ((n - 1) % 5) 0` in `Proof.A175.A175921`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A175921.P3859275622482665056

`a(n-5)` with `a(0)=1, a(1)=2, a(2)=2, a(3)=-1, a(4)=1`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A175921

/-- `a(n-5)` -/
def P3859275622482665056.Spec : Prop :=
  ∀ n, P3859275622482665056.a n = A175921 (n + 1)

theorem P3859275622482665056.correct : P3859275622482665056.Spec := by
  intro n
  simp only [A175921, Nat.add_sub_cancel]

end A175921

/-!
# A175922: Period 5: repeat [1, 1, 2, -1, 2].

The programs for A175922, the canonical program `A175922.P3752116205992474079` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A175922 has offset 1).

The definition of A175922 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A175922.anchor (n : ℕ) (hn : 1 ≤ n) : A175922 n = [1, 1, 2, -1, 2].getD ((n - 1) % 5) 0` in `Proof.A175.A175922`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A175922.P3752116205992474079

`a(n-5)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=-1, a(4)=2`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A175922

/-- `a(n-5)` -/
def P3752116205992474079.Spec : Prop :=
  ∀ n, P3752116205992474079.a n = A175922 (n + 1)

theorem P3752116205992474079.correct : P3752116205992474079.Spec := by
  intro n
  simp only [A175922, Nat.add_sub_cancel]

end A175922

/-!
# A175923: Index of the first occurrence of prime(n)-1 consecutive zeros in the sequence of Bell numbers reduced modulo the n-th prime prime(n).

The programs for A175923, there is no canonical definition to state claims against.
-/

/-! ## A175923.P11523816801120952882

`A051846(A006093(n+1))+1`
-/

namespace A175923.P11523816801120952882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051846 (A006093 (n + 1)).toNat + 1

end

end A175923.P11523816801120952882

/-!
# A175924: Smallest power of 2 with n repeated digits.

The programs for A175924, there is no canonical definition to state claims against.
-/

/-! ## A175924.P4723793747337027022

`2^A045875(n+1)`
-/

namespace A175924.P4723793747337027022
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A045875 (n + 1) : ℤ)

end

end A175924.P4723793747337027022

/-!
# A175925: a(n) = (2*n+1)*(n+1)!.

The programs for A175925, the canonical program `A175925.P7888020052986764276` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A175925 has offset 0).

The definition of A175925 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2*n+1)*(n+1)!` (program `A175925.P7888020052986764276`, by `A175925.P7888020052986764276.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A175925.P7888020052986764276

`(2*n+1)*(n+1)!`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A175925

/-- `(2*n+1)*(n+1)!` -/
def P7888020052986764276.Spec : Prop :=
  ∀ n, (P7888020052986764276.a n : ℤ) = A175925 n

theorem P7888020052986764276.correct : P7888020052986764276.Spec := by
  intro n
  simp only [A175925]

end A175925

/-! ## A175925.P4002315371643099098

`(n+1)*A007680(n)`
-/

namespace A175925.P4002315371643099098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A007680 n

end

end A175925.P4002315371643099098

namespace A175925

/-- `(n+1)*A007680(n)` -/
def P4002315371643099098.Spec : Prop :=
  ∀ n, P4002315371643099098.a n = A175925 n

end A175925

/-! ## A175925.P641236087925911343

`A005408(n)*A000142(n+1)`
-/

namespace A175925.P641236087925911343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n * A000142 (n + 1)

end

end A175925.P641236087925911343

namespace A175925

/-- `A005408(n)*A000142(n+1)` -/
def P641236087925911343.Spec : Prop :=
  ∀ n, P641236087925911343.a n = A175925 n

theorem P641236087925911343.correct : P641236087925911343.Spec := by
  intro n
  simp only [A175925, Nat.add_sub_cancel, A175925.P641236087925911343.a, A175925.P7888020052986764276.a, A000142, A000142.P3272619076580183195.a, A005408, A005408.P17437947328870227736.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A175925

/-! ## A175925.P17849833518497352821

`(n+1)!*Δ[n²]`
-/

namespace A175925.P17849833518497352821
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 1) : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A175925.P17849833518497352821

namespace A175925

/-- `(n+1)!*Δ[n²]` -/
def P17849833518497352821.Spec : Prop :=
  ∀ n, P17849833518497352821.a n = A175925 n

theorem P17849833518497352821.correct : P17849833518497352821.Spec := by
  intro n
  simp only [A175925, Nat.add_sub_cancel, A175925.P17849833518497352821.f1, A175925.P17849833518497352821.a, A175925.P7888020052986764276.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A175925

/-! ## A175925.P6962246483366014036

`-(xor(2*n, -1)*∏[n+1])`
-/

namespace A175925.P6962246483366014036
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(Int.xor (2 * n : ℤ) (-1) * ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ))

end

end A175925.P6962246483366014036

namespace A175925

/-- `-(xor(2*n, -1)*∏[n+1])` -/
def P6962246483366014036.Spec : Prop :=
  ∀ n, P6962246483366014036.a n = A175925 n

end A175925

/-! ## A175925.P10598195004092210129

`∏[n+1]/tan(acot(2*n+1))`
-/

namespace A175925.P10598195004092210129
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ) / Real.tan (SequenceMachineLib.acot (2 * n + 1 : ℝ))

end

end A175925.P10598195004092210129

namespace A175925

/-- `∏[n+1]/tan(acot(2*n+1))` -/
def P10598195004092210129.Spec : Prop :=
  ∀ n, P10598195004092210129.a n = (A175925 n : ℝ)

end A175925

/-! ## A175925.P12757950220818345780

`lcm(2, 2*n+1)*∏[n+1]/2`
-/

namespace A175925.P12757950220818345780
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.lcm 2 (2 * n + 1) * (∏ j ∈ Finset.range (n + 1), f1 j) : ℕ) : ℚ) / 2

end

end A175925.P12757950220818345780

namespace A175925

/-- `lcm(2, 2*n+1)*∏[n+1]/2` -/
def P12757950220818345780.Spec : Prop :=
  ∀ n, P12757950220818345780.a n = (A175925 n : ℚ)

end A175925

/-! ## A175925.P7749332607986997163

`lcm(n+1, (2*n+1)*∏[n+1])`
-/

namespace A175925.P7749332607986997163
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (n + 1) ((2 * n + 1) * (∏ j ∈ Finset.range (n + 1), f1 j))

end

end A175925.P7749332607986997163

namespace A175925

/-- `lcm(n+1, (2*n+1)*∏[n+1])` -/
def P7749332607986997163.Spec : Prop :=
  ∀ n, (P7749332607986997163.a n : ℤ) = A175925 n

end A175925

/-! ## A175925.P11791254471845925656

`-(or(1, -(2*n+1))*∏[n+1])`
-/

namespace A175925.P11791254471845925656
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(Int.lor 1 (-(2 * n + 1 : ℤ)) * ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ))

end

end A175925.P11791254471845925656

namespace A175925

/-- `-(or(1, -(2*n+1))*∏[n+1])` -/
def P11791254471845925656.Spec : Prop :=
  ∀ n, P11791254471845925656.a n = A175925 n

end A175925

/-! ## A175925.P14766979556965869619

`(2*n+1)*∏[n+1]-C(2, n+3)`
-/

namespace A175925.P14766979556965869619
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((2 * n + 1) * (∏ j ∈ Finset.range (n + 1), f1 j) : ℕ) : ℤ) - (Nat.choose 2 (n + 3) : ℤ)

end

end A175925.P14766979556965869619

namespace A175925

/-- `(2*n+1)*∏[n+1]-C(2, n+3)` -/
def P14766979556965869619.Spec : Prop :=
  ∀ n, P14766979556965869619.a n = A175925 n

end A175925

/-!
# A175926: Sum of divisors of cubes.

The programs for A175926, the canonical program `A175926.P5638761069667499745` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A175926 has offset 1).

The definition of A175926 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A175926.P5638761069667499745

`A000203((n+1)^3)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A175926

/-- `A000203((n+1)^3)` -/
def P5638761069667499745.Spec : Prop :=
  ∀ n, P5638761069667499745.a n = A175926 (n + 1)

theorem P5638761069667499745.correct : P5638761069667499745.Spec := by
  intro n
  simp only [A175926, Nat.add_sub_cancel]

end A175926

/-! ## A175926.P9140002761882308950

`∑{d}[n+1, #*A160889(#)]`
-/

namespace A175926.P9140002761882308950
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A160889 d

end

end A175926.P9140002761882308950

namespace A175926

/-- `∑{d}[n+1, #*A160889(#)]` -/
def P9140002761882308950.Spec : Prop :=
  ∀ n, P9140002761882308950.a n = A175926 (n + 1)

end A175926

/-! ## A175926.P6098628401310325657

`A258331(n+1)/A077454(n+1)`
-/

namespace A175926.P6098628401310325657
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A258331 (n + 1) : ℚ) / (A077454 (n + 1) : ℚ)

end

end A175926.P6098628401310325657

namespace A175926

/-- `A258331(n+1)/A077454(n+1)` -/
def P6098628401310325657.Spec : Prop :=
  ∀ n, P6098628401310325657.a n = (A175926 (n + 1) : ℚ)

end A175926

/-! ## A175926.P5405694703736906999

`A362986(A371186(n+1))`
-/

namespace A175926.P5405694703736906999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362986 (A371186 (n + 1)).toNat

end

end A175926.P5405694703736906999

namespace A175926

/-- `A362986(A371186(n+1))` -/
def P5405694703736906999.Spec : Prop :=
  ∀ n, P5405694703736906999.a n = A175926 (n + 1)

end A175926

/-! ## A175926.P11018870830636523614

`A076401(A340699(n+1))`
-/

namespace A175926.P11018870830636523614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076401 (A340699 (n + 1)).toNat

end

end A175926.P11018870830636523614

namespace A175926

/-- `A076401(A340699(n+1))` -/
def P11018870830636523614.Spec : Prop :=
  ∀ n, P11018870830636523614.a n = A175926 (n + 1)

end A175926

/-! ## A175926.P12756160005644529809

`∑{d}[n+1, #*A254981(A000290(#))]`
-/

namespace A175926.P12756160005644529809
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A254981 (A000290 d).toNat

end

end A175926.P12756160005644529809

namespace A175926

/-- `∑{d}[n+1, #*A254981(A000290(#))]` -/
def P12756160005644529809.Spec : Prop :=
  ∀ n, P12756160005644529809.a n = A175926 (n + 1)

end A175926

/-! ## A175926.P11737021086280791410

`∑{d}[Δ[∑[n]²], #]`
-/

namespace A175926.P11737021086280791410
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f3 j) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A175926.P11737021086280791410

namespace A175926

/-- `∑{d}[Δ[∑[n]²], #]` -/
def P11737021086280791410.Spec : Prop :=
  ∀ n, (P11737021086280791410.a n : ℤ) = A175926 (n + 1)

end A175926

/-! ## A175926.P397300950888435635

`root(∑{d}[(n+1)^3, #], 2)²`
-/

namespace A175926.P397300950888435635
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 3

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℝ) ^ (1 / (2 : ℝ))) ^ 2

end

end A175926.P397300950888435635

namespace A175926

/-- `root(∑{d}[(n+1)^3, #], 2)²` -/
def P397300950888435635.Spec : Prop :=
  ∀ n, P397300950888435635.a n = (A175926 (n + 1) : ℝ)

end A175926

/-! ## A175926.P16840335849008292363

`abs(∑{d}[Δ[A000537(n)], #]-1)+1`
-/

namespace A175926.P16840335849008292363
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000537 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((∑ d ∈ Nat.divisors (f1 n).natAbs, d : ℕ) : ℤ) - 1| + 1

end

end A175926.P16840335849008292363

namespace A175926

/-- `abs(∑{d}[Δ[A000537(n)], #]-1)+1` -/
def P16840335849008292363.Spec : Prop :=
  ∀ n, P16840335849008292363.a n = A175926 (n + 1)

end A175926

/-!
# A175930: Concatenation of run lengths in binary expansion of n, written in base 2, then converted to base 10.

The programs for A175930, there is no canonical definition to state claims against.
-/

/-! ## A175930.P10854433773857880525

`A357134(A003188(n+1))`
-/

namespace A175930.P10854433773857880525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357134 (A003188 (n + 1)).toNat

end

end A175930.P10854433773857880525

/-! ## A175930.P17621662645674368982

`A357134(∑[A055975(n+1)])`
-/

namespace A175930.P17621662645674368982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055975 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357134 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A175930.P17621662645674368982

/-! ## A175930.P16703959000062129460

`A080719(A318927(n+1))`
-/

namespace A175930.P16703959000062129460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080719 (A318927 (n + 1)).toNat

end

end A175930.P16703959000062129460

/-!
# A175933: Number of ways of writing n=p+k with p a prime number and k a primorial number.

The programs for A175933, there is no canonical definition to state claims against.
-/

/-! ## A175933.P18153928848147289196

`A010052(A185037(n))*A175940(n+1)`
-/

namespace A175933.P18153928848147289196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (A185037 n).toNat * A175940 (n + 1)

end

end A175933.P18153928848147289196

/-! ## A175933.P8308473924058278228

`A000007(A322308(n))*A175940(n+1)`
-/

namespace A175933.P8308473924058278228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A322308 n).toNat * A175940 (n + 1)

end

end A175933.P8308473924058278228

/-! ## A175933.P17248971937256403204

`A175940(n+1)-A175940(A322308(n)+1)`
-/

namespace A175933.P17248971937256403204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175940 (n + 1) - A175940 (A322308 n + 1).toNat

end

end A175933.P17248971937256403204

/-! ## A175933.P3265811205789227039

`A175940(n+1)-A102683(Δ[A047197(n+1)])`
-/

namespace A175933.P3265811205789227039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047197 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175940 (n + 1) - A102683 (f1 (n + 1) - f1 n).toNat

end

end A175933.P3265811205789227039

/-! ## A175933.P3990570242243612386

`A241425(n+1)^A322308(n)*A175940(n+1)`
-/

namespace A175933.P3990570242243612386
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A241425 (n + 1) : ℚ) ^ (A322308 n : ℤ) * (A175940 (n + 1) : ℚ)

end

end A175933.P3990570242243612386

/-!
# A175934: Number of lattice paths from (0,0) to (n,n) using steps S={(1,0),(0,1),(r,r)|0<r<=2} that never go above the line y=x.

The programs for A175934, there is no canonical definition to state claims against.
-/

/-! ## A175934.P10892726735698777319

`A247971(A150877(n))`
-/

namespace A175934.P10892726735698777319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247971 (A150877 n).toNat

end

end A175934.P10892726735698777319

/-! ## A175934.P782964653596773899

`A081832(∑[A081910(n)])`
-/

namespace A175934.P782964653596773899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081910 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081832 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A175934.P782964653596773899

/-!
# A175935: Number of lattice paths from (0,0) to (n,n) using steps S={(k,0),(0,k),(r,r)|0<k<=2,0<r<=2} which never go above the line y=x.

The programs for A175935, there is no canonical definition to state claims against.
-/

/-! ## A175935.P16186911539659150290

`A005378(∑[ceil(3^n/2)]*A001006(n))`
-/

namespace A175935.P16186911539659150290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(3 ^ n : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005378 ((∑ j ∈ Finset.range (n + 1), f1 j) * A001006 n).toNat

end

end A175935.P16186911539659150290

/-! ## A175935.P4707081859005722201

`A007095(A391647(n)+A015532(n))`
-/

namespace A175935.P4707081859005722201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (A391647 n + A015532 n).toNat

end

end A175935.P4707081859005722201

/-!
# A175936: Number of lattice walks from (0,0) to (n,n) using steps S={(k,0),(0,k),(r,r)|0<k<=3,0<r<=2} which never go above the line y=x.

The programs for A175936, there is no canonical definition to state claims against.
-/

/-! ## A175936.P13510718978633694649

`A222250(A122455(n+1))-A183111(n)`
-/

namespace A175936.P13510718978633694649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222250 (A122455 (n + 1)).toNat - A183111 n

end

end A175936.P13510718978633694649

/-!
# A175937: Number of lattice paths from (0,0) to (n,n) using steps S={(k,0),(0,k),(r,r)|0<k<=4,0<r<=2} which never go above the line y=x.

The programs for A175937, there is no canonical definition to state claims against.
-/

/-! ## A175937.P14792506032762489299

`A242094(A198953(n)+A000332(n))`
-/

namespace A175937.P14792506032762489299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242094 (A198953 n + A000332 n).toNat

end

end A175937.P14792506032762489299

/-!
# A175939: Number of lattice paths from (0,0) to (n,n) using steps S={(k,0),(0,k),(r,r)|k>0,0<r<=2} which never go above the line y=x.

The programs for A175939, there is no canonical definition to state claims against.
-/

/-! ## A175939.P16829425913015558824

`A255072(A103211(n))`
-/

namespace A175939.P16829425913015558824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255072 (A103211 n).toNat

end

end A175939.P16829425913015558824

/-!
# A175940: Number of ways of writing n=p+f with p a prime and f a factorial.

The programs for A175940, there is no canonical definition to state claims against.
-/

/-! ## A175940.P14942084809493593719

`A175933(n+1)+A175933(A322308(n)+1)`
-/

namespace A175940.P14942084809493593719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175933 (n + 1) + A175933 (A322308 n + 1).toNat

end

end A175940.P14942084809493593719

/-! ## A175940.P277520431023396548

`A175933(n+1)+A102683(Δ[A047197(n+1)])`
-/

namespace A175940.P277520431023396548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047197 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175933 (n + 1) + A102683 (f1 (n + 1) - f1 n).toNat

end

end A175940.P277520431023396548

/-! ## A175940.P3592731942955227396

`A185284(A129606(n))+A175933(n+1)`
-/

namespace A175940.P3592731942955227396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (A129606 n).toNat + A175933 (n + 1)

end

end A175940.P3592731942955227396

/-! ## A175940.P8129265177035344434

`A240310(A322308(n))+A175933(n+1)`
-/

namespace A175940.P8129265177035344434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240310 (A322308 n).toNat + A175933 (n + 1)

end

end A175940.P8129265177035344434

/-! ## A175940.P6312885866374680885

`A175933(n+1)+A102683(A047197(n+1))`
-/

namespace A175940.P6312885866374680885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175933 (n + 1) + A102683 (A047197 (n + 1)).toNat

end

end A175940.P6312885866374680885

/-!
# A175941: Number of n-step self-avoiding walks on a line, where step X skips X - 1 spaces.

The programs for A175941, there is no canonical definition to state claims against.
-/

/-! ## A175941.P7953318236265400642

`A229219(A356617(n+2))`
-/

namespace A175941.P7953318236265400642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229219 (A356617 (n + 2)).toNat

end

end A175941.P7953318236265400642

/-! ## A175941.P14166870972356565547

`A137735(A335806(n))`
-/

namespace A175941.P14166870972356565547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137735 (A335806 n).toNat

end

end A175941.P14166870972356565547

/-! ## A175941.P13748523067756515833

`A396877(A124634(n))`
-/

namespace A175941.P13748523067756515833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396877 (A124634 n).toNat

end

end A175941.P13748523067756515833

/-! ## A175941.P4878773185640943893

`A401365(A191756(n))`
-/

namespace A175941.P4878773185640943893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A401365 (A191756 n).toNat

end

end A175941.P4878773185640943893

/-! ## A175941.P10606907203465921203

`A227389(A085584(n+1))`
-/

namespace A175941.P10606907203465921203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227389 (A085584 (n + 1)).toNat

end

end A175941.P10606907203465921203

/-!
# A175942: Odd numbers k such that 4^k == 4 (mod 3*k) and 2^(k-1) == 4 (mod 3*(k-1)).

The programs for A175942, the canonical program `A175942.P12736010176665163979` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A175942 has offset 1).

The definition of A175942 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 118 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A175942.P12736010176665163979

`p?[-A187307(A015921(n+1))]`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A175942

/-- `p?[-A187307(A015921(n+1))]` -/
def P12736010176665163979.Spec : Prop :=
  ∀ n, P12736010176665163979.a n = A175942 (n + 1)

theorem P12736010176665163979.correct : P12736010176665163979.Spec := by
  intro n
  simp only [A175942, Nat.add_sub_cancel]

end A175942

/-! ## A175942.P17616097670729355219

`p?[A000007(n)-A187307(A015921(n+1))]`
-/

namespace A175942.P17616097670729355219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n - A187307 (A015921 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A175942.P17616097670729355219

namespace A175942

/-- `p?[A000007(n)-A187307(A015921(n+1))]` -/
def P17616097670729355219.Spec : Prop :=
  ∀ n, P17616097670729355219.a n = A175942 (n + 1)

end A175942

/-! ## A175942.P306748882563780884

`p?[A000038(n)-A187307(A015921(n+1))]`
-/

namespace A175942.P306748882563780884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n - A187307 (A015921 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A175942.P306748882563780884

namespace A175942

/-- `p?[A000038(n)-A187307(A015921(n+1))]` -/
def P306748882563780884.Spec : Prop :=
  ∀ n, P306748882563780884.a n = A175942 (n + 1)

end A175942

/-! ## A175942.P6139121831802945366

`p?[A057428(n)*A187307(A015921(n+1))]`
-/

namespace A175942.P6139121831802945366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n * A187307 (A015921 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A175942.P6139121831802945366

namespace A175942

/-- `p?[A057428(n)*A187307(A015921(n+1))]` -/
def P6139121831802945366.Spec : Prop :=
  ∀ n, P6139121831802945366.a n = A175942 (n + 1)

end A175942

/-! ## A175942.P17169172692535270645

`p?[A134824(n+2)*A187307(A015921(n+1))]`
-/

namespace A175942.P17169172692535270645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134824 (n + 2) * A187307 (A015921 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A175942.P17169172692535270645

namespace A175942

/-- `p?[A134824(n+2)*A187307(A015921(n+1))]` -/
def P17169172692535270645.Spec : Prop :=
  ∀ n, P17169172692535270645.a n = A175942 (n + 1)

end A175942

/-! ## A175942.P17202123600951177762

`p?[A008683(9*(n+1))-A187307(A015921(n+1))]`
-/

namespace A175942.P17202123600951177762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (9 * (n + 1)) - A187307 (A015921 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A175942.P17202123600951177762

namespace A175942

/-- `p?[A008683(9*(n+1))-A187307(A015921(n+1))]` -/
def P17202123600951177762.Spec : Prop :=
  ∀ n, P17202123600951177762.a n = A175942 (n + 1)

end A175942

/-!
# A175943: Partial products of A027746.

The programs for A175943, there is no canonical definition to state claims against.
-/

/-! ## A175943.P14677903186645189444

`∏[A027746(n+1)]`
-/

namespace A175943.P14677903186645189444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027746 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A175943.P14677903186645189444

/-! ## A175943.P1189919967885141469

`a(n-1)*A027746(root(n+1, 2)²)` with `a(0)=1`
-/

namespace A175943.P1189919967885141469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A027746 (SequenceMachineLib.roundAway (((n + 1 : ℝ) ^ (1 / (2 : ℝ))) ^ 2)).toNat

end

end A175943.P1189919967885141469

/-! ## A175943.P3058208945121897673

`∏[A006530(A265110(n+1))]`
-/

namespace A175943.P3058208945121897673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A265110 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A175943.P3058208945121897673

/-! ## A175943.P8873807519222905916

`∏[A085392(A265110(n+1)²)]`
-/

namespace A175943.P8873807519222905916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085392 (A265110 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A175943.P8873807519222905916

/-! ## A175943.P1683126885545925160

`∏[A085392(2*A265110(n+1))]`
-/

namespace A175943.P1683126885545925160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085392 (2 * A265110 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A175943.P1683126885545925160

/-! ## A175943.P6434439628903357995

`A027746(n+1)%A049357(n+1)*a(n-1)` with `a(0)=1`
-/

namespace A175943.P6434439628903357995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.tmod (A027746 (n + 1)) (A049357 (n + 1)) * a (n - 1)

end

end A175943.P6434439628903357995

/-! ## A175943.P1869513309719729273

`∏[abs(A207338(n+1))]`
-/

namespace A175943.P1869513309719729273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A207338 (n + 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A175943.P1869513309719729273

/-!
# A175944: 1 appears once, n-th prime p appears p times.

The programs for A175944, the canonical program `A175944.P12964088828461231565` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A175944 has offset 1).

The definition of A175944 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A175944.P16236159144476690548

`p?[floor(sqrt(2*n))]-floor(acot(n))`
-/

namespace A175944.P16236159144476690548
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.sqrt (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) - ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A175944.P16236159144476690548

namespace A175944

/-- `p?[floor(sqrt(2*n))]-floor(acot(n))` -/
def P16236159144476690548.Spec : Prop :=
  ∀ n, P16236159144476690548.a n = A175944 (n + 1)

end A175944

/-! ## A175944.P2478227834491412485

`p?[floor(sqrt(2*n))]/ceil(acot(n))`
-/

namespace A175944.P2478227834491412485
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.sqrt (2 * n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℚ) / (⌈SequenceMachineLib.acot (n : ℝ)⌉ : ℚ)

end

end A175944.P2478227834491412485

namespace A175944

/-- `p?[floor(sqrt(2*n))]/ceil(acot(n))` -/
def P2478227834491412485.Spec : Prop :=
  ∀ n, P2478227834491412485.a n = (A175944 (n + 1) : ℚ)

end A175944

/-! ## A175944.P10241592075314035696

`gcd(floor(acot(n)), p?[floor(sqrt(2*n))])`
-/

namespace A175944.P10241592075314035696
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.sqrt (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ⌊SequenceMachineLib.acot (n : ℝ)⌋ (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ)

end

end A175944.P10241592075314035696

namespace A175944

/-- `gcd(floor(acot(n)), p?[floor(sqrt(2*n))])` -/
def P10241592075314035696.Spec : Prop :=
  ∀ n, (P10241592075314035696.a n : ℤ) = A175944 (n + 1)

end A175944

/-! ## A175944.P5750923042442886179

`C(p?[floor(sqrt(2*n))], ceil(acot(n)))`
-/

namespace A175944.P5750923042442886179
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.sqrt (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)) ⌈SequenceMachineLib.acot (n : ℝ)⌉.toNat

end

end A175944.P5750923042442886179

namespace A175944

/-- `C(p?[floor(sqrt(2*n))], ceil(acot(n)))` -/
def P5750923042442886179.Spec : Prop :=
  ∀ n, (P5750923042442886179.a n : ℤ) = A175944 (n + 1)

end A175944

/-! ## A175944.P12882617503728533980

`C(p?[floor(sqrt(2*n))], ceil(sin(n)²))`
-/

namespace A175944.P12882617503728533980
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.sqrt (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)) ⌈Real.sin (n : ℝ) ^ 2⌉.toNat

end

end A175944.P12882617503728533980

namespace A175944

/-- `C(p?[floor(sqrt(2*n))], ceil(sin(n)²))` -/
def P12882617503728533980.Spec : Prop :=
  ∀ n, (P12882617503728533980.a n : ℤ) = A175944 (n + 1)

end A175944

/-! ## A175944.P12964088828461231565

`p?[floor(sqrt(2*n))]-C(2, n+2)`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A175944

/-- `p?[floor(sqrt(2*n))]-C(2, n+2)` -/
def P12964088828461231565.Spec : Prop :=
  ∀ n, P12964088828461231565.a n = A175944 (n + 1)

theorem P12964088828461231565.correct : P12964088828461231565.Spec := by
  intro n
  simp only [A175944, Nat.add_sub_cancel]

end A175944

/-! ## A175944.P2017239857828045755

`p?[floor(sqrt(2*n))]-floor(1/(n+1))`
-/

namespace A175944.P2017239857828045755
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.sqrt (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) - ⌊1 / (n + 1 : ℚ)⌋

end

end A175944.P2017239857828045755

namespace A175944

/-- `p?[floor(sqrt(2*n))]-floor(1/(n+1))` -/
def P2017239857828045755.Spec : Prop :=
  ∀ n, P2017239857828045755.a n = A175944 (n + 1)

end A175944

/-! ## A175944.P17795873980724184042

`A008578(A162988(n+1))`
-/

namespace A175944.P17795873980724184042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A162988 (n + 1)).toNat

end

end A175944.P17795873980724184042

namespace A175944

/-- `A008578(A162988(n+1))` -/
def P17795873980724184042.Spec : Prop :=
  ∀ n, P17795873980724184042.a n = A175944 (n + 1)

end A175944

/-! ## A175944.P5614150642121959218

`A158611(A162988(n+1)+1)`
-/

namespace A175944.P5614150642121959218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (A162988 (n + 1) + 1).toNat

end

end A175944.P5614150642121959218

namespace A175944

/-- `A158611(A162988(n+1)+1)` -/
def P5614150642121959218.Spec : Prop :=
  ∀ n, P5614150642121959218.a n = A175944 (n + 1)

end A175944

/-! ## A175944.P2667010345518372119

`filter[A002024(n+1), A080339(#)]`
-/

namespace A175944.P2667010345518372119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A175944.P2667010345518372119

namespace A175944

/-- `filter[A002024(n+1), A080339(#)]` -/
def P2667010345518372119.Spec : Prop :=
  ∀ n, P2667010345518372119.a n = A175944 (n + 1)

end A175944

/-! ## A175944.P17104861316637511569

`filter[A123578(n+1), A080339(#)]`
-/

namespace A175944.P17104861316637511569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123578 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A175944.P17104861316637511569

namespace A175944

/-- `filter[A123578(n+1), A080339(#)]` -/
def P17104861316637511569.Spec : Prop :=
  ∀ n, P17104861316637511569.a n = A175944 (n + 1)

end A175944

/-! ## A175944.P16639049175602464752

`filter[A226164(n+1), A080339(#)]`
-/

namespace A175944.P16639049175602464752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226164 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A175944.P16639049175602464752

namespace A175944

/-- `filter[A226164(n+1), A080339(#)]` -/
def P16639049175602464752.Spec : Prop :=
  ∀ n, P16639049175602464752.a n = A175944 (n + 1)

end A175944

/-! ## A175944.P3194005240176658064

`filter[A000194(2*n+1), A080339(#)]`
-/

namespace A175944.P3194005240176658064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A175944.P3194005240176658064

namespace A175944

/-- `filter[A000194(2*n+1), A080339(#)]` -/
def P3194005240176658064.Spec : Prop :=
  ∀ n, P3194005240176658064.a n = A175944 (n + 1)

end A175944

/-! ## A175944.P8214495303524156438

`filter[A337835(2*(n+1)), A080339(#)]`
-/

namespace A175944.P8214495303524156438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337835 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A175944.P8214495303524156438

namespace A175944

/-- `filter[A337835(2*(n+1)), A080339(#)]` -/
def P8214495303524156438.Spec : Prop :=
  ∀ n, P8214495303524156438.a n = A175944 (n + 1)

end A175944

/-! ## A175944.P16704674129689086313

`filter[A349520(2*(n+1)), A080339(#)]`
-/

namespace A175944.P16704674129689086313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349520 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A175944.P16704674129689086313

namespace A175944

/-- `filter[A349520(2*(n+1)), A080339(#)]` -/
def P16704674129689086313.Spec : Prop :=
  ∀ n, P16704674129689086313.a n = A175944 (n + 1)

end A175944

/-! ## A175944.P6406667762896079228

`p?[A000196(2*n)]/A089026(2*(n+1))`
-/

namespace A175944.P6406667762896079228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (2 * n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / (A089026 (2 * (n + 1)) : ℚ)

end

end A175944.P6406667762896079228

namespace A175944

/-- `p?[A000196(2*n)]/A089026(2*(n+1))` -/
def P6406667762896079228.Spec : Prop :=
  ∀ n, P6406667762896079228.a n = (A175944 (n + 1) : ℚ)

end A175944

/-! ## A175944.P11670285489040212137

`filter[A111651(3*n+1), A080339(#)]`
-/

namespace A175944.P11670285489040212137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111651 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A175944.P11670285489040212137

namespace A175944

/-- `filter[A111651(3*n+1), A080339(#)]` -/
def P11670285489040212137.Spec : Prop :=
  ∀ n, P11670285489040212137.a n = A175944 (n + 1)

end A175944

/-! ## A175944.P18400511810263116681

`A006530(a(n-1)*A178623(n))` with `a(0)=1`
-/

namespace A175944.P18400511810263116681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A006530 (a (n - 1) * A178623 n).toNat

end

end A175944.P18400511810263116681

namespace A175944

/-- `A006530(a(n-1)*A178623(n))` -/
def P18400511810263116681.Spec : Prop :=
  ∀ n, P18400511810263116681.a n = A175944 (n + 1)

end A175944

/-! ## A175944.P10595872667240176755

`A006530(lcm(a(n-1), A178623(n)))` with `a(0)=1`
-/

namespace A175944.P10595872667240176755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A006530 (Int.lcm (a (n - 1)) (A178623 n))

end

end A175944.P10595872667240176755

namespace A175944

/-- `A006530(lcm(a(n-1), A178623(n)))` -/
def P10595872667240176755.Spec : Prop :=
  ∀ n, P10595872667240176755.a n = A175944 (n + 1)

end A175944

/-!
# A175945: Start with the binary expansion of n; list the lengths of the runs of ones and interpret this list as lengths of runs of alternating ones and zeros in binary.

The programs for A175945, there is no canonical definition to state claims against.
-/

/-! ## A175945.P18003007439765412080

`A335858(A385816(n+1))`
-/

namespace A175945.P18003007439765412080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335858 (A385816 (n + 1)).toNat

end

end A175945.P18003007439765412080

/-! ## A175945.P18294078578669794602

`A341916(A385889(n+1))`
-/

namespace A175945.P18294078578669794602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341916 (A385889 (n + 1)).toNat

end

end A175945.P18294078578669794602

/-! ## A175945.P17196663735361080711

`A175946(A010078(n+2))`
-/

namespace A175945.P17196663735361080711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175946 (A010078 (n + 2)).toNat

end

end A175945.P17196663735361080711

/-! ## A175945.P299057738278454148

`A175946(A336962(2*(n+1)))`
-/

namespace A175945.P299057738278454148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175946 (A336962 (2 * (n + 1))).toNat

end

end A175945.P299057738278454148

/-! ## A175945.P3528466249895280641

`A175946(xor(A003188(2*n+3), 2*A035327(n+1)))`
-/

namespace A175945.P3528466249895280641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175946 (Int.xor (A003188 (2 * n + 3)) (2 * A035327 (n + 1))).toNat

end

end A175945.P3528466249895280641

/-! ## A175945.P12081447116717543413

`xor(A154435(A209639(n+1)), A209639(n+1))`
-/

namespace A175945.P12081447116717543413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A154435 (A209639 (n + 1)).toNat) (A209639 (n + 1))

end

end A175945.P12081447116717543413

/-! ## A175945.P7467601796923226236

`A180200(A209859(n+1))`
-/

namespace A175945.P7467601796923226236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180200 (A209859 (n + 1)).toNat

end

end A175945.P7467601796923226236

/-! ## A175945.P8013522422694771770

`A006068(A385887(n+1))`
-/

namespace A175945.P8013522422694771770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006068 (A385887 (n + 1)).toNat

end

end A175945.P8013522422694771770

/-! ## A175945.P15617151220554868191

`A175947(n+1)+A175946(n+1)`
-/

namespace A175945.P15617151220554868191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175947 (n + 1) + A175946 (n + 1)

end

end A175945.P15617151220554868191

/-! ## A175945.P16853834396759968912

`A175946(A003817(A294774(n))-A103517(n))`
-/

namespace A175945.P16853834396759968912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175946 (A003817 (A294774 n).toNat - A103517 n).toNat

end

end A175945.P16853834396759968912

/-!
# A175946: List the run lengths of n's binary runs of zeros, then interpret this list as lengths of runs of alternating ones and zeros in binary.

The programs for A175946, there is no canonical definition to state claims against.
-/

/-! ## A175946.P13561888346409779214

`A175945(n+1)-A175947(n+1)`
-/

namespace A175946.P13561888346409779214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175945 (n + 1) - A175947 (n + 1)

end

end A175946.P13561888346409779214

/-! ## A175946.P12804147407426791096

`A180200(A209859(n+1))-A175947(n+1)`
-/

namespace A175946.P12804147407426791096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180200 (A209859 (n + 1)).toNat - A175947 (n + 1)

end

end A175946.P12804147407426791096

/-! ## A175946.P12013767865973578736

`A162439(n+1)-A001511(A001405(n))`
-/

namespace A175946.P12013767865973578736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162439 (n + 1) - A001511 (A001405 n).toNat

end

end A175946.P12013767865973578736

/-! ## A175946.P6934037447639419700

`A080100(n+1)-A005361(A264078(n))`
-/

namespace A175946.P6934037447639419700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080100 (n + 1) - A005361 (A264078 n).toNat

end

end A175946.P6934037447639419700

/-! ## A175946.P17280452799932401320

`A209859(A035327(n+1)*A080100(n))`
-/

namespace A175946.P17280452799932401320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209859 (A035327 (n + 1) * A080100 n).toNat

end

end A175946.P17280452799932401320

/-!
# A175947: A175945(n)-A175946(n).

The programs for A175947, there is no canonical definition to state claims against.
-/

/-! ## A175947.P1913315521088417072

`A175945(n+1)-A175946(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A175947.P1913315521088417072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175945 (n + 1) - A175946 (n + 1)

end

end A175947.P1913315521088417072

/-! ## A175947.P1018529135781941744

`A180200(A209859(n+1))-A175946(n+1)`
-/

namespace A175947.P1018529135781941744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180200 (A209859 (n + 1)).toNat - A175946 (n + 1)

end

end A175947.P1018529135781941744

/-! ## A175947.P404982507485453642

`A006068(A385887(n+1))-A175946(n+1)`
-/

namespace A175947.P404982507485453642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006068 (A385887 (n + 1)).toNat - A175946 (n + 1)

end

end A175947.P404982507485453642

/-! ## A175947.P14157077821648855287

`A341916(A385889(n+1))-A175946(n+1)`
-/

namespace A175947.P14157077821648855287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341916 (A385889 (n + 1)).toNat - A175946 (n + 1)

end

end A175947.P14157077821648855287

/-! ## A175947.P17392699793542994951

`A175946(A010078(n+2))-A175946(n+1)`
-/

namespace A175947.P17392699793542994951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175946 (A010078 (n + 2)).toNat - A175946 (n + 1)

end

end A175947.P17392699793542994951

/-! ## A175947.P1423483963117236460

`A175946(A336962(2*(n+1)))-A175946(n+1)`
-/

namespace A175947.P1423483963117236460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175946 (A336962 (2 * (n + 1))).toNat - A175946 (n + 1)

end

end A175947.P1423483963117236460

/-! ## A175947.P11017750794836291384

`A175945(n+1)+A057428(n)*A175946(n+1)`
-/

namespace A175947.P11017750794836291384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175945 (n + 1) + A057428 n * A175946 (n + 1)

end

end A175947.P11017750794836291384

/-! ## A175947.P12981210649200629523

`A175945(n+1)+A008683(A106349(n+1))*A175946(n+1)`
-/

namespace A175947.P12981210649200629523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175945 (n + 1) + A008683 (A106349 (n + 1)).toNat * A175946 (n + 1)

end

end A175947.P12981210649200629523

/-!
# A175948: Let @ denote binary concatenation. Then a(n) = A175945(n)@A175946(n).

The programs for A175948, there is no canonical definition to state claims against.
-/

/-! ## A175948.P17713606711045306239

`A175945(A253608(1+n))`
-/

namespace A175948.P17713606711045306239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175945 (A253608 (1 + n)).toNat

end

end A175948.P17713606711045306239

/-! ## A175948.P2748846420855566873

`A329303(A322463(1+n))`
-/

namespace A175948.P2748846420855566873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329303 (A322463 (1 + n)).toNat

end

end A175948.P2748846420855566873

/-! ## A175948.P3221557090739620050

`A175945((n+2)*A003817(n+1))`
-/

namespace A175948.P3221557090739620050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175945 ((n + 2 : ℤ) * A003817 (n + 1)).toNat

end

end A175948.P3221557090739620050

/-! ## A175948.P4326666062640112210

`A175950(n+1)+A175949(n+1)`
-/

namespace A175948.P4326666062640112210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175950 (n + 1) + A175949 (n + 1)

end

end A175948.P4326666062640112210

/-! ## A175948.P9844552068771448674

`A175950(n+1)+A175946(A328567(n+2))`
-/

namespace A175948.P9844552068771448674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175950 (n + 1) + A175946 (A328567 (n + 2)).toNat

end

end A175948.P9844552068771448674

/-!
# A175949: Numbers obtained by concatenation of the binary representation of A175946(n) and A175945(n).

The programs for A175949, there is no canonical definition to state claims against.
-/

/-! ## A175949.P8316416900899205397

`A175948(n+1)-A175950(n+1)`
-/

namespace A175949.P8316416900899205397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175948 (n + 1) - A175950 (n + 1)

end

end A175949.P8316416900899205397

/-! ## A175949.P7645990517856601214

`A175945(A253608(n+1))-A175950(n+1)`
-/

namespace A175949.P7645990517856601214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175945 (A253608 (n + 1)).toNat - A175950 (n + 1)

end

end A175949.P7645990517856601214

/-! ## A175949.P42826084688047036

`A329303(A322463(n+1))-A175950(n+1)`
-/

namespace A175949.P42826084688047036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329303 (A322463 (n + 1)).toNat - A175950 (n + 1)

end

end A175949.P42826084688047036

/-! ## A175949.P11708845375757571314

`A175948(n+1)+A057428(n)*A175950(n+1)`
-/

namespace A175949.P11708845375757571314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175948 (n + 1) + A057428 n * A175950 (n + 1)

end

end A175949.P11708845375757571314

/-! ## A175949.P10936899776384061065

`A175945((n+2)*A003817(n+1))-A175950(n+1)`
-/

namespace A175949.P10936899776384061065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175945 ((n + 2 : ℤ) * A003817 (n + 1)).toNat - A175950 (n + 1)

end

end A175949.P10936899776384061065

/-! ## A175949.P8052411098856916704

`A175946(A328567(n+2))`
-/

namespace A175949.P8052411098856916704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175946 (A328567 (n + 2)).toNat

end

end A175949.P8052411098856916704

/-!
# A175950: A175948(n)-A175949(n).

The programs for A175950, there is no canonical definition to state claims against.
-/

/-! ## A175950.P8474866162090203816

`A175948(n+1)-A175949(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A175950.P8474866162090203816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175948 (n + 1) - A175949 (n + 1)

end

end A175950.P8474866162090203816

/-! ## A175950.P13632205694289224008

`A175945(A253608(n+1))-A175949(n+1)`
-/

namespace A175950.P13632205694289224008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175945 (A253608 (n + 1)).toNat - A175949 (n + 1)

end

end A175950.P13632205694289224008

/-! ## A175950.P13908027988062720228

`A329303(A322463(n+1))-A175949(n+1)`
-/

namespace A175950.P13908027988062720228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329303 (A322463 (n + 1)).toNat - A175949 (n + 1)

end

end A175950.P13908027988062720228

/-! ## A175950.P10546090528565270309

`A175945((n+2)*A003817(n+1))-A175949(n+1)`
-/

namespace A175950.P10546090528565270309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175945 ((n + 2 : ℤ) * A003817 (n + 1)).toNat - A175949 (n + 1)

end

end A175950.P10546090528565270309

/-! ## A175950.P69771263387612370

`A175948(n+1)-A175946(A328567(n+2))`
-/

namespace A175950.P69771263387612370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175948 (n + 1) - A175946 (A328567 (n + 2)).toNat

end

end A175950.P69771263387612370

/-! ## A175950.P16276370212964334237

`A175945(A253608(n+1))-A175946(A328567(n+2))`
-/

namespace A175950.P16276370212964334237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175945 (A253608 (n + 1)).toNat - A175946 (A328567 (n + 2)).toNat

end

end A175950.P16276370212964334237

/-! ## A175950.P18277934829325827966

`A329303(A322463(n+1))-A175946(A328567(n+2))`
-/

namespace A175950.P18277934829325827966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329303 (A322463 (n + 1)).toNat - A175946 (A328567 (n + 2)).toNat

end

end A175950.P18277934829325827966

/-!
# A175953: Let a(1)=1; for n>1 a(n)=nextprime(a(n-1)+(a(n-1)+1)/4).

The programs for A175953, there is no canonical definition to state claims against.
-/

/-! ## A175953.P16993730480197191162

`A151800(floor(5/4*a(n-1)))` with `a(0)=1`
-/

namespace A175953.P16993730480197191162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A151800 ⌊(5 : ℚ) / 4 * (a (n - 1) : ℚ)⌋.toNat

end

end A175953.P16993730480197191162

/-! ## A175953.P17680671606823289802

`A151800(floor(a(n-1)/(1-1/5)))` with `a(0)=1`
-/

namespace A175953.P17680671606823289802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A151800 ⌊(a (n - 1) : ℚ) / (1 - (1 : ℚ) / 5)⌋.toNat

end

end A175953.P17680671606823289802

/-! ## A175953.P3707509530127822077

`A151800(A001068(a(n-1)))` with `a(0)=1`
-/

namespace A175953.P3707509530127822077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A151800 (A001068 (a (n - 1)).toNat).toNat

end

end A175953.P3707509530127822077

/-! ## A175953.P12540402212153015333

`A151800(A047201(a(n-1)))` with `a(0)=1`
-/

namespace A175953.P12540402212153015333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A151800 (A047201 (a (n - 1)).toNat).toNat

end

end A175953.P12540402212153015333

/-! ## A175953.P13724390211133094675

`A007918(A001068(a(n-1))+1)` with `a(0)=1`
-/

namespace A175953.P13724390211133094675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A007918 (A001068 (a (n - 1)).toNat + 1).toNat

end

end A175953.P13724390211133094675

/-!
# A175954: Unlabeled (cyclic) Motzkin numbers: number of ways of drawing any number of nonintersecting chords joining n unlabeled points equally spaced on a circle, up to rotations of the circle.

The programs for A175954, there is no canonical definition to state claims against.
-/

/-! ## A175954.P17128731665124995870

`A078129(A329701(n))`
-/

namespace A175954.P17128731665124995870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078129 (A329701 n).toNat

end

end A175954.P17128731665124995870

/-! ## A175954.P5133494583772271924

`A117975(A275780(n)+n)`
-/

namespace A175954.P5133494583772271924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117975 (A275780 n + (n : ℤ)).toNat

end

end A175954.P5133494583772271924

/-! ## A175954.P7338892459696561545

`A283315(n)+A185316(n)`
-/

namespace A175954.P7338892459696561545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283315 n + A185316 n

end

end A175954.P7338892459696561545

/-! ## A175954.P17429426065980716537

`A283314(n)+A051493(n+1)`
-/

namespace A175954.P17429426065980716537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283314 n + A051493 (n + 1)

end

end A175954.P17429426065980716537

/-! ## A175954.P15742885102732678221

`A342651(n+2)+A283314(n)`
-/

namespace A175954.P15742885102732678221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342651 (n + 2) + A283314 n

end

end A175954.P15742885102732678221

/-!
# A175955: Number of ways to connect with nonintersecting chords n unlabeled points equally spaced on a circle such that the resulting configuration is not invariant w.r.t. rotation any angle < 2*Pi.

The programs for A175955, there is no canonical definition to state claims against.
-/

/-! ## A175955.P12483044867289246739

`A316465(A316475(n+1))-∑{e}[n+1, #]`
-/

namespace A175955.P12483044867289246739
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316465 (A316475 (n + 1)).toNat - ((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℤ)

end

end A175955.P12483044867289246739

/-! ## A175955.P10364059739164355409

`A123108(n)*A211161(A062962(n))`
-/

namespace A175955.P10364059739164355409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 n * A211161 (A062962 n).toNat

end

end A175955.P10364059739164355409

/-! ## A175955.P17138868076158375158

`A316465(A316475(n+1))-A001222(n+1)`
-/

namespace A175955.P17138868076158375158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316465 (A316475 (n + 1)).toNat - A001222 (n + 1)

end

end A175955.P17138868076158375158

/-! ## A175955.P10736039205778257039

`A105955(A282159(2*n+1))+A005043(n)`
-/

namespace A175955.P10736039205778257039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105955 (A282159 (2 * n + 1)).toNat + A005043 n

end

end A175955.P10736039205778257039

/-!
# A175956: Numbers n such that A109925(n) = A109925(n+1).

The programs for A175956, there is no canonical definition to state claims against.
-/

/-! ## A175956.P10519638469612862265

`eq[A109925(n+1), A109925(n+2)]+1`
-/

namespace A175956.P10519638469612862265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109925 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109925 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A175956.P10519638469612862265

/-!
# A175957: Numbers that cannot be written as the sum of a prime number and a primorial number.

The programs for A175957, there is no canonical definition to state claims against.
-/

/-! ## A175957.P9445784347291172106

`eq[0, A175933(n+1)]+1`
-/

namespace A175957.P9445784347291172106
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175933 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A175957.P9445784347291172106

/-! ## A175957.P12239210618486410861

`lt[A175933(1+n), 1]+1`
-/

namespace A175957.P12239210618486410861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175933 (1 + n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A175957.P12239210618486410861

/-! ## A175957.P3683305058940245160

`lt[n*A175933(A028310(n)), n]`
-/

namespace A175957.P3683305058940245160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A175933 (A028310 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A175957.P3683305058940245160

/-! ## A175957.P2106859142641602138

`eq[A000007(n), A175933(A028310(n))]`
-/

namespace A175957.P2106859142641602138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175933 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A175957.P2106859142641602138

/-!
# A175958: Number of partitions of n^2 into 4 distinct nonzero squares.

The programs for A175958, there is no canonical definition to state claims against.
-/

/-! ## A175958.P18028460229168353125

`A025443(n²)`
-/

namespace A175958.P18028460229168353125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025443 (n ^ 2)

end

end A175958.P18028460229168353125

/-! ## A175958.P6265220199264361554

`and(-1, A025443(A000290(n)))`
-/

namespace A175958.P6265220199264361554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A025443 (A000290 n).toNat)

end

end A175958.P6265220199264361554

/-! ## A175958.P13608930578500769535

`A025443(n*n)%A316722(n)`
-/

namespace A175958.P13608930578500769535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A025443 (n * n)) (A316722 n)

end

end A175958.P13608930578500769535

/-! ## A175958.P10810149438718431565

`lcm(A025443(n*n), A033999(n))`
-/

namespace A175958.P10810149438718431565
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A025443 (n * n)) (A033999 n)

end

end A175958.P10810149438718431565

/-! ## A175958.P3512257546231457816

`and(-1, A025443(n*A028310(n)))`
-/

namespace A175958.P3512257546231457816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A025443 ((n : ℤ) * A028310 n).toNat)

end

end A175958.P3512257546231457816

/-! ## A175958.P4069090512394060937

`A025443(A000290(n))*A054977(n)`
-/

namespace A175958.P4069090512394060937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025443 (A000290 n).toNat * A054977 n

end

end A175958.P4069090512394060937

/-! ## A175958.P7484619428314731303

`A025443(A000290(n))*A057427(n)`
-/

namespace A175958.P7484619428314731303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025443 (A000290 n).toNat * A057427 n

end

end A175958.P7484619428314731303

/-! ## A175958.P13864063175591332743

`A025443(A000290(n))*A060576(n)`
-/

namespace A175958.P13864063175591332743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025443 (A000290 n).toNat * A060576 n

end

end A175958.P13864063175591332743

/-! ## A175958.P5254301680256986607

`A025443(A000290(n))*A185114(n)`
-/

namespace A175958.P5254301680256986607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025443 (A000290 n).toNat * A185114 n

end

end A175958.P5254301680256986607

/-! ## A175958.P7010213903481827728

`A025443(A000290(n))*A185115(n)`
-/

namespace A175958.P7010213903481827728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025443 (A000290 n).toNat * A185115 n

end

end A175958.P7010213903481827728

/-! ## A175958.P17178082702756874935

`A025443(A000290(n))*A185117(n)`
-/

namespace A175958.P17178082702756874935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025443 (A000290 n).toNat * A185117 n

end

end A175958.P17178082702756874935

/-! ## A175958.P884704326677204639

`A025443(A000290(n))*A185118(n)`
-/

namespace A175958.P884704326677204639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025443 (A000290 n).toNat * A185118 n

end

end A175958.P884704326677204639

/-! ## A175958.P12842953993979357540

`A025443(A000290(n))%A000041(n)`
-/

namespace A175958.P12842953993979357540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A025443 (A000290 n).toNat) (A000041 n)

end

end A175958.P12842953993979357540

/-! ## A175958.P11235668008989656614

`A025443(∑[A004273(n)])%A017353(n)`
-/

namespace A175958.P11235668008989656614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A025443 (∑ j ∈ Finset.range (n + 1), f1 j).toNat) (A017353 n)

end

end A175958.P11235668008989656614

/-! ## A175958.P7255812931786810412

`A025443(A000290(n))+A025443(A025428(n))`
-/

namespace A175958.P7255812931786810412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025443 (A000290 n).toNat + A025443 (A025428 n).toNat

end

end A175958.P7255812931786810412

/-! ## A175958.P3649621167963918985

`A025443(A025443(n))+A025443(A000290(n))`
-/

namespace A175958.P3649621167963918985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025443 (A025443 n).toNat + A025443 (A000290 n).toNat

end

end A175958.P3649621167963918985

/-! ## A175958.P6625280594644611319

`A000328(A048298(n))*A025443(A000290(n))`
-/

namespace A175958.P6625280594644611319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000328 (A048298 n).toNat * A025443 (A000290 n).toNat

end

end A175958.P6625280594644611319

/-! ## A175958.P9100356479435980344

`A025428(A025416(A025443(n*n)))`
-/

namespace A175958.P9100356479435980344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025428 (A025416 (A025443 (n * n)).toNat).toNat

end

end A175958.P9100356479435980344

/-!
# A175959: Positions of 1's in A001191 (Digits of squares).

The programs for A175959, there is no canonical definition to state claims against.
-/

/-! ## A175959.P293938952032377212

`eq[1, A001191(n+1)]+1`
-/

namespace A175959.P293938952032377212
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001191 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A175959.P293938952032377212

/-! ## A175959.P6230514641126167980

`eq[A001191(A028310(n)), A054977(n)]`
-/

namespace A175959.P6230514641126167980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001191 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A175959.P6230514641126167980

/-! ## A175959.P18172668309075519639

`eq[A001191(A028310(n)), A057427(n)]`
-/

namespace A175959.P18172668309075519639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001191 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A175959.P18172668309075519639

/-! ## A175959.P16070042909737421081

`eq[A057428(n)², A001191(A028310(n))]`
-/

namespace A175959.P16070042909737421081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001191 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A175959.P16070042909737421081

/-! ## A175959.P15882916268364799722

`A000720(p?[A000040(n+1)*A001191(n+1)])`
-/

namespace A175959.P15882916268364799722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A001191 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A175959.P15882916268364799722

/-!
# A175961: n-th nonprime number appears n-th nonprime numbers times.

The programs for A175961, there is no canonical definition to state claims against.
-/

/-! ## A175961.P1617540844280460956

`comp[A101203(n)+n]-n`
-/

namespace A175961.P1617540844280460956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101203 n + (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A175961.P1617540844280460956

/-! ## A175961.P5466900006828428282

`filter[row(n)+1, A005171(#)]`
-/

namespace A175961.P5466900006828428282
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triRow n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j) = 1) n)

end

end A175961.P5466900006828428282

/-! ## A175961.P15295700054449798606

`filter[row(n)+1, A049076(#)]`
-/

namespace A175961.P15295700054449798606
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triRow n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A049076 (f1 j) = 1) n)

end

end A175961.P15295700054449798606

/-! ## A175961.P17868684284862994702

`A018252(∑[char[∑[comp[p?[xor(1, n)]]]]])`
-/

namespace A175961.P17868684284862994702
noncomputable section

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f5 (SequenceMachineLib.nth (fun j => (f5 j).Prime) n)

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f4 j ≠ x) n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A175961.P17868684284862994702

/-! ## A175961.P16071297060673346498

`A018252(A168255(n+1))`
-/

namespace A175961.P16071297060673346498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (A168255 (n + 1)).toNat

end

end A175961.P16071297060673346498

/-! ## A175961.P9478838180664254686

`A018252(∑[char[A051349(n)]])`
-/

namespace A175961.P9478838180664254686
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051349 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A175961.P9478838180664254686

/-! ## A175961.P2936280019587741482

`A050655(∑[char[A051349(n)]])`
-/

namespace A175961.P2936280019587741482
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051349 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050655 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A175961.P2936280019587741482

/-! ## A175961.P8509955553654289404

`A018252(∑[char[A101203(n)]])`
-/

namespace A175961.P8509955553654289404
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101203 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A175961.P8509955553654289404

/-! ## A175961.P7663050506187896432

`filter[A002024(n+1), A005171(#)]`
-/

namespace A175961.P7663050506187896432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A175961.P7663050506187896432

/-! ## A175961.P5516150980116487784

`filter[A123578(n+1), A005171(#)]`
-/

namespace A175961.P5516150980116487784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123578 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A175961.P5516150980116487784

/-!
# A175962: Number of lattice paths from (0,0) to (n,n) using steps S={(k,0),(0,k),(r,r)|k>0,r>0} which never go above the line y=x.

The programs for A175962, there is no canonical definition to state claims against.
-/

/-! ## A175962.P18094691477504177445

`A334017(∑[n+1])`
-/

namespace A175962.P18094691477504177445
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334017 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A175962.P18094691477504177445

/-! ## A175962.P5599317541819696068

`record[A334017(A038722(1+n))]`
-/

namespace A175962.P5599317541819696068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334017 (A038722 (1 + n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A175962.P5599317541819696068

/-! ## A175962.P9105499426397061257

`record[root(A334017(n+1), A055461(n+1))]`
-/

namespace A175962.P9105499426397061257
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A334017 (n + 1) : ℝ) ^ (1 / (A055461 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A175962.P9105499426397061257

/-! ## A175962.P16568629006433843432

`record[A334017(A000217(A003963(n+1)))]`
-/

namespace A175962.P16568629006433843432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334017 (A000217 (A003963 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A175962.P16568629006433843432

/-! ## A175962.P8634196265787629283

`record[A334017(A000217(A256992(n+1)))]`
-/

namespace A175962.P8634196265787629283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334017 (A000217 (A256992 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A175962.P8634196265787629283

/-! ## A175962.P145208650330703784

`record[A334017(A000217(A304729(n+1)))]`
-/

namespace A175962.P145208650330703784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334017 (A000217 (A304729 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A175962.P145208650330703784

/-!
# A175963: Numbers n with property that both n and n^2 have at least two 1's.

The programs for A175963, there is no canonical definition to state claims against.
-/

/-! ## A175963.P18032123372356154516

`lt[A193582(A008574(3*n+4)), A268643(n)]`
-/

namespace A175963.P18032123372356154516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193582 (A008574 (3 * n + 4)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268643 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A175963.P18032123372356154516

/-! ## A175963.P17252662546776301061

`A225534(n+1)+A225486(A146729(n+1))`
-/

namespace A175963.P17252662546776301061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225534 (n + 1) + A225486 (A146729 (n + 1)).toNat

end

end A175963.P17252662546776301061

/-!
# A175965: Lexicographically earliest sequence with first differences as increasing sequence of noncomposites A008578.

The programs for A175965, the canonical program `A175965.P352043763123529774` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A175965 has offset 1).

The definition of A175965 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A175965.P2170401680231148161

`∑[record[A259153(n)]]+1`
-/

namespace A175965.P2170401680231148161
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259153 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A175965.P2170401680231148161

namespace A175965

/-- `∑[record[A259153(n)]]+1` -/
def P2170401680231148161.Spec : Prop :=
  ∀ n, P2170401680231148161.a n = A175965 (n + 1)

end A175965

/-! ## A175965.P352043763123529774

`∑[A158611(n+1)]+1`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A175965

/-- `∑[A158611(n+1)]+1` -/
def P352043763123529774.Spec : Prop :=
  ∀ n, P352043763123529774.a n = A175965 (n + 1)

theorem P352043763123529774.correct : P352043763123529774.Spec := by
  intro n
  simp only [A175965, Nat.add_sub_cancel]

end A175965

/-! ## A175965.P106090365154441869

`a(n-1)+A008578(n)` with `a(0)=1`
-/

namespace A175965.P106090365154441869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A008578 n

end

end A175965.P106090365154441869

namespace A175965

/-- `a(n-1)+A008578(n)` -/
def P106090365154441869.Spec : Prop :=
  ∀ n, P106090365154441869.a n = A175965 (n + 1)

end A175965

/-! ## A175965.P10319133722864122289

`A182986(n)+a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A175965.P10319133722864122289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A182986 n + a (n - 1)

end

end A175965.P10319133722864122289

namespace A175965

/-- `A182986(n)+a(n-1)` -/
def P10319133722864122289.Spec : Prop :=
  ∀ n, P10319133722864122289.a n = A175965 (n + 1)

end A175965

/-! ## A175965.P14365515925438233106

`a(n-1)+A001747(n)/2` with `a(0)=1`
-/

namespace A175965.P14365515925438233106
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A001747 n : ℚ) / 2

end

end A175965.P14365515925438233106

namespace A175965

/-- `a(n-1)+A001747(n)/2` -/
def P14365515925438233106.Spec : Prop :=
  ∀ n, P14365515925438233106.a n = (A175965 (n + 1) : ℚ)

end A175965

/-! ## A175965.P1366965414323459707

`a(n-1)+A162177(n)+n` with `a(0)=1`
-/

namespace A175965.P1366965414323459707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A162177 n + (n : ℤ))

end

end A175965.P1366965414323459707

namespace A175965

/-- `a(n-1)+A162177(n)+n` -/
def P1366965414323459707.Spec : Prop :=
  ∀ n, P1366965414323459707.a n = A175965 (n + 1)

end A175965

/-! ## A175965.P4401957134435034060

`A000040(n-1)+a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A175965.P4401957134435034060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A000040 (n - 1) + a (n - 1)

end

end A175965.P4401957134435034060

namespace A175965

/-- `A000040(n-1)+a(n-1)` -/
def P4401957134435034060.Spec : Prop :=
  ∀ n, P4401957134435034060.a n = A175965 (n + 1)

end A175965

/-! ## A175965.P1763509045351632681

`∑[A000040(n-gcd(a(n-1), a(n-2)))]` with `a(0)=1, a(1)=1`
-/

namespace A175965.P1763509045351632681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  A000040 (n - Int.gcd (f1 (n - 1)) (f1 (n - 2)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A175965.P1763509045351632681

namespace A175965

/-- `∑[A000040(n-gcd(a(n-1), a(n-2)))]` -/
def P1763509045351632681.Spec : Prop :=
  ∀ n, P1763509045351632681.a n = A175965 (n + 1)

end A175965

/-! ## A175965.P8665893149134910764

`∑[A008578(A028310(n))]`
-/

namespace A175965.P8665893149134910764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A175965.P8665893149134910764

namespace A175965

/-- `∑[A008578(A028310(n))]` -/
def P8665893149134910764.Spec : Prop :=
  ∀ n, P8665893149134910764.a n = A175965 (n + 1)

end A175965

/-! ## A175965.P15475317446467618392

`A227547(n+1)-A028815(n)`
-/

namespace A175965.P15475317446467618392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227547 (n + 1) - A028815 n

end

end A175965.P15475317446467618392

namespace A175965

/-- `A227547(n+1)-A028815(n)` -/
def P15475317446467618392.Spec : Prop :=
  ∀ n, P15475317446467618392.a n = A175965 (n + 1)

end A175965

/-! ## A175965.P3467689122890296118

`A036439(n+1)-A008578(n+1)`
-/

namespace A175965.P3467689122890296118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036439 (n + 1) - A008578 (n + 1)

end

end A175965.P3467689122890296118

namespace A175965

/-- `A036439(n+1)-A008578(n+1)` -/
def P3467689122890296118.Spec : Prop :=
  ∀ n, P3467689122890296118.a n = A175965 (n + 1)

end A175965

/-! ## A175965.P4994864616366700931

`A007504(n)+2-A008578(n+1)`
-/

namespace A175965.P4994864616366700931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n + (2 - A008578 (n + 1))

end

end A175965.P4994864616366700931

namespace A175965

/-- `A007504(n)+2-A008578(n+1)` -/
def P4994864616366700931.Spec : Prop :=
  ∀ n, P4994864616366700931.a n = A175965 (n + 1)

end A175965

/-! ## A175965.P2384301767530404436

`∑[A008578(A010051(2*(n+1))+n)]`
-/

namespace A175965.P2384301767530404436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A010051 (2 * (n + 1)) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A175965.P2384301767530404436

namespace A175965

/-- `∑[A008578(A010051(2*(n+1))+n)]` -/
def P2384301767530404436.Spec : Prop :=
  ∀ n, P2384301767530404436.a n = A175965 (n + 1)

end A175965

/-! ## A175965.P3561268528434568700

`A014284(n+1)+1-A008578(n+1)`
-/

namespace A175965.P3561268528434568700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014284 (n + 1) + (1 - A008578 (n + 1))

end

end A175965.P3561268528434568700

namespace A175965

/-- `A014284(n+1)+1-A008578(n+1)` -/
def P3561268528434568700.Spec : Prop :=
  ∀ n, P3561268528434568700.a n = A175965 (n + 1)

end A175965

/-! ## A175965.P2428183675229107080

`A014284(n+2)-A076273(n+1)`
-/

namespace A175965.P2428183675229107080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014284 (n + 2) - A076273 (n + 1)

end

end A175965.P2428183675229107080

namespace A175965

/-- `A014284(n+2)-A076273(n+1)` -/
def P2428183675229107080.Spec : Prop :=
  ∀ n, P2428183675229107080.a n = A175965 (n + 1)

end A175965

/-! ## A175965.P7929985420583529189

`A036439(n+1)-A158611(n+2)`
-/

namespace A175965.P7929985420583529189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036439 (n + 1) - A158611 (n + 2)

end

end A175965.P7929985420583529189

namespace A175965

/-- `A036439(n+1)-A158611(n+2)` -/
def P7929985420583529189.Spec : Prop :=
  ∀ n, P7929985420583529189.a n = A175965 (n + 1)

end A175965

/-! ## A175965.P12980619708712041055

`A014284(n+2)-(A158611(n+2)+A006093(n+1))`
-/

namespace A175965.P12980619708712041055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014284 (n + 2) - (A158611 (n + 2) + A006093 (n + 1))

end

end A175965.P12980619708712041055

namespace A175965

/-- `A014284(n+2)-(A158611(n+2)+A006093(n+1))` -/
def P12980619708712041055.Spec : Prop :=
  ∀ n, P12980619708712041055.a n = A175965 (n + 1)

end A175965

/-! ## A175965.P5169714744908905724

`∑[A000040(n-A008683(a(n-2))²)]` with `a(0)=1, a(1)=1`
-/

namespace A175965.P5169714744908905724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  A000040 ((n : ℤ) - A008683 (f1 (n - 2)).toNat ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A175965.P5169714744908905724

namespace A175965

/-- `∑[A000040(n-A008683(a(n-2))²)]` -/
def P5169714744908905724.Spec : Prop :=
  ∀ n, P5169714744908905724.a n = A175965 (n + 1)

end A175965

/-! ## A175965.P11918741757982979962

`∑[A000040(n-A010051(a(n-2)))]` with `a(0)=1, a(1)=1, a(2)=2, a(3)=3`
-/

namespace A175965.P11918741757982979962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2, 3] fun n f1 =>
  A000040 ((n : ℤ) - A010051 (f1 (n - 2)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A175965.P11918741757982979962

namespace A175965

/-- `∑[A000040(n-A010051(a(n-2)))]` -/
def P11918741757982979962.Spec : Prop :=
  ∀ n, P11918741757982979962.a n = A175965 (n + 1)

end A175965

/-! ## A175965.P4481538468135221192

`∑[A151800(a(n-1))]` with `a(0)=1, a(1)=1`
-/

namespace A175965.P4481538468135221192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  A151800 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A175965.P4481538468135221192

namespace A175965

/-- `∑[A151800(a(n-1))]` -/
def P4481538468135221192.Spec : Prop :=
  ∀ n, P4481538468135221192.a n = A175965 (n + 1)

end A175965

/-! ## A175965.P15166858530974202743

`∑[lt[∑{e}[n, #], 2]]+1`
-/

namespace A175965.P15166858530974202743
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f4 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A175965.P15166858530974202743

namespace A175965

/-- `∑[lt[∑{e}[n, #], 2]]+1` -/
def P15166858530974202743.Spec : Prop :=
  ∀ n, (P15166858530974202743.a n : ℤ) = A175965 (n + 1)

end A175965

/-!
# A175966: Complement of A175965(n), where A175965(n) = the lexicographically earliest sequence with first differences as increasing sequence of noncomposites A008578.

The programs for A175966, there is no canonical definition to state claims against.
-/

/-! ## A175966.P13397043062439103655

`comp[∑[record[∑{p}[n, #]]]]+2`
-/

namespace A175966.P13397043062439103655
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f4 n), p

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 2

end

end A175966.P13397043062439103655

/-! ## A175966.P18320708752208862791

`comp[∑[lt[∑{e}[n, #], 2]]]+1`
-/

namespace A175966.P18320708752208862791
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f4 n), Nat.factorization (f4 n) p

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f3 j < f5 j) n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1

end

end A175966.P18320708752208862791

/-! ## A175966.P5828831919894705973

`comp[∑[eq[n, ∑{p}[n, #]]]]+2`
-/

namespace A175966.P5828831919894705973
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f5 n), p

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f3 j = f4 j) n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 2

end

end A175966.P5828831919894705973

/-! ## A175966.P444318481878900200

`comp[∑[p?[comp[n²]]]-1]+3`
-/

namespace A175966.P444318481878900200
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f4 j ≠ x) n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => (f3 j).Prime) n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 3

end

end A175966.P444318481878900200

/-! ## A175966.P4702639886578678595

`comp[∑[eq[1, ∑{e}[n, #]!]]]+1`
-/

namespace A175966.P4702639886578678595
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (∑ p ∈ Nat.primeFactors (f5 n), Nat.factorization (f5 n) p)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f3 j = f4 j) n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1

end

end A175966.P4702639886578678595

/-! ## A175966.P17358724123511679871

`comp[∑[∑{p}[n+1, C(#, n)]]]+2`
-/

namespace A175966.P17358724123511679871
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), Nat.choose p n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 2

end

end A175966.P17358724123511679871

/-! ## A175966.P14369736685443768659

`comp[∑[p?[2*n+1]]+1-p?[2*n+1]]+3`
-/

namespace A175966.P14369736685443768659
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => (f3 j).Prime) n)

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j + 1 : ℕ) : ℤ) - (f4 (SequenceMachineLib.nth (fun j => (f4 j).Prime) n) : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 3

end

end A175966.P14369736685443768659

/-! ## A175966.P17862664738251171537

`comp[A007504(n)]+2`
-/

namespace A175966.P17862664738251171537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 2

end

end A175966.P17862664738251171537

/-! ## A175966.P12560598078234503271

`A175969(n+1)+1`
-/

namespace A175966.P12560598078234503271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175969 (n + 1) + 1

end

end A175966.P12560598078234503271

/-! ## A175966.P9962876547109357242

`comp[A034387(n+1)]+2`
-/

namespace A175966.P9962876547109357242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034387 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 2

end

end A175966.P9962876547109357242

/-!
# A175967: Lexicographically earliest sequence with first differences as increasing sequence of nonprimes A018252.

The programs for A175967, the canonical program `A175967.P17254181130027743458` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A175967 has offset 1).

The definition of A175967 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A175967.P17254181130027743458

`A051349(n)+1`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A175967

/-- `A051349(n)+1` -/
def P17254181130027743458.Spec : Prop :=
  ∀ n, P17254181130027743458.a n = A175967 (n + 1)

theorem P17254181130027743458.correct : P17254181130027743458.Spec := by
  intro n
  simp only [A175967, Nat.add_sub_cancel]

end A175967

/-! ## A175967.P2395894546498022978

`∑[comp[A060264(n)]]+1`
-/

namespace A175967.P2395894546498022978
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060264 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A175967.P2395894546498022978

namespace A175967

/-- `∑[comp[A060264(n)]]+1` -/
def P2395894546498022978.Spec : Prop :=
  ∀ n, (P2395894546498022978.a n : ℤ) = A175967 (n + 1)

end A175967

/-! ## A175967.P14023895110402614587

`∑[comp[A129543(n)]]+1`
-/

namespace A175967.P14023895110402614587
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129543 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A175967.P14023895110402614587

namespace A175967

/-- `∑[comp[A129543(n)]]+1` -/
def P14023895110402614587.Spec : Prop :=
  ∀ n, (P14023895110402614587.a n : ℤ) = A175967 (n + 1)

end A175967

/-! ## A175967.P857743242380518431

`∑[comp[A134204(n)]]+1`
-/

namespace A175967.P857743242380518431
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134204 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A175967.P857743242380518431

namespace A175967

/-- `∑[comp[A134204(n)]]+1` -/
def P857743242380518431.Spec : Prop :=
  ∀ n, (P857743242380518431.a n : ℤ) = A175967 (n + 1)

end A175967

/-! ## A175967.P13820032936269309805

`∑[comp[A151800(n)]]+1`
-/

namespace A175967.P13820032936269309805
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A175967.P13820032936269309805

namespace A175967

/-- `∑[comp[A151800(n)]]+1` -/
def P13820032936269309805.Spec : Prop :=
  ∀ n, (P13820032936269309805.a n : ℤ) = A175967 (n + 1)

end A175967

/-! ## A175967.P10616089754872953571

`∑[comp[A162753(n)]]+1`
-/

namespace A175967.P10616089754872953571
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162753 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A175967.P10616089754872953571

namespace A175967

/-- `∑[comp[A162753(n)]]+1` -/
def P10616089754872953571.Spec : Prop :=
  ∀ n, (P10616089754872953571.a n : ℤ) = A175967 (n + 1)

end A175967

/-! ## A175967.P9998093903866329351

`∑[A141468(n+1)]+1`
-/

namespace A175967.P9998093903866329351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A175967.P9998093903866329351

namespace A175967

/-- `∑[A141468(n+1)]+1` -/
def P9998093903866329351.Spec : Prop :=
  ∀ n, P9998093903866329351.a n = A175967 (n + 1)

end A175967

/-! ## A175967.P6555653758382297445

`∑[comp[Δ[A007504(n)]]]+1`
-/

namespace A175967.P6555653758382297445
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A175967.P6555653758382297445

namespace A175967

/-- `∑[comp[Δ[A007504(n)]]]+1` -/
def P6555653758382297445.Spec : Prop :=
  ∀ n, (P6555653758382297445.a n : ℤ) = A175967 (n + 1)

end A175967

/-! ## A175967.P11736761868381258236

`∑[A018252(ceil(abs(γ-n)))]`
-/

namespace A175967.P11736761868381258236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 ⌈|Real.eulerMascheroniConstant - (n : ℝ)|⌉.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A175967.P11736761868381258236

namespace A175967

/-- `∑[A018252(ceil(abs(γ-n)))]` -/
def P11736761868381258236.Spec : Prop :=
  ∀ n, P11736761868381258236.a n = A175967 (n + 1)

end A175967

/-! ## A175967.P15091115630017506895

`A018252(n)+a(n-1)` with `a(0)=1`
-/

namespace A175967.P15091115630017506895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A018252 n + a (n - 1)

end

end A175967.P15091115630017506895

namespace A175967

/-- `A018252(n)+a(n-1)` -/
def P15091115630017506895.Spec : Prop :=
  ∀ n, P15091115630017506895.a n = A175967 (n + 1)

end A175967

/-! ## A175967.P11212568199311079088

`∑[sqrt(A161753(n+1))]+1`
-/

namespace A175967.P11212568199311079088
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A161753 (n + 1) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A175967.P11212568199311079088

namespace A175967

/-- `∑[sqrt(A161753(n+1))]+1` -/
def P11212568199311079088.Spec : Prop :=
  ∀ n, P11212568199311079088.a n = (A175967 (n + 1) : ℝ)

end A175967

/-! ## A175967.P15180363445930998824

`∑[comp[A000040(n+1)]]+1`
-/

namespace A175967.P15180363445930998824
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A175967.P15180363445930998824

namespace A175967

/-- `∑[comp[A000040(n+1)]]+1` -/
def P15180363445930998824.Spec : Prop :=
  ∀ n, (P15180363445930998824.a n : ℤ) = A175967 (n + 1)

end A175967

/-! ## A175967.P9056485972330597969

`∑[comp[A006530(n+2)]]+1`
-/

namespace A175967.P9056485972330597969
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A175967.P9056485972330597969

namespace A175967

/-- `∑[comp[A006530(n+2)]]+1` -/
def P9056485972330597969.Spec : Prop :=
  ∀ n, (P9056485972330597969.a n : ℤ) = A175967 (n + 1)

end A175967

/-! ## A175967.P13065381493763792251

`∑[comp[A008578(n+2)]]+1`
-/

namespace A175967.P13065381493763792251
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 2)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A175967.P13065381493763792251

namespace A175967

/-- `∑[comp[A008578(n+2)]]+1` -/
def P13065381493763792251.Spec : Prop :=
  ∀ n, (P13065381493763792251.a n : ℤ) = A175967 (n + 1)

end A175967

/-! ## A175967.P13999928849058083812

`∑[comp[A020639(n+2)]]+1`
-/

namespace A175967.P13999928849058083812
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A175967.P13999928849058083812

namespace A175967

/-- `∑[comp[A020639(n+2)]]+1` -/
def P13999928849058083812.Spec : Prop :=
  ∀ n, (P13999928849058083812.a n : ℤ) = A175967 (n + 1)

end A175967

/-! ## A175967.P15436040493094577967

`∑[A176100(n+1)/2]+1`
-/

namespace A175967.P15436040493094577967
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A176100 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A175967.P15436040493094577967

namespace A175967

/-- `∑[A176100(n+1)/2]+1` -/
def P15436040493094577967.Spec : Prop :=
  ∀ n, P15436040493094577967.a n = (A175967 (n + 1) : ℚ)

end A175967

/-! ## A175967.P4411380695847270391

`∑[A173073(n+1)+n]+1`
-/

namespace A175967.P4411380695847270391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173073 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A175967.P4411380695847270391

namespace A175967

/-- `∑[A173073(n+1)+n]+1` -/
def P4411380695847270391.Spec : Prop :=
  ∀ n, P4411380695847270391.a n = A175967 (n + 1)

end A175967

/-! ## A175967.P4189141371086943750

`∑[∪[A018252(n+1), n²]]+1`
-/

namespace A175967.P4189141371086943750
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = x) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A175967.P4189141371086943750

namespace A175967

/-- `∑[∪[A018252(n+1), n²]]+1` -/
def P4189141371086943750.Spec : Prop :=
  ∀ n, (P4189141371086943750.a n : ℤ) = A175967 (n + 1)

end A175967

/-! ## A175967.P1063258050809005168

`A065090(n+1)+a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A175967.P1063258050809005168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A065090 (n + 1) + a (n - 1)

end

end A175967.P1063258050809005168

namespace A175967

/-- `A065090(n+1)+a(n-1)` -/
def P1063258050809005168.Spec : Prop :=
  ∀ n, P1063258050809005168.a n = A175967 (n + 1)

end A175967

/-! ## A175967.P14068568972120493214

`A002808(n-1)+a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A175967.P14068568972120493214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A002808 (n - 1) + a (n - 1)

end

end A175967.P14068568972120493214

namespace A175967

/-- `A002808(n-1)+a(n-1)` -/
def P14068568972120493214.Spec : Prop :=
  ∀ n, P14068568972120493214.a n = A175967 (n + 1)

end A175967

/-! ## A175967.P15831273415237819534

`∑[comp[p?[comp[n²]]]]+1`
-/

namespace A175967.P15831273415237819534
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f4 j ≠ x) n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => (f3 j).Prime) n)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A175967.P15831273415237819534

namespace A175967

/-- `∑[comp[p?[comp[n²]]]]+1` -/
def P15831273415237819534.Spec : Prop :=
  ∀ n, (P15831273415237819534.a n : ℤ) = A175967 (n + 1)

end A175967

/-!
# A175968: Complement of A175967(n), where A175967(n) = the lexicographically earliest sequence with first differences as increasing sequence of nonprimes A018252(n).

The programs for A175968, there is no canonical definition to state claims against.
-/

/-! ## A175968.P5986910564971826724

`comp[∑[n%∏{d}[n, #]]]+2`
-/

namespace A175968.P5986910564971826724
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % (∏ d ∈ Nat.divisors (f3 n), d)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 2

end

end A175968.P5986910564971826724

/-! ## A175968.P7337233815905529670

`comp[∑[n+1-∏{p}[n+1, C(#, n)]]]+2`
-/

namespace A175968.P7337233815905529670
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - ((∏ p ∈ Nat.primeFactors (f3 n), Nat.choose p n : ℕ) : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 2

end

end A175968.P7337233815905529670

/-! ## A175968.P10435431026363135899

`comp[∑[lt[∑{p}[n+1, #], n+1]]+n]+2`
-/

namespace A175968.P10435431026363135899
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f4 n), p

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f3 j < f5 j) n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 2

end

end A175968.P10435431026363135899

/-! ## A175968.P1134199301672176829

`comp[A051349(n)]+1`
-/

namespace A175968.P1134199301672176829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051349 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A175968.P1134199301672176829

/-! ## A175968.P12712841415803049648

`comp[A101203(n)]+1`
-/

namespace A175968.P12712841415803049648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101203 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A175968.P12712841415803049648

/-! ## A175968.P17141964766951846631

`comp[A053767(n)]+2`
-/

namespace A175968.P17141964766951846631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053767 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 2

end

end A175968.P17141964766951846631

/-! ## A175968.P4406232042728679033

`A175970(n+1)+1`
-/

namespace A175968.P4406232042728679033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175970 (n + 1) + 1

end

end A175968.P4406232042728679033

/-! ## A175968.P8096498491427395160

`comp[A101256(n+1)]+2`
-/

namespace A175968.P8096498491427395160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101256 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 2

end

end A175968.P8096498491427395160

/-! ## A175968.P11253544773927680242

`comp[∑[comp[A007918(n)]]]+1`
-/

namespace A175968.P11253544773927680242
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1

end

end A175968.P11253544773927680242

/-! ## A175968.P2339711409748599327

`comp[∑[comp[A020483(n)]]]+1`
-/

namespace A175968.P2339711409748599327
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020483 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1

end

end A175968.P2339711409748599327

/-!
# A175969: Complement of A014284(n), where A014284(n) = the lexicographically earliest sequence with first differences as increasing sequence of primes A000040.

The programs for A175969, the canonical program `A175969.P8352876768554497418` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A175969 has offset 1).

The definition of A175969 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A175969.P8352876768554497418

`comp[∑[lt[∑{e}[n, #], 2]]]`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A175969

/-- `comp[∑[lt[∑{e}[n, #], 2]]]` -/
def P8352876768554497418.Spec : Prop :=
  ∀ n, (P8352876768554497418.a n : ℤ) = A175969 (n + 1)

theorem P8352876768554497418.correct : P8352876768554497418.Spec := by
  intro n
  simp only [A175969, Nat.add_sub_cancel]

end A175969

/-! ## A175969.P8864674898389298447

`comp[∑[record[∑{p}[n, #]]]]+1`
-/

namespace A175969.P8864674898389298447
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f4 n), p

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1

end

end A175969.P8864674898389298447

namespace A175969

/-- `comp[∑[record[∑{p}[n, #]]]]+1` -/
def P8864674898389298447.Spec : Prop :=
  ∀ n, (P8864674898389298447.a n : ℤ) = A175969 (n + 1)

end A175969

/-! ## A175969.P6690076524028279191

`comp[∑[eq[1, ∑{e}[n, #]!]]]`
-/

namespace A175969.P6690076524028279191
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (∑ p ∈ Nat.primeFactors (f5 n), Nat.factorization (f5 n) p)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f3 j = f4 j) n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A175969.P6690076524028279191

namespace A175969

/-- `comp[∑[eq[1, ∑{e}[n, #]!]]]` -/
def P6690076524028279191.Spec : Prop :=
  ∀ n, (P6690076524028279191.a n : ℤ) = A175969 (n + 1)

end A175969

/-! ## A175969.P10924728201112136568

`comp[∑[lt[∏{e}[n, #+1], 3]]]`
-/

namespace A175969.P10924728201112136568
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f4 n), (Nat.factorization (f4 n) p + 1)

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f3 j < f5 j) n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A175969.P10924728201112136568

namespace A175969

/-- `comp[∑[lt[∏{e}[n, #+1], 3]]]` -/
def P10924728201112136568.Spec : Prop :=
  ∀ n, (P10924728201112136568.a n : ℤ) = A175969 (n + 1)

end A175969

/-! ## A175969.P5726541427896919328

`comp[∑[lt[∑{d}[n, #], n+3]]]`
-/

namespace A175969.P5726541427896919328
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f4 n), d

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f3 j < f5 j) n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A175969.P5726541427896919328

namespace A175969

/-- `comp[∑[lt[∑{d}[n, #], n+3]]]` -/
def P5726541427896919328.Spec : Prop :=
  ∀ n, (P5726541427896919328.a n : ℤ) = A175969 (n + 1)

end A175969

/-! ## A175969.P17152477474848697275

`comp[A007504(n)]+1`
-/

namespace A175969.P17152477474848697275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A175969.P17152477474848697275

namespace A175969

/-- `comp[A007504(n)]+1` -/
def P17152477474848697275.Spec : Prop :=
  ∀ n, (P17152477474848697275.a n : ℤ) = A175969 (n + 1)

end A175969

/-! ## A175969.P7634024636510788863

`comp[∑[A158611(n+1)]]`
-/

namespace A175969.P7634024636510788863
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A175969.P7634024636510788863

namespace A175969

/-- `comp[∑[A158611(n+1)]]` -/
def P7634024636510788863.Spec : Prop :=
  ∀ n, (P7634024636510788863.a n : ℤ) = A175969 (n + 1)

end A175969

/-! ## A175969.P16578457902534315950

`comp[A034387(n+1)]+1`
-/

namespace A175969.P16578457902534315950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034387 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A175969.P16578457902534315950

namespace A175969

/-- `comp[A034387(n+1)]+1` -/
def P16578457902534315950.Spec : Prop :=
  ∀ n, (P16578457902534315950.a n : ℤ) = A175969 (n + 1)

end A175969

/-! ## A175969.P1408973621265259477

`comp[∑[A008578(n+1)]-A008578(n+1)]`
-/

namespace A175969.P1408973621265259477
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A008578 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A175969.P1408973621265259477

namespace A175969

/-- `comp[∑[A008578(n+1)]-A008578(n+1)]` -/
def P1408973621265259477.Spec : Prop :=
  ∀ n, (P1408973621265259477.a n : ℤ) = A175969 (n + 1)

end A175969

/-! ## A175969.P13887308152072604267

`lt[1, A037125(n+1)]+1`
-/

namespace A175969.P13887308152072604267
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037125 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A175969.P13887308152072604267

namespace A175969

/-- `lt[1, A037125(n+1)]+1` -/
def P13887308152072604267.Spec : Prop :=
  ∀ n, (P13887308152072604267.a n : ℤ) = A175969 (n + 1)

end A175969

/-! ## A175969.P3265689843066634706

`∑[A089026(2*A124223(n+1))]`
-/

namespace A175969.P3265689843066634706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089026 (2 * A124223 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A175969.P3265689843066634706

namespace A175969

/-- `∑[A089026(2*A124223(n+1))]` -/
def P3265689843066634706.Spec : Prop :=
  ∀ n, P3265689843066634706.a n = A175969 (n + 1)

end A175969

/-! ## A175969.P4779011641639404931

`lt[2, A327277(n+1)]+1`
-/

namespace A175969.P4779011641639404931
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327277 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A175969.P4779011641639404931

namespace A175969

/-- `lt[2, A327277(n+1)]+1` -/
def P4779011641639404931.Spec : Prop :=
  ∀ n, (P4779011641639404931.a n : ℤ) = A175969 (n + 1)

end A175969

/-!
# A175970: Complement of A051349(n), where A051349(n) = the lexicographically earliest sequence with first differences as increasing sequence of composites A002808(n).

The programs for A175970, the canonical program `A175970.P3267466238605913666` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A175970 has offset 1).

The definition of A175970 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A175970.P3267466238605913666

`comp[∑[comp[p?[comp[n²]]]]]`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A175970

/-- `comp[∑[comp[p?[comp[n²]]]]]` -/
def P3267466238605913666.Spec : Prop :=
  ∀ n, (P3267466238605913666.a n : ℤ) = A175970 (n + 1)

theorem P3267466238605913666.correct : P3267466238605913666.Spec := by
  intro n
  simp only [A175970, Nat.add_sub_cancel]

end A175970

/-! ## A175970.P16501901527596387362

`comp[∑[n%∏{d}[n, #]]]+1`
-/

namespace A175970.P16501901527596387362
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % (∏ d ∈ Nat.divisors (f3 n), d)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1

end

end A175970.P16501901527596387362

namespace A175970

/-- `comp[∑[n%∏{d}[n, #]]]+1` -/
def P16501901527596387362.Spec : Prop :=
  ∀ n, (P16501901527596387362.a n : ℤ) = A175970 (n + 1)

end A175970

/-! ## A175970.P5611587890688113291

`comp[∑[lt[∑{p}[n+1, #], n+1]]+n]+1`
-/

namespace A175970.P5611587890688113291
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f4 n), p

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f3 j < f5 j) n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1

end

end A175970.P5611587890688113291

namespace A175970

/-- `comp[∑[lt[∑{p}[n+1, #], n+1]]+n]+1` -/
def P5611587890688113291.Spec : Prop :=
  ∀ n, (P5611587890688113291.a n : ℤ) = A175970 (n + 1)

end A175970

/-! ## A175970.P17401053759169359417

`comp[∑[1-∑{p}[n+1, C(#, n)]+n]-1]+1`
-/

namespace A175970.P17401053759169359417
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((∑ p ∈ Nat.primeFactors (f3 n), Nat.choose p n : ℕ) : ℤ) + (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A175970.P17401053759169359417

namespace A175970

/-- `comp[∑[1-∑{p}[n+1, C(#, n)]+n]-1]+1` -/
def P17401053759169359417.Spec : Prop :=
  ∀ n, (P17401053759169359417.a n : ℤ) = A175970 (n + 1)

end A175970

/-! ## A175970.P2859493617239957725

`comp[A051349(n)]`
-/

namespace A175970.P2859493617239957725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051349 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A175970.P2859493617239957725

namespace A175970

/-- `comp[A051349(n)]` -/
def P2859493617239957725.Spec : Prop :=
  ∀ n, (P2859493617239957725.a n : ℤ) = A175970 (n + 1)

end A175970

/-! ## A175970.P8375325356011094457

`comp[A101203(n)]`
-/

namespace A175970.P8375325356011094457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101203 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A175970.P8375325356011094457

namespace A175970

/-- `comp[A101203(n)]` -/
def P8375325356011094457.Spec : Prop :=
  ∀ n, (P8375325356011094457.a n : ℤ) = A175970 (n + 1)

end A175970

/-! ## A175970.P5446591682187742929

`comp[A053767(n)]+1`
-/

namespace A175970.P5446591682187742929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053767 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A175970.P5446591682187742929

namespace A175970

/-- `comp[A053767(n)]+1` -/
def P5446591682187742929.Spec : Prop :=
  ∀ n, (P5446591682187742929.a n : ℤ) = A175970 (n + 1)

end A175970

/-! ## A175970.P4918454202073730170

`comp[∑[A141468(n+1)]]`
-/

namespace A175970.P4918454202073730170
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A175970.P4918454202073730170

namespace A175970

/-- `comp[∑[A141468(n+1)]]` -/
def P4918454202073730170.Spec : Prop :=
  ∀ n, (P4918454202073730170.a n : ℤ) = A175970 (n + 1)

end A175970

/-! ## A175970.P16151268687856566828

`comp[A101256(n+1)]+1`
-/

namespace A175970.P16151268687856566828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101256 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A175970.P16151268687856566828

namespace A175970

/-- `comp[A101256(n+1)]+1` -/
def P16151268687856566828.Spec : Prop :=
  ∀ n, (P16151268687856566828.a n : ℤ) = A175970 (n + 1)

end A175970

/-! ## A175970.P10126412221214168137

`comp[∑[A018252(n+1)]-A018252(n+1)]`
-/

namespace A175970.P10126412221214168137
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A018252 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A175970.P10126412221214168137

namespace A175970

/-- `comp[∑[A018252(n+1)]-A018252(n+1)]` -/
def P10126412221214168137.Spec : Prop :=
  ∀ n, (P10126412221214168137.a n : ℤ) = A175970 (n + 1)

end A175970

/-!
# A175971: Denominators of 1/16-1/m^2 for some m>0, which are of the form (8*k+4)^2, sorted by increasing m.

The programs for A175971, the canonical program `A175971.P4381704136798521032` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A175971 has offset 1).

The definition of A175971 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A175971.P2787806993986917072

`lcm(4, comp[4*n])²`
-/

namespace A175971.P2787806993986917072
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 4 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) ^ 2

end

end A175971.P2787806993986917072

namespace A175971

/-- `lcm(4, comp[4*n])²` -/
def P2787806993986917072.Spec : Prop :=
  ∀ n, (P2787806993986917072.a n : ℤ) = A175971 (n + 1)

end A175971

/-! ## A175971.P9361304803220580153

`lcm(16, comp[4*n]^2)`
-/

namespace A175971.P9361304803220580153
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 16 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n ^ 2)

end

end A175971.P9361304803220580153

namespace A175971

/-- `lcm(16, comp[4*n]^2)` -/
def P9361304803220580153.Spec : Prop :=
  ∀ n, (P9361304803220580153.a n : ℤ) = A175971 (n + 1)

end A175971

/-! ## A175971.P6500978828323543229

`(2*comp[4*n])²*gcd(2, n%3)²`
-/

namespace A175971.P6500978828323543229
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) ^ 2 * Nat.gcd 2 (n % 3) ^ 2

end

end A175971.P6500978828323543229

namespace A175971

/-- `(2*comp[4*n])²*gcd(2, n%3)²` -/
def P6500978828323543229.Spec : Prop :=
  ∀ n, (P6500978828323543229.a n : ℤ) = A175971 (n + 1)

end A175971

/-! ## A175971.P9619093009397284468

`ogf((16+16x+144x^2+352x^3+96x^4+352x^5+144x^6+16x^7+16x^8)/(1-3x^3+3x^6-x^9))`
-/

namespace A175971.P9619093009397284468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [16, 16, 144, 352, 96, 352, 144, 16, 16] [1, 0, 0, -3, 0, 0, 3, 0, 0, -1] n

end

end A175971.P9619093009397284468

namespace A175971

/-- `ogf((16+16x+144x^2+352x^3+96x^4+352x^5+144x^6+16x^7+16x^8)/(1-3x^3+3x^6-x^9))` -/
def P9619093009397284468.Spec : Prop :=
  ∀ n, P9619093009397284468.a n = A175971 (n + 1)

end A175971

/-! ## A175971.P3047414000191819818

`lcm(4, A173773(n))^2`
-/

namespace A175971.P3047414000191819818
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 4 (A173773 n) ^ 2

end

end A175971.P3047414000191819818

namespace A175971

/-- `lcm(4, A173773(n))^2` -/
def P3047414000191819818.Spec : Prop :=
  ∀ n, (P3047414000191819818.a n : ℤ) = A175971 (n + 1)

end A175971

/-! ## A175971.P4381704136798521032

`A017114(A009947(n))`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A175971

/-- `A017114(A009947(n))` -/
def P4381704136798521032.Spec : Prop :=
  ∀ n, P4381704136798521032.a n = A175971 (n + 1)

theorem P4381704136798521032.correct : P4381704136798521032.Spec := by
  intro n
  simp only [A175971, Nat.add_sub_cancel]

end A175971

/-! ## A175971.P12886761741980131275

`A047410(n+1)*A173855(n+1)`
-/

namespace A175971.P12886761741980131275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047410 (n + 1) * A173855 (n + 1)

end

end A175971.P12886761741980131275

namespace A175971

/-- `A047410(n+1)*A173855(n+1)` -/
def P12886761741980131275.Spec : Prop :=
  ∀ n, P12886761741980131275.a n = A175971 (n + 1)

end A175971

/-! ## A175971.P7109801655929344938

`A047410(n+1)²*A173259(n+1)`
-/

namespace A175971.P7109801655929344938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047410 (n + 1) ^ 2 * A173259 (n + 1)

end

end A175971.P7109801655929344938

namespace A175971

/-- `A047410(n+1)²*A173259(n+1)` -/
def P7109801655929344938.Spec : Prop :=
  ∀ n, P7109801655929344938.a n = A175971 (n + 1)

end A175971

/-! ## A175971.P14336433377771220088

`A174683(comp[4*n])`
-/

namespace A175971.P14336433377771220088
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174683 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A175971.P14336433377771220088

namespace A175971

/-- `A174683(comp[4*n])` -/
def P14336433377771220088.Spec : Prop :=
  ∀ n, P14336433377771220088.a n = A175971 (n + 1)

end A175971

/-! ## A175971.P17970836328740870508

`A174994(A265667(n))`
-/

namespace A175971.P17970836328740870508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174994 (A265667 n).toNat

end

end A175971.P17970836328740870508

namespace A175971

/-- `A174994(A265667(n))` -/
def P17970836328740870508.Spec : Prop :=
  ∀ n, P17970836328740870508.a n = A175971 (n + 1)

end A175971

/-!
# A175974: Primes p such that A175933(p)=0.

The programs for A175974, there is no canonical definition to state claims against.
-/

/-! ## A175974.P9868650232434040110

`p?[gcd(n, A175933(A028310(n))²)]`
-/

namespace A175974.P9868650232434040110
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A175933 (A028310 n).toNat ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A175974.P9868650232434040110

/-! ## A175974.P14335280526587126349

`p?[gcd(A080305(n+1), A175933(n+1))]`
-/

namespace A175974.P14335280526587126349
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A080305 (n + 1)) (A175933 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A175974.P14335280526587126349

/-! ## A175974.P2984626972697236021

`p?[xor(-A175933(n+1), A089247(n+1))]`
-/

namespace A175974.P2984626972697236021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (-A175933 (n + 1)) (A089247 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A175974.P2984626972697236021

/-!
# A175976: a(n) = 4^n - 3*n + 1.

The programs for A175976, the canonical program `A175976.P5697769186700930070` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A175976 has offset 0).

The definition of A175976 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4^n-3*n+1` (program `A175976.P5697769186700930070`, by `A175976.P5697769186700930070.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A175976.P5697769186700930070

`4^n-3*n+1`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A175976

/-- `4^n-3*n+1` -/
def P5697769186700930070.Spec : Prop :=
  ∀ n, P5697769186700930070.a n = A175976 n

theorem P5697769186700930070.correct : P5697769186700930070.Spec := by
  intro n
  simp only [A175976]

end A175976

/-! ## A175976.P7383971339149344487

`ogf((2-10x+17x^2)/(1-6x+9x^2-4x^3))`
-/

namespace A175976.P7383971339149344487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -10, 17] [1, -6, 9, -4] n

end

end A175976.P7383971339149344487

namespace A175976

/-- `ogf((2-10x+17x^2)/(1-6x+9x^2-4x^3))` -/
def P7383971339149344487.Spec : Prop :=
  ∀ n, P7383971339149344487.a n = A175976 n

end A175976

/-! ## A175976.P16417213796744243848

`∑[4*a(n-1)+9]` with `a(0)=2, a(1)=0`
-/

namespace A175976.P16417213796744243848
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 0] fun n f1 =>
  4 * f1 (n - 1) + 9

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A175976.P16417213796744243848

namespace A175976

/-- `∑[4*a(n-1)+9]` -/
def P16417213796744243848.Spec : Prop :=
  ∀ n, (P16417213796744243848.a n : ℤ) = A175976 n

end A175976

/-! ## A175976.P4089446784103578485

`∑[lcm(4, a(n-1))+9]` with `a(0)=2, a(1)=0`
-/

namespace A175976.P4089446784103578485
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 0] fun n f1 =>
  Nat.lcm 4 (f1 (n - 1)) + 9

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A175976.P4089446784103578485

namespace A175976

/-- `∑[lcm(4, a(n-1))+9]` -/
def P4089446784103578485.Spec : Prop :=
  ∀ n, (P4089446784103578485.a n : ℤ) = A175976 n

end A175976

/-! ## A175976.P5993789835423436487

`∑[or(9, 4*a(n-1))]` with `a(0)=2, a(1)=0`
-/

namespace A175976.P5993789835423436487
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 0] fun n f1 =>
  Nat.lor 9 (4 * f1 (n - 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A175976.P5993789835423436487

namespace A175976

/-- `∑[or(9, 4*a(n-1))]` -/
def P5993789835423436487.Spec : Prop :=
  ∀ n, (P5993789835423436487.a n : ℤ) = A175976 n

end A175976

/-! ## A175976.P8762066279416595806

`-xor(4^n-3*n, -1)`
-/

namespace A175976.P8762066279416595806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor ((4 ^ n : ℤ) - (3 * n : ℤ)) (-1)

end

end A175976.P8762066279416595806

namespace A175976

/-- `-xor(4^n-3*n, -1)` -/
def P8762066279416595806.Spec : Prop :=
  ∀ n, P8762066279416595806.a n = A175976 n

end A175976

/-! ## A175976.P10255641275187692045

`∑[4*(3-(3/4-a(n-1)))]` with `a(0)=2, a(1)=0`
-/

namespace A175976.P10255641275187692045
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [2, 0] fun n f1 =>
  4 * (3 - ((3 : ℚ) / 4 - f1 (n - 1)))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A175976.P10255641275187692045

namespace A175976

/-- `∑[4*(3-(3/4-a(n-1)))]` -/
def P10255641275187692045.Spec : Prop :=
  ∀ n, P10255641275187692045.a n = (A175976 n : ℚ)

end A175976

/-! ## A175976.P6018844445145178106

`∑[xor(2, A002001(n)-1)]`
-/

namespace A175976.P6018844445145178106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 2 (A002001 n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A175976.P6018844445145178106

namespace A175976

/-- `∑[xor(2, A002001(n)-1)]` -/
def P6018844445145178106.Spec : Prop :=
  ∀ n, P6018844445145178106.a n = A175976 n

end A175976

/-! ## A175976.P10323013365992428535

`abs(abs(A052539(n)-2*n)-n)`
-/

namespace A175976.P10323013365992428535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(|A052539 n - (2 * n : ℤ)| - (n : ℤ))|

end

end A175976.P10323013365992428535

namespace A175976

/-- `abs(abs(A052539(n)-2*n)-n)` -/
def P10323013365992428535.Spec : Prop :=
  ∀ n, P10323013365992428535.a n = A175976 n

end A175976

/-! ## A175976.P10098075745264038334

`A249453(2*n)/2`
-/

namespace A175976.P10098075745264038334
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A249453 (2 * n) : ℚ) / 2

end

end A175976.P10098075745264038334

namespace A175976

/-- `A249453(2*n)/2` -/
def P10098075745264038334.Spec : Prop :=
  ∀ n, P10098075745264038334.a n = (A175976 n : ℚ)

end A175976

/-! ## A175976.P9943414078033918377

`(A087288(2*n)-6*n)/2`
-/

namespace A175976.P9943414078033918377
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A087288 (2 * n) - (6 * n : ℤ) : ℚ) / 2

end

end A175976.P9943414078033918377

namespace A175976

/-- `(A087288(2*n)-6*n)/2` -/
def P9943414078033918377.Spec : Prop :=
  ∀ n, P9943414078033918377.a n = (A175976 n : ℚ)

end A175976

/-! ## A175976.P11200042156803918033

`ceil(A249453(A005843(n))/2)`
-/

namespace A175976.P11200042156803918033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A249453 (A005843 n).toNat : ℚ) / 2⌉

end

end A175976.P11200042156803918033

namespace A175976

/-- `ceil(A249453(A005843(n))/2)` -/
def P11200042156803918033.Spec : Prop :=
  ∀ n, P11200042156803918033.a n = A175976 n

end A175976

/-! ## A175976.P1280617557321091553

`(A020737(2*n)-A131833(2*n))/2`
-/

namespace A175976.P1280617557321091553
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020737 (2 * n) - A131833 (2 * n) : ℚ) / 2

end

end A175976.P1280617557321091553

namespace A175976

/-- `(A020737(2*n)-A131833(2*n))/2` -/
def P1280617557321091553.Spec : Prop :=
  ∀ n, P1280617557321091553.a n = (A175976 n : ℚ)

end A175976

/-! ## A175976.P12609570855429346725

`(A246139(2*n+1)-A016933(n+1))/2`
-/

namespace A175976.P12609570855429346725
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A246139 (2 * n + 1) - A016933 (n + 1) : ℚ) / 2

end

end A175976.P12609570855429346725

namespace A175976

/-- `(A246139(2*n+1)-A016933(n+1))/2` -/
def P12609570855429346725.Spec : Prop :=
  ∀ n, P12609570855429346725.a n = (A175976 n : ℚ)

end A175976

/-! ## A175976.P7250293192006543340

`(A086653(2*n+1)-A016921(2*n))/2`
-/

namespace A175976.P7250293192006543340
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A086653 (2 * n + 1) - A016921 (2 * n) : ℚ) / 2

end

end A175976.P7250293192006543340

namespace A175976

/-- `(A086653(2*n+1)-A016921(2*n))/2` -/
def P7250293192006543340.Spec : Prop :=
  ∀ n, P7250293192006543340.a n = (A175976 n : ℚ)

end A175976

/-! ## A175976.P3829342460463329587

`(A085688(A016969(n))-A016969(n))/2`
-/

namespace A175976.P3829342460463329587
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A085688 (A016969 n).toNat - A016969 n : ℚ) / 2

end

end A175976.P3829342460463329587

namespace A175976

/-- `(A085688(A016969(n))-A016969(n))/2` -/
def P3829342460463329587.Spec : Prop :=
  ∀ n, P3829342460463329587.a n = (A175976 n : ℚ)

end A175976

/-! ## A175976.P3500218439937021900

`∑{#}[2*n, C(2*n, #)-(n-1)^C(#, 2*n)]`
-/

namespace A175976.P3500218439937021900
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), ((Nat.choose (2 * n) k : ℤ) - ((n : ℤ) - 1) ^ Nat.choose k (2 * n))

end

end A175976.P3500218439937021900

namespace A175976

/-- `∑{#}[2*n, C(2*n, #)-(n-1)^C(#, 2*n)]` -/
def P3500218439937021900.Spec : Prop :=
  ∀ n, P3500218439937021900.a n = A175976 n

end A175976

/-!
# A175978: a(1) = 1, for n >= 2: a(n) = a(n-1)^(n-1) + 1.

The programs for A175978, the canonical program `A175978.P9750665203139050766` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A175978 has offset 1).

The definition of A175978 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)^n+1` (program `A175978.P9750665203139050766`, by `A175978.P9750665203139050766.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A175978.P9750665203139050766

`a(n-1)^n+1` with `a(0)=1`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A175978

/-- `a(n-1)^n+1` -/
def P9750665203139050766.Spec : Prop :=
  ∀ n, (P9750665203139050766.a n : ℤ) = A175978 (n + 1)

theorem P9750665203139050766.correct : P9750665203139050766.Spec := by
  intro n
  simp only [A175978, Nat.add_sub_cancel]

end A175978

/-!
# A175980: a(1) = 1, for n >= 2: a(n) = a(n-1)^n + 1.

The programs for A175980, there is no canonical definition to state claims against.
-/

/-! ## A175980.P9401206000952920154

`a(n-1)^(n+1)+1` with `a(0)=1`
-/

namespace A175980.P9401206000952920154
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) ^ (n + 1) + 1

end

end A175980.P9401206000952920154

/-!
# A175981: a(1) = 1, for n >= 2: a(n) = a(n-1)^(n-1) - 1.

The programs for A175981, the canonical program `A175981.P6268394697429891400` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A175981 has offset 1).

The definition of A175981 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)^n-1` (program `A175981.P6268394697429891400`, by `A175981.P6268394697429891400.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A175981.P6268394697429891400

`a(n-1)^n-1` with `a(0)=1`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A175981

/-- `a(n-1)^n-1` -/
def P6268394697429891400.Spec : Prop :=
  ∀ n, P6268394697429891400.a n = A175981 (n + 1)

theorem P6268394697429891400.correct : P6268394697429891400.Spec := by
  intro n
  simp only [A175981, Nat.add_sub_cancel]

end A175981

/-!
# A175982: a(1) = 1, for n >= 2: a(n) = n^(a(n-1)) - 1.

The programs for A175982, there is no canonical definition to state claims against.
-/

/-! ## A175982.P18141177195722030599

`(n+1)^a(n-1)-1` with `a(0)=1`
-/

namespace A175982.P18141177195722030599
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [1] fun n a =>
  (n + 1 : ℝ) ^ (a (n - 1)) - 1

end

end A175982.P18141177195722030599

/-!
# A175984: a(1) = 1, for n >= 2: a(n) = (a(n-1)+1)^(n-1) + 1.

The programs for A175984, the canonical program `A175984.P881739348129691929` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A175984 has offset 1).

The definition of A175984 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(a(n-1)+1)^n+1` (program `A175984.P881739348129691929`, by `A175984.P881739348129691929.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A175984.P881739348129691929

`(a(n-1)+1)^n+1` with `a(0)=1`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A175984

/-- `(a(n-1)+1)^n+1` -/
def P881739348129691929.Spec : Prop :=
  ∀ n, (P881739348129691929.a n : ℤ) = A175984 (n + 1)

theorem P881739348129691929.correct : P881739348129691929.Spec := by
  intro n
  simp only [A175984, Nat.add_sub_cancel]

end A175984

/-!
# A175985: a(1) = 1, for n >= 2: a(n) = (a(n-1)+1)^(n-1) - 1.

The programs for A175985, the canonical program `A175985.P4981628887959422133` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A175985 has offset 1).

The definition of A175985 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(a(n-1)+1)^n-1` (program `A175985.P4981628887959422133`, by `A175985.P4981628887959422133.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A175985.P4981628887959422133

`(a(n-1)+1)^n-1` with `a(0)=1`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A175985

/-- `(a(n-1)+1)^n-1` -/
def P4981628887959422133.Spec : Prop :=
  ∀ n, P4981628887959422133.a n = A175985 (n + 1)

theorem P4981628887959422133.correct : P4981628887959422133.Spec := by
  intro n
  simp only [A175985, Nat.add_sub_cancel]

end A175985

/-!
# A175986: a(1) = 1, for n >= 2: a(n) = (a(n-1)-1)^(n-1) - 1.

The programs for A175986, the canonical program `A175986.P17946096858022161001` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A175986 has offset 1).

The definition of A175986 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(a(n-1)-1)^n-1` (program `A175986.P17946096858022161001`, by `A175986.P17946096858022161001.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A175986.P17946096858022161001

`(a(n-1)-1)^n-1` with `a(0)=1`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A175986

/-- `(a(n-1)-1)^n-1` -/
def P17946096858022161001.Spec : Prop :=
  ∀ n, P17946096858022161001.a n = A175986 (n + 1)

theorem P17946096858022161001.correct : P17946096858022161001.Spec := by
  intro n
  simp only [A175986, Nat.add_sub_cancel]

end A175986

/-!
# A175987: a(1) = 1, for n >= 2: a(n) = (a(n-1)-1)^n - 1.

The programs for A175987, there is no canonical definition to state claims against.
-/

/-! ## A175987.P11012251581892031715

`(a(n-1)-1)^(n+1)-1` with `a(0)=1`
-/

namespace A175987.P11012251581892031715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (a (n - 1) - 1) ^ (n + 1) - 1

end

end A175987.P11012251581892031715

/-!
# A175988: a(1) = 1, for n >= 2: a(n) = (a(n-1) - 1)^n.

The programs for A175988, the canonical program `A175988.P9555882880536317674` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A175988 has offset 1).

The definition of A175988 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(a(n-1)-1)^(n+1)` (program `A175988.P9555882880536317674`, by `A175988.P9555882880536317674.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A175988.P9555882880536317674

`(a(n-1)-1)^(n+1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A175988

/-- `(a(n-1)-1)^(n+1)` -/
def P9555882880536317674.Spec : Prop :=
  ∀ n, P9555882880536317674.a n = A175988 (n + 1)

theorem P9555882880536317674.correct : P9555882880536317674.Spec := by
  intro n
  simp only [A175988, Nat.add_sub_cancel]

end A175988

/-!
# A175990: Irregular triangle read by rows: t(n,m) = binomial(n-m-1,m+1) for 0 <= m <= floor((n-1)/2).

The programs for A175990, the canonical program `A175990.P11720610328343319649` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A175990 has offset 2).

The definition of A175990 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9800 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A175990.P11720610328343319649

`A011973(A049068(n+2))-A011973(n+1)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A175990

/-- `A011973(A049068(n+2))-A011973(n+1)` -/
def P11720610328343319649.Spec : Prop :=
  ∀ n, P11720610328343319649.a n = A175990 (n + 2)

theorem P11720610328343319649.correct : P11720610328343319649.Spec := by
  intro n
  simp only [A175990, Nat.add_sub_cancel]

end A175990

/-! ## A175990.P11399981000364190666

`A074909(A056536(n+2))-A011973(n+1)`
-/

namespace A175990.P11399981000364190666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 (A056536 (n + 2)).toNat - A011973 (n + 1)

end

end A175990.P11399981000364190666

namespace A175990

/-- `A074909(A056536(n+2))-A011973(n+1)` -/
def P11399981000364190666.Spec : Prop :=
  ∀ n, P11399981000364190666.a n = A175990 (n + 2)

end A175990

/-! ## A175990.P3448995328690584879

`A199011(A091018(n+1))`
-/

namespace A175990.P3448995328690584879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199011 (A091018 (n + 1)).toNat

end

end A175990.P3448995328690584879

namespace A175990

/-- `A199011(A091018(n+1))` -/
def P3448995328690584879.Spec : Prop :=
  ∀ n, P3448995328690584879.a n = A175990 (n + 2)

end A175990

/-! ## A175990.P219692851398581175

`A206735(A056536(n+2))`
-/

namespace A175990.P219692851398581175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206735 (A056536 (n + 2)).toNat

end

end A175990.P219692851398581175

namespace A175990

/-- `A206735(A056536(n+2))` -/
def P219692851398581175.Spec : Prop :=
  ∀ n, P219692851398581175.a n = A175990 (n + 2)

end A175990

/-! ## A175990.P1885181360637289721

`A206735(A091018(n+1)+1)`
-/

namespace A175990.P1885181360637289721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206735 (A091018 (n + 1) + 1).toNat

end

end A175990.P1885181360637289721

namespace A175990

/-- `A206735(A091018(n+1)+1)` -/
def P1885181360637289721.Spec : Prop :=
  ∀ n, P1885181360637289721.a n = A175990 (n + 2)

end A175990

/-! ## A175990.P9888758307731308129

`A135278(A091018(n+1))-A011973(n+1)`
-/

namespace A175990.P9888758307731308129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135278 (A091018 (n + 1)).toNat - A011973 (n + 1)

end

end A175990.P9888758307731308129

namespace A175990

/-- `A135278(A091018(n+1))-A011973(n+1)` -/
def P9888758307731308129.Spec : Prop :=
  ∀ n, P9888758307731308129.a n = A175990 (n + 2)

end A175990

/-! ## A175990.P10874905022120751488

`A169803(A274427(n+2))`
-/

namespace A175990.P10874905022120751488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169803 (A274427 (n + 2)).toNat

end

end A175990.P10874905022120751488

namespace A175990

/-- `A169803(A274427(n+2))` -/
def P10874905022120751488.Spec : Prop :=
  ∀ n, P10874905022120751488.a n = A175990 (n + 2)

end A175990

/-! ## A175990.P5188179255996228875

`A052553(A274430(n+2)-1)`
-/

namespace A175990.P5188179255996228875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052553 (A274430 (n + 2) - 1).toNat

end

end A175990.P5188179255996228875

namespace A175990

/-- `A052553(A274430(n+2)-1)` -/
def P5188179255996228875.Spec : Prop :=
  ∀ n, P5188179255996228875.a n = A175990 (n + 2)

end A175990

/-!
# A175991: a(n) = binomial(binomial(binomial(n, 2), 3), 4)/5.

The programs for A175991, the canonical program `A175991.P15041936394938819956` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A175991 has offset 4).

The definition of A175991 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A175991.P15041936394938819956

`C(C(C(n+4, 2), 3), 4)/5`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A175991

/-- `C(C(C(n+4, 2), 3), 4)/5` -/
def P15041936394938819956.Spec : Prop :=
  ∀ n, P15041936394938819956.a n = (A175991 (n + 4) : ℚ)

end A175991

/-! ## A175991.P2887234467806554337

`C(A093566(n+5), 4)/5`
-/

namespace A175991.P2887234467806554337
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (A093566 (n + 5)).toNat 4 : ℚ) / 5

end

end A175991.P2887234467806554337

namespace A175991

/-- `C(A093566(n+5), 4)/5` -/
def P2887234467806554337.Spec : Prop :=
  ∀ n, P2887234467806554337.a n = (A175991 (n + 4) : ℚ)

end A175991

/-!
# A175992: Triangle T(n,k) read by rows. If n=k then 0, else if k divides n then 1 else 0.

The programs for A175992, the canonical program `A175992.P4475088882485289309` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A175992 has offset 1).

The definition of A175992 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5151 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A175992.P5823362728860313226

`ceil(Δ[acot(A127057(n+1))])`
-/

namespace A175992.P5823362728860313226
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (A127057 (n + 1) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈f1 (n + 1) - f1 n⌉

end

end A175992.P5823362728860313226

namespace A175992

/-- `ceil(Δ[acot(A127057(n+1))])` -/
def P5823362728860313226.Spec : Prop :=
  ∀ n, P5823362728860313226.a n = A175992 (n + 1)

end A175992

/-! ## A175992.P11967105544730595820

`A157928(A114004(n)²)`
-/

namespace A175992.P11967105544730595820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157928 (A114004 n ^ 2).toNat

end

end A175992.P11967105544730595820

namespace A175992

/-- `A157928(A114004(n)²)` -/
def P11967105544730595820.Spec : Prop :=
  ∀ n, P11967105544730595820.a n = A175992 (n + 1)

end A175992

/-! ## A175992.P4475088882485289309

`and(A051731(n+1), A071762(n))`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A175992

/-- `and(A051731(n+1), A071762(n))` -/
def P4475088882485289309.Spec : Prop :=
  ∀ n, P4475088882485289309.a n = A175992 (n + 1)

theorem P4475088882485289309.correct : P4475088882485289309.Spec := by
  intro n
  simp only [A175992, Nat.add_sub_cancel]

end A175992

/-! ## A175992.P14810400594632770948

`A267810(A085383(n+1))`
-/

namespace A175992.P14810400594632770948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267810 (A085383 (n + 1)).toNat

end

end A175992.P14810400594632770948

namespace A175992

/-- `A267810(A085383(n+1))` -/
def P14810400594632770948.Spec : Prop :=
  ∀ n, P14810400594632770948.a n = A175992 (n + 1)

end A175992

/-! ## A175992.P4273518941372774407

`and(A051731(n+1), A072024(n))`
-/

namespace A175992.P4273518941372774407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A051731 (n + 1)) (A072024 n)

end

end A175992.P4273518941372774407

namespace A175992

/-- `and(A051731(n+1), A072024(n))` -/
def P4273518941372774407.Spec : Prop :=
  ∀ n, P4273518941372774407.a n = A175992 (n + 1)

end A175992

/-! ## A175992.P15565829264222462496

`A176890(A185870(n+1))`
-/

namespace A175992.P15565829264222462496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176890 (A185870 (n + 1)).toNat

end

end A175992.P15565829264222462496

namespace A175992

/-- `A176890(A185870(n+1))` -/
def P15565829264222462496.Spec : Prop :=
  ∀ n, P15565829264222462496.a n = A175992 (n + 1)

end A175992

/-! ## A175992.P9576280929110896136

`and(A051731(n+1), A346434(n+1))`
-/

namespace A175992.P9576280929110896136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A051731 (n + 1)) (A346434 (n + 1))

end

end A175992.P9576280929110896136

namespace A175992

/-- `and(A051731(n+1), A346434(n+1))` -/
def P9576280929110896136.Spec : Prop :=
  ∀ n, P9576280929110896136.a n = A175992 (n + 1)

end A175992

/-! ## A175992.P9069338840071877602

`char[lt[1, A168021(n+1)]]`
-/

namespace A175992.P9069338840071877602
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168021 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A175992.P9069338840071877602

namespace A175992

/-- `char[lt[1, A168021(n+1)]]` -/
def P9069338840071877602.Spec : Prop :=
  ∀ n, (P9069338840071877602.a n : ℤ) = A175992 (n + 1)

end A175992

/-! ## A175992.P16299826159521015621

`and(A001607(n), A176890(n+1))`
-/

namespace A175992.P16299826159521015621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001607 n) (A176890 (n + 1))

end

end A175992.P16299826159521015621

namespace A175992

/-- `and(A001607(n), A176890(n+1))` -/
def P16299826159521015621.Spec : Prop :=
  ∀ n, P16299826159521015621.a n = A175992 (n + 1)

end A175992

/-! ## A175992.P5888138384961278835

`and(A176890(n+1), A240602(n+1))`
-/

namespace A175992.P5888138384961278835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A176890 (n + 1)) (A240602 (n + 1))

end

end A175992.P5888138384961278835

namespace A175992

/-- `and(A176890(n+1), A240602(n+1))` -/
def P5888138384961278835.Spec : Prop :=
  ∀ n, P5888138384961278835.a n = A175992 (n + 1)

end A175992

/-! ## A175992.P7159314684927876907

`1-A155029(n+1)`
-/

namespace A175992.P7159314684927876907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A155029 (n + 1)

end

end A175992.P7159314684927876907

namespace A175992

/-- `1-A155029(n+1)` -/
def P7159314684927876907.Spec : Prop :=
  ∀ n, P7159314684927876907.a n = A175992 (n + 1)

end A175992

/-! ## A175992.P5745139592674199741

`(A155029(n+1)+A153881(n+2))*A153881(n+1)`
-/

namespace A175992.P5745139592674199741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A155029 (n + 1) + A153881 (n + 2)) * A153881 (n + 1)

end

end A175992.P5745139592674199741

namespace A175992

/-- `(A155029(n+1)+A153881(n+2))*A153881(n+1)` -/
def P5745139592674199741.Spec : Prop :=
  ∀ n, P5745139592674199741.a n = A175992 (n + 1)

end A175992

/-! ## A175992.P10689446386944033507

`and(A071383(n+1), A176890(n+1))`
-/

namespace A175992.P10689446386944033507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A071383 (n + 1)) (A176890 (n + 1))

end

end A175992.P10689446386944033507

namespace A175992

/-- `and(A071383(n+1), A176890(n+1))` -/
def P10689446386944033507.Spec : Prop :=
  ∀ n, P10689446386944033507.a n = A175992 (n + 1)

end A175992

/-! ## A175992.P14909879775088869838

`and(A051731(n+1), A096796(n))`
-/

namespace A175992.P14909879775088869838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A051731 (n + 1)) (A096796 n)

end

end A175992.P14909879775088869838

namespace A175992

/-- `and(A051731(n+1), A096796(n))` -/
def P14909879775088869838.Spec : Prop :=
  ∀ n, P14909879775088869838.a n = A175992 (n + 1)

end A175992

/-! ## A175992.P8746327321873277113

`and(A001045(n), A176890(n+1))`
-/

namespace A175992.P8746327321873277113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001045 n) (A176890 (n + 1))

end

end A175992.P8746327321873277113

namespace A175992

/-- `and(A001045(n), A176890(n+1))` -/
def P8746327321873277113.Spec : Prop :=
  ∀ n, P8746327321873277113.a n = A175992 (n + 1)

end A175992

/-! ## A175992.P25087078183384841

`and(A002380(n), A176890(n+1))`
-/

namespace A175992.P25087078183384841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A002380 n) (A176890 (n + 1))

end

end A175992.P25087078183384841

namespace A175992

/-- `and(A002380(n), A176890(n+1))` -/
def P25087078183384841.Spec : Prop :=
  ∀ n, P25087078183384841.a n = A175992 (n + 1)

end A175992

/-! ## A175992.P14321129666922597935

`and(A000225(n), A176890(n+1))`
-/

namespace A175992.P14321129666922597935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000225 n) (A176890 (n + 1))

end

end A175992.P14321129666922597935

namespace A175992

/-- `and(A000225(n), A176890(n+1))` -/
def P14321129666922597935.Spec : Prop :=
  ∀ n, P14321129666922597935.a n = A175992 (n + 1)

end A175992

/-! ## A175992.P10290206857338678644

`and(A045883(n), A176890(n+1))`
-/

namespace A175992.P10290206857338678644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A045883 n) (A176890 (n + 1))

end

end A175992.P10290206857338678644

namespace A175992

/-- `and(A045883(n), A176890(n+1))` -/
def P10290206857338678644.Spec : Prop :=
  ∀ n, P10290206857338678644.a n = A175992 (n + 1)

end A175992

/-! ## A175992.P16602273032306948848

`and(A176890(n+1), A210337(n))`
-/

namespace A175992.P16602273032306948848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A176890 (n + 1)) (A210337 n)

end

end A175992.P16602273032306948848

namespace A175992

/-- `and(A176890(n+1), A210337(n))` -/
def P16602273032306948848.Spec : Prop :=
  ∀ n, P16602273032306948848.a n = A175992 (n + 1)

end A175992

/-! ## A175992.P12401920108105652418

`and(A176890(n+1), A335843(n+1))`
-/

namespace A175992.P12401920108105652418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A176890 (n + 1)) (A335843 (n + 1))

end

end A175992.P12401920108105652418

namespace A175992

/-- `and(A176890(n+1), A335843(n+1))` -/
def P12401920108105652418.Spec : Prop :=
  ∀ n, P12401920108105652418.a n = A175992 (n + 1)

end A175992

/-!
# A175999: Decimal expansion of the definite integral of x^(1/x) for x = 0 to 1.

The programs for A175999, there is no canonical definition to state claims against.
-/

/-! ## A175999.P1375801574394150905

`9-A176000(n)`
-/

namespace A175999.P1375801574394150905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A176000 n

end

end A175999.P1375801574394150905

