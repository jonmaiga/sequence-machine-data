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
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C018
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C036
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C001
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
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
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C025

/-!
# A264300: Number of (1+1) X (n+1) arrays of permutations of 0..n*2+1 with each element having directed index change 0,1 0,-2 1,0 or -1,0.

The programs for A264300, there is no canonical definition to state claims against.
-/

/-! ## A264300.P6874067211139684910

`A264299(∑[n]+1)`
-/

namespace A264300.P6874067211139684910
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264299 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A264300.P6874067211139684910

/-! ## A264300.P10432684841454696134

`record[A264299(∑[A057979(n)])]`
-/

namespace A264300.P10432684841454696134
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264299 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A264300.P10432684841454696134

/-! ## A264300.P7955451541068574480

`record[A264299(record[A106247(n)])]`
-/

namespace A264300.P7955451541068574480
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106247 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264299 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A264300.P7955451541068574480

/-! ## A264300.P2116367597866037967

`record[A264299(record[A114220(n)])]`
-/

namespace A264300.P2116367597866037967
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114220 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264299 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A264300.P2116367597866037967

/-! ## A264300.P8053464605707998847

`record[A264299(A114091(n+1))]`
-/

namespace A264300.P8053464605707998847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264299 (A114091 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A264300.P8053464605707998847

/-!
# A264301: Number of (2+1)X(n+1) arrays of permutations of 0..n*3+2 with each element having directed index change 0,1 0,-2 1,0 or -1,0.

The programs for A264301, there is no canonical definition to state claims against.
-/

/-! ## A264301.P12751689204360320876

`A264299(∑[n+1]+2)`
-/

namespace A264301.P12751689204360320876
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264299 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A264301.P12751689204360320876

/-! ## A264301.P4878744200391249961

`A264299(A133263(n+1))%A281482(n)`
-/

namespace A264301.P4878744200391249961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A264299 (A133263 (n + 1)).toNat) (A281482 n)

end

end A264301.P4878744200391249961

/-! ## A264301.P6660190910884250882

`A264299(A133263(n+1))+A111332(n+1)`
-/

namespace A264301.P6660190910884250882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264299 (A133263 (n + 1)).toNat + A111332 (n + 1)

end

end A264301.P6660190910884250882

/-! ## A264301.P5034265806931912131

`A264299(A133263(n+1))+A000035(2*n)`
-/

namespace A264301.P5034265806931912131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264299 (A133263 (n + 1)).toNat + A000035 (2 * n)

end

end A264301.P5034265806931912131

/-! ## A264301.P12017125469640961574

`or(A055672(2*n), A264299(A133263(n+1)))`
-/

namespace A264301.P12017125469640961574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A055672 (2 * n)) (A264299 (A133263 (n + 1)).toNat)

end

end A264301.P12017125469640961574

/-!
# A264302: Number of (3+1)X(n+1) arrays of permutations of 0..n*4+3 with each element having directed index change 0,1 0,-2 1,0 or -1,0.

The programs for A264302, there is no canonical definition to state claims against.
-/

/-! ## A264302.P9162058746745109825

`A264299(∑[n+2]+4)`
-/

namespace A264302.P9162058746745109825
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264299 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A264302.P9162058746745109825

/-! ## A264302.P5440241386507966699

`lcm((-1)^n, A264299(A167614(n+1)))`
-/

namespace A264302.P5440241386507966699
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A264299 (A167614 (n + 1)).toNat)

end

end A264302.P5440241386507966699

/-! ## A264302.P2134350515289495926

`A264299(A167614(n+1))+A025466(n)`
-/

namespace A264302.P2134350515289495926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264299 (A167614 (n + 1)).toNat + A025466 n

end

end A264302.P2134350515289495926

/-! ## A264302.P11509171511546698569

`A264299(A167614(n+1))+A067157(n)`
-/

namespace A264302.P11509171511546698569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264299 (A167614 (n + 1)).toNat + A067157 (n + 10)

end

end A264302.P11509171511546698569

/-! ## A264302.P9211619750655061670

`A264299(A167614(n+1))+A184955(n)`
-/

namespace A264302.P9211619750655061670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264299 (A167614 (n + 1)).toNat + A184955 n

end

end A264302.P9211619750655061670

/-!
# A264303: Number of (4+1)X(n+1) arrays of permutations of 0..n*5+4 with each element having directed index change 0,1 0,-2 1,0 or -1,0.

The programs for A264303, there is no canonical definition to state claims against.
-/

/-! ## A264303.P4354894309068680692

`A264299(∑[n+3]+7)`
-/

namespace A264303.P4354894309068680692
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264299 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A264303.P4354894309068680692

/-!
# A264304: Number of (5+1)X(n+1) arrays of permutations of 0..n*6+5 with each element having directed index change 0,1 0,-2 1,0 or -1,0.

The programs for A264304, there is no canonical definition to state claims against.
-/

/-! ## A264304.P14397577878948451121

`A264299(A155212(n)+13)`
-/

namespace A264304.P14397577878948451121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264299 (A155212 n + 13).toNat

end

end A264304.P14397577878948451121

/-! ## A264304.P10533548146329101091

`A264299(A056000(n)+15)`
-/

namespace A264304.P10533548146329101091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264299 (A056000 n + 15).toNat

end

end A264304.P10533548146329101091

/-! ## A264304.P11768800620926378601

`A264299(eq[7, A066657(n)])`
-/

namespace A264304.P11768800620926378601
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264299 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A264304.P11768800620926378601

/-! ## A264304.P15193561534799354932

`A264299(A000124(n+4)+4)`
-/

namespace A264304.P15193561534799354932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264299 (A000124 (n + 4) + 4).toNat

end

end A264304.P15193561534799354932

/-! ## A264304.P7816481994585747963

`A264299(A000096(n+3)+6)`
-/

namespace A264304.P7816481994585747963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264299 (A000096 (n + 3) + 6).toNat

end

end A264304.P7816481994585747963

/-!
# A264305: Number of (6+1)X(n+1) arrays of permutations of 0..n*7+6 with each element having directed index change 0,1 0,-2 1,0 or -1,0.

The programs for A264305, there is no canonical definition to state claims against.
-/

/-! ## A264305.P11547096972417002401

`A264299(A166136(n+4))`
-/

namespace A264305.P11547096972417002401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264299 (A166136 (n + 4)).toNat

end

end A264305.P11547096972417002401

/-! ## A264305.P12418135169270722550

`A264299(A167499(n+4)+1)`
-/

namespace A264305.P12418135169270722550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264299 (A167499 (n + 4) + 1).toNat

end

end A264305.P12418135169270722550

/-! ## A264305.P8310134204561203361

`A264299(A000217(n+5)+6)`
-/

namespace A264305.P8310134204561203361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264299 (A000217 (n + 5) + 6).toNat

end

end A264305.P8310134204561203361

/-! ## A264305.P10774423405575530892

`A264299(eq[6, A130270(n+1)])`
-/

namespace A264305.P10774423405575530892
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130270 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264299 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A264305.P10774423405575530892

/-! ## A264305.P1337884472579340243

`A264299(eq[7, A131818(n+1)])`
-/

namespace A264305.P1337884472579340243
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264299 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A264305.P1337884472579340243

/-!
# A264306: Number of (n+1)X(7+1) arrays of permutations of 0..n*8+7 with each element having directed index change 0,1 0,-2 1,0 or -1,0.

The programs for A264306, there is no canonical definition to state claims against.
-/

/-! ## A264306.P19670535293124586

`A264299(A055999(n+4))`
-/

namespace A264306.P19670535293124586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264299 (A055999 (n + 4)).toNat

end

end A264306.P19670535293124586

/-! ## A264306.P7589124467702245716

`A264299(eq[4, A219347(n)])`
-/

namespace A264306.P7589124467702245716
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264299 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A264306.P7589124467702245716

/-! ## A264306.P3021172516476489005

`A264299(eq[6, A193592(n)])`
-/

namespace A264306.P3021172516476489005
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264299 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A264306.P3021172516476489005

/-!
# A264307: Number of (n+1) X (2+1) arrays of permutations of 0..n*3+2 with each element having directed index change 0,0 0,1 1,0 -1,-2 or 0,2.

The programs for A264307, the canonical program `A264307.P5558213828353768814` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A264307 has offset 1).

The definition of A264307 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 184 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A264307.P8720165580191710071

`ogf((6+8x+4x^2)/(1-2x-4x^2-4x^3))`
-/

namespace A264307.P8720165580191710071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [6, 8, 4] [1, -2, -4, -4] n

end

end A264307.P8720165580191710071

namespace A264307

/-- `ogf((6+8x+4x^2)/(1-2x-4x^2-4x^3))` -/
def P8720165580191710071.Spec : Prop :=
  ∀ n, P8720165580191710071.a n = A264307 (n + 1)

end A264307

/-! ## A264307.P5558213828353768814

`2*a(n-1)+4*a(n-2)+4*a(n-3)` with `a(0)=6, a(1)=20, a(2)=68`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A264307

/-- `2*a(n-1)+4*a(n-2)+4*a(n-3)` -/
def P5558213828353768814.Spec : Prop :=
  ∀ n, (P5558213828353768814.a n : ℤ) = A264307 (n + 1)

theorem P5558213828353768814.correct : P5558213828353768814.Spec := by
  intro n
  simp only [A264307, Nat.add_sub_cancel]

end A264307

/-! ## A264307.P3193463192528679108

`A264313(∑[n+2])`
-/

namespace A264307.P3193463192528679108
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264313 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A264307.P3193463192528679108

namespace A264307

/-- `A264313(∑[n+2])` -/
def P3193463192528679108.Spec : Prop :=
  ∀ n, P3193463192528679108.a n = A264307 (n + 1)

end A264307

/-! ## A264307.P14383079905702906960

`record[ratio[1/A264313(n+2)]]`
-/

namespace A264307.P14383079905702906960
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (A264313 (n + 2) : ℚ)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) / f2 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A264307.P14383079905702906960

namespace A264307

/-- `record[ratio[1/A264313(n+2)]]` -/
def P14383079905702906960.Spec : Prop :=
  ∀ n, P14383079905702906960.a n = (A264307 (n + 1) : ℚ)

end A264307

/-! ## A264307.P3595686287760825675

`record[A264313(abs(A201163(n)))]`
-/

namespace A264307.P3595686287760825675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264313 |A201163 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A264307.P3595686287760825675

namespace A264307

/-- `record[A264313(abs(A201163(n)))]` -/
def P3595686287760825675.Spec : Prop :=
  ∀ n, P3595686287760825675.a n = A264307 (n + 1)

end A264307

/-!
# A264308: Number of (n+1)X(3+1) arrays of permutations of 0..n*4+3 with each element having directed index change 0,0 0,1 1,0 -1,-2 or 0,2.

The programs for A264308, there is no canonical definition to state claims against.
-/

/-! ## A264308.P3962042704919406828

`A264313(∑[n+3]+1)`
-/

namespace A264308.P3962042704919406828
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264313 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A264308.P3962042704919406828

/-! ## A264308.P3016092305743374044

`record[ratio[A264313(A130297(n+1))]]`
-/

namespace A264308.P3016092305743374044
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264313 (A130297 (n + 1)).toNat

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A264308.P3016092305743374044

/-!
# A264309: Number of (n+1)X(4+1) arrays of permutations of 0..n*5+4 with each element having directed index change 0,0 0,1 1,0 -1,-2 or 0,2.

The programs for A264309, there is no canonical definition to state claims against.
-/

/-! ## A264309.P1238451839532091271

`A264313(C(n+4, 2)+n+1)`
-/

namespace A264309.P1238451839532091271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264313 (Nat.choose (n + 4) 2 + (n + 1))

end

end A264309.P1238451839532091271

/-! ## A264309.P12754925431287390912

`A264313(A141214(n+1))`
-/

namespace A264309.P12754925431287390912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264313 (A141214 (n + 1)).toNat

end

end A264309.P12754925431287390912

/-! ## A264309.P780349773396330523

`A264313(A027379(n+2))`
-/

namespace A264309.P780349773396330523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264313 (A027379 (n + 2)).toNat

end

end A264309.P780349773396330523

/-! ## A264309.P13691324130226639492

`A264313(A055998(n+2))`
-/

namespace A264309.P13691324130226639492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264313 (A055998 (n + 2)).toNat

end

end A264309.P13691324130226639492

/-! ## A264309.P9208216453976926991

`A264313(A155212(n)+5)`
-/

namespace A264309.P9208216453976926991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264313 (A155212 n + 5).toNat

end

end A264309.P9208216453976926991

/-!
# A264310: Number of (n+1) X (5+1) arrays of permutations of 0..n*6+5 with each element having directed index change 0,0 0,1 1,0 -1,-2 or 0,2.

The programs for A264310, there is no canonical definition to state claims against.
-/

/-! ## A264310.P9967031694564869949

`A264313(Δ[A264443(n)])`
-/

namespace A264310.P9967031694564869949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264313 (f1 (n + 1) - f1 n).toNat

end

end A264310.P9967031694564869949

/-! ## A264310.P1463939561121285867

`A264313(A046691(n+3))`
-/

namespace A264310.P1463939561121285867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264313 (A046691 (n + 3)).toNat

end

end A264310.P1463939561121285867

/-! ## A264310.P12250891251250712773

`A264313(A056115(n)+11)`
-/

namespace A264310.P12250891251250712773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264313 (A056115 n + 11).toNat

end

end A264310.P12250891251250712773

/-! ## A264310.P16937703898657661525

`A264313(eq[2, A092921(n)])`
-/

namespace A264310.P16937703898657661525
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092921 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264313 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A264310.P16937703898657661525

/-!
# A264311: Number of (n+1)X(6+1) arrays of permutations of 0..n*7+6 with each element having directed index change 0,0 0,1 1,0 -1,-2 or 0,2.

The programs for A264311, there is no canonical definition to state claims against.
-/

/-! ## A264311.P8671229285766279581

`A264313(A052905(n+3))`
-/

namespace A264311.P8671229285766279581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264313 (A052905 (n + 3)).toNat

end

end A264311.P8671229285766279581

/-! ## A264311.P7019451973391648790

`A264313(A056119(n)+16)`
-/

namespace A264311.P7019451973391648790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264313 (A056119 n + 16).toNat

end

end A264311.P7019451973391648790

/-! ## A264311.P17006454602818676366

`A264313(eq[3, A219347(n)])`
-/

namespace A264311.P17006454602818676366
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264313 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A264311.P17006454602818676366

/-!
# A264312: Number of (n+1)X(7+1) arrays of permutations of 0..n*8+7 with each element having directed index change 0,0 0,1 1,0 -1,-2 or 0,2.

The programs for A264312, there is no canonical definition to state claims against.
-/

/-! ## A264312.P11665168348604507920

`A264313(C(n+7, 2)+n+1)`
-/

namespace A264312.P11665168348604507920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264313 (Nat.choose (n + 7) 2 + (n + 1))

end

end A264312.P11665168348604507920

/-! ## A264312.P3727897816410699946

`A264313(A055999(n+4))`
-/

namespace A264312.P3727897816410699946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264313 (A055999 (n + 4)).toNat

end

end A264312.P3727897816410699946

/-!
# A264314: Number of (1+1)X(n+1) arrays of permutations of 0..n*2+1 with each element having directed index change 0,0 0,1 1,0 -1,-2 or 0,2.

The programs for A264314, there is no canonical definition to state claims against.
-/

/-! ## A264314.P14326049903375929544

`A264313(∑[n]+1)`
-/

namespace A264314.P14326049903375929544
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264313 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A264314.P14326049903375929544

/-! ## A264314.P15946723546230637632

`record[A264313(∑[gcd(1-n, floor(n/2))])]`
-/

namespace A264314.P15946723546230637632
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (1 - (n : ℤ)) ⌊(n : ℚ) / 2⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264313 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A264314.P15946723546230637632

/-! ## A264314.P3398372969043173844

`record[A264313(∑[A057979(n)])]`
-/

namespace A264314.P3398372969043173844
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264313 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A264314.P3398372969043173844

/-! ## A264314.P3751853295448961899

`record[A264313(A114091(n+1))]`
-/

