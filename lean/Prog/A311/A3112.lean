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
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
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
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
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
import Seq.Opaque.C024

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A311200: Coordination sequence Gal.6.228.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311200, there is no canonical definition to state claims against.
-/

/-! ## A311200.P16048589991940032832

`A311196(n)+A084928(A028338(n))`
-/

namespace A311200.P16048589991940032832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311196 n + A084928 (A028338 n).toNat

end

end A311200.P16048589991940032832

/-! ## A311200.P8776997048651360581

`A311197(n)+A084928(A028338(n))`
-/

namespace A311200.P8776997048651360581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311197 n + A084928 (A028338 n).toNat

end

end A311200.P8776997048651360581

/-! ## A311200.P17111014777785535993

`A375057(n)+A124763(A089408(n))`
-/

namespace A311200.P17111014777785535993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375057 n + A124763 (A089408 n).toNat

end

end A311200.P17111014777785535993

/-! ## A311200.P9952220782241238806

`A311201(n)+A234017(A004800(n+1))`
-/

namespace A311200.P9952220782241238806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311201 n + A234017 (A004800 (n + 1)).toNat

end

end A311200.P9952220782241238806

/-! ## A311200.P1162945566717219371

`A311201(n)%A135373(A206284(n+1))`
-/

namespace A311200.P1162945566717219371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A311201 n) (A135373 (A206284 (n + 1)).toNat)

end

end A311200.P1162945566717219371

/-!
# A311201: Coordination sequence Gal.6.224.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311201, there is no canonical definition to state claims against.
-/

/-! ## A311201.P7818667837622963581

`A248333(A016825(n)+comp[∑[n]])`
-/

namespace A311201.P7818667837622963581
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248333 (A016825 n + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ)).toNat

end

end A311201.P7818667837622963581

/-! ## A311201.P14949883993608791669

`A311198(n)+A179801(A000124(n))`
-/

namespace A311201.P14949883993608791669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311198 n + A179801 (A000124 n).toNat

end

end A311201.P14949883993608791669

/-! ## A311201.P7727555756066389363

`A301293(n)-A323068(A000079(n))`
-/

namespace A311201.P7727555756066389363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301293 n - A323068 (A000079 n).toNat

end

end A311201.P7727555756066389363

/-!
# A311202: Coordination sequence Gal.5.151.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311202, there is no canonical definition to state claims against.
-/

/-! ## A311202.P11567782045959731222

`A301301(n)+A225654(A185035(n))`
-/

namespace A311202.P11567782045959731222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301301 n + A225654 (A185035 n).toNat

end

end A311202.P11567782045959731222

/-! ## A311202.P415120032790081355

`A311208(n)-A341999(A321728(n))`
-/

namespace A311202.P415120032790081355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311208 n - A341999 (A321728 n).toNat

end

end A311202.P415120032790081355

/-! ## A311202.P2295115319582863099

`A311203(n)-A185284(A033627(n+1))`
-/

namespace A311202.P2295115319582863099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311203 n - A185284 (A033627 (n + 1)).toNat

end

end A311202.P2295115319582863099

/-! ## A311202.P14542758218339426201

`A301301(n)+A283316(A000383(n+4))`
-/

namespace A311202.P14542758218339426201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301301 n + A283316 (A000383 (n + 4)).toNat

end

end A311202.P14542758218339426201

/-! ## A311202.P5027112423060686947

`A301301(n)+A185284(3*n+1)`
-/

namespace A311202.P5027112423060686947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301301 n + A185284 (3 * n + 1)

end

end A311202.P5027112423060686947

/-!
# A311203: Coordination sequence Gal.5.151.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311203, there is no canonical definition to state claims against.
-/

/-! ## A311203.P13715405147266334564

`A301301(n)+A135551(A014378(n))`
-/

namespace A311203.P13715405147266334564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301301 n + A135551 (A014378 n).toNat

end

end A311203.P13715405147266334564

/-! ## A311203.P10954070842944312328

`A311202(n)+A010060(A185213(n))`
-/

namespace A311203.P10954070842944312328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311202 n + A010060 (A185213 n).toNat

end

end A311203.P10954070842944312328

/-! ## A311203.P6934925479394076754

`A311202(n)-A178798(A006307(n))`
-/

namespace A311203.P6934925479394076754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311202 n - A178798 (A006307 n).toNat

end

end A311203.P6934925479394076754

/-! ## A311203.P9724454753111183039

`A311202(n)+A011734(A146040(n+1))`
-/

namespace A311203.P9724454753111183039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311202 n + A011734 (A146040 (n + 1)).toNat

end

end A311203.P9724454753111183039

/-! ## A311203.P15604871321954633359

`A311202(n)+A185284(A033627(n+1))`
-/

namespace A311203.P15604871321954633359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311202 n + A185284 (A033627 (n + 1)).toNat

end

end A311203.P15604871321954633359

/-!
# A311204: Coordination sequence Gal.5.62.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311204, there is no canonical definition to state claims against.
-/

/-! ## A311204.P11153621438641109053

`A311196(n)+A084928(A028338(n+1))`
-/

namespace A311204.P11153621438641109053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311196 n + A084928 (A028338 (n + 1)).toNat

end

end A311204.P11153621438641109053

/-! ## A311204.P10503950471742277511

`A311197(n)+A084928(A028338(n+1))`
-/

namespace A311204.P10503950471742277511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311197 n + A084928 (A028338 (n + 1)).toNat

end

end A311204.P10503950471742277511

/-! ## A311204.P2065480941301843556

`∑[A060501(A032924(41*n+17))]-2`
-/

namespace A311204.P2065480941301843556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060501 (A032924 (41 * n + 17)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A311204.P2065480941301843556

/-! ## A311204.P2375445671548518937

`A301301(n)+A070139(A005176(n))`
-/

namespace A311204.P2375445671548518937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301301 n + A070139 (A005176 n).toNat

end

end A311204.P2375445671548518937

/-! ## A311204.P12369140886531634946

`A301301(n)+A124761(A027642(n))`
-/

namespace A311204.P12369140886531634946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301301 n + A124761 (A027642 n).toNat

end

end A311204.P12369140886531634946

/-!
# A311205: Coordination sequence Gal.5.58.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311205, there is no canonical definition to state claims against.
-/

/-! ## A311205.P18096508559837676335

`record[A311206(A332104(n))]`
-/

namespace A311205.P18096508559837676335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311206 (A332104 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A311205.P18096508559837676335

/-! ## A311205.P10242733925044779882

`∏{e}[A000244(n), A311206(#)]`
-/

namespace A311205.P10242733925044779882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A311206 (Nat.factorization (f1 n).natAbs p)

end

end A311205.P10242733925044779882

/-! ## A311205.P11363176958589512162

`∏{e}[A000244(n), A311207(#)]`
-/

namespace A311205.P11363176958589512162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A311207 (Nat.factorization (f1 n).natAbs p)

end

end A311205.P11363176958589512162

/-! ## A311205.P10271387606914531568

`A311206(n)^A269129(n)!`
-/

namespace A311205.P10271387606914531568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311206 n ^ Nat.factorial (A269129 n).toNat

end

end A311205.P10271387606914531568

/-!
# A311206: Coordination sequence Gal.6.126.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311206, there is no canonical definition to state claims against.
-/

/-! ## A311206.P3053814904398506217

`A311207(n)-A185284(A000009(n))`
-/

namespace A311206.P3053814904398506217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311207 n - A185284 (A000009 n).toNat

end

end A311206.P3053814904398506217

/-! ## A311206.P4356833500472895121

`A311207(n)-A073484(A178048(n))`
-/

namespace A311206.P4356833500472895121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311207 n - A073484 (A178048 n).toNat

end

end A311206.P4356833500472895121

/-! ## A311206.P18121162169797326216

`A311207(n)-A185234(A185236(n))`
-/

namespace A311206.P18121162169797326216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311207 n - A185234 (A185236 n).toNat

end

end A311206.P18121162169797326216

/-! ## A311206.P13075165838396830429

`A311207(n)-A185284(A003172(n+1))`
-/

namespace A311206.P13075165838396830429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311207 n - A185284 (A003172 (n + 1)).toNat

end

end A311206.P13075165838396830429

/-! ## A311206.P12991528127078503619

`A311207(n)-A185284(A196314(n+1))`
-/

namespace A311206.P12991528127078503619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311207 n - A185284 (A196314 (n + 1)).toNat

end

end A311206.P12991528127078503619

/-!
# A311207: Coordination sequence Gal.6.122.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311207, there is no canonical definition to state claims against.
-/

/-! ## A311207.P11649198035341400557

`A311206(n)+A185284(2*n+5)`
-/

namespace A311207.P11649198035341400557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311206 n + A185284 (2 * n + 5)

end

end A311207.P11649198035341400557

/-! ## A311207.P13871137045893823731

`A311206(n)+A073484(A178048(n))`
-/

namespace A311207.P13871137045893823731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311206 n + A073484 (A178048 n).toNat

end

end A311207.P13871137045893823731

/-! ## A311207.P14051832665852555103

`A311206(n)+A122924(A282441(n+1))`
-/

namespace A311207.P14051832665852555103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311206 n + A122924 (A282441 (n + 1)).toNat

end

end A311207.P14051832665852555103

/-! ## A311207.P10498460361075329077

`A340998(A306186(n+1))+A311206(n)`
-/

namespace A311207.P10498460361075329077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340998 ((A306186 (n + 1)).toNat + 140) + A311206 n

end

end A311207.P10498460361075329077

/-! ## A311207.P14446914487790282689

`xor(A185284(A196314(n+1)), A311206(n))`
-/

namespace A311207.P14446914487790282689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A185284 (A196314 (n + 1)).toNat) (A311206 n)

end

end A311207.P14446914487790282689

/-!
# A311208: Coordination sequence Gal.5.151.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311208, there is no canonical definition to state claims against.
-/

/-! ## A311208.P4523000132841411743

`A008486(n)+lt[A171188(n), A017377(n)]`
-/

namespace A311208.P4523000132841411743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171188 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017377 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 n + (SequenceMachineLib.nth (fun j => f1 j < f2 j) n : ℤ)

end

end A311208.P4523000132841411743

/-! ## A311208.P17671515026015064664

`A008574(n)+∑[A003849(A349053(n))]`
-/

namespace A311208.P17671515026015064664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003849 (A349053 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A311208.P17671515026015064664

/-! ## A311208.P5816515862838074941

`∑[A316847(A316847(A188069(n+1)²))]`
-/

namespace A311208.P5816515862838074941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316847 (A316847 (A188069 (n + 1) ^ 2).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A311208.P5816515862838074941

/-! ## A311208.P7858068049220465300

`A342521(3*n+1)+A105098(A105098(3*n+4))`
-/

namespace A311208.P7858068049220465300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342521 (3 * n + 1) + A105098 (A105098 (3 * n + 4)).toNat

end

end A311208.P7858068049220465300

/-! ## A311208.P3969644133649906606

`A341999(A000701(n))+A301301(n)+A185284(3*n+1)`
-/

namespace A311208.P3969644133649906606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341999 (A000701 n).toNat + (A301301 n + A185284 (3 * n + 1))

end

end A311208.P3969644133649906606

/-!
# A311209: Coordination sequence Gal.5.107.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311209, the canonical program `A311209.P6586831971978910313` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A311209 has offset 0).

The definition of A311209 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2319 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A311209.P6586831971978910313

`A046978(n)+A313154(n)-n`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A311209

/-- `A046978(n)+A313154(n)-n` -/
def P6586831971978910313.Spec : Prop :=
  ∀ n, P6586831971978910313.a n = A311209 n

theorem P6586831971978910313.correct : P6586831971978910313.Spec := by
  intro n
  simp only [A311209]

end A311209

/-! ## A311209.P570407745361486254

`A311210(n)-A001221(A309864(n))`
-/

namespace A311209.P570407745361486254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311210 n - A001221 (A309864 n).toNat

end

end A311209.P570407745361486254

namespace A311209

/-- `A311210(n)-A001221(A309864(n))` -/
def P570407745361486254.Spec : Prop :=
  ∀ n, P570407745361486254.a n = A311209 n

end A311209

/-! ## A311209.P11626733521840381364

`A311211(n)-A002262(A309864(n))`
-/

namespace A311209.P11626733521840381364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311211 n - A002262 (A309864 n).toNat

end

end A311209.P11626733521840381364

namespace A311209

/-- `A311211(n)-A002262(A309864(n))` -/
def P11626733521840381364.Spec : Prop :=
  ∀ n, P11626733521840381364.a n = A311209 n

end A311209

/-! ## A311209.P8300946125550631933

`A311212(n)-A002262(A309864(n))`
-/

namespace A311209.P8300946125550631933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311212 n - A002262 (A309864 n).toNat

end

end A311209.P8300946125550631933

namespace A311209

/-- `A311212(n)-A002262(A309864(n))` -/
def P8300946125550631933.Spec : Prop :=
  ∀ n, P8300946125550631933.a n = A311209 n

end A311209

/-! ## A311209.P13949161330583211882

`A311178(n)+(n-1)%A001222(A321213(n))`
-/

namespace A311209.P13949161330583211882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311178 n + Int.tmod ((n : ℤ) - 1) (A001222 (A321213 n).toNat)

end

end A311209.P13949161330583211882

namespace A311209

/-- `A311178(n)+(n-1)%A001222(A321213(n))` -/
def P13949161330583211882.Spec : Prop :=
  ∀ n, P13949161330583211882.a n = A311209 n

end A311209

/-!
# A311210: Coordination sequence Gal.5.103.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311210, there is no canonical definition to state claims against.
-/

/-! ## A311210.P2105725014172797313

`∑[A095407(∑[A332217(3*n+2)])]`
-/

namespace A311210.P2105725014172797313
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332217 (3 * n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095407 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A311210.P2105725014172797313

/-! ## A311210.P16590100763983452408

`record[A311212(n)]%A093037(3*n+5)`
-/

namespace A311210.P16590100763983452408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311212 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A093037 (3 * n + 5))

end

end A311210.P16590100763983452408

/-! ## A311210.P7806046040656723905

`∑[A001222(A085449(n)+2)]+n+n`
-/

namespace A311210.P7806046040656723905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A085449 n + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ) + (n : ℤ)

end

end A311210.P7806046040656723905

/-! ## A311210.P4354267391300054405

`A311212(n)%A227764(A311203(n))`
-/

namespace A311210.P4354267391300054405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A311212 n) (A227764 (A311203 n).toNat)

end

end A311210.P4354267391300054405

/-! ## A311210.P5956559938217050967

`A311211(n)-A322437(A086581(n+1))`
-/

namespace A311210.P5956559938217050967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311211 n - A322437 (A086581 (n + 1)).toNat

end

end A311210.P5956559938217050967

/-!
# A311211: Coordination sequence Gal.6.128.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311211, there is no canonical definition to state claims against.
-/

/-! ## A311211.P10665829409029246192

`A311212(n)-Δ[A037800(A185274(n))]`
-/

namespace A311211.P10665829409029246192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037800 (A185274 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311212 n - (f1 (n + 1) - f1 n)

end

end A311211.P10665829409029246192

/-! ## A311211.P4396449711503242068

`A311212(n)-A185284(A002125(n))`
-/

namespace A311211.P4396449711503242068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311212 n - A185284 (A002125 n).toNat

end

end A311211.P4396449711503242068

/-! ## A311211.P16345742532999237284

`A311212(n)-A185284(A022819(n))`
-/

namespace A311211.P16345742532999237284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311212 n - A185284 (A022819 n).toNat

end

end A311211.P16345742532999237284

/-! ## A311211.P11472501262143616983

`A311212(n)-A231600(A324839(n+1))`
-/

namespace A311211.P11472501262143616983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311212 n - A231600 (A324839 (n + 1)).toNat

end

end A311211.P11472501262143616983

/-!
# A311212: Coordination sequence Gal.6.124.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311212, there is no canonical definition to state claims against.
-/

/-! ## A311212.P18199991480470409001

`A311211(n)+A185284(A002125(n))`
-/

namespace A311212.P18199991480470409001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311211 n + A185284 (A002125 n).toNat

end

end A311212.P18199991480470409001

/-! ## A311212.P3451452911866907438

`A311211(n)+A185284(A022819(n))`
-/

namespace A311212.P3451452911866907438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311211 n + A185284 (A022819 n).toNat

end

end A311212.P3451452911866907438

/-! ## A311212.P16320668796464032686

`A311211(n)+A185238(∑[A263352(n)])`
-/

namespace A311212.P16320668796464032686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263352 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311211 n + A185238 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A311212.P16320668796464032686

/-! ## A311212.P15394854046080374309

`A311211(n)+A231600(A324839(n+1))`
-/

namespace A311212.P15394854046080374309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311211 n + A231600 (A324839 (n + 1)).toNat

end

end A311212.P15394854046080374309

/-!
# A311213: Coordination sequence Gal.6.184.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311213, there is no canonical definition to state claims against.
-/

/-! ## A311213.P5729298557100499811

`A311214(n)-A240328(A139428(n+2))`
-/

namespace A311213.P5729298557100499811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311214 n - A240328 (A139428 (n + 2)).toNat

end

end A311213.P5729298557100499811

/-! ## A311213.P2909849282440551845

`A311214(n)^A036601(n)!`
-/

namespace A311213.P2909849282440551845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311214 n ^ Nat.factorial (A036601 n).toNat

end

end A311213.P2909849282440551845

/-! ## A311213.P12374753959455174575

`A311214(n*Δ[A077168(n)])`
-/

namespace A311213.P12374753959455174575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077168 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311214 ((n : ℤ) * (f1 (n + 1) - f1 n)).toNat

end

end A311213.P12374753959455174575

/-! ## A311213.P16360805692720022612

`A311214(n)^Δ[A077168(n)]`
-/

namespace A311213.P16360805692720022612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077168 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A311214 n : ℚ) ^ (f1 (n + 1) - f1 n : ℤ)

end

end A311213.P16360805692720022612

/-! ## A311213.P7235337247229271269

`A311214(A077168(n+1)-2)`
-/

namespace A311213.P7235337247229271269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311214 (A077168 (n + 1) - 2).toNat

end

end A311213.P7235337247229271269

/-!
# A311214: Coordination sequence Gal.6.168.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311214, there is no canonical definition to state claims against.
-/

/-! ## A311214.P14275980795213428065

`or(A311213(n), A340988(A238531(n)))`
-/

namespace A311214.P14275980795213428065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A311213 n) (A340988 ((A238531 n).toNat + 91))

end

end A311214.P14275980795213428065

/-! ## A311214.P16672817748277570309

`A311213(n)+A185284(A160406(n))`
-/

namespace A311214.P16672817748277570309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311213 n + A185284 (A160406 n).toNat

end

end A311214.P16672817748277570309

/-! ## A311214.P2217435914415702068

`A311213(n)+A025469(A323586(n))`
-/

namespace A311214.P2217435914415702068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311213 n + A025469 (A323586 n).toNat

end

end A311214.P2217435914415702068

/-! ## A311214.P2527232580156766387

`A311213(n)+A238798(A174617(n))`
-/

namespace A311214.P2527232580156766387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311213 n + A238798 (A174617 n).toNat

end

end A311214.P2527232580156766387

/-!
# A311215: Coordination sequence Gal.6.182.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311215, there is no canonical definition to state claims against.
-/

/-! ## A311215.P7605928258682034502

`A311216(n)-A000007(A008886(n))`
-/

namespace A311215.P7605928258682034502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311216 n - A000007 (A008886 n).toNat

end

end A311215.P7605928258682034502

/-! ## A311215.P17818091574343690069

`A311216(n)-A185284(A134816(n+1))`
-/

namespace A311215.P17818091574343690069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311216 n - A185284 (A134816 (n + 1)).toNat

end

end A311215.P17818091574343690069

/-! ## A311215.P4067809977329028167

`A311216(n)-A178798(A165917(n+1))`
-/

namespace A311215.P4067809977329028167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311216 n - A178798 (A165917 (n + 1)).toNat

end

end A311215.P4067809977329028167

/-! ## A311215.P9476347323201292228

`A351870(A311216(n))`
-/

namespace A311215.P9476347323201292228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351870 (A311216 n).toNat

end

end A311215.P9476347323201292228

/-! ## A311215.P3906773322668877779

`A311216(A122287(∑[n]))`
-/

namespace A311215.P3906773322668877779
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311216 (A122287 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A311215.P3906773322668877779

/-!
# A311216: Coordination sequence Gal.6.166.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311216, there is no canonical definition to state claims against.
-/

/-! ## A311216.P14265986198436482712

`or(A311215(n), A326016(A146575(n+1)))`
-/

namespace A311216.P14265986198436482712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A311215 n) (A326016 (A146575 (n + 1)).toNat)

end

end A311216.P14265986198436482712

/-! ## A311216.P10556337089778843771

`A085736(or(A028240(n), A311215(n)))`
-/

namespace A311216.P10556337089778843771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085736 (Int.lor (A028240 n) (A311215 n)).toNat

end

end A311216.P10556337089778843771

/-! ## A311216.P2910333893142795292

`or(A103673(A309469(n)²), A311215(n))`
-/

namespace A311216.P2910333893142795292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A103673 (A309469 n ^ 2).toNat) (A311215 n)

end

end A311216.P2910333893142795292

/-! ## A311216.P15388865062277159355

`or(A025456(A051761(n+1)), A311215(n))`
-/

namespace A311216.P15388865062277159355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A025456 (A051761 (n + 1)).toNat) (A311215 n)

end

end A311216.P15388865062277159355

/-! ## A311216.P8935879994037278433

`or(A106164(A110193(n+1)), A311215(n))`
-/

namespace A311216.P8935879994037278433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A106164 (A110193 (n + 1)).toNat) (A311215 n)

end

end A311216.P8935879994037278433

/-!
# A311217: Coordination sequence Gal.4.50.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311217, there is no canonical definition to state claims against.
-/

/-! ## A311217.P17745524155986482994

`A311215(n)+A102683(A001465(n))`
-/

namespace A311217.P17745524155986482994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311215 n + A102683 (A001465 n).toNat

end

end A311217.P17745524155986482994

/-! ## A311217.P7619167628878108849

`A311216(n)+A102683(A001465(n))`
-/

namespace A311217.P7619167628878108849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311216 n + A102683 (A001465 n).toNat

end

end A311217.P7619167628878108849

/-! ## A311217.P15861413560529097720

`A311215(A120126(n))+A102683(n)`
-/

namespace A311217.P15861413560529097720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311215 (A120126 n).toNat + A102683 n

end

end A311217.P15861413560529097720

/-! ## A311217.P1234541361860009029

`or(A001222(A309863(n)), A311215(n))`
-/

namespace A311217.P1234541361860009029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001222 (A309863 n).toNat) (A311215 n)

end

end A311217.P1234541361860009029

/-!
# A311218: Coordination sequence Gal.4.46.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311218, there is no canonical definition to state claims against.
-/

/-! ## A311218.P13712633780044716006

`A324414(A324395(n))+A311181(n)`
-/

namespace A311218.P13712633780044716006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324414 (A324395 n).toNat + A311181 n

end

end A311218.P13712633780044716006

/-! ## A311218.P612677816055584516

`∑[∑[A363709(A063706(n))]]`
-/

namespace A311218.P612677816055584516
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363709 (A063706 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A311218.P612677816055584516

/-! ## A311218.P17847050340902099407

`A301301(n)+A102683(A301280(n))`
-/

namespace A311218.P17847050340902099407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301301 n + A102683 (A301280 n).toNat

end

end A311218.P17847050340902099407

/-! ## A311218.P9110913152668052833

`A312078(n)-A240066(A050969(n+1))`
-/

namespace A311218.P9110913152668052833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312078 n - A240066 (A050969 (n + 1)).toNat

end

end A311218.P9110913152668052833

/-! ## A311218.P4005902864566714995

`A001481(2*n+3)-A059841(A183492(2*n+3))`
-/

namespace A311218.P4005902864566714995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001481 (2 * n + 3) - A059841 (A183492 (2 * n + 3)).toNat

end

end A311218.P4005902864566714995

/-!
# A311219: Coordination sequence Gal.6.226.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311219, there is no canonical definition to state claims against.
-/

/-! ## A311219.P6844336249858578570

`2*A311275(n)-A311341(n)`
-/

namespace A311219.P6844336249858578570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A311275 n - A311341 n

end

end A311219.P6844336249858578570

/-! ## A311219.P193920596145306431

`A005843(A311275(n))-A311341(n)`
-/

namespace A311219.P193920596145306431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A311275 n).toNat - A311341 n

end

end A311219.P193920596145306431

/-! ## A311219.P14501285457671373070

`2*A311275(n)+A001478(A311341(n)+1)+1`
-/

namespace A311219.P14501285457671373070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A311275 n + (A001478 (A311341 n + 1).toNat + 1)

end

end A311219.P14501285457671373070

/-! ## A311219.P14507205290011666046

`A311220(n)+A000007(A011782(n))`
-/

namespace A311219.P14507205290011666046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311220 n + A000007 (A011782 n).toNat

end

end A311219.P14507205290011666046

/-! ## A311219.P4646392329986751043

`A079068(A000079(n))*A311220(n)`
-/

namespace A311219.P4646392329986751043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079068 (A000079 n).toNat * A311220 n

end

end A311219.P4646392329986751043

/-!
# A311220: Coordination sequence Gal.6.222.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311220, there is no canonical definition to state claims against.
-/

/-! ## A311220.P9111473688467109112

`A004277(A311456(n))-A311583(n)`
-/

namespace A311220.P9111473688467109112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A311456 n).toNat - A311583 n

end

end A311220.P9111473688467109112

/-! ## A311220.P74251764873520216

`and(A089868(A311346(n)), A311340(n))`
-/

namespace A311220.P74251764873520216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A089868 (A311346 n).toNat) (A311340 n)

end

end A311220.P74251764873520216

/-!
# A311221: Coordination sequence Gal.4.93.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311221, there is no canonical definition to state claims against.
-/

/-! ## A311221.P11673834104608208807

`A093569(A206777(n))+A008574(n)`
-/

namespace A311221.P11673834104608208807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093569 (A206777 n).toNat + A008574 n

end

end A311221.P11673834104608208807

/-! ## A311221.P13604472977825549815

`A311881(n)-A001221(A228718(n+1))`
-/

namespace A311221.P13604472977825549815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311881 n - A001221 (A228718 (n + 1)).toNat

end

end A311221.P13604472977825549815

/-! ## A311221.P4096082840922922555

`A352745(A035336(n+1)-A339975(n))`
-/

namespace A311221.P4096082840922922555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352745 (A035336 (n + 1) - A339975 n).toNat

end

end A311221.P4096082840922922555

/-! ## A311221.P6189385115958265159

`eq[A108939(n+1), A363001(n)]`
-/

namespace A311221.P6189385115958265159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108939 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363001 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A311221.P6189385115958265159

/-!
# A311222: Coordination sequence Gal.6.286.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311222, there is no canonical definition to state claims against.
-/

/-! ## A311222.P58079674262036131

`2*A311698(n)-A312249(n)`
-/

namespace A311222.P58079674262036131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A311698 n - A312249 n

end

end A311222.P58079674262036131

/-! ## A311222.P3646354854979710114

`2*A311316(n)-A311378(n)`
-/

namespace A311222.P3646354854979710114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A311316 n - A311378 n

end

end A311222.P3646354854979710114

/-! ## A311222.P14842990557171865319

`A004277(A311316(n))-A311378(n)`
-/

namespace A311222.P14842990557171865319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A311316 n).toNat - A311378 n

end

end A311222.P14842990557171865319

/-! ## A311222.P833362745009125516

`A004277(A311698(n))-A312249(n)`
-/

namespace A311222.P833362745009125516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A311698 n).toNat - A312249 n

end

end A311222.P833362745009125516

/-! ## A311222.P11492877839085807245

`∏{e}[3^n, A311223(#)]`
-/

namespace A311222.P11492877839085807245
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A311223 (Nat.factorization (f1 n) p)

end

end A311222.P11492877839085807245

/-!
# A311224: Coordination sequence Gal.5.97.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311224, the canonical program `A311224.P15092934751619094238` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A311224 has offset 0).

The definition of A311224 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2456 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A311224.P15092934751619094238

`A008574(n)+A311633(n)-A311625(n)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A311224

/-- `A008574(n)+A311633(n)-A311625(n)` -/
def P15092934751619094238.Spec : Prop :=
  ∀ n, P15092934751619094238.a n = A311224 n

theorem P15092934751619094238.correct : P15092934751619094238.Spec := by
  intro n
  simp only [A311224]

end A311224

/-! ## A311224.P10249626185258218421

`record[A257088(n)]+A311633(n)-A311625(n)`
-/

namespace A311224.P10249626185258218421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (A311633 n - A311625 n)

end

end A311224.P10249626185258218421

namespace A311224

/-- `record[A257088(n)]+A311633(n)-A311625(n)` -/
def P10249626185258218421.Spec : Prop :=
  ∀ n, P10249626185258218421.a n = A311224 n

end A311224

/-! ## A311224.P1164429685457329235

`A004277(2*n)+A311633(n)-A311625(n)`
-/

namespace A311224.P1164429685457329235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (2 * n) + (A311633 n - A311625 n)

end

end A311224.P1164429685457329235

namespace A311224

/-- `A004277(2*n)+A311633(n)-A311625(n)` -/
def P1164429685457329235.Spec : Prop :=
  ∀ n, P1164429685457329235.a n = A311224 n

end A311224

/-! ## A311224.P7944210339557329394

`A008706(n)-n+A311633(n)-A311625(n)`
-/

namespace A311224.P7944210339557329394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 n - (n : ℤ) + (A311633 n - A311625 n)

end

end A311224.P7944210339557329394

namespace A311224

/-- `A008706(n)-n+A311633(n)-A311625(n)` -/
def P7944210339557329394.Spec : Prop :=
  ∀ n, P7944210339557329394.a n = A311224 n

end A311224

/-! ## A311224.P378194107664324227

`record[A257088(n+1)]+A311633(n)%A311625(n)`
-/

namespace A311224.P378194107664324227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257088 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + Int.tmod (A311633 n) (A311625 n)

end

end A311224.P378194107664324227

namespace A311224

/-- `record[A257088(n+1)]+A311633(n)%A311625(n)` -/
def P378194107664324227.Spec : Prop :=
  ∀ n, P378194107664324227.a n = A311224 n

end A311224

/-!
# A311225: Coordination sequence Gal.6.216.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311225, the canonical program `A311225.P6004467747735077688` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A311225 has offset 0).

The definition of A311225 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2350 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A311225.P12456277553395279011

`2*A311541(n)-A311635(n)`
-/

namespace A311225.P12456277553395279011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A311541 n - A311635 n

end

end A311225.P12456277553395279011

namespace A311225

/-- `2*A311541(n)-A311635(n)` -/
def P12456277553395279011.Spec : Prop :=
  ∀ n, P12456277553395279011.a n = A311225 n

end A311225

/-! ## A311225.P6004467747735077688

`2*A313738(n)-A008458(n)`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A311225

/-- `2*A313738(n)-A008458(n)` -/
def P6004467747735077688.Spec : Prop :=
  ∀ n, P6004467747735077688.a n = A311225 n

theorem P6004467747735077688.correct : P6004467747735077688.Spec := by
  intro n
  simp only [A311225]

end A311225

/-! ## A311225.P11473587092406539345

`2*A313738(n)-A008486(A005843(n))`
-/

namespace A311225.P11473587092406539345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A313738 n - A008486 (A005843 n).toNat

end

end A311225.P11473587092406539345

namespace A311225

/-- `2*A313738(n)-A008486(A005843(n))` -/
def P11473587092406539345.Spec : Prop :=
  ∀ n, P11473587092406539345.a n = A311225 n

end A311225

/-! ## A311225.P7625657693250715345

`A004277(A313738(n)-(A004277(n)+n))`
-/

namespace A311225.P7625657693250715345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A313738 n - (A004277 n + (n : ℤ))).toNat

end

end A311225.P7625657693250715345

namespace A311225

/-- `A004277(A313738(n)-(A004277(n)+n))` -/
def P7625657693250715345.Spec : Prop :=
  ∀ n, P7625657693250715345.a n = A311225 n

end A311225

/-! ## A311225.P2113865493278608315

`A004277(A313738(n)-n-A004277(n))`
-/

namespace A311225.P2113865493278608315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A313738 n - (n : ℤ) - A004277 n).toNat

end

end A311225.P2113865493278608315

namespace A311225

/-- `A004277(A313738(n)-n-A004277(n))` -/
def P2113865493278608315.Spec : Prop :=
  ∀ n, P2113865493278608315.a n = A311225 n

end A311225

/-! ## A311225.P11677960605915407277

`abs(A008592(n)-A315767(n))`
-/

namespace A311225.P11677960605915407277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A315767 n|

end

end A311225.P11677960605915407277

namespace A311225

/-- `abs(A008592(n)-A315767(n))` -/
def P11677960605915407277.Spec : Prop :=
  ∀ n, P11677960605915407277.a n = A311225 n

end A311225

/-! ## A311225.P1846120395964354190

`2*A008706(n)-A315767(n)`
-/

namespace A311225.P1846120395964354190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A315767 n

end

end A311225.P1846120395964354190

namespace A311225

/-- `2*A008706(n)-A315767(n)` -/
def P1846120395964354190.Spec : Prop :=
  ∀ n, P1846120395964354190.a n = A311225 n

end A311225

/-! ## A311225.P17697618298641474840

`A008458(n)+A008574(n)-A315767(n)`
-/

namespace A311225.P17697618298641474840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A315767 n)

end

end A311225.P17697618298641474840

namespace A311225

/-- `A008458(n)+A008574(n)-A315767(n)` -/
def P17697618298641474840.Spec : Prop :=
  ∀ n, P17697618298641474840.a n = A311225 n

end A311225

/-! ## A311225.P8069316912737031618

`A005843(A313738(n))-A008486(A005843(n))`
-/

namespace A311225.P8069316912737031618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A313738 n).toNat - A008486 (A005843 n).toNat

end

end A311225.P8069316912737031618

namespace A311225

/-- `A005843(A313738(n))-A008486(A005843(n))` -/
def P8069316912737031618.Spec : Prop :=
  ∀ n, P8069316912737031618.a n = A311225 n

end A311225

/-! ## A311225.P5452196951616432251

`A315307(2*n)+A008458(n+1)-(12*n+6)`
-/

namespace A311225.P5452196951616432251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315307 (2 * n) + (A008458 (n + 1) - (12 * n + 6 : ℤ))

end

end A311225.P5452196951616432251

namespace A311225

/-- `A315307(2*n)+A008458(n+1)-(12*n+6)` -/
def P5452196951616432251.Spec : Prop :=
  ∀ n, P5452196951616432251.a n = A311225 n

end A311225

/-!
# A311226: Coordination sequence Gal.5.96.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311226, there is no canonical definition to state claims against.
-/

/-! ## A311226.P8298671008017817585

`A008486(n)+record[A093017(A024637(n))]`
-/

namespace A311226.P8298671008017817585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093017 (A024637 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A311226.P8298671008017817585

/-! ## A311226.P1803741271214449797

`and(A311843(n), A327276(A002385(n+1)))`
-/

namespace A311226.P1803741271214449797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A311843 n) (A327276 (A002385 (n + 1)).toNat)

end

end A311226.P1803741271214449797

/-! ## A311226.P10876044765511554825

`2*n+A028310(n)+record[A093017(A024637(n))]`
-/

namespace A311226.P10876044765511554825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093017 (A024637 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) + (A028310 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A311226.P10876044765511554825

/-! ## A311226.P8755780921547641195

`3*n+A000007(n)+record[A093017(A024637(n))]`
-/

namespace A311226.P8755780921547641195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093017 (A024637 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n : ℤ) + (A000007 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A311226.P8755780921547641195

/-! ## A311226.P17569335010389454957

`A008706(n)+record[A093017(A024637(n))]-2*n`
-/

namespace A311226.P17569335010389454957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093017 (A024637 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 n + (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (2 * n : ℤ))

end

end A311226.P17569335010389454957

/-!
# A311227: Coordination sequence Gal.6.227.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311227, there is no canonical definition to state claims against.
-/

/-! ## A311227.P4202043896152345913

`2*A311298(n)-A311346(n)`
-/

namespace A311227.P4202043896152345913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A311298 n - A311346 n

end

end A311227.P4202043896152345913

/-! ## A311227.P311537580679133120

`A004277(A311298(n))-A311346(n)`
-/

namespace A311227.P311537580679133120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A311298 n).toNat - A311346 n

end

end A311227.P311537580679133120

/-! ## A311227.P3975152270764577966

`A311228(n)-A107286(A184955(n))`
-/

namespace A311227.P3975152270764577966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311228 n - A107286 (A184955 n).toNat

end

end A311227.P3975152270764577966

/-! ## A311227.P4037755143088031911

`A311228(n)-A243759(A243740(n+5))`
-/

namespace A311227.P4037755143088031911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311228 n - A243759 (A243740 (n + 5)).toNat

end

end A311227.P4037755143088031911

/-! ## A311227.P15762627221383693390

`A311228(n)+A080891(A257781(n+1))`
-/

namespace A311227.P15762627221383693390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311228 n + A080891 (A257781 (n + 1)).toNat

end

end A311227.P15762627221383693390

/-!
# A311228: Coordination sequence Gal.6.223.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311228, there is no canonical definition to state claims against.
-/

/-! ## A311228.P5366454824944509746

`2*A311299(n)-A311347(n)`
-/

namespace A311228.P5366454824944509746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A311299 n - A311347 n

end

end A311228.P5366454824944509746

/-! ## A311228.P5042330628083110126

`2*A311851(n)-A312464(n)`
-/

namespace A311228.P5042330628083110126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A311851 n - A312464 n

end

end A311228.P5042330628083110126

/-! ## A311228.P13135466410488794707

`2*A311463(n)-A311585(n)`
-/

namespace A311228.P13135466410488794707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A311463 n - A311585 n

end

end A311228.P13135466410488794707

/-! ## A311228.P17157402758115657453

`A005843(A311299(n))-A311347(n)`
-/

namespace A311228.P17157402758115657453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A311299 n).toNat - A311347 n

end

end A311228.P17157402758115657453

/-! ## A311228.P3326786466697656531

`A004277(A311851(n))-A312464(n)`
-/

namespace A311228.P3326786466697656531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A311851 n).toNat - A312464 n

end

end A311228.P3326786466697656531

/-! ## A311228.P3263625793013004251

`A005843(A311463(n))-A311585(n)`
-/

namespace A311228.P3263625793013004251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A311463 n).toNat - A311585 n

end

end A311228.P3263625793013004251

/-!
# A311229: Coordination sequence Gal.6.229.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311229, there is no canonical definition to state claims against.
-/

/-! ## A311229.P483311405195477594

`2*A311301(n)-A311348(n)`
-/

namespace A311229.P483311405195477594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A311301 n - A311348 n

end

end A311229.P483311405195477594

/-! ## A311229.P1558317524649101240

`A005843(A311301(n))-A311348(n)`
-/

namespace A311229.P1558317524649101240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A311301 n).toNat - A311348 n

end

end A311229.P1558317524649101240

/-! ## A311229.P87375036414134098

`A311230(n)-A045839(A125666(n+1))`
-/

namespace A311229.P87375036414134098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311230 n - A045839 (A125666 (n + 1)).toNat

end

end A311229.P87375036414134098

/-! ## A311229.P8144967062749929906

`A311230(A077168(n)-1)`
-/

namespace A311229.P8144967062749929906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311230 (A077168 n - 1).toNat

end

end A311229.P8144967062749929906

/-! ## A311229.P17921604068547041390

`A000120(2^n)*A311230(n)`
-/

namespace A311229.P17921604068547041390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (2 ^ n) * A311230 n

end

end A311229.P17921604068547041390

/-!
# A311230: Coordination sequence Gal.6.225.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311230, there is no canonical definition to state claims against.
-/

/-! ## A311230.P9099470108483659421

`2*A311302(n)-A311349(n)`
-/

namespace A311230.P9099470108483659421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A311302 n - A311349 n

end

end A311230.P9099470108483659421

/-! ## A311230.P14723742580125931831

`A005843(A311302(n))-A311349(n)`
-/

namespace A311230.P14723742580125931831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A311302 n).toNat - A311349 n

end

end A311230.P14723742580125931831

/-! ## A311230.P1396806326960109171

`record[A311229(n)-A184955(n)]`
-/

namespace A311230.P1396806326960109171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311229 n - A184955 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A311230.P1396806326960109171

/-! ## A311230.P14438372400674694808

`A311190(n)+A134451(A000910(n))`
-/

namespace A311230.P14438372400674694808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311190 n + A134451 (A000910 n).toNat

end

end A311230.P14438372400674694808

/-! ## A311230.P16919942820103125532

`A311190(n)+A005087(A332726(n))`
-/

namespace A311230.P16919942820103125532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311190 n + A005087 (A332726 n).toNat

end

end A311230.P16919942820103125532

/-!
# A311231: Coordination sequence Gal.6.289.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311231, there is no canonical definition to state claims against.
-/

/-! ## A311231.P17677292387647257565

`2*A311321(n)-A311380(n)`
-/

namespace A311231.P17677292387647257565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A311321 n - A311380 n

end

end A311231.P17677292387647257565

/-! ## A311231.P1112587123630882731

`A311232(n^A174544(n))`
-/

namespace A311231.P1112587123630882731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311232 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A174544 n : ℤ))).toNat

end

end A311231.P1112587123630882731

/-! ## A311231.P16088123001732775745

`A311232(n)+A000122(A007283(n))`
-/

namespace A311231.P16088123001732775745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311232 n + A000122 (A007283 n).toNat

end

end A311231.P16088123001732775745

/-! ## A311231.P11926421412579016219

`A311232(n)*A319916(A040993(n+1))`
-/

namespace A311231.P11926421412579016219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311232 n * A319916 (A040993 (n + 1)).toNat

end

end A311231.P11926421412579016219

/-! ## A311231.P12248901770656880367

`A311232(A062399(n))`
-/

namespace A311231.P12248901770656880367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311232 (A062399 n).toNat

end

end A311231.P12248901770656880367

/-!
# A311232: Coordination sequence Gal.6.275.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311232, there is no canonical definition to state claims against.
-/

/-! ## A311232.P3770455052363074061

`2*A311322(n)-A311381(n)`
-/

namespace A311232.P3770455052363074061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A311322 n - A311381 n

end

end A311232.P3770455052363074061

/-! ## A311232.P2098789329253476897

`A005843(A311322(n))-A311381(n)`
-/

namespace A311232.P2098789329253476897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A311322 n).toNat - A311381 n

end

end A311232.P2098789329253476897

/-!
# A311233: Coordination sequence Gal.4.70.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311233, the canonical program `A311233.P3691787065330941745` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A311233 has offset 0).

The definition of A311233 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2488 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A311233.P3691787065330941745

`2*A314677(n)-A315173(n)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A311233