namespace A264314.P3751853295448961899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264313 (A114091 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A264314.P3751853295448961899

/-! ## A264314.P3790528114997543434

`record[A264313(A134519(n+1))]`
-/

namespace A264314.P3790528114997543434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264313 (A134519 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A264314.P3790528114997543434

/-!
# A264315: Number of (2+1)X(n+1) arrays of permutations of 0..n*3+2 with each element having directed index change 0,0 0,1 1,0 -1,-2 or 0,2.

The programs for A264315, there is no canonical definition to state claims against.
-/

/-! ## A264315.P13671718446343222559

`A264313(∑[n+1]+2)`
-/

namespace A264315.P13671718446343222559
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264313 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A264315.P13671718446343222559

/-! ## A264315.P15169515150963618691

`record[ratio[A264313(A080036(n))]]`
-/

namespace A264315.P15169515150963618691
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264313 (A080036 n).toNat

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A264315.P15169515150963618691

/-! ## A264315.P7812720633752683294

`record[A023531(n)*A264313(n+3)]`
-/

namespace A264315.P7812720633752683294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 n * A264313 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A264315.P7812720633752683294

/-! ## A264315.P16884302900322944429

`record[gcd(A098825(n), A264313(n+1))]`
-/

namespace A264315.P16884302900322944429
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A098825 n) (A264313 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A264315.P16884302900322944429

/-! ## A264315.P2307864885554173642

`record[gcd(A261719(n), A264313(n+2))]`
-/

namespace A264315.P2307864885554173642
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A261719 n) (A264313 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A264315.P2307864885554173642

/-!
# A264316: Number of (3+1)X(n+1) arrays of permutations of 0..n*4+3 with each element having directed index change 0,0 0,1 1,0 -1,-2 or 0,2.

The programs for A264316, there is no canonical definition to state claims against.
-/

/-! ## A264316.P1357102827232079505

`A264313(∑[n+2]+4)`
-/

namespace A264316.P1357102827232079505
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264313 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A264316.P1357102827232079505

/-! ## A264316.P6204899101317706388

`record[gcd(A264313(n+1), A303913(n))]`
-/

namespace A264316.P6204899101317706388
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A264313 (n + 1)) (A303913 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A264316.P6204899101317706388

/-! ## A264316.P5892605566285661308

`record[gcd(A173018(n), A264313(n+4))]`
-/

namespace A264316.P5892605566285661308
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A173018 n) (A264313 (n + 4))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A264316.P5892605566285661308

/-! ## A264316.P3684453075923747784

`A264313(A167614(n+1))+A025442(n)`
-/

namespace A264316.P3684453075923747784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264313 (A167614 (n + 1)).toNat + A025442 n

end

end A264316.P3684453075923747784

/-! ## A264316.P1044507642328674158

`A264313(A167614(n+1))+A067157(n)`
-/

namespace A264316.P1044507642328674158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264313 (A167614 (n + 1)).toNat + A067157 (n + 10)

end

end A264316.P1044507642328674158

/-!
# A264317: Number of (4+1) X (n+1) arrays of permutations of 0..n*5+4 with each element having directed index change 0,0 0,1 1,0 -1,-2 or 0,2.

The programs for A264317, there is no canonical definition to state claims against.
-/

/-! ## A264317.P9461019264429491678

`A264313(∑[n+3]+7)`
-/

namespace A264317.P9461019264429491678
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264313 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A264317.P9461019264429491678

/-! ## A264317.P1102856400602097376

`record[gcd(A264313(n+3), A275784(n))]`
-/

namespace A264317.P1102856400602097376
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A264313 (n + 3)) (A275784 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A264317.P1102856400602097376

/-! ## A264317.P4696793146474247540

`record[gcd(A262124(n), A264313(n+5))]`
-/

namespace A264317.P4696793146474247540
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A262124 n) (A264313 (n + 5))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A264317.P4696793146474247540

/-! ## A264317.P5502380516429603931

`A040755(2*n+3)*A264313(A167614(n+2)+1)`
-/

namespace A264317.P5502380516429603931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040755 (2 * n + 3) * A264313 (A167614 (n + 2) + 1).toNat

end

end A264317.P5502380516429603931

/-!
# A264318: Number of (5+1)X(n+1) arrays of permutations of 0..n*6+5 with each element having directed index change 0,0 0,1 1,0 -1,-2 or 0,2.

The programs for A264318, there is no canonical definition to state claims against.
-/

/-! ## A264318.P1638351710690629121

`A264313(A155212(n)+13)`
-/

namespace A264318.P1638351710690629121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264313 (A155212 n + 13).toNat

end

end A264318.P1638351710690629121

/-! ## A264318.P13996422605134719762

`A264313(A056000(n)+15)`
-/

namespace A264318.P13996422605134719762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264313 (A056000 n + 15).toNat

end

end A264318.P13996422605134719762

/-! ## A264318.P12174701384456385030

`A264313(eq[7, A066657(n)])`
-/

namespace A264318.P12174701384456385030
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264313 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A264318.P12174701384456385030

/-! ## A264318.P14633186798680018194

`A264313(A167614(n+3)+2)`
-/

namespace A264318.P14633186798680018194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264313 (A167614 (n + 3) + 2).toNat

end

end A264318.P14633186798680018194

/-! ## A264318.P326797750950269093

`A264313(A134869(n+4)+4)`
-/

namespace A264318.P326797750950269093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264313 (A134869 (n + 4) + 4).toNat

end

end A264318.P326797750950269093

/-!
# A264319: Number T(n,k) of permutations of [n] with exactly k (possibly overlapping) occurrences of the consecutive pattern 3412; triangle T(n,k), n>=0, 0<=k<=max(0,floor(n/2-1)), read by rows.

The programs for A264319, there is no canonical definition to state claims against.
-/

/-! ## A264319.P6482599066986771315

`A264173(n)-A083914(A042317(n))`
-/

namespace A264319.P6482599066986771315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264173 n - A083914 (A042317 n).toNat

end

end A264319.P6482599066986771315

/-! ## A264319.P15875729800286465510

`A264173(n)-A079979(A054499(n))`
-/

namespace A264319.P15875729800286465510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264173 n - A079979 (A054499 n).toNat

end

end A264319.P15875729800286465510

/-! ## A264319.P5366192713567151661

`A264173(n)-A165877(A120037(n))`
-/

namespace A264319.P5366192713567151661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264173 n - A165877 (A120037 n).toNat

end

end A264319.P5366192713567151661

/-! ## A264319.P8498548035507606092

`A264173(n)-A286561(A014363(n))`
-/

namespace A264319.P8498548035507606092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264173 n - A286561 (A014363 n).toNat

end

end A264319.P8498548035507606092

/-! ## A264319.P5296638794751220093

`A264173(n)-A332671(A027688(n))`
-/

namespace A264319.P5296638794751220093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264173 n - A332671 (A027688 n).toNat

end

end A264319.P5296638794751220093

/-!
# A264320: Number of permutations of [n] with exactly one occurrence of the consecutive pattern 3412.

The programs for A264320, there is no canonical definition to state claims against.
-/

/-! ## A264320.P16144243401315215719

`A264319(A033638(n+3)+2)`
-/

namespace A264320.P16144243401315215719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264319 (A033638 (n + 3) + 2).toNat

end

end A264320.P16144243401315215719

/-! ## A264320.P15948638397669212835

`A264319(A167499(n)-A033638(n))`
-/

namespace A264320.P15948638397669212835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264319 (A167499 n - A033638 n).toNat

end

end A264320.P15948638397669212835

/-! ## A264320.P2933542211918549887

`A264319(A167614(n+1)-∑[A008619(n)])`
-/

namespace A264320.P2933542211918549887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264319 (A167614 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A264320.P2933542211918549887

/-!
# A264321: Number of permutations of [n] with exactly two (possibly overlapping) occurrences of the consecutive pattern 3412.

The programs for A264321, there is no canonical definition to state claims against.
-/

/-! ## A264321.P17745680399379692610

`A264319(A024206(n+4)+5)`
-/

namespace A264321.P17745680399379692610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264319 (A024206 (n + 4) + 5).toNat

end

end A264321.P17745680399379692610

/-!
# A264330: Number of (n+1)X(n+1) arrays of permutations of 0..(n+1)^2-1 with each element having directed index change -1,1 1,0 1,-1 or 0,-1.

The programs for A264330, there is no canonical definition to state claims against.
-/

/-! ## A264330.P15590102119247643333

`A264336(∑[4*n]+1)`
-/

namespace A264330.P15590102119247643333
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264336 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A264330.P15590102119247643333

/-! ## A264330.P12433773060888000272

`A178334(n)*A264336(A001844(n))`
-/

namespace A264330.P12433773060888000272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 n * A264336 (A001844 n).toNat

end

end A264330.P12433773060888000272

/-! ## A264330.P18249108491558652055

`A264336(A001844(n))%A013470(n)`
-/

namespace A264330.P18249108491558652055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A264336 (A001844 n).toNat) (A013470 n)

end

end A264330.P18249108491558652055

/-! ## A264330.P12589343855025334278

`lcm(A033999(n), A264336(A001844(n)))`
-/

namespace A264330.P12589343855025334278
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A264336 (A001844 n).toNat)

end

end A264330.P12589343855025334278

/-! ## A264330.P18180890093886057593

`A264336(A001844(n))+A230730(n+1)`
-/

namespace A264330.P18180890093886057593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264336 (A001844 n).toNat + A230730 (n + 1)

end

end A264330.P18180890093886057593

/-!
# A264331: Number of (n+1)X(3+1) arrays of permutations of 0..n*4+3 with each element having directed index change -1,1 1,0 1,-1 or 0,-1.

The programs for A264331, there is no canonical definition to state claims against.
-/

/-! ## A264331.P17285549048357369477

`A264336(∑[n+2]+4)`
-/

namespace A264331.P17285549048357369477
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264336 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A264331.P17285549048357369477

/-! ## A264331.P6178199178193027177

`A264336(A167614(n+1))+A185264(n)`
-/

namespace A264331.P6178199178193027177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264336 (A167614 (n + 1)).toNat + A185264 n

end

end A264331.P6178199178193027177

/-! ## A264331.P16590440537502598951

`A264336(A167614(n+1))^A178489(n)`
-/

namespace A264331.P16590440537502598951
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A264336 (A167614 (n + 1)).toNat : ℚ) ^ (A178489 n : ℤ)

end

end A264331.P16590440537502598951

/-! ## A264331.P16632740375572088757

`A264336(A167614(n+1))%A042494(n)`
-/

namespace A264331.P16632740375572088757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A264336 (A167614 (n + 1)).toNat) (A042494 n)

end

end A264331.P16632740375572088757

/-! ## A264331.P770445585994322399

`lcm(A033999(n), A264336(A167614(n+1)))`
-/

namespace A264331.P770445585994322399
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A264336 (A167614 (n + 1)).toNat)

end

end A264331.P770445585994322399

/-!
# A264332: Number of (n+1) X (4+1) arrays of permutations of 0..n*5+4 with each element having directed index change -1,1 1,0 1,-1 or 0,-1.

The programs for A264332, there is no canonical definition to state claims against.
-/

/-! ## A264332.P4025235655098676779

`A264336(A374004(n+1))`
-/

namespace A264332.P4025235655098676779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264336 (A374004 (n + 1)).toNat

end

end A264332.P4025235655098676779

/-! ## A264332.P16939066719638819174

`A264336(A141214(n)+7)`
-/

namespace A264332.P16939066719638819174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264336 (A141214 n + 7).toNat

end

end A264332.P16939066719638819174

/-! ## A264332.P8392856854072530270

`A264336(A052905(n)+9)`
-/

namespace A264332.P8392856854072530270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264336 (A052905 n + 9).toNat

end

end A264332.P8392856854072530270

/-! ## A264332.P12637281205731363986

`A264336(A055999(n)+10)`
-/

namespace A264332.P12637281205731363986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264336 (A055999 n + 10).toNat

end

end A264332.P12637281205731363986

/-! ## A264332.P8335207749085387001

`A264336(A167614(n+2)+1)`
-/

namespace A264332.P8335207749085387001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264336 (A167614 (n + 2) + 1).toNat

end

end A264332.P8335207749085387001

/-!
# A264333: Number of (n+1)X(5+1) arrays of permutations of 0..n*6+5 with each element having directed index change -1,1 1,0 1,-1 or 0,-1.

The programs for A264333, there is no canonical definition to state claims against.
-/

/-! ## A264333.P16837499391115131158

`A264336(A374005(n+1))`
-/

namespace A264333.P16837499391115131158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264336 (A374005 (n + 1)).toNat

end

end A264333.P16837499391115131158

/-! ## A264333.P4635777572370988271

`A264336(A167499(n+3))`
-/

namespace A264333.P4635777572370988271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264336 (A167499 (n + 3)).toNat

end

end A264333.P4635777572370988271

/-! ## A264333.P1095351306157905242

`A264336(A000217(n+6)-6-2*n)`
-/

namespace A264333.P1095351306157905242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264336 (A000217 (n + 6) - 6 - (2 * n : ℤ)).toNat

end

end A264333.P1095351306157905242

/-! ## A264333.P2088383498745746078

`A264336(Δ[A264443(n)])`
-/

namespace A264333.P2088383498745746078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264336 (f1 (n + 1) - f1 n).toNat

end

end A264333.P2088383498745746078

/-! ## A264333.P13552431093409260124

`A264336(A046691(n+3))`
-/

namespace A264333.P13552431093409260124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264336 (A046691 (n + 3)).toNat

end

end A264333.P13552431093409260124

/-!
# A264334: Number of (n+1)X(6+1) arrays of permutations of 0..n*7+6 with each element having directed index change -1,1 1,0 1,-1 or 0,-1.

The programs for A264334, there is no canonical definition to state claims against.
-/

/-! ## A264334.P5806606923475177394

`A264336(A374007(n+1))`
-/

namespace A264334.P5806606923475177394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264336 (A374007 (n + 1)).toNat

end

end A264334.P5806606923475177394

/-! ## A264334.P4140330684272357169

`A264336(A167614(n+4)+3)`
-/

namespace A264334.P4140330684272357169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264336 (A167614 (n + 4) + 3).toNat

end

end A264334.P4140330684272357169

/-! ## A264334.P13181185894528546832

`A264336(eq[7, A131818(n+1)])`
-/

namespace A264334.P13181185894528546832
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264336 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A264334.P13181185894528546832

/-! ## A264334.P14544652983169539943

`A264336(eq[3, A219347(n)])`
-/

namespace A264334.P14544652983169539943
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264336 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A264334.P14544652983169539943

/-! ## A264334.P2682756106620518084

`A264336(eq[5, A193592(n)])`
-/

namespace A264334.P2682756106620518084
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264336 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A264334.P2682756106620518084

/-!
# A264335: Number of (n+1)X(7+1) arrays of permutations of 0..n*8+7 with each element having directed index change -1,1 1,0 1,-1 or 0,-1.

The programs for A264335, there is no canonical definition to state claims against.
-/

/-! ## A264335.P4186504610405783810

`A264336(A374008(n+1))`
-/

namespace A264335.P4186504610405783810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264336 (A374008 (n + 1)).toNat

end

end A264335.P4186504610405783810

/-! ## A264335.P7309412373789230103

`A264336(eq[8, A131818(n+1)])`
-/

namespace A264335.P7309412373789230103
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264336 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A264335.P7309412373789230103

/-! ## A264335.P6726656424424621886

`A264336(eq[4, A219347(n)])`
-/

namespace A264335.P6726656424424621886
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264336 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A264335.P6726656424424621886

/-! ## A264335.P7606249951849016996

`A264336(eq[6, A193592(n)])`
-/

namespace A264335.P7606249951849016996
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264336 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A264335.P7606249951849016996

/-! ## A264335.P17904925463972445140

`A264336(eq[7, A200370(n+1)])`
-/

namespace A264335.P17904925463972445140
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264336 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A264335.P17904925463972445140

/-!
# A264336: T(n,k)=Number of (n+1)X(k+1) arrays of permutations of 0..(n+1)*(k+1)-1 with each element having directed index change -1,1 1,0 1,-1 or 0,-1.

The programs for A264336, there is no canonical definition to state claims against.
-/

/-! ## A264336.P13530126264993396200

`A130571(A048766(A185825(n+1)))`
-/

namespace A264336.P13530126264993396200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130571 (A048766 (A185825 (n + 1)).toNat).toNat

end

end A264336.P13530126264993396200

/-! ## A264336.P10084015743605572127

`A104147(A185559(n+1))-A054977(n)`
-/

namespace A264336.P10084015743605572127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104147 (A185559 (n + 1)).toNat - A054977 n

end

end A264336.P10084015743605572127

/-! ## A264336.P12295421161450012455

`A243113(A283634(n+1)+A217028(n+1))`
-/

namespace A264336.P12295421161450012455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243113 (A283634 (n + 1) + A217028 (n + 1)).toNat

end

end A264336.P12295421161450012455

/-! ## A264336.P9583547059972106483

`A034463(A391824(n+1))`
-/

namespace A264336.P9583547059972106483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034463 (A391824 (n + 1)).toNat

end

end A264336.P9583547059972106483

/-!
# A264337: Number of (n+1) X (4+1) arrays of permutations of 0..n*5+4 with each element having index change +-(.,.) 0,0 0,1 or 1,2.

The programs for A264337, there is no canonical definition to state claims against.
-/

/-! ## A264337.P3346135856623444578

`A264086(2*(n+1))/gcd(A264086(2*n+1), A264086(2*(n+1)))`
-/

namespace A264337.P3346135856623444578
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A264086 (2 * (n + 1)) : ℚ) / (Int.gcd (A264086 (2 * n + 1)) (A264086 (2 * (n + 1))) : ℚ)

end

end A264337.P3346135856623444578

/-! ## A264337.P558374085138698273

`gcd(Δ[A264086(2*(n+1))], A264086(2*(n+1)))`
-/

namespace A264337.P558374085138698273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264086 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (n + 1) - f1 n) (A264086 (2 * (n + 1)))

end

end A264337.P558374085138698273

/-! ## A264337.P15654406244284969048

`A264341(A141214(n+1))`
-/

namespace A264337.P15654406244284969048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264341 (A141214 (n + 1)).toNat

end

end A264337.P15654406244284969048

/-! ## A264337.P15403814486102533432

`A264341(A155212(n)+5)`
-/

namespace A264337.P15403814486102533432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264341 (A155212 n + 5).toNat

end

end A264337.P15403814486102533432

/-! ## A264337.P3221001390565572188

`A264341(A056000(n)+7)`
-/

namespace A264337.P3221001390565572188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264341 (A056000 n + 7).toNat

end

end A264337.P3221001390565572188