/-- `2*A314677(n)-A315173(n)` -/
def P3691787065330941745.Spec : Prop :=
  ∀ n, P3691787065330941745.a n = A311233 n

theorem P3691787065330941745.correct : P3691787065330941745.Spec := by
  intro n
  simp only [A311233]

end A311233

/-! ## A311233.P13630232126346784855

`A005843(A314677(n))-A315173(n)`
-/

namespace A311233.P13630232126346784855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A314677 n).toNat - A315173 n

end

end A311233.P13630232126346784855

namespace A311233

/-- `A005843(A314677(n))-A315173(n)` -/
def P13630232126346784855.Spec : Prop :=
  ∀ n, P13630232126346784855.a n = A311233 n

end A311233

/-! ## A311233.P2537166697256665739

`A033762(A298119(3*n+4))+A008574(n)`
-/

namespace A311233.P2537166697256665739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033762 (A298119 (3 * n + 4)).toNat + A008574 n

end

end A311233.P2537166697256665739

namespace A311233

/-- `A033762(A298119(3*n+4))+A008574(n)` -/
def P2537166697256665739.Spec : Prop :=
  ∀ n, P2537166697256665739.a n = A311233 n

end A311233

/-! ## A311233.P15102650900375368278

`record[A214074(3*n+1)*A299755(n+1)]`
-/

namespace A311233.P15102650900375368278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214074 (3 * n + 1) * A299755 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A311233.P15102650900375368278

namespace A311233

/-- `record[A214074(3*n+1)*A299755(n+1)]` -/
def P15102650900375368278.Spec : Prop :=
  ∀ n, P15102650900375368278.a n = A311233 n

end A311233

/-! ## A311233.P18395970008582023773

`A348237(n)+A007814(A069027(n+1))`
-/

namespace A311233.P18395970008582023773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348237 n + A007814 (A069027 (n + 1)).toNat

end

end A311233.P18395970008582023773

namespace A311233

/-- `A348237(n)+A007814(A069027(n+1))` -/
def P18395970008582023773.Spec : Prop :=
  ∀ n, P18395970008582023773.a n = A311233 n

end A311233

/-!
# A311234: Coordination sequence Gal.6.287.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311234, there is no canonical definition to state claims against.
-/

/-! ## A311234.P9337643121958442714

`∏{e}[3^n, A311235(#)]`
-/

namespace A311234.P9337643121958442714
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A311235 (Nat.factorization (f1 n) p)

end

end A311234.P9337643121958442714

/-! ## A311234.P11015503258437404180

`A095400(A311235(n))`
-/

namespace A311234.P11015503258437404180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095400 (A311235 n).toNat

end

end A311234.P11015503258437404180

/-! ## A311234.P4376213717406795236

`A311235(A163352(∑[n]))`
-/

namespace A311234.P4376213717406795236
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311235 (A163352 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A311234.P4376213717406795236

/-! ## A311234.P2607638931064235890

`A311235(n)%A242323(n)`
-/

namespace A311234.P2607638931064235890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A311235 n) (A242323 (n + 36))

end

end A311234.P2607638931064235890

/-!
# A311235: Coordination sequence Gal.6.273.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311235, there is no canonical definition to state claims against.
-/

/-! ## A311235.P2133069742308855406

`2*A311703(n)-A312255(n)`
-/

namespace A311235.P2133069742308855406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A311703 n - A312255 n

end

end A311235.P2133069742308855406

/-! ## A311235.P11284249501562873494

`A005843(A311703(n))-A312255(n)`
-/

namespace A311235.P11284249501562873494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A311703 n).toNat - A312255 n

end

end A311235.P11284249501562873494

/-!
# A311236: Coordination sequence Gal.4.66.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311236, there is no canonical definition to state claims against.
-/

/-! ## A311236.P15906589600048965531

`∑[A005811(A228450(n+1))]`
-/

namespace A311236.P15906589600048965531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 (A228450 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A311236.P15906589600048965531

/-! ## A311236.P18039614444598970881

`∑[A105560(A002064(n))]+n`
-/

namespace A311236.P18039614444598970881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105560 (A002064 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A311236.P18039614444598970881

/-! ## A311236.P6366710841480146776

`∑[A373953(∑[A047309(n+1)])]`
-/

namespace A311236.P6366710841480146776
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047309 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373953 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A311236.P6366710841480146776

/-! ## A311236.P8219567006635768126

`A160406(n+1)+∑{e}[A000302(n), #]`
-/

namespace A311236.P8219567006635768126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000302 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160406 (n + 1) + ((∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p : ℕ) : ℤ)

end

end A311236.P8219567006635768126

/-!
# A311237: Coordination sequence Gal.4.80.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311237, there is no canonical definition to state claims against.
-/

/-! ## A311237.P12326959318808220796

`and(A277384(A146541(n)), A312593(n))`
-/

namespace A311237.P12326959318808220796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A277384 (A146541 n).toNat) (A312593 n)

end

end A311237.P12326959318808220796

/-! ## A311237.P12582322189387675204

`and(A277384(A146541(n)), A314815(n))`
-/

namespace A311237.P12582322189387675204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A277384 (A146541 n).toNat) (A314815 n)

end

end A311237.P12582322189387675204

/-! ## A311237.P7241447438434893127

`A008574(A056878(n+1)^p?[52*n-23]+n)`
-/

namespace A311237.P7241447438434893127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (52 * n : ℤ) - 23

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (SequenceMachineLib.roundAway ((A056878 (n + 1) : ℚ) ^ (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℤ) + (n : ℚ))).toNat

end

end A311237.P7241447438434893127

/-! ## A311237.P12220242538899153562

`A008574(A056878(n+1)^round(1/acot(5*n))+n)`
-/

namespace A311237.P12220242538899153562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (SequenceMachineLib.roundAway ((A056878 (n + 1) : ℚ) ^ (SequenceMachineLib.roundAway (1 / SequenceMachineLib.acot (5 * n : ℝ)) : ℤ) + (n : ℚ))).toNat

end

end A311237.P12220242538899153562

/-! ## A311237.P1354437950011973083

`A008574(A056878(n+1)^A273448(n)+n)`
-/

namespace A311237.P1354437950011973083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (SequenceMachineLib.roundAway ((A056878 (n + 1) : ℚ) ^ (A273448 n : ℤ) + (n : ℚ))).toNat

end

end A311237.P1354437950011973083

/-!
# A311238: Coordination sequence Gal.6.125.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311238, there is no canonical definition to state claims against.
-/

/-! ## A311238.P12215951791618889219

`A311239(n)-A185284(A022554(n))`
-/

namespace A311238.P12215951791618889219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311239 n - A185284 (A022554 n).toNat

end

end A311238.P12215951791618889219

/-! ## A311238.P2228013048175882109

`A311239(n)-A316868(A050024(n+1)²)`
-/

namespace A311238.P2228013048175882109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311239 n - A316868 (A050024 (n + 1) ^ 2).toNat

end

end A311238.P2228013048175882109

/-! ## A311238.P10513629828753271776

`A351870(A311239(n))`
-/

namespace A311238.P10513629828753271776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351870 (A311239 n).toNat

end

end A311238.P10513629828753271776

/-! ## A311238.P11928120303579986254

`A311239(n)+A000007(A001970(n))`
-/

namespace A311238.P11928120303579986254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311239 n + A000007 (A001970 n).toNat

end

end A311238.P11928120303579986254

/-! ## A311238.P8705863006071931463

`A311239(A062399(n))`
-/

namespace A311238.P8705863006071931463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311239 (A062399 n).toNat

end

end A311238.P8705863006071931463

/-!
# A311239: Coordination sequence Gal.6.121.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311239, there is no canonical definition to state claims against.
-/

/-! ## A311239.P10871601706465347075

`A311238(n)+A185284(A022554(n))`
-/

namespace A311239.P10871601706465347075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311238 n + A185284 (A022554 n).toNat

end

end A311239.P10871601706465347075

/-! ## A311239.P13901216158989825433

`A311415(n)-A287372(A113374(n))`
-/

namespace A311239.P13901216158989825433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311415 n - A287372 (A113374 n).toNat

end

end A311239.P13901216158989825433

/-! ## A311239.P18330637273114061387

`A316868(A050024(n+1)²)+A311238(n)`
-/

namespace A311239.P18330637273114061387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316868 (A050024 (n + 1) ^ 2).toNat + A311238 n

end

end A311239.P18330637273114061387

/-! ## A311239.P10487540524327064984

`A311415(n)-A023971(A004880(4*n+2))`
-/

namespace A311239.P10487540524327064984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311415 n - A023971 (A004880 (4 * n + 2)).toNat

end

end A311239.P10487540524327064984

/-!
# A311240: Coordination sequence Gal.6.20.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311240, there is no canonical definition to state claims against.
-/

/-! ## A311240.P9063023722543268562

`A311156(n)+A010894(A311157(n))`
-/

namespace A311240.P9063023722543268562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311156 n + A010894 ((A311157 n).toNat + 21)

end

end A311240.P9063023722543268562

/-! ## A311240.P9813305328676416300

`A311153(n)+A010894(A311141(n))`
-/

namespace A311240.P9813305328676416300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311153 n + A010894 ((A311141 n).toNat + 21)

end

end A311240.P9813305328676416300

/-! ## A311240.P5309986226773648181

`A311153(n)+A010894(A311142(n))`
-/

namespace A311240.P5309986226773648181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311153 n + A010894 ((A311142 n).toNat + 21)

end

end A311240.P5309986226773648181

/-! ## A311240.P17977056347356388507

`A311153(n)+A010894(A311143(n))`
-/

namespace A311240.P17977056347356388507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311153 n + A010894 ((A311143 n).toNat + 21)

end

end A311240.P17977056347356388507

/-! ## A311240.P9174211048443327670

`A311154(n)+A010894(A311141(n))`
-/

namespace A311240.P9174211048443327670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311154 n + A010894 ((A311141 n).toNat + 21)

end

end A311240.P9174211048443327670

/-!
# A311241: Coordination sequence Gal.6.226.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311241, there is no canonical definition to state claims against.
-/

/-! ## A311241.P17015510196548158663

`A311242(n)-A340998(A066806(n))`
-/

namespace A311241.P17015510196548158663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311242 n - A340998 ((A066806 n).toNat + 140)

end

end A311241.P17015510196548158663

/-! ## A311241.P17011559197512341746

`A311242(n)-A340998(A321359(n))`
-/

namespace A311241.P17011559197512341746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311242 n - A340998 ((A321359 n).toNat + 140)

end

end A311241.P17011559197512341746

/-! ## A311241.P13250031792538727658

`A311242(n)-A025469(A279754(n))`
-/

namespace A311241.P13250031792538727658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311242 n - A025469 (A279754 n).toNat

end

end A311241.P13250031792538727658

/-! ## A311241.P2746010115857327696

`A311242(n)-A324179(A033484(n))`
-/

namespace A311241.P2746010115857327696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311242 n - A324179 (A033484 n).toNat

end

end A311241.P2746010115857327696

/-! ## A311241.P8670088870363899924

`A311242(n)%A001930(n+3)`
-/

namespace A311241.P8670088870363899924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A311242 n) (A001930 (n + 3))

end

end A311241.P8670088870363899924

/-!
# A311242: Coordination sequence Gal.6.222.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311242, there is no canonical definition to state claims against.
-/

/-! ## A311242.P12769584064243906351

`A340998(A066806(n))+A311241(n)`
-/

namespace A311242.P12769584064243906351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340998 ((A066806 n).toNat + 140) + A311241 n

end

end A311242.P12769584064243906351

/-! ## A311242.P9856002335727006176

`A340998(A321359(n))+A311241(n)`
-/

namespace A311242.P9856002335727006176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340998 ((A321359 n).toNat + 140) + A311241 n

end

end A311242.P9856002335727006176

/-! ## A311242.P17735845602689298944

`A311241(n)+A025469(A279754(n))`
-/

namespace A311242.P17735845602689298944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311241 n + A025469 (A279754 n).toNat

end

end A311242.P17735845602689298944

/-! ## A311242.P6016677570132044967

`A311163(n)+A227625(A063049(n+1))`
-/

namespace A311242.P6016677570132044967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311163 n + A227625 (A063049 (n + 1)).toNat

end

end A311242.P6016677570132044967

/-!
# A311243: Coordination sequence Gal.4.108.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311243, there is no canonical definition to state claims against.
-/

/-! ## A311243.P1389903314988862181

`A063787(A214358(n))+3*n`
-/

namespace A311243.P1389903314988862181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063787 (A214358 n).toNat + (3 * n : ℤ)

end

end A311243.P1389903314988862181

/-! ## A311243.P17441910763592016205

`A311124(n)+A160383(A135907(n))`
-/

namespace A311243.P17441910763592016205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311124 n + A160383 (A135907 n).toNat

end

end A311243.P17441910763592016205

/-! ## A311243.P935832510179069108

`A345415(A246840(n))+A311180(n)`
-/

namespace A311243.P935832510179069108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345415 (A246840 n).toNat + A311180 n

end

end A311243.P935832510179069108

/-! ## A311243.P8766837607720672346

`A311260(n)-A045872(A006721(n))`
-/

namespace A311243.P8766837607720672346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311260 n - A045872 ((A006721 n).toNat + 10)

end

end A311243.P8766837607720672346

/-! ## A311243.P2690093047436712141

`A311542(n)-A037808(A088218(n))`
-/

namespace A311243.P2690093047436712141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311542 n - A037808 (A088218 n).toNat

end

end A311243.P2690093047436712141

/-!
# A311244: Coordination sequence Gal.6.181.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311244, there is no canonical definition to state claims against.
-/

/-! ## A311244.P8490126922606511733

`A311245(n)-A133010(A121519(n+1))`
-/

namespace A311244.P8490126922606511733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311245 n - A133010 (A121519 (n + 1)).toNat

end

end A311244.P8490126922606511733

/-! ## A311244.P408452084321819777

`A118168(A315476(n))-A132270(n+1)`
-/

namespace A311244.P408452084321819777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118168 (A315476 n).toNat - A132270 (n + 1)

end

end A311244.P408452084321819777

/-! ## A311244.P808961370291196855

`∑[A272886(A071385(n+1))]`
-/

namespace A311244.P808961370291196855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272886 (A071385 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A311244.P808961370291196855

/-! ## A311244.P8505986018219516664

`A311245(n)%Δ[A229832(n+1)]`
-/

namespace A311244.P8505986018219516664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229832 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A311245 n) (f1 (n + 1) - f1 n)

end

end A311244.P8505986018219516664

/-! ## A311244.P13954354230674584256

`A311245(n)^A276949(A000051(n))`
-/

namespace A311244.P13954354230674584256
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A311245 n : ℚ) ^ (A276949 (A000051 n).toNat : ℤ)

end

end A311244.P13954354230674584256

/-!
# A311245: Coordination sequence Gal.6.165.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311245, there is no canonical definition to state claims against.
-/

/-! ## A311245.P4822027961321266074

`or(A054900(A185254(n)), A311244(n))`
-/

namespace A311245.P4822027961321266074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A054900 (A185254 n).toNat) (A311244 n)

end

end A311245.P4822027961321266074

/-! ## A311245.P16299909237124871011

`xor(A046660(A020873(n)), A311249(n))`
-/

namespace A311245.P16299909237124871011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A046660 (A020873 n).toNat) (A311249 n)

end

end A311245.P16299909237124871011

/-! ## A311245.P17817130111968710291

`or(A185284(A033627(n+1)), A311244(n))`
-/

namespace A311245.P17817130111968710291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A185284 (A033627 (n + 1)).toNat) (A311244 n)

end

end A311245.P17817130111968710291

/-!
# A311246: Coordination sequence Gal.5.60.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311246, there is no canonical definition to state claims against.
-/

/-! ## A311246.P12860551414769843409

`(A311339(n)+A311154(n))/2`
-/

namespace A311246.P12860551414769843409
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A311339 n + A311154 n : ℚ) / 2

end

end A311246.P12860551414769843409

/-! ## A311246.P12939480525663638094

`A004525(A311339(n)+A311154(n))`
-/

namespace A311246.P12939480525663638094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A311339 n + A311154 n).toNat

end

end A311246.P12939480525663638094

/-! ## A311246.P4974460908854666284

`A004526(A311339(n)+A311154(n))`
-/

namespace A311246.P4974460908854666284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A311339 n + A311154 n).toNat

end

end A311246.P4974460908854666284

/-! ## A311246.P13603239464887045585

`A001057(A311339(n)+A311154(n)+1)-1`
-/

namespace A311246.P13603239464887045585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A311339 n + A311154 n + 1).toNat - 1

end

end A311246.P13603239464887045585

/-! ## A311246.P14704633921080921330

`∏{e}[3^n, A311247(#)]`
-/

namespace A311246.P14704633921080921330
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A311247 (Nat.factorization (f1 n) p)

end

end A311246.P14704633921080921330

/-!
# A311247: Coordination sequence Gal.5.56.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311247, there is no canonical definition to state claims against.
-/

/-! ## A311247.P5914689756098288199

`(A311340(n)+A311155(n))/2`
-/

namespace A311247.P5914689756098288199
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A311340 n + A311155 n : ℚ) / 2

end

end A311247.P5914689756098288199

/-! ## A311247.P7723480666929771005

`A004525(A311340(n)+A311155(n))`
-/

namespace A311247.P7723480666929771005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A311340 n + A311155 n).toNat

end

end A311247.P7723480666929771005

/-! ## A311247.P5266056079964664560

`A064680(A311340(n)+A311155(n)-2)+1`
-/

namespace A311247.P5266056079964664560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064680 (A311340 n + A311155 n - 2).toNat + 1

end

end A311247.P5266056079964664560

/-! ## A311247.P14540700937124351679

`A004526(A311340(n)+A311155(n))`
-/

namespace A311247.P14540700937124351679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A311340 n + A311155 n).toNat

end

end A311247.P14540700937124351679

/-! ## A311247.P13301415463349688693

`A064680(A311340(n)+A311155(n))`
-/

namespace A311247.P13301415463349688693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064680 (A311340 n + A311155 n).toNat

end

end A311247.P13301415463349688693

/-!
# A311248: Coordination sequence Gal.6.412.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311248, there is no canonical definition to state claims against.
-/

/-! ## A311248.P4486705506446830307

`A001221(A246792(n+1))+abs(1-4*n)`
-/

namespace A311248.P4486705506446830307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A246792 (n + 1)).toNat + |1 - (4 * n : ℤ)|

end

end A311248.P4486705506446830307

/-! ## A311248.P13419707385084073211

`A325194(A129194(n))+4*n`
-/

namespace A311248.P13419707385084073211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325194 (A129194 n).toNat + (4 * n : ℤ)

end

end A311248.P13419707385084073211

/-! ## A311248.P12102590158419872076

`A269247(A186739(n))+A008574(n)`
-/

namespace A311248.P12102590158419872076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269247 (A186739 n).toNat + A008574 n

end

end A311248.P12102590158419872076

/-! ## A311248.P6278140879863002387

`A311131(n)+A213902(A011782(n))`
-/

namespace A311248.P6278140879863002387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311131 n + A213902 (A011782 n).toNat

end

end A311248.P6278140879863002387

/-! ## A311248.P17722698769099180521

`and(A112070(A000124(n)), A311262(n))`
-/

namespace A311248.P17722698769099180521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A112070 (A000124 n).toNat) (A311262 n)

end

end A311248.P17722698769099180521

/-!
# A311249: Coordination sequence Gal.6.286.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311249, there is no canonical definition to state claims against.
-/

/-! ## A311249.P14551143426775646519

`A311250(n)-A055641(A034943(n))`
-/

namespace A311249.P14551143426775646519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311250 n - A055641 (A034943 n).toNat

end

end A311249.P14551143426775646519

/-! ## A311249.P2332427444324461242

`A311250(n)-A343632(A036599(n))`
-/

namespace A311249.P2332427444324461242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311250 n - A343632 (A036599 n).toNat

end

end A311249.P2332427444324461242

/-! ## A311249.P2042557091986536481

`A311250(n)-A304571(A301390(n))`
-/

namespace A311249.P2042557091986536481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311250 n - A304571 (A301390 n).toNat

end

end A311249.P2042557091986536481

/-! ## A311249.P13473614934299008910

`A311250(n)-A185284(A069040(n+1))`
-/

namespace A311249.P13473614934299008910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311250 n - A185284 (A069040 (n + 1)).toNat

end

end A311249.P13473614934299008910

/-! ## A311249.P9609082501612542309

`A311250(n)-A185284(A108283(n+1))`
-/

namespace A311249.P9609082501612542309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311250 n - A185284 (A108283 (n + 1)).toNat

end

end A311249.P9609082501612542309

/-!
# A311250: Coordination sequence Gal.6.272.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311250, there is no canonical definition to state claims against.
-/

/-! ## A311250.P9838559698010110317

`A062756(A253244(n))+A008574(n)`
-/

namespace A311250.P9838559698010110317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062756 (A253244 n).toNat + A008574 n

end

end A311250.P9838559698010110317

/-! ## A311250.P9216246985115981141

`A311249(n)+A055641(A034943(n))`
-/

namespace A311250.P9216246985115981141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311249 n + A055641 (A034943 n).toNat

end

end A311250.P9216246985115981141

/-! ## A311250.P1263519826451699610

`A343632(A036599(n))+A311249(n)`
-/

namespace A311250.P1263519826451699610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343632 (A036599 n).toNat + A311249 n

end

end A311250.P1263519826451699610

/-! ## A311250.P9685700918759937390

`A311249(n)+A304571(A301390(n))`
-/

namespace A311250.P9685700918759937390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311249 n + A304571 (A301390 n).toNat

end

end A311250.P9685700918759937390

/-!
# A311251: Coordination sequence Gal.6.419.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311251, there is no canonical definition to state claims against.
-/

/-! ## A311251.P14950348120995380350

`A038189(A203837(n))+A008574(n)`
-/

namespace A311251.P14950348120995380350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038189 (A203837 n).toNat + A008574 n

end

end A311251.P14950348120995380350

/-! ## A311251.P9288461894753416518

`A038189(A203837(n))+A004277(2*n)`
-/

namespace A311251.P9288461894753416518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038189 (A203837 n).toNat + A004277 (2 * n)

end

end A311251.P9288461894753416518

/-! ## A311251.P2734258961191082427

`A008458(n)+A038189(A203837(n))-2*n`
-/

namespace A311251.P2734258961191082427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A038189 (A203837 n).toNat - (2 * n : ℤ))

end

end A311251.P2734258961191082427

/-! ## A311251.P8586379575495011084

`4*n+A038189(A203837(n))+A000007(n)`
-/

namespace A311251.P8586379575495011084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n : ℤ) + (A038189 (A203837 n).toNat + A000007 n)

end

end A311251.P8586379575495011084

/-! ## A311251.P17832262949331653896

`A143538(A000602(n))+A008574(n)`
-/

namespace A311251.P17832262949331653896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143538 (A000602 n).toNat + A008574 n

end

end A311251.P17832262949331653896

/-!
# A311252: Coordination sequence Gal.6.117.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311252, there is no canonical definition to state claims against.
-/

/-! ## A311252.P11743251018624467640

`A311253(n)-A023532(A185236(n)*A311253(n))`
-/

namespace A311252.P11743251018624467640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311253 n - A023532 (A185236 n * A311253 n).toNat

end

end A311252.P11743251018624467640

/-! ## A311252.P3606984616156043871

`A311253(n)-A023532(A185236(n)²²)`
-/

namespace A311252.P3606984616156043871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311253 n - A023532 ((A185236 n ^ 2) ^ 2).toNat

end

end A311252.P3606984616156043871

/-! ## A311252.P3680270903394311509

`A008574(n)+A005087(Δ[A326117(n)])`
-/

namespace A311252.P3680270903394311509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326117 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + A005087 (f1 (n + 1) - f1 n).toNat

end

end A311252.P3680270903394311509

/-! ## A311252.P2922591152300368592

`A311253(n)-A185236(n*A185236(n))`
-/

namespace A311252.P2922591152300368592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311253 n - A185236 ((n : ℤ) * A185236 n).toNat

end

end A311252.P2922591152300368592

/-!
# A311253: Coordination sequence Gal.6.116.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311253, there is no canonical definition to state claims against.
-/

/-! ## A311253.P10402724307827146195

`A368941(A152777(n))`
-/

namespace A311253.P10402724307827146195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368941 (A152777 n).toNat

end

end A311253.P10402724307827146195

/-! ## A311253.P13002987225399031904

`A003059(A008587(∑[7*n-5]+5)+n+1)`
-/

namespace A311253.P13002987225399031904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (7 * n : ℤ) - 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003059 (A008587 (∑ j ∈ Finset.range (n + 1), f1 j + 5).toNat + (n + 1 : ℤ)).toNat

end

end A311253.P13002987225399031904

/-! ## A311253.P17015321811300096924

`A003059(A051869(n)+A005901(n))`
-/

namespace A311253.P17015321811300096924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003059 (A051869 n + A005901 n).toNat

end

end A311253.P17015321811300096924

/-! ## A311253.P9410747868674265137

`A178334(n)+A137734(A152777(n))`
-/

namespace A311253.P9410747868674265137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 n + A137734 (A152777 n).toNat

end

end A311253.P9410747868674265137

/-! ## A311253.P17757402307535226140

`A002024(A357575(2*n)+A008262(n))`
-/

namespace A311253.P17757402307535226140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A357575 (2 * n) + A008262 n).toNat

end

end A311253.P17757402307535226140

/-!
# A311254: Coordination sequence Gal.6.218.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311254, the canonical program `A311254.P10235283366287493450` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A311254 has offset 0).

The definition of A311254 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2010 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A311254.P10235283366287493450

`A008574(n)+A315691(n)-A315686(n)`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A311254

/-- `A008574(n)+A315691(n)-A315686(n)` -/
def P10235283366287493450.Spec : Prop :=
  ∀ n, P10235283366287493450.a n = A311254 n

theorem P10235283366287493450.correct : P10235283366287493450.Spec := by
  intro n
  simp only [A311254]

end A311254

/-! ## A311254.P10841670692476097007

`A008574(n)-(A315691(n)-A315686(n))*A057428(n)`
-/

namespace A311254.P10841670692476097007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n - (A315691 n - A315686 n) * A057428 n

end

end A311254.P10841670692476097007

namespace A311254

/-- `A008574(n)-(A315691(n)-A315686(n))*A057428(n)` -/
def P10841670692476097007.Spec : Prop :=
  ∀ n, P10841670692476097007.a n = A311254 n

end A311254

/-! ## A311254.P11624103042416943276

`A134451(A002664(n))+A008574(n)`
-/

namespace A311254.P11624103042416943276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134451 (A002664 n).toNat + A008574 n

end

end A311254.P11624103042416943276

namespace A311254

/-- `A134451(A002664(n))+A008574(n)` -/
def P11624103042416943276.Spec : Prop :=
  ∀ n, P11624103042416943276.a n = A311254 n

end A311254

/-! ## A311254.P5836718862281042640

`A311255(n)-A102683(A011782(n))`
-/

namespace A311254.P5836718862281042640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311255 n - A102683 (A011782 n).toNat

end

end A311254.P5836718862281042640

namespace A311254

/-- `A311255(n)-A102683(A011782(n))` -/
def P5836718862281042640.Spec : Prop :=
  ∀ n, P5836718862281042640.a n = A311254 n

end A311254

/-! ## A311254.P4895219533934850046

`A311255(n)-A102683(A131577(n))`
-/

namespace A311254.P4895219533934850046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311255 n - A102683 (A131577 n).toNat

end

end A311254.P4895219533934850046

namespace A311254

/-- `A311255(n)-A102683(A131577(n))` -/
def P4895219533934850046.Spec : Prop :=
  ∀ n, P4895219533934850046.a n = A311254 n

end A311254

/-!
# A311255: Coordination sequence Gal.6.217.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311255, there is no canonical definition to state claims against.
-/

/-! ## A311255.P16228336596091822909

`A311434(n)-A288707(Δ[A083353(n)])`
-/

namespace A311255.P16228336596091822909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083353 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311434 n - A288707 (f1 (n + 1) - f1 n).toNat

end

end A311255.P16228336596091822909

/-! ## A311255.P12792245004874984614

`A076489(A001595(n))+A008574(n)`
-/

namespace A311255.P12792245004874984614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076489 (A001595 n).toNat + A008574 n

end

end A311255.P12792245004874984614

/-! ## A311255.P9485259593201022927

`A076489(A154327(n))+A008574(n)`
-/

namespace A311255.P9485259593201022927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076489 (A154327 n).toNat + A008574 n

end

end A311255.P9485259593201022927

/-! ## A311255.P12378585615205354357

`A311434(n)-A151666(A023490(n))`
-/

namespace A311255.P12378585615205354357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311434 n - A151666 (A023490 n).toNat

end

end A311255.P12378585615205354357

/-! ## A311255.P9481644216886640023

`A076489(A019274(n+1))+A008574(n)`
-/

namespace A311255.P9481644216886640023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076489 (A019274 (n + 1)).toNat + A008574 n

end

end A311255.P9481644216886640023

/-!
# A311256: Coordination sequence Gal.5.52.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311256, the canonical program `A311256.P1958209585559977164` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A311256 has offset 0).

The definition of A311256 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2277 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A311256.P1958209585559977164