/-!
# A264338: Number of (n+1) X (5+1) arrays of permutations of 0..n*6+5 with each element having index change +-(.,.) 0,0 0,1 or 1,2.

The programs for A264338, there is no canonical definition to state claims against.
-/

/-! ## A264338.P11945978484343181362

`A264341(Δ[A264443(n)])`
-/

namespace A264338.P11945978484343181362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264341 (f1 (n + 1) - f1 n).toNat

end

end A264338.P11945978484343181362

/-! ## A264338.P64170280873172921

`A264341(eq[4, A193592(n)])`
-/

namespace A264338.P64170280873172921
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264341 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A264338.P64170280873172921

/-! ## A264338.P2135602706756288393

`A264341(Δ[A023545(n+1)])`
-/

namespace A264338.P2135602706756288393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264341 (f1 (n + 1) - f1 n).toNat

end

end A264338.P2135602706756288393

/-! ## A264338.P10902814440640082314

`A264341(eq[5, A194921(n+1)])`
-/

namespace A264338.P10902814440640082314
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194921 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264341 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A264338.P10902814440640082314

/-! ## A264338.P8719158856243060306

`A264341(eq[5, A200370(n+1)])`
-/

namespace A264338.P8719158856243060306
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264341 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A264338.P8719158856243060306

/-!
# A264339: Number of (n+1)X(6+1) arrays of permutations of 0..n*7+6 with each element having index change +-(.,.) 0,0 0,1 or 1,2.

The programs for A264339, there is no canonical definition to state claims against.
-/

/-! ## A264339.P17326860767757776990

`A264341(eq[3, A219347(n)])`
-/

namespace A264339.P17326860767757776990
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264341 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A264339.P17326860767757776990

/-! ## A264339.P9262938883666944409

`A264341(eq[5, A193592(n)])`
-/

namespace A264339.P9262938883666944409
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264341 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A264339.P9262938883666944409

/-! ## A264339.P4227418329462007023

`A264341(eq[8, A258709(n)])`
-/

namespace A264339.P4227418329462007023
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258709 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264341 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A264339.P4227418329462007023

/-! ## A264339.P14111892232802489724

`A264341(eq[16, A209439(n)])`
-/

namespace A264339.P14111892232802489724
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209439 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264341 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A264339.P14111892232802489724

/-! ## A264339.P2629680167145844419

`A264341(eq[6, A200370(n+1)])`
-/

namespace A264339.P2629680167145844419
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264341 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A264339.P2629680167145844419

/-!
# A264340: Number of (n+1)X(7+1) arrays of permutations of 0..n*8+7 with each element having index change +-(.,.) 0,0 0,1 or 1,2.

The programs for A264340, there is no canonical definition to state claims against.
-/

/-! ## A264340.P16428512235920019537

`A264341(eq[4, A219347(n)])`
-/

namespace A264340.P16428512235920019537
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264341 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A264340.P16428512235920019537

/-! ## A264340.P14770421646685880355

`A264341(eq[6, A193592(n)])`
-/

namespace A264340.P14770421646685880355
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264341 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A264340.P14770421646685880355

/-! ## A264340.P15655596201050710228

`A264341(eq[10, A185782(n+1)])`
-/

namespace A264340.P15655596201050710228
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264341 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A264340.P15655596201050710228

/-!
# A264342: Number of (2+1)X(n+1) arrays of permutations of 0..n*3+2 with each element having index change +-(.,.) 0,0 0,1 or 1,2.

The programs for A264342, there is no canonical definition to state claims against.
-/

/-! ## A264342.P16869367886210317374

`A264093(n+1)/sqrt(A264092(n+1))`
-/

namespace A264342.P16869367886210317374
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A264093 (n + 1) : ℝ) / Real.sqrt (A264092 (n + 1) : ℝ)

end

end A264342.P16869367886210317374

/-! ## A264342.P15385607110978240759

`sqrt(A264094(n+1))`
-/

namespace A264342.P15385607110978240759
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A264094 (n + 1) : ℝ)

end

end A264342.P15385607110978240759

/-! ## A264342.P6780720612510645578

`root(A264094(n+1), ratio[A007283(n)])`
-/

namespace A264342.P6780720612510645578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007283 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A264094 (n + 1) : ℝ) ^ (1 / ((f1 (n + 1) : ℚ) / (f1 n : ℚ) : ℝ))

end

end A264342.P6780720612510645578

/-! ## A264342.P9285289825616201521

`A264095(n+1)/sqrt(A264096(n+1))`
-/

namespace A264342.P9285289825616201521
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A264095 (n + 1) : ℝ) / Real.sqrt (A264096 (n + 1) : ℝ)

end

end A264342.P9285289825616201521

/-! ## A264342.P5035491249029911019

`A264341(∑[n+1]+2)`
-/

namespace A264342.P5035491249029911019
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264341 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A264342.P5035491249029911019

/-!
# A264343: Number of (3+1) X (n+1) arrays of permutations of 0..n*4+3 with each element having index change +-(.,.) 0,0 0,1 or 1,2.

The programs for A264343, there is no canonical definition to state claims against.
-/

/-! ## A264343.P10172372514463529339

`A264095(n+1)/sqrt(A264094(n+1))`
-/

namespace A264343.P10172372514463529339
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A264095 (n + 1) : ℝ) / Real.sqrt (A264094 (n + 1) : ℝ)

end

end A264343.P10172372514463529339

/-! ## A264343.P12111195140595085050

`sqrt(A264096(n+1))`
-/

namespace A264343.P12111195140595085050
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A264096 (n + 1) : ℝ)

end

end A264343.P12111195140595085050

/-! ## A264343.P6118729458592561591

`A264341(∑[n+2]+4)`
-/

namespace A264343.P6118729458592561591
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264341 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A264343.P6118729458592561591

/-! ## A264343.P5216689113705053524

`lcm((-1)^∑{e}[n+1, #], A264341(A167614(n+1)))`
-/

namespace A264343.P5216689113705053524
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)) (A264341 (A167614 (n + 1)).toNat)

end

end A264343.P5216689113705053524

/-! ## A264343.P6221326214840866459

`A152851(n)*A264341(A167614(n+1))`
-/

namespace A264343.P6221326214840866459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152851 n * A264341 (A167614 (n + 1)).toNat

end

end A264343.P6221326214840866459

/-!
# A264344: Number of (4+1)X(n+1) arrays of permutations of 0..n*5+4 with each element having index change +-(.,.) 0,0 0,1 or 1,2.

The programs for A264344, there is no canonical definition to state claims against.
-/

/-! ## A264344.P17415739258882350797

`A264341(A141214(n)+7)`
-/

namespace A264344.P17415739258882350797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264341 (A141214 n + 7).toNat

end

end A264344.P17415739258882350797

/-! ## A264344.P1410494291529527535

`A264341(A052905(n)+9)`
-/

namespace A264344.P1410494291529527535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264341 (A052905 n + 9).toNat

end

end A264344.P1410494291529527535

/-! ## A264344.P18216349379545361275

`A264341(A055999(n)+10)`
-/

namespace A264344.P18216349379545361275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264341 (A055999 n + 10).toNat

end

end A264344.P18216349379545361275

/-! ## A264344.P13138093099838258247

`A264341(eq[5, A066657(n)])`
-/

namespace A264344.P13138093099838258247
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264341 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A264344.P13138093099838258247

/-! ## A264344.P12044020942802569115

`A264341(A167614(n+2)+1)`
-/

namespace A264344.P12044020942802569115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264341 (A167614 (n + 2) + 1).toNat

end

end A264344.P12044020942802569115

/-!
# A264345: Number of (5+1)X(n+1) arrays of permutations of 0..n*6+5 with each element having index change +-(.,.) 0,0 0,1 or 1,2.

The programs for A264345, there is no canonical definition to state claims against.
-/

/-! ## A264345.P12853599454281334019

`A264341(A155212(n)+13)`
-/

namespace A264345.P12853599454281334019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264341 (A155212 n + 13).toNat

end

end A264345.P12853599454281334019

/-! ## A264345.P11614866169060089002

`A264341(A056000(n)+15)`
-/

namespace A264345.P11614866169060089002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264341 (A056000 n + 15).toNat

end

end A264345.P11614866169060089002

/-! ## A264345.P6533985716102652939

`A264341(eq[7, A066657(n)])`
-/

namespace A264345.P6533985716102652939
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264341 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A264345.P6533985716102652939

/-! ## A264345.P7858820807095422467

`A264341(A167614(n+3)+2)`
-/

namespace A264345.P7858820807095422467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264341 (A167614 (n + 3) + 2).toNat

end

end A264345.P7858820807095422467

/-! ## A264345.P10723106206429418269

`A264341(eq[6, A131818(n+1)])`
-/

namespace A264345.P10723106206429418269
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264341 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A264345.P10723106206429418269

/-!
# A264346: Number of (6+1)X(n+1) arrays of permutations of 0..n*7+6 with each element having index change +-(.,.) 0,0 0,1 or 1,2.

The programs for A264346, there is no canonical definition to state claims against.
-/

/-! ## A264346.P9451682812830751691

`A264341(∑[n+5]+16)`
-/

namespace A264346.P9451682812830751691
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264341 (∑ j ∈ Finset.range (n + 1), f1 j + 16)

end

end A264346.P9451682812830751691

/-!
# A264347: Number of (7+1)X(n+1) arrays of permutations of 0..n*8+7 with each element having index change +-(.,.) 0,0 0,1 or 1,2.

The programs for A264347, there is no canonical definition to state claims against.
-/

/-! ## A264347.P9701678460363772380

`A264341(A056000(n+2)+17)`
-/

namespace A264347.P9701678460363772380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264341 (A056000 (n + 2) + 17).toNat

end

end A264347.P9701678460363772380

/-! ## A264347.P7303919124500359901

`A264341(eq[8, A131818(n+1)])`
-/

namespace A264347.P7303919124500359901
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264341 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A264347.P7303919124500359901

/-!
# A264349: The x member of the positive proper fundamental solution (x = x1(n), y = y1(n)) of the first class for the Pell equation x^2 - D(n)*y^2 = +8 for odd D(n) = A263012(n).

The programs for A264349, there is no canonical definition to state claims against.
-/

/-! ## A264349.P17481787838066012217

`ceil(sqrt(A263012(n+1))*A264350(n+1))`
-/

namespace A264349.P17481787838066012217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A263012 (n + 1) : ℝ) * (A264350 (n + 1) : ℝ)⌉

end

end A264349.P17481787838066012217

/-!
# A264350: The y member of the positive proper fundamental solution (x = x1(n), y = y1(n)) of the first class for the Pell equation x^2 - D(n)*y^2 = +8 for odd D(n) = A263012(n).

The programs for A264350, there is no canonical definition to state claims against.
-/

/-! ## A264350.P10310357964852807223

`floor(A264349(n+1)/sqrt(A263012(n+1)))`
-/

namespace A264350.P10310357964852807223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A264349 (n + 1) : ℝ) / Real.sqrt (A263012 (n + 1) : ℝ)⌋

end

end A264350.P10310357964852807223

/-!
# A264351: The x member of the positive proper fundamental solution (x = x2(n), y = y2(n)) of the second class for the Pell equation x^2 - D(n)*y^2 = +8 for odd D(n) = A263012(n).

The programs for A264351, there is no canonical definition to state claims against.
-/

/-! ## A264351.P13404586346926629090

`ceil(sqrt(A263012(n+1))*A264353(n+1))`
-/

namespace A264351.P13404586346926629090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A263012 (n + 1) : ℝ) * (A264353 (n + 1) : ℝ)⌉

end

end A264351.P13404586346926629090

/-!
# A264353: The y member of the positive proper fundamental solution (x = x2(n), y = y2(n)) of the second class for the Pell equation x^2 - D(n)*y^2 = +8 for odd D(n) = A263012(n).

The programs for A264353, there is no canonical definition to state claims against.
-/

/-! ## A264353.P17990237884121897407

`floor(A264351(n+1)/sqrt(A263012(n+1)))`
-/

namespace A264353.P17990237884121897407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A264351 (n + 1) : ℝ) / Real.sqrt (A263012 (n + 1) : ℝ)⌋

end

end A264353.P17990237884121897407

/-!
# A264354: Even nonsquare D values which admit proper solutions to the Pell equation x^2 - D*y^2 = +8.

The programs for A264354, there is no canonical definition to state claims against.
-/

/-! ## A264354.P10134590125203733448

`4*A261246(n+1)`
-/

namespace A264354.P10134590125203733448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A261246 (n + 1)

end

end A264354.P10134590125203733448

/-! ## A264354.P5888510259552434582

`A008574(A261246(n+1))`
-/

namespace A264354.P5888510259552434582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (A261246 (n + 1)).toNat

end

end A264354.P5888510259552434582

/-! ## A264354.P2086098280094056753

`A019442(A261246(n+1)+2)`
-/

namespace A264354.P2086098280094056753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019442 (A261246 (n + 1) + 2).toNat

end

end A264354.P2086098280094056753

/-! ## A264354.P10363447250075463909

`A004773(lcm(3, A261246(n+1)))`
-/

namespace A264354.P10363447250075463909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004773 (Int.lcm 3 (A261246 (n + 1)))

end

end A264354.P10363447250075463909

/-! ## A264354.P9660838388157897525

`A008586(or(2, A261246(n+1)))`
-/

namespace A264354.P9660838388157897525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008586 (Int.lor 2 (A261246 (n + 1))).toNat

end

end A264354.P9660838388157897525

/-!
# A264355: The values D not a square that admit proper solutions (x, y) to the Pell equation x^2 - D*y^2 = +8, ordered increasingly.

The programs for A264355, there is no canonical definition to state claims against.
-/

/-! ## A264355.P11807963806333365363

`∪[4*A261246(n+1), A263012(n+1)]`
-/

namespace A264355.P11807963806333365363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A261246 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263012 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A264355.P11807963806333365363

/-! ## A264355.P13201842568493200883

`∪[A008574(A261246(n+1)), A263012(n+1)]`
-/

namespace A264355.P13201842568493200883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (A261246 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263012 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A264355.P13201842568493200883

/-! ## A264355.P1775817402949607401

`∪[A019442(A261246(n+1)+2), A263012(n+1)]`
-/

namespace A264355.P1775817402949607401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019442 (A261246 (n + 1) + 2).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263012 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A264355.P1775817402949607401

/-! ## A264355.P17133456213952725857

`∪[A263012(n+1), A264354(n+1)]%A264352(n+1)`
-/

namespace A264355.P17133456213952725857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263012 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264354 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ) (A264352 (n + 1))

end

end A264355.P17133456213952725857

/-! ## A264355.P6414666818641422664

`∪[A264354(n+1), A263012(n+1)]%A263012(3*n+4)`
-/

namespace A264355.P6414666818641422664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264354 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263012 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ) (A263012 (3 * n + 4))

end

end A264355.P6414666818641422664

/-!
# A264357: Array A(r, n) of number of independent components of a symmetric traceless tensor of rank r and dimension n, written as triangle T(n, r) = A(r, n-r+2), n >= 1, r = 2..n+1.

The programs for A264357, the canonical program `A264357.P4841253329854367094` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A264357 has offset 1).

The definition of A264357 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A264357.P4841253329854367094

`A110813(n)-A131085(n)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A264357

/-- `A110813(n)-A131085(n)` -/
def P4841253329854367094.Spec : Prop :=
  ∀ n, P4841253329854367094.a n = A264357 (n + 1)

theorem P4841253329854367094.correct : P4841253329854367094.Spec := by
  intro n
  simp only [A264357, Nat.add_sub_cancel]

end A264357

/-! ## A264357.P14336978254426367774

`A135855(n)-A110813(n)`
-/

namespace A264357.P14336978254426367774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135855 n - A110813 n

end

end A264357.P14336978254426367774

namespace A264357

/-- `A135855(n)-A110813(n)` -/
def P14336978254426367774.Spec : Prop :=
  ∀ n, P14336978254426367774.a n = A264357 (n + 1)

end A264357

/-! ## A264357.P901630449976334474

`A104712(n+2)-A007318(n)`
-/

namespace A264357.P901630449976334474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104712 (n + 2) - A007318 n

end

end A264357.P901630449976334474

namespace A264357

/-- `A104712(n+2)-A007318(n)` -/
def P901630449976334474.Spec : Prop :=
  ∀ n, P901630449976334474.a n = A264357 (n + 1)

end A264357

/-! ## A264357.P606629269094013940

`A168577(n+2)-A028263(n)`
-/

namespace A264357.P606629269094013940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168577 (n + 2) - A028263 n

end

end A264357.P606629269094013940

namespace A264357

/-- `A168577(n+2)-A028263(n)` -/
def P606629269094013940.Spec : Prop :=
  ∀ n, P606629269094013940.a n = A264357 (n + 1)

end A264357

/-! ## A264357.P2593077190300209291

`A104712(n+2)-(A097805(n+1)+A097805(n))`
-/

namespace A264357.P2593077190300209291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104712 (n + 2) - (A097805 (n + 1) + A097805 n)

end

end A264357.P2593077190300209291

namespace A264357

/-- `A104712(n+2)-(A097805(n+1)+A097805(n))` -/
def P2593077190300209291.Spec : Prop :=
  ∀ n, P2593077190300209291.a n = A264357 (n + 1)

end A264357

/-! ## A264357.P15485162264270095021

`A127717(n+1)/A002260(n+1)-A007318(n)`
-/

namespace A264357.P15485162264270095021
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127717 (n + 1) : ℚ) / (A002260 (n + 1) : ℚ) - (A007318 n : ℚ)

end

end A264357.P15485162264270095021

namespace A264357

/-- `A127717(n+1)/A002260(n+1)-A007318(n)` -/
def P15485162264270095021.Spec : Prop :=
  ∀ n, P15485162264270095021.a n = (A264357 (n + 1) : ℚ)

end A264357

/-! ## A264357.P5435983428241883120

`A029655(n+1)-A131085(n)`
-/

namespace A264357.P5435983428241883120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029655 (n + 1) - A131085 n

end

end A264357.P5435983428241883120

namespace A264357

/-- `A029655(n+1)-A131085(n)` -/
def P5435983428241883120.Spec : Prop :=
  ∀ n, P5435983428241883120.a n = A264357 (n + 1)

end A264357

/-! ## A264357.P5727634523009801266

`A115241(comp[∑[n]]+1)`
-/

namespace A264357.P5727634523009801266
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115241 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1)

end

end A264357.P5727634523009801266

namespace A264357

/-- `A115241(comp[∑[n]]+1)` -/
def P5727634523009801266.Spec : Prop :=
  ∀ n, P5727634523009801266.a n = A264357 (n + 1)

end A264357

/-! ## A264357.P13586987789601644250

`A135278(comp[∑[n]])-A007318(n)`
-/

namespace A264357.P13586987789601644250
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135278 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) - A007318 n

end

end A264357.P13586987789601644250

namespace A264357

/-- `A135278(comp[∑[n]])-A007318(n)` -/
def P13586987789601644250.Spec : Prop :=
  ∀ n, P13586987789601644250.a n = A264357 (n + 1)

end A264357

/-! ## A264357.P10445814072966528342

`A110813(n)-A156644(A014132(n+1))`
-/

namespace A264357.P10445814072966528342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110813 n - A156644 (A014132 (n + 1)).toNat

end

end A264357.P10445814072966528342

namespace A264357

/-- `A110813(n)-A156644(A014132(n+1))` -/
def P10445814072966528342.Spec : Prop :=
  ∀ n, P10445814072966528342.a n = A264357 (n + 1)

end A264357

/-! ## A264357.P65745328873275210

`A206735(A080036(n+1))+A206735(n+1)`
-/

namespace A264357.P65745328873275210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206735 (A080036 (n + 1)).toNat + A206735 (n + 1)

end

end A264357.P65745328873275210

namespace A264357

/-- `A206735(A080036(n+1))+A206735(n+1)` -/
def P65745328873275210.Spec : Prop :=
  ∀ n, P65745328873275210.a n = A264357 (n + 1)

end A264357

/-! ## A264357.P13546338010925508898

`A131084((n-comp[∑[n]])²-n)`
-/

namespace A264357.P13546338010925508898
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131084 (((n : ℤ) - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ)) ^ 2 - (n : ℤ)).toNat

end

end A264357.P13546338010925508898

namespace A264357

/-- `A131084((n-comp[∑[n]])²-n)` -/
def P13546338010925508898.Spec : Prop :=
  ∀ n, P13546338010925508898.a n = A264357 (n + 1)

end A264357

/-! ## A264357.P2442323278637285110

`A249755(n+1)-A007318(n+1)`
-/

namespace A264357.P2442323278637285110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249755 (n + 1) - A007318 (n + 1)

end

end A264357.P2442323278637285110

namespace A264357

/-- `A249755(n+1)-A007318(n+1)` -/
def P2442323278637285110.Spec : Prop :=
  ∀ n, P2442323278637285110.a n = A264357 (n + 1)

end A264357

/-! ## A264357.P17342963392299352008

`A249756(n+1)%A249074(n)`
-/

namespace A264357.P17342963392299352008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A249756 (n + 1)) (A249074 n)

end

end A264357.P17342963392299352008

namespace A264357

/-- `A249756(n+1)%A249074(n)` -/
def P17342963392299352008.Spec : Prop :=
  ∀ n, P17342963392299352008.a n = A264357 (n + 1)

end A264357

/-! ## A264357.P8460057822055204695

`A087156(A249756(n+1))`
-/

namespace A264357.P8460057822055204695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087156 (A249756 (n + 1)).toNat

end

end A264357.P8460057822055204695

namespace A264357

/-- `A087156(A249756(n+1))` -/
def P8460057822055204695.Spec : Prop :=
  ∀ n, P8460057822055204695.a n = A264357 (n + 1)

end A264357

/-!
# A264358: Number of (n+1)X(n+1) arrays of permutations of 0..(n+1)^2-1 with each element having directed index change 0,0 0,2 1,0 or -1,-2.

The programs for A264358, there is no canonical definition to state claims against.
-/

/-! ## A264358.P4862800632054499229

`A264364(∑[4*n]+1)`
-/

namespace A264358.P4862800632054499229
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264364 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A264358.P4862800632054499229

/-! ## A264358.P16072857947392098589

`record[A003982(n)*A264364(n+1)]`
-/

namespace A264358.P16072857947392098589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A264364 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A264358.P16072857947392098589

/-! ## A264358.P8904117979293741425

`record[gcd(A037012(n), A264364(n+1))]`
-/

namespace A264358.P8904117979293741425
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A037012 n) (A264364 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A264358.P8904117979293741425

/-! ## A264358.P5090264050214815489

`A264364(A001844(n))^ceil(sin(n)²)`
-/

namespace A264358.P5090264050214815489
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A264364 (A001844 n).toNat : ℚ) ^ (⌈Real.sin (n : ℝ) ^ 2⌉ : ℤ)

end

end A264358.P5090264050214815489

/-!
# A264359: Number of (n+1)X(3+1) arrays of permutations of 0..n*4+3 with each element having directed index change 0,0 0,2 1,0 or -1,-2.

The programs for A264359, the canonical program `A264359.P12132129586003852317` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A264359 has offset 1).

The definition of A264359 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 150 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A264359.P12132129586003852317

`record[2*a(n-2)+a(n-1)+a(n-3)]²` with `a(0)=3, a(1)=1, a(2)=1, a(3)=3`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A264359

/-- `record[2*a(n-2)+a(n-1)+a(n-3)]²` -/
def P12132129586003852317.Spec : Prop :=
  ∀ n, (P12132129586003852317.a n : ℤ) = A264359 (n + 1)

theorem P12132129586003852317.correct : P12132129586003852317.Spec := by
  intro n
  simp only [A264359, Nat.add_sub_cancel]

end A264359

/-! ## A264359.P12655037591384589481

`Δ[A078039(n)]²`
-/

namespace A264359.P12655037591384589481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078039 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A264359.P12655037591384589481

namespace A264359

/-- `Δ[A078039(n)]²` -/
def P12655037591384589481.Spec : Prop :=
  ∀ n, P12655037591384589481.a n = A264359 (n + 1)

end A264359

/-! ## A264359.P11149460874798949265

`A002478(n+2)²`
-/

namespace A264359.P11149460874798949265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002478 (n + 2) ^ 2

end

end A264359.P11149460874798949265

namespace A264359

/-- `A002478(n+2)²` -/
def P11149460874798949265.Spec : Prop :=
  ∀ n, P11149460874798949265.a n = A264359 (n + 1)

end A264359

/-! ## A264359.P2340206455287809621

`A233247(2*(n+2))`
-/

namespace A264359.P2340206455287809621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233247 (2 * (n + 2))

end

end A264359.P2340206455287809621

namespace A264359

/-- `A233247(2*(n+2))` -/
def P2340206455287809621.Spec : Prop :=
  ∀ n, P2340206455287809621.a n = A264359 (n + 1)

end A264359

/-! ## A264359.P15118494262885566259

`A264365(2*n+3)`
-/

namespace A264359.P15118494262885566259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264365 (2 * n + 3)

end

end A264359.P15118494262885566259

namespace A264359

/-- `A264365(2*n+3)` -/
def P15118494262885566259.Spec : Prop :=
  ∀ n, P15118494262885566259.a n = A264359 (n + 1)

end A264359

/-! ## A264359.P5319919900685810244

`A224809(4*(n+2))`
-/

namespace A264359.P5319919900685810244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224809 (4 * (n + 2))

end

end A264359.P5319919900685810244

namespace A264359

/-- `A224809(4*(n+2))` -/
def P5319919900685810244.Spec : Prop :=
  ∀ n, P5319919900685810244.a n = A264359 (n + 1)

end A264359

/-! ## A264359.P4406181985476943539

`Δ[A077864(n+1)]²`
-/

namespace A264359.P4406181985476943539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077864 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A264359.P4406181985476943539

namespace A264359

/-- `Δ[A077864(n+1)]²` -/
def P4406181985476943539.Spec : Prop :=
  ∀ n, P4406181985476943539.a n = A264359 (n + 1)

end A264359

/-! ## A264359.P4009647334800355525

`Δ[A077899(n+1)]²`
-/

namespace A264359.P4009647334800355525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077899 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A264359.P4009647334800355525

namespace A264359

/-- `Δ[A077899(n+1)]²` -/
def P4009647334800355525.Spec : Prop :=
  ∀ n, P4009647334800355525.a n = A264359 (n + 1)

end A264359

/-! ## A264359.P1177593983454859668

`A000930(2*(n+2))²`
-/

namespace A264359.P1177593983454859668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000930 (2 * (n + 2)) ^ 2

end

end A264359.P1177593983454859668

namespace A264359

/-- `A000930(2*(n+2))²` -/
def P1177593983454859668.Spec : Prop :=
  ∀ n, P1177593983454859668.a n = A264359 (n + 1)

end A264359

/-! ## A264359.P6717745764173938462

`A199804(2*(n+2))²`
-/

namespace A264359.P6717745764173938462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199804 (2 * (n + 2)) ^ 2

end

end A264359.P6717745764173938462

namespace A264359

/-- `A199804(2*(n+2))²` -/
def P6717745764173938462.Spec : Prop :=
  ∀ n, P6717745764173938462.a n = A264359 (n + 1)

end A264359

/-! ## A264359.P3961482922543423434

`(A232935(n+1)/2)²`
-/

namespace A264359.P3961482922543423434
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A232935 (n + 1) : ℚ) / 2) ^ 2

end

end A264359.P3961482922543423434

namespace A264359

/-- `(A232935(n+1)/2)²` -/
def P3961482922543423434.Spec : Prop :=
  ∀ n, P3961482922543423434.a n = (A264359 (n + 1) : ℚ)

end A264359

/-! ## A264359.P9325306565921004403

`A068921(2*n+3)²`
-/

namespace A264359.P9325306565921004403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068921 (2 * n + 3) ^ 2

end

end A264359.P9325306565921004403

namespace A264359

/-- `A068921(2*n+3)²` -/
def P9325306565921004403.Spec : Prop :=
  ∀ n, P9325306565921004403.a n = A264359 (n + 1)

end A264359

/-! ## A264359.P4270835964560670929

`A109532(3*(n+2))²`
-/

namespace A264359.P4270835964560670929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109532 (3 * (n + 2)) ^ 2

end

end A264359.P4270835964560670929

namespace A264359

/-- `A109532(3*(n+2))²` -/
def P4270835964560670929.Spec : Prop :=
  ∀ n, P4270835964560670929.a n = A264359 (n + 1)

end A264359

/-! ## A264359.P12607001170594765706

`(A048585(2*n)-3)²`
-/

namespace A264359.P12607001170594765706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A048585 (2 * n) - 3) ^ 2

end

end A264359.P12607001170594765706

namespace A264359

/-- `(A048585(2*n)-3)²` -/
def P12607001170594765706.Spec : Prop :=
  ∀ n, P12607001170594765706.a n = A264359 (n + 1)

end A264359

/-! ## A264359.P16923456110667795261

`A108104(4*(n+2))²`
-/

namespace A264359.P16923456110667795261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108104 (4 * (n + 2)) ^ 2

end

end A264359.P16923456110667795261

namespace A264359

/-- `A108104(4*(n+2))²` -/
def P16923456110667795261.Spec : Prop :=
  ∀ n, P16923456110667795261.a n = A264359 (n + 1)

end A264359

/-! ## A264359.P4052889396091943173

`A109531(3*(n+3))²`
-/

namespace A264359.P4052889396091943173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109531 (3 * (n + 3)) ^ 2

end

end A264359.P4052889396091943173

namespace A264359

/-- `A109531(3*(n+3))²` -/
def P4052889396091943173.Spec : Prop :=
  ∀ n, P4052889396091943173.a n = A264359 (n + 1)

end A264359

/-! ## A264359.P2934529350633914996

`A078012(2*n+7)²`
-/

namespace A264359.P2934529350633914996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078012 (2 * n + 7) ^ 2

end

end A264359.P2934529350633914996

namespace A264359

/-- `A078012(2*n+7)²` -/
def P2934529350633914996.Spec : Prop :=
  ∀ n, P2934529350633914996.a n = A264359 (n + 1)

end A264359

/-! ## A264359.P2320180939427771501

`(∑[A078007(n+2)]+1)²`
-/

namespace A264359.P2320180939427771501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078007 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j + 1) ^ 2

end

end A264359.P2320180939427771501

namespace A264359

/-- `(∑[A078007(n+2)]+1)²` -/
def P2320180939427771501.Spec : Prop :=
  ∀ n, P2320180939427771501.a n = A264359 (n + 1)

end A264359

/-! ## A264359.P16877043045895927865

`(1-∑[A078039(n+2)])²`
-/

namespace A264359.P16877043045895927865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078039 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - ∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A264359.P16877043045895927865

namespace A264359

/-- `(1-∑[A078039(n+2)])²` -/
def P16877043045895927865.Spec : Prop :=
  ∀ n, P16877043045895927865.a n = A264359 (n + 1)

end A264359

/-! ## A264359.P16827868317525608058

`(∑[A003410(2*n)]+2)²`
-/

namespace A264359.P16827868317525608058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003410 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j + 2) ^ 2

end

end A264359.P16827868317525608058

namespace A264359

/-- `(∑[A003410(2*n)]+2)²` -/
def P16827868317525608058.Spec : Prop :=
  ∀ n, P16827868317525608058.a n = A264359 (n + 1)

end A264359

/-!
# A264360: Number of (n+1) X (4+1) arrays of permutations of 0..n*5+4 with each element having directed index change 0,0 0,2 1,0 or -1,-2.

The programs for A264360, the canonical program `A264360.P7618988838713890390` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A264360 has offset 1).

The definition of A264360 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 112 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A264360.P7618988838713890390

`A002478(n+2)*A189604(n+2)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A264360

/-- `A002478(n+2)*A189604(n+2)` -/
def P7618988838713890390.Spec : Prop :=
  ∀ n, P7618988838713890390.a n = A264360 (n + 1)

theorem P7618988838713890390.correct : P7618988838713890390.Spec := by
  intro n
  simp only [A264360, Nat.add_sub_cancel]

end A264360

/-! ## A264360.P10119916919132264295

`sqrt(A264361(n+1))*A002478(n+2)`
-/

namespace A264360.P10119916919132264295
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A264361 (n + 1) : ℝ) * (A002478 (n + 2) : ℝ)

end

end A264360.P10119916919132264295

namespace A264360

/-- `sqrt(A264361(n+1))*A002478(n+2)` -/
def P10119916919132264295.Spec : Prop :=
  ∀ n, P10119916919132264295.a n = (A264360 (n + 1) : ℝ)

end A264360

/-! ## A264360.P1014559302358234117

`sqrt(A264359(n+1))*sqrt(A264361(n+1))`
-/

namespace A264360.P1014559302358234117
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A264359 (n + 1) : ℝ) * Real.sqrt (A264361 (n + 1) : ℝ)

end

end A264360.P1014559302358234117

namespace A264360

/-- `sqrt(A264359(n+1))*sqrt(A264361(n+1))` -/
def P1014559302358234117.Spec : Prop :=
  ∀ n, P1014559302358234117.a n = (A264360 (n + 1) : ℝ)

end A264360

/-! ## A264360.P3709958974673876523

`sqrt(A264361(n+1))*A000930(2*(n+2))`
-/

namespace A264360.P3709958974673876523
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A264361 (n + 1) : ℝ) * (A000930 (2 * (n + 2)) : ℝ)

end

end A264360.P3709958974673876523

namespace A264360

/-- `sqrt(A264361(n+1))*A000930(2*(n+2))` -/
def P3709958974673876523.Spec : Prop :=
  ∀ n, P3709958974673876523.a n = (A264360 (n + 1) : ℝ)

end A264360

/-! ## A264360.P14541064339747652052

`sqrt(A264359(n+1)*A264361(n+1))`
-/

namespace A264360.P14541064339747652052
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A264359 (n + 1) * A264361 (n + 1) : ℝ)

end

end A264360.P14541064339747652052

namespace A264360

/-- `sqrt(A264359(n+1)*A264361(n+1))` -/
def P14541064339747652052.Spec : Prop :=
  ∀ n, P14541064339747652052.a n = (A264360 (n + 1) : ℝ)

end A264360

/-!
# A264361: Number of (n+1) X (5+1) arrays of permutations of 0..n*6+5 with each element having directed index change 0,0 0,2 1,0 or -1,-2.

The programs for A264361, there is no canonical definition to state claims against.
-/

/-! ## A264361.P11670057352649539312

`record[2*a(n-2)+3*a(n-1)]²` with `a(0)=6, a(1)=1, a(2)=6`
-/

namespace A264361.P11670057352649539312
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [6, 1, 6] fun n f1 =>
  2 * f1 (n - 2) + 3 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) ^ 2