`A008574(n)+A315690(n)-A315684(n)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A311256

/-- `A008574(n)+A315690(n)-A315684(n)` -/
def P1958209585559977164.Spec : Prop :=
  ∀ n, P1958209585559977164.a n = A311256 n

theorem P1958209585559977164.correct : P1958209585559977164.Spec := by
  intro n
  simp only [A311256]

end A311256

/-! ## A311256.P7443587512003828090

`record[A019425(n+1)]+A315690(n)-A315684(n)`
-/

namespace A311256.P7443587512003828090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019425 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (A315690 n - A315684 n)

end

end A311256.P7443587512003828090

namespace A311256

/-- `record[A019425(n+1)]+A315690(n)-A315684(n)` -/
def P7443587512003828090.Spec : Prop :=
  ∀ n, P7443587512003828090.a n = A311256 n

end A311256

/-! ## A311256.P3530533037486899848

`record[A019425(n+2)]+A315690(n)%A315684(n)`
-/

namespace A311256.P3530533037486899848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019425 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + Int.tmod (A315690 n) (A315684 n)

end

end A311256.P3530533037486899848

namespace A311256

/-- `record[A019425(n+2)]+A315690(n)%A315684(n)` -/
def P3530533037486899848.Spec : Prop :=
  ∀ n, P3530533037486899848.a n = A311256 n

end A311256

/-! ## A311256.P9249858621774388006

`C(2, n+2)+A001179(A052325(n+1))+4*n`
-/

namespace A311256.P9249858621774388006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose 2 (n + 2) : ℤ) + (A001179 (A052325 (n + 1)).toNat + (4 * n : ℤ))

end

end A311256.P9249858621774388006

namespace A311256

/-- `C(2, n+2)+A001179(A052325(n+1))+4*n` -/
def P9249858621774388006.Spec : Prop :=
  ∀ n, P9249858621774388006.a n = A311256 n

end A311256

/-! ## A311256.P12081022892224282333

`A311257(n)-A025469(A108411(n))`
-/

namespace A311256.P12081022892224282333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311257 n - A025469 (A108411 n).toNat

end

end A311256.P12081022892224282333

namespace A311256

/-- `A311257(n)-A025469(A108411(n))` -/
def P12081022892224282333.Spec : Prop :=
  ∀ n, P12081022892224282333.a n = A311256 n

end A311256

/-!
# A311257: Coordination sequence Gal.6.115.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311257, the canonical program `A311257.P2429482415252635039` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A311257 has offset 0).

The definition of A311257 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2640 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A311257.P2429482415252635039

`A312909(n)-A002264(n+1)`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A311257

/-- `A312909(n)-A002264(n+1)` -/
def P2429482415252635039.Spec : Prop :=
  ∀ n, P2429482415252635039.a n = A311257 n

theorem P2429482415252635039.correct : P2429482415252635039.Spec := by
  intro n
  simp only [A311257]

end A311257

/-! ## A311257.P1833148953730726118

`A004396(n)+A312909(n)-n`
-/

namespace A311257.P1833148953730726118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n + (A312909 n - (n : ℤ))

end

end A311257.P1833148953730726118

namespace A311257

/-- `A004396(n)+A312909(n)-n` -/
def P1833148953730726118.Spec : Prop :=
  ∀ n, P1833148953730726118.a n = A311257 n

end A311257

/-! ## A311257.P8520303596802883055

`A008576(n)+A312909(n)-A008486(n)`
-/

namespace A311257.P8520303596802883055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008576 n + (A312909 n - A008486 n)

end

end A311257.P8520303596802883055

namespace A311257

/-- `A008576(n)+A312909(n)-A008486(n)` -/
def P8520303596802883055.Spec : Prop :=
  ∀ n, P8520303596802883055.a n = A311257 n

end A311257

/-! ## A311257.P539006000289830719

`A004525(A004396(n))+A312123(n)-A004396(n)`
-/

namespace A311257.P539006000289830719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A004396 n).toNat + (A312123 n - A004396 n)

end

end A311257.P539006000289830719

namespace A311257

/-- `A004525(A004396(n))+A312123(n)-A004396(n)` -/
def P539006000289830719.Spec : Prop :=
  ∀ n, P539006000289830719.a n = A311257 n

end A311257

/-! ## A311257.P12767487255626398212

`A313057(n)-Δ[floor(C(n, 2)/2)]`
-/

namespace A311257.P12767487255626398212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.choose n 2 : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313057 n - (f1 (n + 1) - f1 n)

end

end A311257.P12767487255626398212

namespace A311257

/-- `A313057(n)-Δ[floor(C(n, 2)/2)]` -/
def P12767487255626398212.Spec : Prop :=
  ∀ n, P12767487255626398212.a n = A311257 n

end A311257

/-! ## A311257.P2781830502082137881

`A313057(n)-Δ[A011848(n)]`
-/

namespace A311257.P2781830502082137881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011848 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313057 n - (f1 (n + 1) - f1 n)

end

end A311257.P2781830502082137881

namespace A311257

/-- `A313057(n)-Δ[A011848(n)]` -/
def P2781830502082137881.Spec : Prop :=
  ∀ n, P2781830502082137881.a n = A311257 n

end A311257

/-! ## A311257.P11898437651031305176

`A004525(n)+A313057(n)-n`
-/

namespace A311257.P11898437651031305176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n + (A313057 n - (n : ℤ))

end

end A311257.P11898437651031305176

namespace A311257

/-- `A004525(n)+A313057(n)-n` -/
def P11898437651031305176.Spec : Prop :=
  ∀ n, P11898437651031305176.a n = A311257 n

end A311257

/-! ## A311257.P5453083670498684318

`A314899(n)-A004396(n)`
-/

namespace A311257.P5453083670498684318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314899 n - A004396 n

end

end A311257.P5453083670498684318

namespace A311257

/-- `A314899(n)-A004396(n)` -/
def P5453083670498684318.Spec : Prop :=
  ∀ n, P5453083670498684318.a n = A311257 n

end A311257

/-! ## A311257.P17452553557440132641

`A314899(n)-A002264(2*n+1)`
-/

namespace A311257.P17452553557440132641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314899 n - A002264 (2 * n + 1)

end

end A311257.P17452553557440132641

namespace A311257

/-- `A314899(n)-A002264(2*n+1)` -/
def P17452553557440132641.Spec : Prop :=
  ∀ n, P17452553557440132641.a n = A311257 n

end A311257

/-! ## A311257.P12423836573247305180

`abs(A008591(n)-A313720(n))`
-/

namespace A311257.P12423836573247305180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008591 n - A313720 n|

end

end A311257.P12423836573247305180

namespace A311257

/-- `abs(A008591(n)-A313720(n))` -/
def P12423836573247305180.Spec : Prop :=
  ∀ n, P12423836573247305180.a n = A311257 n

end A311257

/-! ## A311257.P8973197599717064985

`A008458(n)+A008486(n)-A313720(n)`
-/

namespace A311257.P8973197599717064985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008486 n - A313720 n)

end

end A311257.P8973197599717064985

namespace A311257

/-- `A008458(n)+A008486(n)-A313720(n)` -/
def P8973197599717064985.Spec : Prop :=
  ∀ n, P8973197599717064985.a n = A311257 n

end A311257

/-! ## A311257.P9118151917685018012

`A313747(n)-n`
-/

namespace A311257.P9118151917685018012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313747 n - (n : ℤ)

end

end A311257.P9118151917685018012

namespace A311257

/-- `A313747(n)-n` -/
def P9118151917685018012.Spec : Prop :=
  ∀ n, P9118151917685018012.a n = A311257 n

end A311257

/-! ## A311257.P9214047189432566428

`A004525(A311312(n))+2*n`
-/

namespace A311257.P9214047189432566428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A311312 n).toNat + (2 * n : ℤ)

end

end A311257.P9214047189432566428

namespace A311257

/-- `A004525(A311312(n))+2*n` -/
def P9214047189432566428.Spec : Prop :=
  ∀ n, P9214047189432566428.a n = A311257 n

end A311257

/-! ## A311257.P1005074672458479500

`A315479(n)-A047424(n+1)`
-/

namespace A311257.P1005074672458479500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315479 n - A047424 (n + 1)

end

end A311257.P1005074672458479500

namespace A311257

/-- `A315479(n)-A047424(n+1)` -/
def P1005074672458479500.Spec : Prop :=
  ∀ n, P1005074672458479500.a n = A311257 n

end A311257

/-! ## A311257.P2044043253067979612

`A313924(n)-A047513(n+1)`
-/

namespace A311257.P2044043253067979612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313924 n - A047513 (n + 1)

end

end A311257.P2044043253067979612

namespace A311257

/-- `A313924(n)-A047513(n+1)` -/
def P2044043253067979612.Spec : Prop :=
  ∀ n, P2044043253067979612.a n = A311257 n

end A311257

/-! ## A311257.P613725550046107059

`A315335(n)-2*A004396(n)`
-/

namespace A311257.P613725550046107059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315335 n - 2 * A004396 n

end

end A311257.P613725550046107059

namespace A311257

/-- `A315335(n)-2*A004396(n)` -/
def P613725550046107059.Spec : Prop :=
  ∀ n, P613725550046107059.a n = A311257 n

end A311257

/-! ## A311257.P13841307253422342094

`A314222(n)-A047273(n+1)`
-/

namespace A311257.P13841307253422342094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314222 n - A047273 (n + 1)

end

end A311257.P13841307253422342094

namespace A311257

/-- `A314222(n)-A047273(n+1)` -/
def P13841307253422342094.Spec : Prop :=
  ∀ n, P13841307253422342094.a n = A311257 n

end A311257

/-! ## A311257.P17222584720392990193

`A314222(n)-(∑[A021913(n)]+n)`
-/

namespace A311257.P17222584720392990193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021913 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314222 n - (∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ))

end

end A311257.P17222584720392990193

namespace A311257

/-- `A314222(n)-(∑[A021913(n)]+n)` -/
def P17222584720392990193.Spec : Prop :=
  ∀ n, P17222584720392990193.a n = A311257 n

end A311257

/-! ## A311257.P7745680873402490015

`abs(10*n-A315763(n))`
-/

namespace A311257.P7745680873402490015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(10 * n : ℤ) - A315763 n|

end

end A311257.P7745680873402490015

namespace A311257

/-- `abs(10*n-A315763(n))` -/
def P7745680873402490015.Spec : Prop :=
  ∀ n, P7745680873402490015.a n = A311257 n

end A311257

/-! ## A311257.P18431012492416703581

`A315549(n)-A047222(n+1)`
-/

namespace A311257.P18431012492416703581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315549 n - A047222 (n + 1)

end

end A311257.P18431012492416703581

namespace A311257

/-- `A315549(n)-A047222(n+1)` -/
def P18431012492416703581.Spec : Prop :=
  ∀ n, P18431012492416703581.a n = A311257 n

end A311257

/-!
# A311258: Coordination sequence Gal.5.51.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311258, there is no canonical definition to state claims against.
-/

/-! ## A311258.P6773751257747179985

`A311256(n)+A025426(A146836(n+1))`
-/

namespace A311258.P6773751257747179985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311256 n + A025426 (A146836 (n + 1)).toNat

end

end A311258.P6773751257747179985

/-! ## A311258.P2889792322935014155

`A000196(Δ[floor((2*n)²/(2*n+1))^3])-round(2*n/3)`
-/

namespace A311258.P2889792322935014155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((2 * n) ^ 2 : ℚ) / (2 * n + 1 : ℚ)⌋ ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (f1 (n + 1) - f1 n).toNat - SequenceMachineLib.roundAway (2 * ((n : ℚ) / 3))

end

end A311258.P2889792322935014155

/-! ## A311258.P1527033442050327268

`A311290(n)+A218173(A126460(n))`
-/

namespace A311258.P1527033442050327268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311290 n + A218173 (A126460 n).toNat

end

end A311258.P1527033442050327268

/-! ## A311258.P8310397278239353889

`A008574(n)+∑[A060862(A291154(n+1))]`
-/

namespace A311258.P8310397278239353889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060862 (A291154 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A311258.P8310397278239353889

/-! ## A311258.P16097145727402511838

`A274701(or(A060787(n+2), A305372(n)))`
-/

namespace A311258.P16097145727402511838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274701 (Int.lor (A060787 (n + 2)) (A305372 n)).toNat

end

end A311258.P16097145727402511838

/-!
# A311259: Coordination sequence Gal.6.126.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311259, there is no canonical definition to state claims against.
-/

/-! ## A311259.P10664214618659632540

`A311260(n)-A125005(A337567(n))`
-/

namespace A311259.P10664214618659632540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311260 n - A125005 (A337567 n).toNat

end

end A311259.P10664214618659632540

/-! ## A311259.P7198273480278693175

`A311260(n)-∑[A302110(A008862(n))]`
-/

namespace A311259.P7198273480278693175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302110 (A008862 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311260 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A311259.P7198273480278693175

/-! ## A311259.P5876325020998462437

`A311260(n)-A125005(A029749(n))`
-/

namespace A311259.P5876325020998462437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311260 n - A125005 (A029749 n).toNat

end

end A311259.P5876325020998462437

/-! ## A311259.P12005791271590317395

`A311260(n)-A025469(A154918(n))`
-/

namespace A311259.P12005791271590317395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311260 n - A025469 (A154918 n).toNat

end

end A311259.P12005791271590317395

/-! ## A311259.P18235838104707642600

`A351870(A311260(n))`
-/

namespace A311259.P18235838104707642600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351870 (A311260 n).toNat

end

end A311259.P18235838104707642600

/-!
# A311260: Coordination sequence Gal.6.122.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311260, there is no canonical definition to state claims against.
-/

/-! ## A311260.P12771610504700711801

`A311259(n)+A125005(A337567(n))`
-/

namespace A311260.P12771610504700711801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311259 n + A125005 (A337567 n).toNat

end

end A311260.P12771610504700711801

/-! ## A311260.P7074260170842291407

`A311259(n)+A125005(A029749(n))`
-/

namespace A311260.P7074260170842291407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311259 n + A125005 (A029749 n).toNat

end

end A311260.P7074260170842291407

/-! ## A311260.P14251289232385333854

`A311259(n)+A025469(A154918(n))`
-/

namespace A311260.P14251289232385333854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311259 n + A025469 (A154918 n).toNat

end

end A311260.P14251289232385333854

/-! ## A311260.P14580340613845242542

`A311259(n)+A185284(A003520(n))`
-/

namespace A311260.P14580340613845242542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311259 n + A185284 (A003520 n).toNat

end

end A311260.P14580340613845242542

/-!
# A311261: Coordination sequence Gal.5.97.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311261, the canonical program `A311261.P2737762260615231918` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A311261 has offset 0).

The definition of A311261 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 103 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A311261.P13321271139353636858

`A008574(n)+A312160(n)-A312140(n)`
-/

namespace A311261.P13321271139353636858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + (A312160 n - A312140 n)

end

end A311261.P13321271139353636858

namespace A311261

/-- `A008574(n)+A312160(n)-A312140(n)` -/
def P13321271139353636858.Spec : Prop :=
  ∀ n, P13321271139353636858.a n = A311261 n

end A311261

/-! ## A311261.P13500445873465569729

`A008706(n)+A313480(n)-A315680(n)`
-/

namespace A311261.P13500445873465569729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 n + (A313480 n - A315680 n)

end

end A311261.P13500445873465569729

namespace A311261

/-- `A008706(n)+A313480(n)-A315680(n)` -/
def P13500445873465569729.Spec : Prop :=
  ∀ n, P13500445873465569729.a n = A311261 n

end A311261

/-! ## A311261.P4170043564353125725

`A312160(n)-A312140(n)%A028310(n)`
-/

namespace A311261.P4170043564353125725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312160 n - Int.tmod (A312140 n) (A028310 n)

end

end A311261.P4170043564353125725

namespace A311261

/-- `A312160(n)-A312140(n)%A028310(n)` -/
def P4170043564353125725.Spec : Prop :=
  ∀ n, P4170043564353125725.a n = A311261 n

end A311261

/-! ## A311261.P2737762260615231918

`4*n+A028310(n)+A313480(n)-A315680(n)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A311261

/-- `4*n+A028310(n)+A313480(n)-A315680(n)` -/
def P2737762260615231918.Spec : Prop :=
  ∀ n, P2737762260615231918.a n = A311261 n

theorem P2737762260615231918.correct : P2737762260615231918.Spec := by
  intro n
  simp only [A311261]

end A311261

/-! ## A311261.P6215864779483466228

`A311262(n)-A055641(A011782(n))`
-/

namespace A311261.P6215864779483466228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311262 n - A055641 (A011782 n).toNat

end

end A311261.P6215864779483466228

namespace A311261

/-- `A311262(n)-A055641(A011782(n))` -/
def P6215864779483466228.Spec : Prop :=
  ∀ n, P6215864779483466228.a n = A311261 n

end A311261

/-!
# A311262: Coordination sequence Gal.6.216.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311262, the canonical program `A311262.P10638457918818941404` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A311262 has offset 0).

The definition of A311262 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2293 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A311262.P4070293038596359221

`(A311356(n)+A008574(n))/2`
-/

namespace A311262.P4070293038596359221
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A311356 n + A008574 n : ℚ) / 2

end

end A311262.P4070293038596359221

namespace A311262

/-- `(A311356(n)+A008574(n))/2` -/
def P4070293038596359221.Spec : Prop :=
  ∀ n, P4070293038596359221.a n = (A311262 n : ℚ)

theorem P4070293038596359221.correct : P4070293038596359221.Spec := by
  intro n
  simp only [A311262, Nat.add_sub_cancel, A311262.P4070293038596359221.a, A311262.P10638457918818941404.a, A004525, A004525.P4158271949796742323.a, A008574, A008574.P1300280032690682112.a, A311331, A311331.P4887198018422537998.a, A311356, A311356.P10753522587295853284.a, A008592, A008592.P4981059802862696142.a, A315759, A315759.P12503429889593144043.a, A004396, A004396.P17032557045289780609.a, A315754, A315754.P17150981886379048443.a, A315629, A315629.P1423627926306205843.a, A315678, A315678.P12797774727885421403.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A311262

/-! ## A311262.P6892050882878013946

`A008574(n)+A001281(A311356(n)-A008574(n))`
-/

namespace A311262.P6892050882878013946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + A001281 (A311356 n - A008574 n).toNat

end

end A311262.P6892050882878013946

namespace A311262

/-- `A008574(n)+A001281(A311356(n)-A008574(n))` -/
def P6892050882878013946.Spec : Prop :=
  ∀ n, P6892050882878013946.a n = A311262 n

end A311262

/-! ## A311262.P10638457918818941404

`A004525(A311331(n))+2*n`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A311262

/-- `A004525(A311331(n))+2*n` -/
def P10638457918818941404.Spec : Prop :=
  ∀ n, P10638457918818941404.a n = A311262 n

theorem P10638457918818941404.correct : P10638457918818941404.Spec := by
  intro n
  simp only [A311262]

end A311262

/-! ## A311262.P2467157001864919596

`A005843(n)+A004525(A311331(n))`
-/

namespace A311262.P2467157001864919596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n + A004525 (A311331 n).toNat

end

end A311262.P2467157001864919596

namespace A311262

/-- `A005843(n)+A004525(A311331(n))` -/
def P2467157001864919596.Spec : Prop :=
  ∀ n, P2467157001864919596.a n = A311262 n

theorem P2467157001864919596.correct : P2467157001864919596.Spec := by
  intro n
  simp only [A311262, Nat.add_sub_cancel, A311262.P2467157001864919596.a, A311262.P10638457918818941404.a, A004525, A004525.P4158271949796742323.a, A005843, A005843.P3167286115683555970.a, A311331, A311331.P4887198018422537998.a, A008592, A008592.P4981059802862696142.a, A315759, A315759.P12503429889593144043.a, A004396, A004396.P17032557045289780609.a, A315754, A315754.P17150981886379048443.a, A315629, A315629.P1423627926306205843.a, A315678, A315678.P12797774727885421403.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A311262

/-! ## A311262.P7097573173290615057

`A005843(n)+A004525(A311356(n))`
-/

namespace A311262.P7097573173290615057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n + A004525 (A311356 n).toNat

end

end A311262.P7097573173290615057

namespace A311262

/-- `A005843(n)+A004525(A311356(n))` -/
def P7097573173290615057.Spec : Prop :=
  ∀ n, P7097573173290615057.a n = A311262 n

end A311262

/-! ## A311262.P15200099187262970254

`abs(A008592(n)-A315762(n))`
-/

namespace A311262.P15200099187262970254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A315762 n|

end

end A311262.P15200099187262970254

namespace A311262

/-- `abs(A008592(n)-A315762(n))` -/
def P15200099187262970254.Spec : Prop :=
  ∀ n, P15200099187262970254.a n = A311262 n

end A311262

/-! ## A311262.P11691175242631119461

`A008458(n)+A008574(n)-A315762(n)`
-/

namespace A311262.P11691175242631119461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A315762 n)

end

end A311262.P11691175242631119461

namespace A311262

/-- `A008458(n)+A008574(n)-A315762(n)` -/
def P11691175242631119461.Spec : Prop :=
  ∀ n, P11691175242631119461.a n = A311262 n

end A311262

/-! ## A311262.P17222989352880350482

`A005843(A008458(n)-n)-A315762(n)`
-/

namespace A311262.P17222989352880350482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008458 n - (n : ℤ)).toNat - A315762 n

end

end A311262.P17222989352880350482

namespace A311262

/-- `A005843(A008458(n)-n)-A315762(n)` -/
def P17222989352880350482.Spec : Prop :=
  ∀ n, P17222989352880350482.a n = A311262 n

end A311262

/-! ## A311262.P5229015106225322799

`A068962(A313814(n))+2*n`
-/

namespace A311262.P5229015106225322799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068962 (A313814 n).toNat + (2 * n : ℤ)

end

end A311262.P5229015106225322799

namespace A311262

/-- `A068962(A313814(n))+2*n` -/
def P5229015106225322799.Spec : Prop :=
  ∀ n, P5229015106225322799.a n = A311262 n

end A311262

/-! ## A311262.P17672014675794662818

`A008458(n)+n-A004526(A315756(n))`
-/

namespace A311262.P17672014675794662818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + ((n : ℤ) - A004526 (A315756 n).toNat)

end

end A311262.P17672014675794662818

namespace A311262

/-- `A008458(n)+n-A004526(A315756(n))` -/
def P17672014675794662818.Spec : Prop :=
  ∀ n, P17672014675794662818.a n = A311262 n

end A311262

/-! ## A311262.P3211435604031384095

`A004396(A313753(n)+n)`
-/

namespace A311262.P3211435604031384095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A313753 n + (n : ℤ)).toNat

end

end A311262.P3211435604031384095

namespace A311262

/-- `A004396(A313753(n)+n)` -/
def P3211435604031384095.Spec : Prop :=
  ∀ n, P3211435604031384095.a n = A311262 n

end A311262

/-! ## A311262.P4682875451926802468

`A274616(A313753(n)+n)`
-/

namespace A311262.P4682875451926802468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274616 (A313753 n + (n : ℤ)).toNat

end

end A311262.P4682875451926802468

namespace A311262

/-- `A274616(A313753(n)+n)` -/
def P4682875451926802468.Spec : Prop :=
  ∀ n, P4682875451926802468.a n = A311262 n

end A311262

/-! ## A311262.P7059124658479868176

`A001281(A311356(n)+A008574(n))`
-/

namespace A311262.P7059124658479868176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A311356 n + A008574 n).toNat

end

end A311262.P7059124658479868176

namespace A311262

/-- `A001281(A311356(n)+A008574(n))` -/
def P7059124658479868176.Spec : Prop :=
  ∀ n, P7059124658479868176.a n = A311262 n

end A311262

/-! ## A311262.P5975987271660421713

`A313834(2*n)+A008458(n+1)-(12*n+6)`
-/

namespace A311262.P5975987271660421713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313834 (2 * n) + (A008458 (n + 1) - (12 * n + 6 : ℤ))

end

end A311262.P5975987271660421713

namespace A311262

/-- `A313834(2*n)+A008458(n+1)-(12*n+6)` -/
def P5975987271660421713.Spec : Prop :=
  ∀ n, P5975987271660421713.a n = A311262 n

end A311262

/-!
# A311263: Coordination sequence Gal.5.96.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311263, there is no canonical definition to state claims against.
-/

/-! ## A311263.P8178479100749618963

`A311458(n)-A054025(A001595(n))`
-/

namespace A311263.P8178479100749618963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311458 n - A054025 (A001595 n).toNat

end

end A311263.P8178479100749618963

/-! ## A311263.P1966552156030238204

`∑[A306312(A222087(n+1))]+n`
-/