end

end A264361.P11670057352649539312

/-! ## A264361.P16933815183684615021

`A189604(n+2)²`
-/

namespace A264361.P16933815183684615021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189604 (n + 2) ^ 2

end

end A264361.P16933815183684615021

/-! ## A264361.P10835452196888235960

`Δ[Δ[A007482(n)]]²`
-/

namespace A264361.P10835452196888235960
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007482 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A264361.P10835452196888235960

/-! ## A264361.P6326832942983554201

`A264366(2*n+3)`
-/

namespace A264361.P6326832942983554201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264366 (2 * n + 3)

end

end A264361.P6326832942983554201

/-! ## A264361.P10850572846618802266

`Δ[A104934(n+1)]²`
-/

namespace A264361.P10850572846618802266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104934 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A264361.P10850572846618802266

/-! ## A264361.P15533406880312732290

`Δ[2*A055099(n)]²`
-/

namespace A264361.P15533406880312732290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A055099 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A264361.P15533406880312732290

/-! ## A264361.P12775886334057995294

`(A189736(n+3)/2)²`
-/

namespace A264361.P12775886334057995294
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A189736 (n + 3) : ℚ) / 2) ^ 2

end

end A264361.P12775886334057995294

/-! ## A264361.P9238870754958930353

`Δ[Δ[A007455(2*n)]]²`
-/

namespace A264361.P9238870754958930353
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007455 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A264361.P9238870754958930353

/-! ## A264361.P17912914221262251519

`Δ[Δ[A007481(2*n)]]²`
-/

namespace A264361.P17912914221262251519
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007481 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A264361.P17912914221262251519

/-! ## A264361.P8232125170273406719

`Δ[Δ[2*A193653(n)]]²`
-/

namespace A264361.P8232125170273406719
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A193653 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A264361.P8232125170273406719

/-!
# A264362: Number of (n+1)X(6+1) arrays of permutations of 0..n*7+6 with each element having directed index change 0,0 0,2 1,0 or -1,-2.

The programs for A264362, there is no canonical definition to state claims against.
-/

/-! ## A264362.P7731494308215312966

`A189604(n+2)*A189605(n+2)`
-/

namespace A264362.P7731494308215312966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189604 (n + 2) * A189605 (n + 2)

end

end A264362.P7731494308215312966

/-! ## A264362.P852285648181830684

`sqrt(A264361(n+1))*A189605(n+2)`
-/

namespace A264362.P852285648181830684
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A264361 (n + 1) : ℝ) * (A189605 (n + 2) : ℝ)

end

end A264362.P852285648181830684

/-! ## A264362.P6245872226045789061

`sqrt(A264361(n+1))*sqrt(A264363(n+1))`
-/

namespace A264362.P6245872226045789061
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A264361 (n + 1) : ℝ) * Real.sqrt (A264363 (n + 1) : ℝ)

end

end A264362.P6245872226045789061

/-! ## A264362.P14426313316137112382

`sqrt(A264361(n+1)*A264363(n+1))`
-/

namespace A264362.P14426313316137112382
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A264361 (n + 1) * A264363 (n + 1) : ℝ)

end

end A264362.P14426313316137112382

/-! ## A264362.P9663888245810830403

`A264364(A052905(n+3))`
-/

namespace A264362.P9663888245810830403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264364 (A052905 (n + 3)).toNat

end

end A264362.P9663888245810830403

/-!
# A264363: Number of (n+1)X(7+1) arrays of permutations of 0..n*8+7 with each element having directed index change 0,0 0,2 1,0 or -1,-2.

The programs for A264363, there is no canonical definition to state claims against.
-/

/-! ## A264363.P4603514392346116928

`A189605(n+2)²`
-/

namespace A264363.P4603514392346116928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189605 (n + 2) ^ 2

end

end A264363.P4603514392346116928

/-! ## A264363.P290415036231139976

`A264367(2*n+3)`
-/

namespace A264363.P290415036231139976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264367 (2 * n + 3)

end

end A264363.P290415036231139976

/-! ## A264363.P6987960166730091241

`∑[Δ[A264367(n+1+n)]+1]-n`
-/

namespace A264363.P6987960166730091241
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264367 (n + 1 + n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A264363.P6987960166730091241

/-! ## A264363.P3484017914844092646

`A189605(n+2)^A000005(A189557(n+1))`
-/

namespace A264363.P3484017914844092646
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A189605 (n + 2) : ℚ) ^ (A000005 (A189557 (n + 1)).toNat : ℤ)

end

end A264363.P3484017914844092646

/-! ## A264363.P1437756457279348777

`A189605(n+2)^A000005(A189571(n+1))`
-/

namespace A264363.P1437756457279348777
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A189605 (n + 2) : ℚ) ^ (A000005 (A189571 (n + 1)).toNat : ℤ)

end

end A264363.P1437756457279348777

/-! ## A264363.P16453220786140639357

`A264362(n+1)/A264361(n+1)*A264362(n+1)`
-/

namespace A264363.P16453220786140639357
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A264362 (n + 1) : ℚ) / (A264361 (n + 1) : ℚ) * (A264362 (n + 1) : ℚ)

end

end A264363.P16453220786140639357

/-!
# A264365: Number of (1+1) X (n+1) arrays of permutations of 0..n*2+1 with each element having directed index change 0,0 0,2 1,0 or -1,-2.

The programs for A264365, the canonical program `A264365.P12216020434359489775` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A264365 has offset 1).

The definition of A264365 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 301 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A264365.P12216020434359489775

`A068921(or(1, n+1))*A068921(or(1, n))`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A264365

/-- `A068921(or(1, n+1))*A068921(or(1, n))` -/
def P12216020434359489775.Spec : Prop :=
  ∀ n, P12216020434359489775.a n = A264365 (n + 1)

theorem P12216020434359489775.correct : P12216020434359489775.Spec := by
  intro n
  simp only [A264365, Nat.add_sub_cancel]

end A264365

/-! ## A264365.P318717489080591231

`A002478(A008619(n+1))*A002478(A008619(n))`
-/

namespace A264365.P318717489080591231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002478 (A008619 (n + 1)).toNat * A002478 (A008619 n).toNat

end

end A264365.P318717489080591231

namespace A264365

/-- `A002478(A008619(n+1))*A002478(A008619(n))` -/
def P318717489080591231.Spec : Prop :=
  ∀ n, P318717489080591231.a n = A264365 (n + 1)

end A264365

/-! ## A264365.P10462287860249215968

`A068921(A109613(n+1))*A068921(A109613(n))`
-/

namespace A264365.P10462287860249215968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068921 (A109613 (n + 1)).toNat * A068921 (A109613 n).toNat

end

end A264365.P10462287860249215968

namespace A264365

/-- `A068921(A109613(n+1))*A068921(A109613(n))` -/
def P10462287860249215968.Spec : Prop :=
  ∀ n, P10462287860249215968.a n = A264365 (n + 1)

end A264365

/-! ## A264365.P100070825883224821

`A000930(A052928(n+2))*A000930(A052928(n+3))`
-/

namespace A264365.P100070825883224821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000930 (A052928 (n + 2)).toNat * A000930 (A052928 (n + 3)).toNat

end

end A264365.P100070825883224821

namespace A264365

/-- `A000930(A052928(n+2))*A000930(A052928(n+3))` -/
def P100070825883224821.Spec : Prop :=
  ∀ n, P100070825883224821.a n = A264365 (n + 1)

end A264365

/-! ## A264365.P5592127503364533110

`A264364(∑[n]+1)`
-/

namespace A264365.P5592127503364533110
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264364 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A264365.P5592127503364533110

namespace A264365

/-- `A264364(∑[n]+1)` -/
def P5592127503364533110.Spec : Prop :=
  ∀ n, P5592127503364533110.a n = A264365 (n + 1)

end A264365

/-!
# A264366: Number of (2+1) X (n+1) arrays of permutations of 0..n*3+2 with each element having directed index change 0,0 0,2 1,0 or -1,-2.

The programs for A264366, the canonical program `A264366.P5188062550309133001` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A264366 has offset 1).

The definition of A264366 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 181 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A264366.P5188062550309133001

`3*a(n-1)+6*a(n-3)+4*a(n-4)` with `a(0)=1, a(1)=6, a(2)=36, a(3)=120`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A264366

/-- `3*a(n-1)+6*a(n-3)+4*a(n-4)` -/
def P5188062550309133001.Spec : Prop :=
  ∀ n, (P5188062550309133001.a n : ℤ) = A264366 (n + 1)

theorem P5188062550309133001.correct : P5188062550309133001.Spec := by
  intro n
  simp only [A264366, Nat.add_sub_cancel]

end A264366

/-! ## A264366.P2423789696572027444

`A189604(A008619(n+1))*A189604(A008619(n))`
-/

namespace A264366.P2423789696572027444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189604 (A008619 (n + 1)).toNat * A189604 (A008619 n).toNat

end

end A264366.P2423789696572027444

namespace A264366

/-- `A189604(A008619(n+1))*A189604(A008619(n))` -/
def P2423789696572027444.Spec : Prop :=
  ∀ n, P2423789696572027444.a n = A264366 (n + 1)

end A264366

/-! ## A264366.P9183713934521189807

`A264364(∑[n+1]+2)`
-/

namespace A264366.P9183713934521189807
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264364 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A264366.P9183713934521189807

namespace A264366

/-- `A264364(∑[n+1]+2)` -/
def P9183713934521189807.Spec : Prop :=
  ∀ n, P9183713934521189807.a n = A264366 (n + 1)

end A264366

/-! ## A264366.P14463147560281150777

`record[A264364(n+1)*A326822(n)]`
-/

namespace A264366.P14463147560281150777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264364 (n + 1) * A326822 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A264366.P14463147560281150777

namespace A264366

/-- `record[A264364(n+1)*A326822(n)]` -/
def P14463147560281150777.Spec : Prop :=
  ∀ n, P14463147560281150777.a n = A264366 (n + 1)

end A264366

/-! ## A264366.P4970517211855919311

`record[gcd(A264364(n+1), A264405(n))]`
-/

namespace A264366.P4970517211855919311
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A264364 (n + 1)) (A264405 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A264366.P4970517211855919311

namespace A264366

/-- `record[gcd(A264364(n+1), A264405(n))]` -/
def P4970517211855919311.Spec : Prop :=
  ∀ n, (P4970517211855919311.a n : ℤ) = A264366 (n + 1)

end A264366

/-!
# A264367: Number of (3+1)X(n+1) arrays of permutations of 0..n*4+3 with each element having directed index change 0,0 0,2 1,0 or -1,-2.

The programs for A264367, there is no canonical definition to state claims against.
-/

/-! ## A264367.P7667727460878035966

`A264364(∑[n+2]+4)`
-/

namespace A264367.P7667727460878035966
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264364 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A264367.P7667727460878035966

/-! ## A264367.P5001982123053583703

`A264364(A167614(n+1))+A067169(n)`
-/

namespace A264367.P5001982123053583703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264364 (A167614 (n + 1)).toNat + A067169 (n + 11)

end

end A264367.P5001982123053583703

/-! ## A264367.P6323166378611737706

`A264364(A167614(n+1))+A185255(n)`
-/

namespace A264367.P6323166378611737706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264364 (A167614 (n + 1)).toNat + A185255 n

end

end A264367.P6323166378611737706

/-! ## A264367.P15180495841926260558

`A014740(n)*A264364(A167614(n+1))`
-/

namespace A264367.P15180495841926260558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014740 n * A264364 (A167614 (n + 1)).toNat

end

end A264367.P15180495841926260558

/-! ## A264367.P7875167473990311847

`A264364(A167614(n+1))%A016939(n)`
-/

namespace A264367.P7875167473990311847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A264364 (A167614 (n + 1)).toNat) (A016939 n)

end

end A264367.P7875167473990311847

/-!
# A264368: Number of (4+1)X(n+1) arrays of permutations of 0..n*5+4 with each element having directed index change 0,0 0,2 1,0 or -1,-2.

The programs for A264368, there is no canonical definition to state claims against.
-/

/-! ## A264368.P8834337137575196806

`A264364(A141214(n)+7)`
-/

namespace A264368.P8834337137575196806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264364 (A141214 n + 7).toNat

end

end A264368.P8834337137575196806

/-! ## A264368.P15474745587183023942

`A264364(A052905(n)+9)`
-/

namespace A264368.P15474745587183023942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264364 (A052905 n + 9).toNat

end

end A264368.P15474745587183023942

/-! ## A264368.P7680234544284115763

`A264364(A055999(n)+10)`
-/

namespace A264368.P7680234544284115763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264364 (A055999 n + 10).toNat

end

end A264368.P7680234544284115763

/-! ## A264368.P12694031265687959218

`A264364(eq[5, A066657(n)])`
-/

namespace A264368.P12694031265687959218
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264364 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A264368.P12694031265687959218

/-! ## A264368.P6602258931369213436

`A264364(A167614(n+2)+1)`
-/

namespace A264368.P6602258931369213436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264364 (A167614 (n + 2) + 1).toNat

end

end A264368.P6602258931369213436

/-!
# A264369: Number of (5+1) X (n+1) arrays of permutations of 0..n*6+5 with each element having directed index change 0,0 0,2 1,0 or -1,-2.

The programs for A264369, there is no canonical definition to state claims against.
-/

/-! ## A264369.P10485638854163148777

`A264364(A167499(n+3))`
-/

namespace A264369.P10485638854163148777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264364 (A167499 (n + 3)).toNat

end

end A264369.P10485638854163148777

/-! ## A264369.P17444036158242209115

`A264364(A077169(n+5))`
-/

namespace A264369.P17444036158242209115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264364 (A077169 (n + 5)).toNat

end

end A264369.P17444036158242209115

/-! ## A264369.P8703142709228337960

`A264364(A155212(n)+13)`
-/

namespace A264369.P8703142709228337960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264364 (A155212 n + 13).toNat

end

end A264369.P8703142709228337960

/-! ## A264369.P6827417480227142023

`A264364(A056000(n)+15)`
-/

namespace A264369.P6827417480227142023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264364 (A056000 n + 15).toNat

end

end A264369.P6827417480227142023

/-! ## A264369.P5139327597851480393

`A264364(eq[7, A066657(n)])`
-/

namespace A264369.P5139327597851480393
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264364 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A264369.P5139327597851480393

/-!
# A264370: Number of (6+1)X(n+1) arrays of permutations of 0..n*7+6 with each element having directed index change 0,0 0,2 1,0 or -1,-2.

The programs for A264370, there is no canonical definition to state claims against.
-/

/-! ## A264370.P10892289484785970323

`A264364(A166136(n+4))`
-/

namespace A264370.P10892289484785970323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264364 (A166136 (n + 4)).toNat

end

end A264370.P10892289484785970323

/-! ## A264370.P11244871754017781102

`A264364(A000217(n+5)+6)`
-/

namespace A264370.P11244871754017781102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264364 (A000217 (n + 5) + 6).toNat

end

end A264370.P11244871754017781102

/-! ## A264370.P13715001878886295257

`A264364(A246172(n+1)+20)`
-/

namespace A264370.P13715001878886295257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264364 (A246172 (n + 1) + 20).toNat

end

end A264370.P13715001878886295257

/-! ## A264370.P11553172938713639044

`A264364(eq[6, A130270(n+1)])`
-/

namespace A264370.P11553172938713639044
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130270 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264364 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A264370.P11553172938713639044

/-! ## A264370.P460478201799080053

`A264364(eq[7, A131818(n+1)])`
-/

namespace A264370.P460478201799080053
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264364 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A264370.P460478201799080053

/-!
# A264371: Number of (7+1) X (n+1) arrays of permutations of 0..n*8+7 with each element having directed index change 0,0 0,2 1,0 or -1,-2.

The programs for A264371, there is no canonical definition to state claims against.
-/

/-! ## A264371.P15295453354718655376

`A264364(eq[11, A066657(n)])`
-/

namespace A264371.P15295453354718655376
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264364 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A264371.P15295453354718655376

/-! ## A264371.P8799110559530992174

`A264364(A000124(n+6)+6)`
-/

namespace A264371.P8799110559530992174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264364 (A000124 (n + 6) + 6).toNat

end

end A264371.P8799110559530992174

/-! ## A264371.P8057312418657776973

`A264364(A141214(n+3)+10)`
-/

namespace A264371.P8057312418657776973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264364 (A141214 (n + 3) + 10).toNat

end

end A264371.P8057312418657776973

/-! ## A264371.P2251584590627724869

`A264364(eq[8, A131818(n+1)])`
-/

namespace A264371.P2251584590627724869
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264364 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A264371.P2251584590627724869

/-! ## A264371.P18307653208782920675

`A264364(eq[32, A166918(n)]+1)`
-/

namespace A264371.P18307653208782920675
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  32

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166918 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264364 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A264371.P18307653208782920675

/-!
# A264372: Number of (n+1)X(n+1) arrays of permutations of 0..(n+1)^2-1 with each element having directed index change 2,-2 -1,0 -1,2 1,0 or 0,-1.

The programs for A264372, there is no canonical definition to state claims against.
-/

/-! ## A264372.P5917402249589379484

`A264379(∑[4*n]+1)`
-/

namespace A264372.P5917402249589379484
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264379 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A264372.P5917402249589379484

/-! ## A264372.P7859203721972222268

`A264379(A001844(n))+A011731(n)`
-/

namespace A264372.P7859203721972222268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264379 (A001844 n).toNat + A011731 n

end

end A264372.P7859203721972222268

/-! ## A264372.P18299086588788150009

`A264379(A001844(n))+A025465(n)`
-/

namespace A264372.P18299086588788150009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264379 (A001844 n).toNat + A025465 n

end

end A264372.P18299086588788150009

/-! ## A264372.P8551790696001764698

`A264379(A001844(n))+A026814(n)`
-/

namespace A264372.P8551790696001764698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264379 (A001844 n).toNat + A026814 n

end

end A264372.P8551790696001764698

/-!
# A264373: Number of (n+1)X(2+1) arrays of permutations of 0..n*3+2 with each element having directed index change 2,-2 -1,0 -1,2 1,0 or 0,-1.

The programs for A264373, there is no canonical definition to state claims against.
-/

/-! ## A264373.P1992491553820972634

`A264379(∑[n+2])`
-/

namespace A264373.P1992491553820972634
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264379 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A264373.P1992491553820972634

/-! ## A264373.P15151583415612817714

`A264379(A000096(n+1))+A079260(3*(n+1))`
-/

namespace A264373.P15151583415612817714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264379 (A000096 (n + 1)).toNat + A079260 (3 * (n + 1))

end

end A264373.P15151583415612817714

/-!
# A264374: Number of (n+1)X(3+1) arrays of permutations of 0..n*4+3 with each element having directed index change 2,-2 -1,0 -1,2 1,0 or 0,-1.

The programs for A264374, there is no canonical definition to state claims against.
-/

/-! ## A264374.P11420836908776259312

`A264379(∑[n+3]+1)`
-/

namespace A264374.P11420836908776259312
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264379 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A264374.P11420836908776259312

/-! ## A264374.P16741773231590280645

`A264379(A034856(n+2))%A342439(n+1)`
-/

namespace A264374.P16741773231590280645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A264379 (A034856 (n + 2)).toNat) (A342439 (n + 1))

end

end A264374.P16741773231590280645

/-! ## A264374.P18159340598660095763

`A264379(A034856(n+2))+A000007(2*n+1)`
-/

namespace A264374.P18159340598660095763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264379 (A034856 (n + 2)).toNat + A000007 (2 * n + 1)

end

end A264374.P18159340598660095763

/-!
# A264375: Number of (n+1)X(4+1) arrays of permutations of 0..n*5+4 with each element having directed index change 2,-2 -1,0 -1,2 1,0 or 0,-1.

The programs for A264375, there is no canonical definition to state claims against.
-/

/-! ## A264375.P4966057915241435237

`A264379(A141214(n+1))`
-/

namespace A264375.P4966057915241435237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264379 (A141214 (n + 1)).toNat

end

end A264375.P4966057915241435237

/-! ## A264375.P8617222118220003664

`A264379(A155212(n)+5)`
-/

namespace A264375.P8617222118220003664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264379 (A155212 n + 5).toNat

end

end A264375.P8617222118220003664

/-! ## A264375.P1723253238023748401

`A264379(eq[4, A209434(n)])`
-/

namespace A264375.P1723253238023748401
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209434 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264379 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A264375.P1723253238023748401

/-! ## A264375.P1418180146484116394

`A264379(Δ[A034857(n+1)])`
-/

namespace A264375.P1418180146484116394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034857 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264379 (f1 (n + 1) - f1 n).toNat

end

end A264375.P1418180146484116394

/-! ## A264375.P5708915954657636696

`A264379(A052905(n+1)+2)`
-/

namespace A264375.P5708915954657636696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264379 (A052905 (n + 1) + 2).toNat

end

end A264375.P5708915954657636696

/-!
# A264376: Number of (n+1)X(5+1) arrays of permutations of 0..n*6+5 with each element having directed index change 2,-2 -1,0 -1,2 1,0 or 0,-1.

The programs for A264376, there is no canonical definition to state claims against.
-/

/-! ## A264376.P2447124195252311714

`A264379(Δ[A264443(n)])`
-/

namespace A264376.P2447124195252311714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264379 (f1 (n + 1) - f1 n).toNat

end

end A264376.P2447124195252311714

/-! ## A264376.P10942452847790365713

`A264379(eq[4, A193592(n)])`
-/

namespace A264376.P10942452847790365713
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264379 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A264376.P10942452847790365713

/-! ## A264376.P15057615083610429990

`A264379(Δ[A023545(n+1)])`
-/

namespace A264376.P15057615083610429990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264379 (f1 (n + 1) - f1 n).toNat

end

end A264376.P15057615083610429990

/-! ## A264376.P16376516411544363020

`A264379(A246172(n+1)+10)`
-/

namespace A264376.P16376516411544363020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264379 (A246172 (n + 1) + 10).toNat

end

end A264376.P16376516411544363020

/-!
# A264377: Number of (n+1)X(6+1) arrays of permutations of 0..n*7+6 with each element having directed index change 2,-2 -1,0 -1,2 1,0 or 0,-1.

The programs for A264377, there is no canonical definition to state claims against.
-/

/-! ## A264377.P11602330956229439453

`A264379(eq[3, A219347(n)])`
-/

namespace A264377.P11602330956229439453
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264379 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A264377.P11602330956229439453

/-! ## A264377.P8300669736250945592

`A264379(eq[5, A193592(n)])`
-/

namespace A264377.P8300669736250945592
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264379 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A264377.P8300669736250945592

/-! ## A264377.P16504508316187314414

`A264379(eq[8, A258709(n)])`
-/

namespace A264377.P16504508316187314414
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258709 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264379 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A264377.P16504508316187314414

/-! ## A264377.P16804690635128009170

`A264379(eq[8, A185782(n+1)])`
-/

namespace A264377.P16804690635128009170
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264379 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A264377.P16804690635128009170

/-! ## A264377.P2558987274414615976

`A264379(Δ[Δ[A006504(n+1)]])`
-/

namespace A264377.P2558987274414615976
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264379 (f1 (n + 1) - f1 n).toNat

end

end A264377.P2558987274414615976

/-!
# A264378: Number of (n+1)X(7+1) arrays of permutations of 0..n*8+7 with each element having directed index change 2,-2 -1,0 -1,2 1,0 or 0,-1.

The programs for A264378, there is no canonical definition to state claims against.
-/

/-! ## A264378.P16031626176088297380

`A264379(Δ[n²]+∑[n+5]+16)`
-/

namespace A264378.P16031626176088297380
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264379 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + ((∑ j ∈ Finset.range (n + 1), f2 j + 16 : ℕ) : ℤ)).toNat

end

end A264378.P16031626176088297380

/-!
# A264380: Number of (2+1) X (n+1) arrays of permutations of 0..n*3+2 with each element having directed index change 2,-2 -1,0 -1,2 1,0 or 0,-1.

The programs for A264380, there is no canonical definition to state claims against.
-/

/-! ## A264380.P17276728157195219734

`A264379(∑[n+1]+2)`
-/

namespace A264380.P17276728157195219734
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264379 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A264380.P17276728157195219734

/-! ## A264380.P15186612580518373587

`record[A264379(n+1)%A267338(n+1)]`
-/

namespace A264380.P15186612580518373587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A264379 (n + 1)) (A267338 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A264380.P15186612580518373587

/-!
# A264381: Number of (3+1)X(n+1) arrays of permutations of 0..n*4+3 with each element having directed index change 2,-2 -1,0 -1,2 1,0 or 0,-1.

The programs for A264381, there is no canonical definition to state claims against.
-/

/-! ## A264381.P12486423348481689490

`A264379(∑[n+2]+4)`
-/

namespace A264381.P12486423348481689490
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264379 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A264381.P12486423348481689490

/-! ## A264381.P3671752062992721290

`A264379(A167614(n+1))-A185044(n)`
-/

namespace A264381.P3671752062992721290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264379 (A167614 (n + 1)).toNat - A185044 n

end

end A264381.P3671752062992721290

/-! ## A264381.P2948783044157105467

`A264379(A167614(n+1))*A304042(n)`
-/

namespace A264381.P2948783044157105467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264379 (A167614 (n + 1)).toNat * A304042 n

end

end A264381.P2948783044157105467

/-! ## A264381.P923234326604121443

`A264379(A167614(n+1))%A198845(n)`
-/

namespace A264381.P923234326604121443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A264379 (A167614 (n + 1)).toNat) (A198845 n)

end

end A264381.P923234326604121443

/-! ## A264381.P17761966272392251574

`gcd(A000038(n), A264379(A167614(n+1)))`
-/

namespace A264381.P17761966272392251574
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A264379 (A167614 (n + 1)).toNat)

end

end A264381.P17761966272392251574

/-!
# A264382: Number of (4+1)X(n+1) arrays of permutations of 0..n*5+4 with each element having directed index change 2,-2 -1,0 -1,2 1,0 or 0,-1.

The programs for A264382, there is no canonical definition to state claims against.
-/

/-! ## A264382.P12122449954212599753

`A264379(A141214(n)+7)`
-/

namespace A264382.P12122449954212599753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264379 (A141214 n + 7).toNat

end

end A264382.P12122449954212599753

/-! ## A264382.P5675220588009086749

`A264379(A052905(n)+9)`
-/

namespace A264382.P5675220588009086749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264379 (A052905 n + 9).toNat

end

end A264382.P5675220588009086749

/-! ## A264382.P13772580576947011557

`A264379(A055999(n)+10)`
-/

namespace A264382.P13772580576947011557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264379 (A055999 n + 10).toNat

end

end A264382.P13772580576947011557

/-! ## A264382.P7243149088551222802

`A264379(eq[5, A066657(n)])`
-/

namespace A264382.P7243149088551222802
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264379 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A264382.P7243149088551222802

/-! ## A264382.P18252766974644286094

`A264379(A167614(n+2)+1)`
-/

namespace A264382.P18252766974644286094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264379 (A167614 (n + 2) + 1).toNat

end

end A264382.P18252766974644286094

/-!
# A264383: Number of (5+1)X(n+1) arrays of permutations of 0..n*6+5 with each element having directed index change 2,-2 -1,0 -1,2 1,0 or 0,-1.

The programs for A264383, there is no canonical definition to state claims against.
-/

/-! ## A264383.P7274082774377032698

`A264379(A155212(n)+13)`
-/

namespace A264383.P7274082774377032698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264379 (A155212 n + 13).toNat

end

end A264383.P7274082774377032698

/-! ## A264383.P14465951200961435710

`A264379(A056000(n)+15)`
-/

namespace A264383.P14465951200961435710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264379 (A056000 n + 15).toNat

end

end A264383.P14465951200961435710

/-! ## A264383.P17948577332962575121

`A264379(eq[7, A066657(n)])`
-/

namespace A264383.P17948577332962575121
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264379 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A264383.P17948577332962575121

/-! ## A264383.P16004660718559891327

`A264379(A133263(n+4)+3)`
-/

namespace A264383.P16004660718559891327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264379 (A133263 (n + 4) + 3).toNat

end

end A264383.P16004660718559891327

/-! ## A264383.P15141772965703587744

`A264379(eq[6, A131818(n+1)])`
-/

namespace A264383.P15141772965703587744
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264379 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A264383.P15141772965703587744

/-!
# A264384: Number of (6+1)X(n+1) arrays of permutations of 0..n*7+6 with each element having directed index change 2,-2 -1,0 -1,2 1,0 or 0,-1.

The programs for A264384, there is no canonical definition to state claims against.
-/

/-! ## A264384.P1349175039633455442

`A264379(∑[n+5]+16)`
-/

namespace A264384.P1349175039633455442
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264379 (∑ j ∈ Finset.range (n + 1), f1 j + 16)

end

end A264384.P1349175039633455442

/-! ## A264384.P6259925362343679550

`A264379(A167614(n+4)+3)+A187585(n+1)`
-/

namespace A264384.P6259925362343679550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264379 (A167614 (n + 4) + 3).toNat + A187585 (n + 1)

end

end A264384.P6259925362343679550

/-!
# A264385: Number of (7+1)X(n+1) arrays of permutations of 0..n*8+7 with each element having directed index change 2,-2 -1,0 -1,2 1,0 or 0,-1.

The programs for A264385, there is no canonical definition to state claims against.
-/

/-! ## A264385.P15748795180198883282

`A264379(eq[11, A066657(n)])`
-/

namespace A264385.P15748795180198883282
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264379 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A264385.P15748795180198883282

/-! ## A264385.P14292097470794640042

`A264379(A167614(n+5)+4)`
-/

namespace A264385.P14292097470794640042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264379 (A167614 (n + 5) + 4).toNat

end

end A264385.P14292097470794640042

/-! ## A264385.P2580766477889599580

`A264379(A155212(n+2)+15)`
-/

namespace A264385.P2580766477889599580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264379 (A155212 (n + 2) + 15).toNat

end

end A264385.P2580766477889599580

/-! ## A264385.P7239492290712156341

`A264379(eq[6, A002262(n)]+1)`
-/

namespace A264385.P7239492290712156341
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264379 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A264385.P7239492290712156341

/-! ## A264385.P452142620487459408

`A264379(eq[8, A131818(n+1)])`
-/

namespace A264385.P452142620487459408
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264379 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A264385.P452142620487459408

/-!
# A264386: Gergonne's 27-card trick with three piles: finding a card after three dealings with pile information.

The programs for A264386, there is no canonical definition to state claims against.
-/

/-! ## A264386.P17717936764027882469

`ceil(A030102(n+27)/3)`
-/

namespace A264386.P17717936764027882469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A030102 (n + 27) : ℚ) / 3⌉

end

end A264386.P17717936764027882469

/-! ## A264386.P15921146997228355183

`floor(A030102(n+27)/3)+A007318(∑[n])`
-/

namespace A264386.P15921146997228355183
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A030102 (n + 27) : ℚ) / 3⌋ + A007318 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A264386.P15921146997228355183

/-! ## A264386.P9446259987159985272

`floor(A030102(n+27)/3)+A007318(C(n, 2))²`
-/

namespace A264386.P9446259987159985272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A030102 (n + 27) : ℚ) / 3⌋ + A007318 (Nat.choose n 2) ^ 2

end

end A264386.P9446259987159985272

/-! ## A264386.P6108380459017578783

`floor(A030102(n+27)/3)+A000041(C(2, n+2))`
-/

namespace A264386.P6108380459017578783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A030102 (n + 27) : ℚ) / 3⌋ + A000041 (Nat.choose 2 (n + 2))

end

end A264386.P6108380459017578783

/-! ## A264386.P14154330939320809797

`2-(A007318(C(2, n))-floor(A030102(n+27)/3))`
-/

namespace A264386.P14154330939320809797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (A007318 (Nat.choose 2 n) - ⌊(A030102 (n + 27) : ℚ) / 3⌋)

end

end A264386.P14154330939320809797

/-!
# A264387: 2*(1+2*a(n)) is the n-th even squarefree number A039956(n), n >= 1.

The programs for A264387, the canonical program `A264387.P2910925617492252044` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A264387 has offset 1).

The definition of A264387 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A039956, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A264387.P2910925617492252044

`(A039956(n+1)-2)/4`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A264387

/-- `(A039956(n+1)-2)/4` -/
def P2910925617492252044.Spec : Prop :=
  ∀ n, P2910925617492252044.a n = (A264387 (n + 1) : ℚ)

end A264387

/-! ## A264387.P8888901661505791410

`floor(A056911(n+1)/2)`
-/

namespace A264387.P8888901661505791410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A056911 (n + 1) : ℚ) / 2⌋

end

end A264387.P8888901661505791410

namespace A264387

/-- `floor(A056911(n+1)/2)` -/
def P8888901661505791410.Spec : Prop :=
  ∀ n, P8888901661505791410.a n = A264387 (n + 1)

end A264387

/-! ## A264387.P15874786534642825357

`floor(A039956(n+1)/4)`
-/

namespace A264387.P15874786534642825357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A039956 (n + 1) : ℚ) / 4⌋

end

end A264387.P15874786534642825357

namespace A264387

/-- `floor(A039956(n+1)/4)` -/
def P15874786534642825357.Spec : Prop :=
  ∀ n, P15874786534642825357.a n = A264387 (n + 1)

end A264387

/-! ## A264387.P15985939448546662667

`(A160785(n+1)-3)/4`
-/

namespace A264387.P15985939448546662667
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A160785 (n + 1) - 3 : ℚ) / 4

end

end A264387.P15985939448546662667

namespace A264387

/-- `(A160785(n+1)-3)/4` -/
def P15985939448546662667.Spec : Prop :=
  ∀ n, P15985939448546662667.a n = (A264387 (n + 1) : ℚ)

end A264387

/-! ## A264387.P6619193180425531237

`eq[0, A048146(2*n+1)]`
-/

namespace A264387.P6619193180425531237
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048146 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A264387.P6619193180425531237

namespace A264387

/-- `eq[0, A048146(2*n+1)]` -/
def P6619193180425531237.Spec : Prop :=
  ∀ n, (P6619193180425531237.a n : ℤ) = A264387 (n + 1)

end A264387

/-! ## A264387.P8712005579431971687

`eq[0, A071327(2*n+1)]`
-/

namespace A264387.P8712005579431971687
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071327 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A264387.P8712005579431971687

namespace A264387

/-- `eq[0, A071327(2*n+1)]` -/
def P8712005579431971687.Spec : Prop :=
  ∀ n, (P8712005579431971687.a n : ℤ) = A264387 (n + 1)

end A264387

/-! ## A264387.P17165401987635324930

`eq[0, A076998(2*n+1)]`
-/