namespace A311263.P1966552156030238204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306312 (A222087 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A311263.P1966552156030238204

/-! ## A311263.P10043781866915234334

`A348553(A095861(A314252(n)²))`
-/

namespace A311263.P10043781866915234334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348553 (A095861 (A314252 n ^ 2).toNat).toNat

end

end A311263.P10043781866915234334

/-! ## A311263.P15893360652236975839

`A186331(A004277(n))-A044941(A001248(3*(n+1)))`
-/

namespace A311263.P15893360652236975839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186331 (A004277 n).toNat - A044941 (A001248 (3 * (n + 1))).toNat

end

end A311263.P15893360652236975839

/-! ## A311263.P3455435751394648977

`A311258(n)+A221152(A339006(n))`
-/

namespace A311263.P3455435751394648977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311258 n + A221152 (A339006 n).toNat

end

end A311263.P3455435751394648977

/-!
# A311264: Coordination sequence Gal.6.227.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311264, there is no canonical definition to state claims against.
-/

/-! ## A311264.P12295137685588309035

`(A311266(n)-A017909(n+1))%A085900(5*(n+1))`
-/

namespace A311264.P12295137685588309035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A311266 n - A017909 (n + 1)) (A085900 (5 * (n + 1)))

end

end A311264.P12295137685588309035

/-! ## A311264.P2364497358843738562

`A005369(A023490(n))+A311266(n)-A017909(n+1)`
-/

namespace A311264.P2364497358843738562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005369 (A023490 n).toNat + (A311266 n - A017909 (n + 1))

end

end A311264.P2364497358843738562

/-! ## A311264.P12024557156344001569

`A005369(A000204(n+1))+A311266(n)-A017909(n+1)`
-/

namespace A311264.P12024557156344001569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005369 (A000204 (n + 1)).toNat + (A311266 n - A017909 (n + 1))

end

end A311264.P12024557156344001569

/-! ## A311264.P1482512787981401622

`(A311266(n)-A017909(n+1))^A014963(A190095(n+1))`
-/

namespace A311264.P1482512787981401622
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A311266 n - A017909 (n + 1) : ℚ) ^ (A014963 (A190095 (n + 1)).toNat : ℤ)

end

end A311264.P1482512787981401622

/-! ## A311264.P8949606442905637614

`A311265(n)-A335520(A153176(n))`
-/

namespace A311264.P8949606442905637614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311265 n - A335520 (A153176 n).toNat

end

end A311264.P8949606442905637614

/-!
# A311265: Coordination sequence Gal.6.128.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311265, there is no canonical definition to state claims against.
-/

/-! ## A311265.P18101987861894396565

`xor(A185284(A000069(n+1)), A311264(n))`
-/

namespace A311265.P18101987861894396565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A185284 (A000069 (n + 1)).toNat) (A311264 n)

end

end A311265.P18101987861894396565

/-! ## A311265.P15930031975725867320

`A335520(A153176(n))+A311264(n)`
-/

namespace A311265.P15930031975725867320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335520 (A153176 n).toNat + A311264 n

end

end A311265.P15930031975725867320

/-! ## A311265.P1715117762671394982

`or(A073424(A055832(n+5)), A311264(n))`
-/

namespace A311265.P1715117762671394982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A073424 (A055832 (n + 5)).toNat) (A311264 n)

end

end A311265.P1715117762671394982

/-! ## A311265.P2453949635795369480

`A335520(A153176(n))+A311266(n)-A017909(n+1)`
-/

namespace A311265.P2453949635795369480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335520 (A153176 n).toNat + (A311266 n - A017909 (n + 1))

end

end A311265.P2453949635795369480

/-! ## A311265.P4539584333790931250

`A311264(n)+A073424(A073424(n)+A055832(n+5))`
-/

namespace A311265.P4539584333790931250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311264 n + A073424 (A073424 n + A055832 (n + 5)).toNat

end

end A311265.P4539584333790931250

/-!
# A311266: Coordination sequence Gal.6.124.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311266, there is no canonical definition to state claims against.
-/

/-! ## A311266.P17216595108855265548

`A311267(n)-A178798(A341495(n))`
-/

namespace A311266.P17216595108855265548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311267 n - A178798 (A341495 n).toNat

end

end A311266.P17216595108855265548

/-! ## A311266.P17929680527063695024

`A311267(n)-A178798(A115339(n+1))`
-/

namespace A311266.P17929680527063695024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311267 n - A178798 (A115339 (n + 1)).toNat

end

end A311266.P17929680527063695024

/-! ## A311266.P4333801173304792774

`A311267(n)-A044941(A174791(n))`
-/

namespace A311266.P4333801173304792774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311267 n - A044941 (A174791 n).toNat

end

end A311266.P4333801173304792774

/-! ## A311266.P4413943119049339275

`A311267(n)-A185264(A257673(n))`
-/

namespace A311266.P4413943119049339275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311267 n - A185264 (A257673 n).toNat

end

end A311266.P4413943119049339275

/-! ## A311266.P4048965880321805490

`A311267(n)-A055641(A116444(n+1))`
-/

namespace A311266.P4048965880321805490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311267 n - A055641 (A116444 (n + 1)).toNat

end

end A311266.P4048965880321805490

/-!
# A311267: Coordination sequence Gal.6.223.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311267, there is no canonical definition to state claims against.
-/

/-! ## A311267.P10840755587025768566

`A311266(n)+Δ[A185238(A320166(n))]`
-/

namespace A311267.P10840755587025768566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185238 (A320166 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311266 n + (f1 (n + 1) - f1 n)

end

end A311267.P10840755587025768566

/-! ## A311267.P4829845538187063181

`A311266(n)+A178798(A115339(n+1))`
-/

namespace A311267.P4829845538187063181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311266 n + A178798 (A115339 (n + 1)).toNat

end

end A311267.P4829845538187063181

/-! ## A311267.P6171406116166080153

`A311266(n)+A044941(A174791(n))`
-/

namespace A311267.P6171406116166080153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311266 n + A044941 (A174791 n).toNat

end

end A311267.P6171406116166080153

/-! ## A311267.P3704481249652628652

`A311266(n)+A283042(∑[A179961(n)])`
-/

namespace A311267.P3704481249652628652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179961 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311266 n + A283042 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A311267.P3704481249652628652

/-! ## A311267.P15477165584530024991

`A311266(n)+A055641(A116444(n+1))`
-/

namespace A311267.P15477165584530024991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311266 n + A055641 (A116444 (n + 1)).toNat

end

end A311267.P15477165584530024991

/-!
# A311268: Coordination sequence Gal.6.229.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311268, there is no canonical definition to state claims against.
-/

/-! ## A311268.P11439902284960645129

`A311269(n)-A024163(A127321(A036650(n)))`
-/

namespace A311268.P11439902284960645129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311269 n - A024163 (A127321 (A036650 n).toNat).toNat

end

end A311268.P11439902284960645129

/-! ## A311268.P3155071057927370167

`A311269(n)-A102683(A056469(n))`
-/

namespace A311268.P3155071057927370167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311269 n - A102683 (A056469 n).toNat

end

end A311268.P3155071057927370167

/-! ## A311268.P11363243762785359033

`A311312(n)-A309785(A048380(n))`
-/

namespace A311268.P11363243762785359033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311312 n - A309785 (A048380 n).toNat

end

end A311268.P11363243762785359033

/-! ## A311268.P9898742282401250802

`A311269(n)-A185294(A047363(n+1))`
-/

namespace A311268.P9898742282401250802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311269 n - A185294 (A047363 (n + 1)).toNat

end

end A311268.P9898742282401250802

/-! ## A311268.P17357330555162497726

`A311269(n)-A161319(A187829(n+1))`
-/

namespace A311268.P17357330555162497726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311269 n - A161319 (A187829 (n + 1)).toNat

end

end A311268.P17357330555162497726

/-!
# A311269: Coordination sequence Gal.6.225.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311269, there is no canonical definition to state claims against.
-/

/-! ## A311269.P1468433991455553712

`A311268(n)+∑[A102683(A026691(n))]`
-/

namespace A311269.P1468433991455553712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102683 (A026691 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311268 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A311269.P1468433991455553712

/-! ## A311269.P16974911350500360683

`A311268(n)+A102683(A011782(n))`
-/

namespace A311269.P16974911350500360683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311268 n + A102683 (A011782 n).toNat

end

end A311269.P16974911350500360683

/-! ## A311269.P2684496389238389452

`A311268(n)+A102683(A056469(n))`
-/

namespace A311269.P2684496389238389452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311268 n + A102683 (A056469 n).toNat

end

end A311269.P2684496389238389452

/-! ## A311269.P3120073877454579906

`A311268(n)+A185294(A047363(n+1))`
-/

namespace A311269.P3120073877454579906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311268 n + A185294 (A047363 (n + 1)).toNat

end

end A311269.P3120073877454579906

/-! ## A311269.P5554296357785820563

`A311268(n)+A161319(A187829(n+1))`
-/

namespace A311269.P5554296357785820563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311268 n + A161319 (A187829 (n + 1)).toNat

end

end A311269.P5554296357785820563

/-!
# A311270: Coordination sequence Gal.6.184.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311270, there is no canonical definition to state claims against.
-/

/-! ## A311270.P5003555955381916860

`A311271(n)-A000007(A073304(n))`
-/

namespace A311270.P5003555955381916860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311271 n - A000007 (A073304 n).toNat

end

end A311270.P5003555955381916860

/-! ## A311270.P17861472149988310290

`A311271(n)-A316867(A304336(n)²)`
-/

namespace A311270.P17861472149988310290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311271 n - A316867 (A304336 n ^ 2).toNat

end

end A311270.P17861472149988310290

/-! ## A311270.P1667315078212129486

`A311271(n)-A185284(A015919(n+1))`
-/

namespace A311270.P1667315078212129486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311271 n - A185284 (A015919 (n + 1)).toNat

end

end A311270.P1667315078212129486

/-! ## A311270.P662664542119116987

`A311271(n)%A210506(n+1)`
-/

namespace A311270.P662664542119116987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A311271 n) (A210506 (n + 1))

end

end A311270.P662664542119116987

/-! ## A311270.P7739381012065451106

`A311271(n)+A025426(A048487(n))`
-/

namespace A311270.P7739381012065451106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311271 n + A025426 (A048487 n).toNat

end

end A311270.P7739381012065451106

/-!
# A311271: Coordination sequence Gal.6.168.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311271, there is no canonical definition to state claims against.
-/

/-! ## A311271.P6212326395321412974

`A311270(n)+A000007(A073304(n))`
-/

namespace A311271.P6212326395321412974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311270 n + A000007 (A073304 n).toNat

end

end A311271.P6212326395321412974

/-! ## A311271.P18321745649198158255

`or(A102683(A156096(n)), A311270(n))`
-/

namespace A311271.P18321745649198158255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A102683 (A156096 n).toNat) (A311270 n)

end

end A311271.P18321745649198158255

/-! ## A311271.P3215360256852118008

`or(A288377(A288367(n)), A311270(n))`
-/

namespace A311271.P3215360256852118008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A288377 (A288367 n).toNat) (A311270 n)

end

end A311271.P3215360256852118008

/-! ## A311271.P2194761714923566329

`A316867(A304336(n)²)+A311270(n)`
-/

namespace A311271.P2194761714923566329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316867 (A304336 n ^ 2).toNat + A311270 n

end

end A311271.P2194761714923566329

/-!
# A311272: Coordination sequence Gal.5.179.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311272, there is no canonical definition to state claims against.
-/

/-! ## A311272.P10833502257888412680

`A311260(n)+A178798(A022144(n))`
-/

namespace A311272.P10833502257888412680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311260 n + A178798 (A022144 n).toNat

end

end A311272.P10833502257888412680

/-! ## A311272.P8431479127131224347

`A311812(n)-A244895(A000588(n))`
-/

namespace A311272.P8431479127131224347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311812 n - A244895 (A000588 n).toNat

end

end A311272.P8431479127131224347

/-! ## A311272.P9218419695600049862

`A311947(n)-A305054(A238686(n))`
-/

namespace A311272.P9218419695600049862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311947 n - A305054 (A238686 n).toNat

end

end A311272.P9218419695600049862

/-! ## A311272.P11980443110893843286

`xor(A060576(A052536(n)), A314666(n))`
-/

namespace A311272.P11980443110893843286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A060576 (A052536 n).toNat) (A314666 n)

end

end A311272.P11980443110893843286

/-! ## A311272.P2264665494782895655

`xor(A060576(A057960(n)), A314666(n))`
-/

namespace A311272.P2264665494782895655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A060576 (A057960 n).toNat) (A314666 n)

end

end A311272.P2264665494782895655

/-!
# A311273: Coordination sequence Gal.3.31.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311273, the canonical program `A311273.P15887462391195011653` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A311273 has offset 0).

The definition of A311273 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2627 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A311273.P9958605649913220969

`∑[floor(atan(n%7))]+A072154(n)+n`
-/

namespace A311273.P9958605649913220969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.arctan ((n % 7 : ℕ) : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (A072154 n + (n : ℤ))

end

end A311273.P9958605649913220969

namespace A311273

/-- `∑[floor(atan(n%7))]+A072154(n)+n` -/
def P9958605649913220969.Spec : Prop :=
  ∀ n, P9958605649913220969.a n = A311273 n

end A311273

/-! ## A311273.P15887462391195011653

`A191275(n+1)+A072154(n)`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A311273

/-- `A191275(n+1)+A072154(n)` -/
def P15887462391195011653.Spec : Prop :=
  ∀ n, P15887462391195011653.a n = A311273 n

theorem P15887462391195011653.correct : P15887462391195011653.Spec := by
  intro n
  simp only [A311273]

end A311273

/-! ## A311273.P1660883503159730431

`A008458(n)+A072154(n)-A314674(n)`
-/

namespace A311273.P1660883503159730431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A072154 n - A314674 n)

end

end A311273.P1660883503159730431

namespace A311273

/-- `A008458(n)+A072154(n)-A314674(n)` -/
def P1660883503159730431.Spec : Prop :=
  ∀ n, P1660883503159730431.a n = A311273 n

end A311273

/-! ## A311273.P13758239638627416350

`A072154(n)+A008588(n)%A314674(n)`
-/

namespace A311273.P13758239638627416350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072154 n + Int.tmod (A008588 n) (A314674 n)

end

end A311273.P13758239638627416350

namespace A311273

/-- `A072154(n)+A008588(n)%A314674(n)` -/
def P13758239638627416350.Spec : Prop :=
  ∀ n, P13758239638627416350.a n = A311273 n

end A311273

/-! ## A311273.P5457431460729556751

`A314249(n)-A047486(n+1)`
-/

namespace A311273.P5457431460729556751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314249 n - A047486 (n + 1)

end

end A311273.P5457431460729556751

namespace A311273

/-- `A314249(n)-A047486(n+1)` -/
def P5457431460729556751.Spec : Prop :=
  ∀ n, P5457431460729556751.a n = A311273 n

end A311273

/-! ## A311273.P2334751872490178491

`A072154(n)+A314249(n)-A008574(n)`
-/

namespace A311273.P2334751872490178491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072154 n + (A314249 n - A008574 n)

end

end A311273.P2334751872490178491

namespace A311273

/-- `A072154(n)+A314249(n)-A008574(n)` -/
def P2334751872490178491.Spec : Prop :=
  ∀ n, P2334751872490178491.a n = A311273 n

end A311273

/-! ## A311273.P9170828755478464039

`A191275(n+1)+A068962(A008458(n))`
-/

namespace A311273.P9170828755478464039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191275 (n + 1) + A068962 (A008458 n).toNat

end

end A311273.P9170828755478464039

namespace A311273

/-- `A191275(n+1)+A068962(A008458(n))` -/
def P9170828755478464039.Spec : Prop :=
  ∀ n, P9170828755478464039.a n = A311273 n

end A311273

/-! ## A311273.P12789485156671642639

`A078898(A311133(2*n))`
-/

namespace A311273.P12789485156671642639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A311133 (2 * n)).toNat

end

end A311273.P12789485156671642639

namespace A311273

/-- `A078898(A311133(2*n))` -/
def P12789485156671642639.Spec : Prop :=
  ∀ n, P12789485156671642639.a n = A311273 n

end A311273

/-! ## A311273.P13170138482901401767

`A011782(2*n)/A011782(n+1)²*A311133(2*n)`
-/

namespace A311273.P13170138482901401767
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A011782 (2 * n) : ℚ) / (A011782 (n + 1) ^ 2 : ℚ) * (A311133 (2 * n) : ℚ)

end

end A311273.P13170138482901401767

namespace A311273

/-- `A011782(2*n)/A011782(n+1)²*A311133(2*n)` -/
def P13170138482901401767.Spec : Prop :=
  ∀ n, P13170138482901401767.a n = (A311273 n : ℚ)

end A311273

/-! ## A311273.P14216053438690333554

`A011782(2*n)/A011782(2*n+1)*A311133(2*n)`
-/

namespace A311273.P14216053438690333554
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A011782 (2 * n) : ℚ) / (A011782 (2 * n + 1) : ℚ) * (A311133 (2 * n) : ℚ)

end

end A311273.P14216053438690333554

namespace A311273

/-- `A011782(2*n)/A011782(2*n+1)*A311133(2*n)` -/
def P14216053438690333554.Spec : Prop :=
  ∀ n, P14216053438690333554.a n = (A311273 n : ℚ)

end A311273

/-!
# A311274: Coordination sequence Gal.5.161.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311274, there is no canonical definition to state claims against.
-/

/-! ## A311274.P13417085048492297782

`A102677(A160823(n))+A008574(n)`
-/

namespace A311274.P13417085048492297782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102677 (A160823 n).toNat + A008574 n

end

end A311274.P13417085048492297782

/-! ## A311274.P15833402777894057564

`A311273(n)+A082784(A120552(n))`
-/

namespace A311274.P15833402777894057564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311273 n + A082784 (A120552 n).toNat

end

end A311274.P15833402777894057564

/-! ## A311274.P4467253357344778554

`A311273(n)+A217156(A084608(n))`
-/

namespace A311274.P4467253357344778554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311273 n + A217156 (A084608 n).toNat

end

end A311274.P4467253357344778554

/-! ## A311274.P8112832810396730503

`A311273(n)+A185284(A273872(n))`
-/

namespace A311274.P8112832810396730503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311273 n + A185284 (A273872 n).toNat

end

end A311274.P8112832810396730503

/-!
# A311275: Coordination sequence Gal.6.142.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311275, there is no canonical definition to state claims against.
-/

/-! ## A311275.P15924734432041305912

`(A311341(n)+A311219(n))/2`
-/

namespace A311275.P15924734432041305912
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A311341 n + A311219 n : ℚ) / 2

end

end A311275.P15924734432041305912

/-! ## A311275.P3382967233493264897

`A004525(A311341(n)+A311219(n))`
-/

namespace A311275.P3382967233493264897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A311341 n + A311219 n).toNat

end

end A311275.P3382967233493264897

/-! ## A311275.P11366241852765949160

`A004526(A311341(n)+A311219(n))`
-/

namespace A311275.P11366241852765949160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A311341 n + A311219 n).toNat

end

end A311275.P11366241852765949160

/-! ## A311275.P15092919742653843468

`A110654(A311341(n)+A311219(n))`
-/

namespace A311275.P15092919742653843468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A311341 n + A311219 n).toNat

end

end A311275.P15092919742653843468

/-! ## A311275.P5926014375179371967

`A123108(A311341(n)+A311219(n))`
-/

namespace A311275.P5926014375179371967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A311341 n + A311219 n).toNat

end

end A311275.P5926014375179371967

/-! ## A311275.P1772968237691386630

`A052938(A311341(n)+A311219(n))-1`
-/

namespace A311275.P1772968237691386630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052938 (A311341 n + A311219 n).toNat - 1

end

end A311275.P1772968237691386630

/-! ## A311275.P18072078596533807509

`A110654(A311219(n)-(1-A311341(n)))`
-/

namespace A311275.P18072078596533807509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A311219 n - (1 - A311341 n)).toNat

end

end A311275.P18072078596533807509

/-! ## A311275.P14114123755258439371

`A052938(A311219(n)-(2-A311341(n)))`
-/

namespace A311275.P14114123755258439371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052938 (A311219 n - (2 - A311341 n)).toNat

end

end A311275.P14114123755258439371

/-!
# A311276: Coordination sequence Gal.6.135.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311276, there is no canonical definition to state claims against.
-/

/-! ## A311276.P3195139377114986944

`A122079(A311275(n))`
-/

namespace A311276.P3195139377114986944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122079 (A311275 n).toNat

end

end A311276.P3195139377114986944

/-! ## A311276.P8123185857811952555

`A311185(n)+A101605(A019301(n))`
-/

namespace A311276.P8123185857811952555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311185 n + A101605 (A019301 n).toNat

end

end A311276.P8123185857811952555

/-! ## A311276.P15543005614475513257

`A311186(n)+A101605(A019301(n))`
-/

namespace A311276.P15543005614475513257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311186 n + A101605 (A019301 n).toNat

end

end A311276.P15543005614475513257

/-! ## A311276.P18244563668461206120

`A311275(n)+A235145(A238859(n))`
-/

namespace A311276.P18244563668461206120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311275 n + A235145 (A238859 n).toNat

end

end A311276.P18244563668461206120

/-! ## A311276.P4631432389896188609

`A311185(n)+A055641(A216957(n+1))`
-/

namespace A311276.P4631432389896188609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311185 n + A055641 (A216957 (n + 1)).toNat

end

end A311276.P4631432389896188609

/-!
# A311277: Coordination sequence Gal.6.529.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311277, there is no canonical definition to state claims against.
-/

/-! ## A311277.P3421825086931064874

`A311278(n)-A340998(A052905(n))`
-/

namespace A311277.P3421825086931064874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311278 n - A340998 ((A052905 n).toNat + 140)

end

end A311277.P3421825086931064874

/-! ## A311277.P4414080896456561962

`A311278(n)-A340998(A047968(n+1))`
-/

namespace A311277.P4414080896456561962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311278 n - A340998 ((A047968 (n + 1)).toNat + 140)

end

end A311277.P4414080896456561962

/-! ## A311277.P16092960208455367354

`A328311(A275075(2*n))+A008574(n)`
-/

namespace A311277.P16092960208455367354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328311 (A275075 (2 * n)).toNat + A008574 n

end

end A311277.P16092960208455367354

/-! ## A311277.P18244401460728573553

`A311278(A062399(n))`
-/

namespace A311277.P18244401460728573553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311278 (A062399 n).toNat

end

end A311277.P18244401460728573553

/-! ## A311277.P4450285602118217049

`A311278(A120126(n))`
-/

namespace A311277.P4450285602118217049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311278 (A120126 n).toNat

end

end A311277.P4450285602118217049

/-!
# A311278: Coordination sequence Gal.6.519.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311278, there is no canonical definition to state claims against.
-/

/-! ## A311278.P1857291699285633069

`A311277(n)+A010894(A311277(n))`
-/

namespace A311278.P1857291699285633069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311277 n + A010894 ((A311277 n).toNat + 21)

end

end A311278.P1857291699285633069

/-! ## A311278.P14921771426507125806

`A340998(A052905(n))+A311277(n)`
-/

namespace A311278.P14921771426507125806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340998 ((A052905 n).toNat + 140) + A311277 n

end

end A311278.P14921771426507125806

/-! ## A311278.P17666247546771419674

`A340998(A047968(n+1))+A311277(n)`
-/

namespace A311278.P17666247546771419674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340998 ((A047968 (n + 1)).toNat + 140) + A311277 n

end

end A311278.P17666247546771419674

/-! ## A311278.P12567913800388840513

`A311277(n)+A181105(A181094(3*n+4))`
-/

namespace A311278.P12567913800388840513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311277 n + A181105 (A181094 (3 * n + 4)).toNat

end

end A311278.P12567913800388840513

/-!
# A311279: Coordination sequence Gal.6.289.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311279, there is no canonical definition to state claims against.
-/

/-! ## A311279.P11453596954787498948

`A311278(n)+A049581(A324090(n+1))`
-/

namespace A311279.P11453596954787498948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311278 n + A049581 (A324090 (n + 1)).toNat

end

end A311279.P11453596954787498948

/-! ## A311279.P11598726837768480818

`A311280(n)-A123272(A311295(2*n+1))`
-/

namespace A311279.P11598726837768480818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311280 n - A123272 (A311295 (2 * n + 1)).toNat

end

end A311279.P11598726837768480818

/-! ## A311279.P107716571321839529

`A311280(n^gcd(11, n))`
-/

namespace A311279.P107716571321839529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311280 (n ^ Nat.gcd 11 n)

end

end A311279.P107716571321839529

/-! ## A311279.P3722912360497085648

`A311280(A062399(n))`
-/

namespace A311279.P3722912360497085648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311280 (A062399 n).toNat

end

end A311279.P3722912360497085648

/-! ## A311279.P370061048970023970

`A311280(A120126(n))`
-/

namespace A311279.P370061048970023970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311280 (A120126 n).toNat

end

end A311279.P370061048970023970

/-!
# A311280: Coordination sequence Gal.6.275.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311280, there is no canonical definition to state claims against.
-/

/-! ## A311280.P13914001961240927191

`A311279(n)+A025469(A294742(n+1))`
-/

namespace A311280.P13914001961240927191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311279 n + A025469 (A294742 (n + 1)).toNat

end

end A311280.P13914001961240927191

/-!
# A311281: Coordination sequence Gal.6.144.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311281, there is no canonical definition to state claims against.
-/

/-! ## A311281.P11198269231408771693

`A311282(n)-A125005(A029749(n))`
-/

namespace A311281.P11198269231408771693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311282 n - A125005 (A029749 n).toNat

end

end A311281.P11198269231408771693

/-! ## A311281.P713914123229212753

`A311282(n)-A025469(A154918(n))`
-/

namespace A311281.P713914123229212753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311282 n - A025469 (A154918 n).toNat

end

end A311281.P713914123229212753

/-! ## A311281.P17583815968784202737

`A311282(n)-A185284(A005122(n+1))`
-/

namespace A311281.P17583815968784202737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311282 n - A185284 (A005122 (n + 1)).toNat

end

end A311281.P17583815968784202737

/-! ## A311281.P15453119557122100290

`A311282(n)-A185284(A219764(n+1))`
-/

namespace A311281.P15453119557122100290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311282 n - A185284 (A219764 (n + 1)).toNat

end

end A311281.P15453119557122100290

/-! ## A311281.P1446519991200399356

`A311282(n)-A185284(A294217(n+1))`
-/

namespace A311281.P1446519991200399356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311282 n - A185284 (A294217 (n + 1)).toNat

end

end A311281.P1446519991200399356

/-!
# A311282: Coordination sequence Gal.6.137.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311282, there is no canonical definition to state claims against.
-/

/-! ## A311282.P17141620394935095040

`A311281(n)+A125005(A029749(n))`
-/

namespace A311282.P17141620394935095040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311281 n + A125005 (A029749 n).toNat

end

end A311282.P17141620394935095040

/-! ## A311282.P1347823724624477763

`A311281(n)+A025469(A154918(n))`
-/

namespace A311282.P1347823724624477763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311281 n + A025469 (A154918 n).toNat

end

end A311282.P1347823724624477763

/-! ## A311282.P4356466578776339613

`A311281(n)+A185284(A005122(n+1))`
-/

namespace A311282.P4356466578776339613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311281 n + A185284 (A005122 (n + 1)).toNat

end

end A311282.P4356466578776339613

/-! ## A311282.P8960631828716153276

`A311281(n)+A185284(A219764(n+1))`
-/

namespace A311282.P8960631828716153276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311281 n + A185284 (A219764 (n + 1)).toNat

end

end A311282.P8960631828716153276

/-! ## A311282.P7670131964930167660

`A311281(n)+A185284(A294217(n+1))`
-/

namespace A311282.P7670131964930167660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311281 n + A185284 (A294217 (n + 1)).toNat

end

end A311282.P7670131964930167660

/-!
# A311283: Coordination sequence Gal.6.182.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311283, there is no canonical definition to state claims against.
-/

/-! ## A311283.P12249944766110359051

`A311284(n)-A082784(A322283(n))`
-/

namespace A311283.P12249944766110359051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311284 n - A082784 (A322283 n).toNat

end

end A311283.P12249944766110359051

/-! ## A311283.P17665682004637732429

`A311284(n)-A217096(A266995(n+1))`
-/

namespace A311283.P17665682004637732429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311284 n - A217096 (A266995 (n + 1)).toNat

end

end A311283.P17665682004637732429

/-! ## A311283.P10691215675225074042

`A311284(n)%A232828(n+1)`
-/

namespace A311283.P10691215675225074042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A311284 n) (A232828 (n + 1))

end

end A311283.P10691215675225074042

/-! ## A311283.P14006121966322262478

`record[A311284(n)]%A233363(n+1)`
-/

namespace A311283.P14006121966322262478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311284 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A233363 (n + 1))

end

end A311283.P14006121966322262478

/-! ## A311283.P10799493279147398494

`A311284(n)%A000040(A014820(n))`
-/

namespace A311283.P10799493279147398494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A311284 n) (A000040 (A014820 n).toNat)

end

end A311283.P10799493279147398494

/-!
# A311284: Coordination sequence Gal.6.166.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311284, there is no canonical definition to state claims against.
-/

/-! ## A311284.P5873109580865701888

`A311283(n)+A082784(A322283(n))`
-/

namespace A311284.P5873109580865701888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311283 n + A082784 (A322283 n).toNat

end

end A311284.P5873109580865701888

/-! ## A311284.P14371288086701705473

`A311283(n)+A217096(A266995(n+1))`
-/

namespace A311284.P14371288086701705473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311283 n + A217096 (A266995 (n + 1)).toNat

end

end A311284.P14371288086701705473

/-!
# A311285: Coordination sequence Gal.4.70.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311285, the canonical program `A311285.P17835252962128537387` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A311285 has offset 0).

The definition of A311285 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2500 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A311285.P17835252962128537387

`A312140(n)-A047513(n+1)+n`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A311285

/-- `A312140(n)-A047513(n+1)+n` -/
def P17835252962128537387.Spec : Prop :=
  ∀ n, P17835252962128537387.a n = A311285 n

theorem P17835252962128537387.correct : P17835252962128537387.Spec := by
  intro n
  simp only [A311285]

end A311285

/-! ## A311285.P12426822747471926260

`A312140(n)-A002264(A030118(n))`
-/

namespace A311285.P12426822747471926260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312140 n - A002264 (A030118 n).toNat

end

end A311285.P12426822747471926260

namespace A311285

/-- `A312140(n)-A002264(A030118(n))` -/
def P12426822747471926260.Spec : Prop :=
  ∀ n, P12426822747471926260.a n = A311285 n

end A311285

/-! ## A311285.P13685918718109244020

`A004525(n)+A313258(n)-A047513(n+1)`
-/

namespace A311285.P13685918718109244020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n + (A313258 n - A047513 (n + 1))

end

end A311285.P13685918718109244020

namespace A311285

/-- `A004525(n)+A313258(n)-A047513(n+1)` -/
def P13685918718109244020.Spec : Prop :=
  ∀ n, P13685918718109244020.a n = A311285 n

end A311285

/-! ## A311285.P17503192803507520357

`A313926(n)-A047513(n+1)`
-/

namespace A311285.P17503192803507520357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313926 n - A047513 (n + 1)

end

end A311285.P17503192803507520357

namespace A311285

/-- `A313926(n)-A047513(n+1)` -/
def P17503192803507520357.Spec : Prop :=
  ∀ n, P17503192803507520357.a n = A311285 n

theorem P17503192803507520357.correct : P17503192803507520357.Spec := by
  intro n
  simp only [A311285, Nat.add_sub_cancel, A311285.P17503192803507520357.a, A311285.P17835252962128537387.a, A047513, A047513.P16955071387491425171.f1, A047513.P16955071387491425171.a, A312140, A312140.P16557486338365459525.a, A313926, A313926.P12630121113150282533.a, A004525, A004525.P4158271949796742323.a, A311843, A311843.P4745182286114243014.f1, A311843.P4745182286114243014.a, A008574, A008574.P1300280032690682112.a, A011861, A011861.P4500963193198654930.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A311285

/-! ## A311285.P8027043584713802210

`A315520(n)-(A047513(n+1)+A046978(n))`
-/

namespace A311285.P8027043584713802210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315520 n - (A047513 (n + 1) + A046978 n)

end

end A311285.P8027043584713802210

namespace A311285

/-- `A315520(n)-(A047513(n+1)+A046978(n))` -/
def P8027043584713802210.Spec : Prop :=
  ∀ n, P8027043584713802210.a n = A311285 n

end A311285

/-!
# A311286: Coordination sequence Gal.4.40.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311286, there is no canonical definition to state claims against.
-/

/-! ## A311286.P18017915591052142885

`A312056(n)-A078442(A047749(n))`
-/

namespace A311286.P18017915591052142885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312056 n - A078442 (A047749 n).toNat

end

end A311286.P18017915591052142885

/-! ## A311286.P1046434606648422850

`record[A146290(n+1)]+4*n-(A330025(n)+n)`
-/

namespace A311286.P1046434606648422850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146290 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (4 * n : ℤ) - (A330025 n + (n : ℤ))

end

end A311286.P1046434606648422850

/-! ## A311286.P5606544384646055972

`A312056(n)-A275768(A177195(n+1))`
-/

namespace A311286.P5606544384646055972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312056 n - A275768 (A177195 (n + 1)).toNat

end

end A311286.P5606544384646055972

/-! ## A311286.P8631083926437304076

`A301293(n)-A001222(A079514(n+1))`
-/

namespace A311286.P8631083926437304076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301293 n - A001222 (A079514 (n + 1)).toNat

end

end A311286.P8631083926437304076

/-!
# A311287: Coordination sequence Gal.4.50.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311287, the canonical program `A311287.P13191711119088898085` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A311287 has offset 0).

The definition of A311287 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2381 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A311287.P13191711119088898085

`A008574(n)+A313694(n)-A313683(n)`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A311287

/-- `A008574(n)+A313694(n)-A313683(n)` -/
def P13191711119088898085.Spec : Prop :=
  ∀ n, P13191711119088898085.a n = A311287 n

theorem P13191711119088898085.correct : P13191711119088898085.Spec := by
  intro n
  simp only [A311287]

end A311287

/-! ## A311287.P8751919994265433425

`A004277(2*n)+A313694(n)-A313683(n)`
-/

namespace A311287.P8751919994265433425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (2 * n) + (A313694 n - A313683 n)

end

end A311287.P8751919994265433425

namespace A311287

/-- `A004277(2*n)+A313694(n)-A313683(n)` -/
def P8751919994265433425.Spec : Prop :=
  ∀ n, P8751919994265433425.a n = A311287 n

end A311287

/-! ## A311287.P11538661998952021579

`A028310(A008586(n)+A313694(n)-A313683(n))`
-/

namespace A311287.P11538661998952021579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A008586 n + (A313694 n - A313683 n)).toNat

end

end A311287.P11538661998952021579

namespace A311287

/-- `A028310(A008586(n)+A313694(n)-A313683(n))` -/
def P11538661998952021579.Spec : Prop :=
  ∀ n, P11538661998952021579.a n = A311287 n

end A311287

/-! ## A311287.P614030518583903779

`A028310(A008586(n)-(A313683(n)-A313694(n)))`
-/

namespace A311287.P614030518583903779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A008586 n - (A313683 n - A313694 n)).toNat

end

end A311287.P614030518583903779

namespace A311287

/-- `A028310(A008586(n)-(A313683(n)-A313694(n)))` -/
def P614030518583903779.Spec : Prop :=
  ∀ n, P614030518583903779.a n = A311287 n

end A311287

/-! ## A311287.P3521161727540256649

`A313799(n)-A047588(n+1)`
-/

namespace A311287.P3521161727540256649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313799 n - A047588 (n + 1)

end

end A311287.P3521161727540256649

namespace A311287

/-- `A313799(n)-A047588(n+1)` -/
def P3521161727540256649.Spec : Prop :=
  ∀ n, P3521161727540256649.a n = A311287 n

end A311287

/-! ## A311287.P15127548480064063660

`A313799(n)-record[A004396(A283971(n))]`
-/

namespace A311287.P15127548480064063660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A283971 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313799 n - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A311287.P15127548480064063660

namespace A311287

/-- `A313799(n)-record[A004396(A283971(n))]` -/
def P15127548480064063660.Spec : Prop :=
  ∀ n, P15127548480064063660.a n = A311287 n

end A311287

/-!
# A311288: Coordination sequence Gal.6.127.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311288, there is no canonical definition to state claims against.
-/

/-! ## A311288.P2402254803515580415

`A178225(A315549(n)²)+A016921(n)-A277599(n+1)`
-/

namespace A311288.P2402254803515580415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178225 (A315549 n ^ 2).toNat + (A016921 n - A277599 (n + 1))

end

end A311288.P2402254803515580415

/-! ## A311288.P9839084358985365892

`A000007(A072824(n+1))+A016921(n)-A277599(n+1)`
-/

namespace A311288.P9839084358985365892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A072824 (n + 1)).toNat + (A016921 n - A277599 (n + 1))

end

end A311288.P9839084358985365892

/-! ## A311288.P1338077203480221234

`A311289(n)-A185284(A008815(n))`
-/

namespace A311288.P1338077203480221234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311289 n - A185284 (A008815 n).toNat

end

end A311288.P1338077203480221234

/-! ## A311288.P15825680191101905047

`A016921(n)-A001221(A000079(n))*A277599(n+1)`
-/

namespace A311288.P15825680191101905047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016921 n - A001221 (A000079 n).toNat * A277599 (n + 1)

end

end A311288.P15825680191101905047

/-! ## A311288.P5271607099524685810

`(A016921(n)-A277599(n+1))^A001221(A011782(n+1))`
-/

namespace A311288.P5271607099524685810
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016921 n - A277599 (n + 1) : ℚ) ^ (A001221 (A011782 (n + 1)).toNat : ℤ)

end

end A311288.P5271607099524685810

/-!
# A311289: Coordination sequence Gal.5.107.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311289, the canonical program `A311289.P17878922336749957492` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A311289 has offset 0).

The definition of A311289 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2594 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A311289.P17878922336749957492

`A151988(n)+A008486(n)`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A311289

/-- `A151988(n)+A008486(n)` -/
def P17878922336749957492.Spec : Prop :=
  ∀ n, P17878922336749957492.a n = A311289 n

theorem P17878922336749957492.correct : P17878922336749957492.Spec := by
  intro n
  simp only [A311289]

end A311289

/-! ## A311289.P7431709693677882119

`A314670(n)-A330025(n)`
-/

namespace A311289.P7431709693677882119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314670 n - A330025 n

end

end A311289.P7431709693677882119

namespace A311289

/-- `A314670(n)-A330025(n)` -/
def P7431709693677882119.Spec : Prop :=
  ∀ n, P7431709693677882119.a n = A311289 n

end A311289

/-! ## A311289.P5490506764387122822

`A312948(n)-A057354(n+1)`
-/

namespace A311289.P5490506764387122822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312948 n - A057354 (n + 1)

end

end A311289.P5490506764387122822

namespace A311289

/-- `A312948(n)-A057354(n+1)` -/
def P5490506764387122822.Spec : Prop :=
  ∀ n, P5490506764387122822.a n = A311289 n