namespace A264387.P17165401987635324930
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076998 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A264387.P17165401987635324930

namespace A264387

/-- `eq[0, A076998(2*n+1)]` -/
def P17165401987635324930.Spec : Prop :=
  ∀ n, (P17165401987635324930.a n : ℤ) = A264387 (n + 1)

end A264387

/-! ## A264387.P11461048726230751700

`eq[0, A078771(2*n+1)]`
-/

namespace A264387.P11461048726230751700
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078771 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A264387.P11461048726230751700

namespace A264387

/-- `eq[0, A078771(2*n+1)]` -/
def P11461048726230751700.Spec : Prop :=
  ∀ n, (P11461048726230751700.a n : ℤ) = A264387 (n + 1)

end A264387

/-! ## A264387.P3612256749143999018

`eq[1, A005361(2*n+1)]`
-/

namespace A264387.P3612256749143999018
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A264387.P3612256749143999018

namespace A264387

/-- `eq[1, A005361(2*n+1)]` -/
def P3612256749143999018.Spec : Prop :=
  ∀ n, (P3612256749143999018.a n : ℤ) = A264387 (n + 1)

end A264387

/-! ## A264387.P17892933803318172814

`eq[1, A007424(2*n+1)]`
-/

namespace A264387.P17892933803318172814
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007424 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A264387.P17892933803318172814

namespace A264387

/-- `eq[1, A007424(2*n+1)]` -/
def P17892933803318172814.Spec : Prop :=
  ∀ n, (P17892933803318172814.a n : ℤ) = A264387 (n + 1)

end A264387

/-! ## A264387.P13673905400870300048

`eq[1, A008833(2*n+1)]`
-/

namespace A264387.P13673905400870300048
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008833 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A264387.P13673905400870300048

namespace A264387

/-- `eq[1, A008833(2*n+1)]` -/
def P13673905400870300048.Spec : Prop :=
  ∀ n, (P13673905400870300048.a n : ℤ) = A264387 (n + 1)

end A264387

/-! ## A264387.P2856206256716642064

`eq[1, A008966(2*n+1)]`
-/

namespace A264387.P2856206256716642064
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008966 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A264387.P2856206256716642064

namespace A264387

/-- `eq[1, A008966(2*n+1)]` -/
def P2856206256716642064.Spec : Prop :=
  ∀ n, (P2856206256716642064.a n : ℤ) = A264387 (n + 1)

end A264387

/-! ## A264387.P9638826732591245951

`eq[1, A050377(2*n+1)]`
-/

namespace A264387.P9638826732591245951
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050377 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A264387.P9638826732591245951

namespace A264387

/-- `eq[1, A050377(2*n+1)]` -/
def P9638826732591245951.Spec : Prop :=
  ∀ n, (P9638826732591245951.a n : ℤ) = A264387 (n + 1)

end A264387

/-! ## A264387.P1977921995398398193

`lt[0, abs(A008683(2*n+1))]`
-/

namespace A264387.P1977921995398398193
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008683 (2 * n + 1)|

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A264387.P1977921995398398193

namespace A264387

/-- `lt[0, abs(A008683(2*n+1))]` -/
def P1977921995398398193.Spec : Prop :=
  ∀ n, (P1977921995398398193.a n : ℤ) = A264387 (n + 1)

end A264387

/-! ## A264387.P13091482764830316572

`lt[0, A008683(n+1+n)²]`
-/

namespace A264387.P13091482764830316572
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1 + n) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A264387.P13091482764830316572

namespace A264387

/-- `lt[0, A008683(n+1+n)²]` -/
def P13091482764830316572.Spec : Prop :=
  ∀ n, (P13091482764830316572.a n : ℤ) = A264387 (n + 1)

end A264387

/-! ## A264387.P3731245666635978560

`eq[1, A008683(2*(n+1)-1)²]`
-/

namespace A264387.P3731245666635978560
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (2 * (n + 1) - 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A264387.P3731245666635978560

namespace A264387

/-- `eq[1, A008683(2*(n+1)-1)²]` -/
def P3731245666635978560.Spec : Prop :=
  ∀ n, (P3731245666635978560.a n : ℤ) = A264387 (n + 1)

end A264387

/-! ## A264387.P9759662203255663852

`eq[1, A008683(2*(n+1))²]/2`
-/

namespace A264387.P9759662203255663852
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (2 * (n + 1)) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℚ) / 2

end

end A264387.P9759662203255663852

namespace A264387

/-- `eq[1, A008683(2*(n+1))²]/2` -/
def P9759662203255663852.Spec : Prop :=
  ∀ n, P9759662203255663852.a n = (A264387 (n + 1) : ℚ)

end A264387

/-! ## A264387.P6286700054131890594

`eq[1, gcd(2, A008683(2*(2*n+1)))]`
-/

namespace A264387.P6286700054131890594
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A008683 (2 * (2 * n + 1)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A264387.P6286700054131890594

namespace A264387

/-- `eq[1, gcd(2, A008683(2*(2*n+1)))]` -/
def P6286700054131890594.Spec : Prop :=
  ∀ n, (P6286700054131890594.a n : ℤ) = A264387 (n + 1)

end A264387

/-! ## A264387.P5751839499779823957

`eq[2, A008683(lcm(2, 2*n+1))²+1]`
-/

namespace A264387.P5751839499779823957
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (Nat.lcm 2 (2 * n + 1)) ^ 2 + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A264387.P5751839499779823957

namespace A264387

/-- `eq[2, A008683(lcm(2, 2*n+1))²+1]` -/
def P5751839499779823957.Spec : Prop :=
  ∀ n, (P5751839499779823957.a n : ℤ) = A264387 (n + 1)

end A264387

/-! ## A264387.P10905591720256991930

`eq[1, and(n+1, A008683(n+1)²)]/2`
-/

namespace A264387.P10905591720256991930
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n + 1 : ℤ) (A008683 (n + 1) ^ 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℚ) / 2

end

end A264387.P10905591720256991930

namespace A264387

/-- `eq[1, and(n+1, A008683(n+1)²)]/2` -/
def P10905591720256991930.Spec : Prop :=
  ∀ n, P10905591720256991930.a n = (A264387 (n + 1) : ℚ)

end A264387

/-!
# A264388: Numerators of binomial(n-1, 2)/(6*n), for n >= 1. Numerators of Dedekind sum s(1, n).

The programs for A264388, the canonical program `A264388.P1449055974794390158` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A264388 has offset 1).

The definition of A264388 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A264388.P1449055974794390158