end A311289

/-! ## A311289.P1650707306783526801

`A004277(n)+A151988(n)+n`
-/

namespace A311289.P1650707306783526801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n + (A151988 n + (n : ℤ))

end

end A311289.P1650707306783526801

namespace A311289

/-- `A004277(n)+A151988(n)+n` -/
def P1650707306783526801.Spec : Prop :=
  ∀ n, P1650707306783526801.a n = A311289 n

end A311289

/-! ## A311289.P14736504660598178806

`A008574(n)+A151988(n)-n`
-/

namespace A311289.P14736504660598178806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + (A151988 n - (n : ℤ))

end

end A311289.P14736504660598178806

namespace A311289

/-- `A008574(n)+A151988(n)-n` -/
def P14736504660598178806.Spec : Prop :=
  ∀ n, P14736504660598178806.a n = A311289 n

end A311289

/-! ## A311289.P11914939108270622142

`A151988(n)+record[A080512(n+1)]`
-/

namespace A311289.P11914939108270622142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080512 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151988 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A311289.P11914939108270622142

namespace A311289

/-- `A151988(n)+record[A080512(n+1)]` -/
def P11914939108270622142.Spec : Prop :=
  ∀ n, P11914939108270622142.a n = A311289 n

end A311289

/-! ## A311289.P13350525098201774705

`n+1+A151988(n)+A004273(n)`
-/

namespace A311289.P13350525098201774705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + (A151988 n + A004273 n)

end

end A311289.P13350525098201774705

namespace A311289

/-- `n+1+A151988(n)+A004273(n)` -/
def P13350525098201774705.Spec : Prop :=
  ∀ n, P13350525098201774705.a n = A311289 n

end A311289

/-! ## A311289.P18403039306563653801

`A004275(n+1)+A151988(n)+n`
-/

namespace A311289.P18403039306563653801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (n + 1) + (A151988 n + (n : ℤ))

end

end A311289.P18403039306563653801

namespace A311289

/-- `A004275(n+1)+A151988(n)+n` -/
def P18403039306563653801.Spec : Prop :=
  ∀ n, P18403039306563653801.a n = A311289 n

end A311289

/-! ## A311289.P368547298903751253

`(A311384(n)+A008574(n))/2`
-/

namespace A311289.P368547298903751253
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A311384 n + A008574 n : ℚ) / 2

end

end A311289.P368547298903751253

namespace A311289

/-- `(A311384(n)+A008574(n))/2` -/
def P368547298903751253.Spec : Prop :=
  ∀ n, P368547298903751253.a n = (A311289 n : ℚ)

end A311289

/-! ## A311289.P7252001902394347166

`abs(9*n-A313719(n))`
-/

namespace A311289.P7252001902394347166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(9 * n : ℤ) - A313719 n|

end

end A311289.P7252001902394347166

namespace A311289

/-- `abs(9*n-A313719(n))` -/
def P7252001902394347166.Spec : Prop :=
  ∀ n, P7252001902394347166.a n = A311289 n

end A311289

/-! ## A311289.P2383291029668912624

`A008458(n)+A008486(n)-A313719(n)`
-/

namespace A311289.P2383291029668912624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008486 n - A313719 n)

end

end A311289.P2383291029668912624

namespace A311289

/-- `A008458(n)+A008486(n)-A313719(n)` -/
def P2383291029668912624.Spec : Prop :=
  ∀ n, P2383291029668912624.a n = A311289 n

end A311289

/-! ## A311289.P4319273566155703576

`A315672(n)-(A253262(n)+n)`
-/

namespace A311289.P4319273566155703576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315672 n - (A253262 n + (n : ℤ))

end

end A311289.P4319273566155703576

namespace A311289

/-- `A315672(n)-(A253262(n)+n)` -/
def P4319273566155703576.Spec : Prop :=
  ∀ n, P4319273566155703576.a n = A311289 n

end A311289

/-! ## A311289.P4591611647172509965

`A313752(n)-n`
-/

namespace A311289.P4591611647172509965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313752 n - (n : ℤ)

end

end A311289.P4591611647172509965

namespace A311289

/-- `A313752(n)-n` -/
def P4591611647172509965.Spec : Prop :=
  ∀ n, P4591611647172509965.a n = A311289 n

end A311289

/-! ## A311289.P611809653936051474

`A315468(n)-(A330025(n)+n)`
-/

namespace A311289.P611809653936051474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315468 n - (A330025 n + (n : ℤ))

end

end A311289.P611809653936051474

namespace A311289

/-- `A315468(n)-(A330025(n)+n)` -/
def P611809653936051474.Spec : Prop :=
  ∀ n, P611809653936051474.a n = A311289 n

end A311289

/-! ## A311289.P3035670129976546401

`A313898(n)-A047263(n+1)`
-/

namespace A311289.P3035670129976546401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313898 n - A047263 (n + 1)

end

end A311289.P3035670129976546401

namespace A311289

/-- `A313898(n)-A047263(n+1)` -/
def P3035670129976546401.Spec : Prop :=
  ∀ n, P3035670129976546401.a n = A311289 n

end A311289

/-! ## A311289.P9171641050654059026

`A314252(n)-A047486(n+1)`
-/

namespace A311289.P9171641050654059026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314252 n - A047486 (n + 1)

end

end A311289.P9171641050654059026

namespace A311289

/-- `A314252(n)-A047486(n+1)` -/
def P9171641050654059026.Spec : Prop :=
  ∀ n, P9171641050654059026.a n = A311289 n

end A311289

/-! ## A311289.P3221225849369616455

`A008458(n)+A008574(n)-A315761(n)`
-/

namespace A311289.P3221225849369616455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A315761 n)

end

end A311289.P3221225849369616455

namespace A311289

/-- `A008458(n)+A008574(n)-A315761(n)` -/
def P3221225849369616455.Spec : Prop :=
  ∀ n, P3221225849369616455.a n = A311289 n

end A311289

/-! ## A311289.P1563935411034514859

`A004396(A313078(n))+n`
-/

namespace A311289.P1563935411034514859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A313078 n).toNat + (n : ℤ)

end

end A311289.P1563935411034514859

namespace A311289

/-- `A004396(A313078(n))+n` -/
def P1563935411034514859.Spec : Prop :=
  ∀ n, P1563935411034514859.a n = A311289 n

end A311289

/-! ## A311289.P16266850021581569919

`A004396(A314740(n))+n`
-/

namespace A311289.P16266850021581569919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A314740 n).toNat + (n : ℤ)

end

end A311289.P16266850021581569919

namespace A311289

/-- `A004396(A314740(n))+n` -/
def P16266850021581569919.Spec : Prop :=
  ∀ n, P16266850021581569919.a n = A311289 n

end A311289

/-! ## A311289.P5151159746707973748

`A314164(n)-A047299(n+1)`
-/

namespace A311289.P5151159746707973748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314164 n - A047299 (n + 1)

end

end A311289.P5151159746707973748

namespace A311289

/-- `A314164(n)-A047299(n+1)` -/
def P5151159746707973748.Spec : Prop :=
  ∀ n, P5151159746707973748.a n = A311289 n

end A311289

/-!
# A311290: Coordination sequence Gal.5.62.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311290, there is no canonical definition to state claims against.
-/

/-! ## A311290.P5738639183210046528

`A311258(n)-A218173(A126460(n))`
-/

namespace A311290.P5738639183210046528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311258 n - A218173 (A126460 n).toNat

end

end A311290.P5738639183210046528

/-! ## A311290.P12241555607546063440

`A311440(n)-A015829(A220753(n))`
-/

namespace A311290.P12241555607546063440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311440 n - A015829 (A220753 n).toNat

end

end A311290.P12241555607546063440

/-! ## A311290.P15464272253051721420

`or(A025457(A177735(n)), A311288(n))`
-/

namespace A311290.P15464272253051721420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A025457 (A177735 n).toNat) (A311288 n)

end

end A311290.P15464272253051721420

/-! ## A311290.P8006364452220170214

`or(A235145(A117633(n)), A311289(n))`
-/

namespace A311290.P8006364452220170214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A235145 (A117633 n).toNat) (A311289 n)

end

end A311290.P8006364452220170214

/-!
# A311291: Coordination sequence Gal.6.123.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311291, there is no canonical definition to state claims against.
-/

/-! ## A311291.P16391502026525561978

`A311292(A089840(∑[n]))`
-/

namespace A311291.P16391502026525561978
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311292 (A089840 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A311291.P16391502026525561978

/-! ## A311291.P2095354696727984853

`A311292(A122200(∑[n]))`
-/

namespace A311291.P2095354696727984853
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311292 (A122200 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A311291.P2095354696727984853

/-! ## A311291.P13051208360088459803

`A311292(A122203(∑[n]))`
-/

namespace A311291.P13051208360088459803
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311292 (A122203 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A311291.P13051208360088459803

/-! ## A311291.P10194932189190694213

`A311292(A122204(∑[n]))`
-/

namespace A311291.P10194932189190694213
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311292 (A122204 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A311291.P10194932189190694213

/-! ## A311291.P8172642381124651654

`A311292(n)%A348764(n+1)`
-/

namespace A311291.P8172642381124651654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A311292 n) (A348764 (n + 1))

end

end A311291.P8172642381124651654

/-!
# A311292: Coordination sequence Gal.4.39.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311292, there is no canonical definition to state claims against.
-/

/-! ## A311292.P14101341158351417701

`(A312895(n)-∑[A238470(n)])*A000265(2^n)`
-/

namespace A311292.P14101341158351417701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238470 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A312895 n - ∑ j ∈ Finset.range (n + 1), f1 j) * A000265 (2 ^ n)

end

end A311292.P14101341158351417701

/-! ## A311292.P13452217345037857453

`A311291(n)+A151668(A366678(n+1))`
-/

namespace A311292.P13452217345037857453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311291 n + A151668 (A366678 (n + 1)).toNat

end

end A311292.P13452217345037857453

/-! ## A311292.P15519262141794921927

`A352595(n+1)%2+A312895(n)-∑[A238470(n)]`
-/

namespace A311292.P15519262141794921927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238470 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A352595 (n + 1)) 2 + (A312895 n - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A311292.P15519262141794921927

/-!
# A311293: Coordination sequence Gal.6.224.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311293, there is no canonical definition to state claims against.
-/

/-! ## A311293.P17836852245465446805

`A311292(n)+A185284(3*n+1)`
-/

namespace A311293.P17836852245465446805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311292 n + A185284 (3 * n + 1)

end

end A311293.P17836852245465446805

/-! ## A311293.P10622402881087615730

`A311503(n)-A342154(A036385(n+1))`
-/

namespace A311293.P10622402881087615730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311503 n - A342154 (A036385 (n + 1)).toNat

end

end A311293.P10622402881087615730

/-!
# A311294: Coordination sequence Gal.5.58.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311294, there is no canonical definition to state claims against.
-/

/-! ## A311294.P16423938251205196267

`A311295(n)-A000038(A073304(n))`
-/

namespace A311294.P16423938251205196267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311295 n - A000038 (A073304 n).toNat

end

end A311294.P16423938251205196267

/-! ## A311294.P16920037743628955578

`A311296(n)-A000038(A073304(n))`
-/

namespace A311294.P16920037743628955578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311296 n - A000038 (A073304 n).toNat

end

end A311294.P16920037743628955578

/-! ## A311294.P8597856556667304159

`A311296(n)-A245811(A031458(n+1))`
-/

namespace A311294.P8597856556667304159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311296 n - A245811 (A031458 (n + 1)).toNat

end

end A311294.P8597856556667304159

/-! ## A311294.P12282197042977080552

`A265315(∑[n])*A311296(n)`
-/

namespace A311294.P12282197042977080552
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265315 (∑ j ∈ Finset.range (n + 1), f1 j) * A311296 n

end

end A311294.P12282197042977080552

/-!
# A311295: Coordination sequence Gal.6.145.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311295, there is no canonical definition to state claims against.
-/

/-! ## A311295.P15108862957222813339

`A311296(n)-A025468(A092507(n))`
-/

namespace A311295.P15108862957222813339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311296 n - A025468 (A092507 n).toNat

end

end A311295.P15108862957222813339

/-! ## A311295.P14406416752953164613

`A311296(n)-A185284(A005706(n))`
-/

namespace A311295.P14406416752953164613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311296 n - A185284 (A005706 n).toNat

end

end A311295.P14406416752953164613

/-! ## A311295.P12595499728979462126

`A311296(n)-A025469(A256647(n))`
-/

namespace A311295.P12595499728979462126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311296 n - A025469 (A256647 n).toNat

end

end A311295.P12595499728979462126

/-! ## A311295.P18134759991821667908

`A311296(n)-A025469(A289322(n))`
-/

namespace A311295.P18134759991821667908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311296 n - A025469 (A289322 n).toNat

end

end A311295.P18134759991821667908

/-! ## A311295.P1100021980823385862

`A351870(A311296(n))`
-/

namespace A311295.P1100021980823385862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351870 (A311296 n).toNat

end

end A311295.P1100021980823385862

/-!
# A311296: Coordination sequence Gal.6.138.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311296, there is no canonical definition to state claims against.
-/

/-! ## A311296.P5447930035121455480

`A311295(n)+A004442(A036236(A297241(n+1)))`
-/

namespace A311296.P5447930035121455480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311295 n + A004442 (A036236 (A297241 (n + 1)).toNat).toNat

end

end A311296.P5447930035121455480

/-! ## A311296.P11161367383210473322

`A311295(n)+A025469(A256647(n))`
-/

namespace A311296.P11161367383210473322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311295 n + A025469 (A256647 n).toNat

end

end A311296.P11161367383210473322

/-! ## A311296.P16714116835974023307

`A311295(n)+A025469(A289322(n))`
-/

namespace A311296.P16714116835974023307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311295 n + A025469 (A289322 n).toNat

end

end A311296.P16714116835974023307

/-! ## A311296.P17749801567919269481

`A311295(n)+A185284(A266777(n))`
-/

namespace A311296.P17749801567919269481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311295 n + A185284 (A266777 n).toNat

end

end A311296.P17749801567919269481

/-! ## A311296.P1362320511832629930

`A311295(n)+A185284(A282504(n))`
-/

namespace A311296.P1362320511832629930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311295 n + A185284 (A282504 n).toNat

end

end A311296.P1362320511832629930

/-!
# A311297: Coordination sequence Gal.5.103.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311297, there is no canonical definition to state claims against.
-/

/-! ## A311297.P756184389724077297

`A219185(A002524(n))+A008574(n)`
-/

namespace A311297.P756184389724077297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219185 (A002524 n).toNat + A008574 n

end

end A311297.P756184389724077297

/-! ## A311297.P9532517563118204616

`A311298(n^gcd(11, n))`
-/

namespace A311297.P9532517563118204616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311298 (n ^ Nat.gcd 11 n)

end

end A311297.P9532517563118204616

/-! ## A311297.P17342429756794508389

`∑[9-a(n-2)]%A269665(n)` with `a(0)=3, a(1)=1, a(2)=4, a(3)=4, a(4)=4`
-/

namespace A311297.P17342429756794508389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3, 1, 4, 4, 4] fun n f1 =>
  9 - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A269665 n)

end

end A311297.P17342429756794508389

/-! ## A311297.P8025693344535890643

`A311298(A062399(n))`
-/

namespace A311297.P8025693344535890643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311298 (A062399 n).toNat

end

end A311297.P8025693344535890643

/-! ## A311297.P15267770852184799367

`A106744(A313695(n))`
-/

namespace A311297.P15267770852184799367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106744 (A313695 n).toNat

end

end A311297.P15267770852184799367

/-!
# A311298: Coordination sequence Gal.6.143.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311298, there is no canonical definition to state claims against.
-/

/-! ## A311298.P2506640437735900686

`(A311346(n)+A311227(n))/2`
-/

namespace A311298.P2506640437735900686
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A311346 n + A311227 n : ℚ) / 2

end

end A311298.P2506640437735900686

/-! ## A311298.P12480478302599842202

`A004525(A311346(n)+A311227(n))`
-/

namespace A311298.P12480478302599842202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A311346 n + A311227 n).toNat

end

end A311298.P12480478302599842202

/-! ## A311298.P4857157347426900659

`A130472(A311346(n)+A311227(n))`
-/

namespace A311298.P4857157347426900659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130472 (A311346 n + A311227 n).toNat

end

end A311298.P4857157347426900659

/-! ## A311298.P4720876216085262474

`A028242(or(1, A311346(n)+A311227(n)))`
-/

namespace A311298.P4720876216085262474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (Int.lor 1 (A311346 n + A311227 n)).toNat

end

end A311298.P4720876216085262474

/-! ## A311298.P15223804804386362648

`A311299(n)-A025466(A261983(n))`
-/

namespace A311298.P15223804804386362648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311299 n - A025466 (A261983 n).toNat

end

end A311298.P15223804804386362648

/-!
# A311299: Coordination sequence Gal.6.136.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311299, there is no canonical definition to state claims against.
-/

/-! ## A311299.P15386463681319387348

`(A311347(n)+A311228(n))/2`
-/

namespace A311299.P15386463681319387348
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A311347 n + A311228 n : ℚ) / 2

end

end A311299.P15386463681319387348

/-! ## A311299.P12047150553049240863

`A014682(A311347(n)+A311228(n))`
-/

namespace A311299.P12047150553049240863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A311347 n + A311228 n).toNat

end

end A311299.P12047150553049240863

/-! ## A311299.P14602531908927401614

`A004525(A311347(n)+A311228(n))`
-/

namespace A311299.P14602531908927401614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A311347 n + A311228 n).toNat

end

end A311299.P14602531908927401614

/-! ## A311299.P66306702185215422

`A025480(A311347(n)+A311228(n))`
-/

namespace A311299.P66306702185215422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A311347 n + A311228 n).toNat

end

end A311299.P66306702185215422

/-! ## A311299.P13718951259323382243

`A026741(A311347(n)+A311228(n))`
-/

namespace A311299.P13718951259323382243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A311347 n + A311228 n).toNat

end

end A311299.P13718951259323382243

/-! ## A311299.P6504631193975034318

`A029578(A311347(n)+A311228(n))`
-/

namespace A311299.P6504631193975034318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 (A311347 n + A311228 n).toNat

end

end A311299.P6504631193975034318

/-! ## A311299.P6742302788127503258

`A032742(A311347(n)+A311228(n))`
-/

namespace A311299.P6742302788127503258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A311347 n + A311228 n).toNat

end

end A311299.P6742302788127503258

/-! ## A311299.P615009051324444055

`A008619(A311228(n)+A311347(n)-1)`
-/

namespace A311299.P615009051324444055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A311228 n + (A311347 n - 1)).toNat

end

end A311299.P615009051324444055

/-! ## A311299.P602397241283131072

`A008619(A311228(n)-(1-A311347(n)))`
-/

namespace A311299.P602397241283131072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A311228 n - (1 - A311347 n)).toNat

end

end A311299.P602397241283131072

/-! ## A311299.P14747843353794708195

`A004526(A311347(n)+A311228(n))`
-/

namespace A311299.P14747843353794708195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A311347 n + A311228 n).toNat

end

end A311299.P14747843353794708195

/-! ## A311299.P713472941959731492

`A006370(A311347(n)+A311228(n))`
-/

namespace A311299.P713472941959731492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 (A311347 n + A311228 n).toNat

end

end A311299.P713472941959731492

/-! ## A311299.P3188886436144614032

`A123108(A311347(n)+A311228(n))`
-/

namespace A311299.P3188886436144614032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A311347 n + A311228 n).toNat

end

end A311299.P3188886436144614032