`lcm(n+1, A208950(n))/(n+1)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A264388

/-- `lcm(n+1, A208950(n))/(n+1)` -/
def P1449055974794390158.Spec : Prop :=
  ∀ n, P1449055974794390158.a n = (A264388 (n + 1) : ℚ)

end A264388

/-! ## A264388.P14927289476889098203

`A051712(2*n+1)*A051712(A028310(n))`
-/

namespace A264388.P14927289476889098203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051712 (2 * n + 1) * A051712 (A028310 n).toNat

end

end A264388.P14927289476889098203

namespace A264388

/-- `A051712(2*n+1)*A051712(A028310(n))` -/
def P14927289476889098203.Spec : Prop :=
  ∀ n, P14927289476889098203.a n = A264388 (n + 1)

end A264388

/-! ## A264388.P6004828947822128922

`lcm(A051724(C(n, 2)), A051724(n))`
-/

namespace A264388.P6004828947822128922
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A051724 (Nat.choose n 2)) (A051724 n)

end

end A264388.P6004828947822128922

namespace A264388

/-- `lcm(A051724(C(n, 2)), A051724(n))` -/
def P6004828947822128922.Spec : Prop :=
  ∀ n, (P6004828947822128922.a n : ℤ) = A264388 (n + 1)

end A264388

/-! ## A264388.P13820582394635761069

`lcm(A051724(n), A051724(A161680(n)))`
-/

namespace A264388.P13820582394635761069
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A051724 n) (A051724 (A161680 n).toNat)

end

end A264388.P13820582394635761069

namespace A264388

/-- `lcm(A051724(n), A051724(A161680(n)))` -/
def P13820582394635761069.Spec : Prop :=
  ∀ n, (P13820582394635761069.a n : ℤ) = A264388 (n + 1)

end A264388

/-! ## A264388.P4015968584256171779

`A051724(lcm(n, C(n, 2)))`
-/

namespace A264388.P4015968584256171779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051724 (Nat.lcm n (Nat.choose n 2))

end

end A264388.P4015968584256171779

namespace A264388

/-- `A051724(lcm(n, C(n, 2)))` -/
def P4015968584256171779.Spec : Prop :=
  ∀ n, P4015968584256171779.a n = A264388 (n + 1)

end A264388

/-! ## A264388.P6588309614383879329

`A051724(gcd(2, n)*C(n, 2))`
-/

namespace A264388.P6588309614383879329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051724 (Nat.gcd 2 n * Nat.choose n 2)

end

end A264388.P6588309614383879329

namespace A264388

/-- `A051724(gcd(2, n)*C(n, 2))` -/
def P6588309614383879329.Spec : Prop :=
  ∀ n, P6588309614383879329.a n = A264388 (n + 1)

end A264388

/-! ## A264388.P7722060974515328723

`A051724(n*lcm(2, 1-n)/2)`
-/

namespace A264388.P7722060974515328723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051724 (SequenceMachineLib.roundAway ((n : ℚ) * ((Int.lcm 2 (1 - (n : ℤ)) : ℚ) / 2))).toNat

end

end A264388.P7722060974515328723

namespace A264388

/-- `A051724(n*lcm(2, 1-n)/2)` -/
def P7722060974515328723.Spec : Prop :=
  ∀ n, P7722060974515328723.a n = A264388 (n + 1)

end A264388

/-! ## A264388.P5347309545527265455

`A051724(lcm(n, A161680(n)))`
-/

namespace A264388.P5347309545527265455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051724 (Int.lcm (n : ℤ) (A161680 n))

end

end A264388.P5347309545527265455

namespace A264388

/-- `A051724(lcm(n, A161680(n)))` -/
def P5347309545527265455.Spec : Prop :=
  ∀ n, P5347309545527265455.a n = A264388 (n + 1)

end A264388

/-! ## A264388.P15544266068803075602

`A051724(A228564(n)-A026741(n+1))`
-/

namespace A264388.P15544266068803075602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051724 (A228564 n - A026741 (n + 1)).toNat

end

end A264388.P15544266068803075602

namespace A264388

/-- `A051724(A228564(n)-A026741(n+1))` -/
def P15544266068803075602.Spec : Prop :=
  ∀ n, P15544266068803075602.a n = A264388 (n + 1)

end A264388

/-! ## A264388.P18191712637420161637

`A278715(C(n, 2)+2)`
-/

namespace A264388.P18191712637420161637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278715 (Nat.choose n 2 + 2)

end

end A264388.P18191712637420161637

namespace A264388

/-- `A278715(C(n, 2)+2)` -/
def P18191712637420161637.Spec : Prop :=
  ∀ n, P18191712637420161637.a n = A264388 (n + 1)

end A264388

/-! ## A264388.P9930350858597861245

`A278715(∑[n-1]+3)`
-/

namespace A264388.P9930350858597861245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278715 (∑ j ∈ Finset.range (n + 1), f1 j + 3).toNat

end

end A264388.P9930350858597861245

namespace A264388

/-- `A278715(∑[n-1]+3)` -/
def P9930350858597861245.Spec : Prop :=
  ∀ n, P9930350858597861245.a n = A264388 (n + 1)

end A264388

/-! ## A264388.P10958154464098857810

`abs(A278715(A000124(A028310(n))))`
-/

namespace A264388.P10958154464098857810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A278715 (A000124 (A028310 n).toNat).toNat|

end

end A264388.P10958154464098857810

namespace A264388

/-- `abs(A278715(A000124(A028310(n))))` -/
def P10958154464098857810.Spec : Prop :=
  ∀ n, P10958154464098857810.a n = A264388 (n + 1)

end A264388

/-!
# A264389: Denominator of binomial(n-1, 2)/(6*n), for n >= 1. Denominator of Dedekind sum s(1,n).

The programs for A264389, there is no canonical definition to state claims against.
-/

/-! ## A264389.P12753908370970694682

`A278716(C(n, 2)+2)`
-/

namespace A264389.P12753908370970694682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278716 (Nat.choose n 2 + 2)

end

end A264389.P12753908370970694682

/-! ## A264389.P5887238559813073421

`A278716(∑[n-1]+3)`
-/

namespace A264389.P5887238559813073421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278716 (∑ j ∈ Finset.range (n + 1), f1 j + 3).toNat

end

end A264389.P5887238559813073421

/-! ## A264389.P3997113426694226917

`or(char[1], A278716(A152948(n+1)))`
-/

namespace A264389.P3997113426694226917
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A278716 (A152948 (n + 1)).toNat)

end

end A264389.P3997113426694226917

/-! ## A264389.P12833633063334963845

`A278716(A152948(n+1))^A178334(n)`
-/

namespace A264389.P12833633063334963845
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A278716 (A152948 (n + 1)).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A264389.P12833633063334963845

/-! ## A264389.P4018429421199200228

`A278716(A152948(n+1))%A154286(n)`
-/

namespace A264389.P4018429421199200228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A278716 (A152948 (n + 1)).toNat) (A154286 n)

end

end A264389.P4018429421199200228

/-! ## A264389.P5465762998309209329

`gcd(A000038(n), A278716(A152948(n+1)))`
-/

namespace A264389.P5465762998309209329
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A278716 (A152948 (n + 1)).toNat)

end

end A264389.P5465762998309209329

/-! ## A264389.P17732240506136199222

`lcm(A033999(n), A278716(A152948(n+1)))`
-/

namespace A264389.P17732240506136199222
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A278716 (A152948 (n + 1)).toNat)

end

end A264389.P17732240506136199222

/-! ## A264389.P12648390246993788614

`A278716(A152948(n+1))^abs(A105812(n))`
-/

namespace A264389.P12648390246993788614
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A278716 (A152948 (n + 1)).toNat : ℚ) ^ (|A105812 n| : ℤ)

end

end A264389.P12648390246993788614

/-! ## A264389.P4276657448806534055

`A014963(21*(n+1))*A278716(A152948(n+1))`
-/

namespace A264389.P4276657448806534055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (21 * (n + 1)) * A278716 (A152948 (n + 1)).toNat

end

end A264389.P4276657448806534055

/-! ## A264389.P11935514264099968015

`A005117(gcd(n, n+1))*A278716(A152948(n+1))`
-/

namespace A264389.P11935514264099968015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (Nat.gcd n (n + 1)) * A278716 (A152948 (n + 1)).toNat

end

end A264389.P11935514264099968015

/-!
# A264390: Partial sums of A267326.

The programs for A264390, the canonical program `A264390.P14092206613407572109` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A264390 has offset 1).

The definition of A264390 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A264390.P15657066821064247075

`∑[A267326(n+1)]`
-/

namespace A264390.P15657066821064247075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267326 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A264390.P15657066821064247075

namespace A264390

/-- `∑[A267326(n+1)]` -/
def P15657066821064247075.Spec : Prop :=
  ∀ n, P15657066821064247075.a n = A264390 (n + 1)

end A264390

/-! ## A264390.P1729234075645605838

`∑[A000118((n+1)²)]`
-/

namespace A264390.P1729234075645605838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000118 ((n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A264390.P1729234075645605838

namespace A264390

/-- `∑[A000118((n+1)²)]` -/
def P1729234075645605838.Spec : Prop :=
  ∀ n, P1729234075645605838.a n = A264390 (n + 1)

end A264390

/-! ## A264390.P1737244920104563807

`∑[lcm(2, A000118((n+1)^2))]`
-/

namespace A264390.P1737244920104563807
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A000118 ((n + 1) ^ 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A264390.P1737244920104563807

namespace A264390

/-- `∑[lcm(2, A000118((n+1)^2))]` -/
def P1737244920104563807.Spec : Prop :=
  ∀ n, (P1737244920104563807.a n : ℤ) = A264390 (n + 1)

end A264390

/-! ## A264390.P3171518056155224900

`∑[or(8, A000118(record[(1-n)²]))]`
-/

namespace A264390.P3171518056155224900
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (n : ℤ)) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 8 (A000118 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A264390.P3171518056155224900

namespace A264390

/-- `∑[or(8, A000118(record[(1-n)²]))]` -/
def P3171518056155224900.Spec : Prop :=
  ∀ n, P3171518056155224900.a n = A264390 (n + 1)

end A264390

/-! ## A264390.P13018760182045947193

`∑[ratio[A267326(n)]*A267326(n)]`
-/

namespace A264390.P13018760182045947193
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267326 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ) * (A267326 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A264390.P13018760182045947193

namespace A264390

/-- `∑[ratio[A267326(n)]*A267326(n)]` -/
def P13018760182045947193.Spec : Prop :=
  ∀ n, P13018760182045947193.a n = (A264390 (n + 1) : ℚ)

end A264390

/-! ## A264390.P4147102766372985750

`lcm(2, ∑[A000118(A000290(n+1))])`
-/

namespace A264390.P4147102766372985750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000118 (A000290 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A264390.P4147102766372985750

namespace A264390

/-- `lcm(2, ∑[A000118(A000290(n+1))])` -/
def P4147102766372985750.Spec : Prop :=
  ∀ n, (P4147102766372985750.a n : ℤ) = A264390 (n + 1)

end A264390

/-! ## A264390.P3854758224680375286

`∑[A000027(A000118(∑[2*n+1]))]`
-/

namespace A264390.P3854758224680375286
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A000118 (∑ j ∈ Finset.range (n + 1), f2 j)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A264390.P3854758224680375286

namespace A264390

/-- `∑[A000027(A000118(∑[2*n+1]))]` -/
def P3854758224680375286.Spec : Prop :=
  ∀ n, P3854758224680375286.a n = A264390 (n + 1)

end A264390

/-! ## A264390.P10503315155033524478

`∑[A000118((n+1)^2)%A160827(n)]`
-/

namespace A264390.P10503315155033524478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000118 ((n + 1) ^ 2)) (A160827 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A264390.P10503315155033524478

namespace A264390

/-- `∑[A000118((n+1)^2)%A160827(n)]` -/
def P10503315155033524478.Spec : Prop :=
  ∀ n, P10503315155033524478.a n = A264390 (n + 1)

end A264390

/-! ## A264390.P4629349443927340142

`∑[A014963(6*(n+1))*A000118((n+1)^2)]`
-/

namespace A264390.P4629349443927340142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (6 * (n + 1)) * A000118 ((n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A264390.P4629349443927340142

namespace A264390

/-- `∑[A014963(6*(n+1))*A000118((n+1)^2)]` -/
def P4629349443927340142.Spec : Prop :=
  ∀ n, P4629349443927340142.a n = A264390 (n + 1)

end A264390

/-! ## A264390.P11973612418726393064

`∑[A000118(A000290(n+1))+A000038(n+11)]`
-/

namespace A264390.P11973612418726393064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000118 (A000290 (n + 1)).toNat + A000038 (n + 11)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A264390.P11973612418726393064

namespace A264390

/-- `∑[A000118(A000290(n+1))+A000038(n+11)]` -/
def P11973612418726393064.Spec : Prop :=
  ∀ n, P11973612418726393064.a n = A264390 (n + 1)

end A264390

/-! ## A264390.P16222259007087846303

`∑[A000118(A000290(n+1))%A001235(n+1)]`
-/

namespace A264390.P16222259007087846303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000118 (A000290 (n + 1)).toNat) (A001235 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A264390.P16222259007087846303

namespace A264390

/-- `∑[A000118(A000290(n+1))%A001235(n+1)]` -/
def P16222259007087846303.Spec : Prop :=
  ∀ n, P16222259007087846303.a n = A264390 (n + 1)

end A264390

/-! ## A264390.P10393867169702149715

`∑[abs(A096727((n+1)²))]`
-/

namespace A264390.P10393867169702149715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A096727 ((n + 1) ^ 2)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A264390.P10393867169702149715

namespace A264390

/-- `∑[abs(A096727((n+1)²))]` -/
def P10393867169702149715.Spec : Prop :=
  ∀ n, P10393867169702149715.a n = A264390 (n + 1)

end A264390

/-! ## A264390.P14092206613407572109

`∑[8*A046897((n+1)²)]`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A264390

/-- `∑[8*A046897((n+1)²)]` -/
def P14092206613407572109.Spec : Prop :=
  ∀ n, P14092206613407572109.a n = A264390 (n + 1)

theorem P14092206613407572109.correct : P14092206613407572109.Spec := by
  intro n
  simp only [A264390, Nat.add_sub_cancel]

end A264390

/-!
# A264391: Triangle read by rows: T(n,k) is the number of partitions of n having k perfect cube parts (0<=k<=n).

The programs for A264391, there is no canonical definition to state claims against.
-/

/-! ## A264391.P7768441712667602681

`A078374((C(comp[∑[n]]-n, 2)-n)%A323054(9*n+19))`
-/

namespace A264391.P7768441712667602681
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078374 (Int.tmod ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ)) (A323054 (9 * n + 19))).toNat

end

end A264391.P7768441712667602681

/-! ## A264391.P9329010468234633495

`A001996(A025581(n)%A201011(n+1))`
-/

namespace A264391.P9329010468234633495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001996 (Int.tmod (A025581 n) (A201011 (n + 1))).toNat

end

end A264391.P9329010468234633495

/-! ## A264391.P16817410755075488485

`A264393(A025581(n))%A332822(2*n+1)`
-/

namespace A264391.P16817410755075488485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A264393 (A025581 n).toNat) (A332822 (2 * n + 1))

end

end A264391.P16817410755075488485

/-! ## A264391.P3645541401569993023

`A122134(A025581(n))%A354928(2*(n+2))`
-/

namespace A264391.P3645541401569993023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A122134 (A025581 n).toNat) (A354928 (2 * (n + 2)))

end

end A264391.P3645541401569993023

/-!
# A264392: Number of perfect cube parts in all partitions of n.

The programs for A264392, there is no canonical definition to state claims against.
-/

/-! ## A264392.P14091626544978298633

`A363947(3*n+1)-A261775(n)`
-/

namespace A264392.P14091626544978298633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363947 (3 * n + 1) - A261775 n

end

end A264392.P14091626544978298633

/-! ## A264392.P2940030767255112192

`∑[A000041(n)]-A261775(n)^A185236(n)!`
-/

namespace A264392.P2940030767255112192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A261775 n ^ Nat.factorial (A185236 n).toNat

end

end A264392.P2940030767255112192

/-! ## A264392.P14657393890086456509

`∑[A139582(n)/2]-A261775(n)^A185236(n)!`
-/

namespace A264392.P14657393890086456509
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139582 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (A261775 n ^ Nat.factorial (A185236 n).toNat : ℚ)

end

end A264392.P14657393890086456509

/-! ## A264392.P11698120320782286907

`∑[A299474(n)/4]-A261775(n)^A185236(n)!`
-/

namespace A264392.P11698120320782286907
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A299474 n : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (A261775 n ^ Nat.factorial (A185236 n).toNat : ℚ)

end

end A264392.P11698120320782286907

/-! ## A264392.P3820301917673484242

`∑[A133041(n)-n]-A261775(n)^A185236(n)!`
-/

namespace A264392.P3820301917673484242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133041 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A261775 n ^ Nat.factorial (A185236 n).toNat

end

end A264392.P3820301917673484242

/-!
# A264393: Number of partitions of n having no perfect cube parts (n>=0).

The programs for A264393, there is no canonical definition to state claims against.
-/

/-! ## A264393.P5851463751179531690

`A264391(∑[n])`
-/

namespace A264393.P5851463751179531690
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264391 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A264393.P5851463751179531690

/-! ## A264393.P7364059954386738773

`or(char[2], A264391(A000217(n)))`
-/

namespace A264393.P7364059954386738773
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A264391 (A000217 n).toNat)

end

end A264393.P7364059954386738773

/-! ## A264393.P16899653775108240423

`A264391(A000217(n))%A000032(n)`
-/

namespace A264393.P16899653775108240423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A264391 (A000217 n).toNat) (A000032 n)

end

end A264393.P16899653775108240423

/-! ## A264393.P10891633752616909861

`gcd(A000038(n), A264391(A000217(n)))`
-/

namespace A264393.P10891633752616909861
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A264391 (A000217 n).toNat)

end

end A264393.P10891633752616909861

/-! ## A264393.P5934253539485835515

`lcm(A020985(n), A264391(A000217(n)))`
-/

namespace A264393.P5934253539485835515
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A264391 (A000217 n).toNat)

end

end A264393.P5934253539485835515

/-! ## A264393.P15570194842044085963

`A264391(A000217(n))+A000038(n+1)`
-/

namespace A264393.P15570194842044085963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264391 (A000217 n).toNat + A000038 (n + 1)

end

end A264393.P15570194842044085963

/-! ## A264393.P18316212942794630912

`A007318(C(2, n))*A264391(A000217(n))`
-/

namespace A264393.P18316212942794630912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A264391 (A000217 n).toNat

end

end A264393.P18316212942794630912

/-! ## A264393.P2972641770629905316

`A264391(A000217(n))/A007318(C(3, n))`
-/

namespace A264393.P2972641770629905316
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A264391 (A000217 n).toNat : ℚ) / (A007318 (Nat.choose 3 n) : ℚ)

end

end A264393.P2972641770629905316

/-! ## A264393.P3875732931307235035

`A264391(A000217(n))+A008683(4*(n+1))`
-/

namespace A264393.P3875732931307235035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264391 (A000217 n).toNat + A008683 (4 * (n + 1))

end

end A264393.P3875732931307235035

/-! ## A264393.P8676211360917246704

`A014963(9*n+6)*A264391(A000217(n))`
-/

namespace A264393.P8676211360917246704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (9 * n + 6) * A264391 (A000217 n).toNat

end

end A264393.P8676211360917246704

/-! ## A264393.P13065768710916606074

`A000041(C(2, 2*n))*A264391(A000217(n))`
-/

namespace A264393.P13065768710916606074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 (2 * n)) * A264391 (A000217 n).toNat

end

end A264393.P13065768710916606074

/-! ## A264393.P1507765250000270136

`A264391(A000217(n))^A014963(2*or(2, n))`
-/

namespace A264393.P1507765250000270136
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A264391 (A000217 n).toNat : ℚ) ^ (A014963 (2 * Nat.lor 2 n) : ℤ)

end

end A264393.P1507765250000270136

/-! ## A264393.P2251654052024922914

`A000203(gcd(n, n+1))*A264391(A000217(n))`
-/

namespace A264393.P2251654052024922914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (Nat.gcd n (n + 1)) * A264391 (A000217 n).toNat

end

end A264393.P2251654052024922914

/-! ## A264393.P4146021874068325366

`A000041(round(1/(n+1)))*A264391(A000217(n))`
-/

namespace A264393.P4146021874068325366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (SequenceMachineLib.roundAway (1 / (n + 1 : ℚ))).toNat * A264391 (A000217 n).toNat

end

end A264393.P4146021874068325366

/-! ## A264393.P4774488427774130117

`A264391(A000217(n))+A011737(A244544(n))`
-/

namespace A264393.P4774488427774130117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264391 (A000217 n).toNat + A011737 (A244544 n).toNat

end

end A264393.P4774488427774130117

/-! ## A264393.P17166843418981017625

`A264391(A000217(n))+A097331(A269360(n+1))`
-/

namespace A264393.P17166843418981017625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264391 (A000217 n).toNat + A097331 (A269360 (n + 1)).toNat

end

end A264393.P17166843418981017625

/-!
# A264394: Triangle read by rows: T(n,k) is the number of partitions of n having k Mersenne number parts (0<=k<=n).

The programs for A264394, there is no canonical definition to state claims against.
-/

/-! ## A264394.P9700892243081241188

`or(A181154(or(1, n)), A263234(n))`
-/

namespace A264394.P9700892243081241188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A181154 (Nat.lor 1 n)) (A263234 n)

end

end A264394.P9700892243081241188

/-! ## A264394.P7257176876983308156

`A263234(n)+A144193(A236939(n))`
-/

namespace A264394.P7257176876983308156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263234 n + A144193 (A236939 (n + 10)).toNat

end

end A264394.P7257176876983308156

/-! ## A264394.P326338947538520411

`A263234(n)+A185284(A282971(n))`
-/

namespace A264394.P326338947538520411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263234 n + A185284 (A282971 n).toNat

end

end A264394.P326338947538520411

/-!
# A264395: Number of Mersenne number parts in all partitions of n.

The programs for A264395, there is no canonical definition to state claims against.
-/

/-! ## A264395.P1451759050661466173

`A003056(A005117(n+1)*A007179(n))`
-/

namespace A264395.P1451759050661466173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A005117 (n + 1) * A007179 n).toNat

end

end A264395.P1451759050661466173

/-! ## A264395.P8359257894797310782

`A003056(A007179(n)*A294472(n+1))`
-/

namespace A264395.P8359257894797310782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A007179 n * A294472 (n + 1)).toNat

end

end A264395.P8359257894797310782

/-! ## A264395.P978323246335402857

`A160044(A361721(n))`
-/

namespace A264395.P978323246335402857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160044 (A361721 n).toNat

end

end A264395.P978323246335402857

/-! ## A264395.P8300138861328274521

`A160044(A173597(n+1))`
-/

namespace A264395.P8300138861328274521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160044 (A173597 (n + 1)).toNat

end

end A264395.P8300138861328274521

/-! ## A264395.P7617550380093395265

`A000196((2^n-1)*A325101(n))`
-/

namespace A264395.P7617550380093395265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (((2 ^ n : ℤ) - 1) * A325101 n).toNat

end

end A264395.P7617550380093395265

/-!
# A264396: Number of partitions of n such that the part sizes occurring in it form an interval that does not start at 1.

The programs for A264396, there is no canonical definition to state claims against.
-/

/-! ## A264396.P16949490958538470605

`A034296(n+1)-A000009(n+1)`
-/

namespace A264396.P16949490958538470605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034296 (n + 1) - A000009 (n + 1)

end

end A264396.P16949490958538470605

/-! ## A264396.P13134419966181389165

`A034296(n+1)-(A025147(n+1)+A025147(n))`
-/

namespace A264396.P13134419966181389165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034296 (n + 1) - (A025147 (n + 1) + A025147 n)

end

end A264396.P13134419966181389165

/-! ## A264396.P12803987806875504660

`A034296(n+1)-abs(A081360(n+1))`
-/

namespace A264396.P12803987806875504660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034296 (n + 1) - |A081360 (n + 1)|

end

end A264396.P12803987806875504660

/-! ## A264396.P12057384621797981831

`A034296(n+1)-A035457(A163300(n+1))`
-/

namespace A264396.P12057384621797981831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034296 (n + 1) - A035457 (A163300 (n + 1)).toNat

end

end A264396.P12057384621797981831

/-! ## A264396.P6339091575363225326

`A000005(n+1)+A237665(n+1)-A000009(n+1)`
-/

namespace A264396.P6339091575363225326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) + (A237665 (n + 1) - A000009 (n + 1))

end

end A264396.P6339091575363225326

/-! ## A264396.P3051244319192343607

`A092265(n+1)-(A237665(n+1)+A000009(n+1))`
-/

namespace A264396.P3051244319192343607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092265 (n + 1) - (A237665 (n + 1) + A000009 (n + 1))

end

end A264396.P3051244319192343607

/-! ## A264396.P5203903021471049905

`A034296(n+1)-A117466(∑[n]+1)`
-/

namespace A264396.P5203903021471049905
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034296 (n + 1) - A117466 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A264396.P5203903021471049905

/-! ## A264396.P10916761869581624142

`A239958(n+1)-(A239956(n+1)+A000009(n+1))`
-/

namespace A264396.P10916761869581624142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239958 (n + 1) - (A239956 (n + 1) + A000009 (n + 1))

end

end A264396.P10916761869581624142

/-!
# A264397: Sum of the sizes of the longest clique of all partitions of n.

The programs for A264397, there is no canonical definition to state claims against.
-/

/-! ## A264397.P929157342759149462

`A002024(n*A000217(A000041(n+1))+1)`
-/

namespace A264397.P929157342759149462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 ((n : ℤ) * A000217 (A000041 (n + 1)).toNat + 1).toNat

end

end A264397.P929157342759149462

/-! ## A264397.P1998847325772844224

`A323048(A070557(n+1)+1)`
-/

namespace A264397.P1998847325772844224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323048 (A070557 (n + 1) + 1).toNat

end

end A264397.P1998847325772844224

/-! ## A264397.P9109072831714034357

`A206909(A209616(n+1)+1)`
-/

namespace A264397.P9109072831714034357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206909 (A209616 (n + 1) + 1).toNat

end

end A264397.P9109072831714034357

/-! ## A264397.P298499034547147440

`A323048(A225751(n+1)+1)`
-/

namespace A264397.P298499034547147440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323048 (A225751 (n + 1) + 1).toNat

end

end A264397.P298499034547147440

/-! ## A264397.P2576870209824872316

`∑[A000041(A000005(4^n)-n)-(n-lcm(2, n)/2)]`
-/

namespace A264397.P2576870209824872316
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000041 (A000005 (4 ^ n) - (n : ℤ)).toNat : ℚ) - ((n : ℚ) - (Nat.lcm 2 n : ℚ) / 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A264397.P2576870209824872316

/-!
# A264398: Triangle read by rows: T(n,k) is the number of partitions of n having k parts with odd multiplicities.

The programs for A264398, there is no canonical definition to state claims against.
-/

/-! ## A264398.P16288608774095838507

`A061704(A000079(n))-A330241(n)`
-/

namespace A264398.P16288608774095838507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061704 (A000079 n).toNat - A330241 n

end

end A264398.P16288608774095838507

/-! ## A264398.P11274209721774647113

`Δ[A160511(A160519(n+2))]`
-/

namespace A264398.P11274209721774647113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160511 (A160519 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A264398.P11274209721774647113

/-! ## A264398.P12527762184380680589

`A257991(A000079(n+2)-1-(n+1)²)`
-/

namespace A264398.P12527762184380680589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257991 (A000079 (n + 2) - 1 - ((n + 1) ^ 2 : ℤ)).toNat

end

end A264398.P12527762184380680589

/-! ## A264398.P16809112180386361358

`A167865(n)-A293162(A000583(n))`
-/

namespace A264398.P16809112180386361358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167865 n - A293162 (A000583 n).toNat

end

end A264398.P16809112180386361358

/-! ## A264398.P575032851214464220

`A341595(A289526(n)+A000201(n+1))`
-/

namespace A264398.P575032851214464220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341595 (A289526 n + A000201 (n + 1)).toNat

end

end A264398.P575032851214464220

